---
title: O-RAN.TIFG.E2ETSTFWK.0-v01.00.docx.md
author: O-RAN Alliance, TIFG
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.TIFG.E2ETSTFWK.0-v01.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.TIFG.E2ETSTFWK.0-v01.00.docx).

---

* toc
{:toc}

---

**O-RAN Test and Integration Focus Group End-to-End System Testing Framework Specification**

**This is a re-published version of the attached final specification.**

For this re-published version, the prior versions of the IPR Policy will apply, except that the previous requirement for Adopters (as defined in the earlier IPR Policy) to agree to an O-RAN Adopter License Agreement to access and use Final Specifications shall no longer apply or be required for these Final Specifications after 1st July 2022.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material on this site for your personal use, or copy the material on this site for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

**O-RAN Test and Integration Focus Group End-to-End System Testing Framework Specification**

Prepared by the O-RAN Alliance. Copyright (C) 2020 by the O-RAN Alliance.

By using, accessing or downloading any part of this O-RAN specification document, including by copying, saving, distributing, displaying or preparing derivatives of, you agree to be and are bound to the terms of the O-RAN Adopter License Agreement contained in Annex ZZZ of this specification. All other rights reserved.

# 1 Revision History

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Date** | **Revision** | **Description** |
| 07/07/2020 | 01.00 | First published version |

</div>

2

3

# 1 Contents

1. Revision History 2
2. Chapter 1 Scope and Definitions 5
3. 1.1 Scope 5
4. 1.2 References 5
5. 1.3 Definitions and Abbreviations 5
6. 1.3.1 Definitions 5
7. 1.3.2 Abbreviations 6
8. 1.4 Revision Guideline 6
9. Chapter 2 Introduction 7
10. Chapter 3 O-RAN Architecture and Deployment Scenarios 9
11. 3.1 O-RAN Logical Architecture 9
12. 3.2 O-RAN Cloud Deployment Scenarios 12
13. Chapter 4 O-RAN Deployment Blueprints 15
14. 4.1 Introduction 15
15. 4.2 System Profiles 15
16. 4.3 Subsystem Instance Profiles 17
17. 4.3.1 Relationship between Subsystem Type and O-RAN network functions 18
18. 4.4 Subsystem Pair Interoperability Profiles 19
19. Chapter 5 O-RAN End-to-End (E2E) Testing Framework 22
20. 5.1 Stages and Sequence of Testing 22
21. 5.2 Subsystem Testing 25
22. 5.3 Subsystem Pairing and Open Interfaces Interoperability Testing 31
23. 5.4 E2E System Multi-vendors Interoperability Testing 34
24. 5.4.1 Subsystem Replacement Testing 35
25. Chapter 6 O-RAN E2E Test Cases and KPIs 37
26. 6.1 Introduction 37
27. 6.2 Use Cases and Services Requirements 37
28. 6.3 O-RAN Deployment Blueprint dependencies 38
29. 6.4 Relevance of the 3GPP KPIs 38
30. 6.4.1 3GPP KPIs defined for network monitoring, assessment, analysis, optimization and assurance 38
31. 6.4.2 Applicability to RAN, RAN Slices, Users and Services 39
32. 6.5 Relevance of the NGMN 5G Test Cases and KPIs 39
33. 6.6 Test Conditions to be considered 40
34. 6.6.1 Multi-vendors interoperability 40
35. 6.6.2 Functional, Performance including normal and abnormal conditions 41
36. 6.6.3 Radio channel variations and impacts on the overall system performance and QoE 41
37. 6.6.4 Management, Orchestration and Network Automation 41
38. 6.6.5 Additional considerations related to practical deployment aspects 42
39. 6.7 Test Scenarios and KPIs to be considered 42
40. 6.7.1 Mobility Management 42
41. 6.7.2 Deployability 43
42. Annex A: Operators' inputs on Deployment Blueprints 44
43. A.1 Operator #1 inputs 44
44. A.2 Operator #2 inputs 49
45. A.3 Operator #3 inputs 50
46. A.4 Operator #4 inputs 51
47. Annex B: O-RAN Software Community inputs on Testing Methodology 54
48. B.1 O-RAN Software Community 54
49. B.2 OSC Development Cycles 54
50. B.3 OSC Software and Test Deployment Architecture 55
51. B.4 OSC Release Objectives 56
52. B.5 OSC Testing 56
53. B.6 References 57
54. Annex C: Test Functions, Tools and Solutions for Subsystem and E2E System Testing 58
55. Annex D: References to O-RAN WG6 Cloud Deployment Scenarios 63
56. Annex ZZZ: O-RAN Adopter License Agreement 66
57. Section 1: DEFINITIONS 66
58. Section 2: COPYRIGHT LICENSE 66
59. Section 3: FRAND LICENSE 66
60. Section 4: TERM AND TERMINATION 67
61. Section 5: CONFIDENTIALITY 67
62. Section 6: INDEMNIFICATION 67
63. Section 7: LIMITATIONS ON LIABILITY; NO WARRANTY 67
64. Section 8: ASSIGNMENT 68
65. Section 9: THIRD-PARTY BENEFICIARY RIGHTS 68
66. Section 10: BINDING ON AFFILIATES 68
67. Section 11: GENERAL 68

16

17

18

1 Chapter 1 Scope and Definitions

## 1.1 Scope

1. This document is used to define the End-to-End System (E2E) Testing Framework for O-RAN Alliance.

## 1.2 References

1. The following documents contain provisions which, through reference in this text, constitute provisions of the present
2. document.
3. - References are either specific (identified by date of publication, edition number, version number, etc.) or
4. non-specific.
5. - For a specific reference, subsequent revisions do not apply.
6. - For a non-specific reference, the latest version applies. In the case of a reference to a 3GPP document (including
7. a GSM document), a non-specific reference implicitly refers to the latest version of that document.

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 12 | [1] | 3GPP TR 21.905: "Vocabulary for 3GPP Specifications" |
| 13 | [2] | O-RAN Operations and Maintenance Architecture, v03.00, April 2020, O-RAN Alliance |
| 14 | [3] | O-RAN Architecture Description, v02.00, August 2020, O-RAN Alliance |
| 15 | [4] | O-RAN Cloud Architecture and Deployment, v02.01, August 2020, O-RAN Alliance |
| 16 | [5] | O-RAN Cloud Platform Reference Design for Deployment Scenario B, v01.00, April 2020, O-RAN Alliance |
| 17 | [6] | O-RAN Fronthaul Control, User and Synchronization Plane Specification, v04.00, August 2020, O-RAN |
| 18 |  | Alliance |
| 19 | [7] | O-RAN Fronthaul Management Plane Specification, v04.00, August 2020, O-RAN Alliance |
| 20 | [8] | O-RAN Use Cases and Deployment Scenarios White Paper, February 2020, O-RAN Alliance |
| 21 | [9] | 3GPP TS 28.554: "Management and orchestration; 5G end to end Key Performance Indicators (KPI)" |
| 22 | [10] | Definition of the Testing Framework for the NGMN 5G Pre-Commercial Network Trials, Version 3, July |
| 23 |  | 2019, NGMN |
| 24 | [11] | O-RAN Indoor Picocell Hardware Architecture and Requirement (FR1 Only) Specification, v01.00, April |
| 25 |  | 2019, O-RAN Alliance |
| 26 | [12] | O-RAN Deployment Scenarios and Base Station Classes for White Box Hardware, v01.00, December 2019, |
| 27 |  | O-RAN Alliance |

</div>

## 1.3 Definitions and Abbreviations

### 1.3.1 Definitions

1. For the purposes of the present document, the terms and definitions given in this section and the following listed references
2. apply. A term defined in the present document takes precedence over the definition of the same term, if any, in the
3. following listed references.

33 1. 3GPP TR 21.905 [1]

34 2. O-RAN Operations and Maintenance Architecture [2]

35

1. **O-RAN Deployment Blueprint**: defined as the set of inputs which is used to describe a specific O-RAN deployment
2. from several aspects. These aspects include the specification of the O-RAN deployment at the System level (e.g.
3. architecture, performance metrics) as well as Subsystem level and the Interfaces between the specified Subsystems. This
4. would then allow definition and documentation of the testing methodology and the test cases using the blueprint
5. specification.

### 1.3.2 Abbreviations

1. For the purposes of the present document, the abbreviations given in 3GPP TR 21.905 [1] and the following apply. An
2. abbreviation defined in the present document takes precedence over the definition of the same abbreviation, if any, in
3. 3GPP TR 21.905 [1].

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 5 | CNF | Cloud-Native Network Function |
| 6 | DUT | Device Under Test |
| 7 | E2E | End to End |
| 8 | FHGW | Fronthaul Gateway |
| 9 | FHM | Fronthaul Multiplexer |
| 10 | IUT | Interface Under Test |
| 11 | KPI | Key Performance Indicator |
| 12 | Near-RT RIC | Near-Real Time RAN Intelligent Controller |
| 13 | NMS | Network Management System |
| 14 | Non-RT RIC | Non-Real Time RAN Intelligent Controller |
| 15 | O-Cloud | O-RAN Cloud Platform |
| 16 | O-CU | O-RAN Central Unit |
| 17 | O-CU-CP | O-RAN Central Unit - Control Plane |
| 18 | O-CU-UP | O-RAN Central Unit - User Plane |
| 19 | O-DU | O-RAN Distributed Unit |
| 20 | O-eNB | O-RAN eNB |
| 21 | O-RAN | Open RAN |
| 22 | O-RU | O-RAN Radio Unit |
| 23 | OSC | O-RAN Software Community |
| 24 | PNF | Physical Network Function |
| 25 | RSAC | Requirements and Software Architecture Committee |
| 26 | SLA | Service Level Agreement |
| 27 | SMO | Service Management and Orchestration |
| 28 | SUT | System Under Test |
| 29 | VNF | Virtual Network Function |

</div>

## 1.4 Revision Guideline

1. This Technical Specification has been produced by the O-RAN Alliance.
2. The contents of the present document are subject to continuing work within O-RAN and may change following formal
3. O-RAN approval. Should the O-RAN Alliance modify the contents of the present document, it will be re-released by O-
4. RAN with an identifying change of release date and an increase in version number as follows:
5. Release x.y.z
6. where:
7. x the first digit is incremented for all changes of substance, i.e. technical enhancements, corrections, updates,
8. etc. (the initial approved document will have x=01).
9. y the second digit is incremented when editorial only changes have been incorporated in the document.
10. z the third digit included only in working versions of the document indicating incremental changes during the
11. editing process.

# 1 Chapter 2 Introduction

* 1. This document defines the End to End (E2E) testing framework for comprehensive E2E testing and validation of the Open
  2. RAN (O-RAN) Systems ensuring robust interoperability and operate with high performance as intended in real-world
  3. deployments.
  4. Figure 2-1 shows the focus on the O-RAN System as the System under Test (SUT) in the context of the E2E testing
  5. framework specified in this document and in relation to the E2E KPIs defined between the UEs and Services which will
  6. be further elaborated in this specification. Refer to [3] and Section 3.1 in this specification for more details on the O-RAN
  7. ![]({{site.baseurl}}/assets/images/d259c251afa1.png)System.

9

#### Figure 2-1: Focus on O-RAN as the System under Test (SUT)

1. Mobile operators will likely plan for many different variants of O-RAN Systems depending on their strategies and use
2. cases which they may be interested to test, deploy and evolve their O-RAN compliant networks over time. The E2E
3. testing framework will therefore need to take into consideration the Operators' O-RAN deployment variants given its
4. influence on the scope of E2E testing.
5. The concept of O-RAN Deployment Blueprint is introduced in this specification and is used to describe the different
6. deployment variants of O-RAN Systems for E2E system testability purposes. This document provides the definition of
7. the O-RAN Deployment Blueprint template which contains the necessary descriptors to build O-RAN Deployment
8. Blueprints.
9. A set of typical O-RAN Deployment Blueprints are defined using the most common deployment scenarios abstracted
10. from various surveys which O-RAN Alliance has gathered from global operators. O-RAN Test and Integration Focus
11. Group (TIFG) focuses on the definition of the E2E testing framework based on addressing the needs of these most
12. common and probable deployment scenarios.
13. Operators and O-RAN Software Community (OSC) have submitted additional detailed inputs on their O-RAN
14. Deployment Blueprints and testing practices respectively, to assist O-RAN Alliance with developing comprehensive E2E
15. testing methodologies and test cases. These inputs are included in this specification for referencing purposes.
16. **Chapter 3** starts with a brief introduction of the O-RAN logical architecture, O-RAN network functions and open
17. interfaces between the O-RAN network functions. These O-RAN network functions and open interfaces are mapped to a
18. list of the most considered use cases driven O-RAN cloud deployment scenarios.
19. **Chapter 4** defines the O-RAN Deployment Blueprint, Template and its associated Profiles which are used to describe
20. the O-RAN Deployment Blueprint. The O-RAN network functions and open interfaces are mapped to the various
21. descriptors of the O-RAN Deployment Blueprint. Detailed definition of the various profiles' templates will be considered
22. in the future releases of this specification.
23. **Chapter 5** details the O-RAN E2E Testing Framework by providing guidance on the Testing Methodology for holistic
24. testing and evaluation of the O-RAN Deployment Blueprints ensuring that these Blueprints can be robustly tested and
25. optimized, ensuring consistent high quality and performance in a deterministic, repeatable and reproducible manner across
26. the entire technology lifecycle.
27. **Chapter 6** provides guidance on the key considerations along with information to help guide testing and validating the
28. O-RAN Deployment Blueprints with the relevant E2E Test Cases and KPIs. Recommendations on the specific E2E Test
29. Cases and KPIs will be considered in the future releases of this specification.
30. **Annex A** lists the O-RAN Deployment Blueprints which have been submitted by global operators to O-RAN Alliance
31. with the intention to assist with developing comprehensive E2E testing methodologies and test cases taking into
32. considerations these submitted Blueprints.
33. **Annex B** provides an overview on the O-RAN Software Community (OSC) work and its current software releases and
34. testing practices.
35. **Annex C** provides an example listing of the test functions and test tools and the applicability these test functions and tools
36. for Subsystem and E2E System Testing.
37. **Annex D** references common deployment scenarios abstracted from various surveys which O-RAN Alliance has gathered
38. from global operators and defined by WG6 (Orchestration and Cloudification WG).
39. The E2E testing framework specified in this document intend to fully leverage the Technical and Test specifications
40. which the O-RAN Alliance Working Groups (WGs) have developed.

12

# 1 Chapter 3 O-RAN Architecture and Deployment Scenarios

1. This chapter gives an overview of the O-RAN Logical Architecture, O-RAN network functions, open interfaces and a list
2. of the most considered use cases driven O-RAN Deployment Scenarios which show how the O-RAN network functions
3. are mapped to physical implementations in terms of how these network functions are realized as physical, virtual or cloud
4. native network functions, aggregation/dis-aggregation of these network functions and where these network functions can
5. be deployed in the network (e.g. Cell Site, Edge Cloud, Regional Cloud).
6. The information provided in this Chapter facilitates definition of the O-RAN Deployment Blueprint in Chapter 4. The O-
7. RAN Deployment Blueprint is used to further describe the O-RAN Deployment at the E2E System and Subsystem levels,
8. and the Open Interfaces between the specified Subsystems. This would then allow definition and documentation of the
9. testing methodology and the test cases using the Blueprint specification.

![]({{site.baseurl}}/assets/images/e315a29b4234.png)

11

1. **Figure 3-1: O-RAN Logical Architecture, Deployment Scenarios and Deployment Blueprints**

## 3.1 O-RAN Logical Architecture

1. ![]({{site.baseurl}}/assets/images/09f3562ebf3b.png)Figure 3-2 shows the O-RAN logical architecture [3].

15

#### Figure 3-2: Logical Architecture of O-RAN [3]

1. Refer to O-RAN WG1 "O-RAN Architecture Description" Technical Specification [3] for more details on the definitions
2. for the O-RAN network functions and open interfaces.
3. These O-RAN network functions and open interfaces are specified by different WGs in O-RAN Alliance.
4. Table 3-1 shows the listing of the O-RAN network functions and the WGs which are responsible for specifications of the
5. various aspects of these O-RAN network functions.

#### Table 3-1: O-RAN network functions and WGs responsible for specification

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **O-RAN network function** | **O-RAN WG(s)** | **O-RAN WG focus** |
| O-RU | WG1 | O1 management services |
| WG4 | Open fronthaul CUS and M plane; Management Plane  O1 alignment work is in progress |
| WG7 | Whitebox reference design |
| O-DU | WG1 | O1 management services |
| WG3 | E2 node |
| WG4 | Open fronthaul CUS and M plane; Management Plane |
| WG5 | C and U-Plane profiles for F1  O1 information and data models |
| WG6 | O-Cloud APIs (including AAL APIs) |
| WG7 | Whitebox reference design |
| WG8 | Reference Stack: O-DU Software Architecture and APIs |
| O-CU-CP | WG1 | O1 management services |
| WG3 | E2 node |
| WG5 | C-Plane profiles for X2, Xn, F1, E1  O1 information and data models |
| WG6 | O-Cloud APIs (including AAL APIs) |
| WG7 | Whitebox reference design |
| WG8 | Reference Stack: O-CU-CP Software Architecture and APIs |
| O-CU-UP | WG1 | O1 management services |
| WG3 | E2 node |
| WG5 | U-Plane profiles for X2, Xn, F1 C-Plane profile for E1  O1 information and data models |
| WG6 | O-Cloud APIs (including AAL APIs) |
| WG7 | Whitebox reference design |
| WG8 | Reference Stack: O-CU-UP Software Architecture and APIs |
| O-eNB | WG1 | O1 management services |
| WG3 | E2 node |
| WG4 | Open fronthaul CUS and M plane; Management Plane includes O1 alignment |
| WG5 | C and U-Plane profiles for X2, Xn  O1 information and data models |
| WG6 | O-Cloud APIs (including AAL APIs) |
| WG7 | Whitebox reference design |
| O-Cloud | WG6 | O2  O-Cloud APIs (including AAL APIs) |
| Near-Real Time RIC | WG1 | O1 management services |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **O-RAN network function** | **O-RAN WG(s)** | **O-RAN WG focus** |
|  | WG3 | E2  xApp Open APIs  O1 information and data models |
| WG6 | O-Cloud APIs (including AAL APIs) |
| SMO  (including Non-Real Time RIC function) | WG1 | O1 interface and common information/data models |
| WG2 | A1 |

</div>

1

1. Table 3-2 shows the listing of the O-RAN Open Interfaces and the WGs which are responsible for the specifications for
2. these O-RAN open interfaces.

#### Table 3-2: O-RAN Open Interfaces and WGs responsible for specification

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **O-RAN interfaces** | **O-RAN WG(s)** | **O-RAN WG focus** |
| A1 | WG2 | Specifies Control plane protocols for the logical interface between Non-RT-RIC function and near-RT-RIC function. |
| E1 | WG5 | 3GPP defined logical interface between gNB-CU-CP and gNB-CU- UP. O-RAN WG5 reuses and adopts these principles and protocol stack defined by 3GPP for the O-CU-CP and the O-CU-UP functions, as well as for the definition of interoperability profile specifications. |
| E2 | WG3 | Specifies Control plane protocols for the logical interface between near-RT-RIC function and E2 Nodes for E2 functions. |
| F1-C | WG5 | 3GPP defined logical interface between gNB-CU-CP and gNB-DU. O-RAN WG5 reuses and adopts these principles and protocol stack defined by 3GPP for the O-CU-CP and the O-DU functions, as well as for the definition of interoperability profile specifications. |
| F1-U | WG5 | 3GPP defined logical interface between gNB-CU-UP and gNB-DU. O-RAN WG5 reuses and adopts these principles and protocol stack defined by 3GPP for the O-CU-UP and the O-DU functions, as well as for the definition of interoperability profile specifications. |
| O1 | WG1 | Specifies Management plane interface between SMO and O-RAN Managed Element.  Noting that the Information and Data models for the O-RAN Managed Elements are specified by their respective WGs shown in Table 3-1. |
| O2 | WG6 | Specifies Management plane interface between SMO and O-Cloud. |
| Open Fronthaul (OFH) | WG4 | Specifies Open fronthaul interface between O-DU and O-RU includes Control, User, Synchronization and Management Planes. Management Planes include both Hierarchical and Hybrid modes.  Specifies Open fronthaul M-Plane between the O-RU and SMO for the O-RU configured in Hybrid mode. |
| X2-C | WG5 | 3GPP defined logical interface for transmitting control plane information between eNBs or between eNB and en-gNB in EN-DC deployment scenario. O-RAN WG5 reuses and adopts the principles and protocol stack defined by 3GPP for the definition of interoperability profile specifications. |
| X2-U | WG5 | 3GPP defined logical interface for transmitting user plane information between eNBs or between eNB and en-gNB in EN-DC deployment scenario. O-RAN WG5 reuses and adopts the principles and protocol stack defined by 3GPP for the definition of interoperability profile specifications. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **O-RAN interfaces** | **O-RAN WG(s)** | **O-RAN WG focus** |
| Xn-C | WG5 | 3GPP defined logical interface for transmitting control plane information between gNBs, ng-eNBs or between eNB and ng-gNB. O-RAN WG5 reuses and adopts the principles and protocol stack defined by 3GPP for the definition of interoperability profile specifications. |
| Xn-U | WG5 | 3GPP defined logical interface for transmitting user plane information between gNBs, ng-eNBs or between eNB and ng-gNB. O-RAN WG5 reuses and adopts the principles and protocol stack defined by 3GPP for the definition of interoperability profile specifications. |

</div>

1

## 3.2 O-RAN Cloud Deployment Scenarios

1. This section gives a short introduction to each of the O-RAN Cloud Deployment Scenarios abstracted from inputs O-
2. RAN Alliance have received from global operators which have gathered the most interest and are of either current or
3. relatively near-term interest that can be supported by the O-RAN specifications.
4. The key differences between these Cloud Deployment Scenarios are highlighted given that these are important factors to
5. be taken into considerations when designing the O-RAN Deployment Blueprint template and the E2E testing
6. methodologies in the next chapters of this specification.
7. Refer to O-RAN WG6 "Cloud Architecture and Deployment Scenarios for O-RAN Virtualized RAN" Technical Report
8. [4] for more details.
9. Figure 3-3 shows a high-level comparison of O-RAN Cloud Deployment Scenarios for NR Standalone (SA) operation
10. ![]({{site.baseurl}}/assets/images/99c10ea198fc.jpg)[4].

13

#### Figure 3-3: High Level Comparison of O-RAN Cloud Deployment Scenarios [4]

1. Few notes for clarification purposes on the O-RAN network functions and interfaces shown in Figure 3-3 and for the
2. remaining of this section.
3. 1. The O-CU and vO-CU referred in [4] should be considered as O-CU CP/UP and vO-CU CP/UP, respectively.
4. 2. O-RAN deployments with all Physical Network Function (PNF) based implementation may exist but are not
5. shown in this figure as this figure shows cloud deployment scenarios with at least one O-RAN network function
6. implemented on the O-Cloud.
7. 3. O-RAN deployments with PNF instead of VNF/CNF based implementation may exist but are not shown in this
8. figure such as Scenario E with O-DU and O-RU implemented as PNFs (instead of VNF/CNF) at the Cell Site.
9. 4. Not all the O-RAN network functions and interfaces defined by O-RAN Alliance are shown in Figure 3-3. For
10. example, the Non-Real Time RIC, SMO, O-CU-CP, O-CU-UP, O-eNB are not shown in this figure. 25

#### NR Standalone (SA)

* 1. 1. **(SA) Scenario A** shows the near-RT RIC, O-CU, and O-DU network functions virtualized and co-located on the
  2. same Edge Cloud platform. The O-RU deployed at the Cell site is not virtualized.
  3. 2. **(SA) Scenario B** is similar to (SA) Scenario A, the only difference is that the Near-Real Time RIC in (SA)
  4. Scenario B is deployed on the Cloud Platform at the Regional cloud (as compared to the Edge cloud in (SA)
  5. Scenario A).
  6. 3. **(SA) Scenario C** shows near-RT RIC, O-CU are virtualized on the same Regional Cloud platform and the O-
  7. DU virtualized on an Edge Cloud platform
  8. 4. **(SA) Scenario C.1** shows a deployment variant of (SA) Scenario C adding the flexibility to be able to deploy
  9. parts of the O-CU-UP in the Edge Cloud platform in order to better support use cases such as differentiated
  10. performance requirements of the traffic types and network slices.
  11. 5. **(SA) Scenario C.2** shows a deployment variant of (SA) Scenario C adding the flexibility to be able to deploy
  12. additional O-DUs and O-CUs in the Edge Cloud platform to better support use cases such as differentiated
  13. performance requirements of the traffic types, network slices and RAN sharing.
  14. 6. **(SA) Scenario D** shows a deployment variant of (SA) Scenario C, but in this case the O-DU functionality is
  15. supported by an O-RAN PNF rather than an O-Cloud.
  16. 7. **(SA) Scenario E** shows a future state scenario assuming that the O-RU can be successfully virtualized and
  17. deployed with the O-DU in the same O-Cloud platform located at the Cell site. Near-RT RIC and O-CU are
  18. virtualized on the same Regional Cloud platform.
  19. 8. **(SA) Scenario F** shows a future state scenario assuming that the O-RU can be successfully virtualized and
  20. deployed in the O-Cloud platform located at the Cell Site. The near-RT RIC, O-CU are virtualized on the same
  21. Regional Cloud platform and the O-DU virtualized on an Edge Cloud platform.

#### NR Non-Standalone (NSA)

* 1. The following listed (NSA) Cloud Deployment scenarios are similar to the (SA) Cloud Deployment scenarios above listed
  2. with the LTE network functions (O-CU, O-DU) co-located with the NR network functions (O-CU, O-DU).
  3. 1. **(NSA) Scenario A** is similar to (SA) Scenario A with the addition of LTE network functions (O-CU, O-DU)
  4. virtualized and co-located on the same Edge Cloud platform as the NR network functions (O-CU, O-DU).
  5. 2. **(NSA) Scenario B** is similar to (SA) Scenario B with the addition of LTE network functions (O-CU, O-DU)
  6. virtualized and co-located on the same Edge Cloud platform as the NR network functions (O-CU, O-DU).
  7. 3. **(NSA) Scenarios C, C.2** are similar to (SA) Scenario C, C.2 with the addition of LTE network function(s) (O-
  8. CU) virtualized and co-located on the same Regional Cloud platform as the NR network function(s) (O-CU).
  9. The LTE network function(s) (O-DU) virtualized and co-located on the same Edge Cloud platform as the NR
  10. network function(s) (O-DU).
  11. 4. **(NSA) Scenario D** is similar to (SA) Scenario D with the addition of LTE network function(s) (O-CU)
  12. virtualized and co-located on the same Edge Cloud platform as the NR network function(s) (O-CU). The LTE
  13. network function(s) (O-DU) is non-virtualized and co-located at the same Edge location as the NR network
  14. function(s) (O-DU).

38

1. Figures 3-4 and 3-5 show the Cloud Deployment Scenarios B from [4] for NR Standalone (SA) and Non-Standalone
2. (NSA) operations, respectively. Refer to Annex D in this document for additional Cloud Deployment Scenarios figures.
3. Refer to [4] for the definitions and more details on the GW (Opt) node, RU, vO-CU, vO-DU shown in these figures. Refer
4. ![]({{site.baseurl}}/assets/images/68bcafb7ca7f.jpg)to [5] for the Cloud Platform Reference Design for Deployment Scenario B.

43

#### 44 Figure 3-4: Cloud Deployment Scenario B for SA operation [4]

![]({{site.baseurl}}/assets/images/7b9d5bae0d75.jpg)1

#### Figure 3-5: Cloud Deployment Scenario B for NSA operation [4]

1. Noting that all the Cloud Deployment Scenarios listed in [4] use the same set of O-RAN network functions and Open
2. interfaces, while the key differences are with the
3. 1. Use Cases and Services Requirements (e.g. network slicing, bandwidth, latency, reliability etc.).
4. 2. Network design considerations (e.g. transport capabilities such capacity, latency between Cell site, Edge and
5. Regional cloud, operating spectrum bands etc.).
6. 3. NR deployment modes - SA, NSA.
7. 4. Network functions - Physical, Virtual, Cloudified implementation (e.g. taking into considerations O-Cloud
8. solution availability with certain timeframes in mind).
9. 5. Co-locations of the various O-RAN network functions (e.g. vO-CU, vO-DU at the Edge Cloud in Scenario B).
10. 6. Co-located O-RAN network functions may be deployed as Integrated or Separated nodes.
11. 7. O-RAN network functions shown are logical functions which in deployment scenarios where more than a single
12. O-RAN network functions are co-located, can be either implemented as an integrated Subsystem (combined vO-
13. CU and vO-DU at the Edge Cloud in Scenario B) or independent Subsystems (separate vO-CU and vO-DU at
14. the Edge Cloud in Scenario B). Refer to Chapter 4 for the definition of the Subsystem.
15. 8. Locations of the O-RAN network functions at the Cell site, Edge cloud, Regional cloud. 18

# 1 Chapter 4 O-RAN Deployment Blueprints

## 4.1 Introduction

* 1. This chapter provides the high-level definition of the O-RAN Deployment Blueprint template which contains the
  2. necessary descriptors to build the underlying O-RAN Deployment Blueprints.
  3. The O-RAN Deployment Blueprint is defined as the set of inputs used to describe a specific O-RAN deployment from
  4. several aspects. These aspects include the specification of the O-RAN deployment at the System level (e.g. architecture,
  5. performance metrics) as well as Subsystem level and the Open Interfaces between the specified Subsystems. This would
  6. then allow definition and documentation of the testing methodology and the test cases using the blueprint specification.
  7. Each of the O-RAN Deployment Blueprints can be described with
  8. 1. A single System Profile
  9. 2. Two or more Subsystem Instance Profiles
  10. 3. One or more Subsystem Pair Interoperability Profile(s) 13

![]({{site.baseurl}}/assets/images/f7002c6eef03.png)14 Figure 4-1 shows the relationship between Deployment Blueprint and its associated set of Profiles.

15

1. **Figure 4-1: Deployment Blueprint and the associated Profiles**

## 4.2 System Profiles

1. The purpose of the System Profile is to describe the O-RAN Deployment Blueprint from the E2E system perspective.
2. A **System Profile** consists of **System Architecture information** and a set of **System Profile parameters**.
3. Figure 4-2 shows the scope of the System Profile in relation to the O-RAN Deployment Blueprint. 21

![]({{site.baseurl}}/assets/images/e05cc7da06e5.png)1

#### Figure 4-2: Scope of the System Profile in relation to the Deployment Blueprint

* 1. Note that the intent of Figure 4-2 is used to show the scope of the System Profile in relation to the Deployment Blueprint.
  2. It is not intending to show the actual O-RAN network functions and open interfaces which must be included in the System
  3. Profile for all the O-RAN Deployment Blueprints.
  4. OFH indicated in Figure 4-2 includes WG4 CUS and M plane implementation and for M-Plane both the Hierarchical and
  5. Hybrid models. Refer to [6][7] for more details.
  6. **System Architecture Information** shall include an Architecture diagram which is used to describe the Network and
  7. Network Slices Topology which consists of the
  8. 1. Subsystems involved
  9. 2. Type of implementation of each Subsystem (e.g. as a Physical (PNF), Virtual (VNF) or Cloud-Native Network
  10. Function (CNF))
  11. 3. Location where each of the Subsystems are expected to be deployed (e.g. Cell site, Edge site, Regional site,
  12. Core/Central site as appropriate)
  13. 4. Interconnections and Cardinality between the Subsystems 16

1. The intent of this specification is to make references as much as possible to the list of Deployment Scenarios documented
2. in O-RAN WG6 "Cloud Architecture and Deployment Scenarios for O-RAN Virtualized RAN" Technical Report [4].
3. Figure 3-4 shows an example of the System Architecture Diagram for Cloud Scenario B referenced from [4].
4. It should be noted that there can be O-RAN Deployment Blueprints which may be designed for deployment scenarios
5. currently not specified in [4]. Examples can be an all PNF based O-RAN deployment, Non-Standalone (NSA) O-RAN
6. deployment, different xApps implementation among others.
7. In addition to specifying the System Architecture diagram and information, it would be useful to specify the following
8. listed **System Profiles parameters** which are used to describe the System level requirements for the Blueprints.
9. 1. Services Requirements (e.g. eMBB, URLLC, mIoT, combinations of these)
10. 2. Use Cases (e.g. 3GPP use cases such as VoLTE/VoNR, O-RAN RIC-enabled use cases such as Traffic Steering,
11. QoE Optimization, Massive MIMO Beamforming Optimization, RAN Sharing among others - refer to [8] for
12. more details)
13. 3. Use Cases E2E Performance requirements of the Application, Services (e.g. data rate, latency, reliability,
14. availability, deterministic networking including transmission latency etc.)
15. 4. Indoor or Outdoor deployment
16. 5. Radio Access Technologies (RAT) Types (e.g. 4G LTE/5G NR)
17. 6. 5G NR Deployment Options and Evolution (options of Standalone SA, Non-Standalone NSA)
18. 7. Spectrum Bands and Duplex Modes for 4G LTE/5G NR
19. 8. Cell Types (e.g. Macro, Micro, Pico, others)
20. 9. Network and Network Slices Topology needing to include Cardinality, Network functions (xNFs), Transport (T-
21. plane), Timing and Sync (S-Plane), Management (M Plane, MANO, SMO)
22. 10. E2E Network Performance requirements of the RAN Network Functions, Slices and Management KPIs 4

## 4.3 Subsystem Instance Profiles

1. Each of the Subsystem in the Deployment Blueprint can be described with its **Subsystem Instance Profile**.
2. ![]({{site.baseurl}}/assets/images/c4cc96ec5459.png)Figure 4-3 shows the scope of the Subsystem Instance Profile in relation to the O-RAN Deployment Blueprint.

8

#### Figure 4-3: Scope of the Subsystem Instance Profile in relation to the Deployment Blueprint

1. Note that the intent of Figure 4-3 is used to show the scope of the Subsystem Instance Profile in relation to the O-RAN
2. Deployment Blueprint. It is not intending to show the actual Subsystem Instance Profiles which must be included for all
3. the O-RAN Deployment Blueprints.
4. OFH indicated in Figure 4-3 includes WG4 CUS and M plane implementation and for M-Plane both the Hierarchical and
5. Hybrid models. Refer to [6][7] for more details.
6. A **Subsystem Instance** is defined to uniquely identify different implementations of a **Subsystem Type**.
7. For example, two O-RUs belonging to the **same Subsystem Type** (O-RU) which are optimally designed for Indoors
8. versus Outdoors macro deployment scenarios will be considered as **different Subsystem Instances** as they would have
9. different sets of capabilities and requirements defined for their respective purposes and therefore needing to be tested
10. based on their respective sets of capabilities, requirements and KPIs.
11. The **Subsystem Instance Profile** is therefore dependent on the **Subsystem Type**.
12. The Subsystem Instance Profile should be specified to include the following information as defined in available technical
13. and test specifications.
14. 1. Features and capabilities
15. 2. Functional specifications
16. 3. Performance specifications (e.g. O-RU and O-DU sensitivity, QAM utilization, Spectral efficiency among
17. others)
18. 4. Performance measurements - Parameters with optional nominal values 28

### ![]({{site.baseurl}}/assets/images/20617399be91.png)4.3.1 Relationship between Subsystem Type and O-RAN network functions

2

#### Figure 4-4: Relationship between Subsystem Type and O-RAN Network Functions

1. The **Subsystem Type** is defined as the most fundamental building block / module of the O-RAN Deployment Blueprint
2. which require robust interoperability testing as a Subsystem Instance in the O-RAN E2E testing framework. Therefore,
3. the Subsystem Types may be different for different O-RAN Deployment Blueprints.
4. The relationship between Subsystem Type and O-RAN network functions can be described with the following scenarios
5. ? Scenario 1: A single Subsystem Type composed with a single O-RAN network function (M=N=1)
6. ? Scenario 2: A single Subsystem Type composed with more than a single O-RAN network function (M=1, N>1)
7. ? Scenario 3: A single O-RAN network function maps to more than a single Subsystem Type (M>1, N=1) 11
8. Examples of a single Subsystem Type composed with more than a single O-RAN network function
9. 1. Combined O-CU-CP and O-CU-UP implemented as an integrated Subsystem such as what is shown in cloud
10. deployment scenarios A and B in [4]
11. 2. Combined O-DU, O-CU-CP and O-CU-UP implemented as an integrated Subsystem such as what is shown in
12. cloud deployment scenarios A and B in [4]
13. 3. Combined O-RU and O-DU implemented as an integrated Subsystem such as what is shown in cloud deployment
14. scenario E in [4]

19

1. Examples of a single O-RAN network function mapped to more than a single O-RAN Subsystem Type
2. 1. O-Cloud can consist of multiple Subsystems including the hardware, Acceleration Abstraction Layer (AAL)
3. 2. O-DU can consist of multiple Subsystems including L1 and L2 software stacks
4. 3. Near-Real Time RIC can consist of one or more xApps running on the Near-Real Time RIC 24
5. Tables 4-1, 4-2 and 4-3 show the example listings of the Subsystem Types and their relationships to the corresponding
6. O-RAN network functions for scenarios 1, 2 and 3, respectively.
7. Additional Subsystem Types which are not shown in these tables can be implemented with its own composition of the O-
8. RAN network functions. 29

#### 30 Table 4-1: Relationship of Subsystem Type to the O-RAN network functions (M=N=1)

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Subsystem Type** | **O-RAN network function** | **Comments** |
| O-RU | O-RU |  |
| FHM | O-RU | FHM is applicable in Shared Cell (FHM mode) defined in WG4 specifications [6][7].  FHM is modelled as an O-RU with Open Fronthaul support (same as normal O-RU) and copy and combine function (additional to normal O-RU), but without radio transmission/reception capability [6][7]. |
| O-DU | O-DU |  |
| O-CU-CP | O-CU-CP |  |
| O-CU-UP | O-CU-UP |  |
| O-eNB | O-eNB |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Subsystem Type** | **O-RAN network function** | **Comments** |
| O-Cloud | O-Cloud |  |
| Near-Real Time RIC | Near-Real Time RIC |  |
| Non-Real Time RIC | Non-Real Time RIC |  |
| SMO | SMO |  |

</div>

1

#### Table 4-2: Relationship of Subsystem Type to the O-RAN network functions (M=1, N>1)

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Subsystem Type** | **O-RAN network functions** | **Reference to [4] as appropriate** |
| Integrated O-CU-CP, O- CU-UP [NR] | O-CU-CP, O-CU-UP | Integrated O-CU-CP, O-CU-UP can be implemented as a Subsystem composed of O-CU-CP, O-CU-UP as shown in Scenarios A, B etc. |
| Integrated O-RU, O-DU [NR / LTE] | O-RU, O-DU | O-RU, O-DU can be implemented as a single Subsystem as shown in Scenario E for NR. |
| Integrated O-DU, O-CU- CP, O-CU-UP [NR] | O-DU, O-CU-CP, O-CU- UP | O-DU, O-CU-CP, O-CU-UP can be implemented as a single Subsystem as shown in Scenarios A, B etc. |
| Integrated O-CU-CP, O- CU-UP, Near-Real Time RIC | O-CU-CP, O-CU-UP,  Near-Real Time RIC | Near-Real Time RIC, O-CU-CP, O-CU-UP can be implemented as a single Subsystem as shown in Scenario C etc. |
| O-eNB [LTE] | O-RU, O-DU, CU | O-eNB can be implemented as a single O-RAN network function (O-eNB) or composed with LTE O-RU, O-DU, CU. |

</div>

3

#### 4 Table 4-3: Relationship of Subsystem Type to the O-RAN network functions (M>1, N=1)

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Subsystem Type** | **O-RAN network function** | **Comments** |
| Hardware Accelerator with Acceleration Abstraction Layer (AAL) APIs | O-Cloud | Hardware Accelerator with Open API allowing NFs applications to discover, configure, select and use (one or more) acceleration functions provided by a given accelerator on the cloud platform. |
| xApps | Near-Real Time RIC | The xApp is designed to run on the near-RT RIC which provides Open APIs for A1, E2, Management, Control and Shared Data Layer (SDL). |
| O-DU L1 stack | O-DU | High Physical layer (L1) stack in O-DU which provides API's to communicate with MAC Layer (L2) stack of O- DU. |
| O-DU L2 stack | O-DU | MAC Layer (L2) stack in O-DU which provides API's to communicate with High Physical Layer (L1) stack and RLC Layer stack of O-DU. |

</div>

5

## 4.4 Subsystem Pair Interoperability Profiles

1. Each pair of Subsystem Instances and the Open Interface between them can be described in the O-RAN Deployment
2. Blueprint with its Subsystem Pair Interoperability Profile.
3. Figure 4-5 shows the scope of the Subsystem Pair Interoperability Profile in relation to the O-RAN Deployment Blueprint.
4. ![]({{site.baseurl}}/assets/images/a2b1a9402650.png)

#### Figure 4-5: Scope of the Subsystem Pair Interoperability Profile in relation to the Deployment Blueprint

1. Note that the intent of Figure 4-5 is used to show the scope of the Subsystem Pair Interoperability Profile in relation to
2. the O-RAN Deployment Blueprint. It is not intending to show the actual Subsystem Pair Interoperability Profile(s) which
3. must be included for all the O-RAN Deployment Blueprints.
4. OFH indicated in Figure 4-5 includes WG4 CUS and M plane implementation and for M-Plane both the Hierarchical and
5. Hybrid models. Refer to [6][7] for more details.
6. The Subsystem Pair Interoperability Profile is dependent on the pair of Subsystem Instances which are connected via an

#### Interface under Test (IUT).

1. **Subsystem Pair Interoperability Profile** defined in the O-RAN Deployment Blueprint includes the Interoperability Test
2. (IOT) Profile for a specific Open Interface implementation between two Subsystem Instances.
3. The Subsystem Pair Interoperability Profile should be specified to include the following information as defined in
4. available O-RAN WGs technical and test specifications
5. 1. Features and capabilities
6. 2. Functional specifications
7. 3. Performance specifications
8. 4. Performance measurements - Parameters with optional nominal values 18

19 Table 4-4 shows the mapping of Subsystem Pair Interoperability Profile to the respective O-RAN WGs. 20

#### 21 Table 4-4: Subsystem Pair Interoperability Profile and respective O-RAN WGs

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Subsystem Pair Interoperability Profiles** | **O-RAN WG(s)** | **O-RAN WG focus** |
| Open Fronthaul (OFH) | WG4 | WG4 IOT profiles C/U/S/M Planes |
| X2 | WG5 | WG5 C and U Plane Profiles |
| Xn | WG5 | WG5 C and U Plane Profiles |
| E1 | WG5 | WG5 C Plane Profiles (currently not available)  Note: E1 not supported by existing WG5 specifications |
| F1-C/F1-U | WG5 | WG5 C and U Plane Profiles |
| E2 | WG3 |  |
| A1 | WG2 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Subsystem Pair Interoperability Profiles** | **O-RAN WG(s)** | **O-RAN WG focus** |
| O1 | WG1 |  |
| O2 | WG6 |  |
| xApp (Near-RT RIC) | WG3 | Open APIs for xApp |
| AAL | WG6 |  |

</div>

1

2

# 1 Chapter 5 O-RAN End-to-End (E2E) Testing Framework

1. This chapter describes the E2E testing methodology for the holistic testing and evaluation of the O-RAN Deployment
2. Blueprints ensuring that these Blueprints can be robustly tested and optimized, ensuring consistent high quality and
3. performance in a deterministic, repeatable and reproducible manner across the entire technology lifecycle.
4. Figure 5-1 shows the major phases of the technology lifecycle which will require testing and optimization.
5. In this version of the specification, the focus will be on the Lab Verification phase.

<div class="table-wrapper" markdown="block">

![5G Network Testing & 5th Gen Network Test Solutions | VIAVI]({{site.baseurl}}/assets/images/d00c56bd59ca.jpg)

</div>

7

#### Figure 5-1: Major Stages of the Technology Lifecycle

1. The proposed testing methodology involves Subsystem testing, Subsystem Pairing and Open Interfaces Interoperability
2. testing and E2E System testing.

## 5.1 Stages and Sequence of Testing

1. Figure 5-2 shows the stages and sequence of testing which can be performed on the O-RAN Deployment Blueprint
2. 1. Perform Subsystem Testing on each of the Subsystems defined in the Blueprint
3. 2. Perform Interoperability testing with pairs of Subsystems which have passed the Subsystem Testing stage
4. 3. Perform E2E System Testing after all Subsystem Pairs passed the Subsystem Pair Interoperability Testing stage 16

![]({{site.baseurl}}/assets/images/8ca86f63daeb.jpg)1

#### Figure 5-2: Stages and Sequence of Testing to be performed on the O-RAN Deployment Blueprint

* 1. These various stages of testing can be performed (or repeated) for any modifications to the O-RAN Deployment Blueprint
  2. which can include one or more of the following conditions
  3. 1. New Subsystem vendors
  4. 2. New releases of the software, firmware and/or hardware in any of the Subsystems
  5. 3. Configuration changes to the software, firmware and/or hardware in any of the Subsystems 8

1. The modifications may or may not be accompanied with corresponding updates in the System profile, Subsystem Instance
2. profiles, Subsystem Pair and Open Interfaces Interoperability profiles and therefore the test cases, performance
3. measurements and KPIs.
4. The modifications are required to be thoroughly reviewed to be able to evaluate the impacts of these modifications to the
5. corresponding modified Subsystem Instance and the Subsystems Pair and E2E System associated with the modified
6. Subsystem Instance. The impact evaluation can then be applied to the design and selection of test cases within each of
7. the Test Stages needing to be executed due to the modifications.
8. For example, a new release can be labelled as a major or minor release but it is only through detailed analysis of the
9. modifications in this new release can help to determine the specific impacts and therefore test cases within each of the
10. Test Stages needing to be executed for this new release.
11. Subsystem Replacement Testing is an implementation variant of E2E System Testing with one of Subsystems replaced
12. in the E2E System Test environment while keeping the other Subsystems and all the test configurations the same.
13. Subsystem Replacement Testing methodology is further discussed in Section 5.4.1.
14. Test Automation will be required to make the testing procedure extremely efficient as the Test Automation framework
15. can be designed and used to handle repetitive, time-consuming tests which are required to be executed when any part of
16. the Blueprint has been modified. This results in improved accuracy as automated tests perform the same steps precisely
17. every time they are executed and create detailed reports. Test Automation is expected to be applied to all Stages of Testing
18. shown in Figure 5-2.
19. Figure 5-3 shows the scope and relationship of Subsystem Testing, Subsystem Pairing and Open Interfaces testing and
20. E2E System Testing.

![]({{site.baseurl}}/assets/images/590fb38225c0.png)1

#### Figure 5-3: Scope and Relationship of Subsystem, Subsystem Pairing and Open Interfaces, E2E System Testing

1. Few notes for clarification purposes on Figure 5-3
2. 1. O-Cloud APIs and the Open APIs between the xApps and the Near-Real Time RIC can be Interfaces under Tests
3. (IUTs) are not shown explicitly in Figure 5-3.
4. 2. O-RU can be implemented as a NR O-RU, LTE O-RU or Dual mode NR and LTE O-RU.
5. 3. OFH indicated includes WG4 CUS and M plane implementation and for M-Plane both Hierarchical and Hybrid
6. models. Refer to [6][7] for more details. 9
7. Figure 5-4 illustrates the concept of Subsystem Test, Subsystem Pair and Open Interface Test and System Testing using
8. ![]({{site.baseurl}}/assets/images/a921c166cef7.png)a multi-vendors setup example consisting of two O-RUs, one single O-DU and one single O-CU-CP/O-CU-UP.

12

#### Figure 5-4: Example of Subsystem, Subsystem Pair/ Open Interface and System Testing

1. Noting that in this example, System Testing is performed for all the DUTs (used in this example) which have successfully
2. completed Subsystem Testing, Subsystem Pair and Open Interfaces Interoperability Testing. The difference between
3. System Testing and E2E System Testing is that the E2E System Testing is to be performed for all the Subsystems and
4. Subsystem Pairs defined in an O-RAN Deployment Blueprint while System Testing can be performed for a subset of
5. Subsystems and Subsystem Pairs defined in an O-RAN Deployment Blueprint.

## 5.2 Subsystem Testing

1. Subsystem Testing on each of the Subsystems defined in the O-RAN Deployment Blueprint is typically performed and
2. passed before Interoperability Testing is to be performed for each of the Subsystem Pairs as defined in the Blueprint.
3. Subsystem testing should be performed with the requirements of the Subsystem specified in the respective Subsystem
4. Instance Profile and Test Cases and KPIs defined by the WGs responsible for the specification of the Subsystem. Noting
5. that each Subsystem can have Requirements, Test Cases and KPIs specified by one or more WGs.
6. Figure 5-5 shows a summarized view of the Subsystem, Subsystem Pair and Open Interfaces and the WGs responsible
7. ![]({{site.baseurl}}/assets/images/a31c1e17d1bb.jpg)for the specification of each the Subsystem and Open Interfaces between the Subsystem Pairs.

9

#### Figure 5-5: Summarized view of the Subsystem, Subsystem Pair Open Interfaces and the responsible WGs

1. OFH indicated in Figure 5-5 includes WG4 CUS and M plane implementation and for M-Plane both Hierarchical and
2. Hybrid models. Refer to [6][7] for more details.
3. Table 5-1 shows the relationship between each of the Subsystem Types and the WGs responsible for various specifications
4. aspects of these Subsystems.

#### Table 5-1: O-RAN Subsystems and WGs responsible for specifications

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Subsystem Type** | **Subsystem Implementation Option** | **WG and Specifications** |
| O-RU | Separated/Integrated O-DU and O-RU  Management Plane - Hierarchical and Hybrid modes | WG4: OFH CUS and M-plane specifications in cases where the O-DU and O-RU are implemented as separate nodes and they can either be co-located in the same or distributed locations |
| Shared Cell (FHM or Cascade mode) | WG4: OFH specifications (CUS & M plane) |
| Whitebox | WG7 |
| Management Plane - Hybrid mode (WG4 M Plane Hybrid mode, O1 alignment) | WG4: M-Plane specification; WG1: O1 |
| Location (Cell Site) | WG6: Cell Site (if VNF/CNF) (for further study FFS) |
| Software and Hardware decoupling | WG6 (for further study FFS) |
| FHM | Shared Cell (FHM mode) | WG4: OFH specifications (CUSM plane) |
| O-DU | Management Plane | WG1: O1; WG5: O1; WG4: M-Plane specification (if the O-DU is not integrated with the O-RU) |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Subsystem Type** | **Subsystem Implementation Option** | **WG and Specifications** |
|  | Separated/Integrated O-DU and O-RU | WG4: OFH CUS and M-plane specifications in cases where the O-DU and O-RU are implemented as separate nodes and they can either be co-located in the same or distributed locations |
| Separated/Integrated O-DU and O-CU- CP/O-CU-UP | WG5: F1 C and U plane profiles where the O-DU and O-CU-CP/O-CU-UP are implemented as separate nodes and they can either be co-located in the same or distributed locations |
| Software and Hardware decoupling | WG6 |
| Reference Stack (PHY Hi, MAC/RLC) | WG8: O-DU Software Architecture and APIs specification |
| Accelerator decoupling (AAL) | WG6 |
| PNF, VNF, CNF | WG6: VNF, CNF |
| Location (Cell, Edge site) | WG6: VNF/CNF |
| Whitebox | WG7 |
| Near-Real time RIC support (counters and stats perspective, E2) | WG3: E2; O-DU support for counters and stats perspective should be part of WG5 |
| Integrated O- CU-CP, O- CU-UP1 | Base functions | WG1: Management Plane (O1)  WG5: O1 information and data models |
| Separated/Integrated O-DU and O-CU- CP/O-CU-UP | WG5: F1 C and U plane profiles where the O-DU and O-CU-CP/O-CU-UP are implemented as separate nodes and they can either be co-located in the same or distributed locations |
| Software and Hardware decoupling | WG6 |
| Reference Stack (PDCP, RRC, SDAP - in SA mode) | WG8: O-CU-CP/O-CU-UP Software Architecture and APIs specification |
| Accelerator decoupling (AAL) | WG6 |
| PNF, VNF, CNF | WG6: VNF, CNF |
| NR Deployment Options (NSA Option 3x, SA Option 2, others) | WG5: X2 (NSA), Xn (SA) |
| Location (Edge, Regional site) | WG6: VNF/CNF |
| Whitebox | WG7 |
| Near-Real time RIC support (counters and stats perspective, E2) | WG3: E2; O-CU-CP/O-CU-UP support for counters and stats perspective should be part of WG5 |
| O-CU-CP | Base functions | WG5: F1-C; E1  WG1: Management Plane (O1)  WG5: O1 information and data models  Note: E1 not supported by existing WG5 specifications |
| Software and Hardware decoupling | WG6 |
| Reference Stack (PDCP, RRC) | WG8: O-CU-CP/O-CU-UP Software Architecture and APIs specification |
| Accelerator decoupling (AAL) | WG6 |
| PNF, VNF, CNF | WG6: VNF, CNF |
| NR Deployment Options (NSA Option 3x, SA Option 2, others) | WG5: X2 (NSA), Xn (SA) |
| Location (Edge, Regional site) | WG6: VNF/CNF |
| Whitebox | WG7 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Subsystem Type** | **Subsystem Implementation Option** | **WG and Specifications** |
|  | Near-Real time RIC support (counters and stats perspective, E2) | WG3: E2; O-CU-CP/O-CU-UP support for counters and stats perspective should be part of WG5 |
| O-CU-UP | Base functions | WG5: F1-U; E1  WG1: Management Plane (O1)  WG5: O1 information and data models  Note: E1 not supported by existing WG5 specifications |
| Software and Hardware decoupling | WG6 |
| Reference Stack (PDCP, SDAP - in SA mode) | WG8: O-CU-CP/O-CU-UP Software Architecture and APIs specification |
| Accelerator decoupling (AAL) | WG6 |
| Management Plane (O1) | WG1: O1 |
| PNF, VNF, CNF | WG6: VNF, CNF |
| NR Deployment Options (NSA Option 3x, SA Option 2, others) | WG5: X2 (NSA), Xn (SA) |
| Location (Edge, Regional site) | WG6: VNF/CNF |
| Whitebox | WG7 |
| Near-Real time RIC support (counters and stats perspective, E2) | WG3: E2; O-CU-CP/O-CU-UP support for counters and stats perspective should be part of WG5 |
| O-eNB | Base functions | WG1: Management Plane (O1) |
| Separated/Integrated O-DU and O-RU  Management Plane - Hierarchical and Hybrid modes | WG4: OFH CUS and M-plane specifications in cases where the O-DU and O-RU are implemented as separate nodes and they can either be co-located in the same or distributed locations |
| Software and Hardware decoupling | WG6 |
| Accelerator decoupling (AAL) | WG6 |
| PNF, VNF, CNF | WG6: VNF, CNF |
| NR Deployment Options (NSA Option 3x) | WG5: X2 (NSA) |
| Location (Cell, Edge, Regional site) | WG6: VNF, CNF |
| Whitebox | WG7 |
| Near-Real time RIC support (counters and stats perspective, E2) | WG3: E2; O-CU-CP/O-CU-UP support for counters and stats perspective should be part of WG5 |
| O-Cloud | Base functions | WG6: O2 |
| Software and Hardware decoupling | WG6 |
| Accelerator decoupling (AAL) | WG6 |
| Location (Cell, Edge, Regional site) | WG6: VNF, CNF |
| Near-Real Time RIC | Base functions | WG3: E2, xApp; WG2: A1 |
| PNF, VNF, CNF | WG6: VNF, CNF |
| Location (Edge, Regional site) | WG6: VNF, CNF |
| xApps | WG3 |
| Non-Real Time RIC | Base functions | WG2: A1 |
| PNF, VNF, CNF | WG6: VNF, CNF |
| Location (Edge, Regional site) | WG6: VNF, CNF |
| SMO | Base functions | WG1: O1, O2 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Subsystem Type** | **Subsystem Implementation Option** | **WG and Specifications** |
| xApp | Base functions | WG3 |
| 1 Refer to Table 4-2 for the mapping of Subsystem Type to O-RAN network functions | | |

</div>

1

1. Performing Subsystem Testing on the O-DU for example will require Technical and Test specifications from
2. 1. WG1 and WG5 for O1 Management Plane support (WG1 specifies the management services provided over the
3. O1 interface, WG5 specifies the information/data models referencing 3GPP specifications where required)
4. 2. WG4 Open Fronthaul (OFH) CUS and M Planes (if the O-DU is not integrated with the O-RU)
5. 3. WG5 Open F1 (if the O-DU is not integrated with the O-CU-CP and O-CU-UP)
6. 4. WG6 Cloud Platform (if the O-DU is implemented as VNF/CNF running on a Cloud Platform)
7. 5. WG8 Software Architecture and APIs (if the O-DU is implemented using multi-vendors Reference stacks)
8. 6. WG6 Accelerator Abstraction Layer (AAL) (if the O-DU is implemented with Accelerator decoupling)
9. 7. WG3 Near-Real time RIC support (if E2 is to be implemented) 11
10. Performing Subsystem Testing on the O-RU for example will require Technical and Test specifications from
11. 1. WG4 Open Fronthaul (OFH) CUS and M Planes (if the O-RU is not integrated with the O-DU)
12. 2. WG4 Open Fronthaul (OFH) CUS and M Planes (if the O-RU is configured in Shared Cell operation in either
13. FHM or Cascade mode)
14. 3. WG1 and WG4 for O1 Management Plane support (WG1 specifies the management services provided over the
15. O1 interface, WG4 specifies the information/data models referencing 3GPP specifications where required.
16. Noting that O1 support for O-RU is still work in progress)
17. 4. WG7 Whitebox reference design (if the O-RU is implemented based on whitebox reference design)
18. 5. WG4 Near-Real time RIC support (if performance counters and statistics are required to support use cases
19. enabled through Near-Real time RIC) 22
20. One of the key objectives of Subsystem testing is to validate the functionality of production grade DUT when the DUT
21. is not operating in test mode and in few cases in standardized test mode as when required. One example of standardized
22. test mode can be 3GPP test modes.
23. Hence it is important to ensure that the DUT is not negatively impacted with the utilization of internal functions solely to
24. support Subsystem testing, i.e., DUT is not expected to be testing tools when deployed in production networks and
25. therefore DUT should not be used as testing tool during Subsystem tests.
26. Subsystem tests are performed with a set of testing tools which are used to both apply active stimulus and as well as
27. passive monitoring and measurements of the DUTs.
28. It is recommended for Subsystem testing to adopt a wraparound testing approach for each of the Subsystem as the Device
29. under Test (DUT) and Interfaces under Test (IUT), therefore providing a testing framework for comprehensive evaluation
30. and testing prior to Multi-vendors Interoperability (MV-IOT) Subsystem pairing and Open interfaces testing.
31. The wraparound testing approach involves emulating or using reference test platforms for the relevant Subsystems
32. surrounding the Subsystem (DUT) as per defined in the O-RAN Deployment Blueprint. Reference test platforms can be
33. Subsystems designed for commercial purpose or test applications which are used to support the wraparound test setup.
34. For example, an O-Cloud reference test platform can be used to support wraparound testing of the virtualized/cloudified
35. O-RAN network function designed to operate on the O-Cloud Subsystem.
36. This would obviously include the required Service Management and Orchestration (SMO) and necessary procedures to
37. bring the DUT into Operational state.
38. Table 5-2 shows the relationship between each of the Subsystem Types and the surrounding Subsystems which are
39. recommended to be emulated or using reference test platforms as part of the wrap around testing approach. 43

#### Table 5-2: Subsystem Types, Implementation Options and Surrounding Subsystems

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Subsystem Type** | **Subsystem Implementation Option** | **Surrounding Subsystems which are recommended to support wraparound testing** |
| O-RU | Separated/Integrated O-DU and O-RU | O-DU in cases where the O-DU and O-RU are implemented as separate nodes and they can either be co-located in the same or distributed locations |
| Shared Cell (FHM) | FHM for CUS planes and NETCONF Client in O- DU/NMS for M plane |
| Shared Cell (Cascade mode) | For O-RU #1..#N in the cascaded chain. O-DU in the case if O-RU #1 (DUT) is first in the chain closest to the O-DU; O-RU #N-1 in the case if O-RU #N (DUT) is last in the chain; For N > 2 and X < N, O-RU #X-1 and O-RU #X+1 in the case if O-RU #X (DUT) |
| Whitebox | Reference Hardware Platform |
| Cloud Platform | Reference Cloud Platform (For further study FFS) |
| FHM | Shared Cell (FHM mode) | One or more O-RUs and One O-DU |
| O-DU | Management Plane | SMO (O1) |
| Separated/Integrated O-DU and O-RU | One or more O-RUs in cases where the O-DU and O- RU are implemented as separate nodes and they can either be co-located in the same or distributed locations |
| Separated/Integrated O-DU and O-CU- CP/O-CU-UP | O-CU-CP/O-CU-UP (F1-C/F1-U) in cases where the O-DU and O-CU-CP/O-CU-UP are implemented as separate nodes and they can either be co-located in the same or distributed locations |
| Separated O-CU-CP and O-CU-UP | O-CU-CP (F1-C) and O-CU-UP (F1-U) |
| Shared Cell (FHM) | FHM for CUS and M Plane. One or more O-RUs (NETCONF Server) for M-Plane |
| Shared Cell (Cascade mode) | O-RU #1 |
| Whitebox | Reference Hardware Platform |
| Cloud Platform | Reference Cloud Platform |
| Accelerator decoupling (AAL) | AAL |
| Near-Real time RIC support | Near-Real time RIC (E2) |
| Integrated O- CU-CP, O- CU-UP1 | Management Plane | SMO (O1) |
| Separated/Integrated O-DU and O-CU- CP/O-CU-UP | One or more O-DUs (F1) in cases where the O-DU and O-CU-CP/O-CU-UP are implemented as separate nodes and they can either be co-located in the same or distributed locations |
| Whitebox | Reference Hardware Platform |
| Cloud Platform | Reference Cloud Platform |
| Accelerator decoupling (AAL) | AAL |
| NR Deployment Option (NSA Option 3x, 3a) | eNB (X2) |
| NR Deployment Option (SA Option 2) | gNB (Xn) |
| Near-Real time RIC support | Near-Real time RIC (E2) |
| O-CU-CP | Management Plane | SMO (O1) |
| Separated O-CU-CP and O-CU-UP | One or more O-CU-UP (E1)  Note: E1 not supported by existing WG5 specifications |
| Separated/Integrated O-DU and O-CU-CP | One or more O-DUs (F1-C) in cases where the O-DU and O-CU-CP are implemented as separate nodes and |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Subsystem Type** | **Subsystem Implementation Option** | **Surrounding Subsystems which are recommended to support wraparound testing** |
|  |  | they can either be co-located in the same or distributed  locations |
| Whitebox | Reference Hardware Platform |
| Cloud Platform | Reference Cloud Platform |
| Accelerator decoupling (AAL) | AAL |
| NR Deployment Option (NSA Option 3x, 3a) | eNB (X2) |
| NR Deployment Option (SA Option 2) | gNB (Xn) |
| Near-Real time RIC support | Near-Real time RIC (E2) |
| O-CU-UP | Management Plane | SMO (O1) |
| Separated O-CU-CP and O-CU-UP | O-CU-CP (E1)  Note: E1 not supported by existing WG5 specifications |
| Separated/Integrated O-DU and O-CU-UP | One or more O-DUs (F1-U) in cases where the O-DU and O-CU-UP are implemented as separate nodes and they can either be co-located in the same or distributed locations |
| Whitebox | Reference Hardware Platform |
| Cloud Platform | Reference Cloud Platform |
| Accelerator decoupling (AAL) | AAL |
| NR Deployment Option (NSA Option 3x) | eNB (X2) |
| NR Deployment Option (SA Option 2) | gNB (Xn) |
| Near-Real time RIC support | Near-Real time RIC (E2) |
| O-eNB | Management Plane | SMO (O1) |
| Whitebox | Reference Hardware Platform |
| Cloud Platform | Reference Cloud Platform |
| NR Deployment Option (NSA Option 3x) | eNB (X2) |
| Near-Real time RIC support | Near-Real time RIC (E2) |
| O-Cloud | Management Plane | SMO (O2) |
| Cloud Platform | O-RAN network functions operating on Cloud platforms - O-DU, O-CU-CP, O-CU-UP, O-eNB,  Near-Real time RIC, Non-Real time RIC, SMO |
| Accelerator decoupling (AAL) | AAL |
| Near-Real Time RIC | Management Plane | SMO (O1) |
| Cloud Platform | Reference Cloud Platform |
| E2 Nodes | E2 Nodes (E2) - O-DU, O-CU-CP, O-CU-UP, O-eNB |
| xApps | xApps |
| Non-Real time RIC support | Non-Real time RIC (A1) |
| Non-Real Time RIC | Management Plane | SMO (O1) |
| Cloud Platform | Reference Cloud Platform |
| Near-Real time RIC support | Near-Real time RIC (A1) |
| SMO | Management Plane | O-RAN Managed Element (O1) |
| xApp | Near-Real time RIC support | Near-Real time RIC Platform and E2 Nodes (E2) - O- DU, O-CU-CP, O-CU-UP, O-eNB, Non-Real time RIC (A1) |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Subsystem Type** | **Subsystem Implementation Option** | **Surrounding Subsystems which are recommended to support wraparound testing** |
| 1 Refer to Table 4-2 for the mapping of Subsystem Type to O-RAN network functions | | |

</div>

1

* 1. Performing Subsystem Testing using the wraparound test approach on the O-DU for example may require emulating or
  2. using reference test platforms for the following surrounding O-RAN network functions
  3. 1. One or more O-RUs (Open Fronthaul OFH) in cases where the O-DU and O-RUs are implemented as separate
  4. nodes
  5. 2. O-CU-CP/O-CU-UP (F1-C/F1-U) in cases where the O-DU and O-CU-CP/O-CU-UP are implemented as
  6. separate nodes
  7. 3. In Separated O-CU-CP and O-CU-UP configuration - O-CU-CP (F1-C) and O-CU-UP (F1-U)
  8. 4. In Shared Cell (FHM) configuration - FHM for CUS and M Plane (Open Fronthaul OFH). One or more O-RUs
  9. (NETCONF Server) for M-Plane
  10. 5. In Shared Cell (Cascade) configuration - O-RU #1 (Open Fronthaul OFH)
  11. 6. Reference Cloud Platform
  12. 7. Near-Real time RIC (E2)
  13. 8. SMO (O1)

15

1. Refer to the Subsystem Technical and Test specifications shown in Table 5-1 for more details on the recommended
2. Subsystem Testing approach and detailed procedures.
3. Figure 5-6 shows an example Wrap around testing setup with the O-DU configured in NR SA mode as the Subsystem
4. ![]({{site.baseurl}}/assets/images/f645c7785a79.jpg)under Test.

20

#### Figure 5-6: Wrap around testing setup for O-DU as the Subsystem under Test

1. OFH indicated in Figure 5-6 includes WG4 CUS and M plane implementation and for M-Plane both Hierarchical and
2. Hybrid models. Refer to [6][7] for more details.

## 5.3 Subsystem Pairing and Open Interfaces Interoperability

1. Testing
2. Subsystem Pairing and Open Interfaces Interoperability testing is typically performed after the Subsystem testing on each
3. of the Subsystems involved in the Pairing has been successfully completed and prior to E2E System Testing on all the
4. Subsystems and Subsystems Pairs defined in the O-RAN Deployment Blueprint.
5. Subsystem Pairing and Open Interfaces testing should be performed with the requirements of the Subsystem Pair and
6. Open Interfaces specified in the respective Subsystem Pair Interoperability Profiles and Test Cases and KPIs defined by
7. the WGs responsible for the specification of the Open Interfaces and Interoperability Test (IOT) profiles.
8. Refer to the WGs' Technical and Test specifications for the respective Open Interfaces shown in Table 3-2 for more
9. details on the recommended Subsystem Pairing and Open Interfaces testing approach and detailed procedures.
10. One of the key objectives of Subsystem Pairing and Open Interfaces testing is to validate the functionality of production
11. grade DUTs when all the DUTs are not operating in test modes. Hence it is important to ensure that the DUTs are not
12. negatively impacted with the utilization of internal functions solely to support interoperability testing, i.e., DUTs are not
13. expected to be testing tools when deployed in production networks and therefore DUTs should not be used as testing tools
14. during interoperability tests.
15. Interoperability tests are performed with a set of testing tools which are used to both apply active stimulus and as well as
16. passive monitoring and measurements of the DUTs.
17. It is recommended for Subsystem Pairing and Open Interfaces Interoperability testing to adopt a wraparound testing
18. approach for each of the Subsystem Pair as the DUTs and Open Interface as the IUT, therefore providing a testing
19. framework for comprehensive evaluation & testing prior to E2E System testing.
20. The wraparound testing approach involves emulating or using reference test platforms for the relevant Subsystems
21. surrounding the Subsystem Pair as the DUTs and Open Interface as the IUT as per defined in the O-RAN Deployment
22. Blueprint. Reference test platforms can be Subsystems designed for commercial purpose or test applications which are
23. used to support the wraparound test setup. For example, an O-Cloud reference test platform can be used to support
24. wraparound testing of the virtualized/cloudified O-RAN network function designed to operate on the O-Cloud Subsystem.
25. This would obviously include the required Service Management and Orchestration (SMO) and necessary procedures to
26. bring the DUTs into Operational state.
27. Table 5-3 shows the relationship between each of the Subsystem Pair and Open Interfaces and the surrounding Subsystems
28. which are recommended to be emulated or using reference test platforms as part of the wrap around testing approach.

#### Table 5-3: O-RAN Subsystem Pair and Open Interfaces and the surrounding Subsystems

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **O-RAN Open Interfaces** | **O-RAN**  **Subsystem Pairs** | **Surrounding Subsystems which are recommended to support wraparound testing - if implemented (Interface)** |
| A1 | Non-RT RIC  function and Near-RT RIC function | E2 nodes (E2); SMO (O1)  O-Cloud reference platform (O-Cloud API) |
| E1 | O-CU-CP and O- CU-UP | O-DU (F1); near-RT-RIC function (E2); SMO (O1) O-Cloud reference platform (O-Cloud API)  Note: E1 not supported by existing WG5 specifications |
| E2 | Near-RT RIC function and E2 Nodes for E2 functions | Non-RT-RIC function (A1); SMO (O1)  O-Cloud reference platform (O-Cloud API)  If E2 node is O-CU-CP/O-CU-UP: O-DU (F1-C/F1-U, E2)  If E2 node is O-DU: O-CU-CP/O-CU-UP (F1-C/F1-U, E2); O-RU (OFH); FHM (OFH)  If E2 node is O-eNB: no additional requirements |
| F1-C | O-CU-CP and O- DU | O-CU-UP (E1); O-RU (OFH); FHM (OFH); near-RT-RIC function (E2); SMO (O1)  O-Cloud reference platform (O-Cloud API)  Note: E1 not supported by existing WG5 specifications |
| F1-U | O-CU-UP and O- DU | O-CU-CP (E1); O-RU (OFH); FHM (OFH); near-RT-RIC function (E2); SMO (O1)  O-Cloud reference platform (O-Cloud API)  Note: E1 not supported by existing WG5 specifications |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **O-RAN Open Interfaces** | **O-RAN**  **Subsystem Pairs** | **Surrounding Subsystems which are recommended to support wraparound testing - if implemented (Interface)** |
| O1 | O-RAN Managed Element and Management entity (SMO) |  |
| O2 | SMO and O- Cloud | Management plane interface between SMO and O-Cloud |
| Open Fronthaul (OFH) CUS and M-Plane (Hierarchical and Hybrid Modes) | O-DU and O-RU | O-CU-CP (F1-CP); O-CU-UP (F1-UP); near-RT-RIC function (E2); SMO (O1)  O-Cloud reference platform (O-Cloud API) at the O-DU |
| Open Fronthaul (OFH) M-Plane (Hybrid Mode) | SMO and O-RU | O-DU (OFH) |
| X2-C | eNB and en-gNB | Near-Real Time RIC function (E2); SMO (O1)  O-Cloud reference platform (O-Cloud API) at the O-CU-CP/O-CU- UP and O-DU |
| X2-U | eNB and en-gNB | Near-Real Time RIC function (E2); SMO (O1)  O-Cloud reference platform (O-Cloud API) at the O-CU-CP/O-CU- UP and O-DU |
| Xn-C | eNB and ng-gNB | Near-Real Time RIC function (E2); SMO (O1)  O-Cloud reference platform (O-Cloud API) at the O-CU-CP/O-CU- UP and O-DU |
| Xn-U | eNB and ng-gNB | Near-Real Time RIC function (E2); SMO (O1)  O-Cloud reference platform (O-Cloud API) at the O-CU-CP/O-CU- UP and O-DU |

</div>

1

* 1. Performing Subsystem Pairing and Open Interfaces Interoperability testing using the wraparound test approach on the O-
  2. RU and O-DU for example may require emulating or using reference test platforms for the following surrounding O-RAN
  3. network functions
  4. 1. O-CU-CP (F1-C) and O-CU-UP (F1-U) in cases where the O-DU and O-CU-CP/O-CU-UP are implemented as
  5. separate nodes
  6. 2. In Separated O-CU-CP and O-CU-UP configuration - O-CU-CP (F1-C) and O-CU-UP (F1-U)
  7. 3. Reference Cloud Platform in cases where the O-RU and/or O-DU is implemented on Cloud Platforms
  8. 4. Near-Real time RIC (E2)
  9. 5. SMO (O1)

11

1. Noting that the OFH and the corresponding Management interfaces are the IUTs in this test setup. The rest of the interfaces
2. which are used to connect the DUTs to the emulated network functions and/or reference test platforms are not the IUTs
3. but required to support the wrap around testing approach.
4. Refer to the Subsystem Technical and Test specifications shown in Table 3-2 for more details on the recommended
5. Subsystem Pairing and Open Interfaces Interoperability Testing approach and detailed procedures.
6. Figure 5-7 shows an example with the O-RU and O-DU configured in NR SA mode, as the Subsystem under Test and
7. surrounding Subsystems which are recommended to be emulated or using reference test platforms for wrap around
8. Subsystem testing approach.

![]({{site.baseurl}}/assets/images/b3355cde3998.jpg)1

#### Figure 5-7: Wrap around testing setup for O-RU and O-DU as the Subsystem Pair under Test

* 1. OFH indicated in Figure 5-7 includes WG4 CUS and M plane implementation and for M-Plane both Hierarchical and
  2. Hybrid models. Refer to [6][7] for more details.

## 5.4 E2E System Multi-vendors Interoperability Testing

* 1. Multi-vendors interoperability (MV-IOT) system testing enables validation and verification of the entire O-RAN
  2. Deployment Blueprint as a complete E2E system under test (SUT).
  3. E2E System testing should be performed after Subsystem Testing, Subsystem Pair and Open Interfaces Interoperability
  4. Testing have been successfully completed for all the Subsystems and Subsystem Pairs defined in an O-RAN Deployment
  5. Blueprint.
  6. One of the key objectives of E2E System testing is to validate the functionality of production grade DUTs when all the
  7. DUTs in the SUT are not operating in test modes. Hence it is important to ensure that the DUTs are not negatively
  8. impacted with the utilization of internal functions solely to support interoperability testing, i.e., DUTs are not expected
  9. to be testing tools when deployed in production networks and therefore DUTs should not be used as testing tools during
  10. E2E System tests.
  11. E2E System tests are performed with a set of testing tools which are used to both apply active stimulus and as well as
  12. passive monitoring and measurements of the DUTs.
  13. It is recommended for System testing to adopt a wraparound testing approach for all the Blueprint defined Subsystems as
  14. DUTs and Open interface connecting these Subsystems as IUTs, therefore providing a testing framework for
  15. comprehensive evaluation and testing.
  16. The wraparound testing approach involves using Test Equipment such as the UEs (test and/or emulated),
  17. Applications/Services (test and/or emulated) and Core network (test and/or emulated) as shown in Figure 5-8 below.

![]({{site.baseurl}}/assets/images/05d27fbb0985.png)1

#### Figure 5-8: Wrap around testing setup for E2E System under Test (SUT)

* + 1. OFH indicated in Figure 5-8 includes WG4 CUS and M plane implementation and for M-Plane both Hierarchical and
    2. Hybrid models. Refer to [6][7] for more details.
    3. E2E System Testing should be performed with the test configuration from the following listed profiles
    4. 1. Subsystem Profiles for all the Subsystems (e.g. xApp supporting Dynamic Traffic Steering)
    5. 2. Subsystem Pair IOT Profile for all the Subsystem Instance Pairs (e.g. OFH between the O-DU and O-RU)
    6. 3. System Profile for the entire O-RAN Deployment Blueprint 9

1. Recommendations and considerations for E2E System Testing test cases and KPIs are further detailed in Chapter 6.

### 5.4.1 Subsystem Replacement Testing

1. One variant of the E2E System Testing which can be considered is the Subsystem Replacement Testing approach when
2. the E2E System Testing is performed.
3. Subsystem Replacement Testing approach involves replacing one of Subsystems in the E2E System Test environment
4. with the other Subsystems and all the test configurations remaining the same.
5. The Subsystem Replacement Testing approach can be useful for testing the following scenarios within the E2E System
6. Testing environment as it is important to evaluate the compatibility and impact of such changes of the Subsystem to the
7. entire E2E System specified per the O-RAN Deployment Blueprint
8. 1. Testing multiple vendors offering the same Subsystem (instance)
9. 2. Testing upgrades (software/firmware/hardware) to a Subsystem (instance)
10. 3. Testing major parameters changes to a Subsystem (instance) which have been either determined or needing to
11. be evaluated for potential System-wide impacts (e.g. expiry value of a certain timer which may have cascaded
12. impact through the E2E system as per defined in the O-RAN Deployment Blueprint) 24
13. Subsystem Replacement Testing can be applied when a reduced scope of testing and set of test cases can be performed
14. depending on the Subsystem replaced for any of the above listed scenarios. Scope reduction for the testing and test cases
15. are typically determined through detailed impact analysis of the Subsystem (to be replaced) and scenarios.
16. In this case, prior to performing E2E System Testing (described in section 5.4), the Subsystem (to be replaced) must
17. successfully complete both Subsystem Testing (described in section 5.2) and Subsystem Pair and Open Interfaces
18. Interoperability Testing (described in section 5.3) based on the determined scope of testing and set of test cases.
19. Figure 5-9 shows the wrap around testing setup for E2E System under Test with one of the Subsystems replaced. In this
20. example, the O-DU subsystem is replaced as part of the E2E System Testing setup. Multiple vendors' O-DUs can be
21. tested in the same E2E System Testing environment with the other Subsystems in the E2E test environment remaining
22. ![]({{site.baseurl}}/assets/images/5b05f5180ac8.png)the same.

5

#### Figure 5-9: Wrap around testing setup for E2E System under Test (SUT) with one Subsystem Replaced

1. OFH indicated in Figure 5-9 includes WG4 CUS and M plane implementation and for M-Plane both Hierarchical and
2. Hybrid models. Refer to [6][7] for more details. 9

# 1 Chapter 6 O-RAN E2E Test Cases and KPIs

## 6.1 Introduction

1. The O-RAN E2E testing framework aims to evaluate the entire O-RAN Deployment Blueprint holistically as a System
2. under Test (SUT) based on a set of well-defined E2E Test Cases and Key Performance Indicators (KPIs).
3. The purpose of this Chapter is to outline the key considerations along with information to help guide testing and validating
4. the O-RAN Deployment Blueprints with the relevant E2E Test Cases and KPIs.
5. The following considerations will be discussed in further details in the next sections in this Chapter Use Cases and Services Requirements

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| 8 | 1. |
| 9 | 2. |
| 10 | 3. |
| 11 | 4. |
| 12 | 5. |
| 13 | 6. |
| 14 |  |
| 15 | 6.2 |

</div>

O-RAN Deployment Blueprint dependencies Relevance of 3GPP KPIs

Relevance of NGMN 5G Test Cases and KPIs defined in [10] Test Conditions to be considered

Test Scenarios and KPIs to be considered

## Use Cases and Services Requirements

1. The selection of the E2E Test Cases and KPIs are determined mainly by 2 factors
2. 1. Use Cases and Services
3. 2. O-RAN Deployment Blueprint which are optimized according to the Use Cases and Services requirements 19
4. Figure 6-1 shows a few examples for each of the major categories of use cases and services which are supported by 3GPP
5. ![]({{site.baseurl}}/assets/images/007899551d7f.jpg)and O-RAN compliant networks.

22

#### Figure 6-1: Examples of Use Cases/Services supported by 3GPP compliant and O-RAN RIC-enabled networks

1. To convince an operator to invest in O-RAN infrastructure, 3GPP and Operators' Services which can be supported with
2. 3GPP compliant networks must be well supported with O-RAN compliant networks.
3. It can therefore be expected that operators will require comprehensive system testing and evaluation to be performed on
4. the O-RAN Deployment Blueprints using the E2E Test Cases and KPIs which are defined for the 3GPP and Operators'
5. Services that are of interest to them.
6. O-RAN Alliance has specified a set of prioritized use cases which can be only supported by O-RAN RIC-enabled
7. networks. These use cases leverage the O-RAN architecture and demonstrates its unique benefits. Key benefits of O-RAN
8. architecture include the ability to utilize machine learning systems and artificial intelligence back end modules to
9. empower network intelligence through open and standardized interfaces / feeds in a multi-vendor network.
10. Operators will require guidance on the E2E Test Cases and KPIs which can be used to test and evaluate the performance
11. for each of these RIC-enabled use cases in order to be able to quantify the benefits of implementing these use cases using
12. O-RAN RIC-enabled networks as compared to networks without O-RAN RIC capabilities.

1

## 6.3 O-RAN Deployment Blueprint dependencies

1. An O-RAN Deployment Blueprint can consist of multiple Subsystems from possibly multiple vendors. The KPIs can be
2. measured as E2E KPIs across any combinations of vendors and as well as Subsystems and Subsystems Pairs KPIs for the
3. different Subsystems and the Open interfaces between the Subsystems respectively.
4. The specific Performance Measurements, KPIs and their respective values defined for Subsystem Testing, Subsystem
5. Pair and Open Interfaces Testing and E2E System Testing will be dependent on the O-RAN Deployment Blueprints.
6. For example, from the E2E System Testing perspective, the beam forming system performance gain KPIs specified for
7. outdoors macro cells would not be applicable for indoors small cells which may not require beam forming capabilities.
8. Similarly, the beam forming performance gain measurements specified for the O-RUs which are designed and optimized
9. for outdoors macro cells systems would not be applicable for O-RUs which are designed and optimized for indoors small
10. cells.
11. It is therefore important to ensure that testing is performed for each of the
12. 1. Subsystem Instances with their defined Subsystem Instance profiles and associated KPIs
13. 2. Subsystem Instances pairs with their defined Subsystem Pairs Interoperability profiles and associated KPIs
14. 3. System Deployment Blueprints with the defined E2E System KPIs 17

## 6.4 Relevance of the 3GPP KPIs

1. As highlighted in Section 6.2, operators will require validation of the O-RAN Deployment Blueprints that the overall
2. 3GPP System characteristics is as expected.
3. In general, 3GPP defines two categories of RAN KPIs
4. 1. Performance data for technology tests, trials, and evaluation such as in 3GPP TR 38.913.
5. 2. Performance data for network monitoring, assessment, analysis, optimization, and assurance which will be
6. further discussed in Section 6.4.1.

25

1. The same set of E2E KPI categories and KPIs which are defined for 3GPP compliant networks and services will be
2. directly applicable for O-RAN compliant networks.
3. Additional considerations for the application of 3GPP defined KPIs for O-RAN Deployment Blueprint testing and
4. verification will be discussed in Section 6.4.2.

### 6.4.1 3GPP KPIs defined for network monitoring, assessment, analysis,

1. optimization and assurance
2. From the 3GPP system perspective, the E2E KPIs defined for network monitoring, optimization and assurance are
3. typically defined for the following categories
4. 1. Availability (e.g. cells ready to service connections)
5. 2. Accessibility (e.g. connection establishment rates, attempts/failures, latency)
6. 3. Integrity (e.g. throughput, latency, jitter, retransmission rates)
7. 4. Mobility (e.g. intra/inter RATs handover rates, interruption times for control / user planes)
8. 5. Reliability (e.g. amount of sent packets which are successfully delivered to the destination within the time
9. constraint required by the target service, divided by the total number of sent packets)
10. 6. Retainability (e.g. drop rates for PDN/PDU sessions, call session)
11. 7. Utilization (e.g. resources utilization based on certain traffic conditions and profiles such as fronthaul, compute)
12. 8. Energy Efficiency (e.g. power consumption based on certain traffic conditions and profiles) 43
    1. 3GPP TS 28.554 [9] has defined a set of E2E KPI for the 5G System (5GS) and network slicing including the NR RAN
    2. and 5G Core (5GC). 3

### 6.4.2 Applicability to RAN, RAN Slices, Users and Services

1. 3GPP KPIs are typically defined for 3GPP networks (RAN and Core), E2E network slices and 3GPP hosted services such
2. as 3GPP voice services with VoLTE, EPS Fallback, VoNR and others.
3. Additional important KPIs dimensions which are required to be considered for O-RAN Deployment Blueprint testing and
4. verification include
5. 1. RAN Slices even though 3GPP has not yet standardized RAN slicing, this is one of the O-RAN use cases
6. 2. Users and Services QoS to be evaluated for Accessibility, Integrity, Mobility, Retainability
7. 3. Users and Services QoE to be evaluated 12

## 6.5 Relevance of the NGMN 5G Test Cases and KPIs

1. NGMN has developed a set of E2E Test Cases and KPIs which are designed to evaluate the performance of 3GPP 5G NR
2. networks [10] with its work on the definition of the testing framework for NGMN's Pre-Commercial 5G networks trials
3. initiative.
4. The current published version of this NGMN document focuses on outdoors field testing of the 5G NR system configured
5. in NSA EN-DC mode, which includes validation of the 5G NR radio interface, E2E KPIs and features which require E2E
6. validation such as the E2E latency and E2E network slicing.
7. This set of NGMN defined E2E Test Cases and KPIs can be leveraged to a large extent for testing and validating the O-
8. RAN Deployment Blueprints in both the lab and field-testing environments.
9. Table 6-1 lists the E2E Test Cases and KPIs documented in [10] which should be referred to for more details.

#### Table 6-1: NGMN Pre-Commercial 5G networks trials E2E Test Cases and KPIs [10]

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Test Case focus KPIs and Test Scenarios** | |
| **Trial test requirements** | |
| Latency | Control Plane and User Plane Latency |
| User Throughput | Peak throughput  Throughput at interference limited Cell edge Cell edge coverage throughput  Throughput in different coverage conditions (link budget test)  Throughput in different interference conditions (Average User Throughput) |
| Cell capacity | Cell peak throughput  Cell average throughput |
| Spectral efficiency | User and Cell Spectral efficiency |
| Coverage | Outdoor Single-cell Coverage  Outdoor Multi-Cell Continuous Coverage Outdoor to Indoor Coverage  Indoor Coverage |
| Mobility | Intra-Cell mobility testing  Inter-Cell Mobility (Handover) Testing |
| Reliability | Success probability of transmitting a set number of bytes within a certain delay |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Test Case focus KPIs and Test Scenarios** | |
| Retainability | Capability of the network to retain a service by a UE for a desired duration  once the user is connected to the service - Call drop rate, Call setup complete rate, Dual connectivity drop rate |
| User experience | Examples Content Distribution Streaming Service QoE, Social Networking QoE, High Speed Internet QoE |
| Energy efficiency | UE energy efficiency  Network energy efficiency |
| Inter-RAT procedures | NSA Inter-RAT Mobility with PS Service  SA Inter-RAT Mobility with PS Service |
| RAN architecture split | CU-DU Separation  CP-UP Separation |
| **Service or technology specific requirements** | |
| Location/Positioning service | EPS Scenario (Option 3), 5GS Scenario (NG-RAN) |
| Fixed wireless access | Average and peak throughput  Meeting throughput speed tier guarantees End-to-end latency performance  Beam tracking range (horizontal/azimuthal) for base station and CPE/UE antennas Quality of Service differentiation scenarios for Voice/video application  Number of (active) users served per base station Geographic coverage area  Robustness to environmental blockage (mmWave) |
| Voice Services | EPS Fall-back, Voice Over NR |

</div>

1

## 6.6 Test Conditions to be considered

* 1. As highlighted in the earlier sections, the E2E System Test Cases and KPIs which are defined by 3GPP will be directly
  2. applicable for testing and validating the O-RAN Deployment Blueprints, while those defined by NGMN in [10] can be
  3. leveraged to a large extent for similar purpose.
  4. However, it is important to take into considerations the following aspects when testing and validating O-RAN Deployment
  5. Blueprints
  6. 1. Multi-vendors interoperability
  7. 2. Functional, Performance including normal and abnormal conditions
  8. 3. Radio channel variations and impacts on the overall system performance and Quality of Experience (QoE)
  9. 4. Management, Orchestration and Network Automation
  10. 5. Additional considerations related to practical deployment aspects 13

### 6.6.1 Multi-vendors interoperability

1. As the O-RAN Deployment Blueprint can consist of multiple Subsystems from possibly multiple vendors, additional
2. considerations for O-RAN focused system test scenarios, conditions and KPIs will be required to validate and evaluate
3. the performance of multi-vendors interoperability in accordance to the O-RAN Deployment Blueprint definition.
4. For example if the O-RUs, O-DUs and O-CU-CPs/O-CU-UPs in an O-RAN Deployment Blueprint are provided by
5. different vendors, then it would be important to ensure that the E2E KPIs are evaluated with the appropriate E2E test
6. cases and test scenarios which can be used to validate multi-vendors interoperability between these O-RAN network
7. functions.

### 6.6.2 Functional, Performance including normal and abnormal conditions

1. Multi-vendors interoperability testing typically includes functional validation for handling normal conditions.
2. However, similar to how the 3GPP Radio Access Networks are expected to be tested and optimized for Performance and
3. Abnormal conditions handling, operators would be expecting the O-RAN Deployment Blueprints to be tested and
4. optimized in the same manner.
5. O-RAN Deployment Blueprints consisting of Subsystems from multiple vendors will therefore require Multi-vendors
6. interoperability testing to include testing for Performance and Abnormal conditions handling.
7. Performance testing can be used to evaluate how well each individual Subsystem, each pair of Subsystem Instances and
8. all the Subsystems in the O-RAN Deployment Blueprint inter-operate to achieve the best in class cost-performance ratio.
9. This can include quantifying the O-RAN Deployment Blueprint when Subsystems from multiple vendors inter-operate
10. under Performance test conditions through
11. 1. Performing testing using the same set of KPIs, for example examining if the latency figures can be achieved in
12. performance testing conditions.
13. 2. Measuring resources utilization efficiency for example with Radio resource blocks, Open Fronthaul and xHaul
14. transport, O-Cloud computing / networking / storage and power consumption / energy efficiency. 18
15. Abnormal testing will in some cases be required to be performed to validate fault management and zero-touch network
16. automation techniques such as self-healing functions.

### 6.6.3 Radio channel variations and impacts on the overall system

1. performance and QoE
2. Radio access networks should be tested with close to real-world radio channel conditions, variations of the channel
3. conditions and mobility patterns in the lab environment for a proper evaluation of the overall system performance of the
4. RAN and QoE of the services handled by the RAN.
5. For example testing key 3GPP RAN functions such as Radio resource, Beam / Cell level mobility management and
6. advanced use cases defined by O-RAN such as Traffic Steering and Massive MIMO Beamforming Optimization will
7. require the test environment to be setup with the appropriate network and slices topology, radio channel conditions, UEs
8. distributions and mobility patterns, which otherwise these functions and use cases cannot be properly tested and evaluated.
9. Testing O-RAN Deployment Blueprints consisting of Subsystems from multiple vendors under the appropriate radio
10. channel conditions and mobility patterns will be required to validate how well the multi-vendors Subsystems inter-operate
11. under these test conditions.

### 6.6.4 Management, Orchestration and Network Automation

1. In general, operators require the Management & Orchestration (MANO) and Network Automation capabilities of their
2. networks to be robustly validated.
3. In order for operators to be able to deploy O-RAN networks and network slices which can consist of Subsystems from
4. multiple vendors, multi-vendors interoperability testing will be required for validating the management and orchestration
5. functions of all the Subsystems defined in the O-RAN Deployment Blueprints.
6. O-RAN Alliance has specified a set of prioritized use cases for O-RAN orchestration of virtualized RAN and the interfaces
7. used for management and orchestration, in particular the O1 interface between the service management and orchestration
8. framework and the RAN managed functions and the O2 interface between the service management and orchestration
9. framework and the O-Cloud Infrastructure Management Services/Deployment Management Services that controls
10. resource assignment for Virtualized Network Functions.
11. Operators will require guidance on the E2E Test Cases and KPIs which can be used to test and evaluate the functionality
12. and performance for each of these orchestration use cases in order to be able to quantify the feasibility and benefits of
13. deploying O-RAN compliant networks.

### 6.6.5 Additional considerations related to practical deployment aspects

1. In addition to performing testing based on 3GPP, ITU-T, IEEE specified functionalities, it is important as well to take
2. into considerations the practical deployment aspects which operators will need to consider and therefore tested as part of
3. the E2E Testing framework. These considerations include
4. 1. Performance Evaluation and Monitoring
5. 2. Robustness, Resilience, Reliability, Security
6. 3. Troubleshooting and Root Cause Analysis (RCA)
7. 4. Practical Network Operating Conditions such as fronthaul transport loading and non-zero variable delays
8. 5. FCAPS including fault, configuration, accounting, performance, and security management
9. 6. System Deployment lifecycle (installs, upgrades)
10. 7. Virtualization, interaction with O-Cloud (NFVi), Management and Orchestration (MANO)
11. 8. Evolution towards Zero Touch Automation network management 16
12. System Deployment lifecycle (installs, upgrades) involves multiple phases of the System Deployment lifecycle which
13. will include new installs and as well as future field upgrades scenarios such as
14. 1. Performing software or firmware upgrades of the existing installed O-RAN Network Functions (e.g. increased
15. performance, enhanced capabilities such as dynamic spectrum sharing, bug fixes and others)
16. 2. Installing new O-RAN Network Functions which are required to interoperate with existing installed O-RAN
17. Network Functions (e.g. adding new O-RUs from a new vendor to the field operational O-DU currently serving
18. O-RUs from the current vendor, new xApp to be installed onto the current near-RT RIC)
19. 3. Installing new or Replacing existing hardware (or O-Cloud) to support existing installed O-RAN Network
20. Functions (e.g. adding, replacing storage, networking, computing resources) 26
21. It is therefore important to define testing templates ensuring that the essential testing is performed for the specific
22. Subsystem Instances, Subsystem Instances Pairs and Open Interfaces and System Deployment Blueprint which are
23. affected by the System Deployment lifecycle scenarios.

## 6.7 Test Scenarios and KPIs to be considered

1. A few examples of Test Scenarios and KPIs which are needing to be considered for testing O-RAN Deployment Blueprint
2. consisting of Subsystems from multiple vendors are shared in more details in this section.
3. 1. Mobility management
4. 2. Deployability

35

### 6.7.1 Mobility Management

1. Mobility management test cases may need to consider test scenarios which involve testing multi-vendors interoperability
2. between Subsystems provided from multiple vendors.
3. Test scenarios can include intra O-RU (inter beams for intra cell and inter cells), inter O-RUs (intra O-DU), inter O-DUs
4. (intra O-CU-CP/O-CU-UP), inter O-CU-CP/O-CU-UPs, Intra vs Inter RATs handovers in Idle and Connected modes.
5. Figure 6-2 shows an example of a test scenario which can be used to verify the interoperability aspects of mobility
6. management in a multi-vendors O-RAN Deployment Blueprint test setup. 43

![]({{site.baseurl}}/assets/images/40b04b049cfe.jpg)1

#### Figure 6-2: Test Scenario for verifying multi-vendors interoperability aspect of Mobility Management

* 1. In this test scenario
  2. 1. UE is first connected through O-RU (R1), O-DU (D1), O-CU-CP/UP (C1)
  3. 2. UE then moves towards O-RU (R2) which is an inter O-RU and intra O-DU mobility scenario
  4. 3. UE then moves towards O-RU (R3) which is an inter O-RU and inter O-DU mobility scenario
  5. 4. UE then moves towards O-RU (R4) which is an inter O-RU, inter O-DU and O-CU-CP/UP mobility scenario 8

1. The Mobility KPIs including handover attempts/success rates, interruption time (aka latency) to control, user plane and
2. services plane, services performances such as packet losses, jitter and latency should be measured in order to validate that
3. the services SLAs can be met while executing the test sequences.

### 6.7.2 Deployability

1. One of the key considerations for dis-aggregated RAN deployments is the requirements for the underlying transport
2. network which will be dependent on the requirements of the Services and dis-aggregated RAN functions which will be
3. required to interwork over the transport network segments.
4. These requirements are typically simulated, estimated, tested, measured, and validated for dis-aggregated RAN transport
5. planning purposes.
6. O-RAN Deployment Blueprints will be required to go through similar process with the additional complexity that the
7. Subsystems in the same O-RAN Deployment Blueprint may be provided by different vendors which may have different
8. levels of influences on the transport requirements therefore needing to be tested and validated with test setup
9. considerations outlined in Section 6.6.
10. The Integrity and Utilization KPIs including transport capacity/throughput, packet losses, jitter and latency should be
11. measured during the testing process taking into considerations the following aspects
12. 1. Capacity/throughput for Open fronthaul interface for transport planning purposes, which can vary depending on
13. test scenarios and key factors such as radio conditions among others outlined in Section 6.6.3.
14. 2. Latency for transport planning purposes and delay management interoperability which can vary dependent on
15. the transport options and can be impacting performance and users-services experiences.
16. 3. Resources Utilization based on test profiles which should include networking, computing, storage resources. 29

30

31

# 1 Annex A: Operators' inputs on Deployment Blueprints

* 1. Annex A lists the O-RAN Deployment Blueprint profiles which have been submitted by global operators to O-RAN
  2. Alliance to assist with developing comprehensive E2E testing methodologies and test cases taking into considerations
  3. these submitted profiles.

## A.1 Operator #1 inputs

#### NR Deployment Options and Evolution

* 1. 1. Step1: (NSA EN-DC) Option 3x (based on X2 interface and EPC)
  2. 2. Step2: Step1 + (SA 5G) Option 2
  3. 3. Step3: Step2 + (ng-LTE) Option 5/Option 7x (based on Xn interface and 5GC) 10

#### Use Cases focuses

1. 1. RAN Sharing
2. 2. Near-RT RIC (edge-cloud) Non-RT-RIC Use Cases (regional-cloud): Traffic Steering, QoE/QoS, Massive
3. MIMO Beam Forming and Optimization 15
4. E2E Performance requirements of Application / Network Slices - references to NGMN Definition of the Testing
5. Framework for the NGNM 5G Pre-Commercial Network Trials [10].

18

#### 19 Table A-1: Operator #1 inputs - System Profile considerations

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **System Profiles considerations** | **NSA Opt. 3x (FR1)** | **NSA Opt. 7x (FR1)** | **SA Opt. 5 (FR1)** | **SA Opt. 2 (FR1)** | **SA Opt. 2 (FR2)** |
| Service Priority | eMBB (NR and LTE) | eMBB (NR and LTE) | eMBB (LTE) | eMBB (NR), URLLC (NR) | eMBB (NR), URLLC (NR) |
| Deployment Scenarios | Outdoor Macro/Micro Cell and RAN Sharing | | | | |
| Deployment Options and Evolution | NSA EN-DC  Option 3x with X2 between eNB and en-gNB; and EPC | NSA Option 7x with Xn between gNB and ng-eNB; and 5GC | (ng-LTE) SAS  Option 5 with 5GC | NR Standalone (SA) Option 2 with 5GC | NR Standalone (SA) Option 2 with 5GC |
| NR Spectrum Bands | NR: FR1 - 3.7 GHz TDD, 700 MHz FDD  LTE:  2.6GHz/1800MH z/800MHz FDD | NR: FR1 - 3.7 GHz TDD, 700 MHz FDD  LTE:  2.6GHz/1800MHz/  800MHz FDD | 2.6GHz/1800MHz/  800MHz FDD | FR1 - 3.7 GHz TDD, 700 MHz FDD | FR2 - 26 GHz TDD |
| Figure Reference | Figure A-1 | Figure A-1 | Figure A-2 | Figure A-2 | Figure A-3 |
| Reference to WG6 CAD [4] | Based on Scenario A in Appendix 7.1 | Based on Scenario A in Appendix 7.1 | Based on Scenario A in Section 6.1 | Based on Scenario A in Section 6.1 | Based on Scenario E in Section 6.1 |

</div>

20

![]({{site.baseurl}}/assets/images/bcb293a2287d.png)1

#### 2 Figure A-1: Operator #1 Deployment Scenario #1 - NSA (FR1)

3 Note: W1 is specified in 3GPP Release 16 for ng-eNB only.

![]({{site.baseurl}}/assets/images/175ab2d53419.png)4 Refer to [4][11][12] for more details on the FHGW.

5

#### ![]({{site.baseurl}}/assets/images/b575933bbfad.png)6 Figure A-2: Operator #1 Deployment Scenario #2 - SA (FR1)

7

#### 8 Figure A-3: Operator #1 Deployment Scenario #3 - SA (FR2)

1 **Table A-2: Operator #1 inputs - Subsystem O-RU**

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **O-RU** | **NSA Opt. 3x NSA Opt. 7x SA Opt. 5 (FR1) SA Opt. 2 (FR1) (FR1) (FR1)** | **SA Opt. 2 (FR2)** |
|  |  | Integrated or Separated. |
| Separated / Integrated O- DU and O-RU | Separated: WG4: OFH | In the case if the O- DU and O-RU are integrated, OFH is not available for testing.  In the case if the O- DU and O-RU are implemented as separate nodes and they can either be co-located in the same or distributed locations - WG4: OFH. |
| Management Plane (WG4 M Plane Hierarchical, Hybrid mode, O1) | WG4: M-Plane specification; WG1: O1 | |
| PNF, VNF, CNF | PNF | |
| Location | Cell Site | |

</div>

2

#### Table A-3: Operator #1 inputs - Subsystem FHGW

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **FHGW** | **NSA Opt. 3x (FR1)** | **NSA Opt. 7x (FR1)** | **SA Opt. 5 (FR1)** | **SA Opt. 2 (FR1)** | **SA Opt. 2 (FR2)** |
| 7-2x <-> 7-2x;  7-2x <-> 8 | 7-2x <-> 7-2x;  7-2x <-> 8 (LTE) | - | - | 7-2x <-> 7-2x | 7-2x <-> 7-2x  (if DU-RU not integrated) |

</div>

4

#### 5 Table A-4: Operator #1 inputs - Subsystem O-DU

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **O-DU** | **NSA Opt. 3x NSA Opt. 7x SA Opt. 5 (FR1) SA Opt. 2 (FR1) (FR1) (FR1)** | **SA Opt. 2 (FR2)** |
|  |  | Integrated or Separated. |
| Separated / Integrated O- DU and O-RU | Separated WG4: OFH | In the case if the O- DU and O-RU are integrated, OFH is not available for testing.  In the case if the O- DU and O-RU are implemented as separate nodes and they can either be co-located in the same or distributed locations - WG4: OFH. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **O-DU** | **NSA Opt. 3x (FR1)** | **NSA Opt. 7x (FR1)** | **SA Opt. 5 (FR1)** | **SA Opt. 2 (FR1)** | **SA Opt. 2 (FR2)** |
| Separated / Integrated O- DU and O-CU- CP/O-CU-UP | Separated WG5: F1, W1 | Separated WG5: F1, W1 | Separated WG5: W1 | Separated WG5: F1 | Separated WG5: F1 |
| Management Plane (WG4 M Plane Hierarchical, Hybrid mode, O1) | WG4: M-Plane specification; WG1: O1 | | | | |
| PNF, VNF, CNF | WG6: VNF, CNF | | | | PNF |
| O-Cloud | WG6: O2 | | | | N/A |
| Location (Cell, Edge site) | WG6: Edge | | | | Cell |
| Near-Real time RIC support (counters and stats perspective, E2) | WG3: E2 | | | | |

</div>

1

#### 2 Table A-5: Operator #1 inputs - Subsystem O-CU-CP/ O-CU-UP

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **O-CU-CP /O- CU-UP** | **NSA Opt. 3x (FR1)** | **NSA Opt. 7x (FR1)** | **SA Opt. 5 (FR1)** | **SA Opt. 2 (FR1)** | **SA Opt. 2 (FR2)** |
| Management | WG1: O1 | | | | |
| Separated / Integrated / O- DU and O-CU- CP/O-CU-UP | Separated WG5: F1, W1 | Separated WG5: F1, W1 | Separated WG5: W1 | Separated WG5: F1 | Separated WG5: F1 |
| PNF, VNF, CNF | WG6: VNF, CNF | | | | |
| O-Cloud | WG6: O2 | | | | |
| NR Deployment Options (NSA Option 3x, SA Option 2, others) | WG5: X2 (NSA) | WG5: Xn (SA) | | | |
| Location (Edge, Regional site) | WG6: Edge | | | | |
| Near-Real time RIC support (counters and stats perspective, E2) | WG3: E2 | | | | |

</div>

3

#### 4 Table A-6: Operator #1 inputs - Subsystem O-eNB

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **O-eNB** | **NSA Opt. 3x NSA Opt. 7x SA Opt. 5 (FR1) (FR1) (FR1)** | **SA Opt. 2 (FR1)** | **SA Opt. 2 (FR2)** |
| Management | WG1: O1 | N/A | N/A |
| PNF, VNF, CNF | WG6: VNF, CNF | N/A | N/A |
| O-Cloud | WG6: O2 | N/A | N/A |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **O-eNB** | **NSA Opt. 3x NSA Opt. 7x**  **(FR1) (FR1)** | **SA Opt. 5 (FR1)** | **SA Opt. 2 (FR1)** | **SA Opt. 2 (FR2)** |
| NR Deployment Options (NSA Option 3x, SA Option 2, others) | WG5: Xn (SA), X2 (NSA) | WG5: Xn (SA) | N/A | N/A |
| Location (Cell, Edge, Regional site) | WG6: Edge | | N/A | N/A |
| Near-Real time RIC support (counters and stats perspective, E2) | WG3: E2 | | N/A | N/A |

</div>

1

#### 2 Table A-7: Operator #1 inputs - Subsystem O-Cloud

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **O-Cloud** | **NSA Opt. 3x NSA Opt. 7x SA Opt. 5 (FR1) SA Opt. 2 (FR1) SA Opt. 2 (FR2) (FR1) (FR1)** |
| Management | WG6: O2 |
| Location (Cell, Edge, Regional site) | WG6: Edge, Regional |

</div>

3

#### 4 Table A-8: Operator #1 inputs - Subsystem Near-Real Time RIC

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Near-Real Time RIC** | **NSA Opt. 3x NSA Opt. 7x SA Opt. 5 (FR1) SA Opt. 2 (FR1) SA Opt. 2 (FR2) (FR1) (FR1)** |
| Base functions | WG3: E2, xApp; WG2: A1 |
| PNF, VNF, CNF | WG6: VNF, CNF |
| O-Cloud | WG6: O2 |
| Location (Edge, Regional site) | WG6: Edge |
| xApps | Traffic Steering, QoE/QoS |
| Advanced use cases (such as Network Slicing) | Massive MIMO Beamforming Optimization (WG1), RAN sharing (WG1) |

</div>

5

#### 6 Table A-9: Operator #1 inputs - Subsystem Non-Real Time RIC

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Non-Real Time RIC** | **NSA Opt. 3x NSA Opt. 7x SA Opt. 5 (FR1) SA Opt. 2 (FR1) SA Opt. 2 (FR2) (FR1) (FR1)** |
| Base functions | WG2: A1 |
| PNF, VNF, CNF | WG6: VNF, CNF |
| Location (Edge, Regional site) | WG6: Regional |

</div>

7

#### 8 Table A-10: Operator #1 inputs - Subsystem SMO

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **SMO NSA Opt. 3x NSA Opt. 7x SA Opt. 5 (FR1) SA Opt. 2 (FR1) SA Opt. 2 (FR2) (FR1) (FR1)** | |
| Base functions | WG1: O1 |

</div>

1

#### 2 Table A-11: Operator #1 inputs - Subsystem xApp

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **xApps NSA Opt. 3x NSA Opt. 7x SA Opt. 5 (FR1) SA Opt. 2 (FR1) SA Opt. 2 (FR2) (FR1) (FR1)** | |
| WG3 xApps | Traffic Steering, QoE/QoS |

</div>

3

## A.2 Operator #2 inputs

#### Deployment Scenario

1. 1. Indoors Small Cell
2. 2. 5G NR FR1 2.6GHz, 4.9GHz - TDD
3. 3. Maximum Channel Bandwidth (CHBW) 100MHz
4. 4. Leverages WG4 Shared Cell feature with combination of both FHM and Cascade modes 10

#### Deployment Options and Evolution

1. 1. NR NSA Option 3x
2. 2. NR SA Option 2

14

15 **Subsystems**

16 1. Phase 1: O-RU, FHGW, O-DU/O-CU-CP/O-CU-UP (integrated unit) and Server

17 2. Phase 2: O-RU, FHGW, O-DU/O-CU-CP/O-CU-UP (integrated unit), AAL and Server 18

![]({{site.baseurl}}/assets/images/7b721107f385.png)19 Refer to [4][11][12] for more details on the FHGW. 20

21

#### 22 Figure A-4: Operator #2 Deployment Scenario #1 (FR1) - Phase 1

23

![]({{site.baseurl}}/assets/images/987408aa49fa.png)1

1. **Figure A-5: Operator #2 Deployment Scenario #1 (FR1) - Phase 2**

## A.3 Operator #3 inputs

#### Deployment Scenario

1. 1. Outdoor Macro Cell Deployment
2. 2. 5G NR FR1 n66, n70, n71, n29, n26
3. 3. Total Channel Bandwidth (CHBW) 150MHz 8

#### Deployment Options and Evolution

1. 1. NR SA Option 2

11

#### O-RAN Deployment Blueprints variants and corresponding Subsystems

1. 1. Refer to Figure A-6: O-RU, O-DU at Cell site, O-CU-CP, and O-CU-UP at Regional cloud, AAL and Server
2. 2. Refer to Figure A-7: O-RU, O-DU at Local cloud, O-CU-CP, and O-CU-UP at Regional cloud, AAL and Server 15

#### Use Cases focuses

1. 1. White Box Hardware and Open Interfaces
2. 2. Near-RT RIC (edge-cloud) and Non-RT-RIC Use Cases (Regional cloud): Traffic Steering, QoS /QoE
3. Optimization and Slicing
4. 3. Cloud Deployment

![]({{site.baseurl}}/assets/images/26a9322fc45d.png)21

22

#### Figure A-6: Operator #3 Deployment Scenario #1 - SA (FR1)

![]({{site.baseurl}}/assets/images/39a1c79a7e3c.png)2

3

1. **Figure A-7: Operator #3 Deployment Scenario #2 - SA (FR1)**

## A.4 Operator #4 inputs

#### Deployment Scenario

1. 1. Outdoor Small Cell, Outdoor Macro Cell, Indoors Small Cell
2. 2. 5G NR FR1 TDD (3.7GHz, 4.5GHz), 5G NR FR2 TDD (28GHz)
3. 3. Maximum Channel Bandwidth (CHBW) 100MHz for FR1 and 400MHz for FR2 10

#### Deployment Blueprints variants and corresponding Subsystems

1. **Table A-12: Operator #4 inputs - Deployment Blueprint variants**

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **Deployment variants** | **NSA Opt. 3x (NSA1)** | **NSA Opt. 3x (NSA2)** | **SA Opt. 2 (SA1)** | **NSA Opt. 3x (NSA3)** | **NSA Opt. 3x (NSA4)** | **SA Opt. 2 (SA2)** |
| Subsystems | O-RU,  Integrated O- DU/O-CU- CP/O-CU-UP | O-RU,  Integrated O- DU/O-CU- CP/O-CU-UP,  (Shared Cell) FHM | O-RU,  Integrated O- DU/O-CU- CP/O-CU-UP | Integrated O- RU/O-DU, O- CU-CP/O-CU- UP | O-RU,  Integrated O- DU/O-CU- CP/O-CU-UP, Near-RT RIC,  xApps, SMO | O-RU,  Integrated O- DU/O-CU- CP/O-CU-UP,  O-Cloud, SMO |
| Interfaces under Test | X2, OFH,  WG4 M-Plane Hierarchical | X2, OFH, WG4  M-Plane Hierarchical | OFH, WG4 M-  Plane Hierarchical | X2, F1 | X2, OFH, WG4  M-Plane Hierarchical, A1  E2 is an internal interface | OFH, WG4 M-  Plane Hierarchical, O1, O2, O-  Cloud APIs |
| PNF, VNF | All PNFs | All PNFs | All PNFs | All PNFs | All PNFs | Virtualized Integrated O- DU/O-CU- CP/O-CU-UP  Rest are PNFs |
| Figure Reference | Figure A-8 | Figure A-8 | Figure A-9 | Figure A-10 | Figure A-11 | Figure A-12 |
| Reference to WG6 CAD [4] | Based on Scenario A in Appendix 7.1 | Based on Scenario A in Appendix 7.1 | Based on Scenario A/B in Section 6.1 | Based on Scenario A/B in Appendix 7.1 | Based on Scenario A in Appendix 7.1 | Based on Scenario A/B in Section 6.1 |

</div>

13

1

![]({{site.baseurl}}/assets/images/a89b4a3a8eb3.png)2

#### 3 Figure A-8: Operator #4 Deployment Scenario #1 - NSA

![]({{site.baseurl}}/assets/images/25eb4942a151.png)4

5

#### 6 Figure A-9: Operator #4 Deployment Scenario #2 - SA

![]({{site.baseurl}}/assets/images/514129adbe0d.png)7

8

#### 9 Figure A-10: Operator #4 Deployment Scenario #3 - NSA

10

![]({{site.baseurl}}/assets/images/035e9200a54e.png)1

#### Figure A-11: Operator #4 Deployment Scenario #4 - NSA

![]({{site.baseurl}}/assets/images/a2ccf0a161a1.png)3

4

#### 5 Figure A-12: Operator #4 Deployment Scenario #5 - SA

6

# 1 Annex B: O-RAN Software Community inputs on Testing

2 Methodology

* 1. This annex provides an overview on the O-RAN Software Community (OSC) work and its current software releases and
  2. testing practices. Refer to the OSC wiki site for the most current information (<https://wiki.o-ran-sc.org/>).
  3. The O-CU referred in this annex should be considered as O-CU CP/UP.

## B.1 O-RAN Software Community

* 1. The O-RAN Software Community (OSC) is an open source software development project aimed at providing an open
  2. source implementation of an end-to-end RAN system following O-RAN Alliance architecture and specifications. The
  3. OSC is hosted by the Linux Foundation and funded by the O-RAN Alliance.
  4. The OSC is led by a 12-member Technical Oversight Committee (TOC) with its current members representing AT&T,
  5. China Mobile, Deutsche Telekom, Ericsson, Nokia, NTT DOCOMO, Orange, Radisys and Verizon.
  6. The working effort of the OSC is organized into the following development projects:
  7. ? Operations and Maintenance (OAM)
  8. ? Non-Realtime RAN Intelligent Controller (NONRTRIC)
  9. ? Near-Realtime RAN Intelligent Controller Platform (RIC)
  10. ? Near-Realtime RAN Intelligent Controller Applications (RICAPP)
  11. ? O-RAN Central Unit (OCU)
  12. ? O-RAN Distributed Unit High (ODUHIGH)
  13. ? O-RAN Distributed Unit LOW (ODULOW)
  14. ? Simulations (SIM)
  15. ? Infrastructure (INF)
  16. ? Documentation (DOC)
  17. ? Integration and Testing (INT)
  18. and subcommittee(s)
  19. ? Requirements and Software Architecture Committee (RSAC) 26

1. The OSC conducts its business on open communication and development platforms including Zoom teleconferencing
2. bridge, Groups.io mailing lists, Confluence wiki, and Git/Gerrit source code repositories. All O-RAN SC information
3. and O-RAN SC developed software can be accessed via resources listed in Annex B.6.

## B.2 OSC Development Cycles

1. The OSC developed software is released on a bi-annual schedule, first in May/June time frame and the second in
2. November/December. The naming scheme of releases follows color names in alphabetical order, with individual release
3. names selected by community member voting. The first four releases are named Amber, Bronze, Cherry, and Dawn. The
4. OSC delivered its first release, Amber release, in November 2019.
5. The high-level objectives and use cases for the next release are usually selected by the RSAC during the later portion of
6. the current release cycle. The first several weeks of each release cycle typically are for the design and planning phase
7. where the high-level release objectives are designed into implementable features and tasks, which are distributed to the
8. OSC development projects. Following the planning phase is the development phase, during which the development
9. projects and teams implement the agreed-upon features. This phase is divided into three-week sprints where each sprint
10. has its own more manageable implementation and testing goals. Finally, prior to the release of the software, it is the
11. testing phase, during which the integrated system testing and end-to-end use case testing are conducted, and the viability
12. and quality of the software are verified and evaluated.
13. After each release, the OSC also institutes a maintenance window for the new release during the design and planning
14. phase of the next release cycle. Normally this time window is used only for fixing major problems discovered after the
15. release.

## B.3 OSC Software and Test Deployment Architecture

1. The OSC projects are set up based on the O-RAN Alliance architecture.
2. ![]({{site.baseurl}}/assets/images/3fe6211fa42a.jpg)Figure B-1 below shows the relationship between OSC projects and the O-RAN architecture components.

7

#### Figure B-1: Relationship between OSC projects and the O-RAN architecture components

1. Figure B-2 depicts how the delivered software components by the OSC projects are deployed in the OSC Integration and
2. Testing lab for Bronze release testing.
3. The deployment is spread across two Kubernetes clusters and two bare metal servers. From right to left, the first
4. Kubernetes cluster is the SMO cluster, for components developed by the Non-Realtime RIC and OAM projects. The
5. second Kubernetes cluster is the RIC cluster, for deploying components and microservices developed by the Near
6. Realtime RIC Platform and the Near-Realtime RIC Applications projects. One of the bare-metal servers is used for
7. running O-DU (both O-DO LOW and O-DU HIGH), and the other for running O-RU stub for peering the Open Fronthaul
8. connection to the O-DU, over a dedicated 40GE link.

![]({{site.baseurl}}/assets/images/2dd7661eeede.jpg)1

1. **Figure B-2: Deployment of OSC projects components in the OSC Integration and Testing lab for Bronze release**

## B.4 OSC Release Objectives

#### Amber (achieved)

1. ? O-RAN SC level
2. o Continuous Integration (CI) flow implemented and all source code repositories integrated into the CI
3. auto building process.
4. o Source code repositories build into binary artifacts (i.e. docker container images, libraries, OS ISO
5. media).
6. o Documentation framework established, initial documentation in place.
7. ? Selected projects
8. o Near-Real Time RIC Platform and Near-Real Time RIC Applications:
9. ? "one-click" deployable.
10. ? Completing xApp deployment flow, (pre-spec) E2 setup and subscription flow. 15

#### Bronze (work in progress)

1. ? O-RAN SC level
2. o Unit Test and SONAR reporting framework established.
3. o All participating projects "one-click" deployable.
4. o RSAC use cases:
5. ? Health-check: including A1 and (pre-spec) O1 health check.
6. ? Traffic Steering: steering decision based on E2 information and AI/ML algorithm.
7. ? O-DU integration: O-DU HIGH communicate with O-DU LOW via FAPI. 24

## B.5 OSC Testing

1. OSC testing effort is divided into five levels
2. 1. Unit testing (UT)
3. o UT is performed by the developers by implementing test cases using programming language specific
4. unit testing and static code analysis framework.
   1. o UT is triggered automatically every time when there is source code change submitted into the code
   2. repository for review.
   3. o At OSC level the INT project team provides support for unit test and code scan (i.e. static code analysis)
   4. integration into Linux Foundation Continuous Integration flow, and result reporting into the SONAR
   5. Cloud platform. Using the reports, TOC sets quality gates such as percentage of code covered by unit
   6. test cases, no major issues discovered, etc.
   7. 2. Project level integrated testing (PIT)
   8. o Each development project is expected to conduct project level integrated testing, where all software
   9. components developed by the project are deployed into a single system for testing internal flows.
   10. o PIT is expected to be conducted by individual project teams, at the end of each development sprints or
   11. other development milestones.
   12. o At OSC level the INT project team organizes sprint demonstration fests regularly where development
   13. project teams gather and demonstrate achieved features in the previous sprint, using project level system
   14. deployment in project team's own testing and demonstration environment.
   15. o The INT project team is also working with individual development projects on Robot testing
   16. framework-based testing flows that are to be integrated into Linux Foundation Continuous Integration
   17. flow. Such test flows serve as regression tests for implementation updates and can be triggered
   18. automatically by the CI system on a regular basis (e.g. daily) or upon new code submission.
   19. 3. Project pairwise testing (PPT)
   20. o For projects that deliver O-RAN architectural components that interact with each other, PPT is
   21. conducted to ensure communication compatibility.
   22. o PPT sessions are organized by the INT project team, using either community testing lab or self-arrange
   23. testing facilities by involved projects.
   24. 4. System integrated testing (SIT)
   25. o SIT is whole OSC software testing where all OSC development components are deployed into a single
   26. system. SIT focuses on overall system health, inter-project communication and application
   27. compatibility, overall system deployment flow, and resource requirements.
   28. o SIT is conducted by the INT project team using OSC community testing lab.
   29. o SIT is conducted during the testing phase of each release cycle.
   30. o Robot test framework-based health check test flows used as automated regression test.
   31. 5. Use case testing (UCT)
   32. o UCT is whole OSC software testing where all OSC development components are deployed into a single
   33. system. UCT tests OSC deployment that has passed SIT.
   34. o UCT is conducted by the INT project team using OSC community testing lab.
   35. o UCT is conducted during the testing phase of each release cycle.
   36. o UCT uses Open Testing Framework (OTF), a test flow definition and orchestration tool that is
   37. developed as a sub-project under the INT.

## B.6 References

* 1. 1. OSC Resources
  2. a) Wiki: [http://wiki.o-ran-sc.org](http://wiki.o-ran-sc.org/)
  3. b) Source code: [http://gerrit.o-ran-sc.org](http://gerrit.o-ran-sc.org/)
  4. c) Project management: [http://jira.o-ran-sc.org](http://jira.o-ran-sc.org/)
  5. d) Docker image registry: nexus3.o-ran-sc.org:10004 and nexus3.o-ran-sc.org:10002
  6. e) SONAR reporting: https://[www.sonarcloud.io./organizations/o-ran-sc/projects](http://www.sonarcloud.io/organizations/o-ran-sc/projects)
  7. f) Mailing lists: https://lists.o-ran-sc.org/g/main
  8. g) Meeting calendar: https://lists.o-ran-sc.org/calendar (member sign-in required)
  9. 2. Robot Framework: https://robotframework.org

# 1 Annex C: Test Functions, Tools and Solutions for

2 Subsystem and E2E System Testing

* + 1. Table C-1 shows an example listing of the test functions, tools and solutions which can be used to establish test bed setups
    2. for Subsystem testing, Subsystem Pairing and Open Interfaces Interoperability testing and E2E System testing of the O-
    3. RAN Deployment Blueprints.
    4. These test functions and test tools are classified into the following categories as they can be used for setting up the test
    5. environment, providing active stimulus functions and passive measurements for test results verification purposes.
    6. 1. **Test Case Scenario Creation**: used to setup the testing environment and the necessary testing conditions which
    7. are required for executing the test case.
    8. 2. **Test Case Validation**: used to collect measurements, KPIs, logs, packet captures for verifying, substantiating,
    9. troubleshooting, and debugging test results. 12

1. A single test function and tool can be used for both Test Case Scenario Creation and Test Case Validation.
2. Few notes for clarification purposes on the example listings of test functions and tools listed in this Annex C
3. 1. These are non-exhaustive listings i.e. test functions and tools which are not listed in this Annex C can be used
4. where appropriate.
5. 2. Not all the test functions and tools listed will be required for all test scenarios and test cases.
6. 3. Test functions and tools listed can be implemented each as a standalone test tool or multiple of these test
7. functions can be combined into a single test tool.
8. 4. Few of the test functions might be combined into a single test tool (standalone test function usage is not possible).
9. 5. Real or emulated network elements / network functions can be used where appropriate. 22
10. This example listing will be expanded in the next release of this specification.

#### Table C-1: Subsystem and System Testing - Example listing of Test Functions and Tools

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **No.** | **Test Functions and Tools** | **Abbreviation** | **Test Case Scenario Creation** | **Test Case Validation** | **Purpose** | **Subsystem and Subsystem Pairing and Open Interfaces Interoperability Testing** | **E2E**  **System Test** |
| 1 | Test UEs with Test SIMs  (LTE, NR NSA, NR SA) | Test UE | Yes | Yes | Used for test cases which require UEs interactions with the SUT.  Test UEs are typically UEs which are designed for commercial or testing applications with certain test and diagnostic functions enabled for test and measurements purposes. | Yes | Yes |
| 2 | Multi UEs Emulator  (LTE, NR NSA, NR SA) | M-UE Emu | Yes | Yes | Used for test cases which require UEs interactions with the SUT. | Yes | Yes |
| 3 | Test Core Network | Test Core | Yes | Yes | Used to terminate Test UEs and/or UEs emulator NAS | Yes | Yes |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **No.** | **Test Functions and Tools** | **Abbreviation** | **Test Case Scenario Creation** | **Test Case Validation** | **Purpose** | **Subsystem and Subsystem Pairing and Open Interfaces Interoperability Testing** | **E2E**  **System Test** |
|  | (EPC, NSA EPC, 5GC) |  |  |  | protocol and to  support core network procedures required for RAN (SUT) testing.  Test Core Network are typically Core Networks which are designed for commercial applications and can be used for testing the RAN. |  |  |
| 4 | Core Network Emulator  (EPC, NSA EPC, 5GC) | Core Emu | Yes | Yes | Used to terminate Test UEs and/or UEs emulator NAS protocol and to support core network procedures required for RAN (SUT) testing. | Yes | Yes |
| 5 | Test eNB or gNB  (NSA, SA) | Test eNB or Test gNB | Yes | Yes | Used for test cases which require eNB or gNB interaction with DUT/SUT. | Yes | Yes |
| 6 | eNB or gNB Emulator  (NSA, SA) | eNB Emu or gNB Emu | Yes | Yes | Used for test cases which require eNB or gNB interaction with DUT/SUT. | Yes | Yes |
| 7 | O-RU Emulator testing the O- DU | O-RU OFH  Emu | Yes | Yes | Used for test cases which require O-DU Subsystem testing. | Yes | No |
| 8 | O-DU Emulator testing the O- RU | O-DU OFH  Emu | Yes | Yes | Used for test cases which require O-RU Subsystem testing. | Yes | No |
| 9 | O-DU Emulator testing the O- CU-CP/O-CU- UP | O-DU F1 Emu | Yes | Yes | Used for test cases which require O- CU-CP/O-CU-UP  Subsystem testing. | Yes | No |
| 9 | O-CU-CP/O- CU-UP  Emulator testing the O- DU | O-CU-CP/O- CU-UP F1-  C/F1-U Emu | Yes | Yes | Used for test cases which require O-DU Subsystem testing (in the case of O-DU is implemented as a standalone O-DU). | Yes | No |
| 10 | E2 Node Emulator (O- CU-CP/O-CU- UP, O-DU) | O-CU-CP/O- CU-UP E2  Emu or O-DU E2 Emu | Yes | Yes | Used for test cases which require Near- Real Time RIC and xApps Subsystems testing. | Yes | No |
| 11 | Application Test Server (aka Traffic Generator) | App Test Svr or Traffic Gen | Yes | Yes | Used for test cases which require bi- directional  (downlink and uplink) user plane | Yes | Yes |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **No.** | **Test Functions and Tools** | **Abbreviation** | **Test Case Scenario Creation** | **Test Case Validation** | **Purpose** | **Subsystem and Subsystem Pairing and Open Interfaces Interoperability Testing** | **E2E**  **System Test** |
|  |  |  |  |  | transfer test(s) to be  performed between the Application Test Server and Test UEs and/or UEs emulator. |  |  |
| 12 | Network Impairment Emulator | NW Impair Gen | Yes | No | Used for test cases which require selective packet impairments such as (but not limited to) over the Open Fronthaul (OFH) interface, X2 and others as appropriate. | Yes | Yes |
| 13 | Packet Delay Insertion Generator | Pkt Delay Gen | Yes | No | Used for test cases which require selective insertion of packet delay such as (but not limited to) over the Open Fronthaul (OFH) interface and others as appropriate.  Noting that fixed delay can be managed via a specific length of fiber as well as using dedicated test tool. | Yes | Yes |
| 14 | Transport and Synchronization Tester | Transport Sync Tester | Yes | Yes | Used for test cases which require passive and active testing of transport network across the fronthaul, midhaul, backhaul and sidehaul (Xn, X2) - S-Plane timing and sync verification across all O-RAN components in both subsystem and system test cases. Supports eCPRI testing for O-RU, O- DU, FHM and FTN. | Yes | Yes |
| 15 | RF Attenuators | RF Atten. | Yes | No | Used for test cases which require radio signals attenuation and can also improve impedance match, ensuring power transfer from source to load is optimized. | Yes | Yes |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **No.** | **Test Functions and Tools** | **Abbreviation** | **Test Case Scenario Creation** | **Test Case Validation** | **Purpose** | **Subsystem and Subsystem Pairing and Open Interfaces Interoperability Testing** | **E2E**  **System Test** |
| 16 | Channel Emulator | Channel Emu. | Yes | No | Used for test cases which require radio channel emulation / impairments. | Yes | Yes |
| 17 | RF Chamber | RF Chamber | Yes | No | Used for Over the Air (OTA) RF  connectivity to the O-RU (where applicable). | Yes | Yes |
| 18 | Spectrum and Signal Analyzer | SpecAn or SigAnalyzer | No | Yes | Used for test cases which require radio signal and spectrum analysis. | Yes | Yes |
| 19 | Signal Creation Software | SCS | Yes | Yes | Used to create waveforms to stimulate NR and LTE test signals. | Yes | No |
| 20 | Signal Generator | SigGen or Sig Generator | Yes | No | Used for test cases which require radio signal generation. | Yes | No |
| 21 | Test UE Logging Tool | Test UE Logger | No | Yes | Used for test results and KPIs reporting when Test UEs is/are used. | Yes | Yes |
| 22 | Protocol Analyzer | Protocol Analyzer | No | Yes | Used for passive monitoring of the Interface under Test (IUT) for test results verification and troubleshooting purposes such as (but not limited to) over the Open Fronthaul (OFH) interface, X2 and others as appropriate.  Test Tool can be split into Packet Capture and Protocol Decoder functions. These capabilities can be implemented as a single integrated test tool or separate test tools. | Yes | Yes |
| 23 | IQ Analyzer | IQA | No | Yes | Used to analyze IQ data on the Fronthaul interface. | Yes | Yes |
| 24 | Network Synchronization Timing Source | NW Sync Timing Source | Yes | No | Used as network timing synchronization  source such as the Precision-Time- | Yes | Yes |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **No.** | **Test Functions and Tools** | **Abbreviation** | **Test Case Scenario Creation** | **Test Case Validation** | **Purpose** | **Subsystem and Subsystem Pairing and Open Interfaces Interoperability Testing** | **E2E**  **System Test** |
|  |  |  |  |  | Protocol (PTP)  Grand Master. |  |  |
| 25 | Test Controller  / Automation | Test Controller and Automation | Yes | Yes | Used for testing orchestration and automation which includes test cases selection, scheduling, configuration of the DUT, SUT, Test  functions and Tools in accordance to the selected test cases and test conditions. Test tool steps through the procedures of the test cases based on the current status and conditions of the test cases execution. Test results are analyzed and reported after the execution of the test cases. | Yes | Yes |

</div>

1

1. Figure C-1 shows an example with the wrap around testing setup for E2E System under Test (SUT) with the Test functions
2. ![]({{site.baseurl}}/assets/images/f62aa8bd3b4e.png)and tools abbreviations updated.

4

1. **Figure C-1: Wrap around testing setup for E2E System under Test (SUT) with Test Functions/Tools**
2. **Abbreviations updated**

# 1 Annex D: References to O-RAN WG6 Cloud Deployment

2 Scenarios

3 Annex D shows additional Cloud Deployment Scenarios from [4] for NR Standalone (SA) operation in Figures D-1 to

4 D-7 and NR Non-Standalone (NSA) operation in Figures D-8 to D-11. Refer to [4] for up-to-date information and details

5 on the Cloud Deployment Scenarios.

![]({{site.baseurl}}/assets/images/ed8b07dcb26c.jpg)6 The O-CU and vO-CU referred in [4] should be considered as O-CU CP/UP and vO-CU CP/UP, respectively.

7

#### ![]({{site.baseurl}}/assets/images/841928024790.jpg)8 Figure D-1: Cloud Deployment Scenario A for SA operation [4]

9

#### ![]({{site.baseurl}}/assets/images/3f9954cef451.jpg)10 Figure D-2: Cloud Deployment Scenario C for SA operation [4]

11

#### ![]({{site.baseurl}}/assets/images/2f1b7afdb690.jpg)12 Figure D-3: Cloud Deployment Scenario C.1 for SA operation [4]

13

#### 14 Figure D-4: Cloud Deployment Scenario C.2 for SA operation [4]

![]({{site.baseurl}}/assets/images/449d8401ff73.jpg)1

#### ![]({{site.baseurl}}/assets/images/649aef5c523c.png)2 Figure D-5: Cloud Deployment Scenario D for SA operation [4]

3

#### ![]({{site.baseurl}}/assets/images/98e8b76502e5.jpg)4 Figure D-6: Cloud Deployment Scenario E for SA operation [4]

5

#### ![]({{site.baseurl}}/assets/images/7c58f5ee22ae.jpg)6 Figure D-7: Cloud Deployment Scenario F for SA operation [4]

7

#### ![]({{site.baseurl}}/assets/images/3f4715c9625f.jpg)8 Figure D-8: Cloud Deployment Scenario A for NSA operation [4]

9

#### 10 Figure D-9: Cloud Deployment Scenario C for NSA operation [4]

![]({{site.baseurl}}/assets/images/689edfe8e8fa.jpg)1

#### ![]({{site.baseurl}}/assets/images/a1c99f91b318.jpg)2 Figure D-10: Cloud Deployment Scenario C.2 for NSA operation [4]

3

#### 4 Figure D-11: Cloud Deployment Scenario D for NSA operation [4]

5

# 1 Annex ZZZ: O-RAN Adopter License Agreement

1. BY DOWNLOADING, USING OR OTHERWISE ACCESSING ANY O-RAN SPECIFICATION, ADOPTER
2. AGREES TO THE TERMS OF THIS AGREEMENT.
3. This O-RAN Adopter License Agreement (the "Agreement") is made by and between the O-RAN Alliance and the entity
4. that downloads, uses or otherwise accesses any O-RAN Specification, including its Affiliates (the "Adopter").
5. This is a license agreement for entities who wish to adopt any O-RAN Specification.

## Section 1: DEFINITIONS

1. 1.1 "Affiliate" means an entity that directly or indirectly controls, is controlled by, or is under common control with
2. another entity, so long as such control exists. For the purpose of this Section, "Control" means beneficial ownership of
3. fifty (50%) percent or more of the voting stock or equity in an entity.
4. 1.2 "Compliant Implementation" means any system, device, method or operation (whether implemented in hardware,
5. software or combinations thereof) that fully conforms to a Final Specification.
6. 1.3 "Adopter(s)" means all entities, who are not Members, Contributors or Academic Contributors, including their
7. Affiliates, who wish to download, use or otherwise access O-RAN Specifications.
8. 1.4 "Minor Update" means an update or revision to an O-RAN Specification published by O-RAN Alliance that does not
9. add any significant new features or functionality and remains interoperable with the prior version of an O-RAN
10. Specification. The term "O-RAN Specifications" includes Minor Updates.
11. 1.5 "Necessary Claims" means those claims of all present and future patents and patent applications, other than design
12. patents and design registrations, throughout the world, which (i) are owned or otherwise licensable by a Member,
13. Contributor or Academic Contributor during the term of its Member, Contributor or Academic Contributorship; (ii) such
14. Member, Contributor or Academic Contributor has the right to grant a license without the payment of consideration to a
15. third party; and (iii) are necessarily infringed by a Compliant Implementation (without considering any Contributions not
16. included in the Final Specification). A claim is necessarily infringed only when it is not possible on technical (but not
17. commercial) grounds, taking into account normal technical practice and the state of the art generally available at the date
18. any Final Specification was published by the O-RAN Alliance or the date the patent claim first came into existence,
19. whichever last occurred, to make, sell, lease, otherwise dispose of, repair, use or operate a Compliant Implementation
20. without infringing that claim. For the avoidance of doubt in exceptional cases where a Final Specification can only be
21. implemented by technical solutions, all of which infringe patent claims, all such patent claims shall be considered
22. Necessary Claims.
23. 1.6 "Defensive Suspension" means for the purposes of any license grant pursuant to Section 3, Member, Contributor,
24. Academic Contributor, Adopter, or any of their Affiliates, may have the discretion to include in their license a term
25. allowing the licensor to suspend the license against a licensee who brings a patent infringement suit against the licensing
26. Member, Contributor, Academic Contributor, Adopter, or any of their Affiliates.

## Section 2: COPYRIGHT LICENSE

1. 2.1 Subject to the terms and conditions of this Agreement, O-RAN Alliance hereby grants to Adopter a nonexclusive,
2. nontransferable, irrevocable, non-sublicensable, worldwide copyright license to obtain, use and modify O-RAN
3. Specifications, but not to further distribute such O-RAN Specification in any modified or unmodified way, solely in
4. furtherance of implementations of an O-RAN Specification.
5. 2.2 Adopter shall not use O-RAN Specifications except as expressly set forth in this Agreement or in a separate written
6. agreement with O-RAN Alliance.

## Section 3: FRAND LICENSE

1. 3.1 Members, Contributors and Academic Contributors and their Affiliates are prepared to grant based on a separate
2. Patent License Agreement to each Adopter under Fair Reasonable And Non- Discriminatory (FRAND) terms and
3. conditions with or without compensation (royalties) a nonexclusive, non-transferable, irrevocable (but subject to
4. Defensive Suspension), non-sublicensable, worldwide patent license under their Necessary Claims to make, have made,
5. use, import, offer to sell, lease, sell and otherwise distribute Compliant Implementations; provided, however, that such
6. license shall not extend: (a) to any part or function of a product in which a Compliant Implementation is incorporated that
7. is not itself part of the Compliant Implementation; or (b) to any Adopter if that Adopter is not making a reciprocal grant
8. to Members, Contributors and Academic Contributors, as set forth in Section 3.3. For the avoidance of doubt, the
9. foregoing licensing commitment includes the distribution by the Adopter's distributors and the use by the Adopter's
10. customers of such licensed Compliant Implementations.
11. 3.2 Notwithstanding the above, if any Member, Contributor or Academic Contributor, Adopter or their Affiliates has
12. reserved the right to charge a FRAND royalty or other fee for its license of Necessary Claims to Adopter, then Adopter
13. is entitled to charge a FRAND royalty or other fee to such Member, Contributor or Academic Contributor, Adopter and
14. its Affiliates for its license of Necessary Claims to its licensees.
15. 3.3 Adopter, on behalf of itself and its Affiliates, shall be prepared to grant based on a separate Patent License Agreement
16. to each Members, Contributors, Academic Contributors, Adopters and their Affiliates under Fair Reasonable And Non-
17. Discriminatory (FRAND) terms and conditions with or without compensation (royalties) a nonexclusive, non-
18. transferable, irrevocable (but subject to Defensive Suspension), non-sublicensable, worldwide patent license under their
19. Necessary Claims to make, have made, use, import, offer to sell, lease, sell and otherwise distribute Compliant
20. Implementations; provided, however, that such license will not extend: (a) to any part or function of a product in which a
21. Compliant Implementation is incorporated that is not itself part of the Compliant Implementation; or (b) to any Members,
22. Contributors, Academic Contributors, Adopters and their Affiliates that is not making a reciprocal grant to Adopter, as
23. set forth in Section 3.1. For the avoidance of doubt, the foregoing licensing commitment includes the distribution by the
24. Members', Contributors', Academic Contributors', Adopters' and their Affiliates' distributors and the use by the
25. Members', Contributors', Academic Contributors', Adopters' and their Affiliates' customers of such licensed Compliant
26. Implementations.

## Section 4: TERM AND TERMINATION

1. 4.1 This Agreement shall remain in force, unless early terminated according to this Section 4.
2. 4.2 O-RAN Alliance on behalf of its Members, Contributors and Academic Contributors may terminate this Agreement
3. if Adopter materially breaches this Agreement and does not cure or is not capable of curing such breach within thirty (30)
4. days after being given notice specifying the breach.
5. 4.3 Sections 1, 3, 5 - 11 of this Agreement shall survive any termination of this Agreement. Under surviving Section 3,
6. after termination of this Agreement, Adopter will continue to grant licenses (a) to entities who become Adopters after the
7. date of termination; and (b) for future versions of O-RAN Specifications that are backwards compatible with the version
8. that was current as of the date of termination.

## Section 5: CONFIDENTIALITY

1. Adopter will use the same care and discretion to avoid disclosure, publication, and dissemination of O-RAN
2. Specifications to third parties, as Adopter employs with its own confidential information, but no less than reasonable care.
3. Any disclosure by Adopter to its Affiliates, contractors and consultants should be subject to an obligation of
4. confidentiality at least as restrictive as those contained in this Section. The foregoing obligation shall not apply to any
5. information which is: (1) rightfully known by Adopter without any limitation on use or disclosure prior to disclosure; (2)
6. publicly available through no fault of Adopter; (3) rightfully received without a duty of confidentiality; (4) disclosed by
7. O-RAN Alliance or a Member, Contributor or Academic Contributor to a third party without a duty of confidentiality on
8. such third party; (5) independently developed by Adopter; (6) disclosed pursuant to the order of a court or other authorized
9. governmental body, or as required by law, provided that Adopter provides reasonable prior written notice to O-RAN
10. Alliance, and cooperates with O-RAN Alliance and/or the applicable Member, Contributor or Academic Contributor to
11. have the opportunity to oppose any such order; or (7) disclosed by Adopter with O-RAN Alliance's prior written approval.

## Section 6: INDEMNIFICATION

1. Adopter shall indemnify, defend, and hold harmless the O-RAN Alliance, its Members, Contributors or Academic
2. Contributors, and their employees, and agents and their respective successors, heirs and assigns (the "Indemnitees"),
3. against any liability, damage, loss, or expense (including reasonable attorneys' fees and expenses) incurred by or imposed
4. upon any of the Indemnitees in connection with any claims, suits, investigations, actions, demands or judgments arising
5. out of Adopter's use of the licensed O-RAN Specifications or Adopter's commercialization of products that comply with
6. O-RAN Specifications.

## Section 7: LIMITATIONS ON LIABILITY; NO WARRANTY

1. EXCEPT FOR BREACH OF CONFIDENTIALITY, ADOPTER'S BREACH OF SECTION 3, AND ADOPTER'S
2. INDEMNIFICATION OBLIGATIONS, IN NO EVENT SHALL ANY PARTY BE LIABLE TO ANY OTHER PARTY
3. OR THIRD PARTY FOR ANY INDIRECT, SPECIAL, INCIDENTAL, PUNITIVE OR CONSEQUENTIAL
4. DAMAGES RESULTING FROM ITS PERFORMANCE OR NON-PERFORMANCE UNDER THIS AGREEMENT,
5. IN EACH CASE WHETHER UNDER CONTRACT, TORT, WARRANTY, OR OTHERWISE, AND WHETHER OR
6. NOT SUCH PARTY HAD ADVANCE NOTICE OF THE POSSIBILITY OF SUCH DAMAGES. O-RAN
7. SPECIFICATIONS ARE PROVIDED "AS IS" WITH NO WARRANTIES OR CONDITIONS WHATSOEVER,
8. WHETHER EXPRESS, IMPLIED, STATUTORY, OR OTHERWISE. THE O-RAN ALLIANCE AND THE
9. MEMBERS, CONTRIBUTORS OR ACADEMIC CONTRIBUTORS EXPRESSLY DISCLAIM ANY WARRANTY
10. OR CONDITION OF MERCHANTABILITY, SECURITY, SATISFACTORY QUALITY, NONINFRINGEMENT,
11. FITNESS FOR ANY PARTICULAR PURPOSE, ERROR-FREE OPERATION, OR ANY WARRANTY OR
12. CONDITION FOR O-RAN SPECIFICATIONS.

## Section 8: ASSIGNMENT

1. Adopter may not assign the Agreement or any of its rights or obligations under this Agreement or make any grants or
2. other sublicenses to this Agreement, except as expressly authorized hereunder, without having first received the prior,
3. written consent of the O-RAN Alliance, which consent may be withheld in O-RAN Alliance's sole discretion. O-RAN
4. Alliance may freely assign this Agreement.

## Section 9: THIRD-PARTY BENEFICIARY RIGHTS

1. Adopter acknowledges and agrees that Members, Contributors and Academic Contributors (including future Members,
2. Contributors and Academic Contributors) are entitled to rights as a third-party beneficiary under this Agreement,
3. including as licensees under Section 3.

## Section 10: BINDING ON AFFILIATES

1. Execution of this Agreement by Adopter in its capacity as a legal entity or association constitutes that legal entity's or
2. association's agreement that its Affiliates are likewise bound to the obligations that are applicable to Adopter hereunder
3. and are also entitled to the benefits of the rights of Adopter hereunder.

## Section 11: GENERAL

1. This Agreement is governed by the laws of Germany without regard to its conflict or choice of law provisions.
2. This Agreement constitutes the entire agreement between the parties as to its express subject matter and expressly
3. supersedes and replaces any prior or contemporaneous agreements between the parties, whether written or oral, relating
4. to the subject matter of this Agreement.
5. Adopter, on behalf of itself and its Affiliates, agrees to comply at all times with all applicable laws, rules and regulations
6. with respect to its and its Affiliates' performance under this Agreement, including without limitation, export control and
7. antitrust laws. Without limiting the generality of the foregoing, Adopter acknowledges that this Agreement prohibits any
8. communication that would violate the antitrust laws.
9. By execution hereof, no form of any partnership, joint venture or other special relationship is created between Adopter,
10. or O-RAN Alliance or its Members, Contributors or Academic Contributors. Except as expressly set forth in this
11. Agreement, no party is authorized to make any commitment on behalf of Adopter, or O-RAN Alliance or its Members,
12. Contributors or Academic Contributors.
13. In the event that any provision of this Agreement conflicts with governing law or if any provision is held to be null, void
14. or otherwise ineffective or invalid by a court of competent jurisdiction, (i) such provisions will be deemed stricken from
15. the contract, and (ii) the remaining terms, provisions, covenants and restrictions of this Agreement will remain in full
16. force and effect.
17. Any failure by a party or third party beneficiary to insist upon or enforce performance by another party of any of the
18. provisions of this Agreement or to exercise any rights or remedies under this Agreement or otherwise by law shall not be
19. construed as a waiver or relinquishment to any extent of the other parties' or third party beneficiary's right to assert or
20. rely upon any such provision, right or remedy in that or any other instance; rather the same shall be and remain in full
21. force and effect. 46
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.TIFG.E2ETSTFWK.0-v01.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.TIFG.E2ETSTFWK.0-v01.00.docx).
