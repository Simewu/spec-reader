---
title: O-RAN.WG10.TS.Information Model and Data Models.0-R004-v10.00.docx.md
author: O-RAN Alliance
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG10.TS.Information%20Model%20and%20Data%20Models.0-R004-v10.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG10.TS.Information Model and Data Models.0-R004-v10.00.docx).

---

* toc
{:toc}

---

### ![]({{site.baseurl}}/assets/images/4abf28715e20.png)O-RAN.WG10.TS.Information Model and Data Models.0-R004-

v10.00

*Technical Specification*

**O-RAN Work Group 10 (OAM for O-RAN)**

**O-RAN Information Model and Data Models Specification**

Copyright (C) 2025 by the O-RAN ALLIANCE e.V.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany Register of Associations, Bonn VR 11238, VAT ID DE321720189

# Contents

Foreword 3

Modal verbs terminology 4

1. Scope 5
2. References 6
   1. Normative references 6
   2. Informative references 6
3. Definitions of term, symbols and abbreviations 9
   1. Terms 9
   2. Symbols 9
   3. Abbreviations and acronyms 9
4. Overview and Philosophy 11
   1. Relationship between O-RAN and Standards Development Organizations 11
5. O-RAN Information Model 12
   1. Information Modeling Conventions 12
      1. Modeling approach, Unified Modeling Language (UML) 12
      2. Namespaces in the Information Model 12
   2. O-RAN Information Model Definitions 12
      1. Namespace: ORAN.ManagementArtifacts 12
6. O-RAN Data Models 29
   1. Formal relationship (traceability) between O-RAN Data Models and the O-RAN Information Model 29
   2. YANG Conventions 29
      1. General 29
      2. Naming 30
      3. Revision Statement 30
      4. Indents 31
      5. YANG Language Usage 31
      6. Cross Working Group Co-ordination 31
      7. Development of YANG Data Models compatible with O1 31
      8. Augmentations of 3GPP YANG Data Models 32

Annex A (informative): Links to Data Models approved for use 33

Annex B (informative): Relations between Information Model and Data Models 34

* 1. Information and Data Models as a Modeling Continuum 34
  2. Information and Data Modeling Co-Evolution 34
  3. Model and Use Case Development (process) 35

Annex C (informative): Classes/components and interfaces that comprise the O-RAN Information

Model and Data Models 36

Annex D (informative): Usage of models 38

* 1. Usage of 3GPP Data Models 38
  2. Usage of non-3GPP data models 40

Annex (informative): Change History 44

# Foreword

This Technical Specification (TS) has been produced by WG10 of the O-RAN Alliance.

The contents of the present document are subject to continuing work within O-RAN WG10 and may change following formal O-RAN approval. Should the O-RAN.org modify the contents of the present document, it will be re-released by O-RAN Alliance with an identifying change of release date and an increase in version number as follows:

Release x.y.z where:

* + 1. the first digit is incremented for all changes of substance, i.e., technical enhancements, corrections, updates, etc. (the initial approved document will have x=01).
    2. the second digit is incremented when editorial only changes have been incorporated in the document.
    3. the third digit included only in working versions of the document indicating incremental changes during the editing process.

# Modal verbs terminology

In the present document "**shall**", "**shall not**", "**should**", "**should not**", "**may**", "**need not**", "**will**", "**will not**", "**can**" and "**cannot**" are to be interpreted as described in clause 3.2 of the O-RAN Drafting Rules (Verbal forms for the expression of provisions).

"**must**" and "**must not**" are **NOT** allowed in O-RAN deliverables except when used in direct citation.

# Scope

**This document is both a Specification and an Informational Report in that it specifies the Information Model and the Data Models that are foundational for O-RAN's model-driven architecture and for the functions carried out over O-RAN interfaces.**

**In addition, this document includes information about existing standards and industry work that serve as a basis for work items in O-RAN. There is a "prosumer" relationship evolving between O-RAN and 3GPP, as each makes its model available and provides model feedback to the other.**

**Lastly, this document describes the de facto methods and procedures with respect to a "modeling continuum" that aims to establish and evolve an O-RAN Information Model from which O-RAN Data Models may be generated manually or with a set of tools.**

# References

## Normative references

References are either specific (identified by date of publication, edition number, version number, etc.) or non-specific. For a specific reference, subsequent revisions do not apply. For a non-specific reference, the latest version applies. In the case of a reference to a 3GPP document (including a GSM document), a non-specific reference implicitly refers to the latest version of that document in Release 18

The following referenced documents are necessary for the application of the present document.

1. 3GPP TR 21.905: Vocabulary for 3GPP Specifications
2. 3GPP TS 28.622: Telecommunication management; Generic Network Resource Model (NRM) Integration Reference Point (IRP); Information Service (IS)
3. RFC 8342: "Network Management Datastore Architecture (NMDA)", IETF, March 2018
4. RFC 8407: "Guidelines for Authors and Reviewers of Documents Containing YANG Data Models", IETF,

October 2018

1. RFC 7950, "The YANG 1.1 Data Modeling Language", IETF, August 2016
2. 3GPP TS 32.156: Telecommunication management; Fixed Mobile Convergence (FMC) Model repertoire
3. 3GPP TS 32.160: Management and orchestration; Management service template
4. O-RAN.WG10.O1-Interface.0-v10.00: "O-RAN Operations and Maintenance Interface Specification",

March 2023

1. OMG formal/2017-12-05: OMG(R) Unified Modeling Language(R) (OMG UML(R)), Version 2.5.1
2. O-RAN.WG3.O1-Interface-for-Near-RT-RIC.0-v01.00: "O1 Interface Specification for Near Real Time RAN Intelligent Controller", November 2022
3. 3GPP TS 28.625: Telecommunication management; State Management Data Definition Integration Reference Point (IRP); Information Service (IS)
4. O-RAN.WG6.O2IMS-INTERFACE-v04.00: "O2ims Interface Specification", March 2023
5. 3GPP TS 32.404: Technical Specification Group Services and System Aspects; Telecommunication management; Performance Management (PM); Performance measurements
6. ETSI GS NFV-IFA 027 V4.2.1," Network Functions Virtualisation (NFV) Release 4; Management and Orchestration; Performance Measurements Specification", May 2021
7. 3GPP TS 28.620: Telecommunication management; Fixed Mobile Convergence (FMC), Federated Network Information Model (FNIM), Umbrella Information Model (UIM)

## Informative references

References are either specific (identified by date of publication, edition number, version number, etc.) or non-specific. For a specific reference, subsequent revisions do not apply. For a non-specific reference, the latest version applies. In the case of a reference to a 3GPP document (including a GSM document), a non-specific reference implicitly refers to the latest version of that document in Release 18.

The following referenced documents are not necessary for the application of the present document, but they assist the user with regard to a particular subject area.

[i.1] O-RAN-WG4.MP.0-v12.00: "O-RAN Alliance Working Group 4 Management Plane Specification", March 2023

[i.2] RFC 6241, "Network Configuration Protocol (NETCONF)", IETF, June 2011

[i.3] "Modeling, Use Case and Architecture Process," B. Cheung et al, May 2019, ONAP

[i.4] O-RAN.WG2.A1AP-v04.00: "O-RAN Working Group 2 (Non-RT RIC and A1 interface WG) A1 interface: Application Protocol", November 2022

[i.5] O-RAN.WG3.E2GAP-v03.01: "O-RAN Working Group 3 Near-Real-time RAN Intelligent Controller Architecture & E2 General Aspects and Principles", March 2023

[i.6] O-RAN-WG5.O-CU-O1.0-v05.00: "O1 Interface specification for O-CU-UP and O-CU-CP", March 2023 [i.7] O-RAN.WG5.O-DU-O1.0-v07.00: "O1 Interface specification for O-DU", March 2023

[i.8] 3GPP TS 28.623: Telecommunication management; Generic Network Resource Model (NRM) Integration Reference Point (IRP); Solution Set (SS) definitions

[i.9] 3GPP TS 36.423: Technical Specification Group Radio Access Network; Evolved Universal Terrestrial Radio Access Network (E-UTRAN); X2 application protocol (X2AP)

[i.10] 3GPP TS 38.460: Technical Specification Group Radio Access Network; NG-RAN; E1 general aspects and principles

[i.11] 3GPP TS 38.470: Technical Specification Group Radio Access Network; NG-RAN; F1 general aspects and principles

[i.12] 802.1X-2020, "IEEE Standard for Local and Metropolitan Area Networks--Port-Based Network Access Control", IEEE, 2020-02-28

[i.13] RFC 5717: "Partial Lock Remote Procedure Call (RPC) for NETCONF", IETF, December 2009 [i.14] RFC 6022: "YANG Module for NETCONF Monitoring", IETF, October 2010

[i.15] RFC 6243: "With-defaults Capability for NETCONF", IETF, June 2011

[i.16] RFC 6470: "Network Configuration Protocol (NETCONF) Base Notifications", IETF, February 2012 [i.17] RFC 6643: "Translation of Structure of Management Information Version 2 (SMIv2) MIB Modules to

YANG Modules", IETF, July 2012

[i.18] RFC 6991: "Common YANG Data Types", IETF, July 2013

[i.19] RFC 7224: "IANA Interface Type YANG Module", IETF, May 2014

[i.20] RFC 7317: "A YANG Data Model for System Management", IETF, August 2014 [i.21] RFC 7758: "Time Capability in NETCONF", IETF, February 2016

[i.22] RFC 7952: "Defining and Using Metadata with YANG", IETF, August 2016 [i.23] RFC 8072: "YANG Patch Media Type", IETF, February 2017

[i.24] RFC 8341: "Network Configuration Access Control Model", IETF, March 2018 [i.26] RFC 8343: "A YANG Data Model for Interface Management", IETF, March 2018 [i.27] RFC 8344: "A YANG Data Model for IP Management", IETF, March 2018

[i.28] RFC 8348: "A YANG Data Model for Hardware Management", IETF, March 2018 [i.30] RFC 8525: "YANG Library", IETF, March 2019

[i.31] RFC 8526: "NETCONF Extensions to Support the Network Management Datastore Architecture", IETF,

March 2019

[i.32] RFC 8528: "YANG Schema Mount", IETF, March 2019

[i.33] RFC 8575: "YANG Data Model for the Precision Time Protocol (PTP)", IETF, May 2019 [i.34] RFC 8632: "A YANG Data Model for Alarm Management", IETF, September 2019

[i.35] RFC 8641: "Subscription to YANG Notifications for Datastore Updates", IETF, September 2019 [i.36] draft-ietf-netconf-crypto-types: "YANG Data Types and Groupings for Cryptography", IETF

[i.37] 3GPP TS 28.541: Management and orchestration; 5G Network Resource Model (NRM); Stage 2 and stage 3

[i.38] RFC 3198: "Terminology for Policy-Based Management", <https://datatracker.ietf.org/doc/html/rfc3198>

# Definitions of term, symbols and abbreviations

## Terms

For the purposes of the present document, the terms and definitions given in 3GPP TR 21.905 [1] and the following apply. A term defined in the present document takes precedence over the definition of the same term, if any, in 3GPP TR 21.905 [1].

Information Model: See Information Model in RFC 3198 [i.38]. Data Model: See Data Model in RFC 3198 [i.38].

Model: See Model [Class] in UML [9], clause 12.4.4.

Data Dictionary: a centralized repository of information about data such as meaning, relationships to other data, origin, usage, and format.

Namespace**:** See namespace as specified in UML v2.5.1 [9], clause 7.8.10 Namespace [Abstract Class]. Primary Key: value which is distinctive for each record of the table.

Key value pairs: a set of data consists of two related data element, key which is constant describing data set and its value.

## Symbols

For the purposes of the present document, the symbols given in 3GPP TR 21.905 [1] and the following apply. A symbol defined in the present document takes precedence over the definition of the same symbol, if any, in 3GPP TR 21.905 [1].

## Abbreviations and acronyms

For the purposes of the present document, the abbreviations given in 3GPP TR 21.905 [1] and the following apply. An abbreviation defined in the present document takes precedence over the definition of the same abbreviation, if any, in 3GPP TR 21.905 [1].

3GPP 3rd Generation Partnership Project

API Application Programming Interface

CR Change Requests

EMS Element Management System

FCAPS Fault, Configuration, Accounting, Performance, Security IOC Information Object Class

LS Liaison Statement

MA Managed Application

MANO Management and Orchestration

ME Managed Element

MF Managed Function

MnS Management Service

MO Managed Object

MOC Managed Object Class

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| MOI | Managed Object Instance |
| NAT | Network Address Translation |
| Near-RT RIC | O-RAN near real time RAN Intelligent Controller |
| NMS | Network Management System |
| Non-RT RIC | O-RAN non real time RAN Intelligent Controller |
| NRM | Network Resource Model |
| O-CU-CP | O-RAN Central Unit - Control Plane. |
| O-CU-UP | O-RAN Central Unit - User Plane |
| O-DU | O-RAN Distributed Unit |
| OMG | Object Management Group |
| O-RAN | Open Radio Access Network |
| O-RU | O-RAN Radio Unit |
| ONAP | Open Network Automation Platform |
| PNF | Physical Network Function |
| RAN | Radio Access Network |
| RRH | Remote Radio Head |
| SDO | Standards Development Organization |
| SMO | Service Management and Orchestration (layer) |
| TR | Technical Report |
| TS | Technical Specification |
| UML | Unified Modeling Language |
| SA5 | Services & System Aspects Working Group 5 Telecom Management |
| VNF | Virtualized Network Function |

</div>

# Overview and Philosophy

## Relationship between O-RAN and Standards Development Organizations

The O-RAN Alliance complements the work of other Standards Development Organizations (SDO): 3GPP, IETF, and IANA are among the primary sources for Management specifications for O-RAN components.

3GPP has published:

* its Generic Network Resource Model (NRM), including:
  + a Stage 2 NRM Information Model, in 3GPP TS 28.622 [2];
  + corresponding Stage 3 Solution Sets, one of which consists of YANG Data Models, in 3GPP TS 28.623 [i.8];
* its 5G Network Resource Model (NRM), including the Stage 2 NR NRM Information Model and corresponding Stage 3 Solution Sets, one of which consists of YANG Data Models, in 3GPP TS 28.541 [i.3];
* "Management and Orchestration APIs", including YANG data models from both NRMs, in a publicly available git repository

O-RAN Information Model, Data Models, and modeling processes should complement the work of other SDOs, not conflict or compete.

When 3GPP makes updates to their specification, they are incorporated into the O-RAN OAM Interface Specification [8]. This, in turn, drives the updates that are to be made to both the Information Model and Data Models within O- RAN.

# O-RAN Information Model

## Information Modeling Conventions

### Modeling approach, Unified Modeling Language (UML)

The Information Model within O-RAN shall use the Unified Modeling Language(TM) (UML(R)) version 2.5.1 [9] from the Object Management Group (OMG).

O-RAN Information Model shall follow methodology documented in 3GPP TS 32.160 [7] Clause 5.2.

### Namespaces in the Information Model

A Namespace provides a container for named elements, which are called its members. A Namespace may also import named elements from other specifications, in which case those elements become members of the importing Namespace.

## O-RAN Information Model Definitions

### Namespace: ORAN.ManagementArtifacts

#### Namespace Overview

The O-RAN Management Artifacts namespace identifies classes required to represent documentation descriptions that supplement the management aspect of elements represented by the classes in the NRM.

#### Imported and associated information entities

* + - * 1. Imported information entities and local labels

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Label reference** | **Local label** |
| 3GPP TS 28.622 [2], IOC, Top | Top |

</div>

* + - * 1. Associated information entities and local labels

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Label reference** | **Local label** |
| WG6.O2-Infrastructure Management Specification [12], IOC, ResourceType | OcloudResourceType |

</div>

#### Class diagrams

##### Relationships

![Generated by PlantUML]({{site.baseurl}}/assets/images/f5c10bdf717a.jpg)

**Figure 5.2.1.3-1 Performance Dictionary Relationships**

![Generated by PlantUML]({{site.baseurl}}/assets/images/cf404dbd0d94.jpg)

**Figure 5.2.1.3-2 Alarm Dictionary Relationships**

##### Inheritance

![Generated by PlantUML]({{site.baseurl}}/assets/images/39147b4eb11d.png)

**Figure 5.2.1.3-2 PerformancemeasureDictionary inheritance**

![Generated by PlantUML]({{site.baseurl}}/assets/images/1c68dc858f30.png)

**Figure 5.2.2.2-3 Alarm Dictionary inheritance**

#### Class definitions

##### PerformanceMeasureDictionary

Definition

Resource Types in the O-Cloud provide the SMO a dictionary of performance measures available by Resources of the Resource Type. The O-Cloud Deployment Management Services also report performance of workloads deployed into the cloud. The DMS Performance follows ETSI-NFV specification IFA027 [14]. The performance dictionary should be structured to allow resource vendors to specify their unique performance measures while also supporting performance measures which are defined by a standard.

Attributes

The PerformanceMeasureDictionary includes attributes inherited from Top IOC (defined in 3GPP TS 28.622 [2], clause 4.3.29) and the following attributes:

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Attribute name** | **S** | **isReadable** | **isWritable** | **isInvariant** | **isNotifyable** |
| performanceDictionaryId | M | T | F | T | F |
| performanceDictionaryVersion | M | T | F | T | F |
| performanceDictionarySchemaVersion | M | T | F | T | F |
| vendorSoftwareProduct | M | T | F | T | F |
| supportedInterfaces | M | T | F | T | F |
| supportedMeasures | M | T | F | T | F |

</div>

Attribute constraints

None

Notifications

This class does not support any notification.

State diagram

None

##### PerformanceMeasureDefinition\_ <<dataType>>

Definition

The PerformanceMeasureDefinition defines the O-RAN attributes common to both variants of a performance measurement definition.

Attributes

The PerformanceMeasureDefinition inherits attributes from Top IOC (defined in 3GPP TS 28.622 [2], clause 4.3.29) and extends it with the following attributes:

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Attribute name** | **S** | **isReadable** | **isWritable** | **isInvariant** | **isNotifyable** |
| performanceMeasureDefinitionId | M | T | F | T | F |
| performanceMeasureId | M | T | F | T | F |
| standardReference | M | T | F | T | F |
| supportedInterfaces | M | T | F | T | F |
| extensions | M | T | F | T | F |

</div>

Attribute constraints

None

Notifications

This class does not support any notification.

State diagram

None

##### ETSIPerformanceMeasureDefinition <<dataType>>

Definition

The ETSIPerformanceMeasureDefinition is an extension of the PerformanceMeasureDefinition\_ abstract class. It provides the extended attributes specific to an ETSI based performance measurement definition.

Attributes

The ETSIPerformanceMeasureDefinition is a specialized class of the PerformanceMeasureDefinition\_ class which inherits attributes from. It extends the class with the attributed defined in ETSI NFV IFA027 [14] clause 5.

Attribute constraints

None

Notifications

This class does not support any notification.

State diagram

##### 3GPPPerformanceMeasureDefinition <<dataType>>

Definition

The 3GPPPerformanceMeasureDefinition is an extension of the PerformanceMeasureDefinition\_ abstract class. It provides the extended attributes specific to an 3GPP based performance measurement definition.

Attributes

The 3GPPPerformanceMeasureDefinition is a specialized class of the PerformanceMeasureDefinition\_ class which inherits attributes from. It extends the class with fields defined in 3GPP TS 32.404 [13] clause 3.3.

Attribute constraints

None

Notifications

This class does not support any notification.

State diagram

None.

##### StandardReference <<dataType>>

Definition

When definition has been provided by another Standards body this dataType provides a reference to the standard body that is author of particular definition, as well as to where the definition can be found.

Attributes

The StandardReference contains attributes used to identify where in a standard the definition is provided.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Attribute name** | **S** | **isReadable** | **isWritable** | **isInvariant** | **isNotifyable** |
| standardDefinitionOrganization | M | T | F | T | F |
| standardSpecification | M | T | F | T | F |
| versionOrRelease | M | T | F | T | F |
| clause | M | T | F | T | F |

</div>

Attribute constraints

None

Notifications

This class does not support any notification.

State diagram

None.

##### SupportedInterface <<dataType>>

Definition

Provides mapping between fields of particular MOI to management interface over which it can be reported.

Attributes

The SupportedInterface contains attributes used to identify which interface field(s) are used to match the mapping.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Attribute name** | **S** | **isReadable** | **isWritable** | **isInvariant** | **isNotifyable** |
| managementInterfaceId | M | T | F | T | F |
| eventToDictionaryMap | M | T | F | T | F |

</div>

Attribute constraints

None

Notifications

This class does not support any notification.

State diagram

None.

##### EventToDictionaryMap <<choice>>

Definition

The EventToDictionaryMap is a choice stereotype represents one of a set of data types as shown per dictionary type in figures 5.2.2.1-1 and 5.2.2.1-3.

Attributes

As a choice stereotype the class has no intrinsic attributes. Instead, the attributes of the class are specified in the alternative class type definitions.

Attribute constraints

None

Notifications

This class does not support any notification.

State diagram

None.

##### PerformanceDictionaryMap <<dataType>>

Definition

The PerformanceDictionaryMap provide the attributes required to map a performance measure in a performance report to its corresponding PerformanceMeasureDefinition entry in an PerformanceMeasureDictionary. Performance measures for a given software product are reported over an interface.

A map shall be provided between the measurement report attribute and the performanceMeasureDefinitionId within the dictionary for a given interface. The PerformanceDictionaryMap provides the ability to identify the attribute name within a performance report which shall contain the value to use as the performanceMeasureDefinitionId in a PerformanceMeasureDictionary.

Attributes

The PerformanceDictionaryMap contains attributes used to identify which interface field(s) are used to match the performanceMeasureDefinitionId of a PerformanceMeasureDefinition\_ in the PerformanceMeasureDictionary.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Attribute name** | **S** | **isReadable** | **isWritable** | **isInvariant** | **isNotifyable** |
| eventToMeasureDefinitionMap | M | T | F | T | F |

</div>

Attribute constraints

None

Notifications

This class does not support any notification.

State diagram

None.

##### VendorSoftwareProduct <<dataType>>

Definition

The VendorSoftwareProduct defines the attributes required to identify vendor, product and its version which is supported.

Attributes

The VendorSoftwareProduct defines the following attributes:

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Attribute name** | **S** | **isReadable** | **isWritable** | **isInvariant** | **isNotifyable** |
| vendor | M | T | F | T | F |
| product | M | T | F | T | F |
| version | M | T | F | T | F |

</div>

Attribute constraints

None

Notifications

This class does not support any notification.

State diagram

None.

##### AlarmDictionary

Definition

There is more information about an alarm than is included in a notification about an alarm occurrence. The Alarm Dictionary provides that data to the SMO such that the extended data may be used to assist in alarm event processing. These could include repair actions which guide a user of the SMO of what to do when the alarm occurs. If the alarm is based on a standard, this could also include the standard-defined descriptions/discussion about the alarm condition.

Along with Network Functions, O-Cloud resources or deployments may generate an alarm notification which are sent to subscribed consumers. The SMO shall be the primary consumer of these events which may need the ability to correlate them when there is a single root cause for alarms from multiple sources. The dictionary definition provides extensibility where such end-to-end type of signatures may be described.

Not all alarms definitions are standardized and therefore the alarm dictionary should be structured to allow a resource and/or application vendors to specify their unique alarms while also supporting alarms which are defined by a standard.

Attributes

The AlarmDictionary includes attributes inherited from Top\_ [2] and the following attributes:

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Attribute name** | **S** | **isReadable** | **isWritable** | **isInvariant** | **isNotifyable** |
| alarmDictionaryId | M | T | F | T | F |
| alarmDictionaryVersion | M | T | F | T | F |
| alarmDictionarySchemaVersion | M | T | F | T | F |
| entityType | M | T | F | T | F |
| vendorSoftwareProduct | M | T | F | T | F |
| supportedInterfaces | M | T | F | T | F |
| alarmDefinitions | M | T | F | T | F |
| probableCauses | M | T | F | T | F |

</div>

Attribute constraints

None

Notifications

This class does not support any notification.

State diagram

None

##### AlarmDictionaryMap <<dataType>>

Definition

The AlarmDictionaryMap provides the attributes to map an alarm event record to its corresponding AlarmDefinition entry in an AlarmDictionary. Alarm event records for a given software product are reported over an interface. A map is required to identify the AlarmEvent attribute which correlates to the alarmDefinitionId within the dictionary for a given interface. The AlarmDictionaryMap identifies the attribute name within an Alarm event record, which shall contain the alarmDefinitionId value in an AlarmDictionary.

Attributes

The AlarmDictionaryMap defines following attribute:

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Attribute name** | **S** | **isReadable** | **isWritable** | **isInvariant** | **isNotifyable** |
| eventToAlarmDefinitionMap | M | T | F | T | F |

</div>

Attribute constraints

None

Notifications

This class does not support any notification.

State diagram

None.

##### AlarmDefinition <<dataType>>

Definition

The AlarmDefinition includes additional static data about an alarm that is not transmitted in the Alarm event notification. The data is used by the consumer for alarm planning, automation, troubleshooting or to enrich the infrastructure alarm event notification when received.

Attributes

The AlarmDefinition inherits attributes from Top\_ [2] and extends it with the following attributes:

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Attribute name** | **S** | **isReadable** | **isWritable** | **isInvariant** | **isNotifyable** |
| alarmDefinitionId | M | T | F | T | F |
| alarmName | M | T | F | T | F |
| alarmLastChange | M | T | F | T | F |
| alarmChangeType | M | T | F | T | F |
| alarmDescription | M | T | F | T | F |
| proposedRepairAction | M | T | F | T | F |
| clearingType | M | T | F | T | F |
| standardReference | M | T | F | T | F |
| supportedInterfaces | M | T | F | T | F |
| extensions | M | T | F | T | F |

</div>

Attribute constraints

None

Notifications

This class does not support any notification.

State diagram

None

##### ProbableCause <<dataType>>

Definition

The ProbableCause provides an indication of the root cause of the event. ProbableCause is intended to help operators determine the root cause of an event

There are industry suggested lists of probable causes that could be used. When used the ProbableCause definition should allow for an indication of such a source.

Alarm Definitions may provide one or more ProbableCause(s) as part of their extended fields. However, each alarm event should have a ProbableCause that is specific to that alarm instance. The ProbableCause(s) used by the product vendor for alarm events shall be listed independently in the alarm dictionary.

Attributes

The Probable Cause is a structured data type consisting of the following attributes:

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Attribute name** | **S** | **isReadable** | **isWritable** | **isInvariant** | **isNotifyable** |
| probableCauseCode | M | T | F | T | F |
| probableCauseDescription | M | T | F | T | F |
| standardReference | M | T | F | T | F |

</div>

Attribute constraints

None

Notifications

This class does not support any notification.

State diagram

None.

* + - 1. Attribute definitions

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Attribute Name** | **Documentation and Allowed Values** | **Properties** |
| 3GPPPerformanceMeasu  rementDefinition.col lectionMethod | This attribute identifies the collection method for an 3GPP based measurement definition.  allowedValues: conforms to 3GPP TS 32.404 [13] clause 3.3(b). | type: 3GPPCollectionMethod multiplicity: 1 isOrdered: N/A isUnique: N/A  defaultValue: None isNullable: False |
| 3GPPPerformanceMeasu  rementDefinition.des cription | This attribute contains an explanation of the measurement operation.  allowedValues: conforms to 3GPP TS 32.404 [13] clause 3.3(a). | type: string multiplicity: isOrdered: N/A isUnique: N/A defaultValue: None  isNullable: False |
| clause | This attribute identifies the clause in a specification that defines a measurement definition.  allowedValues: N/A. | type: string multiplicity: isOrdered: N/A isUnique: N/A defaultValue: None  isNullable: False |
| condition | This attribute identifies the condition in which the measurement will be upated.  allowedValues: conforms to 3GPP TS 32.404 [13] clause 3.3(c). | type: string multiplicity:1 isOrdered: N/A isUnique: N/A  defaultValue: None isNullable: False |
| ETSIPerformanceMeasu  rementDefinition.col lectionMethod | This attribute identifies the collection method for an ETIS based measurement definition.  allowedValues: conforms to ETSI NFV IFA027 clause 5(b) [14] | type: ETSICollectionMethod multiplicity: 1 isOrdered: N/ isUnique: N/A defaultValue: None  isNullable: False |
| ETSIPerformanceMeasu  rementDefinition.des cription | This attribute contains the description of the performance measurement.  allowedValues: conforms to ETSI NFV IFA027 clause 5(a) [14] | type: string multiplicity: isOrdered: N/A isUnique: N/A  defaultValue: None isNullable: False |
| generation | This attribute identifies the cellular technology generation(s) that a performance measurement definition is applicable to.  allowedValues: conforms to 3GPP TS 32.404 [13] clause 3.3(h). | type: 3GPPGeneration multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: None  isNullable: False |
| managementInterfaceI  d | This attribute identified the management interface that a performance measurement definition can be reported on.  allowedValues: O1  O2DMS O2IMS  OpenFH | type: ManagementInterface multiplicity: 1  isOrdered: N/A isUnique: N/A defaultValue: None isNullable: False |
| measurementName | This attribute is a descriptive name of the measurement type.  allowedValues: conforms to 3GPP TS 32.404 [13] clause 3.3. | type: string multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: None  isNullable: False |
| measurementResult | This attribute is a description of expected result value(s).  allowedValues: conforms to 3GPP TS 32.404 [13] clause 3.3(d). | type: string multiplicity: 1 isOrdered: N/A isUnique: N/A  defaultValue: None isNullable: False |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| measurementType | This attribute describes a short form of the measurement name specified in the header, which is used to identify the measurement type.  allowedValues: conforms to 3GPP TS 32.404 [13] clause 3.3(e). | type: String multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: None  isNullable: False |
| measurementUnit | This attribute describes the unit of the measurement value.  allowedValues: conforms to ETSI NFV IFA027 clause 5(d) [14] | type: multiplicity: isOrdered: N/A isUnique: N/A  defaultValue: None isNullable: False |
| measureObjectClass | This attribute describes the object class.  allowedValues: conforms to 3GPP TS 32.404 [13] clause 3.3(f). | type: string multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: None  isNullable: False |
| performanceDictionar ySchemaVersion | This attribute defines the version of the schema version used to create the measurement definitions.  allowedValues: N/A | type: string multiplicity: 1 isOrdered: N/A isUnique: N/A  defaultValue: None isNullable: False |
| performanceDictionar yVersion | This attribute defines the version of the dictionary itself. allowedValues: N/A | type: multiplicity: 1 isOrdered: N/A isUnique: N/A  defaultValue: None isNullable: False |
| PerformanceMeasureDe finition.supportedIn terfaces | This attribute when present this defines the specific subset of interfaces over which the measurement is transmitted and may define an override of the interface key field mapping. If omitted, then the measure is transmitted over all interfaces defined in the dictionary level map.  allowedValues: N/A | type: SupportedInterface multiplicity: 0..\* isOrdered: N/A isUnique: N/A defaultValue: None isNullable: True |
| performanceMeasureDe finitionId | This attribute identifies a single performanceMeasurementDefinition within the dictionary.  allowedValues: N/A | type: string multiplicity: 1 isOrdered: N/A isUnique: True defaultValue: None  isNullable: False |
| PerformanceMeasureDi ctionary.supportedIn terfaces | This attribute provides the list overwhich the performance measurements will be transmitted over. Not all performance measures are required to be over all supported interfaces.  allowedValues: N/A | type: SupportedInterface multiplicity: 1..\* isOrdered: N/A isUnique: N/A defaultValue: None  isNullable: False |
| performanceMeasureId | This attribute identifies a single performanceMeasurementDefinition with a numeric value which may be used during serialization over a streaming interface to support data compaction.  allowedValues: unsigned integer | type: Uint multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: None  isNullable: False |
| eventToDictionaryMap | This attribute is a placeholder for an alternative set of fields based on a choice. This field shall be replaced with those fields identified in the appropriate alternative of the choice. | type: EventToDictionaryMap multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: None  isNullable: False |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| eventToMeasureDefini tionMap | This attribute identifies the field attribute in a performance report which shall contain the value to be used as the measureDefinitionID in an PerformanceMeasureDictionary.  AllowedValues: Any attribute name within a performance report. | type: String multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: None  isNullable: False |
| product | This attribute identifies the software product name provided by a vendor.  allowedValues: N/A | type: String multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: None  isNullable: False |
| purpose | This attribute, when supplied, describes who will be using the measurement.  allowedValues: conforms to 3GPP TS 32.404 [13] clause 3.3(i). | type: String multiplicity: 0..1 isOrdered: N/A isUnique: N/A defaultValue: None  isNullable: True |
| standardReference | This attribute, when provided, identifies a Standard where a performance measure is defined.  allowedValues: N/A | type: StandardReference multiplicity: 0..1 isOrdered: N/A  isUnique: N/A defaultValue: None isNullable: True |
| standardsDefinitionO rganization | This attribute identifies the Standards definition organization such as but not limited to ETSI or 3GPP.  allowedValues: N/A | type: String multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: None  isNullable: False |
| standardSpecificatio n | This attribute defines the Standard's title which in contains the measurement definition.  allowedValues: N/A. | type: String multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: None  isNullable: False |
| supportedMeasures | This attribute provides the list of measurement definitions contained within a performance dictionary.  allowedValues: N/A | type: 3GPPPerformanceMeasure Definition or ETSIPerformanceMeasure Definition  multiplicity: 1..\* isOrdered: N/A isUnique: N/A defaultValue: None  isNullable: False |
| switchingTechnology | This attribute defines the switching domain(s) this measurement is applicable to.  allowedValues: conforms to 3GPP TS 32.404 [13] clause 3.3(g). | type: multiplicity: isOrdered: N/A isUnique: N/A  defaultValue: None isNullable: False |
| trigger | This attribute describes the trigger which causes the counter to be updated.  allowedValues: conforms to ETSI NFV IFA027 clause 5(c) [14] | type: string multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: None  isNullable: False |
| vendor | This attribute identifies vendor of a software product that the specified dictionary is provided for.  allowedValues: N/A | type: string multiplicity: 1 isOrdered: N/A isUnique: N/A  defaultValue: None isNullable: False |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| vendorSoftwareProduc t | This attribute identifies vendor software product that the specified dictionary is provided for.  allowedValues: N/A | type: VendorSoftwareProduct multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: None  isNullable: False |
| version | This attribute identifies specific version of a vendor software product that the specified dictionary is provided for.  allowedValues: N/A | type: string multiplicity: 1 isOrdered: N/A isUnique: N/A  defaultValue: None isNullable: False |
| versionOrRelease | This attribute identifies the specification version, release, or date of publication, that identifies a specific instance of the specification.  allowedValues: N/A | type: string multiplicity: 1 isOrdered: N/A isUnique: N/A  defaultValue: None isNullable: False |
| alarmChangeType | This indicates the type of last change that occurred during the alarm last change.  allowedValues: This type conforms to the enumerated type AlarmChangeType. | type: AlarmChangeType multiplicity: 1  isOrdered: True isUnique: N/A defaultValue: None isNullable: False |
| alarmDefinitions | This attribute contains the list of alarm definitions which are or have been supported by the entity type and are ordered ascending by AlarmDefinitionId.  allowedValues: N/A | type: AlarmDefinition multiplicity: 1..\* isOrdered: True isUnique: N/A defaultValue: None  isNullable: False |
| alarmDefinitionId | This identifies a specific alarmDefinition instance in the AlarmDictionary. This is the Primary Key into the alarmDefinitions.  allowedValues: N/A | type: String multiplicity: 1 isOrdered: False isUnique: True defaultValue: None  isNullable: False |
| AlarmDefinition.supp ortedInterfaces | This attribute, when present, defines the specific subset of interfaces over which the alarm is transmitted and may define an override of the interface key field mapping. If omitted, then the measure is transmitted over all interfaces defined in the dictionary level map.  allowedValues: N/A | type: SupportedInterface multiplicity: 0..\* isOrdered: N/A isUnique: N/A defaultValue: None isNullable: True |
| alarmDescription | This provides a longer descriptive meaning of the alarm condition and a description of the consequences of the alarm condition. This is intended to be read by an operator to give an idea of what happened and a sense of the effects, consequences, and other impacted areas of the system.  allowedValues: N/A | type: String multiplicity: 1 isOrdered: False isUnique: N/A defaultValue: None isNullable: False |
| AlarmDictionary.supp ortedInterfaces | This attribute provides the list over which the alarms will be transmitted.  allowedValues: N/A | type: SupportedInterface multiplicity: 1..\* isOrdered: N/A isUnique: N/A defaultValue: None  isNullable: False |
| alarmDictionarySchem aVersion | This attribute defines the schema version used to create the measurement definitions.  allowedValues: N/A | type: String multiplicity: 1 isOrdered: N/A isUnique: N/A  defaultValue: None isNullable: False |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| alarmDictionaryVersi on | This attribute defines the version of the dictionary itself. allowedValues: N/A | type: String multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: None isNullable: False |
| alarmLastChange | This defines the date and time of the last change to an alarm definition.  allowedValues: N/A | type: DateTime multiplicity: 1 isOrdered: False isUnique: N/A  defaultValue: None isNullable: False |
| alarmName | This describes the human readable name of the alarm. allowedValues: N/A | type: String multiplicity: 1 isOrdered: False isUnique: N/A  defaultValue: None isNullable: False |
| clearingType | This Indicates the type of change that occurred during the alarm last change.  allowedValues: This type conforms to the enumerated type AlarmClearingType. | type: AlarmClearingType multiplicity: 1  isOrdered: True isUnique: N/A defaultValue: None isNullable: False |
| entityType | This attribute defines the type of entity generating the alarm.  Allowed values are not limited in order to allow for extensibility of the O-Cloud Resource Types. | type: string multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: None  isNullable: False |
| eventToAlarmDefiniti onMap | This attribute identifies the attribute in an alarm event record which contains the value to be used as the alarmDefinitionID in an AlarmDictionary.  AllowedValues: Any attribute name within an alarm event record. | type: String multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: None  isNullable: False |
| extensions | This attribute provides a list of key value pairs denoting extended attributes of the Information Object Class  allowedValues: N/A | type: KeyValuePair multiplicity: 0..\* isOrdered: N/A isUnique: N/A defaultValue: None  isNullable: False |
| probableCauseCode | This identifies a specific probableCause instance in the AlarmDictionary. This is the Primary Key into the probableCauses.  allowedValues: N/A | type: String multiplicity: 1 isOrdered: False isUnique: True  defaultValue: None isNullable: False |
| probableCauseDescrip tion | This provides any additional information beyond the probableCauseCode to describe the probable cause | type: String multiplicity: 0..1 isOrdered: False isUnique: False defaultValue: None  isNullable: False |
| probableCauses | This attribute contains the list of probable causes which may be referenced in an InfrastructureAlarmEventNoticication. The probableCauses shall set in ascending order of probableCauseCode values.  allowedValues: N/A | type: ProbableCause multiplicity: 1..\* isOrdered: True isUnique: N/A defaultValue: None  isNullable: False |
| proposedRepairAction | This describes guidance for proposed repair actions. allowedValues: N/A | type: String multiplicity: 1 isOrdered: False isUnique: False defaultValue: None  isNullable: False |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| alarmDictionaryId | This attribute serves as the identifier of an AlarmDictionary. allowedValues:N/A | type: String multiplicity: 1 isOrdered: False isUnique: True defaultValue: None  isNullable: False |
| performanceDictionar yId | This attribute serves as the identifier of a PerformanceMeasureDictionary.  allowedValues:N/A | type: String multiplicity: 1 isOrdered: False isUnique: True defaultValue: None  isNullable: False |

</div>

# O-RAN Data Models

## Formal relationship (traceability) between O-RAN Data Models and the O-RAN Information Model

For O1 interfaces, the O-RAN Information Model development should precede and serve as the basis for the Data Model development.

As the modeling practices and processes within O-RAN mature, the Information Model and Data Models should co- evolve to develop the APIs required by specific use cases.

![]({{site.baseurl}}/assets/images/9db407761368.png)

**Figure 6.1-1 Information and Data Modeling Co-Evolution [i.3]**

## YANG Conventions

### General

This clause describes the recommended conventions to be used in the O-RAN Alliance when writing YANG models.

In particular, because the creation and maintenance of YANG models is expected to be distributed across different working groups, this guide is intended to ensure that the way the models are organized and presented will be consistent across the entirety of the O-RAN Alliance.

### Naming

MODULE FILE NAMING: All YANG modules shall have filenames that are unique within O-RAN. All YANG module filenames shall follow the form defined in clause 5.2 of IETF RFC 7950 [5], except for the revision date that shall not be present.

MODULE NAMING: All YANG module names shall have the form: "<org>-<identifier>-<name>" where:

* The <org> element is mandatory and shall have the value of "o-ran".
* The <identifier> element is optional for YANG modules that have been already published. For new YANG modules the <identifier> element is mandatory. All YANG modules shall have <identifier> elements that are unique within O-RAN (e.g., O1).
* The <name> element is used to ensure the name of the YANG module is unique within the <org> or <org>-

<identifier> modulename conventions. Additionally in cases where a YANG module is dedicated to one O- RAN entity, the <name> element should contain name of this O-RAN entity, i.e. <name> = "odu-<unique- name>", <name> = "ocu-<unique-name>". For O-RAN common YANG modules name should follow the form of <name>="common-<unique-name>".

MODULE NAMESPACE: All YANG modules shall have a namespace defined of the form namespace "urn:<org>:<modulename>".

* The <org> element is mandatory and shall have the value of "o-ran".
<div class="table-wrapper" markdown="block">

* The <modulename> element is mandatory and shall have the value equal to the <modulename|sub- modulename> element of the YANG module's filename.

</div>

PREFIX NAMING: Each YANG module shall have a prefix statement with a prefix that other dependent modules will use (also used in path references within the same module). YANG module prefixes shall be a maximum of 13 characters. All YANG modules shall have YANG module prefixes that are unique within O-RAN. All YANG module prefixes shall have the form "<org>-[<abbreviatedidentifier>-]<abbreviatedname>".

* The <org> element is mandatory and shall have the value of "or" for new YANG modules.
* The <org> element is mandatory and may have the value of "o-ran" or "or" for YANG modules that already have been published.
* The <abbreviatedidentifier> element is optional for YANG modules that have been already published. For new YANG modules the <abbreviated> element is mandatory. All YANG modules shall have

<abbreviatedidentifier> elemenst that are unique within O-RAN (e.g., O1).

* The <abbreviatedname> element is used to ensure the YANG module prefix is unique within the <org> or

<org>-<abbreviatedidentifier> YANG module prefix conventions.

### Revision Statement

The revision statement in all YANG models shall include a reference statement used to cross-reference to the version of a particular O-RAN publication where the corresponding functionality was initially introduced. The revision statement of the YANG models also shall include a description that is used to track the versioning of the YANG model. All revision statement descriptions shall begin with version a.b.c, where a, b and c are used to reflect the version of the YANG model, where:

* 'a' corresponds to the first digit of the O-RAN specification version where the corresponding description was first introduced;
* 'b' is incremented when errors in the YANG model have been corrected;
* 'c' is incremented only in working versions of the YANG model indicating incremental changes during the editing process. Hence, all published versions of O-RAN alliance YANG models should have this value set to zero.

### Indents

O-RAN Alliance YANG models shall use two-space tab indents.

### YANG Language Usage

YANG VERSION: All models shall use YANG data modeling language version 1.1 (RFC 7950 [5]) and follow the Guidelines for Authors and Reviewers of Documents Containing YANG Data Models [RFC 8407 [4]].

TOP-LEVEL DATA NODE: There should only be one top-level data node defined in each YANG module, if any data nodes are defined at all.

NMDA (Network Management Datastore Architecture): No O-RAN YANG models should prevent the use of NMDA [RFC 8342 [3]].

KEY-LESS LISTS OF OPERATIONAL STATE: Although permitted in YANG, the use of a list that consists of operational-state without a defined key should be avoided.

VALIDATION: All YANG modules should be validated / compiled with pyang tool using the following flag: pyang -- lint <module>. Note, successful compilation with pyang does not guarantee a working model, as xPATH expressions aren't evaluated and forbidden operational data dependencies in the configuration may not generate appropriate errors.

CONSTRAINTS: Generally, O-RAN systems should strive to consider a blank configuration to be a valid config.

### Cross Working Group Co-ordination

Models that are likely to be applicable to more than one O-RAN Alliance working group should provide clear delineation between separate working groups configuration and/or state. The use of feature and if-feature should be used to ensure that NETCONF servers are not required to implement the entire data model, e.g., when aspects of such relate to the individual working group defined use cases. The feature name should indicate which working group or which O-RAN entity the capabilities have been defined by.

### Development of YANG Data Models compatible with O1

All YANGs created by O-RAN which intend to be used as O1 aligned YANG Data Models shall follow rules for:

* InformationObjectClass - abstract, please refer to 3GPP TS 32.160 [7] clause 6.2.2.2
* Naming attribute, usually named 'id', please refer to 3GPP TS 32.160 [7] clause 6.2.3.2
* InformationObjectClass, definition in YANG, please refer to 3GPP TS 32.160 [7] clause 6.2.4.1
* Generalization Relationship - inheritance from a class, please refer to 3GPP TS 32.160 [7] clause 6.2.5.2
* Name containment - composite aggregation association relationship, please refer to 3GPP TS 32.160 [7] clause 6.2.6.2
* Recursive containment, please refer to 3GPP TS 32.160 [7] clause 6.2.7
* Multi-root management tree, please refer to 3GPP TS 32.160 [7] clause 6.2.8
* Alternative containment, please refer to 3GPP TS 32.160 [7] clause 6.2.9

When O-RAN defines IoCs then those shall be correlated to O-RAN documents produced by the WG which defines O1 aligned YANG Data Model.

When there are inconsistencies between definition in any of TS 32.156 [6], TS 32.160 [7] and definition in this document, definition in this document take precedence.

### Augmentations of 3GPP YANG Data Models

All augmentations of 3GPP YANG Data Models, to be compliant, shall not violate rules mentioned in "Development of YANG Data Models compatible with O1" clause of this document.

Augmentations shall be made in separate O-RAN originated YANG Data Model file, as modification of original 3GPP YANG Data Model file is prohibited.

# Annex A (informative):

Links to Data Models approved for use

From O-RAN

The public facing web page that includes the formally released versions of models that are approved for use: [www.o-ran.org/specifications](http://www.o-ran.org/specifications)

From 3GPP

3GPP is one of the sources for management plane specifications for O-RAN components. 3GPP publishes its "SA5 Data models" including its yang data models in a publicly available git repository:

<https://forge.3gpp.org/rep/sa5/MnS>

From IETF

IETF is a complementary source for management plane specifications for O-RAN components. IETF publishes its yang data models (inclusive of IANA yang data models) in a publicly available git repository:

<https://github.com/YangModels/yang/tree/master/standard/ietf>

# Annex B (informative): Relations between Information Model and Data Models

## Information and Data Models as a Modeling Continuum

Within O-RAN, the de facto methods and procedures with respect to the early stage of an O-RAN "modeling continuum" aim to evolve **one common and coherent Information Model for providing O-RAN extensions to the existing 4G/5G IMs such as the 3GPP NRMs, from which O-RAN Data Models may be generated.**

![A diagram of data modeling  Description automatically generated]({{site.baseurl}}/assets/images/fc84e50b9b2e.jpg)

**Figure B.1-1 Information and Data Models as a Modeling Continuum (conceptual)**

## Information and Data Modeling Co-Evolution

The "Modeling Continuum" depicted as Figure B.2-1 is purely conceptual and is intended to provide a framework for Information and Data Modeling Co-evolution.

Here is an example of the process to be adapted to, and adopted by, O-RAN:

![A diagram of data modeling  Description automatically generated]({{site.baseurl}}/assets/images/cc24d306054d.jpg)

**Figure B.2-1 Information and Data Modeling Co-Evolution [i.3]**

## Model and Use Case Development (process)

There is evolvoing process within O-RAN to guide and inform Information Model and Data Model(s) development based on prioritized use cases.

Here is example of the process to be adapted to, and adopted by, O-RAN.

![A screen shot of a computer  Description automatically generated]({{site.baseurl}}/assets/images/bf96a7eedc81.jpg)

**Figure B.3-1 Model and Use Case Development (process) [i.3]**

# Annex C (informative): Classes/components and interfaces that comprise the O-RAN Information Model and Data Models

Following are a list of classes/components as well as interfaces that may be part of the O-RAN Information model, along with the working group developing this entity, any SDO references if appropriate, followed by comments and the status. This is based on the premise that each WG is responsible for modeling the entity, and WG10 is responsible for stewarding the overarching model inclusive of the input from the other groups.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Entity** | **WG Developing Model** | **Doc Reference** | **Comments** | **Status** |
| *Class / Component* |  |  |  |  |
| NonRTRIC | WG2 |  | Not present in model |  |
| NearRTRIC | WG3 |  | Presently shell only in model. |  |
| O-CU-CP | WG5 | O-RAN-WG5.O-CU-O1.0 [i.6] |  |  |
| O-CU-UP | WG5 | O-RAN-WG5.O-CU-O1.0 [i.6] |  |  |
| O-DU | WG5 | O-RAN.WG5.O-DU-O1.0 [i.6] |  |  |
| O-RU | WG4 |  | Shell only |  |
| ManagedApplication | WG10 |  | Abstract Class |  |
| ManagedElement |  | 3GPP TS 28.622 [2] | Class and attributes |  |
| xApp | WG3, (WG6) |  | Not present in model |  |
| rApp | WG2, (wg6) |  | Not present in model |  |
|  |  |  |  |  |
| *Interfaces* |  |  |  |  |
| A1-P | WG2 | O-RAN.WG2.A1AP [i.4] |  |  |
| A1-ML | WG2 |  | Shell Only - to be pursued in a later release |  |
| A1-EI | WG2 |  | Shell Only - to be pursued in a later release |  |
| O1 | WG10 | O-RAN.WG10.O1  Interface.0 [8] |  |  |
| E1 | WG5 | 3GPP TS 38.460 [i.10] | 3GPP start, including operations list |  |
| E2 | WG3 | O-RAN.WG3.E2GAP [i.5] | Interface with 9 operations |  |
| F1-c | WG5 | 3GPP TS 38.470 [i.11] | 3GPP start, including 24 operations |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| F1-u | WG5 | 3GPP TS 38.470 [i.11] | 3GPP start, including limited operation list |  |
| OpenFrontHaul | WG4 | O-RAN-WG4.MP.0 [i.1] | Shell only |  |
| X2 | WG5 | 3GPP TS 36.423 [i.9] | 3GPP based start, including a large number of operations |  |
| O2 | WG6 |  | Not present in model |  |
| R1 | WG2 |  | Not present in model |  |

</div>

**Table C-1 Classes/components and interfaces that comprise the O-RAN Information Model and Data Model(s)**

# Annex D (informative): Usage of models

## Usage of 3GPP Data Models

The O-RAN Alliance complements the work of other SDOs. 3GPP is the primary source for management plane specifications for O-RAN components.

Please refer to Annex A for the 3GPP-source Data Models that are approved for use.

The following table (snapshot) shows a subset of the 3GPP yang data models to an O-RAN model construct.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **3GPP yang data model** | **3GPP spec for YANG model** | **o-ru**  (O1 in hybrid mode currently not supported) | **o-du** | **o-cu-up** | **o-cu-cp** | **near-rt-ric** |
| \_3gpp-5g- common-yang- types | 3GPP TS 28.541 [i.37] | imported by \_3gpp- common-managed- element (3GPP TS 28.623 [i.8]) | imported by \_3gpp- common-managed- element (3GPP TS 28.623 [i.8]) | imported by  \_3gpp-common- managed-element (3GPP TS 28.623 [i.8]) | imported by  \_3gpp-common- managed- element (3GPP TS 28.623 [i.8]) | imported by  \_3gpp- common- managed- element (3GPP TS 28.623 [i.8]) |
| \_3gpp-common- ep-rp | 3GPP TS 28.623 [i.8] | [open] o-ran-m- int.yang & o-ran-ru- itf.yang defines the interface of O-RU, maybe it is not needed to O-RU | imported by \_3gpp- nr-nrm-ep (3GPP TS 28.541 [i.37])  abstract superclass for all 3GPP endpoints  [open] as O-RU remote PORT, to configure eCPRI port of O-DU just EP\_RP looks **not enough** | imported by  \_3gpp-nr-nrm-ep (3GPP TS 28.541 [i.37])  abstract superclass for all 3GPP endpoints | imported by  \_3gpp-nr-nrm-ep (3GPP TS 28.541 [i.37])  abstract superclass for all 3GPP endpoints | [open] **need discussion**, if RIC modeled as O-RU which need detailed configuration to interfaces, the common part probably from IETF |
| \_3gpp-common- fm | 3GPP TS 28.623 [i.8] | imported by \_3gpp- common-managed- element (3GPP TS 28.623 [i.8])  needed for alarm list handling | imported by \_3gpp- common-managed- element (3GPP TS 28.623 [i.8])  needed for alarm list handling | imported by  \_3gpp-common- managed-element (3GPP TS 28.623 [i.8])  needed for alarm list handling | imported by  \_3gpp-common- managed- element (3GPP TS 28.623 [i.8])  needed for alarm list handling | imported by  \_3gpp- common- managed- element (3GPP TS 28.623 [i.8])  needed for alarm list handling |
| \_3gpp-common- managed- element | 3GPP TS 28.623 [i.8] | root object class | root object class | root object class | root object class | root object class |
| \_3gpp-common- managed- function | 3GPP TS 28.623 [i.8] | needed to extend MF for O-RU functionality | imported by \_3gpp- nr-nrm- gnbdufunction (3GPP TS 28.541 [i.37]) | imported by  \_3gpp-nr-nrm- gnbcuupfunction (3GPP TS 28.541 [i.37]) | imported by  \_3gpp-nr-nrm- gnbcuCPfunction (3GPP TS 28.541 [i.37]) | needed either for a standalone RIC or combined RIC ME |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| \_3gpp-common- measurements | 3GPP TS 28.623 [i.8] | imported by \_3gpp- common-managed- element (3GPP TS 28.623 [i.8])  needed for PM job control and threshold monitoring | imported by \_3gpp- common-managed- element (3GPP TS 28.623 [i.8])  needed for PM job control and threshold monitoring | imported by  \_3gpp-common- managed-element (3GPP TS 28.623 [i.8])  needed for PM job control and threshold monitoring | imported by  \_3gpp-common- managed- element (3GPP TS 28.623 [i.8])  needed for PM job control and threshold monitoring | imported by  \_3gpp- common- managed- element (3GPP TS 28.623 [i.8])  needed for PM job control and threshold monitoring |
| \_3gpp-common- subnetwork | 3GPP TS 28.623 [i.8] | imported by \_3gpp- common- subscription-control (3GPP TS 28.623 [i.8])  not needed from O- RAN point of view but can't be removed with modification of the yang, Contribution to 3GPP required | imported by \_3gpp- common- subscription-control (3GPP TS 28.623 [i.8])  not needed from O- RAN point of view but can't be removed with modification of the yang, Contribution to 3GPP required | imported by  \_3gpp-common- subscription- control (3GPP TS 28.623 [i.8])  not needed from O-RAN point of view but can't be removed with modification of the yang, Contribution to 3GPP required | imported by  \_3gpp-common- subscription- control (3GPP TS 28.623 [i.8])  not needed from O-RAN point of view but can't be removed with modification of the yang, Contribution to 3GPP required | imported by  \_3gpp- common- subscription- control (3GPP TS 28.623 [i.8])  not needed from O-RAN point of view but can't be removed with modification of the yang, Contribution to 3GPP required |
| \_3gpp-common- subscription- control | 3GPP TS 28.623 [i.8] | needed for VES subscription | needed for VES subscription | needed for VES subscription | needed for VES subscription | needed for VES subscription |
| \_3gpp-common- top | 3GPP TS 28.623 [i.8] | imported by \_3gpp- common-managed- element (3GPP TS 28.623 [i.8])  abstract class supplying a naming attribute | imported by \_3gpp- common-managed- element (3GPP TS 28.623 [i.8])  abstract class supplying a naming attribute | imported by  \_3gpp-common- managed-element (3GPP TS 28.623 [i.8])  abstract class supplying a naming attribute | imported by  \_3gpp-common- managed- element (3GPP TS 28.623 [i.8])  abstract class supplying a naming attribute | imported by  \_3gpp- common- managed- element (3GPP TS 28.623 [i.8])  abstract class supplying a naming attribute |
| \_3gpp-common- yang-extensions | 3GPP TS 28.623 [i.8] | expected for inVariant | expected for inVariant | expected for inVariant | expected for inVariant | expected for inVariant |
| \_3gpp-common- yang-types | 3GPP TS 28.623 [i.8] | imported by many other 3GPP yang modules  essential 3GPP typedefs, in particular DistinguishedName, and other useful typedefs like OperationalState, AdministrativeState, AvailabilityStatus | imported by many other 3GPP yang modules  essential 3GPP typedefs, in particular DistinguishedName, and other useful typedefs like OperationalState, AdministrativeState, AvailabilityStatus | imported by many other 3GPP yang modules  essential 3GPP typedefs, in particular DistinguishedNam e, and other useful typedefs like OperationalState, AdministrativeStat e, AvailabilityStatus | imported by many other 3GPP yang modules  essential 3GPP typedefs, in particular DistinguishedNa me, and other useful typedefs like OperationalState, AdministrativeSta te, AvailabilityStatus | imported by many other 3GPP yang modules  essential 3GPP typedefs, in particular DistinguishedN ame, and other useful typedefs like OperationalStat e, AdministrativeS tate, AvailabilityStatu s |

</div>

**Table D.1-1 Mapping of 3GPP yang data models to O-RAN element functions**

## Usage of non-3GPP data models

There are domains of data-models being considered by O-RAN WGs (Working Groups) that are not covered by 3GPP but are covered by other SDOs, e.g., IETF, MEF, IEEE, ONF, BBF, and occasionally imported by 3GPP.

The following table shows data models that are of interest and being considered within O-RAN and/or 3GPP.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Orde r No** | **yang data model** | **Specificati on** | **o-ru (M- Plane)** | **o-du** | **o-cu-up** | **o-cu-cp** | **near-rt-ric** | **Comments** |
| 001 | ietf-yang- types | RFC 6991 [i.18] | import by several models | import by  \_3gpp- common-yang- types.yang (3G PP TS 28.623 [i.8]) | import by  \_3gpp- common-yang- types.yang (3G PP TS 28.623 [i.8]) | import by  \_3gpp- common- yang- types.yang (3GPP TS 28.623 [i.8]) | import by  \_3gpp- common- yang- types.yang (3GPP TS 28.623 [i.8]) |  |
| 002 | ietf-inet- types | RFC 6991 [i.18] | import by several models | import by  \_3gpp- common-yang- types.yang (3G PP TS 28.623 [i.8]) | import by  \_3gpp- common-yang- types.yang (3G PP TS 28.623 [i.8]) | import by  \_3gpp- common- yang- types.yang (3GPP TS 28.623 [i.8]) | import by  \_3gpp- common- yang- types.yang (3GPP TS 28.623 [i.8]) |  |
| 011 | ietf- netconf.yan g | RFC6241 [i.2] | Used | used | used | used | used |  |
| 012 | ietf-netconf- acm.yang | RFC8341 [i.24] | baseline for access control |  |  |  |  | Network Configuration Access Control Model |
| 013 | ietf-netconf- monitoring | RFC6022 [i.14] | used |  |  |  |  | NETCONF  Monitoring Module |
| 014 | ietf-netconf- nmda | RFC8526 [i.31] |  |  |  |  |  | NETCONF  operations to support  the Network Management Datastore Architecture |
| 015 | ietf-netconf- notifications | RFC6470 [i.16] | used | not O1 but OpenFronthaul mPlane, O- RAN- WG4.MP.0 [i.1] |  |  |  | This module defines a YANG data model for use with the NETCONF  protocol that allows the NETCONF client to receive common NETCONF base event notifications |
| 016 | ietf-netconf- partial-lock | RFC5717 [i.13] |  |  |  |  |  |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 017 | ietf-netconf- time | RFC7758 [i.21] |  |  |  |  |  | time-triggered configuration and management operations |
| 018 | ietf-netconf- with- defaults | RFC6243 [i.15] |  |  |  |  |  | NETCONF client to control how default values are handled by the server in particular NETCONF  operations |
| 020 | ietf-system | RFC7317 [i.20] | overlaps with o-ran- operations but may be required to support 802.1X |  |  |  |  | configuration and identification of some common system properties within a device containing a NETCONF  server   * time- zone manag ement * radius * local users * NTP |
| 030 | ietf- hardware | RFC8348 [i.28] | used | not O1 but OpenFronthaul mPlane, O- RAN- WG4.MP.0 [i.1] |  |  |  |  |
| 031 | iana- hardware | RFC8348 [i.28] | import by ietf- hardware | import by ietf- hardware |  |  |  | IANA-defined identities for hardware class. |
| 032 | ietf- hardware- state | RFC8348 [i.28] |  |  |  |  |  | hardware monitoring |
| 033 | ietf- interfaces | RFC8343 [i.26] | foundation for fronthaul |  |  |  |  |  |
| 034 | iana-if-type | RFC7224 [i.19] | used | not O1 but OpenFronthaul mPlane, O- RAN- WG4.MP.0 [i.1] |  |  |  | YANG identities for IANA- registered interface types |
| 040 | ietf-alarms | RFC8632 [i.34] |  |  |  |  |  | This module defines an interface for managing alarms. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
|  | ietf-ip | RFC8344 [i.27] | foundation for fronthaul M- Plane, O- RAN- WG4.MP.0 [i.1] |  |  |  |  | managing IP implementations |
|  | ietf-ptp | RFC8575 [i.33] | considered - but decided o define owno- ran- sync.yang |  |  |  |  | configuration of IEEE Std 1588-  2008 clocks |
|  | ietf-yang- library | RFC8525 [i.30] | foundation for YANG 1.1  (RFC 7950  [5]) |  |  |  |  |  |
|  | ietf-yang- metadata | RFC7952 [i.22] |  |  |  |  |  | This YANG module defines an 'extension' statement that allows  for defining metadata annotations |
|  | ietf-yang- patch | RFC8072 [i.23] |  |  |  |  |  | This module contains conceptual YANG  specifications for the YANG Patch and YANG Patch Status data structures. |
|  | ietf-yang- push | RFC8641 [i.35] |  |  |  |  |  |  |
|  | ietf-yang- schema- mount | RFC8528 [i.32] |  |  |  |  |  | This module defines a YANG extension statement that can be used to incorporate data models defined in other YANG modules in a module. |
|  | ietf-yang- smiv2 | RFC6643 [i.17] |  |  |  |  |  | This module defines YANG extensions that are used to translate  SMIv2 concepts into YANG. |
|  | iana-crypt- hash | RFC7317 [i.20] | used in CTI |  |  |  |  |  |
|  | ietf-crypto- types | draft-ietf- netconf- crypto-types [i.36] | used by fronthaul file management |  |  |  |  |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
|  | ieee802- dot1x | IEEE 802.1X-  2020 [i.12] | being considered by STG |  |  |  |  |  |

</div>

**Table D.2-1 Non 3GPP yang models**

# Annex (informative): Change History

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Date | Revision | Description |
| 2020.11.25 | 01.00 | First draft of O-RAN Information Model and Data Models |
| 2021.11.19 | 02.00 | Extension of YANG style guide with respect to O1 (3GPP) aligned models creation.  Alignment of the document to respect the fact that it is owned by WG10. Addition of a link to WG10 repository  Further editorial fixes. |
| 2022.03.30 | 03.00 | Editorial corrections References updates  Papyrus installation description update Abbreviations update |
| 2022.11.09 | 04.00 | Guidance on how to create IMs provided Introduction of Managed Application IOC IM Removal of Anex ZZZ  Updated copyright statement Updated references |
| 2023.03.27 | 05.00 | Performance Dictionary IM for O2 IMS provided Fault Dictionary IM for O2 IMS provided  Alignment of descriptive text with OAM Architecture Removal of Papyrus installation clause  Cleanup of text |
| 2023.07.17 | 06.00 | References cleanup Clause renumbering Figures renumbering 3GPP references update |
| 2023.10.30 | 07.00 | ETSI PAS Alignment cleanup References Update |
| 2024.07.26 | 09.00 | Terms clause update   * Removal of "Logical Data Model" * Removal of "Component Physical Data Models" * Addition of "Namespace"   Model definitions update in clause 3.1 Namespace definition update  Removing of O1 related NRMs from model Namespaces introduction  Editorial fixes |
| 2024.12.06 | 10.00 | Attributes performanceDictionaryId and alarmDictionaryId added Section 6.2.2 Naming:   * Update naming conventions to recommendations. * Add prefix naming convention that includes the short interface name. Change 3GPP references to Rel 18.   Editorial fixes |

</div>
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG10.TS.Information%20Model%20and%20Data%20Models.0-R004-v10.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG10.TS.Information Model and Data Models.0-R004-v10.00.docx).

---

* toc
{:toc}
