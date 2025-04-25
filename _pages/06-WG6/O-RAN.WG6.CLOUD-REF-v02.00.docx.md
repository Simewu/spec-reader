---
title: O-RAN.WG6.CLOUD-REF-v02.00.docx.md
author: O-RAN Alliance, WG6
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG6.CLOUD-REF-v02.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG6.CLOUD-REF-v02.00.docx).

---

* toc
{:toc}

---

## ![]({{site.baseurl}}/assets/images/c903f23cac61.png)O-RAN.WG6.CLOUD-REF-v02.00

*Technical Specification*

**Cloud Platform Reference Designs**

**This is a re-published version of the attached final specification.**

#### For this re-published version, the prior versions of the IPR Policy will apply, except that the previous requirement for Adopters (as defined in the earlier IPR Policy) to agree to an O-RAN Adopter License Agreement to access and use Final Specifications shall no longer apply or be required for these Final Specifications after 1st July 2022.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material on this site for your personal use, or copy the material on this site for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

![]({{site.baseurl}}/assets/images/c903f23cac61.png)

<div class="table-wrapper" markdown="block">

|  |
| --- |
| O-RAN.WG6.CLOUD-REF-v02.00 |
| *Technical Specification* |
| **Cloud Platform Reference Designs** |
| Copyright (C) 2021 by O-RAN ALLIANCE e.V.  By using, accessing or downloading any part of this O-RAN specification document, including by copying, saving, distributing, displaying or preparing derivatives of, you agree to be and are bound to the terms of the O-RAN Adopter License Agreement contained in the Annex ZZZ of this specification. All other rights reserved.  O-RAN ALLIANCE e.V.  Buschkauler Weg 27, 53347 Alfter, Germany  Register of Associations, Bonn VR 11238 VAT ID DE321720189 |

</div>

1

# 2 Revision History

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Date** | **Revision** | **Author** | **Description** |
| 2019.06.02 | 01.00.00 | Tong Li (Lenovo) | Initial skeleton. |
| 2019.08.05 | 01.00.01 | Tong Li (Lenovo) | Initial content with contributions from Intel, Lenovo, Mavenir, and Wind River. |
| 2019.11.05 | 01.00.03 | Guy Turgeon (Wind River) | Initial Cloud Platform Requirements |
| 2019.11.05 | 01.00.04 | Guy Turgeon (Wind River) | Cloud platform requirements additions |
| 2019.11.05 | 01.00.05 | Arjun Nanjundappa (Mavenir) | vBBU initial requirements |
| 2019.11.06 | 01.00.06 | Guy Turgeon (Wind River) | Cloud Platform Requirements architecture diagrams modifications and text |
| 2019.11.08 | 01.00.07 | Arjun Nanjundappa (Mavenir) | vBBU Stack Requirements updated Sections 3.3.8 (RAN Nodes Traffic Types and Acceleration) and 3.3.9 (Cloud Transport Protocol). |
| 2019.11.08 | 01.00.08 | Guy Turgeon (Wind River) | Merge 01.00.06 and 01.00.007 |
| 2019.11.14 | 01.00.09 | Guy Turgeon (Wind River) | Genericize Cloud Platform Requirements |
| 2019.11.18 | 01.00.10 | Guy Turgeon (Wind River) | Update Scenario B: high-level diagram with LLS-C3 and SMO. Modify Chapter 4 VM and Container based platform diagrams |
| 2019.11.26 | 01.00.11 | Arjun Nanjundappa (Mavenir) | 1. Made the Traffic Types Generic as AAL instead of BBDEV.2. Included different types of Acceleration: Look-aside, In-line and Hybrid-Mode Acceleration.3. Replaced S1-MME by S1-AP4. Updated CU-UP with S1-U and NG-U traffic type. |
| 2019.12.30 | 01.00.12 | Tong Li (Lenovo) | Re-structure doc, merge vendor & operator survey results, merge INT-004 rev 1 from Niall Power (Intel), and various edits |
| 2020.01.15 | 01.00.13 | Guy Turgeon (Wind River) | Specify CR-IO 4.2.2, add Wireless cipher 4.2.3, clean up Kubernetes architecture components figure in 5.2.3 |
| 2020.01.24 | 01.00.14 | Niall Power (Intel) | Specify AAL Requirements for the Hardware Acceleration section |
| 2020.01.29 | 01.00.14  (bis) | Arjun Nanjundappa (Mavenir) | Added content for Time Synchronization section and re- worked sections on Acceleration to capture different acceleration needs (i.e., traffic and algos) |
| 2020.01.31 | Baseline 01.00.01 | Lucian Suciu (Orange) | Integrated contributions from Intel and Mavenir, implemented agreed resolutions for several comments received from RH, ERI, NVD (a few are still open...), generated the Baseline document |
| 2020.02.12 | Baseline  01.00.02 | Tong Li (Lenovo) | Revision based on WG6 group discussion and various edits |
| 2020.02.12 | Baseline 01.00.03 | Arjun Nanjundappa (Mavenir) | Time Synchronization Requirements and Figure Caption update |
| 2020.02.26 | Baseline- v01.00.05 | Lopamudra Kundu (Nvidia) | Revised section 4.3.2, appended lookaside and in-line acceleration dataflows and associated Fig. in section 4.3.1, added/revised figs. in section 5.1.6.2 related to GPU based inline PHY acceleration reference design and |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
|  |  |  | high-level edge cloud platform for inline acceleration, provided additional Kubernetes plugins in section 5.2.3. |
| 2020.03.04 | Baseline- v01.00.07 | Arjun Nanjundappa (Mavenir) | Included both In-line and Look-aside acceleration diagrams for O-DU and Accelerators to other nodes have been kept generic for section 4.3.2. |
| 2020.03.12 | Baseline- v01.00.11 | Marge Hillis (Nokia), Lopamudra Kundu (Nvidia), Tong Li (Lenovo), Arjun Nanjundappa (Mavenir), Niall Power (Intel), Lucian Suciu (Orange), Guy Turgeon (Wind River), Xiaogang Yan (China Mobile), Tao Yang (China Telecom) | Various edits. |
| 2020.03.17 | V00.16 | Lenovo, Red Hat, Orange | Time Sync modifications, minor editorial, make this  version ready for WG6 internal review and voting |
| 2020.03.19 | V00.17 | Nokia, Red Hat | Time Sync section modifications proposal from Nokia  (mostly editorial), and clarifications from Red Hat. |
| 2020.03.20 | V01.00 |  | Version ready for TSC review and voting |
| 2020.07.10 | V01.01 | Udi Schwager (Wind River) | Added support for container.d |
| 2020.07.10 | V01.01 | Niall Power (Intel) | Added reference accelerator cards for acceleration |
| 2020.07.10 | V01.01 | Lopamudra Kundu (Nvidia) | Added reference design for edge cloud server with GPU  based acceleration |
| 2020.09.01 | V01.01.01 | KDDI | Initial version applied changes to some text and figures |
| 2020.09.30 | V01.01.01 | Lucian Suciu (Orange) | Merged KDDI version with latest Cloud Ref. Design spec, also handled the comments received from  Ericsson, CMCC and Nvidia |
| 2020.10.21 | V01.01.01 | Lucian Suciu (Orange) | Incorporated the CR on Time Sync, and the input from  CTC, KDDI, Dell |
| 2020.11.05 | V02.00 |  | Version ready for WG6 internal review and voting |

</div>

3

1. Table of Contents
2. Table of Figures 5
3. Table of Tables 5
4. Chapter 1 Introductory Material 6
5. ![]({{site.baseurl}}/assets/images/67a64e9751f4.png) Scope 6
6. ![]({{site.baseurl}}/assets/images/23a75c76270c.png) References 6
7. ![]({{site.baseurl}}/assets/images/7c6ce7013ca2.png) Abbreviations 7
8. Chapter 2 Deployment Scenarios 9
9. ![]({{site.baseurl}}/assets/images/d21d47a00f0b.png) Scenario B 9
10. ![]({{site.baseurl}}/assets/images/8b33fe07adf1.png) Scenario C 10
11. ![]({{site.baseurl}}/assets/images/880e4904301b.png) Scenario C.1 10
12. ![]({{site.baseurl}}/assets/images/eec0131ff22d.png) Scenario C.2 11
13. Chapter 3 Operator Requirements 12
14. ![]({{site.baseurl}}/assets/images/68b48cfa31e6.png) Typical Use Cases 12
15. ![]({{site.baseurl}}/assets/images/7abaf1779d4e.png) Cloud Deployment Requirements 14
16. ![]({{site.baseurl}}/assets/images/3d312c52e278.png) Regional Cloud 14
17. ![]({{site.baseurl}}/assets/images/15d2b1b6b0d2.png) Edge Cloud 14
18. Chapter 4 O-Cloud Requirements 15
19. ![]({{site.baseurl}}/assets/images/b09bc161533b.png) O-Cloud Architectural Components and Requirements 15
20. ![]({{site.baseurl}}/assets/images/250c850ff872.png) Hardware Requirements 16
21. ![]({{site.baseurl}}/assets/images/20a58bb5d6eb.png) Operating System Requirements 16
22. ![]({{site.baseurl}}/assets/images/0168666d6dd1.png) Cloud Platform Runtime Requirements 16
23. ![]({{site.baseurl}}/assets/images/d2eace11f666.png) Generic Requirements for Cloud Platform Management 17
24. ![]({{site.baseurl}}/assets/images/df159ec0de45.png) VM/Container Management and Orchestration Requirements 18
25. ![]({{site.baseurl}}/assets/images/91b3aa93e747.png) Time Synchronization Requirements 18
26. ![]({{site.baseurl}}/assets/images/ac772eb0c5e2.png) G.8275.1 Full Timing Support (FTS) 18
27. ![]({{site.baseurl}}/assets/images/4a33a9140b73.png) G.8275.2 Partial Timing Support (PTS) 20
28. ![]({{site.baseurl}}/assets/images/004c1cd5bf9f.png) Hardware Acceleration Requirements 20
29. ![]({{site.baseurl}}/assets/images/7e2f6b533d6a.png) Background on Acceleration Types 20
30. ![]({{site.baseurl}}/assets/images/8f2f93b4c4c0.png) Hardware Acceleration Abstraction Layer Requirements 23
31. Chapter 5 (Informative) Cloud Platform Design Example 26
32. ![]({{site.baseurl}}/assets/images/896e11a8e386.png) Cloud Platform Hardware Design Example 26
33. ![]({{site.baseurl}}/assets/images/bca25c8f01dd.png) Regional Cloud Server Example 26
34. ![]({{site.baseurl}}/assets/images/0429c46510f1.png) Edge Cloud Server Example 27
35. ![]({{site.baseurl}}/assets/images/492e8dabe1ea.png) BIOS/UEFI Configurations 28
36. ![]({{site.baseurl}}/assets/images/d28c08e895ee.png) Firmware Versions 30
37. ![]({{site.baseurl}}/assets/images/5f476fedb304.png) Accelerator Hardware 30
38. ![]({{site.baseurl}}/assets/images/46b925c5e6dc.png) Cloud Platform Software Reference Design 33
39. ![]({{site.baseurl}}/assets/images/9b498359c13a.png) Common Reference Configurations for all Profiles 34
40. ![]({{site.baseurl}}/assets/images/00c63c7043fd.png) Regional Cloud Reference Configuration Profile 35
41. ![]({{site.baseurl}}/assets/images/5b969d7a4702.png) Edge Cloud Reference Configuration Profile 35
42. ![]({{site.baseurl}}/assets/images/7c56aaa748af.png) Example Real-time Linux Configurations 37
43. ![]({{site.baseurl}}/assets/images/0ba43fb6d11c.png) Time Synchronization Reference Design 38
44. Annex ZZZ: O-RAN Adopter License Agreement 40
45. Section 1: DEFINITIONS 40
46. Section 2: COPYRIGHT LICENSE 40
47. Section 3: FRAND LICENSE 40
48. Section 4: TERM AND TERMINATION 41
49. Section 5: CONFIDENTIALITY 41
50. Section 6: INDEMNIFICATION 41
51. Section 7: LIMITATIONS ON LIABILITY; NO WARRANTY 42
52. Section 8: ASSIGNMENT 42
53. Section 9: THIRD-PARTY BENEFICIARY RIGHTS 42
54. Section 10: BINDING ON AFFILIATES 42
55. Section 11: GENERAL 42

59

# 60 Table of Figures

1. Figure 2-1. Cloud deployment scenario B 9
2. Figure 2-2. Scenario B - O-Cloud high-level deployment diagram 9
3. Figure 2-3. Cloud deployment scenario C 10
4. Figure 2-4. Scenario C - O-Cloud high-level deployment diagram 10
5. Figure 2-5. Treatment of Network Slice: MEC for URLLC at Edge Cloud, Centralized Control, Single vO-DUs 11
6. Figure 2-6. Cloud deployment scenario C.1 11
7. Figure 2-7. Treatment of Network Slice: MEC for URLLC at Edge Cloud, Separate vO-DUs 12
8. Figure 2-8. Cloud deployment scenario C.2 12
9. Figure 4-1. Architecture component requirements for the cloud platform 15
10. Figure 4-2. Key LLS-C3 Fronthaul Synchronization in an example implementation in O-Cloud 19
11. Figure 4-3. O-DU interface and algorithm acceleration 21
12. Figure 4-4. O-CU-CP interface and algorithm acceleration 22
13. Figure 4-5. O-CU-UP interface and algorithm acceleration 23
14. Figure 4-6. AAL support for multiple devices 24
15. Figure 4-7. AAL look-aside acceleration model. 24
16. Figure 4-8. AAL inline acceleration model 25
17. Figure 4-9. Dataflow paths in look-aside and inline acceleration architectures. 26
18. Figure 5-1. Hardware-accelerated FEC functions with look-aside model. 31
19. Figure 5-2. Hardware-accelerated front-end functions with inline model. 31
20. Figure 5-3. Hardware-accelerated end-to-end high-PHY functions with inline model. 32
21. Figure 5-4. Cloud platform for look-aside acceleration of O-DU and O-CU. 32
22. Figure 5-5. Cloud platform for O-DU inline acceleration and O-CU look-aside acceleration 33
23. Figure 5-6. Cloud platform for O-DU inline acceleration of end-to-end high-PHY. 33
24. Figure 5-7. Key synchronization chain elements in an example implementation in O-Cloud for LLS-C3 38

85

# 86 Table of Tables

1. Table 2-1. Cardinality and Delay Performance for Scenario C.1 11
2. Table 3-1. AT&T Carrier aggregation requirements 12
3. Table 3-2. Deutsche Telekom carrier aggregation requirements 13
4. Table 3-3. Orange carrier aggregation requirements 13
5. Table 3-4. KDDI carrier aggregation requirements 13
6. Table 3-5. CMCC carrier aggregation requirements 13
7. Table 3-6. CTC carrier aggregation requirements 13
8. Table 3-7. BBU pooling requirements 14
9. Table 3-8. Edge cloud environmental characteristics 15
10. Table 4-1. Requirements for the cloud platform hardware. 16
11. Table 4-2. Requirements for the cloud platform operating system 16
12. Table 4-3. Requirements for the cloud platform runtime. 17
13. Table 4-4. Cloud platform management requirements 18
14. Table 4-5. Requirements for VM/container management and orchestration 18
15. Table 4-6. O-DU acceleration types. 21
16. Table 4-7. O-CU-CP acceleration types. 22
17. Table 4-8. O-CU-UP acceleration types. 23
18. Table 5-1. Regional cloud server example design 27
19. Table 5-2. Edge cloud server example design with FPGA acceleration 27
20. Table 5-3. Edge cloud server example design with GPU acceleration 28
21. Table 5-4. BIOS configurations for strong real-time systems 30
22. Table 5-5. Firmware for example reference design based on Intel server board S2600WF. 30
23. Table 5-6. Common cloud platform reference configurations for all profiles 35
24. Table 5-7. Regional cloud reference configuration profile. 35
25. Table 5-8 Edge Cloud Reference Configuration Profile 37
26. Table 5-9. Real-time Linux configurations 38

113

114 Chapter 1 Introductory Material

## ![]({{site.baseurl}}/assets/images/a8f91223ca52.png) Scope

1. This Technical Specification has been produced by the O-RAN ALLIANCE.
2. The contents of the present document are subject to continuing work within O-RAN and may change following formal
3. O-RAN approval. Should the O-RAN ALLIANCE modify the contents of the present document, it will be re-released by
4. O-RAN with an identifying change of release date and an increase in version number as follows:
5. Release x.y.z
6. where:
7. x the first digit is incremented for all changes of substance, i.e. technical enhancements, corrections, updates,
8. etc. (the initial approved document will have x=01).
9. y the second digit is incremented when editorial only changes have been incorporated in the document.
10. z the third digit included only in working versions of the document indicating incremental changes during the
11. editing process.
12. The present document focuses on cloud deployment scenario B and C (including C.1 and C.2), as defined in the O-RAN
13. WG6 Cloud Architecture document [1], and specifies requirements and reference designs for the cloud platform hardware
14. and software.

## ![]({{site.baseurl}}/assets/images/69dc0adca3af.png) References

1. The following documents contain provisions which, through reference in this text, constitute provisions of this
2. specification.
3. [1] O-RAN WG6, Cloud Architecture and Deployment Scenarios for O-RAN Virtualized RAN.
4. [2] O-RAN WG4, Control, User and Synchronization Plane Specification.
5. [3] GR-63-CORE for Network Switching Systems (NEBS) Seismic Rated Enclosures, Telecordia.
6. [4] GR-1089-CORE Electromagnetic Compatibility and Electrical Safety, Telcordia.
7. [5] OTII Server Technical Specification, 2019.
8. [6] OCP openEDGE Project, [https://www.opencompute.org/wiki/Telcos/openEDGE.](https://www.opencompute.org/wiki/Telcos/openEDGE)
9. [7] ETSI EN300 019-1-3 Class 3.2 Equipment Engineering (EE) Environmental Conditions and Environmental Tests
10. for Telecommunications Equipment Part 1-3: Classification of Environmental Conditions Stationary Use at
11. Weather-protected Locations.
12. [8] ETSI EN300386 (v1.6.1) Terrestrial Trunked Radio (TETRA); Direct Mode Operation (DMO); Part 6: Security
13. [9] FCC CFR47 15 (class A), FCC, Rules and Regulations for Title 47 Telecommunications.
14. [10] CISPR 22/32 (Class A) International Electrotechnical Commission (IEC) International Special Committee on
15. Radio Interference, Radiated Emission Limits.
16. [11] CISPR 24, IEC Information Technology Equipment - Immunity Characteristics.
17. [12] TEC/EMI/TEL-001/01/FEB-09 - Information Technology Equipment.
18. [13] TEC/IR/SWN-2MB/07/MAR-10 - Information Technology Equipment.
19. [14] IEC 62368-1:2014, Safety Standard for Information Technology Equipment and Audio Video Equipment.
20. [15] O-RAN WG4 Management Plane Specification.
21. [16] 3GPP TS 23.501: "System architecture for the 5G System (5GS)".
22. [17] O-RAN WG8, Base Station O-DU and O-CU Software Architecture and APIs.
23. [18] O-RAN Infrastructure Project, [https://wiki.o-ran-sc.org/display/IN/Infrastructure+Home.](https://wiki.o-ran-sc.org/display/IN/Infrastructure%2BHome)

## ![]({{site.baseurl}}/assets/images/227b09959191.png) Abbreviations

1. For the purposes of the present document, the following abbreviations apply.

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 156 | AAL | Acceleration Abstraction Layer |
| 157 | API | Application Programming Interface |
| 158 | ASIC | Application-specific Integrated Circuit |
| 159 | BIOS | Basic Input Output System |
| 160 | BBU | Base Band Unit |
| 161 | CNF | Containerized Network Function |
| 162 | CPU | Central Processing Unit |
| 163 | DSP | Digital Signal Processing |
| 164 | FPGA | Field Programmable Gate Array |
| 165 | DPDK | Data Plane Development Kit |
| 166 | eNB | eNodeB (applies to LTE) |
| 167 | EPA | Enhanced Platform Awareness |
| 168 | FEC | Forward Error Correcting |
| 169 | FFS | For Further Study |
| 170 | FFT | Fast Fourier Transform |
| 171 | FHGW | Front-haul Gateway |
| 172 | FTS | Full Timing Support |
| 173 | gNB | gNodeB (applies to NR) |
| 174 | GNSS | Global Navigation Satellite System |
| 175 | GPU | Graphics Processing Unit |
| 176 | HA | High Availability |
| 177 | HW | Hardware |
| 178 | LLS-C3 | Lower Layer Split Configuration 3 |
| 179 | NFV | Network Functions Virtualization |
| 180 | NFVI | Network Functions Virtualization Infrastructure |
| 181 | NIC | Network Interface Card |
| 182 | NSA | Non-standalone |
| 183 | NUMA | Non-uniform Memory Access |
| 184 | O-CU | O-RAN Centralized Unit |
| 185 | O-DU | O-RAN Distributed Unit |
| 186 | O-RU | O-RAN Radio Unit |
| 187 | OS | Operating System |
| 188 | PHC | PTP Hardware Clock |
| 189 | PIM | Physical Infrastructure Manager |
| 190 | PRACH | Physical Random Access Channel |
| 191 | PRTC | Primary Reference Time Clock |
| 192 | PSU | Power Supply Unit |
| 193 | PTP | Precision Time Protocol |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 194 | PTS | Partial Timing Support |
| 195 | RAID | Redundant Array of Inexpensive Disks |
| 196 | RIC | RAN Intelligent Controller |
| 197 | RT | Real-time |
| 198 | SA | Standalone |
| 199 | SMO | Service Management and Orchestration |
| 200 | SR-IOV | Single Root I/O Virtualization |
| 201 | SW | Software |
| 202 | T-BC | Telecom Boundary Clock |
| 203 | T-GM | Telecom Grand Master |
| 204 | T-TSC | Telecom Time Slave Clock |
| 205 | UEFI | Unified Extensible Firmware Interface |
| 206 | vBBU | Virtual Baseband Unit |
| 207 | VF | Virtual Function |
| 208 | VIM | Virtualized Infrastructure Manager |
| 209 | VM | Virtual Machine |
| 210 | VNF | Virtualized Network Function |
| 211 |  |  |

</div>

# 212 Chapter 2 Deployment Scenarios

1. This document focuses on cloud deployment scenarios B and C (including both variants C.1 and C.2), as defined in the
2. O-RAN Cloud Architecture document [1]. The current version of this document focuses on SA NR gNBs deployed on
3. the O-Cloud. The extensions of O-Cloud, if required, to support NSA scenarios indicated in the annexes of the O-RAN
4. Cloud Architecture document [1] are FFS.
5. O-Clouds are deployed at both regional and edge locations. At a given location, the edge O-Cloud can scale from a single
6. server to a clustered configuration with possibly hundreds of servers. This version of the document focuses on a container-
7. based cloud platform (see Ch.5.2 for a reference design example) and it will address VM-based designs in a future release.
8. For the time synchronization aspects, this version of the document focuses on the LLS-C3 configuration [2], i.e., O-DU
9. and O-RU are synchronized from the fronthaul network (see Ch.5.3 for a reference design example).
10. The terms, vO-CU and vO-DU, represent virtualized or containerized O-CU and O-DU, and are used interchangeably
11. with O-CU and O-DU in this document. The optional use of a Front-haul Gateway (FHGW) in the architecture allows
12. significant savings in providing transport between the O-RU and O-DU functionalities.

## ![]({{site.baseurl}}/assets/images/487561750865.png) Scenario B

1. Figure 2-1 illustrates scenario B, where the near-RT RIC is virtualized or containerized on a regional O-Cloud, and the
2. O-CU and O-DU functions are virtualized or containerized on an edge O-Cloud that typically resides at a different location.
3. The interface that the near-RT RIC uses between the regional O-Cloud and the edge O-Cloud is E2. Interfaces between
4. the O-CU and O-DU managed functions are either within the same single managed element, or among multiple managed
5. ![]({{site.baseurl}}/assets/images/1f2eb80d211f.png)elements within the same edge O-Cloud.

231

1. **Figure 2-1. Cloud deployment scenario B.**
2. This scenario is to support deployments in locations with limited remote front-haul capacity and a set of O-RUs spread
3. out in a limited area, supported by pooled vO-CU/vO-DU functionality while still meeting the O-DU latency requirements.
4. The optional use of a Front-haul Gateway (FHGW) in the architecture allows significant savings in providing transport
5. between the O-RU and vO-DU functionalities.
6. Figure 2-2 shows the O-Cloud high-level deployment diagram. One vO-CU and one vO-DU together form a virtual BBU
7. (vBBU), which connects to *N* O-RUs (typically up to 64, see [1]). This deployment should support tens of thousands of
8. ![]({{site.baseurl}}/assets/images/6cc8f5b4250a.png)O-RUs per near-RT RIC, and therefore *L* could easily exceed 100.

240

1. **Figure 2-2. Scenario B - O-Cloud high-level deployment diagram.**

## ![]({{site.baseurl}}/assets/images/187600180720.png) Scenario C

1. Figure 2-3 illustrates scenario C, where the near-RT RIC and the vO-CU functions are virtualized or containerized on a
2. regional O-Cloud, and the O-DU function is virtualized or containerized on an edge O-Cloud that typically resides at a
3. different location.
4. The interfaces that the near-RT RIC and O-CU use between the regional O-Cloud and the edge O-Cloud are E2 and,
5. respectively, F1 (i.e., F1-c and F1-u). Interfaces between the near-RT RIC and O-CU managed functions are either within
6. ![]({{site.baseurl}}/assets/images/983e916b1ad6.png)the same single managed element, or among multiple managed elements within the same regional O-Cloud.

249

1. **Figure 2-3. Cloud deployment scenario C.**
2. This scenario is to support deployments in locations with limited remote front-haul capacity and a set of O-RUs spread
3. out in a small area that restricts the number of O-RUs that can be pooled while still meeting the O-DU latency requirements.
4. The O-CU function is further pooled to increase the efficiency of the hardware platform which it shares with the near-RT
5. RIC function.
6. Figure 2-4 shows the O-Cloud high-level deployment diagram. The edge O-Cloud is expected to connect to *N* O-RUs
7. (typically up to 64, see [1]). This deployment should support tens of thousands of O-RUs per near-RT RIC, and therefore
8. ![]({{site.baseurl}}/assets/images/9a078e11fbe2.png)*M* could easily exceed 100.

258

1. **Figure 2-4. Scenario C - O-Cloud high-level deployment diagram.**

## ![]({{site.baseurl}}/assets/images/30326675c229.png) Scenario C.1

1. This is a variation of Scenario C, driven by the fact that different types of traffic (network slices) have different latency
2. requirements. In particular, URLLC has more demanding user-plane latency requirements, and Figure 2-5 below shows
3. how the vO-CU User Plane (vO-CU-UP) could be terminated in different places for different network slices. Below,
4. network slice 3 is terminated in the edge O-Cloud. This scenario is also suitable in case there is not enough space or power
5. supply to install all vO-CUs and vO-DUs in one edge O-Cloud.

266

267

![]({{site.baseurl}}/assets/images/91b85c6d8c26.png)**Figure 2-5. Treatment of Network Slice: MEC for URLLC at Edge Cloud, Centralized Control, Single vO-DUs**

1. In Scenario C.1, all O-CU control is placed in the regional O-Cloud, and there is a single vO-DU for all network slices.
2. Only the placement of the vO-CU-UP differs, depending on the network slice. The diagram of how network functions
3. map to network elements for scenario C.1 is shown in Figure 2-6 (please note that in Scenario C.1, the E1 interface
4. ![]({{site.baseurl}}/assets/images/4f2f321a79a8.png)between CU-CP and CU-UP is explicitly used, unlike in Scenario C or C.2).

272

1. **Figure 2-6. Cloud deployment scenario C.1.**
2. Table 2-1 is a summary of the cardinality and the distance/delay requirements assumed for this scenario. The URLLC
3. user plane requirements are what drive the placement of the vO-CU-UP function to be in the edge O-Cloud.
4. **Table 2-1. Cardinality and Delay Performance for Scenario C.1**

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
|  | **Attribute** | **RIC - O-CU** | **O-CU - O-DU** | **O-DU - O-RU/RU** |
|  | Example Cardinality | L= 1 | M=320 | N=100 |
| *Delay* Max  1-way (distance) | *mMTC* | NA | 625 us (125 km) | 100 us (20 km) |
| *eMBB* | NA | 625 us (125 km) | 100 us (20 km) |
| *URLLC (****user****/control)* | NA | **100 us (20 km)/**625 us (125 km) | 100 us (20 km) |

</div>

## ![]({{site.baseurl}}/assets/images/d981980e712b.png) Scenario C.2

1. This is a second variation of Scenario C, which utilizes the same method of placing some vO-CU user plane functionality
2. in the edge O-Cloud, and some in the regional O-Cloud. However, instead of having one vO-DU for all network slices,
3. there are different vO-DU instances in the edge O-Cloud.
4. It is driven by factors including the following two use cases:
5. ? One driver is RAN (O-RU) sharing among operators. In this use case, any operator can flexibly launch vO-CU
6. and vO-DU instances at edge or regional O-Cloud site. For example, as shown in Figure 2-7, Operator #1 wants
7. to launch the vO-CU1 instance in the regional O-Cloud, and the vO-DU1 instance at subtending edge O-Cloud
8. sites. On the other hand, Operator #2 wants to install both the vO-CU2 and vO-DU2 instances at the same
9. regional O-Cloud site. Note that both operators will share the O-RU.
10. ? Another driver is that, even within a single operator, that operator can customize scheduler functions depending
11. on the network slice types, and can place the vO-CU and vO-DU instances depending on the network slice types.
12. For example, an operator may launch both vO-CU and vO-DU at the edge O-Cloud site (see Operator #2 below)
13. ![]({{site.baseurl}}/assets/images/ead742f918d0.png)to provide a URLLC service.

291

1. **Figure 2-7. Treatment of Network Slice: MEC for URLLC at Edge Cloud, Separate vO-DUs**
2. The diagram of how network functions map to network elements for scenario C.2 is shown in Figure 2-8.

![]({{site.baseurl}}/assets/images/dcb55ef4dd28.png)

294

1. **Figure 2-8. Cloud deployment scenario C.2.**
2. The performance requirements are the same as those discussed earlier for Scenario C.1 in Section 2.2.1, with one
3. exception, namely, for the URLLC slice in Scenario C.2 the CU-CP and CU-UP delays are the same (i.e., they are
4. collocated on the edge cloud in this particular example).

# 299 Chapter 3 Operator Requirements

## ![]({{site.baseurl}}/assets/images/53626ca641f0.png) Typical Use Cases

1. Typical use cases include mobile wireless coverage for large metropolitan areas with operator requirements as shown in
2. Table 3-1 to Table 3-7.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Carrier Type | Component Carrier Bandwidth | Number of Layers (Downlink) | Number of Aggregated Carriers | Total Aggregated Bandwidth |
| LTE | 20 MHz | 4 layers | 5 carriers | 400 MHz |
| NR Sub-6 GHz | 20 MHz | 16 layers | 5 carriers | 1600 MHz |
| mmWave | 100 MHz | 2 layers | 8 carriers | 1600 MHz |

</div>

1. **Table 3-1. AT&T Carrier aggregation requirements.**

304

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Carrier Type | Component Carrier Bandwidth | Number of Layers | Number of Aggregated Carriers | Total Aggregated Bandwidth |
| LTE | 5-20 MHz | 2, 4 layers | 3-5 carriers | 80-400 MHz |
| NR Sub-6 GHz | 20-100 MHz | 4 - 16 layers | 1-3 carriers | Up to 2240 MHz |
| mmWave | FFS | FFS | FFS | FFS |

</div>

305 **Table 3-2. Deutsche Telekom carrier aggregation requirements.**

306

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Carrier Type | Component Carrier Bandwidth | Number of Layers | Number of Aggregated Carriers | Total Aggregated Bandwidth |
| LTE | 20 MHz | 4 layers | 4 carriers | 320 MHz |
| NR Sub-6 GHz | 100 MHz | 8 or 16 layers | 1 carrier | Up to 1600 MHz |
| mmWave | FFS | FFS | FFS | FFS |

</div>

307 **Table 3-3. Orange carrier aggregation requirements.**

308

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Carrier Type | Component Carrier Bandwidth | Number of Layers (Downlink) | Number of Aggregated Carriers | Total Aggregated Bandwidth |
| LTE | 5-20 MHz | 4 layers | 3-5 carriers | Up to 400 MHz |
| NR Sub-6 GHz | 100 MHz | 8 - 16 layers | 2 carriers | Up to 3200 MHz |
| mmWave | 100 MHz | 2 layers | 4 carriers | 800 MHz |

</div>

309 **Table 3-4. KDDI carrier aggregation requirements.**

310

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Carrier Type | Component Carrier Bandwidth | Number of Layers (Downlink) | Number of Aggregated Carriers | Total Aggregated Bandwidth |
| LTE | 10MHz, 20MHz | 2, 4 | 2, 3, 4 carriers | 30~80MHz |
| NR Sub-6 GHz | 30MHz, 60MHz,  100MHz | 2, 4 | 2 carriers | 130~200MHz |
| mmWave | FFS | FFS | FFS | FFS |

</div>

311 **Table 3-5. CMCC carrier aggregation requirements.**

312

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Carrier Type | Component Carrier Bandwidth | Number of Layers (Downlink) | Number of Aggregated Carriers | Total Aggregated Bandwidth |
| LTE | 5MHz, 10MHz,  15MHz, 20MHz | 2 | 2, 3 carriers | Up to 50MHz |
| NR Sub-6 GHz | 40MHz, 50MHz,  55MHz, 100MHz | 2, 4 | 2 , 3 carriers | Up to 300MHz |
| mmWave | FFS | FFS | FFS | FFS |

</div>

313 **Table 3-6. CTC carrier aggregation requirements.**

314

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Active UEs (95th percentile) supported per macro sub-6 GHz TRP | 256 (AT&T, others FFS) |
| Active UEs (95th percentile) supported per mmWave TRP | 64 (AT&T, others FFS) |
| Carrier capacity (MHz) per O-DU pool | Up to 56,000 MHz (AT&T, others FFS) |
| O-DU pooling model | Pooled centralization [1] |
| Minimum number of TRPs that an O-DU pool supports | 32 (AT&T and Orange, others FFS) |
| Fronthaul interface to O-DU | O-RAN 7.2x, with low phy in O-RU or FHGW |
| Physical interface to the cloud platform supporting O-DU (e.g., from FHGW) | At least 2x 25Gbps (or higher depending on site configuration) aggregated links to minimize switching latency (2x is for redundancy purposes). |

</div>

1. **Table 3-7. BBU pooling requirements.**

## ![]({{site.baseurl}}/assets/images/c62b82fd2099.png) Cloud Deployment Requirements

1. As Figure 2-1 shows, deployment of a cloud platform occurs in two locations: regional and edge clouds. The physical
2. environment of a regional cloud is typically a modern data center, hosting standard server racks with a 19-inch wide rack
3. enclosure, 42U height, and external depth between 1 and 1.2 meters. In this environment, the cloud platform hardware
4. can use standard rack-mount servers and switches, and does not impose special requirements on the hardware form factors.
5. The edge cloud often resides in a traditional telecommunications equipment room with limited space, cooling capacity,
6. floor loading, and so forth. The limitations can impose special requirements on the cloud platform hardware that may
7. require telecommunications standard certifications, such as the Network Equipment Building System (NEBS)
8. requirements found in GR-63-CORE [3] and GR-1089-CORE [4]. For example, the Open Telecom IT Infrastructure
9. (OTII) Project specifies a 2U rack server with depth less than 450 mm [5][3]. In addition, the Open Compute Project
10. (OCP) operates an openEDGE project [6], which specifies a compact cloud platform that has the extended environmental
11. requirements often needed in edge deployments.

## ![]({{site.baseurl}}/assets/images/f1f784fee84c.png) Regional Cloud

1. A regional cloud hosts the near-RT RIC, which includes Radio Connection Management, Mobility Management, QoS
2. Management, Interference Management, Radio-Network Information Base, and possibly 3rd-party applications. A typical
3. regional cloud has the following characteristics:
4. ? Standard Internet Data Center (IDC) environment;
5. ? At least one standard 19-inch rack with a top-of-rack (TOR) switch and five servers;
6. ? Highly available cloud platform software;
7. ? Highly available network topology;
8. ? Highly available storage system in the form of traditional storage area network (SAN), software-defined storage
9. (SDS), or combination of the two.
10. In Scenario C (and its variants C.1/C.2), a regional cloud will also host the O-CU functions.

## ![]({{site.baseurl}}/assets/images/c87eda651a24.png) Edge Cloud

1. The edge cloud is often deployed in a relatively rough physical environment with typical characteristics in Table 3-8.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Rack Form Factors | 19-inch width, 600mm depth |
| Temperature Range | Long-term: -5?C to 45?C (ETSI EN300 019-1-3 Class 3.2 [7]) Short-term: -5?C to 55?C (GR-63-CORE [3]) |
| Humidity | Operating humidity: 5% to 95%  Long-term: 5% to 85%  Short-term: 5% to 90% |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| EMC | EN300386 (v1.6.1) [8]  FCC CFR47 15 (class A) [9], CISPR 22/32 (class A) [10], CISPR 24 [11]  TEC/EMI/TEL-001/01/FEB-09 [12] and TEC/IR/SWN-2MB/07/MAR-10 [13]  GR-1089-CORE [4] |
| Equipment Center | Class A (Telecom center); Class B (Non-telecom center) |
| Seismic | GR-63-CORE (Zone 4) [3] |
| Safety | IEC 62368-1:2014 [14]  GR-63-CORE (Electrical safety, grounding and bonding) [3] |
| Acoustic Noise | GR-63-CORE (equipment room criteria) [3] |
| Fire Resistance | GR-63-CORE (shelf level criteria) [3] |
| Power Supply | 208V AC, 220V AC, or -48V DC (-60V DC in Germany) |

</div>

1. **Table 3-8. Edge cloud environmental characteristics.**

# 342 Chapter 4 O-Cloud Requirements

1. This chapter describes design requirements for the O-Cloud. While most requirements apply to both the regional and edge
2. O-Clouds, the edge O-Cloud may impose unique requirements, e.g., hardware accelerators, which will be noted
3. specifically. In addition, depending on the implementation choices for O-CU, O-DU, and near-RT RIC, the O-Cloud
4. needs to provide support for virtual machines or containers.

## ![]({{site.baseurl}}/assets/images/343106152a99.png)![]({{site.baseurl}}/assets/images/c110a3360f50.png) O-Cloud Architectural Components and Requirements

348

1. **Figure 4-1. Architecture component requirements for the cloud platform.**
2. Figure 4-1depicts the high-level architecture components for deploying VM/container-based O-RAN functions in the
3. regional and edge O-Clouds.
4. The Virtualized/Containerized O-RAN Functions include the O-DU, O-CU and other workloads deployed on the O-Cloud
5. via the O2 interface.
6. The VM/Container Management and Orchestration is typically implemented with OpenStack for VM deployments and
7. Kubernetes for container deployments.
8. The Cloud Platform Management represents the O-Cloud infrastructure management functions required for life cycle
9. management, high availability, fault management and configuration of the O-Cloud platform.
10. The Cloud Platform Runtime represents the additional cloud platform run-time capabilities required to host O-RAN
11. functions as compared to 5G core network functions.

## ![]({{site.baseurl}}/assets/images/0246236952a7.png) Hardware Requirements

1. Table 4-1 shows requirements for the cloud platform hardware.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Components | Description |
| Server | * Regional cloud: standard COTS server * Edge cloud: depth <= 450mm, height <= 2RU, width <= 19in * Minimum 16-core CPU at 2.2 GHz base frequency and 128 GB DDR4 * At least 2x 25GbE ports for front-haul interface (or higher, depending on site), 2x 10GbE ports for backhaul interface, and 1x 1GbE out-of-band management port * SR-IOV-capable NICs with network link aggregation enabled * For single-socket, at least 3 PCI-E slots for 3x HHHL or 1x FHFL + 2x HHHL cards; for dual-socket, at least 4 slots for 4x HHHL or 1x FHFL DW + 3x LP cards * All hard disk drives require hot-pluggable * Management interfaces support IPMI, SNMP, and Redfish (preferred) * UEFI secure boot enabled |
| Hardware Accelerator | * Required for O-DU in the edge cloud in forms such as FPGA, ASIC, and GPU * At least 2 ports at 10 or 25 Gbps eCPRI/RoE open front-haul interface * Acceleration for functions such as LDPC encoding and decoding, and end-to-end high PHY |
| Switch | * Standard COTS TOR switch |
| Storage | * Software-defined storage (e.g., Ceph) based on COTS servers |

</div>

1. **Table 4-1. Requirements for the cloud platform hardware.**

## ![]({{site.baseurl}}/assets/images/e6d98bbf070a.png) Operating System Requirements

1. Table 4-2 shows requirements for the cloud platform operating system.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Operating System | Description |
| Linux | * Linux kernel with real-time preemption patches for O-DU workloads (i.e., SMP PREEMPT RT). Real-time kernel patch for O-CU is optional. * Deterministic interrupt handling with a maximum latency of 20 us as measured by cyclictest for system interrupts (e.g., external I/O) and interrupt-based O-CU and O-DU implementations (e.g., those that rely on OS timers) * CRI-O and/or CRI plugin containerd support * QEMU/KVM (or other types of hypervisor) for virtual machines |

</div>

1. **Table 4-2. Requirements for the cloud platform operating system.**

## ![]({{site.baseurl}}/assets/images/a0f86d452bb0.png) Cloud Platform Runtime Requirements

1. Table 4-3 shows requirements for the cloud platform runtime.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Runtime Components | Description |
| Accelerator Driver | * Edge cloud: driver for loading, configuring, managing and interfacing with accelerator hardware providing offload functions for O-DU container or VM |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Crypto Driver | * Crypto offload driver for networking and O-CU wireless cipher (optional) |
| Network Driver | * Network driver(s) for front-haul, back-haul, mid-haul, inter container or VM communication, management and storage networks |
| Board Management | * Board management for interfacing with server hardware and sensors |
| PTP | * Precision time protocol for distributing phase, time and synchronization over a packet- based network |
| Software-defined Storage (SDS) | * Software implementation of block storage running on COTS servers, optional for edge cloud and required for regional cloud * If used in edge cloud, required to be hyperconverged; in regional cloud, either hyperconverged or deployed on dedicated storage nodes |
| Container Runtime | * Executes and manages container images on a node |
| Hypervisor | * Allows host to run multiple isolated VMs * Low performance overhead, compared with non-virtualized execution of specified benchmarks, e.g., SPECcpu, fio, L2Fwd, etc. (quantitative requirements FFS) |

</div>

1. **Table 4-3. Requirements for the cloud platform runtime.**

## ![]({{site.baseurl}}/assets/images/285995fff5c3.png) Generic Requirements for Cloud Platform Management

1. Table 4-4 shows the generic requirements for management of the cloud platform.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Components | Description |
| Configuration Management | * Auto-discovery of new servers added to an O-Cloud * Management of installation parameters such as console, root disks * Configuration of core, memory, huge-page assignments on each server node * Network interfaces and storage assignments * Hardware discovery of CPUs, cores, storage, network ports, hardware accelerators, etc. * Virtual-to-physical CPU core and NUMA node pinning * Virtual NUMA topology configuration * Huge-page memory * Interrupt and thread pinning to virtual and physical cores |
| Host Management | * Life-cycle and availability management of the server * Host failure detection and recovery * Fault monitoring and reporting * Cluster connectivity failure detection and recovery * VM/container failure detection and recovery * Critical process failure detection and recovery * Resource utilization thresholds (e.g., CPU, memory, storage limits) * Network interface states * Hardware sensors and faults * Watchdog * Board management interfaces and out-of-band server management * Hardware sensor monitoring |
| Service Management | * Monitoring of critical platform infrastructure services and processes * Automatic recovery of failed platform infrastructure services and processes |
| HA Management | * High-availability services for supporting cloud platform redundancy |
| Fault management | * Cloud platform infrastructure alarm and fault management. * Ability to set, clear, query, filter, suppress, log and collect alarms |
| Software Management | * Ability to deploy software updates * Support for rolling updates across all nodes of the local O-Cloud * Support for migrating VMs and/or containers within the local O-Cloud for software upgrade procedures |
| User Management | * User authentication and authorization * Isolation of control and resources among different users |
| Node Feature Management | * Detection and setting of node-level policies to align resource allocation choices (i.e. NUMA, SR-IOV, CPU, etc.) |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| HW Accelerator Management | * Support for managing hardware accelerators, mapping them to O-RAN applications VMs and/or containers, and updating accelerator firmware |

</div>

1. **Table 4-4. Cloud platform management requirements.**

## ![]({{site.baseurl}}/assets/images/7196a913890a.png) VM/Container Management and Orchestration Requirements

1. Table 4-5 shows requirements for VM/container management and orchestration as part of the cloud platform.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Components | Description |
| VM/Container Management | * VM management and scheduling with OpenStack Nova * Container management and scheduling with Kubernetes kube-apiserver, kube- scheduler, etcd, kube-controller-manager |
| VM/Container Orchestration | * VM orchestration with Heat templates * Container orchestration with HELM charts |
| VM/Container Storage | * VM storage and image services with OpenStack Glance and Cinder * Container persistent volume claims (PVCs) * VM/Container Ceph backends for persistent storage (optional) |
| VM/Container Networking | * VM networking with OpenStack Neutron * Container networking with kube-proxy and CNI |

</div>

1. **Table 4-5. Requirements for VM/container management and orchestration.**

## ![]({{site.baseurl}}/assets/images/b81eebd65d0a.png) Time Synchronization Requirements

1. The synchronization requirements addressed in this document cover only the synchronization aspects of the O-Cloud
2. nodes that are part of the edge cloud. O-Cloud nodes capable of supporting O-DU deployments shall comply with the
3. synchronization requirements associated with the O-DU instances when instantiated on the O-Cloud nodes, as in CUS
4. specification [2]. The requirements in the section address the LLS-C3 configuration where O-DU and O-RU are
5. synchronized from the fronthaul network. Additional configurations are for future study.
6. This section assumes that the O-DU is not on the synchronization path to the O-RU, which is the case with the LLS-C3
7. and LLS-C4 configurations. O-RAN Fronthaul Working Group Control, User and Synchronization Specification (CUS)
8. [2] specifies the time synchronization requirements for the LLS topology configurations.
9. O-DU synchronization requirements specified in the CUS [2] are more relaxed than the requirements associated with the
10. O-RU. O-DU is able to meet synchronization requirements while selecting PTP source from connected networks,
11. provided that the synchronization accuracy requirements for the network as specified in CUS [2] are met in such an
12. implementation. As an end application, O-DU may optionally use SyncE along with PTP, or local time source (typically
13. a GNSS receiver), but these options are not considered in this section. For more details on time synchronization
14. requirements, refer to CUS [2].

## ![]({{site.baseurl}}/assets/images/d66186b2ca1d.png) G.8275.1 Full Timing Support (FTS)

1. Figure 4-2 illustrates a synchronization architecture for an edge site aligned with the CAD [1] LLS-C3 Synchronization
2. Topology where Compute Nodes synchronize their clocks to a Grandmaster Clock via the Fronthaul Network.

![]({{site.baseurl}}/assets/images/bd569e814cfb.jpg)

393

1. **Figure 4-2. Key LLS-C3 Fronthaul Synchronization in an example implementation in O-Cloud.**
2. A distinction is made between the O-Cloud network and the fronthaul network. The O-Cloud network includes all
3. switches and routers in any network path between two O-Cloud nodes. The fronthaul network includes all switches and
4. other transport equipment in any network path between an O-DU capable O-Cloud node and an O-RU. These networks
5. may overlap, with some routers/switches (e.g., the leaf and spine switches in the O-Cloud resource pool) participating in
6. both the O-Cloud network and the fronthaul network. In the case of such overlap, irrespective of the management
7. responsibilities associated with fabric and transport network elements, all network elements in the timing transfer path
8. between the Grandmaster Clock(s) and Slave (subordinate) Clocks are considered to be part of the fronthaul
9. synchronization network from the associated synchronization functionality and profile compliance point of view.
10. An O-Cloud synchronized from the fronthaul network, based on full time support, shall follow the following requirements:
11. **O-Cloud node requirements:**

All O-DU capable O-Cloud nodes shall have at-least one NIC connected to the fronthaul network. Such nodes shall implement PTP Slaves (subordinate) to the fronthaul network that provides the PTP timing synchronization. The PTP Slave (subordinate) NICs shall support T-TSC functionality that is fully compliant with PTP profile ITU-T G.8275.1.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| 405 | (1) |
| 406 |  |
| 407 | (2) |
| 408 |  |
| 409 | (3) |
| 410 |  |
| 411 |  |
| 412 | (4) |
| 413 |  |
| 414 | (5) |
| 415 |  |
| 416 |  |
| 417 |  |
| 418 | (6) |
| 419 |  |
| 420 |  |
| 421 | (7) |
| 422 |  |
| 423 |  |
| 424 | (8) |
| 425 |  |
| 426 |  |
| 427 | (9) |
| 428 |  |

</div>

These Slave (subordinate) PTP NICs shall implement according to "1588-2008 - IEEE Standard for a Precision Clock Synchronization Protocol for Networked Measurement and Control Systems", section "6.6.5 Generation of PTP message timestamps" reference point A.

The O-Cloud shall track which nodes supports PTP capable NICs that are connected to the fronthaul network for the purpose of inventorying O-Cloud nodes that satisfy vO-DU synchronization requirements.

The O-Cloud shall provide the ability to configure an O-Cloud node's PTP physical port(s) that receives PTP traffic as a PTP Slave (subordinate). The following minimum configuration shall be supported:

* Network Transport - G.8275.1 synchronization over Ethernet (Layer 2);
* Time Stamping - support for hardware time stamping.

The O-Cloud operating environment (software stack) shall support PTP protocol implementation (1588-2008 - IEEE Standard). For example: in the case when an O-Cloud is based on the Linux OS, this will require support for ptp4l and phc2sys.

The node clock on each node shall be synchronized from the NIC T-TSC clock(s). For example: in the case when an O-Cloud is based on the Linux OS, this will require support for phc2sys - Synchronization of two clocks, PHC and node clock (a.k.a system clock) when using HW timestamping.

Administrative access to the PHCs from deployment instances shall not be allowed, as that would interfere with the PHC management from the cloud platform software. The O-Cloud may provide direct read-only access to the PHC counters from the deployment instances.

When the Slave (subordinate) PTP NIC is connected two at least two ports to the fronthaul network the PTP Slave (subordinate) NIC shall run the Alternative BMCA in order to select its best master clock.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| 429 |  |
| 430 | **O-Cloud network requirements:** |
| 431 | (1) All O-Cloud switches that are also part of the fronthaul network shall provide full timing support with the |
| 432 | G.8275.1 Telecom Profile. The synchronization performance requirements are specified in the CUS specification |
| 433 | [2] for the O-DU LLS-C3 configuration. Although the CUS allows the ITU-T G8275.2 Telecom Profile for partial |
| 434 | timing support, O-Cloud requirements and performance with G8275.2 is for future study. |
| 435 | (2) Time synchronization redundancy should be supported and is up to the operator's discretion. |
| 436 | (3) O-Cloud network switches that are also part of the fronthaul network shall support untagged L2 Ethernet transport |
| 437 | for S-Plane traffic. |
| 438 | (4) The fronthaul network elements between the GM and RUs shall require implementing SyncE based on O-RU |
| 439 | requirements. |

</div>

440

1. **Recommendations:**
2. All physical network elements that are in the synchronization transfer path (i.e. PRTC/T-GM, switches that act as T-BC,
3. and all O-Cloud node Slaves (subordinate) that act as T-TSC) should implement a 1PPS output interface of the associated
4. Network Elements local clock to facilitate connection to external performance test equipment for performance validation
5. purposes.
6. Note: If the O-RUs are synchronized from the same clock(s), which is expected to be a typical case, O-RU rather than O-
7. DU related synchronization requirements determine the performance classes of the PRTC/T-GM and T-BCs that are on
8. the synchronization distribution path towards the O-RUs.
9. Note: The Alternative Best Master Selection Algorithm (BMCA) running in Ordinary Clock or Boundary Clock performs
10. the GM selection. A-BMCA is used for improving the accuracy, to optimize the time distribution with multiple PRTC/T-
11. GMs and providing redundancy. By default, the BMCA runs at least once every Announce message interval. There are
12. two steps for the selection:
13. - Data Set Comparison Algorithm to select better source from Grandmaster. Data Sets are compared from the
14. Announce message from Multiple Sources.
15. - State Selection Update the state of each port based on the selection. This is to set the state of all the ports in the clock
16. to a new state, if needed, to sync with better source of a GM. 457

## ![]({{site.baseurl}}/assets/images/ee8ba692a3c3.png) G.8275.2 Partial Timing Support (PTS)

1. As specified in the CUS specification [2], DU synchronization requirements are more relaxed than the requirements
2. associated with the RU, and CUS specification [2] also allows separate PRTC sources to be used for the synchronization
3. of the RUs and DUs. The use of G.8275.2 Partial Timing Support is allowed for the synchronization of O-Cloud nodes
4. (and instantiated O-DU's), provided that the synchronization accuracy requirements for the O-DU as specified in CUS
5. specification [2] are met in such implementation. The detailed implementation of this configuration is subject for the
6. further study.

## ![]({{site.baseurl}}/assets/images/e617d6287d5b.png) Hardware Acceleration Requirements

1. The O-RAN Cloud Architecture document [1] discusses the hardware abstraction considerations for the O-Cloud. It lists
2. two levels of abstraction referring to the deployment model and APIs, and also discusses the management and
3. orchestration considerations that should be supported by such hardware accelerators deployed on the cloud platform. This
4. section describes the types of acceleration as background information and then specifies requirements applicable to the
5. O-Cloud for acceleration hardware abstraction.

## ![]({{site.baseurl}}/assets/images/f7e8c0fb024a.png) Background on Acceleration Types

1. Hardware acceleration for the managed functions, such as O-DU and O-CU, can be classified into two types:
2. ? Interface acceleration: acceleration of I/O data transfers on any interface between 3GPP or O-RAN network
3. functions [16];
4. ? Algorithm acceleration: acceleration of any algorithm processing within an O-RAN network function. 476

477 Interface acceleration mostly exhibits as acceleration of network traffic transmission and reception, for which SR-IOV

478 NICs, combined with software mechanisms such as DPDK, is commonly used.

479 Algorithm acceleration includes acceleration of compute-intensive algorithms in the O-DU and O-CU, utilizing

480 accelerator hardware such as FPGA, GPU, DSP, and ASIC.

### 481 ![]({{site.baseurl}}/assets/images/d4f936f3f4e2.png) Acceleration for the O-DU

482 Figure 4-3 illustrates acceleration of the interfaces between the O-DU and other O-RAN network functions and

![]({{site.baseurl}}/assets/images/6bb3cd1f3073.png)483 acceleration of the high-PHY algorithms within the O-DU. Table 4-6 shows in more detail the accelerated functions.

484

485 **Figure 4-3. O-DU interface and algorithm acceleration.**

486

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Accelerated Function | Interface Name | Acceleration Type |
| I/O between O-DU and O-CU-CP | F1-C | Interface acceleration (optional) |
| I/O between O-DU and O-CU-UP | F1-U | Interface acceleration |
| I/O between O-DU and SMO | O1 | Interface acceleration (optional) |
| I/O between O-DU and Near-RT RIC | E2 | Interface acceleration (optional) |
| I/O between O-DU and O-RU | FH7.2 | Interface acceleration |
| High-PHY algorithms | N/A | Algorithm acceleration |

</div>

487 **Table 4-6. O-DU acceleration types.**

### 488 ![]({{site.baseurl}}/assets/images/5fcc69724f2e.png) Acceleration for the O-CU-CP

489 Figure 4-4 illustrates acceleration of the interfaces between the O-CU-CP and other O-RAN network functions and

490 acceleration of the security algorithms within the O-CU-CP. Table 4-7 shows in more detail the accelerated functions.

![]({{site.baseurl}}/assets/images/6d7f93ae70ed.png)491

492 **Figure 4-4. O-CU-CP interface and algorithm acceleration.**

493

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Accelerated Function | Interface Name | Acceleration Type |
| I/O between O-CU-CP and O-DU | F1-C | Interface acceleration (optional) |
| I/O between O-CU-CP and SMO | O1 | Interface acceleration (optional) |
| I/O between O-CU-CP and Near-RT RIC | E2 | Interface acceleration (optional) |
| I/O between O-CU-CP and O-CU-UP | E1 | Interface acceleration (optional) |
| I/O between O-CU-CP and O-CU-CP | Xn | Interface acceleration (optional) |
| I/O between O-CU-CP and O-CU | X2 | Interface acceleration (optional) |
| I/O between O-CU-CP and MME | S1AP | Interface acceleration (optional) |
| I/O between O-CU-CP and AMF | NG-C | Interface acceleration (optional) |
| Security algorithms | N/A | Algorithm acceleration |

</div>

494 **Table 4-7. O-CU-CP acceleration types.**

### 495 ![]({{site.baseurl}}/assets/images/6efb32ab3365.png) Acceleration for the O-CU-UP

496 Figure 4-5 illustrates acceleration of the interfaces between the O-CU-UP and other O-RAN network functions and

497 acceleration of the security algorithms within the O-CU-UP. Table 4-8 shows in more detail the accelerated functions. 498

![]({{site.baseurl}}/assets/images/6f1db57722d6.png)499

500 **Figure 4-5. O-CU-UP interface and algorithm acceleration.**

501

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Accelerated Function | Interface Name | Acceleration Type |
| I/O between O-CU-UP and O-DU | F1-U | Interface acceleration |
| I/O between O-CU-UP and SMO | O1 | Interface acceleration (optional) |
| I/O between O-CU-UP and Near-RT RIC | E2 | Interface acceleration (optional) |
| I/O between O-CU-UP and O-CU-CP | E1 | Interface acceleration (optional) |
| I/O between O-CU-UP and SAE-GW | S1U | Interface acceleration |
| I/O between O-CU-UP and UPF | NG-U | Interface acceleration |
| Security algorithms | N/A | Algorithm acceleration |

</div>

1. **Table 4-8. O-CU-UP acceleration types.**

## ![]({{site.baseurl}}/assets/images/31c91837c476.png) Hardware Acceleration Abstraction Layer Requirements

1. The Acceleration Abstraction Layer (AAL) provides a set of APIs to VNF/CNF software for offloading certain functions
2. that, for instance, are compute- and power-intensive, to hardware accelerators supported on the O-Cloud platform. The
3. objective of the AAL is to hide the different implementations of hardware accelerators and present APIs to VNF/CNF
4. applications to enable portability and software-and-hardware decoupling. Full listing of the functions that can be offloaded
5. through the AAL is outside the scope of this document.

### ![]({{site.baseurl}}/assets/images/75c0e29bbe6a.png) Generic Requirements

#### Extensibility

1. O-RAN has defined the functions that can be accelerated by the cloud platform based on 3GPP specifications and O-RAN
2. deployment scenarios. However, the AAL API should not limit innovation of future implementations and should evolve
3. as the specification requires. In this way, the API shall be extensible to accommodate future revisions of the specification.

#### Interrupt and Poll Mode

1. The API shall allow multiple design choices for application vendors and shall not preclude a vendor from adopting an
2. interrupt-driven design or poll-mode design or any combination of both. As such, the API shall support both interrupt
3. mode and poll mode for the data-path application interface.

#### Discovery and Configuration

1. The API shall support application software to discover and configure the accelerator hardware. The API shall allow an
2. application to discover what physical resources have been assigned to it from the upper layers and then to configure said
3. resources for offload operations.

522

523

524

525

526

527

#### Multiple Device Support

There may be scenarios where multiple hardware accelerators (either implementing the same acceleration function or different) are assigned to a single application, which uses one or more of these accelerators as needed. The API shall support an application using one or more accelerator devices at the same time, as Figure 4-6 illustrates.

![]({{site.baseurl}}/assets/images/f9d1ace39e73.png)

**Figure 4-6. AAL support for multiple devices.**

### 528 ![]({{site.baseurl}}/assets/images/a2a5ea80ae26.png) API offload requirements

529 The API in supporting different implementations shall support different offload architectures including look-aside, inline,

530 and any combination of both.

531

532

533

534

535

536

537

538

#### Look-aside Acceleration Model

The API shall support look-aside acceleration model where the host CPU invokes an accelerator for data processing and receives the result after processing is complete. A look-aside architecture, illustrated in Figure 4-7, allows the application to offload work to a hardware accelerator and continue to perform other work in parallel--this could be to continue to execute other software tasks in parallel or to sleep and wait for the accelerator hardware to complete. This model requires the API to support two operations, one for initiating the offload and another for retrieving the operation once complete.

![]({{site.baseurl}}/assets/images/7aea66809f78.png)

**Figure 4-7. AAL look-aside acceleration model.**

539

540

541

542

543

544

545

546

547

548

549

550

551

552

553

554

555

556

557

558

559

#### Inline Acceleration Model

The API shall support inline acceleration model where acceleration by function and I/O-based acceleration are performed on the physical interface as the packet ingresses/egresses the platform. Figure 4-8 shows one possible implementation of an inline acceleration model.

![]({{site.baseurl}}/assets/images/71c17ca3d3d0.png)

**Figure 4-8. AAL inline acceleration model.**

In Figure 4-8, a "Func" block refers to some algorithmic function that is accelerated in the device before the data egresses or ingresses from the acceleration device. "Tx" refers to the transmission of the data from the acceleration device to an Ethernet interface, while 'Rx' refers to the reception of data from the Ethernet interface to the acceleration device.

While the look-aside architecture shall support dataflow from the CPU to the accelerator and back to the CPU before being sent to the front-haul interface, the inline architecture shall support data flow from the CPU to the accelerator and directly from the accelerator to the front-haul interface, instead of being sent back to the CPU. The typical data flows for accelerating the O-DU high-PHY functions for the look-aside and inline architectures are as follows.

Look-aside architecture dataflow

CPU <-> accelerator <-> CPU <-> front-haul: for a set of consecutive PHY functions offload (e.g., FEC)

CPU <-> accelerator <-> CPU <-> accelerator <->...<-> CPU <-> front-haul: for a set of non-consecutive PHY functions offload Inline architecture dataflow

CPU <-> accelerator <-> front-haul: for a set of consecutive PHY functions offload (up to the end of the PHY pipeline)

Figure 4-9 illustrates one possible implementation of the look-aside and inline architectures. While a set of PHY-layer functions are offloaded to the accelerator hardware for look-aside acceleration, the entire end-to-end high PHY pipeline is offloaded to the accelerator for inline acceleration.

Look-aside

![]({{site.baseurl}}/assets/images/9e374b6ab0ed.png)

High PHY on CPU

L1/L2

interface\*

...

RRU

\*e.g. FAPI

L1/L2

interface\*

High PHY on accelerator

Func.

1

...

RRU

Func. n

Func.

n-1

Func.

3

Func. 2

Accelerator interface on CPU

CPU

L2+ on

Func. (n-1) on

accelerator

Func. 2 on

accelerator

AAL

Func.

n

Func.

4

Func.

3

Func.

1

L2+ on

CPU

Fronthaul

interface

model

O-DU

L P

2 H H

F

+ Y

Inline

model

Fronthaul interface

560

561

![]({{site.baseurl}}/assets/images/7c1f34b28b08.png) I/O data flow ![]({{site.baseurl}}/assets/images/f3c2b0fd8f42.png) PHY downlink

![]({{site.baseurl}}/assets/images/f77492690e49.png) PHY uplink

**Figure 4-9. Dataflow paths in look-aside and inline acceleration architectures.**

#### 562 API Concurrency and Parallelism

563 To enable greater flexibility and design choice by application vendors, the API shall support multi-threading environment

564 allowing an application to offload acceleration requests in parallel from several threads.

# 565 Chapter 5 (Informative) Cloud Platform Design Example

1. This chapter includes some possible platform configurations for the regional and edge clouds for both the cloud platform
2. hardware and software. These platform configurations are informative examples only, not normative, and focus on sub-
3. 6GHz scenarios. Support for mmWave and quantification of capacities of these example designs (such as the number of
4. cells, data rates, and so forth) have not been systemized or validated and will be further studied in the next release of this
5. document.

## ![]({{site.baseurl}}/assets/images/7e30a353843e.png) Cloud Platform Hardware Design Example

1. This section specifies the cloud platform hardware with a focus on server and accelerator hardware. These informative
2. designs are some examples only. This document focuses on x86 processor-based cloud server design; it will address ARM
3. processor-based designs in a future release.

## ![]({{site.baseurl}}/assets/images/0d9e813b7931.png) Regional Cloud Server Example

1. Table 5-1 shows an example design for the regional cloud servers.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Processor | 2x 20-core CPUs at 2.4 GHz, e.g., 2nd-generation Intel Xeon Scalable Processor |
| Memory | 12x 32 GB, 2400 MHz TruDDR4 |
| Expansion Slots | 6x PCIe 3.0 |
| Drive Bays | 14x 3.5" or 24x 2.5" hot-swap bays or 24x NVMe bays |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| RAID support | RAID 1, 12 Gb/s |
| Network Interface | 4x 10GbE/25GbE ports, 1 dedicated 1GbE management port, e.g., 1x Fortville 40GbE Ethernet PCIe XL710-QDA2 Dual Port QSFP+ (PCI-E card direct to CPU 0) |
| Network link aggregation | Enabled |
| Power | 2x hot swap/redundant; support 220V/380V AC, 480V and -48V DC |
| Security | TPM or TCM |
| Availability | Hot-swap fans/PSUs; 45? continuous operation; light path diagnostic LEDs; front-access diagnostics via dedicated USB port |
| Manageability | Support for IPMI, SNMP, and Redfish |

</div>

1. **Table 5-1. Regional cloud server example design.**

## ![]({{site.baseurl}}/assets/images/5b2cda8622e3.png) Edge Cloud Server Example

1. Table 5-2 shows an example design for the edge cloud servers with FPGA based acceleration.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Form factors | Depth <= 450mm, height <= 2RU, width <= 19in |
| Processor | 2nd-generation Intel Xeon Gold (e.g., 6210U) or Xeon D-2187NT (16-core) or Xeon D-2177NT (14-core); hyperthreading enabled for O-CU, disabled for O-DU  Note: the NT models have Intel QAT integrated with the CPU and can perform PDCP crypto acceleration in the vO-CU (when applicable, i.e., for Scenario B and C.1/C2). |
| Memory | 12x 32 GB, 2400 MHz TruDDR4 |
| Expansion Slots | At least 2x half-height half-length (HHHL) or 1x HHHL and 1x FHFL |
| Drive Bays | 6x hot-swappable 2.5-inch SATA or SAS drives; 2x NVMe drives; all drives accessible from front panel |
| RAID support | RAID1 |
| Network Interface | 4x 10GbE/25GbE ports, 1 dedicated 1GbE management port, 1x Fortville 40GbE Ethernet PCIe XL710-QDA2 Dual Port QSFP+ (PCI-E card direct to CPU 0), network cabling at front panel |
| PSU | * 1+1 redundant * Hot-swappable * Support for 220V AC or -48V DC * PSUs are connected through the rear panel (AT&T, China Mobile) or front panel (China Telecom, DT, KDDI, Orange) |
| Temperature | -5 ?C ~ 55 ?C (-10 ?C to 60 ?C preferred) |
| Security | TPM or TCM |
| Availability | Hot-swap fans/PSUs; 45? continuous operation; light path diagnostic LEDs; front-access diagnostics via dedicated USB port |
| Manageability | Support for IPMI, SNMP, and Redfish |
| Acceleration  (look-aside, FEC profile) | Intel(R) Programable Acceleration Card N3000, PCIe x16 Gen3, FHHL, I/O 2x25Gbe per QSFP28, FEC Profile 15Gbps Uplink, 5Gbps Downlink, Up to 8 VFs. |

</div>

1. **Table 5-2. Edge cloud server example design with FPGA acceleration.**
2. Table 5-3 shows an example design for the edge cloud servers with GPU based acceleration.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Form factors | Depth <= 450mm, height <= 2RU, width <= 19in |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Processor | 12C x86 CPU complex or better (e.g. Xeon) |
| Memory | 64 GB, 2400 MHz; or higher |
| Expansion Slots | At least 1x HHHL and 1x FHFL Dual Slot |
| Drive Bays | 6x hot-swappable 2.5-inch SATA or SAS drives; 2x NVMe drives; all drives accessible from front panel |
| RAID support | RAID1 |
| Network Interface | 2x 100/50/25/10 GbE ports, 1 dedicated 1GbE management port, 1x Mellanox ConnectX(R)-6 Dx (with crypto offload support, eCPRI offload with 5T for 5G technology)  Efficient peer-to-peer support, either through root complex, or external PCIe switch (such as ExpressLane(TM) PEX 8747) recommended for high bandwidth use cases (like multi-carrier 100MHz massive MIMO systems) |
| PSU | * 1+1 redundant * Hot-swappable * Support for 220V AC or -48V DC * PSUs are connected through the rear panel (AT&T, China Mobile) or front panel (China Telecom, DT, KDDI, Orange) |
| Temperature | -5 ?C ~ 55 ?C (-10 ?C to 60 ?C preferred) |
| Security | TPM |
| Availability | Hot-swap fans/PSUs; 45? continuous operation; light path diagnostic LEDs; front-access diagnostics via dedicated USB port |
| Manageability | Support for IPMI, SNMP, and Redfish |
| Acceleration  (inline, end-to- end HIGH PHY profile) | NVIDIA(R) T4, PCIe x16/x8 Gen3, HHHL (for smaller capacity, low band deployments).  NVIDIA(R) Tesla(R) V100, PCIe x16 Gen3, FHFL (for higher capacity, to enable support for multi- sector massive MIMO (100 MHz and above) with advanced beam-forming techniques). |

</div>

1. **Table 5-3. Edge cloud server example design with GPU acceleration.**

## ![]({{site.baseurl}}/assets/images/c2d627c1e40e.png) BIOS/UEFI Configurations

1. Table 5-4 shows recommended settings for the various edge cloud deployment types.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **BIOS Setting** | **Description** | **Regional Cloud Settings for Maximum Performance** (with Turbo  mode enabled) | **Regional & Edge Cloud with Real Time** | **Edge Cloud with Strict Real Time Configuration for O-DU** |
| System Power and Performance Policy | Favor high performance over low power consumption for the entire system (e.g., CPU and memory). | Optional | Enabled | Enabled |
| Intel Hyper- Threading Technology (HT) | Enabling HT doubles the number of (logical) CPU cores. But threads on the same physical core share various core data structures and caches, causing performance interference. It is recommended to enable HT to ensure high  system throughput, but for applications such as O-DU in the edge cloud, carefully pin | Enabled | Optional | Optional |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
|  | latency-sensitive threads to dedicated cores to ensure real-time performance. |  |  |  |
| Prefetching | Memory cache prefetching technologies allow prefetching data and instructions into the cache before they are used. In general, prefetching reduces cache misses and increases application performance. | Enabled | Enabled | Enabled |
| Intel virtualization support (VT-x) | CPU hardware support for virtualization. | Enabled | Enabled | Enabled |
| Intel VT for direct I/O (VT-d) | Support for PCI-E passthrough and SRIOV. | Enabled | Enabled | Enabled |
| Intel Turbo Boost Technology | Enabling this feature allows individual CPU cores to run at frequencies higher than the base frequency when the processor has sufficient thermal headroom. Frequent transition between normal and turbo modes, however, can cause non-predictive performance and impact system real-time characteristics. | Enabled | Disabled | Enabled |
| Enhanced Intel SpeedStep Technology | Enhanced SpeedStep is a series of dynamic frequency scaling technologies built into modern Intel microprocessors that allow the clock speed of the processor to be dynamically changed (to different P-states) by software. This allows the processor to meet instantaneous performance needs of the operation being performed, while minimizing power draw and heat generation. In general, disabling this feature avoids CPU frequency changing dynamically and thus facilitates deterministic performance. Enabling this but setting the configurable TDP level in the next setting allows finer control on the frequency that the CPU will run at. | Enabled | Disabled | Enabled |
| Intel Configurable TDP | Nominal | Nominal | Level 2 |
| Energy-efficient Turbo | Transitions in and out of turbo mode incur extra power and overly frequent transitions are energy inefficient. This feature enables more energy-efficient turbo operation. | Disabled | Disabled | Disabled |
| Hardware P- States | Disabling hardware-controlled P-states avoids unpredicted frequency change and helps achieve deterministic performance. | Disabled | C0/C1 state | C0/C1 state |
| Hardware PM Interrupt | Disabled | Disabled | Disabled |
| EPP Enable | Disabled | Disabled | Disabled |
| APS Rocketing | Disabled | Disabled | Disabled |
| Scalability | Disabled | Disabled | Disabled |
| PP0-Budget | Disabled | Disabled | Disabled |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| CPU C State Control & C1E & Processor C6 | Disabling C-state transitions prevents CPU cores from entering sleep states when there is no task to execute. C-states that are often seen in BIOS settings include C1E, C3, and C6 states. As C-state transitions introduce delay, disabling them helps real-time performance, though at the cost of higher power consumption. | Enabled | Disabled | Disabled |
| Direct Cache Access (DCA) & Data Direct I/O (DDIO) | DCA can only reduce packet reception delay. Another technology, DDIO, reduces delay for both transmission and reception. It is recommended to enable DDIO instead of DCA when both settings are present. | Enabled | Enabled | Enabled |
| Uncore Frequency Scaling | Allow the voltage and frequency of the uncore to be programmed independently. Uncore activities are monitored to optimize the frequency in real time. | Enabled | Disabled | Enabled |
| Memory RAS and Performance Configuration & NUMA  Optimized | Enable ACPI tables that are required for NUMA-aware operating systems. | Optional | Optional | Optional |

</div>

1. **Table 5-4. BIOS configurations for strong real-time systems.**

## ![]({{site.baseurl}}/assets/images/ac3fb83fb8f7.png) Firmware Versions

1. Table 5-5 shows firmware versions for the example reference design based on the Intel Server Board S2600WF family.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| BIOS/IFWI | SE5C620.86B.00.01.0013.030920180427 |
| Baseboard Management Controller (BMC) | 1.43.91f76955 |
| Download link | https://downloadcenter.intel.com/download/27632/Intel- Server-Board-S2600WF-Family-BIOS-and-Firmware- Update-Package-for-UEFI-?product=89005 |

</div>

1. **Table 5-5. Firmware for example reference design based on Intel server board S2600WF.**

## ![]({{site.baseurl}}/assets/images/c65bed429213.png) Accelerator Hardware

1. For deployment scenario B (see [1] and Section 2.1), the O-DU and the O-CU functions are deployed as VNF(s) or CNF(s)
2. on the edge cloud platform and the Near-RT RIC is deployed as a VNF or CNF on the regional cloud platform. Likewise,
3. for deployment scenario C and its variants C.1/C.2 (see [1] and Section 2.2), the O-CU functions are also deployed as
4. VNF(s) or CNF(s) on the regional cloud platform. This section details the hardware acceleration options for these
5. VNFs/CNFs that the cloud platforms shall provide.

### ![]({{site.baseurl}}/assets/images/bdf9ddcd6f48.png) Regional Cloud Platform

1. In deployment scenario B, the regional cloud platform provides support for the Near-RT RIC. There is currently no
2. hardware acceleration options required for the Near-RT RIC at this stage of definition but this may evolve in future.
3. However, in deployment scenario C, the regional cloud platform also provides support for the O-CU in addition to the
4. Near-RT RIC. The O-CU, depending on performance requirements, may choose to use hardware acceleration (e.g., Intel
5. QAT) for wireless cipher processing, namely 128-EEA3, 128-EIA3, UEA2 and UIA2--depending on configurations.

### ![]({{site.baseurl}}/assets/images/5b929e739a40.png) Edge Cloud Platform

1. The O-CU and O-DU may follow the software architecture as defined in the O-RAN WG8 specification [17].

#### O-CU Acceleration

1. When the O-CU functions are deployed on the edge cloud platform (i.e., scenarios B and C.1/C2), the O-CU, depending
2. on performance requirements, may choose to use hardware acceleration (e.g., Intel QAT) for wireless cipher processing,
3. namely 128-EEA3, 128-EIA3, UEA2 and UIA2--depending on configurations.

#### O-DU Acceleration

1. The O-DU is assumed to use the 7.2 split with the front-end processing (FFT, PRACH) implemented in the O-RU. The
2. remaining O-DU functions are implemented as software running on the edge cloud platform. Depending on the
3. performance requirements, the compute-intense workloads may be accelerated in hardware using look-aside acceleration
4. or inline acceleration or any combination of both.
5. Figure 5-1 shows a high-level architecture of look-aside acceleration with proposed Forward Error Correcting (FEC)
6. functions to be hardware-accelerated for the O-DU.

![]({{site.baseurl}}/assets/images/5271e43c5d76.png)

1. **Figure 5-1. Hardware-accelerated FEC functions with look-aside model.**
2. Figure 5-2 shows an example of an inline solution for the O-DU that accelerates the front-end compression and
3. ![]({{site.baseurl}}/assets/images/7ae42acd11d0.png)decompression (e.g., Mu-Law and BFP) functions in accelerator hardware before sending to the O-RU. 617

618

619 **Figure 5-2. Hardware-accelerated front-end functions with inline model.**

620 Figure 5-3 shows a high-level architecture of inline acceleration with end-to-end high PHY functions to be hardware-

621 accelerated.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- |
| CRC  Generation +  segmentation | LDPC  Encoder | Rate Matching | Scrambler | Mod. Mapper | Layer Mapper | Precoder | RE  Mapper |

</div>

Downlink PDSCH pipeline

RRU

RRU

![]({{site.baseurl}}/assets/images/2822298e248d.png)

M A C

R L C

L1/L2

interface

M A C

R L C

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- |
| CRC  check | LDPC  Decoder | De-Rate Matching | De- Scrambler | Demod. | MIMO  Equalizer | Channel Estimator | RE  Demapper |

</div>

Uplink PUSCH pipeline

622

GPU

CPU

1. **Figure 5-3. Hardware-accelerated end-to-end high-PHY functions with inline model.**

### ![]({{site.baseurl}}/assets/images/dda7029d0825.png) High-level Platform Architecture Examples

1. Based on the hardware acceleration options above, Figure 5-4 to Figure 5-6 illustrate the system-level platform
2. components required for the cloud platform to support various acceleration architectures for the O-DU and the O-CU,
3. and depicting also both scenarios B and C.
4. A cloud platform can also support a combination of accelerator functions, such as inline front-end acceleration and FEC
5. look-aside acceleration. Note that hardware acceleration for O-RAN network functions is desired but a software-only
6. implementation is also possible.

#### Example 1: O-DU and O-CU look-aside acceleration

1. Figure 5-4 shows an example cloud platform and its data flows with look-aside acceleration for both the O-DU (FEC)
2. and O-CU (wireless cipher).

![]({{site.baseurl}}/assets/images/10fd915a6f3e.png)

**Figure 5-4. Cloud platform for look-aside acceleration of O-DU and O-CU.**

#### Example 2: O-DU inline and O-CU look-aside acceleration

Figure 5-5 shows an example cloud platform with mixed acceleration models, where the O-DU uses the inline model for front-haul processing and the O-CU adopts look-aside acceleration for wireless ciphering.

![]({{site.baseurl}}/assets/images/280de722ba81.png)

**Figure 5-5. Cloud platform for O-DU inline acceleration and O-CU look-aside acceleration.**

#### Example 3: O-DU end-to-end high-PHY inline acceleration and O-CU look-aside acceleration.

1. Figure 5-6 shows an example cloud platform, where the O-DU uses the inline model for the entire high-PHY processing
2. ![]({{site.baseurl}}/assets/images/85ec4a67f014.png)and the O-CU adopts look-aside acceleration for wireless ciphering.

637

1. **Figure 5-6. Cloud platform for O-DU inline acceleration of end-to-end high-PHY.**

## ![]({{site.baseurl}}/assets/images/96226de132b7.png) Cloud Platform Software Reference Design

1. This section shows an example reference design for the regional and edge cloud platform software. A single installable
2. package supporting various profiles of the platform software runs in both the regional and edge clouds, and can adjust to
3. the different physical environments and scale requirements. As mentioned in Chapter 2, this document focuses on a
4. container-based cloud platform design and will address VM-based designs in a future release.
5. Kubernetes is a common implementation for container orchestration and management. Platform infrastructure
6. management and additional components, such as Kubernetes plugins, must be added for hosting accelerated O-DU and
7. O-CU network functions.
8. The regional and edge cloud platform requirements also differ based on the network functions they host. Generally, the
9. edge cloud platform requirements are a superset of the functional requirements of the regional cloud platform. The primary
10. differences relate to hardware acceleration features, real-time Linux, precision time protocol and server node scalability
11. down to a single node for cell-site deployments.
12. This reference design focuses on deployment scenario B and C (with its variants C.1/C.2), LLS-C3 clock synchronization,
13. and FPGA and GPU hardware acceleration at the edge cloud. It defines two reference configuration profiles, for the
14. regional cloud and edge cloud.

## ![]({{site.baseurl}}/assets/images/186d92a61183.png) Common Reference Configurations for all Profiles

1. Table 5-6 lists the primary platform software components that are common across the two cloud platform reference
2. configuration profiles. A complete list of packages, version information and build recipes to create a cloud platform
3. meeting the requirements of Section 4.1.3 for container deployment are available in O-RAN SC INF project release B
4. (Bronze release). See [18] for further details.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Platform Components** | **Description** |
| Ansible | Orchestration engine for automating configuration management and application deployment.  [ansible.com](http://www.ansible.com/) |
| Ceph | Provides object storage, block storage and POSIX-compliant network file system. See ceph.io. |
| Collectd | Collects system and application performance metrics and provides mechanisms to store values.  [collectd.org](http://collectd.org/) |
| Dhcp | Assigns IP address and other network information to hosts. |
| Dnsmasq | Provides Domain Name System forwarder.  [en.wikipedia.org/wiki/Dnsmasq](https://en.wikipedia.org/wiki/Dnsmasq) |
| docker-distribution | Docker registry for storing and distributing images.  [github.com/docker/distribution](https://github.com/docker/distribution) |
| Drbd | Replicated storage. |
| Etcd | Distributed key-value store.  [etcd.io](http://etcd.io/) |
| Helm | Kubernetes package manager.  [helm.sh](http://helm.sh/) |
| helm-charts | Tool for managing charts. Charts are packages of pre-configured Kubernetes resources.  [github.com/helm/charts](http://github.com/helm/charts) |
| ima | Detects if files have been accidentally or maliciously altered, both remotely and locally.  [linux-ima.sourceforge.net](http://linux-ima.sourceforge.net/) |
| iptables | Configures the tables from the Linux kernel firewall and the chains and rules it sores.  [en.wikipedia.org/wiki/Iptables](https://en.wikipedia.org/wiki/Iptables) |
| Kubernetes | Automates deployment, scaling and management of containerized applications.  [kubernetes.io](http://kubernetes.io/) |
| mariadb | Relational databases.  [mariadb.org](http://mariadb.org/) |
| nginx | High-performance HTTP server, reverse proxy and load balancer. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| pxe-network- installer | Provides PXE (preboot execution environment) install server. |
| rabbit-mq | Highly-available and scalable message broker.  [rabbitmq.com](http://mariadb.org/) |
| redfishtool | Industry standard protocol providing a RESTful interface for the management of servers. |
| tpm2 | Provides trusted platform module support. |
| **Kubernetes Components** | **Description** |
| etcd | Distributed key-value store used as Kubernetes backing store for cluster data.  [etcd.io](http://etcd.io/) |
| coredns | Kubernetes cluster DNS service. |
| armada | Manages helm chart dependences. |
| calico | Enables networking and network policy in Kubernetes clusters. Calico uses a pure IP networking fabric to provide high-performance networking. |
| nginx-ingress- controller | Enables Kubernetes to configure nginx for load balancing Kubernetes based services |
| tiller | Service that communicates with the Kubernetes API to manage helm packages. |

</div>

1. **Table 5-6. Common cloud platform reference configurations for all profiles.**

## ![]({{site.baseurl}}/assets/images/a404f8cc9f45.png) Regional Cloud Reference Configuration Profile

1. The regional edge cloud profile is a cluster-based implementation with two redundant cloud platform controller nodes
2. and worker node scalability from one to 200 nodes. In addition to providing a cloud platform for the Near-RT RIC and,
3. additionally for the O-CU in Scenario C, the regional cloud platform provides zero-touch deployment and provisioning
4. and management of the edge clouds.
5. The SMO interfaces to the regional cloud platform for deployment of new edge clouds as well as updating and upgrading
6. of the edge cloud platform software. The regional controller functionality is provided by the distributed cloud component.
7. The regional cloud platform requires the common components in Table 5-6, as well as the components in Table 5-7.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Components** | **Description** |
| distributed-cloud | Provides centralized controller functions for management (e.g., lifecycle) of edge clouds. |

</div>

1. **Table 5-7. Regional cloud reference configuration profile.**

## ![]({{site.baseurl}}/assets/images/a64b8364113e.png) Edge Cloud Reference Configuration Profile

1. Based on the hardware acceleration choice, the Linux kernel can be "standard" for inline GPU-based acceleration or "real-
2. time" for look-aside FPGA-based acceleration. See Section 5.2.4 for the real-time Linux kernel configuration details. In
3. addition, the edge cloud platform requires the common components in Table 5-6, as well as the components in Table 5-8.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Platform Components** | **Description** |
| distributed-cloud- client | Provides edge cloud client services for distributed cloud function. |
| e1000e-kmod | E1000e driver for Intel(R) Gigabit NIC (optional - leveraged only if specific Intel hardware support is required). |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| gdrcopy | Provides GPU memory copy library (optional - leveraged only if specific Nvidia hardware support is required). |
| i40e-kmod | I40e driver for Intel(R) 40G NIC (optional - leveraged only if specific Intel hardware support is required). |
| iavf-kmod | Driver for Intel(R) Ethernet adaptive virtual function (optional - leveraged only if specific Intel hardware support is required). |
| integrity-kmod | Kernel module for IMA |
| ixgbe-kmod | Ixgbe driver for Intel(R) 82598 and 82599 based 10G NIC (optional - leveraged only if specific Intel hardware support is required). |
| ixgbevf-kmod | Driver for Intel(R) Ethernet adaptive virtual function for 10 Gig NIC (optional - leveraged only if specific Intel hardware support is required). |
| libibverbs-31mlnx1- ofed | Allows user-space processes to use RDMA verbs directly (optional - leveraged only if specific Mellanox hardware support is required). |
| mlnx-ofa-kernel | Driver for Mellanox NICs (optional - leveraged only if specific Mellanox hardware support is required). |
| opae-intel-fpga- driver-kmod | Open Programmable Acceleration Engine (OPAE) Kernel module for Intel FPGA. |
| qat17 | Driver for Intel(R) QuickAssist Technology (optional - leveraged only if specific Intel hardware support is required). |
| rdma-core-45mlnx1 | Driver for Mellanox RDMA-based interconnect (optional - leveraged only if specific Mellanox hardware support is required) |
| Linuxptp | Provides Precision Time Protocol according to IEEE standard 1588 and telecom profiles G.8265.1, G.8275.1 and G.8275.2  [linuxptp.sourceforge.net](http://linuxptp.sourceforge.net/) |
| **Kubernetes Plugin/Operators** | **Description** |
| Multus | Multus is a Multi CNI plugin to support the Multi Networking feature in Kubernetes using CRD-based network objects in Kubernetes. The Multus plugin should be used on the master on all nodes to enable the use of multiple network interfaces inside a K8 pod.  [github.com/intel/multus-cni.](https://github.com/intel/multus-cni) |
| FPGA | FPGA Device plugin for FPGA passthrough (optional - leveraged only if specific Intel hardware support is required).  [github.com/intel/intel-device-plugins-for-kubernetes#fpga-device-plugin](https://github.com/intel/intel-device-plugins-for-kubernetes#fpga-device-plugin) |
| QAT | QAT Device plugin for Intel(R) QAT adapters (optional - leveraged only if specific Intel hardware support is required).  [github.com/intel/intel-device-plugins-for-kubernetes/blob/master/cmd/qat\_plugin/](https://github.com/intel/intel-device-plugins-for-kubernetes/blob/master/cmd/qat_plugin/README.md) |
| SR-IOV | The SR-IOV plugin is required to enable the assignment of VFs to containers. SR-IOV provides a low-latency interface for both packet I/O and acceleration interfaces.  [github.com/hustcat/sriov-cni](file://localhost/D%3A/5G/NFV/O-RAN/WG6/Cloud%20Doc/Ref%20Spec/github.com/hustcat/sriov-cni) |
| CPU Manager | The CPU manager for Kubernetes can be used to provide basic core affinity for VNFs and CNFs. It is required to pin real- time threads to specific CPU cores in order to improve performance and meet real-time latency. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | [github.com/intel/CPU-Manager-for-Kubernetes.](https://github.com/intel/CPU-Manager-for-Kubernetes) |
| Node Feature Discovery | The Node Feature Discovery plugin enables discovering server hardware node features for Kubernetes. It detects hardware features available on each node in a Kubernetes cluster, and advertises those features using node labels.  [github.com/kubernetes-sigs/node-feature-discovery](file://localhost/D%3A/5G/NFV/O-RAN/WG6/Cloud%20Doc/Ref%20Spec/github.com/kubernetes-sigs/node-feature-discovery) |
| Node Topology Manager | Node Topology Manager can be used to support NUMA awareness and pinning via the scheduler.  [kubernetes.io/docs/tasks/administer-cluster/topology-manager/](https://kubernetes.io/docs/tasks/administer-cluster/topology-manager/) |
| GPU Operator | The GPU operator manages NVIDIA GPU and automates tasks related to boostrapping GPU enabled nodes (optional - leveraged only if specific Nvidia hardware support is required).  [nvidia.github.io/gpu-operator/](https://nvidia.github.io/gpu-operator/) |

</div>

1. **Table 5-8 Edge Cloud Reference Configuration Profile**

## ![]({{site.baseurl}}/assets/images/3b4386071612.png) Example Real-time Linux Configurations

1. Table 5-9 shows the reference configurations for the real-time Linux OS.

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Linux Kernel | 3.10.0-957.21.3.rt56.935.el7.x86\_64 | |
| Host or Guest Linux Kernel Parameters | rcu\_nocbs=1-N rcu\_nocb\_poll isolcpus=1-N irqaffinity=0 tsc=perfect nohz\_full=1-N idle=poll noswap | N is the total number of logical CPU cores.  Use the "tuna" tool, provided in some Linux distributions, to configure run-time CPU isolation and thread priorities, if permanent isolation with isolcpus kernel option is not desired. |
| selinux=0 enforcing=0 | Disable SELinux policies can help improve latency but should only be done if the security considerations are fully understood. |
| default\_hugepagesz=1G hugepagesz=1G hugepages=21 | Use huge pages to minimize TLB miss overhead; use 2MB huge pages when system memory is limited. |
| usbcore.autosuspend=-1 nmi\_watchdog=0 softlockup\_panic=0 cgroup\_disable=memory skew\_tick=1 nosoftlockup | General configurations for real time. |
| kthread\_cpus=0 | Limit host kernel threads to the OS core. Used also in guest assuming a pure user space application design. |
| intel\_pstate=disable intel\_idle.max\_cstate=0 processor.max\_cstate=1 | Disabling P-states and limiting C-states in the kernel helps improve real time performance. |
| Host Linux GRUB Parameters | intel\_iommu=on iommu=pt pci=pcie\_bus\_perf | Enable SR-IOV and optimal PCI performance. |
| Host and Guest Tuning | Turn off graphical desktop and unnecessary daemons in the system |  |
| If ext3 or ext4 file system is used, consider using noatime in fstab |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Host Kernel Command Line example | BOOT\_IMAGE=/vmlinuz-3.10.0-957.21.3.rt56.935.el7.x86\_64 root=/dev/mapper/centos- root ro crashkernel=auto nomodeset rd.lvm.lv=centos/root rd.lvm.lv=centos/swap rhgb quiet hugepagesz=1G hugepages=35 default\_hugepagesz=1G intel\_iommu=on iommu=pt LANG=en\_GB.UTF-8 tboot=false biosdevname=0 usbcore.autosuspend=-1 selinux=0 enforcing=0 nmi\_watchdog=0 softlockup\_panic=0 cgroup\_disable=memory skew\_tick=1 isolcpus=1-N rcu\_nocbs=1-N kthread\_cpus=0 irqaffinity=0 nohz\_full=1-N nopti clock=pit no\_timer\_check pci=pcie\_bus\_perf clocksource=tsc tsc=perfect idle=poll intel\_pstate=disable intel\_idle.max\_cstate=0 processor.max\_cstate=1 nohz=on mce=off nosoftlockup |

</div>

1. **Table 5-9. Real-time Linux configurations.**

## ![]({{site.baseurl}}/assets/images/1def3f9fe8fb.png) Time Synchronization Reference Design

1. Figure 5-7 illustrates an example of the redundant synchronization network for an edge site aligned with the requirements.
2. The O-RUs are expected to be connected to the same leaf-spine fabric, and as such the O-Cloud network is considered to
3. also be part of the fronthaul network.
4. ![]({{site.baseurl}}/assets/images/de0010a9a82d.jpg)
5. **Figure 5-7. Key synchronization chain elements in an example implementation in O-Cloud for LLS-C3.**

683

1. The salient features of this design example are:
2. ? The synchronization reference sources (PRTC/T-GM) are redundant and located in the edge cloud. In this
3. example, the references are derived from the GNSS system, but any other implementation compliant with the
4. CUS specification [2] requirements (and references therein), which acts as G.8275.1 T-GM, is acceptable.
5. ? The synchronization reference sources are connected to the leaf-spine fabric with redundant Ethernet
6. interconnects. Specifically, each grandmaster connects to at least two leaf switches.
7. ? For larger site configurations (i.e. in which the switch capacity and port count requirements exceed the capabilities
8. of the single physical switch), the structure is expanded in a "leaf-spine" fabric configuration, as illustrated in [2].
9. For most edge site configurations, it is expected that a two-tier structure is sufficient, which implies that the
10. maximum length of any active synchronization transfer path from co-located sources is three boundary clocks
11. between the grandmaster and any node in the edge cloud. Therefore, the synchronization path "length" in terms
12. of number of boundary clocks that needs to be supportable in this configuration is typically from one to three.
13. Capability to support more nodes in the path is desirable to allow for configurations where the grandmasters are
14. not co-located at the edge cloud.
15. ? All edge O-Cloud nodes are attached to at least two physically separated, independent leaf switches to provide
16. network redundancy and tolerance against a single point of failure that can affect more than one node (i.e. switch
17. failures). In addition to normal network fault tolerance, this is also useful for maintaining the synchronization
18. network fault tolerance. 702
19. Many alternative variations and physical realizations of the above design are possible (e.g. PRTCs/GMs can be combined
20. with switches or routers, leaf-spine structure can be integrated onto physical box, sizes of elements can vary, etc.), but
21. functionally with respect to the synchronization transfer chain, all of the entities are expected to be present (i.e. PRTC/T-
22. GMs, Telecom Boundary Clock nodes, as well Telecom subordinate Clock nodes).
23. For this design example, the O-DU synchronization performance requirements as specified in the CUS specification [2]
24. for the O-DU LLS-C3 configuration expected to be met with the following set of elements in the synchronization transfer
25. path:
26. ? T-GM A and T-GM B clocks with performance class ITU-T G.8272 PRTC/T-GM type PRTC-B serving as
27. grandmasters for O-DUs as well as O-RUs (O-DUs require PRTC-A or better while O-RUs require PRTC-B)
28. ? The Fronthaul Leafs acting as T-BCs in both the O-RU and O-DU synchronization path, with support for a
29. minimum performance class ITU-T G.8273.2 T-BC Class B (Class C is recommended);
30. ? The Spine and O-Cloud Leaf switches acting as T-BCs in the O-DU synchronization path only, with the least
31. demanding T-BC performance class ITU-T G.8273.2 T-BC Class A or better;
32. ? T-TSC implementation on the O-Cloud nodes with the least demanding performance class ITU-T G.8273.2,
33. Annex C, T-TSC Class A or better. 718

719

720

# 721 Annex ZZZ: O-RAN Adopter License Agreement

1. BY DOWNLOADING, USING OR OTHERWISE ACCESSING ANY O-RAN SPECIFICATION, ADOPTER
2. AGREES TO THE TERMS OF THIS AGREEMENT.
3. This O-RAN Adopter License Agreement (the "Agreement") is made by and between the O-RAN ALLIANCE and the
4. entity that downloads, uses or otherwise accesses any O-RAN Specification, including its Affiliates (the "Adopter").
5. This is a license agreement for entities who wish to adopt any O-RAN Specification.

## Section 1: DEFINITIONS

1. 1.1 "Affiliate" means an entity that directly or indirectly controls, is controlled by, or is under common control with
2. another entity, so long as such control exists. For the purpose of this Section, "Control" means beneficial ownership of
3. fifty (50%) percent or more of the voting stock or equity in an entity.
4. 1.2 "Compliant Implementation" means any system, device, method or operation (whether implemented in hardware,
5. software or combinations thereof) that fully conforms to a Final Specification.
6. 1.3 "Adopter(s)" means all entities, who are not Members, Contributors or Academic Contributors, including their
7. Affiliates, who wish to download, use or otherwise access O-RAN Specifications.
8. 1.4 "Minor Update" means an update or revision to an O-RAN Specification published by O-RAN ALLIANCE that does
9. not add any significant new features or functionality and remains interoperable with the prior version of an O-RAN
10. Specification. The term "O-RAN Specifications" includes Minor Updates.
11. 1.5 "Necessary Claims" means those claims of all present and future patents and patent applications, other than design
12. patents and design registrations, throughout the world, which (i) are owned or otherwise licensable by a Member,
13. Contributor or Academic Contributor during the term of its Member, Contributor or Academic Contributorship; (ii) such
14. Member, Contributor or Academic Contributor has the right to grant a license without the payment of consideration to a
15. third party; and (iii) are necessarily infringed by a Compliant Implementation (without considering any Contributions not
16. included in the Final Specification). A claim is necessarily infringed only when it is not possible on technical (but not
17. commercial) grounds, taking into account normal technical practice and the state of the art generally available at the date
18. any Final Specification was published by the O-RAN ALLIANCE or the date the patent claim first came into existence,
19. whichever last occurred, to make, sell, lease, otherwise dispose of, repair, use or operate a Compliant Implementation
20. without infringing that claim. For the avoidance of doubt in exceptional cases where a Final Specification can only be
21. implemented by technical solutions, all of which infringe patent claims, all such patent claims shall be considered
22. Necessary Claims.
23. 1.6 "Defensive Suspension" means for the purposes of any license grant pursuant to Section 3, Member, Contributor,
24. Academic Contributor, Adopter, or any of their Affiliates, may have the discretion to include in their license a term
25. allowing the licensor to suspend the license against a licensee who brings a patent infringement suit against the licensing
26. Member, Contributor, Academic Contributor, Adopter, or any of their Affiliates.

## Section 2: COPYRIGHT LICENSE

1. 2.1 Subject to the terms and conditions of this Agreement, O-RAN ALLIANCE hereby grants to Adopter a nonexclusive,
2. nontransferable, irrevocable, non-sublicensable, worldwide copyright license to obtain, use and modify O-RAN
3. Specifications, but not to further distribute such O-RAN Specification in any modified or unmodified way, solely in
4. furtherance of implementations of an ORAN
5. Specification.
6. 2.2 Adopter shall not use O-RAN Specifications except as expressly set forth in this Agreement or in a separate written
7. agreement with O-RAN ALLIANCE.

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
2. 4.2 O-RAN ALLIANCE on behalf of its Members, Contributors and Academic Contributors may terminate this
3. Agreement if Adopter materially breaches this Agreement and does not cure or is not capable of curing such breach within
4. thirty (30) days after being given notice specifying the breach.
5. 4.3 Sections 1, 3, 5 - 11 of this Agreement shall survive any termination of this Agreement. Under surviving Section 3,
6. after termination of this Agreement, Adopter will continue to grant licenses (a) to entities who become Adopters after the
7. date of termination; and (b) for future versions of ORAN Specifications that are backwards compatible with the version
8. that was current as of the date of termination.

## Section 5: CONFIDENTIALITY

1. Adopter will use the same care and discretion to avoid disclosure, publication, and dissemination of O-RAN
2. Specifications to third parties, as Adopter employs with its own confidential information, but no less than reasonable care.
3. Any disclosure by Adopter to its Affiliates, contractors and consultants should be subject to an obligation of
4. confidentiality at least as restrictive as those contained in this Section. The foregoing obligation shall not apply to any
5. information which is: (1) rightfully known by Adopter without any limitation on use or disclosure prior to disclosure; (2)
6. publicly available through no fault of Adopter; (3) rightfully received without a duty of confidentiality; (4) disclosed by
7. O-RAN ALLIANCE or a Member, Contributor or Academic Contributor to a third party without a duty of confidentiality
8. on such third party; (5) independently developed by Adopter; (6) disclosed pursuant to the order of a court or other
9. authorized governmental body, or as required by law, provided that Adopter provides reasonable prior written notice to
10. O-RAN ALLIANCE, and cooperates with O-RAN ALLIANCE and/or the applicable Member, Contributor or Academic
11. Contributor to have the opportunity to oppose any such order; or (7) disclosed by Adopter with O-RAN ALLIANCE's
12. prior written approval.

## Section 6: INDEMNIFICATION

1. Adopter shall indemnify, defend, and hold harmless the O-RAN ALLIANCE, its Members, Contributors or Academic
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
3. written consent of the O-RAN ALLIANCE, which consent may be withheld in O-RAN ALLIANCE's sole discretion. O-
4. RAN ALLIANCE may freely assign this Agreement.

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
10. or O-RAN ALLIANCE or its Members, Contributors or Academic Contributors. Except as expressly set forth in this
11. Agreement, no party is authorized to make any commitment on behalf of Adopter, or O-RAN ALLIANCE or its Members,
12. Contributors or Academic Contributors.
13. In the event that any provision of this Agreement conflicts with governing law or if any provision is held to be null, void
14. or otherwise ineffective or invalid by a court of competent jurisdiction, (i) such provisions will be deemed stricken from
15. the contract, and (ii) the remaining terms, provisions, covenants and restrictions of this Agreement will remain in full
16. force and effect.
17. Any failure by a party or third party beneficiary to insist upon or enforce performance by another party of any of the
18. provisions of this Agreement or to exercise any rights or remedies under this Agreement or otherwise by law shall not be
19. construed as a waiver or relinquishment to any extent of the other parties' or third party beneficiary's right to assert or
20. rely upon any such provision, right or remedy in that or any other instance; rather the same shall be and remain in full
21. force and effect.
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG6.CLOUD-REF-v02.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG6.CLOUD-REF-v02.00.docx).
