---
title: O-RAN-WG9.WDM.0-R004-v05.00.docx.md
author: O-RAN Alliance, WG9
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN-WG9.WDM.0-R004-v05.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN-WG9.WDM.0-R004-v05.00.docx).

---

* toc
{:toc}

---

## ![webwxgetmsgimg (7).jpeg]({{site.baseurl}}/assets/images/9c69df009b87.jpg)ORAN-WG9.WDM.0-R004-v05.00

*Technical Specification*

**O-RAN Open Xhaul Transport WG9 WDM-based Xhaul Networks**

Copyright (C) 2024 by the O-RAN ALLIANCE e.V.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany

1

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Author | Company |
| Dr. Dechao Zhang | China Mobile |
| Ricky Perry | AT&T |
| Dr. Dong Wang | China Mobile |
| Fabienne Saliou | Orange |
| Philippe Chanclou | Orange |
| Likai Zhu | Fiberhome Telecom USA |
| Martin Birk | Highstreet Technologies |
| Jim Zou | Adtran |
| Reza Vaez-Ghaemi | VIAVI Solutions |
| Shikui Shen | China Unicom |

</div>

# Revision History

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Date** | **Revision** | **Author** | **Description** |
| 2020/04/01 | v.01 | Dechao Zhang, Dong Wa ng, Jun Ma, Zhen Han, Ri cky Perry | Outline of WDM-based Fronthaul Transport specificatio n |
| 2020/05/04 | v.02 | Dong Wang, Yi Jiang, Ric ky Perry | Added Wavelength Allocation and Optical Channel Pow er Budget |
| 2020/07/23 | v.03 | Philippe Chanclou | Added contributions to chapter 5 |
| 2020/07/30 | v.04 | Likai Zhu, Zhen Han, Don  g Wang, Philippe Chancl ou, Fabienne Saliou | Added contribution to chapter 6 and revisions to chapte r 5 |
| 2020/08/06 | v.05 | Philippe Chanclou Fabienne Saliou John DeAndrea, Reza Vaez-Ghaemi | proposition of resolution of comments to chapter 6 foll owing comments from the group (merged documents) |
| 2020/08/13 | v.06 | Philippe Chanclou | proposition of resolution of comments to chapter 6 foll owing comments from the group (merged documents) |
| 2020/08/13 | v.07 | Ricky Perry | Added minimal Optic KPIs table for section and recomm ended feedback on section 6.1, Chapter 8 X-Haul Synchr onization Solution |
| 2020/8/21 | v.09 | Ricky Perry | Included Dispersion, Revised DWDM Power budget tabl e |
| 2020/9/23 | v.10 | Ricky Perry | Updated with all the authors inputs/edits (Orange CH5, 6) |
| 2020/9/23 | v.11 | Ricky Perry | Updated sections with CMCC and Highstreet Technologi es Edits |
| 10/13/2020 | v.12 (v00.03) | Ricky Perry | Reviewed and made minor editorial changes in all sectio  ns, Proposed scope re-phrase |
| 10/26/20 | v00.05 | Ricky Perry | Final Edits: DWDM related sections, Chapter 7, |
| 10/30/20 | V00.06 | Reza Vaez-Ghaemi | Checked for consistency, and final editorial edits in all c hapters. |
| 11/11/2020 | v01.00 | Reza Vaez-Ghaemi | Responses to comments from WG9 members incorpora ted, document cleaned up, and renamed. |
| 11/12/2021 | v02.00 | Ricky Perry | Included additions for phase 2. |
| 11/12/2021 | V02.00 | Reza Vaez-Ghaemi | Responses to comments from WG9 members incorpora ted, document cleaned up, and renamed. |
| 10/28/22 | V03.00 | Ricky Perry | Addressed comments from WG9 members, document cl eaned up, and renamed |
| 9/8/23 | V03.01 | Ricky Perry | V4 initial draft content (25G BiDi and beyond, MOPA, S mart Tunable MSA) |
| 9/12/23 | V03.02 | Ricky Perry, Ken Cockerh am, Reza Vaez-Ghaemi | Entered draft content in section 4.1.5 |
| 7/25/24 | V04.00 | Ricky Perry, Reza Vaez-G haemi | Phase 5 baseline |
| 9/19/24 | V04.01 | Ricky Perry | Initial draft ready for input |
| 9/19/24 | V04.02 | Stepan Dahlfort | Section 5.1.6 initial content entered |
| 9/26/24 | V04.02 | Sheng Liu | Section 2.1 initial content |
| 10/3/24 | V04.03 | Jim Zou | Section 5.1.7 |
| 10/3/24 | V04.03 | Jim Zou | Section 5.3.2 additional comment |
| 10/7/24 | V04.04 | Phillippe Chanclou | Section 5.3.2 additional comment |
| 10/17/24 | V05.00 | Jim Zou | Revision based on the first round review comments |

</div>

**Contents**

Revision History 3

1. GENERAL 6
   1. Scope 6
   2. References 6
   3. Definitions and Abbreviations 7
      1. Definitions 7
      2. Abbreviations 8
2. Phase 5 Backhaul and Midhaul (Xhaul) 9
   1. Application scenarios and technical trends 9
3. Function Module of the (Fronthaul) Equipment 10
   1. Passive WDM 10
   2. Active WDM 11
   3. Semi-Active WDM 11
   4. Phase 2 WDM Protection 13
4. Wavelength Allocation 14
   1. MWDM Wavelength Allocation 14
   2. DWDM Wavelength Allocation 15
5. Optical Equipment Technical Requirements 19
   1. Optical Transceiver Technical Requirements 19
      1. MWDM 20

5 1.2 DWDM 21

* + 1. Phase 2 DWDM Tuneable Use Cases 24
    2. Phase 3 DWDM Smart-Tunable MSA 26
    3. Phase 4 DWDM SmartTunable MSA 26
    4. Phase 5 MOPA Updates 27
    5. Phase 5 Beyond 25G WDM 28
  1. Multiplexer / Demultiplexer Technical Requirements 29
     1. MWDM 29
     2. DWDM C-Band Example of a BiDi 40 Channel 100Ghz Mux/Demux 31
  2. Phase 2 WDM >10 km link Budget 25G 32
     1. Phase 2 MWDM 32
     2. Phase 2 DWDM 33
  3. Phase 2 Optical Power Consumption 36
  4. Phase 2 Optical Interfaces 36
     1. Phase 2 Single and Duplex fiber solutions 37
     2. Phase 3 Optical Link Budget 39
     3. Phase 3 MWDM Link Budget 39
     4. Phase 3 DWDM Link Budget 39

1. System Function and Performance Requirements 41
   1. Latency and jitter 41
      1. Phase 2 Latency Asymmetry 44
      2. Phase 2 Latency Classification 45
      3. Phase 3 Asymmetry with WDM 46
   2. Bit Errors 47
   3. Protection 47
   4. Synchronization 47
      1. Phase 2 WDM delivery sync 48
      2. Phase 2 OTDR-based latency characterization 50
   5. Maintenance and Operation 52
2. Operation Administration Maintenance (OAM) Requirements 52
   1. OAM Architecture 52
   2. Configuration 56
   3. Enquiry 57
   4. Active 57
   5. Phase 3 OAM In Fronthaul 57
3. Management Interfaces 59

Appendix A Phase 1 Optical Power Budget 60

Appendix B Phase 2 >25G Line rate Cover it in an Appendix 63

# GENERAL

## Scope

This Technical Specification has been produced by the O-RAN Alliance. This document is intended to describe best practices for O-RAN fronthaul transport based on WDM technology. It is recognized that other solutions, not based on WDM technology, could be employed or mixed with a WDM solution. Beyond the technologies in this document, other WDM solutions may be adequate for fronthaul transport networks and can be considered for future versions of this document.

The contents of the present document are subject to continuing work within O-RAN WG9 and may change following formal O-RAN approval. Should the O-RAN Alliance modify the contents of the present document, it will be re-released by O-RAN with an identifying change of release date and an increase in version number as follows:

Release x/y/.z where:

1. the first digit is incremented for all changes of substance, i.e. technical enhancements, corrections, updates, etc. (the initially approved document will have x=01).
2. the second digit is incremented when editorial only changes have been incorporated in the document.
3. the third digit included only in working versions of the document indicating incremental changes during the editing process.

The present document specifies the key recommendation/requirements of Wavelength Division Multiplexing (WDM) based fronthaul transport network. WDM is a transparent solution.

Following introductory section 1, section 2 concentrates on the function module of the passive, active, and semi-active WDM equipment. Section 3 concentrates on the Medium Wavelength Division Multiplexing (MWDM) and Dense Wavelength Division Multiplexing (DWDM) wavelength allocation. Section 4 concentrates on the optical transceiver and multiplexer/demultiplexer technical requirements. The next three sections concentrate on system function and performance requirements, Operation Administration Maintenance (OAM) requirement, and Management interfaces, respectively.

This document uses information published by O-RAN, 3GPP, IEEE, ITU-T, and several other relevant standard bodies and industry associations. It contains educational, informative, and normative content.

## References

The following documents contain provisions that, through reference in this text, constitute provisions of the present document.

* References are either specific (identified by date of publication, edition number, version number, etc.) or nonspecific.
* For a specific reference, subsequent revisions do not apply.
* For a non-specific reference, the latest version applies. In the case of a reference to a 3GPP document (including a GSM document), a non-specific reference implicitly refers to the latest version of that document.

1. ITU-T G.694.1: "Spectral grids for WDM applications: DWDM frequency grid"
2. SmartTunable MSA: "Technical specification for Smart Tunable Modules"- [www.smarttunable-](http://www.smarttunable-msa.org/) [msa.org](http://www.smarttunable-msa.org/)
3. ITU-T G.652: "Characteristics of a single-mode optical fiber and cable"
4. SFF-8431: "SFP+ 10 Gb/s and Low Speed Electrical Interface"
5. SFF-8432: "SFP+ Module and Cage"
6. SFF-8472: "Management Interface for SFP+"
7. SFF-8690: "Tunable SFP+ Memory Map for ITU Frequencies"
8. IEEE Std 802.3-2018 Annex 109B: "Chip-to-module 25 Gigabit Attachment Unit Interface (25GAUI C2M)"
9. IEEE Std 802.3-2018 Clause 105: "Introduction to 25 Gb/s networks"
10. O-RAN X-haul Transport Group, WG9: "Xhaul Transport Requirements"
11. Next Generation Mobile Networks (NGMN) Alliance: "FRONTHAUL REQUIREMENTS FOR C- RAN"
12. ITU-T G.988:" ONU management and control interface (OMCI) specification"
13. ITU-T G.989 Annex B: "40-Gigabit-capable passive optical networks 2 (NG-PON2): Physical media dependent (PMD) layer specification"
14. ITU-T G.989.3 Annex F & G: "40-Gigabit-capable passive optical networks (NG-PON2):

Transmission convergence layer specification

1. ORAN WG9 packet-based architecture and solutions
2. ORAN WG9 Management interface

## Definitions and Abbreviations

### Definitions

For purposes of the present document, the following terms and definitions apply.

**<TERM**: description of term>

### Abbreviations

For the present document, the following abbreviations apply.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| 3GPP | 3rd Generation Partnership Project |
| APD | Avalanche Photo Diode |
| BER | Common Public Radio Interface |
| CPRI | Common Public Radio Interface |
| CWDM | Coarse Wavelength Division Multiplexing |
| DML | Directly Modulated Laser |
| DWDM | Dense Wavelength Division Multiplexing |
| eCPRI | enhanced Common Public Radio Interface |
| FEC | Forward Error Correction |
| ITU-T | International Telecom Union |
| MCU | Microcontroller Unit |
| M plane | Management Plane |
| MWDM | Medium Wavelength Division Multiplexing |
| NGMN | Next Generation Mobile Networks |
| O-DU | O-RAN Distributed Unit |
| O-RU | O-RAN Radio Unit |
| OAM | Operation, Administration, and Maintenance |
| OD | Optical Demultiplexer |
| OM | Optical Multiplexer |
| OMA | Optical Modulation Amplitude |
| OTDOA | Observed Time Difference of Arrival |
| PD | Power Detector |
| PIN | P-type Intrinsic-N type |
| RMS | Root Mean Square |
| TDP | Transmitter and Dispersion Penalty |
| TEC | Thermo Electric Cooler |
| TFF | Thin-Film Filter |
| TNE | Transport Node Equipment |
| Tr | Transceiver |
| WDM | Wavelength Division Multiplexing |

</div>

# Phase 5 Backhaul and Midhaul (Xhaul)

## Application scenarios and technical trends

Led by CMCC team.

![]({{site.baseurl}}/assets/images/2647e92c2251.png)![]({{site.baseurl}}/assets/images/721b90bd3526.png)![]({{site.baseurl}}/assets/images/d9c2494f7f03.png)![]({{site.baseurl}}/assets/images/cd537d7daa20.png)![]({{site.baseurl}}/assets/images/12706ac80d35.png)![]({{site.baseurl}}/assets/images/fc621f39b6df.png)![]({{site.baseurl}}/assets/images/5ade1923a064.png)![]({{site.baseurl}}/assets/images/5ade1923a064.png)![]({{site.baseurl}}/assets/images/5ade1923a064.png)![]({{site.baseurl}}/assets/images/5ade1923a064.png)![]({{site.baseurl}}/assets/images/c86cecbf3848.png)![]({{site.baseurl}}/assets/images/5ade1923a064.png)![]({{site.baseurl}}/assets/images/5ade1923a064.png)![]({{site.baseurl}}/assets/images/5ade1923a064.png)![]({{site.baseurl}}/assets/images/c0fdb7784a2e.png)![]({{site.baseurl}}/assets/images/be7bb386bc54.png)![]({{site.baseurl}}/assets/images/6e83aaf2cfd7.png)![]({{site.baseurl}}/assets/images/89d0eef7dd36.png)![]({{site.baseurl}}/assets/images/5ade1923a064.png)![]({{site.baseurl}}/assets/images/5ade1923a064.png)![]({{site.baseurl}}/assets/images/5ade1923a064.png)![]({{site.baseurl}}/assets/images/e50f9859fbab.png)![]({{site.baseurl}}/assets/images/46710f906030.png)![]({{site.baseurl}}/assets/images/114eaa9b73c3.png)![]({{site.baseurl}}/assets/images/e73d8436e40c.png)![]({{site.baseurl}}/assets/images/f4def0955199.png)![]({{site.baseurl}}/assets/images/48a96965f272.png)![]({{site.baseurl}}/assets/images/361eec7b43e7.png)![]({{site.baseurl}}/assets/images/442dc01386cc.png)![]({{site.baseurl}}/assets/images/96b5dc87631b.jpg)![]({{site.baseurl}}/assets/images/ce7e5ecf29f5.png)

AAU+RRU

25G/10G

MEC

Access

25G WDM

AAU

DU+CU

MEC

Core

AAU+RRU

25G/10G

Access

25G WDM

MEC

AAU

DU+CU

PON

OLT

Private line

SMF

AMF

UPF

**Figure 1:** WDM-based back-haul and mid-haul

As the number and bandwidth of 5G base stations continually increase, metro x-haul transport networks are increasingly facing challenges, such as capacity, cost, power consumption, etc. WDM technologies are utilized in the metro networks to transport mobile traffic, enterprise services, fixed line services, etc., and WDM links and networks perform as an underlying network for the back-haul and mid-haul networks, to extend the transmission distance, increase the bandwidth, and reduce the cost and power consumption, as illustrated in Figure 1 above.

WDM technology is used in several scenarios in back-haul and mid-haul networks. For instance, WDM-based underlying layer is used for the core rings in the metro, to extend the transmission distance and capacity. Also, WDM-based underlying layer is used for long-distance city-to-county connections, which could be with hundreds of kilometers. Furthermore, the interfaces of transport equipment are evolving, with high-rate WDM interfaces and coherent optics being increasingly used.

With the application scenarios above, WDM technology is evolving towards technical directions, such as specific WDM interfaces and optical modules with high data rate and specific coherent optics, metro-optimized optical switching systems to reduce the latency for back-haul traffic, efficient protection, management and operation with specific WDM layer OAM, a coordination between underlying WDM layer and overlying back- haul packet layer, etc.

# Function Module of the (Fronthaul) Equipment

When compared with 4G, 5G imposes higher requirements for transport networks in terms of bandwidth, latency, synchronization, reliability, and flexibility. As an important part of the transport network, the 5G fronthaul network shall meet these requirements and also address the difficulty of laying optical fibers to accommodate the exponential growth in 5G base stations.

5G Radio Access Network (RAN) deployment has two scenarios: Distributed Radio Access Network (D-RAN) and Centralized Radio Access Network (C-RAN). C-RAN concentration usually needs pooled O-RAN Centralized Unit (O-CU) and Distributed Unit (O-DU) to support implementation. For the D-RAN scenario, O- RAN Radio Unit (O-RU) is deployed on the tower or rooftop or similar, while the O-DU is deployed below the tower or in another nearby building.

The 5G fronthaul network mainly realizes the remote transmission of signals from O-RU to O-DU. C-RAN architecture puts forward new requirements for 5G fronthaul networks. WDM has become a solution for fronthaul networks. There are various WDM network architectures such as passive WDM, active WDM, and semi-active WDM.

C-RAN fronthaul architecture can reduce the site rental fees, maintenance costs, and power consumption of O-DU in 5G greenfield and hotspot areas and has gained the favor of operators. In this chapter, several fronthaul schemes based on WDM technologies are briefly introduced.

While 5G represents a major driver for the technologies presented in this document, they can also be applied to 4G fronthaul networks. For the sake of simplicity, this document only refers to 5G.

## Passive WDM

The passive WDM solution is based on the end-to-end all-passive method without relay amplification and dispersion compensation to save the consumption of optical fiber resources. To achieve a low-cost WDM transmission, as shown in **Figure 2**, the O-RU directly uses the fixed or tunable optical transceivers, connected to the passive multiplexer/demultiplexer through the branch optical cable. At the O-DU side of the central office, the passive multiplexer/demultiplexer performs wavelength multiplexing/demultiplexing, which realizes the one-to-one optical wavelength connection.

![??WDM.png]({{site.baseurl}}/assets/images/dbcdbf86fcfd.jpg)

**Figure 2:** Passive WDM

Because the equipment at the O-DU side is only with colored optical transceivers, disadvantages of passive WDM include lack of management channel, weak perception of fiber link fault, the difficulty of optical transceiver operation, and maintenance that depends on manual work. Basic management functions of optical channels, fiber link fault, and the optical transceiver can be achieved in O-RU and O-DU host systems.

The equipment at the O-RU side and O-DU side may contain tunable optical transceivers, with active communication channels that exist within the optical carrier channel but do not affect the traffic. These transceivers allow the O-DU to exchange health, command, and control status information without the use of a supervisory channel. MSA (STM) specification for interoperable transceivers is part of a working group to allow O-RU and O-DU passive architectures to perform maintenance tasks.

## Active WDM

The active WDM solution uses active WDM equipment for electrical and/or optical layer multiplexing at both the remote station and the central office, as shown in **Figure 3**. This solution also reduces the number of fibers and can provide management functions between WDM equipment.

![??WDM.png]({{site.baseurl}}/assets/images/ebf6b59bec3f.jpg)

**Figure 3**: Active WDM

Compared with the Passive WDM, the cost of the active WDM scheme is about 4-6 times higher, bases on operator studies, and is not conducive to large-scale deployment of 5G fronthaul. Due to the remote location of WDM equipment at the O-RU side, available power sources and outdoor location may cause difficulty in the installation of this implementation.

## Semi-Active WDM

With the accelerated deployment of 5G networks, the fronthaul network will have thousands of nodes creating a need for management of the capability of the network.

The proposed semi-active WDM schemes are illustrated in **Figure 4**.

![???2.png]({{site.baseurl}}/assets/images/80b530edbaa5.jpg)

###### Type I

![???1.png]({{site.baseurl}}/assets/images/b52af36ec88f.jpg)

1. **Type II**

**Figure 4:** Semi-active WDM

This semi-active WDM solution is a simplification of the active WDM solution and an enhancement of the passive solution. Passive WDM at the remote O-RU side is not subject to power supply restrictions. The WDM equipment at the O-DU side of the central office is active, which can achieve monitoring, fault detection, and protection capabilities.

The active WDM equipment can send management requests to the O-RU and manage the WDM optical modules within the O-RU, including query and configuration. The optical modules within the O-RU can receive management requests from the active WDM equipment and then send the OAM information of the optical modules to the active WDM equipment, including the wavelength and output power of the transmitter. The optical modules in the O-RU and the O-DU can send the OAM information of optical modules to the active WDM equipment automatically or at regular time intervals once the optical modules are powered on. The WDM optical modules can add the OAM information with the service signals and transport them together in the same optical channel. The detection unit in the active WDM equipment can demodulate the OAM information, obtain the transmission performance of O-RU and O-DU, and then report it to the control system through the standard southbound interface. The semi-active WDM type I equipment should support query, configuration, and send OAM information. To further reduce system cost, the semi-active WDM type II equipment can perform simplified management, including sending the OAM information of optical modules to the active WDM equipment.

The semi-active WDM solution not only greatly reduces the pressure of optical fiber resources but also has cost advantages (compared with the active solution), management, and protection outside the optical transceiver and O-RU/O-DU host systems (compared with the passive solution). It helps operators to build 5G fronthaul networks with low cost, high bandwidth, and fast deployment.

## Phase 2 WDM Protection

For the 5G fronthaul scenario, there are several WDM protection schemes, such as optical layer protection and electrical layer protection.

There are two typical optical layer protection methods to protect the optical fiber link, including 1+1 and 1:1 optical protection. The architecture of 1+1 optical protection is shown **in Figure 4 (a),** which is composed of a 3 dB splitter at the remote part and a 1\*2 optical switch at the local part. **Figure 4(b)** shows the architecture of 1:1 optical protection, which consists of two 1\*2 optical switches at both remote and local parts.

![C:\Users