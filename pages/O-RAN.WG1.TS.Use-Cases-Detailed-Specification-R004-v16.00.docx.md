## O-RAN.WG1.TS.Use-Cases-Detailed-Specification-R004-v16.00.docx

- View in [Reader Mode](https://simewu.com/spec-reader/pages/12-WG1/O-RAN.WG1.TS.Use-Cases-Detailed-Specification-R004-v16.00.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG1.TS.Use-Cases-Detailed-Specification-R004-v16.00.docx).

---

![webwxgetmsgimg (7).jpeg](../assets/images/9c69df009b87.jpg)

O-RAN.WG1.TS.Use-Cases-Detailed-Specification-R004-v16.00

*Technical Specification*

**O-RAN Work Group 1 (Use Cases and Overall Architecture)**

**Use Cases Detailed Specification**

Copyright (C) 2025 by the O-RAN ALLIANCE e.V.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany Register of Associations, Bonn VR 11238, VAT ID DE321720189

Contents

Foreword 5

Modal verbs terminology 6

Introduction 6

1. Scope 7
2. References 7
   1. Normative references 7
   2. Informative references 8
3. Definition of terms, symbols and abbreviations 9
   1. Terms 9
   2. Symbols 10
   3. Abbreviations 10
4. Use cases 11
   1. Context-based dynamic HO management for V2X 11
      1. Background and goal of the use case 11
      2. Entities/resources involved in the use case 11
      3. Solutions 12
      4. Required data 14
   2. Flight path based dynamic UAV radio resource allocation 14
      1. Background and goal of the use case 15
      2. Entities/resources involved in the use case 16
      3. Solutions 16
      4. Required data 18
   3. Radio resource allocation for UAV application scenario 18
      1. Background and goal of the use case 18
      2. Entities/resources involved in the use case 20
      3. Solutions 20
      4. Required data 22
   4. QoE optimization 22
      1. Background and goal of the use case 22
      2. Entities/resources involved in the use case 22
      3. Solutions 23
      4. Required data 29
   5. Traffic steering 30
      1. Background and goal of the use case 30
      2. Entities/resources involved in the use case 31
      3. Solutions 31
      4. Required data 36
   6. Massive MIMO optimization 37
      1. Background and goal of the use case 37
      2. Entities/resources involved in the use case 38
      3. Solutions 39
      4. Required data 44
   7. RAN sharing 45
      1. Background and goal of the use case 45
      2. Entities/resources involved in the use case 46
      3. Solutions 47
      4. Required data 49
   8. QoS based resource optimization 50
      1. Background and goal of the use case 50
      2. Entities/resources involved in the use case 50
      3. Solutions 51
      4. Required data 52
   9. RAN slice SLA assurance 53
      1. Background and goal of the use case 53
      2. Entities/resources involved in the use case 53
      3. Solutions 54
      4. Required data 60
   10. Multi-vendor slices 60
       1. Background and goal of the use case 61
       2. Entities/resources involved in the use case 61
       3. Solutions 62
       4. Required data 69
   11. Dynamic spectrum sharing (DSS) 69
       1. Background and goal of the use case 69
       2. Entities/resources involved in the use case 71
       3. Solutions 72
       4. Required data 74
   12. NSSI resource allocation optimization 76
       1. Background and goal of the use case 76
       2. Entities/resources involved in the use case 77
       3. Solutions 78
       4. Required data 80
   13. Local indoor positioning in RAN 81
       1. Background and goal of the use case 81
       2. Entities/resources involved in the use case 81
       3. Solutions 82
       4. Required data 84
   14. Massive SU/MU-MIMO grouping optimization 85
   15. O-RAN signalling storm protection 85
       1. Background and goal of the use case 85
       2. Entities/resources involved in the use case 86
       3. Solutions 86
       4. Required data 94
   16. Congestion prediction and management 94
   17. Industrial IoT optimization 94
   18. BBU pooling to achieve RAN elasticity 94
   19. Integrated SON function within the O-RAN framework 94
       1. Background and goal of the use case. 94
       2. Entities/resources involved in the use case 95
       3. Solutions 97
       4. Required data 107
   20. Shared O-RU 108
       1. Background and goal of the use case 108
       2. Entity/resources involved in the use case 119
       3. Solution 127
       4. Required data 222
   21. Network energy saving 224
       1. Background and goal of the use case 224
       2. Entities/resources involved in the use case 225
       3. Solutions 226
       4. Required data 230
   22. MU-MIMO optimization 231
       1. Background and goal of the use case 231
       2. Entities/resources involved in the use case 231
       3. Solutions 231
       4. Required data 233
   23. Sharing Non-RT RIC data with the core 233
   24. Industrial vision SLA assurance 234
       1. Background and goal of the use case 234
       2. Entities/resources involved in the use case 234
       3. Solutions 235
       4. Required data 238
   25. Non-Public Network (NPN) RAN sharing via midhaul for multi-operator coverage 238
   26. Interference detection, prediction and optimization 238
       1. Background and goal of the use case 238
       2. Entities/resources involved in the use case 239
       3. Solutions 240
       4. Required data 252

Annex A (informative): Additional information 255

* 1. Traffic steering use case A1 interface usage example 255

Annex (informative): Change history/Change request (history) 257

# Foreword

This Technical Specification (TS) has been produced by O-RAN Alliance.

The content of the present document is subject to continuing work within O-RAN and may change following formal O- RAN approval. Should the O-RAN Alliance modify the contents of the present document, it will be re-released by O- RAN with an identifying change of version date and an increase in version number as follows:

version xx.yy.zz where:

xx: the first digit-group is incremented for all changes of substance, i.e. technical enhancements, corrections, updates, etc. (the initial approved document will have xx=01). Always 2 digits with leading zero if needed.

yy: the second digit-group is incremented when editorial only changes have been incorporated in the document.

Always 2 digits with leading zero if needed.

zz: the third digit-group included only in working versions of the document indicating incremental changes during the editing process. External versions never include the third digit-group. Always 2 digits with leading zero if needed.

# Modal verbs terminology

In the present document "**shall**", "**shall not**", "**should**", "**should not**", "**may**", "**need not**", "**will**", "**will not**", "**can**" and "**cannot**" are to be interpreted as described in clause 3.2 of the O-RAN Drafting Rules (Verbal forms for the expression of provisions).

"**must**" and "**must not**" are **NOT** allowed in O-RAN deliverables except when used in direct citation.

# Introduction

This document provides O-RAN WG1 detailed use case descriptions. Any multi-WG use case defined in O-RAN is expected to be documented in "O-RAN WG1 Use Case Analysis Report" and if the use case is to be studied further, it will be covered in this document in detail, and then in relevant WGs.

# Scope

The present document specifies the top-level use cases as defined by O-RAN WG1 UCTG (Use Case Task Group). For each use case, the document describes the motivation, resources, steps involved, and the data requirements. These top- level use cases are further detailed in relevant WGs along with the requirements for O-RAN components and their interfaces.

# References

## Normative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies. In the case of a reference to a 3GPP document, a non-specific reference implicitly refers to the latest version of that document in Release 18, or the latest 3GPP release prior to Release 18 that includes that document.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following referenced documents are necessary for the application of the present document.

1. 3GPP TS 22.261: Service requirements for the 5G system; Stage 1, Release 16, March 2020
2. 3GPP TS 23.501: System Architecture for the 5G System (5GS); Stage 2, Release 16, March 2020
3. 3GPP TS 28.310: Energy efficiency of 5G, V17.3.0, Release 17, December 2022
4. 3GPP TS 28.530: Management and orchestration; Concepts, use cases and requirements, Release 16, January 2020
5. 3GPP TS 28.541: Management and orchestration; 5G Network Resource Model (NRM); Stage 2 and stage 3, Release 16, January 2020
6. 3GPP TS 28.552: 3rd Generation Partnership Project; Technical Specification Group Services and System Aspects; Management and orchestration; 5G performance measurements, Release 16, March 2020
7. 3GPP TS 28.554: 3rd Generation Partnership Project; Technical Specification Group Services and System Aspects; Management and orchestration; 5G end to end Key Performance Indicators (KPI),

Release 16, March 2020

1. 3GPP TS 28.622: Telecommunication management; Generic Network Resource Model (NRM)

Integration Reference Point (IRP); Information Service (IS), Release 16, June 2021

1. 3GPP TS 28.624: Telecommunication management; State management data definition Integration Reference Point (IRP); Requirements, Release 16, July 2020
2. 3GPP TS 28.625: Telecommunication management; State management data definition Integration Reference Point (IRP); Information Service (IS), Release 16, July 2020
3. 3GPP TS 28.626: Telecommunication management; State management data definition Integration Reference Point (IRP); Solution Set (SS) definitions, Release 16, July 2020
4. 3GPP TS 37.340: E-UTRA and NR; Multi-connectivity, Release 16, April 2020
5. 3GPP TS 38.211: Physical channels and modulation, Release 15, March 2019
6. 3GPP TS 38.213: Physical layer procedures for control, Release 15, March 2019
7. ETSI EN 302 637-2: Intelligent Transport Systems (ITS); Vehicular Communications; Basic Set of Applications; Part 2: Specification of Cooperative Awareness Basic Service, Release 1, November 2010
8. ETSI EN 302 637-3: Intelligent Transport Systems (ITS); Vehicular Communications; Basic Set of Applications; Part 3: Specifications of Decentralized Environmental Notification Basic Service,

Release 1, November 2014

1. GSMA NG.116: Generic Network Slice Template, Version 2.0, October 2019
2. ITU-T X.731: Information technology - Open Systems Interconnection - Systems management:

State management function

1. RFC 8348: A YANG Data Model for Hardware Management
2. 3GPP TS 28.313: Management and orchestration; Self-Organizing Networks (SON) for 5G networks
3. 3GPP TS 28.532: Management and orchestration; Generic management services; Release 17,

December 2021

1. 3GPP TS 23.502: Procedures for the 5G System (5GS) Stage 2; Release 17, March 2021
2. ETSI GS NFV IFA013: Management and Orchestration; Os-Ma-nfvo reference point - Interface and Information Model Specification; v4.4.1, Release 4, March 2023
3. ETSI GS NFV IFA008: Management and Orchestration; Ve-Vnfm reference point - Interface and Information Model Specification; v4.3.1, Release 4, May 2022
4. O-RAN WG5.O-DU-O1: O1 Interface specification for O-DU, Version R003-V09, December 9, 2023
5. O-RAN.WG6.ORCH-USE-CASES: Cloudification and Orchestration Use Cases and Requirements for O-RAN Virtualized RAN
6. O-RAN.WG10.OAM-Architecture: O-RAN Working Group 10, O-RAN Operations and Maintenance Architecture
7. O-RAN.WG4.MP: O-RAN Working Group 4 (Open Fronthaul Interfaces WG), Management Plane Specification
8. O-RAN.WG4.CUS.0-v02.00: O-RAN Fronthaul Working Group, Control, User and Synchronization Plane Specification

## Informative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies. In the case of a reference to a 3GPP document, a non-specific reference implicitly refers to the latest version of that document in Release 18, or the latest 3GPP release prior to Release 18 that includes that document.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following referenced documents are not necessary for the application of the present document, but they assist the user with regard to a particular subject area.

[i.1] 3GPP TR 21.905: "Vocabulary for 3GPP Specifications".

[i.2] 3GPP TR 37.817: "Study on enhancement for Data Collection for NR and EN-DC", Release 17, V2.0.0, March 2022.

[i.3] 3GPP TR 38.889: "Study on NR-based access to unlicensed spectrum", Release 16, December 2018.

[i.4] 3GPP TR 38.913: "Study on scenarios and requirements for next generation access technologies", Release 16, July 2020.

[i.5] ETSI ES 203 228: "Environmental Engineering (EE); Assessment of mobile network energy efficiency", V1.3.1, October 2020.

# Definition of terms, symbols and abbreviations

## Terms

For the purposes of the present document, the terms and definitions [given in [i.1] and the following] apply. A term defined in the present document takes precedence over the definition of the same term, if any, in [i.1].

**A1**: Interface between Non-RT RIC and Near-RT RIC to enable policy-driven guidance of Near-RT RIC applications/functions, and support AI/ML workflow.

**A1 policy:** Type of declarative policies expressed using formal statements that enable the Non-RT RIC function in the SMO to guide the Near-RT RIC function, and hence the RAN, towards better fulfilment of the RAN intent.

**A1 enrichment information:** Information utilized by Near-RT RIC that is collected or derived at SMO/Non-RT RIC either from non-network data sources or from network functions themselves.

**E2**: Interface connecting the Near-RT RIC and one or more O-CU-CPs, one or more O-CU-UPs, and one or more O- DUs.

**E2 node**: A logical node terminating E2 interface. In the present document, O-RAN nodes terminating E2 interface are:

* for NR access: O-CU-CP, O-CU-UP, O-DU or any combination.
* for E-UTRA access: O-eNB.

**FCAPS:** Fault, Configuration, Accounting, Performance, Security.

**Intents**: A declarative policy to steer or guide the behavior of RAN functions, allowing the RAN function to calculate the optimal result to achieve stated objective.

**Near-RT RIC:** O-RAN Near-Real-Time RAN Intelligent Controller: A logical function that enables near-real-time control and optimization of RAN elements and resources via fine-grained data collection and actions over E2 interface.

**Non-RT RIC:** O-RAN Non-Real-Time RAN Intelligent Controller: A logical function that enables non-real-time control and optimization of RAN elements and resources, AI/ML workflow including model training and updates, and policy- based guidance of applications/features in Near-RT RIC.

**O-CU:** O-RAN Central Unit: A logical node hosting O-CU-CP and O-CU-UP.

**O-CU-CP**: O-RAN Central Unit - Control Plane: A logical node hosting the RRC and the control plane part of the PDCP protocol.

**O-CU-UP**: O-RAN Central Unit - User Plane: A logical node hosting the user plane part of the PDCP protocol and the SDAP protocol.

**O-DU**: O-RAN Distributed Unit: A logical node hosting RLC/MAC/High-PHY layers based on a lower layer functional split.

**O-RU**: O-RAN Radio Unit: A logical node hosting Low-PHY layer and RF processing based on a lower layer functional split. This is similar to 3GPP's "TRP" or "RRH" but more specific in including the Low-PHY layer (FFT/iFFT, PRACH extraction).

**O1:** Interface between management entities (SMO/EMS/MANO) and O-RAN managed elements, for operation and management, by which FCAPS management, software management, file management can be achieved.

**O2**: Interface between management entities and the O-Cloud for supporting O-RAN virtual network functions.

**RAN**: Generally referred as Radio Access Network. In terms of this document, any component below Near-RT RIC per O-RAN architecture, including O-CU/O-DU/O-RU.

**Shared O-RU**: An O-RU that is able to be configured to operate with one or more O-DUs operated by one or more mobile network operators.

## Symbols

Void

## Abbreviations

For the purposes of the present document, the abbreviations [given in [i.1] and the following] apply. An abbreviation defined in the present document takes precedence over the definition of the same abbreviation, if any, in [i.1].

AI/ML Artificial Intelligence/Machine Learning CAM Cooperative Awareness Message

DENM Decentralized Environmental Notification Message eNB eNodeB (applies to LTE)

gNB gNodeB (applies to NR)

KPI Key Performance Indicator

MIMO Multiple Input, Multiple Output

NRT Neighbor Relation Table

O-CU O-RAN Central Unit

O-DU O-RAN Distributed Unit

O-RU O-RAN Radio Unit

PRB Physical Resource Block

QoE Quality of Experience

RAN Radio Access Network

RIC O-RAN RAN Intelligent Controller

SINR Signal-to-Interference-plus-Noise Ratio

SMO Service Management and Orchestration

UAV Unmanned Aerial Vehicle

V2X Vehicle to Everything

# Use cases

## Context-based dynamic HO management for V2X

This use case provides the background, motivation, and requirements for the context-based dynamic HO management for V2X use case, allowing operators to adjust radio resource allocation policies through the O-RAN architecture, reducing latency and improving radio resource utilization.

### Background and goal of the use case

V2X communication allows for numerous potential benefits such as increasing the overall road safety, reducing emissions, and saving time. Part of the V2X architecture is the V2X UE (SIM + device attached to vehicle) which communicates with the V2X Application Server (V2X AS). The exchanged information comprises Cooperative Awareness Messages (CAMs), (from UE to V2X AS) [i.4], radio cell IDs, connection IDs, and basic radio measurements (RSRP, RSPQ, etc.)

As vehicles traverse along a highway, due to their high speed and the heterogeneous natural environment V2X UEs are handed over frequently, at times in a suboptimal way, which can cause handover (HO) anomalies: e.g., short stay, ping- pong, and remote cell. Such suboptimal HO sequences substantially impair the functionality of V2X applications. Since HO sequences are mainly determined by the Neighbour Relation Tables (NRTs), maintained by the xNBs, there is hardly room for UE-level customization.

This UC aims to present a method to avoid and/or resolve problematic HO scenarios by using past navigation and radio statistics in order to customize HO sequences on a UE level. To this end, the AI/ML functionality that is enabled by the Near-RT RIC is employed.

### Entities/resources involved in the use case

1. Non-RT RIC:
   1. Retrieve necessary performance, configuration, and other data for constructing/training relevant AI/ML models that will be deployed in Near-RT RIC to assist in the V2X HO management function. For example, this could be a clustering algorithm that classifies traffic situations and radio conditions that (probably) do or do not lead to HO anomalies.
   2. Support deployment and update of AI/ML models into Near-RT RIC xApp.
   3. Support communication of intents and policies (system-level and UE-level) from Non-RT RIC to Near-RT RIC.
   4. Support communication of non-RAN data to enrich control functions in Near-RT RIC (enrichment data).
2. Near-RT RIC:
   1. Support update of AI/ML models retrieved from Non-RT RIC.
   2. Support interpretation and execution of intents and policies from Non-RT RIC.
   3. Support necessary performance, configuration, and other data for defining and updating intents and policies for tuning relevant AI/ML models.
   4. Support communication of configuration parameters to RAN.
3. RAN:
   1. Support data collection with required granularity to SMO over O1 interface.
   2. Support near-real-time configuration-based optimization of HO parameters over E2 interface.
   3. Report necessary performance, configuration, and other data for performing real-time V2X HO optimization in the Near-RT RIC over E2 interface.
4. V2X application server:
   1. Support data collection with required granularity from V2X UE over V1 interface.
   2. Support communication of real-time traffic related data about V2X UE to Non-RT RIC as enrichment data.

### Solutions

#### Context-based dynamic handover management for V2X

The context of the context-based dynamic handover management for V2X use case is captured in table 4.1.3.1-1.

###### Table 4.1.3.1-1: Context-based dynamic handover management for V2X

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Drive V2X UE HOs in RAN according to defined intents, policies, and configuration while enabling AI/ML-based solutions. |  |
| Actors and Roles | Non-RT RIC: RAN policy control function.  Near-RT RIC: RAN policy enforcement function. RAN: Policy enforcement for configuration updates. SMO: Termination point for O1 interface.  V2X AS: Termination point for V1 interface and enrichment data provider. |  |
| Assumptions | All relevant functions and components are instantiated.  A1, O1, E2 interface connectivity is established. |  |
| Pre-conditions | Network is operational.  SMO has established the data collection and sharing process, and Non-RT RIC has access to this data.  Non-RT RIC analyzes the historical data from RAN and V2X AS for training the relevant AI/ML models to be deployed or updated in the Near-RT RIC, as well as AI/ML models required for real-time optimization of configuration and policies. |  |
| Begins when | Operator specified trigger condition or event is detected. |  |
| Step 1 (M) | Non-RT RIC deploys/updates the AI/ML model in the Near-RT RIC via O1 or Non-RT RIC assigns/update the AI/ML model for the Near-RT RIC xApp via A1. |  |
| Step 2 (M) | Non-RT RIC communicates relevant policies/intents and enrichment data to the  Near-RT RIC over the A1 interface. The enrichment data from the non-RAN data |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
|  | can include V2X UE location, trajectory, navigation information, GPS data, CAMs, DENMs. |  |
| Step 3 (M) | The Near-RT RIC receives the relevant info from the Non-RT RIC over the A1 interface and from the RAN over the E2 interface, interprets the policies and updates the AI/ML models. |  |
| Step 4 (M) | The Near-RT RIC infers optimal RAN configuration (UE-specific NRTs) according to the trained AI/ML models and communicates the result to the RAN over E2 interface. |  |
| Step 5 (M) | RAN deploys the configuration received from the Near-RT RIC over the E2 interface. |  |
| Step 4 | If required, Non-RT RIC can configure specific performance measurement data to be collected from RAN to assess the performance of the V2X HO management function in Near-RT RIC, or to assess the outcome of the applied policies and configuration. |  |
| Ends when | Operator specified trigger condition or event is satisfied. |  |
| Exceptions | None identified. |  |
| Post Conditions | Non-RT RIC monitors the performance of the V2X HO related function in Near- RT RIC by collecting and monitoring the relevant performance KPIs and counters from the RAN and the V2X AS. |  |

The flow diagram of the context-based dynamic handover management for V2X use case is given in figure 4.1.3.1-1.

![Generated by PlantUML](../assets/images/6b9fcddbf504.png)

###### Figure 4.1.3.1-1: Context-based dynamic handover management for V2X flow diagram

### Required data

The measurement counters and KPIs (as defined by 3GPP) shall be appropriately aggregated by cell, QoS type, slice, etc.

1. Measurement reports with RSRP/RSRQ/CQI information for serving and neighboring cells.
2. UE connection and mobility/handover statistics with indication of successful and failed handovers and error codes etc.
3. V2X related data: position, velocity, direction, navigation data, CAMs, DENMs as specified in ETSI EN 302 637-3

[16] and in [i.5].

## Flight path based dynamic UAV radio resource allocation

This use case provides the background, motivation, and requirements for the support the use case of flight path based dynamic UAV radio resource allocation, allowing operators to adjust radio resource allocation policies through the O- RAN architecture, reducing unnecessary handover and improving radio resource utilization.

### Background and goal of the use case

The field trials' results show that the coverage for low altitude is good and can provide various services for terrestrial UEs with good performance. However, since the site along the flight is mainly for terrestrial UEs, the altitude of the UAV is always not within the main lobe of the ground station antenna. And the side lobes give rise to the phenomenon of scattered cell associations particularly noticeable in the sky. The cell association pattern on the ground is ideally contiguous area where the best cell is most often the one closest to the UE. As the UE move up in height, the antenna side lobes start to be visible, and there is a possibility of the best cell no longer being the closest one. The cell association pattern in this particular scenario becomes fragmented especially at the height of 300m and above. Hence, at higher altitudes, several challenges that lead to a different radio environment are:

1. LOS propagation/uplink interference
2. Poor KPI caused by antenna side lobes for base stations
3. Sudden drop in signal strength

These challenges directly impact on the mobility performance of the drone and the service experience of the user. Hence, we would like to support the use case of flight path based dynamic UAV radio resource allocation to resolve the above issues.

Non-Real-Time RIC can retrieve necessary of aerial vehicles related measurement metrics from network based on UE's measurement report and SMO, and flight path information of aerial vehicle, climate information, flight forbidden/limitation area information and space load information etc. from application, e.g., UTM (Unmanned Traffic Management) for constructing/training relevant AI/ML model that will be deployed in RAN. For example, this could be UL/DL interference from/to aerial vehicles, the detection of aerial vehicle UEs, and available radio resource (e.g., frequency, cell, beam, BWP, numerology) prediction. And the Near-Real-Time RIC can support deployment and execution of AI/ML models from Non-RT RIC. Based on this, the Near-Real-Time RIC can perform the radio resource allocation for on-demand coverage for UAV considering the radio channel condition, flight path information and other application information.

The architectural context of the flight path based dynamic UAV radio resource allocation use case is shown in figure 4.2.1-1.

![](../assets/images/c8cde33e05b0.jpg)

###### Figure 4.2.1-1: Use case of flight path based dynamic UAV radio resource allocation

Since there is no effective functional module in current eNB/gNB to retrieve the application information, perform machine learning and training based on both the acquired application information and radio environment information, and execute AI/ML models based on above information. And in the O-RAN architecture, the flight path based dynamic UAV radio resource allocation mechanism can be supported by the RIC function module, i.e., Non-Real-Time RIC and Near-Real- Time RIC. Therefore, we provide the description of O-RAN support use case for flight path based dynamic UAV radio resource.

### Entities/resources involved in the use case

1. Non-RT RIC:
   1. Retrieve necessary of O-RAN support for aerial vehicles related measurement metrics from network level measurement report and SMO (can acquire data from application) for constructing/training relevant AI/ML model that will be deployed in Near-RT RIC to assist in the O-RAN support for aerial vehicles function. For example, this could be UL/DL interference from/to aerial vehicles, the detection of aerial vehicle UEs, and available radio resource (e.g. frequency, cell, beam, BWP, numerology) prediction.
   2. Training of potential ML models for O-RAN support for aerial vehicles, which can respectively autonomously control UL/DL interference from/to aerial vehicles, detect the UE of aerial vehicles, and predict available radio resource (e.g. frequency, cell, beam, BWP, numerology) for aerial vehicles.
   3. Send policies/intents to Near-RT RIC to drive the O-RAN support for aerial vehicles at RAN level in terms of expected behavior.
2. Near-RT RIC:
   1. Support update of AI/ML models from Non-RT RIC.
   2. Support execution of the AI/ML models from Non-RT RIC.
   3. Support interpretation and execution of intents and policies from Non-RT RIC to derive O-RAN support for aerial vehicles at RAN level in terms of expected behavior.
   4. Support perform the radio resource allocation for on-demand coverage for UAV considering the radio channel condition, flight path information and other application information via the AI/ML models from Non-RT RIC.
   5. Sending aerial vehicles performance report to Non-RT RIC for evaluation and optimization.
3. RAN:
   1. Support data collection with UE performance report over O1 interface.
   2. Support non-real-time optimization of radio resources allocation parameters over O1 interface.
4. Application server:
   1. Provide application information, e.g. flight path information of aerial vehicle, climate information, flight forbidden/limitation area information and space load information.

### Solutions

#### Flight path based dynamic UAV radio resource allocation

The context of the flight path based dynamic UAV radio resource allocation use case is captured in table 4.2.3.1-1.

###### Table 4.2.3.1-1: Flight path based dynamic UAV radio resource allocation

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | In the O-RAN architecture, the flight path based dynamic UAV radio resource allocation mechanism can be supported, which can perform the radio resource allocation for on-demand coverage for UAV considering the radio channel condition, flight path information and other application information. |  |
| Actors and Roles | Non-RT RIC: RAN policy control function. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
|  | Near-RT RIC: RAN policy enforcement function.  RAN: Implementation of updated configuration parameters. Application server: Generates RAN side UE-level policies. |  |
| Assumptions | All relevant functions and components are instantiated.  A1/O1 interface connectivity is established with Non-RT RIC. |  |
| Pre-conditions | Near-RT RIC and Non-RT RIC are instantiated with A1 interface connectivity being established between them.  A certificate is shared between Near-RT RIC and Non-RT RIC for model related data exchange.  E2 interface is established between Near-RT RIC and CU/DU. |  |
| Begins when | Operator specified trigger condition or event is detected. |  |
| Step 1 (M) | Application server sends the application data to Non-RT RIC. |  |
| Step 2 (M) | Non-RT RIC deploys/updates AI/ML models in the Near-RT RIC via O1 or Non- RT RIC assigns/update the AI/ML model for the Near-RT RIC xApp via A1. |  |
| Step 3 (M) | Non-RT RIC sends relevant policies/intents and enrichment data to the Near- RT RIC over the A1 interface. |  |
| Step 4 (M) | The Near-RT RIC receives the relevant info from the Non-RT RIC over the A1 interface and from the RAN over the E2 interface, interprets the policies and updates the AI/ML models.  And the Near-RT RIC converts policy to specific configuration parameter commands. |  |
| Step 5 (M) | RAN executes the command to modify the configuration parameters RAN executes the command to modify the configuration parameters. |  |
| Ends when | Operator specified trigger condition or event is satisfied. |  |
| Exceptions | None identified. |  |
| Post Conditions | Non-RT RIC collects relevant performance data from eNB/gNB, to observe the data transmission performance improvement brought by the wireless resource configuration optimization policy. |  |

The flow diagram of the flight path based dynamic UAV radio resource allocation use case is given in figure 4.2.3.1-1.

![Generated by PlantUML](../assets/images/9a61604a9f02.png)

###### Figure 4.2.3.1-1: Use case of flight path based dynamic UAV radio resource allocation flow diagram

### Required data

Multi-dimensional data are expected to be retrieved for AI/ML model training and policies generation.

1. Network level measurement report, including:
   1. UE level radio channel information, mobility related metrics
   2. UE level location information
2. Aerial vehicles related measurement metrics collected from SMO (can acquire data from application or network, e.g., flight path information of aerial vehicle, climate information, flight forbidden/limitation area information and space load information).

## Radio resource allocation for UAV application scenario

This use case provides the background, motivation, and requirements for the UAV control vehicle use case, allowing operators to adjust radio resource allocation policies through the O-RAN architecture, reducing latency and improving radio resource utilization.

### Background and goal of the use case

As shown in figure 4.3.1-1, this scenario refers to a rotor UAV flying at low altitude and low speed, and carrying cameras, sensors and other devices mounted. The operation terminals work in the 5.8GHz to remote control the UAV for border/forest inspection, high voltage/base station inspection, field mapping, pollution sampling, and HD live broadcast. At the same time, the UAV mobile control stations and the anti-UAV weapons jointly provide the service of fighting against illegal UAVs to ensure low-altitude safety in special areas. The UAV operation terminals, the anti-UAV weapons, and the UAV mobile control stations are connected with the UAV control vehicle using 5G network.

![](../assets/images/40c98d60ae5c.jpg)

###### Figure 4.3.1-1: UAV control vehicle application scenario

UAV control vehicle deploys network equipment, including O-CU, O-DU, the Non-RT RIC function modules and application server (in this use case it is an edge computing service platform) to provide reliable network services through 5G networks. The data transmitted over the network includes control data and application data. The control data includes navigation commands, configuration changes, flight status data reporting, etc. Control data requires low latency and low bandwidth requirements. The application data includes 4K high-definition video data, which has obvious uplink and downlink service asymmetry, and the uplink has high requirements on network bandwidth. The UAV control vehicle deploys edge computing services on the 5G gNB side to implement local processing of video and control information. At the same time, real-time data services can be provided with the third-party applications by a video server. The Near-RT RIC function module provides radio resource management functions of the gNB side.

![](../assets/images/daa8d93beb1a.jpg)

###### Figure 4.3.1-2: Network architecture for UAV control vehicle application scenario

The 5G network supports real-time high-definition video transmission and remote low-latency control of UAV, and finally provides various industry services such as inspection, security, surveying, and mapping. In the UAV control vehicle application scenario, there are a small amount of control data interaction requirements between the terminal and the network interaction, as well as the large bandwidth requirements for uploading HD video.

The service asymmetry raises new requirements for resource allocation of the gNB. At the same time, the existing network operation and maintenance management platform (OSS system) can only optimize the parameters of a specific group of UEs, but not individual users. In the O-RAN architecture, the radio resource requirements for different terminals are sent to the gNB for execution by means of the RIC function module.

The UAV control vehicle has flexible layout features. In this use case, the application service and content are deployed on the edge computing platform instead of the core network; the RIC function module is used to schedule radio resources instead of the core network's QoS mechanism. In this way, the load and overhead of the core network can be reduced, the forwarding and processing time of data transmission can be reduced.

As shown in figure 4.3.1-2, this scenario involves two options of network architecture. Option A is that gNB and Near- RT RIC are deployed on the control vehicle, Non-RT RIC and core network are deployed on the central cloud. The control vehicle is connected to the core network and Non-RT RIC via fiber optics. Option B is a private network, all the modules, including the gNB, Near-RT RIC, Non-RT RIC and the necessary core network function modules, are deployed in the control vehicle.

### Entities/resources involved in the use case

1. Non-RT RIC:
   1. Support sending resource allocation requirements to Near-RT RIC.
   2. Support receiving UE-level radio resource adjustment requirements from the application server.
   3. Support communication between Non-RT RIC and Near-RT RIC with UE-level policies.
2. Near-RT RIC:
   1. Support for receiving resource allocation requests from Non-RT RIC.
   2. Support for the interpretation and execution of the resource allocation policies received from Non-RT RIC.
   3. Support communication with RAN of configuration parameters.
3. RAN:
   1. Support resource allocation requests from the Near-RT RIC.
   2. Support sending terminal registration information to RAN application server and Near-RT RIC.
   3. Support non-real-time optimization of radio resources allocation parameters over O1 interface.
   4. Support for adjustment of the resource configuration parameters for a specific UE.
4. Application server:
   1. Support receiving terminal registration information from E2 nodes via SMO.
   2. Support collection of user plane data uploaded from RAN.
   3. Support sending UE-level radio resource adjustment requirements to Non-RT RIC.

### Solutions

#### UAV control vehicle

The context of the UAV control vehicle use case is captured in table 4.3.3.1-1.

###### Table 4.3.3.1-1: UAV control vehicle

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | In the UAV control vehicle scenario, the UE-level radio resource configuration optimization is achieved through the delivery of policies and configuration parameters. |  |
| Actors and Roles | Non-RT RIC: RAN policy control function.  Near-RT RIC: RAN policy enforcement function.  RAN: Implementation of updated configuration parameters.  Application server: Generates UE-level resource allocation requirements. |  |
| Assumptions | All relevant functions and components are instantiated.  A1/O1 interface connectivity is established with Non-RT RIC. |  |
| Pre-conditions | The Non-RT RIC sends an instruction through the interface, informing the RAN to allocate the default resource, and establish the cell.  The RAN notifies the Near-RT RIC and application server of the accessed terminal (UE) information. |  |
| Begins when | Operator specified trigger condition or event is detected. |  |
| Step 1 (M) | Application server sends requirements of radio resource allocation adjustment to Non-RT RIC.  This request can be sent at any time, or it can be sent at regular intervals. |  |
| Step 2 (M) | Non-RT RIC converts the requirements to resource adjustment policy and distributes the policy to the Near-RT RIC. |  |
| Step 3 (M) | Near-RT RIC converts policy to specific configuration parameter commands. |  |
| Step 4 (M) | RAN executes the command to modify the configuration parameters. |  |
| Step 5 (M) | The specified UE adjusts the uplink rate. |  |
| Ends when | Operator specified trigger condition or event is satisfied. |  |
| Exceptions | None identified. |  |
| Post Conditions | The RAN operates using the newly deployed parameters/models. |  |

The flow diagram of the UAV control vehicle use case is given in figure 4.3.3.1-1.

![Generated by PlantUML](../assets/images/416ff06a2412.png)

###### Figure 4.3.3.1-1: UAV control vehicle

### Required data

Multi-dimensional data are expected to be retrieved for policy generation and performance improvements brought by the policy:

1. The number of terminals accessed, the identification information such as a UE ID that distinguishes each UAV connected with UAV the control vehicle, and the resource information assigned by default.
2. UE-level radio resource allocation information, such as the number of PRB resources used in PDSCH/PUSCH scheduling.

## QoE optimization

This use case provides the background and motivation for the O-RAN architecture to support real-time QoE optimization. Moreover, some high-level description and requirements over Non-RT RIC, A1 and E2 interfaces are introduced.

### Background and goal of the use case

The highly demanding 5G native applications like cloud VR are both bandwidth consuming and latency sensitive. However, for such traffic-intensive and highly interactive applications, current semi-static QoS framework cannot efficiently satisfy diversified QoE requirements especially taking into account potentially significant fluctuation of radio transmission capability. It is expected that QoE estimation/prediction from application level can help deal with such uncertainty and improve the efficiency of radio resources, and eventually improve user experience. RAN analytics information as RAN service can be exposed to an external application or MEC. It is envisioned to be helpful for the application to improve the user experience.

The main objective is to ensure QoE optimization be supported within the O-RAN architecture and its open interfaces. Multi-dimensional data, e.g., user traffic data, QoE measurements, network measurement report, can be acquired and processed via ML algorithms to support traffic recognition, QoE prediction, QoS enforcement decisions. ML models can be trained offline and model inference will be executed in a real-time manner. Focus should be on a general solution that would support any specific QoE use case (e.g., cloud VR, video, etc.).

### Entities/resources involved in the use case

1. Non-RT RIC:
   1. Retrieve necessary QoE related measurement metrics from network level measurement report and SMO (can acquire data from application) for constructing/training relevant AI/ML model that will be deployed in Near- RT RIC to assist in the QoE optimization function. For example, this could be application classification, QoE prediction, and available bandwidth prediction.
   2. Training of potential ML models for predictive QoE optimization, which can respectively autonomously recognize traffic types, predict quality of experience, or predict available radio bandwidth.
   3. Send policies/intents to Near-RT RIC to drive the QoE optimization at RAN level in terms of expected behavior.
2. Near-RT RIC:
   1. Support update of AI/ML models from Non-RT RIC.
   2. Support execution of the AI/ML models from Non-RT RIC, e.g., application classification, QoE prediction, and available bandwidth prediction.
   3. Support interpretation and execution of intents and policies from Non-RT RIC to derive the QoE optimization at RAN level in terms of expected behavior.
   4. Sending QoE performance report to Non-RT RIC for evaluation and optimization.
3. RAN:
   1. Support network state and UE performance report with required granularity to SMO over O1 interface.
   2. Support QoS enforcement based on messages from A1/E2, which are expected to influence RRM behavior.
4. Application server/MEC:
   1. Request/subscribe RAN analytics information from Near-RT RIC.

### Solutions

#### AI/ML model training and distribution

The context of the model training and distribution is captured in table 4.4.3.1-1.

###### Table 4.4.3.1-1: Model training and distribution

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Model training and distribution |  |
| Actors and Roles | Non-RT RIC, Near-RT RIC, SMO, application server |  |
| Assumptions | All relevant functions and components are instantiated.  A1/O1 interface connectivity is established with Non-RT RIC. |  |
| Pre-conditions | Near-RT RIC and Non-RT RIC are instantiated with A1 interface connectivity being established between them.  A certificate is shared between Near-RT RIC and Non-RT RIC for model related data exchange.  Editor's note: Security related procedure is not defined in the present document. |  |
| Begins when | Operator specified trigger condition or event is detected. |  |
| Step 1 (M) | QoE related measurement metrics from SMO (can acquire data from application) and network level measurement report either for instantiating training of a new ML model or modifying existing ML model. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Step 2 (M) | Non-RT RIC does the model training, obtains QoE related models, and can deploy QoE policy model internally. An example of QoE-related models that can be used at the Near-RT RIC is provided as follows:   1. Application classification model (optional and can refer to 3rd party's existing functionality) 2. QoE prediction model 3. QoE policy model 4. Available BW prediction model |  |
| Step 3 (M) | Non-RT RIC deploys/updates the AI/ML model in the Near-RT RIC via O1 or Non-RT RIC assigns/update the AI/ML model for the Near-RT RIC xApp via A1. |  |
| Step 4 (M) | Near-RT RIC stores the received QoE related ML models in the ML model inference platform and based on requirements of ML models. |  |
| Step 5 (O) | If required, Non-RT RIC can configure specific performance measurement data to be collected from RAN to assess the performance of AI/ML models and update the AI/ML model in Near-RT RIC based on the performance evaluation and model retraining. |  |
| Ends when | Operator specified trigger condition or event is satisfied. |  |
| Exceptions | None identified. |  |
| Post Conditions | Near-RT RIC stores the received QoE related ML models in the ML model inference platform and execute the model for QoE optimization function in Near-RT RIC. |  |

The flow diagram of the model training and distribution is given in figure 4.4.3.1-1.

![Generated by PlantUML](../assets/images/911a65c6ffc6.png)

###### Figure 4.4.3.1-1: Model training and distribution flow diagram

#### Policy generation and performance evaluation

The context of the policy generation and performance evaluation is captured in table 4.4.3.2-1.

###### Table 4.4.3.2-1: Policy generation and performance evaluation

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Policy generation and performance evaluation |  |
| Actors and Roles | Non-RT RIC, Near-RT RIC, SMO |  |
| Assumptions | All relevant functions and components are instantiated.  A1/O1 interface connectivity is established with Non-RT RIC. |  |
| Pre-conditions | QoE related models have been deployed in Non-RT RIC and Near-RT RIC respectively. |  |
| Begins when | The network operator/manager want to generate QoE policy or optimize QoE related AI/ML models. |  |
| Step 1 (M) | Non-RT RIC evaluates the collected data and generates the appropriate QoE optimization policy. |  |
| Step 2 (M) | Non-RT RIC sends the QoE optimization policy to Near-RT RIC via A1 interface. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Step 3 (M) | Near-RT RIC receives the policy from the Non-RT RIC over the A1 interface and from the RAN over the E2 interface. And the Near-RT RIC inferences the QoE related AI/ML models and converts policy to specific E2 control or policy commands. |  |
| Step 4 (M) | Near-RT RIC sends the E2 control or policy commands towards RAN for QoE optimization. |  |
| Step 5 (M) | RAN enforces the received control or policy from the Near-RT RIC over the E2 interface. |  |
| Step 6 (O) | If required, Non-RT RIC can configure specific performance measurement data to be collected from RAN to assess the performance of the QoE optimization function in Near-RT RIC, or to assess the outcome of the applied A1 policies. And then update A1 policy and E2 control or policy. |  |
| Ends when | Operator specified trigger condition or event is satisfied. |  |
| Exceptions | None identified. |  |
| Post Conditions | Non-RT RIC monitors the performance of the QoE optimization related function in Near-RT RIC by collecting and monitoring the relevant performance KPIs and counters from RAN. |  |

The flow diagram of the policy generation and performance evaluation is given in figure 4.4.3.2-1.

![Generated by PlantUML](../assets/images/4976c221166a.png)

###### Figure 4.4.3.2-1: Policy generation and performance evaluation flow diagram

#### RAN performance analytics

The context of the RAN performance analytics is captured in table 4.4.3.3-1.

###### Table 4.4.3.3-1: RAN performance analytics

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Expose RAN analytics information to external applications or MEC. |  |
| Actors and Roles | Non-RT RIC, Near-RT RIC, SMO, application server/MEC |  |
| Assumptions | All relevant functions and components are instantiated.  A1/O1 interface connectivity is established with Non-RT RIC. |  |
| Pre-conditions | QoE related models have been deployed in Non-RT RIC and Near-RT RIC respectively.  Editor's note: Security related procedure is not defined in the present document. |  |
| Begins when | The application server or MEC wants to request/subscribe RAN analytics information |  |
| Step 1 (M) | Application server or MEC sends RAN analytics information request to Near-RT RIC or subscribes RAN analytics information from Near-RT RIC to get periodic or event triggered RAN performance. |  |
| Step 2 (M) | Near-RT RIC receives the request or subscription from application server or MEC. Upon the request, the Near-RT RIC subscribes and receives the measurement data from O-CU/O-DU. Based on it, with QoE related AI/ML models, the Near-RT RIC infers the RAN analytics information, and exposes it to application server or MEC via the response or notification command. Such information, e.g., performance analytics could be used for QoE optimization. |  |
| Ends when | Application server gets response or sends subscription deletion toward the Near-RT RIC. |  |
| Exceptions | None identified. |  |
| Post Conditions | Application server executes logic control, e.g., TCP transmission window adjustment, video coding rate selection to improve QoE. |  |

The flow diagram of the RAN performance analytics is given in figure 4.4.3.3-1.

![IMG_256](../assets/images/5a69461bcae7.png)

###### Figure 4.4.3.3-1: RAN performance analytics flow diagram

### Required data

Multi-dimensional data are expected to be retrieved by Non-RT RIC for AI/ML model training and policies/intents generation. Network level measurement data from O-CU/O-DU are also expected to report to Near-RT RIC for RAN analytics information inference.

1. Network level measurement report, including:
   1. UE level radio channel information, mobility related metrics, e.g., CQI, SINR, MCS
   2. L2 measurement report related to traffic pattern, e.g., throughput, latency, packets per-second, inter frame arrival time
   3. RAN protocol stack status: e.g., PDCP buffer status
   4. Cell level information: e.g., DL/UL PRB occupation rate
2. QoE related measurement metrics collected from SMO (can acquire data from application or network).
3. User traffic data, which can be obtained via a proprietary interface from existing data collection equipment and is currently out of the scope of A1 or E2.

###### RAN analytics information:

RAN analytics information exposed by Near-RT RIC to application server includes but is not limited to:

1. UE level information, e.g.:
   1. Predicted RAN performance, e.g., maximum/average traffic rate, maximum/average latency, average packet loss rate
   2. Prediction related information, e.g., confidence, validity period
2. Cell level information.

## Traffic steering

This use case provides the motivation, description, and requirements for traffic steering use case, allowing operators to specify different objectives for traffic management such as optimizing the network/UE performance, or achieving balanced cell load.

### Background and goal of the use case

5G systems will support many different combinations of access technologies namely; LTE (licensed band), NR (licensed band), NR-U (unlicensed band), Wi-Fi (unlicensed band) [i.3]. Several different multi-access deployment scenarios are possible with 5GC to support wide variety of applications and satisfy the spectrum requirements of different service providers;

* Carrier aggregation between licensed band NR (primary cell) and NR-U (secondary cell)
* Dual connectivity between licensed band NR (primary cell) and NR-U (secondary cell)
* Dual connectivity between licensed band LTE (primary cell) and NR-U (secondary cell)
* Dual connectivity between licensed band NR (primary cell) and Wi-Fi (secondary cell)

NOTE: The scenario of dual connectivity between NR and Wi-Fi is not defined in the present document.

The rapid traffic growth and multiple frequency bands utilized in a commercial network make it challenging to steer the traffic in a balanced distribution. Further in a multi-access system there is need to switch the traffic across access technologies based on changes in radio environment and application requirements and even split the traffic across multiple access technologies to satisfy performance requirements. The different types of traffic and frequency bands in a commercial network make it challenging to handle the complex QoS aspects, bearer selection (Master Cell Group (MCG) bearer, Secondary Cell Group (SCG) bearer, split bearer), bearer type change for load balancing, achieving low latency and best in class throughput in a multi-access scenario with 5GC networks as specified in 3GPP TS 37.340 [12]. Typical controls are limited to adjusting the cell reselection and handover parameters; modifying load calculations and cell priorities; and are largely static in nature when selecting the type of bearers and QoS attributes.

Further, the RRM (Radio Resource Management) features in the existing cellular network are all cell-centric. Even in different areas of within a cell, there are variations in radio environment, such as neighboring cell coverage, signal strength, interference status, etc. However, base stations based on traditional control strategies treat all UEs in a similar way and are usually focused on average cell-centric performance, rather than UE-centric.

Such current solutions suffer from following limitations:

* It is hard to adapt the RRM control to diversified scenarios including multi-access deployments and optimization objectives.
* The traffic management strategy is usually passive, rarely taking advantage of capabilities to predict network and UE performance. The strategy needs to consider aspects of steering, switching, and splitting traffic across different access technologies in a multi-access scenario.
* Non-optimal traffic management, with slow response time, due to various factors such as inability to select the right set of UEs for control action. This further results in non-optimal system and UE performance, such as suboptimal spectrum utilization, reduced throughput and increased handover failures.

Based on the above reasons, the main objective of this use case is to allow operators to flexibly configure the desired optimization policies, utilize the right performance criteria, and leverage machine learning to enable intelligent and proactive traffic management.

### Entities/resources involved in the use case

1. Non-RT RIC:
   1. Retrieve necessary performance, configuration, and other data for defining and updating policies to guide the behavior of traffic management function in Near-RT RIC. For example, the policy could relate to specifying different optimization objectives to guide the carrier/band preferences at per-UE or group of UE granularity.
   2. Support communication of policies to Near-RT RIC.
   3. Support communication of measurement configuration parameters to RAN.
2. Near-RT RIC:
   1. Support interpretation and enforcement of policies from Non-RT RIC.
3. E2 nodes:
   1. Support data collection with required granularity to SMO over O1 interface.

### Solutions

#### Policy-based traffic steering

The context of the traffic steering use case is captured in table 4.5.3.1-1.

###### Table 4.5.3.1-1: Traffic steering

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Drive traffic management in RAN in accordance with defined intents, policies, and configuration. |  |
| Actors and Roles | Non-RT RIC: RAN policy control function.  Near-RT RIC: RAN policy enforcement function. E2 nodes: Control plane and user plane functions.  SMO/Collection & Control: Termination point for O1 interface. |  |
| Assumptions | All relevant functions and components are instantiated. A1 interface connectivity is established with Non-RT RIC.  O1 interface connectivity is established with SMO/ Collection & Control. |  |
| Pre-conditions | Network is operational.  SMO/ Collection & Control has established the data collection and sharing process, and Non-RT RIC has access to this data.  Non-RT RIC monitors the performance by collecting the relevant performance events and counters from E2 nodes via SMO/ Collection & Control. |  |
| Begins when | Operator specified trigger condition or event is detected. |  |
| Step 1 (O) | If required, Non-RT RIC configures additional, more specific, performance measurement data to be collected from E2 nodes to assess the performance. |  |
| Step 2 (M) | Non-RT RIC decides an action and communicates relevant policies to Near-RT RIC over A1. The example policies can include:   1. QoS targets 2. Preferences on which cells to allocate control plane and user plane |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
|  | c) Bearer handling aspects including bearer selection, bearer type change |  |
| Step 3 (M) | The Near-RT RIC receives the relevant info from Non-RT RIC over A1 interface, interprets the policies and enforces them. |  |
| Step 4 (M) | Non-RT RIC decides that conditions to continue the policy is no longer valid. |  |
| Ends when | Non-RT RIC deletes the policy. |  |
| Exceptions | None identified. |  |
| Post Conditions | Non-RT RIC monitors the performance by collecting the relevant performance events and counters from E2 nodes via SMO. |  |

The flow diagram of the traffic steering use case is given in figure 4.5.3.1-1.

![Generated by PlantUML](../assets/images/7c1945391c68.png)

###### Figure 4.5.3.1-1: Traffic steering use case flow diagram

#### Enrichment information based traffic steering

In this variation, when the Near-RT detects cell congestion, it requests via A1-EI to Non-RT RIC analytics that can be used as additional information to assist in its efforts at alleviating that congestion.

The context of the enrichment information-based traffic steering use case is captured in table 4.5.3.2-1.

###### Table 4.5.3.2-1: Enrichment information-based traffic steering

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Drive traffic management in RAN in accordance with defined enrichment information and associated decision control. |  |
| Actors and Roles | * Non-RT RIC: RAN analytics and enrichment information framework. * "UE location" rApp: Capable of calculating the geo-location of UEs with a prediction on the granularity of seconds time scale (e.g., based on timing advance and RRC measurements), aggregating and trending those over time to learn mobility patterns, and using these to predict a UE's future location based on its recent location history. * "Traffic steering" rApp: Determines set of UEs connected to requested cell and requests UE location rApp analytics, forwarding the same to the Near- RT RIC. * Near-RT RIC: Detects breaches in expected performance and requests enrichment information from Non-RT RIC to aid in mitigation efforts. Also performs RAN decision control based on network telemetry and the enrichment information provided by Non-RT RIC. * E2 nodes: Control plane and user plane RAN functions. * SMO/ Collection & Control: Termination point for O1 interface. |  |
| Assumptions | * All relevant functions and components are instantiated. * A1 interface connectivity is established between Near-RT RIC and Non-RT RIC. * O1 interface connectivity is established between RAN E2 nodes and SMO/ Collection & Control. * Near-RT RIC is capable of detecting a breach in cell performance and determine the usefulness of predictive data. |  |
| Pre-conditions | * Network is operational. * Network data collection pipelines have been engineered for necessary data volumes and Non-RT RIC has access to this data. * Both rApps have registered via R1 the data types that they produce and the data types they consume. * UE location rApp has been trained to recognize the UE mobility patterns in the local area such that, given a UE identifier, it can quickly determine whether that UE is or is not following a known mobility pattern. * Traffic steering rApp has subscribed to, and Non-RT RIC/SMO is collecting on its behalf, the relevant performance events and counters from E2 nodes via SMO/ Collection & Control. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Begins when | Near-RT RIC detects a cell performance breach (e.g., due to UE capacity considerations) and determines it might be useful to have additional information from the Non-RT RIC regarding UE candidates for handover. |  |
| Step 1 (M) | Near-RT RIC requests of the Non-RT RIC the enrichment information corresponding to the UE\_Traj\_Pred R1 data type for the congested cell. |  |
| Step 2 (M) | Non-RT RIC leverages R1 to subscribe to UE\_Traj\_Pred data type from the traffic steering rApp. |  |
| Step 3 (M) | Traffic steering rApp subscribes to relevant network data for the cell in question. |  |
| Steps 4-8 (M) | Non-RT RIC/SMO interact with the O-RAN network to collect the requested network data and deliver to the traffic steering rApp. |  |
| Step 9 (M) | Traffic steering rApp determines from network data which UEs are connected to the cells in question. |  |
| Step 10 (M) | Traffic steering rApp leverages R1 to subscribe to UE location prediction data type (UeLocPred) for those UEs connected to the cells in question and that also meet other criteria known to the traffic steering rApp. |  |
| Step 11 (M) | Non-RT RIC leverages R1 to have UE location rApp produce the requested data type instances for the specified UEs. |  |
| Step 12 (M) | UE location rApp subscribes to relevant network data for the UEs in question. |  |
| Steps 13-17 (M) | Non-RT RIC/SMO interact with the O-RAN network to collect the requested network data and deliver to the UE location rApp. |  |
| Step 18 (M) | UE location rApp determines from network data, trended over time, the UE location prediction over a particular future time window (e.g., 10-30 seconds) for the UE along with a confidence value for that prediction. |  |
| Steps 19-20 (M) | UE location rApp leverages R1 to return the UeLocPred instances to the Non- RT RIC, which in turn delivers to the traffic steering rApp. |  |
| Step 21 (M) | Traffic steering rApp determines from UE location prediction analytics the predicted locations of the specified UEs within the next 10-30 seconds, maps those locations into a historical RF measurements map overlaying cell boundaries to physical geography, and determines the subset of UEs predicted to be leaving the oversubscribed cell within the next 10-30 seconds anyway, and hence which would perhaps be candidates for expedited handover. |  |
| Step 22 (M) | Traffic steering rApp leverages R1 to generate UE trajectory prediction (UE\_Traj\_Pred) data based on its analysis. |  |
| Step 23 (M) | Non-RT RIC leverages A1-EI to forward the UE trajectory prediction data to the Near-RT RIC as the corresponding A1 enrichment information type. |  |
| Step 24 (M) | The Near-RT RIC interprets the information content received across the A1-EI interface and determines whether and how to use that EI in its congestion mitigation activities. (As a further optimization, it can be useful for the Near-RT RIC to also understand what type of activity the UE is engaged in.) |  |
| Step 25 (M) | Near-RT RIC continues monitoring cell performance and decides that congestion has been resolved. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Step 26 (M) | Near-RT RIC requests the Non-RT RIC to discontinue UE\_Traj\_Pred data production for the target cell. |  |
| Step 27 (M) | Non-RT RIC leverages R1 to unsubscribe to UE\_Traj\_Pred data type from the traffic steering rApp. |  |
| Step 28 (M) | Traffic steering rApp leverages R1 to unsubscribe to the UE location prediction data type for the corresponding UEs. |  |
| Step 29 (M) | Non-RT RIC leverages R1 to unsubscribe to UELocPred data type from the UE location rApp. |  |
| Steps 30-32 (M) | UELocPred rApp unsubscribes to the relevant network data. |  |
| Ends when | UE location prediction rApp ceases to produce the UE location prediction data for the corresponding UEs and to collect the associated network data. |  |
| Exceptions | None identified. |  |
| Post Conditions | Near-RT RIC continues to monitor RAN performance. |  |

The flow diagram of the enrichment information-based traffic steering use case is given in figure 4.5.3.2-1.

![Generated by PlantUML](../assets/images/e5dd521adb39.png)

###### Figure 4.5.3.2-1: Enrichment information-based traffic steering use case flow diagram

### Required data

The measurement counters and KPIs (as defined by 3GPP and will be extended for O-RAN use cases) shall be appropriately aggregated by cell, QoS type, slice, etc.

1. Measurement reports with RSRP/RSRQ/CQI information for serving and neighboring cells. In multi-access scenarios this will also include intra-RAT and inter-RAT measurement reports, cell quality thresholds, CGI reports and measurement gaps on per-UE or per-frequency.
2. UE connection and mobility/handover statistics with indication of successful and failed handovers, etc.
3. Cell load statistics such as information in the form of number of active users or connections, number of scheduled active users per TTI, PRB utilization, and CCE utilization.
4. Per user performance statistics such as PDCP throughput, RLC or MAC layer latency, etc.
5. UE level measurements useful in calculating UE location, such as RRC and timing advance measurements.

## Massive MIMO optimization

This use case provides the motivation, description, and requirements for Non-RT and Near-RT loop massive MIMO beamforming optimization use case. Massive MIMO system configuration can allow operators to optimize the network performance and QoS by e.g. Non-RT and Near-RT loop balancing cell loads or reducing inter-cell interference and control electromagnetic (EM) emissions.

### Background and goal of the use case

Massive MIMO (mMIMO) is among the key levers to increase performance and QoS in 5G networks. Capacity enhancement is obtained by means of beamforming of the transmitted signals, and by spatially multiplexing data streams for both single user (SU) and for multi-user (MU) MIMO. Beamforming increases the received signal power, while decreasing the interference generated on other users, hence resulting in higher SINR and user throughputs. Beamforming can be codebook based (mainly for FDD), or non-codebook based (TDD). Grid of Beams (GoB) with the corresponding beam sweeping as specified in [i.2] and in 3GPP TS 38.213 [14] has been introduced to allow beamforming the control channels used during initial access, mainly for high frequency (but can be used also for the sub-6 GHz band) MIMO operation. The codebook and the GoB define the span of the beams, namely the horizontal and vertical aperture in which beamforming is supported, and therefore the coverage area and the shape of the cell. Massive MIMO can be deployed in 5G macro-cells as well as in heterogeneous network, where macro-cells and 3D-MIMO small cells co-exist and complement each other for better aggregated capacity and coverage. In order to obtain an optimal beamforming and cell resources (Tx power, PRB) configuration, one will have to look at a multi-cell environment instead of a single cell. Moreover, different vendors can have different implementations in terms of the number of beams, the horizontal/vertical beam widths, azimuth and elevation range, to achieve the desired coverage. In a multi-node/multi-vendor scenario, centralized monitoring and control is required to offer optimal coverage, capacity and mobility performance as well as control over EM emissions in order to comply with regulatory requirements. Additionally, the number of such combinations of adjustable parameters is in the thousands, hence it is prohibitive for the traditional human expert system to work out the optimal configuration, and a new method is in need.

State of the art solutions suffer from the following problems:

mMIMO macro- and small-cells benefit from a flexible way of serving users in their coverage area thanks to beamforming. However, the coverage area itself is defined by (vendor specific) fixed mMIMO system parameters such as the azimuth and elevation angle range, or the GoB parameters. Hence due to user and traffic distribution and terrain topology, the mMIMO cell can suffer from e.g.

1. High inter-cell interference
2. Unbalanced traffic between neighboring cells
3. Low performance of cell edge users
4. Poor handover performance

Moreover, load balancing functions can be activated in the network nodes, e.g. gNB adapting mobility parameters in order to distribute load between the beams of the neighbor cells, relying on load information exchange over network interfaces. This approach however is partly limited by the cell footprint statically fixed at the initial configuration.

The objective of this use case is to allow the operator to flexibly configure a mMIMO system parameters by means of policies and configuration assisted by machine learning techniques, according to objectives defined by the operator.

### Entities/resources involved in the use case

#### Non-RT massive MIMO GoB beam forming optimization

1. Non-RT RIC:
   1. Retrieve necessary configurations, performance indicators, measurement reports, user activity information and other data from SMO and RAN directly for the purpose of constructing/training relevant AI/ML models that will be deployed in Non-RT RIC to assist in the massive MIMO optimization function.
   2. Retrieve necessary user location related information, e.g., GPS coordinates, from the application layer for the purpose of constructing/training relevant AI/ML models.
   3. Use the trained AI/ML model to infer the user distribution and traffic distribution of multiple cells and predict the optimal configuration of massive MIMO parameters for each cell/beam according to a global optimization objective designed by the operator. The massive MIMO configurable parameters includes horizontal beam width, vertical beam width, beam azimuth and downtilt, maximum and average transmitted power per beam/direction as specified in 3GPP TS 28.541 [5].
   4. Send the optimal beam pattern configuration to SMO configuration components.
   5. Retrain the AI/ML model and re-optimize the beam pattern configurations based on the monitored performance.
   6. Execute the control loop periodically or event-triggered.
2. SMO:
   1. Collect the necessary configurations, performance indicators, and measurement reports data from RAN nodes triggered by Non-RT RIC if required.
   2. Configure the optimized beam parameters via O1 interface.
   3. Monitor the performance of all the cells; when the optimization objective fails, initiate fall-back procedure; meanwhile, trigger the AI/ML model re-training, data analytics and optimization in Non-RT RIC.
3. E2 nodes:
   1. Collect and report to SMO and/or to Near-RT RIC KPI related to user activity, traffic load, coverage and QoS performance, per beam/area, handover, and beam failures statistics.
   2. Collect and report to SMO and/or to Near-RT RIC information about beam and resource utilization.
   3. Apply beam management strategies following SMO and Near-RT RIC configuration and constraints.

#### Near-RT beam-based mobility robustness optimization

1. SMO:
   1. Trigger bMRO configuration. (O)
   2. Send bMRO configuration target to Near-RT RIC.
   3. Send GoB beam pattern related information (beam pattern configuration, beam pattern configuration list, beam pattern configuration switch timing/condition, beam pattern identifier etc.) to the Near-RT RIC.
2. Near-RT RIC:
   1. Retrieve necessary configurations, performance indicators, measurement reports and other data from E2 nodes for the purpose of training of relevant AI/ML models.
   2. Use the trained AI/ML models to infer the correlation between the Grid-of-Beam configuration, handover, and beam failure statistics of multiple cells and beams, and to predict the optimal configuration of mobility parameters (e.g., beam individual offsets for beam mobility) for each cell/beam pair optionally according to a global optimization objective designed by the operator and retrieved from the SMO.
   3. Send the optimal beam mobility parameter configurations to E2 nodes as specified in 3GPP TS 28.541 [5].
   4. Monitor the performance of the AI/ML model based on configurations, performance indicators, and measurement reports received from the RAN.
   5. Retrain the AI/ML model and re-optimize the beam mobility configurations based on the monitored performance and/or based on a switch of the Grid-of-Beam configuration.
   6. Execute the control loop periodically or event triggered.
   7. Retrieve GoB beam pattern related information from the SMO.
3. E2 nodes:
   1. Collect and report to Near-RT RIC KPIs related to Grid-of-Beam configuration, handover, and beam failure statistics.
   2. Apply L3 beam mobility parameter configuration following Near-RT RIC configuration as specified in 3GPP TS 28.541 [5].
   3. Send GoB beam pattern related information to the Near-RT RIC.

### Solutions

#### Non-RT massive MIMO GoB beam forming optimization

The context of the massive MIMO beamforming optimization is captured in table 4.6.3.1-1.

###### Table 4.6.3.1-1: Massive MIMO GoB beam forming optimization

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Enable flexible optimization of the multi-cell M-MIMO beamforming performance (capacity and coverage) by means of configuration parameter change with operator-defined objectives and allow for AI/ML- based solutions. |  |
| Actors and Roles | Non-RT RIC acting as massive MIMO beamforming configuration optimization decision making function.  SMO acting as the RAN data collection and parameter configuration function.  RAN acting as configuration enforcement function. |  |
| Assumptions | O1 interface connectivity is established between RAN and SMO. Network is operational. |  |
| Pre-conditions | SMO has processed the collected data and Non-RT RIC has access to this data. |  |
| Begins when | Operator specified trigger condition or event is detected. |  |
| Step 1 (O) | If required, SMO can initiate the specific measurement data collection request towards RAN for AI/ML model training or to assess the outcome of the applied configuration. |  |
| Step 2 (M) | Non-RT RIC retrieve the data from SMO components and trains the AI/ML model with the collected data from the application, the RAN nodes. Trained AI/ML models are deployed and inferenced for long-term configuration parameters optimization. |  |
| Step 3 (M) | Upon trigger from Non-RT RIC with the optimized beam parameters, SMO configures the parameters towards the RAN via O1 interface. The relevant parameters can include:   1. horizontal beam width, vertical beam width, beam azimuth and downtilt 2. maximum and average transmitted power per beam/direction |  |
| Step 4 (M) | SMO monitors the network performance. If the algorithm performance is  unsatisfactory in terms of predefined objective/requirement, SMO initiates fallback mechanism to restore previous configuration. It can also |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
|  | gather necessary information and data to retrain and update the AI/ML model or trigger the optimization in Non-RT RIC. |  |
| Ends when | Operator specified trigger condition or event is satisfied. |  |
| Exceptions | None identified. |  |
| Post Conditions | The RAN operates using the newly deployed parameters/models. |  |

The flow diagram of the massive MIMO beamforming optimization is given in figure 4.6.3.1-1.

![Generated by PlantUML](../assets/images/09f9536bcf6f.png)

###### Figure 4.6.3.1-1: Massive MIMO beamforming optimization flow diagram

#### Near-RT massive MIMO beam-based mobility robustness optimization

The context of the massive MIMO beam-based mobility robustness optimization is captured in table 4.6.3.2-1.

###### Table 4.6.3.2-1: Beam-based mobility robustness optimization

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Enable flexible optimization of the beam-based mobility robustness optimization by means of configuration parameter change with operator- defined objectives and allow for AI/ML-based solutions. |  |
| Actors and Roles | Near-RT RIC acting as bMRO function, data collection function, and AI/ML model training function.  E2 nodes acting as configuration enforcement function. |  |
| Assumptions | E2 connectivity is established between Near-RT RIC and E2 nodes. O1 connectivity is established between Near-RT RIC and SMO. Network is operational. |  |
| Pre-conditions | Active Grid-of-Beams beam pattern is defined. |  |
| Begins when | Operator specified trigger condition is set or event is detected or periodically. |  |
| Step 1 (M) | Near-RT RIC collects necessary data from E2 nodes and related GoB beam pattern Information and trains the AI/ML model with the collected data. |  |
| Step 2 (M) | Trained AI/ML models are executed in Near-RT RIC and infer for configuration parameter optimization based on the operator target. |  |
| Step 3 (M) | Continuously or upon trigger (e.g., change in the mMIMO beam pattern configuration, manual trigger etc.), Near-RT RIC configures optimized parameters in E2 nodes (e.g., bCIO-s). |  |
| Step 4 (M) | Near-RT RIC monitors the network performance. If the algorithm performance is unsatisfactory in terms of predefined objective/requirement, Near-RT RIC initiates fallback mechanism to restore previous/default configuration. It can also gather necessary information and data to retrain and update the AI/ML model or trigger the optimization. |  |
| Ends when | Operator specified trigger condition or event is satisfied. |  |
| Exceptions | None identified. |  |
| Post Conditions | The E2 Nodes operate using the newly deployed parameters. |  |

The flow diagram of the massive MIMO beam-based mobility robustness optimization is given in figure 4.6.3.2-1.

![Generated by PlantUML](../assets/images/6732b79a175c.png)

###### Figure 4.6.3.2-1: Massive MIMO beam-based mobility robustness optimization flow diagram

NOTE on ![](../assets/images/c84fe9c02034.png), ![](../assets/images/c98e80bf6742.png):

One of the necessary inputs for training and inference of the bMRO function is the (current) GoB beam pattern (or alternative beam pattern) that is determined externally (in the SMO, in the Non-RT RIC, in the E2 nodes, or in the Near- RT RIC by another function). The relevant GoB beam pattern information shall be made available to the Near-RT RIC bMRO function both for training and inference. Depending on implementation, this can be achieved by transmission from the SMO (over O1), or by transmission from the E2 nodes (over E2), or by combined transmission from the SMO and the E2 nodes (or by communication between two Near-RT RIC functions). Moreover, depending how the relevant GoB beam pattern information is defined, the necessary information can be even transmitted separately and asynchronously (e.g., SMO transmits a list of GoB beam patterns for the next, longer time period, while the E2 nodes transmit the exact times of beam pattern change and indicate the ID of the beam pattern in the list).

### Required data

#### Non-RT massive MIMO GoB beam forming optimization

There are different types of data that are required from different parts of the network, and the following list summarizes with some examples:

1. Environment data: Cell site information (location), inter-site distance, BS system configuration, (e.g. operating frequency, bandwidth, frame structure, transmit power, default beam weight configuration); complete set of massive MIMO configurations, i.e., horizontal beamwidth adjustable range, vertical beamwidth adjustable range, azimuth angle adjustable range, elevation angle adjustable range.
2. From RAN to SMO and/or Near-RT RIC
   1. Measurement reports with RSRP/RSRQ/CQI/SINR per beam information for the UEs in cells of interest; the time granularity of data collection shall be configurable and satisfy the requirement of the AI/ML model.
   2. Network KPIs: e.g., cell downlink/uplink traffic load, RRC connection attempts, average RRC connected UE, maximum RRC connected UE, average active connections (downlink/uplink), DL/UL throughput, DL/UL spectral efficiency, NI (Noise Interference); beam resource usage (transmitted power per beam/directions and associated PRB usage), beam based handover and beam failure statistics
3. From application to SMO
   1. User location related information, e.g., GPS coordinates for the purpose of constructing/training relevant AI/ML models.

#### Near-RT massive MIMO beam-based mobility robustness optimization

1. Beam-specific handover related KPMs, as specified in 3GPP TS 28.552 [6], in 3GPP TS 28.622 [8] and in 3GPP TS 28.624 [9] from E2 nodes, similar to:
   1. Too early handovers
   2. Too late handovers
   3. Attempted handovers
   4. Successful handovers
   5. Failed handovers
   6. The time granularity is an integer multiple of 1 second as specified in 3GPP TS 28.622 [8].
2. The beam pattern information supplied externally is not defined in the present document.

## RAN sharing

This use case provides the motivation, description, and requirements for RAN sharing use case. The goal of this use case is to enable multiple operators to share the same O-RAN infrastructure, while allowing them to remotely configure and control the shared resources via a remote O1, O2 and E2 interface.

### Background and goal of the use case

RAN sharing is envisioned as an efficient and sustainable way to reduce the network deployment costs, while increasing network capacity and coverage. Among the different RAN sharing models that have been experimented so far, a special focus is put here on the evaluation of the compatibility of the "geographical split" RAN sharing model with the O-RAN architecture. In such a model, a coverage area is split between two or more operators; each operator manages the RAN in a specific area, while sharing its RAN infrastructure and computing resources with its partner operators.

Specifically, this use case analyzes the Multi-Operator RAN (MORAN) sharing scenario, wherein each operator utilizes a separate carrier in order to achieve more freedom and independency on the control of the radio resources. Accordingly, the goal of this use case is to propose a sharing-compliant O-RAN architecture that lets operators to configure the shared network resources independently from configuration and operating strategies of the other sharing operators. Specifically, it is proposed that a home operator (operator A) makes available its O-RAN infrastructure and computing resources to host the Virtual RAN Functions (VNF) of a second operator (operator B), allowing it to configure and control such remote VNFs via a remote O1, O2 and E2 interface.

![](../assets/images/6565bb2ae69b.png)

###### Figure 4.7.1-1: MORAN use case in O-RAN

The logic architecture of the proposed MORAN use case is shown in figure 4.7.1-1. It is assumed that operator A owns the site A and shares the PHY layer (LOW) with operator B (Shared O-RU). Indeed, multiple PLMN IDs are broadcasted, while each operator operates in a different carrier. Moreover, the computing resources of the site A are shared among multiple VNFs, belonging to operator A and operator B, respectively.

Each VNF represents a logic implementation of the O-DU and O-CU functionalities and is controlled by each partner operator in an independent manner. While operator A can directly orchestrate and configure its VNFs, operator B needs

to control its VNFs in a remoted manner. The challenge here is to enable operator B to configure and control resources in an infrastructure that is owned by another operator.

Accordingly, it is assumed that operator B can monitor and control the remote radio resources via the RIC node of site B, using an "E2 remote" interface. Note that in the proposed architecture, the RIC nodes are not shared and kept independent at the site A and B respectively.

However, it is assumed that operator B cannot directly orchestrate its VNFs in site A, but it is allowed to communicate the desired initial VNF configuration via an extended O1, O2 interface, hereafter referred to as "O1, O2 + SLA" interface (O1, O2 remote). Note that the O1, O2 nomenclature is used hereafter to refer to both O1 and O2 messages.

The "O1, O2 remote" interface is connected to a specific "sharing orchestration application", referred to as "SMO-sharing App", that is located at the Service Management & Orchestration Framework of each operator. Specifically, the "SMO- sharing App" at site A acts as an SLA (Service Level Agreement) monitoring and filter entity: it checks that O1, O2 requests coming from operator B are in line with a predefined SLA and finally configures the VNF of operator B, according to the initial O1, O2 request.

### Entities/resources involved in the use case

1. SMO-sharing App (site A):
   1. SLA monitoring: checks that orchestration/management requests sent by operator B are in line with the SLA.
   2. Remote provisioning and initial VNF deployment: asks the IMF to instantiate the VNFs for operator B.
   3. Remote management operations via "O1, O2 remote": configures the VNF of operator B via the Orchestrator, according to "O1, O2 remote" requests sent by operator B.
   4. Forwards RAN related data, collected from the hosted VNFs, to the SMO-sharing App (site B) over the "O1, O2 remote" interface.
2. SMO-sharing App (site B):
   1. Detects the "SMO-sharing App" in site A towards which to forward "O1, O2 remote" requests.
   2. Sends "O1, O2 remote" commands for initial deployment and configuration of remote VNFs.
   3. Forwards RAN related data of operator B, collected in site A, to the Non-RT RIC.
3. IMF (site A): creates VNFs for operator B in site A on initial request of the SMO-sharing App (site A).
4. RAN (site A):
   1. Supports data collection from the hosted VNFs with radio state report over "E2 remote" interface.
   2. Supports data collection from hosted VNFs with UE KPI report over "O1, O2 remote" interface.
5. Non-RT RIC (site B):
   1. Configures the initial network policy template, e.g., default scheduling policy, of the remote VNFs.
   2. Elaborates RAN data collected by "SMO-sharing App", e.g., scheduling performance metrics, and sends A1 policy/intentions to the remote virtual O-DU/O-CU (VNF\_B) via the Near-RT RIC.
6. Near-RT RIC (site B):
   1. Monitors and collects E2-related parameters from the remote VNFs.
   2. Detects the "E2 remote" interface towards the VNFs hosted in site A.

### Solutions

#### RAN sharing

The context of the RAN sharing use case is captured in table 4.7.3.1-1.

###### Table 4.7.3.1-1: RAN sharing use case

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Enable two operators to share the same O-RAN infrastructure, while allowing them to remotely configure and control the shared resources via a remote "O1", "O2" and "E2" interface. |  |
| Actors and Roles | Sharing-SMO App handles remote orchestration operations via "O1, O2 remote" interface. Non-RT RIC (operator B): updates configuration of VNFs hosted in site A. Near-RT RIC (operator B): execute remote E2 commands via "E2 remote" interface. RAN (site A): collects and reports RAN statistics to the RIC of operator B (RIC\_B) for its VNFs hosted in site A. |  |
| Assumptions | All relevant functions and components are instantiated.  A1, O1, O2, E2 interface connectivity is established with local SMO, Non-RT RIC and Near-RT RIC, respectively.  "O1, O2 remote" and "E2 remote" end-to-end connectivity is established with remote SMO and remote Near-RT RIC, respectively. The remote interfaces have been secured through appropriate end-to-end security mechanisms (security configuration details are out of scope of this use case).  Non-RT RIC\_B and Near-RT RIC\_B are aware of the presence of O-DU\_B and O-CU\_B in the site A. Near-RT RIC\_B is aware of the "E2 remote" interface, to be used to control the remote VNFs hosted in site A. |  |
| Pre-conditions | An SLA sharing agreement is established between the home (operator A) and host operator (operator B). The SLA defines the amount of physical resources (CPU, memory, etc.), that can be allocated to the host operator and the type of admissible orchestration operations that can be remotely executed by the host operator. Such SLA is translated in appropriate SLA monitoring-check controls to be executed by the SMO-sharing App. |  |
| Begins when | Phase 1-2: Host operator (operator B) asks to provision and instantiate an O- DU\_B and O-CU\_B in the site of the home operator (operator A).  Phase 3: Host operator wants to send a new instruction to the shared RAN over the "E2 remote" interface. |  |
| Step 1 (M) | SMO-sharing App\_B sends a request to SMO-sharing App\_A for provisioning and deploying a remote virtual O-DU\_B and O-CU\_B in the site A. |  |
| Step 2 (M) | SMO-sharing App\_A checks that the request is in line with the predefined SLA and ask the IMF (via the Orchestrator) to instantiate the VNFs for the O-CU\_B and O-DU\_B. |  |
| Step 3 (O) | IMF creates VNF for operator B in site A as for the request of the SMO-sharing App\_A. |  |
| Step 4 (M) | SMO-sharing App\_B notifies SMO-sharing App\_A the request to install a default network policy template, e.g., RB scheduling policy, in the remote VNFs. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Step 5 (M) | SMO-sharing App\_A checks that operator B request is in line with the SLA and configures (via the Orchestrator) the O-DU\_B/ O-CU\_B via an O1 configuration command. |  |
| Step 6 (M) | RAN related data from VNF\_B in site A are collected at SMO Collector and forwarded to the SMO-sharing App\_A, which in turns forwards them to the Non- RT RIC\_B, via the SMO-sharing App\_B. |  |
| Step 7 | Non-RT RIC\_B decides to update the default network policy of the remote VNFs, e.g., scheduling policy of O-DU\_B/O-CU\_B and sends an A1 update policy request to the Near-RT RIC\_B. |  |
| Step 8 | Near-RT RIC\_B configures the remote O-DU\_B/O-CU\_B accordingly, over the "E2 remote" interface. |  |
| Ends when | The VNFs of operator B in site A are instantiated with success and no update- requests are sent by the host operator (operator B). |  |
| Exceptions | None identified. |  |
| Post Conditions | RIC of operator B monitors relevant radio KPI from the remote O-CU\_B and O- DU\_B and decides to reconfigure the scheduling policy as for Step 7. |  |

The flow diagram of the VNF configuration procedure for VNF\_B hosted in site A is given in figure 4.7.3.1-1.

![](../assets/images/544e24e4a0bc.jpg)

###### Figure 4.7.3.1-1: VNF configuration procedure for VNF\_B hosted in site A

### Required data

Multi-dimensional data are expected to be handled by the SMO-sharing App:

1. SLA data needs to be converted in a set of condition steps to be matched for each request of the host operator (operator B).
2. SMO needs to handle O1, O2 messages sent by the host operator, converting them in local O1, O2 commands.

The RAN of the home operator needs to report to the RIC\_B the network state of the served UEs that belong to the host operator.

## QoS based resource optimization

This use case provides the background and motivation for the O-RAN architecture to support RAN QoS based resource optimization. Moreover, some high-level description and requirements over Non-RT RIC and A1 interfaces are introduced.

### Background and goal of the use case

QoS based resource optimization can be used when the network has been configured to provide some kind of preferential QoS for certain users. One such scenario can be related to when the network has been configured to support e2e slices. In this case, the network has functionality that ensures resource isolation between slices as well as functionality to monitor that slice Service Level Specifications (SLS) are fulfilled.

In RAN, it is the scheduler that ensures that Physical Resource Block (PRB) resources are isolated between slices in the best possible way and also that the PRB resources are used in an optimal way to best fulfill the SLS for different slices. The desired default RAN behavior for slices is configured over O1. For example, the ratio of physical resources (PRBs) reserved for a slice is configured at slice creation (instantiation) over O1. Also, QoS can be configured to guide the RAN scheduler how to (in real-time) allocate PRB resources to different users to best fulfill the SLS of a specific slice. In the NR NRM this is described by the resource partition attribute.

Instantiation of a RAN sub-slice will be prepared by rigorous planning to understand to what extent deployed RAN resources will be able to support RAN sub-slice SLS. Part of this procedure is to configure RAN functionality according to above. With this, a default behavior of RAN is obtained that will be able to fulfill slice SLSs for most situations. However, even through rigorous planning, there will be times and places where the RAN resources are not enough to fulfill SLS given the default configuration. To understand how often (and where) this happens, the performance of a RAN slice will continuously be monitored by SMO. When SMO detects a situation when RAN SLS cannot be fulfilled, Non- RT RIC can use A1 policies to improve the situation. To understand how to utilize A1 policies and how to resolve the situation, the Non-RT RIC will use additional information available in SMO.

Take an emergency service as an example of a slice tenant. For this example, it is understood (at slice instantiation) that 50% of the PRBs in an area can be enough to support the emergency traffic under normal circumstances. Therefore, the ratio of PRBs for the emergency users is configured to 50% as default behavior for the pre-defined group of users belonging to the emergency slice. Also, QoS is also configured in CN and RAN so that video cameras of emergency users get a minimum bitrate of 500 kbps.

Now, suppose a large fire is ongoing and emergency users are on duty. Some of the personnel capture the fire on video on site. The video streams are available to the emergency control command. Because of the high traffic demand in the area from several emergency users (belonging to the same slice), the resources available for the emergency slice is not enough to support all the traffic. In this situation, the operator has several possibilities to mitigate the situation. Depending on SLAs towards the emergency slice compared to SLAs for other slices, the operator could reconfigure the amount of PRB reserved to emergency slice at the expense of other slices. However, there is always a risk that emergency video quality is not good enough irrespective if all resources are used for emergency users. It might be that no video shows sufficient resolution due to resource limitations around the emergency site.

In this situation, the emergency control command decides, based on the video content, to focus on a selected video stream to improve the resolution. The emergency control system gives the information about which users to up- and down- prioritized to the e2e slice assurance function (through e.g. an Edge API) of the mobile network to increase bandwidth for selected video stream(s). Given this additional information, the Non-RT RIC can influence how RAN resources are allocated to different users through a QoS target statement in an A1 policy. By good usage of the A1 policy, the emergency control command can ensure that dynamically defined group of UEs provides the video resolution that is needed.

### Entities/resources involved in the use case

1. Non-RT RIC:
   1. Monitor necessary QoS related metrics from network function and other SMO functions.
   2. Send policies to Near-RT RIC to drive QoS based resource optimization at RAN level in terms of expected behavior.
2. Near-RT RIC:
   1. Support interpretation and execution of A1 policies for QoS based resource optimization.
3. RAN:
   1. Support network state and UE performance report with required granularity to SMO over O1 interface.
   2. Support QoS enforcement based on messages from E2, which are expected to influence RRM behavior.

### Solutions

#### QoS based resource optimization

The context of the QoS based resource optimization is captured in table 4.8.3.1-1.

###### Table 4.8.3.1-1: QoS based resource optimization

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Drive QoS based resource optimization in RAN in accordance with defined policies and configuration. |  |
| Actors and Roles | Non-RT RIC: Creates A1 policies. Near-RT RIC: Enforces A1 policies. RAN: Policy enforcement.  SMO: Termination point for O1 interface. |  |
| Assumptions | All relevant functions and components are instantiated and configured according wanted default behavior.  A1 interface connectivity is established with Non-RT RIC. O1 interface connectivity is established with SMO.  The default configuration will handle most situations. |  |
| Pre-conditions | Network is operational with default configuration.  SMO has established the data collection and sharing process, and Non-RT RIC has access to this data.  Non-RT RIC analyzes the data from RAN to understand the current resource consumption. |  |
| Begins when | Non-RT RIC observes that resources are close to congestion in a certain area. |  |
| Step 1 (O) | If needed, Non-RT RIC orders additional RAN observability, SMO configures additional observability over O1. |  |
| Step 2 | Non-RT RIC evaluates RAN resource utilization for all users in a slice in specific area. |  |
| Step 3 | Non-RT RIC asks for additional information from additional SMO functionality,  e.g. e2e slice assurance function. |  |
| Step 4 | Non-RT RIC determines dynamic group of users for which QoS target shall be changed. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Step 5 | Non-RT issues A1 policy/policies with QoS target based on information from other SMO functionality. |  |
| Ends when | Non-RT RIC (through O1 observability) understands that situation of resource constraints within the slice is resolved, and the deployed policies are deleted over A1. |  |
| Exceptions | None identified. |  |
| Post Conditions |  |  |

The flow diagram of the QoS based resource optimization is given in figure 4.8.3.1-1.

![Generated by PlantUML](../assets/images/60f95b12ee12.png)

###### Figure 4.8.3.1-1: QoS based resource optimization flow diagram

### Required data

For this use case, different kind of observability need to be reported to Non-RT RIC. First Non-RT RIC shall monitor resource consumption in the area. As long as resource consumption is low, the RAN scheduler will be able to give all users in an area the needed resources. When resource consumption in an area increases above a threshold, the risk of that the default configuration of RAN will not be enough to fulfil the requirements. At this point, the Non-RT RIC need to be able to configure more detailed reporting for individual UEs that the Non-RT RIC is interested in. This detailed observability shall provide the Non-RT RIC better insight in performance for specific users and therefore includes observability of e.g., user throughput and delay. With this more detailed observability, the Non-RT RIC can understand

when pre-configured priorities are not enough for the scheduler to solve the problem and when additional (non-RAN) information to solve the prioritization is needed.

## RAN slice SLA assurance

The 3GPP standards architected a sliceable 5G infrastructure which allows creation and management of customized networks to meet specific service requirements that can be demanded by future applications, services, and business verticals. Such a flexible architecture needs different requirements to be specified in terms of functionality, performance and group of users which can greatly vary from one service to the other. The 5G standardization efforts have gone into defining specific slices and their Service Level Agreements (SLAs) based on application/service type as specified in 3GPP TS 23.501 [2]. Since network slicing is conceived to be an end-to-end feature that includes the core network, the transport network and the Radio Access Network (RAN), these requirements shall be met at any slice subnet during the life-time of a network slice as specified in 3GPP TS 28.530 [4], especially in RAN side. Exemplary slice performance requirements are specified in terms of throughput, energy efficiency, latency, and reliability at a high level in SDOs such as 3GPP TS

22.261 [1] and GSMA NG.116 [17]. These requirements are defined as a reference for SLA/contractual agreements for each slice, which individually need proper handling in NG-RAN.

Although network slicing support is started to be defined with 3GPP Release 15, slice assurance mechanisms in RAN needs to be further addressed to achieve deployable network slicing in an open RAN environment. It is necessary to assure the SLAs by dynamically controlling slice configurations based on slice specific performance information. Existing RAN performance measurements as specified in 3GPP TS 28.552 [6] and information model definitions as specified in 3GPP TS 28.541 [5] are not enough to support RAN slice SLA assurance use cases. This use case is intended to clarify necessary mechanisms and parameters for RAN slice SLA assurance.

### Background and goal of the use case

In the 5G era, network slicing is a prominent feature which provides end-to-end connectivity and data processing tailored to specific business requirements. These requirements include customizable network capabilities such as the support of very high data rates, traffic densities, service availability and very low latency. According to 5G standardization efforts, the 5G system can support the needs of the business through the specification of several service needs such as data rate, traffic capacity, user density, latency, reliability, and availability. These capabilities are always provided based on a Service Level Agreement (SLA) between the mobile operator and the business customer, which brought up interest for mechanisms to ensure slice SLAs and prevent its possible violations. O-RAN's open interfaces and AI/ML based architecture will enable such challenging mechanisms to be implemented and help pave the way for operators to realize the opportunities of network slicing in an efficient manner.

### Entities/resources involved in the use case

1. Non-RT RIC:
   1. Retrieve RAN slice SLA target from respective entities such as SMO, NSSMF
   2. Long term monitoring of RAN slice performance measurements
   3. Training of potential ML models that will be deployed in Non-RT RIC for slow loop optimization and/or Near-

RT RIC for fast loop optimization

* 1. Support deployment and update of AI/ML models into Near-RT RIC
  2. Send slice control/slice SLA assurance xApps from SMO
  3. Create A1 policies based on RAN intent A1 feedback
  4. Retrieve UE specific performance reports
  5. Send A1 policies and enrichment information to Near-RT RIC to drive slice assurance
  6. Send O1 reconfiguration requests to SMO for slow-loop slice assurance

1. Near-RT RIC:
   1. Near real-time monitoring of slice specific RAN performance measurements
   2. Support deployment and execution of the AI/ML models from Non-RT RIC
   3. Receive slice SLA assurance xApps from SMO
   4. Send UE specific performance reports to SMO/Non-RT RIC
   5. Support interpretation and execution of policies from Non-RT RIC
   6. Perform optimized RAN (E2) actions to achieve RAN slice requirements based on O1 configuration, A1 policy, and E2 reports
2. RAN:
   1. Support slice assurance actions such as slice-aware resource allocation, prioritization, etc.
   2. Support slice specific performance measurements through O1
   3. Support slice specific performance reports through E2

### Solutions

#### Creation and deployment of RAN slice SLA assurance models and control apps

The context of the creation and deployment of RAN slice SLA assurance models and control apps is captured in table 4.9.3.1-1.

###### Table 4.9.3.1-1: Creation and deployment of RAN slice SLA assurance models and control apps

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Training and distribution of the model, or distribution of control apps. |  |
| Actors and Roles | Non-RT RIC, Near-RT RIC, SMO |  |
| Assumptions | All relevant functions and components are instantiated.  A1, O1 interface connectivity is established. |  |
| Pre-conditions | Near-RT RIC and Non-RT RIC are instantiated with A1 interface and connectivity has been established between them.  O1 interface has been established between SMO and Near-RT RIC. |  |
| Begins when | A RAN slice is activated. |  |
| Step 1 (M) | Non-RT RIC retrieves a RAN slice SLA from SMO (NSSMF). |  |
| Step 2a | Non-RT RIC starts to collect performance measurements (PMs) via O1. Examples of the PMs are CSI, PRB usage, L2 throughput, RAN latency, etc. Applicable PMs are specified in 3GPP TS 28.552 [6]. | Step 2 and 3 are mandatory in case of using the AI/ML model |
| Step 2b (O) | Non-RT RIC starts to collect Enrichment Information (EIs) from external applications. Examples of the external applications are public safety application triggering slice priority during an emergency event, or location- based enrichment information, etc. |  |
| Step 2c | Non-RT RIC analyzes collected PMs and/or EIs for long term monitoring, such as during the day or over the weekend. |  |
| Step 3 | Non-RT RIC does the model training using the collected data in step 2 and obtains RAN slice SLA assurance models. |  |
| Step 4a | In case of using the AI/ML model, Non-RT RIC deploys the trained model internally for slow loop optimization and/or distributes it to the Near-RT RIC via O2 for fast loop optimization. | Step 4a or 4b is mandatory |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Step 4b | In case of using the control app, the control app is deployed by SMO to Non- RT RIC for slow loop optimization and/or Near-RT RIC via O2 for fast loop optimization. |  |
| Step 5 (M) | Non-RT RIC receives feedback internally or from Near-RT RIC via A1 to update the model or control apps based on it. |  |
| Ends when | A RAN slice is deactivated. |  |
| Exceptions | None identified. |  |
| Post Conditions | None identified. |  |

The flow diagram of the creation and deployment of RAN slice SLA assurance models and control apps is given in figure 4.9.3.1-1.

![Generated by PlantUML](../assets/images/0d9ab787e5f5.png)

###### Figure 4.9.3.1-1: Creation and deployment of RAN slice SLA assurance models and control apps flow diagram

#### Slow loop RAN slice SLA optimization

The context of the slow loop RAN slice SLA optimization is captured in table 4.9.3.2-1.

###### Table 4.9.3.2-1: Slow loop RAN slice SLA optimization

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Slow loop RAN slice SLA optimization |  |
| Actors and Roles | Non-RT RIC, Near-RT RIC, SMO, RAN |  |
| Assumptions | All relevant functions and components are instantiated.  A1, O1, E2 interface connectivity is established. |  |
| Pre-conditions | Near-RT RIC and Non-RT RIC are instantiated with A1 interface connectivity being established between them.  O1 interfaces are established between SMO and Near-RT RIC, and SMO and RAN nodes.  RAN slice SLA assurance models or control apps have been deployed in Non-RT RIC and Near-RT RIC respectively. |  |
| Begins when | A RAN slice is activated. |  |
| Step 1a | Non-RT RIC decides that RAN shall be reconfigured based on long term trends collected via O1 using PMs and/or EIs.  Examples of the PMs are layer 2 throughput, PRB usage, CSI, RAN latency. | Config update step 1a or 1b is mandatory |
| Step 1b | Non-RT RIC decides to create slice specific A1 policies based on RAN slice SLA requirements and/or operator-defined RAN intents, A1 feedback from Near-RT RIC, EI from external app server and O1 based long term trends.  The policies include scope identifiers (e.g., S-NSSAI, flow ID, cell ID) and/or policy statements (e.g. slice specific KPI targets). | Policy update |
| Step 2a | The model or control app in Non-RT RIC requests SMO to update slice configuration of Near-RT RIC and/or RAN nodes through O1. | Config request |
| Step 2b | SMO sends the updated slice configuration to Near-RT RIC and/or RAN nodes via O1. Examples of the slice configuration are the number of allocated PRBs, number of flows, slice priorities. | Config delivery  step 2b or 2c is mandatory |
| Step 2c | Non-RT RIC sends the updated A1 policies to Near-RT RIC. | Policy delivery |
| Step 3a | Near-RT RIC and RAN nodes process and execute the updated slice configuration. | Config execution  step 3a or 3b is mandatory |
| Step 3b | Near-RT RIC receives the updated A1 policy, controls RAN nodes based on the A1 policy and sends the feedback to Non-RT RIC via A1. | Policy execution |
| Ends when | A RAN slice is deactivated. |  |
| Exceptions | None identified. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Post Conditions | None identified. |  |

The flow diagram of the slow loop RAN slice SLA optimization is given in figure 4.9.3.2-1.

![Generated by PlantUML](../assets/images/139b69c1bb2e.png)

###### Figure 4.9.3.2-1: Slow loop RAN slice SLA optimization flow diagram

#### Fast loop RAN slice SLA optimization

The context of the fast loop RAN slice SLA optimization is captured in table 4.9.3.3-1.

###### Table 4.9.3.3-1: Fast loop RAN slice SLA optimization

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Fast loop RAN slice SLA optimization |  |
| Actors and Roles | Non-RT RIC, Near-RT RIC, SMO, RAN |  |
| Assumptions | All relevant functions and components are instantiated. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
|  | A1, O1, E2 interface connectivity is established. |  |
| Pre-conditions | Near-RT RIC and Non-RT RIC are instantiated with A1 interface connectivity being established between them.  O1 interfaces are established between SMO and Near-RT RIC, and SMO and RAN nodes.  RAN slice SLA assurance models or control apps have been deployed in Near-RT RIC. |  |
| Begins when | A RAN slice is activated. |  |
| Step 1 | Non-RT RIC decides to generate a policy for Near-RT RIC slice SLA assurance based on RAN slice SLA requirements and/or operator-defined RAN intents, A1 feedback from Near-RT RIC, EI from external app server and O1 based long term trends. |  |
| Step 2 | Near-RT RIC receives slice specific O1 configuration and A1 policies from SMO and Non-RT RIC respectively. The former is static and default, the latter is dynamic, optimized and converted from slice SLA. The policies consist of scope identifiers (e.g., S-NSSAI, flow ID, cell ID) and policy statements (e.g., slice specific KPI targets).  In case of using EIs, Near-RT RIC also receives the EIs from Non-RT RIC via A1-EI interface. |  |
| Step 3 | Near-RT RIC starts to collect PMs via E2. Examples of the PMs are CSI, PRB usage, L2 throughput, RAN latency, etc. Applicable PMs are specified in 3GPP TS 28.552 [6]. |  |
| Step 4 | The model or control app in Near-RT RIC analyzes collected PMs, A1 policies from Non-RT RIC (and optionally EIs from A1-EI interface) to guide RAN nodes via E2 to meet the slice SLA. |  |
| Step 5 | Near-RT RIC sends A1 feedback to Non-RT RIC. |  |
| Ends when | A RAN slice is deactivated. |  |
| Exceptions | None identified. |  |
| Post Conditions | None identified. |  |

The flow diagram of the fast loop RAN slice SLA optimization is given in figure 4.9.3.3-1.

![Generated by PlantUML](../assets/images/cca0497b2091.png)

###### Figure 4.9.3.3-1: Fast loop RAN slice SLA optimization flow diagram

### Required data

The measurement counters and KPIs (as defined by 3GPP and will be extended for O-RAN use cases) shall be appropriately aggregated by cell, QoS type, slice, etc.

1. Per-UE performance statistics such as CSI, RSRP/CQI distribution.
2. Per slice performance statistics such as average/aggregated/distribution of/maximum/minimum measured user performance (PDCP throughput, RAN latency, PRB usage, etc.) and achievement/degradation rate of the requirements for a slice.
3. Per UE performance reports such as L2 throughput, RAN latency.

## Multi-vendor slices

This use case "multi-vendor slices" is a case that vO-DU and vO-CU functions composing each slice is provided from different vendor. In this sub-clause, concept, motivation and benefits of introducing "multi-vendor slices" are explained and candidate solutions are studied.

### Background and goal of the use case

Proposed use case enables multiple slices with functions provided from multi-vendors, such as slice #1 is composed with DU and CU provided from vendor A and slice #2 is composed with DU and CU provided from vendor B (see figure 4.10.1-1).

![](../assets/images/1733952de9b9.jpg)

###### Figure 4.10.1-1: Multi-vendor slices

To support multi-vendor slicing, there are many possible configurations to realize this use case; all of which share that one O-RU is connected to one or more O-DUs. For example, one possible configuration might be one where a single cell is shared by two O-DUs, and another possible configuration is where two cells are allocated to two different O-DUs in a Shared O-RU configuration. Under those possible configurations, it is desired to keep frequency efficiency.

When providing multiple slices, it is assumed that suitable vO-DU/scheduler and vO-CU treat each slice respectively. A vendor who providing vO-DU and vO-CU function can have a strength of a customized scheduler for a certain service. With accomplishment of multi-vendor circumstances, following benefits can be expected.

1. More flexible and time to market deployment

Operator can maximize options to choose suitable vO-DU/scheduler and vO-CU to offer various slice. For example, some vendor has a strength of a scheduler for eMBB service and the other has a strength of scheduler for URLLC service. Or vendor A can provide vO-DU/scheduler and vO-CU suitable for URLLC earlier than vendor B, therefore operator can choose vO-DU and vO-CU functions from vendor A to meet their service requirement.

Also, when operator will add a new service/slice, new functions from a new vendor can be introduced with less consideration for existing vendor if multi-vendor circumstance was realized. This can lead to expand vendor's business opportunities rapidly.

1. Flexible deployment when sharing RAN equipment among operators

When operators want to share RAN equipment and resources, RAN vendors and their placement of each RAN functions can be different. If multi-vendor circumstance was introduced, then it can relax restrictions among operators to share RAN equipment and resources. This can lead to expand opportunity reaching agreement of RAN sharing among operators. With expansion of RAN sharing, CAPEX and OPEX by operator will be optimized and additional investment can be done more.

1. Reducing supply chain risk

If existing vendor providing a certain pair of vO-DU and vO-CU functions would withdraw of their market due to business reason, operator can deploy new vO-DU and vO-CU functions alternatively from other vendor under this multi-vendor circumstance. This can reduce a risk for operators' business continuity.

### Entities/resources involved in the use case

1. SMO multi-vendor slice App:
   1. Configures vO-DU and vO-CU.
   2. Configures O-RU to connect to vO-DU.
2. Near-RT RIC:
   1. Shares MAC related data unique for UE among vO-DUs.
   2. Supports communication of configuration parameters to RAN.
3. E2 nodes (vO-CU, vO-DU, O-RU):
   1. Primary vO-DU processes SRB (Signalling Radio Bearer), DRB (Data Radio Bearer) and other vO-DU related functions. Secondary vO-DU processes only DRB related functions. Note that vO-DU and vO-CU are created as part of network slice creation procedure.

### Solutions

#### Data transmission call flow example for multi-vendor slices use case

The context of data transmission call flow example for multi-vendor slices use case is captured in table 4.10.3.1-1.

###### Table 4.10.3.1-1: Data transmission call flow example for multi-vendor slices use case

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | UE communicates on slice #1 and #2 respectively. |  |
| Actors and Roles | * SMO multi-vendor slice App configures vO-DU and v-O-CU with radio resource assignment (via Orchestrator) and collects KPI data. * Near-RT RIC configures vO-DU and vO-CU for resource assignment and shares MAC related information unique for UE among vO-DUs. * Primary vO-DU processes SRB (Signalling Radio Bearer), DRB (Data Radio Bearer). Secondary vO-DU processes only DRB. |  |
| Assumptions | * All relevant functions and components are instantiated. * Slice #1 is created over primary vO-DU and vO-CU with logical channel ID #1 and #2, and slice #2 is created over secondary vO-DU and vO-CU with logical channel ID #3. * O-RU is shared between primary vO-DU and secondary vO-DU with one component carrier. * CU-CP is shared between primary vO-CU-UP and secondary vO-CU-UP. * TDD operation is assumed. * UE tries to transmit data on slice #1 and #2. |  |
| Pre-conditions | * Slice #1 and #2 are created and activated on primary vO-DU, vO-CU and secondary vO-DU, vO-CU respectively. * Slice #1 is tied with scheduling request resource 1 and logical channel ID #1 and #2, and slice #2 is tied with scheduling request resource 2 and logical channel ID #3 * Primary vO-DU and secondary vO-DU know which timing/resource block they can utilize on for slice #1 and #2 respectively by direction from SMO via O1 interface. * UE has already performed RACH procedure with primary vO-DU. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Begins when | UE tries to perform registration procedure with RRC Connection Request message. |  |
| Step 1 (M) | [UE performs registration procedure]  UE sends RRC Connection Request message to primary vO-DU and vO-CU through O-RU. Primary vO-CU and vO-DU responds with RRC Connection Setup. UE sends RRC connection Setup Complete message.  Primary vO-DU sends initial RRC message and shared information such as C- RNTI to Near RT-RIC. Near RT-RIC determines to transfer it to secondary vO- DU over E2 interface. Other registration procedure is performed. |  |
| Step 2 (M) | [PDU session establishment]  UE starts PDU session establishment procedure with PDU session establishment request message with primary vO-DU and vO-CU.  UE initiates PDU session establishment procedure with S-NSSAI 2 for slice #2 via primary vO-DU. UE context modification is made at secondary vO-DU. |  |
| Step 3 (M) | [U-plane data transmission between primary vO-DU and O-RU]  At allocated timing/resources, primary vO-DU sends Scheduling Command message to O-RU to start transfer and receive DL and UL Data.  UE sends Scheduling Request message on PUCCH with scheduling request resource 1 to primary vO-DU over open fronthaul.  Primary vO-DU responds with UL Grant message to the UE. | O-RAN.WG4.CUS.0-  v02.00 [29], "Figure 6-5: C-plane and U- plane message transfer procedure (DL & UL shown)" |
| Step 4 (M) | [Buffer notification and transmission user data]  UE notices buffer with Buffer Status Request message to primary vO-DU. Primary vO-DU acknowledges with UL Grant message.  UE sends user data on PUSCH with logical channel ID #1 and #2. Primary vO-DU acknowledges with Ack or Nack.  UE repeats step 3 until buffer becomes empty. |  |
| Step 5 (M) | [U-plane data transmission between secondary vO-DU and O-RU]  At allocated timing/resources, secondary vO-DU sends Scheduling Command message to O-RU to start transfer and receive DL and UL Data.  UE sends Scheduling Request message on PUCCH with scheduling request resource 2 to secondary vO-DU over open fronthaul. Secondary vO-DU responds with UL Grant message to the UE. | O-RAN.WG4.CUS.0-  v02.00 [29], "Figure 6-5: C-plane and U- plane message transfer procedure (DL & UL shown)" |
| Step 6 (M) | [Buffer notification and transmission user data]  UE notices buffer with Buffer Status Request message to secondary vO-DU. Secondary vO-DU acknowledges with UL Grant message.  UE sends user data on PUSCH with logical channel ID #3.  Secondary vO-DU acknowledges with Ack or Nack. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
|  | UE repeats step 5 until buffer becomes empty. |  |
| Step 7 (M) | [Collect data]  RAN related data from RAN nodes are collected at SMO Collector via O1 interface. |  |
| Ends when | UE finishes data transmission until buffer becomes empty. |  |
| Exceptions | None identified. |  |
| Post Conditions | None identified |  |

The data transmission call flow example for multi-vendor slices use case - part 1 of 2 is given in figure 4.10.3.1-1.

![Generated by PlantUML](../assets/images/6d234ba41c7a.png)

###### Figure 4.10.3.1-1: Data transmission call flow example for multi-vendor slices use case - part 1 of 2

The data transmission call flow example for multi-vendor slices use case - part 2 of 2 is given in figure 4.10.3.1-2.

![](../assets/images/e5ca97e370f6.jpg)

###### Figure 4.10.3.1-2: Data transmission call flow example for multi-vendor slices use case - part 2 of 2

#### Data transmission call flow example for RAN sharing use case

The context of data transmission call flow example for RAN sharing use case is captured in table 4.10.3.2-1.

###### Table 4.10.3.2-1: Data transmission call flow example for RAN sharing use case

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | UE communicates on secondary vO-DU and vO-CU with PLMN #2. |  |
| Actors and Roles | * SMO multi-vendor slice App configures vO-DU and v-O-CU with radio resource assignment (via Orchestrator) and collects KPI data. * Near-RT RIC configures vO-DU and vO-CU for resource assignment and shares MAC related information unique for UE among vO-DUs. * Primary vO-DU processes SRB (Signalling Radio Bearer), DRB (Data Radio Bearer). Secondary vO-DU processes only DRB. |  |
| Assumptions | * All relevant functions and components are instantiated. * PLMN #1 is assigned to primary vO-DU and vO-CU, and PLMN #2 is assigned to secondary vO-DU and vO-CU respectively. * O-RU is shared between primary vO-DU and secondary vO-DU with one component carrier. * CU-CP is shared between primary vO-CU-UP and secondary vO-CU-UP. * TDD operation is assumed. * UE tries to transmit data with PLMN #2. |  |
| Pre-conditions | * PLMN #1 and #2 are assigned to primary vO-DU, vO-CU and secondary vO-DU, vO-CU respectively * Primary vO-DU and vO-CU advertise PLMN #1 and #2 over the air. * Primary vO-DU and secondary vO-DU know which timing/resource block they can utilize on for PLMN #1 and #2 respectively by direction from SMO via O1 interface. * UE has already performed RACH procedure with primary vO-DU. |  |
| Begins when | UE tries to perform registration procedure with RRC Connection Request message. |  |
| Step 1 (M) | [UE performs registration procedure with PLMN #2]  UE sends RRC Connection Request message to primary vO-DU and vO-CU through O-RU. Primary vO-CU and vO-DU responds with RRC Connection Setup. UE sends RRC connection Setup Complete message with PLMN#2 in selected PLMN-identity.  Primary vO-DU sends initial RRC message with PLMN-identity and shared information such as C-RNTI to Near RT-RIC. Near RT-RIC determines to transfer it to secondary vO-DU over E2 interface. Other registration procedure is performed through secondary vO-DU. |  |
| Step 2 (M) | [PDU session establishment]  UE starts PDU session establishment procedure with PDU session establishment request message through secondary vO-DU and vO-CU. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Step 3 (M) | [U-plane data transmission between secondary vO-DU and O-RU]  At allocated timing/resources, secondary vO-DU sends Scheduling Command message to O-RU to start transfer and receive DL and UL Data.  UE sends Scheduling Request message on PUCCH with scheduling request resource 2 to secondary vO-DU over open fronthaul.  Secondary vO-DU responds with UL Grant message to the UE. | O-RAN.WG4.CUS.0-  v02.00 [29], "Figure 6-5: C-plane and U- plane message transfer procedure (DL & UL shown)" |
| Step 4 (M) | [Buffer notification and transmission user data]  UE notices buffer with Buffer Status Request message to secondary vO-DU. Secondary vO-DU acknowledges with UL Grant message.  UE sends user data on PUSCH with logical channel ID #2. Secondary vO-DU acknowledges with Ack or Nack.  UE repeats step 3 until buffer becomes empty. |  |
| Step 5 (M) | [Collect data]  RAN related data from RAN nodes are collected at SMO Collector via O1 interface. |  |
| Ends when | UE finishes data transmission until buffer becomes empty. |  |
| Exceptions | None identified. |  |
| Post Conditions | None identified. |  |

The data transmission call flow example for RAN sharing use case is given in figure 4.10.3.2-1.

![](../assets/images/8e576eb8c8fe.jpg)

###### Figure 4.10.3.2-1: Data transmission call flow example for RAN sharing use case

### Required data

The measurement counters and KPIs (as defined by 3GPP and will be extended for O-RAN use cases) shall be appropriately aggregated by cell, QoS type, slice, etc.

1. Per-UE CSI
2. Per slice performance statistics such as PDCP throughput, PRB usage

## Dynamic spectrum sharing (DSS)

This use case provides the background, motivation, and requirements to realize Dynamic Spectrum Sharing (DSS) over the O-RAN architecture. This is to enable operators to adapt radio resource allocation policies and control to dynamically share radio spectrum between 4G and 5G networks.

### Background and goal of the use case

As we transition from 4G to 5G, the spectral resources used for 5G deployment is a key consideration and this situation varies from one operator to another. Though, new C-band resources between 3-6 GHz and mmWave bands have been acquired by operators, these bands suffer from great propagation and penetration loss, limiting their coverage to those users close to the cell, this situation worsens in the UL as the UE device is power constrained. A cost-effective way to

address this is the 5G deployment on lower bands (i.e., below 2GHz), which are also used in 4G LTE deployments today. Operating on lower bands along with non-standalone mode of 5G deployment helps to cover large geography, enables seamless mobility between 4G and 5G while being sensitive to overall cost of deployment. In addition, DSS offers the advantage of dynamically sharing the available spectrum adapting to the varying workloads of the 4G and 5G network.

DSS is compelling considering the need for operators to dynamically share already deployed spectral resources between LTE and NR devices without degrading the QoE of the current 4G subscribers while offering the same level of coverage and necessary QoS to NR devices, under the assumption that the two networks will co-exist in the near term. The objective of this use case is to propose DSS in the context of the O-RAN architecture, specifically to realize it as an application in the RIC framework.

This would particularly benefit vRAN implementations when the 4G/5G CU/DU are from different vendors and one could leverage RAN data over O-RAN's framework for traffic prediction, DSS related resource management and conduct control functions. Towards this, the intelligent control functions are identified, which can be realized as a DSS application to augment the L3/L2/L1 control functions specified as part of LTE-NR coexistence in 3GPP TS 23.501 [2] and in 3GPP TS 37.340 [12].

The architectural context set for this discussion is shown in figure 4.11.1-1. DSS enables 4G and 5G UEs to operate over the same spectrum identified as X (typically low band), while 5G itself could operate on new bands Y (typically high band) not used by current 4G deployment. In a typical setting, Y would offer higher capacity, low latency and smaller coverage, while X would be used to offer reasonable capacity along with larger coverage. 3GPP specifications offers DSS support over X2/Xn interface to enable dynamic sharing of the spectrum resource in addition to the L2/L1 adaptation for 5G-NR to co-exist with LTE.

Considering the scenario of incremental deployment - in the 5G NSA mode, the 5G UE is required to have dual connectivity capability and be able to connect to eNBs on LTE bands for control plane requirements and user plane connectivity towards the LTE and/or 5G depending on deployment requirements. In the scenario where gNB only operates on 5G C or mmWave bands, the sharing of the LTE frequency band between 4G and 5G UEs can be solely fulfilled by eNB MAC scheduler, as the UE is expected to be dual stacked. While, if the gNB is required to operate on lower LTE bands as well, then spectral sharing needs to be coordinated between the LTE and 5G schedulers.

When DSS is enabled in the SA mode, 5G UE would be capable of operating on lower LTE bands (below 2GHz), C and mmWave bands and connects only to the gNBs. The sharing of the LTE bands between LTE and 5G data channels are achieved by both 4G scheduler and 5G scheduler using resource management and interference mitigation functions in the RIC between them.

The use case proposes to conduct DSS related policy, configuration, resource management and control functions using the Non-RT and Near-RT functions over open interfaces proposed by O-RAN.

An abstracted view of how DSS application can be realized using the Non-Real-Time and Near-Real-Time RIC components is shown in figure 4.11.1-2. The DSS over RIC can be realized as multiple applications considering its multiple optimization and operational objectives. One possible logical breakdown is as a traffic prediction and resource management application (DSS-App) managing the shared spectrum resource adapting to dynamic 4G and 5G specific workload requirements in various local contexts, and another application (RAT-App) to configure, control and monitor DSS related functions in the CU/DU corresponding to the LTE and 5G cells. The DSS-App engineers at the Non-RT RIC level translates the global DSS policies based on workload requirements for a region and time-of-day to spectrum sharing policies such as max/min bandwidth threshold at a local level (e.g. edge or central office). The RAT-App at the Non-RT RIC level also translates the DSS-App's resource policies to RAT specific configuration and policies at the Near-RT RIC and the CU/DU entities. The DSS-App at the Near-RT RIC uses the data collected by the RAT-App to make dynamic resource sharing decisions that are enforced by the RAT-App using the E2 control APIs.

![](../assets/images/3b1113bdf558.png)

###### Figure 4.11.1-1: RIC-based DSS architecture

![](../assets/images/b3cfb8fdc609.png)

###### Figure 4.11.1-2: RIC-based DSS realization

The main goal of the Non-RT DSS-App is to provide long-term scheduling policy to 4G and 5G scheduler considering business, user, spatial and temporal workload factors.

The main functionality of Non-RT RAT-App is to translate the global DSS policies from Non-RT DSS-App to RAT specific policies to the RAT-App in the Near-RT RIC over A1.

The main functionalities of the Near-RT DSS-App include policy translation between Non-RT DSS-App to RAT specific configuration to the Near-RT RAT-App. Furthermore, it is actively involved in closed loop decision using the KPIs from the RAN adapting to the needs of the 4G and 5G cells.

The main functionality of Near-RT RAT-App is to perform RAT specific configuration, control and data subscription over E2 interface with RAN (CU/DU components).

### Entities/resources involved in the use case

1. Non-RT RIC:
   1. Receive SMO's DSS specific service requirement for the RAN and translate them into resource sharing policies.
   2. Provide long-term policies in terms of scheduling guidance to 4G and 5G scheduler over A1 to Near-RT RIC, considering business, user, spatial and temporal workload factors, policies related to expected performance and actions when it deviates based on KPIs from the 4G and 5G network.
   3. Develop and train AI/ML models with the help of SMO functions for the Near-RT RIC to predict the short- term traffic demand for 4G and 5G network based on near-real-time metrics from RAN. Deployment of these ML model over O1 and xApps over O2 to the Near-RT RIC.
   4. Receive policy feedback from Near-RT RIC and update policy and re-train ML models whenever required.
2. Near-RT RIC:
   1. Support deployment, execution, and ability to update DSS xApps from Non-RT RIC.
   2. Support interpretation of policies related to RAT specific resource allocation.
   3. Translate RAT specific SLA policy to configuration, control, and data subscription over E2 interface to E2 nodes (O-CU, O-DU).
   4. Share resource allocation performance and policy feedback report with Non-RT RIC for further evaluation and optimization over O1/A1.
3. RAN:
   1. Support discovery of DSS related configuration of E2 nodes over E2 interface.
   2. Share the data collection over O1 interface.
   3. Support resource management related metrics collection over E2 interface.
   4. Support control and policy enforcement from Near-RT RIC over E2 interface.

### Solutions

#### Dynamic spectrum sharing for 4G and 5G

The context of the dynamic spectrum sharing for 4G and 5G is captured in table 4.11.3.1-1.

###### Table 4.11.3.1-1: Dynamic spectrum sharing for 4G and 5G

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Enable operators to dynamically share spectrum in the existing 4G deployment with 5G systems, based on the dynamic loads of both networks and resource sharing policies. |  |
| Actors and Roles | Non-RT RIC: Spectrum resource sharing policy function.  Near-RT RIC: Executes resource sharing models and algorithms, translating RAT specific policy to configuration, control and data subscription over E2 interface with RAN.  RAN: Executes resource sharing enforcement rules and policies, collects and reports RAN statistics and performance over E2 and O1. |  |
| Assumptions | All relevant functions and components are instantiated. DSS xApps are deployed over O1 with initial configuration.  A1, E2 interface connectivity is established with Non-RT RIC and RAN respectively.  Data report, policy and control subscription established on E2 interface. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Pre-conditions | Network is operational.  SMO has established the data collection and sharing interface with Non-RT RIC.  Non-RT RIC analyzes the historical data from RAN, develops, trains with help of SMO functions and deploys the relevant AI/ML models or algorithm as xApps to the Near-RT RIC. |  |
| Begins when | Operator specified trigger condition or event is detected. |  |
| Step 1 (M) | Near-RT RIC collects DSS related RAN function capabilities and configuration parameters from RAN over E2 interface. |  |
| Step 2 (M) | Non-RT RIC communicates DSS relevant policies to the Near-RT RIC over the A1 interface. |  |
| Step 3 (M) | Near-RT RIC communicates RAT specific DSS relevant configuration, control policies to RAN over the E2 interface. |  |
| Step 4 (M) | RAN deploys the configuration and control policies received from the Near-RT RIC over the E2 interface. |  |
| Step 5 (M) | Near-RT RIC collects relevant observability data from RAN, executes xApp and outputs the optimal resource allocation and cell level resource scheduling decisions to RAN over E2 and policy feedback to Non-RT RIC over A1. |  |
| Step 6 (M) | RAN deploys the updated control policies received from the Near-RT RIC over the E2 interface and continues reporting data to SMO over O1 and E2 as configured. |  |
| Step 7 (M) | Non-RT RIC adjusts the policy based on PM data from SMO and feedback from Near-RT RIC. |  |
| Step 8 (M) | Non-RT RIC updates the resource sharing policy to Near-RT RIC over A1. |  |
| Step 9 (O) | Non-RT RIC re-trains/updates the AI/ML model with new data and performance, and deploys the new model or new model configurations to Near-RT RIC. |  |
| Ends when | Operator specified trigger condition or event is satisfied. |  |
| Exceptions | None identified. |  |
| Post Conditions | Non-RT RIC monitors loads and relevant KPI performance metrics of eNB/gNB to observe the resource sharing efficiency and sets up new policies based on the metrics and business needs.  Near-RT RIC executes the resource sharing model or algorithm. RAN operates with the scheduling guidance from RIC and reports performance data to RIC. |  |

The flow diagram of the dynamic spectrum sharing for 4G and 5G is given in figure 4.11.3.1-1.

![Generated by PlantUML](../assets/images/04b440511666.png)

###### Figure 4.11.3.1-1: Dynamic spectrum sharing for 4G and 5G flow diagram

### Required data

Multiple observability data from RAN need to be reported to SMO, Non-RT RIC and Near-RT RIC for DSS to operate. The required data for DSS use case is captured in table 4.11.4-1.

###### Table 4.11.4-1: Required data for DSS use case

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Category** | **Parameters / Measurements** | **RAT** | **Source / Interface** | **Reference** |
| 4G/5G DSS  configuration and operation parameters | Geography location (e.g., cell site) | 4G/5G | External server | TBD |
|  | DSS modality (static, semi-static (MBSFN), dynamic (sub-frame level)) | 4G/5G | E2 | 3GPP TS  38.211, 3GPP  TS 38.213 |
|  | Cell configuration information (e.g., FDD/TDD, band, signaling/RS allocation bitmap) | 4G/5G | E2 | 3GPP TS  36.423, 3GPP  TS 38.211, 3GPP TS  38.213 |
| 4G/5G scheduling information | Physical resource block used/reserved/requested/blocked bitmap information | 4G/5G | E2 | 3GPP TS  36.423 |

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Category** | **Parameters / Measurements** | **RAT** | **Source / Interface** | **Reference** |
| 4G/5G cell load statistics | Number of active UEs (total, UL/DL, per QCI) | 4G | E2 and O1 | 3GPP TS  36.314 |
|  | Mean/Max number of active UEs (DL/UL, total, per DRB(mapped 5QI)) | 5G | E2 and O1 | 3GPP TS  38.314, 3GPP  TS 32.425 |
|  | Traffic demand/buffer size (total, per QCI/5QI) | 4G/5G | E2 and O1 | TBD |
|  | PRB usage (DL, UL, total, per QCI/5QI) | 4G/5G | E2 and O1 | 3GPP TS  36.314, 3GPP  TS 36.423, 3GPP TS  28.552 |
|  | PDCCH CCE usage | 4G/5G | E2 and O1 | 3GPP TS  36.423 |
|  | RRC connection number | 5G | E2 and O1 | 3GPP TS  28.552, 3GPP  TS 32.425 |
| 4G/5G QoS  configuration and parameters | QoS classes | 4G/5G | E2 | 3GPP TS  23.501 (5G),  3GPP TS  36.300, 3GPP  TS 23.401,  3GPP TS  23.203 (4G) |
|  | Slice types | 5G | E2 | 3GPP TS  23.501 |
| UE performance statistics | Scheduled IP throughput (DL, UL, per QCI) | 4G | E2 and O1 | 3GPP TS  36.314 |
|  | Data volume (DL/UL per CQI) | 4G | E2 and O1 | 3GPP TS  36.314 |
|  | UL/DL PDCP SDU data volume | 5G | E2 and O1 | 3GPP TS  28.552 |
|  | PDCP packet delay DL/UL per CQI/QCI | 4G/5G | E2 and O1 | 3GPP TS  36.314 (4G), 5G (TBD) |
| UE mobility statistics | RSRP/RSRQ/SINR/RSSI | 4G/5G | E2 and O1 | 3GPP TS  36.214, 3GPP  TS 36.331 |
|  | UE location information | 45/5G | External Server | TBD |
|  | UE capability | 4G/5G | E2 and O1 | 3GPP TS  36.331 |

## NSSI resource allocation optimization

This use case provides the background, motivation, description, and requirements for the NSSI resource allocation optimization use case, allowing operators to optimize the allocation resources to NSSI(s) with wide range service requirements.

### Background and goal of the use case

5G networks are becoming increasingly complex with the densification of millimeter wave small cells, and various new services, such as eMBB (enhanced Mobile Broadband), URLLC (Ultra Reliable Low Latency Communications), and mMTC (massive Machine Type Communications) that are characterized by high speed high data volume, low speed ultra- low latency, and infrequent transmitting low data volume from huge number of emerging smart devices, respectively. It is a challenging task for 5G networks to allocate resources dynamically and efficiently among multiple network nodes to support the various services. However, as eMBB, URLLC, and mMTC services in 5G are typically realized as NSI (Network Slice instance). Therefore, the resources allocated to NSSI (Network Slice Subnet Instance) to support the O- RAN nodes can be optimized according to the service requirements.

As the new 5G services have different characteristics, the network traffic tends to be sporadic, where there can be different usage pattern in terms of time, location, UE distribution, and types of applications. For example, most IoT sensor applications can run during off-peak hours or weekends. Special events, such as sport games, concerts, can cause traffic demand to shoot up at certain time and locations. Therefore, NSSI resource allocation optimization function trains the AI/ML model, based on the huge volume of performance data collected over days, weeks, months from O-RAN nodes. It then uses the AI/ML model to predict the traffic demand patterns of 5G networks in different times and locations for each network slice, and automatically re-allocates the network resources ahead of the network issues surfaced.

The resource quota policies associated with RAN NFs (E2 nodes) included in the respective NSSIs enable 5G network providers to optimize or prioritize the utilization of the RAN resources across slices and supports the flexibility to share resources optimally across critical service slices during resource surplus or scarcity. For example, an NSSI allocated for premium service can receive a major share of the resources compared to a slice allocated for a standard/best-effort service. Another such example is the scenario of additional resource allocation for emergency services. An important consideration here is that the NSSI resource quota policies focus on maximization of resource utilization across the NSSIs. The resource quota policies can be used as a constraint for resource allocation that defines the range of resources that can be allocated per slice. One use case for applying such a constraint is the analysis and decision based on history of resource allocation failure that can be reflected in the RAN node measurements. Here resource quota policy can be provisioned to control the minimum, maximum and dedicated resources that need to be allocated based on the historical pattern.

The NSSI resource allocation optimization on the Non-RT RIC is shown in figure 4.12.1-1, and can consist of the following steps:

1. Monitoring: monitor the radio network(s) by collecting data via the O1 interface, for example including the following performance measurements that are measured on per S-NSSAI (3GPP TS 28.552 [6] shall apply):
   * DL PRB used for data traffic (3GPP TS 28.552 [6], clause 5.1.1.2.5 shall apply)
   * UL PRB used for data traffic (3GPP TS 28.552 [6], clause 5.1.1.2.7 shall apply)
   * Average DL UE throughput in gNB (3GPP TS 28.552 [6], clause 5.1.1.3.1 shall apply)
   * Average UL UE throughput in gNB (3GPP TS 28.552 [6], clause 5.1.1.3.3, shall apply)
   * Number of PDU sessions requested to setup (3GPP TS 28.552 [6], clause 5.1.1.5.1 shall apply)
   * Number of PDU sessions successfully setup (3GPP TS 28.552 [6], clause 5.1.1.5.2 shall apply)
   * Distribution of DL UE throughput in gNB (3GPP TS 28.552 [6], clause 5.1.1.3.2 shall apply)
   * Distribution of DL UE throughput in gNB (3GPP TS 28.552 [6], clause 5.1.1.3.4 shall apply)
   * Number of DRBs successfully setup (3GPP TS 28.552 [6], clause 5.1.1.10.2 shall apply)

NOTE 1: The above measurements are indicative and are subject to change based on the progress of this use case in O-RAN.

NOTE 2: Monitoring of the measurements related to O-Cloud (or transport network) that can be required for NSSI resource optimization is not defined in the present document.

1. Analysis & decision: consisting of the following steps:

2a. Utilize AI/ML models to analyze the measurements and predict the future traffic demand, including the RRMPolicyRatio IOC limits, for each NSSI for a given time and location.

2b. Determine the actions needed to add or reduce the resources (e.g. capacity, VNF resources, slice subnet attributes (3GPP TS 28.541 [5] shall apply, etc.) for the RAN NFs (E2 nodes included in the respective NSSI at the given time, and location.

1. Execution: execute the actions to reallocate the NSSI resources that include:

3a. Re-configure the NSSI attributes, including RRMPolicyRatio IOC (3GPP TS 28.541 [5] shall apply) via the OAM Functions in SMO which uses O1 interface to configure the E2 nodes.

3b. Update the cloud resources via the O2 interface.

**Service management & Orchestration Framework**

**Non-RT RIC**

**NSSI Resource**

**Allocation Optimization**

**2. analysis & decision 1. monitoring**

**O2**

**A1**

**3.a. execution**

**O1**

**Near-RT RIC**

**E2**

**E2**

**O-CU-**

**UP**

**Network functions**

**O-CU-**

**E1**

**CP**

**E2**

**F1-U F1-C**

**O-DU**

**Open Fronthaul interface**

**O-RU**

**O-Cloud**

**O-Cloud M&O**

###### Figure 4.12.1-1: The realization of NSSI resource allocation optimization over Non-RT RIC

For association of resource quota policies for the RAN NFs (E2 nodes) per NSSI or group of NSSIs, RRMPolicyRatio IOC (realization of abstract IoC RRMPolicy\_) is currently being specified in 3GPP TS 28.541 [5] which allows definition of maximum, minimum and dedicated values for the percentage of resources to be used per RRMPolicyMemberList - that is group of members with specific plmnID and sNSSAI (applied at NRCellDU, NRCellCU, GNBDUFunction, GNBCUCPFunction or in GNBCUUPFunction) via RRMPolicyManagedEntity.

### Entities/resources involved in the use case

1. SMO:
   1. Pre-provision the default NSSI resource quota policy as constraint for NSSI resource allocation optimization. This information is optionally used by the Non-RT RIC in case the resource quota that needs to be allocated per slice is not specified during the slice creation and for conflict resolution at the time of resource scarcity.
2. Non-RT RIC:
   1. Collect the performance measurements related to NSSI resource usage from the O-RAN nodes via the O1 interface.
   2. Train the AI/ML model based on the analysis of historical performance measurements, to predict of the traffic demand patterns of NSSI at different times and locations.
   3. Determine the time/date and locations (i.e. which O-RAN nodes) to add or reduce the resources (e.g. capacity, VNF resources, slice subnet attributes (3GPP TS 28.541 [5] shall apply), RRMPolicyRatio IOC, etc.) for a given NSSI based on inference.
   4. Perform the following action(s) to optimize the NSSI resource allocation, at the time determined by the model.
      1. Re-configure the NSSI attributes via the O1 interface.
      2. Update the cloud resources via the O2 interface.
3. RAN nodes (O-CU-CP, O-CU-UP, O-DU, O-RU):
   1. Support the performance measurement collection with required granularity over O1 interface.
   2. Support the configuration related to the NSSI resource allocation update over O1 interface.

### Solutions

#### NSSI resource allocation optimization

The context of the NSSI resource allocation optimization is captured in table 4.12.3.1-1.

###### Table 4.12.3.1-1: NSSI resource allocation optimization

|  |  |  |
| --- | --- | --- |
| **Use Case stage** | **Evolution/Specification** | **<<Uses>> Related use** |
| Goal | To automatically optimize the NSSI resource allocation by leveraging the AI/ML model that was trained via the analysis of performance measurements collected from the RAN nodes. |  |
| Actors and Roles | SMO: Pre-Provision the default resource quota policy as constraint for resource allocation optimization and monitor runtime context change.  Non-RT RIC: Analysis of performance measurements and AI/ML model training RAN nodes (O-CU-CP, O-CU-UP, O-DU, O-RU): performance measurements collection and configuration changes execution.  O-Cloud M&O: The cloud resources modification via the O2 interface.  OAM functions: Part of SMO which manages the O1 based OAM functionality. O-Cloud: Manages virtualization infrastructure and virtualized resources. |  |
| Assumptions | * All relevant functions and components are instantiated. * Non-RT RIC is able to receive performance measurements from RAN nodes via the O1 interface. |  |
| Pre-conditions | * RAN is operational. * OAM function is pre-provisioned with default NSSI resource quota policy - Non- RT RIC has been collecting the RAN performance measurements from RAN nodes. |  |
| Begins when | An AI/ML model has been trained based on the analysis of performance measurements predict of the traffic demand patterns of NSSI at different times and locations, resource quora per slice. |  |
| Step 1 (M) | Non-RT RIC collects the RAN performance measurements from RAN nodes. |  |

|  |  |  |
| --- | --- | --- |
| Step 2 (M) | 1. Non-RT RIC utilizes the AI/ML models to analyze the measurements and predict future the traffic demand for each NSSI for a given time and location. 2. Non-RT RIC determines the action based on model inference to update the NSSI resources that can include the following information:    1. the time/date    2. locations (e.g. gNB ID)    3. NSSI ID    4. slice subnet attributes    5. VNF resources update (e.g. scaling in/out)    6. NSSI resource quota policy to be enforced per slice over O1 interface |  |
| Step 3 (M) | Non-RT RIC executes the action at the time determined by the model inference by performing the following operations:   1. Re-configure the slice subnet attributes, including RRMPolicyRatio IOC (3GPP TS 28.541 [5] shall apply) via the OAM functions in SMO which uses O1 interface to configure the E2 nodes. 2. Request O-Cloud M&O to update the O-Cloud resources via the O2 interface.   The execution of these steps is carried out by SMO based on the recommendation of the Non-RT RIC. |  |
| Ends when | All the steps identified above are successfully completed. |  |
| Exceptions | One of the steps identified above fails. |  |
| Post Conditions | Near-RT RIC continues monitoring the NSSI resource usages. |  |

The flow diagram of the NSSI resource allocation optimization is given in figure 4.12.3.1-1.

![Generated by PlantUML](../assets/images/fa8ea515b3ed.png)

###### Figure 4.12.3.1-1: NSSI resource allocation optimization flow diagram

### Required data

The measurement counters, as specified in 3GPP TS 28.552 [6], which are measured on per S-NSSAI include:

* DL PRB used for data traffic (3GPP TS 28.552 [6], clause 5.1.1.2.5 shall apply)
* UL PRB used for data traffic (3GPP TS 28.552 [6], clause 5.1.1.2.7 shall apply)
* Average DL UE throughput in gNB (3GPP TS 28.552 [6], clause 5.1.1.3.1 shall apply)
* Average UL UE throughput in gNB (3GPP TS 28.552 [6], clause 5.1.1.3.3 shall apply)
* Number of PDU sessions requested to setup (3GPP TS 28.552 [6], clause 5.1.1.5.1 shall apply)
* Number of PDU sessions successfully setup (3GPP TS 28.552 [6], clause 5.1.1.5.2 shall apply)
* Distribution of DL UE throughput in gNB (3GPP TS 28.552 [6], clause 5.1.1.3.2 shall apply)
* Distribution of DL UE throughput in gNB (3GPP TS 28.552 [6], clause 5.1.1.3.4 shall apply)
* Number of DRBs successfully setup (3GPP TS 28.552 [6], clause 5.1.1.10.2 shall apply)

NOTE: The above measurements are indicative and are subject to change based on the progress of this use case in O-RAN. The monitoring of the measurements related to O-Cloud (or transport network) that can be required for NSSI resource optimization is not defined in the present document.

## Local indoor positioning in RAN

This use case provides the background and motivation for the O-RAN architecture to support local indoor positioning.

### Background and goal of the use case

Real-time indoor positioning based on cellular network has aroused attention with the development of 5G vertical industries, individuals and operators. NR positioning is introduced by 3GPP Rel.16. The Location Management Function (LMF) resides in core network request the NG-RAN node to report positioning measurements, which is used by LMF to compute the location of UE. The messages between LMF and the NG-RAN need the AMF to route transparently. However, this long route messages between the NG-RAN node and centralized LMF can suffer network jitters and leads to un-real- time UE location results.

The main objective is to ensure local positioning be supported within the O-RAN architecture and its open interfaces. In the context of O-RAN architecture, the positioning function can be deployed as a positioning xApp in the Near-RT RIC. The positioning xApp computes the UE location and optional velocity based on the positioning measurement obtained via the E2 interface. The local indoor positioning results can be acquired via positioning xApp to support positioning applications (e.g., indoor navigation, electric security fence, etc.).

### Entities/resources involved in the use case

1. Non-RT RIC:
   1. Retrieve necessary positioning-related indicators (e.g., RSSI, labeled user location by manual or by minimal drive test, etc.) from positioning measurement report or network level measurement report or enrichment information from SMO (can acquire data from application). The data is for constructing/training relevant AI/ML model that will be deployed in Near-RT RIC to assist in the position computation function.
   2. Training of potential ML models for real-time positioning optimization, which can be used to compute the position, correct positioning errors, and predict motion.
   3. Send policies/intents to Near-RT RIC to drive the positioning optimization at RAN level.
2. Near-RT RIC:
   1. Support selection of positioning algorithms (e.g., according to QoS requirements, etc.).
   2. Support the calculation of positioning results based on the measurements from RAN.
   3. Support update of AI/ML models from Non-RT RIC.
   4. Support execution of the AI/ML models from Non-RT RIC, e.g., positioning result calculation.
   5. Sending positioning results to Non-RT RIC for evaluation and optimization.
3. RAN:
   1. Support positioning related measurement report over E2 interface.
   2. Support positioning related measurement report over O1 interface.
4. Application server:
   1. Request/subscribe RAN analytics information from Near-RT RIC.
   2. Support positioning related enrichment information (e.g., labeled user location by manual or by minimal drive test, etc.) to SMO.

### Solutions

#### Local indoor positioning in RAN (1)

The context of the local indoor positioning in RAN (1) is captured in table 4.13.3.1-1.

###### Table 4.13.3.1-1: Local indoor positioning in RAN (1)

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Expose positioning results to external applications. |  |
| Actors and Roles | Near-RT RIC, SMO, application server |  |
| Assumptions | All relevant functions and components are instantiated. |  |
| Pre-conditions | Editor's note: Security related procedure is not defined in the present document. |  |
| Begins when | The application server wants to request/subscribe RAN positioning results of target UE. |  |
| Step 1 (M) | Application server sends positioning request of target UE to Near-RT RIC or subscribes positioning results from Near-RT RIC to get periodic or event triggered position reporting. |  |
| Step 2 (M) | Near-RT RIC receives the request or subscription from application server and requests or subscribes measurements to RAN through E2 interface. The Near-RT RIC selects the positioning algorithm based on the request or the measurement data from RAN. |  |
| Step 3 (M) | RAN reports the measurements to Near-RT RIC according to the request or subscription. |  |
| Step 4 (M) | Near-RT RIC calculates the positioning results based on the measurement report from RAN, using the selected positoning algorithm. |  |
| Step 5 (M) | Near-RT RIC sends the response or notification command to expose radio performance analytics towards application server. |  |
| Ends when | Application server gets response or sends subscription deletion toward the Near-RT RIC. |  |
| Exceptions | None identified. |  |

The flow diagram of the local indoor positioning in RAN (1) is given in figure 4.13.3.1-1.

![IMG_256](../assets/images/dcc6e148793a.png)

###### Figure 4.13.3.1-1: Local indoor positioning in RAN (1) flow diagram

#### Local indoor positioning in RAN (2)

The context of the local indoor positioning in RAN (2) is captured in table 4.13.3.2-1.

###### Table 4.13.3.2-1: Local indoor positioning in RAN (2)

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Expose positioning results to external applications. |  |
| Actors and Roles | Non-RT RIC, Near-RT RIC, SMO, application server |  |
| Assumptions | All relevant functions and components are instantiated.  A1/O1 interface connectivity is established with Non-RT RIC. |  |
| Pre-conditions | Positioning related models have been deployed in Non-RT RIC and Near- RT RIC respectively.  Editor's note: Security related procedure is not defined in the present document. |  |
| Begins when | The application server wants to request/subscribe RAN positioning results of target UE. |  |
| Step 1 (M) | Application server sends positioning request of target UE to Near-RT RIC or subscribes positioning results from Near-RT RIC to get periodic or event triggered position reporting. |  |
| Step 2 (M) | Near-RT RIC receives the request or subscription from application server and requests or subscribes measurements to RAN through E2 interface. The Near-RT RIC selects the positioning algorithm based on the request or the measurement data from RAN and can update the positioning related models from Non-RT RIC. |  |
| Step 3 (M) | RAN reports the measurements to Near-RT RIC according to the request or subscription. |  |
| Step 4 (M) | Near-RT RIC calculates the positioning results based on the positiong report from RAN, usingthe selected positoning algorithm. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Step 5 (M) | Near-RT RIC sends the response or notification command to expose radio performance analytics towards application server. Near-RT RIC can also pass the positioning results to the Non-RT RIC for further analysis. |  |
| Ends when | Application server gets response or sends subscription deletion toward the Near-RT RIC. |  |
| Exceptions | None identified. |  |

The flow diagram of the local indoor positioning in RAN (2) is given in figure 4.13.3.2-1.

![IMG_256](../assets/images/a9e1d7e9b85e.png)

###### Figure 4.13.3.2-1: Local indoor positioning in RAN (2) flow diagram

### Required data

Multi-dimensional data are expected to be retrieved by Non-RT RIC for AI/ML model training and policies/intents generation.

1. Network level measurement report, including UE level radio channel information, mobility related metrics, e.g., RSRP, RSSI, etc.
2. Positioning measurement report, including UE level E-CID, OTDOA, UTDOA, TOA, RSSI, AOA, etc.
3. Enrichment information (optional) collected from SMO (can acquire data from application), can including labeled user location by manual or by minimal drive test, etc.

Near-RT RIC required data to select the positioning algorithm and calculate the positioning results.

1. Positioning measurement report, including UE level E-CID, OTDOA, UTDOA, TOA, RSSI, AOA, etc.
2. Performance requirements in positioning requests (optional) such as QoS.

#### RAN analytics information

Radio performance analytics data are expected to be exposed by Near-RT RIC to application server.

1. UE positioning results, including location coordinates, coordinate system, position methods used (in the case of success indication provided), failure cause (in the case of failure indication provided), achieved location QoS accuracy (optional).
2. Velocity estimation (optional).

## Massive SU/MU-MIMO grouping optimization

Void

## O-RAN signalling storm protection

This use case provides the background, motivation, and requirements for the O-RAN signaling storm protection use case, allowing protecting the mobility network against signaling storms initiated by devices.

### Background and goal of the use case

Society is increasingly dependent on network connectivity at any time and in any place and increasing diversity of device types ranging from complex devices such as smart phone to very simple and low-cost IoT devices are connecting to the network. The sheer number of connected devices, as well as the wide range of device types, makes the mobility network subject to accidental or intentional attacks that can disrupt the regular usage of the network. Given that life-critical applications are moving to wireless networks, such network disruptions are not only an inconvenience but can have impact on life and health of individuals. The O-RAN architecture offers an opportunity to address such security challenges in customizable and creative ways by utilizing the Near-RT RIC xApps and Non-RT RIC rApps.

Currently, the main defense mechanism standardized in 3GPP against attacks coming from the devices toward the network is based on configuration of the devices themselves and trust that the devices will indeed comply with restrictions defined by mobility standards. One such defense mechanism is the back-off timer that restricts the number of repeated device registrations, thus preventing devices from overloading the network with attaches. If this trust is breached there are no other options for defending the network rather than rejecting (denying service) randomly to both benign and malicious devices, a state which is equivalent to DDoS. Unfortunately, even today the network has few hundreds of device types that under certain conditions accidently breach this trust and allow devices to aggressively attach to the network in a rate of few thousand times per hour (the maximum allowed number by standard is less than 20 attaches per hour). An attacker that finds a way to manipulate vulnerabilities in a large set of these devices remotely can cause an attach storm that could lead to a long outage of large parts of the network. Furthermore, this attacker can continue this attack over many hours, each time picking few thousand of devices from a large pool of millions of vulnerable devices connected to the same carrier network; the network carrier will not be able to stop this attack without intelligent and fine-grained controls to act against a certain patterns of behavior.

Fortunately detecting these aggressive devices is possible as their behavior is very different from the other devices in the network. What the network really needs is to apply dynamic restriction over these devices to prevent them from overloading the control plane of the network. This restriction should be smart enough to still allow benign devices to register to the network without interruption. Having smart security control at the RAN can stop such attack and without overloading deeper parts of the network in the core.

The goal of this use case is utilizing O-RAN to detect and mitigate signaling storms DDoS quick and as close to the network edge, thus minimizing affected network nodes. The Near-RT RIC would detect these signaling storms by analyzing signaling events from RAN nodes it controls. When such a storm is detected the Near-RT RIC creates fine grained filters, which cover the aggressive UEs that cause the storm. These UEs registration requests will then be blocked/throttled while the behaving UEs will continue to get service as usual. In some cases, the attack can be spread

across many locations. It could be that the volume of signaling per location has not crossed a critical threshold but the moderate increase in many locations do cause an overload of central nodes such as the network core elements. In this case a network-wide view is required; thus, the Non-RT performs the network-wide analysis and in the case of a network signaling storm, it pushes policies to the local Near-RT RIC to adjust detection parameters to reduce the moderate increase of signaling from a set of one or more E2 nodes. This combined view of both Non-RT RIC and Near-RT RIC ensures quick reaction to local signaling storms as well as response to widely distributed attacks.

While flows in this use case focus on the signaling storm scenario, they could be easily extended to include other attack scenarios both in terms of detection and mitigation. For example, the scenario where rogue devices report false CQI measurements that indicate high values while the real channel quality is poor. When exploited by attackers and applied to large set of devices this attack can cause to waste of radio resources and eventually to DoS. Detection of the attack can be achieved by analyzing anomalous CQI reports, or abnormal volume of NACK messages based on signaling messages. For mitigation actions either rejecting the rogue devices or limiting radio resources can be applied.

### Entities/resources involved in the use case

1. Non-RT RIC in SMO domain:
   1. Maintains overall view of network wide phenomenon of signaling storms using signaling storm detection rApp. The detection of distributed signaling storms that spread over many geographical locations and are more difficult to be observed locally. This overall view is broken down by location and corresponding policies are pushed to specific instances of Near-RT RIC to respond to abnormal signaling activity in affected geographical areas, over the A1 interface.
   2. Uses enrichment data from non-RAN source (i.e., 5G core or probing framework) to maintain global view and support more accurate detection and classification of attacks.
   3. Utilizes AI/ML models in the signaling storm detection rApp that monitor network-level signaling behavior to support signaling anomalies detection.
2. Near-RT RIC in RAN domain:
   1. Monitors E2 interface for connection establishment messages and identifies abnormal levels of signaling activity using the signaling storm detection xApp.
   2. Signaling storm mitigation xApp utilizes policies over E2 to enforce appropriate mitigation action (e.g., reject, throttle, alert) over misbehaving UEs connection establishment.
   3. Signaling storm detection xApp utilizes AI/ML models that monitor cell-level signaling behavior to support signaling anomalies detection.
   4. Applies appropriate detection policy based on policies received from Non-RT RIC (e.g., false-positive levels, UE thresholds, throttling ratios).
3. E2 nodes in RAN domain:
   1. Support sending connection establishment messages over the E2 interface.
   2. Support control and policy enforcement from Near-RT RIC over E2 interface

### Solutions

#### Mode 1 - Local signaling storm protection policy

The context of the local signaling storm protection policy is captured in table 4.15.3.1-1.

###### Table 4.15.3.1-1: Local signaling storm protection policy

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Detect localized signaling storms based on "default parameters" and apply policy to mitigate the attack. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Actors and Roles | Near-RT RIC: Detection of local cell-level signaling storms; execution of mitigation policies and controls, maintenance of cell-level normal behavior models.  E2 nodes: Execute mitigation policies, collects and reports RAN signaling events and policy specific statistics over E2. |  |
| Assumptions | All relevant functions and components are instantiated. Signaling storms detection and signaling storm mitigation xApps are deployed over E2 with initial configuration.  E2 interface connectivity is established with Non-RT RIC and RAN respectively. Data report, policy and control subscription established on E2 interface. |  |
| Pre-conditions | Network is operational.  SMO has established the data collection and sharing interface with Non-RT RIC.  Near-RT RIC already established relevant detection mechanisms of normal signaling behavior and adjusted detection parameters accordingly. Non-RT RIC analyzes the historical data from RAN, develops, trains with help of SMO functions and deploys the models or algorithm as part of the signaling storm detection xApp to the Near-RT RIC. |  |
| Begins when | Network is in normal state (attack is described later on). |  |
| Step 1 (M) | Signaling storm detection xApp subscribes on connection establishment signaling messages report from the RAN over the E2 interface. |  |
| Step 2 (M) | E2 node sends report to signaling storm detection xApp. |  |
| Step 3 (M) | Near-RT RIC signaling storm detection xApp monitors reports to detect aggressive UEs that act with abnormal signaling. |  |
| Steps 4-7 (M) | UEs send establish connection messages and E2 node accepts these requests. |  |
| Step 8 (M) | E2 node sends a connection establishment reports. |  |
| Step 9 (M) | Signaling storm detection xApp detects aggressive activity. |  |
| Step 10 (M) | Signaling storm detection xApp updates signaling storm mitigation xApp. |  |
| Step 11 (M) | Near-RT RIC signaling storm mitigation xApp creates a filter to block/throttle signaling messages from the aggressive UEs. Filter is applied in the E2 nodes as POLICY + REPORT to track filter activity. Near-RT RIC shall notify the Non- RT RIC to avoid conflicts. |  |
| Step 12 (M) | Aggressive UE sends connection establishment message. |  |
| Step 13 (M) | E2 node evaluate policy with respect to the connection establishment message. |  |
| Step 14 (M) | E2 node rejects/throttles connection establishment request. |  |
| Step 15 (M) | Near-RT RIC signaling storm mitigation xApp receives relevant signaling  messages that the POLICY filter blocked/ throttled to track changes in attack |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
|  | status and aggressive devices (list of UEs blocked, blocked signaling volume, trend). |  |
| Step 16 (M) | Near-RT RIC signaling storm mitigation xApp is finds that some devices are no longer aggressive or no longer present. It decides to update filter by updating the E2 node POLICY. |  |
| Step 17-19 (M) | Near-RT RIC signaling storm detection xApp detects a new set of aggressive devices and updates the signaling storm mitigation xApp, which updates the filter by updating the E2 node POLICY. |  |
| Step 20-21 (M) | Near-RT RIC signaling storm mitigation xApp evaluates signaling level and decides that there is no more aggressive UE activity. The xApp removes the E2 node policy. |  |
| Ends when | Attack is over and signaling messages level is back to normal. |  |
| Exceptions | None identified. |  |
| Post Conditions | Return to normal signaling activity monitoring (step 1). |  |

The flow diagram of the local signaling storm protection policy is given in figure 4.15.3.1-1.

![Generated by PlantUML](../assets/images/1839f2321cc9.jpg)

###### Figure 4.15.3.1-1: Local signaling storm protection policy flow diagram

#### Mode 1 - Local signaling storm protection insert-control (optional)

The context of the local signaling storm protection insert-control is captured in table 4.15.3.2-1.

###### Table 4.15.3.2-1: Local signaling storm protection insert-control

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Detect localized signaling storms based on "default parameters" and apply control to mitigate the attack. |  |
| Actors and Roles | Near-RT RIC: Detection of local cell-level signaling storms; execution of mitigation policies and controls, maintenance of cell-level normal behavior models.  E2 nodes: Execute UE level mitigation policies, collects and reports RAN signaling events and policy specific statistics over E2. |  |
| Assumptions | All relevant functions and components are instantiated. Signaling storms detection and signaling storm mitigation xApps are deployed over E2 with initial configuration.  E2 interface connectivity is established with Non-RT RIC and RAN respectively. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
|  | Data report, policy and control subscription established on E2 interface. |  |
| Pre-conditions | Network is operational.  SMO has established the data collection and sharing interface with Non-RT RIC.  Near-RT RIC already established relevant detection mechanisms of normal signaling behavior and adjusted detection parameters accordingly. Non-RT RIC analyzes the historical data from RAN, develops, trains with help of SMO functions and deploys the models or algorithm as part of the signaling storm detection xApp to the Near-RT RIC. |  |
| Begins when | Network is in normal state (attack is described later on). |  |
| Step 1 (M) | Signaling storm detection xApp subscribes on connection establishment signaling messages report from the RAN over the E2 interface. |  |
| Step 2 (M) | E2 node sends report to signaling storm detection xApp. |  |
| Step 3 (M) | Near-RT RIC signaling storm detection xApp monitors reports to detect aggressive UEs that act with abnormal signaling. |  |
| Steps 4-7 (M) | UEs send establish connection messages and E2 node accepts these requests. |  |
| Step 8 (M) | E2 node sends a report indicating aggressive devices behavior. |  |
| Step 9 (M) | Signaling storm detection xApp detects aggressive activity. |  |
| Step 10 (M) | Signaling storm detection xApp updates signaling storm mitigation xApp. |  |
| Step 11 (M) | Signaling storm mitigation xApp updates subscription to INSERT-CONTROL. Use control filter to block/throttle aggressive UEs by rejecting some of the messages. |  |
| Step 12 (M) | E2 node receives another connection establishment from an aggressive UE. |  |
| Step 13 (M) | E2 node forwards the message to the signaling storm mitigation xApp. |  |
| Step 14 (M) | Signaling storm mitigation xApp determines that message is from an aggressive device. |  |
| Step 15 (M) | Signaling storm mitigation xApp sends a reject/throttle message to the E2 node. |  |
| Step 16 (M) | E2 node rejects/throttles connection establishment request. |  |
| Step 17 (M) | Signaling storm mitigation xApp continues to monitor its control filter. |  |
| Step 18 (M) | Near-RT RIC DDoS mitigation xApp evaluates signaling level and decides that there is no more aggressive UE activity. The xApp updates subscription back to REPORT. |  |
| Ends when | Attack is over and signaling messages level is back to normal. |  |
| Exceptions | None identified. |  |

The flow diagram of the local signaling storm protection insert-control is given in figure 4.15.3.2-1.

![Generated by PlantUML](../assets/images/4941022a3ad8.png)

###### Figure 4.15.3.2-1: Local signaling storm protection insert-control flow diagram

#### Mode 2 - Distributed signaling storm protection

The context of the distributed signaling storm protection is captured in table 4.15.3.3-1.

###### Table 4.15.3.3-1: Distributed signaling storm protection

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Detect distributed signaling using Non-RT RIC and A1 policy initiates mode 2 handling in Near-RT RIC with "stricter parameters" mitigation. |  |
| Actors and Roles | Non-RT RIC: Detection of network-level distributed signaling storms, maintenance of cell-level, network slice level and node level normal behavior models.  Near-RT RIC: Detection of local cell-level signaling storms; execution of mitigation policies and controls, maintenance of cell-level normal behavior models.  RAN: Executes UE level or network slice level mitigation policies, collects and reports RAN signaling events and policy specific statistics over E2. |  |
| Assumptions | All relevant functions and components are instantiated. Signaling storms detection and signaling storms mitigation xApps are deployed over E2 with initial configuration. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
|  | A1, E2 interface connectivity is established with Non-RT RIC and RAN respectively.  Data report, policy and control subscription established on E2 interface. |  |
| Pre-conditions | Network is operational.  SMO has established the data collection and sharing interface with Non-RT RIC.  Non-RT RIC and Near-RT RIC already established relevant detection mechanisms of normal signaling behavior and adjusted detection parameters accordingly. Non-RT RIC analyzes the historical data from RAN, develops, trains with help of SMO functions and deploys the models or algorithm as xApps to the Near-RT RIC. |  |
| Begins when | Network is in normal state when (attack is described later on). |  |
| Step 1 (M) | OAM functions start to collect Enrichment Information (EIs) from external sources (e.g. network core probing framework). |  |
| Step 2 (M) | OAM functions start to collect alarms & metrics from E2 nodes. |  |
| Step 3 (M) | OAM functions sends signaling statistics based on collected information to Non-RT RIC. |  |
| Step 4 (M) | Non-RT RIC uses AI/ML model to analyze overall network signaling activity levels based on signaling statistics. |  |
| Step 5 (M) | Non-RT RIC applies initial configurations to all Near-RT RIC elements regarding detection and mitigation parameters, including: accepted signaling volume thresholds, throttle/block ratio, accepted false negative levels, filter pause periods, etc. |  |
| Step 6 (M) | Non-RT RIC detects distributed signaling storm activity originated from a list of locations. |  |
| Step 7 (M) | Non-RT RIC updates configuration to a stricter one in the relevant Near-RT RIC locations over A1 interface. |  |
| Step 8 (M) | Near-RT RIC performs detection and mitigation as described in 3.15.3.1 or  3.15.3.2 with stricter configuration (e.g. lower thresholds). |  |
| Step 9 (M) | Non-RT RIC determines that distributed signaling storm attack is over based on signaling statistics information. |  |
| Step 10 (M) | Non-RT RIC updates Near-RT RICs back to initial configuration parameters over the A1 interface. |  |
| Step 11 (M) | Near-RT RIC signaling storm detection xApp observed aggressive behavior where temporal identifiers cannot be correlated with the underlying devices. |  |
| Step 12 (M) | Near RT RIC alarms the OAM functions over O1. |  |
| Step 13 (M) | OAM functions report suspicious behavior to Non-RT RIC. |  |
| Step 14 (M) | Non-RT RIC sends enrichment information to Near-RT RIC over A1-EI to support detection of aggressive devices. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Step 15 (M) | Near-RT RIC performs detection and mitigation as described in 3.15.3.1 or  3.15.3.2 with stricter configuration (e.g. lower thresholds). |  |
| Step 16 (M) | Non-RT RIC evaluates data and decides that there is no more distributed signaling storm activity. |  |
| Step 17 (M) | Non-RT updates configuration of relevant Near-RT RICs over the A1 back to normal. |  |
| Ends when | Attack is over and signaling messages level is back to normal. |  |
| Exceptions | None identified. |  |
| Post Conditions | Non-RT RIC monitors network-level signaling messages statistics.  Near-RT RIC monitors cell-level signaling messages statistics. |  |

The flow diagram of the distributed signaling storm protection is given in figure 4.15.3.3-1.

![Generated by PlantUML](../assets/images/9c45203f3543.png)

###### Figure 4.15.3.3-1: Distributed signaling storm protection flow diagram

### Required data

The measurement counters, detection within the Near-RT RIC is based upon analyzing per UE connection establishment messages events that include the following data:

1. Basic registration event parameters: timestamp, cell ID, temporary ID (e.g., C-RNTI, 5G-GUTI)
2. RAN parameters to correlate between a UE and registration events: e.g. RSRP/RSRQ, timing advance, beam ID Tracking status of ongoing attack by monitoring statistics of active filters that include the following data:
3. Number of UEs in the filter, number of requests blocked, trend (change over last x periods of time) Enrichment information from a non-RAN source regarding network-wide DDoS information:
4. Overloaded regions, overloaded sites, severity (% above normal)

## Congestion prediction and management

Void

## Industrial IoT optimization

Void

## BBU pooling to achieve RAN elasticity

Void

## Integrated SON function within the O-RAN framework

This use case provides the motivation, description, and requirements for enabling the O-RAN framework to support a minimum SON function set. This use case enables realization of SON functions in the O-RAN architectural framework to help operators address issues seen from vendor specific SON implementation in earlier generation of cellular networks.

### Background and goal of the use case.

SON (Self-Organizing Network) functionalities reduces the cost of running a mobile network by providing control on aspects of network configuration and control and thus eliminating manual configuration of network elements right from initial deployment through the network operation. SON also helps better network performance and customer experience and can significantly improve OPEX-to-revenue ratio and help in realizing avoidable CAPEX.

SON is an automation technology that enables the network to set itself up and self-manage resources and configuration to achieve optimal performance. The SON functions are handled by SON algorithms either individually or in groups. SON algorithms perform functionalities like monitoring the network(s) by collecting management data including MDAS (Management Data Analytics Service) data, analysis of the data to determine issues in the network(s) and their resolution. SON intends to achieve the following:

**Self-configuration**: Aids in seamlessly integrating into the network through automatic configuration of key parameters (initial PCI and ANR functions).

**Self-optimization:** Aids in enhanced network performance through near real time optimization of radio & network configurations. It is valuable throughout the lifetime of the network and includes SON functionalities such as Mobility Load Balancing [MLB], Mobility Robustness Optimization [MRO], Random Access Channel [RACH] Optimization, etc.

**Self-healing:** It allows adjacent cells to maintain network quality in case a cell/sector fails, providing resiliency (reliability) in the face of unforeseen outage conditions. It is relevant throughout the lifetime of the network and includes SON functions such as cell outage detection, compensation and recovery.

The definitions for the SON functionality are specified in 3GPP TS 28.313 [20] but the realization of the SON functions is left to implementation. The SON coordination function for detecting, preventing and resolving conflicts or negative influences between multiple SON functions when there is an attempt to change some (same or associated) network configuration parameters of some (same or associated) nodes is also specified in 3GPP TS 28.313 [20]. Based on the deployment of SON algorithm, the SON solution can be termed as Centralized SON (C-SON - where the SON algorithms are executed in the 3GPP management system), Distributed SON (D-SON - where SON algorithms are executed in the network function layer) and Hybrid SON (where SON algorithm execution is spread across the network function layers and the management layers).

The objective of this use case is to enable the realization of SON functions in the O-RAN architecture framework i.e., as rApps, xApps or as management entity functions through open interfaces in a way that inter vendor interoperability issues can be addressed.

NOTE: Other deployment options other than the ones mentioned in this use case are also possible. The scope of the integrated SON use case covers the following functions:

1. Self configuration:
   * PCI initial allocation and conflict resolution
   * ANR (Automatic Neighbor Relations)
2. Self optimization:
   * Mobility Load Balancing (MLB)
   * Mobility Robustness Optimization (MRO)
   * Coverage and Capacity Optimization (CCO)
   * RACH Optimization (RO)

Editor's note: R1 interface needs to be shown in the UMLs.

### Entities/resources involved in the use case

#### SON inventory and deployment management

1. SMO
   * Support SON inventory and deployment management for Non-RT RIC(s), Near-RT RIC(s) and E2 node(s).
   * Support collection of SON configurations from Non-RT RIC(s), Near-RT RIC(s) and E2 node(s).
   * Support decision making on setup of the SON functions in Non-RT RIC(s), Near-RT RIC(s) and E2 node(s).
   * Configure Non-RT RIC(s), Near-RT RIC(s) and E2 node(s) based on the decided SON function deployment model.
2. Non-RT RIC
   * Support exposure of SON functionalities and configurations.
   * Support configuration and setup of the SON functions from SMO.
3. Near-RT RIC
   * Support exposure of SON functionalities and configurations.
   * Support configuration and setup of the SON functions from SMO via O1 interface.
4. E2 node
   * Support exposure of SON functionalities and configurations.
   * Support configuration and setup of the SON functions from SMO via O1 interface.

#### Self configuration (PCI conflict detection/resolution, ANR)

1. SMO
   * Configure self configuration SON functionality (PCI conflict detection/resolution, ANR) in Non-RT RIC, Near- RT RIC or E2 node.
   * Configure/reconfigure the respective SON related parameters and measurements in the Non-RT RIC, Near-RT RIC and E2 node.
   * Support collection of measurements or notifications from the respective O-RAN nodes.
2. Non-RT RIC
   * Retrieve necessary data from SMO.
   * Support setup of SON function and configuration of relevant SON data inputs from SMO.
   * Support AI/ML training and inference and provide output via O1 or A1 to the relevant O-RAN nodes.
3. Near-RT RIC
   * Support setup of SON function and configuration of relevant SON data inputs from SMO.
   * Configure and receive necessary input data for AI/ML training of SON functions.
   * Support notifications to SMO related to SON functions.
   * Support AI/ML training and inference and provide output to E2 node via E2 interface.
   * Support inputs from Non-RT RIC for AI/ML training and conversion of policies via A1 into E2 inputs.
4. E2 node
   * Support setup of SON function and configuration of relevant SON data inputs from SMO.
   * Support configuration and retrieval of necessary SON function related data for AI/ML model training via E2/O1 interfaces.
   * Support policies or configuration changes or relevant inputs via E2/O1 interface to execute RRM functionalities for the respective SON functions.
   * Support notifications to SMO related to SON functions.
   * Support AI/ML model inference and execute relevant RRM functionalities.

#### Self optimization (MLB, MRO, CCO, RO)

1. SMO
   * Configure the self optimization (MLB, MRO, CCO, RO) SON functionality in Non-RT RIC, Near-RT RIC or E2 node.
2. Non-RT RIC
   * Support setup of SON function and configuration of relevant SON data inputs from SMO.
   * Configuration and collection of cell load related information, HO related reports, CCO related measurement reports (RLF (Radio Link Failure), MDT (Minimization Drive Test), RCEF (RRC Connection Establishment

Failure)), RACH performance reports for constructing relevant AI/ML models to assist in the self optimization SON functionality.

* + Support AI/ML model training and inference based on the input data received.
  + Re-configure inter-site/inter-rat cell reselection parameters, HO related parameters, CCO related control parameters and RACH parameters based on AI/ML output.
  + Generate relevant A1 policies to execute any RRM function for the configured SON function.

1. Near-RT RIC
   * Support setup of SON function and configuration of relevant SON data inputs from SMO.
   * Configuration and collection of load reports, HO related reports (HO failure and RLF), CCO related measurement reports (RLF, MDT, RCEF), RACH performance reports from E2 nodes over E2 interface.
   * Support AI/ML model training and inference based on the input data received via O1 and E2.
   * Re-configure HO related, cell reselection parameters, CCO related control parameters and RACH parameters based on AI/ML output.
   * Support initiation of RRM functions like HO initiation, trigger cell reselection at E2 node via E2 policies or controls based on AI/ML output.
   * Support conversion of A1 policy into relevant E2 actions for executing RRM function for a specific SON function.
2. E2 node
   * Support setup of SON function and configuration of relevant SON data inputs from SMO.
   * Report Measurement Report (MR), HO related information, coverage information, RACH performance over E2/O1 interface.
   * Support reconfiguration of HO related parameters, cell reselection parameters, CCO related parameters, RACH parameters based on inputs via E2 or O1 interface.
   * Support initiation of RRM functions like HO initiation, cell reselection, etc. based on inputs received via E2/O1 interface.

### Solutions

#### SON inventory and deployment management

The context of the SON inventory and deployment management is captured in table 4.19.3.1-1.

###### Table 4.19.3.1-1: SON inventory and deployment management

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | * Management of SON configurations of Non-RT RIC, Near-RT RIC and E2 node by the SMO. * Management of deployment of SON functions in Non-RT RIC, Near-RT RIC and E2 node by the SMO. |  |
| Actors and Roles | * SMO acting as controller for the SON inventory and deployment management. * Non-RT RIC, Near-RT RIC and E2 node acting as supporting entities by providing the required information and adhering to SON configuration by SMO. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
|  | * Operator providing the necessary inputs to SMO for decision making on the SON function deployment. |  |
| Assumptions | * O1 interface connectivity between the SMO and E2 node and Near-RT RIC is established. * E2 interface connectivity is established between E2 node and Near-RT RIC. * A1 interface connectivity is established between Near-RT RIC and Non-RT RIC. * Network is operational. |  |
| Pre-conditions | * SMO is unaware of the SON configurations of the O-RAN nodes. * SMO has necessary inputs from operator to decide the deployment of SON functions in the respective O-RAN nodes. * O-RAN nodes are capable of providing their SON configurations to SMO. |  |
| Begins when | Network becomes operational and operator configures the SMO for SON inventory and deployment management. |  |
| Step 1, 2, 3 (M) | * Operator sets the SON targets and the SON function deployment model. * SMO analyzes the SON targets and the SON deployment model and notifies the operator on the decision. * SMO inspects the SON inventory and decides on the need for retrieval of SON configuration from O-RAN nodes. |  |
| Step 4, 5, 6, 7, 8, 9 (O) | * If required, SMO initiates request to retrieve the configuration from O-RAN nodes in a loop until all the necessary configurations are retrieved. * Based on the retrieved configuration, SMO re-evaluates the SON deployment model and notifies the operator if any changes to SON deployment model. |  |
| Step 10, 11, 12 (O) | * Alternatively, SMO can decide to configure the O-RAN nodes with the necessary SON functions by deploying rApps or xApps to cater to the SON deployment model. * SMO can notify the operator on the rApp and xApp deployments if needed. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Step 13 - 17 (O) | Based on the revised deployment model, SMO communicates the changes to the SON configurations and the SON function setup to the O-RAN nodes. |  |
| Step 18 (M) | The O-RAN nodes collect data, analyze, and decide if any changes are needed to the configuration and notify operator for any modifications done.  This is done in a loop until SON targets are met. |  |
| Step 19 - 27 (M) | If the SON functions need to be terminated based on inputs from operator, then SMO initiates deletion of SON configurations in the respective O-RAN nodes and notifies the operator when the termination is completed. |  |
| Ends when | The SON functions are terminated by the operator or when the SON targets are met. |  |
| Exceptions | None identified. |  |
| Post Conditions | SMO, Non-RT RIC, Near-RT RIC and E2 nodes interwork with each other seamlessly adhering to the SON function setup input from SMO. |  |

The flow diagram of the SON inventory and deployment management is given in figure 4.19.3.1-1.

![Generated by PlantUML](../assets/images/4ec616f1f4bc.jpg)

###### Figure 4.19.3.1-1: SON inventory and deployment management flow diagram

#### Self configuration (PCI conflict detection/resolution, ANR)

The context of the self configuration is captured in table 4.19.3.2-1.

###### Table 4.19.3.2-1: Self configuration

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Enable flexible deployment of the self configuration SON functions like PCI conflict detection/resolution, ANR by means of configuration parameter change, regulating RRM function actions and allowing AI/ML- based solutions. |  |
| Actors and Roles | * SMO acting as parameter configuration function. * Non-RT RIC/ Near-RT RIC: Configuration decision making function. * E2 node: Configuration enforcement function, and measurement reporting function. |  |
| Assumptions | * O1 interface connectivity between the SMO and E2 node, Near-RT RIC is established. * E2 interface connectivity is established between E2 node and Near-RT RIC. * A1 interface connectivity is established between Near-RT RIC and Non-RT RIC. * Network is operational. |  |
| Pre-conditions | SMO has configured the SON functions and required initial parameters in the respective O-RAN nodes via SON inventory and deployment management as shown in clause 4.19.3.1. |  |
| Begins when | Operator enables the self configuration SON functions like PCI conflict detection/resolution, ANR and E2 node becomes operational. |  |
| Step 1a, 1b, 1c (O) | * Non-RT RIC initiates the specific measurement data collection request towards SMO and SMO towards E2 node for AI/ML model training and for analysis of data for optimization. * E2 node sends the configured measurement data via O1 interface to SMO and Non-RT RIC retrieves the required data from SMO. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Step 2a, 2b, 2c, 2d, 2e, 2f (O) | * Non-RT RIC can train the AI/ML model with the collected data from O1 interface and constantly monitors the performance of the E2 node(s) for optimization. * Based on the output of the AI/ML processing the Non-RT RIC can trigger modification of configuration parameters through SMO via O1 interface to E2 node. * Optionally Non-RT RIC can also generate and send A1 policies for initiation of HO etc. to Near-RT RIC. Near-RT RIC converts the A1 policies to E2 actions and forwards them to E2 nodes. * Non-RT RIC continues to monitor the performance of the E2 nodes and re-trains the AI/ML model in a loop. |  |
| Step 3a, 3b (O) | * Near-RT RIC initiates the specific measurement data collection request towards E2 node. Near-RT RIC can use the collected data for optionally AI/ML model training and for analysis of data for optimization. * E2 node sends the configured measurement data via E2 interface to Near-RT RIC. |  |
| Step 4a, 4b, 4c, 4d (O) | * Near-RT RIC can train the AI/ML model with the collected data from E2 interface and constantly monitors the performance of the E2 node(s) for optimization. * Upon trigger from the AI/ML processes, Near-RT RIC performs reconfiguration of parameters. * Optionally Near-RT RIC can request initiation of certain E2 node actions like HO or cell reselection, etc. * Near-RT RIC continues to monitor the performance of the E2 nodes and re-trains the AI/ML model in a loop. |  |
| Step 5 (O) | E2 node receives required inputs from SMO/Non-RT RIC and Near-RT RIC for execution of self configuration SON functions. |  |
| Step 6a, 6b (O) | * Based on the inputs received and the inputs from inbuilt RRM algorithm, E2 node reconfigures parameters related to self configuration. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
|  | * E2 node can initiate certain RRM actions like HO or cell reselection, etc. |  |
| Ends when | E2 node becomes non-operational or when the operator disables the self configuration SON functions. |  |
| Exceptions | One of the steps identified above fails. |  |
| Post Conditions | SMO/ Non-RT RIC, Near-RT RIC continues real time close loop optimization of self configuration SON functions.  The E2 node operates using the newly deployed parameters. |  |

The flow diagram of the self configuration is shown in figure 4.19.3.2-1.

![Generated by PlantUML](../assets/images/9470859823ba.png)

###### Figure 4.19.3.2-1: Self configuration

#### Self optimization (MLB, MRO, CCO, RO)

The context of the self optimization is captured in table 4.19.3.3-1.

###### Table 4.19.3.3-1: Self optimization

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Enable flexible optimization of the self optimizing SON functions like MRO, MLB, CCO and RACH by means of configuration parameter change, regulating RRM function actions and allowing AI/ML-based solutions. |  |
| Actors and Roles | * SMO acting as parameter configuration function. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
|  | * Non-RT RIC/ Near-RT RIC: Self optimization decision making function. * E2 node: Configuration enforcement function, and measurement reporting function. |  |
| Assumptions | * O1 interface connectivity between the SMO and E2 node, Near-RT RIC is established. * E2 interface connectivity is established between E2 node and Near-RT RIC. * A1 interface connectivity is established between Near-RT RIC and Non-RT RIC. * Network is operational. |  |
| Pre-conditions | SMO has configured the SON functions and required initial parameters in the respective O-RAN nodes via SON inventory and deployment management as shown in clause 4.19.3.1. |  |
| Begins when | Operator enables the optimization functions for SON functions like MRO, MLB, CCO or RACH and E2 node becomes operational. |  |
| Step 1a, 1b, 1c (O) | * Non-RT RIC initiates the specific measurement data collection request towards SMO and SMO towards E2 node for AI/ML model training and for analysis of data for optimization. * E2 node sends the configured measurement data via O1 interface to SMO and Non-RT RIC retrieves the required data from SMO. |  |
| Step 2a, 2b, 2c, 2d, 2e, 2f (O) | * Non-RT RIC can train the AI/ML model with the collected data from O1 interface and constantly monitors the performance of the E2 node(s) for optimization. * Based on the output of the AI/ML processing the Non-RT RIC can trigger modification of configuration parameters through SMO via O1 interface to E2 node. * Optionally Non-RT RIC can also generate and send A1 policies for initiation of HO etc to Near-RT RIC. Near-RT RIC converts the A1 policies to E2 actions and forwards them to E2 nodes. * Non-RT RIC continues to monitor the performance of the E2 nodes and re-trains the AI/ML model in a loop. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Step 3a, 3b (O) | * Near-RT RIC initiates the specific measurement data collection request towards E2 node. Near-RT RIC can use the collected data to optionally train the AI/ML model and for analysis of data for optimization. * E2 node sends the configured measurement data via E2 interface to Near-RT RIC. |  |
| Step 4a, 4b, 4c, 4d (O) | * Near-RT RIC can train the AI/ML model with the collected data from E2 interface and constantly monitors the performance of the E2 node(s) for optimization. * Upon trigger from the AI/ML processes, Near-RT RIC performs reconfiguration of parameters related to self optimization. * Optionally Near-RT RIC can request initiation of certain E2 node Actions like HO or cell reselection, etc. * Near-RT RIC continues to monitor the performance of the E2 nodes and re-trains the AI/ML model in a loop. |  |
| Step 5 (O) | E2 node receives required inputs from SMO/Non-RT RIC and Near-RT RIC for execution of self optimization SON functions. |  |
| Step 6a, 6b (O) | * Based on the inputs received and the inputs from inbuilt RRM algorithm E2 node reconfigures parameters related to self optimization. * E2 node can initiate certain RRM Actions like HO or cell reselection, etc. |  |
| Ends when | E2 node becomes non-operational or when the operator disables the optimization functions for SON functions like MRO, MLB, CCO or RACH. |  |
| Exceptions | One of the steps identified above fails. |  |
| Post Conditions | SMO/Non-RT RIC, Near-RT RIC continues real time close loop optimization of self optimization SON functions.  The E2 node operates using the newly deployed parameters. |  |

The flow diagram of the self optimization is given in figure 4.19.3.3-1.

![Generated by PlantUML](../assets/images/24c0304ef77a.png)

###### Figure 4.19.3.3-1: Self optimization

### Required data

#### Self configuration (PCI conflict detection/resolution, ANR)

1. SMO
   * Network topology, GPS coordinates of the E2 nodes, PCI allocation range as inputs from operator
   * Information on PCI confusion or PCI conflict from E2 node via O1 interface
   * Neighbor information (PCI, ECGI, PLMN, TANAC, TAC, frequency bands) based on network topology as input from operator
2. Non-RT RIC/Near-RT RIC and E2 node
   * 3GPP RRC measurement reports with PCI information of the neighboring cells via E2 interface
   * PCI allocation range via O1 interface from SMO
   * Information on PCI confusion or PCI conflict from E2 node via O1 interface
   * Neighbour cell relation table information of the neighboring cells via E2 interface
   * 3GPP XN, X2 and NG mobility related messages via E2 interface from E2 node

#### Self optimization (MLB, MRO, CCO, RO)

1. Non-RT RIC/Near-RT RIC and E2 node
   * MLB - Load reports from Xn/X2/F1/E1 interface resource status reporting procedures and Xn, X2 and NG mobility messages defined in 3GPP via E2 interface from E2 node.
   * MLB - HO trigger control parameters available as specified in 3GPP TS 28.541 [5], clause 7.1.5. to E2 node via E2 interface or O1 interface.
   * MRO - Xn, X2 and NG HO reports, RLF reports, NG uplink and downlink RRC transfer messages, UE history information, coverage, and quality information and XN/NG/X2 mobility related messages defined in 3GPP via E2 interface from E2 node.
   * MRO - HO target and control parameters available as specified in 3GPP TS 28.541 [5], clause 7.1.2. to E2 node via E2 interface or O1 interface.
   * CCO - RLF, MDT, measurement reports and RCEF related reports defined in 3GPP via E2 interface from E2 node.
   * CCO related control parameters and control information available as specified in 3GPP TS 28.541 [5], clause

7.2.3. to E2 node via E2 interface or O1 interface.

* + RACH optimization - PRACH parameters available over XN/X2 interface, contention detection per RACH attempt, number of RACH preambles per SSB, information on SSB threshold per RACH attempt defined in 3GPP via E2 interface from E2 node.
  + HO target and control parameters available as specified in 3GPP TS 28.541 [5], clause 7.1.1. to E2 node via E2 interface or O1 interface.

## Shared O-RU

### Background and goal of the use case

#### Common aspects & background for all Shared O-RU use cases

This use case provides the background, motivation, and requirements for the lower layer split multi node support, allowing to share an O-RU between multiple O-DU nodes, including single operator and multi-operator use cases.

Shared O-RU use cases deliver a range of different benefits depending on specific scenarios. Shared O-RU support for Single-MNO use cases delivers important resiliency and load balancing capabilities. Shared O-RU support for multiple- MNO use cases delivers important network sharing capabilities to complement established MOCN, MORAN and DAS approaches.

Shared O-RU use cases cover the class 2 BBU pooling specified in clause 4.18.

Shared O-RU use cases are associated with RAN sharing use case. In particular, RAN sharing depicts a Shared O-RU configuration, specified in clause 4.7.

Shared O-RU feature also serves to support the Multi-Vendor (MV) network slicing use case, its operation, and scenarios, specified in clause 4.10. Multi-vendor network slicing has implications to the front-haul as well. The multi-vendor slicing use case will use dynamic resource allocation aspects of the Shared O-RU feature.

The following sub-clauses describe different configurations and deployment scenarios for Shared O-RU. They also describe use cases to accomplish key functionality such as a resiliency use case.

The Shared O-RU will have common solutions that span the sub-use cases. The clauses that follow describe different aspects, configurations, and deployment scenarios for Shared O-RU; however, they will likely share common solutions which are described in the solution clause.

Expected use cases that accomplish a purpose between actors comprise the sub-use cases: such as software upgrade of a Shared O-RU, start up of a Shared O-RU, recovery from failed primary O-DUs that are sharing a O-RU, rehoming of a Shared O-RU in a network.

###### State management:

The Shared O-RU supports lock/unlock operations (administrative state) of a Shared O-RU administrative state management and these are used throughout the sub-use cases. State management of administrative, operation and availability state are specified in ITU-T X.731 [18] and in 3GPP TS 28.624 [9], in 3GPP TS 28.625 [10] (for all classes in the NRM), and in 3GPP TS 28.626 [11]. Some of the sub-use cases can use them, some cannot. Role-based admission control. The host can change administrative state of the O-RU while the tenant cannot. The Shared O-RU sub-use cases shall be as specified in RFC 8348 [19] which is similar to what is specified in ITU-T X.731 [18].

#### Resource portioning use case of Shared O-RU for Single-MNO

This sub-use case describes the procedures of how to decide on the partitioning of a Shared O-RU. The actors are the sharing co-ordinator, SMO, and the resource partitioning rApp (Shared O-RU). The sharing co-ordinator recovers the inventory from the SMO and decides on how to partition the resources of a Shared O-RU. The sharing co-ordinator uses the rApp to partition the resources of a Shared O-RU between multiple O-DUs. The outcome is that rApp has details on how a Shared O-RU's resource are to be partitioned.

#### Start-up use case of a Shared O-RU for Single-MNO

This sub-use case describes the start-up of a Shared O-RU. The actors are the SMO, the O-DUs, the Shared O-RU, and their interactions that are needed for a Shared O-RU to boot up and enter into operation. The outcome is that the Shared O-RU is operating with the necessary software version and has established network connectivity with the O-DUs and, for hybrid deployments, the SMO. The start-up for a Shared O-RU is the basis of the other Shared O-RU sub-use cases.

#### Configuration use case of a Shared O-RU for Single & Multi-MNO

This sub-use case describes the configuration of a Shared O-RU. The configuration is invoked after the start-up use case has completed. Configuration can occur with different actors in hybrid vs hierarchical management mode. The common aspects of the Shared O-RU configuration are configured by the O-DU when in hierarchical management mode and by the SMO in hybrid management mode. The common aspects include the security, operational, transmission, and connectivity related parameters. The O-DUs are always responsible for configuring the partitioned carrier information on the Shared O-RU through the open front-haul interface. The use case enables the SMO to be notified of the configured carrier parameters.

This sub-use case includes the configuration of multi-operator role-based access control (configuration) for the management sessions associated with a tenant operator. The Shared O-RU uses the PLMN-Id associated with the management account and used in other aspects of the Shared O-RU's configuration to prevent a tenant from reading configuration associated with a second tenant's partitioned resources or subscribing to performance measurements associated with a second tenant's partitioned resources.

This sub-use case also describes the procedures of how a sharing co-ordinator can confirm that a tenant operator is complying with the sharing agreements that cover operation of a Shared O-RU.

The outcome is that the Shared O-RU has been configured with the configuration parameters necessary for operation.

#### Supervision use case of a Shared O-RU for Single-MNO

This sub-use case applies to the running/operation of Shared O-RU.

This sub-use case describes the supervision operations of the Shared O-RU. This sub-use case is triggered after the O- DUs have configured the partitioned carrier information of a Shared O-RU. It is invoked during run-time. The actors are the SMO, O-DUs, and Shared O-RU. The objective that the use case accomplishes is the establishment of watchdog supervision of the Shared O-RU by multiple O-DUs. Supervision enables the Shared O-RU to autonomously cease transmitting on a partitioned carrier if it loses supervision with the O-DU responsible for that carrier.

#### Performance management use case of a Shared O-RU for Single-MNO

This sub-use case applies to the running/operation of Shared O-RU.

This sub-use case describes the performance management operations of the Shared O-RU. This sub-use case is triggered after the O-DUs have configured the partitioned carrier information of a Shared O-RU. It is also invoked during run-time. The actors are the O-DUs, and Shared O-RU. The objective that the use case accomplishes is for each O-DU to establish subscriptions to receive performance management notifications regarding operation of the fronthaul between the O-DUs and Shared O-RU.

The sub-use case also describes how performance management logs, data and files are passed from the Shared O-RU to the connected O-DUs and data from O-DUs to SMO. Performance measurement data should be supported in three basic ways by the O-DU:

* **Active push by a producer (O-DU)** - A producer (O-DU) could push performance data to a consumer (SMO).
  + **Streaming** - A persistent connection between consumer & producer exists without having to renegotiate between the data reports to send a steady flow of data. This is like 3GPP performance streaming reporting (as specified in 3GPP TS 28.532 [21], clause 11.5). Once the WebSocket is opened, the meta-data about the streams is exchanged, and the consumer can then receive the serialized data.
  + **Event notifications -** Performance measurement information sent by event notifications will reestablish a new connection between a consumer and producer for each data reporting. This is how 5GC SBA works (as specified in 3GPP TS 23.501 [2] and in 3GPP TS 23.502 [22] services). The data is sent as a payload of a notification.
* **Active collection by a consumer** - The consumer (SMO) could also actively collect data from a producer (O-DU).
  + **Configuration management read only attributes** - Reuse of configuration management approach where attribute conveying the value of performance data is read by the consumer like any other configuration management attribute.
  + **Data scraping** - Use of data scraping common to cloud native implementations where a collector reads the data from a pre-defined URI.
* **File-based reporting** - File based reporting is used for low-priority or background collection for large amounts of performance data.
  + **File upload by producer -** In this method, there is no artificial delay, the data is reported whenever it is available. However, it involves action by the producer.
  + **File download by consumer -** It removes the burden from the producer, but relies upon either periodic polling, or file ready notification from the producer about the data being ready for download. This is how 3GPP file-based reporting works as specified in 3GPP TS 28.532 [21], clause 11.6 and in ETSI GS NFV IFA008 [24] and ETSI GS NFV IFA013 [23] specifications.

For the Shared O-RU:

* **Active push by Shared O-RU (producer)** - The Shared O-RU pushes performance data to the O-DU.
  + **Event notifications -** The Shared O-RU sends performance measurement information through event notifications to the O-DU by establishing a new connection for each data reporting session.
* **Active collection by O-DU (consumer)** - The O-DU can actively collect data from the Shared O-RU.
  + **Attributes -** The performance data is read by the O-DU. The O-DU can invoke a Remote Procedure Call (RPC) towards O-RU giving the O-RU all information it needs to send PM file. Then, the O-RU acts as sftp client and performs file upload to pointed to location.

NOTE 1: The Shared O-RU does not support streaming-based reporting.

NOTE 2: The Shared O-RU cannot act as a sftp server but can act as a sftp client. Thus, the Shared O-RU can upload files to a designated location.

#### Antenna Line Device (ALD) control use case of a Shared O-RU for Single-MNO

This sub-use case applies to the running/operation of Shared O-RU.

This sub-use case describes the operation of antenna line devices with the Shared O-RU. This sub-use case is triggered after the O-DUs have configured the partitioned carrier information of a Shared O-RU. The actors are one of the O-DUs, and Shared O-RU. The objective that the use case accomplishes is for the selected O-DU to operate the ALD controller and control the ALD connected to the Shared O-RU.

ALD control is an end-to-end operation from the operator using the SMO at one end issuing operations to the O-DU and realising that ALD operation through the O-RU on through to the terminating ALD device at the other end.

Because there is a single ALD controller, and the Shared O-RU can be connected to multiple O-DUs, one of them needs to be nominated as the ALD controller.

There are many types of operations for ALD control. These include but not limited to software update of ALD devices, setting of RET mechanical/electrical tilt setting, reset of ALD devices, etc.

#### Basic resiliency use case (active O-DU failure) for Single-MNO

This sub-use case describes system recovery from a failure (operational state = disabled) of the active O-DU#1 or O-DU switchover may be triggered by SMO in reactions to failure or due to operator's activity for a Shared O-RU in Single- MNO deployment. A switch of the active O-DU to standby O-DU is done. This sub-use case only applies to the hierarchical management of the O-RU.

The actors are the SMO, O-CU, O-DUs, and Shared O-RU. The actors work together to recover operation from O-DU(s) failures.

This basic resiliency sub-use case, covers failure of the active O-DU#1 that is unable to provide service. For example, when SMO detects that O-DU is out of service, the SMO assumes operational state for such O-DU as "disabled" and triggers recovery action for cells served by such O-DU. This use case covers a flow of operations that occurs in this situation.

This use case is triggered when the active O-DU fails (operational state = disabled).

This use case describes the switch-over of the other O-DU to become the new active O-DU.

#### Antenna calibration sub-use case of a Shared O-RU for Single-MNO

This sub-use case applies to the running/operation of Shared O-RU.

This sub-use case describes the operation of antenna calibration using a Shared O-RU. This sub use case is triggered after the O-DUs have configured the partitioned carrier information of a Shared O-RU. The actors are the O-DUs, and Shared O-RU. The objective that the use case accomplishes is for the Shared O-RU to be able to perform antenna calibration when connected to multiple O-DUs.

It is typically initiated from the Shared O-RU when it detects that antenna calibration is necessary, which then sends a notification to the O-DU.

If supported by the O-RU, the O-DU may also set an automatic antenna calibration setting which enables the Shared O- RU to automatically perform antenna calibration.

#### Rehoming use case of a Shared O-RU for Single-MNO

This sub-use case describes how a Shared O-RU is rehomed within a network and paired with new parent O-DUs. Rehoming is the process of associating new management (parent) O-DUs with a Shared O-RU. This might be a virtual rehoming in a cloud native deployment, management-requested parent rehoming, or a physical move of the Shared O-RU whereby the Shared O-RU is connected and communicating to new parent O-DUs.

Rehoming is typically done deliberately. Resiliency flows has some similarity to the rehoming flow; however, the difference is that resiliency is a reaction to a fault in the system, whereas rehoming is typically a planned activity.

Some typical reasons why rehoming is done is as follows:

* **Replanning or changing a network** - Altering a network resulting from physical construction work or network optimization may cause an MNO to replan their network necessitating a Shared O-RU to rehome.
* **New greenfield network** - When a new greenfield pocket deployment is created within a brownfield deployment rehoming might happen.
* **Service management-level operations** - The MNO may trigger a rehoming operation for the Shared O-RU which can happen for a variety of purposes.
* **Physical move a Shared O-RU** - The Shared O-RU is physically moved from one location to another.
* **Evolving a network** - The site might be changed from a non-Shared O-RU configuration to a Shared O-RU configuration which will require rehoming as at least there is a new second O-DU now connected to the O-RU.
* **Partnership with a new MNO** - Changing from a Single-MNO type configuration to a Multi-MNO configuration may require the Shared O-RU to be rehomed.
* **Maintenance activities** - When troubleshooting a failure, or other various maintenance activities may cause a Shared O-RU to be rehomed.
* **Parent failure** - The failure of a parent O-DU(s) may result in rehoming of a Shared O-RU being necessary.

To illustrate an example of rehoming, suppose there is a Shared O-RU with identity #700 that currently exists in an edge cloud with CloudID #20 with parents, O-DU #1 and O-DU #2. And it is physically moved to a different edge cloud CloudID #900 and then subsequently reconnected to new different parent O-DUs, O-DU #19 and O-DU #24. Rehoming is a software-based operation, however, to physically move a Shared O-RU would also require the associated physical front-haul connections to be made.

O-CUs and O-DUs can also be rehomed to new management entities (SMO). However, this sub-use case will only focus on when a Shared O-RU is rehomed to new O-DU parents. There are two basic forms of rehoming, one that is a physical move of the Shared O-RU and other is a deliberate management level operation:

**Physical rehoming** - In this kind of rehoming, the Shared O-RU is physically moved from one location to another. There are two cases where after the physical move, the Shared O-RU has either new O-DU parents or stays with the original O- DU parents. For a Shared O-RU this means that the front-haul connections will be separated and reconnected. This may also entail LCM operations, where a Shared O-RU is decommissioned and then subsequently recommissioned and reinstalling with new parent O-DU. These would fall into common LCM operations. Physical rehoming can also happen during maintenance operations, where a Shared O-RU might be disconnected and reconnected to new parent O-DUs for a variety of reasons.

**Management initiated rehoming** - Management initiated and coordinated rehoming of a Shared O-RU is when the Shared O-RU is given new O-DU parents done at the SMO. This may happen for a variety of reasons and is expected to be an intentionally planned activity. The management entity of the Shared O-RU may be the O-DU in the hierarchical case or SMO in a hybrid configuration. The new parent O-DU may have different carrier support, capabilities, and capacities of than the former parent; for example, it might be more energy efficient with less capabilities or it might an expanded more powerful O-DU.

#### Reset use case of a Shared O-RU for Single-MNO

The reset of a Shared O-RU sub-use case describes the operations related to taking a Shared O-RU out of service and resetting it.

There are some important aspects to reset of Shared O-RU. Only the Shared O-RU host would have permissions to perform the reset operation.

In a multiple MNO configuration, reset operations would need to be coordinated between operators. The Shared O-RU host operator has the permission to perform the reset of a Shared O-RU. It would expect that the Shared O-RU host operator would try to coordinate with the Shared Resource Operator (SRO). This can entail something as simple as those two operators talking to each other; it can also entail automated coordination between management entities of these operators. The reset of a Shared O-RU would impact Availability, Reliability, and Maintenance (ARM) metrics, and uptime KPIs.

The reset of a Shared O-RU operation is the basis for maintenance activities, debugging operations, the physically moving, physical rehoming, and recovery from malfunctions of the Shared O-RU.

There are situations where the Shared O-RU would autonomously reset itself. When the Shared O-RU has lost M-plane connectivity to all of its connected O-DUs the Shared O-RU would autonomously reset itself. This would be the same as if the O-RU was not in a shared configuration.

A software update will result in a reset of the Shared O-RU. The software update of a Shared O-RU is expected to be coordinated between the Shared O-RU host and the SRO.

Before removing the Shared O-RU from service, the Shared O-RU carriers and its associated cells on O-DU/O-CU shall be deactivated.

#### Advanced resiliency sub-use cases of a Shared O-RU for Single-MNO

Advanced resiliency sub-use cases provide descriptions for the resiliency operations where any of O-DUs or Shared O- RU have either partially failed (for instance, when the availability status is "degraded" for any of them), completely failed (when the operational state is "disabled"), or when there are failures detected in the interfaces (like the FH-C/U/S/M plane, F1, E2, and O1).

The key actors in this scenario are the SMO, O-CU, O-DUs, and Shared O-RU. These entities may collaborate to recover or maintain operations in the event of partial O-DU(s) failures, software issues, interface disruptions, power outages, connectivity failures, and loss of synchronization.

This use case shall be triggered when at least one of the aforementioned failures occurs in the network.

#### Load-balancing sub-use case of a Shared O-RU

Load-balancing is a use case where relevant actors can reallocate Shared O-RU resources based on triggers, metrics, or policies.

A key actor is a policy-enforcer that makes Shared O-RU resource allocation decisions based on inputs from measurements. For example, measurements can indicate the amount of traffic on each of the two O-DUs connected to the Shared O-RU. The policy-enforcer decides when a reallocation of Shared O-RU resources is needed. For example, if the policy-enforcer observes that one O-DU has a disproportionate amount of traffic (e.g., more users per MHz) than the other O-DU, the policy-enforcer makes a decision to re-allocate a component carrier from one O-DU to the other O-DUs.

The policy-enforcer role could be played by the SMO/Non-RT RIC or the Near-RT RIC, depending on the time granularity of load balancing decision-making needed. There are limitations that are governed from the air interface which will influence the mechanisms and time granularity for load balancing. Policies can reflect a variety of triggers or mechanisms to be used to balance traffic or carriers. These might include guaranteed bandwidth, O-DU computational load/capacity (processor occupancy), and time of day triggers among others. Whatever the policy rules are and how often they are evaluated, the policy-enforcer would evaluate the situation, probably periodically, and make a resource re-allocation decision.

#### Coordinated reset of a Shared O-RU sub-use case for Multi-MNO

The coordinated reset of a Shared O-RU sub-use case describes the operations related to resetting a Shared O-RU when there are multiple Shared Resource Operator (SRO) O-DUs connected to the Shared O-RU.

In a multiple MNO configuration, reset operations would need to be coordinated between operators. The active Shared O-RU Host (SOH) operator coordinates the reset of a Shared O-RU. The definition of the active SOH is a SOH that has a state = active. The active SOH can perform a reset on its own volition. The active Shared O-RU Host (SOH) coordinates the reset operation; thus, the SROs can request a reset of the Shared O-RU to be performed by the active SOH. So, the active SOH approves or rejects a reset request of the Shared O-RU coming from other SROs. If the request is accepted by the active SOH, the x would inform all the other SROs x. Then the SOH would perform the reset of the Shared O-RU. If the SOH rejects the operation, then the SOH that originated the SRO that the command was rejected. The SOH can reject a command for example in the middle of a software update or other possible conditions that might prohibit a reset. The reset of a Shared O-RU would impact availability, reliability, and maintenance (ARM) metrics, and uptime KPIs.

The reset of a Shared O-RU operation is the basis for maintenance activities, debugging operations, the physically moving, physical rehoming, and recovery from malfunctions of the Shared O-RU.

Before removing the Shared O-RU from service, the Shared O-RU carriers and its associated cells on O-DU/O-CU shall be deactivated.

The reset of a Shared O-RU is a "hard reset".

There can be other variations of coordinated reset of a Shared O-RU possibly based on a policy.

#### Management of Shared O-RU during O-DU software update sub-use case for Shared O-RU for Single & Multi-MNO

As part of WG6 Cloudification and Orchestration Use Cases and Requirements for O-RAN, a generic case of software upgrade of network function is described. In the practical implementation context, a variety of strategies are incorporated for updating the network function with a new software version, with the objective of minimizing the impact of modifications and mitigating any disruptions to the overall service delivered to end users. These strategies include well- established practices such as Canary update, Rolling update, Blue/Green update etc. The choice of a specific approach

relies on various factors such as the extent of the changes, the associated risk potential, and the cost of incorporating the change. Moreover, such changes necessitate careful consideration of dependencies and the need to re-provision and optimize resources accordingly. Furthermore, it is crucial to incorporate contingency/mitigation plans in the event that the software update does not align with the intended plan for implementing the changes.

This sub-use case focuses on the management of Shared O-RU during the software update of O-DU. It is a critical consideration for Shared O-RU, particularly when O-RU resources are shared between the updated O-DU and existing O-DUs. To address this, well-defined procedures are necessary to identify the specific O-RU that can be shared, determine the particular O-DU with which the O-RU resources can be shared, and optimize the shared resources effectively. Prior to the software update, it can be essential to identify the candidate O-DU and associated O-RU resources that requires evacuation, thereby necessitating the provisioning of target RAN nodes. Moreover, in the event of performance degradation or negative impact on performance indicators following the completion of O-DU software update and activation, it is essential to establish efficient risk mitigation strategies and evaluate possibility of rolling back the introduced changes.

Here the consideration of the Shared O-RU arises from the need to minimize the impact of the software update of O-DU. This is achieved by validating the update with minimal traffic or allocating minimal resources, thereby effectively reducing the footprint of affected end users. Utilizing a Shared O-RU effectively fulfils this objective which otherwise can require deployment of dedicated O-RUs solely for validating the O-DU software update. An additional aspect to be considered is the prevention of Shared O-RU restart following a software update at the O-DU level. This is particularly relevant as a software update on the O-DU can entail the establishment of m-lane connections and initiation of the call home procedure, both of which typically require an O-RU restart to be initiated.

A high-level view of the software update scenario of O-DU wherein the software (SW) updated O-DU shares the O-RU resources with an existing O-DU is shown in figure 4.20.1.15-1.

![A screenshot of a computer  Description automatically generated](../assets/images/341b4b6d00ff.png)

###### Figure 4.20.1.15-1: Shared O-RU management scenario during O-DU software update

Shared O-RU management scenario during O-DU software update follows a high-level approach as given below:

1. Selection of O-DU node for software update based on inventory, FM/PM data
2. Deployment and call-home procedures of O-DU
3. O-DU registration with O-CU, Near-RT RIC
4. Common aspect provisioning on Shared O-RU (e.g., ODU-ID, User account) based on SW updated O-DU
5. Selection of the policy for load sharing (e.g., load balancing policy, or selection based on cells having low priority user sessions, S-NSSAI, anticipated traffic, etc.) with the SW updated O-DU
6. O-RU initiates m-plane connection establishment with SW updated O-DU
7. Translation of the load sharing policy to O-RU configuration
8. Inactivation and evacuation of component carriers selected for allocation to SW updated O-DU
9. Provisioning of O-RU with carrier configuration details by SW updated O-DU (e.g., end points, list entries)
10. Activation of carrier configuration associated with SW updated O-DU
11. Initiate KPI and functional log monitoring of SW updated O-DU and associated O-RU resources
12. O-DU SW update mitigation : In case of degraded KPIs reverse SW update process of O-DU

It is to be noted that this sub-use case does not differentiate based on the extent of change introduced to the O-DU through the software upgrade because it primarily depends on the implementation context.

This use case does not enforce a specific policy for the SW update as this depends on the particular deployment and implementation choice. Such policies are typically incorporated to define the rules, control logic, constraints, and thresholds to be considered during the particular change being initiated. As an example, if an implementation scenario calls for such flexibility, the component carrier shifting could be omitted by utilizing appropriate SW update policy and limit only to the general health check after O-DU SW update.

This use case introduces couple of new actors such as O-DU SW change management rApp. An O-DU SW update lifecycle can be managed using these optional functions or using appropriate implementation specific extensions of SMO function.

Currently this use case considers only single operator Shared O-RU scenario. The impact of SW update on multi-operator Shared O-RU scenarios is not in scope of the current version of this sub-use case.

#### Resource partitioning sub-use case for Multi-MNO configuration

This sub-use case describes the procedures of how to decide on the partitioning of a Shared O-RU in a Multi-MNO configuration where one O-DU belongs to an owner operator (MNO) and at least one other O-DU belongs to a participating operator (MNO). The actors are the owner operator MNO sharing co-ordinator, the participating operator MNO sharing co-ordinator, the owner operator SMO, the participating operator MNO SMO, the owner operator resource partitioning rApp, and participating operator MNO resource partitioning rApp. The owner operator MNO sharing co- ordinator retrieves the inventory from the owner operator SMO and decides on how to partition the resources of a Shared O-RU. The owner operator MNO sharing co-ordinator uses the owner operator resource partitioning rApp to partition the resources of a Shared O-RU between multiple O-DUs. The outcome is that the owner operator resource partitioning rApp has details on how a Shared O-RU's resource are to be partitioned.

#### Start-up sub-use case of for Multi-MNO configuration

This sub-use case describes the start-up of a Shared O-RU in a Multi-MNO configuration where one O-DU belongs to an owner operator (MNO) and at least one other belongs to a participating operator (MNO). The actors are the owner operator SMO, participating operator SMO, the connected O-DUs, the Shared O-RU, and their interactions that are needed for a Shared O-RU to boot up and enter into operation. The outcome is that the Shared O-RU is operating with the necessary software version and has established network connectivity with the O-DUs and, for hybrid deployments, the corresponding SMOs. The start-up for a Shared O-RU is a basis for some of the other Shared O-RU sub-use cases.

#### Supervision sub-use case for Multi-MNO configuration

This sub-use case applies to the running or operation of Shared O-RU in a Multi-MNO configuration where one O-DU belongs to an owner operator (MNO) and at least one O-DU belongs to a participating operator (MNO).

This sub-use case describes the supervision operations of the Shared O-RU. It is triggered after the connected O-DUs have configured the partitioned carrier information of a Shared O-RU. It is invoked during run-time. The actors are the owner operator SMO, participating operator SMO, the connected O-DUs, and Shared O-RU. The objective that the use case accomplishes is the establishment of watchdog supervision of the Shared O-RU by multiple O-DUs. Supervision enables the Shared O-RU to autonomously cease transmitting on a partitioned carrier if it loses supervision with the O- DU responsible for that carrier.

#### Antenna Line Device (ALD) control sub-use case for Multi-MNO configuration

This sub-use case applies to the running or operation of Shared O-RU in a Multi-MNO configuration where one O-DU belongs to an owner operator (MNO) and at least one other belongs to a participating operator (MNO).

This sub-use case describes the operation of Antenna Line Devices (ALD) with the Shared O-RU. This sub-use case is triggered after the connected O-DUs have configured the partitioned carrier information of a Shared O-RU. The actors are one of the O-DUs, and Shared O-RU. The objective that the use case accomplishes is for the selected O-DU to operate as the ALD controller and control the ALD connected to the Shared O-RU.

ALD control is an end-to-end operation from a technician using the owning operator or participating operator SMO at one end issuing operations to the O-DU and realising that ALD operation through the O-RU on through to the terminating ALD device at the other end.

Because there is a single ALD controller, and the Shared O-RU can be connected to multiple O-DUs, one of them needs to be nominated as the ALD controller. It is expected that an O-DU of the owning operator would be the ALD controller (but not necessarily).

There are many types of operations for ALD control. These include but not limited to software update of ALD devices, setting of RET mechanical/electrical tilt setting, TMA updates, reset of ALD devices, etc.

NOTE: Only the host O-DU (of the owner operator) can control the ALD and the participating operator O-DU would not be able to control the ALD devices.

#### Antenna calibration sub-use case for Multi-MNO configuration

This sub-use case applies to the running or operation of Shared O-RU in a Multi-MNO configuration where one O-DU belongs to an owner operator (MNO) and at least O-DU other belongs to a participating operator (MNO).

This sub-use case describes the operation of antenna calibration using a Shared O-RU. This sub-use case is triggered after the O-DUs have configured the partitioned carrier information of a Shared O-RU. The actors are the connected O-DUs, and Shared O-RU. The objective that the use case accomplishes is for the Shared O-RU to be able to perform antenna calibration when connected to multiple O-DUs.

#### Rehoming use case of a Shared O-RU for Multi-MNO

This is rehoming the Shared O-RU in a Multi-MNO configuration where different O-DU (parents of the Shared O-RU) are now under the management of different MNOs. Some considerations among others in the Multi-MNO configuration are that there might be different configuration, security concerns, role based access privileges, physical security, coordination between the two MNOs technicians when performing maintenance activities that require rehoming the Shared O-RU.

For the Multi-MNO configuration, the three basic forms of rehoming, physical rehoming where the Shared O-RU is physically moved (with original O-DU parents or new O-DU parents), and management initiated rehoming caused from management level planned activities still apply to the Multi-MNO case.

#### Performance management use case of a Shared O-RU for Multi-MNO

This sub-use case applies to the running/operation of Shared O-RU.

This sub-use case describes the performance management operations of the Shared O-RU in a Multi-MNO configuration. Here the Shared O-RU is connected to O-DUs that are owned by different MNOs. This sub-use case is triggered after the O-DUs have configured the partitioned carrier information of a Shared O-RU. It is also invoked during run-time. The actors are the O-DUs, and Shared O-RU. The objective that the use case accomplishes is for each O-DU to establish subscriptions to receive performance management notifications regarding operation of the fronthaul between the O-DUs and Shared O-RU.

The sub-use case also describes how performance management logs, data and files are passed from the Shared O-RU to the connected O-DUs and data from O-DUs to SMO. Performance measurement data and telemetry information should be supported in three basic ways.

The same mechanisms described in performance measurement reporting for Single-MNO are also supported in a Multi- MNO configuration. The O-DU supported active push through streaming and event notification methods. The O-DU supports active collection by a consumer through attribute based and data scraping. The O-DU supports file-based reporting. The Shared O-RU supports active push through event notifications and active collection from O-DU via RPC and sftp. See clause 4.20.1.6 for further details. The main difference between the Single-MNO configuration and the Multi-MNO configuration is that there are additional considerations for sending performance information to two different mobile network operators. This entails aspects of security and support for different subscription filters. As such, two MNOs may want different collected data, may have different security controls based on role-access, different subscription filters and session operation. For example, one MNO might employ NetConf and another MNO Virtual Event Streaming (VES) messaging.

#### Antenna calibration sub-use case of a Shared O-RU for Multi-MNO

This sub-use case applies to the running/operation of Shared O-RU. This sub-use case describes the operation of antenna calibration using a Shared O-RU in a Multi-MNO configuration. This sub-use case is triggered after the O-DUs have configured the partitioned carrier information of a Shared O-RU. The actors are the O-DUs, and Shared O-RU. The objective that the use case accomplishes is for the Shared O-RU to be able to perform antenna calibration when connected to multiple O-DUs in a Multi-MNO configuration.

This sub-use case is essentially the same as for the Single-MNO configuration except the O-DUs which are connected to different operators may coordinate.

#### Dynamic resource shifting

Dynamic resource shifting is a Shared O-RU sub-use case related to how resources are moved to achieve improvements in performance. In this case, the resources that are shifted are fractions of radio spectrum utilized by cells. These resources correspond to PRBs and can be dynamically addressed by bandwidth parts. See 3GPP TS 38.211 [13], clause 4.4.5.

This sub-use case describes how radio spectrum resources can be shifted between cells that use overlapping spectrum and are served by Shared O-RU. This is performed automatically and dynamically (autonomously) without the need to perform time-consuming cell reconfiguration process.

The process of dynamic resource shifting is controlled by Near-RT RIC based on traffic-related KPIs or operator-defined parameters. Exact triggers for RIC to request for dynamic resource shifting are out of scope of this specification.

Important drivers for this use case are as follows:

* The use case shall deliver truly dynamic frequency resource shifting between cells.
* The use case shall preserve power consumption usage at the UE level.
* The use case shall utilize existing radio link control procedures.

#### Static resource shifting use case for Single-MNO

The Shared O-RU resource shifting use case describes how cell(s)/carrier(s) and their resources are optimally reallocated between O-DUs to achieve performance improvements, and resource optimization.

Static resource shifting is initiated by the SMO based on pre-configured triggers or policies, where it describes about how cell(s)/carrier(s) are moved between O-DUs. Two or more O-DUs connected to an O-RU utilize their respective carrier frequency resources exclusively during designated time periods, with potential optimization based on various resource reallocation requirements. O-RU configured with respective carrier frequency resources associated with two O-DUs, enabling the transfer of throughput between cells/carriers. This process involves the reconfiguration of cell and carrier resources between O-DUs to optimize performance.

Important drivers for this use case are as follows:

* The use case should provide mechanism for cell resource shifting between O-DUs.
* The use case shall utilize the existing cell/carrier configuration scenarios.

### Entity/resources involved in the use case

#### General aspects of entity/resources for Shared O-RU

The following sub-clauses describe the entity/resources that are important and key players for each of the sub-use cases for Shared O-RU. Many of the sub-use cases will have a similar set of actors/entities/resources involved in realise the operation related to that sub-use case.

In general, the identification of entity/resources serve as the basis for understanding a service model. The actors are trying to accomplish a particular goal, and the actions between the actors are the services that are the basis of a service model. The service model is a basis for an information model.

Sometimes, the actors in the sub-use cases perform differing operations, and sometimes there is a variable number of entities depending on the function.

#### Resource partitioning use case of Shared O-RU for Single-MNO

1. Sharing co-ordinator:
   1. Recovers the inventory of Shared O-RUs and O-DUs and determines how to partition the resources of a Shared O-RU between multiple different O-DUs.
2. SMO:
   1. Provides inventory of Shared O-RUs and O-DUs.
   2. Configures call home identities in external transport systems.
3. Shared O-RU orchestration rApp:
   1. Supports partitioning of individual carriers of a Shared O-RU between multiple different O-DUs operated by different operators.

#### Start-up use case of a Shared O-RU for Single-MNO

1. Shared O-RU:
   1. Performs call home and triggers establishment of network management session.
2. SMO:
   1. Recovers the software inventory of Shared O-RU and decides whether to upgrade operational software of Shared O-RU (hybrid management model).
3. O-DU:
   1. Recovers the software inventory of Shared O-RU and decides whether to upgrade operational software of Shared O-RU (hierarchical management model).

#### Configuration use case of a Shared O-RU for Single & Multi-MNO

1. SMO:
   1. Responsible for Shared O-RU common configuration (hybrid management model).
   2. Responsible for receiving notifications of modifications to Shared O-RU's configuration (Multi-MNO deployment model).
2. O-DU:
   1. Responsible for Shared O-RU common configuration (hierarchical management model).
   2. Responsible for Shared O-RU carrier configuration.
3. Shared O-RU orchestration rApp:
   1. Responsible for determining which O-DU performs Shared O-RU common configuration (hierarchical management model).
   2. Responsible for receiving notifications of modifications to Shared O-RU's configuration (Multi-MNO deployment model).
4. Shared O-RU:
   1. Responsible for notifying any subscriber of its modified configuration.
5. Sharing coordinator:
   1. Confirms that the Shared O-RU's configuration complies with a sharing agreement (Multi-MNO deployment model).

#### Supervision use case of a Shared O-RU for Single-MNO

1. Shared O-RU:
   1. Responsible for operating supervision on a per O-DU basis.
   2. Responsible for de-activating carriers associated with O-DU if there is supervision failure by O-DU.
   3. Responsible for signalling alarm to subscribers if O-DU supervision is lost.
2. O-DU:
   1. Responsible for repeatedly resetting the Shared O-RU's supervision timer.
3. SMO:
   1. Responsible for subscribing to alarm notifications (hybrid management model).
   2. Responsible for forwarding alarm notifications to Shared O-RU orchestration rApp.

#### Performance management use case of a Shared O-RU

1. Shared O-RU:
   1. Responsible for generating performance management notifications on a per partitioned carrier basis.
2. O-DU:
   1. Responsible for subscribing to receive performance management notifications from Shared O-RU.
3. SMO:
   1. The operator, or SMO, or another entity is an endpoint for the performance measurement data or reports.

#### Antenna Line Device (ALD) control use case of a Shared O-RU for Single-MNO

The following actors are involved in the ALD control use case.

1. Antenna line device control rApp (for the Shared O-RU):
   1. Responsible for determining which O-DU is responsible for ALD controller aspects.
2. O-DU:
   1. Responsible for implementing ALD controller.
3. Shared O-RU (hardware):
   1. Responsible for bridging between OFH and HDLC.
4. ALD (one or more ALD devices):
   1. Responsible for terminating HDLC.

#### Basic resiliency use case (active O-DU failure) for Single-MNO

The description below outlines the actors involved:

1. Shared O-RU:
   1. The Shared O-RU helps in detection of the O-DU connectivity/availability seen from O-RU perspective during a resiliency recovery operation. For example, when the active O-DU fails, the Shared O-RU informs other available and subscribed NetConf clients about the connection failure towards previously active O-DU.
2. O-DUs (host/tenant/ & other O-DUs):
   1. All the O-DUs connected to the Shared O-RU are actors that are relevant in some way during a resiliency operation. The active O-DU is main O-DU that performs the basic LCM and FCAPS functionality and terminates HDLC stack for ALDs operations connected to O-RU. In the various resiliency situations, where the active O-DU fails, then the other O-DU(s) connected to the Shared O-RU get involved in restoring the services for end users.
3. O-CU:
   1. O-CU receives cell related configurations from SMO and available cell details from O-DU(s). Based on the available resources reported by O-DU and desired availability of cells received from SMO, the O-CU activates or deactivates the cells in the O-DU using F1 interface.
4. SMO:
   1. Based on operator's decision, the SMO assigns initial O-DU roles (active, standby).
   2. The SMO makes high-level decisions related to failures and the various resiliency situations. For example, in a case where a O-DU is taken out of service, it might be intentionally removed, or physically removed permanently, which has impact to the Shared O-RU operation.

#### Antenna calibration use case of a Shared O-RU for Single-MNO

The following are the principal actors in the antenna calibration use case for a Shared O-RU.

1. Antenna calibration rApp (Shared O-RU):
   1. This App is responsible for determining which O-DU is responsible for the antenna calibration operation.
2. O-DU:
   1. Responsible for supporting Shared O-RU antenna calibration operation.
3. Shared O-RU (HW):
   1. Responsible for implementing antenna calibration.

#### Rehoming use case of a Shared O-RU for Single-MNO

The following are the principal actors in the rehoming use case:

1. Shared O-RU:
   1. The Shared O-RU is the entity that is being rehomed.
2. Original O-DUs:
   1. The original O-DU(s) are the O-DUs that the Shared O-RU were originally attached to.
3. New O-DUs attached to:
   1. These are the new O-DU(s) that the Shared O-RU will now be attached to.
4. SMO:
   1. It is also possible to rehome to a O-RU to a new management system (SMO). As such, the O-RU can be rehomed to a different SMO. For a hybrid configuration this would mean the O-RU is connected to a different SMO.

#### Reset use case of a Shared O-RU for Single-MNO

The following are the principal actors in the [shut down/reset] of a Shared O-RU use case.

1. Shared O-RU:
   1. The Shared O-RU is the entity that is being affected by the operation ([shutdown/reset]).
2. The [primary/host] O-DU:
   1. The [primary/host] O-DU for the Shared O-RU is the managing entity that will execute the command.
3. SMO:
   1. The operator using the SMO can issue the shut-down/reset command, and starts the use case for the operation.

#### Advanced resiliency sub-use cases of a Shared O-RU for Single-MNO

The following description details the actors involved in the advanced resiliency sub-use cases of a Shared O-RU:

1. Shared O-RU:

The Shared O-RU acts as actor in M-plane session supervision towards O-DU. As such O-RU detects M-plane link breaks and reports them in form of alarms towards other NetConf clients who still have active M-plane links with O-RU.

NOTE: If there is no client with active M-plane session available - the O-RU performs autonomous reset.

1. O-DUs (active/stand-by):
   1. All the O-DUs connected to the Shared O-RU are actors during a resiliency operation. The active O-DU performs the LCM, FCAPS functionality, and ALD operations with the O-RU. In various resiliency scenarios, when the active O-DU fails, the SMO may decide to trigger the O-DU role change (active/standby) to restore service availability for end users.
2. SMO:
   1. Based on operator's decision, the SMO assigns initial O-DU roles (active, stand-by). The SMO may then decide to perform switch between O-DU's roles for specific O-DUs initially "paired" by operator based on alarms/performance counters/operator's decision.

NOTE: The sub-use cases assume the hierarchical deployment scenarios.

#### Load-balancing sub-use case of a Shared O-RU

The following description details the actors involved in the resiliency use case of a Shared O-RU:

1. Shared O-RU:
   1. The Shared O-RU is actor that has its resources adjusted by the policy enforcer.
2. O-DUs (host/tenant/ & other O-DUs):
   1. All the O-DUs connected to the Shared O-RU are actors that are relevant because they perform the load balancing working with the O-RU. They can also provide measurements relevant to the load-balancing policy.
3. Policy enforcer (SMO, RIC, etc):
   1. The policy enforcer is an actor that executes the load-balancing policy. The policy defines the characteristics, triggers, and timing of how and when load-balancing occurs.

#### Coordinated reset of a Shared O-RU sub-use case for Multi-MNO

The following description details the actors involved in the coordinate reset of a Shared O-RU use case:

1. Shared O-RU:
   1. The Shared O-RU is actor that would be reset from the host O-DU.
2. Shared O-RU Host (SOH):
   1. The SOH coordinates and issues the coordinate reset of a Shared O-RU.
3. Shared Resource Operators (non-SOH SROs):
   1. All the O-DUs connected to the Shared O-RU are actors that are relevant because they can request a coordinate reset also for the Shared O-RU.
4. SMO/Operator:
   1. The SMO operator can initiate a coordinated reset for the Shared O-RU.
5. Partner SMO/Partner operator
   1. The SMO/partner operator can initiate a coordinated reset for the Shared O-RU.

#### Management of Shared O-RU during O-DU software update sub-use case for Shared O-RU for Single & Multi-MNO

The following description details the actors involved in the management of Shared O-RU during the SW update of O-DU subusecase:

1. Shared O-RU:
   * The Shared O-RU which has its resources shared with the SW updated O-DU and other O-DUs.
2. O-DU SW change management rApp:
   * The rApp that supports SMO and Non-RT RIC in managing the SW change of the O-DU. This is an optional functionality which can alternately be implemented as an extended capability in one of the existing SMO functions. The capabilities of the O-DU SW change management rApp includes but not limited to the following:
     1. Validation of change management plan & impact assessment.
     2. Identification of the candidate Shared O-RU resources that can be shared based on the change plan and associated policies.
     3. Identification of the candidate O-DU for SW update.
     4. Translation of change management plan to O-DU and O-RU configurations.
     5. Recommendation of the configuration for Shared O-RU provisioning for m-plane setup with updated O- DU.
     6. Recommendation of configuration for traffic evacuation of Shared O-RU and O-DU before the O-DU SW update.
     7. Monitoring and management of SW update by coordinating with other SMO functions, Shared O-RU and rApps.
     8. Management of fallout scenarios and recovery.
3. Shared O-RU orchestration rApp:
   * Supports partitioning of individual carriers of a Shared O-RU between updated O-DU and other O-DUs. This is an optional functionality which can alternately be implemented as an extended capability in one of the existing SMO functions.
4. SMO:
   * Maintains inventory of Shared O-RUs and O-DUs.
   * Configures O-DUs and O-RUs with the support of the rApps.
   * Subscribe to alarms, notifications and measurements from O-DU and O-RU.
   * Sharing of alarm, notification and measurements from O-DU and O-RU with the rApps.
5. O-DU SW planner: Personnel:
   * Prepares O-DU SW change management strategy and associated plan. Based on the strategy and plan O-DU SW planner identifies the right software version, prepares target O-DU identification policies (for e.g., least loaded O-DU), Shared O-RU load sharing criteria (e.g., component carrier to be allocated), identifies carrier evacuation criteria, etc.
6. Sharing coordinator: Personnel:
   * Confirms that the Shared O-RU's configuration complies with a sharing policy defined as per the O-DU SW change management requirement.
7. Updated O-DU:
   * Responsible for load sharing the O-RU resources such as component carriers with other active O-DUs.
8. Original O-DUs:
   * The original O-DU(s) are the O-DUs that the Shared O-RU were originally attached to.

#### Resource partitioning use case of Shared O-RU for Multi-MNO configuration

1. Owning operator sharing coordinator:
   1. Recovers the inventory of Shared O-RUs and O-DUs and determines how to partition the resources of a Shared O-RU between multiple different O-DUs.
2. Owning operator SMO:
   1. Provides inventory of Shared O-RUs and O-DUs.
   2. Configures call home identities in external transport systems.
3. Shared O-RU owning operator orchestration rApp:
   1. Supports partitioning of individual carriers of a Shared O-RU between multiple different O-DUs operated by different operators.
4. Participating operator SMO:
   1. Handles management of participating operator O-DU.

#### Start-up use case of a Shared O-RU for Multi-MNO configuration

1. Shared O-RU:
   1. Performs call home and triggers establishment of network management session.
2. Owning operator SMO:
   1. Recovers the software inventory of Shared O-RU and decides whether to upgrade operational software of Shared O-RU (hybrid management model).
3. Participating operator SMO:
   1. Handles management of participating operator O-DU.
4. Owning operator O-DU:
   1. Recovers the software inventory of Shared O-RU and decides whether to upgrade operational software of Shared O-RU (hierarchical management model).
5. Participating operator O-DU:
   1. Expected to be a Shared O-RU Operator (SRO). The participating operator O-DU handles configuration of its component carriers with the Shared O-RU that it is connected to and has a communication link up.

#### Supervision use case of a Shared O-RU for Multi-MNO configuration

1. Shared O-RU:
   1. Responsible for operating supervision on a per O-DU basis.
   2. Responsible for de-activating carriers associated with O-DU if there is supervision failure by O-DU.
   3. Responsible for signaling alarm to subscribers if O-DU supervision is lost.
2. Owning operator O-DU:
   1. Responsible for repeatedly resetting the Shared O-RU's supervision timer.
3. Participating operator O-DU:
   1. Expected to be a Shared O-RU Operator (SRO). Has a heartbeat timer with the Shared O-RU that it is connected to and has a communication link up.
4. Owning operator SMO:
   1. Responsible for subscribing to alarm notifications (hybrid management model).
   2. Responsible for forwarding alarm notifications to Shared O-RU orchestration rApp.
5. Participating operator SMO:
   1. Handles management of participating operator O-DU.

#### Antenna Line Device (ALD) control use case of a Shared O-RU for Multi-MNO configuration

The following actors are involved in the ALD control use case.

1. Owning operator antenna line device control rApp (for the Shared O-RU):
   1. Responsible for determining which O-DU is responsible for ALD controller aspects.
2. Owning operator O-DU:
   1. Responsible for implementing ALD controller.
3. Participating operator O-DU:
   1. Expected to be a Shared O-RU Operator (SRO). Does not perform any operations directly with ALD until it becomes host under failure situations.
4. Participating operator SMO:
   1. Handles management of participating operator O-DU.
5. Shared O-RU (hardware):
   1. Responsible for bridging between OFH and HDLC.
6. ALD (one or more ALD devices):
   1. Responsible for terminating HDLC.

#### Antenna calibration use case of a Shared O-RU for Multi-MNO configuration

The following are the principal actors in the antenna calibration use case for a Shared O-RU.

1. Owning operator antenna calibration rApp (Shared O-RU):
   1. Responsible for determining which O-DU is responsible for configuring common aspects of antenna calibration.
2. Owning operator O-DU:
   1. Responsible for supporting Shared O-RU coordinated calibration.
3. Participating operator O-DU:
   1. Expected to be a Shared O-RU Operator (SRO). The participating operator O-DU and does not perform calibration operations.
4. Shared O-RU (HW):
   1. Responsible for implementing coordinated calibration.

#### Rehoming use case of a Shared O-RU for Multi-MNO

The following are the principal actors in the rehoming use case for Multi-MNO:

1. Shared O-RU:
   1. The Shared O-RU is the entity that is being rehomed.
2. Original O-DUs:
   1. The original O-DU(s) (the owning operator O-DU and participating operator O-DU) are the O-DUs that the Shared O-RU were originally attached to. These O-DUs belong to different MNOs (the owning MNO and participating MNO).
3. New O-DUs attached to:
   1. These are the new O-DU(s) (the owning operator O-DU and participating operator O-DU) that the Shared O- RU will now be attached to. These O-DUs belong to different MNOs. The new O-DU(s) could be different O- DUs than the original O-DU(s).
4. Owning operator SMO:
   1. The owning operator SMO connects the owning operator O-DU to the Shared O-RU.
5. Participating operator SMO:
   1. The participating operator SMO connects the participating operator O-DU which is connected to the Shared O- RU.

#### Performance management use case of a Shared O-RU for Multi-MNO

1. Shared O-RU:
   1. Responsible for generating performance management notifications on a per partitioned carrier basis.
2. Managing operator O-DU:
   1. Responsible for subscribing to receive performance management notifications from Shared O-RU.
3. Participating operator O-DU:
   1. The O-DU of the participating operator that is also connected to the Shared O-RU.
4. Managing operator SMO:
   1. The managing operator SMO, or another entity is an endpoint for the performance measurement data or reports.
5. Participating operator SMO:
   1. The SMO of the participating operator which is an endpoint for the performance measurement data or reports from the participating operator O-DU.

#### Antenna calibration use case of a Shared O-RU for Multi-MNO

The following are the principal actors in the antenna calibration use case for a Shared O-RU.

1. Antenna calibration rApp (Shared O-RU) of owning operator (SMO):
   1. The owning operator App is responsible for telling the owning operator O-DU that it is responsible for the antenna calibration operation.
2. Owning operator O-DU, participating operator O-DU:
   1. The owning operator O-DU is responsible for supporting Shared O-RU antenna calibration operation.
3. Shared O-RU (HW):
   1. Responsible for implementing antenna calibration.

#### Dynamic resource shifting use case of a Shared O-RU

The following are the principal actors in the dynamic resource shifting use case:

1. Shared O-RU:
   1. The Shared O-RU is the entity that serves cells to the air.
2. O-DU1, O-DU2:
   1. Responsible for processing of user data and radio resource handling.
3. SMO:
   1. Responsible for configuration of Near-RT RIC, O-DUs and O-RU (used architecture does not matter for this sub-use case).
4. Near-RT RIC:
   1. Responsible for control of dynamic resource shifting between cells served by cooperating O-DUs.

#### Static resource shifting use case for Single-MNO

The following are the actors in the static resource shifting use case:

1. Shared O-RU:
   1. The Shared O-RU is the entity that serves cells to the air.
   2. The Shared O-RU terminates open fronthaul interface towards O-DU(s) and optionally towards SMO.
2. O-DU1, O-DU2:
   1. Responsible for processing of user data and handle radio resources.
   2. O-DU(s) terminate open fronthaul interface towards O-RU.
   3. O-DU(s) terminate F1 interface towards O-CU.
3. O-CU:
   1. O-CU terminates F1 interface towards O-DU(s).
   2. O-CU is responsible for RRC protocol handling for UEs.
4. SMO:
   1. Responsible for configuration of O-CU, O-DUs and O-RU (depending on deployment SMO configures O-RU directly or through O-DU).
   2. In hybrid deployment SMO terminates open fronthaul interface towards O-RU.

### Solution

#### General aspects of solutions for all Shared O-RU use cases

The following clauses describe solutions that apply to each of the sub-use cases. They describe different solutions for key aspects of Shared O-RU operation, such as the start-up, configuration, supervision, and performance management among other things. There are a few general aspects of each of these solutions that share similar goals, assumptions, actors, and roles and are captured in table 4.20.3.1-1.

###### Table 4.20.3.1-1: General aspects of solutions for all Shared O-RU use cases

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related use** |
| Common Goals | All the following sub-use cases involve either getting the Shared O-RU operational or keeping it operational. Each of the sub-use cases explore a different aspect of these two common goals. Each of the sub-use cases has a different specific goal and is trying to accomplish a particular dimension of Shared O-RU operation. This sub-use case is only applicable to the hierarchical configuration.  **Bringing into operation** - Many of the sub-use cases have the goal to get the Shared O-RU operational and capable of supporting over the air traffic. These include the resource partitioning, start-up, configuration, and supervision sub-use cases. They are "day 0" related use cases.  **Maintaining service** - The other set of sub-use cases are related to maintaining service. These include the supervision, performance, and resiliency sub-use cases. These use cases relate to the continued operation of the Shared O-RU, thus "day 2" operation. |  |
| Common Actors | The Shared O-RU and the multiple O-DUs that the Shared O-RU is connected to are common actors that apply to all the following sub-use cases.  The common configurations that apply to the sub-use cases many also involve the management system between two operators.  Some actors can be controlled by different operators and / or provided by different solution providers. |  |
| Common Assumptions | For the following sub-use cases it is assumed that all relevant functions and components are instantiated.  Inventory management systems identify Shared O-RU and the available O- DUs as inventory elements.  For all of the sub-use cases, an O-RU resources are statically partitioned between O-DUs (static configuration) |  |

All the sub-use cases also apply a set of common configurations. These sub-use cases are intended to apply to Single Operator (MNO) and Multiple Operator (MNO) configurations. The configurations will be important to service providers, wireless operators as they roll out new networks. Those configurations can then be further broken down into either hybrid or hierarchical configurations. In a hierarchical configuration the SMO performs configuration and FCAPS/LCM with the O-DU which in does that for the O-RUs. In a hybrid configuration, the SMO can perform operations with either the O-DU and/or the O-RU. The O-DUs that share the O-RU can be from either common or different vendors. It can be envisaged that many more possible configurations or variations of those basic configurations could be supported by the following sub-use cases. For example, more than just two O-DUs. Sub-use cases present solutions that are intended to apply to all these possible configurations. Exceptions can arise from the variations of the resiliency sub-use case.

The collection of the sub-use cases either bring a Shared O-RU into operation by performing vital aspects of getting a Shared O-RU initially working; or they try to keep a Shared O-RU operational. Additionally, these sub-use cases apply to some other use cases such as class 2 BBU pooling (BBU pooling to achieve RAN elasticity use case), RAN sharing, and advanced multi-vendor multi-operator network slicing operation (multi-vendor slices). Support for different configuration, resiliency operation and, supervision that apply to Shared O-RU will often be relevant to these other related use cases as well. These other related use cases can use the following sub-use cases as building blocks operations because they provide basic goals and objectives to getting a Shared O-RU operational and keeping it running. Thus, the sub-use cases are likely be applicable to many those use cases outside of just this Shared O-RU use case.

* + - 1. Resource partitioning use case of Shared O-RU for Single-MNO The following describes the solution for the resource partitioning sub-use case for a Shared O-RU. The context of the resource partitioning use case of Shared O-RU is captured in table 4.20.3.2-1.

###### Table 4.20.3.2-1: Resource partitioning use case of Shared O-RU

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | rApp has details on how a Shared O-RU's resource are to be partitioned. |  |
| Actors and Roles | SMO provides inventory details of Shared O-RU and O-DUs.  Sharing co-ordinator recovers inventory and decides on partitioning of carriers between O-DUs.  Sharing co-ordinator uses resource partitioning rApp to partition resource configuration of a Shared O-RU between O-DUs. |  |
| Assumptions | All relevant functions and components are instantiated.  Inventory management systems identify Shared O-RU carrier capabilities and available O-DUs. |  |
| Begins when | Sharing co-ordinator decides to share an O-RU between multiple O-DUs. |  |
| Pre-conditions | Inventory system is up to date. |  |
| Step 1 (M) | Sharing co-ordinator recovers O-RU and O-DU inventory and decides on resource partitioning. |  |
| Step 2 (M) | Sharing co-ordinator resource partitioning rApp to partition Shared O-RU between multiple O-DUs. |  |
| Step 3 (M) | rApp signals O-DU identity(ies) to configuration management system. |  |
| Step 4 (M) | Configuration management system configures transport systems with call home identity(ies) for O-DU(s). | O-RAN.WG4.MP  [28], clause 6.2.5 |
| Ends when | rApp has details on how Shared O-RU's resource are to be partitioned. |  |
| Exceptions | None identified. |  |
| Post Conditions | None identified. |  |

The flow diagram of the resource partitioning use case is given in figure 4.20.3.2-1.

![Generated by PlantUML](../assets/images/8363003ad0c0.png)

###### Figure 4.20.3.2-1: Resource partitioning use case

#### Start-up use case of Shared O-RU for Single-MNO

The following describes the solution for the start-up sub-use case for a Shared O-RU. The context of the Shared O-RU start-up use case is captured in table 4.20.3.3-1.

###### Table 4.20.3.3-1: Shared O-RU start-up use case

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | The Shared O-RU is operating with the necessary software version and has established network connectivity with the O-DU(s) and, for hybrid deployments, the SMO. |  |
| Actors and Roles | Shared O-RU calls home and establishes network management session.  SMO is responsible for software management for the Shared O-RU when operating in hybrid management mode.  O-DU is responsible for software management for the Shared O-RU when operating in hierarchical management mode. |  |
| Assumptions | None. |  |
| Begins when | Shared O-RU powers on. |  |
| Pre-conditions | Transport systems (DHCP server) has been configured with call home configuration information. |  |
| Step 1 (M) | Establish synchronization:  Each O-DU and Shared O-RU establish synchronisation with a timing source, for example PTP (IEEE 1588) or Sync-E. See NOTE 1, NOTE 2. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Step 2 (M) | Synchronization State Change Notification:  After the O-RU has a synchronisation source, all subscribed O-DU(s) are notified through a Synchronisation State Change Notification. We expect the O-RU to be in the sync state "*LOCKED*".  The Synchronisation State Change Notification goes from Shared O-RU to all subscribed O-DU(s).  It is possible that the synchronisation procedure can happen in parallel to the other steps of the start-up sub-use case. Thus, many of the other steps in this use case can happen as the synchronization procedure occurs. Even though this is shown as "step 2" this can complete after other steps. |  |
| Step 3 (ALT) | [Shared O-RU operated in hybrid management mode]  Shared O-RU calls home and triggers establishment of network management session with SMO. | O-RAN.WG4.MP  [28], clause 6.3 and/or clause 6.9.2 |
| Step 4 (ALT) | [Shared O-RU operated in hierarchical management mode]  Shared O-RU calls home and triggers establishment of network management session with O-DU#1. | O-RAN.WG4.MP  [28], clause 6.3 |
| Step 5 (ALT) | [Shared O-RU operated in hierarchical management mode]  Shared O-RU calls home and triggers establishment of network management session with O-DU#2. | O-RAN.WG4.MP  [28], clause 6.3 |
| Step 6 (ALT) | [Shared O-RU operated in hybrid management mode]  SMO recovers software inventory. | O-RAN.WG4.MP  [28], clause 8.4 |
| Step 7 (O) | [Shared O-RU operated in hybrid management mode and software update required]  SMO triggers download of new software. | O-RAN.WG4.MP  [28], clause 8.5 |
| Step 8 (O) | [Shared O-RU operated in hybrid management mode and software update required]  O-RU downloads software files. | O-RAN.WG4.MP  [28], clause 8.5 |
| Step 9 (O) | [Shared O-RU operated in hybrid management mode and software update required]  SMO triggers the installation and activation of the software. | O-RAN.WG4.MP  [28], clauses 8.6  and 8.7 |
| Step 10 (O) | [Shared O-RU operated in hybrid management mode and software update required]  SMO brings active software into operation. | O-RAN.WG4.MP  [28], clause 8.7 |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Step 11 (ALT) | [Shared O-RU operated in hierarchical management mode]  O-DU recovers software inventory. | O-RAN.WG4.MP  [28], clause 8.4 |
| Step 12 (O) | [Shared O-RU operated in hierarchical management mode and software update required]  O-DU triggers download of new software. | O-RAN.WG4.MP  [28], clause 8.5 |
| Step 13 (O) | [Shared O-RU operated in hierarchical management mode and software update required]  O-RU downloads software files. | O-RAN.WG4.MP  [28], clause 8.5 |
| Step 14 (O) | [Shared O-RU operated in hierarchical management mode and software update required]  O-DU triggers the installation and activation of the software. | O-RAN.WG4.MP  [28], clauses 8.6  and 8.7 |
| Step 15 (O) | [Shared O-RU operated in hierarchical management mode and software update required]  O-DU brings active software into operation. | O-RAN.WG4.MP  [28], clause 8.7 |
| Ends when | The Shared O-RU is operating with the necessary software version and has established network connectivity with the O-DU and, for hybrid deployments, the SMO. |  |
| Exceptions | None identified. |  |
| Post Conditions | None identified. |  |
| NOTE 1: It is expected the O-RU and all O-DUs connected it would share the same synchronisation source otherwise, the O-DUs will drift in timing.  NOTE 2: For more details on O-RU sync and O-RU loss of sync, see O-RAN.WG4.MP [28], clause 15.3.3. | | |

The flow diagram of the Shared O-RU start-up use case is given in figure 4.20.3.3-1.

![Generated by PlantUML](../assets/images/0ceac5c68c90.png)

###### Figure 4.20.3.3-1: Shared O-RU start-up use case

#### Configuration use case of a Shared O-RU for Single & Multi-MNO

The following describes the solution for the configuration sub-use case for a Shared O-RU. The context of the Shared O-RU configuration use case is captured in table 4.20.3.4-1.

###### Table 4.20.3.4-1: Shared O-RU configuration use case

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | The Shared O-RU is configured to operate with multiple O-DUs. |  |
| Actors and Roles | SMO responsible for Shared O-RU common configuration when operating in hybrid management mode.  SMO optionally can subscribe to receive notifications of modifications to Shared O-RU's configuration.  When operating in hierarchical management mode, rApp is responsible for determining which O-DU is responsible for common configuration aspects.  Shared O-RU responsible for role-based access control based on PLMN- Id.  O-DU is responsible for Shared O-RU carrier configuration and optionally, when operating in hierarchical management mode, the Shared O-RU common configuration.  Sharing co-ordinator can check the Shared O-RU's committed configuration complies with any sharing agreement. |  |
| Assumptions | None. |  |
| Begins when | Shared O-RU has started up and has been configured with correct software version. |  |
| Pre-conditions | None. |  |
| Step 1 (O) | [Shared O-RU operated in hierarchical management mode]  rApp determines which O-DU is responsible for common configuration of Shared O-RU. |  |
| Step 2 (M) | rApp triggers the configuration of the common aspects of the Shared O- RU. |  |
| Step 3 (M) | Non-RT RIC triggers the configuration of the common aspects of the Shared O-RU. |  |
| Step 4 (ALT) | [Hybrid or neutral host management mode]  SMO uses OpenFronthaul interface to configure common aspects of Shared O-RU. | O-RAN.WG4.MP  [28], clause 9 |
| Step 5 (ALT) | [Hierarchical management mode]  SMO uses O1 interface to configure Shared O-RU's common aspects via O-DU. |  |
| Step 6 (ALT) | [Hierarchical management mode]  O-DU uses OpenFronthaul interface to configure common aspects of Shared O-RU. | O-RAN.WG4.MP  [28], clause 9 |
| Step 7 (O) | Shared O-RU calls home to tenant's O-DU (multi-operator). |  |
| Step 8 (O) | Shared O-RU calls home to tenant's SMO (multi-operator). |  |
| Step 9 (O) | rApp triggers the configuration of the carrier aspects of the Shared O-RU (non-neutral host). |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Step 10 (O) | Non-RT RIC triggers the configuration of the carrier aspects of the Shared O-RU. |  |
| Step 11 (O) | SMO configures O-DU#1 and partitioned carrier information #1. |  |
| Step 12 (O) | O-DU#1 configures partitioned carrier information #1 on Shared O-RU non-neutral host). | O-RAN.WG4.MP  [28], clause 9 |
| Step 13 (O) | Tenant's SMO configures O-DU#2 and partitioned carrier information #2 (multi-operator). |  |
| Step 14 (M) | O-DU#2 configures partitioned carrier information #2 on Shared O-RU. | O-RAN.WG4.MP  [28], clause 9 |
| Step 15 (O) | Shared O-RU implements role-based access control based oplmn-id#2. |  |
| Step 16 (O) | The Shared O-RU notifies SMO of its modified configuration. | O-RAN.WG4.MP  [28], clause 9.4 |
| Step 17 (O) | SMO signals Non-RT RIC information pertaining to changed configuration. |  |
| Step 18 (O) | Non-RT RIC signals changed configuration to Shared O-RU orchestration rApp. |  |
| Step 19 (O) | Sharing co-ordinator checks that the changed configuration compliance with the sharing agreement. |  |
| Step 20 (O) | Host sharing co-ordinator indicates non-compliance with tenant sharing co-ordinator and remedial actions agreed (out of band exchange). |  |
| Ends when | The Shared O-RU is configured with common aspects and partitioned carrier#1 for O-DU#1 and partitioned carrier #2 for O-DU#2. |  |
| Exceptions | None identified. |  |
| Post Conditions | See NOTE. |  |
| NOTE: Before activation of carriers, O-RU needs to have sync state "*LOCKED*" with its sync source. For more details, see O-RAN.WG4.MP [28], clause 15.3.3. | | |

The flow diagram of the Shared O-RU configuration use case is given in figure 4.20.3.4-1.

![Generated by PlantUML](../assets/images/329e484bc033.jpg)

###### Figure 4.20.3.4-1: Shared O-RU configuration use case

* + - 1. Supervision use case of a Shared O-RU for Single-MNO The following describes the solution for the supervision sub-use case for a Shared O-RU. The context of the supervision use case of a Shared O-RU is captured in table 4.20.3.5-1.

###### Table 4.20.3.5-1: Supervision use case of a Shared O-RU

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | The Shared O-RU operates watchdog timers with each of its O-DUs and ceases transmitting on a partitioned carrier associated with an O-DU if is watchdog timer to that O-DU expires. |  |
| Actors and Roles | Shared O-RU operates watchdog timers and deactivates any carriers associated with an expired watchdog timer.  O-DU repeatedly resets the Shared O-RU's supervision timer. SMO forwards any alarms to Shared O-RU rApp. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Assumptions | O-DUs are operating fronthaul control and user plane for their respective partitioned carriers.  SMO has subscribed to receive alarm notifications (hybrid management model). |  |
| Begins when | An O-DU subscribes to receive supervision notifications. |  |
| Step 1 (Loop) | O-DU#1 performs supervision operations. |  |
| Step 2 (O) | Shared O-RU detects supervision failure with O-DU#1 and ceases transmitting on partitioned carrier associated with O-DU. |  |
| Step 3 (O) | Shared O-RU sends alarm notification to Fault Management |  |
| Step 4 (O) | Fault management sends alarm notification to Non-RT RIC. |  |
| Step 5 (O) | Non-RT RIC sends alarm notification to Shared O-RU orchestration rApp. |  |
| Step 6 (Loop) | O-DU#2 performs supervision operations. |  |
| Step 7 (O) | Shared O-RU detects supervision failure with O-DU#2 and ceases transmitting on partitioned carrier associated with O-DU. |  |
| Step 8 (O) | Shared O-RU sends alarm notification to fault management. |  |
| Step 9 (O) | Fault management sends alarm notification to Non-RT RIC. |  |
| Step 10 (O) | Non-RT RIC sends alarm notification to Shared O-RU orchestration rApp. |  |
| Ends when | O-DU terminates subscription to supervision notification. |  |
| Exceptions | None identified. |  |
| Post Conditions | None identified. |  |

The flow diagram of the supervision use case of a Shared O-RU is given in figure 4.20.3.5-1.

![Generated by PlantUML](../assets/images/80bc186baa9e.png)

###### Figure 4.20.3.5-1: Supervision use case of a Shared O-RU

#### Performance management use case of a Shared O-RU for Single-MNO

The following describes the solution for the performance management sub-use case for a Shared O-RU. The context of the performance management use case of a Shared O-RU is captured in table 4.20.3.6-1.

###### Table 4.20.3.6-1: Performance management use case of a Shared O-RU

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Each O-DU has established subscriptions to receive performance management notifications regarding operation of the fronthaul between the O-DUs and Shared O-RU.  The O-DU and Shared O-RU are able to report performance measurement data towards their consumers in a Multi-MNO configuration. |  |
| Actors and Roles | Shared O-RU generates performance management notifications on a per partitioned carrier basis.  O-DU subscribes to receive performance management notifications from Shared O-RU. |  |
| Assumptions | O-DU has configured performance management metrics for respective partitioned carrier. |  |
| Begins when | Fronthaul control and user plane is operational between O-DU and Shared O-RU. |  |
| Step 1 (M) | O-DU#1 subscribes to receive PM notifications from Shared O-RU. |  |
| Step 2 (M) | O-DU#2 subscribes to receive PM notifications from Shared O-RU. |  |
| Step 3 (loop) | Shared O-RU sends PM notification to O-DU#1. |  |
| Step 4 (loop) | Shared O-RU sends PM notification to O-DU#2. |  |
| **O-DU to SMO performance operations** | | |
| Step 1 (O) | **PM event notification reporting**  The O-DU (producer) sends performance data to the SMO (consumer) through an event notification. |  |
| Step 2 (O) | **Streaming PM reports**  The O-DU establishes a persistent connection to the SMO (consumer) and sends performance data. |  |
| Step 3 (O) | **Attribute-based or URI-based collection**  Performance data is read by the consumer (SMO) through configuration management attribute. Alternatively, the O-DU can support a data scraping method where a collector (SMO) reads the data from a pre- defined URI. |  |
| Step 4 (O) | **Producer or PM file upload (file upload)**  O-DU uploads a PM file to the SMO.  See NOTE 1. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Step 5 (O) | **Consumer downloads PM file (file download)**  O-DU issues file ready notification to SMO about the data being ready for download, or SMO periodically polls the O-DU. Afterwards, the SMO (consumer) can download the PM file. |  |
| **O-RU to O-DU performance operations (in hierarchical configuration)** | | |
| Step 1 (O) | **PM event notification reporting**  The O-RU sends performance data to the O-DU through an event notification. The notification is sent to a subscriber of performance data. |  |
| Step 1 (M) | **O-DU requests for O-RU to start sending PM data**  O-DU invokes an RPC to give PM credentials, target URI, and periodicity notification interval to the Shared O-RU. This includes all the necessary information for the O-RU to perform a file transfer to an endpoint periodically.  See NOTE 2. |  |
| Step 2 (M) | **Shared O-RU uploads PM file**  The Shared O-RU periodically uploads a performance file to the target URI using the PM credentials given by the O-DU. |  |
| **O-RU to SMO performance operations (in hybrid configuration)** | | |
| Step 1 (O) | **PM event notification reporting**  The O-RU sends performance data to the SMO through an event notification via M-plane. |  |
| Step 1 (O) | **SMO requests for O-RU to start sending PM data**  SMO invokes an RPC to give PM credentials, target URI, and periodicity notification interval to the Shared O-RU. This includes all the necessary information for the O-RU to perform a file transfer to an endpoint periodically. |  |
| Step 2 (O) | **Shared O-RU uploads PM file**  The Shared O-RU uploads performance file to target URI using PM credentials given by the SMO. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Ends when | 1. Subscriptions setup: O-DU terminates subscription to performance management notification. 2. O-DU to SMO sending PM data: Use case ends with the producer (O-DU) sending performance data to the consumer (SMO). 3. O-RU sending performance data: Use case ends with the producer (O-RU) starting to send performance data to the subscriber. |  |
| Exceptions | None identified. |  |
| Post Conditions | The consumer has received performance data and may perform post processing operations on the data. |  |
| NOTE 1: When the O-DU sends performance files received from a Shared O-RU, they are converted to the proper 3GPP format before sending to SMO. See O-RAN WG5.O-DU-O1 [25].  NOTE 2: The O-DU establishes a framework for the Shared O-RU to send PM files. This operation is performed only once, thereafter, the Shared O-RU sends the PM files periodically. | | |

The flow diagram of the performance management use case of a Shared O-RU is given in figure 4.20.3.6-1.

![Generated by PlantUML](../assets/images/6d0ce9b6596d.png)

###### Figure 4.20.3.6-1: Performance management use case of a Shared O-RU for Single-MNO

#### Antenna Line Device (ALD) control use case of a Shared O-RU for Single-MNO

The following describes the solution for the ALD control sub-use case for a Shared O-RU.

The context of the antenna line device control use case of a Shared O-RU is captured in table 4.20.3.7-1.

###### Table 4.20.3.7-1: Antenna line device control use case of a Shared O-RU

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | The ALD connected to Shared O-RU is configured to operate with ALD controller. |  |
| Actors and Roles | rApp is responsible for determining which O-DU is responsible for ALD controller aspects.  O-DU is responsible for implementing ALD controller.  O-RU is responsible for bridging between OFH and HDLC. ALD is responsible for terminating HDLC. |  |
| Assumptions | None. |  |
| Begins when | Shared O-RU has started up and has been configured with correct software version. |  |
| Pre-conditions | None. |  |
| Step 1 (M) | rApp determines which O-DU is responsible for performing ALD controller functionality. |  |
| Step 2 (M) | rApp triggers the configuration of the ALD controller for Shared O-RU. |  |
| Step 3 (M) | Non-RT RIC triggers the configuration of ALD controller for Shared O-RU. |  |
| Step 4 (M) | SMO uses O1 interface to configure ALD controller in O-DU. |  |
| Step 5 (M) | O-DU uses OpenFronthaul interface to configure ALD aspects of Shared O-RU. | O-RAN.WG4.MP  [28], clause 9 |
| Step 6 (M) | O-DU uses OpenFronthaul interface to signal ALD. | O-RAN.WG4.MP  [28], clause 14.4 |
| Step 7 (M) | Shared O-RU provides interworking between OFH and HDLC. | O-RAN.WG4.MP  [28], clause 14.4 |
| Ends when | ALD connected to Shared O-RU is configured correctly. |  |
| Exceptions | None identified. |  |
| Post Conditions | None identified. |  |

The flow diagram of the antenna line device use case is given in figure 4.20.3.7-1.

![Generated by PlantUML](../assets/images/ad72ff144dcb.png)

###### Figure 4.20.3.7-1: Antenna line device use case

#### Basic resiliency use case (active O-DU failure) for Single-MNO

The following describes the solution for the basic resiliency sub-use case for a Shared O-RU. The context of the basic resiliency use case of a Shared O-RU is captured in table 4.20.3.8-1.

###### Table 4.20.3.8-1: Resiliency use case of a Shared O-RU

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | The goal of this sub-use case is to handle situations related to resiliency operations with the Shared O-RU when the O-DU is out of service.  This is a service impacting use case. |  |
| Actors and Roles | Shared O-RU  The Shared O-RU handles the fronthaul and air interfaces and the reporting of performance counters and failures.  O-DUs (active/standby O-DUs)  All the O-DUs connected to the Shared O-RU are actors that are involved in basic resiliency scenario.  O-CU:  O-CU receives cell related configurations from SMO and  available cell details from O-DU(s). Based on the available resources reported by O-DU and desired availability of cells |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
|  | received from SMO, the O-CU activates or deactivates the cells in the O-DU using F1 interface.  SMO:  The SMO configures the role of O-DUs as active or standby O-DUs and informs these roles to Shared O-RU through O-DU in hierarchical deployment. It makes high-level decisions related to conditions listed in clause 4.20.1.8. |  |
| Assumptions | It is assumed that when active O-DU fails, there is still at least one standby O-DU having active NetConf session with the Shared O-RU.  It is assumed that the resiliency operations are intended to take over the Shared O-RU operation and recover the service to the end user. |  |
| Begins when | There are many possible scenarios that trigger the basic resiliency use case as described in clause 4.20.1.8.  In this basic resiliency use case, only the complete failure of a O-DU is considered.  The purpose of the resiliency use case is to keep the Shared O-RU & O- DU system operational in the case of a failure of the active O-DU.  This use case begins when the active O-DU encounters a failure (operational state = disabled). |  |
| Pre-conditions | The Shared O-RU has the NetConf connectivity with two or more O-DUs.  CU plane monitoring has been properly configured which sets up a communication monitoring interval for the interface between the Shared O-RU and active O-DU.  O-DUs have subscribed to alarm notifications successfully. |  |
| **Basic resiliency use case - Initial system setup** | | |
| Step 1.1 (M) | The SMO may configure O-DU#1 to take active role in controlling the Shared O-RU. It then configures the cells and corresponding carrier resources (including NRCGI(s) for the cells) via the O1 interface. |  |
| Step 1.2 (M) | O-DU configures the carriers in O-RU, corresponding to the carrier resources outlined in step 1. |  |
| Step 1.3 (M) | The SMO may configure O-DU#2 to take standby role via O1 interface. |  |
| Step 1.4 (M) | SMO may provide O-CU with information via the O1 interface regarding which cell(s) (NRCGI(s)) associated with O-DU#1 need to be activated. See NOTE 1, NOTE 2, NOTE 3, NOTE 4. |  |
| **Basic resiliency use case - O-DU#1 failure detection** | | |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Step 2 (M) | Active O-DU fails  Active O-DU (the one serving as the active role) is no longer operational. The O-DU is no longer able to provide service. The O-DU has operational state = *disabled*. The Shared O-RU losses communication with the active O-DU. See NOTE 5. |  |
| Step 3 (M) | O-RU raises alarms to subscribers  The Shared O-RU raises the loss of connectivity alarm to subscriber(s). The simple case shows that the O-DU#1 and O-DU#2 are subscribers. The Shared O-RU raises an alarm to subscribers (O-DUs) that are still active that is O-DU #2, connected and subscribed. |  |
| Step 4 (M) | Alarm forwarded  The Shared O-RU alarm is forwarded to the managing entity, such as the SMO. It is possible that the SMO will make the decision for making the standby O-DU#2 into the active O-DU. |  |
| Step 5 (M) | SMO provides O-CU with information regarding which cell(s) (NRCGI(s)) associated with O-DU#2 need to be made inactive and/or removed. |  |
| **Recover Shared O-RU operation** | | |
| Step 6.1 (M) | The SMO may configure O-DU#2 to take standby role via O1 interface. See NOTE 6. |  |
| Step 6.2 (M) | O-DU#2 becomes the active O-DU to recover Shared O-RU operation. See NOTE 7. |  |
| Step 6.3 (M) | O-DU configures the carriers in O-RU, corresponding to the carrier resources outlined in step 6.1. See NOTE 8. |  |
| Step 6.4 (M) | SMO provides O-CU with information regarding which cell(s) (NRCGI(s)) associated with O-DU#2 need to be activated. See NOTE 1, NOTE 2, NOTE 9, NOTE 10, NOTE 11. |  |
| Ends when | The use case ends when the standby O-DU, O-DU#2 shown in the flow diagram has taken over for the previously active O-DU, O-DU #1. |  |
| Exceptions | There are many possible exceptions. Some of these include: If the Shared O-RU fails during a switch over.  If the standby O-DU#2 also becomes unavailable when it is due to become active.  If any event messaging for the flow is lost. If configuration was not done properly. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
|  | If the standby O-DU losses the configuration data from the configuration replica.  If the active O-DU returns to service while the standby O-DU is trying to become the active O-DU.  If the connectivity, or functionality of the management system (SMO) becomes unavailable. |  |
| Post Conditions | Successful post condition - On a successful post-condition, the Shared O-RU is connected to the newly active O-DU, the newly active O-DU is operational and has properly synced with the O-RU.  Failure post condition - If one of the various exception cases occurs, there are a variety of failure post conditions. If no O-DUs are available and the O-RU is orphaned no service is available and the O-RU shall shut down operations. If misconfiguration occurs the O-RU will respond accordingly. If there are ever two active O-DUs, the Shared O-RU will operate accordingly. |  |
| NOTE 1: When cells and corresponding carriers are configured and available for service, the O-DU informs O-CU about cells availability using F1 interface. O-CU requests O-DU to activate the cell(s) (NRCGI(s)), using the associated messages exchanged via the F1 interface. O-DU activates the carrier in O-RU that are associated with the specific cell(s) (NRCGI(s)) requested for activation.  NOTE 2: O-DU activates carriers related to cell(s) requested by O-CU. O-DU uses the F1 interface to inform O-CU about activation status for cells requested.  NOTE 3: Shared O-RU becomes operational with O-DU#1 with cell on air and ready to serve UEs. NOTE 4: SMO collects alarms and performance management data from O-DU#1.  NOTE 5: The active O-DU can be no longer operational for a variety of reasons. (see the "Begins when" section).  NOTE 6: There might be multiple other O-DUs, but only one active O-DU. The management system, SMO, shall know and coordinate and ensure that there is only one active O-DU.  NOTE 7: There are preconditions that are relevant and necessary for this to happen. It is necessary that a call home between the O-RU and standby O-DU, and the replication of the configuration information has occurred, and that the standby O-DU has the configuration of the active O-DU.  NOTE 8: The new active O-DU has control only of its carriers. The new O-DU does not handle ALDs.  NOTE 9: Shared O-RU operations are restored with O-DU#2, subsequently services to the users are reestablished, i.e., CUS-plane is up and running.  NOTE 10: SMO collects the alarms and performance management data from O-DU#2.  NOTE 11: The transition of the active role from O-DU#2 back to O-DU#1 involves the same steps as the initial transition from the O-DU#1 to O-DU#2, with the exception of which O-DU is to be activated. This activity is initiated based on a trigger from the SMO and/or the operator's decision. | | |

The flow diagram of the basic resiliency use case is given in figure 4.20.3.8-1.

![Generated by PlantUML](../assets/images/fbb77cc81b11.png)

###### Figure 4.20.3.8-1: Basic resiliency use case

#### Antenna calibration use case of a Shared O-RU for Single-MNO

The following describes the solution for the antenna calibration sub-use case for a Shared O-RU in a Single-MNO configuration.

The step-by-step details of the antenna calibration use case of a Shared O-RU are captured in table 4.20.3.9-1.

###### Table 4.20.3.9-1: Antenna calibration use case of a Shared O-RU

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | The host O-DU performs an antenna calibration procedure with the Shared O-RU.  The O-DU reports antenna calibration results to the SMO. |  |
| Actors and Roles | Shared O-RU performs the antenna calibration procedure.  O-DU (host) can request for antenna calibration procedure with Shared O-RU.  SMO can receive results from calibration. |  |
| Assumptions | O-DU has connectivity to O-RU.  All actors are operational and have initialized.  Fronthaul control and user plane is operational between O-DU and Shared O-RU. |  |
| Begins when | 1. The Shared O-RU has detected that antenna calibration is required. 2. The O-DU initiates an antenna calibration procedure. |  |
| Step 1.1 (O) | **Recalibration required (O-RU initiated)**  The Shared O-RU has detected that antenna calibration is needed and sends an antenna calibration needed notification to the host O-DU over the open FH. In this case, the O-RU initiates the calibration procedure. |  |
| Step 1.2 (O) | **Calibration request**  The host O-DU requests for antenna calibration procedure to start for Shared O-RU. |  |
| Step 1 (M) | **Calibration request (O-DU initiated)**  The host O-DU requests for antenna calibration procedure to start for Shared O-RU. In this case the O-DU initiates the calibration procedure. |  |
| Step 2 (M) | **Calibration operation at O-RU**  Shared O-RU performs antenna calibration procedure. |  |
| Step 3 (M) | **Calibration response**  Shared O-RU responds with antenna calibration results. |  |
| Step 4 (M) | **Calibration results**  The O-DU returns antenna calibration results to SMO. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Ends when | (1) **Antenna calibrated**: Antenna calibration procedure has finished, and results reported. |  |
| Exceptions | The O-RU may indicate a calibration failure, which is reported to the O- DU. The O-DU logs the failure and notifies north-bound entities. |  |
| Post Conditions | None. |  |

The flow diagram of the antenna calibration use case of a Shared O-RU for Single-MNO is given in figure 4.20.3.9-1.

![Generated by PlantUML](../assets/images/bf0e0d7885fe.png)

###### Figure 4.20.3.9-1: Antenna calibration use case of a Shared O-RU for Single-MNO

#### Rehoming use case of a Shared O-RU for Single-MNO

The following will describe the solution for the rehoming sub-use case for a Shared O-RU.

The context of the rehoming use case of a Shared O-RU for Single-MNO is captured in table 4.20.3.10-1.

###### Table 4.20.3.10-1: Rehoming use case of a Shared O-RU for Single-MNO

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | A Shared O-RU is rehomed and is able to pair with new O-DU or existing (previous) O-DU parents. |  |
| Actors and Roles | Shared O-RU is the element that is rehomed.  Host O-DU (old) is the original Shared O-RU parent.  SRO O-DU (old) is another original O-DU Shared O-RU is connected to. Host O-DU (new) is the new Shared O-RU parent.  SRO O-DU (new) is another new O-DU Shared O-RU is connected to.  SMO can receive results from calibration. |  |
| Assumptions | The Shared O-RU is in a deployment with the original (old) O-DUs and will be moved to the new ones or could stay with original O-DUs (as parents).  (Typically) the operator will plan a Shared O-RU rehoming activity before they actually perform the operations related to the move. |  |
| Begins when | This use case starts with any of these three situations:  Case #1 starts when the Shared O-RU is physically moved to a new location (however still connected to original O-DUs).  Case #2 starts when the Shared O-RU is physically moved to a new location but is connected to new O-DUs.  Case #3 starts when the Shared O-RU stays in same physical location but is connected to new O-DUs (management-initiated rehoming). |  |
| **Case #1** - O-RU is physically moved with same O-DU parents | | |
| Step 1 (M) | **Shared O-RU is disconnected from original O-DUs**  The Shared O-RU is physically disconnected (fiber disconnected) from the existing O-DU parents.  Then, the Shared O-RU is physically moved to a new location. |  |
| Step 2 (M) | **Shared O-RU is reconnected to original O-DUs**  The Shared O-RU is either physically reconnected (different fiber) or connected at the transport layer (with the original fiber) to the original O- DU parents, and the following sub-use cases are triggered as a result: |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
|  | * Shared O-RU startup sub-use case * Configuration sub-use case * Resource partitioning sub-use case * Reset sub-use case supervision sub-use case |  |
| **Case #2** - O-RU is physically moved with new O-DU parents | | |
| Step 1 (M) | **Shared O-RU is disconnected from original O-DUs**  The Shared O-RU is physically disconnected (fiber disconnected) from the former O-DU parents.  Then, the Shared O-RU is physically moved to a new location. |  |
| Step 2 (M) | **Shared O-RU is connected to new O-DUs**  The Shared O-RU is either physically reconnected (different fiber) or connected at the transport layer (with the original fiber) to new O-DU parents, and the following sub-use cases are triggered as a result:   * Shared O-RU startup sub-use case * Configuration sub-use case * Resource partitioning sub-use case * Reset sub-use case supervision sub-use case |  |
| **Case #3** - Management initiated rehoming | | |
| Step 1 (M) | **Management initiated rehoming for Shared O-RU**  Shared O-RU already has physical front-haul connections in place.  SMO initiates rehoming operation with connected O-DUs to the Shared O-RU. |  |
| Step 2 (M) | **Shared O-RU starts up**  The Shared O-RU starts up with the new O-DU parents, and the following sub-use cases are triggered as a result:   * Shared O-RU startup sub-use case * Configuration sub-use case * Resource partitioning sub-use case * Reset sub-use case supervision sub-use case |  |
| Ends when | The Shared O-RU has been moved and connected to the appropriate O- DUs, and is operational again. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Exceptions | None. |  |
| Post Conditions | None. |  |

The flow diagram of the rehoming use case of a Shared O-RU for Single-MNO is given in figure 4.20.3.10-1.

![Generated by PlantUML](../assets/images/6a2d5c50339f.png)

###### Figure 4.20.3.10-1: Rehome by physically moving Shared O-RU with same O-DU for Single-MNO

The flow diagram of the rehoming use case of a Shared O-RU for Single-MNO is given in figure 4.20.3.10-2.

![Generated by PlantUML](../assets/images/4ba54070d089.png)

###### Figure 4.20.3.10-2: Rehome by physically moving Shared O-RU with new O-DUs for Single-MNO

* + - 1. Reset use case of a Shared O-RU for Single-MNO The following describes the solution for the reset sub-use case for a Shared O-RU. The context of the reset use case of a Shared O-RU is captured in table 4.20.3.11-1.

###### Table 4.20.3.11-1: Reset use case of a Shared O-RU

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | The goal of this sub-use case is to describe the flow related to reset of Shared O-RU for a Single-MNO operator configuration.  This is a service impacting use case. |  |
| Actors and Roles | Shared O-RU:  The Shared O-RU is a key actor. It undergoes reset in this use case. The Shared O-RU can be reset by intention/request or autonomously.  O-DUs (host/tenant/ &other O-DUs):  All the O-DUs connected to the Shared O-RU are actors are involved in the reset operation. O-DU#1 has the role of the Shared O-RU host, it also has a role of Shared Resource Operator (SRO). O-DU#2 is only an SRO.  SMO:  The SMO is informed by the O-DU that O-RU has been reset or issues a reset. |  |
| Assumptions | It is assumed that there is always at least one O-DU still operational with the Shared O-RU.  This use case describes the flow for a Single-MNO operator configuration. |  |
| Begins when | The reset of a Shared O-RU use case can be invoked when there is a direct request to reset the Shared O-RU, or it can be reset autonomously.  There are many possible reasons why a Shared O-RU can need to be intentionally reset. Maintenance, software upgrade, network failure, power outages, communication link issues are just some of the many possible situations where the active O-RU would be reset. |  |
| Pre-conditions | The Shared O-RU has connectivity to one or more O-DUs (and one of them is serving the primary role).  The Shared O-DU has been configured originally by the active O-DU, and also carriers for the standby O-DUs. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
|  | O-DUs have subscribed to alarm notifications successfully. |  |
| Step 1 (M) | [Shared O-RU reset flow] Reset request from SMO  A reset request is communicated from the SMO to the Shared O-RU host (O-DU #1). The reset request can be originated from the SMO for a variety of reasons. |  |
| Step 2 (M) | Reset request from O-DU  The reset request is communicated onward from the Shared O-RU host (O-DU #1) to the Shared O-RU through the open front-haul interface. |  |
| Step 3 (M) | Reset reply  The Shared O-RU RPC Reply Acknowledge is sent from the Shared O- RU to the Shared O-RU host (O-DU #1). |  |
| Step 4 (M) | Shared O-RU reset  Once invoked, the Shared O-RU goes through its reset sequence to complete the reset operation. |  |
| Step 5 (M) | Reset response  The Shared O-RU host (O-DU #1) informs the SMO with a reset response. |  |
| Step 6 (M) | [Autonomous reset flow]  Autonomous Shared O-RU reset  The Shared O-RU is autonomously reset. |  |
| Step 7 (M) | O-DU initial detects loss of connection. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
|  | The Shared O-DU host (O-DU #1) detects loss of polling as a result of the autonomous O-RU reset. It can also detect a call home signal from a Shared O-RU that just had a valid M-plane session. |  |
| Step 8 (M) | O-DU determines loss of connection.  The O-DU can deduce that O-RU has a lost connection with broken polling with the O-DU. The O-DU does not know if the O-RU was performing a reset or if there was other reason for the lost connection, for example, a broken optical fiber. The O-DU can only report lost connection to O-RU in such a case.  The O-DU redetects the Shared O-RU through a call home from the Shared O-RU. Then the Shared O-RU Start up sequence of that sub- use case happens (see the ref flow). Afterwards, the O-DU can read the reset cause from the Shared O-RU. |  |
| Step 9 (M) | O-DU informs SMO.  When the O-DU #1 starts sensing call home signals from O-RU, O-DU can deduce that O-RU has returns to service after a reset. Afterwards, the O-DU #1 can read the restart cause. Then, the Shared O-DU host can report to SMO that O-RU is re-detected and what was the reason why the O-RU reset. Then O-DU can fill update its aggregated model with details obtained from the O-RU and populate this information to SMO.  Step 14 When O-DU redetects, the SMO can clear the alarm. |  |
| Ends when | The use case ends the Shared O-RU has reset whether by reset or by autonomous reset. |  |
| Exceptions | There are many possible exceptions. Some of these include: The Shared O-RU was not able to successfully reset.  The O-DU #1 was not able to properly detect lost connection with the Shared O-RU through loss of polling or call home signal was never sent.  The O-DU #1 was not able to establish a restore connection to the Shared O-RU after reset. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Post Conditions | Successful post condition - On a successful post-condition, the Shared O-RU is reset, and has restored connectivity to the Shared O-RU host (O-DU #1).  Failure post condition - One of the failure exceptions has been encountered. |  |

The flow diagram of the reset use case is given in figure 4.20.3.11-1.

![Generated by PlantUML](../assets/images/7ae5645f5c75.png)

###### Figure 4.20.3.11-1: Reset use case

#### Advanced resiliency sub-use cases of a Shared O-RU for Single-MNO

Advanced resiliency sub-use cases describe interactions between actors for resiliency operations.

##### Advanced resiliency sub-use case with 1 O-DU active + 1 O-DU standby (1+1)

The context of the advanced resiliency sub-use case with 1 O-DU active + 1 O-DU standby (1+1) is captured in table 4.20.3.12.1-1.

###### Table 4.20.3.12.1-1: Advanced resiliency sub-use case with 1 O-DU active + 1 O-DU standby (1+1)

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | The objective of this sub-use case is to manage resiliency operations involving the active and stand-by O-DUs with the Shared O-RU. This includes system behaviour in situations such as partial O-DU failures, interface failures, and power outages related to the O-DU. This ensures to restore the service availability to end users.  This is a service impacting use case. |  |
| Actors and Roles | Shared O-RU:  The Shared O-RU handles the fronthaul and air interfaces and the reporting of performance counters and failures.  O-DUs (active/stand-by O-DUs):  O-DUs may receive configurations from SMO. The O-DU may report performance counters and alarms to SMO. The O-DU is also responsible for configuring and collecting the performance data and alarms from O-RU(s) in hierarchical deployment. This use case focusses on active / stand-by role change for O-DUs to minimize service disruption.  O-CU:  O-CU receives cell related configurations from SMO and available cell details from O-DU(s). Respectively to available resources reported by O-DU and desired availability of cells received from SMO. The O-CU activates or deactivates the cells in the O-DU using F1 interface.  SMO:  The SMO configures the role of O-DUs as active and standby O- DUs and informs these roles to Shared O-RU through O-DU in hierarchical deployment or directly in case of hybrid deployment. SMO also makes high-level decisions about O-DU role change based on e.g., received alarms and degraded performance. |  |
| Assumptions | The assumptions are based on the premise that there will always be at least one O-DU remains operational with the Shared O-RU. |  |
| Begins when | This use case is triggered when the SMO detects the partial failure related to active O-DU based on alarms or service performance degradation. The use case may also be triggered due to various interfaces malfunction or service degradation. |  |
| Pre-conditions | 1. The Shared O-RU is on. 2. Prior carrier activation (step 6) O-RU's sync-state is "locked". 3. All actors are connected to same sync source. |  |
| Step 1 (M) | The SMO may configure O-DU#1 to take active role in controlling the Shared O-RU. It then configures the cells and corresponding carrier resources (including NRCGI(s) for the cells) via the O1 interface. |  |
| Step 2 (M) | O-DU configures the [tr]x-array-carrier(s) in O-RU, corresponding to the carrier resources outlined in step 1. |  |
| Step 3 (M) | The SMO may configure O-DU#2 to take stand-by role via O1 interface. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Step 4 (M) | SMO may provide O-CU with information regarding which cell(s) (NRCGI(s)) associated with O-DU#1 need to be activated. |  |
| Step 5 (M) | When cells and corresponding carriers are configured and available for service, the O-DU informs O-CU about cells availability using F1 interface. |  |
| Step 6 (M) | O-CU requests O-DU#1 to activate the cell(s) (NRCGI(s)), using the associated messages exchanged via the F1 interface. |  |
| Step 7 (M) | O-DU#1 activates the [tr]x-array-carrier(s) in O-RU that are associated with the specific cell(s) (NRCGI(s)) requested for activation in step 6. |  |
| Step 8 (M) | O-DU#1 activates the cell(s) as requested by O-CU in step 6. |  |
| Step 9 (M) | O-DU#1 uses the F1 interface to inform O-CU about activation status for cells requested in step 6.  See NOTE 1. |  |
| **Advanced resiliency use case for partial failure (interface or node)/performance degrade scenarios. SMO makes a high-level decision to make the Shared O-RU remains operational by initiating an O-DU switch** | | |
| Step 10.1 (M) | See NOTE 2 and NOTE 3.  The SMO set the administrative state of the O-DU#1 to "locked" and its operational state is set to "disabled".  See NOTE 4. |  |
| Step 10.2 (M) | SMO removes the cell(s) configuration from O-DU#1. This results in removal of the associated carrier resources from Shared O-RU.  See NOTE 5. |  |
| Step 10.3 (M) | O-DU#1 may send the RPCs to the O-RU via fronthaul M-plane to deactivate and remove the U-plane configurations related to cell(s) mentioned in Step 9.1.  See NOTE 6. |  |
| Step 10.4 (M) | O-DU#1 informs O-CU about the cell(s) removal using associated messages via F1 interface.  See NOTE 7. |  |
| Step 10.5 (M) | The SMO configures the cells (including NRCGI) and corresponding carrier resources to O-DU#2 via O1 interface. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Step 10.6 (M) | O-DU configures the [tr]x-array-carrier(s) in O-RU, corresponding to the carrier resources outlined in step 10.5. |  |
| Step 10.7 (M) | SMO provides O-CU with information regarding which cell(s) (NRCGI(s)) associated with O-DU#2 need to be activated. |  |
| Step 10.8 (M) | O-DU#2 informs O-CU, about the added cell(s) (NRCGI(s)) that are ready for activation via F1 interface using the associated messages. |  |
| Step 10.9 (M) | O-CU requests O-DU#2 to activate the cell(s) (NRCGI(s)), using the associated messages exchanged via the F1 interface. |  |
| Step 10.10 (M) | O-DU#2 activated [tr]x-array-carriers related to cells (NRCGI) requested by O-CU in step 10.9. |  |
| Step 10.11 (M) | O-DU#2 activates the cell(s) that were specified by O-CU in step 10.9. |  |
| Step 10.12 (M) | O-DU#2 informs O-CU about the cell(s) that are activated using associated messages via F1 interface.  See NOTE 8, NOTE 9 and NOTE 10. |  |
| Ends when | This use case ends when roles are changed as per SMO's request (or when their process ends with non-recoverable error). |  |
| Exceptions | There are several exceptions that may occur during this process. These include:   1. Shared O-RU fails during a switch over. 2. If the standby O-DU #2 also becomes unavailable when it is due to become active. 3. If same event messaging for the flow is lost. 4. If configuration provided to O-DU or O-CU is improper. 5. If the connectivity or functionality of the management system (SMO) becomes unavailable. |  |
| Post Conditions | Successful post condition - O-DU's roles are changed successfully, services for end users are available.  Failure post condition- O-RU does not have active O-DU connected and services for end user are not available. |  |
| NOTE 1: Shared O-RU becomes operational with O-DU#1 with cell on air and ready to serve UEs. NOTE 2: SMO collects alarms and performance management data from O-DU#1.  NOTE 3: When analysing the active alarms and performance counters, SMO may detect a partial failure of O-DU#1. Scenario continues in case of partial failure is detected.  NOTE 4: The meanings of administrate and operational states are defined in ITU-T X.731 [18].  NOTE 5: If the above role change is due to M-plane failure between O-DU#1 and Shared O-RU, then O-DU#1 would not have access to O-RU and hence cannot remove carriers. | | |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| NOTE 6: If M-plane failure occurs between O-DU#1 and Shared O-RU, then the O-DU#1 would not have access to O- RU and cannot deactivate and remove carriers.  NOTE 7: If F1 interface failure occurs between O-CU and O-DU#1, then the O-DU#1 would not have access to O-CU and hence it cannot request for cell(s) removal.  NOTE 8: Shared O-RU operations are restored with O-DU#2 and begins providing services to the users, i.e., CUS- plane is up and running.  NOTE 9: SMO collects the alarms and performance management data from O-DU#1 (if it is only partial failure and not lost communication, list of available PM counters reported by O-DU#1 will probably be reduced (when compared to the list available from fully operational O-DU)) and O-DU#2.  NOTE 10: The transition of the active role from O-DU#2 back to O-DU#1 involves the same steps as the initial transition from the O-DU#1 to O-DU#2, with the exception of which O-DU is to be activated. This activity is initiated based on a trigger from the SMO and/or the operator's decision. | | |

The flow diagram of the advanced resiliency sub-use case with 1 O-DU active + 1 O-DU standby (1+1) is given in figure 4.20.3.12.1-1.

![Generated by PlantUML](../assets/images/0cfac03db420.jpg)

###### Figure 4.20.3.12.1-1: Advanced resiliency sub-use case implementation flow for 1 active + 1 standby O-DUs with various resiliency situations

#### Load-balancing sub-use cases of a Shared O-RU

The load-balancing sub-use cases describes the flow of how actors involved execute a policy to load-balance the resources of the O-DUs and Shared O-RU coordinated through a policy enforcer (actor).

#### Coordinated reset of a Shared O-RU sub-use cases for Multi-MNO

The coordinated reset of a Shared O-RU sub-use cases describes the flow of how actors coordinate to reset Shared O-RU. The context of the coordinated reset of a Shared O-RU sub-use cases is captured in table 4.20.3.14-1.

###### Table 4.20.3.14-1: Coordinated reset of a Shared O-RU sub-use cases

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Coordinated reset of a Shared O-RU. |  |
| Actors and Roles | Host SMO - The connected host SMO to the host O-DU.  Partner SMO - The partner operator SMO. It connects to the SROs. Host O-DU - Host O-DU connected to the Shared O-RU.  Operator O-DU - The SRO O-DU connected to the Shared O-RU. Shared O-RU - The target Shared O-RU that will be reset. |  |
| Assumptions | None. |  |
| Begins when | There are four basic variations of a coordinated reset of a Shared O-RU. These are described in the following steps and diagrams.   1. Coordinated reset of a Shared O-RU initiated by host personnel 2. Coordinated reset of a Shared O-RU initiated by SRO personnel 3. Coordinated reset of a Shared O-RU autonomously initiated by host O-DU 4. Coordinated reset of a Shared O-RU autonomously initiated by SRO O-DU |  |
| Pre-conditions | None. |  |
| **Coordinated reset of Shared O-RU initiated by host personnel** | | |
| Step 1 (M) | **Reset request from operator**  The request for the coordinated reset of a Shared O-RU is initiated from the host operator and is received by the host operator SMO. |  |
| Step 2 (M) | **Host SMO informs partner SMOs**  The host operator SMO informs associated SMOs that the coordinated reset of a Shared O-RU has been initiated. Associated SMOs are other SMOs which are connected to O-DUs that are connected to the affected Shared O-RU. See NOTE 1, NOTE 2. |  |
| Step 3.1 (ALT) | **Reset request from host SMO to host O-DU (hierarchal mode)**  The request for the coordinated reset of the target Shared O-RU is sent from the host operator SMO to the host O-DU over the O1 interface. See NOTE 3. |  |
| Step 3.2 (ALT) | **Reset request from host O-DU to Shared O-RU (hierarchical mode)** |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
|  | In hierarchical mode, the coordinated reset request of the target Shared O-RU is sent from the host O-DU to the target Shared O-RU through the fronthaul as an RPC request. |  |
| Step 3.3 (ALT) | **Reset request from host SMO to Shared O-RU (hybrid mode)**  In hybrid mode, the coordinated reset request of the target Shared O-RU is sent from the host SMO to target Shared O-RU as an RPC request via the M-plane. See NOTE 4. |  |
| Step 4 (M) | **Shared O-RU notifies the host O-DU**  The affected Shared O-RU notifies the host O-DU (hierarchical mode) or host SMO (hybrid mode). See NOTE 5, NOTE 6, NOTE 7. |  |
| Step 5 (M) | **Host O-DU notifies the SMO**  The host O-DU informs the host SMO with a "*Shared O-RU reset initiated*" notification. |  |
| Step 6 (M) | **Shared O-RU notifies other connected O-DUs**  The target Shared O-RU notifies other connected O-DUs as SROs. This is a notification message originating from the Shared O-RU with no specific ordering. |  |
| Step 7 (M) | **O-DU notifies associated SMO**  The O-DU (SRO) informs its associated SMO with a "*Shared O-RU reset initiated*" notification. |  |
| Step 8 (M) | **Shared O-RU notifies other connected O-DUs**  The target Shared O-RU notifies other connected O-DUs as SROs. This is a notification message originating from the Shared O-RU with no specific ordering. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Step 9 (M) | **O-DU notifies associated SMO**  The O-DU (SRO) informs its associated SMO with a "*Shared O-RU reset initiated*" notification. |  |
| Step 10 (M) | **Shared O-RU notifes connected host O-DU**  The target Shared O-RU notifies the host O-DU (hierarchical mode) or host SMO (hybrid mode) with a reset response. This is an RPC reply-acknowledgement. |  |
| Step 11 (M) | **Host O-DU notifies the SMO**  The host O-DU informs the host operator SMO that the Shared O-RU has executed the reset with a "*Shared O-RU Reset Executed"* notification. |  |
| Step 12 (M) | **Shared O-RU reset & startup**  The Shared O-RU resets; and then initiates its start-up sequence. |  |
| **Coordinated reset of Shared O-RU initiated by SRO personnel** | | |
| Step 1 (M) | **Reset procedure initiated**  The partner operator has identified a need to reset the target Shared O-RU and initiates a reset procedure. |  |
| Step 2 (M) | **Identify host**  The host for the target Shared O-RU is identified. |  |
| Step 3 (M) | **Reset coordination**  Coordination between the operators can occur, so that the partner operator can indicate to the host the need for a reset. |  |
| Step 4 (M) | **Reset request from operator** |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
|  | The reset request from the partner operator is sent to the partner SMO. |  |
| Step 5 (M) | **Identify host**  The partner SMO identifies the proper host SMO for the target Shared O-RU. |  |
| Step 6 (M) | **Reset request (coordination)**  The partner shared operator SMO sends a request to the host SMO to initiate a coordinate reset of the target Shared O-RU. |  |
| Step 7 (M) | **Reset response (coordination)**  The host SMO responds to the partner shared operator SMO regarding the initiation of a coordinate reset of the target Shared O-RU. |  |
| Step 8.1 (ALT) | **Reset request from host SMO to host O-DU (hierarchal mode)**  The request for the coordinated reset of the target Shared O-RU is sent from the host operator SMO to the host O-DU over the O1 interface. See NOTE 8. |  |
| Step 8.2 (ALT) | **Reset request from host O-DU to SHARED O-RU (hierarchical mode)**  In hierarchical mode, the coordinated reset request of the target Shared O-RU is sent from the host O-DU to the target Shared O-RU through the fronthaul as an RPC request. |  |
| Step 8.3 (ALT) | **Reset request from host SMO to Shared O-RU (hybrid mode)**  In hybrid mode, the coordinated reset request of the target Shared O-RU is sent from the host SMO to target Shared O-RU as an RPC request via the M-plane. See NOTE 9. |  |
| Step 9 (M) | **Shared O-RU notifies the host O-DU** |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
|  | The affected Shared O-RU notifies the host O-DU (hierarchical mode) or host SMO (hybrid mode). See NOTE 10, NOTE 11, NOTE 12. |  |
| Step 10 (M) | **Host O-DU notifies the SMO**  The host O-DU informs the host SMO with a "*Shared O-RU reset initiated*" notification. |  |
| Step 11 (M) | **Shared O-RU notifies other connected O-DUs**  The target Shared O-RU notifies other connected O-DUs as SROs. This is a notification message originating from the Shared O-RU with no specific ordering. |  |
| Step 12 (M) | **O-DU notifies associated SMO**  The O-DU (SRO) informs its associated SMO with a "*Shared O-RU reset initiated*" notification. |  |
| Step 13 (M) | **Shared O-RU notifies other connected O-DUs**  The target Shared O-RU notifies other connected O-DUs as SROs. This is a notification message originating from the Shared O-RU with no specific ordering. |  |
| Step 14 (M) | **O-DU notifies associated SMO**  The O-DU (SRO) informs its associated SMO with a "*Shared O-RU reset initiated*" notification. |  |
| Step 15 (M) | **Shared O-RU notifies connected host O-DU**  The target Shared O-RU notifies the host O-DU (hierarchical mode) or host SMO (hybrid mode) with a reset response. This is an RPC reply-acknowledgement. |  |
| Step 16 (M) | **O-DU notifes the SMO** |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
|  | The host O-DU informs the host operator SMO that the Shared O-RU has executed the reset with a "*Shared O-RU Reset Executed"* notification. |  |
| Step 17 (M) | **Shared O-RU reset & startup**  The Shared O-RU resets; and then initiates its start-up sequence. |  |
| **Coordinated reset of Shared O-RU autonomously initiated by host O-DU** | | |
| Step 1 (M) | **Reset request from host O-DU to Shared O-RU**  The reset request goes from the host O-DU to Shared O-RU through the fronthaul as an RPC request. |  |
| Step 2 (M) | **Reset notification from host O-DU to SMO**  The notification of a coordinated reset for a Shared O-RU goes from host O-DU to the host operator SMO over the O1 interface. |  |
| Step 3 (M) | **Host SMO informs partner SMOs (coordination)**  The host operator SMO informs associated SMOs that the coordinated reset of a Shared O-RU has been initiated. Associated SMOs are other SMOs which are connected to O-DUs that are connected to the affected Shared O-RU |  |
| Step 4 (M) | **Partner SMOs respond to host SMO (coordination)**  The associated SMO responds to the host operator SMO regarding the Shared O- RU reset. |  |
| Step 5 (M) | **Shared O-RU notifies connected O-DUs**  The affected Shared O-RU notifies connected O-DUs including the host O-DU, SOH and other connected O-DUs, SROs. This is a notification message originating from the Shared O-RU and sent to all connected O-DUs. |  |
| Step 6 (M) | **Host O-DU notifes host SMO** |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
|  | The host O-DU notifies the host SMO with a Shared O-RU Reset Initiated message that is triggered from the reset requested by host notification sent from the Shared O-RU. |  |
| Step 7 (M) | **Shared O-RU notifies connected O-DUs**  The affected Shared O-RU notifies connected O-DUs including the host O-DU, SOH and other connected O-DUs, SROs. |  |
| Step 8 (M) | **O-DU (SRO) notifies the operator SMO**  The O-DU (SRO) informs its associated operator SMO that the Shared O-RU has initiated a reset. |  |
| Step 9 (M) | **Shared O-RU notifies connected O-DUs**  The affected Shared O-RU notifies connected O-DUs including the host O-DU, SOH and other connected O-DUs, SROs. |  |
| Step 10 (M) | **O-DU (SRO) notifes the operator SMO**  The O-DU (SRO) informs its associated operator SMO that the Shared O-RU has initiated a reset. |  |
| Step 11 (M) | **Shared O-RU notifies connected host O-DU**  The affected Shared O-RU notifies the host O-DUs with a Reset Response. This is an RPC reply-acknowledgement. |  |
| Step 12 (M) | **Host O-DU notifies the host SMO with reset executed**  The host O-DU informs the host operator SMO that the Shared O-RU has executed the reset with a "*Shared O-RU Reset Executed"* notification. |  |
| Step 13 (M) | **Shared O-RU reset & startup**  The Shared O-RU resets; and then initiates its start-up sequence. |  |
| **Coordinated reset of Shared O-RU autonomously initiated by SRO O-DU** | | |
| Step 1 (M) | **Reset request** |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
|  | The SRO O-DU has determined that the target Shared O-RU needs to be reset. The SRO O-DU sends a reset request to its associated SMO. |  |
| Step 2 (M) | **Reset request (coordination)**  The partner shared operator SMO sends a request to the host SMO to initiate a coordinate reset of the target Shared O-RU. |  |
| Step 3 (M) | **Reset response (coordination)**  The host SMO responds to the partner shared operator SMO regarding the initiation of a coordinate reset of the target Shared O-RU. |  |
| Step 4.1 (ALT) | **Reset request from host SMO to host O-DU (hierarchal mode)**  The request for the coordinated reset of the target Shared O-RU is sent from the host operator SMO to the host O-DU over the O1 interface. See NOTE 13. |  |
| Step 4.2 (ALT) | **Reset request from host O-DU to Shared O-RU (hierarchical mode)**  In hierarchical mode, the coordinated reset request of the target Shared O-RU is sent from the host O-DU to the target Shared O-RU through the fronthaul as an RPC request. |  |
| Step 4.3 (ALT) | **Reset request from host SMO to Shared O-RU (hybrid mode)**  In hybrid mode, the coordinated reset request of the target Shared O-RU is sent from the host SMO to target Shared O-RU as an RPC request via the M-plane. See NOTE 14. |  |
| Step 5 (M) | **Shared O-RU notifies the host O-DU**  The affected Shared O-RU notifies the host O-DU (hierarchical mode) or host SMO (hybrid mode). See NOTE 15, NOTE 16, NOTE 17. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Step 6 (M) | **Host O-DU notifies the SMO**  The host O-DU informs the host SMO with a "*Shared O-RU reset initiated*" notification. |  |
| Step 7 (M) | **Shared O-RU notifies other connected O-DUs**  The target Shared O-RU notifies other connected O-DUs as SROs. This is a notification message originating from the Shared O-RU with no specific ordering. |  |
| Step 8 (M) | **O-DU notifies associated SMO**  The O-DU (SRO) informs its associated SMO with a "*Shared O-RU reset initiated*" notification. |  |
| Step 9 (M) | **Shared O-RU notifies other connected O-DUs**  The target Shared O-RU notifies other connected O-DUs as SROs. This is a notification message originating from the Shared O-RU with no specific ordering. |  |
| Step 10 (M) | **O-DU notifies associated SMO**  The O-DU (SRO) informs its associated SMO with a "*Shared O-RU reset initiated*" notification. |  |
| Step 11 (M) | **Shared O-RU notifies connected host O-DU**  The target Shared O-RU notifies the host O-DU (hierarchical mode) or host SMO (hybrid mode) with a reset response. This is an RPC reply-acknowledgement. |  |
| Step 12 (M) | **O-DU notifies the SMO**  The host O-DU informs the host operator SMO that the Shared O-RU has executed the reset with a "*Shared O-RU Reset Executed"* notification. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Step 13 (M) | **Shared O-RU reset & startup**  The Shared O-RU resets; and then initiates its start-up sequence. |  |
| Ends when | The target Shared O-RU has been reset. |  |
| Exceptions | None identified. |  |
| Post Conditions | **Success**: The target Shared O-RU has been reset.  **Failure**: The target Shared O-RU fails to be reset. |  |
| NOTE 1: There are other use cases exploring operator to operator coordination and in 3GPP specifications as well. These are the exposure of management services (SMO Services).  NOTE 2: There might be some coordination between SMOs such that the host SMO would not initiate a coordinated reset if the partner SMOs objected, this would be part of the SMO decomposition work. Thus, there might be other transactions happening between the SMOs before step 4.  NOTE 3: Once the coordinate reset request is issued from the host SMO, the operation will be executed and can no longer be rejected by the system. This implies that any OSS/SMO coordination has finalized before reaching this step.  NOTE 4: Step 3.3 is specifically for hybrid mode configuration where the SMO could be a host and thus initiate a coordinated reset of a Shared O-RU as an RPC request.  NOTE 5: These set of notification messages originating from the Shared O-RU and are sent to all connected O-DUs.  NOTE 6: The notification messages sent to all connected O-DUs in steps 4, 6, and 8 happen in an unspecified order.  NOTE 7: In both hybrid and hierarchal mode, the Shared O-RU will inform all the connected O-DUs of a reset requested by host notification.  NOTE 8: Once the coordinate reset request is issued from the host SMO, the operation will be executed and can no longer be rejected by the system. This implies that any OSS/SMO coordination has finalized before reaching this step.  NOTE 9: Step 8.3 is specifically for hybrid mode configuration where the SMO could be a host and thus initiate a coordinated reset of a Shared O-RU as an RPC request.  NOTE 10: These set of notification messages originating from the Shared O-RU and are sent to all connected O-DUs.  NOTE 11: The notification messages sent to all connected O-DUs in steps 9, 11, and 13 happen in an unspecified order.  NOTE 12: In both hybrid and hierarchal mode, the Shared O-RU will inform all the connected O-DUs of a reset requested by host notification.  NOTE 13: Once the coordinate reset request is issued from the host SMO, the operation will be executed and can no longer be rejected by the system. This implies that any OSS/SMO coordination has finalized before reaching this step.  NOTE 14: Step 4.3 is specifically for hybrid mode configuration where the SMO could be a host and thus initiate a coordinated reset of a Shared O-RU as an RPC request. | | |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| NOTE 15: These set of notification messages originating from the Shared O-RU and are sent to all connected O-DUs.  NOTE 16: The notification messages sent to all connected O-DUs in steps 5, 7, and 9 happen in an unspecified order.  NOTE 17: In both hybrid and hierarchal mode, the Shared O-RU will inform all the connected O-DUs of a reset requested by host notification. | | |

The flow diagram of the coordinated reset sub-use case 1 (personnel triggered) is given in figure 4.20.3.14-1.

![Generated by PlantUML](../assets/images/19acab3a7edb.png)

###### Figure 4.20.3.14-1: Coordinated reset sub-use case 1 (personnel triggered)

The flow diagram of the coordinated reset sub-use case 2 (autonomous) is given in figure 4.20.3.14-2.

![Generated by PlantUML](../assets/images/88edb91e0c14.png)

###### Figure 4.20.3.14-2: Coordinated reset sub-use case 2 (autonomous)

#### Management of Shared O-RU during O-DU software update sub-use case for Shared O-RU for Single & Multi-MNO

This sub-use case describes the Shared O-RU management scenarios associated with various stages in the O-DU software update such as planning, deployment, and monitoring. The detailed steps for each of these stages are described in the subsequent clauses.

##### Shared O-RU management during O-DU SW change management planning

The context of the Shared O-RU management during O-DU SW change management planning is captured in table 4.20.3.15.1-1.

###### Table 4.20.3.15.1-1: Shared O-RU management during O-DU SW change management planning

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Management scenarios associated with Shared O-RU during the O-DU SW change management planning. |  |
| Actors and Roles | * SMO: Maintains up-to-date information about the deployed RAN nodes including inventory, FM and PM data that help to identify appropriate Shared O-RU resources that can be allocated for validating the O-DU SW update. * O-DU SW planner: Personnel who prepares deployment strategy of O-DU SW and associated plan based on the Shared O-RU resources that need to be allocated for validation. * O-DU SW change management rApp: The rApp that supports SMO and Non-RT RIC in managing the O-DU SW update based on the plan prepared by the planner. * Non-RT RIC: Facilitates communication between rApps and SMO services over R1 interface. |  |
| Assumptions | * SW updated O-DU shares the O-RU resources with an existing O- DU. * SW updated O-DU and existing O-DUs address different set of component carriers and does not have common component carriers among them. * SW updated O-DU is considered for single operator Shared O-RU scenario. |  |
| Begins when | O-DU SW planner identifies changes in O-DU software that need to be validated and rolled out on the RAN node deployment with limited service disruption. |  |
| Pre-conditions | * O-DU SW planner received the O-DU software change specification (for example a document detailing the changes in the O-DU software with information about impact of change and priority). |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
|  | * O-DU SW planner collected the information about the RAN nodes from the SMO Topology Exposure & InVentory Management (TE&IV) service. * O-DU SW planner collected the performance indicators and health/fault details of the RAN nodes from the SMO. * O-DU SW planner identified the KPIs, PMJobs and scaling parameters of O-DU and Shared O-RU that need to be modified or redefined. This is to ensure that any temporary degradation during the software update does not result in false alarms or unintended actions. |  |
| Step 1 (O) | O-DU SW planner designs the change management plan for SW update based on the information collected from SMO services.  The plan can include but not limited to   1. The version of O-DU software to be used for SW update. 2. The policy to select the target O-DU (e.g., least loaded cell, particular S-NSSAI, random or specific O-DU ID). 3. Evacuation policies of currently occupied component carriers associated with the Shared O-RU which need to be reallocated based on the O-DU SW update. 4. The traffic-distribution or component carrier allocation policy between target O-DU and existing O-DU. 5. Performance and fault indicators with threshold values, monitoring schedule for the updated O-DU. 6. Mitigation policy in case of a SW update failure or any disruptions.   The availability of plan can be notified to the subscribed SMO services and rApps (for example O-DU SW change management rApp).  See NOTE. |  |
| Step 2 (M) | The O-DU SW planner initiates SW update of O-DU through the O-DU SW change management rApp with reference to the change management plan prepared and made available to the O-DU SW change management rApp. |  |
| Step 3 (O) | O-DU SW change management rApp collects the change management plan for O-DU software update. |  |
| Step 4 (O) | O-DU SW change management rApp validates the change management plan. |  |
| Step 5 (ALT) | Upon successful validation, the O-DU SW change management rApp prepares the provisioning configurations for the Shared O-RU and O- DU (target and existing), along with the execution steps for the software update, for the designated RAN nodes. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Step 6 (O) | O-DU SW change management rApp notifies the O-DU SW planner about the execution steps, target RAN nodes and configuration changes. |  |
| Step 7 (O) | O-DU SW planner verifies and sends approval to the O-DU SW change management rApp. |  |
| Step 8 (O) | Prepares detailed execution plan which can be notified to the subscribed SMO services and rApps. |  |
| Step 9 (ALT) | If the validation of the change management plan failed, a notification is sent to the O-DU SW planner with the reason for failure. |  |
| Ends when | The change management plan for SW update is ready for execution. The execution can be auto triggered, or it can be manually initiated by the O- DU SW planner. |  |
| Exceptions | None. |  |
| Post Conditions | None. |  |
| NOTE: It is optional to store the change management plan for SW update in SMO TE&IV. The change management plan can be stored in alternate SMO functions registered with and authorized by SMO data management and exposure functions based on the implementation choice. | | |

The O-DU SW update change management planning sequence diagram is given in figure 4.20.3.15.1-1.

![Generated by PlantUML](../assets/images/745771901ff0.png)

Figure 4.20.3.15.1-1: O-DU SW update change management planning sequence diagram

##### Shared O-RU management during O-DU SW update

The context of the Shared O-RU management during O-DU SW update is captured in table 4.20.3.15.2-1.

###### Table 4.20.3.15.2-1: Shared O-RU management during O-DU SW update

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Shared O-RU management during O-DU SW update. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Actors and Roles | * SMO: Facilitates the execution of O-DU SW update and associated Shared O-RU provisioning by enabling interaction across SMO services, rApps and RAN nodes - These services include but not limited to - TE&IV, OAM functions, O2 related functions. * O-RU sharing co-ordinator retrieves change management plan for O-DU SW update and decides on partitioning of carriers between O-DUs. * Sharing co-ordinator uses Shared O-RU orchestration rApp to partition resource configuration of a Shared O-RU between O-DUs. * O-DU SW change management rApp: The rApp that supports SMO and Non-RT RIC in managing the O-DU SW update based on the plan prepared by the O-DU SW planner. * Non-RT RIC: Facilitates communication between rApps and SMO services over R1 interface. * O-DU(#n): An active O-DU in the RAN being managed by the SMO. * O-DU (updated): O-DU updated with new SW based on the change management plan. |  |
| Assumptions | * SW updated O-DU shares the O-RU resources with an existing O- DU. * SW updated O-DU and existing O-DUs address different set of component carriers and does not have common component carriers among them. * SW updated O-DU and existing O-DUs do not have common cell IDs. * SW update for O-DU is considered for single operator Shared O- RU scenario. |  |
| Begins when | O-DU SW change management rApp receives confirmation about the O-DU SW update and Shared O-RU provisioning steps. |  |
| Preconditions | O-DU software update and Shared O-RU provisioning steps approved by the O-DU SW planner and made available to the O-DU SW change management rApp. |  |
| Step 0 (Ref) | * O-DU SW change management rApp, based on the change management plan identifies software version to be updated and recommends (via R1 interface) to SMO the specifics of change like the software version and O-DU identifier. * For software update of an existing O-DU, the designated O-DU (updated) is updated using O-RAN.WG6.ORCH-USE-CASES [26], clause 3.2.4 (steps 1 to 4) |  |
| Step 1 (M) | Initial provisioning of O-DU (updated) as per change management plan- Refer to O-RAN.WG10.OAM-Architecture [27], clause 4.2.1  See NOTE 1. |  |
| Step 2 (M) | O-DU SW change management rApp request (via R1 and SMO/Non-RT  RIC) Shared O-RU orchestration rApp to facilitate resource sharing |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
|  | between O-DU (updated) and existing O-DUs based on the change management plan.  See NOTE 2. |  |
| Step 3 (M) | Shared O-RU orchestration r-App initiates configuration of the Shared O-RU common aspects |  |
| Step 4-6 (M) | Common aspect provisioning of Shared O-RU as per WG1 Use Cases Detailed Specification, clause 4.20.1.1 which include the include the security, operational, transmission, and connectivity related parameters. |  |
| Step 7 (M) | Based on the call home procedure, Shared O-RU establishes management session with O-DU (updated).  See NOTE 3. |  |
| Step 8-10 (O) | Notification of configuration update to SMO OAM functions and subsequently to Shared O-RU orchestration rApp.  See NOTE 4. |  |
| Step 11-13 (O) | Carrier aspect provisioning to deactivate and evacuate component carriers designated for the O-DU (updated) from the existing O-DU i.e., O-DU (#1). |  |
| Step 14-15 (O) | Carrier aspect provisioning to activate component carriers designated for the O-DU (updated). |  |
| Step 16-18 (O) | Notification of committed carrier aspect configuration to SMO OAM functions. |  |
| Step 19-20 (O) | Notification of configuration aspect to Shared O-RU orchestration rApp. |  |
| Step 21 (O) | Notification to sharing coordinator to validate the committed configuration. |  |
| Step 22 (O) | Validation of committed configuration by Shared O-RU orchestration rApp. |  |
| Step 23 (O) | Validation of committed configuration by O-DU SW change management rApp based on the change management plan. |  |
| Step 24 (O) | O-DU SW change management rApp coordinates with OAM functions to provision KPIs, PM jobs or scaling parameters used for assessing the health of the RAN nodes so that any variations anticipated due to O-DU SW update does not lead to false alarms or unintended actions. |  |
| Ends when | Committed configuration associated with the Shared O-RU is accepted by sharing coordinator and validation of the configuration is acknowledged by the O-DU SW change management rApp.  SMO TE&IV service is updated with inventory details about the O-DU (updated) and Shared O-RU. |  |
| Exceptions | None. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Post Conditions | * SW updated O-DU is ready for health & sanity check and is actively handling UE sessions. |  |
| NOTE 1: It is assumed that based on the O-DU (updated) provisioning procedure SMO TE&IV is updated with the inventory information of O-DU (updated) as per change management plan.  NOTE 2: Refer to the resource partitioning use case described in WG1 Use Cases Detailed Specification, clause 4.20.3.2.  NOTE 3: After O-DU (updated) deployment, before M-plane connection establishment, there is a possibility of race condition depending on when the Shared O-RU attempts call-home and the readiness of O-DU (updated) to process the call-home requests. There are two potential scenarios and associated approaches for addressing this.   * Scenario 1: O-DU (updated) is ready for establishing M-plane connection when call home signals are still being sent by Shared O-RU   + In the O-RAN operations yang model (o-ran-operations.yang) there are two parameters that govern the call-home connection attempts -     - re-call-home-no-ssh-timer : A common timer used by the O-RAN equipment to trigger the repeated call-home procedure to all identified call-home servers to which the O- RAN equipment has not already an established NETCONF connection.     - max-call-home-attempts : counter to repeat call-home procedures. In case counter is set with value zero O-RU shall not repeat call-home procedure.   In order for the deployed O-DU (updated) to be ready to receive and process call-home requests from the shared O-RU, the above parameters shall be optimized, so that adequate time is allocated for the O-DU (updated) to become operational.   * Scenario 2: O-DU (updated) becomes ready after a long-time duration and Shared O-RU is not performing call home procedure anymore due to expiration of the timers.   + In the O-RAN operations yang model (o-ran-operations.yang) restart-call-home RPC allows any active 'call home O-RU controller' having necessary permissions to instruct O-RU to re- activate call-home procedures. By triggering this request through an existing 'call-home O-RU controller', the O-RU will initiate call home towards all known 'call-home O-RU controllers' that do not currently have an active M-plane session.   NOTE 4: The steps for hybrid scenario are not shown explicitly, but it is similar to hierarchical scenario. Refer to WG1 Use Cases Detailed Specification, clause 4.20.3.4 for details. | | |

The O-DU SW update sequence diagram is given in figure 4.20.3.15.2-1.

![Generated by PlantUML](../assets/images/a7c1b3513956.jpg)

Figure 4.20.3.15.2-1: O-DU SW update sequence diagram

##### Shared O-RU management during O-DU SW update monitoring and mitigation

The context of the Shared O-RU management during O-DU SW update monitoring and mitigation is captured in table 4.20.3.15.3-1.

###### Table 4.20.3.15.3-1: Shared O-RU management during O-DU SW update monitoring and mitigation

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Shared O-RU management during O-DU SW update monitoring and mitigation. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Actors and Roles | * SMO: Facilitates the monitoring, and mitigation of O-DU SW update and associated Shared O-RU provisioning by enabling interaction across SMO services, rApps and RAN nodes - These services include but not limited to - TE&IV, OAM functions, O2 related functions. * O-DU SW planner: Personnel who prepares O-DU SW change management strategy and associated plan based on the identified change in the O-DU software. * O-DU SW change management rApp: The rApp that supports SMO and Non-RT RIC in managing the O-DU SW update and associated Shared O-RU provisioning based on the plan prepared by the O- DU SW planner and subsequent health monitoring to decide on mitigation actions. * Shared O-RU orchestration rApp is used to rebalance the Shared O-RU resources based on the health monitoring and mitigation action selection by the O-DU SW change management rApp. * Non-RT RIC: Facilitates communication between rApps and SMO services over R1 interface. * O-DU(#n): An active O-DU in the RAN being managed by the SMO. * O-DU (updated): A new O-DU deployed through SW change management procedure. |  |
| Assumptions | * Software updated O-DU shares the O-RU resources with an existing O-DU. * Software updated O-DU and existing O-DUs address different set of component carriers and does not have common component carriers among them. * Software updated O-DU and existing O-DUs do not have common cell IDs. * Software update of O-DU is considered for single operator Shared O-RU scenario. |  |
| Begins when | O-DU SW planner subscribes to the health monitoring events for the updated RAN nodes, based on access granted by SMO external exposure service  OR  As per the predefined plan O-DU SW change management rApp initiates health check of the SW updated O-DU |  |
| Pre-conditions | * Successfully completed the SW update of target O-DU * Planned Shared O-RU resources allocated to O-DU (updated) and activated * O-DU (updated) sharing O-RU resources with an existing O-DU * O-DU (updated), existing O-DUs, Shared O-RU are ready for monitoring of KPIs and actively handling the UE sessions |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Step 1 (O) | O-DU SW planner subscribes to change management events from O- DU SW change management rApp via SMO/Non-RT RIC. |  |
| Step 2 (M) | O-DU SW change management rApp subscribes to PM/FM data from O-DU (updated) and existing O-DU, i.e O-DU (#1) through R1 interface. |  |
| Step 3 (M) | Non-RT RIC forwards the subscription request to OAM function. |  |
| Step 4 (M) | OAM function subscribes to the FM/PM data updates for O-DU (updated) and existing O-DU, i.e O-DU (#1) via O1 interface. |  |
| Step 5 (M) | O-DU (updated) subscribes to FM/PM data updates from Shared O-RU based on the O-DU\_ID of O-DU (updated) as the filter criteria. |  |
| Step 6 (M) | Notification of FM/PM data from Shared O-RU to O-DU (updated) over OFH. |  |
| Step 7 (M) | Notification of FM/PM data from O-DU (updated) to OAM functions over O1. |  |
| Step 8 (M) | OAM function forwards notification of FM/PM data received from O-DU (updated) to Non-RT RIC through SMO internal interface. |  |
| Step 9 (M) | Non-RT RIC notifies O-DU SW change management rApp about FM/PM data received from O-DU (updated). |  |
| Step 10 (M) | O-DU SW change management rApp evaluates FM/PM data against the change management plan. |  |
| Step 11 (O) | If the health and sanity of the O-DU (updated) and Shared O-RU are not as per plan, O-DU SW change management rApp analyses mitigation action based on evaluation of the FM/PM data. |  |
| Step 12 (O) | If the health and sanity of the O-DU (updated) is not as per plan O-DU SW change management rApp sends change management report consisting of sanity, health details and mitigation action(s) to O-DU SW planner.  See NOTE 1. |  |
| Step 13 (O) | O-DU SW planner verifies the mitigation action and sends approval if action is within the scope of the plan. |  |
| Step 14 (O) | If mitigation involves provisioning of Shared O-RU, O-DU SW change management rApp recommends to Shared O-RU orchestration rApp re- provisioning of O-RU resources based on recommended action.  See NOTE 2. |  |
| Step 15 (O) | Shared O-RU orchestration rApp recommends re-configuration to OAM functions over R1 interface. |  |
| Step 16 (O) | Non-RT RIC forwards configuration request to OAM functions. |  |
| Step 17 (O) | OAM functions initiates configuration of O-DU (updated) and partitioned carrier information. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Step 18 (O) | O-DU (updated) initiates reconfiguration of partitioned carrier information on Shared O-RU. This can include required evacuation procedures if applicable. |  |
| Step 19 (O) | OAM functions initiates configuration of O-DU (#n) and partitioned carrier information on the O-RU shared with O-DU (updated). |  |
| Step 20 (O) | O-DU (#n) initiates reconfiguration of partitioned carrier information on Shared O-RU. |  |
| Step 21 (O) | O-DU (#n) sends notification about configuration update to OAM functions over O1 interface |  |
| Step 22 (O) | O-DU (updated) sends notification about configuration update to OAM functions over O1 interface. |  |
| Step 23 (O) | O-DU SW change management rApp sends revised report to O-DU SW planner. |  |
| Ends when | to O-DU SW planner validates the change management report and certifies the O-DU SW update.  SMO TE&IV service is updated with inventory details about the O-DU (updated) and Shared O-RU. |  |
| Exceptions | NA |  |
| Post Conditions | SW updated O-DU is functioning as per the change management plan. |  |
| NOTE 1: Sanity check and health check are assumed to be implementation specific and depends on the pre- defined change management plan for O-DU SW update. In general, the sanity check assesses whether the SW update satisfies the designated performance and connectivity objectives, while also ensuring compliance with the policies established in accordance with the plan. On the other hand, the health check examines the responsiveness and overall condition of the updated O-DU.  NOTE 2: The mitigation action depends on the change management plan and specific implementation strategy. This can include but not limited to readjustment of component carriers in Shared O-RU between O-DU (updated) and other O-DUs. | | |

The O-DU SW update monitoring and mitigation sequence diagram is given in figure 4.20.3.15.3-1.

![Generated by PlantUML](../assets/images/08f11a145f42.png)

Figure 4.20.3.15.3-1: O-DU SW update monitoring and mitigation sequence diagram

#### Resource partitioning use case of Shared O-RU for Multi-MNO configuration

The following describes the solution for the resource partitioning sub-use case for a Shared O-RU in a Multi-MNO configuration.

The context of the resource partitioning use case of Shared O-RU is captured in table 4.20.3.16-1.

###### Table 4.20.3.16-1: Resource partitioning use case of Shared O-RU

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | rApp has details on how a Shared O-RU's resource are to be partitioned. |  |
| Actors and Roles | Owning operator Service Management & Orchestration (SMO) provides inventory details of Shared O-RU and O-DUs.  Owning operator sharing coordinator recovers inventory and decides on partitioning of carriers between O-DUs.  Owning operator sharing coordinator uses resource partitioning rApp to partition resource configuration of a Shared O-RU between O-DUs. |  |
| Assumptions | All relevant functions and components are instantiated.  Inventory management systems identify Shared O-RU carrier capabilities and available O-DUs. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Begins when | Owning operator sharing coordinator decides to share an O-RU between multiple O-DUs. |  |
| Pre-conditions | Inventory system is up to date. |  |
| Step 1 (M) | Owning operator sharing coordinator recovers O-RU and O-DU inventory and decides on resource partitioning. |  |
| Step 2 (M) | Owning operator sharing coordinator resource partitioning rApp to partition shared O-RU between multiple O-DUs. |  |
| Step 3 (M) | rApp signals O-DU identity(ies) to owning operator configuration management system. |  |
| Step 4 (M) | Owning operator configuration management system configures transport systems with call home identity(ies) for O-DU(s). | O-RAN.WG4.MP  [28], clause 6.2.5 |
| Step 5 (M) | Participating operator sharing coordinator recovers O-RU and O-DU inventory and decides on resource partitioning. |  |
| Step 6 (M) | Participating operator sharing coordinator resource partitioning rApp to partition Shared O-RU between multiple O-DUs. |  |
| Step 7 (M) | rApp signals O-DU identity(ies) to participating operator configuration management system. |  |
| Step 8 (M) | Participating operator configuration management system configures transport systems with call home identity(ies) for O-DU(s). | O-RAN.WG4.MP  [28], clause 6.2.5 |
| Ends when | Owning operator rApp has details on how shared O-RU's resource are to be partitioned. |  |
| Exceptions | None identified. |  |
| Post Conditions | None identified. |  |

The flow diagram of the resource partitioning use case for Multi-MNO configuration is given in figure 4.20.3.16-1.

![Generated by PlantUML](../assets/images/2bd9e5bb7444.png)

###### Figure 4.20.3.16-1: Resource partitioning use case for Multi-MNO

#### Start-up use case of Shared O-RU for Multi-MNO configuration

The following describes the solution for the start-up sub-use case for a Shared O-RU for Multi-MNO configuration. The context of the Shared O-RU start-up use case is captured in table 4.20.3.17-1.

###### Table 4.20.3.17-1: Shared O-RU start-up use case

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | The Shared O-RU is operating with the necessary software version and has established network connectivity with the O-DU(s) and, for hybrid deployments, the SMO. |  |
| Actors and Roles | Shared O-RU calls home and establishes network management session.  Owning operator SMO is responsible for software management for the Shared O-RU when operating in hybrid management mode.  O-DU is responsible for software management for the Shared O-RU when operating in hierarchical management mode.  Participating operator SMO handles communication to its connected O- DU.  RAN NF OAM SMO services - provides RAN NF OAM related services for FCAPS and LCM type functions. |  |
| Assumptions | None. |  |
| Begins when | Shared O-RU powers on. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Preconditions | Transport systems (DHCP server) has been configured with call home configuration information. |  |
| Step 1 (M) | Establish synchronization:  Each O-DU and Shared O-RU establish synchronisation with a timing source, for example PTP (IEEE 1588) or Sync-E. See NOTE 1, NOTE 2. |  |
| Step 2 (M) | Synchronization state change notification:  After the O-RU has a synchronisation source, all subscribed O-DU(s) are notified through a synchronisation state change notification. We expect the O-RU to be in the sync state "*LOCKED*".  The synchronisation state change notification goes from Shared O-RU to all subscribed O-DU(s).  It is possible that the synchronisation procedure can happen in parallel to the other steps of the start-up sub-use case. Thus, many of the other steps in this use case can happen as the synchronization procedure occurs. Even though this is shown as "step 2" this can complete after other steps. |  |
| Step 3 (ALT) | [Shared O-RU operated in hybrid management mode]  Shared O-RU establishes a network management session with owning operator SMO. | O-RAN.WG4.MP  [28], clause 6.3 and/or clause 6.9.2 |
| Step 4 | [Shared O-RU operated in hierarchical management mode]  Shared O-RU calls home and triggers establishment of network management session with owning operator O-DU#1. | O-RAN.WG4.MP  [28], clause 6.3 |
| Step 5 (ALT) | [Shared O-RU operated in hybrid management mode]  Shared O-RU establishes network management session with participating operator SMO. | O-RAN.WG4.MP  [28], clause 8.4 |
| Step 6 | [Shared O-RU operated in hierarchical management mode]  Shared O-RU calls home and triggers establishment of network management session with participating operator O-DU#2. | O-RAN.WG4.MP  [28], clause 6.3 |
| Step 7 | [Shared O-RU operated in hybrid management mode]  SMO recovers software inventory request from Shared O-RU. |  |
| Step 8 | [Shared O-RU operated in hybrid management mode]  SMO recovers software inventory response from Shared O-RU. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Step 9 (O) | [Shared O-RU operated in hybrid management mode and software update required]  SMO triggers download of new software. | O-RAN.WG4.MP  [28], clause 8.5 |
| Step 10 (O) | [Shared O-RU operated in hybrid management mode and software update required]  O-RU downloads software files. | O-RAN.WG4.MP  [28], clause 8.5 |
| Step 11 (O) | [Shared O-RU operated in hybrid management mode and software update required]  SMO triggers the installation of the software. | O-RAN.WG4.MP  [28], clause 8.6 |
| Step 12 (O) | [Shared O-RU operated in hybrid management mode and software update required]  SMO triggers the activation of the software. | O-RAN.WG4.MP  [28], clause 8.7.2 |
| Step 13 (O) | [Shared O-RU operated in hybrid management mode and software update required]  SMO brings active software into operation.  A O-RU reset is required to take the activated software into operation. | O-RAN.WG4.MP  [28], clause 8.7.3 |
| Step 14 (ALT) | [Shared O-RU operated in hierarchical management mode]  Owning operator O-DU#1 recovers software inventory request. | O-RAN.WG4.MP  [28], clause 8.4 |
| Step 15 | [Shared O-RU operated in hierarchical management mode]  Owning operator O-DU#1 recovers software inventory response. | O-RAN.WG4.MP  [28], clause 8.4 |
| Step 16 (O) | [Shared O-RU operated in hierarchical management mode and software update required]  Owning operator O-DU#1 triggers download of new software. | O-RAN.WG4.MP  [28], clause 8.5 |
| Step 17 (O) | [Shared O-RU operated in hierarchical management mode and software update required]  O-RU downloads software files. | O-RAN.WG4.MP  [28], clause 8.5 |
| Step 18 (O) | [Shared O-RU operated in hierarchical management mode and software update required]  Owning operator O-DU#1 triggers the installation of the software. | O-RAN.WG4.MP  [28], clause 8.6 |
| Step 18 (O) | [Shared O-RU operated in hierarchical management mode and software update required]  Owning operator O-DU#1 triggers activation of the software. | O-RAN.WG4.MP  [28], clause 8.7 |
| Step 19 (O) | [Shared O-RU operated in hierarchical management mode and software update required]  Owning operator O-DU#1 brings active software into operation. | O-RAN.WG4.MP  [28], clause 8.7 |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Ends when | The Shared O-RU is operating with the necessary software version and has established network connectivity with the O-DU and, for hybrid deployments, the owning operator SMO. |  |
| Exceptions | None identified. |  |
| Post Conditions | None identified. |  |
| NOTE 1: It is expected the O-RU and all O-DUs connected it would share the same synchronisation source otherwise, the O-DUs will drift in timing.  NOTE 2: For more details on O-RU sync and O-RU loss of sync, see O-RAN.WG4.MP [28], clause 15.3.3. | | |

The flow diagram of the Shared O-RU start-up use case is given in figure 4.20.3.17-1 for Multi-MNO.

![Generated by PlantUML](../assets/images/e72eaa797b60.png)

###### Figure 4.20.3.17-1: Shared O-RU start-up use case for Multi-MNO

#### Supervision sub-use case of a Shared O-RU for Multi-MNO configuration

The following describes the solution for the supervision sub-use case for a Shared O-RU for a Multi-MNO configuration. The context of the supervision use case of a Shared O-RU is captured in table 4.20.3.18-1.

###### Table 4.20.3.18-1: Supervision sub-use case of a Shared O-RU

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | The Shared O-RU operates watchdog timers with each of its O-DUs and ceases transmitting on a partitioned carrier associated with an O-DU if is watchdog timer to that O-DU expires. |  |
| Actors and Roles | Shared O-RU operates watchdog timers and deactivates any carriers associated with an expired watchdog timer.  O-DU repeatedly resets the Shared O-RU's supervision timer. SMO forwards any alarms to Shared O-RU rApp. |  |
| Assumptions | O-DUs are operating fronthaul control and user plane for their respective partitioned carriers.  SMO has subscribed to receive alarm notifications (hybrid management model). |  |
| Begins when | An O-DU subscribes to receive supervision notifications. |  |
| Step 1 (Loop) | O-DU#1 initiates supervision operations. |  |
| Step 2 (Loop) | O-RU response from supervision operations. |  |
| Step 3 (O) | O-DU#1 detects that it has lost communication sessions to the Shared O-RU. It raises a communication alarm to the owning operator SMO. |  |
| Step 4 (O) | **Cease transmission** - Shared O-RU detects supervision failure with O- DU#1 and ceases transmitting on partitioned carrier associated with O- DU of the owning operator RAN network. |  |
| Step 5 (O) | Shared O-RU sends alarm notification to owning operator fault management in SMO. |  |
| Step 6 (O) | Owning operator fault management sends alarm notification to owning operator Non-RT RIC. |  |
| Step 7 (O) | Owning operator Non-RT RIC sends alarm notification to owning operator Shared O-RU orchestration rApp. |  |
| Step 8 (Loop) | O-DU#2 initiates supervision operations. |  |
| Step 9 (Loop) | O-RU response from supervision operations. |  |
| Step 10 (O) | O-DU#2 detects that it has lost communication sessions to the Shared O-RU. It raises a communication alarm to the owning operator SMO. |  |
| Step 11 (O) | **Cease transmission** - Shared O-RU detects supervision failure with O- DU#2 and ceases transmitting on partitioned carrier associated with O- DU from the participating operator RAN network. |  |
| Step 12 (O) | Shared O-RU sends alarm notification to the participating operator fault management. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Step 13 (O) | Participating operator fault management sends alarm notification to participating operator Non-RT RIC. |  |
| Step 14 (O) | Participating operator Non-RT RIC sends alarm notification to participating operator Shared O-RU orchestration rApp. |  |
| Ends when | O-DU terminates subscription to supervision notification. |  |
| Exceptions | None identified. |  |
| Post Conditions | None identified. |  |

The flow diagram of the Shared O-RU supervision use case is given in figure 4.20.3.18-1 for Multi-MNO.

![Generated by PlantUML](../assets/images/a7cd32dc5f8a.png)

###### Figure 4.20.3.18-1: Supervision use case of a Shared O-RU in Multi-MNO

#### Antenna Line device (ALD) control sub-use case of a Shared O-RU for Multi- MNO configuration

The following describes the solution for the ALD control sub-use case for a Shared O-RU for Multi-MNO configuration. The context of the antenna line device control use case of a Shared O-RU is captured in table 4.20.3.19-1.

###### Table 4.20.3.19-1: Antenna line device control use case of a Shared O-RU

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | The ALD connected to Shared O-RU is configured to operate with ALD controller. |  |
| Actors and Roles | Owning operator rApp is responsible for determining which O-DU is responsible for ALD oontroller aspects.  O-DU is responsible for implementing ALD oontroller.  O-RU is responsible for bridging between OFH and HDLC. ALD is responsible for terminating HDLC. |  |
| Assumptions | None. |  |
| Begins when | Shared O-RU has started up and has been configured with correct software version. |  |
| Pre-conditions | None. |  |
| Step 1 (M) | Owning operator rApp determines which O-DU is responsible for performing ALD controller functionality. |  |
| Step 2 (M) | Owning operator rApp triggers the configuration of the ALD controller for Shared O-RU. |  |
| Step 3 (M) | Owning operator Non-RT RIC triggers the configuration of ALD controller for Shared O-RU. |  |
| Step 4 (M) | Owning operator SMO uses O1 interface to configure ALD controller in O-DU. |  |
| Step 5 (M) | O-DU uses open fronthaul interface to configure ALD aspects of Shared O-RU. | O-RAN.WG4.MP  [28], clause 9 |
| Step 6 (M) | Participating operator rApp triggers the configuration of the ALD controller for Shared O-RU. |  |
| Step 7 (M) | Participating operator Non-RT RIC triggers the configuration of ALD controller for Shared O-RU. |  |
| Step 8 (M) | O-DU uses open fronthaul interface to signal ALD request. | O-RAN.WG4.MP  [28], clause 14.4 |
| Step 9 (M) | O-DU uses open fronthaul interface to signal ALD response. | O-RAN.WG4.MP  [28], clause 14.4 |
| Step 10 (M) | Shared O-RU provides interworking between OFH and HDLC request. | O-RAN.WG4.MP  [28], clause 14.4 |
| Step 11 (M) | Shared O-RU provides interworking between OFH and HDLC response. | O-RAN.WG4.MP  [28], clause 14.4 |
| Ends when | ALD connected to Shared O-RU is configured correctly. |  |
| Exceptions | None identified. |  |
| Post Conditions | None identified. |  |

The flow diagram of the antenna line device sub-use case is given in figure 4.20.3.19-1.

![Generated by PlantUML](../assets/images/d9e269ea74e1.png)

###### Figure 4.20.3.19-1: Antenna line device sub-use case for multi-MNO

#### Antenna calibration use case of a Shared O-RU for Multi-MNO configuration (deferred)

The following will describe the solution for the antenna calibration sub-use case for a Shared O-RU.

#### Rehoming use case of a Shared O-RU for Multi-MNO

The following describes the solution for the rehoming sub-use case for a Shared O-RU in a Multi-MNO configuration. The step-by-step details of the rehoming use case of a Shared O-RU is in table 4.20.3.21-1.

###### Table 4.20.3.21-1: Rehoming use case of a Shared O-RU in Multi-MNO

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | A Shared O-RU is rehomed and is able to pair with new O-DU or existing (previous) O-DU parents in a Multi-MNO setting. |  |
| Actors and Roles | Shared O-RU is the element that is rehomed.  Host O-DU (old) is the original Shared O-RU parent.  SRO O-DU (old) is another original O-DU Shared O-RU is connected to. This is owned by the participating operator. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
|  | Host O-DU (new) is the new Shared O-RU parent.  SRO O-DU (new) is another new O-DU Shared O-RU is connected to. This is owned by the participating operator.  SMO can receive results from calibration. |  |
| Assumptions | The Shared O-RU is in a deployment with the original (old) O-DUs and will be moved to the new ones or stays with the original O-DUs  (Typically) the operator will plan a Shared O-RU move before they actually perform the operations related to the move. |  |
| Begins when | This use case starts with any of these three situations:  Case #1 starts when the Shared O-RU is physically moved to a new location (however still connected to original O-DUs).  Case #2 starts when the Shared O-RU is physically moved to a new location but is connected to new O-DUs.  Case #3 starts when the Shared O-RU stays in same physical location but is connected to new O-DUs (management-initiated rehoming). |  |
| **Case #1** - O-RU is physically moved with same O-DU parents | | |
| Step 1 (M) | **Shared O-RU is disconnected from original O-DUs**  The Shared O-RU is physically disconnected (fiber disconnected) from the existing O-DU parents.  Then, the Shared O-RU is physically moved to a new location. |  |
| Step 2 (M) | **Shared O-RU is reconnected to original O-DUs**  The Shared O-RU is either physically reconnected (different fiber) or connected at the transport layer (with the original fiber) to reconnected to the original O-DU parents, and the following sub-use cases are triggered as a result:   * Shared O-RU startup sub-use case for Multi-MNO configuration * Configuration sub-use case * Resource partitioning sub-use case for Multi-MNO configuration * Coordinated reset sub-use case for Multi-MNO configuration * Supervision sub-use case for Multi-MNO configuration |  |
| **CASE #2** - O-RU is physically moved with new O-DU parents | | |
| Step 1 (M) | **Shared O-RU is disconnected from original O-DUs** |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
|  | The Shared O-RU is physically disconnected (fiber disconnected) from the former O-DU parents.  Then, the Shared O-RU is physically moved to a new location. |  |
| Step 2 (M) | **Shared O-RU is connected to new O-DUs**  The Shared O-RU is either physically reconnected (different fiber) or connected at the transport layer (with the original fiber) to new O-DU parents, and the following sub-use cases are triggered as a result:   * Shared O-RU startup sub-use case for Multi-MNO configuration * Configuration sub-use case * Resource partitioning sub-use case for Multi-MNO configuration * Coordinated reset sub-use case for Multi-MNO configuration * Supervision sub-use case for Multi-MNO configuration |  |
| **Case #3** - Management initiated rehoming | | |
| Step 1 (M) | **Management initiated rehoming for Shared O-RU**  Shared O-RU already has physical front-haul connections in place.  Main operator SMO Initiates rehoming operation with O-DUs connected to the Shared O-RU.  Participating operator SMO initiates rehoming operation with O-DUs connected to the Shared O-RU. |  |
| Step 2 (M) | **Shared O-RU starts up**  The Shared O-RU starts up with the new O-DU parents, and the following sub-use cases are triggered as a result:   * Shared O-RU startup sub-use case for Multi-MNO configuration * Configuration sub-use case * Resource partitioning sub-use case for Multi-MNO configuration * Coordinated reset sub-use case for Multi-MNO configuration * Supervision sub-use case for Multi-MNO configuration |  |
| Ends when | The Shared O-RU has been moved and connected to the appropriate O- DUs, and is operational again. |  |
| Exceptions | None. |  |
| Post Conditions | None. |  |

The flow diagram of the rehoming use case of a Shared O-RU for Multi-MNO is given in figure 4.20.3.21-1.

![Generated by PlantUML](../assets/images/1fa1a46b306f.png)

###### Figure 4.20.3.21-1: Rehoming use case of a Shared O-RU for Multi-MNO

#### Performance management use case of a Shared O-RU for Multi-MNO

The following describes the solution for the performance management sub-use case for a Shared O-RU in a Multi-MNO configuration.

The context of the performance management sub-use case of a Shared O-RU in a Multi-MNO configuration is captured in table 4.20.3.22-1.

###### Table 4.20.3.22-1: Performance management sub-use case of a Shared O-RU in a Multi-MNO

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Each O-DU has established subscriptions to receive performance management notifications regarding operation of the fronthaul between the O-DUs and shared O-RU.  The O-DU and Shared O-RU are able to report performance measurement data towards their consumers in a Multi-MNO configuration. |  |
| Actors and Roles | Shared O-RU generates performance management notifications on a per partitioned carrier basis  O-DU subscribes to receive performance management notifications from Shared O-RU. |  |
| Assumptions | O-DU has configured performance management metrics for respective partitioned carrier. |  |
| Begins when | Fronthaul control and user plane is operational between O-DU and Shared O-RU. |  |
| Step 1 (M) | O-DU#1 subscribes to receive PM notifications from Shared O-RU. |  |
| Step 2 (M) | O-DU#2 subscribes to receive PM notifications from Shared O-RU. |  |
| Step 3 (loop) | Shared O-RU sends PM notification to O-DU#1. |  |
| Step 4 (loop) | Shared O-RU sends PM notification to O-DU#2. |  |
| **O-DU to SMO performance operations** | | |
| Step 1 (O) | **PM event notification reporting**  The O-DU (producer) sends performance data to the SMO (consumer) through an event notification. |  |
| Step 2 (O) | **Streaming PM reports**  The O-DU establishes a persistent connection to the SMO and sends performance data. |  |
| Step 3 (O) | **Attribute-based or URI-based collection** |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
|  | Performance data is read by the consumer (SMO) through configuration management attribute. Alternatively, the O-DU can support a data scraping method where a collector (SMO) reads the data from a pre- defined URI. |  |
| Step 4 (O) | **Producer or PM file upload (file upload)**  O-DU uploads a PM file to the SMO.  See NOTE 1. |  |
| Step 5 (O) | **Consumer downloads PM file (file download)**  O-DU issues file ready notification to SMO about the data being ready for download, or SMO periodically polls the O-DU. Afterwards, the SMO (consumer) can download the PM file. |  |
| **O-RU to O-DU performance operations (in hierarchical configuration)** | | |
| Step 1 (O) | **PM event notification reporting**  The O-RU sends performance data to the O-DU through an event notification. The notification is sent to a subscriber of performance data. |  |
| Step 2 (O) | **O-DU requests for O-RU to start sending PM data**  O-DU invokes an RPC to give PM credentials, target URI, and periodicity notification interval to the Shared O-RU. This includes all the necessary information for the O-RU to perform a file transfer to an endpoint.  See NOTE 2. |  |
| Step 3 (O) | **Shared O-RU uploads PM file**  The Shared O-RU periodically uploads a performance to the target URI using the PM credentials given by the O-DU. |  |
| **O-RU to SMO performance operations (in hybrid configuration)** | | |
| Step 1 (O) | **PM event notification reporting**  The O-RU sends performance data to the SMO through an event notification via M-plane. The notification is sent to a subscriber of performance data. |  |
| Step 2 (O) | **SMO requests for O-RU to start sending PM data** |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
|  | SMO invokes an RPC to give PM credentials, target URI, and periodicity notification interval to the Shared O-RU. This includes all the necessary information for the O-RU to perform a file transfer to a endpoint. |  |
| Step 3 (O) | **Shared O-RU uploads PM file**  The Shared O-RU uploads performance file to target URI using PM credentials given by the SMO. |  |
| Ends when | 1. Subscription setup: O-DU terminates subscription to performance management notification. 2. O-DU to SMO sending PM data: Use case ends with the producer (O- DU) sending performance data to the consumer (SMO). 3. O-RU sending performance data: Use case ends with the producer (O-RU) starting to send performance data to the subscriber. |  |
| Exceptions | None identified. |  |
| Post Conditions | The consumer has received performance data and may perform post processing operations on the data. |  |
| NOTE 1: When the O-DU sends performance files received from a Shared O-RU, they are converted to the proper 3GPP format before sending to SMO. See O-RAN WG5.O-DU-O1 [25].  NOTE 2: The O-DU establishes a framework for the Shared O-RU to send PM files. This operation is performed only once, thereafter, the Shared O-RU sends the PM files periodically. | | |

The flow diagram of the performance management sub-use case of a Shared O-RU in a Multi-MNO is given in figure 4.20.3.22-1.

![Generated by PlantUML](../assets/images/ff7591673875.png)

###### Figure 4.20.3.22-1: Performance management use case of a Shared O-RU for Multi-MNO

#### Antenna calibration use case of a Shared O-RU for Multi-MNO

The following describes the solution for the antenna calibration sub-use case for a Shared O-RU in a Multi-MNO configuration.

The step-by-step details of the antenna calibration use case of a Shared O-RU are captured in table 4.20.3.23-1.

###### Table 4.20.3.23-1: Antenna calibration of a Shared O-RU in Multi-MNO

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | The host O-DU performs an antenna calibration procedure with the shared O-RU in a Multi-MNO configuration.  The owning operator O-DU reports antenna calibration results to the SMO. |  |
| Actors and Roles | Shared O-RU performs the antenna calibration procedure.  Owning operator O-DU (host) that requests for antenna calibration procedure with Shared O-RU.  Participating operator O-DU is owned by the participating operator. Owning operator SMO can receive results from calibration.  Participating operator SMO can also receive results from calibration. |  |
| Assumptions | All O-DUs have connectivity to O-RU.  All actors are operational and have initialized.  Fronthaul control and user plane is operational between all O-DUs and Shared O-RU. |  |
| Begins when | 1. The Shared O-RU has detected that antenna calibration is required. 2. The Owning operator O-DU initiates an antenna calibration procedure. |  |
| Step 1.1 (O) | **Recalibration required (O-RU initiated)**  The Shared O-RU has detected that antenna calibration is needed and sends an antenna calibration needed notification to the owning operator host O-DU over the open FH. In this case, the O-RU initiates the calibration procedure. |  |
| Step 1.2 (O) | **Calibration request**  The host O-DU of the owning operator requests for antenna calibration procedure to start for Shared O-RU. |  |
| Step 1.1 (M) | **Host O-DU informs SMO** |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
|  | The owning operator SMO together with host O-DU (owning operator) informs that an antenna calibration operation is needed. |  |
| Step 1.2 (M) | **SMO to SMO negotiation**  Through exposure of management services, the owning operator SMO negotiates with the participating operator SMO that the host O-DU would like to perform an antenna calibration operation. Here, the participating operator SMO may object to the antenna calibration operation. |  |
| Step 1.3 (O) | **Host O-DU initiates antenna calibration**  If agreed to proceed, owning operator SMO together with host O-DU (owning operator) initiates an antenna calibration operation. |  |
| Step 1.4 (M) | **SMO informs participating operator O-DU**  The participating operator SMO informs its O-DU that the antenna calibration operation will be initiated by the owning operator (host) O-DU. |  |
| Step 1.5 (M) | **Calibration request (O-DU initiated)**  The host O-DU of the owning operator requests for antenna calibration procedure to start for Shared O-RU. In this case the O-DU initiates the calibration procedure. |  |
| Step 2 (M) | **Calibration operation at O-RU**  Shared O-RU performs antenna calibration procedure. |  |
| Step 3 (M) | **Calibration response**  The Shared O-RU responds with antenna calibration results to the owning operator O-DU. |  |
| Step 4 (M) | **Calibration results**  The owning operator O-DU returns antenna calibration results to owning operator SMO. |  |
| Step 5 (M) | **Calibration results to O-DU #2**  Shared O-RU notifies the participating operator O-DU with antenna calibration results. |  |
| Step 6 (M) | **Calibration results** |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
|  | The participating operator O-DU returns antenna calibration results to the participating operator SMO. |  |
| Ends when | (1) **Antenna calibrated**: Antenna calibration procedure has finished, and results reported. |  |
| Exceptions | The O-RU may indicate a calibration failure, which is reported to the owning operator O-DU. The O-DU logs the failure and notifies north- bound entities. |  |
| Post Conditions | None. |  |

The flow diagram of the antenna calibration use case of a Shared O-RU for Multi-MNO is given in figure 4.20.3.23-1.

![Generated by PlantUML](../assets/images/b4800e3f367a.png)

###### Figure 4.20.3.23-1: Antenna calibration use case of a Shared O-RU for Multi-MNO

#### Dynamic resource shifting use case of a Shared O-RU

The following will describe the solution for dynamic resource shifting sub-use case for a Shared O-RU.

###### Table 4.20.3.24-1: Dynamic resource shifting use case of a Shared O-RU

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Cooperating O-DUs serve cells overlapping spectrum in a way, so that frequency resources effectively used by each O-DU can be dynamically shifted between O-DUs and interference is avoided at air interface. There is no impact to regular procedures performed between O-DUs and UEs and UE energy consumption is not increased. |  |
| Actors and Roles | Shared O-RU serves radio functions to the air. O-DU performs radio resource handling.  SMO configures other actors. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
|  | Near-RT RIC coordinates dynamic shifting of spectrum resources between O-DUs. |  |
| Assumptions | O-RU is configured to serve for 2 or more O-DUs.  O-DUs are configured respectively - including dedicated set of bandwidth parts in UL and DL alike.  Near-RT RIC knows how bandwidth parts are configured to O-DUs. Near-RT RIC is receiving traffic-related statistics from O-DUs.  Near-RT RIC is provided with traffic shaping policy for cells that use overlapping spectrum. |  |
| Begins when | Near-RT RIC decides to change bandwidth effectively used by cells served by O-DUs. |  |
| Step 1 (M) | Near-RT RIC provides O-DUs with updated lists of bandwidth parts O- DUs are allowed to utilize. |  |
| Step 2 (M) | O-DUs respectively confirm reception of updated list of permitted bandwidth parts to Near-RT RIC. |  |
| Step 3 (loop) | O-DUs use actual list of permitted bandwidth parts for scheduling in downlink and uplink respectively. |  |
| Ends when | Update of list of permitted bandwidth parts confirmed to Near-RT RIC. |  |
| Exceptions | It is feasible that list of permitted bandwidth parts is updated to some (not all) of cooperating O-DUs. |  |
| Post Conditions | Lists of permitted bandwidth parts are successfully updated for desired O-DUs. |  |

The flow diagram of the dynamic resource shifting sub-use case for Shared O-RU is given in figure 4.20.3.24-1.

![](../assets/images/f9a927b5a243.jpg)

###### Figure 4.20.3.24-1: Dynamic resource shifting sub-use case for Shared O-RU

#### Static resource shifting use case for Single-MNO

The following will describe the solution for static resource shifting sub-use case for a Shared O-RU.

###### Table 4.20.3.25-1: Static resource shifting use case of a Shared O-RU

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Cooperating O-DUs serve cells using a designated chunk of spectrum at a time, allowing carrier frequency resources to be effectively reallocated between O-DUs and ensuring interference is avoided at the air interface.  This is a service impacting use case. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Actors and Roles | **Actors:**  Shared O-RU O-DUs  O-CU SMO  **Roles:**  Please refer to 4.20.2.25. |  |
| **Initiation** | | |
| Assumptions | * O-RU is configured to have connectivity with 2 or more O-DUs. * O-DUs are configured respectively for connectivity with Shared O- RU. * Fronthaul M-plane (Netconf session) sessions are established between Shared O-RU and O-DUs as per provided configurations. * SMO knows the capabilities of O-DUs. * SMO is receiving traffic-related statistics from O-DUs. * SMO manages the entire process and ensures coordination between O-DUs. * SMO configures the initial roles and resources for O-DUs and O-RU. |  |
| **Collection of counters** | | |
|  | O-DUs report PM counters to SMO (Non-RT RIC). PM counters are used by SMO as trigger to decide if static resource shifting shall be applied. |  |
| **Static resource shifting** | | |
| **Deactivation and removal of cell(s) and carrier(s) associated with O-DU#1** | | |
| Begins when | SMO decides to start static resource shifting for specific cell(s) served by O-DUs through Shared O-RU. |  |
| Step 1 (M) | SMO requests O-CU to deactivate cell(s) served by O-DU#1. |  |
| Step 2 (M) | O-CU informs O-DU#1 about the cell(s) to be deactivated via F1 interface. |  |
| Step 3 (M) | O-DU#1 maps mentioned above cell(s) with corresponding carrier(s) that need to be deactivated on Shared O-RU. |  |
| Step 4 (M) | For carriers determined in Step 3, O-DU#1 performs carrier deactivation with O-RU. |  |
| Step 5 (M) | Once O-DU#1 knows that relevant carriers(s) are deactivated, it replies to O-CU's request for cell deactivation received in Step 2. |  |
| Step 6 (M) | O-CU replies to SMO's request for cell deactivation received in Step 1. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Step 7.1 (M) | Hierarchical deployment - Cell(s) and carrier(s) removal  SMO requests O-DU#1 to remove specific inactive cell(s) and related carrier(s) from configuration. |  |
| Step 7.2 (M) | O-DU#1 maps requested cell(s) with carrier(s) that needs to be removed from O-RU's configuration. |  |
| Step 7.3 (M) | O-DU#1 informs O-CU about cell(s) being subject of removal. |  |
| Step 7.4 (M) | O-DU#1 performs config update scenario to O-RU to remove configuration related to carrier(s) determined in Step 7.2. |  |
| Step 7.5 (M) | O-DU#1 responds to SMO's request for cell removal received in Step 7.1. |  |
| Step 8.1 (M) | Hybrid deployment - Cell(s) and carrier(s) removal  SMO requests O-RU to remove specific carriers. |  |
| Step 8.2 (M) | O-RU notifies O-DU that specific carriers have been removed. |  |
| Step 8.3 (M) | O-DU#1 performs carrier-to-cell mapping. |  |
| Step 8.4 (M) | O-DU#1 informs SMO about change in resource availability. |  |
| Step 8.5 (M) | For cells that have lost their related carriers completely O-DU#1 informs O-CU about cells are no longer operational. |  |
| Step 8.6 (M) | O-RU responds to SMO's request for carrier(s) removal. |  |
| Step 8.7 (M) | SMO requests O-DU#1 to remove affected cells. |  |
| Step 8.8 (M) | O-DU#1 responds to SMO's request. |  |
| **Configuration of cell(s) and carrier(s) associated with O-DU#2** | | |
| Step 9.1 (M) | Hierarchical deployment - Cell(s) and carrier(s) configuration  SMO configures the cell(s) and related carriers to O-DU#2. |  |
| Step 9.2 (M) | Based on provided configuration O-DU#2 maps the cell(s) with related carrier(s) that needs to be configured to O-RU. |  |
| Step 9.3 (M) | O-DU#2 provides O-RU with configuration for carrier(s) known from Step 9.1. |  |
| Step 9.4 (M) | For cells having their related carriers configured to O-DU, the O-DU#2 informs O-CU about cell(s) being ready to be used. |  |
| Step 9.5 (M) | For configured cells requested in Step 9.1 the O-DU#2 sends cell(s) configuration notification to SMO. |  |
| Step 10.1 (M) | Hybrid deployment - Cell(s) and carrier(s) removal |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
|  | SMO requests O-RU to configure carrier(s). |  |
| Step 10.2 (M) | O-RU sends carrier(s) configuration change notification to O-DU#2. |  |
| Step 10.3 (M) | O-RU sends carrier(s) configuration change notification to SMO. |  |
| Step 10.4 (M) | SMO requests O-DU#2 to configure cell(s) and informs O-DU#2 about mapping between cells and carriers. |  |
| Step 10.5 (M) | For cells with properly mapped carriers the O-DU#2 informs O-CU about cell(s) that are available and ready for activation. |  |
| Step 10.6 (M) | O-DU#2 to SMO's request provided in Step 10.4. |  |
| Step 11 (M) | SMO requests O-CU to activate specific cells. |  |
| Step 12 (M) | O-CU requests O-DU#2 to activate specific cell(s) mentioned in Step 11. |  |
| Step 13 (M) | O-DU#2 maps requested cell(s) with carrier(s) that needs to be activated to O-RU. |  |
| Step 14 (M) | O-DU#2 requests O-RU to activate carriers determined in Step 13. |  |
| Step 15 (M) | O-RU responds to O-DU#2 with carrier(s) activation notification. |  |
| Step 16 (M) | O-DU#2 responds to O-CU with cell(s) activation response. |  |
| Step 17 (M) | O-CU responds to SMO with cell(s) activated notification. |  |
| Ends when | Shifting of cell(s) and associated carrier(s) from O-DU#1 to O-DU#2 is accomplished. |  |
| Exceptions | Error at any of listed steps. |  |
| Post Conditions | Frequency resources are used by cells and related carriers handled by O-DU#2. |  |

The flow diagram of the static resource shifting sub-use case for Shared O-RU is given in figure 4.20.3.25-1.

![Generated by PlantUML](../assets/images/83fc4d45c60a.png)

###### Figure 4.20.3.25-1: Static resource shifting sub-use case for Shared O-RU

### Required data

#### Required data for all Shared O-RU use cases

The following required data is relevant to the following sub-use cases: resource partitioning, start-up, configuration, supervision, performance management, ALD control, antenna calibration, rehoming, and shutdown:

* Inventory system maintains inventory data for the Shared O-RUs because it needs to be able to identify Shared O-RUs.
* The resource partitioning rApp maintains carrier resource information because it needs to be able to partition the Shared O-RU carrier resources between different O-DU nodes.
* In hierarchical management mode, the configuration rApp maintains the active/standby state & status for O-DUs because needs to determine which O-DU is responsible for configuring the common aspects of a Shared O-RU.
* The supervision needs to include the O-DU identity because the Shared O-RU needs to be able to support supervision on a per O-DU basis.
* Alarm data needs to be kept at the Shared O-RU because the Shared O-RU needs to be able to terminate transmissions associated with an O-DU when it loses supervision with that O-DU and to continue to operate with other O-DUs. There will be a history of alarm data.
* Shared O-RU measurement counters and KPIs (as defined by O-RAN.WG4.MP [28]) shall be available on a per O-DU basis.
* O-DU needs to include its O-DU identity to enable supervision operation on a per O-DU basis.
* The ALD control rApp maintains data to keep track which O-DU is responsible for ALD controller functionality because it needs to be able to select which O-DU is responsible for ALD controller functionality.

#### Required data for Single-MNO configurations

The following data applies for single operator configurations when used by the other Shared O-RU sub-use cases:

* Non-RT RIC needs to be able to partition the Shared O-RU carriers between O-DU nodes operated by the same MNO.

#### Required data for Multi-MNO configurations

The following data applies for multi-operator configurations when used by the other Shared O-RU sub-use cases:

* The resource partitioning rApp needs to be able to partition the Shared O-RU carrier resources between different O-DU nodes of different MNOs.
* Shared O-RU needs to be able to associate management accounts with an MNO.
* The Shared O-RU needs to be able to implement role-based access control on a per-MNO basis.
* The Shared O-RU needs to associate carrier resources with MNOs.
* Measurement counters and KPIs (as defined by O-RAN WG4) need to be available on a per MNO basis.
* Tenant SMO needs to be able to support common Shared O-RU configuration defined by host operator.

#### Required data for resiliency use cases

The following data is used by the resiliency use case:

* The supervision needs to include the O-DU identity because the Shared O-RU needs to be able to support supervision on a per O-DU basis.
* Alarm data needs to be kept at the Shared O-RU because the Shared O-RU needs to be able to terminate transmissions associated with an O-DU when it loses supervision with that O-DU and to continue to operate with other O-DUs. There will be a history of alarm data.
* The configuration data from the active O-DU is passed to the standby O-DU.
* The configuration information of carriers of the standby O-DU are configured for the O-RU.
* The management system has the state & status data regarding which O-DU is and shall be active.
* The management system has the state & status data regarding which O-DUs are and shall be standby.
* The management system has the alarm history and alarm information for the Shared O-RU.

NOTE: There are many different situations and variations of the resiliency sub-use cases. Some of them need not require all the above data.

#### Required data for Shared O-RU management during O-DU SW update sub-use case for Shared O-RU

The following data is used by SW update of O-DU and associated Shared O-RU provisioning:

* The *configuration data* for provisioning the SW updated O-DU based on the change management plan for SW update.
* The *configuration information* of carriers of the SW updated O-DU configured on the Shared O-RU.
* The management system *has state and status details* of O-DUs to identify the right candidate to be used for SW update.
* The management system has *state and status details* of SW updated O-DU to verify the status and health of the SW update.
* The management system has the *alarm history and alarm data* of the Shared O-RU to verify functionality and sanity of the SW updated O-DU.
* Non-RT RIC needs to be able to partition the Shared O-RU carriers between SW updated O-DU and other O-DU nodes operated by the same MNO.
* Alarm data and performance data needs to be kept at Shared O-RU to verify the sanity of O-DU SW update
* O-DU SW change management rApp maintains the change management plan data for O-DU SW update to initiate & supervise the SW update process and to validate the sanity of the deployment against the plan.
* Historical configuration and software details of the O-DU is maintained for SW update so that the mitigation step of the SW update can bring the O-DU to the situation before SW update.

#### Required data for Shared O-RU - Dynamic resource shifting

The following data is used to perform dynamic resource shifting:

* The resource partitioning xApp maintains cell resource information because it needs to be able to partition frequency resources between different O-DU nodes.
* O-DU measurement counters and KPIs related to served traffic shall be available for Near-RT RIC on a per O-DU basis.
* Near-RT RIC needs to be able to dynamically update list of allowed bandwidth parts per O-DU nodes in a way so that each O-DU exclusively uses subset of shared bandwidth.
* The configuration information of cells served by O-DUs needs to be known to Near-RT RIC.

#### Required data for Shared O-RU - Static resource shifting

The following data is used to perform static resource shifting:

* The resource optimization rApp may maintain cell resource information because it needs to be able to reallocate the cell and associated carrier frequency resources between different O-DU nodes.
* O-DU measurement counters shall be available for SMO (Non-RT RIC) on a per O-DU and per cell basis via O1 interface.
* The configuration information of cell(s) served by O-DUs needs to be known to SMO (Non-RT RIC).

## Network energy saving

This clause provides the motivations, descriptions, and proposed solutions for different energy efficiency and energy saving features (sub-use cases). While there are energy savings by improving base station hardware efficiency and by the evolution of radio access technologies, the EE/ES use case primarily addresses enhancements in software efficiency and optimized configuration/control of various elements and functions, which are often AI/ML based.

### Background and goal of the use case

The RAN is responsible for a major part of the Energy Consumption (EC) of a mobile network, and the O-RU accounts for the largest part of the energy consumption of the RAN. The rarefication of fossil fuel-based energy resources and the urgent need to reduce CO2 emissions make the EC a strategic topic for network operators, in addition of being a significant component of the operators' OPEX.

EC can be reduced by improving the Energy Efficiency (EE) of the network, and by introducing different Energy Saving (ES) mechanisms. Several ES mechanisms are related to switching off certain components in the network and differ from one another by their scope, time scale and network area. Applicable ES methods are for instance strongly load dependent. Optimization efficiency might be further improved by AI/ML based configuration thereof.

RAN functions related to network energy saving solutions have been studied in 3GPP RAN3 in Rel.17 as part of the Study on Enhancement for Data Collection for NR and EN-DC. The outcome is documented in 3GPP TR 37.817 [i.2]. 3GPP RAN2 and RAN3 might specify enhancements for the Minimization of Drive Tests (MDT) procedures and/or signaling procedures that rely on Xn signaling in Rel.18. While 3GPP RAN WGs work on solutions with ML model inference within the gNB, O-RAN specifies solutions that benefit from ML model inference in the Near-RT or Non-RT RIC (e.g., optimizing the network in larger service areas). For EE related network management, use cases, requirements and solutions are specified in 3GPP TS 28.310 [3]. Furthermore, EC measurements and KPIs for 5G networks, network functions, NG-RAN and gNBs such as energy efficiency and energy consumption KPIs and performance measurements are specified in 3GPP TS 28.554 [7]. Centralized and distributed ES management functions are specified in 3GPP TS

28.541 [5].

EE can be considered for the whole network (i.e., end-to-end), for a sub-network or per single network element. Within a network element it could be applicable per specific radio resource management mechanism or per radio or transport network link. Network wise EE is defined as the ratio between the data volume delivered in the network and the network

EC observed during the time-period required to deliver such data, with possible adaptations to account for different deployment scenarios and load situations (ETS ES 203 228 [i.5], 3GPP TR 38.913 [i.4]). 3GPP has launched a study item within Rel-18 (RP-213554: "Study on network energy saving for NR") that will include among others, an evaluation methodology and KPIs for EC and ES gains and their impact on network and UE performance and EE. To assess EE and ES associated to radio resource management mechanisms and links, appropriate KPIs are necessary.

In a timescale of minutes, hours and above, and when the cell load is low, ES can be achieved by switching off one or more carriers or the cell. In a timescale from seconds to minutes, ES can be achieved by switching off RF channels (including possibly antennas) of a massive MIMO system. Tx and Rx parts might be switched independently. In a very short timescale corresponding to a symbol, subframe or frame, Advanced Sleep Modes (ASM) can be considered. RF channel on/off switching can be used at medium load and ASM might be usable even at high load. Lastly, ES solutions can be applied to the O-Cloud, namely to the O-CU and O-DU, and can cover mechanisms such as scale in/out processes, workload placement or hardware processors' sleep modes etc. AI/ML is useful for all the above mechanisms with the important role of determining the switch off/on time that maximizes ES gain.

### Entities/resources involved in the use case

*Editor's note: If possible, single common description for all sub-use cases.*

###### Deployment option 1: AI/ML inference host located in the Non-RT RIC

1. Non-RT RIC
   1. Collect configurations, performance indicators and measurement reports (e.g., cell load related information and traffic information, EE/EC measurement reports, geolocation information) from SMO, E2 nodes and O-RUs (forwarded by SMO), for the purpose of training and inference of AI/ML models that assist in the EE/ES functions.
   2. Trigger EE/ES AI/ML model training/retraining.
   3. Deploy or update and configure EE/ES AI/ML models in Non-RT RIC.
   4. Analyze the received data from SMO, E2 nodes and O-RUs to determine EE/ES optimization (e.g., if carriers or cells need to be switched off/on) using AI/ML models and signal updated configuration for EE/ES optimization to E2 nodes via R1/O1 and optionally O-RU via R1/open FH M-plane.
2. E2 node
   1. Report cell configuration, performance indicators and measurement reports (e.g., cell load related information and traffic information, EE/EC measurement reports) to SMO via O1 interface.
   2. Perform actions required for EE/ES optimization.
3. O-RU node
   1. Report EC and EE related information via open FH M-plane interface to O-DU or alternatively to SMO directly.
   2. Support actions required to perform EE/ES optimization.

###### Deployment option 2: AI/ML inference host located in the Near-RT RIC

1. Non-RT RIC
   1. Collect configurations, performance indicators and measurement reports (e.g., cell load related information and traffic information, EE/EC measurement reports, geolocation information) from SMO, E2 nodes and O-RUs (forwarded by SMO), for the purpose of training AI/ML models that assist in the EE/ES functions.
   2. Trigger EE/ES AI/ML model training/retraining.
   3. Deploy or update EE/ES AI/ML models in NearRT RIC.
   4. Configure EE/ES AI/ML models to Near-RT RIC via R1/O1 interface.
   5. Provide optimization trigger, optimization targets and intent based policies (e.g., set energy target to 50% of peak power consumption) to Near-RT RIC via R1/O1 or A1 interface.
2. Near-RT RIC
   1. Collect configurations, performance indicators and measurement reports (e.g., cell load related information and traffic information, EE/EC measurement reports) from E2 nodes.
   2. Receive EE/ES AI/ML model for deployment via O1 or O2 interface.
   3. Receive EE/ES related configuration management via O1 interface and/or policies via A1 interface for consideration during optimization.
   4. Analyze the received data from E2 nodes and perform AI/ML model inference to determine EE/ES. optimization (e.g., if carriers or cells need to be switched off/on) considering the optimization targets/policies.
   5. Provide policies or required information via E2 interface to trigger actions for EE/ES optimization.
3. E2 node
   1. Report cell configuration, performance indicators and measurements reports (e.g., cell load related information and traffic information, EE/EC measurement reports) per cell/carrier via O1 interface to SMO and via E2 interface to Near-RT RIC.
   2. Perform actions required for EE/ES optimization.
4. O-RU node
   1. Report EC and EE related information via open FH M-plane interface to O-DU or alternatively to SMO directly.
   2. Support actions required to perform EE/ES optimization.

### Solutions

*Editor's note: Sub-use case specific solutions with detailed descriptions in fully separate clauses.*

#### Carrier and cell switch off/on

Mobile networks often utilize multiple frequency layers (carriers) to cover the same service area. At low load, ES can be achieved by switching off one or more carriers or entire cells without impairing the network performance. The switch off/on decision can be made by an AI/ML model within the inference host, deployed at the Non-RT RIC (deployment option 1) or at the Near-RT RIC (deployment option 2), as described above. Among others, the AI/ML models' functionality can include prediction of future traffic, user mobility, and resource usage and can also predict expected energy efficiency enhancements, resource usage, and network performance for different ES optimization states. Before switching off/on carrier(s) or cell(s), the E2 node can perform some preparation actions for off switching (e.g., to enable, disable, modify carrier aggregation and/or dual connectivity, to trigger HO traffic and UEs from cells/carriers to other cells or carriers, informing neighboring nodes via X2/Xn interface etc.) as well as for on switching (e.g., cell probing, informing neighboring nodes via X2/Xn interface etc.).

###### Deployment option 1: AI/ML inference host located in the Non-RT RIC

The context of carrier and cell switch off/on: AI/ML inference via Non-RT RIC is captured in table 4.21.3.1-1.

###### Table 4.21.3.1-1: Carrier and cell switch off/on: AI/ML inference via Non-RT RIC

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Enable carrier and cell switch off/on energy saving functions in the network by means of configuration parameter change and actions controlled by Non-RT RIC and allow for AI/ML-based solutions. |  |
| Actors and Roles | Non-RT RIC acting as energy saving decision making function.  E2 node and O-RU acting as configuration enforcement function. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Assumptions | O1 interface connectivity is established towards E2 nodes, Non-RT RIC and SMO.  Open FH M-plane interface is established between E2 node and O-RU and/or SMO and O-RU directly.  Network is operational. |  |
| Pre-conditions | Operator has set the targets for energy saving functions in the Non-RT RIC. |  |
| Begins when | Operator enables the optimization functions for carrier and cell switch off/on energy saving functions and E2 node and O-RU become operational. |  |
| Step 1 (M) | SMO initiates specific measurement data collection request towards E2 node and O-RU for AI/ML model training and inference. |  |
| Step 2 (M) | E2 node and O-RU send the configured measurement data to SMO periodically or event based. |  |
| Step 3 (M) | Non-RT RIC retrieves the collected measurement data for processing. |  |
| Step 4 (M) | Non-RT RIC trains the AI/ML models with the collected data. Trained AI/ML models are deployed, configured, and activated.  Non-RT RIC constantly monitors   1. performance and energy consumption of the E2 node(s) 2. energy consumption of O-RU(s) |  |
| Step 5 (M) | Based on the AI/ML inference the Non-RT RIC can request the SMO to configure E2 node to prepare and execute cell or carrier switch off/on. |  |
| Step 6 (M) | SMO instructs E2 node via O1 interface to perform the received request(s) from the Non-RT RIC. O-RU is informed about the updated O-RU configuration via open FH M-plane interface either by E2 node, or by SMO directly. E2 node / O-RU will notify SMO once cell or carrier switch off/on is completed. |  |
| Step 7 (M) | Non-RT RIC continuously analyzes performance of AI/ML model. If energy saving objectives are not achieved, it can decide to initiate fallback mechanism, and/or AI/ML model update or retraining. |  |
| Ends when | E2 node becomes non-operational or when the operator disables the optimization functions for energy saving. |  |
| Exceptions | None. |  |
| Post Conditions | Non-RT RIC continues close loop monitoring of energy saving function at E2 node and O-RU.  E2 node(s) and O-RU(s) operate using the newly deployed parameters/models and state (off/on). |  |

The flow diagram of the carrier and cell switch off/on: AI/ML inference via Non-RT RIC is given in figure 4.21.3.1-1.

![Generated by PlantUML](../assets/images/d14c49533d0e.png)

###### Figure 4.21.3.1-1: Carrier and cell switch off/on flow diagram: AI/ML inference via Non-RT RIC

###### Deployment option 2: AI/ML inference via Near-RT RIC

The context of carrier and cell switch off/on: AI/ML inference via Near-RT RIC is captured in table 4.21.3.1-2.

###### Table 4.21.3.1-2: Carrier and cell switch off/on: AI/ML inference via Near-RT RIC

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Enable carrier and cell switch off/on energy saving functions in the network by means of configuration parameter change and actions controlled by Near-RT RIC and allow for AI/ML-based solutions. |  |
| Actors and Roles | Near-RT RIC acting as energy savings decision making function.  E2 node and O-RU acting as configuration enforcement function. |  |
| Assumptions | O1 interface connecting the SMO with E2 node, Near-RT RIC and Non- RT RIC is established.  E2 interface connectivity is established between E2 node and Near-RT RIC.  A1 interface is established between Non-RT RIC and Near-RT RIC. Open FH M-plane interface is established between E2 node and O-RU.  Network is operational. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Pre-conditions | Operator has set the targets for energy saving function in the Non-RT RIC. |  |
| Begins when | Operator enables the optimization functions for carrier and cell switch off/on energy eaving functions and E2 node and O-RU become operational. |  |
| Step 1 (M) | SMO initiates specific measurement data collection request towards E2 node and O-RU for AI/ML model training. |  |
| Step 2 (M) | E2 node and O-RU send the configured measurement data to SMO periodically or event based. |  |
| Step 3 (M) | Non-RT RIC retrieves the collected measurement data for processing |  |
| Step 4 (M) | Non-RT RIC trains the AI/ML models with the collected data. Trained AI/ML models are deployed, configured, and activated in the Near-RT RIC. |  |
| Step 5 (M) | SMO can trigger EE/ES optimization and might provide policies guiding the Near-RT RIC EE/ES function via O1 and/or A1 interface. |  |
| Step 6 (M) | Near-RT RIC constantly monitors   1. performance and energy consumption of the E2 node(s) 2. energy consumption of O-RU(s)   Based on the AI/ML inference, considering optimization policies, the Near-RT RIC can request the E2 node to prepare and execute cell or carrier switch off/on. E2 node can request O-RU node to prepare and execute cell or carrier switch off/on. E2 node will notify Near-RT RIC once cell or carrier switch off/on is completed. |  |
| Ends when | E2 node becomes non-operational or when the operator disables the optimization functions for energy saving. |  |
| Exceptions | None. |  |
| Post Conditions | Near-RT RIC continues close loop monitoring of energy saving function at E2 node and O-RU.  E2 node and O-RU operate using the newly deployed parameters/models and state (off/on). |  |

The flow diagram of the carrier and cell switch off/on: AI/ML inference via Near-RT RIC is given in figure 4.21.3.1-2.

![Generated by PlantUML](../assets/images/863969dd13c7.png)

###### Figure 4.21.3.1-2: Carrier and cell switch off/on flow diagram: AI/ML inference via Near-RT RIC

### Required data

Input data

1. E2 node to SMO and Near-RT RIC (when Near-RT RIC serves as inference host)
   * EE/EC measurement reports
   * Load statistics per cell and per carrier, such as number of active users, average number of RRC connections, average number of scheduled active users per TTI, PRB utilization, DL/UL throughput
   * UE mobility information including cell or beam level measurements (e.g., UE RSRP, RSRQ, SINR)
   * Latency statistics per cell (if URLLC slices are involved, latency is used in the EE definition, 3GPP TS 28.554 [7] shall apply)
2. O-RU to E2 node (O-DU) or to SMO directly via open FH M-plane
   * Power consumption metrics: Mean total/per carrier power consumption, mean total/per carrier transmit power (site/O-RU input power are needed for certain EE KPIs)

Output data

1) Non-RT RIC via SMO to E2 node or Near-RT RIC to E2 node (when Near-RT RIC serves as inference host)

- Carrier(s) and cell(s) recommended to be switched off/on

## MU-MIMO optimization

This use case provides the motivation, description, and requirements for a near-real-time MU-MIMO optimization control loop deployment. Deploying MU-MIMO application in the Near-RT RIC enables new solutions that can optimize UE and cell level performance in certain deployments by e.g. deriving channel estimation/prediction and UEs selections with their associated precoding coefficients, resulting in increased per UE and overall cell throughput.

### Background and goal of the use case

MU-MIMO is one of the key technologies available for increasing UE and cell capacities using existing time/frequency resources. The use of multiple antennas enables the pointing of beams to multiple UEs with each beam spatially filtering the interference from the other beams. This has the potential to provide higher total cell capacity when there are multiple eNB/gNB antennas.

In a commercial deployment, some subscribers can be stationary, some can be pedestrian moving slowly, and some can be moving at high speed. Traditional MU-MIMO solutions are very sensitive to subscriber's mobility and as a result the capacity gains achieved with multiple antennas is limited.

New beamforming solutions are emerging that support MU-MIMO with less time sensitivity allowing them to be implemented in the Near-RT RIC. These solutions are applicable to both downlink and uplink data channels and to TDD as well as FDD and can provide high user and cell performance for subscribers moving within a wide range of speeds.

The objective of this use case is to allow the operator to improve user throughput and overall cell capacity by deploying an application in the Near-RT RIC that can use information collected from the E2 nodes to calculate and send to the E2 nodes user selections and applicable precoding coefficients in a near real time loop. This use case will also open the door for future expansion of the MU-MIMO to supporting CoMP covering both ICIC and joint multi sites MU-MIMO.

### Entities/resources involved in the use case

1. Near-RT RIC
   1. Retrieve cell configuration and UE states from E2 nodes
   2. Send configurations for DL channel estimation reporting and UL SRS and DMRS to the E2 nodes
   3. Retrieve DL/UL traffic, and DL/UL channel quality information from E2 nodes
   4. Use the retrieved information to select the UEs to be spatially multiplexed per frequency and time resources and for each selection calculate the relevant MCS and precoder coefficients for optimal UE and cell throughput
   5. Send the recommended UE selections with their resource assignments, MCS, and precoding coefficients to the E2 nodes.
2. E2 nodes
   1. Collect and report to Near-RT RIC information related to cell configuration, UE states, DL/UL traffic, and DL/UL channel quality.
   2. Apply the configurations received from the Near-RT RIC for DL channel estimation reporting and UL SRS transmissions
   3. Apply MU-MIMO parameters following Near-RT RIC recommendations (while handling time critical events separately).

### Solutions

#### MU-MIMO optimization

The context of MU-MIMO optimization is captured in table 4.22.3.1-1.

###### Table 4.22.3.1-1: MU-MIMO optimization

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | MU-MIMO optimization using Near-RT RIC control loop. |  |
| Actors and Roles | Near-RT RIC: Configures E2 nodes' measurements, collects data from E2 nodes, performs MU-MIMO optimization function, and sends MIMO recommendations to E2 nodes.  E2 nodes: Report measurements to Near-RT RIC and execute MU- MIMO recommendations. |  |
| Assumptions | E2 connectivity is established between Near-RT RIC and E2 nodes. Network is operational. |  |
| Pre-conditions | All relevant functions and components are instantiated. MU-MIMO optimization xApp is deployed with initial configuration  All relevant subscriptions established on E2 interface. |  |
| Begins when | Pre-conditions are met. |  |
| Step 1 (M) | Near-RT RIC initiates data collection from E2 nodes (cell configuration, UE states, RRC connection, UL/DL traffic and channel information). |  |
| Step 2 (M) | E2 nodes send cell configuration, UE states, and RRC connection information to Near-RT RIC. |  |
| Step 3 (M) | E2 nodes send UL/DL traffic and channel information to Near-RT RIC. |  |
| Step 4 (O) | Near-RT RIC sends DL channel estimation reporting and UL SRS and DMRS configuration to E2 nodes. |  |
| Step 5 (M) | E2 nodes continuously send UL/DL traffic and channel information to Near-RT RIC. |  |
| Step 6 (M) | E2 nodes send updated UE states and RRC connections information to Near-RT RIC. |  |
| Step 7 (M) | Near-RT RIC uses the collected information to estimate channels and select UE groupings per ranges of frequency and time resources |  |
| Step 8 (M) | Near-RT RIC calculates MCS and precoding coefficients for each selection of UEs. |  |
| Step 9 (M) | Near-RT RIC sends optimized MU-MIMO parameters (UE selections with their resource assignments, MCS, and precoding coefficients) to E2 nodes. |  |
| Step 10 (M) | E2 nodes schedule MU-MIMO transmissions using the parameters received from the Near-RT RIC. |  |
| Step 11 (O) | Near-RT RIC sends updated DL channel estimation reporting and UL SRS and DMRS configuration to E2 nodes. |  |
| Ends when | Operator disables or uninstalls MU-MIMO optimization xApp. |  |
| Exceptions | None identified. |  |
| Post Conditions | The E2 nodes operate using the newly received parameters. |  |

The flow diagram of MU-MIMO optimization is given in figure 4.22.3.1-1.

![Generated by PlantUML](../assets/images/7d1288195067.png)

###### Figure 4.22.3.1-1: MU-MIMO optimization flow diagram

### Required data

The Near-RT RIC requires different types of data from the E2 nodes as summarized below with examples:

1. Cell configuration information (e.g., frequency and BW, FDD/TDD, SCS, UL-DL configuration)
2. List of connected UEs
3. UE connection updates (setup, release, handover)
4. UE RRC state changes (connected, inactive, idle)
5. UL channel information (e.g., SRS, ACK/NACK counts)
6. DL channel information (e.g., CQI, RI, PMI, ACK/NACK counts)
7. DL PDCP and RLC buffer status and UL BSR

## Sharing Non-RT RIC data with the core

Void

## Industrial vision SLA assurance

This use case provides the background and motivation for the O-RAN architecture to support industrial vision Service- Level Agreement (SLA) assurance. Moreover, some high-level description and requirements over Non-RT RIC, A1 and E2 interfaces are introduced.

### Background and goal of the use case

Industrial vision is an image recognition technology used for work piece inspecting, processing and assembling automation, as well as the monitoring and controlling of production process by replacing human eyes with cameras for various measurements and judgments. The main feature of industrial vision system is that it needs to collect the images of the products to be tested or processed in the area with dense production lines, and then transmit the images to the vision server for detection and feed back the results.

Because the industrial vision system shall accommodate to the production speed of the production line, there are strict delay and reliability requirements for visual acquisition, transmission, judgment and execution. For example, a production line which processes 8000 work pieces per hour has an operation interval of 450ms for each product in the production line. Considering the image recognition, results execution time and the mechanical execution time, the two-way data transmission delay left for the transmission network is even less. When 5G is applied in the industrial vision business scenario, the main challenge is the assurance of image data transmission delay and reliability of 5G wireless network in an ultra-dense networking environment.

5G pre-scheduling technology is introduced to reduce the transmission delay and improve the transmission reliability. However, the traditional static pre-scheduling mechanism could not adapts to changing production environments. It always allocates fixed air interface resource according to the static configuration, regardless of the actual data arrival, resulting mis-alignment of resource allocation and uplink transmission needs, causing increased and unstable delay, waste of PRB resources and significant decline in the actual bearable traffic of the cell.

Therefore, dynamic pre-scheduling, which allocates uplink resources according to actual work piece arrival time, is deemed to be a more efficient way to enable industrial vision deployment in production line. In O-RAN, RIC can be used to dynamically optimize the pre-scheduling parameters, so that accurate matching between uplink data arrival and uplink transmission resource allocation could be achieved. This helps to reduce uplink transmission delay and improve the resource efficiency.

With enrichment information from application server/Manufacturing Execution System (MES), e.g., production-line and industrial camera configuration and image transmission delay related data, Near-RT RIC can calculate and iteratively update pre-scheduling parameter (e.g., pre-scheduling data size, pre-scheduling period and pre-scheduling start time), and send those parameters to E2 nodes vis E2 interface. Note that the configured parameters mentioned above only serve as scheduling recommendations to E2 nodes. Actual PRB scheduling depends on many other factors not captured by this use case. E2 node might for instance supersede Near-RT RIC's recommendation in case high priority delay critical data needs to be scheduled.

One example method to transmit Non-RAN application server/MES data into Non-RT RIC is through SMO external interface. Application server/MES is registered as SMO external system, which serves as a data source outside the O- RAN domain that provides data to the SMO. By leveraging SMO external interface (the interface between the SMO and an SMO external system), production-line and industrial camera configuration and image transmission delay related data is transmitted to SMO as enrichment information, which is consumed by Non-RT RIC and bypassed to Near-RT RIC through A1.

### Entities/resources involved in the use case

1. Non-RT RIC:
   1. Support communication of non-RAN data to enrich control functions in Near-RT RIC (enrichment information).
2. Near-RT RIC:
   1. Support communication of pre-scheduling configuration parameters to E2 node.
3. E2 node:
   1. Support pre-scheduling parameters configuration over E2 interface.
   2. Report necessary performance, configuration, and other data for performing pre-scheduling parameter configuration in the Near-RT RIC over E2 interface.
4. Application server/ MES:
   1. Support communication of non-RAN data about production line information and data transmission information to Non-RT RIC as enrichment information.

### Solutions

The context of industrial vision assurance is captured in table 4.24.3-1.

Table 4.24.3-1: Industrial vision assurance

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Meeting industrial vision service SLA requirement via dynamic pre- scheduling parameter configuration. |  |
| Actors and Roles | Non-RT RIC, Near-RT RIC, E2 node, application server/ MES |  |
| Assumptions | All relevant functions and components are instantiated.  A1, E2 interface connectivity is established. |  |
| Pre-conditions | Near-RT RIC and Non-RT RIC are instantiated with A1 interface connectivity being established between them.  E2 interface is established between Near-RT RIC and E2 node. |  |
| Begins when | Production line is started. Periodical industrial vision service is started. |  |
| Step 1 (M) | MES sends the production-line and industrial camera configuration related data to the Non-RT RIC. |  |
| Step 2 (M) | The Non-RT RIC sends the enrichment information to the Near-RT RIC over the A1 interface. |  |
| Step 3 (M) | Based on the received production-line and industrial camera configuration related enrichment information from the Non-RT RIC over the A1 interface, the Near-RT RIC sends initial time-domain pre-scheduling parameters, which includes pre-scheduling data size, pre-scheduling period and pre- scheduling start time, to the E2 node. |  |
| Step 4 (M) | Industrial vision application server sends the image data transmission delay related enrichment data to the Non-RT RIC. |  |
| Step 5 (M) | The E2 node and the Non-RT RIC sends service data transmission information, which includes relevant measurement (e.g., pre-scheduling time-domain resource utilization which is the ratio of the time-domain resource of the data to be scheduled to the total pre-scheduled time- domain resource, and the image data transmission delay related enrichment information) to the Near-RT RIC.  Near-RT RIC receives the service data transmission information and then based on those information, evaluates the performance of the pre- scheduling and iteratively updates pre-scheduling start time. Then the Near-RT RIC sends the updated pre-scheduling start time to the E2 node over E2 interface. |  |
| Step 6 (M) | Based on the pre-scheduling data size, pre-scheduling period and pre- scheduling start time received from the Near-RT RIC, E2 node pre- schedules the time-domain resource for the terminal device. Repeat step 4, 5, 6 until the situation in step "Ends when" is met. |  |
| Ends when | When the industrial vision service data transmission information (including pre-scheduling time-domain resource utilization fed back from E2 node and the image data transmission delay related enrichment information from the Non-RT RIC) becomes stable within reasonable range, the Near- RT RIC stops updating the pre-scheduling start time. |  |
| Exceptions | None identified. |  |
| Post Conditions | The Non-RT RIC monitors the service performance by collecting and monitoring the relevant performance KPIs and counters from the RAN and the application server. |  |

The flow diagram of industrial vision assurance use case is given in figure 4.24.3-1.

![PlantUML diagram](../assets/images/f242b5e6e5b3.jpg)

###### Figure 4.24.3-1: Industrial vision assurance use case flow diagram

### Required data

Enrichment information are expected to be retrieved by Non-RT RIC for industrial vision SLA assurance. Service data transmission information from E2 node are also expected to be collected by Near-RT RIC for industrial vision assurance.

1. Enrichment information:
   1. Production-line and industrial vision camera configuration related data, e.g. production line speed, image color, pixel. (collected from application server/MES)
   2. Service-related performance measurement metrics collected from application server, e.g., image data transmission delay. (collected from application server/MES)
2. Service data transmission information: e.g., pre-schedule time-domain resource utilization, which is the ratio of the time-domain resource of the data to be scheduled to the total pre-scheduled time-domain resource. (new E2 measurements)

## Non-Public Network (NPN) RAN sharing via midhaul for multi-operator coverage

Void

## Interference detection, prediction and optimization

This use case provides the background and motivation for the O-RAN architecture to support real-time interference detection and optimization. Moreover, some high-level description and requirements over Non-RT RIC, A1, Near-RT RIC and E2 interfaces are introduced.

### Background and goal of the use case

LTE and 5G network are deployed based on co-frequency networking due to limited radio resources, which leads to co- frequency interference becoming the bottleneck of network performance. Heterogeneous networks as well as ultra-dense networks make inter-cell interference more complex. As a result, how to detect and/or predict, and then optimize interference is of great importance for wireless networks. Current research mainly focuses on a class of interference

optimization solutions called Inter-Cell Interference Coordination (ICIC), which includes static ICIC and dynamic ICIC, assuming that inter-cell interference is available via detection and/or prediction. The principle of ICIC is to restrict the use of radio resources in individual cells in an inter-cell coordination manner, including restricting which time-frequency resources are available, or limiting their transmitting power on certain time-frequency resources. The principle of ICIC is to divide all cells in the network in several categories, then divides the UE to Cell Edge User (CEU) as well as Cell Center User (CCU), and schedule CEU to edge radio resources.

Such ICIC solutions suffer from the following limitations:

* The radio resources are allocated statically or in non-real-time, and do not support dynamic adjustment, which causes low radio resource utilization.
* ICIC depends on specific ideal cell networking structure, and the performance of interference optimization algorithm is poor for complex networking structure.
* The radio resource allocation is based on cell level, and do not support UE level or UE group level.
* The measurement data is used for post-interference analysis and optimization, with low real-time.

Besides, current research may mainly focus on interference optimization, based on the assumption that inter-cell interference is available via detection and/or prediction. In fact, interference detection and prediction is not less important than interference optimization. On the one hand, interference detection and/or prediction with high accuracy contributes to accurate and efficient interference optimization. On the other hand, interference detection and/or prediction can be utilized to optimize other transmission configurations, e.g., Modulation and Coding Scheme (MCS), not limited to radio resources allocation.

Thanks to the open interface and intelligent functionalities provided by the O-RAN architecture, multi-cell-based collaborative real-time interference detection, prediction and interference optimization schemes can be realized. Multi- dimensional data, e.g., network level measurement data, can be acquired and used for interference detection, interference prediction, interference relationships construction, and interference optimization in real time. Interference relationship construction can further take QoS related metrics into analysis, to facilitate UE service assurance through interference management. Based on the A1 policy as well as interference relationships, Near-RT RIC ensures optimal radio resource allocation for UE or UE group or RAN slice or PRBs or mMIMO beams through E2 interface towards RAN for interference optimization. In addition, based on the history interference detection, Near-RT RIC can predict interference for future data transmissions and thus facilitates MCS optimization for UE to adapt to fluctuating interference.

### Entities/resources involved in the use case

1. SMO/Non-RT RIC:
   1. Generate and send interference detection, prediction and optimization policies to Near-RT RIC.
   2. Retrieve QoS related metrics and send to Near-RT RIC.
   3. Receive interference detection, prediction and optimization performance evaluation updates from Near-RT RIC.
   4. Receive interference related network level measurement data from gNBs.
   5. Generate and send radio resources configuration based on the interference optimization policy to E2 nodes.
2. Near-RT RIC:
   1. Retrieve necessary interference related measurement metrics from network level (cell level) measurement report through E2 interface.
   2. Receive interference detection, prediction and optimization polices from Non-RT RIC, and support interpretation and execution of Non-RT RIC policies to derive the interference detection, prediction and optimization control or policy.
   3. Send the controls or policies to E2 nodes through E2 interface for interference detection, prediction and optimization.
   4. Send interference performance report to Non-RT RIC for evaluation and optimization
3. E2 node:
   1. Support network state and UE measurements with required granularity to Near-RT RIC over E2 interface.
   2. Support interference configurations and enhancements based on messages from E2, which are expected to influence RRM behavior.
   3. Receive interference detection, prediction results from UE and network, and report to Near-RT RIC.
   4. Update RAN parameters based on radio resources configuration from the SMO/Non-RT RIC over the O1 interface.

### Solutions

#### Fast loop optimization

##### Interference detection

The context of the interference detection is captured in table 4.26.3.1.1-1.

###### Table 4.26.3.1.1-1: Interference detection

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Interference detection |  |
| Actors and Roles | Non-RT RIC, Near-RT RIC, SMO |  |
| Assumptions | All relevant functions and components are instantiated.  A1/O1 interface connectivity is established with Non-RT RIC. |  |
| Pre-conditions | Near-RT RIC and Non-RT RIC are instantiated with A1 interface  connectivity being established between them. |  |
| Begins when | Near-RT RIC triggers interference detection. |  |
| Step 1-2 (M) | Non-RT RIC generates interference detection policy and sends the policy to Near-RT RIC via A1 interface. |  |
| Step 3 (M) | Near-RT RIC receives A1 policy, converts and generates E2 control or policy. E2 control or policy includes: 1) allocated resource(s) of the reference signal for the gNB(S); 2) Information transmission strategy configured for the intra-frequency cells adjacent to the cells corresponding to the gNB(S); 3) information for UL PRBs to be monitored; 4) for example, for mMIMO deployment scenario, information for mMIMO beams to be monitored.  The reference signal can be NZP CSI-RS and ZP CSI-IM, which is used by UE(S) accessed in the gNB(S) for channel measurement, channel estimation and interference measurement respectively:   1. For channel measurement and channel estimation reference signal: based on the Information transmission strategy, intra- frequency cells adjacent to the cells corresponding to the gNB(S), such as the cells corresponding to gNB(N), keep silent at the allocated resource(s) of the reference signal. 2. For interference measurement reference signal: based on the Information transmission strategy, intra-frequency cells adjacent to the cells corresponding to the gNB(S), such as the cells corresponding to gNB(N), can send data at the allocated   resource(s) of the reference signal. |  |
| Step 4, 6 (M) | Near-RT RIC sends E2 control or policy to the target gNBs via E2 interface, such as sending allocated resource(s) of the reference signal for the  gNB(S), sending information transmission strategy to the intra-frequency |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
|  | cells adjacent to the cells corresponding to the gNB(S), for example the cells corresponding to gNB(N), and sending information for UL PRBs and  for mMIMO deployment scenario mMIMO beams to be monitored. |  |
| Step 5,7 (M) | gNB(S) allocates resources for reference signal based on the E2 control or policy. gNB(N) allocates resources for DL data transmission to UE(N). gNB(N) allocates resources for UL data transmission.  gNB(S) allocates resources for UL PRBs and for mMIMO deployment  scenario mMIMO beams to be monitored. |  |
| Step 8-10 (M) | gNB(S) sends reference signal at allocated resources to UE(S). UE detects interference based on the reference signal configured by gNB(S) and sends the interference detection results to the Near-RT RIC through RAN.  gNB(S) detects uplink interference based on interference levels and patterns of UL PRBs among intra-frequency cells and sends the interference detection results to the Near-RT RIC.  gNB(S) detects interference levels of mMIMO beams among intra- frequency cells and sends the interference detection results to the Near- RT RIC. |  |
| Step 11-20 (O) | If required, Near-RT RIC can configure specific performance measurement data to be collected from RAN to monitor the performance of E2 control or policy and sends the result to Non-RT RIC for updating the A1 and E2 policies based on the performance evaluation results. |  |
| Ends when | Operator triggers to stop interference detection. |  |
| Exceptions | None identified. |  |
| Post Conditions |  |  |

The flow diagram of the interference detection is given in figure 4.26.3.1.1-1.

![C:\Users\LOC00434\AppData\Local\Packages\Microsoft.Windows.Photos_8wekyb3d8bbwe\TempState\ShareServiceTempFolder\detection figure.jpeg](../assets/images/1d8b968e3bbe.jpg)

###### Figure 4.26.3.1.1-1: Interference detection flow diagram

##### Interference relationships construction

The context of the interference relationships construction is captured in table 4.26.3.1.2-1.

###### Table 4.26.3.1.2-1: Interference relationships construction

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Interference relationships construction |  |
| Actors and Roles | Near-RT RIC, gNB |  |
| Assumptions | All relevant functions and components are instantiated.  E2 interface connectivity is established with Near-RT RIC. |  |
| Pre-conditions | Interference detection results have been sent to Near-RT RIC. |  |
| Begins when | Near-RT RIC triggers interference relationship construction. |  |
| Step 1-4 (M) | QoS related metrics from SMO and network level measurements reported by RAN through E2 interface are reported to Near-RT RIC for instantiating or modifying interference relationships. |  |
| Step 5 (M) | Near-RT RIC constructs interference relationships (e.g., interference graph) based on the received QoS related metrics from SMO and network level measurement from RAN.  Near-RT RIC constructs uplink interference relationships among intra-frequency cells based on the interference levels and patterns of UL PRBs.  Near-RT RIC constructs interference relationships among mMIMO beams located at different intra-frequency cells based on interference levels of mMIMO beams.  Near-RT RIC uses interference relationships for further interference optimization. |  |
| Step 6-8 (O) | If required, Near-RT RIC can configure specific performance measurement data to be collected from RAN to assess the performance of the interference relationships and update the interference relationships in Near-RT RIC based on the performance evaluation and model retraining. |  |
| Ends when | Operator specified trigger condition or event is satisfied. |  |
| Exceptions | None identified. |  |
| Post Conditions | Near-RT RIC stores the interference relationships for interference optimization function in Near-RT RIC. |  |

The flow diagram of the interference relationships construction is given in figure 4.26.3.1.2-1.

![](../assets/images/f21cff1a1745.jpg)

###### Figure 4.26.3.1.2-1: Interference relationships construction flow diagram

##### Interference optimization

The context of the interference optimization is captured in table 4.26.3.1.3-1.

###### Table 4.26.3.1.3-1: Interference optimization

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Interference optimization policy generation and performance evaluation |  |
| Actors and Roles | Non-RT RIC, Near-RT RIC, SMO |  |
| Assumptions | All relevant functions and components are instantiated.  A1/O1 interface connectivity is established with Non-RT RIC. |  |
| Pre-conditions | Interference relationships required by interference optimization have been constructed by Near-RT RIC. |  |
| Begins when | The network operator/manager want to generate interference optimization policy based on user QoS. |  |
| Step 1 (M) | Non-RT RIC generates the appropriate interference optimization policy based on the configured QoS parameters. |  |
| Step 2 (M) | Non-RT RIC sends the interference optimization policy to Near- RT RIC via A1 interface. |  |
| Step 3 (M) | Network level measurements reported by RAN through E2 interface are reported to Near-RT RIC. |  |
| Step 4 (M) | Near-RT RIC receives the policy from the Non-RT RIC over the A1 interface and measurement data from the RAN over the E2 interface. Near-RT RIC generates radio resources configuration based on the interference relationships (e.g., interference graph) as well as A1 policy. |  |
| Step 5 (M) | Near-RT RIC sends the radio resources configuration through E2 interface towards RAN for interference optimization. RAN enforces the received control or policy from the Near-RT RIC over the E2 interface. |  |
| Step 6-12 (O) | If required, Non-RT RIC can configure specific performance measurement data to be collected from RAN to assess the performance of the QoE optimization function in Near-RT RIC, or to assess the outcome of the applied A1 policies. And then update A1 policy and E2 control or policy. |  |
| Ends when | Operator specified trigger condition or event is satisfied. |  |
| Exceptions | None identified. |  |
| Post Conditions | If required, Near-RT RIC can configure specific performance measurement data to be collected from RAN to monitor the performance of E2 control or policy and sends the result to Non- RT RIC for updating the A1 and E2 policies based on the performance evaluation results. |  |

The flow diagram of the interference optimization is given in figure 4.26.3.1.3-1.

![](../assets/images/5f8480c989a9.png)

###### Figure 4.26.3.1.3-1: Interference optimization flow diagram

#### Slow loop optimization

##### Interference detection and relationships construction

The context of the interference detection and relationships construction is captured in table 4.26.3.2.1-1.

###### Table 4.26.3.2.1-1: Interference detection and relationships construction

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Interference detection and relationships construction |  |
| Actors and Roles | SMO/Non-RT RIC, gNB |  |
| Assumptions | All relevant functions and components are instantiated.  O1 interface connectivity is established with SMO/Non-RT RIC.  SMO/Non-RT RIC has RAN topology including the relationship of geographical location among cells. |  |
| Pre-conditions | Network level measurement data generated at gNBs through O1 interface are reported to SMO/Non-RT RIC. |  |
| Begins when | SMO/Non-RT RIC triggers interference detection and relationship construction. |  |
| Step 1 (M) | SMO/Non-RT RIC collects the interference data and RB usage rate as network level measurement data from gNBs. |  |
| Step 2 (M) | SMO/Non-RT RIC analyzes the interference relationship among cells based on the network level measurement data and the RAN topology. SMO/Non-RT RIC constructs interference relationships (e.g., interference graph) based on network level measurement data from gNBs. The interference relationships indicate a table for each cell, listing the neighboring cells that have a significant interference impact. |  |
| Step 3-5 (O) | If required, SMO/Non-RT RIC can update the interference relationships based on the network level measurement data and the RAN topology. |  |
| Ends when | Operator specified trigger condition or event is satisfied. |  |
| Exceptions | None identified. |  |
| Post Conditions | SMO/Non-RT RIC stores the interference relationships. |  |

The flow diagram of the interference detection and relationships construction is given in figure 4.26.3.2.1-1.

![PlantUML diagram](../assets/images/ed5a2f795153.png)

###### Figure 4.26.3.2.1-1: Interference detection and relationships construction flow diagram

##### Interference optimization

The context of the interference optimization is captured in table 4.26.3.2.2-1.

###### Table 4.26.3.2.2-1: Interference optimization

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Interference optimization policy generation and performance evaluation |  |
| Actors and Roles | SMO/Non-RT RIC, gNB |  |
| Assumptions | All relevant functions and components are instantiated. O1 interface connectivity is established with SMO/Non-RT RIC. |  |
| Pre-conditions | Interference relationships required by interference optimization have been constructed by SMO/Non-RT RIC. |  |
| Begins when | The network operator/manager want to generate interference optimization policy based on the interference relationship. |  |
| Step 1-2 (M) | SMO/Non-RT RIC can monitor the pefirmance and creates cell groups for interference optimization based on the interference relationship and network level measurement data |  |
| Step 3 (M) | SMO/Non-RT RIC generates the appropriate interference optimization policy based on the network level measurement data. Non-RT RIC creates the radio resources configuration based on the interference optimization policy for each cell group. |  |
| Step 4 (M) | SMO/Non-RT RIC sends the radio resources configuration through O1 interface to the cell group. gNBs update the RAN parameters based on radio resources configuration from the SMO/Non-RT RIC over the O1 interface. |  |
| Step 5-7 (O) | If required, SMO/Non-RT RIC can update the optimization policy based on the network level measurement data and the RAN topology. SMO/Non-RT RIC updates the radio resources configuration and sends the radio resources configuration through O1 interface to the cell group. |  |
| Ends when | Operator specified trigger condition or event is satisfied. |  |
| Exceptions | None identified. |  |
| Post Conditions |  |  |

The flow diagram of the interference optimization is given in figure 4.26.3.2.2-1.

![PlantUML diagram](../assets/images/009b39bbff5d.png)

###### Figure 4.26.3.2.2-1: Interference optimization flow diagram

#### Intereference prediction for MCS optimization

The context of the interference prediction for MCS optimization is captured in table 4.26.3.3-1.

###### Table 4.26.3.3-1: Interference prediction for MCS optimization

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Interference prediction and MCS optimization |  |
| Actors and Roles | Non-RT RIC, Near-RT RIC, E2 nodes |  |
| Assumptions | All relevant functions and components are instantiated. |  |
| Pre-conditions | Near-RT RIC and Non-RT RIC are instantiated with A1 interface connectivity being established between them.  E2 nodes and Non-RT RIC are instantiated with E2 interface connectivity  being established between them. |  |
| Begins when | Non-RT RIC triggers interference prediction. |  |
| Step 1-2 (M) | Non-RT RIC generates interference prediction policy and sends the policy to Near-RT RIC via A1 interface. The policy including neighborhood list of serving cell, prediction granularities and prediction steps, etc. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Step 3 (M) | Data collection from E2 node(S) for serving cell:   1. Near-RT RIC initiates data collection request to E2 node(S) via E2 interface,to request uplink interference reported periodically; 2. E2 node(S) collects the uplink interference on each RB in the bandwidth of the serving cell and reports the uplink interference to   Near-RT RIC periodically as request. |  |
| Step 4 (M) | Data collection from E2 node(N) for neighbouring cell:  Neighbouring cell corresponding to E2 node(N) is a intra-frequency cell adjacent to the serving cell corresponding to the E2 node(S).   1. Data collection to construct uplink interference users set.    1. Near-RT RIC initiates data collection request to E2 node(N) via E2 interface, to request DL RSRP for the serving cell corresponding to E2 node(S) reported periodically.    2. E2 node(N) collects the DL RSRP and reports the DL RSRP to Near- RT RIC periodically as request.    3. Near-RT RIC constructs the uplink interference users set based on the DL RSRP. The users with high DL RSRP, whose uplink service may cause more uplink interference to the serving cell corresponding to E2 node(S) are included in the set. 2. Data collection of uplink interference users in the set.    1. Near-RT RIC initiates data collection request to E2 node(N) to request uplink interference related information (e.g., UL PRB usage rate, PHR, BSR, location and velocity) of users in the set reported.    2. E2 node(N) collects the information of users in the set and reports   uplink interference related information to Near-RT RIC as request. |  |
| Step 5 (M) | Over multiple historical time periods, the collected uplink interference from the serving cell and/or uplink interference related data from the neighbouring cell, could be processed as a training data set for the AI/ML model training and/or processed as input data for the AI/ML model  inference. |  |
| Step 6 (M) | Assuming the AI/ML model training using the training data set is on Non-  RT RIC or on Near-RT RIC, the trained AI/ML model will be deployed in the Near-RT RIC used for the AI/ML model inference. |  |
| Step 7 (M) | Near-RT RIC performs AI/ML model inference and outputs the predicted uplink interference value based on the latest input data. |  |
| Step 8 (M) | Near-RT RIC sends the RIC control or policy with the predicted uplink interference value to E2 node(S) via E2 interface. |  |
| Step 9 (M) | E2 node(S) could use the predicted uplink interference value for UE(s) to be scheduled to estimate the uplink channel quality (e.g., SINR) at the future PUSCH transmission slot. E2 node(S) could realize this by replacing the uplink interference collected when the last uplink reference signal of the scheduled UE(s) is received by E2 node(S).  The E2 node(S) then uses the uplink channel quality (e.g., SINR) to decide the MCS in DCI sent to the scheduled UE. |  |
| Ends when | Operator triggers to stop interference prediction. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Exceptions | None identified. |  |
| Post Conditions |  |  |

The flow diagram of the interference prediction is given in figure 4.26.3.3-1

![IMG_256](../assets/images/5afc07b17436.jpg).

###### Figure 4.26.3.3-1: Interference prediction flow diagram

### Required data

Multi-dimensional data are expected to be retrieved by Near-RT RIC for interference prediction, interference relationship generation, and interference optimization, including network level measurement data from O-CU/O-DU, which indicates network status, as well as QoS related metrics from SMO which indicates service requirements.

1. Network level measurement report, including
   1. UE level information, e.g., CQI, SINR, MCS, UL/DL RSRP, DL/UL PRB usage rate, throughput, DU/UL PRB usage, mMIMO beams, BSR, PHR, location and velocity
   2. Cell level information: e.g., DL/UL PRB usage rate, throughput, uplink interference
2. QoS related metrics collected from SMO, e.g., 5QI, throughput, latency, packet loss rate, BLER requirement etc.

Annex A (informative):

Additional information

## Traffic steering use case A1 interface usage example

NOTE: Please refer to WG2 Use Cases and Requirements Specification for more details and up to date definitions of this use case A1 interface usage examples.

An example scenario is here used to describe the use of A1 for traffic steering, implying the Non-RT RIC sending policies for allocation of the control plane (RRC) and the user plane for different services, identified by their 5QI.

In the scenario a UE with UEid=1, belonging to a subnet slice identified by S-NSSAI=1, having a voice (5QI=1) and an MBB (5QI=9) connection established, enters an area covered by four frequency bands. The Non-RT RIC understands the requirements and characteristics of the services and decides to let the voice and RRC connection reside on the low band (here covered by a macro cell B becoming the PCell), while the MBB connection should preferably use the higher band (here provided by a smaller cell C and D becoming the SCells) and avoid the low band if possible. Cell A is used for MBB if required for coverage reasons.

Policies are sent to any cell of concern, e.g. where the UE resides and can move. The desired use of the cells is shown in figure A.1-1.

![](../assets/images/b7b78b7fb1b9.png)

###### Figure A.1-1: Desired use of the cells

Two policies over A1 are needed to accomplish the desired behavior, described in JSON format below. Note that as part of the scope, the cell\_id is optional, and if omitted it is up to the Near-RT RIC to locate the UE and there enforce the policy.

{

"policy\_id": "1", "scope": {

"ue\_id": "1",

"slice\_id": "1",

"qos\_id": "1",

"cell\_id": "X" // Policy for Cell X, where X is one of A, B, C or D

},

"statement": { "cell\_id\_list": "B", "preference": "Shall",

"primary": true // Control plane on Cell B (becoming PCell)

},

"statement": { "cell\_id\_list ": "B", "preference": "Shall",

"primary": false // Voice on Cell B

}

}

{

"policy\_id": "2", "scope": {

"ue\_id": "1",

"slice\_id": "1",

"qos\_id": "9",

"cell\_id": "X" // Policy for Cell X, where X is one of A, B, C or D

},

"statement": {

"cell\_id\_list ": {"B", "A"}, "preference": "Avoid",

"primary": false // Avoid MBB on Cell A and Cell B

},

"statement": { "cell\_id\_list": {"C", "D"}, "preference": "Prefer",

"primary": false // Prefer MBB on Cell C and Cell D

}

}

Annex (informative):

Change history/Change request (history)

|  |  |  |
| --- | --- | --- |
| **Date** | **Revision** | **Description** |
| 2019.07.07 | 01.00.00 | Draft template |
| 2019.09.18 | 01.00.01 | Addition of CR:  - ORAN-WG1.UseCasesDetailedSpecification\_CR\_NOK\_DHO\_20190909 |
| 2019.09.19 | 01.00.02 | Addition of QoE optimization use case from WG2 UCR specification |
| 2019.09.20 | 01.00.03 | Addition of Traffic Steering use case from WG2 UCR specification |
| 2019.09.23 | 01.00.04 | Addition of CR:  - ORAN-WG1.UAV Control Vehicle Use Case -INSPUR-20190911 Editorial changes |
| 2019.09.27 | 01.00.05 | Addition of CR:  - ORAN-WG1.UAV\_Use Case for dynamic UAV Radio Resource Allocation  \_CMCC\_CR  Editorial changes for improved sections, consistency, typo fixes |
| 2019.09.28 | 01.00.06 | Updates to Radio Resource Allocation for UAV Application Scenario from UC Analysis doc  Addition of CR:  - ORAN-WG1.UAV\_Use Case for dynamic UAV Radio Resource Allocation  \_CMCC\_CR\_v2 |
| 2019.10.11 | 01.00.07 | Updates to the following use cases based on use case review meeting:   * Fight Path Based Dynamic UAV Radio Resource Allocation (CMCC) * Radio Resource Allocation for UAV Application (Inspur) |
| 2019.10.17 | 01.00.08 | Add plantuml code and diagram for OoE use case to add E2 interaction between Near- RT RIC and RAN  Modified UAV Control Vehicle use case required data to remove IMSI and replace with user identification clarification  Corrected UAV Resource Allocation plantuml code and diagram with ML model deployment over O1 (rather than A1)  Corrected QoE use case plantuml code and diagram for ML model deployment over O1 (rather than A1)  Merged updates from ORAN-WG1.Correction on UAV\_UseCasesDetailedSpecification\_CMCC\_CR v1 |
| 2019.10.17 | 01.00 | Final version 01.00 |
| 2019.11.16 | 02.00.01 | Initial version of v2.0  Document version number update to v02.00.01 |
| 2019.11.25 | 02.00.02 | Addition of CR (new use case):  - ORAN-WG1.UseCasesDetailedSpecification\_CR\_ORANGE\_20191120.docx |
| 2019.12.06 | 02.00.03 | Addition of CRs:   * UAV Control Vehicle-CR-INSPUR-20191204.docx * ORAN-WG1.UseCasesDetailedSpecification\_CR\_ORANGE\_20191125-update- uml.docx |
| 2019.12.08 | 02.00.04 | Addition of CRs:  - ORAN-WG1.UseCasesDetailedSpecification\_CR\_CMCC\_20191204.docx |

|  |  |  |
| --- | --- | --- |
|  |  | - ORAN-WG1.UseCasesDetailedSpecification\_CR\_NOK\_DHO\_20191203.docx |
| 2020.01.10 | 02.00.05 | Addition of CRs:   * ORAN-   WG1.UseCasesAnalysisReport\_CR\_Traffic\_Steering\_Ericsson\_2020.01.08.docx   * ORAN-WG1.Usecase\_QoS\_based\_resource\_optimization\_1\_6-2020.docx |
| 2020.01.22 | 02.00.06 | Editorial updates and terminology corrections |
| 2020.02.12 | 02.00.07 | Addition of CR:  - ORAN-WG1.UCTG\_CMCC\_QoE Optimization Use Case  Editorial updates to plantUML diagrams to add interface names, and rearranging components per O-RAN plantUML guidelines |
| 2020.02.13 | 02.00.08 | Addition of CR:  - ORAN-WG1.UseCasesDetailedSpecification\_CR\_ (UC\_M-MIMO)\_TIM-ORANGE- CMCC\_20200114-v2 |
| 2020.02.23 | 02.00.09 | Editorial updates, O-RAN license agreement additions, update RAN Sharing diagram with latest version, |
| 2020.03.01 | 02.00.10 | Editorial updates, fixing table of contents issues, spec naming corrections |
| 2020.03.11 | 02.00.11 | Updates to definitions and RAN Sharing use case (update O1\* to O2) based on WG1 review/approval feedback |
| 2020.03.11 | 02.00 | Final version 02.00 |
| 2020.06.19 | 03.00.01 | Initial version of v3.0  Document version number update to v03.00.01 |
| 2020.06.20 | 03.00.02 | Addition of CR:  - O-RAN\_WG1\_2020.03.11-  Netsia\_KDDI\_ATT\_TEF\_UCTG\_CR\_UCDS\_SliceAssurance .docx |
| 2020.06.20 | 03.00.03 | Addition of CR:  - INT-2020.05.21-WG1-D-CR-UCDR\_MultiAccess\_UC\_v1.docx |
| 2020.07.15 | 03.00.04 | Updates based on WG1 review comments (very minor editorial corrections to section 3.9) |
| 2020.07.16 | 03.00.05 | Getting the version ready to be published externally (removal of track changes/comments) |
| 2020.07.16 | 03.00 | Final version 03.00 |
| 2020.10.17 | 04.00.01 | Initial version of v4.0  Document version number update to v04.00.01 |
| 2020.11.01 | 04.00.02 | Addition of CR:  - STL.AO-10.14.2020-WG1(UCTG)-CR-0001-DSS-v1.2 |
| 2020.11.02 | 04.00.03 | Addition of CR:  - INT-2020.11.02-WG1(UCTG)-CR-0001-NSSI-Rsrc-Opt-D-UC-v1.3  Editorial updates/corrections |
| 2020.11.05 | 04.00.04 | Addition of CR:  - KDDI.AO-2020.11.05-WG1-CR-0001-Multi-vendor Slices Use Case-v01 |
| 2020.11.13 | 04.00.05 | Correction of plantuml source and diagram for Multi-vendor Slices use case and other editorial updates |
| 2020.11.13 | 04.00 | Final version 04.00 |

|  |  |  |
| --- | --- | --- |
| 2021.02.28 | 05.00.01 | Initial version of v5.0  Document version number update to v05.00.01 |
| 2021.03.04 | 05.00.02 | To keep the same use case numbering as Use Case Analysis Report, addition of   * Use case 13 "Local Indoor Positioning in RAN" * Use case 16 "Congestion Prediction and Management" * Use case 17 "Industrial IoT Optimization" * Use case 18 "BBU Pooling to achieve RAN Elasticity"   as FFS items. Use case 14 and 15 will be defined in further sub versions of this v5 specification.  Addition of CR:   * ATT.AO-2020.12.01-WG1-CR-0001-UseCaseDetailedSpecification\_SSP-v04 |
| 2021.03.08 | 05.00.03 | Updating use case 14 name to "Massive SU/MU-MIMO Grouping Optimization" |
| 2021.03.08 | 05.00.04 | Addition of CR:  - NOK-2021.02.10-ORAN-CR-0001-  UseCaseDetailedSpecification\_mMIMO\_BF\_Optimization-v01  Editorial updates |
| 2021.03.13 | 05.00 | Final version 05.00 |
| 2021.07.10 | 06.00.01 | Initial version of v6.0  Document version number update to v06.00.01 |
| 2021.07.11 | 06.00.02 | Addition of CR:  - NOK-2021.05.03-ORAN-CR-0001-  UseCaseDetailedSpecification\_mMIMO\_BF\_Optimization |
| 2021.07.19 | 06.00 | Final version 06.00 |
| 2021.11.11 | 07.00.01 | Initial version of v7.0  Document version number update to v07.00.01 |
| 2021.11.13 | 07.00.02 | Addition of CR:  - NC.AO-2021.07.20-WG1-CR-0001-NSSIResourceAllocationWithQuota-v04 |
| 2021.11.13 | 07.00.03 | Correction of terminology used in NSSI optimization use case |
| 2021.11.14 | 07.00.04 | Clean version for WG1 approval |
| 2021.11.23 | 07.00.05 | Updates to address WG1 review comments |
| 2021.11.23 | 07.00 | Final version 07.00 |
| 2022.03.27 | 07.00.06 | Adopted new spec revision numbering per O-RAN Work Procedures  Initial version towards v08.00, starting with v07.00.06 per new revision numbering |
| 2022.03.27 | 07.00.07 | Addition of CR:  - CMCC-2022.1.13-WG1-CR-0001-UseCasesDetailedSpecification-QOE- Optimization-v3.0 |
| 2022.03.27 | 07.00.08 | Addition of CR:  - CMCC-2022.03.10-WG1-CR-0001-UseCasesDetailedSpecification-Local-Indoor- Positioning-in-RAN-v1 |
| 2022.03.27 | 07.00.09 | Addition of placeholders for new use cases added to Use Case Analysis Rreport   * Use Case 20: Lower Layer Split Multi Node Support (Shared O-RU) * Use Case 21: Energy Saving |
| 2022.03.27 | 07.00.10 | Changes accepted from v07.00.09 Baseline for WG1 approval |
| 2022.04.04 | 08.00 | Final version 08.00 |

|  |  |  |
| --- | --- | --- |
| 2022.07.24 | 08.00.01 | Initial version towards v09.00, starting with v08.00.01 per O-RAN specification revision numbering process |
| 2022.07.25 | 08.00.02 | Addition of CR:  - NOK.AO-2022.04.25-ORAN-CR-0001-RevisedUseCaseDetailedSpecification\_EE- ES\_v10  Editorial updates and corrections |
| 2022.07.25 | 08.00.03 | Addition of CR:  - COT.AO-2022.06.29-WG1-CR-0002-UseCaseDetailedSpecification-MU-MIMO- Optimization-v05  Per UCTG Shared O-RU subgroup discussions, updating use case #20 from "Lower Layer Multi Node Support" to "Shared O-RU" for consistency with the O-RAN Shared O- RU feature |
| 2022.07.25 | 08.00.04 | Update of the document to comply with the new O-RAN Technical Spec template |
| 2022.07.25 | 08.00.05 | All changes accepted, clean version for WG1 approval |
| 2022.07.27 | 08.00.06 | Addition of CR:  - CIS.AO-2022.07.21-WG1-CR-0001-UseCaseDetailedSpecification-shared-ORU- v04  Editorial corrections and updates |
| 2022.07.27 | 08.00.07 | Updated version for WG1/TSC approval |
| 2022.08.01 | 09.00 | Final version 09.00 |
| 2022.11.09 | 09.00.01 | Initial version towards v10.00, starting with v09.00.01 per O-RAN specification revision numbering process  Addition of CR:  - ATT.AO-2022.04.12-ORAN-CR-0001-  UseCaseDetailedSpecification\_TrafficSteeringEI - Rev 2 |
| 2022.11.10 | 09.00.02 | Addition of CR:  - FJT-2022.08.25-ORAN-CR-0001-  UseCaseDetailedSpecification\_RANSliceSlaAssurance\_ReliabilityAssurance-Rev1 |
| 2022.11.10 | 09.00.03 | Addition of CR:  - QCM.AO-2022.06.14-ORAN-CR-0001-UseCaseDetailedSpecification\_ISRM-v14- clean |
| 2022.11.10 | 09.00.04 | Addition of CR:  - NOK.AO-2022.10.27-WG1-CR-0001-UseCaseDetailedSpecification-shared-ORU- v01  Editorial updates  Addition of Section 3.23 as placeholder to align with new use case addition to O-RAN Use Cases Analysis Technical Report |
| 2022.11.13 | 09.00.05 | Added O-RAN Release "R003" to document name, updated copyright to 2023 as the document will be published externally in 2023.  All changes accepted, clean version for WG1 approval |
| 2022.11.18 | 10.00 | Final version 10.00 |
| 2023.03.16 | 10.00.01 | Initial version towards v11.00, starting with v10.00.01 per O-RAN specification revision numbering process  Update of the spec to latest O-RAN TS template except for splitting the references to formative and informative. This split is planned to be made in next release of the document. |
| 2023.03.16 | 10.00.02 | Addition of CR: |

|  |  |  |
| --- | --- | --- |
|  |  | - NOK.AO-2023.02.09-WG1-CR-0001-SharedORU\_CoordinatedReset-v02.00 |
| 2023.03.16 | 10.00.03 | Addition of CR:  - KDDI.AO-2023.03.07-WG1-CR-0000-UseCaseDetailedSpecification- MultiVendorSlicesAddRequirement-v02  Addition of placeholder for "use case #24: Industrial vision SLA Assurance" as this use case is approved and merged to Use Case Analysis Report |
| 2023.03.16 | 10.00.04 | All changes accepted, clean version for WG1 approval |
| 2023.03.24 | 10.00.05 | WG1 review comments are addressed, and approval is completed. Ready for TSC approval and publication. |
| 2023.03.24 | 11.00 | Final version 11.00 |
| 2023.05.04 | 11.00.01 | Initial version towards v12.00, starting with v11.00.01 per O-RAN specification revision numbering process.  Addition of CR:  - JNPR-2023.05.02-WG1-CR-0012-O-RAN-Use-Cases-Detailed-Specification-ODR- References-Section-v01 |
| 2023.05.04 | 11.00.02 | Addition of CR:  - JNPR-2023.05.02-WG1-CR-0013-O-RAN-Use-Cases-Detailed-Specification-ODR- References-Section-v01 |
| 2023.05.16 | 11.00.03 | Addition of CRs:   * JNPR-2023.05.16-WG1-CR-0021-O-RAN-Use-Cases-Detailed-Specification- References-Update-v01 * JNPR-2023.05.16-WG1-CR-0022-O-RAN-Use-Cases-Detailed-Specification- References-Correction-v01 |
| 2023.05.29 | 11.00.04 | Addition of CR:  - JNPR-2023.05.17-WG1-CR-0023-O-RAN-Use-Cases-Detailed-Specification- References-Wording-v01 |
| 2023.06.06 | 11.00.05 | Addition of CR:  - JNPR-2023.05.29-WG1-CR-0025-O-RAN-Use-Cases-Detailed-Specification-ODR- Figures-References\_Wording\_Corrections-v01 |
| 2023.06.13 | 11.00.06 | Addition of CR:  - JNPR-2023.06.13-WG1-CR-0032-O-RAN-Use-Cases-Detailed-Specification-ODR- Tables-References-Headings-Corrections-v01 |
| 2023.06.13 | 11.00.07 | Addition of CR:  - JNPR-2023.06.13-WG1-CR-0033-O-RAN-Use-Cases-Detailed-Specification-ODR- Notes-v02 |
| 2023.06.27 | 11.00.08 | Addition of CR:  - JNPR-2023.06.27-WG1-CR-0036-O-RAN-Use-Cases-Detailed-Specification-ODR- Modal-Verbs\_Shall\_Shall\_not\_Should\_Should\_not\_Must\_Must\_not-v01 |
| 2023.06.28 | 11.00.09 | Addition of CR:  - JNPR-2023.06.28-WG1-CR-0038-O-RAN-Use-Cases-Detailed-Specification-ODR- Modal-Verbs\_Can\_Cannot\_May\_Need\_not-v01 |
| 2023.07.19 | 11.00.10 | Addition of CR: |

|  |  |  |
| --- | --- | --- |
|  |  | - KDDI.AO-2023.03.08-WG1-CR-0002-UseCaseDetailedSpecification-update-SLA- Assurance-v01 |
| 2023.07.19 | 11.00.11 | Addition of CR:   * CMCC-2023.2.6-WG1-CR-0001-UseCasesDetailedSpecification-Industrialvision- guarantee-v3 * Addition of section 4.25 as placeholder for Use Case 25: Non-Public Network (NPN) RAN-Sharing via Midhaul for Multi-Operator Coverage |
| 2023.07.19 | 11.00.12 | Addition of CR:  - NOK.AO-2023.06.30-WG1-CR-0002-ResiliencyUseCase-SharedORU-v02.01 |
| 2023.07.19 | 11.00.13 | Addition of CR:  - NEC-2022.12.12-WG1-CR-0008-ODU\_SW\_Update-shared-ORU-v08.00 |
| 2023.07.20 | 11.00.14 | * Update of the spec to latest O-RAN TS template * Correction of font types and spacing across the spec per ODR requirements * Editorial corrections |
| 2023.07.20 | 11.00.15 | Clean version for WG1 approval |
| 2023.07.27 | 11.00.16 | WG1 review comments are addressed, and approval is completed. |
| 2023.07.27 | 11.00.17 | All changes accepted, clean version. |
| 2023.07.27 | 12.00 | Final version 12.00 |
| 2023.11.06 | 12.00.01 | Initial version towards v13.00, starting with v12.00.01 per O-RAN specification revision numbering process.  Addition of CR:  - NOK.AO-2023.10.17-WG1-CR0004-MultiMNO-SharedORU\_SubUseCase-v01.01  Addition of section 4.26 as placeholder for Use Case 26: Interference Detection and Optimization  Editorial Modifications |
| 2023.11.06 | 12.00.02 | Clean version for WG1 approval |
| 2023.11.16 | 12.00.03 | WG1 review comments are addressed, and approval is completed. |
| 2023.11.16 | 12.00.04 | All changes accepted, clean version. |
| 2023.11.16 | 13.00 | Final version 13.00 |
| 2023.11.22 | 13.00.01 | Initial version towards v14.00, starting with v13.00.01 per O-RAN specification revision numbering process.  Addition of CR:  - JNPR-2023.11.22-WG1-CR-0047-O-RAN-Use-Cases-Detailed-Specification-ODR- FFS-Concepts-v01 |
| 2024.02.26 | 13.00.02 | Addition of CRs:   * JNPR-2024.01.16-WG1-CR-0051-O-RAN-Use-Cases-Detailed-Specification-ODR- Clauses-v01 * JNPR-2024.01.16-WG1-CR-0053-O-RAN-Use-Cases-Detailed-Specification-ODR- Figures-Numbering\_Capital\_Letters\_Editorial\_Changes-v01 * JNPR-2024.01.16-WG1-CR-0054-O-RAN-Use-Cases-Detailed-Specification-ODR- Tables-Numbering\_Capital\_Letters\_Editorial\_Changes-v01 copy |

|  |  |  |
| --- | --- | --- |
| 2024.03.07 | 13.00.03 | Addition of CRs:   * CMCC-2023.09.12-WG1-CR-0004-UseCasesDetailedSpecification-Interference- Detection-and-Optimization-v05 * KDDI.AO-2023.11.14-WG1-CR-0004-UseCaseDetailedSpecification-update-SLA- Assurance-v01 |
| 2024.03.08 | 13.00.04 | Addition of CR:  - KDDI.AO-2023.12.11-WG1-CR-0005-UseCasesDetailedSpecification-Interference- Detection-and-Optimization-v03 |
| 2024.03.20 | 13.00.05 | Addition of CRs:   * NOK-2024.01.25-WG1UCTG-CR0009-SharedORU\_SubUseCaseTitleUpdates- v01.00 * RMI.AO-2023.08.30-WG1-UCTG-CR-0002-Shared-ORU-Advanced-Resiliency- sub-use-case#1(1+1)-v01.00   - NOK.AO-2024.01.25-WG1UCTG-CR0008-  SharedORU\_PerformanceMgmt\_SubUseCase-v01.04  - NOK.AO-2024.02.15-WG1UCTG-CR0010-  SharedORU\_AntennaCalibration\_SubUseCase-v01.00 |
| 2024.03.22 | 13.00.06 | Clean version for WG1 approval |
| 2024.03.31 | 13.00.07 | WG1 review comments are addressed, and approval is completed. |
| 2024.03.31 | 13.00.08 | All changes accepted, clean version. |
| 2024.03.31 | 14.00 | Final version 14.00 |
| 2024.06.25 | 14.00.01 | Initial version towards v15.00, starting with v14.00.01 per O-RAN specification revision numbering process.  Addition of CR:  - JNPR-2024.05.10-WG1-CR-0056-O-RAN-Use-Cases-Detailed-Specification-ODR- Capital\_Letters-Editorial\_Changes-Fixes-v01 |
| 2024.06.28 | 14.00.02 | Addition of CRs:   * JNPR-2024.06.03-WG1-CR-0059-O-RAN-Use-Cases-Detailed-Specification-ODR- References-v01 * NOK-2024.04.10-WG1-CR-0066-Shared\_O-RU\_Dynamic\_Resource\_Shifting-v02 * NOK.AO-2024.06.11-WG1UCTG-CR0065-SharedORU\_Rehoming\_SubUseCase- v03 * RMI-2023.05.17-WG1-CR-0001-Shared-ORU-Basic-Resiliency-use-case-v01 |
| 2024.07.05 | 14.00.03 | Clean version for WG1 approval |
| 2024.07.18 | 14.00.04 | WG1 review comments are addressed, and approval is completed. |
| 2024.07.18 | 14.00.05 | All changes accepted, clean version. |
| 2024.07.18 | 15.00 | Final version 15.00 |
| 2024.09.10 | 15.00.01 | Initial version towards v16.00, starting with v15.00.01 per O-RAN specification revision numbering process.  Addition of CRs:  - CMCC-2024.06.03-WG1-UCTG-CR-0027-UseCasesDetailedSpecification- Use Case 26-Interference-Prediction\_v2 |

|  |  |  |
| --- | --- | --- |
|  |  | * JNPR-2024.08.05-WG1-CR-0061-O-RAN-Use-Cases-Detailed-Specification-ODR- References-Editorial\_Change-v01 * MTR.AO-2024.06.02-WG1UCTG-CR0002-Detailed-Specification-Use Case 26- Interference Detection and Optimizatio-r4 |
| 2024.11.04 | 15.00.02 | Addition of CRs:   * JNPR-2024.10.22-WG1-CR-0070-O-RAN-Use-Cases-Detailed-Specification- ETSI\_PAS\_Comments-v01 * DTAG-2024.09.24-WG1-CR-0003-Use case numbering-v03 * RMI.AO-2024.09.05-WG1-CR-0003-Shared-ORU-Resource-Shifting-use-case-v02 |
| 2024.11.15 | 15.00.03 | Updated copyright statement on the cover page and footer to 2025 Editorial changes to align to O-RAN TS template v02.01  Added 3GPP Release 18 related text to Normative and Informative References clauses  Editorial updates |
| 2024.11.21 | 15.00.04 | Clean version for WG1 approval |
| 2024.12.06 | 15.00.05 | WG1 review comments are addressed, and approval is completed. |
| 2024.12.06 | 15.00.06 | All changes accepted, clean version. |
| 2024.12.06 | 16.00 | Final version 16.00 |
---

- View in [Reader Mode](https://simewu.com/spec-reader/pages/12-WG1/O-RAN.WG1.TS.Use-Cases-Detailed-Specification-R004-v16.00.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG1.TS.Use-Cases-Detailed-Specification-R004-v16.00.docx).
