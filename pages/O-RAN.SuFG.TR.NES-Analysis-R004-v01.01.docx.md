## O-RAN.SuFG.TR.NES-Analysis-R004-v01.01.docx

- View in [Reader Mode](https://simewu.com/spec-reader/pages/13-SuFG/O-RAN.SuFG.TR.NES-Analysis-R004-v01.01.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.SuFG.TR.NES-Analysis-R004-v01.01.docx).

---

|  |
| --- |
| O-RAN.SuFG.TR.NES-Analysis-R004-v01.![webwxgetmsgimg (7).jpeg](../assets/images/bea03973c631.jpg)01 |

|  |
| --- |
| Technical Report |
|  |

|  |
| --- |
| O-RAN Sustainability Focus Group  Energy Measurements Analysis Report |

|  |
| --- |
|  |
| Copyright (C) 2025 by the O-RAN ALLIANCE e.V.  The copying or incorporation into any other work of part or all of the material available in this document in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this document for your personal use, or copy the material of this document for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.  O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany  Register of Associations, Bonn VR 11238, VAT ID DE321720189 |

Contents

List of figures 3

List of tables 3

Foreword 4

Modal verbs terminology 4

Introduction 4

1 Scope 5

2 References 5

2.1 Informative references 5

3 Definition of terms, symbols and abbreviations 6

3.1 Terms 6

3.2 Symbols 6

3.3 Abbreviations 6

4 Objectives and analysis approach 8

4.1 Objectives 8

4.2 Approach followed 8

5 O-Cloud Energy Measurements 9

5.1 Foundational Requirements for O-Cloud 9

5.1.1 Energy consumption KPIs at hardware level 9

5.1.2 Energy consumption KPIs at Workload level 12

5.1.3 Granular Energy Measurement Reporting and Control 15

6 O-RU Energy Measurements 18

6.1 Foundational Requirement for O-RU 18

6.1.1 O-RU Energy measurements reporting 18

7 O-CU & O-DU Energy related Measurements 25

7.1 Foundational requirements for O-CU / O-DU 25

7.1.1 O-DU & O-CU Energy measurements reporting 25

8 SMO Automations 27

8.1 Foundational requirements on SMO Automations 27

8.1.1 SMO Capabilities related to Energy Measurements 27

Annex: 28

Change history/Change request (history) 28

# List of figures

Figure 1 - O-Cloud Resource Infrastructure Power Consumption Metrics [i.3] 8

Figure 2 - O-Cloud Resource Infrastructure Power Consumption Metrics [i.3] 9

Figure 3 - Energy Consumption of Containers [i.5] 12

Figure 4 - CPU Time usage counter [i.5] 12

Figure 5 - NF Deployment Energy Metrics [i.5] 12

Figure 6 - Cloudified NF Energy Efficiency [i.5] 13

Figure 7 - O-RU Architecture Example Implementation 1 (see Figure 2.3.2-1 [i.11]) 18

# List of tables

Table 5.1.1.2.2-1: PEE Measurements 14

Table 6.1.1.2.1-1: Counters definition (see Table B.1-1 [i.10]) 18

Table 6.1.1.2.1-2: Energy, Power and Environmental Measurements (see Table B.5-1 [i.10]) 19

Table 6.1.1.2.1-3: O-RU Hardware components and purpose (see [i.11]) 19

Table 6.1.1.2.1-4: Energy Saving Features and O-RU Roles (see Table 3 [i.3]) 21

Table 6.1.1.2.2-1: PEE measurements 3GPP TS 28.552 [i.6] 22

# Foreword

This Technical Report (TR) has been produced by O-RAN ALLIANCE .

The content of the present document is subject to continuing work within O-RAN and may change following formal O-RAN approval. Should the O-RAN ALLIANCE modify the contents of the present document, it will be re-released by O-RAN with an identifying change of version date and an increase in version number as follows:

version xx.yy.zz

where:

xx: the first digit-group is incremented for all changes of substance, i.e. technical enhancements, corrections, updates, etc. (the initial approved document will have xx=01). Always 2 digits with leading zero if needed.

yy: the second digit-group is incremented when editorial only changes have been incorporated in the document. Always 2 digits with leading zero if needed.

zz: the third digit-group included only in working versions of the document indicating incremental changes during the editing process. External versions never include the third digit-group. Always 2 digits with leading zero if needed.

# Modal verbs terminology

In the present document "**shall**", "**shall not**", "**should**", "**should not**", "**may**", "**need not**", "**will**", "**will not**", "**can**" and "**cannot**" are to be interpreted as described in clause 3.2 of the O-RAN Drafting Rules (Verbal forms for the expression of provisions).

"**must**" and "**must not**" are **NOT** allowed in O-RAN deliverables except when used in direct citation.

# Introduction

Open RAN energy management is a key sustainability objective shared by mobile operators worldwide, aiming to scale Open RAN technology for commercial deployments and expedite its development. As part of broader industry goals, leading operators have highlighted energy efficiency as critical to Open RAN's success, underscoring their commitment to advancing sustainable telecommunications infrastructure. To achieve meaningful energy savings, while ensuring reliable performance, the telecom industry requires a standardized approach not only to save energy but also to evaluate, test, measure, and monitor energy consumption in Open RAN deployments. This Technical Report (TR) analyzes operator requirements related to energy consumption measurements and energy efficiency KPIs and identifies gaps within O-RAN ALLIANCE specifications to align with these industry-wide priorities

# 1 Scope

The present document provides a technical analysis report aimed at identifying gaps and inconsistencies in the definitions of energy consumption measurements and energy efficiency KPIs across O-RAN ALLIANCE specifications, current MoU Release Operator Requirements, and relevant Standard Development Organizations (SDOs), primarily 3GPP and ETSI. Its objective is to harmonize the reporting of energy consumption KPIs and to enable the calculation of consistent and comparable energy efficiency KPIs.

# 2 References

## 2.1 Normative references

Not applicable.

## 2.2 Informative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies. In the case of a reference to a 3GPP document, a non-specific reference implicitly refers to the latest version of that document in Release 18, or the latest 3GPP release prior to Release 18 that includes that document.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following referenced documents are not necessary for the application of the present document, but they assist the user with regard to a particular subject area.

1. 3GPP TR 21.905: "Vocabulary for 3GPP Specifications".
2. Open RAN Technical Priorities "Release 3" Document: Open RAN MoU Group at Telecom Infra Project (TIP)
3. O-RAN.WG1.NESUC-R003-v02.00: Network Energy Saving Use Cases Technical Report
4. O-RAN.WG6.O2-GA&P-R003-v06.00: O2 Interface General Aspects and Principles
5. O-RAN.WG6.O-Cloud Energy Savings.v00.00.07: Study on O-Cloud Energy Savings
6. 3GPP TS 28.552 v18.5.0: Management and orchestration; 5G performance measurements
7. ETSI GR NFV-EVE 021 V5.1.1 (2023-09): Report on energy efficiency aspects for NFV
8. ETSI ES 202 336-12 v1.2.1v1.2.1: Monitoring and control interface for infrastructure equipment
9. 3GPP TS 28.554 V18.4.0 (2023-12): Management and orchestration; 5G end to end Key Performance Indicators (KPI)
10. O-RAN.WG4.MP.0-R004-v15.00 Management Plane Specifications
11. O-RAN.WG7.OMAC-HRD.0-R003-v03.00: Outdoor Macrocell Hardware Architecture and Requirements
12. O-RAN-WG6.ORCH-USE-CASES-R003-v09.00: Cloudification and Orchestration Use Cases and Requirements for O-RAN Virtualized RAN
13. O-RAN.WG7.NES.0-v1.00: Network Energy Savings Procedures and Performance Metrics
14. 3GPP TS 28.550 V18.3.0 (2023-12): Management and orchestration; Performance assurance
15. 3GPP TS 28.532 V18.1.0 (2023-12): Management and orchestration; Generic management services
16. O-RAN.TIFG.E2E-Test.0-R003-v05.00: End-to-end Test Specification
17. ETSI ES 202 706-1 V1.6.1 (2021-01): Environmental Engineering (EE); Metrics and measurement method for energy efficiency of wireless access network equipment; Part 1: Power consumption - static measurement method
18. ETSI ES 203 228 V1.4.1 (2022-04): Environmental Engineering (EE); Assessment of mobile network energy efficiency
19. O-RAN.WG1.O1-Interface.0-v04.00: O-RAN Operations and Maintenance Interface Specification
20. O-RAN.WG10.OAM-Architecture-R003-v12.00: O-RAN Operations and Maintenance Architecture
21. O-RAN WG6 Orch-Use-Cases-R003: Cloudification and Orchestration Use Cases and Requirements for O-RAN Virtualized RAN
22. O-RAN-WG1. Decoupled-SMO-Architecture-R003-v02.00
23. O-RAN.WG2.Use-Case-Requirements-R003-v09.00

# 3 Definition of terms, symbols and abbreviations

## 3.1 Terms

For the purposes of the present document, the terms and definitions given in 3GPP TR 21.905 [i.1]and the following apply. A term defined in the present document takes precedence over the definition of the same term, if any, in 3GPP TR 21.905 [i.1]

**Energy Efficiency:** Relation between the useful output and energy/power consumption as defined in ETSI ES 203 228 [i.18]

**Energy Consumption:** Integral of power consumption over time as defined in ETSI ES 202 706-1 [i.17]

3GPP TR 21.905 [i.1]: "Vocabulary for 3GPP Specifications"

## 3.2 Symbols

For the purposes of the present document, the following symbols apply:

PNF Deployment, estimated Estimated power consumption of a NF deployment running in the O-Cloud

ECNF Deployment, estimated Estimated energy consumption of a NF deployment running in the O-Cloud

PcloudifiedNF, estimated Estimated power consumption of a Cloudified NF

ECcloudifiedNF, estimated Estimated energy consumption of a Cloudified NF

EEcloudifiedNF Energy efficiency of a Cloudified NF

## 3.3 Abbreviations

For the purposes of the present document, the abbreviations given in [i.1] and the following apply:

3GPP 3rd Generation Partnership Project

CNF Cloud-Native Network Function

DL Down Link

DME Data Management and Exposure

EPE Energy Power Environmental

EE Energy Efficiency

EC Energy Consumption

FPGA Field Programmable Gate Array

gNB Next Generation Node B

KPI Key Performance Indicators

LS Liaison Statement

MnS NF-related Management Services

MoU Memorandum of Understanding

NBI North Bound Interface

NF Network Function

NFPM NF Performance Assurance Management

Non-RT RIC Non-real-time RAN Intelligent Controller

NIC Network Interface Card

O-DU O-RAN Distributed Unit

O-RU O-RAN Radio Unit

PDCP Packet Data Convergence Protocol

PEE Power Energy & Environmental

PM Performance Management

PNF Physical Network Function

RAT Radio Access Technology

SDO Standards Defining Organization

SDU Service Data Unit

SME Service Management and Exposure

SMO Service Management and Orchestration

TG Task Group

UC Use Case

UL Up Link

# 4 Objectives and analysis approach

## 4.1 Objectives

This Technical Report presents the outcomes of the SuFG TG2 Energy Measurement analysis phase, with objectives in the pre-normative phase outlined as follows:

This report evaluates O-RAN ALLIANCE specifications and energy consumption measurement standards to align with industry KPIs, ensuring consistency with operator-specific KPIs that address real-world expectations and requirements from 3GPP and ETSI standards.

The report identifies key gaps and areas for improvement in current O-RAN ALLIANCE specifications, focusing on the need for actionable and practical energy measurement and KPI enhancements. These improvements aim to provide a robust foundation for standardized reporting, ensuring compatibility with industry-wide frameworks and operational needs.

The goal is to propose new measurement approaches and configuration parameters where necessary, addressing identified gaps while maintaining alignment with industry best practices and priorities.

## 4.2 Approach followed

O-RAN SuFG conducted an analysis of the Open RAN Technical Priority Documents, which were published by the Open RAN MoU Group at TIP in March 2023 [i.2]. These documents, developed as part of the memorandum signed by Deutsche Telekom, Orange, Telefonica, TIM, and Vodafone, outline key operator expectations for O-RAN technology. SuFG focused its analysis on energy consumption measurements and energy efficiency KPIs, identifying gaps in the existing O-RAN specifications and providing recommendations for future enhancements within the O-RAN ALLIANCE.

The methodology of this Technical Report includes:

**Current Standard Analysis:** Examines foundational requirements against O-RAN, 3GPP, and ETSI specifications.

**Gap Analysis:** Identifies and documents gaps between these requirements and the specifications.

**Recommendations:** Provides informed recommendations aimed at improving future NES work items in O-RAN, based on the analysis.

# 5 O-Cloud Energy Measurements

## 5.1 Foundational Requirements for O-Cloud

### 5.1.1 Energy consumption KPIs at hardware level

#### 5.1.1.1 Description

The O-Cloud platform to provide power, energy, and environmental (PEE) metrics for all hardware components, including CPU, NIC, and Accelerator card, reporting energy consumption via the O2 interface to the SMO, or through a proprietary NBI interface to external tools until O2 specifications are available.

*Reference MOU "rel2\_CaaS\_123"*

#### 5.1.1.2 Current Standard Analysis

##### 5.1.1.2.1 O-RAN ALLIANCE references

WG1 has identified a similar requirement in their Network Energy Saving Use Cases Technical Report but does not provide any further analysis in that report, see clause 4.2 of O-RAN.WG1.NESUC-R003-v02.00 [i.3].

WG6 has specified a generic Performance Management framework in the Technical Specification for O2 Interface General Aspects and Principles that supports PM reporting of O-Cloud resources to SMO, see clause 3.9 of O-Cloud Performance Basic Concepts of O-RAN.WG6.O2-GA&P-R003-v06.00 [i.4].

The ongoing Study on O-Cloud Energy Savings, now in version O-RAN.WG6.O-Cloud ES-v02.00 [i.5], provides a comprehensive analysis of power and energy consumption metrics at the infrastructure level in clause 6.

The ES technical report [i.3] have identified several KPIs and measurement methodologies for power/energy consumption, and efficiency at various levels within the O-Cloud infrastructure.

* **O-Cloud Resource Power Consumption Metrics**: These metrics include PowerCapacity, PowerConsumed, AveragePowerConsumed, MaxPowerConsumed, and MinPowerConsumed. These measurements apply to relevant O-Cloud resources, capturing the power dynamics over a specified interval.
* **O-Cloud Node Energy Consumption Metrics**: New metrics such as ECnode,core (total energy consumption of CPU cores), ECnode,uncore (uncore components like caches and memory controllers), ECnode,dram (DRAM energy), and others are introduced to monitor energy consumption across different components of the O-Cloud nodes.
* **Container Energy Consumption**: WG6 introduces metrics at the container level, such as ECcontainer, total (total energy consumption within a container), ECcontainer,core (energy used by CPU cores within a container), and other relevant metrics to track energy usage at the container level.

![A screenshot of a computer  Description automatically generated](../assets/images/b6ba8d473a44.png)

Figure 5.1.1.2-1 - Excerpt from O-Cloud Resource Infrastructure Power Consumption Metrics [i.3]

![A screenshot of a computer  Description automatically generated](../assets/images/a719ef0ab550.png)

Figure 5.1.1.2-2 - Excerpt from O-Cloud Node Power Consumption Metrics [i.3]

##### 5.1.1.2.2 3GPP and ETSI references

3GPP TS 28.552 v18.5.0 [i.6] clause 5.1.1.19 specifies following PEE (Power Energy & Environmental) related measurements for a 5G Physical Network Function (PNF):

Table 5.1.1.2.2-1: PEE Measurements [i.6]

|  |  |
| --- | --- |
| **Attribute** | **Description** |
| PEE.AvgPower | This measurement provides the average power consumed over the measurement period in watts (W) |
| PEE.MinPower | This measurement provides the minimum power consumed during the measurement period in watts (W) |
| PEE.MaxPower | This measurement provides the maximum power consumed during the measurement period in watts (W) |
| PEE.Energy | This measurement provides the energy consumed in kilowatt-hours (kWh). |
| PEE.AvgTemperature | This measurement provides the average temperature over the measurement period in degrees Celsius (?C). |
| PEE.MinTemperature | This measurement provides the minimum temperature during the measurement period in degrees Celsius (?C). |
| PEE.MaxTemperature | maximum This measurement provides the temperature during the measurement period in degrees Celsius (?C). |
| PEE.Voltage | This measurement provides the voltage in volts (V) |
| PEE.Current | This measurement provides the current in ampere (A) |
| PEE.Humidity | This measurement provides the percentage of humidity during the measurement period (as integer value between 0-100) |

For the measurement methods of each of the above measurements, the 3GPP TS references the respective clause in ETSI ES 202 336-12 v1.2.1 [i.8]. The equipment in scope of ETSI ES 202 336-12 v1.2.1 [i.8]is not limited to 3GPP 5G PNFs, but has a broader scope, i.e., all types of ICT equipment that is used in telecommunications networks, see Table 1 in clause 4.4.1 of ETSI ES 202 336-12 v1.2.1 [i.8].

#### 5.1.1.3 Gap Analysis

Looking at the MoU requirement and the standards references above, SuFG TG2 interprets "rel2\_CaaS\_123" as requirement for providing power, energy and environmental (PEE) parameters and measurement data for O-RAN resources to SMO in a similar way as specified by 3GPP TS 28.552 [i.6] for PNFs. As O-CU and O-DU are not necessarily PNFs but can be implemented as virtualized NFs (VNFs/CNFs) running in O-Cloud, the O-Cloud will need the capability to collect PEE measurements of all relevant physical components of O-Cloud, and to provide these as PM data to SMO, similar to the PEE measurements provided by O-RU (as already specified by relevant WGs).

WG6 has already specified a generic framework for PM reporting and is currently working on stage 3 specifications for O2 PM. In the ongoing study on O-Cloud Energy Savings WG6 has provided an initial analysis for power and energy consumption metrics of infrastructure

SuFG TG2 identified following gaps:

* **WG6 has not defined a data model for O2 PM measurements**. Currently, only a framework exists for transporting supplier-proprietary data elements, which are specified within supplier-specific dictionaries.
* **Discussions within WG6 have revealed differing opinions** regarding the exposure of hardware and component-level measurements to the SMO, resulting in a lack of consensus on this issue.
* **The O-RAN ALLIANCE has not yet established a clear definition or framework** for measuring hardware energy efficiency, such as computing performance per watt (Compute/Watt).

It is important to note that all current work in WG6 is still at the study level, and there have been no normative discussions on power or energy measurements thus far.

#### 5.1.1.4 Proposed Recommendations

Table 5.1.1.4-1 O-Cloud Energy Measurement recommendations

|  |  |  |  |
| --- | --- | --- | --- |
| **Recommendation ID** | **Title** | **Description** | **Motivation** |
| **SuFG-to-WG6-REC-001** | Standardized Data Model for O2 PM Measurements | Define a standardized data model for Power and Energy (PE) measurements within the O2 interface, including metrics like PowerCapacity, PowerConsumed, etc. | Improves consistency and cross-vendor interoperability in energy management. |
| **SuFG-to-WG6-REC-002** | Exposure of Hardware Measurements to SMO | Establish guidelines for securely exposing hardware and component-level power and energy measurements to the SMO, with specific metrics and reporting conditions. | Enhances transparency and enables effective energy management in SMO. |
| **SuFG-to-WG6-REC-003** | Hardware Energy Efficiency | Define a standardized data model for reporting workload-level energy metrics (e.g., container, pod, CNF)  over the O2 interface, including metrics like ECcontainer,total, ECNF Deployment, estimated, etc. | Enables consistent hardware energy efficiency metrics for optimization. |

### 5.1.2 Energy consumption KPIs at Workload level

#### 5.1.2.1 Description

The O-Cloud platform to provide power, energy and environmental (PEE) parameters and measurement data at the workload level e.g. container, pod, CNF, etc. as well as for the O-Cloud software components themselves. O-Cloud platform be able to report energy efficiency through O2 interface to SMO or NBI inteface to external tooling.

*Reference MOU "rel2\_CaaS\_124"*

#### 5.1.2.2 Current Standard Analysis

##### 5.1.2.2.1 O-RAN ALLIANCE references

WG1 has identified a similar requirement in their Network Energy Saving Use Cases Technical Report but does not provide any further analysis in that report, see clause 4.2 of O-RAN.WG1.NESUC-R003-v02.00 [i.3].

WG6 has specified a generic Performance Management framework in the Technical Specification for O2 Interface General Aspects and Principles that supports PM reporting of O-Cloud resources to SMO.

WG6 defined power and energy consumption metrics at the workload level within the O-Cloud in Energy Savings Technical Report (O-RAN.WG6.O-Cloud ES-v02.00 [i.5]). Specifically, clauses 6.3 and 6.4 outline metrics for containers, NF deployments, and Cloudified NFs. These include energy consumption metrics such as ECcontainer,total, ECcontainer,core, and ECNF Deployment, estimated, which allow for detailed monitoring and analysis of energy consumption at various levels of the O-Cloud infrastructure. WG6 has also highlighted the importance of these metrics in assessing the performance of energy efficiency strategies and making necessary policy adjustments. power and energy consumption metrics [i.5] (Table 5.1.2.2.1-1):

![A screenshot of a computer  Description automatically generated](../assets/images/a70fd653f88d.png)

Figure 5.1.2.2-1 - Excerpt from O-Cloud Energy Consumption of Containers [i.5]

![A screenshot of a computer  Description automatically generated](../assets/images/0db6b7bff497.png)

Figure 5.1.2.2-2 - Excerpt from O-Cloud CPU Time usage counter [i.5]

![A screenshot of a computer  Description automatically generated](../assets/images/e0c8a4a37f99.png)

Figure 5.1.1.2-3 - Excerpt from O-Cloud NF Deployment Energy Metrics [i.5]

![A screenshot of a computer  Description automatically generated](../assets/images/4b1eba62e088.png)

Figure 5.1.1.2-4 - Excerpt from O-Cloud Cloudified NF Energy Efficiency [i.5]

##### 5.1.2.2.2 3GPP and ETSI references

Relevant 3GPP and ETSI references are covered by the WG6 TR, these are ETSI GR NFV-EVE 021 [i.7] and clause 6.7.3.1.4 of 3GPP TS 28.554 [i.9].

ETSI NFV EVE (authoring WG of ETSI GR NFV-EVE 021 [i.7] and 3GPP SA5 (responsible WG for 3GPP TS 28.554 [i.9]) had an LS exchange about "5G network energy efficiency and energy saving", that highlight results of ETSI NFV EVE informative work in ETSI GR NFV-EVE 021 [i.7].

Based on the LS from ETSI NFV EVE to 3GPP SA5, SuFG TG2 expects that ETSI NFV will provide normative specifications to derive actual VNF/CNF power consumption by collecting relevant metrics about power consumption of underlying virtualized resources without having to rely on estimated values based on other metrics. Their intention is to make extensible the functionality to collect power consumption for any kind of NFVI resources, if feasible. 3GPP SA5 can then take this normative work as basis to update their TS 28.554 [i.9].

#### 5.1.2.3 Gap Analysis

Observations related to WG6:

* As mentioned in 5.1.1.3 WG has yet to establish a mechanism for reporting of PM data in a standardized, Interoperable manner.
* Furthermore, WG6 will need to work out a detailed flow about how power and energy consumption metrics of NF deployment and cloudified NFs is derived and made available for SMO; respective specifications updates will need to be made.

The following SMO requirement is also connected to this topic:

MoU Requirement rel\_2\_SMO\_116 [i.2]: "*Dashboards for power consumption of clusters should be available in SMO (****power consumption by worker****, by switch, by FAN, by HW acceleration, by site, by data center,* ***by CaaS, PaaS, tools****). Operator should be able to export all dashboard manually or automatically"*

MoU Requirement rel\_2\_SMO\_118 [i.2]: *"Power consumption metrics/KPI/counters/logs of CNFs should be available on SMO per NF type and per NF instance to allow automated load consolidation."*

#### 5.1.2.4 Proposed Recommendations

Table 5.1.2.4-1 - Workload Energy consumption measument recommendations

|  |  |  |  |
| --- | --- | --- | --- |
| **Recommendation ID** | **Title** | **Description** | **Motivation** |
| **SuFG-to-WG6-REC-004** | Standardized Data Model for NF Deployment Level Energy Measurements | Define a standardized data model for reporting NF deployment energy metrics (e.g., container, pod, CNF) over the O2 interface, including metrics like ECcontainer,total, ECNF Deployment, estimated, etc. | Ensures consistent and vendor-agnostic reporting of energy metrics to SMO. |
| **SuFG-to-WG6-REC-005** | Net Energy Consumption Reporting | Implement mechanisms for capturing and reporting energy consumption metrics at the container level (e.g., ECcontainer,total, ECcontainer,core) via the O2 interface. | Facilitates detailed monitoring and optimization of energy usage at the container level. |

### 5.1.3 Granular Energy Measurement Reporting and Control

#### 5.1.3.1 Description

O-CU/O-DU hardware (e.g. CPU, Accelerators, NIC cards, Fans(s), PSU, etc.) to have the capability to measure and report power consumption values to the O-Cloud (via O2 interface).

Reference [i.2] MOU "rel3\_CaaS\_125"

#### 5.1.3.2 Current Standard Analysis

##### 5.1.3.2.1 O-RAN ALLIANCE references

In the ongoing Study [i.5] , WG6 has identified the relevant energy efficiency KPIs in clause 6.4, also including the relevant 3GPP and ETSI references:

*"The approach for assessing energy efficiency of Cloudified NF strongly depends on the functionality and purpose of the Cloudified NF. In general, the energy efficiency of a Cloudified NF can be determined by assessing its delivered performance versus its energy consumption over a defined time interval following formula:*

$$EE\_{cloudified NF}=\frac{Perf\_{Cloudified NF}}{EC\_{Cloudified NF}}$$

*Wherein* $Perf\_{Cloudified NF}$ *corresponds to the service p*

**Table 5.1.3.2.1-1: Types of Energy Efficiency Measures (see Table 6.4.2-1 [i.5])**

|  |  |  |
| --- | --- | --- |
| **Measurement Approach** | **Description** | **Unit** |
| Energy efficiency assessment based on PDCP SDU data volume | [i.9] clause 6.7.1 and [i.18], clause 5.3 | bit/J |
| Energy efficiency assessment based on coverage | [i.18], clause 5.3 | m2/J |
| Energy efficiency assessment based on latency (used for URLLC slice) | [i.9], clause 6.7.2.3.2 and [i.18], clause 5.3 | (0.1ms \* J)-1 |
| Energy efficiency assessment based on both latency and data volume  (used for URLLC slice) | [i.9], clause 6.7.2.2 and 6.7.2.2a | bit/(0.1ms\*J) |
| Energy efficiency of registered subscribers  (used for MIoT slice) | [i.9], clause 6.7.2.4.1 | user/J |
| Energy efficiency of number of active UEs  (used for MIoT slice) | [i.9], clause 6.7.2.4.2 | user/J |

NOTE:"Further information on how these KPIs is calculated are available in the relevant 3GPP and ETSI specifications. Selection of a particular way of measuring the energy efficiency depends on the requirements, type of deployments and use-cases. It is expected that the SMO can compute the Energy consumption and efficiency of a Cloudified NF based on measurements from the O-Cloud. Energy efficiency calculations may involve collaboration with other working groups, such as WG10."

WG6 specifications for O2 general aspects and principles (see clause 3.9 of O-RAN.WG6.O2-GA&P-R003-v06.00 [i.4] and use-cases and requirements (see clasue 3.8 of O-RAN-WG6.ORCH-USE-CASES-R003-v09.00 [i.12]) for PM are available. These enable SMO to interact with PM services to receive measurement reports and to perform PM jobs related interations, e.g. request for, subsribe to, update, PM jobs

Stage 3 for O-Cloud PM for O2 interface is expected to be covered in the future releases.

WG1studied decoupling of SMO Services (SMOS) offered by different SMO Functions in O-RAN-WG1. Decoupled-SMO-Architecture-R003-v02.00 [i.22]. In clause 5.1.1 the RAN NF Performance Assurance Management SMO Service (NFPM) is discussed. It describes the NFPM SMOS that provides a mechanism for the NFPM SMOS consumers to create and terminate the PM job as well as querying the related PM information by consuming PM MnS via O1 interface and Open Fronthaul M-Plane interface. This enables a NFPM SMOS consumers to collect PM measurements as defined in 3GPP TS 28.552 [i.6], like DL PDCP SDU Data Volume per interface in clause 5.1.3.6.2.3, UL PDCP SDU Data Volume per interface in clause 5.1.3.6.2.4, PNF Energy consumption in clause 5.1.1.19.3 or Power consumed by Physical Network Function & its components in clause 5.1.1.19.2.

Generic mechanisms for O1 PM are already standardized, see O-RAN.WG1.O1-Interface.0-v04.00 [i.19] clause 2.3 Performance Assurance Management Services and O-RAN.WG10.OAM-Architecture-R003-v11.00 [i.20] clause4.2.2 O-RAN Measurement Data Collection Use Case.

##### 5.1.3.2.2 3GPP and ETSI references

In addition to the 3GPP and ETSI references above, it is relevant to look at the 3GPP specifications for the OA&M collection method, which are 3GPP TS 28.550 [i.14] and 3GPP TS 28.532 [i.15]. 3GPP defines one set of generic procedures for all types of PM measurements and KPIs that are specified in 3GPP TS 28.552 [i.6] and TS 28.554 [i.9].

#### 5.1.3.3 Gap Analysis

Looking at the MoU requirement and the standards references above, SuFG TG2 interprets "rel2\_CaaS\_123" as requirement towards O2 PM services, i.e. to enable a management service within SMO to control requests and collection of sufficient energy/power measurements in a way that allows it to synchronise these PM measurements with relevant performance PM measurements from E2 Nodes over the respective interfaces so that management service within SMO can calculate meaningful EC and EE KPIs.

The following SMO requirement is also connected to this topic:

MoU Requirement rel\_1\_SMO\_62: "*SMO shall be capable to receive energy metrics / create KPIs to optimize the management devices"*

#### 5.1.3.4 Proposed Recommendations

Table 5.1.3.4-1 - Granular Energy measument reporting and control recommendations

|  |  |  |  |
| --- | --- | --- | --- |
| **Requirement ID** | **Title** | **Description** | **Motivation** |
| **SuFG-to-WG6-REC-006** | Granular Energy Measurement Reporting and Control | O-Cloud platform to provide detailed power, energy, and environmental (PEE) data, including whether the data is instantaneous or averaged, and allow control over parameters like rolling window size for averages. | Enables precise KPI computation and flexibility in measurement reporting. |
| **SuFG-to-WG6-REC-007** | Power Metering for O-Cloud Hardware | The O-Cloud should be capable of measuring the energy consumption of hardware components associated with O-RAN CNFs, such as O-CU and O-DU (e.g., CPU, accelerators, NIC cards, fans, and PSUs). It should also support the measurement and reporting of power consumption values to the O-Cloud via the O2 interface | Facilitates comprehensive energy monitoring across all hardware components. |
| **SuFG-to-WG1-REC-001** | Energy Efficiency KPI Assessment for Cloudified NF | The SMO be computing energy efficiency KPIs for Cloudified NFs based on various measures (e.g., PDCP SDU data volume, coverage, latency, registered subscribers) to assess the energy performance over defined intervals. | Supports optimal energy management and policy adjustments for Cloudified NFs. |

# 6 O-RU Energy Measurements

## 6.1 Foundational Requirement for O-RU

### 6.1.1 O-RU Energy measurements reporting

#### 6.1.1.1 Description

Availability of counters/KPIs to be able to monitor in any time the power consumption per RAT, frequency band in multi-band RUs. Reporting capability towards Management systems or external tooling.

*Reference (MoU Requirement "rel2\_O-RU\_43", rel3\_RAN\_features\_48 & MOU Requirement rel\_2\_SMO\_124)*

#### 6.1.1.2 Current Standard Analysis

##### 6.1.1.2.1 O-RAN ALLIANCE references

The requirement specifies the measurements to be reported from the O-RU. The counters associated with epe-stats are the only ones that deal with energy measurements. Transceiver-stat, rx-window-stats and tx-measurement-objects are not relevant for energy measurements. This requirement is already specified in existing O-RAN.WG4.MP.0-R004-v15.00 [i.10] technical specification.

According to Table 6.1.1.2.1-1, energy, power and environmental statistics (EPE-STATS) are the following:

**Table 6.1.1.2.1-1: Counters definition (see Table B.1-1 [i.10])**

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **measurement-**  **group** | **measurement-object** | **report-info** | **object-unit** | **Note** |
| epe-statistics | POWER  TEMPERATURE  VOLTAGE  CURRENT | MAXIMUM  MINIMUM  AVERAGE | Hardware component type, e.g., O-RAN-RADIO, O-RU-POWER- AMPLIFIER, O- RU-FPGA, power- supply, fan, cpu | Type decimal 64 including 4 fraction-digits for max, min, average.  Power measured using method specified in clause 5.1.1.19 of 3GPP TS 28.552  Unit of power: watts (W)  Temperature measured using method specified in clause 5.1.1.19 of 3GPP TS 28.552  Unit of temperature: Celsius  Voltage measured using method as specified in clause 5.1.1.19 of 3GPP TS 28.552  Unit of voltage: Volts  Current measured using method specified in clause 5.1.1.19 of 3GPP TS 28.552  Unit of current: Amperes |

For further details, see annex B.5 [i.10]:

The epe-stats include the performance measurement for energy, power and environmental parameters, as shown in the following table. An O-RU shall report its supported measurement objects per hardware component class.

Table 6.1.1.2.1-2: Energy, Power and Environmental Measurements (see Table B.5-1 [i.10])

|  |  |
| --- | --- |
| **measurement-object** | **Description** |
| POWER | Value of measured power consumed by identified hardware component |
| TEMPERATURE | Value of measured temperature of identified hardware component |
| VOLTAGE | Value of measured voltage of identified hardware component |
| CURRENT | Value of measured current of identified hardware component |

Measurement objects measure the power, temperature, voltage and current of hardware components of the O-RU. The specification O-RAN.WG4.MP.0-R004-v15.00 [i.10] mentions hardware types such as O-RAN-RADIO, O-RU-POWER-AMPLIFIER, O-RU-FPGA, power supply, fan, and CPU.

Based on Technical Specification O-RAN.WG7.OMAC-HRD.0-R003-v03.00 [i.11] the following O-RU hardware components are identified:

Table 6.1.1.2.1-3: O-RU Hardware components and purpose (see [i.11])

|  |  |
| --- | --- |
| **Hardware Component** | **Purpose** |
| O-RAN Fronthaul Unit | Communicates with O-DU through the O-RAN Fronthaul interface and processes control/data packets using the CUS and M plane processing block. |
| Low-PHY Processing | Responsible for physical layer processing tasks like encoding, scrambling, modulation, layer mapping, precoding, beamforming, and resource element mapping. |
| Digital Processing Unit | Handles digital frequency conversion and implements DPD and CFR algorithms to enhance power amplifier efficiency by reducing PAPR/ACLR. |
| RF Processing Unit | Processes RF signals, interfacing between digital signals in the digital processing unit and the analog domain in the transceiver unit. |
| Transceiver Unit | Converts digital signals to analog in DL (using DAC) and analog to digital in UL (using ADC), facilitating signal transmission and reception. |
| Power Amplifier | Amplifies signals. PA boosts power of outgoing signals in DL, and LNA enhances strength of incoming signals in UL. |
| Cavity Filter | Suppresses unwanted signals. Used after amplification in DL and before amplification in UL. |
| TDD Switch | Switches operation between DL and UL, allowing the system to alternate between transmit and receive operations. |
| Antenna Unit | Transmits processed signals over the air in DL and receives signals from the air in UL. |
| Power Unit | Supplies power to the processing units (FH, Digital, and RF). |
| Timing/Synchronization Block | Ensures that the processing units are synchronized, crucial for signal integrity and timing accuracy. |
| Antenna Calibration Processing Block | Compensates for amplitude and phase offsets in each RF chain, ensuring accurate beamforming. |

![A diagram of a computer system  Description automatically generated](../assets/images/5c41bb697bdd.png)

Figure 6.1.1.2.1-1 - O-RU Architecture Example Implementation (see Figure 2.3.2-1 [i.11])

* Energy Saving features

To improve energy efficiency, it's crucial to examine how measurements from the O-RU can be used and what types are needed for various energy-saving features. The current O-RAN specifications don't define the necessary energy measurements for these features in the O-RU. The following details are from the WG1 O-RAN.WG1.NESUC-R003-v02.00 technical report on O-RU rules for different energy-saving features:

O-RU Specific KPIs: Energy Efficiency and power consumption KPIs provided by real-time metering.

Table 6.1.1.2.1-4: Energy Saving Features and O-RU Roles (see Table 3 [i.3])

|  |  |
| --- | --- |
| **Energy Saving Feature** | **O-RU Roles** |
| Carrier and Cell Switch Off/On  O-RAN.WG1.NESUC-R003-v02.00 [i.3] Clause 5.2.2.2 and 5.2.2.3.1 | a) Report EC and EE related information via Open FH M-Plane interface to O-DU or alternatively to SMO directly.  b) Support actions required to perform EE/ES optimization. updated carrier configuration (i.e. activation, deactivation or sleep)  c) Input data: Power consumption metrics: Mean total/per carrier power consumption, mean total/per carrier transmit power |
| RF Channel Reconfiguration  O-RAN.WG1.NESUC-R003-v02.00 [i.3] Clause 6.2.1.2 and 6.2.1.3.1 | a) Report EC and EE related information over Open FH M-Plane to O-DU or alternatively to SMO directly.  b) Perform actions required to be performed due to RF Channel Reconfiguration (i.e., O-RU Tx/Rx Array selection, modification of the number of SSB beams, modification of the O-RU Antenna Transmit power, modification of the number of SU/MU MIMO spatial streams or data layers) as part of EE/ES optimization.  c) Input: Power consumption metrics: Mean total/per carrier power consumption, mean total/per carrier transmit power.  Information on supported Tx/Rx Array selections along with power consumption (site/O-RU input power needed for certain EE KPIs) |
| Advanced Sleep Mode Selection  O-RAN.WG1.NESUC-R003-v02.00 [i.3] Clause 7.2.1.2 | a) Support reporting the O-RU SMs capabilities and additional operational parameters to O-DU via O-FH.  b) Internally apply SM selection or alternatively receive over O-FH and apply O-DUs request for updated SM configuration (e.g., switch off a certain O-RU functionality).  c) Input: missing from the TR |

WG1.NESUC-R003-v02.00 TR [i.3] is referencing the 3GPP TS 28.552 [i.6], clause.5.1.1.19.2 and O-RAN.WG4.MP [i.10] (Clause B.1 and B.5) in relation to the energy measurements.

* Shared O-RU Scenario

The O-RU energy efficiency could also be beneficial in a Multi-Operator Operation scenario. Based on the technical specification O-RAN.WG4.MP.0-R004-v15.00 [i.10], clause 19, O-FH shall support the multi-operator scenario:

"Shared O-RU performance management

The NETCONF client of a Shared Resource Operator is identified by using a user list entry in o-ran-usermgmt YANG model that contains a configured sro-id. Such a NETCONF client shall have restricted access privileges to the o-ran-performance-management YANG model as described in sub-clause O-RAN.WG4.MP.0-R004-v15.00 [i.10], 19.3.3. An O-RU supporting the SHARED-ORU-MULTI-OPERATOR feature should support the GRANULARITY-TRANSPORT-MEASUREMENT and/or the GRANULARITY-EAXC-ID-MEASUREMENT features. These allow the O-RU to report rx-window-measurement-objects on a per ru-element and/or eaxcid basis, meaning window measurements pertain to the transport flows and/or eaxcids associated with a particular Shared Resource Operator. A Shared O-RU Host can configure multiple remote-file-uploads list entries corresponding to the individual file servers of different Shared Resource Operators. However, there is currently no role-based access control applied to file management-based performance management reporting, as specified in clause [i.10] 10.3.2. If access to configured measurement results needs to be controlled on a per Shared Resource Operator basis, file management-based performance management should not be used."

6.1.1.2.2 3GPP and ETSI references

The table below collects the PEE (Power, Energy and Environmental) measurements from 3GPP TS 28.552 [i.6], Clause 5.1.1.19, which specifies the performance measurements for 5G networks, including network slicing.

Table 6.1.1.2.2-1: PEE measurements 3GPP TS 28.552 [i.6]

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| PEE Measurement Type | Description | Unit | Measurement Name | Obtained According to |
| **PNF Power Consumption** |  |  |  |  |
| Average Power | Average power consumed over the measurement period. | Watts (W) | PEE.AvgPower | ETSI ES 202 336-12 v1.2.1 [i.8] clauses 4.4.3.1, 4.4.3.4, Annex A |
| Minimum Power | Minimum power consumed during the measurement period. | Watts (W) | PEE.MinPower | ETSI ES 202 336-12 v1.2.1 [i.8] clauses 4.4.3.1, 4.4.3.4, Annex A |
| Maximum Power | Maximum power consumed during the measurement period. | Watts (W) | PEE.MaxPower | ETSI ES 202 336-12 v1.2.1 [i.8]clauses 4.4.3.1, 4.4.3.4, Annex A |
| PNF Energy Consumption | Energy consumed. | Kilowatt-hours (kWh) | PEE.Energy | ETSI ES 202 336-12 v1.2.1 [i.8] clauses 4.4.3.1, 4.4.3.4, Annex A |
| Average Temperature | Average temperature over the measurement period. | Degrees Celsius (?C) | PEE.AvgTemperature | ETSI ES 202 336-12 v1.2.1 [i.8] clause 4.4.3.4, Annex A |
| Minimum Temperature | Minimum temperature during the measurement period. | Degrees Celsius (?C) | PEE.MinTemperature | ETSI ES 202 336-12 v1.2.1 [i.8] clause 4.4.3.4, Annex A |
| Maximum Temperature | Maximum temperature during the measurement period. | Degrees Celsius (?C) | PEE.MaxTemperature | ETSI ES 202 336-12 v1.2.1 [i.8] clause 4.4.3.4, Annex A |
| PNF Voltage | Voltage. | Volts (V) | PEE.Voltage | ETSI ES 202 336-12 v1.2.1 [i.8] Clauses 4.4.3.3, 4.4.3.4, Annex B |
| PNF Current | Current. | Amperes (A) | PEE.Current | ETSI ES 202 336-12 v1.2.1 [i.8] Clauses 4.4.3.3, 4.4.3.4, Annex B |
| PNF Humidity | Percentage of humidity during the measurement period. | Percentage (0-100) | PEE.Humidity | ETSI ES 202 336-12 v1.2.1 [i.8] clause 4.4.3.3, Annex B |

#### 6.1.1.3 Gap Analysis

* The requirement is met by referencing the O-RAN.WG4.MP.0-R003-v15.00 [i.10]
* In further analysis, the table below compares EPE-STATS and PEE from the TS 28.552 [i.6] specification. The last column checks if the EPE stat matches the PEE stats.

Table 6.1.1.3-1: EPE-STATS and PEE comparison

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| PEE Measurement Type | Description | Unit | Measurement Name | Obtained According to | Checklist (Similar in EPE-STATS) |
| **PNF Power Consumption** |  |  |  |  |  |
| Average Power | Average power consumed over the measurement period. | Watts (W) | PEE.AvgPower | ETSI ES 202 336-12 v1.2.1 [i.8] clauses 4.4.3.1, 4.4.3.4, Annex A | Yes |
| Minimum Power | Minimum power consumed during the measurement period. | Watts (W) | PEE.MinPower | ETSI ES 202 336-12 v1.2.1 [i.8] clauses 4.4.3.1, 4.4.3.4, Annex A | Yes |
| Maximum Power | Maximum power consumed during the measurement period. | Watts (W) | PEE.MaxPower | ETSI ES 202 336-12 v1.2.1 [i.8] clauses 4.4.3.1, 4.4.3.4, Annex A | Yes |
| PNF Energy Consumption | Energy consumed. | Kilowatt-hours (kWh) | PEE.Energy | ETSI ES 202 336-12 v1.2.1 [i.8] clauses 4.4.3.1, 4.4.3.4, Annex A | No |
| **PNF Temperature** |  |  |  |  |  |
| Average Temperature | Average temperature over the measurement period. | Degrees Celsius (?C) | PEE.AvgTemperature | ETSI ES 202 336-12 v1.2.1 [i.8] clause 4.4.3.4, Annex A | Yes |
| Minimum Temperature | Minimum temperature during the measurement period. | Degrees Celsius (?C) | PEE.MinTemperature | ETSI ES 202 336-12 v1.2.1 [i.8] clause 4.4.3.4, Annex A | Yes |
| Maximum Temperature | Maximum temperature during the measurement period. | Degrees Celsius (?C) | PEE.MaxTemperature | ETSI ES 202 336-12 v1.2.1 [i.8] clause 4.4.3.4, Annex A | Yes |
| PNF Voltage | Voltage. | Volts (V) | PEE.Voltage | ETSI ES 202 336-12 v1.2.1 [i.8] Clauses 4.4.3.3, 4.4.3.4, Annex B | Yes |
| PNF Current | Current. | Amperes (A) | PEE.Current | ETSI ES 202 336-12 v1.2.1 [i.8] Clauses 4.4.3.3, 4.4.3.4, Annex B | Yes |
| PNF Humidity | Percentage of humidity during the measurement period. | Percentage (0-100) | PEE.Humidity | ETSI ES 202 336-12 v1.2.1 [i.8] clause 4.4.3.3, Annex B | No |

* Based on the comparison above in EPE-STATS, the energy consumption (kWh) and humidity counter are missing.
* In defining EPE-STAT, it was not clearly specified which hardware components need to transmit these data. Based on the O-RAN.WG7.OMAC-HRD.0-R003-v03.00 [i.11] specification, multiple O-RU hardware components were identified.
* The O-RAN.WG1.NESUC-R003-v02.00 [i.3] technical report describes the energy-saving features for O-RAN, along with the equipment roles and requirements of the equipment involved. The features such as Carrier and Cell Switch Off/On and RF Channel Reconfiguration energy-saving require power consumption metrics, including mean total power consumption/per carrier, as well as the mean total transmit power/per carrier. Measuring power consumption per carrier may require multiple sensors or additional calculations; refer to the following requirement for more details.
  + The technical report also discusses the Advanced Sleep Mode Selection energy-saving feature, which does not rely on any input counters or metrics from the O-RU. In this scenario, it is unclear which counters are required or how power consumption could be measured across different sleep mode types.
* **Advanced sleep mode with M-PLANE OFF**

Advanced sleep mode with M-PLANE OFF, also known as Deep-Hibernate sleep mode, please refer to clause 20.5 of O-RAN.WG4.MP.0-R004-v15.00 [i.10]

* In a multi-operator scenario, it would be beneficial to measure or calculate the energy consumption for each operator. The current specification only requires the rx-window-measurement-objects.

#### 6.1.1.4 Proposed Recommendations

Table 6.1.1.4-1 - O-RU Energy measurements related recommendations

|  |  |  |  |
| --- | --- | --- | --- |
| **Recommendation ID** | **Title** | **Description** | **Motivation** |
| **SuFG-to-WG4-REC-001** | O-RU Per Carrier Power consumption | O-RU Power Efficiency in Multi-Band Operations Power efficiency metrics should be available for each frequency band in multi-band O-RUs, reporting the efficiency of each band's energy consumption. | Facilitates fine-tuned energy optimization by assessing and adjusting power usage for each active frequency band. |
| **SuFG-to-WG4-REC-002** | O-RU energy consumption.  PEE.Energy (kWh) | Total energy consumed by the O-RU during specific measurement period | Its part of ETSI ES 202 336-12 v1.2.1 [i.8], however not included in O-RAN WG4 EPE-STAT. |
| **SuFG-to-WG4-REC-003** | O-RU Energy consumption during M-Plane off (Deep Hibernate) | The O-RU should report its energy consumption for the period when it was in deep hibernate mode after the M-Plane connection is re-established. | When the M-Plane is off, the O-RU cannot report real-time energy consumption data, making it difficult for operators to monitor energy usage during hibernation. By providing energy consumption data after re-establishing the M-Plane, operators can accurately assess energy savings and manage consumption during deep hibernate periods.. |
| **SuFG-to-WG4-REC-004** | O-RU Real-Time Power Monitoring | Real-time power consumption metrics should be accessible from the O-RU to monitor transient power changes dynamically | Enables continuous tracking of power fluctuations, supporting immediate adjustments in energy management strategies, especially valuable in high-demand or multi-tenant deployments. |
| **SuFG-to-WG4-REC-005** | O-RU Power Consumption per Antenna Array | Detailed power consumption metrics for each antenna array in MIMO configurations within the O-RU. | Supports energy optimization in MIMO setups by enabling power adjustments for individual antenna arrays based on demand and usage patterns |

# 7 O-CU & O-DU Energy related Measurements

## 7.1 Foundational requirements for O-CU / O-DU

### 7.1.1 O-DU & O-CU Energy measurements reporting

#### 7.1.1.1 Description

O-CU and O-DU to provide CNF level energy efficiency counters / KPIs (e.g. Traffic load / data volume / throughput), which is to be reported through O1 interface to the SMO or through NBI to external tooling.

Reference (MoU Requirement "rel\_2\_O-CU\_O-DU\_66")

#### 7.1.1.2 Current Standard Analysis

##### 7.1.1.2.1 O-RAN ALLIANCE references

WG1 has identified a similar requirement in their Network Energy Saving Use Cases Technical Report O-RAN.WG1.NESUC-R003-v02.00 [i.3].

WG2 is using O-CU/O-DU EC measurements in Non-RT RIC & A1/R1 interface: Use Cases and Requirements, see clause 4.8 in O-RAN.WG2.Use-Case-Requirements-R003-v09.00 [i.23] but only for O-CU/O-DU deployed as PNF.

In the ongoing Study on O-Cloud Energy Savings (current draft version O-RAN.WG6.O-Cloud Energy Savings.v00.00.07[i.5], WG6 has stated the following in clause 6.4:

"*It is expected that the SMO can compute the Energy consumption and efficiency of a Cloudified NF based on measurements from the O-Cloud*"

##### 7.1.1.2.2 3GPP and ETSI reference

Refer to Clause 5.2.2 in the document.

#### 7.1.1.3 Gap Analysis

The O-CU and O-DU can exist as Cloudified NFs, or Physical NFs and energy consumption metrics should be available in SMO for both deployment options.

* When the O-CU and O-DU are deployed as PNFs, the reporting of energy consumption by both will be via the O1 interface to the SMO.
* When the O-CU and O-DU are deployed as VNFs/CNFs, the reporting of energy consumption of O-Cloud resources should be via the O2 interface and a management function in SMO would need to determine energy consumption for the O-CU and O-DU NF deployment. The issue has not yet been addressed.

#### 7.1.1.4 Proposed Requirements or Recommendations

Table 7.1.1.4-1 - PNF O-CU & O-DU Energy measument recommendations

|  |  |  |  |
| --- | --- | --- | --- |
| **Recommendation ID** | **Title** | **Description** | **Motivation** |
| **SuFG-to-WG10-REC-001** | O-CU/O-DU Energy Reporting for PNFs | O-CU and O-DU to report energy efficiency metrics as Physical Network Functions (PNFs) via the O1 interface, including energy usage KPIs such as power consumption per data volume and per traffic load. | Provides a standardized energy reporting method for PNFs, allowing the SMO to analyze and manage energy efficiency across both cloudified and non-cloudified O-CU and O-DU deployments. |

# 8 SMO Automations

## 8.1 Foundational requirements on SMO Automations

### 8.1.1 SMO Capabilities related to Energy Measurements

#### 8.1.1.1 Description

SMO is capable to receive energy metrics / create KPIs to optimize the management devices

Reference [i.2] (MoU Requirement rel\_1\_SMO\_62)

#### 8.1.1.2 Current Standard Analysis

##### 8.1.1.2.1 O-RAN ALLIANCE references

The same references apply as described in clause 5.1.3.2.1.

##### 8.1.1.2.2 3GPP and ETSI references

EE KPIs are defined in 3GPP TS 28.554 [i.9]. clause 6.7.1 NG-RAN data Energy Efficiency (EE) for PNFs.

Additionally, the same references apply as described in clause 5.1.3.2.2.

#### 8.1.1.3 Gap Analysis

Looking at the MoU requirement and the standards references above, SuFG TG2 identified following gaps:

* Missing specification of SMOS for collecting relevant PM measurements (as defined in 3GPP TS 28.552 [i.6])
* Missing specification of SMOS for calculating EE KPIs as defined in 3GPP TS 28.554 [i.9]. clause 6.7.1 NG-RAN data Energy Efficiency (EE) for PNFs
* Missing specification of SMOS for
  + collecting relevant PM measurements of O-Cloud resources via the O2 interface
  + determining energy consumption for the O-CU and O-DU VNF/CNF deployment
  + for calculating EE KPIs as listed in Table 5.1.3.2.1-1

The following SMO requirement is closely related to this topic:

[i.2] MoU Requirement rel3\_CaaS\_125: "*O-Cloud platform shall provide sufficient power, energy and environmental (PEE) parameter and measurement data details in order to compute meaningful KPIs (e.g., state if the data is an instantaneous value or an average, declare the rolling window size in case of average, etc.) and, if appropriate, it should provide control over some parameters (e.g. change size of rolling window for average).*",

#### 8.1.1.5 Proposed Recommendation

Table 8.1.1.5-1 - SMO related Energy measument recommendations

|  |  |  |  |
| --- | --- | --- | --- |
| **Recommendation ID** | **Title** | **Description** | **Motivation** |
| **SuFG-to-WG10-REC-002** | Calculation of Energy Efficiency KPIs | SMO to calculate energy efficiency KPIs using 3GPP-based performance data (e.g., energy per data volume, energy per user) for O-RAN components, including O-CU and O-DU, deployed as both PNFs and VNFs/CNFs. | Supports standardized KPI calculations across diverse deployments, enabling consistent energy performance monitoring and benchmarking. |
| **SuFG-to-WG10-REC-003** | Granular Control over Measurement Parameters | SMO to allow control over specific measurement parameters, such as setting the size of rolling windows for averages or defining intervals for energy data collection, to enhance data accuracy and relevance. | Provides flexibility in managing energy data granularity, enabling more precise energy usage analysis and customized reporting based on operational needs. |

# Annex: Change history/Change request (history)

|  |  |  |
| --- | --- | --- |
| Date | Revision | Description |
| 2024.03.28 | 00.00.01 | First draft version |
| 2024.05.02 | 00.00.02 | Updates according to review comments,  Completion of previously empty sections |
| 2024.10.31 | 00.00.04 | Updates on format requirements, remove shall statements and major updates to align with O-RAN related recommendations. |
| 2024.11.13 | 00.00.05 | Requirements changed to recommendations, added recommendations for O-RU, O-CU/O-DU and SMO. |
| 2024.11.27 | 00.00.06 | Several editorial corrections. |
---

- View in [Reader Mode](https://simewu.com/spec-reader/pages/13-SuFG/O-RAN.SuFG.TR.NES-Analysis-R004-v01.01.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.SuFG.TR.NES-Analysis-R004-v01.01.docx).
