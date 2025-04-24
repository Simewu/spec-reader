## O-RAN.WG10.TS.O1-Interface.0-R004-v15.00.docx

- View in [Reader Mode](https://simewu.com/spec-reader/pages/03-WG10/O-RAN.WG10.TS.O1-Interface.0-R004-v15.00.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG10.TS.O1-Interface.0-R004-v15.00.docx).

---

## ![](../assets/images/4abf28715e20.png)O-RAN.WG10.TS.O1-Interface.0-R004-v15.00

*Technical Specification*

1

## O-RAN Work Group 10 (OAM for O-RAN)

**O-RAN O1 Interface Specification**

Copyright (C) 2025 by the O-RAN ALLIANCE e.V.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany Register of Associations, Bonn VR 11238, VAT ID DE321720189

# Contents

Foreword 4

Modal verbs terminology 4

Introduction 4

1. Scope 4
2. References 5
   1. Normative references 5
   2. Informative references 6
3. Definition of terms, symbols and abbreviations 7
   1. Terms 7
   2. Symbols 7
   3. Abbreviations 7
4. General Requirements 9
   1. Void 9
   2. Transport Layer Security (TLS) 9
   3. HyperText Transfer Protocol (HTTP) 9
   4. Secure Shell (SSH) 9
   5. Least Privilege Access Control 9
   6. Confidentiality, Integrity and Authenticity 9
   7. File Transfer Protocol (SFTP, FTPeS or HTTPS) 9
5. O1 Notifications 9
   1. General 9
   2. O-RAN Defined O1 Notification 11
      1. Requirements 11
      2. stndDefinedNamespace name space for O-RAN 11
6. Management Services 12
   1. Provisioning Management Services 12
      1. Overview 12
      2. General NETCONF Requirements 12
      3. Create Managed Object Instance 13
      4. Modify Managed Object Instance Attributes 14
      5. Delete Managed Object Instance 15
      6. Read Managed Object Instance Attributes 17
      7. Notify Managed Object Instance Changes 18
      8. Subscription Control 19
      9. NETCONF Session Establishment 20
      10. NETCONF Session Termination 21
      11. Lock Data Store 21
      12. Unlock Data Store 22
      13. Commit 23
      14. Notify Event 24
   2. Fault Supervision Management Services 25
      1. Overview 25
      2. Fault Notification 26
      3. Fault Supervision Control 27
      4. Fault History Supervision Control and Reporting 28
   3. Performance Assurance Management Services 28
      1. Overview 28
      2. Performance Data File Reporting 29
      3. Performance Data Streaming 35
      4. Measurement Job Control 38
      5. O-RAN Defined Performance Measurements 38
   4. Trace Management Services 38
      1. Overview 38
      2. Call Trace 39
      3. Minimization of Drive Testing (MDT) 41
      4. Radio Link Failure (RLF) 42
      5. RRC Connection Establishment Failure (RCEF) 42
      6. Trace Control 43
      7. Streaming Trace 43
      8. UE Identifiers for Trace Records 44
   5. File Management Services 45
      1. Overview 45
      2. File Ready Notification 45
      3. List Available Files 46
      4. File Transfer to and from File Management MnS Producer 48
      5. Download File from remote file server 49
      6. Void 51
   6. Heartbeat Management Capability 51
      1. Overview 51
      2. Heartbeat Notification 51
      3. Heartbeat Control 51
   7. PNF Startup and Registration Management Services 52
      1. Overview 52
      2. PNF Plug-n-Connect 52
      3. PNF Registration 52
   8. PNF Software Management Services 56
      1. Overview 56
      2. Software Package Naming and Content 56
      3. Software Inventory 56
      4. Software Download 57
      5. Software Activation Pre-Check 60
      6. Software Activate 61
   9. PNF Reset Management Services 64
      1. Overview 64
      2. PNF Reset Command 64
      3. Notifications 67
   10. Cloudified NF Registration Management Service 67
       1. Overview 67
       2. Cloudified NF Registration Notification 67

Annex A: Void 69

Annex B: (informative) Guidelines and Example for stndDefined VES Events 70

B.1: Guidelines for use of stndDefined VES for sending 3GPP-specified or O-RAN-specified O1

notifications 70

B.2: Example stndDefined VES event for a new alarm notification 71

Annex C: (informative) Streaming Trace Management Activation Example 73

Annex D: (normative) Recommendation for UE Identifier Format in Trace Header 78

Annex (informative): Change History 79

# Foreword

This Technical Specification (TS) has been produced by WG10 of the O-RAN Alliance.

The content of the present document is subject to continuing work within O-RAN and may change following formal O- RAN approval. Should the O-RAN Alliance modify the contents of the present document, it will be re-released by O- RAN with an identifying change of version date and an increase in version number as follows:

version xx.yy.zz where:

xx: the first digit-group is incremented for all changes of substance, i.e. technical enhancements, corrections, updates, etc. (the initial approved document will have xx=01). Always 2 digits with leading zero if needed.

yy: the second digit-group is incremented when editorial only changes have been incorporated in the document.

Always 2 digits with leading zero if needed.

zz: the third digit-group included only in working versions of the document indicating incremental changes during the editing process. External versions never include the third digit-group. Always 2 digits with leading zero if needed.

# Modal verbs terminology

In the present document "**shall**", "**shall not**", "**should**", "**should not**", "**may**", "**need not**", "**will**", "**will not**", "**can**" and "**cannot**" are to be interpreted as described in clause 3.2 of the O-RAN Drafting Rules (Verbal forms for the expression of provisions).

"**must**" and "**must not**" are NOT allowed in O-RAN deliverables except when used in direct citation.

# Introduction

The O-RAN O1 management services follow existing 3GPP standards wherever possible. The focus of the present document is to identify the use cases which conform to existing 3GPP standards, identify gaps in management services for O-RAN and define needed extensions. For identified gaps, the goal is to modify the 3GPP standards to include the needed O-RAN extensions and update the references in the present document as the 3GPP standards evolve to cover the gaps. In cases where the 3GPP standards are not modified, O-RAN extensions are specified in this, and other, O-RAN documents. O-RAN extensions are compatible with 3GPP standards as much as possible to avoid divergence. If extensions and gaps are not specified, it is expected that the management services producers and consumers are conforming to referenced 3GPP specifications.

This O1 Interface Specification specifies the management services (MnS) supported in the O-RAN architecture between O1 compliant Managed Elements (MnS producers) and the SMO (MnS consumer). It defines common MnS descriptions, requirements, procedures, operations, and notifications. O-RAN end-to-end OAM use cases and OAM architectural principles are specified in O-RAN TS O-RAN Operations and Maintenance Architecture [i.13].

# Scope

The present document defines O-RAN OAM interface services and protocols for the O-RAN O1 interface. The present document studies the services conveyed over the interface, including management services, procedures, operations, and corresponding solutions, and identifies existing standards and industry work that can serve as a basis for O-RAN work.

# References

## Normative references

References are either specific (identified by date of publication and/or edition number or version number) or non- specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies. In the case of a reference to a 3GPP document (including a GSM document), a non-specific reference implicitly refers to the latest version of that document in 3GPP Release 18.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following referenced documents are necessary for the application of the present document.

1. 3GPP TS 28.314 Management and orchestration; Plug and Connect; Concepts and requirements
2. 3GPP TS 28.315 Management and orchestration; Plug and Connect; Procedure flows
3. 3GPP TS 28.532: Management and orchestration; Generic management services
4. 3GPP TS 28.537: Management and orchestration; Management capabilities
5. Void
6. 3GPP TS 28.550: Management and orchestration; Performance assurance
7. 3GPP TS 28.622: Telecommunication management; Generic Network Resource Model (NRM) Integration Reference Point (IRP); Information Service (IS)
8. 3GPP TS 32.341: Telecommunication management; File Transfer (FT) Integration Reference Point (IRP); Requirements
9. 3GPP TS 32.342: Telecommunication management; File Transfer (FT) Integration Reference Point (IRP); Information Service (IS)
10. Void
11. 3GPP TS 32.421: Telecommunication management; Subscriber and equipment trace; Trace concepts and requirements
12. 3GPP TS 32.422: Telecommunication management; Subscriber and equipment trace; Trace control and configuration management
13. 3GPP TS 32.423: Telecommunication management; Subscriber and equipment trace; Trace data definition and management
14. 3GPP TS 32.432: Telecommunication management; Performance measurement: File format definition
15. O-RAN TS O-RAN.WG1: O-RAN Architecture Description
16. O-RAN TS O-RAN.WG11.SecProtSpecs: O-RAN Security Protocols Specifications
17. O-RAN TS O-RAN.WG11.SecReqSpecs.0: O-RAN Security Requirements and Controls Specifications
18. ONAP VES Event Listener Specification v7.2.1, January 16, 2021
19. RFC 6022, "YANG Module for NETCONF Monitoring", IETF, October 2010
20. RFC 6241, "Network Configuration Protocol (NETCONF)", IETF, June 2011
21. RFC 7950, "The YANG 1.1 Data Modeling Language", IETF, August 2016
22. RFC 7951, "JSON Encoding of Data Modeled with YANG", IETF, August 2016
23. 3GPP TS 28.623: Telecommunication management; Generic Network Resource Model (NRM)

Integration Reference Point (IRP); Solution Set (SS) definitions

1. RFC 6243, "With-defaults Capability for NETCONF", IETF, June 2011
2. 3GPP TS 28.632: Telecommunication management; Inventory Management (IM) Network Resource Model (NRM) Integration Reference Point (IRP); Information Service (IS)
3. 3GPP TS 28.111: Management and orchestration; Fault Management (FM)

## Informative references

References are either specific (identified by date of publication and/or edition number or version number) or non- specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies. In the case of a reference to a 3GPP document (including a GSM document), a non-specific reference implicitly refers to the latest version of that document in 3GPP Release 18.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following referenced documents are not necessary for the application of the present document, but they assist the user with regard to a particular subject area.

[i.1] 3GPP TR 21.905: Vocabulary for 3GPP Specifications

[i.2] 3GPP TS 28.316 Management and orchestration; Plug and Connect; Data formats [i.3] 3GPP TS 28.531: Management and orchestration; Provisioning

[i.4] 3GPP TS 28.533: Management and orchestration: Architecture framework

[i.5] 3GPP TS 28.552: Management and orchestration; 5G performance measurements [i.6] Void

[i.7] Void

[i.8] 3GPP TS 32.346: Telecommunication management; File Transfer (FT) Integration Reference Point (IRP): Solution Set (SS) definitions

[i.9] 3GPP TS 37.320: Universal Terrestrial Radio Access (UTRA), Evolved Universal Terrestrial Radio Access (E-UTRA) and Next Generation Radio Access; Radio measurement collection for Minimization of Drive Tests (MDT); Overall description; Stage 2

[i.10] Void

[i.11] Void

[i.12] Void

[i.13] O-RAN TS O-RAN.WG10.OAM-Architecture: O-RAN Operations and Maintenance Architecture [i.14] O-RAN TS O-RAN.WG10.Information Model and Data Models.0: O-RAN Information Model

and Data Models Specification

[i.15] 3GPP TS 32.158: Management and orchestration; Design rules for REpresentational State Transfer (REST) Solution Sets (SS)

[i.16] O-RAN TS O-RAN.WG10.O1.NRM: O1 Network Resource Model Specification

[i.17] O-RAN TS O-RAN.WG10.O1.PMeas: O-RAN O1 Performance Measurements Specification [i.18] Void

[i.19] O-RAN TS O-RAN.WG5.O-DU-O1, O1 Interface specification for O-DU

[i.20] O-RAN TS O-RAN.WG5.O-CU-O1, O1 Interface specification for O-CU-UP and O-CU-CP

# Definition of terms, symbols and abbreviations

## Terms

For the purposes of the present document, the terms given in 3GPP TR 21.905 [i.1].

NOTE: A term defined in the present document takes precedence over the definition of the same term, if any, in 3GPP TR 21.905 [i.1].

## Symbols

For the purposes of the present document, the symbols given in 3GPP TR 21.905 [i.1].

NOTE: A symbol defined in the present document takes precedence over the definition of the same symbol, if any, in 3GPP TR 21.905 [i.1].

## Abbreviations

For the purposes of the present document, the abbreviations given in 3GPP TR 21.905 [i.1] and the following apply.

NOTE 1: An abbreviation defined in the present document takes precedence over the definition of the same abbreviation, if any, in 3GPP TR 21.905 [i.1].

3GPP 3rd Generation Partnership Project

ASN.1 Abstract Syntax Notation One

CM Configuration Management

CRUD Create, Read, Update, Delete

FS Fault Supervision

FTPES File Transfer Protocol with Explicit SSL/TLS encryption GPB Google Protocol Buffers

HTTP HyperText Transfer Protocol

HTTPS HTTP Secure

ID IDentifier

IETF Internet Engineering Task Force

IOC Information Object Class

IP Internet Protocol

JSON JavaScript Object Notation

MDT Minimization of Drive Testing

ME Managed Element

MF Managed Function

MnS Management Service

MOC Managed Object Class

MOI Managed Object Instance

Near-RT RIC O-RAN Near Real Time RAN Intelligent Controller NETCONF NETwork CONFiguration protocol

NF Network Function

NGRAN Next Generation Radio Access Network NMS Network Management System

NR New Radio

NRM Network Resource Model

O-CU-CP O-RAN Central Unit - Control Plane. O-CU-UP O-RAN Central Unit - User Plane

O-DU O-RAN Distributed Unit

O-RAN Open Radio Access Network

O-RU O-RAN Radio Unit

ONAP Open Network Automation Platform

PM Performance Management or Performance Measurements PNF Physical Network Function

RAN Radio Access Network

RCEF RRC Connection Establishment Failure

REST REpresentational State Transfer

RFC Request For Comments

RLF Radio Link Failure

RRC Radio Resource Control

SA5 Services & System Aspects Working Group 5 Telecom Management SBMA Services Based Management Architecture

NOTE 2: See 3GPP TS 28.533 [i.4], clause 4.

SDO Standards Defining Organization

SMO Service Management and Orchestration

SFTP SSH File Transfer Protocol

SSH Secure Shell

TLS Transport Layer Security

TR Technical Report

TRS Trace Recording Session

TS Technical Specification

UE User Equipment

URI Uniform Resource Identifier

VES VNF Event Stream

VNF Virtualized Network Function

XML eXtensible Markup Language

# General Requirements

## Void

## Transport Layer Security (TLS)

TLS requirements specified in O-RAN Security Protocol Specifications [16] clauses 4.2, 4.3 and 4.4 shall apply.

## HyperText Transfer Protocol (HTTP)

REQ-HTP-FUN-1: Management Service producers and consumers that use HTTP shall support HTTP v1.1 or higher. REQ-HTP-FUN-2: Management Service producers and consumers that use HTTP should support HTTP v2.0.

## Secure Shell (SSH)

SSH requirements specified in O-RAN Security Protocol Specifications [16] clause 4.1 shall apply.

## Least Privilege Access Control

Least privilege access control requirements specified in O-RAN Security Requirements and Controls Specifications

[17] clause 5.2.2 shall apply.

## Confidentiality, Integrity and Authenticity

Confidentiality, integrity and authenticity requirements specified in O-RAN Security Requirements and Controls Specifications [17] clause 5.2.2 shall apply.

## File Transfer Protocol (SFTP, FTPeS or HTTPS)

File Transfer shall be performed using a secure file transfer protocol from or to the File Management MnS Producer (SFTP, FTPeS or HTTPs) as defined in clause 7.1.3 of 3GPP TS 28.537 [4].

Secure File Transfer Protocols specified in O-RAN Security Protocol Specifications [16] clause 6 shall apply.

# O1 Notifications

## General

An O1 notification is a JSON encoded asynchronous notification sent from a MnS producer to a MnS consumer over the O1 interface using REST/HTTPS.

An O1 notification shall be in one of the following formats:

* SDO O1 format;
* VES O1 format.

An SDO O1 format notification is an O1 notification formatted as specified by a Standards Defining Organization (SDO). Currently, O1 supports SDO O1 format notifications that are either 3GPP-specified or O-RAN-specified. SDO O1 format notifications are formatted as specified by the SDO and sent without a VES header.

3GPP-specified O1 notifications are specified in 3GPP TS 28.532 [3] clauses 11 and 12, and in 3GPP TS 28.111 [26] clause 8.

O-RAN-specified O1 notifications are specified in the O-RAN O1 Network Resource Model Specification [i.16].

O-RAN-specified O1 notifications should follow 3GPP naming and format where possible to reduce the number of variants that need to be supported. Specifically, O-RAN-specified O1 notifications should:

* be named "o1NotifyXxx";
* include the common 3GPP notification fields objectClass, objectInstance, notificationId, notificationType, eventTime and systemDN;
* include an additionalText and/or additionalInformation field when appropriate.

A VES O1 format notification is an O1 notification formatted as specified by VES Event Listener Specification [18], consisting of a common event header and domain-specific event fields. VES O1 format notifications are categorized into 2 types, based on domain:

* Harmonized VES;
* Legacy VES.

Harmonized VES refers to the stndDefined VES event specified in VES Event Listener Specification [18] that allows a VES event to carry, as its payload, a notification specified by an SDO. In the case of O-RAN O1 Interface Specification, a harmonized stndDefined VES event carries either a 3GPP-specified O1 notification or an O-RAN specified O1 notification as its payload.

Legacy VES refers to any VES event specified in the VES Event Listener Specification [18], except for stndDefined. Legacy VES events are fully defined in [18] and do not rely on an SDO to specify the content of the payload. The Legacy VES events supported by O1 Interface Specification is PNF Registration.

Legacy VES events are supported for backward compatibility. However, harmonized VES events are preferred. Use of harmonized VES events results in less notification variants for the producers and the consumers because a harmonized VES O1 format notification is effectively an SDO O1 format notification wrapped in a VES common event header.

Two attributes are used to communicate the notification format between MnS producer and MnS consumer:

* o1NotifyFormatCapabilities indicates whether the MnS producer supports the capability to send notifications in SDO O1 format, VES O1 format or both. This attribute is set by the MnS producer at the Managed Element level, meaning the capability is for all O1 notifications sent by that MnS producer. It is not per notification type. This attribute is read-only for the MnS consumer.
* o1NotifyFormatConfig indicates whether the MnS consumer wants to receive notifications in SDO O1 format or VES O1 format. This attribute is optional to be supported by MnS producer. This attribute is configured by the MnS consumer at the Managed Element level, meaning the configuration is for all O1 notifications sent by that MnS producer. It is not per notification type. If the MnS producer supports both formats, the MnS producer sets the value for this attribute to the default value of VES O1 format when the MOI is created and the MnS consumer is permitted to change the value to SDO O1 format if desired. Otherwise, if the MnS producer only supports one notification format, this attribute is absent.

Configuration attributes are specified in the O-RAN O1 Network Resource Model Specification [i.16].

It is not necessary to have an attribute to indicate whether harmonized VES or legacy VES is sent for VES format because the domain of the event is provided in the VES common event header and the schema of the event is provided by the Network Function at onboarding time.

## O-RAN Defined O1 Notification

### Requirements

REQ-ON-FUN-1: O-RAN defined O1 PNF and VNF registration notification shall be JSON encoded for sending via REST/HTTPS.

REQ-ON-FUN-2: Schema for O-RAN defined O1 notification shall be specified using OpenAPI.

REQ-ON-FUN-3: If VES O1 format is configured to be used, O-RAN defined O1 notification shall be presented in harmonized VES format and schemaReference shall refer to O-RAN defined schema in O-RAN public repository when it is available.

NOTE 1: O-RAN public repository is not created yet.

NOTE 2: Before the schema for the O-RAN defined notification is available in the O-RAN public repository, the schemaReference in the VES O1 format for O-RAN defined O1 notification does not need to be a path to the public repository.

### stndDefinedNamespace name space for O-RAN

O-RAN defines following name space for VES O1 format-harmonized VES format: OR-PnfRegistration

For O-RAN defined performance measurements, the short form of measurement name has prefix "OR.". The source of the definition is clear, so there is no need to have a separate O-RAN name space for performance measurement.

O-RAN defined performance measurements should use 3GPP-PerformanceMeasurement name space and refer to 3GPP schema.

# Management Services

## Provisioning Management Services

### Overview

Provisioning management services allow a Provisioning MnS Consumer to configure attributes of managed objects on the Provisioning MnS Producer that modify the Provisioning MnS Producer's capabilities in its role in end-to-end network services and allows a Provisioning MnS Producer to report configuration changes to the Provisioning MnS Consumer. NETCONF is used for the Provisioning Management Services to Create Managed Object Instance, Delete Managed Object Instance, Modify Managed Object Instance Attributes and Read Managed Object Instance Attributes. A RESTful/HTTP notification with data modelled using YANG is used to notify the Provisioning MnS subscribed Consumers when a configuration change occurs.

Stage 1 Provisioning management services are specified in 3GPP TS 28.531 [i.3] clause 6.3.

Stage 2 Provisioning operations and notifications are specified in 3GPP TS 28.532 [3] clause 11.1.1.

Stage 3 Provisioning operations for YANG/NETCONF solution set are specified in 3GPP TS 28.532 [3] clause 12.1.3.

Stage 3 Provisioning notifications for "YANG/NETCONF-based- solution set" with data modelled using YANG in a RESTful notification is specified in 3GPP TS 28.532 [3] clause 12.1.3.

For the VES header support, refer to 3GPP TS 28.532 [3] clause 12.1.2. The media type of the notification, as specified by the "Content-Type" header in the HTTP POST request, shall be "application/json".

NOTE: In the payload, the data is encoded according to 3GPP TS 28.532 [3] clause 12.1.3.2.5 (except for the content type in the header). Consumption of the payload is implementation dependent.

IETF reference documents for NETCONF and YANG include RFC 6241 [20] and RFC 7950 [21].

### General NETCONF Requirements

REQ-GNC-FUN-1: The provisioning management service producer and consumer shall support the following NETCONF operations as specified in RFC 6241 [20]:

* get
* get-config
* edit-config
* lock
* unlock
* close-session
* kill-session

Other operations are optional.

REQ-GNC-FUN-2: The provisioning management service producer and consumer shall support the following NETCONF capabilities as specified in RFC 6241 [20]:

* writable-running
* rollback-on-error
* validate
* xpath

Other capabilities defined in RFC 6241 [20] are optional.

REQ-GNC-FUN-3: The provisioning management service producer and consumer shall support a running datastore for NETCONF. Support for a candidate datastore is optional.

REQ-GNC-FUN-4: The provisioning management service producer and consumer shall support YANG1.1, defined in RFC 7950 [21], including coexistence with YANG Version 1 as specified therein.

REQ-GNC-FUN-5: The provisioning management service producer shall have the capability to establish a NETCONF session with its authorized consumer upon request from the consumer.

REQ-GNC-FUN-6: The provisioning management service producer shall support an established NETCONF session until the authorized consumer terminates the session.

NOTE: The consumer may want to perform multiple provisioning management services operations during a single NETCONF Session.

REQ-GNC-FUN-7: The provisioning management service producer shall have the capability to terminate a NETCONF session with its authorized consumer when requested to do so by the authorized consumer.

REQ-GNC-FUN-8: The provisioning management service producer shall have the capability to make provisioning operation results persistent over a reset.

REQ-GNC-FUN-9: The provisioning management service producer and consumer shall support NETCONF over SSH or NETCONF over TLS.

REQ-GNC-FUN-10: The provisioning management service producer shall support /netconf-state/schemas subtree and

<get-schema> RPC defined in RFC 6022 [19] for all supported YANG modules.

REQ-GNC-FUN-11: The provisioning management service producer shall support RFC 6243 [24] "With-defaults capability for NETCONF" as defined by 3GPP TS 28.532 [3], clause 12.1.3.3.2.

### Create Managed Object Instance

#### Description

Provisioning MnS Consumer sends a synchronous provisioning update request to the Provisioning MnS Producer to create a Managed Object Instance (MOI) on the Provisioning MnS Producer and set its attribute values.

#### Requirements

The mapping of operations specified in 3GPP TS 28.532 [3] clauses 12.1.3.1.1 and 12.1.3.1.2 shall apply.

#### Procedures

The procedure in the present clause is an example adding to the reader's understanding of the interactions for the corresponding Management Service, aiming to help with the implementation of the O1 Interface specification. It outlines a possible flow and does not introduce new conformance requirements.

@startuml skin rose

Title Create MOI autonumber "[0]"

participant "Provisioning MnS Consumer" as NMS participant "Provisioning MnS Producer" as ME NMS -> ME: NETCONF edit-config create

Note over ME : Create MOI

ME --> NMS: NETCONF rpc-reply <OK> or <rpc-error> @enduml

![Generated by PlantUML](../assets/images/cb1cad366cf5.png)

###### Figure 6.1.2.3-1 Create MOI

Pre-Conditions:

* NETCONF session has been established with Provisioning MnS Producer. NETCONF session has authorized privileges into the identified section of the data store.
* Optionally, target data store has been locked.

Procedure:

* + - * 1. Provisioning MnS Consumer sends NETCONF edit-config create operation to Provisioning MnS Producer:

Provisioning MnS Producer creates the MOI(s) in the target data store as described in the edit-config operation.

* + - * 1. Provisioning MnS Producer returns NETCONF response.

### Modify Managed Object Instance Attributes

#### Description

Provisioning MnS Consumer sends synchronous provisioning updates to the Provisioning MnS Producer to modify the attributes of a MOI on the Provisioning MnS Producer.

#### Requirements

The mapping of operations specified in 3GPP TS 28.532 [3] clauses 12.1.3.1.1 and 12.1.3.1.4 shall apply.

#### Procedures

The procedure in the present clause is an example adding to the reader's understanding of the interactions for the corresponding Management Service, aiming to help with the implementation of the O1 Interface specification. It outlines a possible flow and does not introduce new conformance requirements.

@startuml skin rose

Title Modify MOI Attributes autonumber "[0]"

participant "Provisioning MnS Consumer" as NMS

participant "Provisioning MnS Producer" as ME

NMS -> ME: NETCONF edit-config create, replace or delete Note over ME : Modify MOI

ME --> NMS: NETCONF rpc-reply <OK> or <rpc-error> @enduml

![Generated by PlantUML](../assets/images/fd11e6b0366e.png)

###### Figure 6.1.3.3-1 Modify MOI Attributes

Pre-Conditions:

* NETCONF session has been established with Provisioning MnS Producer. NETCONF session has authorized privileges into the identified section of the data store.
* Optionally, target data store has been locked.

Procedure:

* + - * 1. Provisioning MnS Consumer sends NETCONF edit-config create, replace, or delete operation to Provisioning MnS Producer:

Provisioning MnS Producer modifies the MOI(s) in the target data store as described in the edit-config operation.

* + - * 1. Provisioning MnS Producer returns NETCONF response.

### Delete Managed Object Instance

#### Description

Provisioning MnS Consumer sends synchronous provisioning updates to the Provisioning MnS Producer to delete a MOI and its children on the Provisioning MnS Producer.

#### Requirements

The mapping of operations specified in 3GPP TS 28.532 [3] clauses 12.1.3.1.1 and 12.1.3.1.5 shall apply.

#### Procedures

The procedure in the present clause is an example adding to the reader's understanding of the interactions for the corresponding Management Service, aiming to help with the implementation of the O1 Interface specification. It outlines a possible flow and does not introduce new conformance requirements.

@startuml skin rose

Title Delete MOI autonumber "[0]"

participant "Provisioning MnS Consumer" as NMS participant "Provisioning MnS Producer" as ME NMS -> ME: NETCONF edit-config delete or remove Note over ME : Delete MOI

ME --> NMS: NETCONF rpc-reply <OK> or <rpc-error> @enduml

![Generated by PlantUML](../assets/images/7c2f0d353622.png)

###### Figure 6.1.4.3-1 Delete MOI

Pre-Conditions:

* NETCONF session has been established with Provisioning MnS Producer. NETCONF session has authorized privileges into the identified section of the data store.
* Optionally, target data store has been locked.

Procedure:

* + - * 1. Provisioning MnS Consumer sends NETCONF edit-config delete or remove operation to Provisioning MnS Producer:

Provisioning MnS Producer deletes the MOI(s) in the target data store as described in the edit-config operation.

* + - * 1. Provisioning MnS Producer returns NETCONF response.

### Read Managed Object Instance Attributes

#### Description

Provisioning MnS Consumer sends synchronous provisioning request to the Provisioning MnS Producer to return the values of attributes of its MOI(s) on the Provisioning MnS Producer.

#### Requirements

The mapping of operations specified in 3GPP TS 28.532 [3] clauses 12.1.3.1.1 and 12.1.3.1.3 shall apply.

#### Procedures

The procedure in the present clause is an example adding to the reader's understanding of the interactions for the corresponding Management Service, aiming to help with the implementation of the O1 Interface specification. It outlines a possible flow and does not introduce new conformance requirements.

@startuml skin rose

Title Read MOI Attributes autonumber "[0]"

participant "Provisioning MnS Consumer" as NMS participant "Provisioning MnS Producer" as ME NMS -> ME : NETCONF get or get-config

Note over ME : Retrieve config

ME --> NMS: NETCONF rpc-reply <data> @enduml

![Generated by PlantUML](../assets/images/0476eefe79a2.png)

###### Figure 6.1.5.3-1 Read MOI Attributes

Pre-Conditions:

- NETCONF session has been established with Provisioning MnS Producer. NETCONF session has authorized privileges into the identified section of the data store.

Procedure:

* + - * 1. Provisioning MnS Consumer sends NETCONF get or get-config operation to Provisioning MnS Producer:

Provisioning MnS Producer retrieves the MOI(s) and its attributes from the target data store as described in the get or get-config operation.

* + - * 1. Provisioning MnS Producer returns the data in the NETCONF response.

### Notify Managed Object Instance Changes

#### Description

Provisioning MnS Producer sends an asynchronous notifyMOIChanges Notification to the Provisioning MnS Consumer to report configuration changes to one or more MOIs on the Provisioning MnS Producer. Refer to 3GPP TS 28.532 [3] clause 12.1.3.2.5 for details.

#### Requirements

The mapping of notifications specified in 3GPP TS 28.532 [3] clause 11.1.1.11 shall apply.

#### Procedures

The procedure in the present clause is an example adding to the reader's understanding of the interactions for the corresponding Management Service, aiming to help with the implementation of the O1 Interface specification. It outlines a possible flow and does not introduce new conformance requirements.

@startuml skin rose

Title Notify Managed Object Instance Changes Autonumber

participant "Provisioning MnS Consumer" as NMS participant "Provisioning MnS Producer" as ME Note over ME : One or more config changes occur

ME ->> NMS : <<HTTP/TLS>> notifyMOIChanges Notification Note over NMS : Reconcile Database

@enduml

![Generated by PlantUML](../assets/images/10f71938e13e.png)

###### Figure 6.1.6.3-1 Notify Managed Object Instance Changes

Pre-conditions:

* One or more MOIs are created, deleted or modified in the running data store of the Provisioning MnS Producer.
* Provisioning MnS Consumer has subscribed for notifyMOIChanges notifications.

Procedure:

* + - * 1. Provisioning MnS Producer sends notifyMOIChanges notification to the Provisioning MnS Consumer over HTTP/TLS. Mutual certificate authentication is performed.

Post-condition:

- Provisioning MnS Consumer reconciles its copy of the Provisioning MnS Producer configuration database with the change.

#### Operations and Notifications

Refer to clause 5.1 for details on O1 notification formats, including SDO O1 format and VES O1 format notifications, categorized as Harmonized VES.

The O1-supported 3GPP-specified CM notification is:

- notifyMOIChanges

A single notifyMOIChanges notification can report one or more MOI creations, MOI deletions and/or MOI attribute value changes in one notification.

The attribute name value pairs in the CM notifications are provided using YANG 1.1 encoded in JSON format as specified in RFC 7951 [22].

### Subscription Control

#### Description

Subscription Control allows a MnS Consumer to subscribe to notifications emitted by a MnS Producer.

Starting with 3GPP Release 16, dedicated operations for Management Services Use Cases are supported by IOCs with attributes that can be read and/or set using generic provisioning mechanisms. For Subscription Control, the Subscribe and Unsubscribe operations are replaced with a NtfSubscriptionControl IOC as specified in 3GPP TS 28.622 [7] clause

4.3.22. NtfSubscriptionControl IOC contains attributes that allow a MnS Consumer to set the recipient address for the notifications and identify the scope of notifications desired. Optionally, the types of notifications desired, and notification filtering may also be provided. If filtering of the notifications is supported, only those notifications that match the specified value would be sent. For example, notifyNewAlarm notifications can be filtered to send only those with severity set to major or critical*.*

#### Requirements

NtfSubscriptionControl IOC definition shall be as specified in 3GPP TS 28.622 [7] clause 4.3.22 with attribute definitions specified in 3GPP TS 28.622 [7] clause 4.4.1.

YANG models for NtfSubscriptionControl shall be as specified in 3GPP TS 28.623 [23] clauses 4.4 and E.2.

#### Procedures

NtfSubscriptionControl MOIs can be created and deleted by the system or pre-installed. Optionally, the NtfSubscriptionControl MOIs can be created and deleted, and attributes modified using NETCONF/YANG by the management service consumer following the procedures described in this Provisioning MnS clause.

#### Operations and Notifications

NtfSubscriptionControl IOC can be used to subscribe to notifications. In addition, HeartbeatControl IOC specified in 3GPP TS 28.622 [7] clause 4.3.21 can be used to subscribe to heartbeat notifications as specified in 3GPP TS 28.622

[7] Figure 4.2.1-5; i.e., by creating the HeartbeatControl MOI as a child of the NtfSubscriptionControl MOI.

### NETCONF Session Establishment

#### Description

Provisioning MnS Consumer uses the NETCONF Session Establishment procedure to establish a NETCONF session on the Provisioning MnS Producer.

#### Requirements

Requirements for NETCONF session establishment specified in RFC 6241[20] shall apply.

#### Procedures

The procedure in the present clause is an example adding to the reader's understanding of the interactions for the corresponding Management Service, aiming to help with the implementation of the O1 Interface specification. It outlines a possible flow and does not introduce new conformance requirements.

@startuml skin rose

Title NETCONF Session Establishment autonumber "[0]"

participant "Provisioning MnS Consumer" as SMO participant "Provisioning MnS Producer" as ME SMO <-> ME : SSH or TLS session establishment SMO -> ME : NETCONF Hello

ME --> SMO : NETCONF Hello <sessionId> <capabilitiesList> @enduml

![Generated by PlantUML](../assets/images/0dd2db72125d.png)

**Figure 6.1.8.3-1 NETCONF Session Establishment**

### NETCONF Session Termination

#### Description

Provisioning MnS Consumer uses the NETCONF Session Termination procedure to gracefully terminate a NETCONF session on a Provisioning MnS Producer.

#### Requirements

NETCONF session termination shall be as specified in RFC 6241[20] Section 7.8.

#### Procedures

The procedure in the present clause is an example adding to the reader's understanding of the interactions for the corresponding Management Service, aiming to help with the implementation of the O1 Interface specification. It outlines a possible flow and does not introduce new conformance requirements.

@startuml skin rose

Title NETCONF Session Termination autonumber "[0]"

participant "Provisioning MnS Consumer" as SMO participant "Provisioning MnS Producer" as ME SMO -> ME : NETCONF close-session

ME --> SMO : NETCONF rpc-reply <OK>

@enduml

![Generated by PlantUML](../assets/images/574ab57a8785.png)

**Figure 6.1.9.3-1 NETCONF Session Termination**

### Lock Data Store

#### Description

Provisioning MnS Consumer uses the Lock Data Store procedure to lock a target data store on a Provisioning MnS Producer. This procedure is optional, but recommended, to prevent unpredictable behavior during configuration changes.

#### Requirements

NETCONF lock data store should be as specified in RFC 6241 [20] Section 7.5.

#### Procedures

The procedure in the present clause is an example adding to the reader's understanding of the interactions for the corresponding Management Service, aiming to help with the implementation of the O1 Interface specification. It outlines a possible flow and does not introduce new conformance requirements.

@startuml skin rose

Title Lock Data Store autonumber "[0]"

participant "Provisioning MnS Consumer" as SMO participant "Provisioning MnS Producer" as ME SMO -> ME : NETCONF lock <targetDS>

Note over ME : Lock target DS

ME --> SMO : NETCONF rpc-reply <OK>

@enduml

![Generated by PlantUML](../assets/images/1e2e7bcc7c28.png)

**Figure 6.1.10.3-1 Lock Data Store**

### Unlock Data Store

#### Description

Provisioning MnS Consumer uses the Unlock Data Store procedure to unlock a target data store on a Provisioning MnS Producer.

#### Requirements

NETCONF unlock data store should be as specified in RFC 6241 [20] Section 7.6.

#### Procedures

The procedure in the present clause is an example adding to the reader's understanding of the interactions for the corresponding Management Service, aiming to help with the implementation of the O1 Interface specification. It outlines a possible flow and does not introduce new conformance requirements.

@startuml skin rose

Title Unlock Data Store

autonumber "[0]"

participant "Provisioning MnS Consumer" as SMO participant "Provisioning MnS Producer" as ME SMO -> ME : NETCONF unlock <target DS>

Note over ME : Unlock target DS

ME --> SMO : NETCONF rpc-reply <OK>

@enduml

![Generated by PlantUML](../assets/images/b3399a9736b1.png)

**Figure 6.1.11.3-1 Unlock Data Store**

### Commit

#### Description

Provisioning MnS Consumer uses the Commit procedure to commit a configuration change to the running data store of the Provisioning MnS Producer. This is necessary to make the configuration change effective if it was made in the candidate data store. If the configuration change was made in the running data store, the commit procedure is not used.

#### Requirements

Requirements for NETCONF commit specified in RFC 6241 [20] Section 8.4 shall apply.

#### Procedures

The procedure in the present clause is an example adding to the reader's understanding of the interactions for the corresponding Management Service, aiming to help with the implementation of the O1 Interface specification. It outlines a possible flow and does not introduce new conformance requirements.

@startuml skin rose Title Commit

autonumber "[0]"

participant "Provisioning MnS Consumer" as SMO participant "Provisioning MnS Producer" as ME SMO -> ME : NETCONF commit

Note over ME : Commit change to running DS ME --> SMO: NETCONF rpc-reply <OK>

@enduml

![Generated by PlantUML](../assets/images/820ce44707ce.png)

**Figure 6.1.12.3-1 Commit**

### Notify Event

#### Description

Provisioning MnS Producer sends an asynchronous notifyEvent Notification to the Provisioning MnS Consumer to report a network event has occurred with potential service impacts. Please, refer to 3GPP TS 28.532 [3] clause

11.1.1.10 for details.

#### Requirements

The mapping of notifications specified in 3GPP TS 28.532 [3] clause 11.1.1.10 and the NETCONF/YANG solution set specified in 3GPP TS 28.532 [3] clause 12.1.3.2.6 shall apply.

#### Procedures

The procedure in the present clause is an example adding to the reader's understanding of the interactions for the corresponding Management Service, aiming to help with the implementation of the O1 Interface specification. It outlines a possible flow and does not introduce new conformance requirements.

@startuml skin rose

Title Notify Event Autonumber

participant "Provisioning MnS Consumer" as NMS

participant "Provisioning MnS Producer" as ME

Note over ME : A notification subscription including NotifyEvent has been created Note over ME : One or more network events have occured with potential service impact ME ->> NMS : <<HTTP/TLS>> notifyEvent Notification

@enduml

![Generated by PlantUML](../assets/images/5f40d04dd210.png)

###### Figure 6.1.13.3-1 Notify Event

Pre-conditions:

* A notification subscription including NotifyEvent has been explicitly or implicitly created specifying the Provisioning Mns Consumer as the notification recipient.
* One or more network events have occurred with potential service impact Procedure:
  + - * 1. Provisioning MnS Producer sends notifyEvent notification to the Provisioning MnS Consumer over HTTP/TLS. Mutual certificate authentication is performed.

Post-condition:

- Provisioning MnS Consumer has received a notifyEvent notification

#### Operations and Notifications

Refer to clause 5.1 for details on O1 notification formats, including SDO O1 format and VES O1 format notifications, categorized as Harmonized VES.

The O1-supported 3GPP-specified CM notification is:

- notifyEvent

## Fault Supervision Management Services

### Overview

Fault supervision management services allow a Fault Supervision MnS Producer to report errors and events to a Fault Supervision MnS Consumer and allows a Fault Supervision MnS Consumer to perform fault supervision operations on the Fault Supervision MnS Producer, such as get alarm list. The Fault supervision management services include the optional capability of Fault History Supervision Control and Reporting.

Stage 1 Fault Supervision MnS is specified in 3GPP TS 28.111 [26].

Stage 2 Fault Supervision notifications are specified in 3GPP TS 28.111 [26] clause 8.

Stage 2 AlarmList IOC and AlarmRecord data type are specified in 3GPP TS 28.111 [26] clauses 7.3.2 and 7.3.1. Stage 3 Solution Set for NETCONF/YANG is specified in 3GPP TS 28.111 [26] annex A.3.

### Fault Notification

#### Description

Fault Supervision MnS Producer sends asynchronous Fault notification event to Fault Supervision MnS Consumer when an alarm occurs, is cleared, or changes severity.

#### Requirements

The following fault supervision data report service requirements specified in 3GPP TS 28.111 [26] clause 5 shall apply:

* REQ-FM-MC-1 for sending alarm notifications
* REQ-FM-MC-2 for alarm notification subscription
* REQ-FM-MC-3 for alarm notification unsubscription
* REQ-FM-MC-5 for reading the alarm list
* REQ-FM-MC-6 for reading the alarm list with a filter
* REQ-FM-MC-7 for sending changed alarm notifications
* REQ-FM-MC-8 for sending cleared alarm notifications
* REQ-FM-MC-9 for sending new alarm notifications
* REQ-FM-MC-11 for sending alarm list rebuilt notification

The following requirement from 3GPP TS 28.111 [26] clause 5 may apply:

* REQ-FM-MC-4 for filtering the alarm notifications that are reported NOTE: Filtering is best done at the SMO level.

#### Procedures

Procedures for subscription and notifications are described in 3GPP TS 28.622 [7] clause 4.3.22 and 3GPP TS 28.111

[26] clause 6.12.

#### Operations and Notifications

Refer to clause 5.1 for details on O1 notification formats, including SDO O1 format and VES O1 format notifications, categorized as Harmonized VES.

The Fault Supervision MnS Producer shall support the following 3GPP-specified Fault Supervision notifications are:

* notifyNewAlarm
* notifyChangedAlarmGeneral
* notifyClearedAlarm
* notifyAlarmListRebuilt

NotifyChangedAlarmGeneral permits the producer to report the severity change and any other attribute changes associated with this alarm in a single notification. The other 3GPP Fault Supervision notifications specified in 3GPP TS 28.111 [26] are optional.

The Fault Supervision MnS Producer should support the following 3GPP-specified Fault Supervision notifications:

- notifyAckStateChanged

If the NF supports alarm acknowledgement, it should have the capability to provide NotifyAckStateChanged.

### Fault Supervision Control

#### Description

Starting with 3GPP Release 16, dedicated operations for Management Services Use Cases are supported by IOCs with attributes that can be read and/or set using generic provisioning mechanisms. For Fault Supervision, an AlarmList IOC is specified in 3GPP TS 28.111 [26] clause 7.3.2 that represents the capability to store and manage alarm records. There is one AlarmList per Fault Supervision MnS Producer, created by the Producer. The AlarmList contains one AlarmRecord for each active alarm. The AlarmRecords in the AlarmList can be read by the Fault Supervision MnS Consumer, with an optional filter to retrieve selected AlarmRecords based on the value of attributes in the AlarmRecord. For example, Fault Supervision MnS Consumer is able to retrieve only those AlarmRecords with perceivedSeverity = CRITICAL.

#### Requirements

The following fault supervision data control service requirements from 3GPP TS 28.111 [26] clause 5 may apply to the Fault Supervision MnS Producer:

* REQ-FM-MC-12 to support alarm acknowledgement.

NOTE 1: There is no Use Case that requires a NF to acknowledge an alarm. This operation is best done at the SMO level.

* NF that does not support the alarm acknowledgement from the MnS Consumer shall consider cleared alarms as automatically acknowledged so that they may be removed from the AlarmList.
* REQ-FM-MC-13 to support manual alarm clearing.

NOTE 2: Manual clearing of alarms is only for ADMC (Automatically Detected, Manually Cleared) alarms.

* NF that supports ADMC alarms should support the manual alarm clearing operation.
* REQ-FM-MC-14 to support acknowledgement state change notifications.

NOTE 3: There is no Use Case that requires a NF to acknowledge an alarm. This operation is best done at the SMO level.

* NF that supports the alarm acknowledgement should support the acknowledgement state change notifications.

AlarmList IOC definition shall be as specified in 3GPP TS 28.111 [26] clause 7.3.2 with attribute definitions in specified in 3GPP TS 28.111 [26] clause 7.4.1.

YANG solution set for AlarmList IOC shall be as specified in 3GPP TS 28.111 [26] clause A.3.

#### Procedures

NETCONF protocol and YANG data models are used to get and set the attributes of the AlarmRecords in the AlarmList.

Refer to clause 6.1 for procedures to read MOI attributes and modify MOI attributes using NETCONF.

* + - 1. Void

### Fault History Supervision Control and Reporting

#### Description

The Fault History Supervision Control and Reporting allows a Fault Supervision MnS Producer to report to a Fault Supervision MnS Consumer relevant information about raised, changed, or cleared alarms in the past. Generalizing, it allows to report information about alarms updates.

When an alarm is raised, the Fault Supervision MnS Producer stores the relevant initial data of a new alarm, according to the information exposed by the notifyNewAlarm notification.

When an alarm is modified or cleared, the Fault Supervision MnS Producer stores the relevant data of the alarm change, according to the information exposed by the notifyChangeAlarm/notifyChangedAlarmGeneral, or notifyClearedAlarm.

When an alarm list is locked or disabled, alarm records are not reliable, as consequences also the capability of the Fault Supervision MnS Producer to store alarm changes is not reliable.

#### Requirements

The following requirements shall apply:

* REQ-FSHQ\_MC-1 The Fault Supervision MnS Producer shall have the capability to store the relevant data of alarms updates if the Fault History Supervision Control and Reporting capability is provided.
* REQ-FSHQ\_MC-2 The Fault Supervision MnS Producer shall have the capability to store the alarm updates even when the ability to send alarm notifications to subscribed consumer(s) is not available (e.g. during a disturbance), if Fault History Supervision Control and Reporting capability is provided.
* REQ-FSHQ\_MC-3 The Fault Supervision MnS Producer shall allow authorized consumers to retrieve the stored alarm updates if Fault History Supervision Control and Reporting capability is provided.

NOTE: The Fault Supervision MnS Producer allows authorized consumers to retrieve alarm updates for a specific time window. The time window may include present time.

* REQ-FSHQ\_MC-4 The Fault Supervision MnS Producer shall have the capability to store the notifyAlarmListRebuilt notification if Fault History Supervision Control and Reporting capability is provided. In case, it may also have the capability to store the notifyPotentialFaultyAlarmList notification.
* REQ-FSHQ\_MC-5 The Fault Supervision MnS Producer should have the capability to report the perceivedSeverity at the time of the alarm creation, if Fault History Supervision Control and Reporting capability is provided.

## Performance Assurance Management Services

### Overview

Performance Assurance Management Services allow a Performance Assurance MnS Producer to report file-based (bulk) and/or streaming (real time) performance data to a Performance Assurance MnS Consumer and allows a Performance Assurance MnS Consumer to perform performance assurance operations on the Performance Assurance MnS Producer, such as selecting the measurements to be reported and setting the frequency of reporting.

Use cases for PM services are specified in 3GPP TS 28.550 [6] clause 5.1.

Stage 2 notifyFileReady and notifyFilePreparationError notifications are specified in 3GPP TS 28.532 [3]. Stage 2 PerfMetricJob IOC is specified in 3GPP TS 28.622 [7] clause 4.3.31.

Stage 3 Solution Sets for XML, JSON and YANG are specified in 3GPP TS 28.623 [23].

Stage 2 and 3 for streaming data reporting service are specified in 3GPP TS 28.532 [3].

3GPP defined 5G performance measurements are specified in 3GPP TS 28.552 [i.5]. In addition to the 3GPP-defined measurements, it is possible to have O-RAN defined measurements and vendor supplied measurements. Clause 6.3.4 provides requirements for O-RAN defined measurements. O-RAN defined measurements are named with an "OR." prefix. Vendor supplied measurements are named with a "VS." prefix.

### Performance Data File Reporting

#### Description

A Performance Assurance MnS Producer that provides file-based (bulk) performance data reporting shall support the PM data pull-based file reporting method and/or the PM data push-based file reporting method.

In the pull-based file reporting method for PM data file reporting, the Performance Assurance MnS Producer sends asynchronous notifyFileReady notification event to Performance Assurance MnS Consumer when PM File(s) is ready for retrieval or the Performance Assurance MnS producer sends asynchronous notifyFilePreparationError notification event to Performance Assurance MnS Consumer when there is any error while preparing the file(s). The notifyFileReady notification contains information needed to retrieve the file such as filename and the location where the file can be retrieved. Performance Assurance MnS Consumer retrieves the PM File(s) from the location specified in the notifyFileReady notification. The notifyFilePreparationError notification contains error reasons as specified in 3GPP TS

28.532 [3], clause 11.6.1.2.2.

In the push-based file reporting method the Performance Assurance MnS Producer makes PM Files(s) available for retrieval by transferring the PM File(s) to an entity such as a designated file server or to the Performance Assurance MnS Consumer as described in 3GPP TS 28.537 [4] clause 7.3.1. The file location where the PM File(s) are to be pushed, the designated file server, is identified by the Performance Assurance MnS Consumer when creating the PerfMetricJob IOC using the "FileLocation" attribute. If the Performance Assurance MnS Producer is capable of providing notifications related to the file transfer operation using the notifyFileReady or notifyFilePreparationError notification event, the Performance Assurance MnS Producer can send the notifyFileReady or notifyFilePreparationError notification event to the subscribed Performance Assurance MnS Consumers. When transferring files, a secure connection is established between the Performance Assurance MnS Producer and the Performance Assurance MnS Consumer or the designated file server and the method for reporting the collected PM data to the MnS Consumer is defined in the PerfMetricJob IOC (see clause 6.3.3).

#### Requirements

##### Pull-based Performance Data File Reporting Requirements

When the pull-based Performance Data File Reporting method is used, the requirements specified in 3GPP TS 28.550

[6] clause 5.2.2 shall apply.

##### Push-based Performance Data File Reporting Requirements

When the push-based Performance Data File Reporting method is used, the following requirements apply.

REQ-OPM-PUSH-FUN1: The Performance Assurance MnS Producer responsible for the push-based Performance Data File Reporting method shall have the capability to send the NF performance data file to its authorized Performance Assurance MnS Consumer or a designated file server as described in 3GPP 28.537 [4] clause 7.3.1.

REQ-OPM-PUSH-FUN2: The Performance Assurance MnS Producer responsible for the push-based Performance Data File Reporting method shall provide support for the file transfer protocols specified in 3GPP TS 28.537 [4] clause

7.1.3 in the client role of the protocol.

REQ-OPM-PUSH-FUN3: The Performance Assurance MnS Consumer responsible for the push-based Performance Data File Reporting method shall provide support for the file transfer protocols specified in 3GPP TS 28.537 [4] clause

7.1.3 in the server role of the protocol.

REQ-OPM-PUSH-FUN4: The Performance Assurance MnS Producer responsible for the push-based Performance Data File Reporting method shall provide the ability to announce the capability to support notifications related to the completion of the file transfer.

REQ-OPM-PUSH-FUN5: When supported, the Performance Assurance MnS Producer responsible for the push-based Performance Data File Reporting method shall provide the Performance Assurance MnS Consumers the ability to subscribe to receive notifications related to completion of the file transfer.

#### Procedures

##### Pull-based Performance Data File Reporting Procedure

Introduction

When the pull-based Performance Data File Reporting method is used, the procedure based on the use case described in 3GPP TS 28.550 [6] clause 5.1.1.2 is used.

Pull-based Performance Data File Reporting Procedure for file ready events

The procedure in the present clause is an example adding to the reader's understanding of the interactions for the corresponding Management Service, aiming to help with the implementation of the O1 Interface specification. It outlines a possible flow and does not introduce new conformance requirements.

In the pull-based file reporting method for PM data file reporting, the Performance Assurance MnS Producer sends asynchronous notifyFileReady notification event to Performance Assurance MnS Consumer when PM File(s) is ready for retrieval as specified in 3GPP TS 28.532 [3], clause 11.6.1.1.1.

![Generated by PlantUML](../assets/images/dd83c4f45988.png)

@startuml skin rose

Title Pull-based PM Data File Reporting and Retrieval participant "Performance Assurance MnS Consumer" as NMS participant "Performance Assurance MnS Producer" as ME Note over ME : 1 New PM data file available

ME ->> NMS : 2 <<HTTP/TLS>> notifyFileReady Notification

NMS -> ME : 3 <<Secure File Transfer Protocol>> Get PM File(s) @enduml

###### Figure 6.3.1.3.1.1-1 Pull-based PM Data File Reporting and Retrieval

Pre-condition:

- Performance Assurance MnS Consumer has subscribed to notifyFileReady notifications.

Procedure:

A new PM data file is available on the Performance Assurance MnS Producer.

Performance Assurance MnS Producer sends notifyFileReady notification to Performance Assurance MnS Consumer over HTTP/TLS. Mutual certificate authentication is performed.

Performance Assurance MnS Consumer sets up a secure file transfer protocol connection to the location provided in the notifyFileReady notification and gets the PM data file(s). Secure file transfer protocols are described in 3GPP TS 28.537 [4], clause 7.1.3.

Pull-based Performance Data File Reporting Procedure for file preparation error events

The procedure in the present clause is an example adding to the reader's understanding of the interactions for the corresponding Management Service, aiming to help with the implementation of the O1 Interface specification. It outlines a possible flow and does not introduce new conformance requirements.

In the pull-based file reporting method for PM data file reporting, the Performance Assurance MnS producer sends asynchronous notifyFilePreparationError notification event to Performance Assurance MnS Consumer when there is any error while preparing the file(s), as specified in 3GPP TS 28.532 [3], clause 11.6.1.2.1.

![Generated by PlantUML](../assets/images/1ce2df43771e.png)

@startuml skin rose

Title Pull-based PM Data File Reporting and Retrieval participant "Performance Assurance MnS Consumer" as NMS participant "Performance Assurance MnS Producer" as ME Note over ME : 1 Error while preparing the file

ME ->> NMS : 2 <<HTTP/TLS>> notifyFilePreparationError Notification @enduml

###### Figure 6.3.1.3.1.2-1 Pull-based PM Data File Reporting while FilePreparation error

Pre-condition:

- Performance Assurance MnS Consumer has subscribed to notifyFilePreparationError notifications.

Procedure:

A new PM data file(s) could not be prepared due to an error which occurred while preparing the file.

Performance Assurance MnS producer sends notifyFilePreparationError notification to Performance Assurance MnS consumer over HTTP/TLS with the reason of the error. Reasons for the error are as described in 3GPP TS 28.532 [3], clause 11.6.1.2.2.

##### Push-based Performance Data File Reporting Procedure

Introduction

When the push-based Performance Data File Reporting method is used, the following procedures are used when the PM file(s) is ready for retrieval or when there is an error while preparing the file.

Push-based Performance Data File Reporting Procedure with optional file ready event

The procedure in the present clause is an example adding to the reader's understanding of the interactions for the corresponding Management Service, aiming to help with the implementation of the O1 Interface specification. It outlines a possible flow and does not introduce new conformance requirements.

When the push-based Performance Data File Reporting method is used, and if Performance Assurance MnS producer is capable of providing notification to the Performance Assurance MnS Consumer when PM file(s) is ready for retrieval, the following procedure is used.

@startuml

Title Push-based PM Data File Reporting Skin rose

skinparam sequenceArrowThickness 1

skinparam ParticipantPadding 2

skinparam BoxPadding 5

Participant "Performance Assurance MnS Consumer" as consumer Participant "Performance Assurance MnS Producer" as producer Participant "Designated File Server" as file\_server

Note over consumer Preconditions

Performance Assurance MnS Producer is configured to produce push-based file reporting to the location

of a file server where the Performance Assurance MnS Consumer can retrieve the file by specifying the

"fileLocation" in the PerfMetricJob creation.

A PM data file is available at the Performance Assurance MnS Producer to transmit to the File Server.

(Optionally) Performance Assurance MnS Consumer has subscribed to file transfer operation notifications.

End Note

Note over producer

1 New PM data File(s) available End Note

producer -> file\_server: <<Secure File Transfer Protocol>> 2 Push PM File(s)

opt if Performance Assurance MnS Producer is capable of reporting file notifications\n and Performance Assurance MnS Consumer has subscribed

producer -> consumer: 3 <<HTTP/TLS>> notifyFileReady notification end opt

consumer -> file\_server: 4 Retrieves PM File(s) @enduml

![Generated by PlantUML](../assets/images/49af7fc0ba37.png)

###### Figure 6.3.1.3.2.1-1 Push-based PM Data File Establishment and Data Transmission

Pre-condition:

* Performance Assurance MnS Producer is configured to produce push-based file reporting to the location of a file server or to the Performance Assurance MnS Consumer, as designated by the Performance Assurance MnS Consumer at the PerfMetricJob IOC creation. (Figure 6.3.1.3.2.1-1 depicts the scenario of pushing the file to a designated file server)
* A PM data file is available at the Performance Assurance MnS Producer to transmit to the File Server.
* (Optionally) Performance Assurance MnS Consumer has subscribed to file transfer operation notifications.

Procedure:

1. PM File(s) are available to the Performance Assurance MnS Producer
2. Performance Assurance MnS Producer transmits the PM file(s) to the Performance Assurance MnS Consumer or to a file server designated by the Performance Assurance MnS Consumer by the file location provided in the PerfMetricJob.
3. If the Performance Assurance MnS Producer is capable of reporting file notifications and Performance Assurance MnS Consumer has subscribed to receive the notifications, the Performance Assurance MnS Producer sends notifyFileReady notification to the Performance Assurance MnS Consumer after the file transfer.
4. In case of push-based file reporting method to a designated filer server, Performance Assurance MnS Consumer retrieves the PM file(s) from the File Server

Push-based Performance Data File Reporting Procedure with optional file preparation error event

The procedure in the present clause is an example adding to the reader's understanding of the interactions for the corresponding Management Service, aiming to help with the implementation of the O1 Interface specification. It outlines a possible flow and does not introduce new conformance requirements.

When the push-based Performance Data File Reporting method is used, and if Performance Assurance MnS producer is capable of providing notification to the Performance Assurance MnS Consumer when there is error in preparing the PM file(s), the following procedure is used.

@startuml

Title Push-based PM Data File Reporting Skin rose

skinparam sequenceArrowThickness 1

skinparam ParticipantPadding 2

skinparam BoxPadding 5

Participant "Performance Assurance MnS Consumer" as consumer Participant "Performance Assurance MnS Producer" as producer Participant "Designated File Server" as file\_server

Note over consumer Preconditions

Performance Assurance MnS Producer is configured to produce push-based file reporting to the location

of a file server where the Performance Assurance MnS Consumer can retrieve the file by specifying the

"fileLocation" in the PerfMetricJob creation.

(Optionally) Performance Assurance MnS Consumer has subscribed to file transfer operation notifications.

End Note

Note over producer

1 Error while preparing the file End Note

opt if Performance Assurance MnS Producer is capable of reporting file notifications\n and Performance Assurance MnS Consumer has subscribed

producer -> consumer: 3 <<HTTP/TLS>> notifyFilePreparationError notification end opt

@enduml

![Generated by PlantUML](../assets/images/5ccd64275a0a.png)

###### Figure 6.3.1.3.2.2-2 Push-based PM Data File Establishment and Data Transmission

Pre-condition:

* Performance Assurance MnS Producer is configured to produce push-based file reporting to the location of a file server or to the Performance Assurance MnS Consumer, as designated by the Performance Assurance MnS Consumer at the PerfMetricJob IOC creation.
* (Optionally) Performance Assurance MnS Consumer has subscribed to file transfer operation notifications.

Procedure:

A new PM data file(s) could not be prepared due to an error which occurred while preparing the file.

If the Performance Assurance MnS Producer is capable of reporting file notifications and Performance Assurance MnS Consumer has subscribed to receive the notifications, the Performance Assurance MnS Producer sends notifyFilePrepartionError notification to the Performance Assurance MnS Consumer with the reason of the error. Reasons for the error are as described in 3GPP TS 28.532 [3], clause 11.6.1.2.2.

#### Operations and Notifications

Refer to clause 5.1 for details on O1 notification formats, including SDO O1 format and VES O1 format notifications, categorized as Harmonized VES.

The O1-supported 3GPP-specified file transfer operation notifications are:

* notifyFileReady;
* notifyFilePreparationError.

#### PM File Generation and Reporting

When the pull-based Performance Data File Reporting method is used, the following PM File Generation and Reporting requirements apply:

* PM file generation and reporting shall be as specified in 3GPP TS 28.532 [3] clause 11.6.

When the push-based Performance Data File Reporting method is used, the following PM File Generation and Reporting requirements apply:

* The Performance Assurance MnS Producer shall support the file transfer protocols 3GPP TS 28.537 [4] clause 7.1.3.
* The Performance Assurance MnS Producer shall always act as the client while the MnS consumer shall always act as the server of file transfer actions.

#### PM File Content

PM file content shall be as specified in 3GPP TS 28.532 [3] clause 11.3.2.1.2.

#### PM File Naming

PM file naming shall be as specified in 3GPP TS 28.532 [3] clause 11.3.2.1.4.

#### PM File XML Format

PM file XML format shall be as specified in 3GPP TS 28.532 [3] clause 12.3.2 and/or in 3GPP TS 32.432 [14] clause 4.1.

* + - 1. Void

### Performance Data Streaming

#### Description

Performance Assurance MnS Producer steams high volume asynchronous streaming performance measurement data to Performance Assurance MnS Consumer at a configurable frequency. A secure WebSocket connection is established between the Performance Assurance MnS Producer and the Performance Assurance MnS Consumer. The connection supports the transmission of one or more streams of PM data. Each stream of PM data is configured as a PerfMetricJob (see clause 6.3.3). The Performance Assurance MnS Producer supplies information about the supported streams to the consumer during the connection establishment. The connection may be established to support one or more streams.

Streams can be added or removed from the connection as the PerfMetricJobs are added or deleted. The connectionID that carries the streaming PM data is provided to the Performance Assurance MnS Producer during the establishment of the WebSocket connection by the Performance Assurance MnS Consumer.

#### Requirements

Requirements for Streaming PM specified in 3GPP TS 28.550 [6] clause 5.2.3 shall apply.

#### Procedures

The procedure in the present clause is an example adding to the reader's understanding of the interactions for the corresponding Management Service, aiming to help with the implementation of the O1 Interface specification. It outlines a possible flow and does not introduce new conformance requirements.

Use Cases for Streaming PM are described in 3GPP TS 28.550 [6] clause 5.1.1.3. Operations and notifications described in 3GPP TS 28.532 [3] clause 11.5 are applicable to both Streaming PM and Streaming Trace.

@startuml skin rose

Title Performance Data Streaming Autonumber

participant "Performance Assurance MnS Consumer" as NMS participant "Performance Assurance MnS Producer" as ME Note over ME : Performance Data Streaming Job Configured ME ->> NMS : <<HTTP/TLS>> establish Streaming Connection NMS ->> ME : <<HTTP/TLS>> Connection Established

loop (while performance job is active)

ME ->> NMS : <<WebSocket>> report stream data via performance data stream unit End

||| @enduml

![Generated by PlantUML](../assets/images/b50b0aa62c81.png)

###### Figure 6.3.2.3-1 Perf Data Streaming Connection Establishment and Data Transmission

Pre-condition:

- Performance Assurance MnS Producer is configured to produce PerfMetricJob to be delivered via streaming PM to the Performance Assurance MnS Consumer.

Procedure:

1. Performance Assurance MnS Producer requests to establish a WebSocket connection to begin streaming PM data and provides MetaData about the streams that are to be sent on the connection
2. Performance Assurance MnS Consumer accepts the request to upgrade the connection to a WebSocket.
3. Performance Assurance MnS Producer transmits binary encoded data to consumer while performance job is active.

#### Operations and Notifications

3GPP TS 28.532 [3] clause 11.5.1 defines the following operations that an O-RAN compliant NF that supports streaming PM shall support. These are the same operations as listed in clause 6.4.6. They are repeated here, as it is possible that a NF may support different levels of streaming for trace and performance assurance.

* establishStreamingConnection operation is specified in 3GPP TS 28.532 [3] clause 11.5.1.1. Establishing the streaming connection is initiated via an HTTPS POST followed by an HTTP GET (upgrade) to establish the WebSocket connection.
* terminateStreamingConnection operation is specified in 3GPP TS 28.532 [3] clause 11.5.1.2. This operation is accomplished via a WebSocket Close Frame to tear down the streaming connection when all stream jobs on this connection have been terminated. The delivery of WebSocket Close Frame is provided by the underlying TCP.
* reportStreamData operation is specified in 3GPP TS 28.532 [3] clause 11.5.1.3. The streamData field contains the streaming PM data which is encoded according to the format defined in 3GPP TS 28.550 [6] Annex G which provides the ASN.1 definition of the Performance Data Stream Units. The delivery of WebSocket Close Frame is provided by the underlying TCP.

If O-RAN NF supports the capability of sending multiple PM streams across the WebSocket connection, the following operations shall be supported.

* addStream operation is specified in 3GPP TS 28.532 [3] clause 11.5.1.4. This operation is used when a new Performance Assurance Stream (PM job started) is added on the Performance Assurance MnS Producer to be delivered to this consumer and the NF supports multiple streams per connection. The addStream operation is accomplished via an HTTP POST.
* deleteStream operation is specified in 3GPP TS 28.532 [3] clause 11.5.1.5. This operation is used when a Performance Assurance Stream (PM job stopped) is deleted from the connection between the Performance Assurance MnS Producer and the Performance Assurance MnS Consumer. The deleteStream operation is accomplished via an HTTP DELETE.

The following operations specified in 3GPP TS 28.532 [3] clause 11.5.1 may be supported by O-RAN NFs:

* getConnectionInfo operation is specified in 3GPP TS 28.532 [3] clause 11.5.1.6. This operation allows the performance data streaming service producer to get information from the performance data streaming service consumer on the streams active on the connection.
* getStreamInfo operation is specified in 3GPP TS 28.532 [3] clause 11.5.1.7. This operation allows the performance data streaming service producer to get the information for one or more streams from the streaming consumer (i.e., stream target).

No notifications have been defined for Performance Data Streaming.

#### PM Streaming Data Generation and Reporting

3GPP TS 28.550 [6] Annex C lists all the Performance Data Stream Unit Content Items. Annex C of the present document provides a description of the establishment of the WebSocket connection and the subsequent operations provided as part of the data streaming service. The example utilizes the trace service, but the operations around the establishment and tear down of the connection are the same for streaming PM and streaming Trace. The WebSocket connection remains until all streams configured to be provided between the Performance Assurance MnS Producer and the Performance Assurance MnS Consumer have been terminated.

#### PM Streaming Data Format

PM Streaming data shall be delivered according to the format specified in the input parameters of the establishStreamConnection operation specified in 3GPP TS 28.532 [3] clause 11.5.1.1.2.

### Measurement Job Control

#### Description

Starting with 3GPP Release 16, Performance Assurance Control supported by IOCs with attributes that can be read and/or set using generic provisioning mechanisms in the Measurement Job Control Service. Measurement jobs can be created and terminated by creating and deleting a PerfMetricJob MOI. Measurement jobs can be queried by getting the attributes of a PerfMetricJob MOI. Measurement jobs can be temporarily suspended or resumed by modifying the administrativeState attribute of a PerfMetricJob MOI to LOCKED or UNLOCKED.

#### Requirements

Requirements for measurement job control specified in 3GPP TS 28.550 [6] clause 5.2.1 shall apply.

PerfMetricJob IOC definition shall be as specified in 3GPP TS 28.622 [7] clause 4.3.31 with attribute definitions in specified in 3GPP TS 28.622 [7] clause 4.4.1. SupportedPerfMetricGroup datatype shall be as specified in 3GPP TS 28.622 [7] clause 4.3.32. ReportingCtrl shall be as specified in 3GPP TS 28.622 [7] clause 4.3.33.

YANG solution set for PerfMetricJob IOC shall be as specified in 3GPP TS 28.623 [23] clauses 4.4 and E.2.

#### Procedures

Measurement job creation, termination, query, suspend and resume are described in 3GPP TS 28.622 [7] clause 4.3.31.

NETCONF protocol and YANG data models are used to create MOI, delete MOI, modify attributes and get attributes of a PerfMetricJob. Refer to Provisioning management services clause for detailed procedures on how to perform these operations using NETCONF.

* + - 1. Void

### O-RAN Defined Performance Measurements

O1 performance measurements are defined in the O-RAN O1 Performance Measurements Specification [i.17] and 3GPP TS 28.552 [i.5].

PMCountGroup and CuCountGroup, described in O1 Interface specification for O-DU [i.19] and O1 Interface specification for O-CU-UP and O-CU-CP [i.20] respectively, can be used as filtering mechanisms for O-RAN defined O1 performance measurements. Filtering mechanisms defined in clause 4.2 of 3GPP TS 28.552 [i.5] can be used as well.

* + - 1. Void

## Trace Management Services

### Overview

Trace management services allow a Trace MnS Producer to report file-based or streaming trace records to the Trace MnS Consumer. Trace Control provides the ability for the Trace MnS Consumer to start a trace session by configuring a Trace Job via the Trace Control IOC or by establishing a trace session that propagates trace parameters to other Trace MnS Producers via signaling. There are multiple levels of trace that can be supported on the Trace MnS Producer as described in 3GPP TS 32.421 [11] clause 4.1. The Trace MnS Producer may be configured to support file-based trace reporting or streaming trace reporting.

Trace Management Services specified in 3GPP TS 32.421 [11], 3GPP TS 32.422 [12] and 3GPP TS 32.423 [13] and supported on an applicable O-RAN ME include Call Trace, Minimization of Drive Testing (MDT), RRC Connection Establishment Failure (RCEF) and Radio Link Failure TCE (RLF). All of these services follow a similar management paradigm. Trace Sessions are configured on the Trace MnS Producer with information on where and how to send the

trace information to the consumer. The Trace MnS Producer creates trace records within a trace session as the trigger mechanism occurs. Trace records are produced and provided to the consumer until the trace session is terminated.

File-based trace collects trace records in files that are available to the consumer with a time delay. In the case of streaming trace, the data is sent in bursts across a WebSocket connection to the consumer, maintaining the relevance of the data while minimizing transport overhead.

Stage 1 Trace Management Service is specified in 3GPP TS 32.421 [11]. Use cases for trace are specified in clause 5.8 and elaborated in 3GPP TS 32.421 [11] Annex A. General Trace Requirements are found in 3GPP TS 32.421 [11] clause 5.1.

Stage 2 Trace Operations are found in 3GPP TS 32.422 [12] for 5G support of Call Trace and for streaming trace.

Stage 2 TraceJob IOC for management-based control is specified in 3GPP TS 28.622 [7] clause 4.3.30. Stage 2 for signaling based activation is found in 3GPP TS 32.422 [12].

Stage 3 definitions of trace record content for all trace types, XML trace file format, and streaming trace GPB record definition are found in 3GPP TS 32.423 [13].

Stage 3 TraceJob IOC mapping for management-based control is specified in 3GPP TS 28.623 [23] clauses 4.3, 4.4, E.1 and E.2.

Stage 2 and 3 definitions for streaming data reporting are specified in 3GPP TS 28.532 [3].

### Call Trace

#### Trace Data Reporting

##### Description

Trace Data can be reported from the Trace MnS Producer to the Trace MnS Consumer via trace files or via a streaming interface. For management-based activation, Trace Data is collected after the TraceJob is configured on the Trace MnS Producer, the Trace Session is activated, and the triggering event occurs. For signaling-based activation, the Trace Recording Session starts when the NF receives trace control and configuration parameters via one of the signaling messages specified in 3GPP TS 32.422 [12] clause 4.2.3.12.

When the Trace MnS Producer collects trace data to a file, the file is periodically provided to the Trace MnS Consumer. When the producer supports streaming trace, the trace is sent to the consumer via data bursts which are sent frequently enough to retain the relevance of the data while conserving transport resources. The WebSocket connection carrying the streaming trace is preserved for the duration of the streaming trace.

##### Requirements

Requirements for Trace data specified in 3GPP TS 32.421 [11] clause 5.2 shall apply to both file-based and streaming trace.

##### Procedures

Trace Data is binary encoded and reported in Trace Records. The procedures for reporting data are described in 3GPP TS 32.422 [12] clause 7. File-based trace reporting procedures are described in 3GPP TS 32.422 [12] clauses 7.1.1 and

7.2.1. Streaming trace reporting procedures are described in 3GPP TS 32.422 [12] clauses 7.1.2 and 7.2.2. Trace Record Contents are described in 3GPP TS 32.423 [13] clause 4. The Trace Record content is the same for trace jobs controlled by management-based activation and signaling-based activation. The raw trace record content is the same for file-based trace and streaming trace. Trace data is binary encoded in ASN.1. File-based trace is delivered in XML format with trace records encoded in ASN.1. Streaming trace is delivered in GPB encoded data bursts with the trace record payload containing ASN.1 encoded data.

Procedures for naming the trace data file are described in 3GPP TS 32.423 [13] Annex B. File Naming Convention is described in 3GPP TS 32.423 [13] clause B.1.

Trace files are produced in XML format. The XML format is described in 3GPP TS 32.423 [13] clause A2.2. Example XML files are provided in 3GPP TS 32.423 [13] Annex D.

If a trace file cannot be created, a trace failure notification file XML schema can be sent. The XML schema is provided in 3GPP TS 32.422 [12] clause A.5 and the naming convention for the file containing the failure is described in clause A.4.

For streaming trace, raw trace data is collected on the node and sent to the trace collector. The trace data is binary encoded. The format of the streaming trace data is provided in 3GPP TS 32.423 [13]. The reportStreamData operation is described in 3GPP TS 28.532 [3] clause 12.5.1.1.4.

#### Trace Session Activation

##### Description

A trace session starts on a producer configured to support a TraceJob via management or signaling-based activation. Management-based trace session activation is initiated from the Provisioning Management Service Consumer to activate a TraceJob which has been configured on the producer. See clause 6.4.5. With signaling-based trace session activation, the producer receives a signaling message that contains trace consumer ID address (IP address for file-based or URI for streaming) along with trace control parameters. Each Trace session has a unique trace session identifier that is associated with all of the trace data collected for this session.

If the trace session is configured to be file-based, the producer collects the data and stores the data in a file. The producer optionally sends the file directly to the consumer or sends the location of the file to the consumer. File transport approach is not standardized.

3GPP TS 28.532 [3] supports the streaming of trace data from the producer to the consumer. Trace data for a trace session is collected and transmitted to the producer across a secure WebSocket connection in data bursts which are emitted frequently enough to ensure the relevance of the data while conserving transport resources. See clause 6.4.6 and Annex C of the present document for details on the streaming service.

##### Requirements

Requirements for Trace Session activation for file-based and streaming trace specified in 3GPP TS 32.421 [11] clause

5.3.1 shall apply.

##### Procedures

Procedures for activating a Trace Session via management-based control are described in 3GPP TS 32.422 [12] clause

4.1.1.1 for general procedures and 3GPP TS 32.422 [12] clause 4.1.1.9 for NGRAN specific procedures. Procedures for activating a Trace Session via signaling are described in 3GPP TS 32.422 [12] clause 4.1.2.1 and clause 4.1.2.16.

#### Trace Session Deactivation

##### Description

A Trace Session is terminated/deactivated when any of the defined stop triggering events occur as specified in 3GPP TS

32.421 [11], such as a timer expiring, or the TraceJob Session is deactivated via management control.

##### Requirements

Requirements for Trace Session deactivation specified in 3GPP TS 32.421 [11] clause 5.4.1 shall apply.

##### Procedures

Procedures for Trace Session Deactivation are described in 3GPP TS 32.422 [12] clause 4.1.3.10 for management-based trace deactivation and 4.1.4.1.2 for signaling-based trace deactivation.

#### Trace Recording Session Activation

##### Description

A trace recording session is a specific instance of the data specified to be collected for a particular trace session, for example, a specific call. For management-based activation, the trace recording session starts on a producer configured with an active trace session when a triggering event occurs, such as a new call starting. Each Trace recording session within a trace session has a unique trace recording session reference. This recording session reference and the session reference are included with each trace record, uniquely identifying the trace record as belonging to a particular trace recording session. For signaling-based activation, the Trace Recording Session starts when the NF receives trace control and configuration parameters via a control signaling message. 3GPP TS 32.422 [12] clause 4.2.3.12 outlines the procedures the node is to follow when determining when to begin a new trace recording session and when to continue with an existing session.

##### Requirements

Requirements for starting Trace Recording Session specified in 3GPP TS 32.421 [11] clause 5.3.2 shall apply.

##### Procedures

Procedures for starting a Trace Recording Session are described in 3GPP TS 32.422 [12] clause 4.2.1 for general cases. 3GPP TS 32.422 [12] clause 4.2.2.10 has details for management-based trace session activation and 4.2.3.12 has details when the trace session was activated via signaling.

#### Trace Recording Session Termination

##### Description

A Trace Recording Session is terminated when any of the defined stop triggering events occur or the Trace Session is deactivated.

##### Requirements

Requirements for stopping Trace Recording Session specified in 3GPP TS 32.421 [11] clause 5.4.2 shall apply.

##### Procedures

Procedures for Trace Recording Session Termination are described in 3GPP TS 32.422 [12] clause 4.2.4.10 and 4.2.5.13.

### Minimization of Drive Testing (MDT)

#### Description

3GPP TS 37.320 [i.9] provides an overall description for MDT. An O-RAN network function may support Immediate and Logged MDT as described in 3GPP TS 37.320 [i.9]. Logged MDT is always file-based. Immediate MDT may be configured to be file-based or streaming. MDT measurements are described in 3GPP TS 37.320 [i.9]. 3GPP TS 32.421 [8], 32.422 [12] and 32.423 [13] describe the management of MDT and have been updated to support 5G.

#### Requirements

Requirements for managing MDT specified in 3GPP TS 32.421 [11] clause 6 shall apply.

#### Procedures

Procedures for Trace Session Activation are the same for MDT as for Call Trace and are described in 3GPP TS 32.422

[12] clause 4.1. Procedures for specifying MDT Trace selection conditions are described in 3GPP TS 32.422 [12] clause 4.1.5.

Procedures for Trace Recording Sessions start and stop for MDT are described in 3GPP TS 32.422 [12] clause 4.2.

Procedures for handling MDT sessions at handover for Immediate MDT are described in 3GPP TS 32.422 [12] clause

4.4 and Logged MDT in 3GPP TS 32.422 [12] clause 4.5.

Procedures for user consent handling in MDT are described in 3GPP TS 32.422 [12] clause 4.6. Procedures for MDT reporting are described in 3GPP TS 32.422 [12] clause 6.

MDT Trace Record Contents are described in 3GPP TS 32.423[13] clause 4.

Trace file format for MDT Trace is described in 3GPP TS 32.423 [13] clause A.2.1. Example XML files are provided in 3GPP TS 32.423 [13] clause D.1.4.

### Radio Link Failure (RLF)

#### Description

Radio Link Failure (RLF) reporting is a special Trace Session which provides the detailed information when a UE experiences an RLF event, and the reestablishment is successful to the source gNB. 3GPP TS 32.421 [11], 32.422 [12] and 32.423 [13] describe the management of RLF.

#### Requirements

Requirements for RLF specified in 3GPP TS 32.421 [11] clause 7 shall apply.

#### Procedures

Procedures for Trace session activation and deactivation for RLF reporting are described in 3GPP TS 32.422 [12] clause 4.3.1 and 4.3.2.

Procedures for specifying the RLF reporting job type when configuring the RLF reporting session are described in 3GPP TS 32.422 [12] clause 5.9a.

Procedures for RLF reporting follow standard trace reporting procedures documented in 3GPP TS 32.422 [12] clause 7.

### RRC Connection Establishment Failure (RCEF)

#### Description

Radio Resource Control (RRC) Connection Establishment Failure (RCEF) is activated on the gNB as a special Trace Session where the job type indicates RCEF reporting only. The records are produced when a UE experiences an RCEF event and the RRC establishment is successful to the same gNB.

#### Requirements

Requirements for RCEF specified in 3GPP TS 32.421 [11] clause 7 shall apply.

#### Procedures

Procedures for trace session activation of RCEF are described in 3GPP TS 32.422 [12] clause 4.8.1.

Procedures for trace session deactivation for RCEF reporting are described in 3GPP TS 32.422 [12] clause 4.8.2. Procedures for specifying the job type for RCEF are described in 3GPP TS 32.422 [12] clause 5.9a.

Procedures for RCEF Reporting are described in 3GPP TS 32.422 [12] clause 7.

### Trace Control

#### Description

Starting with 3GPP Release 16, Management-based Trace Control is supported with IOCs with attributes that can be read and/or set using generic provisioning mechanisms in the Trace Control Service. For Trace Control, this includes operations such as Create TraceJob, Activate TraceJob, Deactivate TraceJob, and Query TraceJobs. TraceJobs can be created, activated, deactivated, and queried by setting and/or getting attributes in the TraceJob IOC. The TraceJob IOC supports Management-based activation for Call Trace, MDT, RLF and RCEF.

Trace sessions can also be activated and deactivated via signaling-based configuration initiated from another NF to propagate a configured trace, such as a UE trace when the UE moves from one NF to another.

#### Requirements

Management-based activation and deactivation shall be done via the TraceJob IOC defined in 3GPP TS 28.622 [7] clause 4.3.30. Requirements for TraceJob activation specified in 3GPP TS 32.421 [11] clause 5.3.1 and requirements for TraceJob deactivation specified in 3GPP TS 32.421 [11] clause 5.4.1 shall apply for both Management and signaling activation.

#### Procedures

The procedure in the present clause is an example adding to the reader's understanding of the interactions for the corresponding Management Service, aiming to help with the implementation of the O1 Interface specification. It outlines a possible flow and does not introduce new conformance requirements.

Management-based activation and deactivation accomplished using CRUD operations documented in clause 6.1. The attributes of the TraceJob are described in 3GPP TS 28.622 [7] clause 4.3.30.2. Constraints on these attributes are described in 3GPP TS 28.622 [7] clause 4.3.30.3. TraceJob IOC mapping for management-based control is documented in 3GPP TS 28.623 [23]. The YANG model for the TraceJob IOC is described in 3GPP TS 28.623 [23] clauses 4.4 and E.2.

Procedures for signaling-based Trace Session activation are described in 3GPP TS 32.422 [12] clause 4.1.2. Procedures for signaling-based Trace Session deactivation are described in 3GPP TS 32.422 [12] clause 4.1.4.

### Streaming Trace

#### Overview

A NF can be configured to deliver trace data via a file or via a streaming interface. The streaming capability was introduced in 3GPP Release 16. The additional requirements and procedures supported for streaming trace are provided in this clause. An example of the configuration, activation, recording and termination of a streaming trace connection are shown in Informative Annex C.

#### Requirements

As noted above, trace session and recording activation and deactivation, as well as the content of the trace record, are the same for file-based and streaming trace. The requirements for streaming trace delivery specified in 3GPP TS

32.421 [11] clause 5.5 shall apply. Operations for establishing the streaming connection, adding, and deleting streams from the connection and reporting streaming trace data shall be as specified in 3GPP TS 28.532 [3] clause 11.5. O- RAN NFs supporting streaming trace shall support the establishStreamingConnection, reportStreamData and terminateStreamingConnection operations. O-RAN NFs that support the multiplexing of trace streams across a single connection shall support the addStream and deleteStream operations. Optionally, the NF may also support the getConnectionInfo and getStreamInfo operations which allow the producer to query for information on the connection and streams on the connection. No notifications have been defined for streaming trace.

Stage 3 information on the streaming operations is provided in 3GPP TS 28.532 [3] clause 12.5 with Open API YAML definition provided in clause A.6.1.2.

#### Procedures

The procedure in the present clause is an example adding to the reader's understanding of the interactions for the corresponding Management Service, aiming to help with the implementation of the O1 Interface specification. It outlines a possible flow and does not introduce new conformance requirements.

The procedure for establishStreamingConnection is an HTTP POST operation to provide the information on the stream to the consumer and to receive the Connection ID as a response. The HTTP POST is followed by an HTTP GET to upgrade the connection to a WebSocket connection. This operation is used when no connection is established between the producer and the consumer. The WebSocket connection can contain one or more streams of data from streaming trace or streaming PM. See 3GPP TS 28.532 [3] clause 12.5.1.1.2.

The terminateStreamingConnection is a WebSocket close frame operation. This operation is used when all streams on a connection have terminated. See 3GPP TS 28.532 [3] clause 12.5.1.1.3.

The addStream Operation is an HTTP POST to indicate that additional streams are being added to the connection. A stream corresponds to a trace job or a streaming PM job. See 3GPP TS 28.532 [3] clause 12.5.1.1.5.

The deleteStream Operation is an HTTP DELETE to indicate that a stream has been terminated from the connection. See 3GPP TS 28.532 [3] clause 12.5.1.1.6.

The reportStreamData is a WebSocket data frame sent across the connection containing the streaming trace or streaming PM data or an optional alive message indicating that the stream is active, but no data is available. See 3GPP TS 28.532 [3] clause 12.5.1.1.4.

The getConnectionInfo Operation is an HTTP GET from the producer to the consumer to obtain information about the connection, such as which streams are supported. See 3GPP TS 28.532 [3] clause 12.5.1.1.7.

The getStreamInfo Operation is an HTTP GET from the producer to the consumer to obtain information on the stream. See 3GPP TS 28.532 [3] clause 12.5.1.1.8.

Annex C provides a streaming trace activation example for management-based activation control.

### UE Identifiers for Trace Records

#### Description

The contents of the Trace Records are specified in 3GPP TS 32.423 [13] clause 4 and Trace Record Header in 3GPP TS

32.423 [13] clause 5.2.2. The Trace Record containing protocol related messages may contain 3GPP defined UE identifiers corresponding to the protocol. These UE identifiers are a part of protocol messages sent as Trace Records. The Trace Header also contains RAN UE ID as an optional information element. However, for correlation of Trace Records from different O-RAN entities, the UE identifiers embedded in the protocol messages and the RAN UE ID in Trace Header may not be sufficient and may need to be complemented by other information. Hence a set of UE Identifiers and Node Identifiers are defined in O-RAN-Architecture-Description document [15] clause 5.5 for O-RAN ecosystem.

To enable correlation of Trace Records between O-RAN entities, Trace MnS Producer includes the optional RAN UE ID in the Trace Header when available and other applicable 3GPP UE identifiers defined in O-RAN-Architecture- Description document [15] clause 5.5 in the optional *vendorExtension* IE defined in 3GPP TS 32.423 [13] clause 5.2.2. in the Trace Header.

Refer to Annex D for the recommendation for UE Identifier format for *vendorExtension* IE in the Trace Header

## File Management Services

### Overview

File management services allow a File Management MnS Consumer to get notification of new available files; query available files and request the transfer of files between the File Management MnS Producer and the File Management MnS Consumer.

Relevant 3GPP specifications for file transfer are 3GPP TS 28.537 [4], 3GPP TS 32.341 [8], 3GPP TS 32.342 [9] and 3GPP TS 32.346 [i.8].

### File Ready Notification

#### Description

The File Ready Notification notifies a File Management MnS Consumer that a file is available for retrieval from the File Management MnS Producer. In general, File Management MnS Producer sends a notifyFileReady notification for files that the File Management MnS Consumer has configured the File Management MnS Producer to collect on a periodic basis, such as file-based Trace Data or PM Measurement Reports.

#### Requirements

The notifyFileReady notification shall be as specified in 3GPP TS 28.532 [3], clause 11.6.1.1.

#### Procedures

The procedure in the present clause is an example adding to the reader's understanding of the interactions for the corresponding Management Service, aiming to help with the implementation of the O1 Interface specification. It outlines a possible flow and does not introduce new conformance requirements.

File Management MnS Consumer configures a File Management MnS Producer to collect data files with specific characteristics that the File Management MnS Consumer desires, such as file-based Trace Data or PM Measurement Reports described in clause 6.3. After configuration, the File Management MnS Consumer terminates the configuration session and waits for the File Management MnS Producer to report that the file is ready for collection.

When a file is available, the File Management MnS Producer sends a notifyFileReady notification to the File Management MnS Consumer using REST/HTTPS.

@startuml skin rose

Title notifyFileReady Notification Autonumber

participant "File Management MnS Consumer" as consumer participant "File Management MnS Producer" as producer Note over producer : New file is available

producer ->> consumer : <<HTTP/TLS>> notifyFileReady Notification @enduml

![Generated by PlantUML](../assets/images/26c7a60a95d9.png)

###### Figure 6.5.1.3-1 File Available for Transfer to Consumer

Pre-condition:

- A new file is available on the File Management MnS Producer.

Procedure:

1. File Management MnS Producer sends notifyFileReady notification to File Management MnS Consumer over HTTP/TLS. Mutual certificate authentication is performed.

#### Operations and Notifications

Refer to clause 5.1 for details on O1 notification formats, including SDO O1 format and VES O1 format notifications, categorized as Harmonized VES.

The O1-supported 3GPP-specified File Ready notification is:

- notifyFileReady

#### File Types Supported

File Type requirements are documented in 3GPP TS 32.341 [8] clause 5.2.

#### File Naming Requirements

Unless explicitly stated in the present document for particular File Types, the File Naming Convention specified in 3GPP TS 32.342 [9] Annex A shall apply.

### List Available Files

#### Description

File Management MnS Consumer queries the File Management MnS Producer to identify files that are available on the File Management MnS Producer. Upon receipt of the available files and their locations, the File Management MnS Consumer can determine the next appropriate action.

#### Requirements

Requirements on the types of files specified in clause 5.2 of 3GPP TS 32.341 [8] shall apply.

#### Procedures

The procedure in the present clause is an example adding to the reader's understanding of the interactions for the corresponding Management Service, aiming to help with the implementation of the O1 Interface specification. It outlines a possible flow and does not introduce new conformance requirements.

List Available Files Use Case allows the File Management MnS Consumer to obtain a list of available files and their locations by reading the AvailableFileList IOC documented in 3GPP TS 32.342 [9]. A File Management MnS Consumer uses this management service in scenarios where the File Management MnS Producer is collecting information, such as logs, on a standard basis in support of debugging activities. Under normal operations, the File Management MnS Producer does not send this data to the File Management MnS Consumer as the File Management MnS Consumer does not need it. The File Management MnS Producer retains the data with the oldest data being over- written when space is exhausted. In some scenarios, the File Management MnS Consumer wants to retrieve some, or all, of the available log files to resolve an issue. In this case, File Management MnS Consumer sends a NETCONF

<get> command to the File Management MnS Producer to obtain the list of available files. File Management MnS Producer responds with AvailableFileList which contains a list of available files and their locations and file types. File Management MnS Consumer uses this information to transfer the desired files (see clause 6.5.3).

The File Management MnS Consumer does not have to initiate a file retrieval as a result of the obtaining the list of available files. There are use cases where the File Management MnS Consumer wants to verify that files are being collected or verify that all files of a particular type (PM for example) have been retrieved.

@startuml skin rose

Title List Available Files autonumber "[0]"

participant "File Management MnS Consumer" as NMS participant "File Management MnS Producer" as ME NMS <-> ME : Establish NETCONF Session

NMS -> ME: NETCONF <get> <filter>

ME --> NMS: NETCONF <rpc-reply> <data> NMS <-> ME : Terminate NETCONF Session @enduml

![Generated by PlantUML](../assets/images/827fa82a0c0f.png)

###### Figure 6.5.2.3-1 List Available Files

1. File Management MnS Consumer establishes NETCONF session with File Management MnS Producer.
2. File Management MnS Consumer sends NETCONF <get> <filter> to the File Management MnS Producer to retrieve the contents of the AvailableFileList.
3. File Management MnS Producer sends NETCONF <rpc-reply> <data>to the File Management MnS Consumer with list of available files on the File Management MnS Producer.
4. File Management MnS Consumer terminates NETCONF session with File Management MnS Producer.

### File Transfer to and from File Management MnS Producer

#### Description

The File Transfer by File Management MnS Consumer Use Case provides the capability for a File Management MnS Consumer to transfer files from or to the File Management MnS Producer. In this use case, File Management MnS Consumer is the client and File Management MnS Producer is the file server.

The File Management MnS Consumer can perform this action as a result of:

1. notifyFileReady notification from the File Management MnS Producer informing the File Management MnS Consumer that a file(s)is available
2. Querying the File Management MnS Producer for the list of available files (see clause 6.5.2).
3. A need to transfer a file from a known location on the File Management MnS Producer.
4. A need to transfer a file to a known location on the File Management MnS Producer. Some examples of files that could be transferred to the FileManagement MnS Producer are:
   * Beamforming configuration file (Opaque Vendor specific data)
   * Machine Learning
   * Certificates

File Transfer is performed using a secure file transfer protocol (SFTP, FTPeS or HTTPS) from or to the File Management MnS Producer.

#### Requirements

File Transfer Requirements specified in clause 7.1.3 of 3GPP TS 28.537 [4] shall apply*.*

#### Procedures

The procedure in the present clause is an example adding to the reader's understanding of the interactions for the corresponding Management Service, aiming to help with the implementation of the O1 Interface specification. It outlines a possible flow and does not introduce new conformance requirements.

**Case 1**: File Management MnS Consumer determines that a file needs to be transferred from the location provided by the File Management MnS Producer as a result of receiving a notifyFileReady notification from the File Management MnS Producer (described in clause 6.5.1).

**Case 2:** File Management MnS Consumer determines that a file needs to be transferred from the File Management MnS Producer as a result of receiving a list of available files from the File Management MnS Producer (described in clause 6.5.2)

**Case 3:** File Management MnS Consumer determines that a file needs to be transferred from the File Management MnS Producer from a known location on the File Management MnS Producer.

**Case 4:** File Management MnS Consumer determines that a file needs to be transferred to the File Management MnS Producer to a known location on the File Management MnS Producer.

File Management MnS Consumer initiates a secure file transfer using FTPeS, SFTP or HTTPS to transfer a file from or to the File Management MnS Producer.

@startuml skin rose

Title File Transfer by File Management MnS Consumer.

Autonumber

participant "File Management MnS Consumer" as NMS participant " File Management MnS Producer" as ME NMS -> ME : <<FTPeS, SFTP or HTTPS>> Transfer File @enduml

![Generated by PlantUML](../assets/images/3dc09bdd5b70.png)

**Figure 6.5.3.3-1 File Transfer by File Management MnS Consumer**

### Download File from remote file server

#### Description

The File Management MnS Consumer has a file that needs to be downloaded to the File Management MnS Producer such as:

* Software file to upgrade software version executed on the File Management MnS Producer
* Beamforming configuration file (Opaque Vendor specific data)
* Machine Learning
* Certificates

The File Management MnS Consumer triggers the file download. The File Management MnS Producer uses a secure file transfer protocol to download the file from the location specified by the File Management MnS Consumer and then notifies the File Management MnS Consumer of the result of the download. In this use case, the File Management MnS Producer is the client. The file could be located on any File Server reachable by the File Management MnS Producer.

#### Requirements

General File Download requirements specified in clause 7.4.3 of 3GPP TS 28.537 [4] shall apply.

#### Procedures

The procedure in the present clause is an example adding to the reader's understanding of the interactions for the corresponding Management Service, aiming to help with the implementation of the O1 Interface specification. It outlines a possible flow and does not introduce new conformance requirements.

@startuml skin rose

Title File Download autonumber "[0]"

participant "File Management MnS Consumer" as NMS participant "File Management MnS Producer" as ME

Participant "File Server" as FS

NMS <-> ME : Establish Netconf Session

NMS -> ME: NETCONF <rpc><file-download><remote-file-path> ME --> NMS: NETCONF <rpc-reply><file-download><status> NMS <-> ME : Terminate Netconf Session

ME <-> FS : <<FTPeS, SFTP or HTTPS>> file download Opt Download Progress Notifications

ME ->> NMS : <<HTTP/TLS>> downloadFile Event End

|||

ME ->> NMS : <<HTTP/TLS>> downloadFile Event @enduml

![Generated by PlantUML](../assets/images/870f45de82e7.png)

###### Figure 6.5.4.3-1 File Download

Procedure:

1. File Management MnS Consumer establishes NETCONF session with File Management MnS Producer.
2. File Management MnS Consumer sends NETCONF RPC file-download request, including the location of the file to download, to the File Management MnS Producer to trigger a file download.
3. File Management MnS Producer replies with its ability to begin the download.
4. File Management MnS Consumer terminates NETCONF session with File Management MnS Producer.
5. File Management MnS Producer sets up a secure connection and downloads the file via a secure file transfer protocol (FTPeS, SFTP or HTTPS) and according to the security protocol specifications [16], clause 6.
6. (Optional) If the download takes a long time, File Management MnS Producer sends periodic downloadFile notifications to the File Management MnS Consumer with the current status of the download (download in progress).
7. When download completes, File Management MnS Producer sends a downloadFile notification to the File Management MnS Consumer with the final status of the download (success, file missing, failure).

#### Operations and Notifications

Refer to clause 5.1 for details on O1 notification formats, including SDO O1 format and VES O1 format notifications, categorized as Harmonized VES.

NOTE: There are no File Download notifications defined in the present document.

### Void

## Heartbeat Management Capability

### Overview

Heartbeat management capability allows an MnS Producer to send heartbeats to an MnS Consumer (i.e. a notification recipient, according to 3GPP TS 28.622 [7], clause 4.3.21.1) and allows an MnS Consumer to configure the heartbeat services on an MnS Producer.

Stage 1 Heartbeat management capability is specified in 3GPP TS 28.537 [4]. This 3GPP specification is aligned with the Services Based Management Architecture (SBMA) approach defined in 3GPP TS 28.533 [i.4] clause 4 and contains Use Cases, Requirements and Procedures for configuring the heartbeat period, reading the heartbeat period, triggering an immediate heartbeat notification and emitting a periodic heartbeat notification.

Stage 2 notifyHeartbeat notification is specified in 3GPP TS 28.532 [3].

Stage 2 HeartbeatControl IOC is specified in 3GPP TS 28.622 [7] clause 4.3.21.

Stage 3 Solution Sets for XML, JSON and YANG are specified in 3GPP TS 28.623 [23].

### Heartbeat Notification

#### Description

MnS Producer sends asynchronous heartbeat notifications to MnS Consumer at a configurable frequency to allow MnS Consumer to supervise the connectivity from the MnS Producer.

#### Requirements

Requirements for heartbeat notifications specified in 3GPP TS 28.537 [4] clause 4.2.2.2 shall apply.

#### Procedures

Procedures for heartbeat notifications are described in 3GPP TS 28.537 [4] clause 4.3.2 and 4.3.3.

#### Operations and Notifications

Refer to clause 5.1 for details on O1 notification formats, including SDO O1 format and VES O1 format notifications, categorized as Harmonized VES.

The O1-supported 3GPP-specified Heartbeat notification is:

- notifyHeartbeat.

### Heartbeat Control

#### Description

Starting with 3GPP Release 16, dedicated operations for Management Services Use Cases are supported by IOCs with attributes that can be read and/or set using generic provisioning mechanisms. For Heartbeat management capability, a Heartbeat Control IOC is specified in 3GPP TS 28.622 [7] that includes attributes to Get/Set Heartbeat Period, (heartbeatNtfPeriod) and Trigger Immediate Heartbeat (triggerHeartbeatNtf).

#### Requirements

Requirements for heartbeat control specified in 3GPP TS 28.537 [4] clause 4.2.2.1 shall apply. HeartbeatControl IOC definition shall be as specified in 3GPP TS 28.622 [7] clause 4.3.21.

YANG solution set for HeartbeatControl IOC shall be as in 3GPP TS 28.623 [23] clauses 4.4 and E.2.

#### Procedures

Procedures for heartbeat control are described in 3GPP TS 28.537 [4] clause 4.3.1 and 4.3.2.

NETCONF protocol and YANG data models are used to read and configure the heartbeatNtfPeriod and triggerHeartbeatNtf in the HeartbeatControl IOC. Refer to clause 6.1 for procedures to read MOI attributes and modify MOI attributes using NETCONF.

* + - 1. Void

## PNF Startup and Registration Management Services

### Overview

PNF Startup and Registration management services allow a physical PNF Startup and Registration MnS Producer to acquire its network layer parameters either via static procedures (pre-configured in the element) or via dynamic procedures (Plug-n-Connect) during startup. During this process, the PNF Startup and Registration MnS Producer also acquires the IP address of the PNF Startup and Registration MnS Consumer for PNF Startup and Registration MnS Producer registration. Once the PNF Startup and Registration MnS Producer registers, the PNF Startup and Registration MnS Consumer can then bring the PNF Startup and Registration MnS Producer to an operational state.

Relevant 3GPP specifications for PNF Plug-n-Connect (PnC) are 3GPP TS 28.314 [1], 28.315 [2] and 28.316 [i.2].

### PNF Plug-n-Connect

#### Description

PNF Plug-n-Connect (PnC) scenario enables a PNF Startup and Registration MnS Producer to obtain the necessary start- up configuration to allow it to register with a PNF Startup and Registration MnS Consumer for subsequent management.

#### Requirements

Specification requirement for Plug and Connect specified in 3GPP TS 28.314 [1] clause 6.2.1 shall apply.

#### Procedures

Functional elements involved in Plug and Connect MnS Service, for example, IP Autoconfiguration services, DNS server, Certification Authority server, Security gateway and Software and Configuration Server (SCS) are described in 3GPP TS 28.315 [2] clause 4.2.

Plug-and-Connect and related procedures are described in 3GPP TS 28.315 [2] clause 5.

### PNF Registration

#### Description

PNF Startup and Registration MnS Producer sends an asynchronous pnfRegistration or o1NotifyPNFRegistration event to a PNF Startup and Registration MnS Consumer after PnC to notify PNF Startup and Registration MnS Consumer of new PNF Startup and Registration MnS Producer to be managed.

#### Requirements

REQ-PNFR-FUN-1: The PNF Startup and Registration MnS Producer shall support sending the PNF Registration Notifications (see clause 6.7.2.4) upon PNF reset and/or registration events resulting in O1 connection re-establishment.

#### Procedures

The procedure in the present clause is an example adding to the reader's understanding of the interactions for the corresponding Management Service, aiming to help with the implementation of the O1 Interface specification. It outlines a possible flow and does not introduce new conformance requirements.

PNF Registration procedures are illustrated by Figure 6.7.2.3-1.

@startuml skin rose

Title PNF Registration Notification Autonumber

participant "PNF Startup and Registration MnS Consumer" as NMS participant " PNF Startup and Registration MnS Producer" as ME Note over ME : PnC completes

ME ->> NMS : <<HTTP/TLS>> pnfRegistration or o1NotifyPNFRegistration Event Note over NMS : Register PNF

@enduml

![Generated by PlantUML](../assets/images/35fb05983040.png)

###### Figure 6.7.2.3-1 PNF Registration Notification

Pre-condition:

- PNF completes Plug-n-Connect.

Procedure:

1. PNF Startup and Registration MnS Producer sends pnfRegistration or o1NotifyPNFRegistration notification event to PNF Startup and Registration MnS Consumer over HTTP/TLS. Mutual certificate authentication is performed.

Post-condition:

- PNF Startup and Registration MnS Consumer registers the PNF Startup and Registration MnS Producer so that it can be managed.

#### Operations and Notifications

Refer to clause 5.1 for details on O1 notification formats, including SDO O1 format and VES O1 format notifications, categorized as Legacy VES and Harmonized VES.

The O-RAN-specified PNF Registration notification is:

* o1NotifyPNFRegistration, defined in table 6.7.2.4-1.

###### Table 6.7.2.4-1

|  |  |  |  |
| --- | --- | --- | --- |
| **Parameter Name** | **S** | **Information Type** | **Comment** |
| objectClass | M | ManagedEntity.objectClass | Class of the managed object, registering  for service as defined in clause 11.1.1.7.2 of 3GPP TS 28.532 [3]. |
| objectInstance | M | ManagedEntity.objectInstance | Instance of the managed object, registering for service as defined in  clause 11.1.1.7.2 of 3GPP TS 28.532 [3]. |
| notificationId | M | NotificationId | Identifier for the subject notification as defined in clause 11.1.1.7.2 of 3GPP TS  28.532 [3]. |
| notificationType | M | "o1notifyPnfRegistration" |  |
| eventTime | M | DateTime | Time when the NF is sending the  registration as defined in clause  11.1.1.7.2 of 3GPP TS 28.532 [3]. |
| systemDN | M | SystemDN | DN of the MnS Producer of the  notification as defined in clause  11.1.1.7.2 of 3GPP TS 28.532 [3]. |
| o1SpecVersion | M | number | Version of the O1 Specification defining the format of this PNF registration  notification |
| serialNumber | M | string | serialNumber = serial number of the unit as defined in clause 4.4.1 of 3GPP TS  28.632 [25]. |
| vendorName | M | string | vendorName = name of the NF vendor as defined in clause 4.4.1 of 3GPP TS 28.632 [25]. |
| oamV4IpAddress | CM | string | IPv4 OAM IP address to be used by the manager to contact the NF. |
| oamV6IpAddress | CM | string | IPv6 OAM IP address to be used by the manager to contact the NF. |
| macAddress | O | string | MAC address of the OAM of the unit |
| unitFamily | O | string | vendorUnitFamilyType = general type of HW unit as defined in clause 4.4.1 of 3GPP TS 28.632 [25]. |
| unitType | O | string | vendorUnitTypeNumber = vendor name  for the unit as defined in clause 4.4.1 of 3GPP TS 28.632 [25]. |
| modelNumber | O | string | versionNumber = version of the unit from  the vendor as defined in clause 4.4.1 of 3GPP TS 28.632 [25]. |
| softwareVersion | O | string | swVersion = Version identifier of the software unit. This is the software provided by the vendor at onboarding to be run on this version of the NF and can contain multiple underlying software images as defined in clause 4.4.1 of  3GPP TS 28.632 [25]. |
| softwareName | O | string | swName = software release name as defined in clause 4.4.1 of 3GPP TS  28.632 [25]. |
| restartReason | O | string | Reason the NF restarted, if known |
| manufactureDate | O | DateTime | dateOfManufacture = manufacture date  of the unit as defined in clause 4.4.1 of 3GPP TS 28.632 [25]. |
| lastServiceDate | O | DateTime | dateOfLastService = date of last service  or repair of the unit as defined in clause  4.4.1 of 3GPP TS 28.632 [25]. |
| additionalFields | O | hashMap | Additional registration fields if needed, provided as key-value pairs. |
| CM: Either oamV4IpAddress or oamV6IpAddress shall be provided depending upon what the network function supports. | | | |

The VES legacy PNF Registration notification is:

* pnfRegistration.

## PNF Software Management Services

### Overview

Software management services allow a PNF Software MnS Consumer to request a physical PNF Software MnS Producer to download, install, validate and activate a new software package and allow a physical PNF Software MnS Producer to report its software versions.

### Software Package Naming and Content

PNF Software Package naming, content and format are vendor specific and do not require standardization in O-RAN. A PNF Software Package contains one or more files. Some of the files in the Software Package are optional for the PNF (example: a file that has not changed version). The PNF is aware of the content and format of its available Software Packages and can determine which files it needs to download.

The softwarePackage Managed Object Class (MOC) contains attributes about a software package such as:

* software package name;
* version;
* fileList;
* integrityStatus (valid, invalid, empty);
* runningState (active, passive);
* vendor;
* productName;
* softwareType (operational, factory);
* etc.

This MOC is applicable to VNFs and PNFs and is a generic term that O-RAN will use to refer to the software available on the PNF rather than the legacy term of software slot.

The PNF creates one instance of softwarePackage for each software package supported concurrently on the PNF. Typically, a PNF will have two softwarePackage MOIs for operational software; one with runningState = active and one with runningState = passive. Some PNFs also have a softwarePackage MOI for the factory software which would be read only. O-RAN can have PNFs that support more than one passive slot. In this case the inventory query result would show multiple MOIs with runningState=passive.

### Software Inventory

#### Description

The PNF Startup and Registration MnS Consumer sends a Software Inventory Request and retrieves information about the software packages on the PNF Software MnS Producer.

#### Requirements

REQ-SWI-FUN-1: The PNF software management service producer shall have the capability to provide its authorized consumer information about the software packages on the PNF software management service producer.

#### Procedures

The procedure in the present clause is an example adding to the reader's understanding of the interactions for the corresponding Management Service, aiming to help with the implementation of the O1 Interface specification. It outlines a possible flow and does not introduce new conformance requirements.

@startuml skin rose

Title Software Inventory autonumber "[0]"

participant "PNF Software MnS Consumer" as NMS participant "PNF Software MnS Producer" as ME NMS <-> ME : Establish NETCONF Session

NMS -> ME: NETCONF <rpc> <get><filter>

Note over ME : Retrieve Software Inventory Information ME --> NMS: NETCONF <rpc-reply> <data>

NMS <-> ME : Terminate NETCONF Session @enduml

![Generated by PlantUML](../assets/images/4319b6eca468.png)

###### Figure 6.8.2.3-1 Software Inventory

Procedure:

1. PNF Software MnS Consumer establishes NETCONF session with PNF Software MnS Producer. The NETCONF session has authorized read privileges into the identified section of the data store.
2. PNF Software MnS Consumer sends NETCONF <rpc> <get><filter> to retrieve an optionally filtered subset configuration from the running configuration datastore. <filter> can be used to identify the software package MOIs. GET retrieves configuration and operational state of softwarePackage MOIs:
   1. PNF Software MnS Producer retrieves software inventory information.
3. PNF Software MnS Producer returns requested data in NETCONF <rpc-reply> response.
4. PNF Software MnS Consumer terminates NETCONF session with PNF Software MnS Producer.

### Software Download

#### Description

Software Download triggers the download of a specific software package to the PNF Software MnS Producer. This download service includes integrity checks on the downloaded software and the installation of the software into the software slot corresponding to the softwarePackage MOI.

#### Requirements

REQ-SWD-FUN-1: The PNF software management service producer shall have the capability to allow its authorized consumer to specify the location of software that is to be downloaded and to specify into which softwarePackage the software is to be stored.

REQ-SWD-FUN-2: The PNF software management service producer shall have the capability to verify if a software download is in progress and the ability to reject subsequent download commands until the one in progress completes.

REQ-SWD-FUN-3: The PNF software management service producer shall have the capability to deny download of software if the download request is not valid for the PNF software management service producer.

REQ-SWD-FUN-4: The PNF software management service producer shall have the capability to download needed files from a software server at a specified location.

REQ-SWD-FUN-5: The PNF software management service producer shall have the capability to perform integrity checks on downloaded software.

REQ-SWD-FUN-6: The PNF software management service producer shall have the capability to notify the PNF software management consumer with the software download result.

#### Procedures

The procedure in the present clause is an example adding to the reader's understanding of the interactions for the corresponding Management Service, aiming to help with the implementation of the O1 Interface specification. It outlines a possible flow and does not introduce new conformance requirements.

@startuml skin rose

Title Software Download autonumber "[0]"

participant "PNF Software MnS Consumer" as NMS participant "PNF Software MnS Producer" as ME participant "Software Server" as SWS

NMS <-> ME : Establish NETCONF Session

NMS -> ME: NETCONF <rpc><software-download><remote-file-path><softwarePackage> Note over ME : Validate Request

ME --> NMS: NETCONF <rpc-reply><software-download-status> NMS <-> ME : Terminate NETCONF Session

ME -> SWS : <<FTPeS, SFTP or HTTPS>> file download Note over ME : Integrity check SW

Note over ME : Store SW in a persistent location Note over ME : Update softwarePackage

Opt Download Progress Notifications

ME ->> NMS : <<HTTP/TLS>> downloadFile Event End

|||

ME ->> NMS : <<HTTP/TLS>> downloadFile Event @enduml

![Generated by PlantUML](../assets/images/b8c9bc64a3e9.png)

###### Figure 6.8.3.3-1 Software Download

Procedure:

1. PNF Software MnS Consumer establishes NETCONF session with PNF Software MnS Producer. The NETCONF session has authorized execution privileges for retrieve file list and file-download rpcs.
2. PNF Software MnS Consumer sends NETCONF <rpc><software-download><remote-file- path><softwarePackage> to trigger a download of the software located at remoteFilePath and save its information in softwarePackage:
   1. PNF Software MnS Producer validates the request. Validation includes determining if the operation can be performed. This is PNF Software MnS Producer specific but could include things like: checking that there is not a software download already in progress, softwarePackage is runningState = passive and softwareType = operational, etc.
3. PNF Software MnS Producer returns NETCONF <rpc-reply><software-download-status>.
4. PNF Software MnS Consumer terminates NETCONF session with PNF Software MnS Producer.
5. PNF Software MnS Producer initiates a secure connection and downloads via a secure file transfer protocol (FTPeS, SFTP or HTTPS) and according to the security protocol specifications [16], clause 6, the software package from remoteFilePath. PNF Software MnS Producer understands the software package format and downloads all the files it needs from the package. PNF Software MnS Producer decides where to store the software internally. This is PNF Software MnS Producer specific but could be a temporary location like /tmp:
   1. PNF Software MnS Producer integrity checks the downloaded software. This is PNF Software MnS Producer specific but could include checking checksum, correct software for the hardware, etc.
   2. PNF Software MnS Producer stores the software in a persistent location.
   3. PNF Software MnS Producer updates softwarePackage attributes for the downloaded software.
6. (Optional) If the download takes a long time, PNF Software MnS Producer may send periodic downloadFile notifications to the PNF Software MnS Consumer with the current status of the download (download in progress, integrity checks passed, install complete).
7. When download operation completes, PNF Software MnS Producer sends downloadFile event notification to PNF Software MnS Consumer with the final status of the download (success or the reason for failure).

#### Operations and Notifications

Refer to clause 5.1 for details on O1 notification formats, including SDO O1 format and VES O1 format notifications, categorized as Harmonized VES.

NOTE: There are no File Download notifications defined in the present document.

### Software Activation Pre-Check

#### Description

Activation Pre-check is an optional Use Case that the Service Provider can choose to utilize prior to software activation to confirm that the PNF Software MnS Producer is in a good state to activate the new software and provide information needed for planning the timing of the software replacement--such as whether a reset or a data migration is required.

#### Requirements

REQ-SPC-FUN-1: The PNF software management service producer shall have the capability to confirm that the software in the passive slot targeted for activation is good.

REQ-SPC-FUN-2: The PNF software management service producer shall have the capability to determine whether the activation of the targeted software requires a reset and/or data migration.

#### Procedures

The procedure in the present clause is an example adding to the reader's understanding of the interactions for the corresponding Management Service, aiming to help with the implementation of the O1 Interface specification. It outlines a possible flow and does not introduce new conformance requirements.

@startuml skin rose

Title Activation Pre-Check autonumber "[0]"

participant "PNF Software MnS Consumer" as NMS participant "PNF Software MnS Producer" as ME NMS <-> ME : Establish NETCONF Session

NMS -> ME: NETCONF <rpc><activation-pre-check><softwarePackage> Note over ME : Perform Pre-Check

ME --> NMS: NETCONF <rpc-reply> <data> NMS <-> ME : Terminate NETCONF Session @enduml

![Generated by PlantUML](../assets/images/03d754ac336f.png)

###### Figure 6.8.4.3-1 Software Activation Pre-Check

Procedure:

1. PNF Software MnS Consumer establishes NETCONF session with PNF Software MnS Producer.
2. PNF Software MnS Consumer sends NETCONF <rpc><activation-pre-check><softwarePackage> to trigger a pre-check of the software stored in softwarePackage and to return the results of the pre-check:
   1. PNF Software MnS Producer performs the activation pre-check which includes validating that the software in softwarePackage is good, whether the activation of the software in softwarePackage will result in a reset and whether data migration is needed, etc.
3. PNF Software MnS Producer returns NETCONF <rpc-reply> to the PNF Software MnS Consumer with the results of the pre-check.
4. PNF Software MnS Consumer terminates NETCONF session with PNF Software MnS Producer.

### Software Activate

#### Description

PNF Software MnS Consumer triggers the activation of a software package on the PNF Software MnS Producer including data migration and reset if needed.

#### Requirements

REQ-SWA-FUN-1: The PNF software management service producer shall have the capability to allow its authorized consumer to activate valid software in a specific softwarePackage.

REQ-SWA-FUN-2: The PNF software management service producer shall have the capability to verify whether a software activation is in progress and deny a concurrent activation of software.

REQ-SWA-FUN-3: The PNF software management service producer shall have the capability to deny activation of software if the activation request is not valid for the PNF software management service producer.

REQ-SWA-FUN-4: The PNF software management service producer shall have the capability to activate the softwarePackage.

REQ-SWA-FUN-5: The PNF software management service producer shall have the capability to reset the PNF software management service producer if the software activation requires it.

REQ-SWA-FUN-6: The PNF software management service producer shall provide the capability for the PNF software management service producer to send a re-set reason notification to its authorized consumer if the activation results in a reset.

REQ-SWA-FUN-7: The PNF software management service producer shall have the capability to perform data migration on the PNF software management service producer if the software activation requires it.

REQ-SWA-FUN-8: The PNF software management service producer shall have the capability to fallback to the previously active software if the new software cannot be activated.

REQ-SWA-FUN-9: The PNF software management service producer shall have the capability to fallback to the factory software if the new and the previously active software can not be activated.

#### Procedures

The procedure in the present clause is an example adding to the reader's understanding of the interactions for the corresponding Management Service, aiming to help with the implementation of the O1 Interface specification. It outlines a possible flow and does not introduce new conformance requirements.

@startuml skin rose

Title Software Activate autonumber "[0]"

participant "PNF Software MnS Consumer" as NMS participant "PNF Software MnS Producer" as ME NMS <-> ME : Establish NETCONF Session

NMS -> ME: NETCONF <rpc><software-activate><softwarePackage> Note over ME : Validate request

ME --> NMS: NETCONF <rpc-reply> <status> NMS <-> ME : Terminate NETCONF Session Note over ME : Activate Software

Alt if Data Migration or Reset are needed then Alt if Data Migration Needed then

Note over ME : Migrate Data if needed

||| End

Alt if Reset Needed then Note over ME : Reset

ME ->> NMS : <<HTTP/TLS>> resetReason Event

||| End

||| End

Alt if Activation fails then

Note over ME : Fallback if failure

||| End

Opt Activation Progress Notifications

ME ->> NMS : <<HTTP/TLS>> softwareActivate Event End

|||

ME ->> NMS : <<HTTP/TLS>> softwareActivate Event Note over ME : Config change occurs

ME ->> NMS : <<HTTP/TLS>> notifyMOIAttributeValueChange Event Note over NMS : Reconcile Database

@enduml

![Generated by PlantUML](../assets/images/739150020271.png)

###### Figure 6.8.5.3-1 Activate Software

Procedure:

1. PNF Software MnS Consumer establishes NETCONF session with PNF Software MnS Producer.
2. PNF Software MnS Consumer sends NETCONF <rpc><software-activate><softwarePackage> to trigger an activation of the software in softwarePackage:
   1. PNF Software MnS Producer validates the request. This is PNF Software MnS Producer specific but could include things like checking that there is not a software activation already in progress, softwarePackage is runningState = passive and integrityStatus = valid, etc.
3. PNF Software MnS Producer returns status to the PNF Software MnS Consumer in the NETCONF <rpc- reply> response:
   1. PNF Software MnS Producer performs the steps needed to make the softwarePackage the active one. This is PNF Software MnS Producer specific but includes things like updating the runningState of the about-to-be-active and previously-active software packages.
4. PNF Software MnS Consumer terminates NETCONF session with PNF Software MnS Producer.

(Optional) PNF Software MnS Producer performs data migration if necessary. PNF Software MnS Producer knows whether this is necessary.

1. (Optional) PNF Software MnS Producer performs reset if necessary. PNF Software MnS Producer knows whether reset is necessary. If a reset occurs, PNF Software MnS Producer sends a resetReason notification to the PNF Software MnS Consumer with the reason for the reset; in this case software activation.

(Optional) If the PNF Software MnS Producer can not activate the software, PNF Software MnS Producer has recovery logic to fallback to the previously active software and potentially fallback to the factory software in a worst-case scenario.

1. (Optional) If the activation takes a long time, PNF Software MnS Producer sends periodic softwareActivate notifications to PNF Software MnS Consumer with the current status of the activation (e.g. activation in progress, data migration successful).
2. After activation operation completes, PNF Software MnS Producer sends a softwareActivate notification to PNF Software MnS Consumer with the final status of the activation.
3. PNF Software MnS Producer sends notifyMOIAttributeValueChange to the PNF MnS Consumer updating the active software running on the PNF.

#### Operations and Notifications

Refer to clause 5.1 for details on O1 notification formats, including SDO O1 format and VES O1 format notifications, categorized as Harmonized VES.

NOTE: There are no Software Activate notifications defined in the present document.

## PNF Reset Management Services

### Overview

PNF Reset Management Services allow a PNF Reset MnS Consumer to trigger a reset of a HW unit of a PNF Reset MnS Producer on command.

### PNF Reset Command

#### Description

The PNF Reset Command procedure allows a PNF Reset MnS Consumer to trigger a reset of a HW unit of a PNF Reset MnS Producer on command. Any HW unit that is resettable via a reset command is represented by a managed object

instance (MOI) and is able to be identified by a distinguished name (DN). The NETCONF RPC <reset> command identifies the unit to reset by the DN. The unit to reset can be the entire PNF or a resettable HW subcomponent of the PNF. A resettable HW subcomponent of a PNF is a subcomponent of a PNF that is able to be independently reset and whose PNF Reset MnS Producer supports a reset command for the subcomponent. It is vendor and PNF-specific whether a PNF has resettable HW subcomponents. The reset command also has an attribute to identify the type of reset requested. The types of reset commands that a PNF supports are vendor and PNF specific. O-RAN O1 Interface Specification specifies two mandatory reset command types that every PNF supports: conditional and forced. A conditional reset command can be rejected by the PNF Reset MnS Producer depending on the conditions on the PNF, for example if the unit to reset is not in a proper state to reset, such as, if there is an emergency call in progress on the unit. A valid forced reset command cannot be rejected. Valid means that the unit to reset supports a reset command.

Invalid forced resets will be rejected, for example, if the unit to reset is not a resettable HW unit, such as a cell. Vendors are allowed to extend the O1 specified reset command types to add vendor and PNF specific reset command types.

#### Requirements

REQ-RM-FUN-1: The PNF Reset MnS Producer shall support the capability for a PNF Reset MnS Consumer to trigger a reset of a HW unit of the PNF Reset MnS Producer on command.

REQ-RM-FUN-2: The PNF Reset MnS Producer shall support reset command types conditional and forced. REQ-RM-FUN-3: The PNF Reset MnS Producer shall be allowed to reject a conditional reset command type.

NOTE 1: The validations performed and the reasons for a conditional reset rejection, if any, are vendor and PNF specific.

REQ-RM-FUN-4: The PNF Reset MnS Producer shall not be allowed to reject a valid forced command reset type.

NOTE 2: Valid means that the unit to reset supports a reset command. Invalid forced resets will be rejected, for example, if the unit to reset is not a resettable HW unit, such as a cell.

#### Procedures

The procedure in the present clause is an example adding to the reader's understanding of the interactions for the corresponding Management Service, aiming to help with the implementation of the O1 Interface specification. It outlines a possible flow and does not introduce new conformance requirements.

This procedure shows how a PNF Reset MnS Consumer triggers a reset of a HW unit of a PNF Reset MnS Producer on command. The HW unit to reset is identified by the <unitToReset> input attribute. The type of reset command is identified by the <resetCommandType> input attribute. The <status> output attribute returned in the NETCONF response indicates whether the reset command has been accepted. The unit is reset after the NETCONF response is returned. The reason for the reset (e.g., conditional reset command or forced reset command) is persistently stored by PNF Reset MnS Producer before executing the reset

@startuml skin rose

Title PNF Reset Command

participant "PNF Reset MnS Consumer" as NMS participant " PNF Reset MnS Producer" as ME

NMS -> ME: 1 NETCONF <rpc><reset><unitToReset><resetCommandType> Note over ME : 2 Validate command \n Save reset reason

ME --> NMS: 3 NETCONF <rpc-reply><reset><status>

Note over ME : 4 Reset unit @enduml

![Generated by PlantUML](../assets/images/958484e4616e.png)

###### Figure 6.9.1.3-1 PNF Reset Command

Pre-conditions:

* PNF Reset MnS Consumer has established a NETCONF session to the PNF Reset MnS Producer as described in Provisioning Management Services, clause 6.1.8. The NETCONF session has authorized execution privileges for <reset> RPC.
* (Optionally) PNF Reset MnS Consumer has locked the appropriate DS of the PNF Reset MnS Producer as described in Provisioning Management Services, clause 6.1.10.

Procedure:

1. PNF Reset MnS Consumer sends NETCONF <rpc> <reset> <unitToReset><resetCommandType> to PNF Reset MnS Producer, indicating the unit to reset and the type of reset command.
2. PNF Reset MnS Producer validates the command. Validation is vendor and PNF specific but typically includes verifying that the <unitToReset> is resettable and can be reset at this time. A conditional reset command type allows the PNF Reset MnS Producer to reject the reset command, depending on the conditions on the PNF, for example if an emergency call is in progress. The conditions are vendor and PNF specific. A valid forced reset command type cannot be rejected. Valid means that the unit to reset supports a reset command. Invalid forced resets will be rejected, for example if the unit to reset is not a resettable HW unit, such as a cell. If the reset command is accepted, the reset reason (e.g., conditional reset command or forced reset command) is stored persistently on the PNF Reset MnS Producer.
3. PNF Reset MnS Producer responds, indicating in the <status> attribute whether the command is accepted. If the command is rejected, the <rpc-reply> contains an <rpc-error> element with the reason for the rejection.
4. Unit is reset.

Post-conditions

* + (Optionally) PNF Reset MnS Consumer unlocks the DS of the PNF Reset MnS Producer after sending the reset command, as described in Provisioning Management Services, clause 6.1.11.
  + (Optionally) PNF Reset MnS Consumer terminates the NETCONF session to the PNF Reset MnS Producer after sending the reset command, as described in Provisioning Management Services, clause 6.1.9.

#### Operations

Information Model and YANG solution set for the NETCONF RPC <reset> command and its attributes will be specified in the O-RAN O1 Network Resource Model Specification [i.16].

### Notifications

REQ-RN-FUN-1: A PNF MnS Producer shall support the capability to inform a PNF MnS Consumer that a reset has occurred and the reason that a HW unit has reset.

REQ-RN-FUN-2: A PNF MnS Producer shall save the reason for a reset persistently before resetting.

NOTE 1: This requirement applies to resets that occur under the control of the PNF.

REQ-RN-FUN-3: If a reset reason has not been saved persistently, the PNF MnS Producer shall set the reset reason to unknown in the notification.

NOTE 2: This requirement applies to resets that occur unexpectedly before the reset reason could be stored.

## Cloudified NF Registration Management Service

### Overview

The Cloudified NF Registration Management Service supports the registration of a Cloudified NF Registration Management Service Producer to the Cloudified NF Registration Management Service Consumer after the Cloudified NF instantiation via the O2 has completed and the NF application has initialized and is ready for final configuration and management (e.g., ready to be put in service). Application initialization includes things like setting up the NETCONF server, creating MOIs for the NF, and perhaps some vendor specific steps which can take place after the Cloudified NF instantiation completes. The Cloudified NF Registration MnS is applicable to VNFs and CNFs and supports the NF informing the SMO when it has completed its initialization steps and is ready to be managed. Without this service, the SMO would have to poll the NF until the NF responded that it had completed its application initialization and was ready for final configuration (if needed) and management. Registration is accomplished by sending a Cloudified NF Registration notification.

### Cloudified NF Registration Notification

#### Description

To register, the Cloudified NF Registration MnS Producer sends an asynchronous o1NotifyCloudNFRegistration event to a Cloudified NF Registration MnS Consumer to notify the Cloudified NF Registration MnS Consumer of a new Cloudified NF Registration MnS Producer to be managed. The Cloudified NF Registration Producer will periodically send the o1NotifyCloudNFRegistration event (at vendor specified intervals) until a NETCONF session is established. This indicates that the Cloudified NF Registration MnS Producer has registered, and the Cloudified NF Registration MnS Consumer can begin managing the Cloudified NF Registration MnS Producer and bring the Cloudified NF Registration MnS Producer to an operational state.

NOTE: The o1NotifyCloudNFRegistration notification does not require a subscription. It is sent after the application comes up if a Cloudified NF Registration MnS Consumer address (e.g., IP@ or FQDN) is obtained during instantiation or is pre-provisioned. The o1NotifyCloudNFRegistration notification is also sent after a restart for the VNF/CNF.

#### Requirements

REQ-CNFR-FUN-1: The Cloudified NF Registration MnS Producer shall support the capability to send a o1NotifyCloudNFRegistration notification to the Cloudified NF Registration MnS Consumer when it has completed instantiation and application initialization and is ready for final configuration and to be managed by the Cloudified NF Registration MnS Consumer.

REQ-CNFR-FUN-2: The Cloudified NF Registration MnS Producer shall support the capability to send a o1NotifyCloudNFRegistration notification to the Cloudified NF Registration MnS Consumer when it completes a restart.

#### Procedures

The procedure in the present clause is an example adding to the reader's understanding of the interactions for the corresponding Management Service, aiming to help with the implementation of the O1 Interface specification. It outlines a possible flow and does not introduce new conformance requirements.

The Cloudified NF Registration MnS Producer sends an asynchronous HTTP/TLS o1NotifyCloudNFRegistration notification to the Cloudified NF Registration MnS Consumer after it has been instantiated via the O2 interface, completed application initialization and is ready for final configuration and to be managed (put into service).

@startuml skin rose

Title Cloudified NF Registration

participant "Cloudified NF Registration MnS Consumer" as NMS participant "Cloudified NF Registration MnS Producer" as ME

Note over ME : NF has completed instantiation and application initialization and is ready to be managed

ME ->> NMS : 1 <<HTTP/TLS>> o1NotifyCloudNFRegistration Notification @enduml

![Generated by PlantUML](../assets/images/a1cb7c1c35ee.png)

###### Figure 6.10.1.3 Cloudified NF Registration Procedure

Pre-condition:

* NF has been instantiated via the O2.
* Cloudified NF Registration MnS Consumer address is obtained during instantiation or is pre-provisioned.
* Cloudified NF Registration MnS Producer has completed application initialization and is ready to be managed.

Procedure:

1. Cloudified NF Registration MnS Producer sends o1NotifyCloudNFRegistration notification to Cloudified NF Registration MnS Consumer over HTTP/TLS. Mutual certificate authentication is performed.

#### Operations and Notifications

Refer to clause 5.1 for details on O1 notification formats, including SDO O1 format and VES O1 format notifications, categorized as Harmonized VES.

NOTE: There are no Cloudified NF Registration notifications defined in the present document.

# Annex A: Void

# Annex B: (informative) Guidelines and Example for stndDefined VES Events

## B.1: Guidelines for use of stndDefined VES for sending 3GPP- specified or O-RAN-specified O1 notifications

A stndDefined VES event, as specified in VES Event Listener Specification [18], allows a VES event to carry, as its payload, a notification specified by an SDO. In the case of O-RAN O1 Interface Specification, a harmonized stndDefined VES event carries either a 3GPP-specified O1 notification or an O-RAN-specified O1 notification as its payload.

3GPP has published an informative Annex B in 3GPP TS 28.532 [3] providing guidelines for the integration of 3GPP- specified notifications with VES. This annex expands on the information provided by 3GPP, including information on how to include O-RAN-specified O1 notifications in a VES stndDefined event.

When an O-RAN and 3GPP compliant ME supports VES stndDefined events for sending asynchronous notifications, a3GPP-specified O1 notification, as defined by 3GPP, or an O-RAN-specified O1 notification, as defined by O-RAN, is included in the event.

A VES common event header, as defined by VES Event Listener Specification [18], is added to the notification.

In VES, the domain field in the common event header is used to route the event to the proper consumers and to map to a schema for the event payload. VES Event Listener Specification [18] added a new domain field enumeration value called stndDefined that indicates that the event is complying with a schema defined by a standards body.

An additional field was added to the VES common event header called stndDefinedNamespace, which contains a valid namespace as defined by the standards body. This field is only populated when the domain is stndDefined. 3GPP has defined four namespaces in 3GPP TS 28.532 [3] Annex B; namely 3GPP-Provisioning, 3GPP-Heartbeat, 3GPP- FaultSupervision and 3GPP-PerformanceAssurance. O-RAN has defined a namespace for the notifications it defines. Refer to clause 5.2.2 for details. A VES collector uses the stndDefinedNamespace, along with the stndDefined domain, to route the event to the correct consumer.

A stndDefined VES event has a field structure called stndDefinedFields, specified in VES Event Listener Specification [18]. This structure contains three properties:

* schemaReference (type = string, format = uri)
* data (JSON object which is identical to the 3GPP or O-RAN notification)
* stndDefinedFieldsVersion (type = string, format = enum)

The schemaReference, if present, is used to verify that the notification content is correct. 3GPP is publishing the notification schemas defined using OpenAPI, to a public repository, (https://forge.3gpp.org/rep/sa5) so that schema references can be included in the event. Likewise, O-RAN will define its notification schemas using OpenAPI and publish them in a public repository. This repository is still to be created.

The data element contains either a 3GPP-specified O1 notification, in JSON format, as specified in 3GPP TS 28.532 [3] or an O-RAN-specified O1 notification, in JSON format, as specified in O-RAN O1 Network Resource Model Specification [i.16].

The stndDefinedFieldsVersion provides the version of the stndDefinedFields structure, as defined by VES Event Listener Specification [18].

Clause B.2 provides an example of a stndDefined VES event for a new alarm notification.

## 2: Example stndDefined VES event for a new alarm notification

The following example illustrates the population of a new alarm notification using a stndDefined VES event. The VES Common Header as shown in the example below, contains:

* + the domain set to stndDefined
  + the stndDefinedNamespace set to 3GPP-FaultSupervision.

The stndDefinedFields structure as shown in the example below, contains:

* + the 3GPP schema reference for the 3GPP fault notification type
  + the data element which contains the full 3GPP notifyNewAlarm fault notification
  + the version of the stndDefinedFields.

Mapping of DN to URI is described in 3GPP TS 32.158 [i.15]

|  |  |  |
| --- | --- | --- |
| **Mapping** | **DN (Distinguished Name)** | **URI part** |
| DN-prefix | "DC=operatorA.com,SubNetwork=south" (see note) | "south.SubNetwork.operatorA.com" |
| LDN | "ManagedElement=1,GNBDUFunction=1" | "/ManagedElement=1/GNBDUFunction=1" |
| NOTE: DC is Domain Component | | |

The value for href in the example below is derived according to the table above, mapping the Distinguished Name prefix (DN-prefix) and the Local Distinguished Name (LDN), respectively, to the authority component and the path component of the URI in order to be globally unique.

{

"event": {

"commonEventHeader": { "domain": "stndDefined",

"eventId": "stndDefined-gNB-Nokia-000001",

"eventName": "stndDefined-gNB-Nokia-ProcessingErrorAlarm-351", "lastEpochMicrosec": 1594909352208000,

"priority": "Normal", "reportingEntityName": "NOKb5309", "sequence": 0,

"sourceName": "NOKb5309", "startEpochMicrosec": 1594909352208000,

"stndDefinedNamespace": "3GPP-FaultSupervision", "timeZoneOffset": "UTC-05:00",

"version": "4.1",

"vesEventListenerVersion": "7.2"

},

"stndDefinedFields": {

"schemaReference": "https://forge.3gpp.org/rep/sa5/MnS/-/blob/Rel- 18/OpenAPI/TS28111\_FaultNrm.yaml#/components/schemas/NotifyNewAlarm",

"data": {

"href": "[http://south.SubNetwork.operatorA.com/ManagedElement=1/GNBDUFunction=1](http://south.SubNetwork.operatorA.com/ManagedElement%3D1/GNBDUFunction%3D1)", "notificationId": 123,

"notificationType": "notifyNewAlarm", "eventTime": "2023-11-15T23:20:50.52-05:00",

"systemDN": "DC=operatorA.com,SubNetwork=south,ManagedElement=1,MnSAgent=1" "probableCause": 351,

"perceivedSeverity": "MAJOR", "specificProblem": 7052, "additionalText": "xyz", "additionalInformation": {

"svc" : "alarm-svc-1"

},

"alarmId": "15",

"alarmType": "PROCESSING\_ERROR\_ALARM"

},

"stndDefinedFieldsVersion": "1.0"

} // stndDefinedFields

} //event

}

# Annex C: (informative) Streaming Trace Management Activation Example

Example with Management-based Trace Activation, Data Reporting and Deactivation for Streaming Trace follows. The sequence below is based on 3GPP specifications which are referred in clause 6.4.

@startuml skin rose

Title Streaming Trace Connection Establishment, Data Reporting and Deactivation autonumber "[0]"

participant "Provisioning MnS Consumer" as NMS participant "Trace MnS Producer" as ME participant "Trace MnS Consumer" as TMC

NMS --> ME : Trace Job Configuration create traceJob MOI ME --> NMS : notifyMOIChanges

Opt (No connection to the Trace Mns Consumer exists)

ME -> TMC : establishStreamingConnection (HTTP POST request (SourceID, Trace Session Information))

TMC -> ME : HTTP: response (Connection ID)

ME -> TMC : HTTP GET request(Connection ID, Upgrade Header) TMC -> ME : HTTP: response (Sec-WebSocket-Accept)

End

Opt

ME -> TMC: AddStream Operation (HTTP ADD) End

|||

ME -> ME: Start Trace Session

ME -> TMC: Trace Session Start administrative message loop (while trace session is active)

Opt (trace stream heartbeat)

ME -> ME: Hearbeat sending criteria are met Note right

The criteria for sending heartbeat administrative messages are implementation specific

End note

ME -> TMC: Trace Stream Heartbeat administrative message End

loop (Trace recording session handling)

ME -> ME: "start" triggering event detected

ME -> ME: Start Trace Recording Session and allocate new TRS (embedded in a reportStreamData Operation)

ME -> TMC : Trace Recording Session Start administrative message

loop (until "stop" triggering event is detected)

loop (until reporting condition is satisfied)

ME -> ME: Capture trace record

End

ME -> TMC: "reportStreamData(traceRecords)"

End

ME -> ME: Recording session complete/stop criteria are met ME -> ME: Stop trace recording session

ME -> TMC: Trace Recording Session Stop administrative message

End

End

NMS --> ME: Trace Session Deactivation/Configuration ME -> ME: Stop Trace Session

loop (for each on-going Trace Recording Session) ME -> ME : Stop Trace Recording Session

Opt (there are outstanding trace records) ME -> TMC: "reportStreamData(traceRecords)" End

ME -> TMC: Trace Recording Session Stop administrative message End

ME -> TMC: Trace Session Stop administrative message Opt (multiple streams exist)

ME -> TMC: deleteStream Operation (HTTP DELETE) End

Opt

ME -> TMC: terminateStreamingConnection(WebSocket Close Frame) ME <<->> TMC: Terminate Connection

End @enduml

![Generated by PlantUML](../assets/images/cce57da5d0ea.png)

###### Figure C-1 : Streaming Trace Connection Establishment, Data Reporting and Deactivation Example

Scenario:

* Provisioning Management Service Consumer activates/configures Trace Session on Trace MnS Producer.

This will be accomplished using Provisioning Management services described in clause 6.1.

* Trace MnS Producer sends a notifyMOIChanges to indicate the new MOI is created.

Steps 3-6 are optional when no connection to trace MnS consumer exist.

* Trace MnS Producer needs to establish a connection to the Trace MnS Consumer to set up a streaming connection (streams are active at this time between the Producer and Consumer). This is done using the establishStreamingConnection Operation via an HTTP POST request containing MetaData associated with this Trace Session.
* Trace MnS Consumer responds with an acknowledgement that contains the ConnectionID needed by the Trace MnS Producer when requesting that the connection be upgraded to a WebSocket to support streaming of the trace data.
* Trace MnS Producer requests the upgrade of the connection to a WebSocket using the ConnectionID and an HTTP GET operation.
* Trace MnS Consumer accepts the upgrade and WebSocket is established. WebSocket will remain connected until the last streaming trace session active on the Trace MnS Producer is ended.

NOTE: In this example, only one streaming trace session is active.

* Optionally addStream operation is used to add a stream to the trace connection.
* Trace MnS Producer starts trace session, waiting for triggering event to occur.
* Trace MnS Producer sends trace session start administrative message to Trace MnS Consumer.
* Heartbeat sending criteria are met. The criteria about when to send Trace stream heartbeat administrative message are implementation specific.
* Trace stream heartbeat administrative message is sent to Trace consumer repeatedly. Trace stream heartbeat administrative message is used for monitoring whether the trace session connection is alive and can be executed parallel to other loops.
* "start" triggering event detected.
* A new trace recording session is started on the Trace MnS Producer. Each trace recording session has a unique Trace Recording Session (TRS) Reference associated with it.
* Trace recording session start administrative message is sent from Trace MnS Producer to Trace MnS Consumer.
* While this trace record is active, and the reporting criteria are not fulfilled, the Trace MnS Producer collects trace data.
* When the reporting criteria are fulfilled, either timer expires or the buffer fills, or the buffer has data and the "stop" triggering event is detected, the Trace MnS Producer sends a trace data report to the Trace MnS Consumer containing trace record data for active recording sessions in a trace session. These records are the payload of the reportStreamData operation.
* The criteria for the trace recording session completion or stop occurs (call ends, etc.).
* The Trace MnS Producer stops collecting data for this trace recording session.
* Trace MnS Producer sends trace recording session stop administrative message to Trace MnS Consumer.
* Provisioning Management Service Consumer deactivates the trace via procedures defined in clause 6.1 of the present document. Deactivation means that the trace data collection ceases, and the Trace MnS Producer stops all active trace recording sessions and sends data that it has collected up to this point, if any, for each active trace recording to the Trace MnS Consumer.
* Trace MnS Producer initiates the termination of the trace session.
* For each active trace recording session, Trace MnS Producer initiates a Stop Trace Recording Session.
* Optionally if there are outstanding record(s) for this trace recording session that have not been streamed to the Trace MnS Consumer, Trace MnS Producer sends them as the payload of the reportStreamData operation.
* Trace MnS Producer informs the Trace MnS Consumer that this Trace Recording Session has ended by sending the trace record termination administrative message. The producer repeats this until all trace recording sessions for this trace session have been terminated.
* Trace MnS Producer sends the trace session stop administrative message to Trace MnS Consumer.
* Optionally the Trace MnS Producer sends the Trace MnS Consumer the deleteStream operation indicating that the stream has been removed in case the connection is used for multiple streams.
* Optionally when all active Trace Sessions between Trace MnS Producer and Trace MnS Consumer have ended, the WebSocket connection is to be torn down. Trace MnS Producer sends the Trace MnS Consumer the terminateSignalingConnection Operation which is a WebSocket close frame.
* Terminate connection.

# Annex D: (normative) Recommendation for UE Identifier Format in Trace Header

Specification 3GPP TS 32.423 [13] clause 5.2.2 defines *vendorExtension* IE in Trace Header as an Arraylist of String. The Trace Record Header should be encoded using GPB in Annex G of 3GPP TS 32.423 [13]. Based on Annex G,

Trace Record Header in GPB is defined as

message TraceRecordHeader {

int64 time\_stamp = 1;

string nf\_instance\_id = 2;

string nf\_type = 3;

bytes trace\_reference = 4;

bytes trace\_recording\_session\_ref = 5; TraceRecordType trace\_rec\_type\_id = 6;

bytes ran\_ue\_id = 7;

string payload\_schema\_uri = 8;

GlobalGnbId global\_gnb\_id = 9; map<string, string> vendor\_extension = 10;

}

Several UE identifiers and node identifiers are identified as necessary for trace record correlation. Refer to O-RAN architecture description [15] clause 5.5 for detailed information.

To enable trace record correlation, a new map entry is defined for vendor\_extension to be used to send O-RAN UE/Node identifiers.

Defined TraceRecordHeader field vendor-extension is in following format:

map<string, string> vendor\_extension = 10;

The map entry should be added for UE identifier and node identifiers is as below:

First string in the map entry: value = "oranUENodeIdentifiers"

Second string in the map entry: value = result of "print string" of message OranUEAndNodeIdentifiers

NOTE: The O-RAN defined map entry for O-RAN UE/Node identifiers "oranUENodeIdentifiers" can co-exist with other vendor defined vendor-extension map entries. O-RAN defined map entry "oranUENodeIdentifiers" can be add in any position in the vendor\_extension map.

message OranUEAndNodeIdentifiers {

optional OranConnectedEntity connected\_entity\_id =1; optional OranUEId originator\_ue\_id = 2;

optional OranUEId connected\_entity\_ue\_id =3;

}

Message OranUEId{

optional int64 amf\_ue\_ngap-id = 1; optional int64 ran\_ue\_ngap\_id =2; optional int64 mme\_ue\_s1ap\_id = 3; optional int64 gnb\_cu\_ue\_f1ap\_id = 4; optional int64 gnb\_cu\_cp\_ue\_e1ap\_id = 5; optional int64 gnb\_cu\_up\_ue\_e1ap\_id= 6;

optional int64 traced\_ng\_ran\_node\_ue\_xnap\_id = 7; optional int64 connected\_ng\_ran\_node\_ue\_xnap\_id = 8; optional int64 m\_enb\_ue\_x2ap\_id = 9;

optional int64 c\_rnti = 10;

}

Message OranConnectedEntity { oneof connected\_entity\_id {

bytes ng\_connected\_guami = 1; // AMF ID of the connected AMF Guami ng\_connected\_guami\_decoded = 2; // AMF ID of the connected AMF GlobalGnbId xn\_connected\_global\_gnb\_id = 3; // ID of neighbouring gNB-CU-CP OranGlobalEnbId xn\_connected\_global\_enb\_id = 4; // ID of neighbouring ng-eNB node OranGlobalEnbId x2\_connected\_global\_enb\_id = 5; // ID of connected NSA eNB node bytes s1\_connected\_mme= 6; // ID of connected MME

Gummei s1\_connected\_mme\_decoded= 7; // ID of connected MME int64 f1\_connected\_du\_id = 8; // ID of connected gNB-DU int64 e1\_connected\_cuup\_id = 9; // ID of connected gNB-CU-UP

}

}

message GlobalEnbId { bytes plmn\_identity = 1; int64 enb\_id = 2;

}

Message Guami {

bytes plmn\_identity =1; string amf\_region\_id=2; string amf\_set\_id=3; string amf\_pointer=4;

}

Message Gummei {

bytes plmn\_identity =1; string mme\_grp\_id=2; string mme\_code=3;

}

Based on the value nf\_type (for example, gNB-CU-CP, gNB-CU-UP, gNB-DU) in the TraceRecordHeader, different types of UE identifiers and node identifier can be reported. For detail, refer to O-RAN architecture description [15] clause 5.5.

# Annex (informative): Change History

|  |  |  |
| --- | --- | --- |
| Date | Revision | Description |
| 2019.03.18 | 0.01.00.00 | First draft of O-RAN OAM Interface Specification |
| 2019.03.28 | 0.01.01.00 | Updates from review remarks received |
| 2019.05.21 | 0.01.01.01 | Fault Supervision, Performance Assurance and File Management updates |
| 2019.05.28 | 0.01.01.02 | References, Abbreviations, Definitions, Provisioning, Communication Surveillance, PNF Start Up and Registration updates |
| 2019.06.13 | 0.01.01.03 | Diagrams for File Management converted to UML, Performance Assurance UML, PNF Software Management Updates |
| 2019.06.17 | 0.01.01.04 | Provisioning Updates |
| 2019.07.01 | 01.00 | Review Comments Addressed TSC approved copy |
| 2019.09.27 | 02.00 | Updates for late review comments, additional CM notifications, NETCONF requirements and updated references to 3GPP SA5 Rel-16. |
| 2020.03.03 | 03.00 | Update Heartbeat Management Service. New clauses for Subscription Control, Streaming PM, O-RAN Defined PM Measurements and an Annex showing examples for using the specified template for O-RAN defined PM Measurements. |
| 2020.08.18 | 04.00 | Update Introductory Material, Provisioning, Fault Supervision, Performance Assurance, Trace Management, and Heartbeat Management to incorporate |

|  |  |  |
| --- | --- | --- |
|  |  | 3GPP Rel 16 CRs. Add Annex B for stndDefined event example and Annex C for Streaming Trace example. |
| 2020.08.31 | 04.00 | Update document with comments from WG1 review |
| 2021.03.11 | 04.01 | Incorporate approved CRs to prepare for v05.00. Update Provisioning with approved CR 10.  Update Fault Supervision with approved CR 11. |
| 2021.04.27 | 04.02 | Update Software Download with approved CR 13. |
| 2021.05.24 | 04.03 | Incorporate approved Updates and Corrections CR 14  Updates to References, Security Protocols and Trace. |
| 2021.06.21 | 04.04 | Incorporate approved YANG Module Discovery CR 15 |
| 2021.06.22 | 05.00 | O1v5 incorporating CRs from 04.01.00 through 04.04.00 |
| 2021.10.25 | 06.00 | Incorporate approved CRs: PNF Reset CR 16, Performance Management CR 17, Cloudified NF Registration CR 18, Notify Alarm List Rebuilt CR 19, O1 Notifications CR 20 and References Updates CR 21. |
| 2022.03.15 | 07.00 | Incorporate approved CRs: PM Streaming Format Correction CR 22, 3GPP specified Notification VES format support CR 23, Annex C Streaming Trace Management CR 24, PNF Registration Notification CR 25, Rearrange PNF Reset Notification Requirements CR 26, Clarify counter naming requirement CR 27 and Notification capability CR 28. |
| 2022.07.18 | 08.00 | Incorporate approved CRs: O-RAN counter name clarification CR 29, File management update CR 30, O1 Notification CR 31, Plug and Connect uplift CR 32, UE Identifiers for Trace header CR 33 and CM Notifications uplift CR 34.  Editorial changes related to the copyright clarification. |
| 2022.08.31 | 08.00.01 | Incorporate approved CR 36 resolving outdated 3GPP references. |
| 2022.11.01 | 09.00.00 | Incorporate approved CRs: Alignment with 3GPP and editorial modifications CR37, PM file format for NR measurements CR38.  Editorial changes related to the new document naming format.  Editorial changes related to application of embedded O-RAN styles template. |
| 2022.11.21 | 09.00.01 | Editorial CR39 introduced changes for alignment with ODR, O-RAN TS Template and ETSI PAS - re-arranged and re-numbered clauses. Removal of author information from the history table. |
| 2023.01.31 | 09.00.02 | Incorporate approved CRs: UE Identifier schema CR40, Measurement job control clarification CR41 and File management correction CR42 |
| 2023.03.06 | 10.00 | Incorporate approved CRs: Clean-up of 3GPP TS 28.532 reference CR43, Correction of 3GPP TS 28.533 reference CR44, O-RU change in O1 introduction CR45, Split of normative and informative references CR46, Clean-up references CR47, Clean-up of introduction CR48, Remove out of scope Fault Notification requirements CR49 and Clean-up Fault Supervision Control Requirements CR50. |

|  |  |  |
| --- | --- | --- |
| 2023.07.11 | 11.00 | Incorporate approved CRs: Reference update to O-RAN internal specifications CR33, Normative language clean-up CR52. |
| 2023.09.14 | 11.00.01 | Incorporate approved CR 53 clarifying the use of push-based file reporting for transfer of PM files. |
| 2023.10.11 | 11.00.02 | Incorporate approved CRs 54 fixing the PM use case reference and 55 updating the referenced 3GPP specifications versioning |
| 2023.10.30 | 12.00 | Incorporate approved CRs: SBMA terminology clean-up CR 56, Align Netconf server behaviour with 3GPP TS 28.532 CR 57, Update referenced specifications versioning CR 58, Security requirements alignment CR 59 and Heartbeat management capability clarification CR 60. |
| 2024.03.11 | 13.00 | Incorporate approved CRs: Correction of the stndDefined VES event examples CR 61, Alignment with the O1 consolidation WID CR 62, Alignment with 3GPP for non-specific references CR 63 and Notify Event addition CR 64.  Editorial changes (re-alignment of content between the Scope and Foreword clauses). |
| 2024.06.24 | 14.00 | Incorporate approved CRs: Removal of PM requirements (move to a dedicated TS) CR65, Add file preparation error notification for pull based scenario CR66, Add file preparation error notification for push based scenario CR67, Clarify the use of informative content (ETSI PAS triggered) CR68, Clarify O1 interface specification scope CR69, Fix editorial issue (ETSI PAS identified) in clause 6.5.4.3 CR70, File push clean-up CR71, Alarm history request requirements CR72, Align notification format across management services CR73, Add notifyAckStateChanged notification details CR74, ETSI EditHelp editorial corrections CR75 and 5G Performance Measurements clarification CR76. |
| 2024.10.02 | 14.00.01 | Incorporate approved CRs: Improving document consistency CR 77, Update of PNF Registration notification CR 78, General Requirements update CR 79, Editorial corrections CR 80, Alignment with 3GPP Rel-18 CR 81 |
| 2024.11.04 | 14.00.02 | Incorporate approved CRs: Alignment of 3GPP references for Trace and NRM CR 82, Alignment of 3GPP references for PM CR 83, Correction in NtfSubscriptionControl CR 84, Alignment of 3GPP references for FM CR 85, Alignment of 3GPP references for CM CR 86. |
| 2024.11.21 | 15.00 | Incorporate approved CRs: Correction of VES event mapping CR 87, Fault Supervision MnS Stage 3 references update CR 88, Addressing PMCountGroup and CUCountGroup compatibility CR 89. |
---

- View in [Reader Mode](https://simewu.com/spec-reader/pages/03-WG10/O-RAN.WG10.TS.O1-Interface.0-R004-v15.00.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG10.TS.O1-Interface.0-R004-v15.00.docx).
