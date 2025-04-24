---
title: O-RAN.WG9.XTRP-MGT.0-R004-v09.00.docx.md
author: O-RAN Alliance
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG9.XTRP-MGT.0-R004-v09.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG9.XTRP-MGT.0-R004-v09.00.docx).

---

* toc
{:toc}

---

# ![webwxgetmsgimg (7).jpeg]({{site.baseurl}}/assets/images/9c69df009b87.jpg)O-RAN.WG9.XTRP-MGT.0-R004-v09.00

*Technical Specification*

**O-RAN Open X-haul Transport Working Group Management interfaces for Transport**

**Network Elements**

Copyright (C) 2024 by O-RAN ALLIANCE e.V.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

O-RAN ALLIANCE e.V. Buschkauler Weg 27, 53347 Alfter, Germany

1

# 1 Contents

1. Contents 2

Foreword 4

Modal verbs terminology 4

1. Scope 4
2. References 6
   1. Normative references 6
   2. Informative references 7
3. Definition of terms, symbols and abbreviations 8
   1. Terms 8
   2. Symbols 8
   3. Abbreviations 8
4. Modelling Schema 11
5. Device Communication Protocols 12
   1. Configuration Management 12
   2. Fault and Performance management 12
   3. Life cycle management 12

Annex A (informative) 13

1. Transport Technology dependent analysis 13
   1. Microwave transport 13
   2. Optical access 15
      1. TDM-PON 16
      2. Point-to-point interfaces 19
      3. WDM-PON 19
   3. Optical transport 19
      1. Fronthaul WDM systems 19
      2. Mid- and backhaul ROADM transport 25
   4. IP/Ethernet transport 28
      1. Provisioning and managing a packet switched infrastructure 29
      2. Assessment methodology and analysis 30
      3. Conclusion 35
   5. Grand master clock 35

Annex B (informative) 36

1. Network Slicing Use Case 36
   1. 3GPP slicing model in application to network slicing in TN domain 36
      1. History / modeling concepts 36
      2. 5G Slicing 37
      3. Slicing in 3GPP Release 15 38
      4. Slicing in 3GPP Release 16 39
      5. Slicing in 3GPP Release 17 43
   2. IETF Orchestrator and controller framework 45
   3. Uniform transport network model 47
      1. Multi-domain Support 48
      2. Abstraction Layer 50
      3. Uniform Device Information Model 51
      4. Conclusion 52

Annex C (informative) 53

1. Management and network models for correlation of Network Slicing in RAN and Core

subsystems with Transport Network domain 53

* 1. IETF slice Framework design 55
  2. Management and network models for Transport Network 64
     1. Segmentation of the End-to-End Network Datapath 64
  3. Management and network models of Network Slicing in ORAN subsystem 76

Annex D (informative) 81

Slicing use case revision history and progress control 81

Annex E (informative) 83

Use cases for the direct integration of transport into SMO / Non-RT RIC 83

Use cases for the coordinated interface between transport management and SMO 91

Annex F (informative) 95

Mapping 3GPP NRM to IETF Network Slice IM/DM 95

Annex G (informative) 101

Revision history 101

# Foreword

<div class="table-wrapper" markdown="block">

This Technical Specification (TS) has been produced by ETSI Technical Committee {ETSI Technical Committee|ETSI Project|<other>} <long techbody> (<short techbody>).

</div>

# Modal verbs terminology

In the present document "**shall**", "**shall not**", "**should**", "**should not**", "**may**", "**need not**", "**will**", "**will not**", "**can**" and "**cannot**" are to be interpreted as described in clause 3.2 of the [ETSI Drafting Rules](https://portal.etsi.org/Services/editHelp%21/Howtostart/ETSIDraftingRules.aspx) (Verbal forms for the expression of provisions).

"**must**" and "**must not**" are **NOT** allowed in ETSI deliverables except when used in direct citation.

# 1 Scope

This Technical Specification has been produced by the O-RAN Alliance. The document is intended to describe best practices for O-RAN transport Network Element (TNE) management interfaces. In this document, first, generic requirements are given in section 6 and 7 for these interfaces and then informative content in section 8 and 9 on device, network and service interfaces.

.

Phase one of this document in early 2021 covered:

* Microwave,
* TDM-PON,
* optical transport (fronthaul and mid-and backhaul)

Phase 2 enhanced this document in July 2021with the following topics:

* IP/Ethernet for O-RAN slicing phase 1
* Optical access for point-to-point interfaces and WDM-PON

Phase 3 added the following topics in November of 2021:

* Grandmaster clock for Synchronization,
* WDM fronthaul interface requirements for passive-passive and passive-active,
* Clarified security requirements,
* Network slicing use case.

Phase 4 introduced the following content in March of 2022:

* More details on network slicing use case

Phase 5 enhanced the following content in November of 2022:

* More details on network slicing use case

Phase 6 added the following content in March 2023:

* Annex A
* IETF uniform network model

Phase 7 re-worked the document for ETSI compliance and added the following changes:

* Slicing LS

Phase 8 added appendix E and F with the following content:

* Use cases for direct integration of SMO / Non-RT RIC
* Mapping of IETF and 3GPP model proposal

Phase 9 added content in appendix E:

* Use cases for the coordinated interface between transport management and SMO

The following items are not covered and may be addressed in phase 10:

* Future phases of O-RAN slicing support.

# References

## Normative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

Referenced documents which are not found to be publicly available in the expected location might be found at [https://docbox.etsi.org/Reference.](https://docbox.etsi.org/Reference)

NOTE: While any hyperlinks included in this clause were valid at the time of publication, ETSI cannot guarantee their long-term validity.

The following referenced documents are necessary for the application of the present document.

1. IETF RFC 7950 - The YANG 1.1 Data Modelling language
2. IETF RFC 6241 - Network Configuration Protocol (NETCONF)
3. IETF RFC 6242 - Using the NETCONF Protocol over Secure Shell (SSH)
4. IETF RFC 7589 - Using the NETCONF Protocol over Transport Layer Security (TLS) with Mutual X.509 Authentication
5. O-RAN Security Focus Group specification document O-RAN.SFG.O-RAN-Security-

Protocols-Specifications-v02.00.06.docx

1. Google Network Management Interface - gNMI - github.com/openconfig/gnmi
2. VNF Event Streaming - VES - [https://wiki.opnfv.org/display/ves/VES+Home](https://wiki.opnfv.org/display/ves/VES%2BHome)
3. ONF Core Information Model TR 512
4. ONF Wireless Transport Model TR 532
5. IETF RFC 8561 - Data Model for Microwave Radio Link
6. ITU-T specification G.988
7. BBF WT-435: Netconf Requirements on OLT (including ZTP)
8. IEEE 1904.2
9. ITU-T specification G.989.2
10. ITU-T specification G.698.4
11. ITU-T specification G.989.3
12. ITU-T specification G.9806
13. OpenConfig data models - <https://openconfig.net/projects/models/>
14. OpenROADM data models - [http://OpenROADM.org](http://openroadm.org/)
15. O-RAN Management Plane Specifications - <https://www.o-ran.org/specifications>
16. O-RAN WG9 Xhaul Packet Switched Architectures and solutions O-

RAN.WG9.XPSAAS-v04

1. [https://development.standards.ieee.org/myproject-web/public/view.html#pardetail/8494](https://development.standards.ieee.org/myproject-web/public/view.html%23pardetail/8494)
2. [https://github.com/YangModels/yang/blob/master/standard/ieee/draft/1588/ieee1588-](https://github.com/YangModels/yang/blob/master/standard/ieee/draft/1588/ieee1588-ptp.yang) [ptp.yang](https://github.com/YangModels/yang/blob/master/standard/ieee/draft/1588/ieee1588-ptp.yang)
3. IETF RFC8969 - A Framework for Automating Service and Network Management with YANG
4. IETF RFC8199 - YANG Module Classification
5. IETF RFC8309 - Service Models Explained
6. IETF RFC8466 - A YANG Data Model for Layer 2 Virtual Private Network (L2VPN)

Service Delivery

1. IETF RFC8299 - YANG Data Model for L3VPN Service Delivery
2. 3GPP 28.531: "Management and orchestration; Provisioning"
3. 3GPP TS 28.533: "Management and orchestration; Architecture framework"
4. 3GPP TS 28.541: "Technical Specification Group Services and System Aspects; Management and orchestration; 5G Network Resource Model (NRM);", Release 16.
5. 3GPP TS 28.620: "Telecommunication management; Fixed Mobile Convergence (FMC) Federated Network Information Model (FNIM) Umbrella Information Model (UIM)", Release 11."
6. 3GPP TS 28.622: "Telecommunication management; Generic Network Resource Model (NRM) Integration Reference Point (IRP); Information Service (IS)"
7. 3GPP TS 28.623: "Telecommunication management; Generic Network Resource Model (NRM) Integration Reference Point (IRP); Solution Set (SS) definitions"
8. O-RAN WG1 Network Slicing Architecture
9. 3GPP TS 32.300: "Telecommunication management; Configuration Management (CM); Name convention for Managed Objects"
10. IETF Network Slice Service YANG Model ([https://datatracker.ietf.org/doc/draft-wd-](https://datatracker.ietf.org/doc/draft-wd-teas-ietf-network-slice-nbi-yang/) [teas-ietf-network-slice-nbi-yang/](https://datatracker.ietf.org/doc/draft-wd-teas-ietf-network-slice-nbi-yang/)
11. YANG Data Models for 'Attachment Circuits'-as-a-Service (ACaaS) (https://datatracker.ietf.org/doc/html/draft-boro-opsawg-teas-attachment-circuit)

## Informative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, ETSI cannot guarantee their long-term validity.

The following referenced documents are not necessary for the application of the present document but they assist the user with regard to a particular subject area.

[i1] BBF TR-416

[i2] BBF TR-385: ITU-T PON YANG Modules

[i3] BBF TR-383: Common YANG Modules

[i4] TR-402: Functional Model for PON Abstraction Interface [https://www.broadband-](https://www.broadband-forum.org/download/TR-402.pdf) [forum.org/download/TR-402.pdf](https://www.broadband-forum.org/download/TR-402.pdf)

[i5] TR-403: PON Abstraction Interface for Time-Critical Applications

[i6] 3GPP TR 28.801: "Telecommunication management; Study on management and orchestration of network slicing for next generation network"

[i7] 3GPP TR 32.828: "Telecommunication management; Study on alignment of 3GPP generic Network Resource Model (NRM) Integration Reference Point (IRP) and the Telecom Management Forum (TMF) Shared Information/Data (SID) model"

# Definition of terms, symbols and abbreviations

## Terms

For the purposes of the present document, the following terms apply: void

## Symbols

None

## Abbreviations

For the purposes of the present document, the abbreviations given apply. Abbreviations defined in this document take precedence over the definition of 3GPP.

AF Application Function

AMF Access and Mobility Management Function AN Access Node

ARP Address Resolution Protocol BBU Baseband Unit

BH Backhaul

BiDi Bidirectional

BS Base Station

BW Bandwidth CAPEX Capital Expense

CBS Committed Burst Size

CFP Common Form factor Pluggable CIR Committed Information Rate

CN Core Network

CoMP Cooperative Multipoint CP Control Plane

CPRI Common Public Radio Interface CU Central Unit

DC Data Center

DL Downlink

DN Data Network

DHCP Dynamic Host Configuration Protocol DSCP Differentiated Services Codepoint DU Distributed Unit

eCPRI evolved Common Public Radio Interface eMBB enhanced Mobile Broadband

eNB Enhanced NodeB

EP Ethernet Private

EPC Enhanced Packet Core

EPL Ethernet Private Line

EVP Ethernet Virtual Private EVPL Ethernet Virtual Private Line FDD Frequency Division Duplexed FFO Fractional Frequency Offset

FFS For Further Study

FH Fronthaul

FLR Frame Loss Ratio

FM/PM Fault and Performance management FR1 Frequency Range 1

FR2 Frequency Range 2

FTTH Fiber To The Home

gNB gNodeB

gNMI Google Network Management Interface GNSS Global Navigation Satellite System GPRS General Packet Radio Service

GTP GPRS Tunnelling Protocol

ICMP Internet Control Message Protocol IoT Internet of Things

IP Internet Protocol

IQ Inphase Quadrature

ITU-T International Telecom Union-Telecom LAN Local Area Network

LTE Long Term Evolution

MAC Medium Access Layer

MPLS Multi Protocol Label Switching MIMO Multiple Inputs Multiple Outputs MNO Mobile Network Operator NGMN Next Generation Mobile Network NR New Radio

NSA Non-Stand Alone

NSSI Subnet Networking Slices Instance OAM Operation Administration Maintenance O-CU O-RAN Central Unit

O-DU O-RAN Distributed Unit OPEX Operation Expense ORU O-RAN Radio Unit

PCF Policy Control Function

PDCP Packet Data Convergence Protocol PRTC Primary Reference Telecom Clock PTP Precision Time Protocol

OFDM Orthogonal Frequency Division Multiplexing QAM Quadrature Amplitude Modulation

QoS Quality of Service

QSFP Quad SFP

RB Resource Block

ROADM Reconfigurable Optical Add Drop Multiplexer RRH Remote Radio Head

RU Radio Unit

SCTP Stream Control Transmission Protocol SDN Software Defined Networking

SFF Small Form Factor

SFP Small Form factor Pluggable

SLA Service Level Agreement T-BC Telecom Boundary Clock TDD Time Division Duplexing

TE Time Error

T-GM Telecom Ground Master TN Transport Node

T-TSC Telecom Time Slave Clock TX Transmit

UDP User Datagram Protocol

UE User equipment

UL Uplink

UNI Universal Network Interface

UPF User Plane Function

VPN Virtual Private Network

# Modelling Schema

The following gives requirements for Modelling Schemas. For Modelling Schema implementations,

* models shall use YANG RFC 7950 [1] as schema.
* models should be under open-source license.
* models shall have modular structure with clearly defined augmentation mechanism.
* models selected shall be independent of specific supplier attributes.
* vendor specific augmentations shall be temporary only, where temporary is defined here as less than one year.
* models should support backwards compatibility and future proof enhancement solution.

# Device Communication Protocols

This section defines the communication Protocols for Configuration management, Fault and Performance management and lifecycle management.

## Configuration Management

Configuration management (CM) shall use YANG schema in conjunction with NETCONF protocol (RFC6241 [2]). Security for NETCONF may either be configured over SSH [3] or TLS [4]. See [5] for additional security requirements for NETCONF.

Configuration management

* + - shall support NETCONF over SSH, according to [5], subsection 2.1.
    - should support NETCONF over TLS.
    - if NETCONF over TLS is supported, TLS shall be supported according to [5]

## Fault and Performance management

The following section gives requirements for various transport mechanisms, for Fault and Performance management (FM/PM) models and protocols.

One option is to use NETCONF also for FM/PM, which has the advantage of only having to implement a single protocol on a network element. Another popular method for retrieving PM/FM is streaming telemetry. The most widely used protocol there is OpenConfig's streaming telemetry using the gNMI protocol [6]. Another emerging standard is streaming using VES (VNF event streaming), defined by OPNFV and ONAP [7], which is already used in O-RAN.

Fault and performance management:

* + - Fault management shall support either NETCONF, gNMI or VES streaming.
    - Performance management shall support either NETCONF, gNMI or VES streaming.

## Life cycle management

Life cycle management:

* + - Model shall support life cycle management functions, supported with a single NETCONF interface.
    - The model should support full-service lifecycle as specified in the ONAP Architecture, ITU G8052.1 or the MEF 22.3.1 Transport Service Orchestration and Lifecycle Service Orchestration Framework.

# Annex A (informative)

# Transport Technology dependent analysis

Below, we will walk through the different transport technologies and first look at what features a typical commercial system contains and then cover the models that have been implemented commercially and compare the feature set they cover.

## Microwave transport

Table 1 lists the features in a typical commercial microwave system.

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Features** | | | **Microwave** |
| CM | Interfaces | Ethernet | x |
|  |  | Structure | x |
|  |  | AirInterface | x |
|  |  | WireInterface | x |
|  |  | TDM | x |
|  | Equipment | Shelf | x |
|  |  | Card | x |
|  |  | Slot | x |
|  |  | Port (SFP, RJ45 etc.) | x |
|  | FW/SW Management |  | x |
|  | Database backup/restore |  | x |
|  | Traffic protection |  | x |
|  | Synchronization |  | x |
| FM |  |  | x |
| PM |  |  | x |
| Security | User management |  | x |
|  | Certificate handling |  | x |

</div>

###### Table 1 - features in a typical commercial microwave system

Table 2 compares the models in commercially available microwave systems.

![]({{site.baseurl}}/assets/images/d141fcae5207.jpg)

###### Table 2 - models' comparison in commercially available microwave systems

A comparison was done between models which can be used to represent microwave systems: on one side the ONF Core Model version 1.4 [8], along with the different technology specific packages (PACs) defined in [TR532 version 2.0](https://github.com/openBackhaul/Overview) (still a draft version) [9] and on the other side the ietf-microwave-radio-link model ([RFC8561](https://tools.ietf.org/html/rfc8561)) [10] and other IETF models.

For describing equipment information, the compared models have a somewhat similar approach:

* ietf-hardware abstracts any type of component (while the type is an extensible enumeration), while the core-model differentiates in each equipment instance between connectors and contained-holders (while the type is just a string, so a flexibility for vendors, but can result in different approaches for different vendors),
* ietf-hardware can contain sensor data, which is rather abstract and lets vendors build any type of data, which can result in different approaches for different vendors, while the ONF Core Model does not include sensor data,
* ONF Core Model differentiates between actual and expected equipment, which is not the case in the ietf-hardware,
* ietf-hardware provides *some* information about revisions (hardware, software etc.) and hardware information, while the ONF Core Model provides a lot more details about the hardware (physical, mechanical, spatial, environmental etc.),
* both models offer parent-child relationships between the equipment instances for describing an entire hierarchy.

For describing interfaces and their attributes, the comparison focused on ietf-interfaces model (augmented by ietf-microwave-radio-link) and the ONF Core Model augmented by different technology specific PACs):

* the ietf-interfaces are only augmented to provide air-interfaces (microwave specific parameters), while the ONF Core Model is augmented to provide different types of interfaces (air-interfaces, ethernet containers, wire-interfaces, even MAC and VLAN interfaces)
* the ietf-interfaces model is augmented with approximately 50 microwave specific parameters that describe capabilities, performance, configuration, and status, while the ONF Core Model is augmented with approximately 175 microwave specific parameters which cover capabilities, performance (historical and current), configuration, status and current problems (alarms/faults). The current problems which are missing from the ietf-interfaces could be covered by the ietf-alarms yang model
* both ietf-interfaces and the ONF Core Model support layering of interfaces (higher and lower layer, and respectively client-server relationships)
* ietf-interfaces modelling is compliant with the NMDA (Network Management Datastore Architecture - [RFC8342](https://tools.ietf.org/html/rfc8342)), [section 5.3,](https://tools.ietf.org/html/rfc8342#section-5.3) while the augmentations for the ONF Core Model are not. To be more precise, section 5.3 of RFC8342 states that the *operational* datastore is a read-only datastore which consists of all "config false" and "config true" attributes defined in the yang models (while the original NETCONF specification indicated that the *operational* datastore may contain only "config false" parameters). The advantage of the new approach is that it enables the ability of nodes to expose all operational settings without needing to replicate definitions in the data model. The modelling of ietf- interfaces complies with this architecture, while the core-model defines different attributes for configuration and for status of a particular configuration.

For group definitions, the comparison focused on the ietf-microwave-radio-link and augmentations for the ONF Core Model:

* the ietf-microwave-radio-link describes XPIC and MIMO groups, while augmentation of core-model describe also ALIC (Adjacent Link Interference Calculation) groups

Both models describe radio link protection groups, with the difference that in the ietf model the type of group is an extensible enumeration, while in the ONF Core Model the type is just a string.

For FW/SW Management, mature YANG models do not exist yet. Inside the ONF there are ongoing discussions for providing such capabilities for microwave systems, but a draft YANG model is yet to be provided.

From the user management and certificate handling perspective, a generic model that allows a centralized control does not exist yet. Each individual node can nevertheless rely of the standard NETCONF Server models for that purpose, there is no need for having a microwave specific model.

Both the ONF Core Model with its technology specific augmentations and the IETF models, which were part of the comparison, could be used to describe the management interface of a microwave system. Both models have gaps in their air-interface and in the network interface attributes, which need to be communicated to relevant standard groups for future consideration. The ONF model strives for a complete set of harmonized attributes, in order to prevent need for proprietary augmentations. The IETF model focuses on a smaller set of attributes which describe an air-interface, but which would cover a big amount of use cases, while allowing proprietary augmentations for attributes which are not yet considered in the model. The IETF core model is designed with flexibility in mind taking advantage of the wealth of features and models developed across the IETF/IEEE std organizations especially the one related to models supporting many packet-based features, while maintaining strict backwards compatibility to its Core Model and YANG versioning modules that require updating a published YANG module to follow the rules in clause 11 of the IETF RFC 7950 [1] prohibiting Non-Backwards Compatible (NBC) changes. Models describing other types of interfaces present in microwave systems (wire interfaces, ethernet, VLAN etc.) exist both in ONF (proposed as augmentations for the ONF Core Model) and in the IETF, but they were not part of the gap analysis.

## Optical access

The optical access refers to an optical fiber equipment and infrastructure lying between an optical termination (here, typically the antenna cell site) and the central office (aggregation node). Optical line termination (OLT) and Optical Network Unit (ONU) are the active equipment which serve as the service provider endpoints at

each end of the access passive optical network. The OLT shelf supports two different medium connectivity based on specific cards & interfaces.

1. The first one is the PON (Passive Optical network) which is used for FTTHome based on PtMP optical infrastructure (also named ODN optical Distribution network). Several PON generations are available: G-PON (Gigabit capable Passive Optical Network), XGS-PON (10 Gigabit symmetrical capable Passive Optical Network), and the coming HS-PON (High-Speed capable Passive Optical Network).
2. The second supported connectivity at OLT is Ethernet PtP based on regular transceivers. This PtP interfaces are used for business and the existing mobile backhaul.

So an OLT is an equipment which supports these two types of access interfaces to reach customers, a backplane, one or several uplinks port to reach metropolitan nodes and a management.

Ideally, the management plane of an OLT is desired natively to be vendor agnostic. If it were the case, all operational procedures would be defined once and used and reused for all the equipment of a given type. Over the last decades, attempts for standardizing the management interfaces of the network elements have been largely unsuccessful. Consequently, proprietary management systems are commonly used. This obliges the operator to adapt its OSS (Operations Support System) to different proprietary management interfaces, which is time consuming and requires quite a significant effort in terms of OSS development. But for this new decade, things are changing. Thanks to the emergence of SDN and the lobbying efforts from network service providers to better automate its operational processes, the introduction of software in the telecommunication industry gives SDAN (Software- Defined Access Network) solutions and opportunity allowing telcos to manage the access nodes themselves as well as create new kinds of orchestration at the service layer. Last but not least, the SNMP (Simple Network Management Protocol) management protocol and its associated data-modelling language in use today are pretty old and were inherently not well designed to comply with data-models promoted by the standards. SNMP is also currently used for pulling statistics and counters from the network elements (performance monitoring, troubleshooting). However, SNMP is not well designed for massive data collections. NETCONF (Network Configuration Protocol) interfaces and YANG (Yet Another Next Generation) data-models for PON are now proposed (cf. IETF RFC 6241 [2] and BBF TR385 [13], respectively). They are gaining some momentum so we forecast that they will replace SNMP. The coming decade will correspond to a network migration and operation with natively NETCONF/YANG access equipment leveraging on a clear separation between the network node management layer and the service design and management layer.

Two references implementation are proposed for SDAN by:

1. Open Network Foundation with SDN-Enabled Broadband Access (SEBA) including Virtual OLT Hardware Abstraction (VOLTHA)
2. Broad Band Forum with Cloud Central Office (Cloud CO) including BBF's Access Abstraction Layer (BAA). Cloud CO is standardized, as for the use cases which are proposed under BBF's "TR-416 [i1]: Cloud CO Use Cases and Scenarios".

### TDM-PON

ONU management and control interface (OMCI) is defined in the ITU-T specification G.988 [11]. Table 3 lists the features in a typical commercial TDM-PON system:

![]({{site.baseurl}}/assets/images/e39c487d9ec5.png)

###### Table 3 - features in a typical commercial TDM-PON system

Table 4 compares the models in commercially available TDM-PON systems:

![]({{site.baseurl}}/assets/images/811b2cf2d926.png)

###### Table 4 - Models comparison of commercially available TDM-PON systems

In the TDM-PON space, there is only one model from the broadband forum (BBF) [12,i2,i3] that has been commercially implemented. So, the recommendation here is to use this interface for this purpose.

The Broadband Forum also worked on defining a functional model for PON abstraction interface and a PON abstraction interface for time-critical application:

* **TR-402** [i4] Functional Model for PON Abstraction Interface [https://www.broadband-](https://www.broadband-forum.org/download/TR-402.pdf) [forum.org/download/TR-402.pdf](https://www.broadband-forum.org/download/TR-402.pdf)
* **TR-403** [i5] PON Abstraction Interface for Time-Critical Applications

Finally, it was proposed to standardize the transport of the ONU Management and Control Interface (OMCI) ITU-T G.988 Amendment 3 - 03/2020 [11] over Ethernet through the 'Standard for Management Channel for Customer-Premises Equipment Connected to Ethernet-based Subscriber Access Networks', in the IEEE 1904.2 Task Force [13]. This standard allows remote device management, used for commercially available miniature pluggable SFP-OLTs where several control and management functions are run on commodity servers, remotely from the pluggable SFP-OLTs.

### Point-to-point interfaces

For Point-to-point interfaces, we recommend to also use the ONU Management and Control Interface (OMCI) over Ethernet through the 'Standard for Management Channel for Customer-Premises Equipment Connected to Ethernet-based Subscriber Access Networks', in the IEEE 1904.2 Task Force [13]. This implementation allows to use the existing PON management mechanism for PtP with a master equipment (at the central office (OLT with PtP interface)) and a slave equipment (at the antenna site (PtP ONU)).

### WDM-PON

ITU-T SG15 Q2 launched a study item to clarify requirements and specifications for the new WDM-PON Recommendation management channel. The approach to implement management channel is under discussion based on:

1. Transparent approach:This approach doesn't touch the bit-stream of client signal and is basically specific to the bitrate and protocol of client signal. An example of this approach is Transparent AMCC (Auxiliary Management and Control Channel) defined in G.989.2 [14]. Another example of this is HTMC (head-to-tail message channel) defined in G.698.4 [15].
2. Unified-frame approach: This approach maps the bit-stream of client signal onto a frame defined in the PON layer. Management information is also carried by the frame defined in the PON layer. An example of this approach is the TC frame with PLOAM and OMCI.

Then, the following approaches seem something in between.

1. Transcoded AMCC: This is defined in G.989.3 [16] and mentioned in G.9806 [17]. It is (almost) transparent for signals using for example 8B10B or 64B66B coding but cannot accommodate other protocols.
2. OAM mapped into Ethernet frames: This is defined in defined in G.9806 [17]. It adds local OAM information into Ethernet frames but cannot accommodate to protocols other than Ethernet. Also, we need a design rule for sharing the bandwidth between the client frames and the management frames.

## Optical transport

### Fronthaul WDM systems

This section looks at Fronthaul WDM systems. More info can be found in the WDM requirements document.

#### Passive-passive

Since this is a fully passive configuration, no management interfaces are needed. An optional implementation is to keep passive the fronthaul channels transmission and to add in parallel a dedicated loopback physical channel for supervision of the trunk (between wavelength multiplexer) fiber infrastructure. This loop back is

![Graphical user interface  Description automatically generated with low confidence]({{site.baseurl}}/assets/images/fd30a9b933f4.png)

passive in the antenna location and active for only this supervision channel (not active for the fronthaul channels). Management aspects of the transceivers must be captured where they are integrated into end points (e.g., mplane [18]). Table 5 shows the interface functional requirements.

![]({{site.baseurl}}/assets/images/5796725021cf.png)

**Table 5 - The interface functional requirements for Passive-active system with fiber trunk supervision**

#### Passive-active

The semi-active WDM solution is composed of optical modules, passive WDM equipment at the remote O- RU side and the active WDM equipment at O-DU side of the central office. For management capability of the network, the management and control system could send management requests to the active WDM equipment through the management interface and manage the semi-active WDM system, including query and configuration.

##### *Semi-active type I*

![A picture containing diagram  Description automatically generated]({{site.baseurl}}/assets/images/827fc5eb5bba.jpg)

The O-DU is transparent to the wavelength transmission features and the O-RU supports the WDM transceiver. The management and control system could control the wavelength assignment and also could

interconnect with the active WDM equipment at O-DU side to manage the WDM system through management interface, including query and configuration. The active WDM equipment plays a master role and could manage the WDM transceiver at O-RU side by an embedded OAM channel.

##### *Semi-active type II*

![Diagram  Description automatically generated]({{site.baseurl}}/assets/images/10c0fbe37c63.jpg)

The O-RU and O-DU both support the WDM transceivers. The management and control system could control the wavelength assignment and also could interconnect with the active WDM equipment at O-DU side to monitor the WDM system through management interface. The active WDM equipment plays a master role and could monitor the WDM transceiver at both O-RU and O-DU sides by an embedded OAM channel. Table 6 shows the interface functional requirements.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Functions** | | | | **Semi-active**  **type I** | **Semi-active**  **type II** |
| CM | system |  | Topology | x | x |
|  |  | | Connection | x | x |
|  | WDM equipment | | Information query | x | x |
|  |  | | Equipment  configuration | x | x |
|  |  | | Protection  management | x | x |
|  | Transceiver | | Information query | x |  |
|  |  | | Configuration | x |  |
| FM | WDM equipment | | | x | x |
|  | Transceiver | | | x | x |
| PM | WDM equipment | | | x | x |
|  | Transceiver | | | x | x |
| Security | User management | Netconf password config | | x | x |
|  | Certificate handling | | | x | x |

</div>

**Table 6 - The interface functional requirements for Semi-active system**

#### Active-active

This configuration has both ends fully active and uses management interfaces. In this configuration, there is an Optical Supervisory Channel (OSC).

Table 7 compares features of Fronthaul WDM system features.

![]({{site.baseurl}}/assets/images/154d5303f990.png)

**Table 7 - Feature comparison of WDM Fronthaul Systems**

Table 8 shows the comparison for models for Fronthaul WDM system.

![]({{site.baseurl}}/assets/images/154d5303f990.png)

**Table 8 - Comparison of models for WDM Fronthaul Systems**

Here are the gaps for the three different models for Transceivers (comparing May 2020 models): OpenConfig [18]

* 25G Wavelengths missing.

OpenROADM [19]

* No 10G or 25G on-off keyed wavelength support,
* No lldp snooping,
* Only rudimentary tracking of client modules.

M-Plane [20]

* Only supports application where transceiver is plugged into O-DU/O-RU

Here are the gaps for the different models for WDM fronthaul common equipment: OpenConfig

* Subslot missing as explicit item,
* No individual pack FW update, only whole NE SW,
* OSC modeled only on amplifier,
* EMS required for lamp test,
* Database backup / restore is via Netconf read / write config,
* Streaming telemetry no historic data,
* No explicit wavelength dependent port.

OpenROADM

* OSC is Ethernet only, no SONET,
* OSC assumes lldp from other end (problem for passive-active?),
* No path protection defined.

M-Plane

* WDM common equipment not defined at all.

The following recommendation shows how the models can be used based on where the optics are located:

Transceiver inside O-DU/O-RU Use M-plane

Transceiver inside router/switch Use OpenConfig or IETF (see IP/Ethernet section) Transceiver inside transponder Use OpenConfig or OpenROADM

For the common equipment the following recommendation can be used: If supplier already supports OpenConfig Use OpenConfig

If supplier already supports OpenROADM Use OpenROADM

### Mid- and backhaul ROADM transport

This section covers the optical transport needs for mid- and backhaul fiber optic systems. The assumptions are that these fiber optic transport systems are multi-point systems and therefore need reconfigurable add/drop capability, known as ROADMs. Table 9 lists the features in a typical commercial ROADM system.

![]({{site.baseurl}}/assets/images/5c4e30e2a11b.png)

###### Table 9 - Feature list for commercial ROADM systems

Table 10 compares the models in commercially available ROADM systems.

![]({{site.baseurl}}/assets/images/98138dce0b00.png)

###### Table 10 - Model comparison for commercial ROADM systems

In terms of comparison of the two options, the main difference between OpenConfig and OpenROADM are the assumptions of the SDN architecture behind the use cases.

In the case of OpenConfig, there is an assumption that there exists a vendor controller for the ROADM switches[1], where the end-to-end path through the ROADM network is configured through the vendor controller (see Figure 1). The transponders are directly controlled from the SDN Controller via OpenConfig interfaces.

1 this architecture is sometimes called "partial disaggregation", and standards such as ONF Transport API are available for the API to the vendor controller.

![]({{site.baseurl}}/assets/images/d321a45e4937.png)

###### Figure 1 - OpenConfig partial disaggregation configuration

OpenROADM on the other hand assumes that all the elements are disaggregated and can be controlled by a single logical SDN controller using OpenROADM APIs. The devices are directly integrated into the SDN Controller independent of vendor with direct control of line system (see Figure 2).

![]({{site.baseurl}}/assets/images/6c926a8c755e.png)

**Figure 2 - OpenROADM full disaggregation configuration**

Here are the gaps for the three different models for Transponders (comparing May 2020 models): OpenConfig

* 25G Wavelengths missing.

OpenROADM

* No 10G or 25G on-off keyed wavelength support,
* No lldp snooping,
* Only rudimentary tracking of client modules.

Here are the gaps for the different models for WDM common equipment: OpenConfig

* No individual pack FW update, only whole NE SW,
* EMS required for lamp test,
* Database backup / restore is via Netconf read / write config,
* Streaming telemetry no historic data.

OpenROADM

* No path protection defined.

For the ROADM equipment the following recommendation can be used:

If Network Operator uses single vendor optical controller Use OpenConfig

If Network Operator disaggregates optical commons Use OpenROADM

## IP/Ethernet transport

The intention of this section is to document the research that has been undertaken by the O-RAN WG9 team and provide recommendations relative to the automation and management of O-RAN networks and pertains to the architecture and solutions outlined in WG9's Xhaul Packet Switched Architectures and solutions (O- RAN.WG9.XPSAAS-v03 [21]) and how a slice can be managed. The packet switched transport architecture is illustrated in Figure 3.

![A picture containing diagram  Description automatically generated]({{site.baseurl}}/assets/images/c54be95a13b5.jpg)

###### Figure 3 - Packet switched transport for mobile Xhaul

It is a converged end to end packet switched infrastructure, beginning at the cell site, located in the edge of the access part of the transport layer, and stretching to the core of the transport layer. The packet switching TNEs are IP/MPLS or SRv6 QoS enabled, high capacity, low latency devices interconnected by point-to- point Ethernet interfaces running at the full capacity of the Ethernet interface, typically using either point to point fibres or via a WDM infrastructure. It incorporates data centers suitably placed across the transport network infrastructure to support virtual and physical NFs associated with mobile and fixed services but also potentially the placement of "Application Functions" associated with value-add services and customer specific application.

The logical architecture is based on a common underlay packet switching infrastructure based on either MPLS or SRv6 overlaid with a L2 / L3 service infrastructure (VPNs) that uses the capabilities of the underlay packet switched network to support the mobiles interfaces.

The underlay packet switching infrastructure provides basic network services such as any-to-any connectivity between TNEs, scaling, fast convergence, shortest path and traffic engineered forwarding, packet-based Quality of Service (QoS) and timing.

The service layer supports native Ethernet services, using EVPN technology and IP VPN services, using MP- BGP based L3VPNs. These services can utilise the facilities offered by the underlay packet switched infrastructure to support the different mobile interfaces in an appropriate fashion. Where possible transport services are built on an end-to-end basis without intermediate stitching / switching points within the transport infrastructure. This approach has been taken to minimise the transport service orchestration overhead.

### Provisioning and managing a packet switched infrastructure

There are two main phases associated with the provision and management of a packet switched infrastructure:

* Building and managing the basic infrastructure. This is a process that occurs when the network is first built and later when new TNEs are installed or when TNEs are modified or upgraded. It covers the basic set-up of devices, the configuration of the management infrastructure, set-up of interfaces, core QoS and routing protocols. This function is undertaken by the network operations team and is normally largely transparent to the users of the network.
* Services configuration and management. In the architecture outlined in Xhaul Packet Switched Architectures and solutions (O-RAN.WG9.XPSAAS-v04 [21]) services, such as a transport slice, are MP-BGP based on L2VPNs and L3VPNs. The construction of a service involves multiple actions and components such as building VPNs, Edge QoS, service level OAM and potentially mapping services to underlay policies. In contrast to the basic infrastructure this is an on-going process and

constantly changing. The service orchestration and service assurance also need to interact with OSS/BSS components and customers. In this instance a customer can be a human or external orchestration software. Relating this specifically to transport level slicing; the customer might be the NSMF. It also needs to abstract away the topology, complexity, and technology of the actual network infrastructure, so the customer can largely treat the network as a black box offering connectivity and SLAs.

### Assessment methodology and analysis

For the device models, the primary objective from WG9 was to evaluate open standard interfaces that can be used to between the Transport Controller (TSC) to satisfy the requirement for automation on the Xhaul Packet Switched networks as described in O-RAN.WG9.XPSAAS-v04.00 [21]. The types of interfaces fall into several categories:

* Configuration/operational interfaces (e.g. Netconf/YANG with YANG data model supporting the required functionality)
* Control-plane interfaces (e.g. BGP-LS, PCEP)
* Telemetry interfaces (e.g. Openconfig gRPC or NETCONF)

To break down the assessment, a list of high-level technology areas was created where interfaces and data models would be required to satisfy the functional requirements for O-RAN. For each of these areas a review was performed to assess the availability and completeness of these interfaces. For each of the categories research was done to assess existence, maturity and completeness of options available in IETF and Openconfig projects as well as the suitability to facilitate automation of the O-RAN proposed architecture.

The high-level technology areas reviewed were as follows:

Configuration/Operational Interfaces:

* Hardware Inventory
* L3VPN
* EVPN
* QoS
* SR
* RSVP
* Network Slicing
* Inter-AS
* OAM
* Multicast
* Timing

Control-plane Interfaces:

* Tunnel Discovery and tunnel CRUD operations
* Topology acquisition and monitoring

Telemetry Interfaces:

* Performance monitoring
* Fault monitoring

It was clear from early on in the research that there were two main source areas where significant work has already been undertaken to standardize interfaces that fall into the categories above. Firstly, within the IETF

there are many different activities that have either been carried out or are work in progress. As per the agreement with WG9 only RFCs and working group drafts will be considered for recommendation (if suitable), however some Internet drafts may be tracked especially if there is a strong indication that they will soon become working group drafts and if they have high relevance to the O-RAN project. Secondly, a good deal of work has taken place within the Openconfig project where a number of network operators work to create common YANG models suitable for common network deployment scenario that can be used across multiple vendor technologies.

* + - 1. Configuration/Operational Interfaces
         1. IETF Gap Analysis

There are a number of working group drafts within the IETF that are possible candidates for use when configuring the network elements. Most of these are still in draft stage and in some cases, there are some gaps which have been identified (see Table 11).

![Table  Description automatically generated]({{site.baseurl}}/assets/images/cf0b832977f8.png)It is not clear at this time whether there is extensive support for these drafts across the various vendor implementations which could create challenges for real world adoption in the short term.

###### Table 11 - IETF YANG Models for Configuration

* + - * 1. Openconfig Gap Analysis

The research which was undertaken also reviewed the available YANG models within the Openconfig project. Table 12 shows the models that were reviewed:

![Table  Description automatically generated]({{site.baseurl}}/assets/images/5b9af0c39107.jpg)

###### Table 12 - Openconfig YANG Models for Configuration

While there appears to be good coverage in some areas like VPN technologies there are also gaps in some important areas like SRv6 and Flex Algo.

* + - * 1. Native YANG models

All vendors typically have their own YANG models which describe their NOS capabilities in their entirety, including both standards-based features and vendor proprietary features. These models will (but do not always) offer the guarantee that for the given vendor platform all available features can be automated in a structured way by an automation system. One advantage to using all native models can be to avoid the complexity of taking incomplete standards-based models and trying to create augmentations for different vendors by cherry picking pieces of the native models. On the other hand, the advantage of taking standards- based models and augmenting the missing pieces with native models can create synergies in network automation software between different platforms.

Where working with cutting edge features the reality is that often the only approach practical is that of using a vendor-native model until such a time as open alternatives are updated. An additional area where standardization is problematic is the area of QoS. While there are efforts in both IETF and Openconfig to create standard models, it has proved very difficult (at least in IETF) to agree on certain aspects of this model. One of the challenges is the fact that vendor implementations vary considerably in the approaches to implementing QoS technologies, largely because this has been an area where vendors have deliberately sought to gain competitive advantage through their individual innovation efforts.

* + - * 1. Network Slicing

While not a focal point for this interaction of investigations, one area that merits further discussion is the topic of network slicing. There are many active drafts (many of which are currently Internet drafts) being worked on in the IETF that are looking to address interface standardization in the context of Network slicing. In most cases these are still in relatively early phases and expected to evolve of the next year. Some of the interesting drafts are listed here **NOT** as a recommendation but as a placeholder to be reviewed as part of a future version of this document.

The following draft describes a possible YANG interface for a YANG data model for the management of slice policies on slice policy capable nodes and controllers in IP/MPLS networks: https://datatracker.ietf.org/doc/html/draft-bestbar-teas-yang-slice-policy-00

There are several drafts that aim to provide a YANG model suitable for use on the northbound interface of the Network Slice Controller (NSC), the following seems to be one of the most advanced at this time: <https://datatracker.ietf.org/doc/draft-ietf-teas-ietf-network-slice-nbi-yang/>

* + - 1. Control Plane Interfaces

It is expected that many O-RAN networks will decide to adopt PCE based SDN controller which will interact directly with the control-plane of the network and provide greater visibility of the network topology and LSPs carrying IP or IPv6 traffic across the transport network. Additionally, many PCE based SDN controllers simplify the implementation of traffic engineering use cases like path diversity, BW calendaring, bin packing, LSP placement based on constraints such as inclusion or exclusion of certain links, max delay and many other use cases that can help to simplify operations, lower opex or improve the experience of the end customer.

Typically, the PCE based controller interacts with the network using PCEP and BGP-LS, the capabilities offered by these protocols are often augmented through Netconf, Telemetry collection, config parsing and other mechanisms.

This section attempts to define a set of minimum standards that are desired be supported by both the routers and the PCE SDN Controller. Table 13 list some of the IETF standards considered.

![]({{site.baseurl}}/assets/images/ab5633f30a1b.png)

###### Table 13 - PECP RFCs and drafts

BGP-LS is widely used in transport SDN controllers to extract the IGP TED from the network via a BGP session. This allows the controller to build a topological view of the network and receive updates from the IGP when the network topology changes without being itself part of the IGP domain. This is generally the most widely deployed approach as it provides the ability to collate information from multiple different areas/ASes in a relatively straightforward manner.

Further to this in recent years BGP-LS has been extended to allow a simpler method of collection telemetry data from the network such as link latency, packet loss and available/residual bandwidth (see Table 14).

![Graphical user interface, text, application, email  Description automatically generated]({{site.baseurl}}/assets/images/699d7c188e17.jpg)

**Table 14 - BGP-LS and related drafts**

* + - 1. Telemetry Interfaces

When it comes to Performance Monitoring, both Openconfig and IETF models expose almost the same attributes. Openconfig models call them "counters", while IETF groups them under a "statistics" container. Ingress and egress attributes are being defined, and every different attribute is of type "yang:counter64", meaning an unsigned integer of 64 bites. Both models define attributes to measure how many octets were incoming or outgoing, how many of the ingress or egress packets were unicast, multicast, broadcast, discarded or with errors. Openconfig defines three extra attributes, as opposed to the IETF models: "in-pkts", which counts the total number of packets which were incoming. The same value can be computed also in the IETF model, by adding the unicast, multicast, broadcast and error packets, and the model does not define this sum explicitly. The same is available for the egress, where the Openconfig model defines also the attribute "out- pkts" as the sum of the unicast, multicast, broadcast and error. Openconfig also defines explicitly the received packets which had an FCS error: "in-fcs-errors".

Since the PM attributes are defined in YANG, either gNMI Streaming Telemetry or polling via NETCONF get operations can be used to retrieve these metrics (see Figure 4 for a graphical explanation). As long as the model definition is YANG, the actual attributes defined in that model do not matter from a polling or streaming perspective.

![Diagram  Description automatically generated]({{site.baseurl}}/assets/images/fb9ece3f2e90.png)

**Figure 4 - Telemetry models and protocols**

### Conclusion

In general, there is much work that has already been done to standardize the interfaces used between the IP packet network controller and the IP nodes on the O-RAN network. When it comes to the configuration interfaces there would appear currently to be more comprehensive coverage with OpenConfig YANG models compared to those that are available in the IETF, this said neither option provides all features that we expect would be required for a fully automated O-RAN network.

This considered, while it is recommended to adopt standard models as this will help with interoperability and API stability, it is acknowledged that proprietary extensions or use of native models may be required in cases where a single YANG model is not available that provides the full range of features required for a particular use case. Where working with cutting edge features the reality is that often the only approach practical is that of using a vendor-native model until such a time as open alternatives are updated. The advantage of taking standards-based models and augmenting the missing pieces with native models can create synergies in network automation software between different platforms.

For the telemetry interfaces, there are no gaps in IETF or OpenConfig and both, gRPC or NETCONF can be used for retrieval.

In the control plane there are mature IETF standards which are widely deployed and are desired to be leveraged as fully as possible.

## Grand master clock

There is currently an active project in IEEE 1588 implementing YANG data models for the latest timing and synchronization standard IEEE 1588-2019 [22]. This project is scheduled to complete sometime in 2023/24. IEEE 1588-2019 defines a precision timing protocol to synchronize clocks in packet networks to a grandmaster clock. The YANG data models will enable customization of all IEEE 1588-2019 defined data types, message formats, required computations, internal states, the behavior of devices with respect to transmitting, receiving, and processing protocol communications. Draft YANG files can be viewed at [23].

# Annex B (informative):

# Network Slicing Use Case

In this chapter we will look at the network slicing use case inside O-RAN. Ultimately, all the recommendations here will flow into the different chapters of the main document. But the goal right now is to define the functional elements and interfaces in one place as a use case before merging it back into the different chapters in a future version of this document.

![]({{site.baseurl}}/assets/images/fe2481841ac4.png)

###### Figure 5 - Functional architecture of the network slicing use case

Figure 5 shows a WG9-centric functional view of the network slicing use case. The Network Slice Management Function is part of the end-to-end Orchestrator, orchestrating across Radio, Transport and Core domains. In the Transport Domain, which is the focus of this working group, there is a subserving Transport Network Slice function (TN NSSMF). The Transport Network Slice function breaks out the request into the different Transport Domains (e.g., Packet, Optical, Microwave, etc.). How this works will be a topic for future versions of this document. While the diagram shows stand-alone elements of SDN Controller functions for each domain, those individual controller functions could be physical entities or logical entities integrated into a carrier's SDN Controller Framework. Each of the domain controller functions then control the Transport Network Elements (TNE) creating end-to-end network slices.

As part of the investigation the O-RAN WG9 team came up with three options for the controller architecture shown above. The first option uses the 3GPP models, the second follows very closely the IETF framework with different domain controllers per technology, the third option aligns more with the ONAP approach with a uniform network model.

## 3GPP slicing model in application to network slicing in TN domain

### History / modeling concepts

Since 3GPP Rel-10 3GPP SA5 has been working on the concept of Federated Network Models (FNM) based on the following principles (see clause 6.3 of 3GPP TR 32.828):

* Not one authority (e.g. SDO) can be responsible for the development, maintenance and evolution of the whole model. Different organizations are responsible for the development, maintenance and evolution of their own domain specific model
* Operators may use the whole FMC model or part of the FMC model depending on their own business cases.
* Vendors can supply products using part of the FMC model depending on their own business cases.
* The model needs to hold thousands of inter-related modelled entities. Different versions of modelled entities can co-exist in the model.

Essential FNM features include the ability to reference classes of "external" models, ability to import models designed elsewhere, independence of tool and platform, independence of solution technology and access protocol design. The key aspect of FNM approach is partitioning of the overall model into fragments with clear rules for inter-relationship of fragments. The advantages of FNM motivating its introduction documented in clause 6.3.2 of 32.828 are:

* It removes the need to keep the evolution of various fragments in synchrony. For example, it is a valid model implementation where one fragment has evolved (requiring new solution) while other fragment remained unchanged (does not require new solution).
* Domain experts (e.g. LTE experts) can focus his design on its fragments and (can, if wanted to) be ignorant of contents of other fragments (e.g., mobile backhaul networks experts).

In 3GPP Rel-11 a new set of NRM specifications (28.xxx series replacing 32.xxx series) has been published by 3GPP. It includes the "Federated Network Information Model (FNIM) Umbrella Information Model (UIM)" jointly published by 3GPP (as TS 28.620) and TMF (as FNIM). The structure of all 3GPP NRM follows the FNM approach:

* at the root, there is a number of classes that form the UIM (see clause 4.1 of 3GPP TS 28.620). These classes are represented in UML and are implementation neutral views in that they only capture the semantics of the model from both a purpose neutral and purpose specific perspective. They do not include syntax or representation of the information in a system or on-the-wire between systems; and do not relate to the protocol used to create/delete/read/write/modify the NM information.
* Various SDOs and organizations are expected to use the UIM classes for definition of Domain/Technology-specific model classes. This procedure will maximize the probability of the domain/technology specific concrete classes (from various SDOs) being semantically consistent, a necessary characteristic for FMC NM purposes.
* 3GPP specifies Generic NRM IRP (3GPP TS 28.622) where it defines abstract classes aligned with UIM and other NRM IRPs such as E-UTRAN NRM IRP (3GPP TS 28.652), 5G NRM (3GPP TS

28.541) where it defines concrete classes.

### 5G Slicing

Starting from 3GPP Rel-15 a new management framework - Services Based Management Architecture (SBMA) (see 3GPP TS 28.533 for details) has been introduced. SBMA eliminates the need for normatively prescribing functional blocks as Management Functions (MnF) with mandatory sets of functional requirements and shifts the focus of standardization to definitions of Open APIs as Management Services (MnS). According to SBMA concepts, there is no restriction on what entities are allowed to consume MnS and what entities are mandated to produce the MnS - these details are left up to Operator's deployment preferences. In SBMA the management of slicing is not separated from the management of 5G System - Network Slicing is just a feature (among many others) supported by 5GS and by 5G management and orchestration.

3GPP TS 28.533 clause 4.1 defines the fundamental building block of the SBMA as the MnS. A MnS is a set of offered capabilities for management and orchestration of network and services. The entity producing an MnS is called MnS producer. The entity consuming an MnS is called MnS consumer. An MnS provided by an MnS producer can be consumed by any entity with appropriate authorization and authentication.

An MnS producer offers its services via a standardized service interface composed of individually specified MnS components. A MnS is specified using different independent components. A concrete MnS is composed of at least two of these components. Three different component types are defined, called MnS component type A (a group of management operations and/or notifications that is agnostic with regard to the entities managed), MnS component type B (management information represented by information models representing the managed entities) and MnS component type C (performance and fault information of the managed entity).

3GPP TS 28.541 (annex L) illustrates the role of the MnS component type B (3GPP NRM) in the slice fulfilment and assurance processes, and the relationship between GSMA GST, ServiceProfile and SliceProfile defined in clause 6 of TS 28.541.

![]({{site.baseurl}}/assets/images/fcb8ac601de6.png)

###### Figure 6 (3GPP TS 28.541) Relation between GSMA GST, ServiceProfile and SliceProfile

The scope of 3GPP (and 3GPP NRM) does not cover Transport Network (TN) management and orchestration, it does not define nor formally specify any of the TN entities. However, since TN is critical for successful deployment of 3GPP networks and 5G slicing, the interactions with TN are supported by NRM touch points where 3GPP NRM (MnS component B) entities have associations with entities from external (e.g. TN) models. Examples of such associations with entities of ETSI ISG NFV model (such as "NetworkService" and "VNF") are visible in the network slice NRM (see figure 6.2.1-1 in 3GPP TS 28.541). The interactions between 3GPP Management System and TN Management System in the context of network slicing management and orchestration are illustrated in clause 7.11 of 3GPP TS 28.801 and further elaborated throughout the 3GPP TS 28.531.

The 3GPP Information model defines IP networking integration for Network Functions. The model had been progressively augmented to integrate slicing Use Cases.

### Slicing in 3GPP Release 15

Release 15 leverages the EP\_RP IOC defined in 3GPP TS 28.622/28.623 section 4.3.11. The EP\_RP IOC represents an end point of a link between two 3GPP network entities (e.g. EP\_F1U, EP\_F1C, EP\_N3...). TS

28.541 extends EP\_RP with the "localAddress" and "remoteAdress" attributes.

* *localAddress* has two sub-attributes *vlanId* and *ipAddress* to manage the configuration of the underlying IP interface of the EP\_RP endpoint.
* *remoteAddress* is the address of the gateway (i.e. the route next-hop) associated with the underlying IP interface of the other EP\_RP endpoint.

The same EP\_RP instantiation can be re-used to represent many-to-many connectivity as a collection of point-to-point links. For example, a CU-UP Network Function can connect with multiple UPF and conversely a single UPF can connect to multiple CU-UP Network Functions (see 2)

![Text, timeline  Description automatically generated]({{site.baseurl}}/assets/images/db0efe24bd5e.jpg)

**Figure 7: Specification view of Release 15**

![Diagram  Description automatically generated]({{site.baseurl}}/assets/images/9b76d7f20316.jpg)

**Figure 8: Architecture view. many-to-many connectivity enforcement between CU-UP and UPF Network Functions**

### Slicing in 3GPP Release 16

Release 16 introduces the EP\_Transport IOC in 3GPP TS 28.541 for Network slicing purposes. The EP\_Transport IOC permits to define additional logical IP Interfaces for each slice instance of the 3GPP User Plane.

![Diagram, schematic  Description automatically generated]({{site.baseurl}}/assets/images/355f99858a5f.jpg)

###### Figure 9: Example of the logic flow with 3GPP TS 28.541 parameters with Networking domain

* A list of EP\_Transport IOC can be referenced by User Plane Endpoints (EP\_RP). In Release 16, the use of EP\_Transport is restricted to the Backhaul interface. In other words, only EP\_Ngu of the gnb CUUP and EP\_N3 of the 5GC UPF functions are extended with references to EP\_Transport.
* The EP\_Transport IOC has 4 attributes to handle the configuration of the Transport Network.
  + *ipAddress*

This parameter permits to configure the IP Address of the interface associated with a transport slice.

* + *logicInterfaceId*

**[R1]:** This parameter is a generic container for network data plane slice identifiers such as a vlan tag or an MPLS label.

**[R2]:** \*Note As agreed within O-RAN WG5 and WG6, the basic slice delineation technology is IEEE 802.1Q VLAN tag.

* + *nextHopInfo*

**[R3]:** This parameter is used to identify ingress transport node. Each node can be identified by any of combination of IP address of next-hop router, system name, port name, IP management address of transport nodes.

* + *qosProfile*

This parameter references to a QoS Profile that is associated to the transport network interface. A QoS profile includes a set of parameters which are locally provisioned on both sides of a logical transport interface.

![Timeline  Description automatically generated]({{site.baseurl}}/assets/images/08fb42af8f18.jpg)

**Figure 10: Specification view of Release 16 with per-slice EP\_Transport example 1**

![Diagram  Description automatically generated]({{site.baseurl}}/assets/images/b83bce8351ea.jpg)

**Figure 11: Architectural view. Example 1 deployment options.**

![Timeline  Description automatically generated]({{site.baseurl}}/assets/images/4522ad3e792c.jpg)

**Figure 12: Specification view of Release 16 Example 2, where extension of slices EP\_Transport is applied on NgU**

![Diagram  Description automatically generated]({{site.baseurl}}/assets/images/093f2cd0e322.jpg)

**Figure 13: Architectural view, corresponding to Example 2 (links represent logical association, not physical).**

### Slicing in 3GPP Release 17

Release 17 extends the slicing data model introduced in Release 16 to the Midhaul Network. In other words, the 3GPP TS 28.541 slicing data model is augmented with EP\_Transport references for EP\_F1U on both gnbDU and gnb CU-UP Network Functions.

![Timeline  Description automatically generated]({{site.baseurl}}/assets/images/860ff97b6ee7.jpg)

###### Figure 14: Extension of EP\_Transport support for F1U Endpoints in 3GPP Release 17

Network Slicing in Midhaul (F1\_U) and Backhaul (NgU) can be implemented in two ways:

* Use dedicated network functions for each slice as depicted in Figure 15.
* Use shared network functions for slicing with different Transport Network planes as depicted in Figure 16.

![Timeline  Description automatically generated]({{site.baseurl}}/assets/images/3158f3b9f60c.jpg)

###### ![Timeline Description automatically generated with low confidence]({{site.baseurl}}/assets/images/69051e550239.jpg)Figure 15: Dedicated per slice CU-UP deployment

**Figure 16: Shared CU-UP with transport slicing awareness**

After this analysis and discussions within O-RAN WG9 the conclusion is that NRM 3GPP TS28.541 has not provide enough data to create valid Transport Network Slice.

However, since some of the parameters required to create transport network slice may be extracted from NRM TS28.541 and some can be translated from SMO expectations, the following scope of work for WG9 and WG10 is proposed:

* Collect missing parameters in NRM TS 28.541 for TN Slice creation
* Propose enhancements of NRM TS 28.541 to include OpenModelClass TNSliceSubnet to link EP\_Transport to TN and add options for linking 3GPP subsystems to TN subsystems
* File O-RAN liaison to SA5 in order to augment TS 28.541 with missing information and proposed items.
* Align with IETF TN Network Slice abstraction

Observations

The current data model has limited integration for IP networking capabilities.

* No IP subnet mask in EP\_RP resource. This is required for the configuration of the gateway configuration.
  + Note that the scope of this item is broader than user plane slicing since control plane interfaces also may require connectivity enforcement via the Transport Network. In the case

of control plane, EP\_RP is the only IP Networking data configuration in the 3GPP data model.

* + In this regard the current data model is inconsistent. The *IPv6Prefix* resource is defined
* No indirection capabilities in case of routed O-CLOUD infrastructure. The Transport Network can be attached via a different IP subnet than the IP subnet in which network function are deployed. This information may be provided to the Transport Network by 3GPP APIs.
* Next, more complex Transport Network integrations such as redundancy, routing protocols parameter may also be integrated.

## IETF Orchestrator and controller framework

To support service automation, northbound abstraction of services and increasing interest in SDN, the IETF and other bodies, see multiple layers of orchestration and network control with different types of Yang models used in the end-to-end management of services in the transport network. The IETF has published various informational drafts that discuss different layering schemes and types of Yang models, include RFC8969 [24], RFC8199 [25], RFC8309 [26]. The basic premise in these drafts is there are different network management components communicating using different types of Yang models. Figure 17 and Figure 18 are taken from RFC8309 [26] and show environments where there is a three-layer architecture and a four-layer architecture, respectively. In a four-layer architecture the service orchestrator is exposed to the end-user customer and includes a customer service interface.

![Diagram  Description automatically generated]({{site.baseurl}}/assets/images/0695807a24db.png)

###### Figure 17 - Three-layer network management architecture [24]

![Diagram  Description automatically generated]({{site.baseurl}}/assets/images/1dbfca189772.png)

**Figure 18 - Four-layer network management architecture [24]**

Both environments support different types of Yang models including:

* Service Models: An abstracted, non-technological view of a service. For example, an L2 or L3 VPN service as defined RFC 8466 [27] and 8299 [28].
* Network Models: Topology and technology aware models of how the service will be realised on the network. For example, the L2NM and L3NM models for defining L2 and L3 VPN based on MP-BGP L2VPNs (draft-ietf-opsawg-l2nm-02) and L3VPNs (draft-ietf-opsawg-l3sm-l3nm-09).
* Device Models: Models used to configure specific functionality on the devices.

Both environments differentiate the controller function from the orchestrator functions, with the controller providing the conversion of the network models into device configuration and the orchestrator responsible for conversion of an abstract model into a model that can be actioned by the controller. In the four-layer model there are two types of orchestrators with one associated with the service and the other associated with the network.

The slice architecture proposed in O-RAN.WG9.XPSAAS-v03 outlines slicing solutions based on L2VPNs and L3VPNs utilising facilities within the transport network such as SR policies, Flex-algo and traffic

engineering. It also clear that a transport slice may be one or more VPNs at the transport layer. Various work is going on in the IETF TEAS group to come up with a transport slice NBI model which describes the customer transport slice requirements, at this time these are personal drafts so are not referenceable. There are also RFC based Yang models describing L2 and L3 service models and standards track drafts for a common VPN, L2 and L3NM models. In addition to the basic L2 / L3 service constructs there are other drafts such as draft-ietf- spring-sr-policy-yang-01, draft-ietf-teas-te-service-mapping-yang-07 which may have applications in mapping L2VPN and L3VPNs to underlay forwarding planes.

At this time more work is required to understand how these different Yang models can work together to create an infrastructure suitable for slice orchestration.

As part of this Network Slicing Use Case O-RAN also will issue recommendations on management interfaces between the different functions outlined above. The interface candidate between the end-to-end orchestrator and the Transport Network Slice Management function is currently a 3GPP definition, which will be more fleshed out in a future version of this document. The Interface between the Transport Network Slice Management function and the domain SDN-Controller functions still needs more definition in existing standards organizations and will also be fleshed out in more detail in future documents. The Interface candidates southbound of the Domain SDN Controller functions have already been described in the technology specific chapters in this document.

## Uniform transport network model

The Service Management and Orchestration (SMO) framework inside the O-RAN Architecture is responsible for the Operations, Administration and Maintenance (OAM) functions. For facilitating these functions, the SMO is desired to communicate with the RAN network functions, as well as with the Transport Network network functions. This implies different YANG models for different technologies (e.g., Packet, Optical, Microwave, etc.), and even different YANG models from different SDOs for the same technology domain. It would be beneficial if all this complexity is not transferred through the Northbound Interface (NBI) to the other SMO components/applications (some examples might include a Transport Slice Controller - which handles network slicing use cases, or AI/ML applications doing, for example, predictive maintenance, or other possible Closed Loop end-to-end use cases, etc.). This is possible by adding an abstraction layer that exposes a uniform network model to other SMO components (NBI) and that communicate southbound with different technologies having different YANG models. This layer also needs a method to add some Enrichment information (be it from a database or some other means) that expresses, for example, links between domains, in cases where the network functions themselves are not able to express them. Figure 19 shows how such an abstraction layer could fit into the architecture of the SMO.

![]({{site.baseurl}}/assets/images/2b26be79a6b8.jpg)

###### Figure 19 - High level view of an Abstraction layer exposing a uniform Network Model

Utilizing a uniform network model brings the benefit of keeping the complexity as low as possible in the hierarchy, as well as avoiding duplicate work in the upper layers. It can be regarded as a service responsible for presenting a uniform network model to any other application or service interested, while translating or mapping the underlying device YANG models. An example of how such a service could fit into the controller architecture is depicted in Figure 20.

In this way, the uniform network model could enable network slicing through a unified view of the underlying end-to-end network, as well as other use cases, such as AI/ML applications, Closed Loop use cases or Data Lakes that leverage a uniform end-to-end network view.

![]({{site.baseurl}}/assets/images/e8113ad03dec.jpg)

###### Figure 20 - High level controller architecture including uniform Network Model

The mapping or translation of the southbound models into the uniform network model, as well as the enrichment information for describing links between domains are key aspects of the proposed architecture.

Concerning describing the enrichment or the topological information in a uniform way, there are two candidate topology models from two standards, namely the T-API topology model and the IETF-network-topology. The [TAPI Topology](https://github.com/OpenNetworkingFoundation/TAPI/blob/v2.3.1/YANG/tapi-topology.yang) YANG model, defined by the Open Networking Foundation (ONF) has the following fulfillments:

* It fulfils the requirements stated in this document, in Chapter [4]
* It provides the required abstractions according to requirements gathered by ONAP, based on operator and vendor input (details)
* It has an Apache 2.0 License (details [here](https://github.com/OpenNetworkingFoundation/TAPI/blob/v2.3.1/LICENSE)), accelerating the openness of the APIs

With further investigation, open-source projects, namely TransportPCE and ONOS came into the picture which utilizes T-API topology in the NBI for the network view. T-API also supports multi-layer service and connection provisioning which makes T-API a good candidate. Nevertheless, T-API has been defined with the focus on optical network. The second candidate is the IETF-network-topology and the following section describes why it could be the recommended choice for the uniform network model.

### Multi-domain Support

As the previous section acknowledges the features of T-API topology and existing proposals and implementations using T-API topology to control a heterogeneous optical network, the analysis of the possibilities of utilizing T-API topology for a uniform network view is performed. As a result, it is understood that T-API topology provides multi-layer topology representation of the L2-L0 network namely the DSR, OTU and Photonic Media layer. However, as the name suggests, T-API is a northbound standard for the transport domain with focus on the optical network. Although T-API do support multi-layer connection service creation, the question arises if T-API can also support multi-domain topological

representation and service creation beyond the optical domain. As of today, T-API supports the three interface profiles, namely, Layer 2 Carrier Ethernet, Layer 1 ODU Optical Transport Network and Layer 0 Photonic Media. If T-API can be extended to support non-optical interface profiles such as Microwave Radio Link remains unanswered today.

The alternate topology model that has been analyzed is the IETF Network topology model as defined in RFC 8345. The approach here is to provide an abstract network topology data model as a generic base. This allows applications to operate on a topology of any network at a generic level, where the specifics of particular inventory/topology types are not required.

![]({{site.baseurl}}/assets/images/58d3de191c03.png)

###### Figure 21 - IETF Network Topology

As seen in Figure 21, the abstract topology model can be used to define layer specific, service or use-case specific topology models. Concerning the uniform network model, such a generic model without the specifics of a particular inventory/topology types allows to present an aggregated and uniform network view without needing to provide any device related specifics. It could be also easier not only to describe multi- layer topologies but also multi-domain topologies w.r.t nodes and links. Furthermore, IETF provides different data models for different network layers such as RFC 8944 for Layer 2 and RFC 8346 for Layer 3 topologies. All these models are derived from the same ietf-network-topology which will technically make it easier for their augmentation into the same topology model when it comes to providing a uniform network view.

Considering multi-domain support, unlike T-API, IETF indeed has various interface profiles beyond the optical domain. Few examples are RFC 8561 (Microwave Radio Link Yang Data Model) and RFC 9094 (YANG Data Model for Wavelength Switched Optical Networks (WSONs)). Additionally, IETF also supports the modelling schema according to Chapter 6. Hence, IETF network topology model could be used as the topology model taking into account a multi-domain, multi-layer network scenario.

### Abstraction Layer

![]({{site.baseurl}}/assets/images/d73182cf2879.jpg)

###### Figure 22: High Level Architecture of the Abstraction Layer

Figure 22 presents a high-level architecture of the Abstraction Layer, presenting the vital components that can achieve the uniform view of the network infrastructure. A brief explanation of these components and their functionalities follows as below:

*Enrichment*: The enrichment component is the external information base that provides the topology information in terms of nodes and installed links between them. Sometimes devices support protocols such as LLDP and can provide the controller with information about its neighbours, using which an NBI application may be able to construct a topology. However, providing topology information is not a mandatory feature that needs to be supported by a device and even standards such as T-API expect such information to be externally provided to the controllers. This information is generally based on what is actually installed in the infrastructure and how all devices are connected to each other in reality. Therefore, such topological information can be provided by the operator who can obtain such information. Enrichment can further include multi-layer and logical topologies from various domains within the network.

*Topology Manager*: This component will be responsible for creating a uniform view of the underlying topology by utilizing the topological knowledge from the Enrichment and translating all information into a uniform network model. As discussed above, this model could be created using the IETF network topology and can consist of multi-domain, multi-layer child or sub network topologies.

*Network Domain Manager*: Considered to be domain-specific, this component handles the device and the technology specifics within a domain and models them into a uniform device information model. This component can be divided into two sub-components based on two chief functionalities.

*Mapper*: The Topology Manager supports a logical or loose binding of the node information which means the node endpoint information advertised by the topology manager might not be the actual device/interface endpoints in the underlying infrastructure. A node in the uniform topology model could also represent multiple real devices or interfaces, grouped together by the operator to present a logical abstraction.

However, a valid mapping between such logical representation and the actual nodes, devices have to exist in order to assist the controllers to configure, manage and monitor the corresponding devices in the underlying infrastructure. In the case of the uniform model view, this loose binding is handled by the Mapper.

*Translator*: The handling of the translation of different domain-specific southbound device models to a uniform device information model is carried out by the Translator. As an example, if we consider a microwave domain with devices, few of which support the IETF Microwave Link Model and remaining the ONF microwave model, the translator needs to translate the device properties from these two models into the uniform model so as to present both kinds of devices to the NBI applications in a uniform way.

*Network Model Provider*: The Network Model Provider functions as the API that can provide the network abstraction generated by the Topology Manager to the northbound applications. It also forwards any device information related requests to the Network Domain Manager where the Mapper identifies the devices and the Translator provides the corresponding specifics using the Network Model Provider.

### Uniform Device Information Model

While the previous sections describe our analysis on the existing topology models namely T-API and IETF and our proposal of using IETF network topology to achieve the uniform topology model, this section elaborates the concept of the uniform device information model and the potential ways to achieve it. The uniform device information model can be acknowledged as a model capable of exposing the device specifics of the underlying infrastructure from each domain in a homogeneous way. The translation of device information to and from the diverse southbound device yang models is expected to be achieved by the Translator as in Section 9.3.4. In this section, we propose two possible approaches of realizing the Network Domain Manager-Translator and its functionalities.

* + - 1. Approach I - Defining a new Uniform Model

![]({{site.baseurl}}/assets/images/267740db27a8.jpg)

###### Figure 23 - Translator architecture example- Approach I

Consider the Microwave domain as an example comprised of devices following either of the two models- IETF Microwave Link or the ONF Microwave Model. With this approach, the aim is to translate both the IETF Microwave Link and the ONF Microwave model to a new uniform model. It will be this new model that will be exposed to the NBI applications such as the slice controller while the translator performs the adaptation of the IETF and the ONF models to this uniform model and vice versa. However, this approach requires to define this new model as no such uniform model exists for any domain today. Also, the definition of this model must include sufficient parameters with minimal gaps and must be also complete enough to suffice the translation to and from both IETF and ONF models as in the case of this example. Additionally, as the translator has to perform the translation of both IETF and ONF models to and from this new model, the Translator needs to be equipped with two independent translation functionalities for each standard in this example.

* + - 1. Approach II - Defining a Uniform Model with domain specific augmentations

Let's consider the same scenario of the microwave domain again consisting of both IETF and ONF compliant devices. However, as shown in Fig. 24, instead of defining a new uniform model, this approach aligns with the objective of reusing the existing models.

![]({{site.baseurl}}/assets/images/8cd030fad88f.jpg)

###### Figure 24 - Translator architecture example- Approach II

Both approaches require a thorough study and comparison of device models from different standards within a given domain. However, this approach aims to utilize the understanding of the existing models and their gaps to create a model composed of domain and technology specific augmentations. In this microwave domain example, according to Fig. 24, it is assumed that the definition of the microwave or the air interface in the ONF Microwave Model is more absolute than the IETF counterpart, therefore, the uniform model would consider the augmentation of the ONF air-interface pac to describe the microwave interfaces of the underlying devices. On the other hand, it is assumed that with respect to Ethernet, the definitions provided by IETF are thorough and therefore, would be augmented to the uniform model. As a result, the uniform model is generated with augmentations from different standards based on their thoroughness and sufficiency.

Concerning the translator in this example, a translation would be required to and from ONF to IETF for the air interface and similarly to and from IETF to ONF for the Ethernet interface. However, this eliminates the necessity of two independent and complete translations between IETF, ONF and the uniform model unlike approach I. As part of future work, the evaluation and comparison of models from different standards in different domains would be executed. An analysis of the gaps and the feasibility of such technology specific augmentations will be presented.

### Conclusion

This chapter elaborates the concept of the uniform network model and the benefits it brings in moderating the complexity of network control and management when it comes to creating connectivity services or network slices across domains following different standards and device models. As a starting point, this chapter includes a brief overview of our survey on the topological model of two standards namely T-API and IETF and possibilities of utilizing them for the uniform network view. As a result, it has been highlighted that T-API and its supported interface profiles have a strong hold on optical domain. IETF on the other hand, supports diverse interface profiles from different domains, hence, can be considered as a better choice. A high-level architecture of the Abstraction Layer is introduced in this phase with a brief explanation of the possible components in this layer. As part of this concept, two approaches of constructing the unified device information model have been proposed. In the next phases, an examination of different models from different domains will be performed in order to understand the existing gaps and also the feasibility of reusing the existing models when it comes to constructing the uniform network model.

# Annex C (informative)

1 Management and network models for correlation of Network Slicing in RAN and Core subsystems with Transport Network domain

Definition of the scope of Management Interfaces phase 5:

1. WG9 Transport Management Interfaces spec and WG9 Transport Network slicing architecture spec are developed based on the contributions and spec readiness of other WGs and WIs.
2. F1\_U and NgU interface slicing capabilities are based on the readiness and contribution progress of WG5 and WG6. This at the moment of Nov 2022 includes:
   1. Network Slice Instantiation and separation in per NSSAI on RAN and Core may be done in many-to-many fashion as described in RBBN.AO-2022.02.22-WG9-CR-0001-XTRP- MGT.0-v.03.50-v03
   2. Network Slice isolation on RAN and Core may be done in VLAN+IPv4/v6 or single VLAN

+ [per-slice IPv6] fashion.

* 1. Single set of 3GPP IOCs parameters defined on **Dynamic5QISet, Configurable5QISet** and

**FiveQiDscpMapping** on O-RAN subsystem are expected for all slices.

1. Shared O-RU WI demands for slicing and separation are not included in phase 5 or 6.
2. Network Sharing use cases are not included in phase 5 or 6 of this document.

![]({{site.baseurl}}/assets/images/28417c6bb649.png)

###### Figure 25

**Problem statement.**

Due to the fact that in current version Rel. 17 3GPP IM/DM TS 28.541 is not fully defined per-slice subnet transport link between the RAN subsystem and Transport Network domain, provisioning of the slice in the transport and automation is a complicated task to perform. Interfaces F1 is not included in EP\_Transport. and other interfaces.

In order to define the model of the network slice in transport network in more formal way the next steps, highlighted in Phase 4 of the current document were taken and sent a liaison # S-2022003 "Transport Network Slicing Enhancement IM/DM TS28.541" to 3GPP SA5, capturing identified gaps and inputs from the WG9.

The resulting S5-225603 change was submitted to SA5 group, captured the confederated data model approach with a link to external object class model in IETF framework, namely we are targeting draft-ietf- teas-ietf-network-slice-nbi-yang-02 with model definition draft-ietf-teas-ietf-network-slices-14.

![]({{site.baseurl}}/assets/images/abe934811c3d.png)

###### Figure 26

The Rel. 17 3GPP IM/DM TS 28.541 object class relationships as proposed by S5-225603, includes the link to such model outside of 3GPP:

![Diagram  Description automatically generated]({{site.baseurl}}/assets/images/7a23d8e6ffcc.png)

**Figure 27**

## IETF slice Framework design.

IETF is working on the definition of what is called IETF Network Slices, that essentially describe how to request and realized network slices. The IETF Network Slice Controller is intended to offer a technology- agnostic North Bound Interface (NBI) for receiving the transport slice requests from consumers of transport capabilities, as in this case. The advantage of this is the fact of facilitating the integration of different technologies to serve TN slice requests following a common format.

![Texto, Carta  Descripcion generada automaticamente]({{site.baseurl}}/assets/images/81212981347c.png)

###### Figure 28 - IETF Network Slice Controller

The IETF Network Slice Service Interface definition, as North Bound Interface (NBI) of the Network Slice Controller, is a work in progress documented in [draft-ietf-teas-ietf-network-slice-nbi-yang-02]. The current approach is to create a model which allows the requests of connectivity constructs among Service Demarcation Points (SDPs) defined by the slice customer (e.g., the 3GPP Management System). Those connectivity constructs have a number of associated SLOs which will define the service constraints to be satisfied at the time of realizing the transport slice.

Several connectivity constructs, each of them with different connectivity patterns, can be defined via the NBI.

![Diagram  Description automatically generated]({{site.baseurl}}/assets/images/85588478923f.png)

###### Figure 29 - Connectivity constructs patterns on the NBI

Each of the connectivity constructs in Figure 29 (i.e., blue, orange, red and green) can have different SLOs associated, as input to provide differentiated behaviors on the transport side.

In practical terms the model, the way of defining the connectivity construct which are part of a slice (on current NBI version) is as follows:

![]({{site.baseurl}}/assets/images/5202d661e2ab.png)

![]({{site.baseurl}}/assets/images/d91c06bb6912.png)While the SLO policy can be explicitly determined in the model

With the progress of the activity in IETF, it is yet necessary to define the mapping of slice parameters between 3GPP and IETF. At the time of provisioning a 3GPP slice, it is necessary to bind two different kind of endpoints, as depicted in Figure 30:

* Mapping of EP\_Transport (as defined by [TS28.541]) to the endpoint at the CE side of the IETF network slice. This is necessary because the IETF Network Slice Controller (NSC) will receive as input for the IETF network slice service the set of endpoints at CE side to be interconnected
* Mapping of the endpoints at both CE and PE side. The endpoint at PE side must be elicited by some means by the NSC, in order to establish and set up the connectivity construct intended for the customer slice request, according to the SLOs and SLEs received from the higher-level system.

![Imagen que contiene Mapa  Descripcion generada automaticamente]({{site.baseurl}}/assets/images/e3431542562c.png)

###### Figure 30 - Mapping process

As a result of the recent extensive work on the correlation and mapping between 3GPP IM/DM and TN (IETF) IM in the context of network slicing management and orchestration is captured in the "IETF Network Slice Application in 3GPP 5G End-to-End Network Slice" draft (https://datatracker.ietf.org/doc/draft-ietf- teas-5g-network-slice-application/).

Version 00 (Version 01) of it is covering 3 example options of the mapping 3GPP NRM and IETF models:

![A picture containing text, diagram, screenshot, line  Description automatically generated]({{site.baseurl}}/assets/images/61ccde2d1b8c.jpg)

The rationale for this work is that comprehensive communication services utilize a blend of components defined by the 3GPP and non-3GPP entities like Data Centre Networks (DCN) and Transport Networks (TN).

To adhere to service provisioning procedures and maintain service performance, a degree of alignment is required between the 3GPP management system and the management systems of non-3GPP components such as the Management and Orchestration (MANO) system and the Internet Engineering Task Force (IETF) defined transport system.

The coordination process entails two primary actions:

* Procurement of capabilities specific to non-3GPP components.
* Articulation of operational requirements, including slice-specific prerequisites pertaining to non-3GPP elements.

This draft is describing options when SDP is located on the CE (3GPP) element, TN PE element and utilizing the approach for Data Model of the Network Slice, and also extending "attachment-circuits" section of the model by referring to the IDs of AC's Data Models from the AC draft draft-boro-opsawg-teas- attachment-circuit (https://datatracker.ietf.org/doc/draft-boro-opsawg-teas-attachment-circuit/)

3GPP NRM Rel 18 TS-28.541 Clause 6.3.35 LogicalInterfaceInfo represents 3GPP IOC with TN-related parameters of 3GPP subsytem interpreted in NRM to DM mapping example as CE network configuration of current model and may be referenced as a 'peer-sap-id' remote endpoint of the attachment circuit with parameters as 'nf-termination-ip' and 'nf-termination-vlan', and parameters related to the physical connection and associated with Bearer Service "ietf-ac-svc:attachement-circuits:ietf-bearer-svc"

3GPP NRM TS-28.541 6.3 ConnectionPointInfo represents 3GPP IOC with link to external data model in IETF draft-boro-opsawg-teas-attachment-circuit in order to link the corresponding 3GPP subsystem Transport Network-related slice Meeting Point (Clause 6.3.18 EP\_Transport) to IETF Network Slice attachment circuit.

As the I-D.ietf-teas-ietf-network-slices (https://datatracker.ietf.org/doc/draft-ietf-teas-ietf-network-slices/) has flexebility of Network-Specific abstraction, a need for more attention to connectivity parameters was identified during collaboration activity in O-RAN Alliance Working Group 9 between 3GPP SA5 representatives and IETF contributors.

AC-draft Data Model is used as an extension of the NS NBI YANG model for a purpose to capture and reflect IETF PE connectivity to 3GPP subsystem parameters such as:

* physical parameters of the bearer, captured in "ietf-bearer-svc" YAND Module of { {draft-boro-opsawg- teas-attachment-circuit} }, contains the physical connectivity parameters the link is utilizing, site location, (3GPP) device information, the IETF PE is connected to, and administrative operational parameters as status and activation time constraints
* logical connectiviy parameters: e.g VLAN, MPLS, Segment, IPV4, IPV6
* routing protocols

While 3GPP NRM Rel 17 TS-28.541 Clause 6.3.18 EP\_Transport Attribute "nextHopInfoList" from Clause

6.3.18.2 is associated with "ietf-network-slice-service:network-slice-services:slice-service:sdp:sdp-ip" value, in 3GPP NRM Rel 18 TS-28.541 Clause 6.3.18 EP\_Transport Attribute list no longer contains IP address of TN element, but a link to IETF meeting point with connectionPointId value of "ietf-ac-svc:attachement- circuits:ac:name".

Note: Possible values of Attribute, specifyng the type of the connection point identifier "connectionPointIdType" are VLAN, MPLS, Segment, IPV4, IPV6, Attachment Circuit (AC). In current exmanple Option 3 "Attachment Circuit (AC)" is used.

The implementations of the slicing may be done in various options and some of them are depicted in figure 31

![Graphical user interface, diagram  Description automatically generated]({{site.baseurl}}/assets/images/fa92d3903249.png)

###### Figure 31

Slicing may be done in a way of PDU (rel.15) without any exposure to Transport Network and with this exposure bases on delineation techniques as VLAN and VLAN + IP.

Option 1 set 2- Network slicing on common O-RAN and Core elements, where instantiated F1\_U/NgU interfaces are attached to transport element and corresponding IOC EP\_Transport of each network slice in RAN is aligned and coordinated with transport domain structure and topology with communicated transport- related parameters of SLA/SLO and traffic direction with coarse demand in accordance to the IETF model [draft-ietf-teas-ietf-network-slice-nbi-yang-02].

Example of Option 1 is linear connectivity of RAN and Core entities with traditional hierarchical structure of the MNO architecture, with centrally located O-CU-UP and Core elements attached to Aggregation (HL3) and Core (HL2) transport elements, with distributed O-DUs, attached on Pre-aggregation (HL4) and access (HL5) layer of the network.

For this example, topological diversity for the traffic profiles of different slices may have separation with QoS model [see 26 section "Transport QoS Architecture for O-RAN slicing phase 1, and 3"], Transport underlaying technologies such as G.mtn, OTN and multiple topologies with flex-algo.

![]({{site.baseurl}}/assets/images/5fd53060bc9b.jpg)

###### Figure 32

Processing high-level abstracted model of the slice on NSMF will lead to IETF model abstraction and then to activation of the transport configuration components in IETF domain as per [draft-ietf-teas-ietf-network- slices-14] and [draft-ietf-teas-ietf-network-slice-nbi-yang-02]. On the RAN side the IM/DM is done in accordance with TS.28.541

![]({{site.baseurl}}/assets/images/4964ce641b24.jpg)

###### Figure 33

Mapping of EP\_Transport Rel.17 captured artefacts to IETF domain, as per [IETF draft-gcdrb-teas-5g- network-slice-application] for a simple MidHaul F1 domain scenario, also applicable for N3/NgU BackHaul domain.

![Graphical user interface, diagram, application  Description automatically generated]({{site.baseurl}}/assets/images/42ad75566c14.jpg)

###### Figure 34

EP\_Transport rel.17 TS 28.541current status of IOC with attributes mapped to the topology with IETF terms and highlighting SDP and AC in Transport domain.

![]({{site.baseurl}}/assets/images/8e8b80746049.jpg)

###### Figure 35

Mapping the 3GPP IOC attributes to IETF and WG6 O-Cloud DC Fabric implementation.

In order to get consistent reachability and correct IETF packet switching domain artefacts the following missing information is identified as gaps for the current IOC model in 3GPP TS.28.541 in simple connectivity scenario

![]({{site.baseurl}}/assets/images/6b7ef669c467.jpg)

###### Figure 36

When adding more complexity of multihomed solution type 1 with protection of O-Cloud DC Fabric more gaps need to be filled to have coherent reachability model.

![Diagram  Description automatically generated]({{site.baseurl}}/assets/images/84450cf3cc6e.jpg)

###### Figure 37

EP\_Transport SDP may be floating between multiple EP\_Transport IOCs defining port and vlan in *logicInterfaceInfo* on RAN side and single IP address with multiple physical and logical interfaces on Transport PE node.

![]({{site.baseurl}}/assets/images/a0e4ed608d79.jpg)

###### Figure 38

In Multihomed solution type 2 implementation multiple IP addresses may be used per each IP address on the ingress PE node.

![]({{site.baseurl}}/assets/images/4005833b469e.jpg)

###### Figure 39

In Multihomed solution type 3 implementation where multiple ingress PE nodes may be used with single pair of logical interfaces and IP addresses

![]({{site.baseurl}}/assets/images/2408f5458074.jpg)

###### Figure 40

As well the Multihomed type 4 with multiple interfaces and single IP address to protect O-Cloud DC Fabric interconnect with Transport ingress PE.

![]({{site.baseurl}}/assets/images/d92ac1bc6f1f.jpg)

###### Figure 41

Multihomed type 5 with multiple IP addresses and interfaces may be used to deliver interconnect protection.

More detailed view on the edge and structure with captured attributes in-between multiple SDOs

![]({{site.baseurl}}/assets/images/d7c7d8d2a67d.jpg)

###### Figure 42

1. L2 and L3 (+QoS DSCP parameters) identifies packets within a 3GPP slice
2. Configuration on the device is defining the mapping of attached circuit to IETF Network Slice / Service (MEF 9.x)
3. TN Management System / TN Domain Controller /TN NSSMF defines the logic of stitching of 3GPP slice and IETF Network Slice
4. IETF Network Slice objects may be mapped (many to many or one to one or many to one) to slice constructs, which may be out of IETF scope (DWDM, OTN, FlexE, ODU-Flex) objects

## Management and network models for Transport Network

### Segmentation of the End-to-End Network Datapath

* + - 1. Local Segments, Transport Segments

The realization of the end-to-end Datapath between two Network Functions (RAN or CN) in different locations can be split into several segments. In its simplest form, we can noticeably identify local segments and transport segments:

* *Local segments*: the production of these segments is driven by the RAN SMO via O2-I and/or O2-D interfaces. The objective of these segment is either to connect Network Functions together within a given location or to provide connectivity between a Network Function and the Transport Network. The realization of the local segment can be simple such as a direct connection between an NF SR-IOV interface and a TN node or more complex (see section 10.1.1).
* *Transport Network Segment:* this segment is under the control of the Transport Network Orchestrator (i.e. TNO). [21] provides detail on the realization of this interconnection.

![]({{site.baseurl}}/assets/images/84073b6c9dc7.png)

###### Figure 43 - Segmentation of the End to End datapath

More complex cases can also happen, for example due to the segmentation of TN domains or extended site perimeters. Notwithstanding, the point of this section is to underline the segmentation of the end-to-end datapath with multiple Orchestration perimeters.

* + - 1. Interconnection of the 5G domains to the Transport Network

Since local segment and TN segment are connected, the end-to-end provisioning integrates shared datapath network resources such as for example IP addresses, subnets and vlans. This shared interface is referenced here as the interconnection (see Figure 43). It is noteworthy that this interconnection can fully overlap with the local segment, for example if the Network Function is directly connected with the Transport Network. The interconnection can be seen either as an extension of the TN toward the site or vice-versa. Since this document makes no assumption on any of these approaches. For example, this view can be based on which Orchestration is responsible for the resource management of network identifiers.

Since the provisioning of its endpoints is achieved with different Orchestrators (e.g. SMO and TNO), the interconnection introduces intrinsic complexity. In other words, Orchestrators must synchronize on datapath network resources to provision network devices. This aspect is described later in this document (see section 10.3).

![]({{site.baseurl}}/assets/images/19a9b7df994b.png)

###### Figure 44 - Example of Interconnection between 5G sites and Transport Network

*Edge TN Node*

The Edge TN Node (ETN) is the TN node that attaches to the interconnection and shares the network resources together with the 5G site. For example, in the case of an IP/MPLS Transport Network, it can be either the PE or the CE as long as it is managed by the TN orchestration. Figure 44 depicts different scenarios for the location of the Edge TN node and interconnection, depending on the existence of a Layer 3 CE, which can be either TN-managed or not.

![]({{site.baseurl}}/assets/images/e23a1ac185a6.png)

###### Figure 45 - Interconnection and Edge TN Node

*Interconnection versus IETF slice demarcation point*

Note that IETF introduces the concept of "slice demarcation point" (sdp) in section 10.1.1 as the point of attachment to an IETF Network Slice. Depending on the IETF Network Slice enforcement strategy, the sdp can match the interconnection (i.e. the Attachment Circuit) or it can be located at a different place such as within a PE or CE (see Figure 42). In the case of slice enforcement via vlan handover, the sdp maps with the interconnection.

* + - 1. Orchestration of the end-to-end datapath
         1. Objectives

To manage a 5G slice that require connectivity between sites the following tasks must be completed:

**Synchronization of the datapath resources for the interconnection**: the realization of the interconnection between the 5G site and the TN requires a synchronization of network datapath resources between the SMO and the TN Orchestrator.

**Automation for the TN Segments lifecycle**: the TN segment permits to enforce connectivity between Edge TN nodes from different sites with appropriate performance requirements. From a realization perspective, TN segments are created thanks to IETF Network Slices (see next section).

**Automation of the Local Segment lifecycle**: only the portion of the local segment that overlaps with the interconnection between the 5G site and the TN is considered as part of this WG9 effort, the remaining fragment being covered by WG6. Indeed, this fragment is not visible from the Transport Orchestration, outside the potential configuration of routes to reach the IP subnets that are beyond the interconnection (e.g. the NF subnet behind a L3 CE managed by the RAN SMO).

* + - * 1. APIs and Data Models

The automation of the end-to-end datapath must rely on standard APIs and Data Models:

Within the SMO, this is handled by the 3GPPP APIs and the FIM. The 3GPP 5G NRM [31] introduces the EP\_TRANSPORT IOC to embed Datapath Network resources. This IOC is defined within the Network Slice NRM, which is a source of confusion since Network Datapath automation and 5G Slicing must rather be considered as two different dimensions. In other words, the realization of 5G deployments must rely on Network Datapath Automation irrelevant of the slicing aspect. For this purpose, the application of EP\_TRANSPORT must be generalized to all Endpoints and not be restricted to User Plane Endpoints, which is currently the case in Release 16/17.

At the SMO - TNO interface, [draft-ietf-teas-ietf-network-slices-14] describes a framework for to achieve TN connectivity for 5G Slices with performance commitment. The general principle is that the SMO relies on abstracted "TN Slices" for ordering management. More precisely, it introduces the following definitions:

The IETF NS provides connectivity via the Transport Network (i.e. realization of TN segments) between sites for both RAN and CN domains with performance commitment.

The IETF NSC manages intent-based requests for IETF Network Slice instantiation via the NSI, which it maps to technology-specific realizations with adequate resource reservation.

The IETF NSI is the NBI interface of the NSC for CRUD operations and exportation of performance metrics of Network Slices. This interface is consumed by the SMO. IETF YANG Data Models are considered for this interface, notably the "IETF Network Slice Service YANG Model" draft [draft-ietf-teas-ietf-network-slice-nbi-yang-02]. At time of writing, it appears that this latter data model has limited capabilities for configuring the Interconnection between the 5G site and the Transport Network.

Based on 3GPP TS28.530, the 5G SMO is split into domain-specific SMO (RAN and Core)). These domains are reconciliated via an End-to-End SMO at NSMF level. 3GPP APIs permits to communicate between 3GPP domains, while the NSMF interfaces with the NSC through the IETF API interfaces. Figure 46

describes the high-level architecture 5G SMO orchestration with a focus on Slicing and Datapath Networking integration. Note that for simplicity only mid-haul User Plane is represented.

![]({{site.baseurl}}/assets/images/b22860b3c97b.png)

###### Figure 46 - SMO decomposition and datapath integration

Figure 47 depicts how Transport Network information is exchanged between domain SMO and ultimately populated to the Transport Network. Upon CRUD operation of an NSSI in a specific domain, the EP\_TRANSPORT IOC conveys the related Transport information toward the end-to-end SMO. The NSMF then propagates the changes of IETF Network Slice to the NSC.

![]({{site.baseurl}}/assets/images/6a544bf59c7b.png)

###### Figure 47 - Transport Information carried via EP\_TRANSPORT and IETF APIs

Hence, to automate the TN connectivity, both EP\_TRANSPORT and IETF data models must integrate all relevant attributes for the realization of the interconnection.

* + - * 1. Realization of the Datapath

In this iteration, we will concentrate on the Use Case of a 1:1 mapping of a TN Slice to a vlan. Note that this document refers to the term vlan as a single broadcast domain. In this case, the realization of the interconnection depends mostly on the following orthogonal dimensions:

**L2 vs L3 Forwarding logic for the local Segment**: the forwarding mode for the local segment influences the resources and provisioning.

In the L2 case (Figure 45), the interconnection vlan extends from the Edge TN Node to the Network Function EndPoint. This introduces dependencies, especially at IPAM level since NF have IP addresses in the subnet interconnection vlan (see).

In the L3 case (Figure 46), we introduce here the concept of **logical gateway** (lgw), which abstracts any routed IP realization between the Network Function and the Edge TN Node. In this case, the interconnection vlan is between the lgw and the Edge TN Node.

**L2 vs L3 Forwarding mode for the Transport Network Segment**: the forwarding mode (e.g L2VPN or L3VPN) result in different provisioning at the interconnection level. In the case of slicing enforcement based vlan-based handover, the vlan used for the interconnection is either terminated at the Edge TN Node or extended via the TN up to the remote site.

**Multi-homing**: The interconnection can be realized in a redundant fashion to increase availability. This impacts the datapath network resources and modelling - 3GPP and IETF YANG - for the realization of the interconnection. Figure 45 and Figure 46 depict a few examples for multihoming, refer to physical diagrams labelled as MH or FAB.

![]({{site.baseurl}}/assets/images/454b1879b313.png)

**Figure 48 - L2 forwarding in the local segment (examples)**

![Diagram  Description automatically generated with medium confidence]({{site.baseurl}}/assets/images/85b1f65ada0b.png)

**Figure 49 - L3 forwarding in the local segment (examples)**

![Graphical user interface, text  Description automatically generated]({{site.baseurl}}/assets/images/0bd6530890c0.png)

**Figure 50 - L2 vs L3 forwarding mode at Transport Network**

* + - * 1. Resource inventory for EP\_TRANSPORT

The structure of the EP\_TRANSPORT IOC is previously described in section (see section 9). The objective of this section is to describe how the mapping of network datapath resources (i.e. vlan) can be mapped to the this data structure. Since the interconnection can be realized in a myriad of fashions, this section leverages logical designs to extract requirements with limited redundancy fan-out restricted to 2.

*L2 forwarding mode in the local segment*

In this case the interconnection overlaps with the network in which Network Function are provisioned. The inventory of resources depends on the complexity of the integration. Two examples of logical representation are provided in Figure 50, with a basic interconnection and a more complex scenario with multihoming and scaled-out NF.

The following resources are involved in the realization of the deployment:

Vlan for the network function NF (by default the same as the ETN, although swap can happen) : vlan\_id

None is also an option -, since bare ethernet is also possible

Note that it is also possible that the vlan-id is swapped resulting in a different vlan exposed at TN and NFs.

IP resources :

IP Subnet : ip\_subnet\_nf

IP addresses for Network Functions in the IP Subnet: ip\_nf(x)

IP addresses for Edge Transport Nodes in the IP Subnet. Note that this is used only if the TN segment is operating in a L3 forwarding mode (i.e. non mandatory): ip\_etn(x)

TN Gateway IP address which to be used by NFs as a next-hop for IP routes. Note that this field is used only if the TN segment is operating in a L3 forwarding mode (i.e. non mandatory field).

![]({{site.baseurl}}/assets/images/40d9e65e2287.png)

###### Figure 51 - Logical Design for L2 forwarding mode in local segment

*L3 forwarding in the local segment*

The L3 case is more complex since it introduces more combinations for realization. From a realization perspective, the Logical Gateway abstraction exposes only NF-facing vs TN-facing vlans, ignoring any intermediate complexity, which is out of the scope of WG9.

![]({{site.baseurl}}/assets/images/28bf91c8cd4b.png)

###### Figure 52 - Logical Design for L3 forwarding mode in local segment

The following resources are involved in the realization of the deployment:

NF attributes

Vlan for NF (e.g. SR-IOV VF, mac-vlan, ...)

IP Subnet and IP address for the NF

Interconnection attributes

tink-id for each link

make sure each link can be identified uniquely so we can assign ip address at lgw side and tn side in a consistent manner since there are two different subnets.

IP Subnet for each link

IP address at TN side for each link: ip\_etn(x)

IP address at LGW side for each link: ip\_lgw(x)

Possibly GW/VIP at both TN And GW side, depending on the realization: ip\_lgw(x)

Routes:

The TN must be aware of the IPSUBNET\_NF routes with the appropriate next-hop in the interconnection vlan. For example, BGP or static routing are configured between the Logical Gateway and the Edge Transport Node.

* + - * 1. EP\_TRANSPORT mapping

The structure of EP\_TRANSPORT is described in section 9. In the case of the realization of a vlan-based slices, we c

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| *ipAddress* | ip\_nfx |
| *logicalInterfaceInfo* | vlan-id-nf |
| *nextHopInfoList* | This field of string type (REL 17) must be used to propagate the necessary information to realize the interconnection. Note that this field has been recently redefined as a list to allow several interconnections in case of multihoming.   * Vlan\_id\_tnlink(x)   + This field is defined in the * tn\_link\_id   + Some identification of the link id must be integrated in the data model to differentiate links in case of multihoming and make sure LGW network attributes matches with ETN. * ip\_subnet(x)   + This information can be derived from IP addresses, as long as the MASK is provided (ip\_address + mask). * ip\_etn\_x   + ip address of the ETN * ip\_etn\_vip |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | * ip gateway at transport side if different than ip\_etn\_x. This is for static routing. * ip\_lgw * ip\_lgw\_vip   + ip gateway from in case of static routing and multihoming reliazed via a shared vlan   As of today; the realization of routing (e.g BGP) is not considered in EP\_TRANSPORT. |
| *qosProfile* | QoS attribute (refer to previous section ) - not related to networking - |
| *epApplicationRef* |  |

</div>

This document suggests relying exclusively on the nexthopinfolist to propagate all network datapath resources for the configuration of the Transport Network. Note that this approach results in redundant information in the case of Layer 2 forwarding (see, it provides better flexibility and a more generic framework/api processing.

Figure 52 and Figure 53 provide examples for

![]({{site.baseurl}}/assets/images/b54f4593400c.png)

###### Figure 53 - example of EP\_TRANSPORT resource mapping for dual homing - L2 forwarding

![A picture containing diagram  Description automatically generated]({{site.baseurl}}/assets/images/2015ff379e1b.png)

**Figure 54 - example of EP\_TRANSPORT resource mapping for dual homing - L3 forwarding (point- to-point)**

* + - * 1. Gap analysis and next steps:

1. EP\_TRANSPORT enhancements

Since the objective of *nexthopinfolist* is to describe the resources for the realization of the interconnection. It is suggested to reference a new IOC for this purpose.

* + Use a structured and non-ambiguous data model to describe the resources for the interconnection instead of a string (error-prone and limited compatibility).
  + The decoupling permits to re-use of a same Nexthopinfo MOI, for several EP\_TRANSPORT
    - More stability: a change in EP\_TRANSPORT is not reflected in the interconnection

From a resource modelling perspective, a proposal was made to 3GPP, to rely on an IETF data model for this purpose (proxyclass).

![]({{site.baseurl}}/assets/images/d4c8256decb2.jpg)

Missing data from section 10 and 10.1 in current EP\_Transport IOC

![]({{site.baseurl}}/assets/images/b28ca718ea23.jpg)

###### Figure 55

Suggested structure with optional pointers to external models and additional IOC to program O-Cloud DC Fabric to ensure basic network reachability.

* + - 1. Mapping of Transport Network resources to IETF Data Models

To enforce connectivity via the TN, resources must be exchanged between the SMO and NSC through IETF interfaces. The scope of the TN Slice is different than EP\_TRANSPORT. Indeed, EP\_TRANSPORT

integrates NF-facing information, which does not necessarily need to be exposed to the Transport Network (e.g. an IP address of a Network Function). In the case of vlan-based slice mapping the following is required:

* link identification, especially in the case of multihoming to disambiguate the logical configuration on different nodes.
* IP subnet/pool of network functions for routing in case of L3 forwarding.
* IP address of individual TN nodes and TN Gateway address (VIP) + Mask
* vlan-id for the interconnection
* Routing: static and bgp protocols are desired to be supported with relevant attributes

To achieve a Plug & Play TN Slice-as-a-service experience, O-RAN WG9 identified two Data Models:

* "A YANG Data Model for the IETF Network Slice Service" [37]: this data model permits to realize the connectivity segment between ETN routers (PEs).
* "YANG Data Models for 'Attachment Circuits'-as-a-Service (ACaaS)") [38]: this data model permits to realize the connectivity between the GW and the ETN.

These models both pertain to the IETF Service Models category, which aims at providing intent-based experience for connectivity enforcement. This approach permits to keep the 5G Network Orchestration unaware of low-level resources such as PE name and interfaces.

![]({{site.baseurl}}/assets/images/7303822f474e.png)

###### Figure 56: Data Models for the Orchestration of the Transport Network connectivity

An example of the provisioning of a TN slice based on this set of Data Models is provided in [37] appendix A.7.

* + - * 1. Resource management

As previously mentioned, Network datapath resources are shared for the interconnection. It is suggested here that a single Orchestrator manages these resources and exchange appropriate values thanks to the IETF NSI. In other words, even though Slice Creation is triggered from by the 5G SMO, either the 5G SMO or the NSC/TNO can be responsible for the allocation of vlan and IP subnet/addresses.

Note that by 5G SMO, we consider a the 5G orchestration domain as a whole with the integration of dependant application such as the IMS (i.e. the IMS may handle network resources which are ultimately exposed to the NSC via the 5G SMO).

Figure 55 and Figure 56 depict examples of such provisioning workflows. Note that for the sake of simplicity, API calls are abstracted with no data model semantic. In the first case, the datapath Network resources are managed by the SMO, while in the second case, they are managed by the Transport Network and sent to the SMO in a second step.

![]({{site.baseurl}}/assets/images/e124b7a6970f.png)

**Figure 57 - Network Resources are managed by the SMO (or any related app such as an IMS)**

![]({{site.baseurl}}/assets/images/f354ace83835.png)

**Figure 58 - Network Resources are managed by the TN**

## Management and network models of Network Slicing in ORAN subsystem

This section describes the management and network models of Network Slicing. Notably, this section describes the RAN Management and how it relates to the transport domain. The functionality is based on

3GPP 28.541 clause 4 which describes RAN NRM. Related modelling documents within 3GPP are TS28.622 for the Generic NRM and TS28.620 for the FIM. Additional descriptions of the Network Slicing concepts and terminology awareness are described in the WG1 Network Slicing Architecture (see reference [35]).

This section utilizes a deployment shown in Figure 57 where there is a mid-haul connection between DU1 and CU-UP1. It is connected through a EP\_F1U proxy and connected to EP\_Transport S-NSSAI1 in the DU1 and EP\_Transport S-NSSAI1 in the CU-UP1.

![]({{site.baseurl}}/assets/images/2bcc9310fe92.png)

###### Figure 59 - Mid-haul connection between DU1 and CU-UP1

![Generated by PlantUML]({{site.baseurl}}/assets/images/64cedad2c14e.png)

**Figure 60 - Instances of Managed functions and Network Slice Subnets (NSS)**

Figure 58 above shows instances of managed functions and network slice subnets. Depicted is a Network Slice (NS1), with its associated NetworkSliceSubnet (NSS) and 5G RAN managed function components. Note that the Core function components are not shown to simplify the diagram and make the concepts more accessible. A more complete example is shown in the Network Slicing Architecture document (See reference [35]). Figure 58 illustrates that NetworkSliceSubnets are generic groupings of objects. These relationships are indicated by the <<groups>> tag. This diagram shows one eMBB Network Slice that is providing 7Mb and 10Mb services with throughput SLA requirements within the network of a service provider with identifier PLMN-A. There is a second Network Slice for PLMN-A that is an SST URLLC type slice.

Notice that the NetworkSliceSubnets have SliceProfiles associated with them in this example. The illustration highlights some name containment relationships (see TS32.300 reference [36] for more details). These are indicated by the <<names>> tag. Notice that NSS3 is a collection of 5G RAN components (DU1, CUCP1, CUUP1, NRCellDU1, NRCellCU1).

In this description, there is a connection between DU1 and CUUP1 which is on either side of F1-U from Figure 57. The following text describes how to traverse up the overlay tree in order to identify the corresponding Network Slice information and Network Slice subnet.

Thus, it is possible to navigate to relevant object instances. This is illustrated in Figure #3 below. If you enter EP\_transport (S-NSSAI-1) it is possible to identify the S-NSSAI-1 associated with the DU1 and CU-UP1 from Figure 57. From there in the object model, it is possible to navigate to the NS1 and its associated attributes as described below.

![]({{site.baseurl}}/assets/images/7b96e1457ad3.png)

###### Figure 61 - Traversing & Navigating the through objects

Path #1: Navigation starting at EpTransport1 (Shown in Red Arrows)

1. Start at EpTransport1 which has epApplicationRef attribute which points to F1U1
2. Following the red line, arriving at F1U1
3. F1U1's FQDN has DU1. Thus, you can determine that the EpTransport1 connects to DU1
4. EpTransport1 is grouped in the NSS2 group which has an attribute with the content of Slice Profile #1
5. From this you can extract QoS parameters of Slice 1 applicable to EpTransport1

Path #2: Navigation starting at EpTransport2 (Shown in Dark Blue Arrows)

1. Start at EpTransport2 which has epApplicationRef attribute which points to F1U2
2. Following the red line, arriving at F1U2
3. F1U2's FQDN has CUUP1. Thus, you can determine that the EpTransport2 connects to CUUP1
4. EpTransport2 is grouped in the NSS2 group which has an attribute with the content of Slice Profile #1
5. From this you can extract QoS parameters of Slice 1 applicable to EpTransport1

Path #3: Navigation starting at EpTransport3 (Shown in Green Arrows)

1. Start at EpTransport3 which has epApplicationRef attribute which points to F1U1
2. Following the red line, arriving at F1U1
3. F1U1's FQDN has DU1. Thus, you can determine that the EpTransport3 connects to DU1
4. EpTransport3 is grouped in the NSS4 group which has an attribute with the content of Slice Profile #2
5. From this you can extract QoS parameters of Slice 2 applicable to EpTransport3

Path #4: Navigation starting at EpTransport4 (Shown in Light Blue Arrows)

1. Start at EpTransport4 which has epApplicationRef attribute which points to F1U2
2. Following the red line, arriving at F1U2
3. F1U2's FQDN has CUUP1. Thus, you can determine that the EpTransport4 connects to CUUP1
4. EpTransport4 is grouped in the NSS4 group which has an attribute with the content of Slice Profile #2
5. From this you can extract QoS parameters of Slice 2 applicable to EpTransport4

![Generated by PlantUML]({{site.baseurl}}/assets/images/623984ba0d95.png)

###### Figure 62 - - Objects in greater context

This is the same figure from Figure 58 but in a greater context. The same four Paths from Figure 59 apply in this Figure also.

# Annex D (informative)

# Slicing use case revision history and progress control

This Annex contains the history and progress track record of ORAN WG9 "Management interfaces" team's effort for definitions and standardization work in related Standards Developing Organizations (SDOs) for slicing WI, mapped to ORAN schedule.

On Phase 4 document were captured the following WI for Phase 4 (March 2022) plan: Alignment with 3GPP SDO

* Collect missing parameters in NRM TS 28.541 for TN Slice creation
* Propose enhancements of NRM TS 28.541 to include OpenModelClass TNSliceSubnet to link EP\_Transport to TN and add options for linking 3GPP subsystems to TN subsystems
* File O-RAN liaison to SA5 in order to augment TS 28.541 with missing information and proposed items.
* Align with IETF TN Network Slice abstraction

Phase 4 (March 2022) delivery:

Alignment with 3GPP SDO

* Sent O-RAN liaison to SA5 [S-2022003](https://oranalliance.atlassian.net/wiki/download/attachments/247693332/S2022003%20-%20LS%20on%20O-RAN%20%E2%80%93%20Transport%20Network%20Slicing%20Enhancement%20IM%20DM%20TS28.541.docx?api=v2): [https://oranalliance.atlassian.net/wiki/download/attachments/247693332/S2022003%20-](https://oranalliance.atlassian.net/wiki/download/attachments/247693332/S2022003%20-%20LS%20on%20O-RAN%20%C3%A2%E2%82%AC%E2%80%9C%20Transport%20Network%20Slicing%20Enhancement%20IM%20DM%20TS28.541.docx?api=v2)

[%20LS%20on%20O-RAN%20-](https://oranalliance.atlassian.net/wiki/download/attachments/247693332/S2022003%20-%20LS%20on%20O-RAN%20%C3%A2%E2%82%AC%E2%80%9C%20Transport%20Network%20Slicing%20Enhancement%20IM%20DM%20TS28.541.docx?api=v2)

[%20Transport%20Network%20Slicing%20Enhancement%20IM%20DM%20TS28.541.docx?api=v](https://oranalliance.atlassian.net/wiki/download/attachments/247693332/S2022003%20-%20LS%20on%20O-RAN%20%C3%A2%E2%82%AC%E2%80%9C%20Transport%20Network%20Slicing%20Enhancement%20IM%20DM%20TS28.541.docx?api=v2) [2](https://oranalliance.atlassian.net/wiki/download/attachments/247693332/S2022003%20-%20LS%20on%20O-RAN%20%C3%A2%E2%82%AC%E2%80%9C%20Transport%20Network%20Slicing%20Enhancement%20IM%20DM%20TS28.541.docx?api=v2)

Alignment with IETF SDO

* Published Merged draft "IETF Network Slice Application in 3GPP 5G End-to-End Network Slice" https://datatracker.ietf.org/doc/draft-gcdrb-teas-5g-network-slice-application/
* Published "A Realization of IETF Network Slices for 5G Networks Using Current IP/ MPLS Technologies". https://datatracker.ietf.org/doc/draft-srld-teas-5g-slicing/

Phase 5 (November 2022) plan

* Fill the gap in Missing data on the current IOC of Rel.17:
  + IP prefix(es) and port(s) towards (O)-(R)AN element on element(s) of O-Cloud and ip prefix(es) and port(s) towards transport
  + System name(s)
  + L2/L3SM <> EP\_Transport on O-Cloud and PE edge.
  + Link and pointer to the IETF slice model

Since the objective of *nexthopinfolist* is to describe the resources for the realization of the interconnection. It is suggested to reference a new IOC for this purpose.

* Use a structured and non-ambiguous data model to describe the resources for the interconnection instead of a string (error-prone and limited compatibility).
* The decoupling permits to re-use of a same Nexthopinfo MOI, for several EP\_TRANSPORT
  + More stability: a change in EP\_TRANSPORT is not reflected in the interconnection
  + From a resource modelling perspective, a proposal was made to 3GPP under [S5-225364], to rely on an IETF data model **pointer** for this purpose (proxyclass).

Phase 5 (November 2022) delivery Alignment with 3GPP SDO

* + The preliminary answer form Samsung is received from SA5
  + The feedback is not what we expected from SA5
  + 4+ meetings with clarifications and discussion were conducted with Samsung representatives and the group of contributors from WG9
  + The outcome is multidirectional with no consensus on 3GPP IM/DM and WG9.

Alignment with IETF SDO

* + Improving IETF Slice Realization and Slice Application drafts with co-authors

Phase 6 (March 2023) delivery

* + Submit next LS to 3GPP SA5 with clarification request and suggestion for structuring

*nexthopinfolist* into key values table.

* + Conclude IETF Slice Realization and Slice Application drafts
  + Suggest improvement of IETF NBI-YANG Network Slice Data Model with AC Data Model
  + Align with WG6 for Data Model of the Network Slice

# Annex E (informative)

# Use cases for the direct integration of transport into SMO / Non-RT RIC

This Annex describes use cases which require the support of transport by SMO / Non-RT RIC respectively make the direct integration of transport into SMO / Non-RT RIC the preferred option when compared to the integration via an external transport network management system.

It shall be noted that use cases UC 0.1 - Fully integrated O-gNB and UC 0.2 - O-DU/CU in a physical device are not actually about the integration of transport devices into SMO / Non-RT RIC but about the support of transport functionality within O-RAN devices.

### Use case 0.1: Fully integrated O-gNB

Many of the 5G RAN systems deployed in production networks are fully integrated, i.e. O-RU/DU/CU functionality in a single box, an O-gNB. At its management interface, the O-gNB should therefore expose all status, configuration, alarm and performance data as O-RU, O-DU and O-CU together. Only the functionality relating to Fronthaul and Mid-haul need not be supported. In parallel to disaggregated RAN components the O-gNB should be integrated into the SMO / Non-RT RIC. The transport port and associated transport functionality should therefore be supported by SMO / Non-RT RIC as shown on the figure below.

![A diagram of a computer  Description automatically generated]({{site.baseurl}}/assets/images/8b29599fb7cd.png)

It shall be noted that a 4G O-eNB should be supported by SMO / Non-RT RIC in the same way.

Since the O1 interface of the O-gNB should support transport functionality, the same general rules as of Section 4 - Modelling Schema should be applied to the O1 YANG models, i.e.

* models should use YANG RFC 7950 [1] as schema,
* models should be under open-source license,
* models should have modular structure with clearly defined augmentation mechanism,
* models selected should be independent of specific supplier attributes,
* vendor-specific augmentations should be temporary only, where temporary is defined here as less than one year,
* models should support backwards compatibility and future-proof enhancement solution.

### Use case 0.2: O-DU/CU in a physical device

Despite the trend towards virtualizing / containerizing network functions the performance of hardware-based respectively assisted O-DU is often higher and the power consumption lower. Therefore, the O-DU/CU may come in a fully integrated physical device as displayed hereafter.

![A diagram of a computer  Description automatically generated]({{site.baseurl}}/assets/images/32f506a373d5.png)

Similar to classical RRH / BBU configurations with split 8 and CPRI between RRH and BBU, O-DU/CU has transport interfaces typically connected by fibre-optical cables to the O-RUs. Now, however, the O-RUs may come from different vendors. And, therefore, the SMO / Non-RT RIC should manage the transport interfaces on O-RU and O-DU/CU as well as the cabling in between.

### Use case 1: O-DU at antenna site

Especially if the antenna site is connected via microwave radio, also referred to as wireless transport, with limited and variable data rates, the O-DU is often located at the antenna site as shown on the figure below. In such a scenario the fronthaul switch aggregating the traffic from the O-RUs is considered part of the RAN. To more easily monitor the tight requirements imposed on the fronthaul network the fronthaul switch should be preferably managed by SMO / Non-RT RIC as shown on the following figure.

![]({{site.baseurl}}/assets/images/9b6c502a1989.png)

### Use case 2: End-to-end sync management

Along with SyncE for frequency synchronization, also referred to as syntonization, the precision time protocol (PTP) acc. to IEEE 1588 has become the predominant technology for time synchronization. Indeed, the sync plane (S-plane) is, in parallel the user (U-plane), control (C-plane) and management plane (M- plane) a network in its own right reaching from the PTP GMC via various transport segments and technologies down to the O-RUs as shown on the next figure.

![A diagram of a computer  Description automatically generated]({{site.baseurl}}/assets/images/35d4c5546390.png)

Sophisticated mobile network technologies like Coordinated Multipoint transmission and reception (CoMP) and URLLC services impose very stringent requirements on the accuracy and reliability of the synchronization network. Quality degradations in one part of the sync network may cause performance losses in other parts of the network. The root cause of such performance losses is difficult to detect and root cause analysis requires access to performance metrics from the entire sync network.

Instead of building a dedicated communication infrastructure for uploading these performance metrics and a software framework for sync management, the existing M-plane should be used as communication infrastructure. The synchronization management function (Sync MF) could be implemented as an rApp utilizing the SMO / Non-RT RIC framework.

### Use case 3: Private 5G campus networks

Private 5G campus networks, i.e. private networks geographically constrained to some private property, are typically built with a large variety of networking technologies, e.g. is illustrated hereafter.

![A diagram of a roadm ring  Description automatically generated]({{site.baseurl}}/assets/images/ddc45f6c780c.png)

In contrast to public 5G networks operated by MNOs, there are only a few devices per device category. The IT departments of vertical organizations usually have only a small staff whereas MNOs dispose of departments per device category. For this reason, network management should be much simpler, i.e. a single management system should manage the entire communications network. An easy-to-use SMO is needed that integrates not only RAN but also transport and 5G Core network functions.

### Use case 4: Administrative Domains for RAN, Transport, and Core

Basically, the overall network management requirements of a large-scale, country-wide mobile network are similar to the ones of a private 5G campus network. Only that there are tens of thousands of devices per device category. And that there are still administrative domains per network segment as illustrated hereafter.

![]({{site.baseurl}}/assets/images/0d60d948264d.png)

In this scenario completely different management systems can be used per network segment as long as the E2E management system gets the required information from the management system of each segment, also referred to as domain controllers. Just by comparing the figures of UC 0.1 with the one of this UC it becomes obvious that the disaggregation of the RAN implicitly disaggregates the transport networks making its management significantly more fragmented and thus more complex. Later on, it will be shown that there is an advantage for direct transport integration in SMO / Non-RT RIC even in this use case.

### Impact on SMO / Non-RT RIC architecture

The figure hereafter depicts the current SMO / Non-RT RIC architecture as of R003. Most of the components are not actually RAN-specific but provide functionality that is required in more or less each domain controller irrespective of whether it manages radio access networks, microwave networks, optical networks, packet switched networks or core networks. Only the blue bordered components are actually RAN-specific with some rApps being also RAN-specific.

NFO and FOCOM are only needed whenever network functions are virtualized and deployed on a cloud infrastructure (O-Cloud). It is not relevant whether the virtual network functions are RAN components like O-DU and O-CU, transport network components like virtual routers or core components like UPF.

![A computer screen shot of a diagram  Description automatically generated]({{site.baseurl}}/assets/images/a2c92db46b74.png)

The fault, configuration and performance management components are each attached to two different southbound interfaces, O-FH M-Plane and O1. These two interfaces are quite different in nature such that FM, CM and PM need to be decomposed. The next figure illustrates this using the example of fault management.

![A diagram of a computer  Description automatically generated]({{site.baseurl}}/assets/images/809e6a6697e6.png)

Whereas alarms come in as NETCONF Notifications on the O-FH M-Plane, the O1 interface uses VES messages for this purpose. This results in two different protocol termination functions. Whereas NETCONF Notifications are used elsewhere, VES messages are only used in connection with the O1 interface and can therefore be considered as RAN-specific.

Also the alarm models are the O-FH M-Plane does not use the 3GPP models as the O1 interface does. Depending on the alarm model adopted by the fault management application the one or the other interface requires translation. In no case is the fault management application RAN-specific but should nevertheless be orchestrated like an rApp.

Likewise, the configuration management component can be decomposed. In this case, only the translation functions are RAN-specific as shown hereafter.

![A diagram of a computer  Description automatically generated]({{site.baseurl}}/assets/images/796d5d1000fc.png)

When integrating an O-FH Switch as of UC 1 the fault management architecture does not change as can be easily seen on the next figure. Nor does the configuration management architecture as depicted on the next but one figure.

![]({{site.baseurl}}/assets/images/844f515c9f27.png)![]({{site.baseurl}}/assets/images/b441e592310f.png)

Usually, a domain controller does not only manage the devices but also the links between the devices like in UC 0.2. Often, the links cannot be unambiguously read from the network but the enrichment of the information retrieved from the devices by topology data stored in an enrichment database is needed. For the sake of simplicity, the management of the links connecting the devices and thus the network topology should be done by a Topology Management Function implemented as an rApp.

![A diagram of a computer  Description automatically generated]({{site.baseurl}}/assets/images/d65a5b2def7b.png)

UC 2 - End-to-End Sync Management should be realized in a similar fashion as depicted next. Again, Sync. Management could be implemented as an rApp.

![A diagram of a computer network  Description automatically generated]({{site.baseurl}}/assets/images/860e0636ef75.png)

The most comprehensive scenarios can be found in private 5G campus networks where all transport management functions are implemented as rApps including the network slicing ones as can be seen on the next picture.

![A diagram of a network  Description automatically generated]({{site.baseurl}}/assets/images/4eae4361ea47.png)

In public networks where there are still administrative domains, network slicing could be implemented in a similar way as in private 5G campus networks only that there would be an SMO deployment per domain as shown next.

![A diagram of a computer  Description automatically generated]({{site.baseurl}}/assets/images/c2ea9686deac.png)

# Use cases for the coordinated interface between transport management and SMO

This section describes the use cases that are supported by coordination of management systems of RAN and transport networks via standard interfaces, aiming to achieve optimized network performance, elevate operational efficiency, and enhance deployment flexibility. Note that the transport network and RAN network (together with their management systems) are still logically separated and the collaboration between the two networks are achieved via coordinated interfaces as shown in the following figure.

![A diagram of a network  Description automatically generated]({{site.baseurl}}/assets/images/654f99b4c00c.jpg)

### Use case 1.1: Automated and Joint Network Provisioning of RAN and Transport Network

This use case outlines a scenario where the Radio Access Network (RAN) and transport network's provisioning processes are seamlessly integrated and automated. By leveraging coordinated management systems between RAN and transport networks, operators can deploy network resources efficiently, ensuring optimal connectivity and performance, ultimately realizing the target of end-end zero-touch provisioning.

Process:

* A service request initiates the automated provisioning workflow, identifying the required resources and configurations for both the RAN and the transport network.
* The coordinated management systems assess the current network state, including available resources, capacity, and potential bottlenecks.
* Based on predefined rules and real-time data, the coordinated management systems dynamically allocate resources across the RAN and transport networks, optimizing for performance, cost, and availability.
* Configurations are automatically applied across both networks, ensuring compatibility and optimal integration of RAN and transport elements.
* The coordinated management systems perform a comprehensive check to confirm successful provisioning and readiness for service delivery.

Benefits:

* Efficiency: Streamlines the provisioning process, reducing manual efforts and the potential for errors.
* Scalability: Enables rapid scaling of network resources to meet changing demands.
* Optimization: Ensures optimal use of network resources, enhancing overall performance.

Info exchange over the interface

* + Service demand & requirement
  + Invent ory availabilit y
  + Net work t opology
  + Provisioning commands
  + Service act ivat ion & t est feedback
  + ...

**Standard Interface**

**Coordinated management systems**

**Transport Network**

**Fronthaul Mid-haul Backhaul**

**Transport Management**

**RAN Network**

**5GCN**

**O-CU**

**O-DU**

**O-RU**

**SMO**

An example of information flows across the interface is illustrated in the above figure with more description below:

* Service Demand & Requirement & data: Geographic areas of demand, predicted user growth, data traffic patterns.
* Inventory Availability: List of available RUs, BBUs, and transport resources including specifications and current deployment statuses.
* Network Topology: Optimal configurations for RUs, BBUs placement, and transport connections based on algorithms considering latency, throughput, and redundancy.
* Provisioning Commands: Specific sequenced configuration settings for RUs, BBUs, and transport links; IP address assignments; and any special routing or security protocols.
* Service Activation & Testing Feedback: Performance metrics such as connectivity, throughput, and latency measurements; service quality indicators.

### Use case 1.2: Cloud RAN Adaptation for Resilience and Energy Efficiency

This use case focuses on utilizing the coordinated management systems to adapt Cloud RAN deployments for improved resilience and energy efficiency. By dynamically adjusting RAN and transport network configurations based on real-time conditions and demands, networks can achieve greater operational sustainability and reliability.

Process:

* Real-time monitoring tools assess network performance, user demand, and environmental conditions of both RAN and transport Networks.
* Based on the collected data, the coordinated management systems identify opportunities to adjust RAN and transport configurations for improved energy efficiency without compromising service quality.
* Resources are dynamically allocated or de-allocated, and power settings are adjusted across the C- RAN and associated transport network elements.
* The coordinated management systems implement resilience strategies, such as rerouting traffic through alternative paths during outages or peak loads, ensuring continuous service availability to adapt to current network conditions and demands.
* Continuous monitoring and adjustments maintain optimal performance and efficiency levels.

Benefits:

* Resilience: Enhances network reliability through proactive adjustments and redundancy strategies.
* Energy Efficiency: Reduces power consumption by optimizing resource usage and operational parameters based on actual needs.
* Cost Savings: Lowers operational expenses by improving energy efficiency and reducing the need for physical interventions.

Info exchange over the interface

* + Real- t ime net work performance dat a
  + Environment al and Operat ional Condit ions
  + Fault Management Dat a
  + Topology and Configurat ion Adjust ment
  + Adapt ion feedback and perforce met rics
  + ...

**Standard Interface**

**Coordinated management systems**

**Transport Network**

**Fronthaul Mid-haul Backhaul**

**Transport Management**

**RAN Network**

**5GCN**

**O-CU**

**O-DU**

**O-RU**

**SMO**

Above figure provides an example of information exchange cross the interface:

* Real-time Performance Data: Metrics related to network traffic load, bandwidth usage, latency, error rates, and user demand patterns.
* Environmental and Operational Conditions: Data on external conditions affecting network operation, such as temperature, time of day, and special event schedules. Information on energy-saving adjustments, like reducing power during low demand periods or cooling requirements.
* Fault Management Data: Information on network vulnerabilities, potential failure points, and historical fault data.
* Topology and Configuration Adjustments: Sequenced configuration & commands for changes in network topology or component configurations to enhance resilience and energy efficiency.
* Adaptation Feedback and Performance Metrics: Post-adaptation performance metrics, measuring the effectiveness of changes in terms of resilience, energy efficiency, and user experience.

### Use case 1.3: Integrated Maintenance and Troubleshooting

This use case illustrates the benefits of a coordinated approach to maintenance and troubleshooting across the RAN and transport networks. By sharing data and insights between these layers, network operators can quickly identify, diagnose, and resolve issues, minimizing downtime and improving service quality.

Process:

* The system continuously monitors the health and performance of both RAN and transport network components. Fault and Alert Notification triggers immediate attention to potential issues, facilitating swift troubleshooting and resolution.
* Upon detecting an anomaly, the coordinated management systems correlate data from both networks to accurately pinpoint the issue's location and nature from multiple reported faults and alarms.
* Automated and joint diagnostics are run to assess the problem and identify potential solutions to provide insights into the root cause of issues and recommended corrective actions. If necessary, alerts are escalated to human operators with detailed insights.
* Remediation actions are automatically applied where possible, or guided procedures are provided to field technicians for manual interventions.
* Post-resolution, the system documents the incident and solution, enhancing future diagnostics and preventing recurrence.

Benefits:

* Rapid Response: Accelerates the identification and resolution of issues, reducing downtime and improving user experience. Specially avoid unnecessary dispatching workers to remote cell sites.
* Proactive Maintenance: Identifies potential issues before they impact service, allowing for preventative maintenance.
* Knowledge Building: Enhances the knowledge base for troubleshooting and maintenance, streamlining future operations.

Info exchange over the interface

* + Heat h and Performance Dat a
  + Fault and Alert Not if icat ions
  + Diagnost ic Dat a Analysis report s
  + Remediat ion act ions
  + Resolut ion Feedback and Performance Validat ion
  + ...

**Standard Interface**

**Coordinated management systems**

**Transport Network**

**Fronthaul Mid-haul Backhaul**

**Transport Management**

**RAN Network**

**5GCN**

**O-CU**

**O-DU**

**O-RU**

**SMO**

Above figure provides an example of information exchange cross the interface:

* Network Health and Performance Data: Real-time and historical data on network performance metrics, including signal strength, bandwidth utilization, latency, packet loss, and error rates.
* Fault and Alert Notifications: Automated alerts generated by network components and monitoring systems upon detecting faults or deviations from normal operational parameters.
* Diagnostic Data and Analysis Reports: Detailed diagnostic results and analysis reports generated after initial fault detection, including potential causes and suggested fixes.
* Remediation actions: Solutions and remediation steps generated upon identifying network issues, including configuration changes, hardware replacement, or software updates.
* Resolution Feedback and Performance Validation: Feedback on the success of troubleshooting and maintenance actions, including post-resolution performance metrics.

# Annex F (informative)

# Mapping 3GPP NRM to IETF Network Slice IM/DM

This section describes relationships between network slice informational model definitions of 3GPP NRM TS 28.541 section 6, IETF Yang network slice Data Model with Attachment circuit Yang Data Model and ORAN O2 Information Model / Data Model.

In current version 3GPP TS 28.541 IM/DM is mapped to IETF DMs, since WG6 DM is still under development.

![A diagram of a network  Description automatically generated with medium confidence]({{site.baseurl}}/assets/images/d9df61b2d9b5.jpg)

Here: TPN - Transport Provider Network TPNE - Transport Provider Network Edge

Agreement within WG9 and 3GPP with liaison # S-2022003 "Transport Network Slicing Enhancement IM/DM TS28.541" to 3GPP SA5, resulting in 3GPP TS 28.541 Clause 6.3.18 and IETF draft-ietf-teas-ietf- network-slice-nbi-yang augmented with draft-boro-opsawg-teas-attachment-circuit is captured on the following diagram:

![]({{site.baseurl}}/assets/images/3f750a001a00.png)

Current Annex E reflects work done in IETF draft-ietf-teas-5g-network-slice-application extended to ORAN focus and scope of definitions.

Information model in 3GPP Clause 6.3.18 is linked to Data Model in IETF draft-ietf-teas-ietf-network-slice- nbi-yang with draft-boro-opsawg-teas-attachment-circuit extension in the fashion of External Object Class defined in 6.3.41 ConnectionPointInfo.

ConnectionPointInfo is linked to the IETF DM draft-boro-opsawg-teas-attachment-circuit, linked, in turn, in IETF draft-ietf-teas-5g-network-slice-application to every SDP (Service Demarcation Point) of the Transport Network Slice DM.

As IETF draft-ietf-teas-ietf-network-slice-nbi-yang and draft-ietf-teas-5g-network-slice-application are not defining and not giving the guidance on the location of SDP, it could be on the 3GPP Subsystem Element and on TPNE element, the draft-ietf-teas-5g-network-slice-application section "Example According to PE- mode with Meeting Point Extension of ACaaS (OPTION 3)" with IETF draft-ietf-teas-5g-ns-ip-mpls in agreement defines SDP location on TNPE elements with logically connected 3GPP or ORAN WG5 subsystems.

![A screenshot of a computer  Description automatically generated]({{site.baseurl}}/assets/images/977c4571be0f.jpg)The following diagram depicts logical connectivity of the elements with IM and DM on each of the element in the example of the relationship of (O)-DU-1 and (O)-CU-UP-1 with the Transport Network element(s) connecting them in Network Slicing fashion.

![]({{site.baseurl}}/assets/images/37456bfc408f.png)

The following table represents relationships that shall be expected between attributes in 3GPP / ORAN WG5 IM/DMs and IETF DMs in case of the directly associated (O)-RAN and TPNE elements. Each line represents the mapping of the attributes from (O)-RAN subsystem O-DU-1 perspective and TPNE1 perspective, with formed CE-PE relationship.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **3GPP TS28.541, WG5**  **IM/DM Spec Attribute** | **Attribute value example** | **IETF DM draft-boro-opsawg- teas-attachment-circuit** | **Attribute value example** | **IETF DM draft-ietf-teas- ietf-network-slice-nbi- yang** | **Attribute value example** |
|  |  |  |  | data.ietf-network-slice- service:network-slice- services.name | Network\_Slice\_1 |
|  |  | ietf-ac-svc:attachment- circuits.ac.id | ac01-O-DU1 | data.ietf-network-slice- service:network-slice- services.slice- service.sdps.sdp.ac-svc- name:ac-ref | ac01-O-DU1 |
| Clause 6.3.41 EP\_Transport. ipAddress | 1.1.1.1 | ietf-ac-svc:attachment- circuits.ac.ip-connection.ipv4. address.customer-address | 1.1.1.1 | network-slice-services.slice- service.Network\_Slice\_1.sd ps.sdp.01.attachment- circuits.ac01-O-DU1.ac- ipv4-address *(optional)* |  |
| Clause 6.3.41 EP\_Transport. localLogicalInterfaceInfo | O-DU1\_LogicalInterfaceInfo |  |  |  |  |
| Clause 6.3.41 EP\_Transport. qosProfile | 5QI100 | attachment-circuits.ac.ac01-O- DU1.service.qos.qos- profiles.qos-profile | May differ from ORAN/3GPP profile | network-slice-services.slice- service.Network\_Slice\_1.sd ps.sdp.01.incoming-qos- policy *(optional)* | May differ from ORAN/3GPP profile |
| Clause 6.3.41 EP\_Transport. externalEndPointRefList | O-DU1\_Meeting\_point |  |  |  |  |
| Clause 6.3.35 LogicalInterfaceInfo | O-DU1\_LogicalInterfaceInfo |  |  |  |  |
| Clause 6.3.35 LogicalInterfaceInfo  .logicalInterfaceType | VLAN | attachment-circuits.ac.ac01-O- DU1.l2-  connection.encapsulation.type | VLAN | network-slice-services.slice- service.Network\_Slice\_1.sd ps.sdp.01.attachment- | VLAN |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  | circuits.ac01-O-DU1.ac- tags.tag-type *(optional)* |  |
| Clause 6.3.35 LogicalInterfaceInfo  .logicalInterfaceId | 100 | attachment-circuits.ac.ac01-O- DU1.l2-  connection.encapsulation.dot1 q.cvlan-id | 100 | network-slice-services.slice- service.Network\_Slice\_1.sd ps.sdp.01.attachment- circuits.ac01-O-DU1.ac- tags.value *(optional)* | 100 |
| Clause 6.3.35 LogicalInterfaceInfo  .systemName | O-DU1 | ietf-bearer-svc.bearers.line- 156.customer- point.device.device-id | O-DU1 | network-slice-services.slice- service.Network\_Slice\_1.sd ps.sdp.01.attachment- circuits.ac01-O-DU1.ac- node-id *(optional)* | O-DU1 |
| Clause 6.3.35 LogicalInterfaceInfo  .portName | XE1 | Not in the model |  | network-slice-services.slice- service.Network\_Slice\_1.sd ps.sdp.01.attachment- circuits.ac01-O-DU1.ac-tp- id *(optional)* | XE1 |
| Clause 6.3.35 LogicalInterfaceInfo  .routingProtocol | Static | attachment-circuits.ac.ac01-O- DU1.routing-protocols.id.1.ietf- vpn-common:static-routing | Static | Not in the model |  |
| Clause 6.3.41  ConnectionPointInfo | DU1\_Meeting\_point |  |  |  |  |
| Clause 6.3.41 ConnectionPointInfo. connectionPointId | ac01-O-DU1 | ietf-ac-svc:attachment- circuits.ac.ac01-O-DU1 | Name containment | network-slice-services.slice- service.Network\_Slice\_1.sd ps.sdp.01.attachment- circuits.ac01-O-DU1 | Name containment |
| Clause 6.3.41 ConnectionPointInfo. connectionPointIdType | ATTACHMENT\_CIRCUIT | Not in the model |  | Not in the model |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **3GPP TS28.623, WG5**  **IM/DM Spec Attribute** | **Example value** | **IETF DM draft-ietf-teas-ietf- network-slice-nbi-yang** | **Example value** | **IETF DM draft-boro- opsawg-teas-attachment- circuit** | **Attribute value example** |
| Clause A 2.2.2 IOC ManagedElement.id | O-DU1 | ietf-bearer-svc.bearers.line- 156.customer- point.device.device-id | O-DU1 | network-slice-services.slice- service.Network\_Slice\_1.sd ps.sdp.01.attachment- circuits.ac01-O-DU1.ac- node-id *(optional)* | O-DU1 |
| Clause A 2.2.2 IOC ManagedElement.locationN ame | Site1.AAA1.ZIP1 | ietf-bearer-svc.bearers.line- 156.customer-point.site.site-id | Site1.AAA1.ZIP1 | network-slice-services.slice- service.Network\_Slice\_1.sd ps.sdp.01.geo- location.reference- frame.location *(optional)* | Site1.AAA1.ZIP1 |

</div>

O-RAN.WG9.XTRP-MGT.0-R004-v09.00

![]({{site.baseurl}}/assets/images/9c69df009b87.jpg)

# Annex G (informative)

# Revision history

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Date** | **Revision** | **Author** | **Description** |
| 2021/02/28 | v1.00 | Management interface team | V1 release |
| 2021/06/29 | v2.00 | Management interface team | Minor improvements throughout document New additions:  Description of management & SDN for fixed access networks - section 8.2  IP / Ethernet section 8.4 content created |
| 2021/11/21 | v3.00 | Management interface team | New content in optical access, Grandmaster clock and slicing use case. Clarifications in many places throughout document. |
| 2022/3/26 | v4.00 | Management interface team | New content in Network slicing use case |
| 2022/10/28 | v5.00 | Management interface team | Added chapter 9.3.1 to 9.3.3 and chapter 10 for Network slicing use case |
| 2023/3/13 | v6.00 | Management interface team | Added annex A and changes for section 9.3 uniform transport network model edits |
| 2023/7/07 | v7.00 | Management interface team | ETSI formatting, updates for IETF network slicing based on recent standards work |
| 2024/03/15 | v8.00 | Management interface team | Added informative appendices E and F |
| 2024/07/15 | v9.00 | Management interface team | Added content for coordinated use cases in appendix E |

</div>
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG9.XTRP-MGT.0-R004-v09.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG9.XTRP-MGT.0-R004-v09.00.docx).

---

* toc
{:toc}
