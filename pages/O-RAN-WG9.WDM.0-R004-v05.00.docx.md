## O-RAN-WG9.WDM.0-R004-v05.00.docx

- View in [Reader Mode](https://simewu.com/spec-reader/pages/03-WG9/O-RAN-WG9.WDM.0-R004-v05.00.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN-WG9.WDM.0-R004-v05.00.docx).

---

## ![webwxgetmsgimg (7).jpeg](../assets/images/9c69df009b87.jpg)ORAN-WG9.WDM.0-R004-v05.00

*Technical Specification*

**O-RAN Open Xhaul Transport WG9 WDM-based Xhaul Networks**

Copyright (C) 2024 by the O-RAN ALLIANCE e.V.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany

1

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

# Revision History

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

# Phase 5 Backhaul and Midhaul (Xhaul)

## Application scenarios and technical trends

Led by CMCC team.

![](../assets/images/2647e92c2251.png)![](../assets/images/721b90bd3526.png)![](../assets/images/d9c2494f7f03.png)![](../assets/images/cd537d7daa20.png)![](../assets/images/12706ac80d35.png)![](../assets/images/fc621f39b6df.png)![](../assets/images/5ade1923a064.png)![](../assets/images/5ade1923a064.png)![](../assets/images/5ade1923a064.png)![](../assets/images/5ade1923a064.png)![](../assets/images/c86cecbf3848.png)![](../assets/images/5ade1923a064.png)![](../assets/images/5ade1923a064.png)![](../assets/images/5ade1923a064.png)![](../assets/images/c0fdb7784a2e.png)![](../assets/images/be7bb386bc54.png)![](../assets/images/6e83aaf2cfd7.png)![](../assets/images/89d0eef7dd36.png)![](../assets/images/5ade1923a064.png)![](../assets/images/5ade1923a064.png)![](../assets/images/5ade1923a064.png)![](../assets/images/e50f9859fbab.png)![](../assets/images/46710f906030.png)![](../assets/images/114eaa9b73c3.png)![](../assets/images/e73d8436e40c.png)![](../assets/images/f4def0955199.png)![](../assets/images/48a96965f272.png)![](../assets/images/361eec7b43e7.png)![](../assets/images/442dc01386cc.png)![](../assets/images/96b5dc87631b.jpg)![](../assets/images/ce7e5ecf29f5.png)

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

![??WDM.png](../assets/images/dbcdbf86fcfd.jpg)

**Figure 2:** Passive WDM

Because the equipment at the O-DU side is only with colored optical transceivers, disadvantages of passive WDM include lack of management channel, weak perception of fiber link fault, the difficulty of optical transceiver operation, and maintenance that depends on manual work. Basic management functions of optical channels, fiber link fault, and the optical transceiver can be achieved in O-RU and O-DU host systems.

The equipment at the O-RU side and O-DU side may contain tunable optical transceivers, with active communication channels that exist within the optical carrier channel but do not affect the traffic. These transceivers allow the O-DU to exchange health, command, and control status information without the use of a supervisory channel. MSA (STM) specification for interoperable transceivers is part of a working group to allow O-RU and O-DU passive architectures to perform maintenance tasks.

## Active WDM

The active WDM solution uses active WDM equipment for electrical and/or optical layer multiplexing at both the remote station and the central office, as shown in **Figure 3**. This solution also reduces the number of fibers and can provide management functions between WDM equipment.

![??WDM.png](../assets/images/ebf6b59bec3f.jpg)

**Figure 3**: Active WDM

Compared with the Passive WDM, the cost of the active WDM scheme is about 4-6 times higher, bases on operator studies, and is not conducive to large-scale deployment of 5G fronthaul. Due to the remote location of WDM equipment at the O-RU side, available power sources and outdoor location may cause difficulty in the installation of this implementation.

## Semi-Active WDM

With the accelerated deployment of 5G networks, the fronthaul network will have thousands of nodes creating a need for management of the capability of the network.

The proposed semi-active WDM schemes are illustrated in **Figure 4**.

![???2.png](../assets/images/80b530edbaa5.jpg)

###### Type I

![???1.png](../assets/images/b52af36ec88f.jpg)

1. **Type II**

**Figure 4:** Semi-active WDM

This semi-active WDM solution is a simplification of the active WDM solution and an enhancement of the passive solution. Passive WDM at the remote O-RU side is not subject to power supply restrictions. The WDM equipment at the O-DU side of the central office is active, which can achieve monitoring, fault detection, and protection capabilities.

The active WDM equipment can send management requests to the O-RU and manage the WDM optical modules within the O-RU, including query and configuration. The optical modules within the O-RU can receive management requests from the active WDM equipment and then send the OAM information of the optical modules to the active WDM equipment, including the wavelength and output power of the transmitter. The optical modules in the O-RU and the O-DU can send the OAM information of optical modules to the active WDM equipment automatically or at regular time intervals once the optical modules are powered on. The WDM optical modules can add the OAM information with the service signals and transport them together in the same optical channel. The detection unit in the active WDM equipment can demodulate the OAM information, obtain the transmission performance of O-RU and O-DU, and then report it to the control system through the standard southbound interface. The semi-active WDM type I equipment should support query, configuration, and send OAM information. To further reduce system cost, the semi-active WDM type II equipment can perform simplified management, including sending the OAM information of optical modules to the active WDM equipment.

The semi-active WDM solution not only greatly reduces the pressure of optical fiber resources but also has cost advantages (compared with the active solution), management, and protection outside the optical transceiver and O-RU/O-DU host systems (compared with the passive solution). It helps operators to build 5G fronthaul networks with low cost, high bandwidth, and fast deployment.

## Phase 2 WDM Protection

For the 5G fronthaul scenario, there are several WDM protection schemes, such as optical layer protection and electrical layer protection.

There are two typical optical layer protection methods to protect the optical fiber link, including 1+1 and 1:1 optical protection. The architecture of 1+1 optical protection is shown **in Figure 4 (a),** which is composed of a 3 dB splitter at the remote part and a 1\*2 optical switch at the local part. **Figure 4(b)** shows the architecture of 1:1 optical protection, which consists of two 1\*2 optical switches at both remote and local parts.

![C:\Users\cmcc\Desktop\active-1plus1.jpg](../assets/images/1e4bc1e39dbb.jpg)![C:\Users\cmcc\Desktop\semi-active-1plus1.jpg](../assets/images/65738c0b4cf1.jpg)

**Figure 4(a):** 1+1 optical protection architecture

![C:\Users\cmcc\Desktop\semi-active-1by1.jpg](../assets/images/31d338182fee.jpg)

**Figure 4(b):** 1:1 optical protection architecture

The 1+1 optical protection can be applied for semi-active WDM system and Active WDM system, which could not be used in the passive WDM system due to the electrical power supply requirement for the 1\*2 switch at the local part. The 1:1 optical protection can only be applied for the Active WDM system, which could not be used in the semi-active WDM and passive WDM system due to the electrical power supply required for the two 1\*2 switches both at remote and local parts.

The key requirements of optical layer protection are listed in **Table 1.**

|  |  |  |
| --- | --- | --- |
|  | 1+1 optical protection technology | 1:1 optical protection technology |
| The insertion loss of remote part | 3.5 dB | 1.5 dB |
| The insertion loss of local part | 1.5 dB | 1.5 dB |
| The total insertion loss | 5 dB | 3 dB |
| The switching time | <50ms | |
| The accuracy of optical power detection | +-0.5 dB | |
| The operation temperature | -5 ~ +50 ? | |
| The functions | automatic switching, manual switching, etc. | |
| Application | Semi-active WDM system Active WDM system | Active WDM system |

**Table 1:** The key requirements of optical layer protection

For both 1+1 and 1:1 optical protection, optical signals can transport from the work link to the protection link automatically by using optical power detectors in the local part of the optical protection system to monitor the receiving optical power both in the work link and protection link. The threshold value and automatically switching can be adjusted, such as the receiving optical power in the work link is lower than a certain value or the difference of receiving optical powers between the work link and protection link is lower than a certain value. Additionally, the switching from work link to protection link also can be achieved manually by using the management and control system of WDM equipment to send information to the optical layer protection system.

The WDM protection function also can be performed in the electrical layer to protect WDM equipment or ports, such as SNCP protection. The WDM system should support electrical cross-connection.

# Wavelength Allocation

For the 5G fronthaul based on WDM technologies, there are several competing spectral grids, such as MWDM and DWDM.

## MWDM Wavelength Allocation

The nominal central wavelengths of 12-channels bi-directional MWDM are defined in **Table** **2**

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Channel No. | Nominal Central Wavelengths (nm) | Direction | | Used in Pairs |
| O-RU to O- DU | O-DU to O- RU |
| 1 | 1267.5 | - | ? | O-RU: 1274.5 |
| 2 | 1274.5 | ? | - |

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
|  |  |  |  | O-DU: 1267.5 |
| 3 | 1287.5 | - | ? | O-RU: 1294.5  O-DU: 1287.5 |
| 4 | 1294.5 | ? | - |
| 5 | 1307.5 | - | ? | O-RU: 1314.5 O-DU:  1307.5 |
| 6 | 1314.5 | ? | - |
| 7 | 1327.5 | - | ? | O-RU: 1334.5  O-DU: 1327.5 |
| 8 | 1334.5 | ? | - |
| 9 | 1347.5 | - | ? | O-RU: 1354.5 O-DU: 1347.5 |
| 10 | 1354.5 | ? | - |
| 11 | 1367.5 | - | ? | O-RU: 1374.5 O-DU:  1367.5 |
| 12 | 1374.5 | ? | - |

###### Table 2: Nominal central wavelengths of MWDM

For the 6-channels bi-directional MWDM application, the wavelengths from channel 1 to channel 6 are preferred.

The central wavelength spacing of adjacent channels of MWDM transmitters is 7 nm or 13 nm. The central wavelength spacing between odd channels and the central wavelength spacing between even channels are both 20 nm, respectively.

MWDM systems can satisfy the 10 km transmission or 15 dB optical power budget requirements with low-cost Directly Modulated Laser (DML) and P Type-Intrinsic-N type (PIN) chips. For transmission distances beyond 10 km, even up to 20 km, the optical power budget can be further achieved by using a higher performance solution, e.g. Avalanche Photo Diode (APD) receiver.

The applicability for MWDM is that Coarse Wavelength Division Multiplexing (CWDM) (O/E-Band) spectrum has lower dispersion penalties than DWDM, reusing low-cost optical chips. Considering relatively low channel density per fiber, MWDM is suitable for 12 or 6-channel WDM applications in 5G fronthaul.

## DWDM Wavelength Allocation

Bidirectional and Duplex C-Band DWDM wavelength allocation requirements are to follow the ITU 100GHz grid specified in ITU-T G.694.1 [1]. Wavelength range 1529.55 - 1560.61 nm provides 40 ITU channels 21-60 that can be allocated to support optical transmission **(****Table** **3**). Note: more wavelengths could be allocated.

![](../assets/images/b605f00b1f4f.png)

**Table 3:** Nominal ITU-T G.694.1 for 100GHz 40 channel Plan

One optional Bidirectional pluggable **(Figure 5)** shall use a single 100GHz wavelength with an approximate

+/- 50GHz offset upstream and downstream laser signals into a single 100GHz channel.

![](../assets/images/62137c94bf5d.jpg)

**Figure 5:** DWDM C-Band Bi-Directional

Another optional bidirectional pluggable **(Figure 6)** shall use a single 100GHz wavelength for upstream and a single 100GHz wavelength for downstream.

![](../assets/images/56610b32c3b3.png)

**Figure. 6** DWDM C-band Bi-Directional

Wavelength allocation of bi-directional example is shown in **Table 4**, which is specified in Recommendation ITU-T G.698.4.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **wavelength pairs (#)** | **frequency**  **(THz)** | **wavelength**  **(nm)** | **frequency**  **(THz)** | **wavelength**  **(nm)** |
| **1** | 196.00 | 1529.55 | 193.40 | 1550.12 |
| **2** | 195.90 | 1530.33 | 193.30 | 1550.92 |
| **3** | 195.80 | 1531.12 | 193.20 | 1551.72 |
| **4** | 195.70 | 1531.9 | 193.10 | 1552.52 |
| **5** | 195.60 | 1532.68 | 193.00 | 1553.33 |
| **6** | 195.50 | 1533.47 | 192.90 | 1554.13 |
| **7** | 195.40 | 1534.25 | 192.80 | 1554.94 |
| **8** | 195.30 | 1535.04 | 192.70 | 1555.75 |
| **9** | 195.20 | 1535.82 | 192.60 | 1556.55 |
| **10** | 195.10 | 1536.61 | 192.50 | 1557.36 |
| **11** | 195.00 | 1537.4 | 192.40 | 1558.17 |
| **12** | 194.90 | 1538.19 | 192.30 | 1558.98 |
| **13** | 194.80 | 1538.98 | 192.20 | 1559.79 |
| **14** | 194.70 | 1539.77 | 192.10 | 1560.61 |
| **15** | 194.60 | 1540.56 | 192.00 | 1561.42 |
| **16** | 194.50 | 1541.35 | 191.90 | 1562.23 |
| **17** | 194.40 | 1542.14 | 191.80 | 1563.05 |
| **18** | 194.30 | 1542.94 | 191.70 | 1563.86 |
| **19** | 194.20 | 1543.73 | 191.60 | 1564.68 |
| **20** | 194.10 | 1544.53 | 191.50 | 1565.50 |

**Table 4:** Wavelength Plan for Bi-directional

Duplex pluggable (**Figure 7**) shall use a single 100GHz wavelength for upstream and a single 100GHz wavelength for downstream to leverage a single passive mux/demux.

![](../assets/images/8d6a76d053af.jpg)

**Figure 7:** DWDM C-Band Duplex

Another duplex pluggable, **Figure 8** shall use a single 100GHz wavelength for upstream and a single 100GHz wavelength for downstream to leverage a single passive mux/demux.

![](../assets/images/91c4aa7cbf10.png)

**Figure 8:** DWDM C-Band Duplex

DWDM C-Band spectrum has higher dispersion penalties than CWDM but has higher channel densities for improved spectral efficiencies per fiber.

# Optical Equipment Technical Requirements

This chapter gives the basic technical requirements for the key optical equipment or modules, such as optical transceivers and optical multiplexers, and demultiplexers. The fronthaul transport systems should support transport capacity with 3ch x 25 Gbps, 6ch x 25 Gbps, et.al, and the fiber reach with link budget listed in **Annex A.**

## Optical Transceiver Technical Requirements

For 4G/5G fronthaul, the optical interfaces are based on the CPRI and eCPRI protocols, and have the following basic features:

* Low Power Consumption
* Small Size with LC Optical Fiber Connector Receptacles
* Wide Temperature Range
* SFF-8472 Compliant

If required, some functions such as wavelength tuning, out-of-band communication will be integrated.

### MWDM

The optical parameters of the 25G MWDM optical transceiver are shown in **Table** **5**.

|  |  |  |  |
| --- | --- | --- | --- |
| **Parameters** | | **Units** | **Proposed values** |
| Target fiber reach | | km | 10 |
| Fiber type | | - | G.652.D |
| Maximum Pre-FEC bit-error ratio | | - | 5 x 10-5 |
| Optical parameters of the transmitter | | | |
| Transmitter central wavelength | O-RU side | nm | 1274.5; 1294.5; 1314.5;  1334.5; 1354.5; 1374.5 |
| O-DU side | 1267.5; 1287.5; 1307.5;  1327.5; 1347.5; 1367.5 |
| Maximum shift of central wavelength | | nm | +- 2.5 |
| Maximum spectral bandwidth (-20 dB) | | nm | 1.0 |
| Average output power | | dBm | 2.0 ~ 7.0 |
| Minimum output power@ Optical Modulation Amplitude (OMA) | | dBm | 1.0 |
| Maximum Transmitter and Dispersion Penalty (TDP) | | dB | 1267.5 nm~ 1314.5nm: 1.0  1327.5nm ~ 1334.5nm: 3.0  1347.5 nm~ 1374.5nm: 4.5 |
| Minimum extinction ratio | | dB | 3.5 |
| Optical parameters of the receiver | | | |
| Receive wavelength range | | nm | 1260.0 ~ 1620.0 |
| Minimum receiver overload 1 | | dBm | PIN: +2.0  APD: -4.0 |
| Maximum receiver sensitivity 2 | | dBm | PIN: -13.0  APD: -18.0 |
| Maximum receiver sensitivity@OMA b | | dBm | PIN: -14.0  APD: -19.0 |
| 1. The receiver should tolerate the continuous injection of the average optical power without damage. 2. The receiver sensitivity includes the penalty of OAM modulation. | | | |

**Table 5:** Optical parameters of 25 Gbps MWDM optical transceiver

MWDM optical transceiver can be performed by designing MWDM DML laser or wavelength shifting from CWDM DML laser based on Thermo Electric Cooler (TEC). In the wavelength shifting scheme, according to the absolute value of the wavelength difference between the central wavelength of the optical transmitter and the central wavelengths of MWDM channels, specified in **Table 5**, the central wavelength of the optical transmitter should be adjusted to that of the nearest channel by modifying the TEC temperature.

APD receiver is used for 10 km transmission with optical line protection or beyond 10 km transmission with the same optical power budget.

The operating conditions of the 25 Gbps MWDM optical transceiver are shown in **Table** **6.**

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Parameter** | | **Min.** | **Max.** | **Unit** |
| Operating Case Temperature | Commercial Grade | 0 | 70 | ?C |
| Industrial Grade | -40 | +85 | ?C |
| Power consumption | |  | 2.0 | W |

**Table 6**: Operation conditions of 25 Gbps MWDM optical transceiver

Industrial grade and commercial grade are required for MWDM optical transceivers applied in an outdoor and indoor scenario, respectively.

### DWDM

For 4G/5G fronthaul, the optical interfaces are mainly based on the CPRI and eCPRI protocols, and have the following basic features **(Tables 7, 8, 9, 10):**

* + - * Power Consumption
      * Temperature Specifications
      * 10 Gbps BiDi Optical Transmitter Parameters
      * 25 Gbps Duplex Optical Transmitter Parameters

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Parameter** | | **Min.** | **Max.** | **Unit** |
| Operating Case Temperature | Commercial Grade | 0 | 70 | ?C |
| Industrial Grade | -40 | +85 | ?C |
| Power consumption | |  | 2.5 | W |

**Table 7:** Operation conditions of 10 Gbps and 25 Gbps DWDM transceiver

###### 10G Duplex

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Parameters** | **Units** | **Proposed values** | **Proposed values** | **Proposed values** |
| Target fiber reach | km | 10 | 15 | 20 |
| Fiber type | - | G.652 | G.652 | G.652 |
| Maximum pre-FEC bit-error ratio | - | 1 x 10-12 | 1 x 10-12 | 1 x 10-12 |
| Maximum Power Consumption | W | 2.5 | 2.5 | 2.5 |
| Transmitter | | | | |
| Transmitter data rate | Gb/s | 9.95 - 10.31 | 9.95 - 10.31 | 9.95 - 10.31 |
| Transmitter central wavelength | nm | 1529.55 -1560.61 | 1529.55 -1560.61 | 1529.55 -1560.61 |
| Transmitter Central Frequency | THz | 192.1 -196.0 | 192.1 -196.0 | 192.1 -196.0 |
| Channel Spacing | GHz | 100 | 100 | 100 |
| The maximum shift of center wavelength | nm | ITU +- 100 pm | ITU +- 100 pm | ITU +- 100 pm |
| Average output power | dBm | -1.0 +3.0 | -1.0 +3.0 | -1.0 +3.0 |
| Minimum extinction ratio | dB | 8.0 | 8.0 | 8.0 |
|  |  |  |  |  |
| Receiver | | | | |
| Receiver Damage Threshold 1 | dBm | +3.0 | +3.0 | +3.0 |
| Maximum receiver input 2 | dBm | -7.0 | -7.0 | -7.0 |
| Maximum receiver sensitivity 2 | dBm | -18.0 | -19.0 | -19.5 |
| 1. The receiver shall be able to tolerate the continuous injection of the average optical power without damage. 2. The receiver sensitivity includes the penalty of G.652 fiber at ER of 8.0 dB | | | | |

**Table 8**: 10 Gbps Duplex Optical Transmitter Parameters

###### 10 Gbit/s BiDi

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Parameters** | **Units** | **Proposed values** | **Proposed values** | **Proposed values** |
| Target fiber reach | km | 10 | 15 | 20 |
| Fiber type | - | G.652 | G.652 | G.652 |
| Maximum pre-FEC bit-error ratio | - | 1 x 10-12 | 1 x 10-12 | 1 x 10-12 |
| Maximum Power Consumption | W | 2.5 | 2.5 | 2.5 |
| Transmitter | | | | |
| Transmitter data rate | Gb/s | 9.95 - 10.31 | 9.95 - 10.31 | 9.95 - 10.31 |
| Transmitter central wavelength | nm | 1529.55 -1560.61 | 1529.55 -1560.61 | 1529.55 -1560.61 |
| Transmitter Central Frequency | THz | 192.1 -196.0 | 192.1 -196.0 | 192.1 -196.0 |
| Channel Spacing | GHz | 100 | 100 | 100 |
| The maximum shift of center wavelength | nm | ITU +- 40 pm | ITU +- 40 pm | ITU +- 40 pm |
| Average output power | dBm | +0.0 - +4.0 | +0.0 - +4.0 | +0.0 - +4.0 |
| Minimum extinction ratio | dB | 8.2 | 8.2 | 8.2 |
|  |  |  |  |  |
| Receiver | | | | |
| Receiver Damage Threshold 1 | dBm | +3.0 | +3.0 | +3.0 |
| Maximum receiver input 2 | dBm | -7.0 | -7.0 | -7.0 |
| Maximum receiver sensitivity 2 | dBm | -17.0 | -18.0 | -19.5 |
| 1. The receiver shall be able to tolerate the continuous injection of the average optical power without damage. 2. The receiver sensitivity includes the penalty of G.652 fiber at ER of 8.2 dB | | | | |

**Table 9**: 10 Gbps BiDi Optical Transmitter Parameters

###### 25 Gbps Duplex

|  |  |  |  |
| --- | --- | --- | --- |
| **Parameters** | **Units** | **Proposed values** | **Proposed values** |
| Target fiber reach | km | 10 | 15 |
| Fiber type | - | G.652 | G.652 |
| Maximum pre-FEC bit-error ratio | - | 5 x 10-5 | 5 x 10-5 |
| Maximum Power Consumption | W | 2.5 | 2.5 |
| Transmitter | | | |
| Transmitter data rate | Gb/s | 24.33 - 25.78 | 24.33 - 25.78 |
| Transmitter central wavelength | nm | 1529.55 -1560.61 | 1529.55 -1560.61 |
| Transmitter Central Frequency | THz | 192.1 -196.0 | 192.1 -196.0 |
| Channel Spacing | GHz | 100 | 100 |
| The maximum shift of center wavelength | nm | ITU +- 100 pm | ITU +- 100 pm |
| Average output power | dBm | 0.0 +3.0 | 0.0 +3.0 |
| Minimum extinction ratio | dB | 7.0 | 7.0 |
| Receiver | | | |
| Receiver Damage Threshold 1 | dBm | +3.0 | +3.0 |
| Maximum receiver input 2 | dBm | -7.0 | -7.0 |
| Maximum receiver sensitivity 2 | dBm | -17.0 | -18.0 |
| 1. The receiver shall be able to tolerate the continuous injection of the average optical power without damage. 2. The receiver sensitivity includes the penalty of G.652 fiber at ER of 7.0 dB | | | |

**Table 10:** 25 Gbps Duplex Optical Transmitter Parameters

The above recommendations for optical parameters apply to fixed wavelength and self/smart-tuning DWDM optical transceivers. For specifications specific to tunable and self/smart-tuning technologies please refer to the below references.

* Self/Smart-Tuning Wavelength: [2] STM MSA: "Technical specification for Smart Tunable Modules

### Phase 2 DWDM Tuneable Use Cases

In passive WDM, wavelength pairs self-tuning could be achieved through some mechanism (for example, the head end to tail end message channel(HTMC) and tail end to head-end message channel(THMC) specified in Recommendation ITU-T G.698.4) between the two tunable modules(TSFP28). And the tunable modules could be duplex or bi-directional using different Mux/Demux **(Figures 9 (a) and (b)).**

![](../assets/images/75563a2df825.png)

**Figure 9 (a, b)** Use Case of tunable DWDM in passive WDM.

In semi-active DWDM **(Figure 10 (a) (b))**, the wavelength pairs could be self-tuned through some mechanism(for example, the head end to tail end message channel(HTMC) and tail end to head-end message channel(THMC) specified in Recommendation ITU-T G.698.4) between the WDM equipment and tunable module(TSFP28), and also be configured from the WDM equipment network controller. And the tunable modules could also be duplex or bi-directional using different Mux/Demux.

![](../assets/images/37cf4afaa347.png)

**Figures 10 (a,b)** Use Case of tunable DWDM in semi-active WDM.

Active DWDM **(Figure 11 (a) (b))**, the wavelength pairs could be self-tuned through some mechanism (for example, the head end to tail end message channel(HTMC) and tail end to head-end message channel(THMC) specified in Recommendation ITU-T G.698.4) between the two WDM equipment, and also be configured from the WDM equipment network controller. And the tunable modules in WDM equipment could also be duplex or bi-directional using different Mux/Demux.

![](../assets/images/60111d91c6f1.png)

**Figure11 (a and b)** Use Case of tunable DWDM in active WDM.

### Phase 3 DWDM Smart-Tunable MSA

<https://www.smarttunable-msa.org/>

The SmartTunable MSA seeks to establish a standardization for self-tuning algorithms within wavelength tunable transceivers such that product from different vendors will interoperate and self-tune properly. Currently, multiple proprietary Self-Tuning Optic (STO) schemes are being implemented by various transceiver suppliers, however none of these will work appropriately with each other. This MSA provides a technical framework for allowing customers to multisource their wavelength tunable transceivers with compatible STO functions.

### Phase 4 DWDM SmartTunable MSA

The SmartTunable MSA has gained interest by many operators (listed below).

![A group of logos with text  Description automatically generated](../assets/images/19f98f85cb90.jpg)

*Note: Nokia is in the process of joining the MSA.*

The MSA has completed the interoperability specification for the 10Gbps optical transceivers. The following link is the specification (note: future revision will require going to the MSA site mentioned in section 4.1.4 to download the latest version.)

SmartTunable MSA 10Gbps Specification

<https://www.smarttunable-msa.org/wp-content/uploads/2022/03/Self-Tuning-Optics-Interoperability-V1p0.pdf>

ORAN phase 4 document update communicates the above MSA spec as the recommendation to all self-tunable optical suppliers to comply with this spec to ensure vendor interoperability and standard tuning methodology.

Ongoing work with the SmartTunable MSA focuses on 25Gbps optical transceivers targeted to complete in 2024.

### Phase 5 MOPA Updates

Led by Stefan (Ericsson)

This is a summary of the recent relevant work and results from MOPA (see technical papers 3.0 and 3.1: https://mopa- alliance.org/papers-and-presentations/):

**Optical pluggable performance for tight synchronization:** This area has move into a separate paper provide more flexibility and also reduce the page count of the main paper. An additional stand-alone paper in the 3.1 release features "Implementation considerations about FEC and MII extenders for "tight sync"". This paper deals with the tight sync complexities related to new work in IEEE 802.3 regarding Ethernet frame manipulations, such as MII extenders and segmented FEC, which is particularly relevant for coherent modules. The paper reviews the associated risks and, referencing the ongoing standardization discourse, highlights some principles that can be used to manage such risks during device design, with the objective to enable (coherent) pluggable optics to meet the more stringent pluggable accuracy classes defined in the above-mentioned paper.

**Coherent lite for mobile networks**. Also this area has been pulled out from the main paper into a separate paper. This work manly investigates using coherent technologies (standardized in IEEE Std. 802.3-2022 100GBASE-ZR and ITU-T Recommendations G.709.2 / G.698.2, etc.) for CRAN DWDM blueprints extending to 100 Gbps per channel and beyond, which is effective in overcoming the chromatic dispersion limits of IM-DD systems (see below for long reach DWDM). Of particular focus is adopting coherent systems for bidirectional trunks, while still using the same laser for both Tx and local oscillator to keep the optical module power consumption reasonable for mobile equipment. The backscattering and reflections penalties are experimentally explored, and further work is outlined.

**LWDM:** to address the need for fiber lean and cost-effective solutions, a new LWDM blueprint for 10 Gb/s and 25 Gb/s 15 km, suitable for CRAN, is introduced. Also 15 km for 100 Gbps has been investigated and seems doable.

**Longer reach DWDM**: Drive by operator demand for long reach optical solutions for CRAN, solutions and alternatives for 30-40 km IM-DD DWDM has been investigated. Both C-band and O-band solutions have been included. While 10 Gbps solutions are relatively straightforward, plausible candidates for 25 Gbps include 40 km DWDM in C-band using advanced electronic dispersion compensation (EDC) where one of the main questions is the possibility of meeting the 2.5 W requirement for I-temp SFP28.

**LLS optical link data rate auto-negotiations** is introduced with motivation and possible solutions are discussed on a high level.

**Cloud RAN optics**. This area is introduced with a high-level description and summarized responses from a MOPA Operator Advisory Board questionnaire. The results point to strong operator interest for a range of blueprints including both DRAN and CRAN, with bidi, DWDM and packet aggregation technologies. Another result indicates that the data rate outlook is relatively short term.

**Retimed and linear optics for 100 Gbps SFP112**: new work makes a high-level overview of retimed and linear implementations and summarizes responses from the MOPA members on SFP112 implementations. The results point to FR, LR, ER and bidi SFP112 being available in the next years primarily in re-times variants as the linear implementations so far seem fewer.

### Phase 5 Beyond 25G WDM

Recently, ITU-T has consented and released two new recommendations for multichannel WDM applications with single-channel optical interfaces in the O-band, G.698.5 and G.698.6. Both recommendations define and provide values for optical interface parameters of point-to-point WDM applications on over a single fiber link at up to 25 Gbit/s per channel. G.698.5 defines a nominal optical channel frequency spacing of 800 GHz (leveraging LAN-WDM), while G.698.6 defines alternating channel wavelength spacing of 7 nm and 13 nm in the O-band, equivalent to the MWDM solution in this specification. These recommendations do not contain optical amplifiers. G.698.6 is now supporting line rates at 50 Gbit/s and 100 Gbit/s. ITU-T has also consented a ITU-T recommendation G.9802 about "Wavelength division multiplexed passive optical networks (WDM PON)" but with 25Gbit/s maximum line rate per wavelength carrier.

However, as of today, WDM transceiver technology beyond 25 Gbit/s per channel is still under development or study. The industry has largely adopted PAM-4 modulation format for 50 Gbit/s and even 100 Gbit/s per lane. At such a high baud rate (i.e. higher than 25 GBd/s), chromatic dispersion penalty becomes more severe, and therefore, O-band or the wavelengths closer to the zero-dispersion window is used for transmission. Also, unlike the gray optics commonly used for intra-datacenter, the fronthaul needs at least two different wavelengths to enable bidirectional single-fiber working. In this regard, there are few industrial standards that might be leveraged:

* IEEE 802.3cp (50GBASE-BR10/20/40) which is designed for BiDi transmission over specific reaches but only a single pair
* IEEE 802.3dk (100GBASE-BR) which is still under draft for up to 40km BiDi transmission at 100 Gbit/s
* 100G Lambda MSA which defines 100G PAM-4 optical signaling and encoding, FEC and link characteristics for 100G and 400G applications using 100Gb/s per optical channel for 2km and 10km reaches.

These aforementioned specifications may also potentially adopt the LAN-WDM grids, or even tighter ones, but this will require further study on the respective link characteristics. ITUT G.9804 series (50G HS-PON) which offers another alternative point-to-multipoint access beyond 25G for x-haul transport. The TWDM favors (eg. based on NG-PON2) is also an option for 50G HS-PON with presently limited implementation. There are many ongoing research in this area, and this also remains for further study in this specification.

On the other hand, with the huge success of coherent 400G transceiver adoption, the industry has already started evaluating and standardizing coherent 100G for optical access, including RAN transport. In this case, coherent technology enabled by merchant DSP chips and photonic integration has better performances in terms of reach and link budget. For instance,

* IEEE 802.3ct (100GBASE-ZR) defines a coherent DP-DQPSK 100G per channel interface in the C- band DWDM grids over 80 km. The current commercial solutions offer also tunability, flexgrid, and even ZR+ reach (more than 80 km), in either QSFP28 or QSFP-DD form factor today.
* CableLabs Coherent PON (CPON) is an ongoing standardization to define a coherent 100G T(W)DM point-to-multipoint PON in the C-band, with 35 dB link budget for long reach and high splitting ratio, also potentially WDM stacking (i.e. multiple PONs over a single fiber strand).
* ITU-T Q2/SG15 G.VHSP is similarly also exploring coherent technologies for 200G PON, at the moment considering both IM-DD and coherent approaches.
* The Open XR Optics Forum is the multi-source agreement (MSA) working group for XR optics, this industry's forum dedicated to point-to-multipoint with coherent pluggable transceiver technology.

It is not yet clear how these coherent optical access technologies can be adapted to the O-RAN x-haul transport, and it remains interesting for future considerations.

## Multiplexer / Demultiplexer Technical Requirements

The xWDM multiplexer and demultiplexer modules based on free-space cascaded thin-film filters or array waveguide grating technology shall be entirely passive and have high-temperature stability over the entire operating temperature range.

### MWDM

Cascaded Thin Film Filter (TFF) is applied for the MWDM multiplexer and demultiplexer at the O-RU side and the O-DU side. As the optical power budget including TDP between MWDM channels from 1260 nm to 1380 nm is quite different, the sequence of filters can be divided into several series or series-parallel groups, according to the power budget of each channel where the central wavelength of the filter is located, resulting in unequal paired insertion loss of filters in different groups and equal paired insertion loss of series filters in each group (shown in **Figure 12).** The total optical power budget of each MWDM channel based on unequal paired insertion loss scheme should be less than or equal to that of equal paired insertion loss scheme. The difference in optical power budget between MWDM channels should be less than 1 dB.

![TFF filter.png](../assets/images/74d87ec28dd0.jpg)

**Figure 12:** Cascaded TFF-based MWDM multiplexer and demultiplexer

The optical parameters of a 12-channel MWDM multiplexer and demultiplexer are shown in **Table 11**. The central wavelength spacing of MWDM channels for the multiplexer/demultiplexer is 10nm. The central wavelength of the bandwidth for the multiplexer/demultiplexer is 1.5 nm away from the central wavelength of the MWDM channel where the multiplexer/demultiplexer is located.

|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Parameters** | | Unit | **Proposed values** | | | | | | | | | | | |
| Central wavelength | | nm | 1267.5 | 1274.5 | 1287.5 | 1294.5 | 1307.5 | 1314.5 | 1327.5 | 1334.5 | 1347.5 | 1354.5 | 1367.5 | 1374.5 |
| The maximum shift of central wavelength | | nm | +- 1.2 | | | | | | | | | | | |
| 1 dB bandwidth | | nm | >= 5.0 | | | | | | | | | | | |
| Passband flatness a | | dB | <= 0.5 | | | | | | | | | | | |
| Maximum Insertion loss @ O-RU+O-DU pairs, including the IL of an optical splitter  a | | dB | 6.1 | 6.1 | 6.1 | 6.1 | 6.1 | 6.1 | 4.5 | 4.5 | 3.0 | 3.0 | 3.0 | 3.0 |
| Maximum insertion loss @ O-RU side | | dB | 3.0 | 2.8 | 3.2 | 2.6 | 3.4 | 2.4 | 2.2 | 2.0 | 1.5 | 1.2 | 1.7 | 1.0 |
| Maximum insertion loss @ O-DU side | without the IL of an optical splitter | dB | 2.8 | 3.0 | 2.6 | 3.2 | 2.4 | 3.4 | 2.0 | 2.2 | 1.2 | 1.5 | 1.0 | 1.7 |
| with the IL of an optical splitter | dB | 3.1 | 3.3 | 2.9 | 3.5 | 2.7 | 3.7 | 2.3 | 2.5 | 1.5 | 1.8 | 1.3 | 2.0 |
| a. For the scene of the multiplexer and demultiplexer integrated an optical splitter, the maximum additional flatness of the splitter is 0.4 dB. | | | | | | | | | | | | | | |

**Table 11:** Optical parameters of 12-channels MWDM multiplexer and demultiplexer

The multiplexer and demultiplexer shall support the LC fiber connectors. IP-65 requirements for waterproof and dustproof at the O-RU side should be satisfied.

### DWDM C-Band Example of a BiDi 40 Channel 100Ghz Mux/Demux

The optical parameters of a 40-channel DWDM multiplexer and demultiplexer are shown in Table 10. The central wavelength spacing of DWDM channels for the multiplexer/demultiplexer is 0.08 nm. The use case for the BiDi 40 Channel 100GHz Mux/Demux is ideal to implement 10G DWDM Bidi optical transmitters and 25G Duplex optical transmitters **(Table 12).**

![Table  Description automatically generated](../assets/images/798d405e5706.jpg)

**Table 12:** 25 Gbps Duplex Optical Transmitter Parameters

The tributaries of bi-directional multiplexer and demultiplexer could be a dual interface or bi-directional, examples are shown in **figure.13**. For dual interface multiplexer and demultiplexer **(figure13 (a)),** each tributary interface is unidirectional for a single wavelength. For bi-directional, it could be achieved by cyclic FSR **(figure13(b))** or the band filters contained in the devices (**figure 13(c)).**

![](../assets/images/1268f499f1a9.png)

**Figure 13 (a, b, c):** Examples of bi-directional DWDM multiplexer and demultiplexer The multiplexer and demultiplexer shall support the LC fiber connectors.

## Phase 2 WDM >10 km link Budget 25G

### Phase 2 MWDM

The optical parameters of the 25 Gbps 15 km MWDM optical transceiver are shown in **Table 13**. Here, APD is used for a higher optical power budget introduced by TDP and DML can still be used at low cost. For a 20 km application, the MWDM solution would be discussed, such as EML may be used to reduce TDP.

|  |  |  |  |
| --- | --- | --- | --- |
| **Parameters** | | **Units** | **Proposed values** |
| Target fiber reach | | km | 15 |
| Fiber type | | - | G.652.D |
| Maximum Pre-FEC bit-error ratio | | - | 5 x 10-5 |
| Optical parameters of the transmitter | | | |
| Transmitter central wavelength | O-RU side | nm | 1274.5; 1294.5; 1314.5;  1334.5; 1354.5; 1374.5 |
| O-DU side | 1267.5; 1287.5; 1307.5;  1327.5; 1347.5; 1367.5 |
| Maximum shift of central wavelength | | nm | +- 2.5 |
| Maximum spectral bandwidth ( -20 dB) | | nm | 1.0 |
| Average output power | | dBm | 1267.5 nm~ 1314.5nm: 2.0 ~ 7.0  1327.5nm ~ 1374.5nm: 3.75~ 7.0 |
| Minimum output power@ Optical Modulation Amplitude (OMA) | | dBm | 1267.5 nm~ 1314.5nm: 1.0  1327.5nm ~ 1374.5nm: 2.75 |
| Maximum Transmitter and Dispersion Penalty (TDP) | | dB | 1267.5 nm~ 1314.5nm: 1.0  1327.5nm ~ 1334.5nm: 4.5  1347.5nm~1354.5nm:6.0  1367.5 nm~ 1374.5nm: 7.0 |
| Minimum extinction ratio | | dB | 3.5 |
| Optical parameters of the receiver | | | |
| Receive wavelength range | | nm | 1260.0 ~ 1620.0 |
| Minimum receiver overload a | | dBm | APD: -4.0 |
| Maximum receiver sensitivity b | | dBm | APD: -18.0 |
| Maximum receiver sensitivity@OMA b | | dBm | APD: -19.0 |
| 1. The receiver should tolerate the continuous injection of the average optical power without damage. 2. The receiver sensitivity includes the penalty of OAM modulation. | | | |

**Table 13:** Optical parameters of 25 Gbps 15 km MWDM optical transceiver

### Phase 2 DWDM

Phase 2 will address the following additional aspects of <10 km DWDM transmission in support of 5G RAN architectures.

Phase 2 will focus on 25bps line rate DWDM optical transmission. Currently standards for 10Gbps optical transmission support >10 km (i.e. up to 80 km without regeneration. Latency budget is the limiting restriction to 15-20 km.)

* DWDM Link Budget
  + Dispersion Compensation
  + Optical Losses
  + Optical Launch Power
  + Optical Receiver Power
  + Spectrum/Channel plan
  + Modulation

![](../assets/images/9af8f6b41f7d.png)

**Figure 14:** Dispersion distance by line rate

![](../assets/images/e7b36ad6b019.png)

**Figure 15:** Example of loss contributors

The optical link budget for DWDM over single-mode fiber (G.652). Here, the fiber loss is ~0.3 dB/km, the loss of each connector is ~0.5 dB, and the passive mux loss assumption**. (Table 14)**

|  |  |  |
| --- | --- | --- |
| **Parameters** | 10 km | 15 km |
| fiber loss | 3.0 dB | 4.5 dB |

|  |  |  |
| --- | --- | --- |
| Connector loss (depending on Interoffice wiring) | ~2 dB | ~2-3 db |
| Mux loss (<3.5 db per Mux for AWG) | 7 db | 7 db |

**Table 14**: Assumed DWDM loss over SMF

###### 25 Gbps Duplex

Phase 1 link budget previously documented supports the increased distance to 15 km with a 17 db link budget as it pushes the limitation of chromatic dispersion penalties. The only required change is to increase the power consumption by 2.5W. **(Table 15 and 16)**

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Parameter** | | **Min.** | **Max.** | **Unit** |
| Operating Case Temperature | Commercial Grade | 0 | 70 | ?C |
| Industrial Grade | -40 | +85 | ?C |
| Power consumption | |  | 2.5 | W |

**Table 15:** Operation conditions of 25 Gbps DWDM transceiver

|  |  |  |
| --- | --- | --- |
| **Parameters** | **Units** | **Proposed values** |
| Target fiber reach | km | 15 |
| Fiber type | - | G.652 |
| Maximum pre-FEC bit-error ratio | - | 5 x 10-5 |
| Maximum Power Consumption | W | 2.5 |
| Transmitter | | |
| Transmitter data rate | Gb/s | 24.33 - 25.78 |
|  |  |  |
| Transmitter central wavelength | nm | 1529.55 -1560.61 |
| Transmitter Central Frequency | THz | 192.1 -196.0 |
| Channel Spacing | GHz | 100 |
| The maximum shift of center wavelength | nm | ITU +- 100 pm |
| Average output power | dBm | 0.0 +3.0 |
| Minimum extinction ratio | dB | 7.0 |
| Receiver | | |
| Receiver Damage Threshold a | dBm | +3.0 |
| Maximum receiver input b | dBm | -7.0 |
| Maximum receiver sensitivity b | dBm | -17.8 |
| 1. The receiver shall be able to tolerate the continuous injection of the average optical power without damage. 2. The receiver sensitivity includes the penalty of G.652 fiber at ER of 7.0 dB | | |

**Table16:** 25 Gbps Duplex Optical Transmitter Parameters

Duplex C-Band DWDM wavelength allocation requirements are to follow the ITU 100 GHz grid specified in ITU-T G.694.1 [1]. Wavelength range 1529.55 - 1560.61 nm provides 40 ITU channels 21-60 that can be allocated to support optical transmission **(Table 17).**

![](../assets/images/b605f00b1f4f.png)

**Table 17:** Nominal ITU-T G.694.1 for 100Ghz 40 channel Plan

![](../assets/images/4ef618a0b1be.jpg)

**Figure 16:** Example of attenuation and dispersion by wavelength

It is worth noting that with some recent product development, both electrical dispersion compensation (EDC) and higher-order modulation (e.g. PAM-4) are able to extend the transmission reach to 20-40km. The former equalizes the electrical signal in the digital signal processing (DSP), while the latter reduces the effective baud rate to mitigate the dispersion penalty. The detailed link characteristics for interoperability are under further study.

## Phase 2 Optical Power Consumption

Phase 2 will address the following additional aspects of optical transmitter power consumption in support of 5G RAN hardware components (i.e. TRP, DU...).

* Thermal requirement
* Thermo Electric Cooler (TEC)
* Optical Transceiver function (Disp. Comp, Tuning....)
* Line Rate
* Form Factor

Based on the current thermal requirements the following power consumption still stands as the max recommended target for SFP28 and QSFP28 optical transceivers. This power consumption supports WDM wavelengths covered across CWDM and DWDM solutions and typical optical features for <15 km use cases. The recommendation ensures peak power consumption during a -40?C cold start. **Table 18**

|  |  |  |  |
| --- | --- | --- | --- |
| **Parameter** | **Min.** | **Max.** | **Unit** |
| Commercial Grade | 0 | 70 | ?C |
| Industrial Grade | -40 | +85 | ?C |
| Power consumption |  | 2.5 | W |

**Table 18:** Thermal Requirements

## Phase 2 Optical Interfaces

The purpose of this section is to summarize optical pluggable variants that support the Xhaul needs.

**Table 19** below describes the variants**.**

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Form factor | Data rate (Gb/s) | Max power (W) | Operating temp (?C) | Standard |
| SFP | 1.25 | 1.5 | I-temp | SFF MSA |
| XSFP | 16 | 3.5 | C-temp | SFF MSA |
| SFP+ | 14 | 2 | I-temp | SFF MSA |
| SFP28 | 28 | 2.5 | I-temp | SFF MSA |
| SFP-DD/SFP- 56 | 100 | 2.5 | C-temp |  |
| QSFP+ | 40 | 3.5 | E-temp | SFF MSA |
| QSFP28 | 100 | 4.5 | E-temp | SFF MSA |
| QSFP-DD | 400 | 12 | C-temp | QSFP-DD MSA |

**Table 19:** Optical pluggable variants Form formats of transceiver that are expected to be supported by O-RU:

* SFP+
* SFP28
* 40G QSFP+
* QSFP28 (50Gbps)

However, today the bidirectional pluggable interface is only available for up to 25 Gbit/s. 50 Gbit/s is for further study at ITU-T Q.2/SG15. There is no working item for 100 Gbit/s at IEEE nor ITU-T.

Regarding variable QSFP form factors, **Table 20** below lists the respective specifications.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Variant | Fiber type | Wavelength | Reach |  |
| DRx | MPO SMF |  | 500 m |  |
| FRx | Duplex SMF |  | 2 km |  |
| LR4 | Duplex SMF | 1295-1310 nm | 10 km |  |
| ER4 | Duplex SMF | 1295-1310 nm | 40 km |  |
| ZR | Duplex SMF | O- or C-band | 80 km |  |
| PSM4 | MPO SMF | 1295-1325 nm | 500 m |  |
| CWDM4 | Duplex SMF | 1270-1330 nm | 2 km |  |
| 4WDM10 | Duplex SMF | 1270-1330 nm | 10 km |  |
| 4WDM20 | Duplex SMF | 1295-1310 nm | 20 km |  |
| 4WDM40 | Duplex SMF | 1295-1310 nm | 40 km |  |

**Table 20:** QSFP form factors

## Phase 2 Single and Duplex fiber solutions

Passive WDM based on MWDM, CWDM, and DWDM grid for 1G, 10G, and 25G can be deployed in the following single and duplex fiber solutions, which can be applied to active, semi-active, or passive WDM systems. **(Figure 17-1,2,3)**

###### Duplex fiber

The transceivers used in such a solution have the duplex fiber interface, and de- and mux filters are connected with duplex fiber strands for up- and downstream. Commonly up- and downstream use the same optical wavelength.

...

|  |  |  |
| --- | --- | --- |
|  | |  |
|  | Plug | |
| O-DU | | ... |
|  | Plug | |
|  | |  |

**Figure 17-1:** Duplex fiber working with duplex transceivers

![](../assets/images/f813cbd9c8ea.png)![](../assets/images/d4a1ffb4570c.png)![](../assets/images/6fc29dee9f48.png)![](../assets/images/f69e963b52c7.png)

O-RU

O-RU

...

Plug

Plug

O-RU

Plug

O-RU

Plug

###### Single trunk fiber

The transceivers used in such a solution have the duplex fiber interface, but de- and mux filters are connected with a single fiber strand for up- and downstream. Commonly up- and downstream use two separated wavelength sub-bands, but interleaving odd and even wavelength channels for up- and downstream is also possible.

![](../assets/images/2ee9f00d5931.png)![](../assets/images/f69e963b52c7.png)

O-RU

O-RU

...

Plug

Plug

...

|  |  |  |
| --- | --- | --- |
|  | |  |
|  | Plug | |
| O-DU | | ... |
|  | Plug | |
|  | |  |

**Figure 17-2:** Single fiber working with duplex transceivers

O-RU

Plug

O-RU

Plug

###### Bidi-fiber

The transceivers used in such a solution have the sinplex fiber interface (BiDi), and de- and mux filters are also connected with a single fiber strand for up- and downstream.

...

|  |  |  |
| --- | --- | --- |
|  | |  |
|  | Plug | |
| O-DU | | ... |
|  | Plug | |
|  | |  |

**Figure 17-3:** Single fiber working with BiDi transceivers

![](../assets/images/2ee9f00d5931.png)![](../assets/images/f69e963b52c7.png)

O-RU

O-RU

...

Plug

Plug

O-RU

Plug

O-RU

Plug

Note: each filter port of the WDM de- and mux passes both up and downstream wavelength. In case the pluggable does not support the bidi interface, it is possible to use a patch cord diplexer to couple both transmitter and receiver connectors to a single distribution fiber, to be connected to the WDM de-/mux filter.

## Phase 3 Optical Link Budget

### Phase 3 MWDM Link Budget

The link budget of MWDM for 10-km. 15-km, 20-km are shown in Table 21. In this way, DML-based MWDM can satisfy 15km application with low-cost for majority scenario and EML-based MWDM can satisfy 20km application with more cost. Use cases can be seen in Appendix A.

|  |  |  |  |
| --- | --- | --- | --- |
| Distance | 10km | 15km | 20km |
| Link Budget | 15 dB | 21.75 dB | 21 dB |

**Table 21:** MWDM Link Budget

### Phase 3 DWDM Link Budget

Current available tunable and fixed wavelength pluggable optics allow up to a 15km reach at 25Gb/s using NRZ modulation. In order to extend this reach to 20km or more, advance modulation techniques or a different technology needs to be employed.

For instance, PAM-4 modulation can be used to keep the native data rate to 12.5Gbd to allow reaches at 40km or more. This can be achieved by using a linear laser driver on the transmit side and linear TIA on the receive side. However, this would require that the host and remote equipment contain the necessary ICs to encode and decode the PAM-4 modulation.

Another potential solution would be to jump right to 100Gb/s using a low cost Coherent pluggable (such as a QSFP28- DCO). This product would fit directly into available QSFP sockets and could transmit over several hundred km (with

amplification). The downside to this approach is that the power consumption would be ~5W and the cost would be 2x- 3x the cost of DWDM 25Gb/s optics.

# System Function and Performance Requirements

## Latency and jitter

The one-way frame latency values in this sub-section were previously discussed in the "Xhaul Transport Requirements" document section 7.2 Table 3. For legacy Fronthaul, we propose to consider the Next Generation Mobile Networks (NGMN) Alliance document "FRONTHAUL REQUIREMENTS FOR C-RAN", 31 March 2015, version 1.0.

A sub-section about latency asymmetry is not included in the "Xhaul Transport Requirements" of O-RAN WG9. The following specifications are derived from this document.

Latency asymmetry between the downlink and uplink fronthaul will exist. This latency asymmetry could be caused by:

* difference of optical fiber lengths when uplink and downlink use separate fibers (i.e. 7 m of ITU-T G.652 single-mode fiber approximatively corresponds to a 34 ns delay)
* difference of wavelength propagation times when wavelengths are not similar for uplink and downlink (typically 1.3 um and 1.55 um wavelength diplex causes a ~33 ns time difference over 20 km of standard single-mode fiber ITU-T G.652). In particular, in the case of an ITU-T G.652 compliant fiber, the group delay at the applicable wavelengths can be calculated making use of the Sellmeier equations as described in [b-ITU-T G.652].
* difference of processing time (including functions such as time multiplexing, encapsulation, compression, and Forward Error Correction (FEC)) at the Transport Network Equipment (TNE).

Other transport functions could contribute to latency asymmetry. We propose to consider fronthaul latency asymmetry with and without positioning service based on time measurement**. (Table 21)**

|  |  |
| --- | --- |
| Network latency asymmetry up & down- link fronthaul | 4G & 5G without radio positioning based on time measurement |
| Legacy fronthaul (CPRI) | O-DU could compensate this asymmetry for known value in the margin of +/- 10 000 ns |
| O-RAN fronthaul | O-RAN WG4 proposes absolute and relative time error margin to fiber asymmetry in annex H of WG4.CUS.0-v03.00 |

**Table 21:** Network latency asymmetry up & down-link fronthaul without radio positioning

We have also to consider mobile positioning. Positioning technologies for mobile devices become even more important for future connected digital applications in production, logistics, security, emergency services, and vehicular use cases. 5G and 6G should enable, and improve if suitable, state-of-art positioning techniques that are embedded or not in Radio Access Network systems (RAN-embedded and RAN-external respectively).

For 5G, the impact of mobile positioning is defined in a different 3GPP release:

* Rel15: No localization for 5G stand alone. In non-stand-alone (4G&5G), 4G localization is used based on the existing Time Difference of the Arrival method
* Rel16 (June 2021): 5G stand-alone with localization based on OTDOA and UTDOA\* with required precision:
  + Localization <0.5 m (<2,5 ns)
  + Speed: <500ms
* Rel17 (Sept 2021) more stringent requirement for localization
  + <1 m (<5 ns) form mass market
  + <0.2 m (<1 ns) for Industrial IoT (speed < 10ms)

In this WDM Xhaul specification, we have focused our interest on RAN-embedded technologies with techniques based on Cell-ID, Enhanced Cell-ID, downlink angle of departure, uplink angle of arrival, multi-cell round trip time, and down- & up-link time difference of arrival. Positioning techniques based on time difference are the most common solutions and embedded the difference of time-delays in the fronthaul interface.

The downlink time-based positioning techniques of User Equipment (UE) devices take advantage of the timing difference between several neighbors Digital Units (DU) and the UE to calculate the distance by estimating the Time Of Arrival (TOA) or Time Difference Of Arrival (TDOA) of specific radio signals. The Positioning Reference Signals (PRS) are initialized by the Radio Resource Control (RRC) layer at the CU concerning the associated DU where time stamping is achieved. The UE measures with multiple iterations the Reference Signal Time Difference (RSTD) between a pair of CUs and DUs corresponding to these PRS. In other words, RSTD corresponds to the difference of flight time between two cell sites (CU&DU) for the UE. The PRS crosses the mid-haul and fronthaul segments, the RU itself, and the air segment before reaching the UE.

For 5G and 6G fronthaul supports P2P/SyncE to achieve phase/time synchronization at RU. In this case, a one-way measurement is possible because DU and RU are synchronized with a relative Time Error (TE) with Primary Reference Time Clock (PRTC). The fronthaul asymmetry is considered part of the contribution to the TE that must be below the required RSTD resolution. Three points must be noted: the fronthaul measurement is performed by the Control-Plane, the synchronization has its dedicated Sync-Plane, and finally, the PRS is embedded in the radio resource element map in the User-Plane. Due to these different references at different levels, the time of the fronthaul measurement and PRS transmission could differ**. (Table 22)**

|  |  |  |  |
| --- | --- | --- | --- |
| Unit (ns) | 4G | 5G FR1 | 5G FR2 |
| Ts | 32.6 | *8.1* | *2* |
| RSTD  resolution | 32.6 | *8.1* | *2* |
| RSTD accuracy | ? 130 | *?* *32.6* | *?* *8,1* |

**Table 22:** RSTD timing values standardized for 4G and calculated for 5G

For 5G fronthaul, the relative and absolute fiber asymmetry is defined below the required RU TE (based on Sync. plane) which must be also below the RSTD resolution. Presently, O-RAN specification proposes relative TE margins to take into account transport asymmetry between 12 and 60 ns depending on synchronization features. But these specifications are proposed while excluding TDOA applications. We can consider those requirements without radio positioning thus as the minimum requirements for supporting radio positioning based on time measurements. **(Table 23)**

|  |  |  |  |
| --- | --- | --- | --- |
| Network latency asymmetry up & down- link fronthaul | With radio positioning service based on time measurement | | |
|  | 4G | 5G FR1 | 5G FR2 |
| Legacy fronthaul (CPRI) | O-DU could compensate this asymmetry for known value in the margin of +/- 10 000 ns.  Latency network asymmetry < Observed Time Difference of Arrival (OTDOA) resolution 32.5 ns (or 16.2 ns)  The proposition of values by WG9   * For negligible impact on geolocation time measurement   Latency network asymmetry < 3 ns (10% of RSTD resolution)   * For residual impact on geolocation time measurement   Latency network asymmetry < 13 ns (10% of RSTD accuracy) | NA | NA |
| O-RAN  fronthaul | NA | To be discussed:  For negligible impact on geolocation time measurement O-RU |TE|  < 0.8 ns (10% of RSTD  resolution) with 0.2ns margin dedicated to fiber asymmetry  For residual impact on geolocation time measurement O-RU |TE|  < 3.3 ns (10% of RSTD  accuracy) with 1ns margin dedicated to fiber asymmetry | To be discussed:  For negligible impact on geolocation time measurement O-RU |TE|  < 0.2 ns (10% of RSTD  resolution) with 0.07ns margin dedicated to fiber asymmetry  For residual impact on geolocation time measurement O-RU |TE|  < 0.8 ns (10% of RSTD  accuracy) with 0.2ns margin dedicated to fiber asymmetry |

**Table 23:** Network latency asymmetry up & down-link fronthaul with radio positioning

Concerning jitter and wander, O-RAN transport considers two types of contributions:

* + - the Ethernet-type which corresponds to the packet delay variation
    - the physical layer-type which corresponds to the bit delay variation

For WDM fronthaul, only the "bit" jitter is considered. **Table 24** below presents the existing values for CPRI and must be completed for O-RAN fronthaul. The contribution of auxiliary physical channel (pilot tones) in an overlay of transmission channel must be considered.

|  |  |  |
| --- | --- | --- |
| Jitter (Bit) (without pilot tones) | 4G | 5G |
| Legacy fronthaul (CPRI) | CPRI (guided by electrical1 XAUI specifications (IEEE 802.3)) and Freq. deviation: +- 2 ppb (3GPP: 50ppb):   * RMS ? 1.8 ps * Peak-To-Peak ? 26 ps | NA |
| O-RAN fronthaul |  |  |

**Table 24:** Jitter recommendation for 4G and 5G (without pilot tones)

### Phase 2 Latency Asymmetry

Fronthaul transport delays could have propagation time asymmetry, wander and jitter, caused by:

* Difference of optical fiber lengths when uplink and downlink use separate fibers (7 m of standard single-mode fiber approximatively corresponds to a 34 ns delay),
* Difference of wavelength propagation times when wavelengths are not close for uplink and downlink (typically

1.3 um and 1.55 um wavelength diplex causes 33 to 49 ns time difference (in the function of fiber characteristic, cf. figure bellow) over 20 km of standard single-mode fiber ITU-T G.652). The choice of WDM technology spectrum location for DWDM, CWDM, MDWM, and others, has an impact on latency variation between wavelength channel pairs and between the wavelengths for up-and down-stream. In the Figure **Figure 18 (a)**, we plotted in the minimal, medium and maximal theoretical delay difference based on dispersion and group Delay third term Sellmeier calculations after transmission in 20 km of G.652 SSMF. The minimal and maximum are obtained with the worst and best cases material properties of the SSMF G.652. With this

![](../assets/images/4250ddb74582.png)![Graphical user interface  Description automatically generated](../assets/images/f2c0874587a4.png)

**Figure 18** (a) : Measured Latency and theoretical delay variations according to wavelengths transmitted in 20 km SSMF; (b) Mean delay variation with wavelength after 20 km SSMF and corresponding MWDM, CWDM and DWDM spectral ranges.

1 CPRI does not give the relevant base for optical interface (only for electrical interface)

theoretical approach, we estimate that a maximum delay variation of 20ns is expected for each wavelength of the C-band. Also, we noted that a minimum delay variation of 9 ns is expected between extreme C-band channels at 1529nm and 1565nm whereas the maximum difference could be 13ns for the worst case of fiber material. For a clearer results exploitation, the maximum theoretical delay curve is plotted in Figure 18 (b) with noted references to the identified WDM technologies spectral ranges. In the O-band, delays will remain low and the upstream/downstream wavelength pairing chosen by PtP and MWDM will induce propagation delay asymmetry that will remain below 2ns. That is compatible with the RSTD limitations for 4G and 5G FR1 for 5G FR2. However, for CWDM and DWDM the upstream/downstream wavelength pairing could induce high delay asymmetries. 68ns between 1311nm and 1611nm CWDM channels pairs or at the best case if two adjacent channels are chosen, 8ns delay asymmetry is expected which exceeds 5G-FR2 RSTD specifications. For 40 DWDM channels in the C-band, a maximum of 12ns delay asymmetry is estimated if wavelength pairs are chosen at the extreme ranges. Finally, the choice of adjacent DWDM channels pairs is required to maintain a downstream/upstream delay asymmetry below all RSTD specifications.

* The cable length variation is due to temperature changes (40ps/km/K is a typical value). So, for 10 km and a temperature variation of 10?C, we obtain a 4 ns delay variation (wander).
* The difference of processing time (including functions such as time multiplexing, encapsulation, compression, advanced modulation format) at the RAN equipment.

The most popular optical solution to support fronthaul is based on a direct fiber with two transceivers at the end faces. A single fiber bidirectional transceiver allows to simplify fiber operations and decrease the risk of latency asymmetry. When wavelength division multiplexing (WDM) technology is used to decrease the number of required fibers for multiple links, the network trunk (between multiplex and demultiplexer) could be based on single-fiber bidirectional.

### Phase 2 Latency Classification

Concerning fronthaul latency, several classes of latency have been proposed. All of them are targeted to support the mobile deployment in meeting the overall latency requirements, with considering leaving sufficient margin for mobile equipment processing. Now, in the function of radio (physical layer) performances (NR - New Radio for 5G), the fronthaul latency is defined in **Table 25**

|  |  |  |
| --- | --- | --- |
| **Latency fronthaul class** | **Maximum one-way frame delay performance/equivalent length of fiber** | **Use case** |
| **High25** | 25us / 5 km | Ultra-low latency performances |
| **High75** | 75us / 15 km | For full new radio (5G) performances with fiber lengths in 10 km range with active transport equipment and 15 km for passive WDM or dark fiber transmission. |
| **High100** | 100us / 20 km | For standard new radio (5G) performances with fiber lengths in 10km range with active transport equipment and 20 km for passive WDM or dark fiber transmission. |
| **High200** | 200us / 40 km | For installations with fiber lengths in 30km range with active transport equipment and 40 km for passive WDM or dark fiber transmission |
| **High500** | 500us | Large latency installations > 30 km |

**Table 25:** Fronthaul latency Source: O-RAN WG9 "Xhaul Transport Requirements For WDM Fronthaul, the main interests are High25, High75, and optionally High100

### Phase 3 Asymmetry with WDM

Signal processing chain and reboot of optical transceivers or their host line cards may introduce delay asymmetry between Tx and Rx, resulting in PTP time error. Generally there are two types of asymmetries that may occur in the optical transceiver, namely static asymmetry and dynamic (or semi-dynamic) asymmetry [REF: WG9 sync solution]. In case of using the DWDM optics based on intensity-modulation and direct-detection (IM/DD), only trivial static asymmetry can be foreseen, compared to other propagation delay asymmetry (e.g. fiber links, active or passive optical components, etc.). However, when considering more advanced WDM transceivers for higher capacity in the future, such as clock/data recovery (CDR), coherent transceiver or the ones involving digital signal processing (DSP), it is important to understand the additionally provoked dynamic asymmetry.

A typical DSP processing involves many functional blocks (e.g. channel equalization, frequency/phase correction, error correction, etc.) which need symbol retiming, the internal derived clock phase from the input signal may vary after each reboot. Such a dynamic asymmetry is difficult to estimate, and therefore often the worst dynamic asymmetry is assumed for the calculation of the time error budget.

To estimate and ultimately alleviate the asymmetry inside the optical transceiver, OIF's CFP2-DCO specification defines optional Tx/Rx clock monitor and offers a possibility to use a reference clock for transmitter path retiming [REF: OIF CFP2-DCO]. Similarly, QSFP-DD MSA specifies an optional ePPS/Clock PTP Reference Clock which is a programable timing and clock input for delay compensation within the module [REF: QSFP-DD MSA].

On the fiber link side, there are different considerations between dual-fiber working and single-fiber working:

###### Dual-fiber working delay asymmetry

upstream

downstream

MUX

DEMUX

Fiber

cut

![](../assets/images/44744c27bf4f.png)![](../assets/images/dd7c088b2dd6.png)![](../assets/images/a725a101eba9.png)![](../assets/images/dd7c088b2dd6.png)![](../assets/images/bcd644deb413.png)![](../assets/images/0da976ca7858.png)![](../assets/images/bcd644deb413.png)![](../assets/images/0da976ca7858.png)![](../assets/images/1f795f785e3b.png)![](../assets/images/d1c034b83545.png)![](../assets/images/7721db6c4f07.png)![](../assets/images/561c891a4abd.png)

DEMUX

MUX

upstream

downstream

**CD**

Same up- and downstream wavelength -> ?nmupstream- downstream = 0 nm

CD asymmetry =

?(MUX

fiberlength

-DEMUX

fiberlength)

Repair fiber

-

Repair fiber

10m = 50ns

?(MUXfiberlength-DEMUXfiberlength)

fiber dispersion . fiber length .

. 5ns/m

= ? ns

length length upstream downstream

= ?m \* 5ns/m

= ? ns

. 5ns/m

= ? ns

?nmupstream-downstream =

18 ps/(nm\*km) \* 15 km \* 0 nm

= 0 **ps**

###### Single-fiber working delay asymmetry

upstream

(DE)MUX

Fiber

cut

1650nm

(DE)MUX

**CD**

upstream

![](../assets/images/123ab2469362.png)![](../assets/images/dd7c088b2dd6.png)![](../assets/images/eb39aeb59bdd.png)![](../assets/images/0da976ca7858.png)![](../assets/images/45335dae28e2.png)![](../assets/images/2fb28181bbed.png)![](../assets/images/af91702c2993.png)

downstream

=

filter

?(MUX

downstream

-DEMUX )

Different up- and downstream wavelength, separated by 100GHz = 0.8nm

CD asymmetry =

?(MUXfiberlength-DEMUXfiberlength)

. 5ns/m

= ? ns

Repair fiber length upstream

= 0 ns

Repair fiber length downstream

No amp 0m = 0ns

Filter1fiberlength= Filter2fiberlength

= 0 ns

fiberlength

. 5ns/m

= ? ns

fiberlength

fiber dispersion . fiber length .

?nmupstream-downstream =

18 ps/(nm\*km) \* 15 km \* 10 nm = 2700 **ps**

**Calculated: 1.4 ns**

## Bit Errors

The following **Table 26** provides specifications about the Bit Error Rate and Frame Loss ratios limits

|  |  |  |
| --- | --- | --- |
| Bit Errors or Frame Loss | 4G | 5G |
| Legacy fronthaul (CPRI) | BER < 10-12 | NA |
| O-RAN  fronthaul | O-RAN WG9 "Xhaul Transport Requirements" section 7.2, Table 2 | |

## Protection

**Table 26:** BER and Frame Loss Ratio

The topic of protection was previously discussed in "transport requirements" of O-RAN WG9 section 11.1.5. A fronthaul solution should provide a 1:1 or 1+1 backup mechanism in case of fiber failure with passive, active, or semi-active dedicated equipment.

## Synchronization

WG9 is working on synchronization solutions for O-RAN networks and is expected to submit a document for approval by March 2021. The Open X-haul synchronization (sync) solution and architecture model enables operators to understand different synchronization options and deployment models and helps them to develop the right network sync model that can support the different 5G services and radio architectures.

WDM is layer 1 and is typically transparent to the RAN sync. The only time there may be an issue is in an asymmetric WDM ring architecture where there can be different fiber route lengths on north and south segments.

![](../assets/images/599e6785a454.png)

**Figure 19:** Asymmetric WDM ring architecture each WDM segment is a different fiber length

In an asymmetric WDM ring architecture, most WDM Active systems will have differential delay compensation that will enable all delays across the fiber segments to be equal. This will mitigate any sync issues contributed by an asymmetric environment. (**Figure 19)**

![](../assets/images/2d6337652351.png)

**Figure 20:** Point to Point WDM architecture one segment of fiber length

In a point-to-point architecture, the WDM solution will be transparent to the RAN synchronization (Wavelength pairing will not exceed the maximum delay asymmetry. (**Figure 20)**

### Phase 2 WDM delivery sync

It should be noted that the following solution of delivering PTP timing over WDM may be more applicable for x-haul transport networks, offering another alternative to guarantee timing accuracy over a longer timing delivery link from the core to radio sites. Specifically, the optical WDM transport technology can be considered to eliminate asymmetric delay by transmitting bidirectional PTP flows over closely spaced wavelengths using a common fiber and by compensating any residual static asymmetrical delay numerically.

The approach applies to passive and active WDM transmission, single and duplex fiber strands.

The two up-and-downlink wavelengths used by the bidi-SFP should be as close as possible to mitigate any latency asymmetry.

The T-GM (or PRTC/ePRTC) is located in the core or with O-CU, while a timing device at the O-DU (or CSR, HSR, or potentially O-RU) site feeds PTP packets to the O-DU (or CSR, HSR, or potentially O-RU) devices. It is possible that the timing device has multiple Ethernet ports to be connected with the respective devices**. (Figure 21)**

(or Active WDM, or O-RU)

![](../assets/images/7641cc9ec2f1.png)![](../assets/images/37d48cbe2f92.png)![](../assets/images/6d638f9cc6e2.png)![](../assets/images/ac6aa7cb8afd.png)![](../assets/images/3ff82d90042d.png)![](../assets/images/a732fee8acbc.png)![](../assets/images/3ff82d90042d.png)![](../assets/images/9d4ad81441a6.png)![](../assets/images/3ff82d90042d.png)![](../assets/images/a486f77e3a18.png)

T-BC

Device

T-GM

Device

Timing Device

O-DU

(or Active WDM, or HSR)

Bidi Plug

Bidi Plug

Plug

Plug

CSR

...

PTP packets

PTP packets

|  |  |  |
| --- | --- | --- |
|  | |  |
|  | Plug | |
| O-CU  (or Active WDM, or | | ... |
| HSR) | Plug | |
|  | |  |

**Figure 21:** Synchronization delivery over passive and active WDM transmission

Plug

Plug

All the aforementioned timing devices can be equipped with bidirectional transceivers for single fiber applications at a pair of alien wavelengths (i.e. not used by x-haul traffic flows) **(Figure 22)**. As such, the WDM Xhaul link delivers PTP flows at ultralow asymmetric delay over an integrated wavelength channel, because not only is the asymmetry of duplex fiber strands eliminated, but the PTP flows are also no longer congested with the x-haul traffic if the shared interface is unaware of PTP, which may lead to high packet delay variation.

O-band data

OSC

C-band data

Sync OTDR

1310

1550

1550

1610 1650

Wavelength

(nm)

**Figure 22:** Dedicated wavelength for PTP flows in addition to the data transmission bands The transmission delay in an optical fiber depends on the wavelength, i.e.

1 d?

D(?) =

l d?

where D is dispersion coefficient, l is fiber length, ? is group propagation delay, and ? is wavelength. The related constant time error (cTE) is half of the packet delay asymmetry, i.e.

cTE = ?BWD - ?FWD

2

where ? is an average delay in forward ?FWD and backward ?BWD direction.

Therefore, given a fiber link length of 50 km using alien PTP wavelengths at 1615nm and 1605nm, where the dispersion coefficient is about 18 ps/nm.km, the residual cTE is bounded to

cTE ?

50km

2

10nm

18ps

nm ? km

= 4.5ns

Such a PTP delivery over auxiliary WDM wavelengths can be also applied to a multi-hop x-haul transport, e.g. a chain of T-BCs (e.g. O-RAN LLS-C3 configurations), where the up-and downlink PTP wavelength can be alternated to compensate latency asymmetry. **(Figure 23)**

PTP over BiDi WDM

![](../assets/images/8e822e20c7ca.png)![](../assets/images/b58ddc8c3e70.png)![](../assets/images/d1ff1b531e30.png)![](../assets/images/40f7db50f2f8.png)![](../assets/images/a71bc185575e.png)![](../assets/images/54bf2df64e9c.png)![](../assets/images/8e822e20c7ca.png)![](../assets/images/a71bc185575e.png)![](../assets/images/0a9f23486fc5.png)![](../assets/images/ccd29298278e.png)![](../assets/images/8d41e3110eb2.png)![](../assets/images/2d08d6f8950f.png)![](../assets/images/1a3b35e7df28.png)![](../assets/images/8e822e20c7ca.png)![](../assets/images/a715c21d5924.png)![](../assets/images/b58ddc8c3e70.png)![](../assets/images/2d08d6f8950f.png)![](../assets/images/1a3b35e7df28.png)![](../assets/images/d1ff1b531e30.png)![](../assets/images/df87ddcf20f0.png)![](../assets/images/2d08d6f8950f.png)![](../assets/images/1a3b35e7df28.png)![](../assets/images/2d08d6f8950f.png)![](../assets/images/1a3b35e7df28.png)

?1

?2

?1

?2

T-GM

?2

T-BC

?1

T-BC

?2

T-BC

?1

T-BC

**Figure 23:** Up- and downstream wavelength alternating for PTP flows over multiple WDM hops

### Phase 2 OTDR-based latency characterization

In addition, optical time-domain reflectometry (OTDR) is a well-known method to measure the propagation delay between two fiber ends or between reflection or attenuation events in a fiber. An optical pulse with a length of typically between 3 ns and 10 us is transmitted into the fiber, and the reflected and backscattered optical signal fractions are received at the transmission end of the fiber as a function over time. As the propagation delay for the optical signals is the same in both transmission directions, the difference between the round-trip delays of the reflected signals from the fiber input and the fiber end is twice the propagation delay of the fiber. **(Figure 24)**

Round-trip time

![](../assets/images/b01c06898b44.png)![](../assets/images/6fa8f0428551.png)

Probe

Response

RU

![](../assets/images/3672fc138032.png)

|  |  |  |
| --- | --- | --- |
| CU |  | DU |
|  |

**Figure 24:** Fiber propagation delay measurement based on OTDR

OTDR

The tradeoff between accuracy (pulse width) and reach (receiving sensitivity):

* 3-5 ns pulse width to cover 0.5-2 km range
* 20 ns pulse width to cover 10 km range

The accuracy of the measurement is limited to a few nanoseconds due to the length of the test pulse. To achieve a sufficient signal-to-noise ratio, longer probe pulses are required for longer fibers with a higher loss. In an alternative OTDR implementation, a bit sequence at a rate of a few Gbit/s can be used as the test signal.

The reflected signals are cross-correlated with the transmitted bit pattern, improving the resolution of this correlation OTDR to less than 10 picoseconds. **(Figure 25-27)**

![](../assets/images/02cfdce44384.png)![](../assets/images/634f0b8b425a.png)

RU

OTDR

![](../assets/images/3672fc138032.png)

Probe

Response

|  |  |  |
| --- | --- | --- |
| CU |  | DU |
|  |

**Figure 25:** OTDR using specific data patterns and correlation Other options for OTDR-based latency monitoring are depicted below:

![](../assets/images/3672fc138032.png)

![](../assets/images/c52a6bdd052b.png)![](../assets/images/1a759040b5f7.png)

DU

CU

OTDR

Probe

Response

RU

**Figure 26:** Tunable OTDR for passing through WDM channels

* Pros: end-to-end WDM link
* Cons: additional loss, more expensive system

![](../assets/images/c52a6bdd052b.png)![](../assets/images/1a759040b5f7.png)

OTDR

Probe

Aux. ?

Response

RU

![](../assets/images/3672fc138032.png)

|  |  |  |  |
| --- | --- | --- | --- |
| CU |  | DU |  |
|  |

**Figure 27:** Non-intrusive monitoring channel

* Pros: easiest deployment and lowest cost
* Cons: difficult to characterize distribution patch cords

While the fiber link must be transparent in both directions to transport the test signal and the reflected signals, the link delay asymmetry can be measured per section, e.g. between amplifier nodes. The delay of a subsystem, which is transparent only in one direction, can also be evaluated by measuring the one-way

propagation delay using the same OTDR setup. It is recommended to introduce OTDR as latency monitoring in a WDM x-haul transport.

## Maintenance and Operation

This sub-section was previously discussed in "Xhaul Transport Requirements" of O-RAN WG9 section 11. A fronthaul solution should be able to provide basic OAM functions to the fronthaul networks to provide management capability on fronthaul network itself, including fault management, performance management, configuration management, real-time system status monitor, statistics report, alarm, etc.

* The supervision, including dying gasp, is discussed in section 11.1.3 of "Xhaul Transport Requirements" of O-RAN WG9
* The rogue behavior mitigation is discussed in section 11.1.4 of "Xhaul Transport Requirements" of O- RAN WG9
* The transceiver features are discussed in sections 11.2.1, 11.2.2, and 11.2.3 of "Xhaul Transport Requirements" of O-RAN WG9
* To facilitate retrieval of the transport port identifier and other physical layer parameter indicators (ex. Launched optical power) during field operation (installation, maintenance, etc....), a wavelength port- ID could be tagged on the transport hub equipment. In section 11.2.4 of "transport requirements" of O- RAN WG9, we consider port-ID that we expand to wavelength-ID for WDM transport.
* Eye safety is discussed in section 11.2.5 of "Xhaul Transport Requirements" of O-RAN WG9
* The power-saving is discussed in section 11.3 of "Xhaul Transport Requirements" of O-RAN WG9. The O-RU and O-DU have their power-saving policy. The WDM transmission equipment must be capable to support the DU and O-RU power saving cycle without perturbation. Therefore, WDM equipment power saving mode must be done in coordination with O-DU and O-RU. Attention must be given to the timing of the ON and OFF state of the working wavelength (ex. The ON state timing consider the timing to achieve the adequate optical power and wavelength) in the function of the required timing of the power saving cycle.

The WDM transport must be capable to support also remote monitoring cell site operation and it is discussed in section 11.4 of "Xhaul Transport Requirements" of O-RAN WG9

# Operation Administration Maintenance (OAM) Requirements

## OAM Architecture

In the C-RAN fronthaul transport scheme, xWDM equipment includes the far-end (near the O-RUO-RU) and station-site device (near the O-DU) **(Figure 28)**

**Far- End**

(C) 2024 by the O-RAN ALLI ur use is subject to the cop er page of this specification. 52

\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_

yright statement on the cov

\_\_\_\_\_\_\_\_\_\_

ANCE e.V. Yo

**Station- site**

. . . . . .

Orange Restricted

**Figure 28**: Definition of Far End and Station Site scheme

At the far-end and the station-end, 3 functions shall be provided by Fronthaul WDM OAM mechanism

* Configuration: Station-site shall send a configuration message to the far-end,then a response shall be sent from the far-end.
* Inquiry: Station-site shall send an inquiry message to the far-end,then the far-end shall reply with a result message.
* Active: For a specific link, station-site and far-end both need to send some state message periodically to keep the link alive.

xWDM equipment OAM function provides operation, administration, and maintenance including daily operation, fault prediction, and network management.

We consider OAM for the WDM fronthaul transmission including section 5.5 required features. We propose the OAM architecture for passive, active, and semi-active solutions presented in section 2. The WDM Management Plane "M-plane" and WDM pairing activity should be performed as a first step in the link activation procedure: proper error messages have to be sent (e.g. optical link down (passive), WDM wavelength mismatch (active, semi-active)). The following requirements are proposed for WDM-based fronthaul networks, and it is proposed the M-plane be adapted following the O-RAN WG4 requirements on this issue.

###### For passive WDM:

![](../assets/images/1709282e8f53.png)

**Figure 29:** OAM for Passive WDM

The main OAM is done by O-RU and O-DU and the WDM link must remain transparent. The supervision, dying gasp, port, and wavelength-ID, alarms, energy-saving policy are achieved by the O-DU and the O-RU. The M- plane could be based on ITU- G.988 recommendations. The only specific OAM function concerns the wavelength assignment and control to achieve the wavelength pairing when tunable transceivers are used. An embedded channel must be defined based on digital or analog transmission to support this wavelength pairing

OAM. This embedded OAM channel must allow interoperability between transceivers face to face. The O-RAN transceiver embedded channel could be based on auxiliary management and control channel of ITU-T G.989.2 **Annex B & ITU-T G.989.3 Annex F & G.**

###### For active WDM:

![](../assets/images/acca7def0c20.png)

**Figure 30:** OAM for Active WDM

The O-DU and O-RU communication are transparent to the wavelength transmission features. The O-DU and O-RU support a dedicated OAM link with grey transceivers. Therefore, for active WDM transmission, a dedicated OAM based on section 56 must be proposed. The OAM coordination between TNE and O-DU & O- RU by management system must be proposed for supervision, power saving mechanism, port & wavelength- ID. An asymmetrical TE OAM could be preferred with master TNE close to O-DU and slave TNE close to O- RU.

###### For semi-active WDM type I:

![](../assets/images/e73a414b2cf1.png)

**Figure 31:** OAM for semi-active WDM type I

The O-DU is transparent to the wavelength transmission features. The O-RU supports the WDM transceiver. The O-RU M-Plane is capable of supporting the OAM for WDM transmission. The M-Plane dedicated to the OAM function controls the wavelength assignment to achieve the wavelength pairing. An embedded channel must be defined based on digital or analog transmission to support this wavelength pairing OAM. This embedded OAM channel must allow interoperability between transceivers face to face. The O-RAN transceiver embedded channel could be based on auxiliary management and control channel of ITU-T G.989.2 Annex B & ITU-T G.989.3 Annex F & G. The TNE close to O-DU is also connected to the management system to enrich the WDM OAM features. The OAM architecture is asymmetrical with the TNE equipment close to DU which achieves a master role.

###### For semi-active WDM type II:

![](../assets/images/617b5dc4aee9.png)

**Figure32**: OAM for semi-active WDM type II

The OAM of the WDM links is done by O-RU and O-DU OAM. The supervision, dying gasp, port, and wavelength-ID, alarms, energy-saving policy are achieved by O-DU and O-RU. The only specific OAM function controls the wavelength assignment to achieve wavelength pairing. An embedded channel must be defined based on digital or analog transmission to support this wavelength pairing OAM. This embedded OAM channel must allow interoperability between transceivers face to face. The O-RAN transceiver embedded channel could be based on auxiliary management and control channel of ITU-T G.989.2 Annex B & ITU-T G.989.3 Annex F & G. The optical power detectors system of the WDM link is also connected to the management system to enrich the OAM features. The OAM architecture is asymmetrical with the TNE equipment close to DU which achieves a master role. The optical detectors system could have a role in the wavelength pairing mechanism. Or the optical detectors system could have no role in the wavelength pairing mechanism and provide "only" optical supervision parameters.

The following table presents a synthesis of OAM architectures.

|  |  |
| --- | --- |
|  | OAM architectures |
| passive WDM | dedicated to wavelength pairing only if required (Tunable transceiver) |

|  |  |
| --- | --- |
| active WDM | complete WDM transmission OAM, asymmetrical OAM with slave and master transport equipment, and coordination with the O-RAN management system |
| semi-active WDM type I | dedicated to wavelength pairing only if required (Tunable transceiver) |
| semi-active WDM type II | dedicated to wavelength pairing only if required (Tunable transceiver) |

**Table 27:** Synthesis of OAM for the four proposed WDM implementations

The following table presents KPIs [Key Performance Indicators] to be reported by the optical transceivers.

|  |  |
| --- | --- |
| KPI | Description |
| Vendor | Transceiver Manufacturer |
| Vendor Product | Transceiver part number |
| Revision | Transceiver revision FM/SW |
| Date | Transceiver Date of revision |
| Temp | Transceiver temperature |
| TX Optical power | Transceiver Optical Launch power |
| RS Optical power | Transceiver Optical Receive power |
| TX supply Voltage | Transceiver voltage |
| TX Bias Current | Transceiver Bias Current Draw |
| Frequency TX | Transceiver Frequency (GHz) |
| Frequency RX | Receiver Frequency (GHz) |

## Configuration

**Table 28**: Optical tran**s**ceivers reported parameters

Loopback configuration for fixed or self-tuning transceivers (subject to operator preference) is a very common requirement for debugging and *may* be implemented for bringing up the link and its troubleshooting. If loopback is implemented, the station site shall send a loopback configuration message to set the far end module to loopback mode. The loopback message would set the port to loopback condition. After receiving the configuration message, the far end shall reply with a feedback message such as loopback acknowledged. To turn off the loopback condition, a separate message shall be sent by the local entity; again, an acknowledgment message shall be sent back to the local entity.

* The station site could send a power configuration message to set the transmitting optical power of the far end module(After receiving the configuration message,the far end should reply with a feedback message)
* When the far end module is in the loopback mode, the station site could continuously send the test message. An analysis at the sink side can be very helpful for debugging.

## Enquiry

* The station site could send an inquiry message for the vendor information of the far-end module. The reply from the far end module should be received by the station site within a limited time(e.g., 1- sec), otherwise a timeout alarm should be generated.
* The same inquiry process can be used for the transmit power, receive power, volt, temperature, etc. of the far end module.

## Active

* Station site and far end send the keep-alive message (handshake message, e.g., machine state) to each other in the idle state to keep the link active
* When the faulty condition is met, a Loss of Signal "LOS" message should be sent immediately. (e.g., the RDI in G.709 or remote fault in IEEE 802.3)
* When the faulty condition is met, a power or temperature alarm message should be sent immediately.
* Similar to the keep-alive message, the module state could be sent periodically, thus long-term monitoring can be achieved.
* Similar to the keep-alive message, vendor information could be sent periodically, thus long-term monitoring can be achieved.

## Phase 3 OAM In Fronthaul

In section 6.1, an embedded channel is used for semi-active WDM to support the wavelength pairing OAM. In this section, besides wavelength pairing, the detailed OAM functions based on pilot-tone are specified for front-haul application.

For semi-active WDM type I, the OAM information are framed as OAM message and modulated on the service optical signals in the colored optical modules of O-RUs, including the wavelength, ID, transmitting optical power, receiving optical power of optical modules, etc, as shown in Table 28. For 5G front-haul, the frequency of eCPRI optical signal is 25G and the repetition of low-speed in-band OAM message is usually kHz to 100MHz. For WDM optical signals, the carrier frequencies of OAM messages can be same or different. If multi-carrier OAM modulation is used, the modulation frequency of OAM should be unique for each WDM optical signals with different wavelengths. The optical modules in active WDM equipment receive the optical signal with OAM message and an OAM process unit in optical module can extract the OAM messages. As specified in section 6.2~6.4, OAM functions including configuration, enquiry, and active should be supported for semi-active WDM type I. With the received OAM messages, the WDM equipment can manage and control the front-haul network, including verifying the status of optical link, wavelength assignment, Loopback configuration, transmitting optical power adjustment, etc.

For semi-active WDM type II, the OAM process is similar with that of semi-active WDM type I as the OAM messages from O-RUs and O-DUs are extracted in an OAM process unit of active WDM equipment rather than optical module.

# Management Interfaces

**Table 29** is only a high-level feature list, there will be a much more detailed comparison and gap analysis of the YANG models after a shortlist of models has been selected.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
|  |  |  | Common Shelf (active) | TPDR |
| CM | Interfaces | Ethernet |  | x |
|  |  | OTS/OMS | X (active-active) |  |
|  |  | OCH | x | x |
|  |  | OSC | X (active-active) |  |
|  | Equipment | Shelf | x | x |
|  |  | Card | x | x |
|  |  | slot | x | x |
|  |  | subslot | x | x |
|  |  | port | x | x |
|  | FW/SW update |  | x | x |
|  | Database backup/restore |  | x | x |
|  | Path protection |  | x | x |
|  | synchronization |  | TBD | TBD |
| FM |  |  | x | x |
| PM |  |  | x | x |
| Security | User management | Multi-user hierarchy | x | x |
|  | Certificate handling |  | x | x |

**Table 29:** High-level feature list of a Fronthaul transport system, both common part, and transceiver

**Table 30** compares the candidates for the YANG models to model a WDM fronthaul system and the high-level features mapped to these models. Once the candidate models have been identified, a more detailed comparison and gap analysis between these YANG data models will be performed.

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  | OpenConfig | OpenROADM | TBD |
| CM | Interfaces | Ethernet | x | x |  |
|  |  | OTS/OMS | x | x |  |
|  |  | OCH | x | x |  |
|  |  | OSC | x | x |  |
|  | Equipment | Shelf | x | x |  |
|  |  | Card | x | x |  |
|  |  | slot | x | x |  |
|  |  | subslot |  | x |  |
|  |  | port | x | x |  |
|  | FW/SW update |  | SW | x |  |
|  | Database backup/restore |  |  | x |  |
|  | Path protection |  | x | x |  |
|  | synchronization |  | TBD | TBD |  |
| FM |  |  | x | x |  |
| PM |  |  | Streaming Telemetry | x |  |
| Security | User management |  | x | x |  |
|  | Certificate handling |  | x | x |  |

**Table 30:** Model candidates for Fronthaul transport compared to features of a typical system

# Appendix A Phase 1 Optical Power Budget-

In this annex, the examples of the optical power budget for DWDM and MWDM with a transmission distance of 10 km are shown as follows. The optical power budget of these WDM technologies over 10 km can be further specified.

#### Example 1: DWDM C-BAND

##### Optical link budget assumes LT = ?L + Lc + Lp + Ls where:

TL - Total Loss ? - Fiber Loss

L - Length of fiber Lc - Connector loss

Lp - Passive Device Loss Ls - Splice loss

The assumption for losses:

* G.652 [3] Fiber 0.3 dB per km
* ~0.5 dB (large variance depending on cables and splice methods) for connections and splices

Assuming fiber loss of 0.3 dB per km and connector and splice loss of 0.5 dB per instance, the below 17 dB link budget provides a design to include quantities of passives devices, connectors, splices, fiber length that is adequate for most architectures. This example is not limited to the below but is only to quantify the optical end- to-end path to include a variety of loss elements.

The minimum link budget of 17 dB **(Table 31)** is required to overcome typical fiber path designs but is not limited to this value. Higher link budgets (i.e. 19 dB) are recommended assuming the cost of the optic is acceptable.

|  |  |
| --- | --- |
| Assuming 10 km reach:(Example)  Loss Element | Loss (dB) |
| Fiber Length (10 km) | 3 |
| Assumed fiber connections (12) | 6 |
| Assumed Splices (4) | 2 |
| Splice Coupler | 1.5 |
| Splice Coupler | 1.5 |
| DWDM Mux (dBm) (1.5 each) | 3 |
| Fiber Length (km) (?) | 17 |
|  |  |
| Optical Interface | Optical Spec |
| Optical Launch Min Power (dBm) | 0.5 |
| Receiver Sensitivity (dBm) | -16.5 |
| 10G Optical Link Budget (dB) | 17 |

**Table 31:** DWDM Link Budget Losses

![](../assets/images/7529f524d504.png)

**Figure 33:** Optical Link Budget Example

#### Example 2: MWDM

##### 15 dB optical power budget for 25 Gbps 10 km 12-?:

* The optical power budget of MWDM can be described as follows:
* TOPB = ?\*L + Lc + Lp + TDP + MM
* where:
* TOPB - Total optical power budget
* ? - Fiber loss
* L - Fiber length
* Lc - Connector loss
* Lp - Passive Device Loss (Mux/Demux)
* TDP - Transmitter and Dispersion Penalty
* MM - Maintenance Margin

For 25 Gbps 12-? 10 km application of MWDM, a 15 dB optical power budget is required, which is shown in Table 32. Here, the fiber loss is 0.35 dB/km, the number of connectors is 4, the loss of each connector is 0.5 dB, the maintenance margin is 2 dB.

|  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Wavelength (nm) | MUX and DEMUX (dB) | TDP (dB) | 10 km fiber loss (dB) | Connector  loss (dB) | Maintenance Margin (dB) | TX OMA  (dBm) | RX OMA  (dBm) |
| 1374.5-O-RU | **3** | 4.5 | 3.5 | 2 | **2** | 1 | -14 |
| 1367.5-O-DU | **3** | 4.5 | 3.5 | 2 | **2** | 1 | -14 |
| 1354.5-O-RU | **3** | 4.5 | 3.5 | 2 | **2** | 1 | -14 |
| 1347.5-O-DU | **3** | 4.5 | 3.5 | 2 | **2** | 1 | -14 |
| 1334.5-O-RU | **4.5** | 3 | 3.5 | 2 | **2** | 1 | -14 |
| 1327.5-O-DU | **4.5** | 3 | 3.5 | 2 | **2** | 1 | -14 |
| 1314.5-O-RU | **6.1** | 1 | 3.5 | 2 | **2** | 1 | -14 |
| 1307.5-O-DU | **6.1** | 1 | 3.5 | 2 | **2** | 1 | -14 |
| 1294.5-O-RU | **6.1** | 1 | 3.5 | 2 | **2** | 1 | -14 |
| 1287.5-O-DU | **6.1** | 1 | 3.5 | 2 | **2** | 1 | -14 |
| 1274.5-O-RU | **6.1** | 1 | 3.5 | 2 | **2** | 1 | -14 |
| 1267.5-O-DU | **6.1** | 1 | 3.5 | 2 | **2** | 1 | -14 |

**Table 32**: 15 dB optical power budget for 25 Gbps 10 km 12-? MWDM

For 25 Gbps 12-? 15 km application of MWDM, the optical power budget is shown in Table 33. Here, the number of connectors is 7, the loss of each connector is 0.5 dB, the maintenance margin is 3 dB. It is noted that the 15 km optical power budget of the 6-channel from 1267.5 nm to 1314.5 nm is calculated to be

18.85 dB. However, considering the 20 dB optical power budget of 10 km application with optical protection, the 15 km optical power budget of the 6-channel from 1267.5 nm to 1314.5 nm is specified as 20dB to unify the kind of optical module.

|  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Wavelength (nm) | MUX and DEMUX (dB) | TDP (dB) | 15 km fiber loss (dB) | Connector loss  (dB) | Maintenance Margin (dB) | TX OMA  (dBm) | RX OMA  (dBm) |
| 1374.5-O-RU | **3** | 7 | 5.25 | 3.5 | **3** | 2.75 | -19 |
| 1367.5-O-DU | **3** | 7 | 5.25 | 3.5 | **3** | 2.75 | -19 |
| 1354.5-O-RU | **3** | 6 | 5.25 | 3.5 | **3** | 2.75 | -19 |
| 1347.5-O-DU | **3** | 6 | 5.25 | 3.5 | **3** | 2.75 | -19 |
| 1334.5-O-RU | **4.5** | 4.5 | 5.25 | 3.5 | **3** | 2.75 | -19 |
| 1327.5-O-DU | **4.5** | 4.5 | 5.25 | 3.5 | **3** | 2.75 | -19 |
| 1314.5-O-RU | **6.1** | 1 | 5.25 | 3.5 | **3** | 1 | -19 |
| 1307.5-O-DU | **6.1** | 1 | 5.25 | 3.5 | **3** | 1 | -19 |
| 1294.5-O-RU | **6.1** | 1 | 5.25 | 3.5 | **3** | 1 | -19 |
| 1287.5-O-DU | **6.1** | 1 | 5.25 | 3.5 | **3** | 1 | -19 |
| 1274.5-O-RU | **6.1** | 1 | 5.25 | 3.5 | **3** | 1 | -19 |
| 1267.5-O-DU | **6.1** | 1 | 5.25 | 3.5 | **3** | 1 | -19 |

**Table 33:** Optical power budget for 25 Gbps 15 km 12-? MWDM

For 25 Gbps 12-? 20 km application of MWDM, the optical power budget is shown in Table 34. Here, the number of connectors is 8, the loss of each connector is 0.5 dB, the maintenance margin is 3 dB, the optical power budget is 21 dB. It is noted that the max TDP of DML-based MWDM over 20km will be larger than 10dB, the feasibility cannot be accepted. Dispersion compensation can be used to suppress dispersion penalty, but the latency of the 20-km optical link will be more than 100us by introducing DCF. In Table 34, 20-km transmission can be achieved by using EML-based MWDM with 21dB power budget. In this way, DML-based MWDM can satisfy 15km application with low-cost for majority scenario and EML-based MWDM can satisfy 20km application with more cost.

|  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Wavelength (nm) | MUX and DEMUX (dB) | TDP (dB) | 20km fiber loss (dB) | Connector loss (dB) | Maintenance Margin (dB) | TX OMA  (dBm) | RX OMA  (dBm) |
| 1374.5-O-RU | 5 | 2 | 7 | 4 | 3 | 2 | -19 |
| 1367.5-O-DU | 5 | 2 | 7 | 4 | 3 | 2 | -19 |
| 1354.5-O-RU | 5 | 2 | 7 | 4 | 3 | 2 | -19 |
| 1347.5-O-DU | 5 | 2 | 7 | 4 | 3 | 2 | -19 |
| 1334.5-O-RU | 5 | 2 | 7 | 4 | 3 | 2 | -19 |
| 1327.5-O-DU | 5 | 2 | 7 | 4 | 3 | 2 | -19 |
| 1314.5-O-RU | 5 | 2 | 7 | 4 | 3 | 2 | -19 |
| 1307.5-O-DU | 5 | 2 | 7 | 4 | 3 | 2 | -19 |
| 1294.5-O-RU | 5 | 2 | 7 | 4 | 3 | 2 | -19 |
| 1287.5-O-DU | 5 | 2 | 7 | 4 | 3 | 2 | -19 |
| 1274.5-O-RU | 5 | 2 | 7 | 4 | 3 | 2 | -19 |
| 1267.5-O-DU | 5 | 2 | 7 | 4 | 3 | 2 | -19 |

Table 34: Optical power budget for 25 Gbps 20 km 12-? MWDM

#### Chromatic Dispersion Coefficient

Chromatic dispersion (CD) in single-mode fiber causes a receiver sensitivity power penalty compared to the back-to-back (BTB) case. The CD penalty is included in the required receiver sensitivity values listed in the 17 dB DWDM power budget examples and the TDP portion of the 15 dB MWDM power budget example.

The assumed penalties are based on ITU-T G.652 (2016-11), fiber type G.652.D. Other fiber types, including bend-insensitive fiber, may be used as long as the channel loss, dispersion, and other link parameter limits are not exceeded **(Table 34)**

|  |  |  |  |
| --- | --- | --- | --- |
| Description | 12 MWDM | 40 DWDM | Unit |
| Fiber length (max) | 10 | 10 | km |
| Fiber insertion loss (max) | 4.7 | 3 | dB |
| Fiber insertion loss (min) | 3.2 |  | dB |
| Positive dispersion (max) | 63 | 193 | ps/nm |
| Positive dispersion (min) |  | 122 | ps/nm |
| Negative dispersion (min) | -56 |  | ps/nm |
| DGD max | 8 | 8 | ps |
| Optical return loss (min) | TBD | TBD | dB |

**Table 34:** Characteristics of a 10 km link based on G.652.D fiber.

**Appendix B Phase 2 >25G Line rate Cover it in an Appendix**
---

- View in [Reader Mode](https://simewu.com/spec-reader/pages/03-WG9/O-RAN-WG9.WDM.0-R004-v05.00.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN-WG9.WDM.0-R004-v05.00.docx).
