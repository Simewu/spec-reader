---
title: O-RAN.WG3.TS.UCR-R004-v08.00.docx.md
author: O-RAN Alliance, WG3
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG3.TS.UCR-R004-v08.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG3.TS.UCR-R004-v08.00.docx).

---

* toc
{:toc}

---

![webwxgetmsgimg (7).jpeg]({{site.baseurl}}/assets/images/22f5c6d82866.jpg)O-RAN.WG3.TS.UCR-R004-v08.00

*Technical Specification*

**O-RAN Work Group 3 (Near-Real-time RAN Intelligent**

**Controller) Use Cases and Requirements**

Copyright (C) 2025 by the O-RAN ALLIANCE e.V.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany Register of Associations, Bonn VR 11238, VAT ID DE321720189

Contents

Foreword 4

Modal verbs terminology 4

Introduction 4

1. Scope 5
2. References 5
   1. Normative references 5
   2. Informative references 6
3. Definition of terms, symbols and abbreviations 7
   1. Terms 7
   2. Symbols 8
   3. Abbreviations 8
4. Use cases 9
   1. Traffic steering 9
      1. Background and goal of the use case 9
      2. Entities/resources involved in the use case 9
      3. Solutions 10
      4. Required data 14
   2. QoS based resource optimization 16
      1. Background and goal of the use case 16
      2. Entities/resources involved in the use case 16
      3. Solutions 17
      4. Required data 19
   3. RAN slice SLA assurance 23
      1. Background and goal of the use case 23
      2. Entities/resources involved in the use case 25
      3. Solutions 26
      4. Required data 28
   4. Massive MIMO optimization 31
      1. Background and goal of the use case 31
      2. Entities/resources involved in the use case 31
      3. Solutions 32
      4. Required data 56
   5. QoE optimization 64
      1. Background and goal of the use case 64
      2. Entities/resources involved in the use case 64
      3. Solutions 64
      4. Required data 68
      5. RAN analytics information exposed by Near-RT RIC 71
   6. Network energy saving 72
      1. Carrier and cell switch off/on 72
      2. Advanced sleep mode 78
      3. RF channel reconfiguration 84
      4. PRB blanking optimization 88
5. Requirements 94
   1. Functional requirements 94
      1. Near-RT RIC generic functional requirements 94
      2. E2 interface functional requirements 94
      3. RAI exposure interface functional requirements 104
   2. Non-functional requirements 105
      1. Near-RT RIC non-functional requirements 105
      2. E2 interface non-functional requirements 105

Annex A (informative): Example use cases 106

* 1. Example use cases for RAN slice SLA assurance 106
     1. Downlink and uplink throughput per slice 106
     2. Guaranteed downlink and uplink throughput per slice 107

Annex (informative): Change history/Change request (history) 108

# Foreword

This Technical Specification (TS) has been produced by WG3 of the O-RAN Alliance.

The content of the present document is subject to continuing work within O-RAN and may change following formal O-RAN approval. Should the O-RAN Alliance modify the contents of the present document, it will be re-released by O-RAN with an identifying change of version date and an increase in version number as follows:

version xx.yy.zz where:

xx: the first digit-group is incremented for all changes of substance, i.e. technical enhancements, corrections, updates, etc. (the initial approved document will have xx=01). Always 2 digits with leading zero if needed.

yy: the second digit-group is incremented when editorial only changes have been incorporated in the document. Always 2 digits with leading zero if needed.

zz: the third digit-group included only in working versions of the document indicating incremental changes during the editing process. External versions never include the third digit-group. Always 2 digits with leading zero if needed.

# Modal verbs terminology

In the present document "**shall**", "**shall not**", "**should**", "**should not**", "**may**", "**need not**", "**will**", "**will not**", "**can**" and "**cannot**" are to be interpreted as described in clause 3.2 of the O-RAN Drafting Rules (Verbal forms for the expression of provisions).

"**must**" and "**must not**" are **NOT** allowed in O-RAN deliverables except when used in direct citation.

# Introduction

This document provides O-RAN WG3 Near-RT RIC Use Cases and Requirements, including E2 interface.

# Scope

The present document specifies the initial use cases that have been approved within O-RAN WG3. The purpose of the use cases is to help identify requirements for O-RAN defined interfaces and functions, specifically Near-RT RIC functions and E2 interface, eventually leading to formal drafting of interface specifications. For each use case, the document describes the motivation, resources, steps involved, and data requirements. Finally, the requirements clause details the functional and non- functional requirements derived from these use cases.

# References

## Normative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies. In the case of a reference to a 3GPP document, a non-specific reference implicitly refers to the latest version of that document in Release 18, or the latest 3GPP release prior to Release 18 that includes that document.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following referenced documents are necessary for the application of the present document.

1. 3GPP TS 22.261: "Service Requirements for the 5G System", Release 16, October 2020
2. 3GPP TS 23.203: "Policy and Charging Control Architecture", Release 16, December 2019
3. 3GPP TS 23.501: "System Architecture for the 5G System (5GS)", Release 16, September 2020
4. 3GPP TS 28.530: "3rd Generation Partnership Project; Technical Specification Group Services and System Aspects; Management and orchestration; Concepts, use cases and requirements", Release 16, December 2020
5. 3GPP TS 28.541: "Management and orchestration; 5G Network Resource Model (NRM); Stage 2 and stage 3", Release 16, November 2020
6. 3GPP TS 28.552: "Technical Specification Group Services and System Aspects; Management and orchestration; 5G performance measurements", Release 16, September 2020
7. 3GPP TS 32.425: "Telecommunication management; Performance Management (PM); Performance measurements Evolved Universal Terrestrial Radio Access Network (E-UTRAN), Release 16, January 2020
8. 3GPP TS 36.300: "Evolved Universal Terrestrial Radio Access (E-UTRA) and Evolved Universal Terrestrial Radio Access Network (E-UTRAN); Overall description; Stage 2", Release 16, October 2020
9. 3GPP TS 36.314: "Evolved Universal Terrestrial Radio Access (E-UTRA); Layer 2 - Measurements",

Release 16, July 2020

1. 3GPP TS 36.321: "Evolved Universal Terrestrial Radio Access (E-UTRA); Medium Access Control (MAC) protocol specification", Release 16, October 2020
2. 3GPP TS 36.331: "Evolved Universal Terrestrial Radio Access (E-UTRA); Radio Resource Control (RRC); Protocol specification", Release 16, October 2020
3. 3GPP TS 36.423: "Evolved Universal Terrestrial Radio Access Network (E-UTRAN); X2 Application Protocol (X2AP)", Release 16, October 2020
4. 3GPP TS 37.340: "NR; Multi-connectivity; Overall description; Stage-2", Release 16, October 2020
5. 3GPP TS 38.300: "NR and NG-RAN Overall Description", Release 16, October 2020
6. 3GPP TS 38.214: "NR; Physical Layer Procedures for Data", Release 16, October 2020
7. 3GPP TS 38.314: "NR; Layer 2 measurements", Release 16, October 2020
8. 3GPP TS 38.321: "NR; Medium Access Control (MAC) protocol specification", Release 16, October 2020
9. 3GPP TS 38.331: "NR; Radio Resource Control (RRC); Protocol specification", Release 16, October 2020
10. 3GPP TS 38.423: "NG-RAN; Xn Application Protocol (XnAP)", Release 16, October 2020
11. 3GPP TS 38.463: "NG-RAN; E1 Application Protocol (E1AP)", Release 16, October 2020
12. 3GPP TS 38.473: "NG-RAN; F1 Application Protocol (F1AP)", Release 16, October 2020
13. GSMA: "Generic Network Slice Template Version 4.0", November 2020
14. Void
15. O-RAN.WG2.A1AP: "O-RAN Working Group 2, O-RAN A1 interface: Application Protocol"
16. O-RAN.WG3.E2SM-v02.00: "O-RAN Working Group 3, Near-Real-time RAN Intelligent Controller, E2 Service Model (E2SM)"
17. 3GPP TS 38.133: "NR; Requirements for support of radio resource management", Release 16, April 2022
18. 3GPP TS 38.215: "NR; Physical layer measurements", Release 16, April 2022
19. O-RAN.WG2.Use-Case-Requirements-R004-v10.00: "O-RAN Working Group 2, Non-RT RIC & A1/R1 interface: Use Cases and Requirements"
20. O-RAN.WG2.AIML: "O-RAN Working Group 2, AI/ML workflow description and requirements"
21. O-RAN.WG1.O-RAN-Architecture-Description-v06.00: "O-RAN Architecture Description"
22. 3GPP TS 23.501: "System architecture for the 5G System (5GS); Stage 2", Release 17, March 2021
23. O-RAN.WG1.TS.Use-Cases-Detailed-Specification-R004-v15.00: "O-RAN Work Group 1 (Use Cases and Overall Architecture), Use Cases Detailed Specification"
24. 3GPP TS 28.310: "Management and orchestration; Energy efficiency of 5G", Release 18, March 2023
25. O-RAN.WG4.CUS.0-R003-v13: "O-RAN Working Group 4, Control, User and Synchronization Plane Specification"
26. O-RAN.WG4.MP.0-R003-v13: "O-RAN Working Group 4, Management Plane Specification"
27. O-RAN WG3 E2SM-KPM: "O-RAN Work Group 3, Near-Real-time RAN Intelligent Controller, E2 Service Model (E2SM), KPM"
28. O-RAN WG3 E2SM-RC: "O-RAN Work Group 3 (WG-3), Near-Real-time RAN Intelligent Controller, E2 Service Model (E2SM), RAN Control"
29. O-RAN.WG4.CUS.0-R003-v14: "O-RAN Working Group 4, Control, User and Synchronization Plane Specification"
30. O-RAN.WG4.MP.0-R003-v14: "O-RAN Working Group 4, Management Plane Specification"
31. 3GPP TS 38.323: "NR; Packet Data Convergence Protocol (PDCP) specification", Release 17.5, July 2023
32. 3GPP TS 25.321: "Universal Mobile Telecommunications System (UMTS); Medium Access Control (MAC) protocol specification", Release 17, May 2022
33. O-RAN.WG3.E2SM-RC-R003-v05.00: "O-RAN Work Group 3 (WG-3), Near-Real-time RAN Intelligent Controller, E2 Service Model (E2SM), RAN Control"
34. 3GPP TS 38.212: "5G: NR; Multiplexing and channel coding", Release 16.8.0, January 2022
35. 3GPP TS 28.554: "5G; Management and orchestration; 5G end to end Key Performance Indicators (KPI)",

Release 16, January 2021

1. 3GPP TS 38.211: "5G; NR; Physical channels and modulation", Release 16, July 2020
2. 3GPP TS 38.912: "5G; Study on New Radio (NR) access technology", Release 16, July 2020
3. 3GPP TS 38.913: "5G; Study on scenarios and requirements for next generation access technologies",

Release 16, July 2020

1. ORAN-WG10.O1-Interface-v08: "O-RAN Working Group 10, Operations and Maintenance Interface Specification", July 2022
2. O-RAN.WG1.TS.Use-Cases-Detailed-Specification-R004-v15.00.01: "O-RAN Work Group 1 (Use Cases and Overall Architecture), Use Cases Detailed Specification"

## Informative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies. In the case of a reference to a 3GPP document, a non-specific reference implicitly refers to the latest version of that document in Release 18, or the latest 3GPP release prior to Release 18 that includes that document.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following referenced documents are not necessary for the application of the present document, but they assist the user with regard to a particular subject area.

[i.1] 3GPP TR 21.905: "Vocabulary for 3GPP Specifications"

[i.2] O-RAN.WG1.mMIMO-Use-Cases-TR-v01.00: "O-RAN Working Group 1, Massive MIMO Use Cases Technical Report"

[i.3] 3GPP TR 23.700-40: "Study on enhancement of network slicing; Phase 2", March 2021

[i.4] ORAN-WG1.Use Cases Energy Saving Technical Report R003 v02.00: "O-RAN Work Group 1 (Use Cases and Overall Architecture), Network Energy Saving Use Cases Technical Report"

[i.5] 3GPP TR 28.813: "Study on new aspects of Energy Efficiency (EE) for 5G", Release 17, December 2021

# Definition of terms, symbols and abbreviations

## Terms

For the purposes of the present document, the terms and definitions [given in 3GPP TR 21.905 [i.1] and the following] apply. A term defined in the present document takes precedence over the definition of the same term, if any, in 3GPP TR 21.905 [i.1].

**A1 policy:** Type of declarative policies expressed using formal statements that enable the Non-RT RIC function in the SMO to guide the Near-RT RIC function, and hence the RAN, towards better fulfilment of the RAN intent.

**A1 enrichment information:** Information utilized by Near-RT RIC that is collected or derived at SMO/Non-RT RIC either from non-network data sources or from network functions themselves.

**A1-policy based traffic steering process mode:** An operational mode in which the Near-RT RIC is configured through A1 policy to use traffic steering actions to ensure a more specific notion of network performance (for example, applying to smaller groups of E2 nodes and UEs in the RAN) than that which it ensures in the background traffic steering.

**Background traffic steering processing mode:** An operational mode in which the Near-RT RIC is configured through O1 to use traffic steering actions to ensure a general background network performance which applies broadly across E2 nodes and UEs in the RAN.

**Baseline RAN behavior:** The default RAN behavior as configured at the E2 nodes by SMO.

**E2**: Interface connecting the Near-RT RIC and one or more O-CU-CPs, one or more O-CU-UPs, one or more O-DUs, and one or more O-eNBs.

**E2 node**: A logical node terminating E2 interface. In the present document, O-RAN nodes terminating E2 interface are:

* for NR access: O-CU-CP, O-CU-UP, O-DU or any combination.
* for E-UTRA access: O-eNB.

**FCAPS:** Fault, Configuration, Accounting, Performance, Security.

**Intents**: A declarative policy to steer or guide the behavior of RAN functions, allowing the RAN function to calculate the optimal result to achieve stated objective.

**Non-RT RIC** (O-RAN Non-Real-Time RAN Intelligent Controller): A logical function that enables non-real-time control and optimization of RAN elements and resources, AI/ML workflow including model training and updates, and policy-based guidance of applications/features in Near-RT RIC.

**Near-RT RIC (**O-RAN Near-Real-Time RAN Intelligent Controller): A logical function that enables near-real-time control and optimization of RAN elements and resources via fine-grained (e.g., UE basis, cell basis) data collection and actions over E2 interface.

**O-CU** (O-RAN Central Unit): A logical node hosting RRC, SDAP and PDCP protocols.

**O-CU-CP** (O-RAN Central Unit - Control Plane): A logical node hosting the RRC and the control plane part of the PDCP protocol.

**O-CU-UP** (O-RAN Central Unit - User Plane): A logical node hosting the user plane part of the PDCP protocol and the SDAP protocol.

**O-DU** (O-RAN Distributed Unit): A logical node hosting RLC/MAC/High-PHY layers based on a lower layer functional split.

**O-eNB** (O-RAN eNB): An eNB or ng-eNB that supports E2 interface.

**O-RU** (O-RAN Radio Unit): A logical node hosting Low-PHY layer and RF processing based on a lower layer functional split. This is similar to 3GPP's "TRP" or "RRH" but more specific in including the Low-PHY layer (FFT/iFFT, PRACH extraction).

**O1**: Interface between orchestration & management entities (orchestration/NMS) and O-RAN managed elements, for operation and management, by which FCAPS management, software management, file management and other similar functions can be achieved.

**RAN UE group:** Aggregations of UEs whose grouping is set in the E2 nodes through E2 procedures also based on the scope of A1 policies. These groups can then be the target of E2 CONTROL or POLICY messages.

**Traffic steering action:** The use of a mechanism to alter RAN behavior. Such actions include E2 procedures such as CONTROL and POLICY.

**Traffic steering inner loop:** The part of the traffic steering processing, triggered by the arrival of periodic TS related KPM (Key Performance Measurement) from E2 node, which includes UE grouping, setting additional data collection from the RAN, as well as selection and execution of one or more optimization actions to enforce traffic steering policies.

**Traffic steering outer loop:** The part of the traffic steering processing, triggered by the Near-RT RIC setting up or updating traffic steering aware resource optimization procedure based on information from A1 policy setup or update, A1 Enrichment Information (EI) and/or outcome of Near-RT RIC evaluation, which includes the initial configuration (preconditions) and injection of related A1 policies, triggering conditions for TS changes.

**Traffic steering processing mode:** An operational mode in which either the RAN or the Near-RT RIC is configured to ensure a particular network performance. This performance includes such aspects as cell load and throughput, and it can apply differently to different E2 nodes and UEs. Throughout this process, traffic steering actions are used to fulfill the requirements of this configuration.

**Traffic steering target:** The intended performance result that is desired from the network, which is configured to Near-RT RIC over O1.

## Symbols

Void

## Abbreviations

For the purposes of the present document, the abbreviations [given in 3GPP TR 21.905 [i.1] and the following] apply. An abbreviation defined in the present document takes precedence over the definition of the same abbreviation, if any, in 3GPP TR 21.905 [i.1].

KPI Key Performance Indicator

KQI Key Quality Indicator

MBB Mobile BroadBand

SMG Spatial Multiplexing Group

SMO Service Management and Orchestration

# Use cases

## Traffic steering

This use case provides the motivation, description, and requirements for Near-RT RIC and E2 interface to support traffic steering, whose end-to-end requirements are specified in [32].

### Background and goal of the use case

The rapid traffic growth and multiple frequency bands utilized in a commercial network make it challenging to steer the traffic in a balanced distribution. Typical controls are limited to adjusting the cell reselection and handover parameters; and modifying load calculations and cell priorities.

The goal of Near-RT RIC traffic steering is to interpret the policies received over A1 and to determine the optimum changes it can make towards achieving those goals. It may also leverage the A1 enrichment information. Traffic steering may reuse mechanisms provided by other use cases to effect the changes necessary to achieve its goals.

More specifically, Near-RT RIC triggers E2 procedure and related control/policies so as to obtain network performance that would fulfill the criteria identified in the A1 policies.

### Entities/resources involved in the use case

1. OAM functions in SMO domain:
   * Collect necessary measurement metrics from network level measurement report and enrichment data (can acquire data from application) for constructing/training relevant AI/ML models.
   * Deploy or update, configure the relevant TS optimization AI/ML models to Near-RT RIC via O1.
2. Non-RT RIC in SMO domain:
   * Send A1 policies and receive policy feedback to/from Near-RT RIC to drive resource optimization at RAN level.
   * E.g., TS targets as specified in O-RAN.WG2.A1AP [24].
3. Near-RT RIC:
   * Supports update of AI/ML models from SMO.
   * Supports inference, such as traffic prediction, using AI/ML models from Non-RT RIC based on network data, e.g., measurement reports from E2 node.
   * Supports interpretation and execution of A1 policies from Non-RT RIC.
   * Sends TS resource optimization related policies and commands to E2 node to influence RRM behavior.
   * Sends the relevant A1 policy feedback to Non-RT RIC for potential policy update.
   * Sends the relevant O1 performance data to OAM functions; these can be used by Non-RT RIC for potential policy update.
4. E2 node:
   * Supports reporting of UE context, network measurements, and UE measurements to Near-RT RIC over E2 interface.
   * Executes policies and commands received from Near-RT RIC over E2 interface.
   * Supports network and UE performance report to OAM functions in SMO domain over O1 interface.

### Solutions

In this clause the possible processing modes of traffic steering are described. Three general traffic steering processing modes and the transitions between them are shown in figure 4.1.3-1.

These modes represent the way the Near-RT RIC (or RAN) operates on a given group of UEs, and not the operation of any component as a whole. As such, the Near-RT RIC, could be operating in both modes 1 and 2 concurrently for different sets of UEs. For example, the transition from mode 0 or 1 to 2 occurs only for a group of UE defined by the A1 policy scope. At the same time, other UE groups may still be handled in mode 0 and/or 1.

O1 configuration from SMO

A1-P Create Policy from Non-RT RIC

O1 configuration

TS Mode 0: Baseline

removal

A1-P Delete Policy

A1-P Delete Policy

TS Mode 2:

A1 Policy based Near- RT RIC Processing

TS Mode 1: Background Near-RT RIC Processing

A1-P Create Policy

from Non-RT RIC

###### Figure 4.1.3-1: Traffic steering processing modes

The three processing modes are described in more detail below:

1. "Baseline" traffic steering behavior: OAM functions in SMO domain uses O1 configuration on one or more E2 node to set up a desired baseline behavior. This also sets up baseline performance monitoring of E2 node by the SMO. In this mode, Near-RT RIC is not involved.
2. "Background" Near-RT RIC processing: OAM functions in SMO domain uses O1 configuration of Near-RT RIC to set up a desired "background Near-RT RIC behavior". In this mode the Near-RT RIC sets up E2 mechanisms to monitor E2 node and uses traffic steering related E2 mechanisms to achieve the desired background behavior of the set of E2 nodes connected to the Near-RT RIC.
3. "A1-policy based" Near-RT RIC processing: This mode can be entered from either mode 0 or mode 1. Non-RT RIC in SMO domain uses A1-P to specify an A1 guided behavior for a targeted subset of E2 nodes or UEs. If entering this from mode 1, this will have the effect of modifying the existing Near-RT RIC "background" behavior to include a more specific A1 guided behavior. In this mode, the Near-RT RIC can either set up or modify E2 mechanisms used to monitor E2 nodes and will use traffic steering related E2 mechanisms to obtain the desired behavior of some targeted sub-set of E2 nodes or UEs. This mode terminates when the corresponding A1-P policy delete message is received from Non-RT RIC in SMO domain and the system returns to either mode 0 or mode 1, depending on whether or not OAM functions in SMO domain had previously configured the optional Near-RT RIC "background" role (mode 1).

NOTE: Processing mode 0 is strictly not in scope for WG3. It is described here for completeness and to clearly state what is the starting point prior to the WG2 and WG3 defined mechanisms.

Processing mode 2 contain an 'outer loop' and an 'inner loop'. In the inner loop, a number of different "E2 mechanism" can be used (policy, report/control or insert/control) towards a number of different target RAN functions in order to either exercise existing RAN mechanisms or modifying their ongoing behavior. The appropriate mechanism and target RAN function would depend upon the RAN function capabilities to support a given E2 mechanism, the A1-P scope and policy, the O1 configuration of the RIC and the performance observed through E2 monitoring.

#### Near-RT RIC A1-policy based traffic steering

The context of Near-RT RIC A1-policy based traffic steering is captured in table 4.1.3.1-1.

###### Table 4.1.3.1-1: Near-RT RIC A1-policy based traffic steering

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Drive traffic management in RAN in accordance with defined intents, policies,  and enrichment information from the Non-RT RIC using A1 interface. |  |
| Actors and Roles | * OAM functions in SMO domain: Performance data and training data collection, AI model management. * Non-RT RIC in SMO domain: Creates and updates A1 policies, AI model training targeting to TS optimization. * Near-RT RIC: Enforces A1 policies and generates RIC CONTROL and/or POLICY. * E2 node: RIC CONTROL and POLICY execution and RIC REPORT creation.   Refer to 4.1.2 for more details. |  |
| Assumptions | * All relevant functions and components are instantiated. * A1, O1 and E2 interface connectivity is established. * A1 policy scope defined. |  |
| Pre-conditions | * Network is operational with default configuration. * OAM functions have configured a baseline measurement configuration and the Non-RT RIC has access to this data. * (optional) OAM functions have configured traffic steering targets in Near- RT RIC through O1 interface. * OAM functions have configured baseline traffic steering parameters in E2 node(s) through O1 interface. * (optional) Near-RT RIC has access to the necessary data related to traffic steering from the E2 node by means of a RIC report procedure. * Non-RT RIC analyzes the historical data from RAN for training the relevant AI/ML models to be deployed or updated in the Near-RT RIC, as well as   AI/ML models required for non-real-time optimization of configuration and policies. |  |
| Begins when | Non-RT RIC and/or Near-RT RIC perform data evaluation, determine that TS- aware optimization is required to be initiated or updated and establishes  target(s). |  |
| Step 1 (O) | (Start of outer loop control)  Non-RT RIC evaluates the collected data and A1 policy feedback, if required, and generates or updates the appropriate TS-aware resource optimization  policy, such as TS targets, and sends it to Near-RT RIC via A1 interface. |  |
| Step 2 (O) | Non-RT RIC sends optional traffic steering related A1 enrichment information. |  |
| Step 3 (M) | Based on received A1 policy and/or A1-EI from Non-RT RIC or internal trigger and/or internal evaluation and trigger, Near-RT RIC sets up or updates the TS-  aware resource optimization procedure. |  |
| Step 4 (M) | Near-RT RIC subscribes to a UE context information and measurement metrics  via E2 interface. |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Step 5 (M) | (Start of inner loop control)  E2 nodes report the UE context information and E2 measurements via RIC REPORT periodically or event-triggered. |  |
| Step 6 (M) | Near-RT RIC evaluates the performance data from E2 nodes (including performance data from different E2 nodes for the same UE) and finds the performance is out of TS targets which are indicated in the A1 policy and/or  internal Near-RT RIC TS targets. |  |
| Step 7 (M) | Based on the UE context information, E2 measurement metrics (RIC REPORT), and A1 policy, Near-RT RIC may generate new or modify the existing E2 policies and sends them to E2 nodes. Near-RT RIC may also generate control command(s) and send them to E2 node(s) to trigger re-allocation of radio resources so that TS indicators can move back to the limits outlined in the A1 policies.  E2 node functions target of E2 policy and control commands may be:   * E-UTRAN-NR dual connectivity * Carrier aggregation * Connected mode mobility * Idle mode mobility   Step 4 to Step 7 may repeat. (End of inner loop control) |  |
| Step 8 (O) | If required, Near-RT RIC sends information to the SMO domain using A1 policy feedback and/or O1-PM. The Non-RT RIC may use this information and information collected from E2 nodes using O1-PM as policy feedback to assess the performance of TS optimization function in Near-RT RIC, or to assess the outcome of the applied A1 policies. Subsequently, an A1 policy can be updated.  In parallel, the Near-RT RIC may use available information to assess the performance of TS optimization function in Near-RT RIC, and/or to assess the outcome of the applied A1 policies. Subsequently, Near-RT RIC TS optimization targets can be updated  Step 1 to Step 8 may repeat (End of outer loop control) |  |
| Ends when | Non-RT RIC decides to delete TS-aware resource optimization policy and sends the related message or following internal trigger, the Near-RT RIC terminates  the TS-aware resource optimization procedure. |  |
| Exceptions | None. |  |
| Post Conditions | Non-RT RIC continues to collect and monitor TS related measurement data from E2 node.  Near-RT RIC continues to collect and monitor TS related measurement data  from E2 node. |  |
| Traceability | REQ-Near-RT-RIC-TS-FUN1, REQ-Near-RT-RIC-TS-FUN2, REQ-E2-TS- FUN1, REQ-E2-TS-FUN2, REQ-E2-TS-FUN3, REQ-E2-TS-FUN4, REQ-E2- TS-FUN5, REQ-E2-TS-FUN6, REQ-E2-TS-FUN7, REQ-E2-TS-FUN8, REQ-  E2-TS-FUN9, REQ-E2-TS-FUN10 |  |

</div>

@startuml

skinparam ParticipantPadding 4

skinparam BoxPadding 8

skinparam defaultFontSize 12

Box "Service Management and Orchestration" #gold Participant OAM as "OAM Functions" Participant non as "Non-RT RIC"

End box

Box "O-RAN" #lightpink

Participant near as "Near-RT RIC" Participant ran as "E2 Node"

End box

OAM <-> ran : <<O1>> RAN Data & Configuration collection near <-> ran : <<E2>> RAN Data & Configuration collection OAM -> non: TS Performance information

non-->non: (Mode 2) Collected Data Evaluation TS target generation near-->near: (Mode 1) Collected Data Evaluation TS target generation

group OUTER LOOP CONTROL

non --> near : 1:(opt.) <<A1>> A1 policy setup or update

non --> near: 2: (opt.) <<A1-EI>> Traffic steering related A1 Enrichment Information near -> near : 3: TS optimization set-up or update

near -> ran : 4: <<E2>> RIC SUBSCRIPTION REQUEST(UE context & Measurement Metrics)

group INNER LOOP CONTROL

ran -> near: 5: <<E2>> RIC INDICATION (UE context & E2 measurement metrics) near -> near: 6: TS performance does not fulfill A1 policy requirements

near --> ran : 7: (opt.) <<E2>> RIC SUBSCRIPTION REQUEST(REPORT or INSERT [UE

measurements & E2-node state])

near <-- ran : (opt.) <<E2>> RIC INDICATION

near --> ran : (opt.) <<E2>> RIC CONTROL REQUEST(TS optimization control parameters) near --> ran : (opt.) <<E2>> (opt.) RIC SUBSCRIPTION REQUEST(TS optimization POLICY)

end

OAM <-- near: (opt.) <<O1>> TS Performance information OAM -> non: TS Performance information

non <-- near: (opt.) <<A1>> TS Performance information non -> non: TS Optimization Performance Evaluation near -> near: TS Optimization Performance Evaluation

end

non --> near: (opt.) <<A1>> A1 policy delete near -> near: TS optimization stopped

near-> ran: <<E2>> RIC SUBSCRIPTION DELETE

@enduml

The overall procedure for Near-RT RIC A1-policy based traffic steering use case is given in figure 4.1.3.1-1.

![Generated by PlantUML]({{site.baseurl}}/assets/images/192e1cd96292.jpg)

###### Figure 4.1.3.1-1: The overall procedure for Near-RT RIC A1-policy based traffic steering use case

### Required data

This clause elaborates the Near-RT RIC and the E2 node capabilities necessary for implementation of the traffic steering use case. The requirements are specified in clause 5.

#### Control over E2

**Mobility control:** Serving cell can be chosen based on the resource status and QoS of the UE(s) targeted by an A1 traffic steering policy. Moreover, load balancing can be achieved to improve the overall network performance. The following procedures can be used for traffic steering:

* Handover from the source cell to the target cell
* Configuration/reconfiguration of handover restriction list
* Configuration of idle mode mobility parameters
* Enable, disable, or modify CA (as specified in 3GPP TS 38.300 [14], 3GPP TS 36.300 [8], 3GPP TS 38.473 [21], 3GPP TS 38.331 [18] and 3GPP TS 36.331 [11])
* Enable, disable, or modify dual connectivity (as specified in 3GPP TS 38.300 [14], 3GPP TS 36.300 [8], 3GPP TS 37.340 [13], 3GPP TS 38.473 [21], 3GPP TS 38.331 [18] and 3GPP TS 36.331 [11])

Both RIC POLICY and RIC CONTROL can be used.

#### UE context information from E2 nodes

The followings are examples of UE context information identified as required:

* UE ID (as specified in [32])
* Slice level: S-NSSAI
* DRB level: e.g., established DRB ID, mapping with QoS flows, etc.
* QoS related: e.g., E-RAB level QoS parameters (4G, NSA) or QoS flow level QoS parameters (NG-RAN).
* UE capabilities: CA and DC capabilities

For example, UE ID, S-NSSAI, DRB ID, or QCI/5QI can be used to derive the QoS requirements and the resource occupation; the UE capabilities may be required to select the appropriate RRM action (e.g., CA/DC configuration).

#### Measurements from E2 nodes

The E2 measurements are necessary for inference and prediction in the Near-RT RIC as the driver for decisions in addition to KPMs. For the traffic steering use case, the Near-RT RIC can translate an A1 policy (relatively static targets) into a flexible selection of controls over E2 (e.g., handover control, DC, CA, idle mode mobility) by taking into account the RAN resource utilization, cell level and the UE level performance, the radio conditions, etc.

The examples of measurement information identified as required are listed in table 4.1.4.3-1 below.

###### Table 4.1.4.3-1: Measurements from E2 nodes

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Measurement**  **Type** | **Measurement Examples** |
| Cell/SSB area related measurements | * DL/UL Total PRB Usage, Distribution of DL/UL Total PRB Usage, DL/UL GBR PRB Usage, DL/UL non-GBR PRB Usage, RRC Connection Number, Available RRC Connection Capacity Value, Mean and Maximum Number of Active UEs per DRB in the DL/UL, DL/UL Scheduling PDCCH CCE Usage, DL/UL Composite Available Capacity, DL/UL Cell PDCP SDU Data Volume (including secondary RAT usage for EN-DC/MR- DC), Handover success ratio * DL/UL SSB Area Total PRB Usage, DL/UL SSB Area GBR PRB Usage, DL/UL SSB Area non-GBR PRB Usage, SSB Area Capacity Value * DL/UL PRB usage per QCI, DL/UL PRB usage per 5QI, DL/UL PRB usage per slice, Slice Available Capacity Value   *As specified in 3GPP TS 32.425 [7], 3GPP TS 28.552 [6], 3GPP TS 36.314 [9], 3GPP TS*  *38.314 [16], 3GPP TS 38.423 [19], 3GPP TS 38.463 [20] and 3GPP TS 38.473 [21]* |
| E2-node user plane measurements per- UE / UE group | * Average DL/UL throughput * DL/UL PRB usage * DL/UL Scheduled IP throughput * Buffer Status Information (e.g., UL BSR)   *As specified in 3GPP TS 32.425 [7], 3GPP TS 28.552[6], 3GPP TS 36.314 [9], 3GPP TS*  *38.314 [16], 3GPP TS 38.423 [19], 3GPP TS 38.473 [21], 3GPP TS 38.463 [20], 3GPP TS*  *36.321 [10] and 3GPP TS 38.321 [17]* |
| UE L1/L2/L3  measurements | * RSRP and RSRQ measurements * SINR measurements * CQI/MCS measurements * Location and Velocity measurements   *As specified in 3GPP TS 36.331 [11] and 3GPP TS 38.331 [18]* |

</div>

#### E2 node configuration

Cell level configuration parameters, such as PCI, neighbor relations and related offsets etc. are needed at Near-RT RIC in order to e.g., configure UE measurements monitor cell level performance and manage mobility control (handover and cell reselection) according to the network topology and the related E2 parameters.

## QoS based resource optimization

This use case provides the background and motivation for the O-RAN architecture to support near real-time QoS aware resource optimization.

Based on the end-to-end requirements for the QoS based resource optimization use case specified in [32], some high-level functional descriptions and requirements over Near-RT RIC and E2 interface are introduced.

### Background and goal of the use case

The network shall offer means to prioritize resources while preserving the required QoS properties, e.g., reliability, latency, bandwidth requirements, as specified in 3GPP TS 23.203 [2]. Current RAN network coverage and capacity depends on rigorous planning and configuration. However, due to varying nature of traffic demands and radio channels as well as multiple services to co-exist, it is hard to satisfy all QoS requirements simultaneously.

In summary, it is important for an E2 node to achieve QoS targets as smoothly as possible. The QoS aware resource optimization should provide a refined granularity of radio resource allocation based on varying radio conditions and traffics in order to meet the diverse requirements of reliability, latency, and bandwidth simultaneously. In addition, it should coordinate allocation of radio resources for co-existing multiple services, which may have different priorities, to achieve the optimal utilization of radio resources.

In case when the network performance data is observed outside the boundary of the defined QoS targets, the Near-RT RIC should be able to trigger re-allocation of radio resources so that the QoS indicators can move back within limits outlined in the A1 policies.

### Entities/resources involved in the use case

1. OAM functions in SMO domain:
   * Collect necessary measurement metrics from network level measurement report and enrichment data (can acquire data from application) for constructing/training relevant AI/ML models.
   * Deploy or update, configure the relevant QoS optimization AI/ML models to Near-RT RIC via O1.
2. Non-RT RIC in SMO domain:
   * Send A1 policies to and receive policy feedback from Near-RT RIC to drive resource optimization at RAN level.
   * E.g., QoS targets as specified in 3GPP TS 23.203 [2], such as GFBR, MFBR, priority level, PDB.
   * See O-RAN.WG2.A1AP [24] for more information.
3. Near-RT RIC:
   * Support update of AI/ML models from SMO.
   * Support inference, such as QoS prediction, using AI/ML models from Non-RT RIC based on network data, e.g., measurement reports from E2 node.
   * Support interpretation and execution of A1 policies from Non-RT RIC.
   * Sending QoS resource optimization related policies and commands to E2 node to influence RRM behavior.
   * Sending the relevant A1 policy feedback to Non-RT RIC for potential policy update.
   * Sending the relevant O1 performance data to OAM functions, can be used by Non-RT RIC for potential policy update.
4. E2 node:
   * Support reporting of UE context, network measurements, and UE measurements to Near-RT RIC over E2 interface.
   * Executes policies and commands received from Near-RT RIC over E2 interface.
   * Support network and UE performance report to OAM functions in SMO domain over O1 interface.

### Solutions

The context of QoS based resource optimization use case is captured in table 4.2.3-1.

###### Table 4.2.3-1: QoS based resource optimization use case

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related use** |
| Goal | QoS-aware resource optimization in E2 nodes in accordance with A1 policies and O1 configuration. |  |
| Actors and Roles | * OAM functions in SMO domain: Performance data and training data collection, AI model training targeting to QoS optimization. * Non-RT RIC in SMO domain: Creates and updates A1 policies. * Near-RT RIC: Enforces A1 policies and generates RIC CONTROL and/or POLICY. * E2 node: RIC CONTROL and POLICY execution and RIC REPORT creation.   Refer to 4.2.2 for more details. |  |
| Assumptions | * All relevant functions and components are instantiated and configured. * A1, O1, E2 interface connectivity is established. |  |
| Pre-conditions | Network is operational with default configuration.  OAM functions have established RAN data collection, and Non-RT RIC has access to this data.  Non-RT RIC analyzes the history data from RAN and triggers SMO to train the relevant AI/ML models which are deployed or updated in Near-RT RIC via O1 interface.  Non-RT RIC and Near-RT RIC have exchanged capabilities for the support of QoS-  aware resource optimization. |  |
| Begins when | QoS-aware optimization policy is required to be initiated or updated. |  |
| Step 1 (O) | **(Start of outer loop control)**  Non-RT RIC evaluates the collected data and A1 policy feedback, if required, and generates or updates the appropriate QoS-aware resource optimization policy, such as QoS targets, and sends it to Near-RT RIC via A1 interface. |  |
| Step 2 (M) | When Near-RT RIC receives an A1 policy from Non-RT RIC, Near-RT RIC initiates the corresponding optimization procedure. |  |
| Step 3 (M) | **(Start of inner loop control)**  Near-RT RIC subscribes to a UE context information and measurement metrics via E2 interface. |  |
| Step 4 (M) | E2 nodes report the UE context information and E2 measurements via RIC REPORT periodically or event-triggered. |  |
| Step 5 (M) | Near-RT RIC evaluates the performance data from E2 nodes (including performance data from different E2 nodes for the same UE) and finds the performance is out of QoS targets which are indicated in the A1 policy. If  performance is within the targets, Near-RT RIC keeps monitoring. |  |
| Step 6 (M) | Based on the UE context information, E2 measurement metrics (RIC REPORT), and A1 policy, Near-RT RIC may generate new or modify the existing E2 policies and sends them to E2 nodes. Near-RT RIC may also generate control command(s) and send them to E2 node(s) to trigger re-allocation of radio resources so that QoS indicators can move back to the limits outlined in the A1 policies.  Step 3 to Step 6 may repeat. **(End of inner loop control)** |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related use** |
| Step 7 (O) | If required, Near-RT RIC sends policy feedback to Non-RT RIC to assess the performance of QoS optimization function in Near-RT RIC, or to assess the outcome of the applied A1 policies. Subsequently, an A1 policy can be updated.  Step 1 to Step 7 may repeat **(End of outer loop control)** |  |
| Ends when | Non-RT RIC decides to delete QoS-aware resource optimization policy and sends the related message to Near-RT RIC. |  |
| Exceptions | - |  |
| Post Conditions | Non-RT RIC continues to collect and evaluate RAN data related to the QoS-aware optimization use case. |  |
| Traceability | REQ-E2-QoS-FUN1, REQ-E2-QoS-FUN2, REQ-E2-QoS-FUN3, REQ-E2-QoS-  FUN4, REQ-E2-QoS-FUN5, REQ-E2-QoS-FUN6 |  |

</div>

@startuml

skinparam ParticipantPadding 4

skinparam BoxPadding 8

skinparam defaultFontSize 12

Box "Service Management and Orchestration" #gold Participant OF as "OAM Functions" Participant non as "Non-RT RIC"

End box

Box "O-RAN" #lightpink

Participant near as "Near-RT RIC" Participant ran as "E2 Node"

End box

group OUTER LOOP CONTROL

ran <-> OF : <<O1>> RAN data collection OF -> non : Collected data

non -> non : Collected data evaluation & QoS target generation non -> near : <<A1-P>> A1 policy setup or update

near -> near : QoS optimization initiated

group INNER LOOP CONTROL

near -> ran : <<E2>> RIC SUBSCRIPTION REQUEST (UE context and/or Measurement metrics) ran -> near : <<E2>> RIC INDICATION (UE context and/or Measurement metrics)

non -> near : (opt.) <<A1-EI>> QoS related A1 Enrichment Information near -> near : QoS performance monitoring

near -> ran : (opt.) <<E2>> RIC SUBSCRIPTION REQUEST (QoS optimization RIC POLICY) near -> ran : (opt.) <<E2>> RIC CONTROL REQUEST (QoS optimization RIC CONTROL)

end

OF <- near : (opt.) <<O1>> QoS optimization related performance information OF -> non : (opt.) Performance information

non -> non : QoS optimization performance evaluation end

non -> near : <<A1-P>> A1 policy delete

near -> ran : <<E2>> RIC SUBSCRIPTION DELETE

@enduml

The overall procedure for QoS based resource optimization use case is given in figure 4.2.3-1.

![Generated by PlantUML]({{site.baseurl}}/assets/images/8ede81064275.png)

###### Figure 4.2.3-1: The overall procedure for QoS based resource optimization use case

### Required data

This clause elaborates the Near-RT RIC and the E2 node capabilities necessary for implementation of the QoS based resource optimization use case. The requirements are specified in clause 5.

#### Control over E2

1. **DRB control:** RB control can be applied for modification of the following QoS properties:
   * DRB QoS modification (as specified in 3GPP TS 38.473 [21] and 3GPP TS 23.501 [3]): The DRB level QoS may be tuned to accommodate A1 policy requirement.
   * QoS flow remapping (as specified in 3GPP TS 38.473 [21]): The mapping relationship between QoS flows and DRBs may be adjusted.
   * Logical channel reconfiguration (as specified in 3GPP TS 38.331 [18] and 3GPP TS 36.331 [11]): The relevant parameters can be considered, e.g., priority, prioritized bit rate, bucket size duration, etc.
   * Radio admission control (as specified in 3GPP TS 38.331 [18] and 3GPP TS 36.331 [11]): DRB admission control such as reject, or release may be applied.
   * Modification of dual-connectivity DRB (as specified in 3GPP TS 37.340 [13]): Change of bearer termination point (MN or SN) and/or bearer types (MCG/SCG/split), and control of split ratio for a split bearer.
   * Activation and deactivation of packet duplication and configuration of the number of legs in DC, CA, or DC+CA scenarios (as specified in 3GPP TS 36.300 [8] and 3GPP TS 38.300 [14]).

RIC CONTROL (e.g., request for QoS flow remapping) or RIC POLICY (e.g., DRB admission policy) can be applicable.

1. **Radio resource allocation**, such as configuration of DRX, semi-persistent scheduling (SPS), or guidance for the scheduling and rate selection in MAC. For example, based on prediction, an E2 policy or control to reconfigure SPS configuration or *ConfiguredGrantConfig* for UL may be generated.
   * DRX reconfiguration (as specified in 3GPP TS 38.473 [21], 3GPP TS 38.331 [18] and 3GPP TS 36.331 [11]): Long DRX cycle length, short DRX cycle length as well as short DRX cycle timer can be considered.
   * SR periodicity reconfiguration (as specified in 3GPP TS 38.331 [18] and 3GPP TS 36.331 [11]): Both *sr-ProhibitTimer*

and *sr-TransMax* can be treated.

* + SPS configuration (as specified in 3GPP TS 38.331 [18] and 3GPP TS 36.331 [11]): Both *SPS-Config* (DL) and

*ConfiguredGrantConfig* (UL) can be treated.

* + Reconfiguration of slice level PRB quota (as specified in 3GPP TS 28.541 [4])
  + Configuration of CQI table with certain target block error rate (as specified in 3GPP TS 38.214 [15])

Both RIC POLICY and RIC CONTROL can be used. For example, SPS can be configured via RIC CONTROL; RIC POLICY can be used, e.g., to set the guidance for the scheduler.

1. **Radio access control:** Depending on operator's policies, deployment scenarios, subscriber profiles, and available services, different criterion will be used in determining which access attempt should be allowed or blocked when congestion occurs in the system, as specified in 3GPP TS 22.261 [1]. For example, access control may be applied to restrict access of other UEs for a specific cell in order to achieve better QoS for some UEs. A cell-level, UE-level, or slice-level access control can be applied. Four categories of radio access control are indicated as below:
   * RACH backoff
   * RRC connection reject
   * RRC connection release
   * Access barring

Both RIC POLICY and RIC CONTROL can be used.

1. **Connection mobility control:** For example, a neighbouring cell may be selected for the optimization of QoS of a specific UE. A neighbour handover restriction list may be configured to prevent the UEs from HO to some neighbouring cells in order to guarantee QoS of the UEs served by those neighbouring cells. Or a capacity boosting mechanism can be used to achieve better QoS, e.g., enable CA/DC.
   * Handover from the source cell to the target cell
   * Configuration/reconfiguration of handover restriction list
   * Enable, disable, or modify CA (as specified in 3GPP TS 38.473 [21], 3GPP TS 38.331 [18] and 3GPP TS 36.331 [11])
   * Enable, disable, or modify dual connectivity (as specified in 3GPP TS 38.473 [21], 3GPP TS 38.331 [18] and 3GPP TS 36.331 [11])

Both RIC POLICY and RIC CONTROL can be used. For the specific requirements and related stage-3 E2SM works, please refer to the traffic steering use case defined in clause 4.1.

1. **UE transmit power control:** For example, when the uplink interference is too large, it is difficult to achieve the uplink QoS target. In this case, UE transmit power control will be used to adjust the amount of interference to achieve required QoS. Near-RT RIC configures target value of uplink received quality such as received SINR or power at E2 node. E2 node controls the UE power by executing open-loop/closed-loop power control to UE to achieve target value configured by Near-RT RIC.
   * Configuration or modification of target value of uplink received quality such as received SINR or received power at E2 node.

RIC CONTROL, RIC POLICY can be used.

NOTE: When the target UEs are at the cell edge, their QoS of uplink can be improved by increasing their transmit power and/or allocating additional resources to the UEs. Hence for UEs at the cell edge, the optimization should consider the impact on serving and neighbour cell.

#### UE context information from E2 nodes

The followings are examples of UE context information identified as required:

* UE ID (as specified in [32])
* Slice level: S-NSSAI
* DRB level: e.g., established DRB ID, mapping with QoS flows, etc.
* QoS related: e.g., E-RAB level QoS parameters (4G, NSA) or QoS flow level QoS parameters (NG-RAN)
* UE capabilities: CA and DC capabilities
* RLC/MAC/PHY level: e.g., logical channel, DRX, scheduling request, SPS configurations

For example, UE ID, S-NSSAI, DRB ID, or QCI/5QI can be used for different granularity of controls over E2; an established DRB level information may be needed to change the mapping of QoS flows to a specific DRB or modify DRB attributes; the UE capabilities may be required to make sure if CA/DC can be enabled.

#### Measurements from E2 nodes

The E2 measurements are necessary for inference and prediction in the Near-RT RIC as the driver for decisions in addition to KPMs. For the QoS based resource optimization use case, the Near-RT RIC can translate an A1 policy (relatively static targets) into a flexible selection of controls over E2 (e.g., RB control, handover, access control) by taking into account the runtime status in the Near-RT RIC. Therefore, it is required to specify those measurement parameters as possible as needed over E2 interface.

The examples of UE-level, cell-level, and slice-level measurement information identified as required are listed in table 4.2.4.3- 1 below.

###### Table 4.2.4.3-1: Measurements from E2 nodes

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Measurement Type** | | **Measurement Examples** |
| UE-level | Radio channel info  available at DU | 1. **CQI** (\*) |
| Radio channel info available at CU- CP for serving cell | 1. **RSRP** (as specified in 3GPP TS 38.331 [18] and 3GPP TS 36.331 [11]) 2. **RSRQ** (as specified in 3GPP TS 38.331 [18] and 3GPP TS 36.331 [11]) 3. **SINR** (as specified in 3GPP TS 38.331 [18] and 3GPP TS 36.331 [11])   See NOTE 1. |
| Radio channel info available at CU- CP for  neighboring cells | 1. **RSRP** (as specified in 3GPP TS 38.331 [18] and 3GPP TS 36.331 [11]) 2. **RSRQ** (as specified in 3GPP TS 38.331 [18] and 3GPP TS 36.331 [11]) 3. **SINR** (as specified in 3GPP TS 38.331 [18] and 3GPP TS 36.331 [11])   See NOTE 2. |
| L2 | 1. **DL/UL UE PRB usage for data traffic** (\*) 2. **Average DL UE throughput in gNB** (\*) 3. **Distribution of DL UE throughput in gNB** (\*) 4. **Percentage of unrestricted DL UE data volume in gNB** (\*) 5. **Packet Delay and RAN part packet delay components** (\*) 6. **Packet Delay** (\*) 7. **Data volume** (per QCI, as specified in 3GPP TS 36.314 [9], clause 4.1.8) 8. **DL PDCP occupied buffer size** (\*) 9. **DL unused PDCP buffer size** (\*) 10. **Packet Loss Rate per DRB** (as specified in 3GPP TS 38.314 [16], clause 4.2.1.5) and per logical channel (\*) |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Measurement Type** | | **Measurement Examples** |
| Cell-level | L2 | 1. **CQI** (available at DU; as specified in 3GPP TS 28.552 [6], clause 5.1.1.11.1) 2. **MCS Distribution in PDSCH** (available at DU; as specified in 3GPP TS 28.552 [6], clause 5.1.1.12.1) 3. **DL/UL Total PRB usage** (available at DU; as specified in 3GPP TS 28.552 [6], clauses 5.1.1.2.1 and 5.1.1.2.2 and in 3GPP TS 32.425 [7], clauses 4.5.3   and 4.5.4)   1. **Distribution of DL/UL Total PRB usage** (available at DU; as specified in 3GPP TS 28.552 [6], clauses 5.1.1.2.3 and 5.1.1.2.4 and in 3GPP TS 32.425   [7], clauses 4.5.10 and 4.5.11)   1. **DL/UL PRB used for data traffic** (available at DU; optionally split into subcounters per QoS level (mapped 5QI or QCI in NR option 3) and subcounters per supported S-NSSAI, as specified in 3GPP TS 28.552 [6], clauses 5.1.1.2.5 and 5.1.1.2.7) 2. **DL/UL PRB usage for traffic** (per QCI, as specified in 3GPP TS 32.425 [7], clauses 4.5.1 and 4.5.2) 3. **DL/UL Total available PRB** (available at DU; as specified in 3GPP TS 28.552 [6], clauses 5.1.1.2.6 and 5.1.1.2.8) 4. **DL/UL PRB full utilization** (as specified in 3GPP TS 32.425 [7], clauses 4.5.9.1 and 4.5.9.2) 5. **Total number of DL/UL TBs** (available at DU; split into subcounters per layer at MU-MIMO case, as specified in 3GPP TS 28.552 [6], clauses 5.1.1.7.3 and 5.1.1.7.8 and in 3GPP TS 32.425 [7], clauses 4.5.7.1 and 4.5.7.3) 6. **Total error number of DL/UL TBs** (available at DU; split into subcounters per layer at MU-MIMO case, as specified in 3GPP TS 28.552 [6], clauses   5.1.1.7.4 and 5.1.1.7.9 and in 3GPP TS 32.425 [7], clauses 4.5.7.2 and 4.5.7.4)   1. **Average DL UE throughput in gNB** (available at DU; optionally split into subcounters per QoS level (mapped 5QI or QCI in NR option 3) and subcounters per supported S-NSSAI, as specified in 3GPP TS 28.552 [6], clause 5.1.1.3.1) 2. **Distribution of DL UE throughput in gNB** (available at DU; optionally split into subcounters per QoS level (mapped 5QI or QCI in NR option 3) and subcounters per supported S-NSSAI, as specified in 3GPP TS 28.552 [6], clause 5.1.1.3.2) 3. **Percentage of unrestricted DL UE data volume in gNB** (available at DU; optionally split into subcounters per QoS level (mapped 5QI or QCI in NR option 3) and subcounters per supported S-NSSAI, as specified in 3GPP TS   28.552 [6], clause 5.1.1.3.5)   1. **Packet Delay** (available at DU and CU-UP; optionally split into subcounters per QoS level (mapped 5QI or QCI in NR option 3) and subcounters per supported S-NSSAI, as specified in 3GPP TS 28.552 [6], clause 5.1.3.3) 2. **RAN part packet delay components** (as specified in 3GPP TS 38.314 [16], clause 4.2.1.2) 3. **Packet Delay** (per QCI, as specified in 3GPP TS 36.314 [9], clause 4.1.4) 4. **DL/UL Cell PDCP SDU Data Volume** (available at CU-UP; per PLMN ID and per QoS level (mapped 5QI) and per S-NSSAI, as specified in 3GPP TS   28.552 [6], clause 5.1.2.1 for non-split gNB, clause 5.1.3.6.2 for split gNB; per PLMN ID and per E-RAB QoS profile (QCI, ARP and GBR), as specified in 3GPP TS 32.425 [7], clause 4.4.7)  **18. Mean number of Active UEs in the DL/UL per cell** (available at DU; optionally split into subcounters per QoS level (mapped 5QI or QCI in NR option 3) and subcounters per supported S-NSSAI, as specified in 3GPP TS  28.552 [6], clauses 5.1.1.23.1 and 5.1.1.23.3)  **19. Max number of Active UEs in the DL/UL per cell** (available at DU; optionally split into subcounters per QoS level (mapped 5QI or QCI in NR option 3) and subcounters per supported S-NSSAI, as specified in 3GPP TS  28.552 [6], clauses 5.1.1.23.2 and 5.1.1.23.4)   1. **Average number of Active UEs** (per QCI, as specified in 3GPP TS 32.425 [7], clause 4.4.2) 2. **Packet Loss Rate** (available at CU-UP or DU; optionally split into   subcounters per QoS level (mapped 5QI or QCI in NR option 3) and |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Measurement Type** | | **Measurement Examples** |
|  |  | subcounters per supported S-NSSAI, as specified in 3GPP TS 28.552 [6], clause 5.1.3.1)   1. **Packet Loss Rate** (per QCI, as specified in 3GPP TS 32.425 [7], clause 4.4.4) 2. **DL Packet Drop Rate** (available at CU-UP or DU; optionally split into subcounters per QoS level (mapped 5QI or QCI in NR option 3) and subcounters per supported S-NSSAI, as specified in 3GPP TS 28.552 [6], clause 5.1.3.2) 3. **DL Packet Drop Rate** (per QCI, as specified in 3GPP TS 32.425 [7], clause 4.4.3.2) |
| NOTE 1: Include periodical measurement report and/or RRC event trigger measurement report (A1-A6, B1-B2) (as specified in 3GPP TS 38.331 [18] and 3GPP TS 36.331 [12]).  NOTE 2: Include periodical measurement report and/or RRC event trigger measurement report (A1-A6, B1-B2) (as  specified in 3GPP TS 38.331 [18] and 3GPP TS 36.331 [11]). | | |

</div>

(\*) Detailed measurement definition will be provided in E2SM specifications.

## RAN slice SLA assurance

The 3GPP standards architected a sliceable 5G infrastructure which allows creation and management of customized networks to meet specific service requirements that can be demanded by future applications, services and business verticals. Such a flexible architecture needs different requirements to be specified in terms of functionality, performance and group of users which can greatly vary from one service to the other. The 5G standardization efforts have gone into defining specific slices and their Service Level Agreements (SLAs) based on application/service type as specified in 3GPP TS 22.261 [1]. Since network slicing is conceived to be an end-to-end feature that includes the core network, the transport network and the radio access network (RAN), these requirements should be met at any slice subnet during the life-time of a network slice as specified in 3GPP TS 28.530 [4], especially in RAN side. Exemplary slice performance requirements are specified in terms of throughput, energy efficiency, latency and reliability at a high level in SDOs such as 3GPP TS 22.261 [1] and GSMA [22]. These requirements are defined as a reference for SLA/contractual agreements for each slice, which individually need proper handling in NG-RAN.

Although network slicing support is started to be defined with 3GPP Release 15, slice assurance mechanisms in RAN needs to be further addressed to achieve deployable network slicing in an open RAN environment. It is necessary to assure the SLAs by dynamically controlling slice configurations based on slice specific performance information. Existing RAN performance measurements as specified in 3GPP TS 28.552 [6] and information model definitions as specified in 3GPP TS 28.541 [5] are not enough to support RAN slice SLA assurance use cases. This use case is intended to clarify necessary mechanisms and parameters for RAN slice SLA assurance.

In the context of the RAN, the SLA assurance parameters sent over the A1 interface help the Near-RT RIC guide the behavior of the E2 nodes (O-CU-UP, O-CU-CP, O-DU). The Non-RT RIC utilizes the slice SLA information and performance metrics to derive the necessary set of A1 policies and sends those to the Near-RT RICs related to a network slice. Each subtending Near- RT RICs uses these A1 policies for further cell-level and/or UE-level policy guidance and/or control action over the E2 interface that affects the cells and/or UEs, involved in the network slice, served by the respective E2 nodes. The combined guidance is handled as one or more A1 policies and/or E2 policies and/or E2 control actions. The intention of the SLA assurance parameters in the RAN context is to provide guidance to the E2 nodes for assuring SLAs of the network slices in the radio access network.

### Background and goal of the use case

In the 5G era, network slicing is a prominent feature which provides end-to-end connectivity and data processing tailored to specific business requirements. These requirements include customizable network capabilities such as the support of very high data rates, traffic densities, service availability and very low latency. According to 5G standardization efforts, the 5G system can support the needs of the business through the specification of several service needs such as data rate, traffic capacity, user density, latency, reliability, and availability. These capabilities are always provided based on a Service Level Agreement (SLA) between the mobile operator and the business customer, which brought up interest for mechanisms to ensure slice SLAs and prevent its

possible violations. O-RAN's open interfaces and AI/ML based architecture will enable such challenging mechanisms to be implemented and help pave the way for operators to realize the opportunities of network slicing in an efficient manner.

###### 5G core and O-RAN cooperation for SLA enforcement

![Graphical user interface, text, application  Description automatically generated]({{site.baseurl}}/assets/images/e45760388369.png)

###### Figure 4.3.1-1: Core & RAN cooperation for SLA enforcement

The network functions and components that are related with SLA enforcement within 5G Core (5GC) and O-RAN are shown in figure 4.3.1-1. Although the 5GC enforces most of the SLA parameters, the components of the 5GC have a comprehensive view of the entire wireless network but from a core perspective. 3GPP Release 17 introduces the concept of a *Network Slice Admission Control Function* (NSACF). This debuted from the 3GPP TR 23.700-40 [i.3], and normative as specified in 3GPP TS 23.501 [31], clause 5.15.11. The purpose of the NSACF is to enforce some of the slice SLA parameters from a 5G core perspective. While NSACF handles slice-specific user admission control into the network as specified in GSMA NG.116 [22] GST criterion, the AMF allows the UE to access slice(s) through S-NSSAI or NSSAI requests through NSACF interaction. Together, they can perform network-level policy enforcement. However, these components do not have the detailed knowledge of RAN, such as RAN resources usage or where specific UEs are geographically located within a gNB. These 5GC components can perform only at a "network view" and they also do not have control over RAN resources.

O-RAN SLA assurance is independent of and complements 5GC SLA policy enforcement. Within the RAN, the Near-RT RIC provides unique SLA policy actions within the scope of E2 nodes based on the A1 policy guidance received from the Non-RT RIC.

###### Non-RT RIC & Near-RT RIC provide RAN guidance for SLA objectives

![Timeline  Description automatically generated]({{site.baseurl}}/assets/images/8aa500f41cea.png)

###### Figure 4.3.1-2: Non-RT RIC & Near-RT RIC RAN guidance

As shown in figure 4.3.1-2, the Non-Real Time RIC obtains the SLA parameters from SMO. The Non-RT RIC has a system level view of RAN topology, configuration and performance, so rApps can provide ongoing guidance and decompose SLA objects to the subtending Near-RT RICs. The Non-RT RIC then translates the SLA parameters into SLA objective A1 policies to its subtending Near-RT RIC(s). In some cases, the SLA parameters are already RAN or UE specific. Those SLA parameters would then not need any change in their values and would be "passed-through" to the Near-RT RIC(s) in A1 policies.

The Near-RT RICs obtain the SLA objectives via A1 policies from the Non-RT RIC. The Near-RT RIC can provide cell-level and/or UE-level guidance or control to the E2 nodes to achieve SLA assurance enforcement at the RAN level. The E2 nodes receive guidance or control from their respective Near-RT RICs. There are parameters as specified in GSMA GST/NEST NG.116 [22], such as the *Downlink and Uplink Throughput Per Network Slice,* that have both core and RAN applicability.

For example, the *Downlink and Uplink Throughput Per Network Slice* can be used by 5GC network functions; and the Non-RT RIC can calculate maxUlThptPerSlice and maxDlThptPerSlice parameters in an A1 policy which will then be used by the Near-RT RIC as target values via monitoring E2 node performance and, where required, requesting appropriate E2 services (CONTROL and/or POLICY) to provide guidance to the E2 nodes.

### Entities/resources involved in the use case

1. Non-RT RIC:
   1. Retrieve RAN slice SLA target from respective entities such as SMO, NSSMF.
   2. Long term monitoring of RAN slice performance measurements.
   3. Training of potential ML models that will be deployed in Non-RT RIC for slow loop optimization and/or Near-RT RIC for fast loop optimization.
   4. Support deployment and update of AI/ML models into Near-RT RIC.
   5. Receive slice control/slice SLA assurance rApps from SMO.
   6. Create and update A1 policies based on RAN intent and A1 feedback.
   7. Send A1 policies and enrichment information to Near-RT RIC to drive slice assurance.
   8. Send O1 reconfiguration requests to SMO for slow-loop slice assurance.
2. Near-RT RIC:
   1. Near-real-time monitoring of slice specific RAN performance measurements.
   2. Support deployment and execution of the AI/ML models from Non-RT RIC.
   3. Receive slice SLA assurance xApps from SMO.
   4. Support interpretation and execution of policies from Non-RT RIC.
   5. Perform optimized RAN (E2) actions to achieve RAN slice requirements based on O1 configuration, A1 policy, and E2 reports.
3. E2 node:
   1. Support slice assurance actions such as slice-aware resource allocation, prioritization, etc. through E2.
   2. Support slice specific performance measurements through O1.
   3. Support slice specific performance reports through E2.

### Solutions

#### RAN slice SLA assurance

The context of RAN slice SLA assurance is captured in table 4.3.3.1-1.

###### Table 4.3.3.1-1: RAN slice SLA assurance

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | RAN slice SLA assurance |  |
| Actors and Roles | SMO functions, Non-RT RIC framework, Near-RT RIC, E2 nodes |  |
| Assumptions | All relevant functions and components are instantiated.  A1, O1, E2 interface connectivity is established. |  |
| Pre-conditions | Near-RT RIC and Non-RT RIC are instantiated with A1 interface connectivity being established between them.  O1 interfaces are established between SMO and Near-RT RIC, and SMO and E2 nodes.  RAN slice SLA assurance applications have been deployed in Non-RT  RIC and Near-RT RIC respectively. |  |
| Begins when | A RAN slice is activated, or an operator defined trigger is detected. |  |
| Step 1 (M) | OAM functions may configure baseline slice SLA Assurance parameters in E2 node(s) through O1 interface.  OAM functions collects data from E2 node through O1 interface. |  |
| Step 2 (M) | RAN slice SLA assurance rApp retrieves relevant information from Non-RT RIC framework, such as active RAN slices (such as active S-NSSAIs, network slice subnet instances, topology), RAN slice SLA information, NF  configuration, etc. |  |
| Step 3 (M) | RAN slice SLA assurance rApp monitors and evaluates performance of  RAN slices which may include detection of possible RAN slice SLA violation. |  |
| Step 4 (M) | RAN slice SLA assurance rApp decides to apply A1 policy-based RAN slice SLA assurance considering RAN slice SLA requirements and/or operator- defined RAN intents, EI from external application servers and O1 based long term trends. In addition to these input parameters, A1 feedback from Near-  RT RIC, when available, can be utilized for updating existing policies. |  |
| Step 5 (M) | (Start of inner loop control)  Near-RT RIC subscribes to a UE context information and measurement metrics via E2 interface. |  |
| Step 6 (M) | E2 nodes report the UE context information and E2 measurements via RIC  REPORT periodically or event-triggered. |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Step 7 (M) | Near-RT RIC evaluates the performance data from E2 nodes (including performance data from different E2 nodes for the same UE) and finds the performance is out of slice SLA targets which are indicated in the A1 policy  and/or internal Near-RT RIC slice SLA targets. |  |
| Step 8 (M) | Based on the UE context information, E2 measurement metrics (RIC REPORT), and A1 policy, Near-RT RIC may generate new or modify the existing E2 policies and sends them to E2 nodes.  Near-RT RIC may also generate control command(s) and send them to E2 node(s) to trigger re-allocation of radio resources so that slice SLA  indicators can move back to the limits outlined in the A1 policies. |  |
| Step 9 (O) | Near-RT RIC may send A1 policy feedback on A1 to the Non-RT RIC. |  |
| Step 10 (O) | Non-RT RIC decides to delete slice SLA assurance policy and sends the related message or following internal trigger, the Near-RT RIC terminates  the slice SLA Assurance procedure. |  |
| Ends when | RAN slice(s) is deactivated or an operator defined trigger is detected. |  |
| Exceptions | None identified. |  |
| Post Conditions | SLA assurance for RAN slice(s) over a period of time is achieved. |  |
| Traceability |  |  |

</div>

@startuml

skinparam ParticipantPadding 4

skinparam BoxPadding 8

skinparam defaultFontSize 12

Box "Service Management and Orchestration" #gold Participant OF as "OAM Functions" Participant non as "Non-RT RIC"

End box

Box "O-RAN" #lightpink

Participant near as "Near-RT RIC" Participant ran as "E2 Node"

End box

group OUTER LOOP CONTROL

ran <-> OF : <<O1>> RAN data collection OF -> non : RAN Slice SLA assurance data

non -> non : Collected data evaluation and policy creation non -> near : <<A1>> SLA Assurance policy setup or update

group INNER LOOP CONTROL

near -> ran : <<E2>> RIC SUBSCRIPTION REQUEST (REPORT, UE context & Measurement metrics)

ran -> near : <<E2>> RIC INDICATION (UE context & Measurement metrics)

near -> near : Evaluation, possible SLA violation prevention near -> ran : (opt.) <<E2>> RIC SUBSCRIPTION REQUEST (POLICY)

near -> ran : (opt.) <<E2>> RIC CONTROL REQUEST (Slice SLA assurance RIC CONTROL) end

non <-- near: (opt.) <<A1>> A1 Policy feedback end

non --> near: (opt.) <<A1>> A1 policy delete near -> near: (opt.)Slice SLA Assurance stopped near-> ran: (opt.)<<E2>> RIC SUBSCRIPTION DELETE

@enduml

The flow diagram of the RAN slice SLA assurance is given in figure 4.3.3.1-1.

![Generated by PlantUML]({{site.baseurl}}/assets/images/d9e43e3211fa.png)

###### Figure 4.3.3.1-1: RAN slice SLA assurance

### Required data

This clause elaborates the Near-RT RIC and the E2 node capabilities necessary for implementation of the slice SLA assurance use case. The requirements are specified in clause 5.

#### Control over E2

1. **Radio resource allocation**, such as configuration of slice level PRB quota or per-cell-per-slice/QoS frequency partitions. For example, based on prediction, an E2 policy or control to reconfigure slice level PRB may be generated. Another example is, based on analysis of slice level interference among cells in terms of the reliability requirement, an E2 control to reconfigure frequency partitions may be generated.
   * Configuration and/or reconfiguration of slice level PRB quota (as specified in 3GPP TS 28.541 [4])
   * Configuration and/or reconfiguration of per-cell-per-slice/QoS frequency partitions Both RIC POLICY and RIC CONTROL can be used.
2. **Radio access control:** Depending on operator's policies, deployment scenarios, subscriber profiles, available services and SLA of slice, different criterion will be used in determining which access attempt should be allowed or blocked when

congestion occurs in the system, as specified in 3GPP TS 22.261 [1]. For example, access control may be applied to restrict access of other UEs for a specific slice in order to achieve better SLA for some slice. A UE-level, or slice-level access control can be applied. Three categories of radio access control are indicated as below:

* + RRC connection reject
  + RRC connection release
  + Access barring

#### UE context information from E2 nodes

The followings are examples of UE context information identified as required:

* UE ID
* Slice level: S-NSSAI
* QoS level: 5QI
* UE-level RAN state information
* UE-level PM data

For example, UE ID, S-NSSAI and 5QI can be used to derive the resource occupation of each slice.

#### Measurements from E2 nodes

The E2 measurements are necessary for inference and prediction in the Near-RT RIC as the driver for decisions in addition to KPMs. For the slice SLA assurance use case, the Near-RT RIC can translate an A1 policy (relatively static targets) into a flexible selection of controls over E2 (e.g., PRB control, access control) by taking into account the runtime status in the Near-RT RIC. Therefore, it is required to specify those measurement parameters as possible as needed over E2 interface.

The examples of cell-level, UE-level, and slice-level measurement information identified as required are listed in table 4.3.4.3- 1 below.

###### Table 4.3.4.3-1: Measurements from E2 nodes

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Measurement Type** | | **Measurement Examples** |
| Cell-level | L2 | 1. **DL/UL Total PRB usage** (available at DU; as specified in 3GPP TS 28.552 [6], clauses 5.1.1.2.1 and 5.1.1.2.2 and in 3GPP TS 32.425 [7], clauses 4.5.3   and 4.5.4)   1. **Distribution of DL/UL Total PRB usage** (available at DU; as specified in 3GPP TS 28.552 [6], clauses 5.1.1.2.3 and 5.1.1.2.4 and in 3GPP TS 32.425   [7], clauses 4.5.10 and 4.5.11)   1. **DL/UL PRB used for data traffic** (available at DU; optionally split into subcounters per QoS level (mapped 5QI or QCI in NR option 3) and subcounters per supported S-NSSAI, as specified in 3GPP TS 28.552 [6], clauses 5.1.1.2.5 and 5.1.1.2.7) 2. **DL/UL Total available PRB** (available at DU; as specified in 3GPP TS 28.552 [6], clauses 5.1.1.2.6 and 5.1.1.2.8) 3. **Average DL UE throughput in gNB** (available at DU; optionally split into subcounters per QoS level (mapped 5QI or QCI in NR option 3) and subcounters per supported S-NSSAI, as specified in 3GPP TS 28.552 [6], clause 5.1.1.3.1) 4. **Distribution of DL UE throughput in gNB** (available at DU; optionally split into subcounters per QoS level (mapped 5QI or QCI in NR option 3) and subcounters per supported S-NSSAI, as specified in 3GPP TS 28.552 [6], clause 5.1.1.3.2) 5. **Packet Delay** (available at DU and CU-UP; optionally split into subcounters per QoS level (mapped 5QI or QCI in NR option 3) and subcounters per supported S-NSSAI, as specified in 3GPP TS 28.552 [6], clause 5.1.3.3) |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Measurement Type** | | **Measurement Examples** |
|  |  | **8. DL/UL Cell PDCP SDU Data Volume** (available at CU-UP; per PLMN ID and per QoS level (mapped 5QI) and per S-NSSAI, as specified in 3GPP TS  28.552 [6], clause 5.1.2.1 for non-split gNB, clause 5.1.3.6.2 for split gNB; per PLMN ID and per E-RAB QoS profile (QCI, ARP and GBR), as specified in 3GPP TS 32.425 [7], clause 4.4.7)  **9. Mean number of Active UEs in the DL/UL per cell** (available at DU; optionally split into subcounters per QoS level (mapped 5QI or QCI in NR option 3) and subcounters per supported S-NSSAI, as specified in 3GPP TS  28.552 [6], clauses 5.1.1.23.1 and 5.1.1.23.3)  **10. Max number of Active UEs in the DL/UL per cell** (available at DU; optionally split into subcounters per QoS level (mapped 5QI or QCI in NR option 3) and subcounters per supported S-NSSAI, as specified in 3GPP TS  28.552 [6], clauses 5.1.1.23.2 and 5.1.1.23.4)   1. **Average number of Active UEs** (per QCI, as specified in 3GPP TS 32.425 [7], clause 4.4.2) 2. **Packet Loss Rate** (available at CU-UP or DU; optionally split into subcounters per QoS level (mapped 5QI or QCI in NR option 3) and subcounters per supported S-NSSAI, as specified in 3GPP TS 28.552 [6], clause 5.1.3.1) 3. **Packet Loss Rate** (per QCI, as specified in 3GPP TS 32.425 [7], clause 4.4.4) 4. **DL Packet Drop Rate** (available at CU-UP or DU; optionally split into subcounters per QoS level (mapped 5QI or QCI in NR option 3) and subcounters per supported S-NSSAI, as specified in 3GPP TS 28.552 [6], clause 5.1.3.2) 5. **DL Packet Drop Rate** (per QCI, as specified in 3GPP TS 32.425 [7], clause 4.4.3.2) 6. **Wideband CQI distribution** (as specified in 3GPP TS 28.552 [6], clause 5.1.1.11.1) 7. **SS-RSRP distribution per SSB for serving cell** (as specified in 3GPP TS 28.552 [6], clause 5.1.1.22.1) 8. **SS-RSRP distribution per SSB for neighbor cell** (as specified in 3GPP TS 28.552 [6], clause 5.1.1.22.1) |
| Slice-level | L2 | 1. **DL/UL PRB used for data traffic** (as specified in 3GPP TS 28.552 [6], clauses 5.1.1.2.5 and 5.1.1.2.7) 2. **Average DL UE throughput in gNB** (as specified in 3GPP TS 28.552 [6], clause 5.1.1.3.1) 3. **Distribution of DL UE throughput in gNB** (as specified in 3GPP TS 28.552 [6], clause 5.1.1.3.2) 4. **Packet Delay** (as specified in 3GPP TS 28.552 [6], clause 5.1.3.3) 5. **DL/UL Cell PDCP SDU Data Volume** (as specified in 3GPP TS 32.425 [7], clause 4.4.7) 6. **Mean number of Active UEs in the DL/UL per cell** (as specified in 3GPP TS 28.552 [6], clauses 5.1.1.23.1 and 5.1.1.23.3) 7. **Max number of Active UEs in the DL/UL per cell** (as specified in 3GPP TS 28.552 [6], clauses 5.1.1.23.2 and 5.1.1.23.4) 8. **Packet Loss Rate** (as specified in 3GPP TS 28.552 [6], clause 5.1.3.1) 9. **DL Packet Drop Rate** (as specified in 3GPP TS 28.552 [6], clause 5.1.3.2) |
| UE-level | L2 | 1. **DL/UL PRB used for data traffic** (as specified in 3GPP O-RAN WG3 E2SM-KPM [36]) 2. **Average DL UE throughput in gNB** (as specified in 3GPP O-RAN WG3 E2SM-KPM [36]) 3. **Distribution of DL UE throughput in gNB** (as specified in 3GPP O-RAN WG3 E2SM-KPM [36]) 4. **Packet Delay** (as specified in 3GPP O-RAN WG3 E2SM-KPM [36]) 5. **DL/UL Cell PDCP SDU Data Volume** (as specified in 3GPP O-RAN WG3 E2SM-KPM [36]) |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Measurement Type** | | **Measurement Examples** |
|  |  | 1. **Mean number of Active UEs in the DL/UL per cell** (as specified in 3GPP O-RAN WG3 E2SM-KPM [36]) 2. **Max number of Active UEs in the DL/UL per cell** (as specified in 3GPP O- RAN WG3 E2SM-KPM [36]) 3. **Packet Loss Rate** (as specified in 3GPP O-RAN WG3 E2SM-KPM [36]) 4. **DL Packet Drop Rate** (as specified in 3GPP O-RAN WG3 E2SM-KPM [36]) 5. **DRB-specific RLC buffer occupancy** (as specified in 3GPP O-RAN WG3 E2SM-RC [37]) 6. **Serving cell and neighbor cell RRC measurements** (as specified in 3GPP O-RAN WG3 E2SM-RC [37]) 7. **Number of DRBs and PDU sessions** (as specified in 3GPP O-RAN WG3 E2SM-RC [37]) 8. **Number of QoS flows and QoS parameters of QoS flows mapped to each DRB** (as specified in 3GPP O-RAN WG3 E2SM-RC [37]) 9. **Number of HARQ TBs with specific MCS rates** (as specified in 3GPP O- RAN WG3 E2SM-KPM [36]) 10. **CQI** (as specified in 3GPP O-RAN WG3 E2SM-KPM [36]) 11. **Serving cell and neighbor cell RSRP** (as specified in 3GPP O-RAN WG3 E2SM-KPM [36]) |

</div>

## Massive MIMO optimization

### Background and goal of the use case

Please refer to [i.2] and [32].

### Entities/resources involved in the use case

NOTE: The AI/ML model training, deployment, and inference described below cannot be applicable for some mMIMO optimization features.

1. SMO/Non-RT RIC:
   * Retrieve necessary performance indicators, measurement reports and RAN configurations from E2 nodes via the O1 interface for the purpose of AI/ML model training and performance monitoring.

- E.g., the number of supported Non-GoB BF modes in O-DU.

* + Collect enrichment information from application servers and associate enrichment information with collected measurements and configurations.
  + Perform AI/ML model training and deployment.
  + Perform AI/ML model performance monitoring and re-training.
  + Send enrichment information to the Near-RT RIC for inference via the A1 interface.

NOTE: The requirements of SMO/Non-RT RIC are under the scope of WG2.

1. Near-RT RIC:
   * Support AI/ML model deployment from the Non-RT RIC via the O1/O2 interface.
   * Subscribe and retrieve necessary performance and failure indicators, measurement reports, UE context information and RAN configurations from E2 nodes via the E2 interface for the purpose of mMIMO optimization.
   * Retrieve enrichment information from Non-RT RIC via the A1 interface, and associate enrichment information with collected measurements and configurations.
   * Perform AI/ML model training and inference.
   * Perform AI/ML model performance monitoring and re-training.
   * Send control or policy message for massive MIMO optimization to E2 nodes via the E2 interface.
2. E2 nodes:
   * Support reporting of necessary performance indicators, measurement reports, UE context information and RAN configurations with required granularity to SMO/Non-RT RIC via the O1 interface.
   * Support reporting of necessary performance and failure indicators, measurement reports, UE context information collection and RAN configurations with required granularity to Near-RT RIC via the E2 interface.
   * Execute control/policy message received from the Near-RT RIC via the E2 interface.

### Solutions

#### AI/ML-assisted Non-Grid-of-Beams beamforming optimization

##### Model training in Non-RT RIC

NOTE: The below table 4.4.3.1.1-1 and figure 4.4.3.1.1-1 are under the scope of WG2.

The context of AI/ML-assisted Non-GoB BF mode selection in Non-RT RIC - model training, deployment, and update is captured in table 4.4.3.1.1-1.

###### Table 4.4.3.1.1-1: AI/ML-assisted Non-GoB BF mode selection in Non-RT RIC - model training, deployment, and update

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | To train an AI/ML model to select the best Non-GoB BF modes given  wireless conditions and RAN configuration. |  |
| Actors and Roles | SMO, Non-RT RIC, Near-RT RIC, O-DU, Application server |  |
| Assumptions | * All relevant functions and components are instantiated. * O1 interface connectivity is established. |  |
| Pre-conditions | * O1 interface is established between SMO and O-DU to enable SMO/Non-RT RIC to obtain the number of supported Non-GoB BF modes and to collect performance measurement data and associated RAN configurations. * A1 interface is established between Non-RT RIC and Near-RT RIC to enable enrichment information transfer. * O-DU supports Non-GoB BF. |  |
| Begins when | Operator specified trigger condition or event is satisfied. |  |
| Step 1 (M) | SMO requests the number of supported Non-GoB BF modes in O-DU via  the O1 interface. |  |
| Step 2 (M) | SMO collects the number of supported Non-GoB BF modes in O-DU via  the O1 interface. |  |
| Step 3 (M) | Non-RT RIC retrieves collected information. |  |
| Step 4 (M) | For each Non-GoB BF mode, SMO requests performance measurement data and associated RAN configurations from O-DU for model training via  the O1 interface. |  |
| Step 5 (M) | SMO collects required performance measurement data and RAN  configurations from O-DU via the O1 interface. |  |
| Step 6 (M) | SMO collects enrichment information (e.g., UE mobility and location info.)  from application server. |  |
| Step 7 (M) | Non-RT RIC retrieves collected data and enrichment information. |  |
| Step 8 (M) | For each Non-GoB BF mode, Non-RT RIC associates received enrichment  information with measurement data and RAN configurations. |  |
| Step 9 (M) | Non-RT RIC performs model training. |  |
| Step 10 (M) | Non-RT RIC deploys trained model to the Near-RT RIC via O1 or O2  interface. |  |
| Step 11 (M) | For each Non-GoB BF mode, SMO requests performance measurement  data from O-DU for performance monitoring via the O1 interface. |  |
| Step 12 (M) | For each Non-GoB BF mode, SMO collects performance measurement  data from O-DU for performance monitoring via the O1 interface. |  |
| Step 13 (M) | SMO collects enrichment information (e.g., UE mobility and location info.)  from application server. |  |
| Step 14 (M) | Non-RT RIC retrieves collected performance monitoring data and  enrichment information. |  |
| Step 15 (M) | Non-RT RIC evaluates the performance of deployed AI/ML model. |  |
| Step 16 (M) | Non-RT RIC re-trains the model. |  |
| Step 17 (M) | Non-RT RIC updates model in the Near-RT RIC via O1 or O2 interface. |  |
| Ends when | Operator specified trigger condition or event is satisfied. |  |
| Exceptions | None identified. |  |
| Post Conditions | Near-RT RIC executes the deployed model for AI/ML-assisted Non-GoB  BF. |  |
| Traceability | REQ-Non-RT-RIC-FUN1, REQ-Non-RT-RIC-FUN4, REQ-Non-RT-RIC- FUN5, REQ-Non-RT-RIC-FUN9,  REQ-A1-FUN2, REQ-Near-RT-RIC-MM-FUN2 |  |

</div>

@startuml

skinparam ParticipantPadding 5

skinparam BoxPadding 10

skinparam defaultFontSize 12

autonumber

Box "Service Management and Orchestration" #gold Participant "Collection & Control" as smo Participant "Non-RT RIC" as non

End box

Box "O-RAN" #lightpink

Participant near as "Near-RT RIC" Participant ran as "O-DU"

End box

Box "External" #lightcyan

Participant "Application Server" as app

End box

group Data Collection

smo -> ran : <<O1>> Request the number of supported Non-GoB BF modes ran -> smo : <<O1>> Collect the number of supported Non-GoB BF modes smo -> non : Retrieve collected information

smo -> ran : <<O1>> Request measurement data and RAN configurations for each Non-GoB BF mode ran -> smo : <<O1>> Collect measurement data and RAN configurations for each Non-GoB BF mode app -> smo : Collect enrichment information (e.g., UE location/mobility, etc.)

smo -> non : Retrieve collected data end

group AI/ML workflow

non -> non : Associate enrichment information with 
 measurements and configurations non -> non : Train AI/ML models to select 
 the best Non-GoB mode

non -> near: <<O1>> or <<O2>> 
 Deploy AI/ML models end

group Performance evaluation and optimization

smo -> ran : <<O1>> Request measurement data and RAN configurations for each Non-GoB BF mode ran -> smo : <<O1>> Collect measurement data and RAN configurations for each Non-GoB BF mode app -> smo : Collect enrichment information (e.g., UE location/mobility, etc.)

smo -> non : Retrieve collected data

non -> non : Performance monitoring & evaluation non -> non : Re-train AI/ML models

non -> near: <<O1>> or <<O2>> 
 Update AI/ML models end

@enduml

The flow diagram of the AI/ML model training in Non-RT RIC, deployment, and performance monitoring is given in figure 4.4.3.1.1-1.

![Table  Description automatically generated]({{site.baseurl}}/assets/images/ea8a9d26dd77.png)

###### Figure 4.4.3.1.1-1: AI/ML model training in Non-RT RIC, deployment, and performance monitoring

##### Model training in Near-RT RIC

The context of AI/ML-assisted Non-GoB BF mode selection - model training in Near-RT RIC, deployment, and update is captured in table 4.4.3.1.2-1.

###### Table 4.4.3.1.2-1: AI/ML-assisted Non-GoB BF mode selection - model training in Near-RT RIC, deployment, and update

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | To train an AI/ML model to select the best Non-GoB BF modes given  wireless conditions and RAN configuration. |  |
| Actors and Roles | SMO, Non-RT RIC, Near-RT RIC, O-DU, Application server |  |
| Assumptions | - All relevant functions and components are instantiated. |  |
| Pre-conditions | * A1 interface is established between Non-RT RIC and Near-RT RIC to enable enrichment information transfer. * O-DU supports Non-GoB BF. * E2 interface is established between Near-RT RIC and O-DU. |  |
| Begins when | Operator specified trigger condition or event is satisfied. |  |
| Step 1 (M) | Near-RT RIC requests the number of supported Non-GoB BF modes in O-  DU via the E2 interface. |  |
| Step 2 (M) | Near-RT RIC collects the number of supported Non-GoB BF modes in O-  DU via the E2 interface. |  |
| Step 3 (M) | For each Non-GoB BF mode, Near-RT RIC requests performance measurement data and associated RAN configurations from O-DU for  model training via the E2 interface. |  |
| Step 4 (M) | Near-RT RIC collects required performance measurement data and RAN  configurations from O-DU via the E2 interface. |  |
| Step 5 (M) | Near-RT RIC collects enrichment information (e.g., UE mobility and  location info) from Non-RT RIC via the A1 interface. |  |
| Step 6 (M) | For each Non-GoB BF mode, Near-RT RIC associates received  enrichment information with measurement data and RAN configurations. |  |
| Step 7 (M) | Near-RT RIC performs model training. |  |
| Step 8 (M) | For each Non-GoB BF mode, Near-RT RIC requests performance measurement data from O-DU for performance monitoring/training  updates via the E2 interface. |  |
| Step 9 (M) | For each Non-GoB BF mode, Near-RT RIC collects performance measurement data from O-DU for performance monitoring/training  updates via the E2 interface. |  |
| Step 10 (M) | Near-RT RIC collects enrichment information (e.g., UE mobility and  location info) from Non-RT RIC via the A1 interface. |  |
| Step 11 (M) | Near-RT RIC evaluates the performance of deployed AI/ML model. |  |
| Step 12 (M) | Near-RT RIC re-trains the model. |  |
| Ends when | Operator specified trigger condition or event is satisfied. |  |
| Exceptions | None identified. |  |
| Post Conditions | Near-RT RIC executes the deployed model for AI/ML-assisted Non-GoB  BF. |  |
| Traceability | REQ-Non-RT-RIC-FUN9, REQ-A1-FUN3, REQ-Near-RT-RIC-MM-FUN1, REQ-Near-RT-RIC-MM-FUN3, REQ-E2-MM-FUN2, REQ-E2-MM-FUN3, REQ-E2-MM-FUN5, REQ-E2-MM-FUN6, REQ-E2-MM-FUN9, REQ-E2-  MM-FUN10 |  |

</div>

@startuml

skinparam ParticipantPadding 5

skinparam BoxPadding 10

skinparam defaultFontSize 12 autonumber

Box "Service Management and Orchestration" #gold Participant "Collection & Control" as smo Participant "Non-RT RIC" as non

End box

Box "O-RAN" #lightpink

Participant near as "Near-RT RIC" Participant ran as "O-DU"

End box

Box "External" #lightcyan

Participant "Application Server" as app

End box

group Data Collection

near -> ran : <<E2>> Request the number of supported Non-GoB BF modes ran -> near : <<E2>> Collect the number of supported Non-GoB BF modes

near -> ran : <<E2>> Request measurement data and RAN configurations for each Non-GoB BF mode

ran -> near : <<E2>> Collect measurement data and RAN configurations for each Non-GoB BF mode

non -> near : <<A1>> Collect enrichment information (e.g., UE location/mobility, etc.) end

group AI/ML workflow

near -> near: Associate enrichment information with 
 measurements and configurations near -> near: Train AI/ML models to select 
 the best Non-GoB mode

end

group Performance evaluation and optimization

near -> ran : <<E2>> Request measurement data and RAN configurations for each Non-GoB BF mode

ran -> near: <<E2>> Collect measurement data and RAN configurations for each Non-GoB BF mode non -> near : <<A1>> Collect enrichment information (e.g., UE location/mobility, etc.)

near -> near: Performance monitoring & evaluation near -> near: Re-train AI/ML models

end @enduml

The flow diagram of the AI/ML model training in Near-RT RIC, deployment, and performance monitoring is given in figure 4.4.3.1.2-1.

![Generated by PlantUML]({{site.baseurl}}/assets/images/df82c0126b13.jpg)

###### Figure 4.4.3.1.2-1: AI/ML model training in Near-RT RIC, deployment, and performance monitoring

##### Model inference

The context of AI/ML-assisted Non-GoB BF mode selection - model inference is captured in table 4.4.3.1.3-1.

###### Table 4.4.3.1.3-1: AI/ML-assisted Non-GoB BF mode selection - model inference

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | To generate Non-GoB control/policy message. |  |
| Actors and Roles | SMO, Non-RT RIC, Near-RT RIC, O-DU, Application server |  |
| Assumptions | * All relevant functions and components are instantiated. * A1 and E2 interface connectivity are established. |  |
| Pre-conditions | * A1 interface is established between Non-RT RIC and Near-RT RIC to enable enrichment information transfer. * E2 interface is established between Near-RT RIC and O-DU to enable Non-GoB BF mode selection via E2 control/policy message. * O-DU supports Non-GoB BF. |  |
| Begins when | Operator specified trigger condition or event is satisfied. |  |
| Step 1 (M) | SMO collects enrichment information (e.g., UE mobility/location info) from  application server. |  |
| Step 2 (M) | Non-RT RIC retrieves collected enrichment information. |  |
| Step 3 (M) | Non-RT RIC sends collected enrichment information to the Near-RT RIC  via the A1 interface. |  |
| Step 4 (M) | Near-RT RIC requests measurement data and UE context information  (e.g., SRS periodicity) from O-DU via the E2 interface. |  |
| Step 5 (M) | Near-RT RIC collects measurement data and UE context information (e.g.,  SRS periodicity) from O-DU via the E2 interface. |  |
| Step 6 (M) | Near-RT RIC associates received enrichment information with collected  measurement data and UE context information. |  |
| Step 7 (M) | Near-RT RIC performs model inference. |  |
| Step 8 (M) | Near-RT RIC generates Non-GoB control/policy message based on  inferred Non-GoB BF mode selection. |  |
| Step 9 (M) | Near-RT RIC sends Non-GoB control/policy message to O-DU via the E2  interface. |  |
| Ends when | Operator specified trigger condition or event is satisfied. |  |
| Exceptions | None identified. |  |
| Post Conditions | Non-RT RIC monitors the performance of AI/ML-assisted Non-GoB BF  mode selection in the Near-RT RIC. |  |
| Traceability | REQ-Non-RT-RIC-FUN9, REQ-A1-FUN3,  REQ-Near-RT-RIC-MM-FUN2, REQ-Near-RT-RIC-MM-FUN3, REQ-E2-MM-FUN2,  REQ-E2-MM-FUN3, REQ-E2-MM-FUN5,  REQ-E2-MM-FUN6 |  |

</div>

@startuml

skinparam ParticipantPadding 5

skinparam BoxPadding 10

skinparam defaultFontSize 12 autonumber

Box "Service Management and Orchestration" #gold Participant "Collection & Control" as smo Participant "Non-RT RIC" as non

End box

Box "O-RAN" #lightpink

Participant near as "Near-RT RIC" Participant ran as "O-DU"

End box

Box "External" #lightcyan

Participant "Application Server" as app

End box

app -> smo : Collect enrichment information (e.g., UE location/mobility, etc.) smo -> non : Retrieve collected data

non -> near : <<A1>> Enrichment information

group E2 control & Policy

near -> ran : <<E2>> Request measurement data 
 and UE context information (e.g., SRS periodicity)

ran -> near : <<E2>> Collect measurement data 
 and UE context information (e.g., SRS periodicity)

near -> near: Associate enrichment information with 
 collected measurements and configurations

near -> near : Perform AI/ML model inference

near -> near : Generate Non-GoB control/policy message near -> ran : <<E2>> Non-GoB control/policy message

end

@enduml

The flow diagram of the AI/ML inference is given in figure 4.4.3.1.3-1.

![Generated by PlantUML]({{site.baseurl}}/assets/images/a211fb2ac683.png)

###### Figure 4.4.3.1.3-1: AI/ML Inference

#### Beam-based Mobility Robustness Optimization (bMRO)

Beam-based Mobility Robustness Optimization (bMRO) is an autonomous self-optimizing algorithm that improves beam-based inter-cell mobility performance by applying beam-specific HO parameters including Cell Individual Offsets (CIO), Time to Trigger (TTT), T310 counter, etc. on the handover configuration between neighbor cells, based on the analysis of beam-specific mobility-related counters and/or mobility failure events. bMRO is capable to reduce the number of unnecessary handovers, handover failures as well as ping-pong handovers particularly in cells that cover areas with different mobility characteristics.

Performance, complexity and gain analysis has been provided in O-RAN.WG1.mMIMO-Use-Cases-TR-v01.00 [i.2], clause 3.3. Signaling overhead and complexity (RRC re-configuration, mobility reporting and O-CU reconfiguration messages) can be further reduced by beam grouping in which case beams with similar mobility characteristics comprise a beam group (e.g., group 1: low mobility pedestrian area, group 2: high mobility street). Mobility reports consist of aggregated mobility KPI/PMs (e.g., number of too early HOs, number of too late HOs, number of HO to wrong cell) or individual failure reports with root cause (e.g., to early HO, too late HO, HO to wrong cell) or a combination of the two. Reports are sent per each SSB beam or SSB beam group towards each neighbor cell. Individual mobility failure reports will also be reported per UE to allow UE or UE group- based optimization (besides beam or beam group specific reporting). While aggregated mobility KPIs/PMs are used for slow adaptations (e.g., 5 min), individual failure reports are used for faster adaptations (e.g., 100 ms) or for AI/ML based analysis of failure patterns. Measurement reporting periodicity and measurement type are configurable on a per cell basis considering the tradeoff between gain in mobility performance and associated signaling overhead. Mobility KPIs and failure events are forwarded from the O-CU to the Near-RT RIC, and the Near-RT RIC configures the CIO and the measurement reporting in the O-CUs. CIOs might be beam- or beam group-based and can also be configurable per UE group (e.g., UE type, UE mobility or UE mode such as energy saving mode).

While AI/ML based approaches are not mandated, AI/ML methods/models can be used i) to build beam groups, to ii) decide on cell individual measurement configuration, to iii) detect changes in mobility characteristics (e.g., traffic jam) that trigger optimization, to iv) group UEs in UE groups as well as v) for the bMRO optimization algorithm itself to calculate the optimal cell individual offsets. In case of dynamic beam pattern optimization, relevant mMIMO beam pattern information shall be available at the Near-RT RIC, e.g., mobility reports might indicate a specific beam pattern.

The context of Near-RT RIC beam-based mobility robustness optimization - model training and beam grouping is captured in table 4.4.3.2-1.

###### Table 4.4.3.2-1: Near-RT RIC beam-based mobility robustness optimization - model training and beam grouping

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | To obtain beam pattern optimization in case of Grid-of-Beam optimization,  to train the ML models and to decide on the beam grouping. |  |
| Actors and Roles | SMO, Near-RT RIC, E2 node (O-CU) |  |
| Assumptions | * All relevant functions and components are instantiated. * O1 and E2 interface connectivity are established. |  |
| Pre-conditions | * Network is operational with default configuration. * (optional) OAM functions have configured bMRO targets in Near-RT RIC through O1 interface. * OAM functions have configured baseline mobility parameters in O-CUs through O1 interface. * O-CUs support reporting of beam-based mobility performance and/or instantaneous mobility failure event reporting. * Near-RT RIC has access to the beam-based mobility performance and/or failure reporting from the E2 node. |  |
| Begins when | Operator specified trigger condition or event is satisfied. |  |
| Step 1 (M) | OAM provides ML model to the Near-RT RIC via O1 or O2 interface (e.g., to perform beam grouping, to identify a change in mobility characteristics, to derive optimized mobility reporting configuration and/or to calculate the  optimized mobility settings). |  |
| Step 2 (M) | Near-RT RIC subscribes to cell change configuration reports from E2 node  (O-CU) to obtain mMIMO beam pattern information. |  |
| Step 3 (M) | Near-RT RIC obtains cell change configuration reports from E2 node (O-  CU) including mMIMO beam pattern information. |  |
| Step 4 (M) | Near-RT RIC subscribes to beam based mobility performance and failure  reporting via E2 interface. |  |
| Step 5 (M) | Near-RT RIC obtains to beam based mobility performance and failure  reporting via E2 interface. |  |
| Step 6 (M) | Near-RT RIC performs model training. |  |
| Step 7 (M) | Near-RT RIC obtains to beam based mobility performance and failure  reporting via E2 interface. |  |
| Step 8 (M) | Near-RT RIC performs AI/ML based beam grouping algorithm to group beams with similar mobility characteristics based on received mobility  reports. |  |
| Step 9 (M) | Near-RT RIC generates beam grouping policy message and send policy  message to O-CUs via E2 interfaces. |  |
| Exceptions | None identified. |  |
| Post Conditions | None identified. |  |
| Traceability | REQ-Near-RT-RIC-TS-FUN1, REQ-Near-RT-RIC-TS-FUN2, REQ-E2-MM-FUN1,  REQ-E2-MM-FUN4, REQ-E2-MM-FUN5, REQ-E2-MM-FUN7,  REQ-E2-MM-FUN8 |  |

</div>

@startuml

skinparam ParticipantPadding 5

skinparam BoxPadding 10

skinparam defaultFontSize 12 Autonumber

Box "SMO" #gold

Participant SMO as "Operator/SMO" Participant NON as "Non-RT RIC"

end box

Box "O-RAN" #lightpink

Participant NearRTRIC as "Near-RT RIC"

Participant ORANnodes as "E2 Nodes"

End box

group AI/ML Model Training

SMO -> NearRTRIC: <<O1>> Initialize/Provide ML Model

NearRTRIC -> ORANnodes: <<E2>> RIC SUBSCRIPTION REQUEST (cell configuration report) ORANnodes -> NearRTRIC: <<E2>> RIC INDICATION (cell configuration)

Hnote over NearRTRIC

mMIMO Beam Pattern Information is available Endhnote

NearRTRIC -> ORANnodes: <<E2>> RIC SUBSCRIPTION REQUEST (mobility reports) ORANnodes -> NearRTRIC: <<E2>> RIC INDICATION (mobility reports)

NearRTRIC -> NearRTRIC: AI/ML model training

end

group Beam grouping

ORANnodes -> NearRTRIC: <<E2>> RIC INDICATION (mobility reports) NearRTRIC -> NearRTRIC: AI/ML model inference(beam grouping)

NearRTRIC -> ORANnodes: <<E2>> RIC SUBSCRIPTION REQUEST (beam grouping policy)

end

@enduml

The flow diagram of the procedure for Near-RT RIC beam-based mobility robustness optimization - model training and initial beam grouping is given in figure 4.4.3.2-1.

![Generated by PlantUML]({{site.baseurl}}/assets/images/aa9a8722f05d.png)

###### Figure 4.4.3.2-1: Procedure for Near RT RIC beam-based mobility robustness optimization - model training and initial beam grouping

The context of Near-RT RIC beam-based mobility robustness optimization - model inference and mobility optimization is captured in table 4.4.3.2-2.

###### Table 4.4.3.2-2: Near-RT RIC beam-based mobility robustness optimization - model inference and mobility optimization

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related use** |
| Goal | Based on evaluation of mobility performance and failure reporting, identify changes in mobility characteristics and derive optimized mobility settings such as CIO, TTT, T310, etc. to optimize beam-based mobility  performance between neighbor cells. |  |
| Actors and Roles | SMO, Near-RT RIC, E2 node (O-CU) |  |
| Assumptions | * All relevant functions and components are instantiated. * O1 and E2 interface connectivity are established. * ML models are trained, and beam groups are defined. |  |
| Pre-conditions | * Network is operational with default configuration. * (optional) OAM functions have configured bMRO targets in Near-RT RIC through O1 interface. * OAM functions have configured baseline mobility parameters in O-CUs through O1 interface. * Near-RT RIC has up-to-date beam pattern information. * O-CUs support reporting of beam-based mobility performance and/or instantaneous mobility failure event reporting. * Near-RT RIC has access to the beam-based mobility performance and/or failure reporting from the E2 node. |  |
| Begins when | Operator specified trigger condition or event is satisfied. |  |
| Step 1 (M) | Near-RT RIC subscribes to beam- or beam-group based mobility  performance and/or failure reporting via E2 interface for mobility optimization. |  |
| Step 2 (M) | Near-RT RIC subscribes to cell configuration reports via E2 interface to get informed about mMIMO beam pattern changes. |  |
| Step 3,4,5,6,7 (M) | SMO may trigger mobility optimization by configuration of a new GoB beam pattern in the E2 node (O-CU). Near-RT RIC obtains the cell configuration from E2 node via E2 interface and detects a mMIMO beam pattern change. Based on obtained mobility reports from E2 nodes, AI/ML model inference in the Near-RT RIC derives an updated beam grouping. Near-RT RIC requests to apply an updated beam grouping policy at E2  node (O-CU). |  |
| Step 8 (M) | Alternatively, OAM may trigger mobility optimization by operator specified trigger or a new optimization target. |  |
| Step 9 (M) | Near-RT RIC obtains to beam- or beam-group based mobility performance and failure reporting via E2 interface for mobility optimization. |  |
| Step 10 (M) | Near-RT RIC performs AI/ML based mobility report analysis to detect a change in mobility characteristics and to trigger reconfiguration of mobility reporting and mobility parameter settings. |  |
| Step 11 (M) | Near-RT RIC subscribes to updated beam- or beam-group based mobility performance and failure reporting via E2 interface. |  |
| Step 12 (M) | Near-RT RIC obtains to beam-or beam-group based mobility performance and failure reporting via E2 interface. |  |
| Step 13 (M) | Near-RT RIC performs mobility robustness optimization to update mobility parameter settings. |  |
| Step 14 (M) | Near-RT RIC requests to apply an updated beam- or beam-group based  mobility parameter policy (e.g., CIO, TTT, T310, etc.) at E2 node (O-CU). |  |
| Ends when | Operator specified trigger condition or event is satisfied. |  |
| Exceptions | None identified. |  |
| Post Conditions | Near-RT RIC monitors the performance of mobility robustness optimization in the Near-RT RIC and initiates ML model retraining if required. |  |
| Traceability | REQ-Near-RT-RIC-TS-FUN1, REQ-Near-RT-RIC-TS-FUN2, REQ-Near-RT-RIC-TS-FUN3, REQ-E2-MM-FUN1,  REQ-E2-MM-FUN4, REQ-E2-MM-FUN5,  REQ-E2-MM-FUN7, REQ-E2-MM-FUN8 |  |

</div>

@startuml

skinparam ParticipantPadding 5

skinparam BoxPadding 10

skinparam defaultFontSize 12 Autonumber

Box "SMO" #gold

Participant SMO as "Operator/SMO" Participant NON as "Non-RT RIC"

end box

Box "O-RAN" #lightpink

Participant NearRTRIC as "Near-RT RIC"

Participant ORANnodes as "E2 Nodes"

End box

group OUTER LOOP CONTROL

NearRTRIC -> ORANnodes: <<E2>> RIC SUBSCRIPTION REQUEST (mobility reports) NearRTRIC -> ORANnodes: <<E2>> RIC SUBSCRIPTION REQUEST (cell configuration report)

group alt 1

SMO -> ORANnodes: <<O1>> Optimization Trigger:
New GoB configuration ORANnodes -> NearRTRIC: <<E2>> RIC INDICATION (cell configuration)

Hnote over NearRTRIC

mMIMO Beam Pattern Change Endhnote

ORANnodes -> NearRTRIC: <<E2>> RIC INDICATION (mobility reports) NearRTRIC -> NearRTRIC: AI/ML model inference (beam grouping)

NearRTRIC -> ORANnodes: <<E2>> RIC SUBSCRIPTION REQUEST (beam grouping policy)

end

group alt 2

SMO -> NearRTRIC: <<O1>> Optimization Trigger:
New optimization target

end

group INNER LOOP CONTROL

ORANnodes -> NearRTRIC: <<E2>> RIC INDICATION (mobility reports) NearRTRIC -> NearRTRIC: AI/ML model inference (optimization trigger) Hnote over NearRTRIC

Change in mobility characteristics Endhnote

NearRTRIC -> ORANnodes: <<E2>> RIC SUBSCRIPTION REQUEST (mobility reports) ORANnodes -> NearRTRIC: <<E2>> RIC INDICATION (mobility reports) NearRTRIC -> NearRTRIC: Mobility Robustness Optimization

Hnote over NearRTRIC

Update mobility parameters Endhnote

NearRTRIC -> ORANnodes: <<E2>> RIC SUBSCRIPTION REQUEST (mobility parameter policy)

end

end

group Performance Monitoring

NearRTRIC -> ORANnodes: <<E2>> RIC SUBSCRIPTION REQUEST (mobility reports) ORANnodes -> NearRTRIC: <<E2>> RIC INDICATION (mobility reports) NearRTRIC -> NearRTRIC: Performance monitoring and evaluation

NearRTRIC -> NearRTRIC: Model retraining and update

end

@enduml

The flow diagram of the procedure for Near-RT RIC beam-based mobility robustness optimization - optimization trigger, model inference and mobility optimization is given in figure 4.4.3.2-2.

![Generated by PlantUML]({{site.baseurl}}/assets/images/1468423e8f4e.png)

###### Figure 4.4.3.2-2: Procedure for Near-RT RIC beam-based mobility robustness optimization - optimization trigger, model inference and mobility optimization

#### MU-MIMO optimization

The context of MU-MIMO optimization is captured in table 4.4.3.3-1.

###### Table 4.4.3.3-1: MU-MIMO optimization

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | MU-MIMO optimization using Near-RT RIC control loop. |  |
| Actors and Roles | Near-RT RIC: Configures E2 nodes' measurements, collects data from E2 nodes, performs MU-MIMO optimization function, and sends MIMO information to E2 nodes.  E2 nodes: Report measurements to Near-RT RIC and execute received  MU-MIMO information. |  |
| Assumptions | E2 connectivity is established between Near-RT RIC and E2 nodes.  Network is operational. |  |
| Pre-conditions | All relevant functions and components are instantiated. MU-MIMO optimization xApp is deployed with initial configuration.  All relevant subscriptions established on E2 interface. |  |
| Begins when | Operator specified trigger condition or event is satisfied. |  |
| Step 1 (M) | Near-RT RIC requests cell and UE capabilities and configuration  information from E2 node (O-CU). |  |
| Step 2 (M) | Near-RT RIC obtains cell and UE capabilities and configuration  information from E2 node (O-CU). |  |
| Step 3 (M) | Near-RT RIC requests UE connections and RRC states information from  E2 node (O-CU). |  |
| Step 4 (M) | Near-RT RIC obtains UE connections and RRC states information from  E2 node (O-CU). |  |
| Step 5 (M) | Near-RT RIC requests reference signals and resource allocation  information from E2 node (O-DU). |  |
| Step 6 (M) | Near-RT RIC obtains reference signals and resource allocation  information from E2 node (O-DU). |  |
| Step 7 (M) | Near-RT RIC requests channel measurement and reporting  configuration information from E2 node (O-DU). |  |
| Step 8 (M) | Near-RT RIC obtains channel measurement and reporting configuration  information from E2 node (O-DU). |  |
| Step 9 (O) | Near-RT RIC may configure reference signals. |  |
| Step 10 (O) | Near-RT RIC may configure channel measurement and reporting. |  |
| Step 11 (M) | Near-RT RIC requests served radio bearers configuration information  from E2 node (O-CU). |  |
| Step 12 (M) | Near-RT RIC requests traffic and channel information from E2 nodes  (O-CU, O-DU). |  |
| Step 13 (M) | (Start of outer loop control)  Near-RT RIC obtains UE connections and RRC states update from E2 node (O-CU). |  |
| Step 14 (M) | Near-RT RIC obtains reference signals and resource allocation update  from E2 node (O-CU). |  |
| Step 15 (M) | Near-RT RIC obtains channel measurement and reporting configuration  update from E2 Node (O-CU) |  |
| Step 16 (M) | Near-RT RIC obtains DRB/SRB configuration information from E2 node  (O-CU). |  |
| Step 17 (O) | Near-RT RIC coordinates scheduling control of active DRB/SRB with E2  node (O-DU). |  |
| Step 18 (M) | (Start of inner loop control)  Near-RT RIC obtains traffic and channel information from E2 nodes (O- CU, O-DU). |  |
| Step 19 (M) | Near-RT RIC uses the collected information to estimate channels and  select UE groupings per ranges of frequency and time resources. |  |
| Step 20 (M) | Near-RT RIC calculates scheduling and MIMO parameters (MCS and  precoding coefficients for each selection of UEs). |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Step 21 (M) | Near-RT RIC sends scheduling and optimized MIMO parameters per slot per UE to E2 node (O-DU).  Steps 18 to Step 21 may repeat. (End of inner loop control) |  |
| Step 22 (M) | E2 node (O-DU) schedules transmissions using the parameters  received from the Near-RT RIC. |  |
| Step 23 (O) | Near-RT RIC sends updated reference signals configuration to E2 node  (O-DU). |  |
| Step 24 (O) | Near-RT RIC sends updated DL channel measurement and reporting configuration to E2 node (O-DU).  Step 13 to Step 24 may repeat. (End of outer loop control) |  |
| Ends when | MU-MIMO optimization is deactivated. |  |
| Exceptions | None identified. |  |
| Post Conditions | The E2 nodes operate using the newly received parameters. |  |
| Traceability | REQ-E2-MM-FUN1, REQ-E2-MM-FUN2, REQ-E2-MM-FUN5, REQ-E2-MM-FUN11, REQ-E2-MM-FUN12, REQ-E2-MM-FUN13, REQ-E2-MM-FUN14,  REQ-E2-MM-FUN15 |  |

</div>

@startuml skin rose

skinparam ParticipantPadding 5

skinparam BoxPadding 10

skinparam defaultFontSize 12 Autonumber

Box "O-RAN" #lightpink

Participant NearRTRIC as "Near-RT RIC" Participant OCU as "O-CU"

Participant ODU as "O-DU"

End box

NearRTRIC->OCU: <<E2>> Request cell and UE capabilities and configuration information OCU->NearRTRIC: <<E2>> Cell and UE capabilities and configuration information NearRTRIC->OCU: <<E2>> Request UE connections and RRC states information

OCU->NearRTRIC: <<E2>> UE connections and RRC states information

NearRTRIC->ODU: <<E2>> Request reference signals and resource allocation configuration information

ODU->NearRTRIC: <<E2>> Reference signals and resource allocation configuration information NearRTRIC->ODU: <<E2>> Request channel measurement and reporting configuration information ODU->NearRTRIC: <<E2>> Channel measurement and reporting configuration information

group #white opt

NearRTRIC->ODU: <<E2>> Configure reference signals

NearRTRIC->ODU: <<E2>> Configure channel measurement and reporting end

NearRTRIC->OCU: <<E2>> Request Served Radio Bearers configuration information NearRTRIC->ODU: <<E2>> Request traffic and channel information

group #white MU-MIMO Optimization Loop

OCU->NearRTRIC: <<E2>> UE states and RRC connections update

ODU->NearRTRIC: <<E2>> Reference signals and resource allocation configuration update ODU->NearRTRIC: <<E2>> Channel measurement and reporting configuration update

OCU->NearRTRIC: <<E2>> DRB/SRB configuration information group opt

NearRTRIC<->ODU: <<E2>> Coordinate scheduling control of active DRB/SRB

end

group #white Scheduling and MIMO Parameters Calculation Loop ODU->NearRTRIC: <<E2>> Traffic and channel information NearRTRIC->NearRTRIC: UE selections and Channel estimation

NearRTRIC->NearRTRIC: Scheduling and MIMO parameters calculations

NearRTRIC->ODU: <<E2>> Scheduling and optimized MIMO parameters per slot per UE ODU->ODU: Schedule transmissions using
 received parameters

end

group opt

NearRTRIC->ODU: <<E2>> Updated reference signal configuration

NearRTRIC->ODU: <<E2>> Updated channel measurement and reporting configuration end

end@enduml

The flow diagram of the MU-MIMO optimization is given in figure 4.4.3.3-1.

![PlantUML diagram]({{site.baseurl}}/assets/images/b0dd1a69bdc3.png)

###### Figure 4.4.3.3-1: MU-MIMO optimization flow

#### AI/ML based CSI-RS and DMRS configuration optimization

This sub-use-case deals with GoB-based massive MIMO transmission (where the sender transmits reference signals for a grid of beams to the receiver), primarily used in FDD systems.

Based on the relevant configuration by O-CU-CP, the O-DU periodically transmits the channel state information - Reference Signal (CSI-RS) via one or multiple beams per SSB beam that enables UEs to perform channel measurements, estimate the CSI and report the CSI in the uplink to the O-DU, that further enables the O-DU to choose the appropriate UE-specific beamforming

weights (for transmission in the downlink). This is unlike the non-GoB-based massive MIMO transmission used primarily in TDD systems, which do not involve CSI-based beamforming, but which involve periodic Sounding Reference Signals (SRS) transmission in the uplink by the UE to the O-DU for determining the appropriate UE-specific beamforming weights based on channel reciprocity. Hence, GoB-based massive MIMO transmissions incur a higher overhead due to periodic transmission of CSI-feedback from the UE towards enabling the selection of optimal beamforming weights for the UE.

Furthermore, based on the relevant configuration by O-CU-CP, the O-DU transmits the Demodulation Reference Signal (DMRS) to each UE that enables the UE to determine the UE-specific beamforming weights to decode the PDSCH (for reception in the downlink), containing the multiplexed MIMO layer data transmissions. The configuration of DMRS plays an important role on the performance of the network, e.g., for a fast-fading channel, an additional DMRS symbol can be provided per slot trading off higher overhead; for higher traffic-load, configuration type 2 can be used trading off frequency domain density; for low-latency KPI requirements, mapping type B can be used, etc.

In this context, the sub-use-case describes a method to:

1. if necessary, update/modify the configuration of CSI-RS transmission (i.e., number of ports, port allocation over REs in a RB, transmission periodicity, transmission density/number of CSI-RS signal per RB, CSI-RS port to physical antenna port mapping/beamforming weights, number of CSI-RS beams per SS beam, etc.) and configuration of CSI-feedback (i.e., sub-band size, etc.) at non-real time (e.g., every 1 hr) based on the distribution of UE channel and traffic load.
2. if necessary, update/modify UE-specific beams indexes (e.g., PMIs when PMI-based beam management is enabled, P2 beamforming-weights/beam-indexes when P1-P2-based beam management is enabled, etc.) for a sequence of slots (i.e., at near-real time) based on the CSI-feedback received from UEs, etc.
3. if necessary, update/modify the configuration of DMRS (i.e., number of OFDM symbols carrying DMRS ports per slot, configuration type, etc.) for a sequence of slots (i.e., at near-real time) based on the relevant RAN state information such as CSI-feedback received from UEs, traffic load, etc.

Towards achieving the goal, this sub-use-case utilizes the Near-Real-Time RAN Intelligent Controller (Near-RT RIC) and the Service Management Orchestration (SMO)/Non-Real-Time RAN Intelligent Controller (Non-RT RIC) framework of O-RAN ecosystem.

The SMO/Non-RT RIC framework shall update/modify the configurations of CSI-RS transmissions and CSI-feedback reporting at the E2 nodes (e.g., O-DU).

The Near-RT RIC shall update/modify the UE-specific GoB-based beams and the DMRS configurations at the E2 nodes (e.g., O-DU) for a sequence of slots.

Specifically,

* the SMO/Non-RT RIC framework shall train AI/ML models to solve a joint two-stage optimization problem. In the first stage, the configurations of CSI-RS transmission and CSI-feedback reporting are optimized for each cell. In the second stage, the GoB-based UE-specific beams and the configuration of DMRS are optimized for each cell.
* When the training is completed, the SMO/Non-RT RIC framework shall deploy the AI/ML model trained to optimize GoB-based UE-specific beams and DMRS configurations to the Near-RT RIC.
* After that, based on the network dynamics, the SMO/Non-RT RIC framework shall update/modify the configurations of CSI-RS transmissions and CSI-feedback reporting at the E2 nodes (e.g., O-DU).
* Based on the network dynamics and the trained AI/ML model received from the SMO/Non-RT RIC framework, the Near-RT RIC shall update/modify the UE-specific GoB-based beams and the DMRS configurations at the E2 nodes (e.g., O-DU) for a sequence of slots.

The goal of the optimization is to maximize the target KPIs under the constraints of configuration choices of CSI-RS transmission, CSI-feedback reporting, GoB-based UE-specific beams and DMRS transmission.

The AI/ML models can exploit the relations of the channel properties and traffic load with the configuration parameters of CSI- RS and DMRS (e.g., relations between doppler-spread and time-domain properties, delay-spread and frequency-domain properties, angular spread and beam directions/indexes, traffic-load and number of ports, etc.) towards maximizing the target KPIs.

##### Entities/resources involved in the use case

1. SMO/Non-RT RIC framework:
   1. Collect the necessary Configuration (CM) parameters, Performance Measurements (PM), Key Performance Indicators (KPI), and measurement report traces from the E2 nodes (O-CU-CP, O-CU-UP, O-DU, O-eNB) via O1 interface.
   2. Collect the necessary UE-level observation and measurement data from the Near-RT RIC via O1 interface.
   3. Allow the rApp to receive the CMs, PMs, KPIs measurement data (collected via O1) to perform the AI/ML model training towards jointly optimizing i) the configurations of CSI-RS transmission (i.e., number of ports, port allocation over REs in a RB, transmission periodicity, transmission density/number of CSI-RS signal per RB, CSI-RS port to physical antenna port mapping/beamforming weights, etc.) and CSI-feedback reporting (i.e., sub-band size, etc.) which shall be updated/modified in non-real-time and ii) the UE-specific GoB-based beams (i.e., P2 beamforming- weights/beam-indexes when P1-P2-based beam management is enabled, PMI/PMI-RI/PMI-RI-LI when PMI-based beam management is enabled, etc.) and the configurations of DMRS (i.e., configuration type, mapping type, number of symbols carrying DMRS ports per slot, etc.) which shall be updated/modified in near-real-time.
   4. Receive the inferred configurations of CSI-RS transmissions and CSI-feedback reporting from the rApp via R1 interface.
   5. Write/update the optimized configurations of CSI-RS transmissions and CSI-feedback reporting via O1 interface to E2 nodes.
   6. Deploy the trained AI/ML model via O1/O2 interface and/or the enrichment information via A1 interface to the Near- RT RIC to update/modify the UE-specific GoB-based beams and DMRS configurations in near-real-time.

NOTE: The requirements of SMO/Non-RT RIC framework are under the scope of WG2.

1. rApps:
   1. Retrieve the necessary Configuration (CM) parameters, Performance Measurements (PM), Key Performance Indicators (KPI), and measurement report traces pertaining to the E2 nodes and O-RU from the SMO/Non-RT RIC framework via R1 to train AI/ML model.
   2. Train AI/ML model to jointly optimize i) the configurations of CSI-RS transmission and CSI-feedback reporting which shall be updated/modified in non-real-time and ii) the UE-specific GoB-based beams and the DMRS configurations which shall be updated/modified in near-real-time.
   3. Infer the configurations of CSI-RS transmission and CSI-feedback reporting and write/update the inferred configuration to the SMO/Non-RT RIC framework via R1.
   4. Write/update the AI/ML model trained to optimize the UE-specific GoB-based beams and the DMRS configurations to the SMO/Non-RT RIC framework via R1.
   5. Monitor the performance of the respective cells. Upon KPI degradation, initiate rollback to the previous version of the AI/ML model, if any, and/or trigger the AI/ML model retraining.
   6. Execute the inference/control loop periodically or on an event-triggered based. NOTE: The requirements of rApps are under the scope of WG2.
2. Near-RT RIC:
   1. Subscribe and retrieve DL L1 measurements reported by individual UE such as CSI-feedback containing PMI (in the case of closed-loop MIMO transmission mode) or partial channel feedback (in the case of open-loop MIMO transmission mode, which is available as channel matrix, or its corresponding Eigen vectors of the wireless channel between the E2 node and the UE) over the E2 interface from the E2 nodes.
   2. Process, aggregate and report the UE-level data over O1 interface to the SMO/Non-RT RIC framework.
   3. Retrieve AI/ML model via O1/O2 interface and/or enrichment information via A1 interface from the SMO/Non-RT RIC framework and associate them with collected information over E2 interface (such as, CSI-feedback, etc.) towards inferring the slot-specific GoB-based beams/PMIs per UE and slot-specific DMRS configurations.
   4. Write/update the per-UE slot-specific GoB-based beams/PMIs and slot-specific DMRS configurations for a sequence of slots via E2 interface (to O-DU).
   5. Execute the inference/control loop periodically or on an event-triggered based.
3. E2 nodes:
   1. Report the desired performance measurements and KPIs, configuration parameters and CM changes, trace reports and measurements to the SMO/Non-RT RIC framework via the O1 interface.
   2. Report the DL L1 measurements reported by individual UE (such as, CSI-feedback, etc.) to the Near-RT RIC via the E2 interface.
   3. Receive the optimized CSI-RS transmission and CSI-feedback reporting configurations from the SMO/Non-RT RIC framework via O1 interface and apply the configuration on the O-DU which may further exercise the configuration update on the O-RU.
   4. Receive the per-UE slot-specific GoB-based beams/PMIs and slot-specific DMRS configurations for a sequence of slots from the Near-RT RIC via the E2 interface and apply the configuration on the O-DU which may further exercise the configuration update on the O-RU accordingly.

##### Solutions

The context of AI/ML based CSI-RS and DMRS configuration optimization is captured in table 4.4.3.4.2-1.

###### Table 4.4.3.4.2-1: AI/ML based CSI-RS and DMRS configuration optimization

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Steps** | **Details** |
| Goal | Optimizes the configuration parameters of CSI-RS and DMRS |
| Actors and Roles | * SMO/Non-RT RIC framework: Collects performance data and training data, allows rApp to access the data, receives trained AI/ML model from rApp and deploys the trained model to Near-RT RIC, receives inferred configurations of CSI-RS transmission and CSI-feedback reporting from rApp and writes/updates the inferred configurations to E2 nodes. * rApp: Trains AI/ML model to jointly optimize i) the configurations of CSI-RS transmission and CSI- feedback reporting which shall be updated/modified in non-real-time and ii) the UE-specific GoB- based beams and the DMRS configurations which shall be updated/modified in near-real-time.   Infers the configurations of CSI-RS transmission and CSI-feedback reporting.   * Near-RT RIC: Infers per-UE slot-specific GoB-based beams/PMIs and slot-specific DMRS configurations for a sequence of slots. * E2 nodes and O-RU: Updates CSI-RS transmission and CSI-feedback reporting parameters as per the recommendation received from the SMO/Non-RT RIC framework. Updates UE-specific GoB beamforming weights and DMRS configurations as per the recommendation received from the Near-RT RIC. |
| Assumptions | * All relevant functions and components are instantiated. * A1, O1 and E2 interface connectivity is established. * A1 policy scope defined. |
| Pre-conditions | * Network is operational with default configuration. * SMO/Non-RT RIC framework have configured a baseline measurement configuration and the rApp has access to this data. * Near-RT RIC has access to the necessary data related to DL L1 measurements reported by UEs such as CSI-Feedback containing PMI/RI/LI, CSI-RSRP, CSI-SINR, etc. from the E2 node. * SMO/Non-RT RIC framework analyzes the historical data from RAN for training the relevant AI/ML models to be deployed or updated in the Near-RT RIC, as well as AI/ML models required for non- real-time optimization of configurations. |
| Begins when | SMO/Non-RT RIC framework and/or Near-RT RIC perform data evaluation, determine that CSI-RS and DMRS optimization is required to be initiated or updated and establishes target(s). |
| Step 1-2 (M) | (Start of outer loop control)  SMO/Non-RT RIC framework collects the necessary configurations, performance indicators, and measurement reports from E2 nodes and O-RUs via O1 interface. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Steps** | **Details** |
| Step 3 (M) | Near-RT RIC collects DL L1 measurements reported by individual UE such as PMI, RI, LI, CQI, CSI- RSRP, CSI-SINR, SS-RSRP, etc. and DL L1, L2 information such as traffic load of individual UE from E2 node periodically or event-triggered. |
| Step 4-5 (M) | Near RT RIC processes, aggregates and reports the UE-level data over O1 interface to the SMO/Non- RT RIC framework. |
| Step 6 (M) | SMO/Non-RT RIC framework collects the target KPIs data. |
| Step 7 (M) | SMO/Non-RT RIC framework pre-processes the data to feed into the rApp. |
| Step 8-9 (M) | rApp trains AI/ML model. |
| Step 10-12 (M) | SMO/Non-RT RIC framework deploys the trained AI/ML model to Near-RT RIC via O1/O2 interface and sends optional A1 enrichment information such as the history of UE-specific GoB-based beams/PMIs. |
| Step 13-14 (M) | (Start of inner loop control)  SMO/Non-RT RIC framework collects observation, measurement data from E2 nodes and feeds the data to rApps. |
| Step 15-16 (M) | rApp infers the configurations of CSI-RS transmission and CSI-feedback reporting and writes/updates the inferred configurations to SMO/Non-RT RIC framework. |
| Step 17-18 (M) | SMO/Non-RT RIC framework writes/updates the configurations of CSI-RS transmission and CSI- feedback reporting at E2 nodes which further exercise the configuration update on the O-RU. |
| Step 19-20 (M) | E2 nodes report the DL L1 measurements reported by individual UE such as PMI, RI, LI, CQI, CSI- RSRP, CSI-SINR, SS-RSRP, etc. and DL L1, L2 information such as traffic load of individual UE to Near-RT RIC. By associating the measurement data received from E2 nodes with the trained AI/ML model received from SMO/Non-RT RIC framework, Near-RT RIC infers the per-UE slot-specific GoB- based beams/PMIs and slot-specific DMRS configurations. |
| Step 21-22 (M) | Near-RT RIC writes/updates the per-UE slot-specific GoB-based beams/PMIs and slot-specific DMRS configurations for a sequence of slots to E2 nodes via E2 interface.  Step 12 to Step 21 may repeat. (End of inner loop control) |
| Step 23-30 (M) | rApps continuously monitors KPIs in respective cells. In case of unsatisfactory performance, it initiates fallback and requests AI/ML model retraining/update. Then, rApp retrains/updates the respective AI/ML model(s).  Step 1 to Step 29 may repeat. (End of outer loop control) |
| Ends when | Non-RT RIC decides to delete the CSI-RS and DMRS optimization AI/ML model and sends the related message or following internal trigger, the Near-RT RIC terminates the UE-specific beams/PMIs and DMRS optimization procedure. |
| Exceptions | None. |
| Post Conditions | Non-RT RIC continues to collect and monitor the CSI-RS and DMRS optimization related measurement data from E2 node. |
| Traceability | REQ-Near-RT-RIC-MM-FUN1,  REQ-Near-RT-RIC-MM-FUN2, |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Steps** | **Details** |
|  | REQ-Near-RT-RIC-MM-FUN3, REQ-Near-RT-RIC-MM-FUN4, REQ-E2-MM-FUN1,  REQ-E2-MM-FUN2, REQ-E2-MM-FUN5, REQ-E2-MM-FUN11,  REQ-E2-MM-FUN16 |

</div>

@startuml

Box "Personnel" #lightblue Actor "Operator" as OPERATOR

End box

Box "Service Management and Orchestration" #gold Participant "SMO & Non-RT RIC FW" as SMO Participant "rApps" as NRTRIC

End box

Box "O-RAN Nodes" #lightpink Participant "Near-RT RIC" as RTRIC Participant "E2-Nodes" as E2NODES Participant "O-RUs" as ORUs

End box Autonumber

group Data Collection and Pre-Processing

ORUs -> E2NODES : <<FH>> Observation, Measurement Data Collection E2NODES -> SMO : <<O1>> Observation, Measurement Data Collection

E2NODES -> RTRIC: <<E2>> DL L1 measurements (such as PMI, RI, LI, CQI etc.) 
and DL L1, L2 information (such as, traffic load etc.) of individual UE

RTRIC -> RTRIC : Data processing

RTRIC -> SMO : <<O1>> Aggregated and processed UE-level Data OPERATOR -> SMO : Performance KPI Targets

SMO -> SMO : Data Pre-Processing and AI/ML Training Data Generation

end

group AI/ML Training

SMO -> NRTRIC : <<R1>> AI/ML Training Data NRTRIC -> NRTRIC : AI/ML Training

end

group Model Deployment

NRTRIC -> SMO : <<R1>> Request to deploy trained AI/ML model SMO -> RTRIC : <<O1>>/<<O2>> Deploy AI/ML model

SMO --> RTRIC : <<A1>> enrichment information

end

group Inference Generation

group Inference Generation with Non-Real-Time periodicity

E2NODES -> SMO : <<O1>> Observation, Measurement Data Collection SMO -> NRTRIC : <<R1>> Model data

NRTRIC ->NRTRIC : AI/ML Inference

NRTRIC -> SMO : <<R1>> CSI-RS transmission and 
 CSI-feedback reporting configurations

SMO -> E2NODES : <<O1>> CSI-RS transmission and 
 CSI-feedback reporting configurations

E2NODES -> ORUs : <<FH>> Updated O-RU Configurations

end

group Inference Generation with Near-Real-Time periodicity

E2NODES ->RTRIC : <<E2>> DL L1 measurements (such as PMI, RI, LI, CQI etc.) 
and DL L1, L2 information (such as, traffic load etc.) of individual UE

RTRIC -> RTRIC : AI/ML Inference

RTRIC -> E2NODES : <<E2>> per-UE slot-specific GoB-based beams/PMIs 
and slot-specific DMRS configurations for a sequence of slots

E2NODES -> ORUs : <<FH>> Updated O-RU Configurations

end end

group ML Agent Performance Monitoring

ORUs -> E2NODES : <<FH>> Data Collection

E2NODES -> SMO : <<O1>> KPIs, Measurement Report, Observations SMO -> NRTRIC : Performance data

NRTRIC -> NRTRIC: Performance Evaluation group if <PI degradation occurs>

NRTRIC -> SMO : <<R1>> Default/Fallback decision/CSI and DMRS Configuration SMO -> E2NODES : <<O1>> Default/Fallback CSI and DMRS Configuration

SMO -> NRTRIC : <<R1>> Model retraining and update request NRTRIC -> NRTRIC : AI/ML Re-Training Trigger

end end @enduml

The overall procedure for CSI-RS and DMRS optimization for mMIMO GoB beamforming use case is given in figure 4.4.3.4.2- 1.

![]({{site.baseurl}}/assets/images/73632be664de.png)

###### Figure 4.4.3.4.2-1: The overall procedure for CSI-RS and DMRS optimization for mMIMO GoB beamforming use case

### Required data

This clause elaborates the Near-RT RIC and the E2 node capabilities necessary for implementation of the massive MIMO optimization use case. The requirements are specified in clause 5.

#### Control over E2

*Non-Grid-of-Beams beamforming optimization*

###### Table 4.4.4.1-1: Output data

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Output data** | | | | | |
| **Interface** | **Source -> Target** | **Name/Description** | **Units** | **Config.**  **Period, granularity** | **New or existing config** |
| E2 | Near-RT RIC  -> O-DU | Non-GoB control/policy (non- GoB beamforming mode) | index | ~per N x 100ms, per  UE | New |

</div>

*Beam-based mobility robustness optimization*

###### Table 4.4.4.1-2: Output data

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Output data** | | | | | |
| **Interface** | **Source -> Target** | **Name/Description** | **Units** | **Config. Period, granularity** | **New or existing config** |
| E2 | Near-RT RIC  -> O-CU | Cell Individual Offset (CIO) to a given neighbor cell | dB | ~per N x 100ms, per beam or beam group, per UE group (optional) | As specified in 3GPP TS  38.331 [18], clauses  5.3.5 and 5.5.4  New: beam or beam group, per UE group configuration of CIOs |
| E2 | Near-RT RIC  -> O-CU | Time To Trigger (TTT) | ms | ~per N x 100ms, per beam or beam group, per UE group (optional) | As specified in 3GPP TS  38.331 [18], clauses  5.3.5 and 6.3.2  New: beam or beam group, per UE group configuration of TTTs |
| E2 | Near-RT RIC  -> O-CU | UE Timer 310 (T310) | ms | ~per N x 100ms, per beam or beam group, per UE group (optional) | As specified in 3GPP TS  38.331 [18], clauses  5.8.8 and 6.3.2  New: beam or beam group, per UE group configuration of TTTs |

</div>

*MU-MIMO optimization*

###### Table 4.4.4.1-3: Output data

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Output data** | | | | | |
| **Interface** | **Source -> Target** | **Name/Description** | **Units** | **Config. Period, granularity** | **New or existing config** |
| E2 | Near-RT RIC  -> O-DU | CSI resource configuration | mess age | ~per N x 100ms, per UE | As specified in 3GPP TS  38.331 [18], clause 6.3.2 |
| E2 | Near-RT RIC  -> O-DU | CSI report configuration | mess age | ~ per N x 100ms, per UE | As specified in 3GPP TS  38.331 [18], clause 6.3.2 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Output data** | | | | | |
| **Interface** | **Source -> Target** | **Name/Description** | **Units** | **Config. Period, granularity** | **New or existing config** |
| E2 | Near-RT RIC  -> O-DU | SRS resource configuration | mess age | ~ per N x 100ms, per UE | As specified in 3GPP TS  38.331 [18], clause 6.3.2 |
| E2 | Near-RT RIC  -> O-DU | PDSCH configuration | mess age | ~ per N x 100ms, per UE per BWP | As specified in 3GPP TS  38.331 [18], clause 6.3.2 |
| E2 | Near-RT RIC  -> O-DU | MU-MIMO parameters per slot per UE | mess age | ~ per Nx1ms, per slot per SMG | New |

</div>

*CSI-RS and DMRS optimization*

###### Table 4.4.4.1-4: Output data

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Output data** | | | | | |
| **Interface** | **Source -> Target** | **Name/Description** | **Units** | **Config.**  **Period, granularity** | **New or existing config** |
| E2 | Near-RT RIC  -> O-DU | Per-UE slot-specific GoB- based beam configuration (i.e., P2 beamforming- weights/beam-index, PMI, RI, LI, etc.) and slot-specific DMRS configuration (i.e., number of OFDM symbols carrying a DMRS port per slot, mapping type, configuration type, etc.) for a sequence of  slots | mess age | ~per N x 100ms | As specified in 3GPP TS 38.912 [46], clause  8.2.1.6, 3GPP TS 38.211  [45], clause 7.4.1.1 |

</div>

#### UE context information from E2 nodes

<From O-DU>

###### Table 4.4.4.2-1: Input data

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **Input data** | | | | | | |
| **Interface** | **Source -> Target** | **Name/Descripti on** | **Units** | **Reporting Period, granularity** | **New or existing definition,**  **Existing Specification**  **(Clause)** | **Applicable sub-features** |
| E2 | O-DU -> Near-RT RIC | UE ID |  | ~per N x 100ms, per UE | As specified in O- RAN.WG3.E2SM-v02.00 [25]  New reporting | **Non-GoB** |
| E2 | O-DU -> Near-RT RIC | SRS  configuration periodicity | slots | ~per N x 100ms, per UE | As specified in 3GPP TS  38.331 [18], clause 6.3.2 | **Non-GoB** |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **Input data** | | | | | | |
| **Interface** | **Source -> Target** | **Name/Descripti on** | **Units** | **Reporting Period, granularity** | **New or existing definition,**  **Existing Specification**  **(Clause)** | **Applicable sub-features** |
|  |  |  |  |  | "SRS-Config  >periodicityAndOffset" New reporting |  |
| E2 | O-DU -> Near-RT RIC | CSI  measurement configuration | mess age | ~per N x 100ms, per UE | As specified in 3GPP TS  38.331 [18], clause 6.3.2  New reporting | **mUMO** |
| E2 | O-DU -> Near-RT RIC | SRS  configuration | mess age | ~per N x 100ms, per UE | As specified in O- RAN.WG3.E2SM-RC-  R003-v05.00 [42], clause  8.1.1.17 | **mUMO** |
| E2 | O-DU -> Near-RT RIC | BWP  configurations | mess age | ~per N x 100ms, per UE | As specified in 3GPP TS  38.331 [18], clause 6.3.2  New reporting | **mUMO** |
| E2 | O-DU -> Near-RT RIC | PDSCH of  serving cell configuration | mess age | Infrequent, per UE | As specified in 3GPP TS  38.331 [18], clause 6.3.2  New reporting | **mUMO** |

</div>

<From O-CU>

###### Table 4.4.4.2-2: Input data

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **Input data** | | | | | | |
| **Interface** | **Source -> Target** | **Name/Descripti on** | **Units** | **Reporting Period, granularity** | **New or existing definition,**  **Existing Specification**  **(Clause)** | **Applicable sub-features** |
| E2 | O-CU -> Near-RT RIC | UE ID and cell ID of RRC  connected UEs |  | ~per N x 100ms, per UE | As specified in O-  RAN.WG3.E2SM-RC- R003-v05.00 [42] | **mUMO** |
| E2 | O-CU -> Near-RT RIC | RRC state change |  | ~per N x 100ms, per UE | As specified in O- RAN.WG3.E2SM-RC-  R003-v05.00 [42], clause  9.3.37 | **mUMO** |
| E2 | O-CU -> Near-RT RIC | MeasGapConfig | mess age | ~per N x 100ms, per UE | As specified in 3GPP TS  38.331 [18], clause 6.3.2  New reporting | **mUMO** |
| E2 | O-CU -> Near-RT RIC | Served radio bearer configuration | mess age | ~per N x 100ms, per UE | As specified in 3GPP TS 38.473 [21],  clause 9.2.2.1  3GPP TS 38.331 [18],  clause 6.3.2 New reporting | **mUMO** |
| E2 | O-CU -> Near-RT RIC | DRX  configuration | mess age | ~per N x 100ms, per UE | As specified in 3GPP TS  38.331 [18], clause 6.3.2  New reporting | **mUMO** |
| E2 | O-CU -> Near-RT RIC | UE capabilities | mess age | Infrequent, per UE | As specified in 3GPP TS  38.331 [18], clause 6.3.2  Existing reporting | **mUMO** |

</div>

#### Measurements from E2 nodes

<From O-DU>

###### Table 4.4.4.3-1: Input data

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **Input data** | | | | | | |
| **Interface** | **Source -> Target** | **Name/Descripti on** | **Units** | **Reporting Period,**  **granularity** | **New or existing definition, Existing Specification**  **(Clause)** | **Applicable sub-**  **features** |
| E2 | O-DU -> Near-RT RIC | RSRP L1  measurement (based on synchronization signal) | dBm | ~per N x 100ms, per UE | As specified in 3GPP TS 38.133 [26],  clause 10.1.6  3GPP TS 38.215 [27],  clause 5.1.1 New reporting | **Non-GoB L1/L2 BM** |
| E2 | O-DU -> Near-RT RIC | DL L1 SINR  measurement (based on synchronization signal) | dB | ~per N x 100ms, per UE | As specified in 3GPP TS 38.133 [26],  clause 10.1.16  3GPP TS 38.215 [27],  clause 5.1.5 New reporting | **Non-GoB L1/L2 BM** |
| E2 | O-DU -> Near-RT RIC | UL SRS RSRP  measurement | dBm | ~per N x 100ms, per UE | As specified in 3GPP TS 38.133 [26],  clause 13.3.1  3GPP TS 38.215 [27],  clause 5.2.5 New reporting | **Non-GoB** |
| E2 | O-DU -> Near-RT RIC | Average DL UE throughput in gNB with associated non- GoB BF mode and MIMO mode | Kb/s  +  index | (non real-time for training) | As specified in  3GPP TS 28.552 [6], clause  5.1.1.3.1  New reporting New component is  associated non-GoB BF mode index and MIMO  mode (SU/MU) | **Non-GoB** |
| E2 | O-DU -> Near-RT RIC | Average UL UE throughput in gNB with associated non- GoB BF mode and MIMO mode | Kb/s  +  index | (non real-time for training) | As specified in  3GPP TS 28.552 [6], clause  5.1.1.3.3  New reporting New component is  associated non- GoB BF  mode index and MIMO mode (SU/MU) | **Non-GoB** |
| E2 | O-DU -> Near-RT RIC | SRS samples |  | ~per N x 1ms, per SRS RE per antenna port | As specified in  O-RAN.WG4.CUS.0-R003-  v13 [34], clause 8.3.5.2 New reporting | **mUMO** |
| E2 | O-DU -> Near-RT RIC | DL channel quality information  (PMi, RI, CQI) | mess age | ~per N x 10ms, per UE | As specified in 3GPP TS 38.212 [43],  clause 6.3  New reporting | **mUMO** |
| E2 | O-DU -> Near-RT RIC | HARQ ACK/NACK/DT  X counts | count | ~per N x 10ms, per UE | As specified in 3GPP TS 38.212 [43],  clause 6.3  New reporting | **mUMO** |
| E2 | O-DU -> Near-RT RIC | DL RLC buffer status | count | ~per N x 1ms, per DRB per UE | As specified in 3GPP TS 25.321 [41],  clause 8.2.2  New reporting | **mUMO** |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **Input data** | | | | | | |
| **Interface** | **Source -> Target** | **Name/Descripti on** | **Units** | **Reporting**  **Period, granularity** | **New or existing definition,**  **Existing Specification (Clause)** | **Applicable**  **sub- features** |
| E2 | O-DU -> Near-RT RIC | MAC  timestamped slot number | mess age | ~per N x 100ms | As specified in 3GPP TS 38.473 [21],  clause 9.3.1.171  New reporting | **mUMO** |
| E2 | O-DU -> Near-RT RIC | CSI-feedback, such as cell- specific and CSI-RS-beam- index-specific RSRP, RSRQ,  SINR, etc. and SSB-beam- index-specific-  RSRP per UE | mess age | ~per N x 100ms, per UE | As specified in 3GPP TS 38.912 [46], clause  8.2.1.6.3, 3GPP TS 38.331  [18], clause 5.5.5.2, 3GPP  TS 38.215 [27], clause 5.1 | **CSI and DMRS opt.** |
| E2 | O-DU -> Near-RT RIC | CSI-feedback, such as precoding matrix indication (PMI), rank indication (RI), layer indication  (LI) per UE | mess age | ~per N x 100ms, per UE | As specified in 3GPP TS 38.912 [46], clause  8.2.1.6.3, 3GPP TS 38.214  [15], clause 5.2 | **CSI and DMRS opt.** |
| E2 | O-DU -> Near-RT RIC | Information about Quasi- Co-Location (QCL) type between SSB  and CSI-RS and between CSI- RS and DMRS per UE per cell | mess age | ~per N x 100ms, per UE | As specified in 3GPP TS  38.214 [15], clause 5.1.5 | **CSI and DMRS opt.** |
| E2 | O-DU -> Near-RT RIC | Traffic load and radio resource utilization per  UE per cell | mess age | ~per N x 100ms, per cell | As specified in 3GPP TS  28.552 [6] | **CSI and DMRS opt.** |
| E2 | O-DU -> Near-RT RIC | DRB-specific PDCP SDU  data volume, DRB-specific RLC buffer occupancy and HARQ-specific Transport Block Size volume per  UE | mess age | ~per N x 100ms, per UE | As specified in O-RAN WG3 E2SM-KPM [36], O-RAN  WG3 E2SM-RC [37] | **CSI and DMRS opt.** |

</div>

<From O-CU>

###### Table 4.4.4.3-2: Input data

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **Input data** | | | | | | |
| **Interface** | **Source -> Target** | **Name/Descripti on** | **Units** | **Reporting**  **Period, granularity** | **New or existing definition,**  **Existing Specification (Clause)** | **Applicable**  **sub- features** |
| E2 | O-CU -> Near-RT RIC | Number of too early HOs to a given neighbor  cell | count | ~ 1 min, per beam or beam group | As specified in 3GPP TS  28.552 [6], clause 5.1.1.25 | **bMRO** |
| E2 | O-CU -> Near-RT RIC | Number of too late HOs to a given neighbor  cell | count | ~ 1 min, per beam or beam group | As specified in 3GPP TS  28.552 [6], clause 5.1.1.25 | **bMRO** |
| E2 | O-CU -> Near-RT RIC | Number of HO to wrong cell to a given  neighbor cell | count | ~ 1, per beam or beam group | As specified in 3GPP TS  28.552 [6], clause 5.1.1.25 | **bMRO** |
| E2 | O-CU -> Near-RT RIC | Number of requested legacy HO executions (HO attempts) to a given neighbor  cell | count | ~ 1 min, per beam or beam group | As specified in 3GPP TS  28.552 [6], clause 5.1.1.6 | **bMRO** |
| E2 | O-CU -> Near-RT RIC | Number of successful legacy HO executions to a given neighbor  cell | count | ~ 1 min, per beam or beam group | As specified in 3GPP TS  28.552 [6], clause 5.1.1.6 | **bMRO** |
| E2 | O-CU -> Near-RT RIC | Number of failed legacy HO executions to a given  neighbor cell | count | ~ 1 min, per beam or beam group | As specified in 3GPP TS  28.552 [6], clause 5.1.1.6 | **bMRO** |
| E2 | O-CU -> Near-RT RIC | Mobility failure indication with root cause (too early HO, too late HO, HO to wrong cell; ping- pong HO) and number of requested or number of successful HO executions at the time of  failure | mess age | Instantaneous at failure event, per beam or beam group, per UE | New measurement and new reporting | **bMRO** |
| E2 | O-CU -> Near-RT RIC | PDCP buffer status | count | ~per N x 1ms, per DRB per UE | As specified in 3GPP TS  38.323 [40], clause 5.6 New reporting | **mUMO** |

</div>

NOTE: Measurements for bMRO to be associated with active beam pattern in case of GoB optimization.

#### E2 node configuration

<From O-DU>

###### Table 4.4.4.4-1: Input data

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **Input data** | | | | | | |
| **Interface** | **Source -> Target** | **Name/Descripti on** | **Units** | **Reporting**  **Period, granularity** | **New or existing definition,**  **Existing Specification (Clause)** | **Applicable**  **sub- features** |
| E2 | O-DU -> Near-RT RIC | Number of supported non- GoB beamforming  modes | count | infrequent event (> hours) | New | **Non-GoB** |
| E2 | O-DU -> Near-RT RIC | O-RU antenna information | mess age | Infrequent (~hours) | As specified in O- RAN.WG4.MP.0-R003-v13  [35], clause D.3.8  New reporting | **mUMO** |
| E2 | O-DU -> Near-RT RIC | O-DU supported compression methods | mess age | Infrequent (~hours) | As specified in O- RAN.WG4.CUS.0-R003-v13  [34], clause 7.7.1.2  New reporting | **mUMO** |

</div>

<From O-CU>

###### Table 4.4.4.4-2: Input data

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **Input data** | | | | | | |
| **Interface** | **Source -> Target** | **Name/Descripti on** | **Units** | **Reporting Period,**  **granularity** | **New or existing definition, Existing Specification**  **(Clause)** | **Applicable sub-**  **features** |
| E2 | O-CU ->  Near-RT RIC | Served cell  information | mess  age | Infrequent  (~hours) | As specified in 3GPP TS  38.473 [21], clause 9.3.1.10 | **mUMO** |
| E2 | O-CU -> Near-RT RIC | MIB | mess age | Infrequent (~hours) | As specified in 3GPP TS  38.331 [18], clause 6.2.2  New reporting | **mUMO** |
| E2 | O-CU -> Near-RT RIC | Serving cell SSB information | mess age | Infrequent (~hours) | As specified in 3GPP TS  38.331 [18], clause 6.3.2  New reporting | **mUMO** |

</div>

<To O-CU>

###### Table 4.4.4.4-3: Output data

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **Output data** | | | | | | |
| **Interface** | **Source -> Target** | **Name/Descripti on** | **Units** | **Config. Period, granularity** | **New or existing definition, Existing Specification**  **(Clause)** | **Applicable sub-**  **features** |
| E2 | Near-RT RIC  -> O-CU | Beam grouping info (list of beam group IDs with associated  beam IDs) | list | infrequent event (> hours) | New | **bMRO** |

</div>

## QoE optimization

Based on the end-to-end requirements for the QoE optimization use case specified in [32] and in [28], some high-level functional description and requirements over Near-RT RIC and E2 interface are introduced.

### Background and goal of the use case

The highly demanding 5G native applications like cloud VR are both bandwidth consuming and latency sensitive. However, for such traffic-intensive and highly interactive applications, current semi-static QoS framework can be insufficient to satisfy diversified QoE requirements especially taking into account potentially significant fluctuation of radio transmission capability. It is expected that QoE estimation/prediction can help deal with such uncertainty and improve the efficiency of radio resources, and eventually improve user experience. RAN Analytics Information (RAI) as RAN service can be exposed to RAI service consumers for specific UE (as specified in O-RAN.WG1.O-RAN-Architecture-Description-v06.00 [30], clause 4.5) or for groups of UE (per slice, per cell, per PLMN, etc.). RAI is envisioned to be helpful for the applications to improve the user experience.

Near-RT RIC and E2 interface are leveraged to support this use case. Measurement data through E2 interface, e.g., cell level data, UE level data, can be acquired and processed via ML algorithms to support traffic recognition, QoE prediction, and QoS enforcement decisions. When requested, the analytics information, e.g., traffic rate, latency, packet loss rate, is exposed to the RAI service consumers to help applications execute logical control.

### Entities/resources involved in the use case

1. Near-RT RIC:
   1. Support receiving request or subscription messages from RAI service consumer.
   2. Support receiving network state and UE performance report from RAN.
   3. Support data analysis and executing the AI/ML models to infer RAN analytics information, e.g., QoE prediction, and available bandwidth prediction.
   4. Support exposure RAN analytics information to RAI service consumer.
2. RAN:
   1. Support network state and UE performance report with required granularity to Near-RT RIC over E2 interface.
3. RAI service consumer:
   1. Request or subscribe to RAN analytics information from the Near-RT RIC.
   2. Support UE identification using data structure as specified in O-RAN.WG1.O-RAN-Architecture-Description-v06.00 [30], clause 4.

### Solutions

#### Introduction

This clause specifies solution components that can be combined into different solutions. A solution based on E2 control/policy consists of clause 4.5.3.1 and clause 4.5.3.2. Another solution based on RAN analytics information exposure consists of clause

* + - 1. and clause 4.5.3.3.

#### AI/ML model training and distribution

Overall process shall be as specified in O-RAN.WG2.UCR [28], clause 4.2.3.1, however step 3 would be performed over O2 when and if "image based" ML model deployment option is selected (as specified in O-RAN.WG2.AIML [29], clause 7).

#### Policy generation and performance evaluation

Editor's note: to be defined based on requirements as specified in O-RAN.WG2.UCR [28], clause 4.2.3.2.

#### RAN performance analytics assisted QoE optimization

RAN performance analytics can be requested by the RAI service consumer using either a request/response solution or a subscription-based solution.

The context of RAN performance analytics assisted QoE optimization using request/response is captured in table 4.5.3.3-1.

###### Table 4.5.3.3-1: RAN performance analytics assisted QoE optimization using request/response

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Expose RAN analytics information to RAI service consumer for QoE  optimization. |  |
| Actors and Roles | Near-RT RIC, RAI service consumer, E2 nodes |  |
| Assumptions | All relevant functions and components are instantiated.  RAI service consumer has obtained the necessary information to initiate request for QoE related RAI from the Near-RT RIC. |  |
| Pre-conditions | QoE related ML models have been deployed in Near-RT RIC.  E2 interface is established to enable collection of measurements from E2 nodes. |  |
| Begins when | RAI service consumer decides to request RAN analytics information for  QoE optimization. |  |
| Step 1 (M) | RAI service consumer requests for QoE related RAN analytics  information from Near-RT RIC. |  |
| Step 2 (O) | Near-RT RIC initiates measurement data collection from E2 nodes via  RIC subscription procedure. See NOTE 1. |  |
| Step 3-4 (M) | E2 node sends periodic measurement data to Near-RT RIC, received  data is processed and stored. |  |
| Step 5 (M) | Near-RT RIC generates the RAN analytics information, using QoE  related AI/ML models and collected measurement data. |  |
| Step 6 (M) | Near-RT RIC sends the RAN analytics information to RAI service  consumer. |  |
| Ends when | RAI service consumer receives the RAN analytics information response. |  |
| Exceptions | None identified. |  |
| Post Conditions | RAI service consumer obtains RAI necessary for QoE optimization.  Near-RT RIC may stop data collection. |  |
| NOTE 1: Near-RT RIC may be configured to start collection of measurement data before requested by RAI service  consumer. | | |

</div>

@startuml Skin rose

skinparam ParticipantPadding 5

skinparam BoxPadding 10

skinparam defaultFontSize 12

Box "O-RAN" #lightpink

Participant near as "Near-RT RIC" Participant ran as "E2 Nodes"

End box

Box "External" #lightcyan

Participant "RAI service consumer" as app End box

app -> near : 1. RAI Request for QoE optimization

near <--> ran: 2. <<E2>> RIC Subscription procedure(Report: Measurements)

Loop Data collection

ran -> near : 3. <<E2>> RIC Indication (Report) near -> near : 4. Process and store data

end

near -> near: 5. RAN analytics information generation near -> app: 6. RAI Response (RAN analytics information)

near <--> ran: <<E2>> RIC Subscription Delete procedure(Report: Measurements)

@enduml

The flow diagram of the RAN performance analytics assisted QoE optimization using request/response is given in figure 4.5.3.3.- 1.

![Generated by PlantUML]({{site.baseurl}}/assets/images/61018085113b.png)

###### Figure 4.5.3.3-1: RAN performance analytics assisted QoE optimization using request/response

The context of RAN performance analytics assisted QoE optimization using subscription-based solution is captured in table 4.5.3.3-2.

###### Table 4.5.3.3-2: RAN performance analytics assisted QoE optimization using subscription-based solution

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Expose RAN analytics information to RAI service consumer for QoE  optimization. |  |
| Actors and Roles | Near-RT RIC, RAI service consumer, E2 nodes |  |
| Assumptions | All relevant functions and components are instantiated.  RAI service consumer has obtained the necessary information to initiate request for QoE related RAI from the Near-RT RIC. |  |
| Pre-conditions | QoE related ML models have been deployed in Near-RT RIC.  E2 interface is established to enable collection of measurements from E2 nodes. |  |
| Begins when | RAI service consumer decides to subscribe to reports of RAN analytics  information for QoE optimization. |  |
| Step 1 (M) | RAI service consumer initiates RAI subscription procedure for QoE  related RAN analytics information from Near-RT RIC. |  |
| Step 2 (O) | Near-RT RIC may initiate measurement data collection from E2 nodes  via RIC subscription procedure. See NOTE 1. |  |
|  | Steps 3-5 loop with RAI service consumer receiving requested  subscription-based reports. |  |
| Step 3-4 (M) | E2 node sends periodic measurement data to Near-RT RIC, received  data is processed and stored. |  |
| Step 5 (M) | Near-RT RIC generates the RAN analytics information, using QoE  related AI/ML models and collected measurement data. |  |
| Step 6 (M) | Near-RT RIC sends the RAN analytics information to RAI service  consumer. |  |
| Ends when | RAI service consumer initiates RAI subscription delete procedure. |  |
| Exceptions | None identified. |  |
| Post Conditions | RAI service consumer obtains RAI necessary for QoE optimization.  Near-RT RIC may stop E2 node data collection. |  |
| NOTE 1: Near-RT RIC may be configured to start collection of measurement data before requested by RAI service  consumer. | | |

</div>

@startuml Skin rose

skinparam ParticipantPadding 5

skinparam BoxPadding 10

skinparam defaultFontSize 12

Box "O-RAN" #lightpink

Participant near as "Near-RT RIC" Participant ran as "E2 Nodes"

End box

Box "External" #lightcyan

Participant "RAI service consumer" as app End box

app <-> near : 1. RAI Subscription procedure for QoE optimization

near <--> ran: 2. <<E2>> RIC Subscription procedure(Report: Measurements)

Loop Until subscription terminated Loop Data collection

ran -> near : 3. <<E2>> RIC Indication (Report) near -> near : 4. Process and store data

end

near -> near: 5. RAN analytics information generation near -> app: 6. RAI Report (RAN analytics information)

end

app <-> near : RAI Subscription Delete procedure

near <--> ran: <<E2>> RIC Subscription Delete procedure(Report: Measurements)

@enduml

The flow diagram of the RAN performance analytics assisted QoE optimization using subscription-based solution is given in figure 4.5.3.3-2.

![Generated by PlantUML]({{site.baseurl}}/assets/images/233dd07a3429.png)

###### Figure 4.5.3.3-2: RAN performance analytics assisted QoE optimization using subscription-based solution

### Required data

This clause elaborates the Near-RT RIC and the E2 node capabilities necessary for implementation of the QoE optimization use case, especially for RAN performance analytics. The requirements are specified in clause 5.

#### UE context information from E2 nodes

The followings are examples of UE context information identified as required:

* UE ID
* List of S-NSSAI
* List of QoS related ID, eg., 5QI, QFI

For example, UE ID, S-NSSAI or QoS related ID can be used to collect, analysis and predict the resource occupation of each user, slice or service, eg. maximum/average throughput, maximum/average latency, average packet loss rate.

#### Measurements from E2 nodes

The E2 measurements are necessary for inference and prediction in the Near-RT RIC as the driver for decisions in addition to KPMs. For the QoE optimization use case, especially for RAN performance analytics, the Near-RT RIC receives the request or

subscription from RAI service consumer and subscribes and receives the measurement data from O-CU/O-DU through E2 interface. Based on it, with QoE related AI/ML models, the Near-RT RIC infers the RAN analytics information, and exposes it to RAI service consumer.

The examples of cell-level, UE-level, and slice-level measurement information are listed in table 4.5.4.2-1 below.

###### Table 4.5.4.2-1: Measurements from E2 nodes

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Measurement Type** | | **Measurement Examples** |
| Cell-level | L2 | 1. **MCS Distribution in PDSCH** (available at DU; as specified in 3GPP TS 28.552 [6], clause 5.1.1.12.1) 2. **DL/UL Total PRB usage** (available at DU; as specified in 3GPP TS 28.552 [6], clauses 5.1.1.2.1 and 5.1.1.2.2 and in 3GPP TS 32.425 [7], clauses 4.5.3   and 4.5.4)   1. **Distribution of DL/UL Total PRB usage** (available at DU; as specified in 3GPP TS 28.552 [6], clauses 5.1.1.2.3 and 5.1.1.2.4 and in 3GPP TS 32.425   [7], clauses 4.5.10 and 4.5.11)   1. **DL/UL PRB used for data traffic** (available at DU; optionally split into subcounters per QoS level (mapped 5QI or QCI in NR option 3) and subcounters per supported S-NSSAI, as specified in 3GPP TS 28.552 [6], clauses 5.1.1.2.5 and 5.1.1.2.7) 2. **DL/UL PRB usage for traffic** (per QCI, as specified in 3GPP TS 32.425 [7], clauses 4.5.1 and 4.5.2) 3. **DL/UL Total available PRB** (available at DU; as specified in 3GPP TS 28.552 [6], clauses 5.1.1.2.6 and 5.1.1.2.8) 4. **DL/UL PRB full utilization** (as specified in 3GPP TS 32.425 [7], clauses 4.5.9.1 and 4.5.9.2) 5. **Total number of DL/UL TBs** (available at DU; split into subcounters per layer at MU-MIMO case, as specified in 3GPP TS 28.552 [6], clauses 5.1.1.7.3 and 5.1.1.7.8 and in 3GPP TS 32.425 [7], clauses 4.5.7.1 and 4.5.7.3) 6. **Total error number of DL/UL TBs** (available at DU; split into subcounters per layer at MU-MIMO case, as specified in 3GPP TS 28.552 [6], clauses   5.1.1.7.4 and 5.1.1.7.9 and in 3GPP TS 32.425 [7], clauses 4.5.7.2 and 4.5.7.4)   1. **Average DL UE throughput in gNB** (available at DU; optionally split into subcounters per QoS level (mapped 5QI or QCI in NR option 3) and subcounters per supported S-NSSAI, as specified in 3GPP TS 28.552 [6], clause 5.1.1.3.1) 2. **Distribution of DL UE throughput in gNB** (available at DU; optionally split into subcounters per QoS level (mapped 5QI or QCI in NR option 3) and subcounters per supported S-NSSAI, as specified in 3GPP TS 28.552 [6], clause 5.1.1.3.2) 3. **Packet Delay** (available at DU and CU-UP; optionally split into subcounters per QoS level (mapped 5QI or QCI in NR option 3) and subcounters per supported S-NSSAI, as specified in 3GPP TS 28.552 [6], clause 5.1.3.3) 4. **RAN part packet delay components** (as specified in 3GPP TS 38.314 [16], clause 4.2.1.2) 5. **Packet Delay** (per QCI, as specified in 3GPP TS 36.314 [9], clause 4.1.4) 6. **DL/UL Cell PDCP SDU Data Volume** (available at CU-UP; per PLMN ID and per QoS level (mapped 5QI) and per S-NSSAI, as specified in 3GPP TS   28.552 [6], clause 5.1.2.1 for non-split gNB, clause 5.1.3.6.2 for split gNB; per |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Measurement Type** | | **Measurement Examples** |
|  |  | PLMN ID and per E-RAB QoS profile (QCI, ARP and GBR), as specified in 3GPP TS 32.425 [7], clause 4.4.7)  **16. Mean number of Active UEs in the DL/UL per cell** (available at DU; optionally split into subcounters per QoS level (mapped 5QI or QCI in NR option 3) and subcounters per supported S-NSSAI, as specified in 3GPP TS  28.552 [6], clauses 5.1.1.23.1 and 5.1.1.23.3)  **17. Max number of Active UEs in the DL/UL per cell** (available at DU; optionally split into subcounters per QoS level (mapped 5QI or QCI in NR option 3) and subcounters per supported S-NSSAI, as specified in 3GPP TS  28.552 [6], clauses 5.1.1.23.2 and 5.1.1.23.4)   1. **Average number of Active UEs** (per QCI, as specified in 3GPP TS 32.425 [7], clause 4.4.2) 2. **Packet Loss Rate** (available at CU-UP or DU; optionally split into subcounters per QoS level (mapped 5QI or QCI in NR option 3) and subcounters per supported S-NSSAI, as specified in 3GPP TS 28.552 [6], clause 5.1.3.1) 3. **Packet Loss Rate** (per QCI, as specified in 3GPP TS 32.425 [7], clause 4.4.4) 4. **DL Packet Drop Rate** (available at CU-UP or DU; optionally split into subcounters per QoS level (mapped 5QI or QCI in NR option 3) and subcounters per supported S-NSSAI, as specified in 3GPP TS 28.552 [6], clause 5.1.3.2) 5. **DL Packet Drop Rate** (per QCI, as specified in 3GPP TS 32.425 [7], clause 4.4.3.2) |
| UE-level | Radio channel info in CU-CP | 1. **SINR** (as specified in 3GPP TS 38.331 [18] and 3GPP TS 36.331 [11]) 2. **RSRP** (as specified in 3GPP TS 38.331 [18] and 3GPP TS 36.331 [11]) 3. **RSRQ** (as specified in 3GPP TS 38.331 [18] and 3GPP TS 36.331 [11]) |
| L2 | **CQI, MCS**  **DL/UL UE throughput DL/UL UE PRB usage RLC buffer size**  **RLC occupied buffer RLC unused buffer UL/DL MAC rate Packet Delay**  **Packet Interval**  **Packet Jitter, eg. Packet Interval Jitter, Packet Size Jitter**  **Data volume** (per UE, as specified in 3GPP TS 36.314 [9], clause 4.1.8) Data volume (per UE)  **Packet Loss Rate per DRB per UE** (as specified in 3GPP TS 38.314 [16], clause 4.2.1.5) |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Measurement Type** | | **Measurement Examples** |
|  |  | **Block Error Rate**  **DL Packet Drop Rate**  **Total number of RLC SDUs/PDUs** |
| Slice-level | L2 | **DL/UL UE PRB usage RLC buffer size**  **RLC occupied buffer RLC unused buffer UL/DL MAC rate Packet Delay**  **Packet Interval**  **Packet Jitter, eg. Packet Interval Jitter, Packet Size Jitter**  **Data volume** (per QCI, as specified in 3GPP TS 36.314 [9], clause 4.1.8)  **Data volume** (per 5QI)  **Packet Loss Rate per DRB per UE Block Error Rate**  **DL Packet Drop Rate** (as specified in 3GPP TS 28.552 [6], clause 5.1.3.2)  **Total number of RLC SDUs/PDUs** |

</div>

### RAN analytics information exposed by Near-RT RIC

Based on the measurements from E2 nodes, with QoE related AI/ML models, the Near-RT RIC infers the RAN analytics information and expose it to RAI service consumer. The exposed RAN analytics information will be helpful for the applications to evaluate network status and execute logic control, e.g., TCP transmission window adjustment, video coding rate selection to improve QoE.

The examples of RAN analytics information are listed in table 4.5.5-1 below.

###### Table 4.5.5-1: RAN analytics information

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Measurement Type** | | **Measurement Examples** |
| UE-level | Predicted RAN performance | 1. **Minimum/maximum/average throughput** 2. **Minimum/maximum/average latency** 3. **Average packet loss rate** 4. **QoE prediction** |
| Prediction related information | 1. **Confidence** 2. **Validity period** |

</div>

## Network energy saving

This use case provides the motivation, description, and requirements for Near RT RIC and E2 interface to support network energy saving, whose end-to-end requirements are specified in [32].

The RAN is responsible for the majority of the Energy Consumption (EC) of a mobile network, and the O-RU consumes the largest part of the energy consumption of the RAN. The rarefication of fossil fuel-based energy resources and the urgent need to reduce CO2 emissions make energy saving a strategic goal for network operators, in addition to the significant energy related OPEX reduction requirement.

Energy consumption can be reduced by improving the Energy Efficiency (EE) of the network, and by introducing different Energy Saving (ES) mechanisms. Several ES mechanisms are related to switching off certain components and resources in the network and differ from one another by their time scale. In a longer time-scale of minutes, hours and above, and when the cell load is low, ES can be achieved by switching off one or more carriers or the cell itself. At the same or shorter time-scale, from seconds to minutes, ES can be achieved by switching off RF channels (including possibly array of antennas) of a Massive-MIMO (mMIMO) system. At a shorter time-scale corresponding to a symbol, subframe and frame, Advanced Sleep Modes (ASM) can be considered (see ORAN-WG1.Use Cases Energy Saving Technical Report R003 v02.00 [i.4], 3GPP TR 28.813 [i.5] and 3GPP TS 28.310 [33]).

The ES use cases are divided into three sub-use cases, which have different properties, the time scale of the control and the controlled system involved:

1. Carrier and cell switch off/on
2. RF channel reconfiguration
3. Advanced Sleep Modes

Another mechanism to achieve ES is to apply PRB blanking optimization. Blanking the PRBs saves power in many components in the O-RU due to the reduced input/output power and processing load. PRB blanking also supports interference reduction in a multi-cell environment. PRB blanking optimization is applicable to all three time-scales (longer time-scale of minutes or above, shorter time-scale from seconds to minutes as well as even shorter time-scale corresponding to a symbol, subframe and frame).

### Carrier and cell switch off/on

#### Background and goal of the use case

Carrier and cell switch off/on control by the Non-RT or Near-RT RIC can consider overall network energy efficiency instead of local optimization. In addition to the ES optimization in the SMO/Non-RT RIC, optimizing network EC in the Near-RT RIC brings significant gains due to more UE centric, near-real-time intelligent control capabilities with finer granularity. The AI/ML models' functionality in the Near-RT RIC can include prediction of future traffic, user mobility, resource usage, QoS and QoE on a per UE basis and may also predict expected energy efficiency enhancements, resource usage, and network performance for different carrier and cell switching off/on options. Based on the predicted results, optimized ES control actions or policies can be given by the Near-RT RIC to E2 nodes in near-real-time manner to track the dynamic network conditions. ES control also includes preparation actions (before carrier and cells are switched off) and post control actions (after carrier and cells are switched on) such as checking ongoing emergency calls and warning messages, enabling/disabling/modifying carrier aggregation and/or dual connectivity, steering traffic and handing over UEs from source cells/carriers to other cells/carriers, changing MU- MIMO layers, beam scheduling policies and SSB burst configurations etc, which can be handled in the Near-RT RIC by the intelligent and UE centric RAN control capabilities coordinated with the SMO/Non-RT RIC.

The goal of Near-RT RIC energy saving is to interpret the policies received over A1 and to determine the optimum changes it can make according to these policies. More specifically, Near-RT RIC triggers E2 procedure and related control/policies so as to obtain network performance that would fulfill the criteria identified in the A1 policies. It may also leverage the A1 enrichment information to make more informed decisions. Traffic steering may reuse mechanisms provided by other use cases to affect the changes necessary to achieve its goals. The Near-RT RIC may also work in background processing without the A1 policy guidance from the Non-RT RIC.

#### Entities/resources involved in the use case

1. Near-RT RIC:
   1. Near-real-time monitoring of energy saving related performance measurements.
   2. Receive energy saving xApps from SMO.
   3. Support interpretation and enforcement of A1 policies from Non-RT RIC.
   4. Support enrichment information via the A1 interface.
   5. Perform optimized RAN (E2) actions to achieve ES requirements based on O1 configuration, A1 policy, A1 enrichment information and E2 reports.
2. E2 node:
   1. Support ES optimization actions or policy enforcements via E2.
   2. Support ES related performance measurements through O1.
   3. Support ES related performance reports through E2.

#### Solution

There are three general ES processing modes and the transitions between them. The three processing modes, baseline, background and A1 policy-based, as described in clause 4.1.3 for traffic steering use case applies to the energy saving use case as is except that the modes represent the way the Near-RT RIC operates on a given E2 node rather than UE specific.

The context of ES optimization by carriers and cell switching off/on is captured in table 4.6.1.3-1.

###### Table 4.6.1.3-1: ES optimization by carriers and cell switching off/on

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Drive energy saving cell switching off/on optimization in accordance with RAN OAM configured background behavior (mode 1) or policies information from the  Non-RT RIC using A1 interface (mode 2). |  |
| Actors and Roles | * Non-RT RIC in SMO domain: Creates and updates A1 policies, provide A1 enrichment information. * Near-RT RIC: Enforces A1 policies and generates RIC CONTROL and/or POLICY. * E2 node: RIC CONTROL and POLICY execution and RIC REPORT creation.   Refer to 4.6.1.2 for more details. |  |
| Assumptions | * All relevant functions and components are instantiated. * A1, O1 and E2 interface connectivity is established. * A1 policy scope defined. |  |
| Pre-conditions | * Network is operational with default configuration. * OAM functions have configured a baseline measurement configuration and the Non-RT RIC has access to this data. * OAM functions have configured baseline traffic steering parameters in E2 node(s) through O1 interface. * (optional) If ES mode 1, OAM functions have configured background ES behavior to the Near-RT RIC through O1 interface. * Non-RT RIC analyzes the historical data from RAN for training the relevant AI/ML models to be deployed or updated in the Near-RT RIC, as well as   AI/ML models required for non-real-time optimization of configuration and policies. |  |
| Begins when | Energy saving optimization by cell switching off/on is activated or an operator defined trigger is detected. |  |
| Step 1 (O) | (Start of outer loop control)  If ES mode 1, OAM functions collect data from E2 node through O1 interface. |  |
| Step 2 (O) | Non-RT RIC retrieve ES related performance data from OAM function. |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Step 3 (O) | Non-RT RIC evaluates the collected data and A1 policy feedback, if required,  and generates or updates the appropriate ES optimization policy, such as ES targets and carrier/cell switching off/on guidance, etc. |  |
| Step 4 (O) | Non-RT RIC sends the ES optimization policy to Near-RT RIC via A1 interface. |  |
| Step 5 (O) | Non-RT RIC sends optional ES related A1 enrichment information. |  |
| Step 6 (O) | If ES mode 2, Near-RT RIC collects data from E2 node through E2 interface. |  |
| Step 7 (O) | Near-RT RIC evaluates the collected data, if required, generates or updates the  internal background mode ES optimization targets or policies. |  |
| Step 8 (M) | (Start of inner loop control)  Near-RT RIC subscribes to a UE context information and measurement metrics via E2 interface. |  |
| Step 9 (M) | E2 nodes report the UE context information and E2 measurements via RIC  REPORT periodically or event-triggered. |  |
| Step 10 (M) | Near-RT RIC evaluates the performance data from E2 nodes and finds potential improvements to energy efficiency which are indicated in the A1 policy and/or  internal Near-RT RIC TS targets. |  |
| Step 11 (O) | Based on the UE context information, E2 measurement metrics (RIC REPORT), and A1 policy, Near-RT RIC may generate new or modify the existing E2 policies and sends them to E2 nodes.  E2 node functions target of E2 policy may be:   * E-UTRAN-NR dual connectivity * Carrier aggregation * Connected mode mobility * Idle mode mobility * Radio access control * Cell switching off/on control |  |
| Step 12 (O) | Near-RT RIC may also generate control command(s) and send them to E2 node(s) to trigger re-allocation of radio resources and switching off/on carrier and cells so that the overall network energy efficiency can be improved.  E2 node functions target of E2 control command may be:  - Same as Step 11  (End of inner loop control) |  |
| Step 13 (O) | For ES mode 2, Near RT-RIC may send A1 policy feedback on A1 to the Non- RT RIC.  (End of outer loop control) |  |
| Step 14 (O) | Non-RT RIC decides to delete ES optimization policy in case of ES mode 2 and  sends the related messages. |  |
| Step 15,16 (M) | Following A1 policy deletion (mode 2) or internal trigger (mode 1), the Near-RT RIC terminates the ES optimization procedure and delete the related RIC  subscriptions. |  |
| Ends when | ES optimization is deactivated, or an operator defined trigger is detected. |  |
| Exceptions | None. |  |
| Post Conditions | Energy saving over a period of time is achieved. |  |
| Traceability | REQ-E2-ES-FUN1, REQ-E2-ES-FUN2, REQ-Near-RT-RIC-ES-FUN1, REQ-  Near-RT-RIC-ES-FUN2,REQ-Near-RT-RIC-ES-FUN3 |  |

</div>

@startuml autonumber

skinparam ParticipantPadding 4

skinparam BoxPadding 8

skinparam defaultFontSize 12

Box "Service Management and Orchestration" #gold Participant OAM as "OAM Functions" Participant non as "Non-RT RIC"

End box

Box "O-RAN" #lightpink

Participant near as "Near-RT RIC" Participant ran as "E2 Node"

End box

group OUTER LOOP CONTROL

OAM <--> ran : (Mode 2) <<O1>> RAN Data collection

OAM --> non: (Mode 2) ES related performance information

non --> non: (Mode 2) Collected data evaluation and policy creation

non --> near : (Mode 2) <<A1>> A1 policy setup or update

non --> near: (opt.) <<A1-EI>> ES related A1 enrichment information near <--> ran: (Mode 1) <<E2>> RAN Data collection

near --> near: (Mode 1) Collected data evaluation and policy creation

group INNER LOOP CONTROL

near -> ran : <<E2>> RIC SUBSCRIPTION REQUEST(UE context & measurement metrics) ran -> near: <<E2>> RIC INDICATION (UE context & E2 measurement metrics)

near -> near: Evaluation, potential improvement to energy efficiency

near -> ran : (opt.) <<E2>> RIC SUBSCRIPTION REQUEST (ES optimisation POLICY) near -> ran : (opt.) <<E2>> RIC CONTROL REQUEST (ES optimisation RIC CONTROL)

end

non <-- near: (Mode 2) <<A1>> A1 policy feedback end

non --> near: (Mode 2) <<A1>> A1 policy delete near -> near: ES optimization stopped

near-> ran: <<E2>> RIC SUBSCRIPTION DELETE

@enduml

The flow diagram of the ES optimization by carriers and cell switching off/on is given in figure 4.6.1.3-1.

![PlantUML diagram]({{site.baseurl}}/assets/images/5d4f7f52f194.jpg)

###### Figure 4.6.1.3-1: ES optimization by carriers and cell switching off/on

#### Required data

This clause elaborates the Near-RT RIC and the E2 node capabilities necessary for implementation of the ES carrier and cell switch off/on use case. The requirements are specified in clause 5.

##### Control over E2

1. **Radio access control:** Access control may be applied to restrict access of other UEs for a specific cell in order to prepare for switching off the cell to save energy. A cell-level, UE-level, or slice-level access control can be applied. Four categories of radio access control are indicated as below:
   * RACH backoff
   * RRC connection reject
   * RRC connection release
   * Access barring

Both RIC POLICY and RIC CONTROL can be used.

1. **Mobility control:** For example, a neighbouring cell may be selected in order to switch off the current serving cell. A neighbour handover restriction list may be configured to prevent the UEs from HO to some neighbour cells in order to reduce traffic load of the neighbour cells and switch them off.
   * Handover from the source cell to the target cell
   * Configuration/reconfiguration of handover restriction list
   * Configuration of idle mode mobility parameters
   * Enable, disable, or modify CA (as specified in 3GPP TS 38.473 [21], 3GPP TS 38.331 [18] and 3GPP TS 36.331 [11])
   * Enable, disable, or modify dual connectivity (as specified in 3GPP TS 38.473 [21], 3GPP TS 38.331 [18] and 3GPP TS 36.331 [11])

Both RIC POLICY and RIC CONTROL can be used.

1. **Carriers and cell switch off/on control:** Depending on the traffic condition, certain number of carriers and cells can be switched off by the Near-RT RIC by sending guidance to the E2 node when the traffic is low in order to save energy. When the network conditions deteriorate (e.g., congested traffic, frequent handover failure and/or RA failure), carrier/cell switch- on control command could be sent to E2 node in E2 policy/control to activate the cell/carrier from energy saving and hence ensure network performance.

NOTE: Once E2 node receives the guidance from Near-RT RIC for switching off/on a cell/carrier, it is not expected that the cell/carrier can be switched off immediately. The E2 node can take time to do all necessary actions to prepare for switching off/on the carrier/cell and there is also a delay in O-RU and open fronthaul interface for switching off/on the cell/carrier. However, it is still expected, as specified in [32], that the Near-RT RIC to send this intent to the E2 node to start the process for cell/carrier switching off/on after the network performance and energy efficiency are jointly optimized through for example traffic steering and QoS/QoE optimisation by the Near-RT RIC through 1) and 2). The E2 node (e.g., O-CU-CP) can optionally do traffic steering and OoS optimisation upon receiving this command from the Near-RT RIC before triggering the cell/carrier switching off/on.

Either RIC POLICY or RIC CONTROL can be used which is not addressed in the present document.

##### UE context information from E2 nodes

The followings are examples of UE context information identified as required:

UE ID (as specified in [32])

Slice level: S-NSSAI

DRB level: e.g., established DRB ID, mapping with QoS flows, etc.

QoS related: e.g., E-RAB level QoS parameters (4G, NSA) or QoS flow level QoS parameters (NG-RAN)

UE capabilities: CA and DC capabilities

For example, UE ID, S-NSSAI, DRB ID, or QCI/5QI can be used to derive the QoS requirements and the resource occupation; the UE capabilities may be required to select the appropriate RRM action (e.g., CA/DC configuration).

##### Measurements from E2 nodes

The E2 measurements are necessary for inference and prediction in the Near-RT RIC as the driver for decisions in addition to KPMs. For the energy saving carrier and cell switch off/on use case, the Near-RT RIC can translate an A1 policy (relatively static targets) into a flexible selection of controls over E2 (e.g., handover control, DC, CA, idle mode mobility, carrier and cell switching off/on) by taking into account the RAN resource utilization, cell level and the UE level performance, the radio and traffic conditions, QoS and QoE requirements and energy consumption and efficiency etc.

The examples of measurement information identified as required are listed in table 4.6.1.4.3-1.

###### Table 4.6.1.4.3-1: Measurements from E2 nodes

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Measurement**  **Type** | **Measurement Examples** |
| Cell/SSB area related measurements | * DL/UL Total PRB Usage, Distribution of DL/UL Total PRB Usage, DL/UL GBR PRB Usage, DL/UL non-GBR PRB Usage, RRC Connection Number, Available RRC Connection Capacity Value, Mean and Maximum Number of Active UEs per DRB in the DL/UL, DL/UL Scheduling PDCCH CCE Usage, DL/UL Composite Available Capacity, DL/UL Cell PDCP SDU Data Volume (including secondary RAT usage for EN-DC/MR- DC), Handover success ratio * DL/UL SSB Area Total PRB Usage, DL/UL SSB Area GBR PRB Usage, DL/UL SSB Area non-GBR PRB Usage, SSB Area Capacity Value * DL/UL PRB usage per QCI, DL/UL PRB usage per 5QI, DL/UL PRB usage per slice, Slice Available Capacity Value   *As specified in 3GPP TS 32.425 [7], 3GPP TS 28.552 [6], 3GPP TS 36.314 [9], 3GPP TS*  *38.314 [16], 3GPP TS 38.423 [19], 3GPP TS 38.463 [20] and 3GPP TS 38.473 [21]* |
| E2 node user plane measurements per- UE/UE group | * Average DL/UL throughput * DL/UL PRB usage * DL/UL Scheduled IP throughput * Buffer Status Information (e.g., UL BSR)   *As specified in 3GPP TS 32.425 [7], 3GPP TS 28.552 [6], 3GPP TS 36.314 [9], 3GPP TS*  *38.314 [16], 3GPP TS 38.423 [19], 3GPP TS 38.473 [21], 3GPP TS 38.463 [20], 3GPP TS*  *36.321 [10], 3GPP TS 38.321 [17]* |
| UE L1/L2/L3  measurements | * RSRP and RSRQ measurements * SINR measurements * CQI/MCS measurements * Location and Velocity measurements   *As specified in 3GPP TS 36.331 [11] and 3GPP TS 38.331 [18]* |
| Energy consumption measurement | Energy consumption measurement of O-RU   * PNF Power Consumption (average/min/max) * PNF Energy Consumption (average/min/max)   *As specified in 3GPP TS 28.552 [6]* |
| Mobility and RA related KPIs/measurements of UE/UE group | Mobility and RA related KPIs/measurements from the E2 nodes hosting the target NES cell(s) and/or the neighbour cell(s) to the target NES cell(s)   * Handover failure related, e.g., number of handover failures related to MRO * RACH failure related, e.g., distribution of RACH access delay * Radio link failure reports * UE context release related, e.g., number of UE context release requests   *As specified in 3GPP TS 36.331 [11], 3GPP TS 38.331 [18], 3GPP 32.425 [7], 3GPP 28.552*  *[6]* |

</div>

##### E2 node configuration

Cell level configuration parameters in order to configure UE measurements required for traffic steering and QoS/QoE optimization (see clause 4.1.4.4) for optionally preparing for and optimizing network performance and efficiency before cell/carrier switching off/on.

### Advanced sleep mode

#### Background and goal of the use case

During DL transmission or UL reception, certain O-RU components (e.g., PA, LNA and baseband etc) can be powered off during blank OFDM symbols and slots. For power saving at the symbol level, PA and LNA can be turned off since their transition period (on to off and off to on) can be in a few microseconds (micro sleep). For power saving at slot level, additional HW can be turned off to save more energy if the transition time allowed is in a few milliseconds (light sleep). For power saving at frame level, even more HW can be turned off (e.g., only maintain O-RU M-plane processing) however higher transition delay, in 100 msec, is expected. For micro and light sleeps, Near-RT RIC can play important roles which based on AI/ML solutions can help to create more sleeping opportunities in the E2 nodes to save energy by e.g., steering traffic, influencing traffic

shaping/scheduling, and adjusting common channel (SS/RS) configurations etc. For deep sleeps, where traffic prediction and more capacity, coverage, accessibility and QoS/QoE impacts awareness is needed because of the long-term traffic interruption (e.g., >100ms), Near-RT RIC is the sensible place to guide the system into deep mode due to the rich UE centric data and AI/ML solutions available in the Near-RT RIC.

The goal of Near-RT RIC energy saving is to interpret the policies received over A1 and to determine the optimum changes it can make according to these policies. More specifically, Near-RT RIC triggers E2 procedure and related control/policies so as to obtain network performance that would fulfill the criteria identified in the A1 policies. It may also leverage the A1 enrichment information to make more informed decisions. Traffic steering may reuse mechanisms provided by other use cases to affect the changes necessary to achieve its goals. The Near-RT RIC may also work in background processing without the A1 policy guidance from the Non-RT RIC.

#### Entities/resources involved in the use case

See clause 4.6.1.2.

#### Solution

The three processing modes, baseline (mode 0), background (mode 1) and A1 policy-based (mode 2), as described in clause

4.1.3 for traffic steering use case applies to this use case also as is except that the modes represent the way the Near-RT RIC operates on a given E2 node rather than UE specific.

The context of energy saving ASM optimization is captured in table 4.6.2.3-1.

###### Table 4.6.2.3-1: Energy saving ASM optimization

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Drive energy saving Advanced Sleep Mode (ASM) optimization in accordance with RAN OAM configured background behavior (ES mode 1) or policies  information from the Non-RT RIC using A1 interface (ES mode 2). |  |
| Actors and Roles | * Non-RT RIC in SMO domain: Creates and updates A1 policies, provide A1 enrichment information. * Near-RT RIC: Enforces A1 policies and generates RIC CONTROL and/or POLICY. * E2 node: RIC CONTROL and POLICY execution and RIC REPORT creation.   Refer to 4.6.2.2 for more details. |  |
| Assumptions | * All relevant functions and components are instantiated. * A1, O1 and E2 interface connectivity is established. * A1 policy scope defined. |  |
| Pre-conditions | * Network is operational with default configuration. * OAM functions have configured a baseline measurement configuration and the Non-RT RIC has access to this data. * OAM functions have configured baseline ES parameters in E2 node(s) through O1 interface. * (optional) If ES mode 1, OAM functions have configured background ES behavior to the Near-RT RIC through O1 interface. * Non-RT RIC analyzes the historical data from RAN for training the relevant AI/ML models to be deployed or updated in the Near-RT RIC, as well as AI/ML models required for non-real-time optimization of configuration and   policies. |  |
| Begins when | Energy saving ASM optimization is activated, or an operator defined trigger is detected. |  |
| Step 1 (O) | (Start of outer loop control)  If ES mode 2, OAM functions collects data from E2 node through O1 interface. |  |
| Step 2 (O) | Non-RT RIC retrieve ES related performance data from OAM function. |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Step 3 (O) | Non-RT RIC evaluates the collected data and A1 policy feedback, if required,  and generates or updates the appropriate ES optimization policy, such as energy saving and performance targets and ASM guidance, etc. |  |
| Step 4 (O) | Non-RT RIC sends the ES optimization policy to Near-RT RIC via A1 interface. |  |
| Step 5 (O) | Non-RT RIC sends optional ES related A1 enrichment information. |  |
| Step 6 (O) | If ES mode 1, Near-RT RIC collects data from E2 node through E2 interface. |  |
| Step 7 (O) | Near-RT RIC evaluates the collected data, if required, generates, or updates  the internal background mode ES optimization targets or policies. |  |
| Step 8 (M) | (Start of inner loop control)  Near-RT RIC subscribes to a UE context information and measurement metrics via E2 interface. |  |
| Step 9 (M) | E2 nodes report the UE context information and E2 measurements via RIC  REPORT periodically or event triggered. |  |
| Step 10 (M) | Near-RT RIC evaluates the performance data from E2 nodes and finds potential improvements to energy efficiency which are indicated in the A1 policy and/or  internal Near-RT RIC TS targets. |  |
| Step 11 (O) | Based on the UE context information, E2 measurement metrics (RIC REPORT), and A1 policy, Near-RT RIC may generate new or modify the existing E2 policies and sends them to E2 nodes.  E2 node functions target of E2 policy may be:   * Mobility control * Radio access control * ASM scheduler policy setting * Common channel configurations * Sleep mode configurations |  |
| Step 12 (O) | Near-RT RIC may also generate control command(s) and send them to E2 node(s) to trigger the reconfiguration of radio resources, traffic steering, reconfiguration of common channels and entering/leaving deep sleep mode.  E2 node functions target of E2 control command may be:  - Same as Step 11  (End of inner loop control) |  |
| Step 13 (O) | For ES mode 2, Near RT-RIC may send A1 policy feedback on A1 to the Non- RT RIC.  (End of outer loop control) |  |
| Step 14 (O) | Non-RT RIC decides to delete ES optimization policy in case of ES mode 2 and  sends the related messages. |  |
| Step 15,16 (M) | Following A1 policy deletion (mode 2) or internal trigger (mode 1), the Near-RT  RIC terminates the ES optimization procedure and delete the related RIC subscriptions. |  |
| Ends when | ES optimization is deactivated, or an operator defined trigger is detected. |  |
| Exceptions | None. |  |
| Post Conditions | Energy saving over a period of time is achieved. |  |
| Traceability | REQ-Near-RT-RIC-ES-FUN1, REQ-Near-RT-RIC-ES-FUN2, REQ-Near-RT- RIC-ES-FUN4, REQ-E2-ES-FUN2, REQ-E2-ES-FUN3, REQ-E2-ES-FUN4,  REQ-E2-ES-FUN5 |  |

</div>

@startuml autonumber

skinparam ParticipantPadding 4

skinparam BoxPadding 8

skinparam defaultFontSize 12

Box "Service Management and Orchestration" #gold Participant OAM as "OAM Functions" Participant non as "Non-RT RIC"

End box

Box "O-RAN" #lightpink

Participant near as "Near-RT RIC" Participant ran as "E2 Node"

End box

group OUTER LOOP CONTROL

OAM <--> ran : (Mode 2) <<O1>> RAN Data collection

OAM --> non: (Mode 2) ES related performance information

non --> non: (Mode 2) Collected data evaluation and policy creation

non --> near : (Mode 2) <<A1>> A1 policy setup or update

non --> near: (opt.) <<A1-EI>> ES related A1 enrichment information near <--> ran: (Mode 1) <<E2>> RAN Data collection

near --> near: (Mode 1) Collected data evaluation and policy creation

group INNER LOOP CONTROL

near -> ran : <<E2>> RIC SUBSCRIPTION REQUEST(UE context & measurement metrics) ran -> near: <<E2>> RIC INDICATION (UE context & E2 measurement metrics)

near -> near: Evaluation, potential improvement to energy efficiency

near -> ran : (opt.) <<E2>> RIC SUBSCRIPTION REQUEST (ES optimisation POLICY) near -> ran : (opt.) <<E2>> RIC CONTROL REQUEST (ES optimisation RIC CONTROL)

end

non <-- near: (Mode 2) <<A1>> A1 policy feedback end

non --> near: (Mode 2) <<A1>> A1 policy delete near -> near: ES optimization stopped

near-> ran: <<E2>> RIC SUBSCRIPTION DELETE

@enduml

The flow diagram of the energy saving ASM optimization is given in figure 4.6.2.3-1.

![PlantUML diagram]({{site.baseurl}}/assets/images/5d4f7f52f194.jpg)

###### Figure 4.6.2.3-1: Energy saving ASM optimization

#### Required Data

This clause elaborates the Near-RT RIC and the E2 node capabilities necessary for implementation of the ES ASM use case. The requirements are specified in clause 5.

##### Control over E2

1. **Radio access control:** Access control may be applied to restrict access of other UEs for a specific cell in order to create more sleeping opportunities for the cell. A cell-level, UE-level, or slice-level access control can be applied. Four categories of radio access control are indicated as below:
   * RACH backoff
   * RRC connection reject
   * RRC connection release
   * Access barring

Both RIC POLICY and RIC CONTROL can be used.

1. **Mobility control:** In order to reduce traffic load to create more sleeping opportunities on the targeted cells, serving cell can be chosen based on the resource status and QoS of the UE(s) and a neighbour handover restriction list may be configured to prevent the UEs from HO to some neighbour cells. The following procedures can be used for mobility control:
   * Handover from the source cell to the target cell
   * Configuration/reconfiguration of handover restriction list
   * Configuration of idle mode mobility parameters
   * Enable, disable, or modify CA (as specified in 3GPP TS 38.473 [21], 3GPP TS 38.331 [18] and 3GPP TS 36.331 [11])
   * Enable, disable, or modify dual connectivity (as specified in 3GPP TS 38.473 [21], 3GPP TS 38.331 [18] and 3GPP TS 36.331 [11])

Both RIC POLICY and RIC CONTROL can be used.

1. **NES related radio resource control,** such as configuration common channel periodicities and semi-persistent scheduling (SPS) to create more sleep opportunities including the following types of configurations:
   * SR periodicity reconfiguration (as specified in 3GPP TS 38.331 [18] and 3GPP TS 36.331 [11]): Both *sr-ProhibitTimer*

and *sr-TransMax* can be treated.

* + SPS configuration (as specified in 3GPP TS 38.331 [18] and 3GPP TS 36.331 [11]): Both *SPS-Config* (DL) and

*ConfiguredGrantConfig* (UL) can be treated.

* + CSI-RS periodicity configurations.
  + Common channel periodicity configurations.

NOTE: UE DTX/DRX slots overwrite the SR and SPS configurations since during DTX/DRX, SR and SPS transmission will be deactivated. SSB periodicity may be reconfigured by the Near-RT RIC (if the capability is exposed by the E2 node) on some cells such that the O-RU can have longer sleep duration which enables deeper sleep (more hardware components can be switched off) to save energy, however, the performance impact to UEs needs to be taken care by the operator and xApp/E2 node vendors.

Both RIC POLICY and RIC CONTROL can be used.

1. **ASM mode objectives:** Configuration of ASM mode objectives to the E2 node which can include:
   * Energy saving target, e.g., targeted energy saving in percentage of current average energy consumption or energy saving levels (e.g., maximum energy saving, medium energy saving, maximum performance etc.).
   * UE or cell level performance targets, e.g., throughput cap, throughput drop tolerance, latency target.
   * Preferred sleep mode, as specified in O-RAN.WG4.MP.0-R003-v13 [35], clause 20.4.1, sleep-mode-type of asm- capability-info.

Either RIC POLICY or RIC CONTROL can be used.

NOTE: After the objectives are configured, the E2 node shall try to achieve the objectives, however, whether the objectives can be met depends on the real traffic conditions and E2 node implementations. The E2 node reports if the ASM performance objective is applied and taken into operation. The E2 node also reports the related KPIs, as defined in clause 4.6.1.4.3, for Near- RT RIC to assess the performance changes comparing against the objectives and make further optimisation actions.

1. **Sleep mode configuration:** Depending on the current and predicted future traffic conditions, the Near-RT RIC may guide O-DU to move the carriers into sleep mode. Following the guidance, O-DU may decide to disable ("move to sleep mode") array carriers, tx-arrays or rx-arrays or the whole O-RU accordingly via the O-FH C-plane in order to save energy (see O- RAN.WG4.CUS.0-R003-v13 [34], table 7.4.6-7). The guided configurations can include:
   * Indication of the slot numbers, symbol numbers and the conditions for the sleep mode configuration to be applied.
   * The sleep mode (as specified in O-RAN.WG4.MP.0-R003-v13 [35], clause 20.4.1, sleep-mode-type of asm-capability- info) to be applied during the sleep period indicated in 1 above.

Either RIC POLICY or RIC CONTROL can be used.

NOTE: After the configuration, the E2 node shall try to achieve the configured sleep mode behaviour if the conditions are met, however, it is up to the E2 node to decide when and whether the configuration can be applied depending on the on-going traffic conditions within the E2 node. The E2 node reports if the sleep mode configuration is applied. The E2 node also report the related KPIs, as defined in clause 4.6.1.4.3, for Near-RT RIC to assess the performance changes comparing against the objectives and make further optimisation actions.

##### UE context information from E2 nodes

See clause 4.6.1.4.2.

##### Measurements from E2 nodes

See clause 4.6.1.4.3

##### E2 node configuration

Cell level configuration parameters in order to configure UE measurements required for traffic steering and QoS/QoE optimization (see clause 4.1.4.4) for creating more sleeping opportunities to save energy while maintaining acceptable performance.

O-RU and O-DU advanced sleep mode capabilities, as specified in O-RAN.WG4.MP.0-R003-v13 [35], clause 20.4.1, asm- capability-info, along with information about the mapping from cells to sector carriers and to O-RU are retrieved from O-DU in order to generate applicable and optimized energy saving related policies and controls.

### RF channel reconfiguration

#### Background and goal of the use case

In mobile networks, massive-MIMO array antennas are used to implement beamforming techniques, which boost the cell coverage, capacity, and spectrum efficiency for enhanced mobile broadband services. Due to the massive number of the active antenna elements and RF channels used in the massive-MIMO array, it can consume significantly more energy than conventional antenna solution. The goal of the RF channel reconfiguration energy saving use case is to reduce the power consumption of O- RUs for massive-MIMO by dynamically reconfiguring the number of active Tx/Rx array antenna elements. When the traffic load is low, fewer beams or MU-MIMO spatial layers are needed, therefore, fewer Tx/Rx array antenna elements can be active which can be reconfigured from Near-RT RIC dynamically leading to significant power savings. The number of active antenna element and the antenna element layout also have an impact to the signal coverage and spatial channel orthogonality translating to impact to the UE service of quality, which need to be handled by the Near-RT RIC to avoid the impact to the performance or finding the trade-off between energy saving and performance.

The goal of Near-RT RIC energy saving is to interpret the policies received over A1 interface. Based on policy and the current or predicted traffic and channel conditions, the Near-RT RIC then derive the best choices for O-RU Tx/Rx array configurations including e.g. number of active antenna element, antenna element layout, SU/MU MIMO layers etc and provide guided configurations to the O-DU. Following the guidance, O-DU may decide to disable ("putting to sleep") some or all array elements in a tx-array or rx-array (or both) accordingly via the O-FH C-plane in order to save energy (see O-RAN.WG4.CUS.0-R003-v14 [38], clause 7.2.9.2.3).

#### Entities/resources involved in the use case

See clause 4.6.1.2.

#### Solution

The context of energy saving RF channel reconfiguration optimization is captured in table 4.6.3.3-1.

###### Table 4.6.3.3-1: Energy saving RF channel reconfiguration optimization

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Use Case Stage** | **Evolution / Specification** |
| Goal | Drive energy saving RF channel reconfiguration optimization in accordance with RAN OAM configured background behavior (ES mode 1) or policies information  from the Non-RT RIC using A1 interface (ES mode 2). |
| Actors and Roles | * Non-RT RIC in SMO domain: Creates and updates A1 policies, provide A1 enrichment information. * Near-RT RIC: Enforces A1 policies and generates RIC CONTROL and/or POLICY. * E2 node: RIC CONTROL and POLICY execution and RIC REPORT creation.   Refer to 4.6.3.2 for more details. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Use Case Stage** | **Evolution / Specification** |
| Assumptions | * All relevant functions and components are instantiated. * A1, O1 and E2 interface connectivity is established. * A1 policy scope defined. |
| Pre-conditions | * Network is operational with default configuration. * OAM functions have configured a baseline measurement configuration and the Non-RT RIC has access to this data. * OAM functions have configured baseline ES parameters in E2 node(s) through O1 interface. * (optional) If ES mode 1, OAM functions have configured background ES behavior to the Near-RT RIC through O1 interface. * Non-RT RIC analyzes the historical data from RAN for training the relevant AI/ML models to be deployed or updated in the Near-RT RIC, as well as AI/ML models required for non-real-time optimization of configuration and   policies. |
| Begins when | Energy saving RF channel reconfiguration optimization is activated, or an  operator defined trigger is detected. |
| Step 1 (O) | (Start of outer loop control)  If ES mode 2, OAM functions collects data from E2 node through O1 interface. |
| Step 2 (O) | Non-RT RIC retrieve ES related performance data from OAM function. |
| Step 3 (O) | Non-RT RIC evaluates the collected data and A1 policy feedback, if required,  and generates or updates the appropriate ES optimization policy, such as energy saving and performance, etc. |
| Step 4 (O) | Non-RT RIC sends the ES optimization policy to Near-RT RIC via A1 interface. |
| Step 5 (O) | Non-RT RIC sends optional ES related A1 enrichment information. |
| Step 6 (O) | If ES mode 1, Near-RT RIC collects data from E2 node through E2 interface. |
| Step 7 (O) | Near-RT RIC evaluates the collected data, if required, generates or updates  the internal background mode ES optimization targets or policies. |
| Step 8 (M) | (Start of inner loop control)  Near-RT RIC subscribes to a UE context information and measurement metrics via E2 interface. |
| Step 9 (M) | E2 nodes report the UE context information and E2 measurements via RIC  REPORT periodically or event-triggered. |
| Step 10 (M) | Near-RT RIC evaluates the performance data from E2 nodes and finds potential improvements to energy efficiency or potential gap to A1 policy and/or internal  Near-RT RIC ES targets. |
| Step 11 (O) | Based on evaluation in Step 10, Near-RT RIC may generate new or modify the existing E2 policies and sends them to E2 nodes.  E2 node functions target of E2 policy may be:   * Connected mode mobility * Idle mode mobility * Radio access control * RF channel reconfiguration policy setting * Common channel configurations (SSB, CSI-RS) * TX/RX array configuration change |
| Step 12 (O) | Near-RT RIC may also generate control command(s) and send them to E2 node(s) to trigger the reconfiguration of radio resources, traffic steering, reconfiguration of common channels and entering/leaving deep sleep mode.  E2 node functions target of E2 control command may be:  - Same as Step 11  (End of inner loop control) |
| Step 13 (O) | For ES mode 2, Near RT-RIC may send A1 policy feedback on A1 to the Non- RT RIC.  (End of outer loop control) |
| Step 14 (O) | Non-RT RIC decides to delete ES optimization policy in case of ES mode 2 and  sends the related messages. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Use Case Stage** | **Evolution / Specification** |
| Step 15,16 (M) | Following A1 policy deletion (mode 2) or internal trigger (mode 1), the Near-RT RIC terminates the ES optimization procedure and delete the related RIC  subscriptions. |
| Ends when | ES optimization is deactivated, or an operator defined trigger is detected. |
| Exceptions | None. |
| Post Conditions | Energy saving over a period of time is achieved. |
| Traceability | REQ-Near-RT-RIC-ES-FUN1, REQ-Near-RT-RIC-ES-FUN2, REQ-Near-RT- RIC-ES-FUN3, REQ-Near-RT-RIC-ES-FUN5, REQ-Near-RT-RIC-ES-FUN6, REQ-E2-ES-FUN2, REQ-E2-ES-FUN4, REQ-E2-ES-FUN6, REQ-E2-ES-  FUN7 |

</div>

@startuml autonumber

skinparam ParticipantPadding 4

skinparam BoxPadding 8

skinparam defaultFontSize 12

Box "Service Management and Orchestration" #gold Participant OAM as "OAM Functions" Participant non as "Non-RT RIC"

End box

Box "O-RAN" #lightpink

Participant near as "Near-RT RIC" Participant ran as "E2 Node"

End box

group OUTER LOOP CONTROL

OAM <--> ran : (Mode 2) <<O1>> RAN Data collection

OAM --> non: (Mode 2) ES related performance information

non --> non: (Mode 2) Collected data evaluation and policy creation

non --> near : (Mode 2) <<A1>> A1 policy setup or update

non --> near: (opt.) <<A1-EI>> ES related A1 enrichment information near <--> ran: (Mode 1) <<E2>> RAN Data collection

near --> near: (Mode 1) Collected data evaluation and policy creation

group INNER LOOP CONTROL

near -> ran : <<E2>> RIC SUBSCRIPTION REQUEST(UE context & measurement metrics) ran -> near: <<E2>> RIC INDICATION (UE context & E2 measurement metrics)

near -> near: Evaluation, potential improvement to energy efficiency

near -> ran : (opt.) <<E2>> RIC SUBSCRIPTION REQUEST (ES optimisation POLICY) near -> ran : (opt.) <<E2>> RIC CONTROL REQUEST (ES optimisation RIC CONTROL)

end

non <-- near: (Mode 2) <<A1>> A1 policy feedback end

non --> near: (Mode 2) <<A1>> A1 policy delete

near -> near: ES optimization stopped near-> ran: <<E2>> RIC SUBSCRIPTION DELETE

@enduml

The flow diagram of the energy saving RF channel reconfiguration optimization is given in figure 4.6.3.3-1.

![A screenshot of a computer  Description automatically generated]({{site.baseurl}}/assets/images/5d4f7f52f194.jpg)

###### Figure 4.6.3.3-1: Energy saving RF channel reconfiguration optimization

#### Required data

This clause elaborates the Near-RT RIC and the E2 node capabilities necessary for implementation of the ES RF channel reconfiguration use case. The requirements are specified in clause 4.

##### Control over E2

1. **Radio access control:** See clause 4.6.2.4.1.
2. **Mobility control:** See clause 4.6.2.4.1.
3. **NES related radio resource control:** See clause 4.6.2.4.1
4. **TRX control performance objectives:** Configuration of TRX control performance objectives to the E2 node which can include:
   * Energy saving target, e.g. targeted energy saving in percentage of current average energy consumption or energy saving levels (e.g., maximum energy saving, medium energy saving, maximum performance, etc.).
   * UE or cell level performance targets, e.g., throughput cap, throughput drop tolerance, latency target.

Either RIC POLICY or RIC CONTROL can be used.

NOTE: After the objectives are configured, the E2 node shall try to achieve the objectives, however, whether the objectives can be met depends on the real traffic conditions and E2 node implementations. The E2 node reports if the TRX control objective is applied and taken into operation. The E2 node also reports the related KPIs, as defined in clause 4.6.1.4.3, for Near-RT RIC to assess the performance changes comparing against the objectives and make further optimisation actions.

1. **TRX control configuration:** Depending upon the current and future traffic predictions, the Near-RT-RIC may guide the O- DU to perform O-RU RF channel reconfigurations to reduce the overall power consumption of the O-RU. Following the guidance, O-DU may decide to disable ("putting to sleep") some or all array elements in a tx-array or rx-array (or both)

accordingly via the O-FH C-plane in order to save energy (O-RAN.WG4.CUS.0-R003-v14 [38], Table 7.4.6-7). The guided configurations can include:

* + Indication of the slot numbers, symbol numbers and the conditions for the TRX control configuration to be applied.
  + Indication of the array elements to be switched off during the period indicated above based on the TRX control capability information reported by the E2 node (O-DU), see clause 4.6.3.4.4. The capability information includes antenna mask values supported by the O-RU, see O-RAN.WG4.MP.0-R003-v14 [39], clause 20.3.1, trx-control-capability-info, for

more details.

* + The sleep mode (see O-RAN.WG4.MP.0-R003-v14 [39], clause 20.3.1, sleep-mode-type of trx-control-capability-info) to be applied during the sleep period indicated above.

Either RIC POLICY or RIC CONTROL can be used.

NOTE: After the configuration, the E2 node shall try to achieve the configured behaviour if the conditions are met, however, it is up to the E2 node to decide when and whether the configuration can be applied depending on the on-going traffic conditions within the E2 node. The E2 node reports if the TRX control configuration is applied. The E2 node also report the related KPIs, as defined in clause 4.6.1.4.3, for Near-RT RIC to assess the performance changes comparing against the objectives and make further optimisation actions.

Both RIC POLICY and RIC CONTROL can be used.

##### UE context information from E2 nodes

See clause 4.6.1.4.2.

##### Measurements from E2 nodes

See clause 4.6.1.4.3.

##### E2 node configuration

Cell level configuration parameters in order to configure UE measurements required for traffic steering and QoS/QoE optimization (see clause 4.1.4.4) for creating more RF channel reconfiguration opportunities to save energy while maintaining acceptable performance.

O-RU and O-DU TRX control capabilities, see O-RAN.WG4.MP.0-R003-v14 [39], clause 20.3.1, trx-control-capability-info, along with information about the mapping from cells to sector carriers and to O-RU are retrieved from O-DU in order to generate applicable and optimized energy saving related policies and controls.

### PRB blanking optimization

#### Background and goal of the use case

Blanking the PRBs saves power in many components in the O-RU due to the reduced input/output power and processing load. In addition, PRB blanking is being supported in clause 8.4.2 of WG4 Control, User and Synchronization Plane Specification as Data blanking [38] to meet objectives such as energy saving. Specifically, in clause 8.4.2.2, it said "PRB blanking is an inherent feature of the frequency-domain-based fronthaul split 7-2x, where unallocated PRBs are not sent across the fronthaul interface to reduce the fronthaul throughput. An unallocated PRB is a PRB with all REs unallocated". Currently, an O-DU can blank the PRBs during scheduling taking local performance targets such as energy consumption into consideration, and then signal the blanked or activated PRBs to O-RU via C-plane Section Type 1 messages. However, the Near-RT RIC is not able to send configurations/policies regarding PRBs to be blanked to an O-DU to influence the MAC scheduler behaviours for optimizing PRB allocations to meet different performance targets in a network with multiple cells. PRB blanking has also been leveraged

to achieve interference optimization in a network with multiple cells as specified in use case 26 of WG1 Use Cases Detailed Specification R004 v15.00.01 [49]. PRB blanking optimization by the Near-RT RIC can consider overall network performance improvements for both uplink and downlink including energy efficiency with system-level optimization instead of local-level optimization by an O-DU alone. Furthermore, the AI/ML models' functionality in the Near-RT RIC can include prediction of future traffic, user mobility, resource usage, QoS and QoE on a per UE basis and may also predict expected energy efficiency enhancements, resource usage, network performance and interference reduction for different PRB blanking optimization options. Based on the predicted results, optimized PRBs blanking control actions or policies can be given by the Near-RT RIC to E2 nodes in near-real-time manner.

The Near-RT RIC sends the two-dimensional (in both frequency and time domains) PRB blanking configurations or policies for uplink and/or downlink to each O-DU to consider for cells of interest in a multi-cell environment based on the evaluation of performance measurements collected and performance targets required. The performance measurements collected include e.g., EC, EE achieved, QoS including throughput and latency as well as interference. The performance targets include e.g., EC, EE, QoS and interference reduction. The Near-RT RIC decides the two-dimensional PRB blanking configurations or policies which include how many PRBs to blank and where those PRBs are in the frequency and time domain based on the trade-off analysis. The O-DU takes the PRB blanking configurations or policies as an input for its scheduler to make final resource allocations decision.

#### Entities/resources involved in the use case

1. Near-RT RIC:
   1. Receive PRB blanking optimization xApps.
   2. Monitor performance measurements in EE, QoS and interference.
   3. Perform optimized RAN (E2) actions to achieve performance targets based on E2 reports.
2. E2 node:
   1. Support PRB blanking optimization actions or policy enforcements via E2.
   2. Support PRB blanking optimization related performance reports through E2.

#### Solution

The context of PRB blanking optimization is captured in table 4.6.4.3-1.

###### Table 4.6.4.3-1: PRB blanking optimization to meet performance targets including ES

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Drive PRB blanking optimization in accordance with information from the E2  nodes. |  |
| Actors and Roles | * Near-RT RIC: Generates RIC CONTROL and/or POLICY. * E2 node: RIC CONTROL and POLICY execution and RIC REPORT creation. |  |
| Assumptions | * All relevant functions and components are instantiated. * E2 interface connectivity is established. |  |
| Pre-conditions | - Network is operational with default configuration. |  |
| Begins when | PRB blanking optimization for performance targets including ES is activated, or an operator defined trigger is detected. |  |
| Step 1 (M) | Near RT RIC generates or updates the appropriate PRB blanking optimization  policy such as data to collect as well as performance targets including ES. |  |
| Step 2 (M) | Near-RT RIC collects data from E2 node through E2 interface. |  |
| Step 3 (M) | Near-RT RIC evaluates the collected data. |  |
| Step 4 (M) | Near-RT RIC subscribes to a UE context information and measurement metrics  via E2 interface. |  |
| Step 5 (M) | E2 nodes report the UE context information and E2 measurements via RIC  REPORT or INDICATION. |  |
| Step 6 (M) | Near-RT RIC evaluates the data from E2 nodes and finds potential performance improvements including ES which are indicated in the performance targets. |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Steps 7, 8 (O) | Near-RT RIC generates two-dimensional PRB blanking optimization control and sends them to E2 node(s) or generates PRB blanking optimization policy so that the overall network performance including ES can be optimized. |  |
| Step 9 (M) | PRB blanking optimization is deactivated, or an operator defined trigger is detected. |  |
| Step 10 (M) | RIC SUBSCRIPTION DELETE |  |
| Ends when | PRB blanking optimization stops. |  |
| Exceptions | None. |  |
| Post Conditions | PRB blanking optimization over a period of time is achieved. |  |
| Traceability | REQ-Near-RT-RIC-ES-FUN7  REQ-E2-QoS-FUN1, REQ-E2-QoS-FUN2, REQ-E2-QoS-FUN3, REQ-E2- QoS-FUN4, QoS-FUN7, QoS-FUN8, REQ-E2-ES-FUN2, REQ-E2-ES-FUN8,  REQ-E2-ES-FUN9 |  |

</div>

@startuml autonumber

skinparam ParticipantPadding 4

skinparam BoxPadding 8

skinparam defaultFontSize 12

Box "O-RAN" #lightpink

Participant near as "Near-RT RIC" Participant ran as "E2 Node"

End box

near -> near: Near RT RIC generates or updates the appropriate PRB blanking optimization policy

near <--> ran: <<E2>> RAN Data collection near --> near: Collected data evaluation

near -> ran : <<E2>> RIC SUBSCRIPTION REQUEST (UE context & measurement metrics) ran -> near: <<E2>> RIC REPORT or INDICATION (UE context & E2 measurement metrics) near -> near: Evaluation, potential improvement to performance targets include EE near -> ran : (opt.) <<E2>> RIC CONTROL REQUEST (PRB blanking CONTROL)

near -> ran : (opt.) <<E2>> RIC SUBSCRIPTION REQUEST (PRB blanking POLICY)

near -> near: PRB blanking optimization stopped near-> ran: <<E2>> RIC SUBSCRIPTION DELETE

@enduml

The flow diagram of the performance targets optimization including ES by PRB blanking optimization is given in figure 4.6.4.3- 1.

![PlantUML Diagram]({{site.baseurl}}/assets/images/812829ebd8dc.png)

###### Figure 4.6.4.3-1: Performance targets optimization including ES by PRB blanking optimization

#### Required data

This clause elaborates the Near-RT RIC and the E2 node capabilities necessary for implementation of the PRB blanking optimization use case. The requirements are specified in clause 5.

##### Control over E2

1. **Radio resource allocation**. Near-RT RIC provides direct control for PRB blanking configurations to be applied at the E2 node. Configurations at cell level include:

- Configurations of two-dimensional PRBs to be blanked which is defined as configurations of PRB number to be blanked in the frequency domain within a time slot, and in the time domain across time slots.

Both RIC POLICY and RIC CONTROL can be used.

1. **PRB blanking policy.** Near-RT RIC provides policies to E2 node that describe ES target and other performance related targets the PRB blanking policies should achieve. The targets for performance objectives to the E2 node may include:
   * Energy saving target, e.g., targeted energy saving in percentage of current average energy consumption or energy saving levels (e.g., maximum energy saving, medium energy saving, maximum performance, etc.).
   * Cell level and UE performance targets, e.g. throughput cap, throughput drop tolerance, latency target.
   * Interference reduction target.
   * Preferred number of active or blanked PRBs. Either RIC POLICY or RIC CONTROL can be used.

##### UE context information from E2 nodes

The followings are examples of UE context information identified as required:

UE ID (as defined in [24])

Slice level: S-NSSAI

DRB level: e.g., established DRB ID, mapping with QoS flows, etc.

QoS related: e.g., E-RAB Level QoS Parameters (4G, NSA) or QoS Flow Level QoS Parameters (NG-RAN).

UE capabilities: CA and DC capabilities

##### Measurements from E2 nodes

The E2 measurements are necessary for inference and prediction in the Near-RT RIC as the driver for decisions in addition to KPMs. For the PRB blanking optimization use case, the Near-RT RIC evaluates performance measurements and performance targets and then produces E2 controls (e.g., PRB blanking configurations or policies) by considering the RAN resource utilization, cell level and the UE level performance, the radio and traffic conditions, QoS and QoE requirements, energy consumption and efficiency and interference, etc.

The examples of measurement information identified as required are listed in table 4.6.4.4.3-1.

###### Table 4.6.4.4.3-1: Measurements from E2 nodes

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Measurement**  **Type** | **Measurement Examples** |
| Cell/SSB area related measurements | * DL/UL Total PRB Usage, Distribution of DL/UL Total PRB Usage, DL/UL GBR PRB Usage, DL/UL non-GBR PRB Usage, RRC Connection Number, Available RRC Connection Capacity Value, Mean and Maximum Number of Active UEs per DRB in the DL/UL, DL/UL Scheduling PDCCH CCE Usage, DL/UL Composite Available Capacity, DL/UL Cell PDCP SDU Data Volume (including secondary RAT usage for EN-DC/MR- DC), Handover success ratio * DL/UL SSB Area Total PRB Usage, DL/UL SSB Area GBR PRB Usage, DL/UL SSB Area non-GBR PRB Usage, SSB Area Capacity Value * DL/UL PRB usage per QCI, DL/UL PRB usage per 5QI, DL/UL PRB usage per slice, Slice Available Capacity Value * UL interference per cell * UL interference per PRB per cell * UL interference per PRB per antenna branch per cell   *As specified in 3GPP TS 38.314 [16], 3GPP TS 38.463 [20], 3GPP TS 38.473 [21], 3GPP*  *TS 38.423 [19]* |
| E2 node user plane measurements per- UE/UE group | * Average DL/UL throughput * DL/UL PRB usage * DL/UL Scheduled IP throughput * Buffer Status Information (e.g., UL BSR)   *As specified in 3GPP TS 28.552 [6], 3GPP TS 38.314 [16], 3GPP TS 38.423 [19], 3GPP*  *TS 38.473 [21], 3GPP TS 38.463 [20], 3GPP TS 38.321 [17]* |
| UE L1/L2/L3  measurements | * RSRP, SS-RSRP and RSRQ measurements * SINR measurements * CQI measurements * MCS measurements * Location and Velocity measurements * Timing advance measurements   *As specified in 3GPP TS 38.331 [18], 3GPP TS 28.552 [6]* |
| Energy consumption measurement | Energy consumption measurement of O-RU   * PNF Power Consumption (average/min/max) * PNF Energy Consumption (average/min/max)   *As specified in 3GPP TS 28.552 [6]* |
| Mobility and RA related KPIs/measurements of UE/UE group | Mobility and RA related KPIs/measurements from the E2 nodes hosting the target NES cell(s) and/or the neighbour cell(s) to the target NES cell(s)   * Handover failure related, e.g., number of handover failures related to MRO * RACH failure related, e.g., distribution of RACH access delay * Radio link failure reports * UE context release related, e.g., number of UE context release requests   *As specified in 3GPP TS 38.331 [18], 3GPP 28.552 [6]* |

</div>

##### E2 node configuration

Cell level configuration parameters are needed at Near-RT RIC to support PRB blanking optimization.

O-RU and O-DU TRX control capabilities, see O-RAN.WG4.MP.0-R003-v14 [39], clause 20.3.1, trx-control-capability-info, along with information about the mapping from cells to sector carriers and to O-RU are retrieved from O-DU to generate applicable and optimized performance including energy saving related policies and controls.

# Requirements

## Functional requirements

### Near-RT RIC generic functional requirements

The Near-RT RIC functional requirements are captured in table 5.1.1-1.

###### Table 5.1.1-1: Near-RT RIC functional requirements

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **REQ** | **Description** | **Note** |
| REQ-Near-RT-RIC-TS-FUN1 | Near-RT RIC shall be able to use traffic steering-related A1 policies  to determine and execute appropriate E2 actions. |  |
| REQ-Near-RT-RIC-TS-FUN2 | Near-RT RIC shall be able to use traffic steering-related A1  enrichment information, e.g., the radio finger print information, to determine and execute appropriate E2 actions. |  |
| REQ-Near-RT-RIC-MM-FUN1 | Near-RT RIC shall support training of massive MIMO-related  models in xApps. |  |
| REQ-Near-RT-RIC-MM-FUN2 | Near-RT RIC shall support deployment of massive MIMO-related  trained models in xApps . |  |
| REQ-Near-RT-RIC-MM-FUN3 | Near-RT RIC shall be able to use massive MIMO-related A1 enrichment information, e.g., location and mobility information, to  determine and execute appropriate E2 actions. |  |
| REQ-Near-RT-RIC-MM-FUN4 | Near-RT RIC shall be able to collect the observation and measurement data pertaining to CSI-Feedback and traffic load information of UEs, which are subsequently processed, aggregated and reported over O1 interface to the SMO/Non-RT  RIC framework. |  |
| REQ-Near-RT-RIC-QOE-  FUN1 | Near-RT RIC shall be able to generate QoE related RAN analytics  information and expose it to RAI service consumer. |  |
| REQ-Near-RT-RIC-ES-FUN1 | Near-RT RIC shall be able to use energy saving-related A1 policies and enrichment information, e.g., the radio finger print information,  to determine and execute appropriate E2 actions. |  |
| REQ-Near-RT-RIC-ES-FUN2 | Near-RT RIC shall be able to trigger necessary energy saving  related actions based on the configuration from O1 interface. |  |
| REQ-Near-RT-RIC-ES-FUN3 | Near-RT RIC shall be able to handle mobility of users to account for potential coverage loss directly or indirectly via guidance to the  E2 node. |  |
| REQ-Near-RT-RIC-ES-FUN4 | Near-RT RIC shall be able to handle radio access and mobility controls as described in clause 4.6.2.4.1 to create more ASM sleep  opportunities on the targeted cells. |  |
| REQ-Near-RT-RIC-ES-FUN5 | Near-RT RIC shall support handling radio access to restrict access  of UEs for a specific cell. |  |
| REQ-Near-RT-RIC-ES-FUN6 | Near-RT RIC shall support handling mobility control to reduce  traffic load. |  |
| REQ-Near-RT-RIC-ES-FUN7 | Near-RT RIC shall support PRB blanking optimization to optimize  the performance in ES. |  |

</div>

### E2 interface functional requirements

The E2 interface functional requirements are captured in table 5.1.2-1.

###### Table 5.1.2-1: E2 interface functional requirements

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **REQ** | **Description** | **Note** |
| REQ-E2-TS-FUN1 | E2 shall support retrieval over E2 (read or receive via REPORT) of the following:   * Cell level configuration parameters, such as PCI, neighbor relations and related offsets for measurement, cell reselection and handover, etc.   Supported REPORT triggers shall include:   * Modification of the configuration parameters |  |
| REQ-E2-TS-FUN2 | E2 shall support the configuration (including range and granularity) and retrieval of cell/SSB area or slice related measurements in the nomenclature as specified in 3GPP TS  28.552 [6], 3GPP TS 32.425 [7], 3GPP TS 36.314 [9], 3GPP TS  36.423 [12], 3GPP TS 38.314 [16], 3GPP TS 38.423 [19], 3GPP  TS 38.463 [20] and 3GPP TS 38.473 [21]. These include:   * DL/UL Total PRB Usage, Distribution of DL/UL Total PRB Usage, DL/UL GBR PRB Usage, DL/UL total available PRB, DL/UL non-GBR PRB Usage, RRC Connection Number, Available RRC Connection Capacity Value, Mean and Maximum Number of Active UEs in the DL/UL per DRB, DL/UL Scheduling PDCCH CCE Usage, DL/UL Composite Available Capacity, DL/UL Cell PDCP SDU Data Volume (including secondary RAT usage for EN-DC/MR-DC), Handover success ratio * DL/UL SSB Area Total PRB Usage, DL/UL SSB Area GBR PRB Usage, DL/UL SSB Area non-GBR PRB Usage, SSB Area Capacity Value * DL/UL PRB usage per QCI, DL/UL PRB usage per 5QI, DL/UL PRB usage per slice, Slice Available Capacity Value   See NOTE 1.  Supported REPORT triggers shall include:   * Availability of new information e.g., new load measurement generated * Threshold crossing |  |
| REQ-E2-TS-FUN3 | E2 shall support the configuration and retrieval of E2-node user plane measurements per-UE / UE group, in the nomenclature as specified in 3GPP TS 28.552 [6], 3GPP TS 32.425 [7], 3GPP TS  36.314 [9], 3GPP TS 36.321 [10], 3GPP TS 38.314 [16], 3GPP  TS 38.321 [17], 3GPP TS 38.423 [19], 3GPP TS 38.463 [20] and  3GPP TS 38.473 [21], e.g.:   * Average DL/UL throughput * DL/UL PRB usage * Buffer Status Information (e.g., UL BSR)   Supported REPORT triggers shall include:   * Availability of new information e.g., new load measurement generated * Threshold crossing |  |
| REQ-E2-TS-FUN4 | E2 shall support the configuration and retrieval of UE L1/L2/L3 measurements reported by individual UE, e.g.:   * RSRP and RSRQ measurements * SINR measurements * CQI/MCS measurements   Supported REPORT triggers shall include:   * Availability of new information e.g., reception of RRC measurement reports. |  |
| REQ-E2-TS-FUN5 | E2 shall support the control of EN-DC/MR-DC function in E2 nodes, including the configuration of the relevant parameters for EN-DC/MR-DC procedures, e.g.   * X2 SgNB addition * X2 SgNB modification |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **REQ** | **Description** | **Note** |
|  | * X2 SgNB release * X2 SgNB change * PSCell change * Inter-master node handover   and UE level cell preference guidance for EN-DC/MR-DC, e.g.:   * Ordered list of target cells for SgNB addition and change.   INSERT/CONTROL and POLICY shall be supported in order to trigger the operation by a RAN event, as well as REPORT/CONTROL for Near-RT RIC to trigger the operation  asynchronously where appropriate |  |
| REQ-E2-TS-FUN6 | E2 shall support the control of handover function in E2 nodes, including the configuration of the relevant parameters for handover procedures, e.g.:   * Intra-frequency/inter-frequency/inter-RAT handover * Intra/inter-eNB/gNB handover   and UE level cell preference guidance for handover, e.g.:   * Ordered list of target cells for handover   INSERT/CONTROL and POLICY shall be supported in order to trigger the operation by a RAN event, as well as REPORT/CONTROL for Near-RT RIC to trigger the operation  asynchronously where appropriate |  |
| REQ-E2-TS-FUN7 | E2 shall support the control of carrier aggregation function in E2 nodes, including the configuration of the relevant parameters for CA procedures (e.g., addition, modification and release of a component carrier) and UE level cell preference guidance for CA (e.g., ordered list of target cells for SCell addition/modification)  INSERT/CONTROL and POLICY shall be supported in order to trigger the operation by a RAN event, as well as REPORT/ CONTROL for Near-RT RIC to trigger the operation  asynchronously |  |
| REQ-E2-TS-FUN8 | E2 shall support the control of idle mode mobility function in E2 nodes, including the configuration of the relevant parameters for idle mode procedures (e.g., intra-frequency/inter-frequency/inter- RAT cell reselection priority)  INSERT/CONTROL and POLICY shall be supported in order to trigger the operation by a RAN event, as well as REPORT/CONTROL for RIC to trigger the operation  asynchronously |  |
| REQ-E2-TS-FUN9 | E2 shall support the fetching of UE information including e.g.:   * UE ID as specified in [32] * S-NSSAI * QCI/5QI, * UE capabilities (DC/CA) * Active DRBs/QoS flows |  |
| REQ-E2-TS-FUN10 | E2 shall support the configuration and retrieval of measurements related to UE location and velocity that are reported by an individual UE, e.g.:   * LocationInfo, CommonLocationInfo   Supported REPORT triggers shall include:   * Availability of new information e.g., reception of RRC measurement reports. |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **REQ** | **Description** | **Note** |
| REQ-E2-QoS-FUN1 | E2 interface shall support retrieval of the UE context related information from E2 nodes:   * UE ID as specified in [32] * Slicing info, such as S-NSSAI * QoS info, such as E-RAB level QoS parameters (4G, NSA) or QoS flow level QoS parameters (NG-RAN) * Radio bearers related info, such as established DRB ID, flow-to-DRB mapping * RLC/MAC/PHY related info, such as LCID, scheduling related parameters * UE capability info, such as CA (carrier aggregation) and DC (dual connectivity) capabilities | Applicable RIC services:  REPORT |
| REQ-E2-QoS-FUN2 | E2 interface shall support retrieval of the following measurements info from E2 nodes:   * UE-level   + **Radio channel info available at DU:** CQI (as specified in 3GPP TS 28.552 [6])   + **Radio channel info available at CU-CP for serving cell:** RSRP, RSRQ, SINR (as specified in 3GPP TS 36.331 [11] and 3GPP TS 38.331 [18]), including from periodical and/or event triggered measurement report (A1-A6, B1-B2).   + **Radio channel info available at CU-CP for neighboring cells:** RSRP, RSRQ, SINR (as specified in 3GPP TS 36.331 [11] and 3GPP TS 38.331 [18]),   including from periodical and/or event triggered measurement report (A1-A6, B1-B2).   * + **Layer-2:** DL/UL UE PRB used for data traffic, Average DL UE throughput in gNB, Distribution of DL UE throughput in gNB, Percentage of unrestricted DL UE data volume in gNB, Packet Delay and RAN part packet delay components, Packet Delay, Data Volume (as specified in 3GPP TS 36.314 [9]), DL PDCP occupied buffer size, DL unused PDCP buffer size, Packet Loss Rate per DRB (as specified in 3GPP TS 38.314 [16]) and per logical channel * Cell-level   + **Layer-2:** CQI, MCS Distribution in PDSCH, DL/UL Total PRB usage, Distribution of DL/UL Total PRB usage, DL/UL PRB used for data traffic, DL/UL Total available PRB, Total number of DL/UL TBs, Total error number of DL/UL TBs, Average DL UE throughput in gNB, Distribution of DL UE throughput in gNB, Percentage of unrestricted DL UE data volume in gNB, Packet Delay, Mean number of Active UEs in the DL/UL per cell, Max number of Active UEs in the DL/UL per cell (as specified so far in 3GPP TS 28.552 [6]), DL/UL PRB usage for traffic, DL/UL Total PRB usage, Distribution of DL/UL Total PRB usage, DL/UL PRB full utilization, Total number of DL/UL TBs, Total error number of DL/UL TBs, Average number of Active UEs (as specified so far in 3GPP TS 32.425 [7]), RAN part packet delay components (as specified in 3GPP TS 38.314 [16]), Packet Delay (as specified in 3GPP TS 36.314 [9]), DL/UL Cell PDCP SDU Data Volume, Packet Loss Rate, DL Packet Drop Rate (as specified in 3GPP TS 28.552 [6] and 3GPP TS 32.425 [7]) | Applicable RIC services:  REPORT |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **REQ** | **Description** | **Note** |
| REQ-E2-QoS-FUN3 | E2 interface shall support the control of radio bearer related functions in E2 nodes, including configuration/modification of the following:   * DRB QoS (as specified in 3GPP TS 38.473 [21] and 3GPP TS 23.501 [3]) * QoS flow mapping (as specified in 3GPP TS 38.473 [21]) * Logical channel configuration (as specified in 3GPP TS 38.331 [18] and 3GPP TS 36.331 [11]) * Radio admission control (as specified in 3GPP TS 38.331 [18] and 3GPP TS 36.331 [11]) * Change of bearer termination point (MN or SN) and/or bearer types (MCG/SCG/split) (as specified in 3GPP TS 37.340 [13]); Control of split ratio for a split bearer; Control of packet duplication and number of legs (as specified in 3GPP TS 36.300 [8] and 3GPP TS 38.300 [14]) | Applicable RIC services:  CONTROL POLICY |
| REQ-E2-QoS-FUN4 | E2 interface shall support the control of resource allocation function in E2 nodes, including configuration/modification of the following:   * DRX parameters (as specified in 3GPP TS 38.473 [21], 3GPP TS 38.331 [18] and 3GPP TS 36.331 [11]) such as   long DRX cycle, short DRX cycle, short DRX timer.   * SR (scheduling request) periodicity (as specified in 3GPP TS 38.331 [18] and 3GPP TS 36.331 [11]) such as *sr-*   *ProhibitTimer, sr-TransMax*.   * SPS (semi-persistent scheduling) parameters (as specified in 3GPP TS 38.331 [18] and 3GPP TS 36.331 [11]), such as   *SPS-Config* (DL) and *ConfiguredGrantConfig* (UL)   * Slice level PRB quota (as specified in 3GPP TS 28.541 [4]) * CQI table (as specified in 3GPP TS 38.214 [15]) with target block error rate | Applicable RIC services:  CONTROL POLICY |
| REQ-E2-QoS-FUN5 | E2 interface shall support the control of radio access related functions in E2 nodes, including configuration/modification of the following:   * Access control (cell-level, UE-level, slice-level), such as RACH backoff, RRC connection reject, RRC connection release, access barring, etc. | Applicable RIC services:  CONTROL POLICY |
| REQ-E2-QoS-FUN6 | E2 interface shall support the control of mobility management function in E2 nodes, including configuration/modification of the following:   * Handover * Handover restriction list * Carrier aggregation (as specified in 3GPP TS 38.473 [21], 3GPP TS 38.331 [18] and 3GPP TS 36.331 [11]) * MR-DC, including (NG)EN-DC, NE-DC, NR-DC (as specified in 3GPP TS 38.473 [21], 3GPP TS 38.331 [18] and   3GPP TS 36.331 [11]) | Applicable RIC services:  CONTROL POLICY |
| REQ-E2-QoS-FUN7 | E2 interface shall support the control of uplink power control function in E2 nodes, including configuration/modification of the following:   * Target value of uplink received quality such as received SINR or received power at E2 node | Applicable RIC services:  CONTROL POLICY |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **REQ** | **Description** | **Note** |
| REQ-E2-QoS-FUN8 | E2 interface shall support retrieval of configuration of uplink transmit power from E2 node:   * Cell specific transmit power (TS38.331 [19]), *PUSCH- ConfigCommon.* * UE specific transmit power (TS 38.331 [19]), *PUSCH- PowerControl.*   Target value of uplink received quality such as received SINR or  received power at E2 node | Applicable RIC services:  REPORT QUERY |
| REQ-E2-SLA-FUN1 | E2 shall support retrieval over E2 (read or receive via REPORT) of the following:   * Cell level and/or slice level configuration parameters Supported REPORT triggers shall include: * Modification of cell level and/or slice configuration parameters |  |
| REQ-E2-SLA-FUN2 | E2 shall support the configuration (including range and granularity) and retrieval of cell or slice related measurements in the nomenclature as specified in 3GPP TS 28.552 [6], 3GPP TS  32.425 [7], 3GPP TS 36.314 [9], 3GPP TS 36.423 [12], 3GPP TS  38.314 [16], 3GPP TS 38.423 [19], 3GPP TS 38.463 [20] and  3GPP TS 38.473 [21]. These include:   * DL/UL Total PRB Usage, Distribution of DL/UL Total PRB Usage, DL/UL total available PRB, RRC Connection Number, Available RRC Connection Capacity Value, Mean and Maximum Number of Active UEs in the DL/UL per DRB * DL/UL PRB usage per slice, Slice Available Capacity Value   Supported REPORT triggers shall include:   * Availability of new information e.g., new load measurement generated * Threshold crossing | Applicable RIC services:  REPORT |
| REQ-E2-SLA-FUN3 | E2 shall support the fetching of UE information including e.g.:   * UE ID * PLMN, S-NSSAI(s) * DRB related information | Applicable RIC services:  REPORT |
| REQ-E2-SLA-FUN4 | E2 interface shall support the configuration and retrieval of individual UE measurements, including the following:   * RSRP, RSRQ * CQI | Applicable RIC services:  REPORT |
| REQ-E2-SLA-FUN5 | E2 interface shall support the control of slice resource allocation in E2 nodes, including configuration/modification of the following:   * Per-slice dedicated PRB allocation percentages for downlink and uplink * Per-slice maximum PRB allocation percentages for downlink and uplink * Per-UE-per-slice maximum PRB allocation percentages for downlink and uplink * Per-slice indication of resource sharing allowance to achieve utilization of unused slice resources by other network slices * Per-slice priority values to achieve scheduling prioritization among network slices with different priorities | Applicable RIC services:  REPORT CONTROL |
| REQ-E2-SLA-FUN6 | E2 interface shall support the slice-level control of radio resource management related functions in E2 nodes, including the following:   * Slice based radio admission control * Slice based radio bearer control | Applicable RIC services:  CONTROL POLICY |
| REQ-E2-MM-FUN1 | E2 shall support retrieval over E2 of the following:   * Beam level configuration parameters, such as beam pattern information (as specified in 3GPP TS 28.541 [5], clause 4.3.40) * O-RU antenna information (as specified in O- RAN.WG4.MP.0-R003-v13 [35], clause D.3.8) | Applicable RIC services:  REPORT, QUERY |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **REQ** | **Description** | **Note** |
|  | * O-DU supported compression methods (as specified in O- RAN.WG4.CUS.0-R003-v13 [34], clause 7.7.1.2) * Served cell information (as specified in 3GPP TS 38.473 [21], clause 9.3.1.10) * MIB (as specified in 3GPP TS 38.331 [18], clause 6.2.2) * SSB information of the serving cell (as specified in 3GPP TS 38.331 [18], clause 6.2.2)   Supported REPORT triggers shall include: Modification of the configuration parameters |  |
| REQ-E2-MM-FUN2 | E2 shall support retrieval from E2 node of DL L1 measurements reported by individual UE, e.g.:   * RSRP-SS measurements (as specified in 3GPP TS 38.133 [26] and 3GPP TS 38.215 [27]) * SINR-SS measurements (as specified in 3GPP TS 38.133 [26] and 3GPP TS 38.215 [27]) * PMI, RI, CQI (as specified in 3GPP TS 38.212 [43], clause 6.3) * CSI-RSRP, CSI-RSRQ, CSI-SINR (as specified in 3GPP TS 38.912 [46], clause 8.1.2.6.3, 3GPP TS 38.331 [18], clause   5.5.5.2, 3GPP TS 38.215 [27], clause 5.1, 3GPP TS 38.214  [15], clause 5.2.2)   * QCL type between SSB and CSI-RS (as specified in 3GPP TS 38.214 [15], clause 5.1.5) * QCL type between CSI-RS and DMRS (as specified in 3GPP TS 38.214 [15], clause 5.1.5)   Supported REPORT triggers shall include: Availability of new information | Applicable RIC services:  REPORT |
| REQ-E2-MM-FUN3 | E2 shall support retrieval from E2 node of UL L1 measurements reported for individual UE, e.g.:  - SRS RSRP measurements (as specified in 3GPP TS 38.133 [26] and 3GPP TS 38.215 [27])  Supported REPORT triggers shall include: Availability of new information | Applicable RIC services:  REPORT |
| REQ-E2-MM-FUN4 | E2 shall support retrieval from E2 node of L3 mobility measurements reported per beam/beam group, e.g.:   * Number of too early HOs (as specified in 3GPP TS 28.552 [6]) * Number of too late HOs (as specified in 3GPP TS 28.552 [6]) * Number of HOs to wrong cell (as specified in 3GPP TS 28.552 [6]) * Number of requested legacy HO executions (HO attempts) (as specified in 3GPP TS 28.552 [6]) * Number of successful legacy HO executions (as specified in 3GPP TS 28.552 [6]) * Number of failed legacy HO executions (as specified in 3GPP TS 28.552 [6]) * Per UE event mobility failure indication with root cause (too early HO, too late HO, HO to wrong cell) and number of requested or number of successful HO executions at the time of failure   Supported REPORT triggers shall include   * For mobility KPIs, periodic reporting   For mobility failure indication, message event trigger | Applicable RIC services:  REPORT |
| REQ-E2-MM-FUN5 | E2 shall support retrieval of UE context information from E2 node for individual UE, e.g.:   * UE ID * UE capabilities (as specified in 3GPP TS 38.331 [18], clause 6.2.2) | Applicable RIC services:  REPORT, QUERY |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **REQ** | **Description** | **Note** |
|  | * SRS Configuration (as specified in 3GPP TS 38.331 [18], clause 6.2.2) * RRC State * CSI Measurement configuration (as specified in 3GPP TS 38.331 [18], clause 6.3.2) * Measurement Gap configuration (as specified in 3GPP TS 38.331 [18], clause 6.3.2) * BWP DL/UL configurations (as specified in 3GPP TS 38.331 [18], clause 6.3.2) * DRB related info, such as established DRB ID, flow-to-DRB mapping, RLC Mode, LCID (as specified in 3GPP TS 38.473 [21], clause 9.2.2.1) * PDSCH of serving cell configuration (as specified in 3GPP TS 38.331 [18], clause 6.3.2) * DRX Configuration (as specified in 3GPP TS 38.331 [18], clause 6.3.2)   Supported REPORT triggers shall include:  Configuration or reconfiguration of the UE context information |  |
| REQ-E2-MM-FUN6 | E2 interface shall support the control of beamforming in E2 nodes, including the following:  - Configuration of non-Grid of beams beamforming mode, separately for single user- and multi-user MIMO, on a per-UE basis | Applicable RIC services:  CONTROL POLICY |
| REQ-E2-MM-FUN7 | E2 interface shall support the control of L3 mobility configuration in E2 nodes, including the following:  Cell Individual Offset (CIO), Time To Trigger (TTT), UE Timer 310 (T310) on a per beam/beam group, per UE/UE group basis (as  specified in 3GPP TS 38.331 [18]) | Applicable RIC services:  POLICY |
| REQ-E2-MM-FUN8 | E2 interface shall support the configuration of beam grouping information in E2 nodes, including the following:  List of beam group IDs with associated beam IDs | Applicable RIC services:  POLICY |
| REQ-E2-MM-FUN9 | E2 shall support request and reporting of the number of supported non-GoB BF modes in O-DU | Applicable RIC services:  QUERY |
| REQ-E2-MM-FUN10 | E2 shall support retrieval from E2 node of average DL/UL per-UE throughput in gNB with associated non-GoB BF mode and MIMO mode (SU/MU) | Applicable RIC services:  REPORT |
| REQ-E2-MM-FUN11 | E2 shall support retrieval from E2 node of DL L1 and L2 information reported for individual UE, e.g.:   * PDCP buffer status (as specified in 3GPP TS 38.323 [40], clause 5.6) * RLC buffer status (as specified in 3GPP TS 25.321 [41], clause 8.2.2) * HARQ ACK/NACK/DTX counts * SRS samples * HARQ-specific Transport Block Size volume (as specified in O-RAN WG3 E2SM-KPM [36], O-RAN WG3 E2SM-RC [37])   Supported REPORT triggers shall include: Periodic with a configured period | Applicable RIC services:  REPORT |
| REQ-E2-MM-FUN12 | E2 interface shall support the configuration of individual UE operation, including the following:   * CSI resources (as specified in 3GPP TS 38.331 [18], clause 6.3.2) * CSI reports (as specified in 3GPP TS 38.331 [18], clause   6.3.2) | Applicable RIC services:  CONTROL |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **REQ** | **Description** | **Note** |
|  | * SRS resources (as specified in 3GPP TS 38.331 [18], clause 6.3.2) * PDSCH (as specified in 3GPP TS 38.331 [18], clause 6.3.2) |  |
| REQ-E2-MM-FUN13 | E2 shall support retrieval over E2 of the following:   * Timestamped slot numbers (as specified in 3GPP TS 38.473 [21], clause 9.3.1.171) * Received time and processing time margin of the scheduling control message   Supported REPORT triggers shall include: Periodic with a configured period | Applicable RIC services:  REPORT |
| REQ-E2-MM-FUN14 | E2 interface shall support the configuration of the active bearers for which the Near-RT RIC will be providing the scheduling parameters | Applicable RIC services:  CONTROL |
| REQ-E2-MM-FUN15 | E2 interface shall support the control of scheduling parameters that enable MU-MIMO transmissions and the relevant MIMO parameters, of latency tolerant traffic per slot per UE. | Applicable RIC services:  CONTROL |
| REQ-E2-MM-FUN16 | E2 interface shall support the control of parameter configurations per-cell basis and per-UE basis for a sequence of slots in E2 nodes, e.g.,   * Slot-specific DMRS configurations for a sequence of slots * Per-UE slot-specific GoB-based beam configuration (i.e., P2 beamforming-weights/beam-index, PMI, RI, LI, etc.) for a sequence of slots | Applicable RIC services:  POLICY |
| REQ-E2-QoE-FUN1 | E2 shall support UE context information including e.g.:   * UE ID * List of S-NSSAI   List of QoS related ID, e.g., 5QI, QFI |  |
| REQ-E2-QoE-FUN2 | E2 interface shall support retrieval of UE-level or cell-level measurement, including e.g.:   * Cell-level:   - **Layer-2:** MCS Distribution in PDSCH (as specified in 3GPP TS 28.552 [6], clause 5.1.1.12.1), DL/UL Total  PRB usage (as specified in 3GPP TS 28.552 [6], clauses  5.1.1.2.1 and 5.1.1.2.2 and in 3GPP TS 32.425 [7],  clauses 4.5.3 and 4.5.4), Distribution of DL/UL Total PRB usage (as specified in 3GPP TS 28.552 [6], clauses  5.1.1.2.3 and 5.1.1.2.4 and in 3GPP TS 32.425 [7],  clauses 4.5.10 and 4.5.11), DL/UL PRB used for data traffic (as specified in 3GPP TS 28.552 [6], clauses 5.1.1.2.5 and 5.1.1.2.7), DL/UL PRB usage for traffic (as specified in 3GPP TS 32.425 [7], clauses 4.5.1 and 4.5.2), DL/UL Total available PRB (as specified in 3GPP TS 28.552 [6], clauses 5.1.1.2.6 and 5.1.1.2.8), DL/UL  PRB full utilization (as specified in 3GPP TS 32.425 [7], clauses 4.5.9.1 and 4.5.9.2), Total number of DL/UL TBs (as specified in 3GPP TS 28.552 [6], clauses 5.1.1.7.3  and 5.1.1.7.8 and in 3GPP TS 32.425 [7], clauses 4.5.7.1 and 4.5.7.3), Total error number of DL/UL TBs (as specified in 3GPP TS 28.552 [6], clauses 5.1.1.7.4 and  5.1.1.7.9 and in 3GPP TS 32.425 [7], clauses 4.5.7.2 and 4.5.7.4), Average DL UE throughput in gNB (as specified in 3GPP TS 28.552 [6], clause 5.1.1.3.1), Distribution of DL UE throughput in gNB (as specified in 3GPP TS 28.552 [6], clause 5.1.1.3.2), Packet Delay (as specified in 3GPP TS 28.552 [6], clause 5.1.3.3), RAN part packet delay components (as specified in 3GPP TS 38.314 [16], clause 4.2.1.2), Packet Delay (as specified in 3GPP TS  36.314 [9], clause 4.1.4), DL/UL Cell PDCP SDU Data |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **REQ** | **Description** | **Note** |
|  | Volume (as specified in 3GPP TS 28.552 [6], clause  5.1.2.1 for non-split gNB, clause 5.1.3.6.2 for split gNB; per PLMN ID and per E-RAB QoS profile (QCI, ARP and GBR), as specified in 3GPP TS 32.425 [7], clause 4.4.7), Mean number of Active UEs in the DL/UL per cell (as specified in 3GPP TS 28.552 [6], clauses 5.1.1.23.1 and 5.1.1.23.3), Max number of Active UEs in the DL/UL per cell (as specified in 3GPP TS 28.552 [6], clauses 5.1.1.23.2 and 5.1.1.23.4), Average number of Active UEs (as specified in 3GPP TS 32.425 [7], clause 4.4.2), Packet Loss Rate (as specified in 3GPP TS 28.552 [6], clause 5.1.3.1), Packet Loss Rate (as specified in 3GPP TS 32.425 [7], clause 4.4.4), DL Packet Drop Rate (as specified in 3GPP TS 28.552 [6], clause 5.1.3.2), DL Packet Drop Rate (as specified in 3GPP TS 32.425 [7], clause 4.4.3.2)   * UE-level   + **Radio channel info:** SINR (as specified in 3GPP TS 38.331 [18] and 3GPP TS 36.331 [11]), RSRP (as   specified in 3GPP TS 38.331 [18] and 3GPP TS 36.331 [11]), RSRQ (as specified in 3GPP TS 38.331 [18] and 3GPP TS 36.331 [11])   * + **Layer-2:** CQI, MCS, DL/UL UE throughput, DL/UL UE PRB usage, RLC buffer size, RLC occupied buffer, RLC unused buffer, UL/DL MAC rate, Packet Delay, Data volume (per UE, as specified in 3GPP TS 36.314 [9], clause 4.1.8 and 3GPP TS 38.314 [16]), Packet Loss Rate per DRB (as specified in 3GPP TS 38.314 [16], clause 4.2.1.5) and per UE, DL Packet Drop Rate, Total number of RLC SDUs/PDUs * Slice-level   + **Layer-2:** DL/UL UE PRB usage, RLC buffer size, RLC occupied buffer, RLC unused buffer, UL/DL MAC rate, Packet Delay, Data volume (per QCI/5QI, as specified in 3GPP TS 36.314 [9], clause 4.1.8 and 3GPP TS 38.314   [16]), Packet Loss Rate per DRB (as specified in 3GPP TS 38.314 [16], clause 4.2.1.5) and per UE, DL Packet Drop Rate (as specified in 3GPP TS 28.552 [6], clause 5.1.3.2), Total number of RLC SDUs/PDUs |  |
| REQ-E2-ES-FUN1 | E2 interface shall support forwarding the guidance of cell and carrier switching off/on from the Near-RT RIC to the E2 node.  REPORT/CONTROL shall be supported for Near-RT RIC to  trigger the operation asynchronously where appropriate |  |
| REQ-E2-ES-FUN2 | E2 interface shall support the configuration and retrieval of  energy saving related measurement and cell state information from the E2 Node. |  |
| REQ-E2-ES-FUN3 | E2 interface shall support forwarding the guidance of sleep mode configurations as described in 4.6.2.4.1 from the Near-RT RIC to  the E2 node. |  |
| REQ-E2-ES-FUN4 | E2 interface shall support the control of NES related resource allocation function in E2 nodes including configuration/modification of the following:   * SR periodicity reconfiguration (as specified in 3GPP TS 38.331 [18] and 3GPP TS 36.331 [11]): Both *sr-*   *ProhibitTimer* and *sr-TransMax* can be treated.   * SPS configuration (as specified in 3GPP TS 38.331 [18] and 3GPP TS 36.331 [11]): Both *SPS-Config* (DL) and *ConfiguredGrantConfig* (UL) can be treated. * CSI-RS periodicity configuration. * Common channel periodicity configurations. |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **REQ** | **Description** | **Note** |
| REQ-E2-ES-FUN5 | E2 interface shall support the configuration of energy saving mode  objectives from the Near-RT RIC to the E2 node as described in clause 4.6.2.4.1. |  |
| REQ-E2-ES-FUN6 | E2 interface shall support configuration of RF channel reconfiguration related NES parameters from the Near-RT RIC to the E2 node which includes:   * Indication of the array elements to be switched off during sleep periods based on the TRX control capability information (see O-RAN.WG4.MP.0-R003-v14 [39], clause 20.3.1) reported by the E2 node (O-DU). * Indication of the sleep mode (see O-RAN.WG4.MP.0- R003-v14 [39], clause 20.3.1, sleep-mode-type of trx- control-capability-info) to be applied during sleep periods. * Indication of the sleep periods, e.g. slot numbers, symbol numbers and the conditions for triggering the sleep   period. |  |
| REQ-E2-ES-FUN7 | E2 interface shall support the configuration of RF channel reconfiguration related performance objectives from the Near-RT RIC to the E2 node. The performance objectives can include:   * Energy saving target, e.g. targeted energy saving in percentage of current average energy consumption or energy saving levels defined by operator (e.g. maximum energy saving, medium energy saving, maximum performance etc.). * UE or cell level performance targets e.g. throughput cap, throughput drop tolerance, latency target. |  |
| REQ-E2-ES-FUN8 | E2 interface shall support forwarding the guidance of PRB blanking optimization configurations or policies from the Near-RT  RIC to the E2 node. |  |
| REQ-E2-ES-FUN9 | E2 interface shall support the configuration of PRB blanking optimization related performance objectives from the Near-RT  RIC to the E2 node. |  |
| NOTE 1: Time granularity of the measurements is not defined in the present document. | | |

</div>

### RAI exposure interface functional requirements

The RAI exposure interface functional requirements are captured in table 5.1.3-1.

###### Table 5.1.3-1: RAI exposure interface functional requirements

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **REQ** | **Description** | **Note** |
| REQ-RAI-QoE-FUN1 | RAI exposure interface shall support request for QoE related analytics from RAI service consumers, with request scopes including:  - List of UE ID |  |
| REQ-RAI-QoE-FUN2 | RAI exposure interface shall support exposure to RAI service consumers the following QoE related information: |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **REQ** | **Description** | **Note** |
|  | Predicted RAN performance   * Minimum/maximum/average throughput * Minimum/maximum/average latency * Average packet loss rate * QoE prediction   Prediction related information   * Confidence * Validity period |  |

</div>

## Non-functional requirements

### Near-RT RIC non-functional requirements

Void

### E2 interface non-functional requirements

Void

Annex A (informative):

Example use cases

## Example use cases for RAN slice SLA assurance

### Downlink and uplink throughput per slice

The *Downlink and Uplink Throughput Per Network Slice* are NG.116 attributes used in the definition and deployment of a network slice. They become maxDlThptPerSlice and maxUlThptPerSlice parameters in A1 polic(ies). The maximum downlink throughput per slice defines the aggregated data rate in the downlink for all UEs together in the network slice. This parameter is defined in GSMA GST NEST NG.116 Downlink throughput per network slice [22], clause 3.4.5. See also 3GPP TS 28.541 [5], clause 6.3.4 which defines the SliceProfile that captures some of the parameters from GSMA depending on the slice type. The parameter places an upper limit on the capacity of the slice so that the slice does not over-utilize available network resources and thereby provides a target to guide resource utilization.

The following explanation describes the relevance to the Near-RT RIC. These attributes are sent by the Non-RT RIC to the Near- RT RIC(s) together with the scope identifier (S-NSSAI) and optional cell list or tracking area list. The Near-RT RICs split the A1 policy guidance from the Non-RT RIC. Thus, the subtending Near-RT RICs each provide guidance to the cells of their E2 nodes (O-DU, O-CU-UP, O-CU-CP) involved in the slice.

For example, suppose there is an SLA parameter, *Downlink throughput per network slice*, with a value of 600,000 kilobits per second (kbps). The Non-RT RIC in this case has three subtending Near-RT RICs. Then, the Non-RT RIC might split the SLA parameter of 600,000 kbps into three A1 policies: maxDlThptPerSlice = 120,000 kbps for Near-RT RIC #1; maxDlThptPerSlice = 180,000 kbps for Near-RT RIC #2, and maxDlThptPerSlice = 300,000 kbps for Near-RT RIC #3 for the respective slice. This example use case is shown in figure A.1.1-1.

![Graphical user interface  Description automatically generated]({{site.baseurl}}/assets/images/d1f50a7dfae8.png)

###### Figure A.1.1-1: A1 policy decomposition example

The consumer of the maxDlThptPerSlice and maxUlThptPerSlice parameters is the Near-RT RIC via A1 policy. Slice SLA assurance-related xApp(s), within the Near-RT RIC, can apply or utilize this parameter to provide control of throughput

within the E2 nodes. The xApp(s) can utilize E2 interface to adjust throughput-related RAN parameters, such as adjusting PRB allocation levels The Near-RT RIC has influence over the operation of cells in a geographical area. The adjustment of the PRB allocation levels in MAC schedulers directly impact the throughput achieved by the slice. Therefore, this parameter at the RAN level influences the throughput. There might be other throughput-related parameters that could be employed, such as MCS, which is left for future study.

3GPP Release 17 will introduce the concept of a Network Slice Admission Control Function (NSACF), see reference [(TR23.700-40 S2-1908583)] and reference [(TS23.501 v17.1.1 clause 5.15.11)]. The purpose of the NSACF is to enforce some of the slice SLA parameters from a 5G core perspective. The NSACF handles slice-specific user admission control into the network based on NG.116 criterion. However, the NSACF has no knowledge of RAN and RAN resources; thus, it cannot control RAN resources. Therefore, there is no interaction between NSACF and the handling of these parameters by the Near-RT RIC. Thus, the usage of the SLA-related parameters by the Near-RT RIC xApp(s) are in the scope of gNBs and will complement the 5GC SLA enforcement but from the perspective of the RAN.

### Guaranteed downlink and uplink throughput per slice

The *Guaranteed Downlink Throughput Quota and Guaranteed Uplink Throughput Quota* are attributes used in the definition and deployment of a network slice in NG.116. They are used in A1 policies as guaDlThptPerSlice and guaUlThptPerSlice. The guaranteed downlink/uplink throughput quota describes the guaranteed throughput or data rate supported by the network slice for the aggregate of all GBR QoS flows in downlink/uplink belonging to the set of all UEs using the network slice. This parameter is defined in GSMA GST NEST NG.116 Downlink/Uplink throughput per network slice [22], clause 3.4.5. See also 3GPP TS 28.541 [5], clause 6.3.4 which defines the SliceProfile which captures some of the parameters from GSMA depending on the slice type. The *Maximum Ul/Dl Throughput per Network Slice* parameters (clause 3.3.3.1.1) place an upper limit on the capacity of the slice while the *Guaranteed Ul/Dl Throughput Quota* parameters ensure a certain level of throughput. Thus, these two parameters complement each other: one giving a lower bound and the other giving an upper bound. For the upper bound (maximum Ul/Dl throughput per network slice) this ensures that the slice does not over- utilize available network resources while for the lower bound (guaranteed Dl/Ul throughput quota) meets a minimum throughput for the slice.

These attributes are sent by the Non-RT RIC to the Near-RT RIC(s) together with the scope identifier (S-NSSAI) and optional cell list or tracking area list. The Near-RT RICs split the A1 policy guidance from the Non-RT RIC. Thus, the subtending Near- RT RICs each provide guidance to the cells of the E2 nodes (O-DU, O-CU-UP, O-CU-CP) involved in the slice.

For example, suppose there is an SLA parameter, *Guaranteed Uplink Throughput Quota,* with a value of 1,000,000 kilobits per second (kbps). The Non-RT RIC in this case has three sub-tending Near-RT RICs. Then, the Non-RT RIC might split the SLA parameter of 1,000,000 kbps into three A1 policies: guaUlThptPerSlice = 170,000 kbps for Near-RT RIC #1; guaUlThptPerSlice = 230,000 kbps for Near-RT RIC #2, and guaUlThptPerSlice = 600,000 kbps for Near-RT RIC #3 for the respective slice.

The consumer of the guaUlThptPerSlice and guaDlThptPerSlice parameters is the Near-RT RIC via A1 policy. Slice SLA assurance-related xApp(s), within the Near-RT RIC, can apply or utilize this parameter to provide control of and throughput within the E2 nodes (O-CU-UP, O-CU-CP, O-DU). The xApp(s) can utilize E2 interface to adjust throughput-related RAN parameters, such as adjusting PRB allocation levels. The Near-RT RIC has influence over the operation of cells in a geographical area. The adjustment of the PRB allocation levels in MAC schedulers directly impacts the throughput achieved by the slice. Therefore, this parameter at the RAN level influences the throughput. There might be other throughput-related parameters that could be employed, such as MCS, which is left for future study.

# Annex (informative):

Change history/Change request (history)

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Date** | **Revision** | **Description** |
| 2020.03.11 | 01.00.00 | Initial template |
| 2020.11.27 | 01.00.01 | First version of WG3 UCR spec, editorial updates for v01.00.01 |
| 2020.11.28 | 01.00.02 | Addition of CR:   * TIM.AO-2020.10.21-WG3-CR-TS-Use-Case-CR-0001-v05-rm (ATT, TIM, INTEL,   CMCC, Radisys, CICT, Deutsche Telekom, Nokia), including:   * + WG3#53: Agreement of "TIM.AO-2020.05.06-WG3-D-TS\_UCR-TextProposal- sect\_up\_to\_3.5.3.2\_ATT.docx"   + WG3#55: Agreement of "TIM.AO-2020.05.20-WG3-D-TS\_UCR-TextProposal- sect\_3.5.3.3\_OuterLoop\_rev\_after\_email\_disc\_(ATT).doc"   + WG3#61: Agreement of "TIM.AO-2020.07.15-WG3-D-TS-   Descr+UpdatedRequirements\_text-proposal\_ATT\_CMCC\_RSY.docx"; Inclusion of P1 and P3 of INT-2020.07.07-WG3-D-TextProposal-TS-UCR.doc  - WG3#68: Agreement of "TIM.AO-2020.09.23-WG3-D-  TS\_UCR\_text\_proposal\_CRupdate\_CICT+Nokia+DT+ATT+Radysis+Intel.doc x"; editorial cleanup   * + WG3#vF2F\_2020-10: agreement of NOK.AO-2020.10.14-WG3-CR-TS-Use- Case-CR-0002-v02   Editorial updates (sections related to Traffic Steering use case)  Addition of references and definitions |
| 2020.12.07 | 01.00.03 | Addition of CR:  - CICT.AO-2020.10.21-WG3-CR-QoS&QoE-Use-Case-CR-0003-v09 (CICT, CMCC, INTEL)  Editorial updates (sections related to QoS use case)  Additional references |
| 2021.07.01 | 01.00.04 | Final Edits |
| 2021.08.10 | 01.00 | Final version 01.00 |
| 2022.02.04 | 01.00.05 | Initial version towards v02.00, spec number updated to v01.00.05 per new O-RAN spec numbering process (change is made on 2022.07.21)  Addition of CR:  - KDDI.AO-2021.07.26-WG3-CR-0000-Slice SLA Assurance use case-v03 |
| 2022.03.14 | 01.00.06 | Spec number is updated to v01.00.06 per new O-RAN spec numbering process (change is made on 2022.07.21)  Addition of CR:  - JNPR-2022.02.04-WG3-CR-0001-Slice SLA Assurance Additional Requirements- v02 |
| 2022.07.21 | 01.00.07 | Addition of CR:  - INT.AO-2022.04.26-WG3-CR-0018-UCR-mMIMO\_runningCR\_rev2 |
| 2022.07.21 | 01.00.08 | Update of the document to comply with the new O-RAN Technical Spec template |
| 2022.07.21 | 01.00.09 | All changes accepted, clean version for approval |
| 2022.08.02 | 02.00 | Final version 02.00 |
| 2022.11.08 | 02.00.01 | Initial version towards v03.00 Addition of CR:  - CMCC.AO-2022.06.21-WG3-CR-UCR-RAN Analytics Information Exposure related  QoE Optimization Use Case-v4 |
| 2022.11.08 | 02.00.02 | Addition of CR:  - INT-2022.10.28-WG3-CR-0026-UCR-cor\_mMIMO\_non-GoB |
| 2022.11.18 | 03.00 | Final version 03.00 |
| 2023.03.17 | 03.00.01 | Initial version towards v04.00 Addition of CR:  - NOK.AO-2022.01.19-WG3-CR-0001-UCR-RAN Slice SLA Assurance Use Case-  v11 |
| 2023.05.03 | 03.00.02 | Addition of CR:  - FJT-2023.01.23-WG3-CR-0002-WG3UCR\_Interference\_Control-v02 |
| 2023.07.11 | 03.00.03 | Addition of CR: |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  |  | - RMI.AO-2023.04.28-WG3-CR-0001-UCR-Energy saving Cell & Carrier Shutdown  Use Case-v07 |
| 2023.07.26 | 03.00.04 | WG3 review comments are addressed, and approval is completed. All changes  accepted, clean version. |
| 2023.07.26 | 04.00 | Final version 04.00 |
| 2023.09.20 | 04.00.01 | Initial version towards v05.00  Update of the spec to latest O-RAN TS template except for splitting the references to normative and informative. This split is planned to be made in this release of the document. |
| 2023.09.20 | 04.00.02 | Addition of CR:  - JNPR-2023.09.20-WG3-CR-0021-O-RAN-Use-Cases-Requirements-ODR-  References-Section-v01 |
| 2023.09.21 | 04.00.03 | Addition of CR:  - JNPR-2023.09.21-WG3-CR-0022-O-RAN-Use-Cases-Requirements-ODR-  References-Update-v01 |
| 2023.09.21 | 04.00.04 | Addition of CR:  - JNPR-2023.09.21-WG3-CR-0023-O-RAN-Use-Case-Requirements-ODR-  References-Correction-v01 |
| 2023.11.03 | 04.00.05 | Addition of CR:  - RMI.AO-2023.08.30-WG3-CR-0002-UCR-Energy saving ASM Use Case-v09  Editorial Corrections |
| 2023.11.17 | 04.00.06 | WG3 review comments are addressed, and approval is completed. |
| 2023.11.17 | 04.00.07 | All changes accepted, clean version. |
| 2023.11.17 | 05.00 | Final version 05.00 |
| 2024.02.28 | 05.00.01 | Initial version towards v06.00 Addition of CRs:   * JNPR-2024.02.02-WG3-CR-0024-O-RAN-Use-Cases-Requirements-ODR-   References-Wording-v01   * JNPR-2024.02.06-WG3-CR-0025-O-RAN-Use-Cases-Requirements-ODR-Figures- References-Wording-Capital\_Letters-Corrections-v01 * JNPR-2024.02.08-WG3-CR-0026-O-RAN-Use-Cases-Requirements-ODR-Tables- References-Wording-Capital\_Letters-Corrections-v01 * JNPR-2024.02.09-WG3-CR-0027-O-RAN-Use-Cases-Requirements-ODR-Notes-   v01 |
| 2024.03.14 | 05.00.02 | Addition of CRs:   * DELL.AO-2023.08.31-WG3-CR-0003-UCR-Energy saving RF Reconfig Use Case v9 * COT.AO-2023.12.11-WG3-CR-0001-UCR-MU-MIMO-Optimization-v06 |
| 2024.03.30 | 05.00.03 | WG3 review comments are addressed, and approval is completed. |
| 2024.03.30 | 05.00.04 | All changes accepted, clean version. |
| 2024.03.30 | 06.00 | Final version 06.00 |
| 2024.05.16 | 06.00.01 | Initial version towards v07.00 Addition of CRs:   * JNPR-2024.04.20-WG3-CR-0028-O-RAN-Use-Cases-Requirements-ODR-FFS-   Concepts-v02   * JNPR-2024.04.22-WG3-CR-0029-O-RAN-Use-Cases-Requirements-ODR-Modal- Verbs\_Shall\_Shall\_not\_Should\_Should\_not\_Must\_Must\_not-v01 * JNPR-2024.04.25-WG3-CR-0030-O-RAN-Use-Cases-Requirements-ODR-Modal- Verbs\_Can\_Cannot\_May\_Need\_not-v01 * JNPR-2024.04.25-WG3-CR-0031-O-RAN-Use-Cases-Requirements-ODR-   Clauses-v01 |
| 2024.06.25 | 06.00.02 | Addition of CR:  - CMCC.AO-2024.05.08-WG3-CR-0004-UCR-Adding measurements in NES use case-v02 |
| 2024.07.11 | 06.00.03 | Addition of CRs:   * JNPR-2024.05.31-WG3-CR-0032-O-RAN-Use-Cases-Requirements-ODR-   Capital\_Letters-Editorial\_Changes-Fixes-v01   * DCM-2024.03.06-WG3-CR-0001-UCR-Addition of Uplink Power Control for QoS- v07 |
| 2024.07.11 | 06.00.04 | Clean version for WG3 approval |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 2024.07.25 | 07.00 | Final version 07.00 |
| 2024.11.07 | 07.00.01 | Initial version towards v08.00 Addition of CRs:   * JNPR-2024.08.07-WG3-CR-0033-O-RAN-Use-Cases-Requirements-ODR-   References-v01   * MAV-2023-07-31-WG3-UCR-002-mMIMO Feature CSI-RS DMRS Optimization-   v06   * MTR.AO-2024.08.29-WG3-CR0001-UCR-Use Case 6-PRB Blanking-public   release-v4 |
| 2024.11.14 | 07.00.02 | Updated copyright statement on the cover page and footer to 2025  Editorial changes to align to O-RAN TS template v02.01 |
| 2024.11.21 | 07.00.03 | Addition of CR:  - DTAG-2024.10.22-WG3-CR-0001-Use case numbering-v03  Added 3GPP Release 18 related text to Normative and Informative References clauses Editorial updates |
| 2024.11.21 | 07.00.04 | Clean version for WG3 approval |
| 2024.12.04 | 07.00.05 | WG3 review comments are addressed, and approval is completed. |
| 2024.12.04 | 07.00.06 | All changes accepted, clean version. |
| 2024.12.04 | 08.00 | Final version 08.00 |

</div>
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG3.TS.UCR-R004-v08.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG3.TS.UCR-R004-v08.00.docx).
