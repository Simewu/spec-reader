---
title: O-RAN.WG6.TS.O2IMS-INTERFACE-R004-v08.00.docx.md
author: O-RAN Alliance, WG6
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG6.TS.O2IMS-INTERFACE-R004-v08.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG6.TS.O2IMS-INTERFACE-R004-v08.00.docx).

---

* toc
{:toc}

---

![]({{site.baseurl}}/assets/images/c903f23cac61.png)

<div class="table-wrapper" markdown="block">

|  |
| --- |
| O-RAN.WG6.TS.O2IMS-INTERFACE-R004-v08.00 |
| *Technical Specification* |
| **O-RAN Working Group 6 O2ims Interface Specification** |

</div>

Copyright (C) 2025 by the O-RAN ALLIANCE e.V.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany Register of Associations, Bonn VR 11238, VAT ID DE321720189

Contents

1. Introduction 4
   1. Scope 4
   2. References 4
   3. Definitions and Abbreviations 5
      1. Definitions 5
      2. Abbreviations 5
2. Service Definitions 7
   1. O2ims Services 7
      1. General 7
      2. O2ims\_InfrastructureInventory Services 8
      3. O2ims\_InfrastructureMonitoring Services 10
      4. O2ims\_InfrastructureProvisioning Services 13
      5. O2ims\_InfrastructureSoftwareManagement Services 14
      6. O2ims\_InfrastructureLifecycleManagement Services 14
      7. O2ims\_InfrastructurePerformance Services 14
      8. O2ims\_InfrastructureLogging Services 20
3. API definitions 23
   1. General aspects 23
      1. Introduction 23
      2. URI structure and supported content formats 23
      3. Usage of HTTP header fields 24
      4. Result set control 26
      5. Error reporting 26
      6. Common data types 26
      7. Authorization of API requests and notifications 29
      8. Version management 29
   2. O2ims\_InfrastructureInventory Service API 29
      1. Description 29
      2. API version 30
      3. REST resources structure and methods 30
      4. REST resources 32
      5. Notifications 63
      6. Data model 64
      7. Error handling 73
      8. Security 73
   3. O2ims\_InfrastructureMonitoring Service API 73
      1. Description 73
      2. API version 73
      3. REST resources structure and methods 74
      4. REST resources 75
      5. Notifications 94
      6. Data model 95
      7. Error handling 99
      8. Security 99
   4. O2ims\_InfrastructureProvisioning Service API 99
   5. O2ims\_InfrastructureSoftwareManagement Service API 99
   6. O2ims\_InfrastructureLifecycleManagement Service API 99
      1. Description 99
      2. API version 100
      3. REST resources structure and methods 100
      4. REST resources 100
      5. Notifications 100
      6. Data Model 101
      7. Error handling 101
      8. Security 101
   7. O2ims\_InfrastructurePerformance Service API 101
      1. Description 101
      2. API version 102
      3. REST resources structure and methods 102
      4. REST resources 103
      5. Notifications 111
      6. Data Model 111
      7. Error handling 115
      8. Security 116
   8. O2ims\_InfrastructureLogging Service API 116
4. O-Cloud Alarms 117
   1. General 117
   2. Alarm Definition Identifiers 117
   3. Probable Cause Codes 119

Annex (informative): Change History 120

# Introduction

## Scope

This Technical Specification has been produced by the O-RAN.org.

The contents of the present document are subject to continuing work within O-RAN WG6 and may change following formal O-RAN approval. Should the O-RAN.org modify the contents of the present document, it will be re-released by O-RAN Alliance with an identifying change of release date and an increase in version number as follows:

Release x.y.z where:

1. the first digit is incremented for all changes of substance, i.e. technical enhancements, corrections, updates, etc. (the initial approved document will have x=01).
2. the second digit is incremented when editorial only changes have been incorporated in the document.
3. the third digit included only in working versions of the document indicating incremental changes during the editing process.

This document defines O-RAN O-Cloud IMS interface functions and protocols for the O-RAN O2 interface. The document studies the functions conveyed over the interface, including management functions, procedures, operations and corresponding solutions, and identifies existing standards and industry work that can serve as a basis for O-RAN work.

## References

In the case of a reference to a 3GPP document (including a GSM document), a non-specific reference implicitly refers to the latest version of that document in 3GPP Release 18.

1. 3GPP TR 21.905: "3rd Generation Partnership Project; Technical Specification Group Services and System Aspects; Vocabulary for 3GPP Specifications"
2. O-RAN Whitepaper
3. ORAN-WG4.MP.0-v01.00: O-RAN Alliance Working Group 4 Management Plane Specification
4. O-RAN WG1 Architecture Description
5. O-RAN WG1 OAM Architecture
6. O-RAN WG1 O1 Interface Specification
7. O-RAN WG6 Cloud Architecture and Deployment Scenarios
8. RFC 6241, "Network Configuration Protocol (NETCONF)", IETF, June 2011
9. RFC 7950, "The YANG 1.1 Data Modeling Language", IETF, August 2016
10. RFC 2119, "Key words for use in RFCs to Indicate Requirement Levels", IETF, March 1997
11. 3GPP TS 29.501 "5G System; Principles and Guidelines for Services Definition; Stage 3"
12. 3GPP TS 29.571 ""
13. ONAP VES Event Listener Specification v7.2, May 2020 (Draft)
14. 3GPP TS 29.500: "5G System; Technical Realization of Service Based Architecture; Stage 3".
15. OpenAPI: "OpenAPI 3.0.0 Specification", [https://github.com/OAI/OpenAPI-](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md) [Specification/blob/master/versions/3.0.0.md.](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md)
16. 3GPP TS 33.501: "Security architecture and procedures for 5G system".
17. IETF RFC 6749: "The OAuth 2.0 Authorization Framework".
18. 3GPP TS 29.510: "5G System; Network Function Repository Services; Stage 3".
19. IETF RFC 7540: "Hypertext Transfer Protocol Version 2 (HTTP/2)".
20. IETF RFC 8259: "The JavaScript Object Notation (JSON) Data Interchange Format".
21. IETF RFC 7807: "Problem Details for HTTP APIs".
22. ETSI GS NFV-SOL 013 v3.3.1: " Protocols and Data Models; Specification of common aspects for RESTful NFV MANO APIs", September 2020
23. O-RAN WG6 "Orchestration Use Case and Requirements for O-RAN Virtualized RAN"
24. O-RAN WG6 "O-RAN O2 General Aspects and Principles Specification"
25. ETSI GS NFV-SOL 015v1.2.1: " Protocols and Data Models; Specification of Patterns and Conventions for RESTful NFV-MANO APIs", December 2020
26. ISO/IEC 9646-7: "Information technology - Open Systems Interconnection - Conformance testing methodology and framework - Part 7: Implementation Conformance Statements".
27. ITU-T Recommendation X.733 (02/92): "Information technology - Open Systems Interconnection - Systems Management: Alarm reporting function".
28. ITU-T Recommendation X.736, "Information Technology - Open Systems Interconnection - System Management: Security Alarm Reporting Function', 1992"
29. IETF RFC 7396: "JSON Merge Patch"
30. IETF RFC 7230: "Hypertext Transfer Protocol (HTTP/1.1)"
31. IETF RFC 793: "Transmission Control Protocol"
32. IETF RFC 2818: "HTTP Over TLS"
33. IETF RFC 5246: "The TLS Protocol Version 1.2"
34. IETF RFC 3986: "Uniform Resource Identifier (URI)"
35. ETSI TS 133 310: "Universal Mobile Telecommunications System (UMTS); LTE; Network Domain Security (NDS); Authentication Framework (AF)"
36. O-RAN WG6 "O-Cloud Information Model"
37. O-RAN WG10 "O-RAN Work Group 10 (OAM for O-RAN); O-RAN Information Model and Data Models Specification".
38. ETSI GS NFV-IFA 045 (V4.5.1 2023-10): "Network Functions Virtualisation (NFV) Release 4; Management and Orchestration; Faults and alarms modelling specification".
39. 3GPP TS 28.622: "Telecommunication management; Generic Network Resource Model (NRM) Integration Reference Point (IRP); Information Service (IS)"
40. 3GPP TS 32.404: "Technical Specification Group Services and System Aspects; Telecommunication management; Performance Management (PM); Performance measurements"
41. ETSI GS NFV-IFA 027 V4.2.1: " Network Functions Virtualisation (NFV) Release 4; Management and Orchestration; Performance Measurements Specification"

## Definitions and Abbreviations

### Definitions

FFS.

### Abbreviations

For the purposes of the present document, the abbreviations given in 3GPP TR 21.905 [0] and the following apply. An abbreviation defined in the present document takes precedence over the definition of the same abbreviation, if any, in 3GPP TR 21.905 0.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| DMS | O-Cloud Deployment Management Services |
| FCAPS | Fault, Configuration, Accounting, Performance, Security |
| HATEOAS | Hypermedia as the Engine of Application State |
| IMS | O-Cloud Infrastructure Management Services |
| MANO | Management and Orchestration |
| MnS | Management Service |
| MOC | Managed Object Class |
| MOI | Managed Object Instance |
| MVP | Minimum Viable Product |
| O-RAN | Open Radio Access Network |
| ONAP | Open Network Automation Platform |
| OSM | Open Source Mano |
| RAN | Radio Access Network |
| TLS | Transport Layer Security |
| TR | Technical Report |
| TS | Technical Specification |
| SMO | Service Management and Orchestration |

</div>

# Service Definitions

## O2ims Services

### General

Table 2.1.1-1 O2ims Services to API mapping summarizes the corresponding O2ims service APIs defined.

###### Table 2.1.1-1 O2ims Services to API mapping

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Service Name** | **Clause** | **Description** | **apiName** |
| O2ims\_InfrastructureInventor y Services | 3.2 | Service for querying the O-Cloud resources and management services. | O2ims-infrastructureInventory |
| O2ims\_InfrastructureMonitori ng Services | 3.3 | Services related to O- Cloud infrastructure fault management. | O2ims-infrastructureMonitoring |
| O2ims\_InfrastructureProvision ing Services | 3.4 | Service for configuring the O-Cloud infrastructure resources and management services. | Not specified in the present document version |
| O2ims\_InfrastructureSoftware Management Services | 3.5 | Services for software inventory and updating the software used for O-Cloud infrastructure resources and management services. | Not specified in the present document version |
| O2ims\_InfrastructureLifecycle Management Services | 3.6 | Services related to O- Cloud infrastructure lifecycle management and events. | O2ims- infrastructureLifeCycleManagement |
| O2ims\_InfrastructurePerforma nce Services | 3.7 | Services related to O- Cloud infrastructure performance management | O2ims-infrastructurePerformance |
| O2ims\_InfrastructureLogging Services | 3.8 | Services related to O- Cloud infrastructure logging management | Not specified in the present document version |

</div>

The information elements for the O2ims services ar contained in the O-Cloud Information Model Specification, see O- RAN WG6.O-CLOUD-IM [36].

#### Void

#### Void

#### Void

#### Void

### O2ims\_InfrastructureInventory Services

Any object in the O-Cloud which can generate a fault, a performance metric, or is exposed to the SMO for configuration needs to have a type, which depicts the class of object. Generally, an O-Cloud is a composition of provisioned resources serving different roles, such as compute, storage, or networking.

#### Service description

O-Clouds contain physical, software and logical resources. The O-Cloud is the source of information for these assets but is required to provide a mechanism for asset management to account for them. The O2ims\_InfrastructureInventory services provides the read-only interface to its inventory such that accounting can be achieved.

The O-Cloud SHALL expose its capabilities and supported resource types to the SMO.

The O2ims\_InfrastructureInventory services SHALL be available only after the O-Cloud has registered its IMS endpoint with the SMO.

The O2ims\_InfrastructureInventory services SHALL provide the list of resource type(s) supported by the O-Cloud across all resource pools defined in its distributed deployment.

#### Service operations

##### O-Cloud Information Query

The O2ims\_InfrastructureInventory service shall enable an authorized consumer to query and retrieve various information related to the O-Cloud infrastructure and its resources.

NOTE: It is up to the protocol and data model specification to determine the one or various protocol operations enabling the authorized consumer to retrieve the O-Cloud information.

Table 2.1.2.2.1-1 lists the information flow exchanged between the SMO and the O-Cloud.

###### Table 2.1.2.2-1: O2ims\_InfrastructureInventory Query operation

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Message** | **Direction** |
| QueryOcloudInfoRequest | SMO ? O-Cloud |
| QueryOcloudInfoResponse | O-Cloud ? SMO |

</div>

The input parameters sent when invoking the operation shall support means to:

* Filter to select which information is queried about the supported Inventory Infrastructure Service Objects which can be any subclass of the InfrastructureInventoryObject as depicted in the Information Model, see O-RAN WG6.O-CLOUD-IM [36], clause 4.2.1.3.2.1. Filtering the Service Objects by their names, identifiers, metadata information and status information shall be supported. When the filter results in no matching Service Objects, the operation shall return an empty list.
* Select the list of attributes of information of the supported Inventory Infrastructure Service Objects to be returned matching the filter. An absence of attribute selection shall return the complete information of the Service Objects matching the filter the authorized consumer is allowed to query.

The Query operation shall support returning information about one or a set of service objects (i.e., list/array of service objects). The Query Service Operation shall support the ability to handle a large amount of data in return sets as described in ETSI GS NFV-SOL 013 [22], clause 5.4.2.1.

As a result of this operation, the producer (O-Cloud) shall indicate to the consumer whether the query was processed successfully. If the operation is not successful, the O-Cloud shall return to the consumer appropriate error information. An example of an error case is where the query filter is malformed, or attributes are not able to be processed.

The Alarm Dictionary Discovery and Performance Dictionary Discovery are pertinent use cases for this Service Operation. Those relate to this operation because the dictionary data for those use cases are contained within the Inventory Objects associated with this Service. See O-RAN WG6.ORCH-USE-CASES [23], clause 3.7.9, and 3.8.11 respectively for more details.

The full requirements definitions can be found in O-RAN WG6.ORCH-USE-CASES [23], clause 4.3. The following identifiers uniquely specify the requirements applicable to the producer (O-Cloud) for this operation: [REQ-ORC-O2- 53].

##### O-Cloud Inventory Event Notifications

The O2ims\_InfrastructureInventory service shall provide a consumer who has established a valid subscription to be notified when an event which matches the subscription filter selection criteria to be sent to the consumer (SMO).

NOTE: It is up to the protocol and data model specification to determine the one or various protocol operations enabling the authorized consumer to subscribe to the notification service, and to allow the notification service to invoke the specified callback procedure.

Table 2.1.2.2.2-1 lists the information flow exchanged between the SMO and the O-Cloud.

###### Table 2.1.2.2.2-1: O2ims Inventory Subscribe/Notify operation

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Message** | **Direction** |
| SubscribeInfrastructureInventoryRequest | SMO ? O-Cloud |
| SubscribeInfrastructureInventoryResponse | O-Cloud ? SMO |
| InfrastructureInventoryEventNotification | O-Cloud ? SMO |

</div>

The information representing one subscription shall follow the provisions indicated in table 2.1.2.2.2-2.

###### Table 2.1.2.2.2-2: Attributes of the InfrastructureInventoryEvent

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Attribute** | **Qualifier** | **Description** |
| consumerSubscriptionId | M | The consumer may provide its identifier for tracking, routing, or identifying the subscription used to report the event. |
| notificationEventType | M | The type (CREATE, MODIFY, DELETE) of event being reported |
| objectRef | M | The resultant reference to the object on which the action occured |
| priorObjectState | M | If the Event type is 'MODIFY' or 'DELETE' this this field will be populated with a copy of the object prior to the event. |
| postObjectState | M | If the Event type is 'CREATE' or 'MODIFY' this this field will be populated with a copy of the object after the event. |

</div>

The Alarm Dictionary Discovery and Performance Dictionary Discovery are pertinent use cases for this Service Operation. Dictionary data is sent via an O-Cloud Inventory Event Notification. See O-RAN WG6.ORCH-USE-CASES [23], clause 3.7.9, and 3.8.11 respectively for more details.

The full requirements definitions can be found in O-RAN WG6.ORCH-USE-CASES [23], clause 4. The following identifiers uniquely specify the requirements applicable to the producer (O-Cloud) for this operation: [REQ-ORC- GEN13], [REQ-ORC-O2-8].

### O2ims\_InfrastructureMonitoring Services

#### Alarm Services

Any object in the Infrastructure Inventory can generate faults. Also, a consumer such as the SMO may want to monitor the reachability of the IMS and therefore request a heartbeat message to be periodically sent. The O2ims\_InfrastructureMonitoring services provide these. IMS Heartbeat is not specified in the present document version.

It is important to understand the differences between faults and alarms. All faults are logged, only some faults may be worthy of being an alarm. Policies within the IMS determine if a fault or set of faults warrant an alarm to be created. All Alarms are also logged. The following services are associated with alarms.

##### Service description

The O-Cloud has a historical table of past and active alarms. The SMO or any other consumer with permissions can query this table for trending analysis, correlation, or synchronization. Additionally, the service provides the ability to subscribe to alarm events which are evaluated whenever a change occurs to an AlarmEventRecord.

For a complete list of requirements see the O-Cloud Alarm related use cases in O-RAN WG6.ORCH-USE-CASES [23].

##### Service operations

Query Alarm Information

The O2ims\_ InfrastructureMonitoring service shall enable an authorized consumer to query and retrieve AlarmEventRecord information related to the O-Cloud infrastructure and its resources.

NOTE: It is up to the protocol and data model specification to determine the one or various protocol operations enabling the authorized consumer to retrieve the O-Cloud information.

The information elements of an AlarmEventRecord are specified in the O-Cloud Information Model, see O-RAN WG6.O-CLOUD-IM [36], clause 4.2.1.4.10.

Table 2.1.3.1.2.1-1 lists the information flow exchanged between the SMO and the O-Cloud.

###### Table 2.1.3.1.2.1-1: Query O2ims\_InfrastructureAlarmInformation operation

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Message** | **Direction** |
| QueryOcloudAlarmRequest | SMO ? O-Cloud |
| QueryOcloudAlarmResponse | O-Cloud ? SMO |

</div>

The input parameters sent when invoking the operation shall support means to:

* Filter to select which information is queried about the supported service objects specified in clause 2.1.3.1.2.

Filtering by names, identifiers, metadata information and status information shall be supported.

* Select the list of attributes of information of the supported service objects to be returned matching the filter. An absence of attribute selection shall return the complete information of the service objects matching the filter the authorized consumer is allowed to query.

The query operation shall support returning information about one or a set of service objects (i.e., list/array of service objects).

As a result of this operation, the producer (O-Cloud) shall indicate to the consumer whether the query was processed successfully. If the operation is not successful, the O-Cloud shall return to the consumer appropriate error information.

The full requirements defintions can be found in O-RAN WG6.ORCH-USE-CASES [23]. The following identifiers uniquely identify the requirements applicable to this operation: [REQ-ORC-O2-17], [REQ-ORC-O2-18], [REQ-ORC-O2-21], [REQ-ORC-O2-22], [REQ-ORC-O2-25].

Infrastructure Alarm Acknowledge

The O2ims\_InfrastructureMonitoring service shall enable an authorized consumer to acknowledge an AlarmEventRecord recorded in the IMS.

NOTE: It is up to the protocol and data model specification to determine the one or various protocol operations enabling the authorized consumer to acknowledge an alarm.

Table 2.1.3.1.2.2-1 lists the information flow exchanged between the SMO and the O-Cloud.

###### Table 2.1.3.1.2.2-1: O2ims\_InfrastructureAlarmAcknowlege operation

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Message** | **Direction** |
| AcknowledgeInfrastructureAlarmRequest | SMO ? O-Cloud |
| AcknowledgeInfrastructureAlarmResponse | O-Cloud ? SMO |

</div>

The input parameters sent when invoking the operation shall support the means to:

- identify the specific AlarmEventRecord to be acknowledged.

As a result of this operation, the producer (O-Cloud) shall indicate to the consumer whether the AlarmEventRecord was acknowledged successfully. If the operation is not successful, the O-Cloud shall return to the consumer appropriate error information.

The full requirements defintions can be found in O-RAN WG6.ORCH-USE-CASES [23]. The following identifiers uniquely identify the requirements applicable to this operation: [REQ-ORC-O2-27], [REQ-ORC-O2-29]

Infrastructure Alarm Clear

The O2ims\_InfrastructureMonitoring service shall enable an authorized consumer to clear an AlarmEventRecord recorded in the IMS which requires manual clearing by its definition in the alarm dictionary.

NOTE: It is up to the protocol and data model specification to determine the one or various protocol operations enabling the authorized consumer to clear an alarm.

Table 2.1.3.1.2.3-1 lists the information flow exchanged between the SMO and the O-Cloud.

###### Table 2.1.3.1.2.3-1: O2ims\_InfrastructureAlarmClear operation

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Message** | **Direction** |
| ClearInfrastructureAlarmRequest | SMO ? O-Cloud |
| ClearInfrastructureAlarmResponse | O-Cloud ? SMO |

</div>

The input parameters sent when invoking the operation shall support the means to:

- identify the specific AlarmEventRecord to be cleared.

NOTE: If the identified entry is defined with a clearing type of AUTOMATIC then it is up to the cloud vendor implementation on how this will affect the AlarmEventRecord and the ClearInfrastructureAlarmResponse. One example implementation may allow manual clear of an automatic alarm and if the O-Cloud re-detects the fault a new alarm is issued. Another implementation example may reject the request and leave the AlarmEventRecord unchanged.

As a result of this operation, the producer (O-Cloud) shall indicate to the consumer whether the AlarmEventRecord was cleared successfully. If the operation is not successful, the O-Cloud shall return to the consumer appropriate error information.

The full requirements defintions can be found in O-RAN WG6.ORCH-USE-CASES [23]. The following identifiers uniquely identify the requirements applicable to this operation: [REQ-ORC-O2-28], [REQ-ORC-O2-30].

Infrastructure Alarm Event Notifications

The O2ims\_InfrastructureMonitoring service shall provide a consumer who has established a valid subscription to alarms to be notified when an event which matches the subscription filter criteria to be sent to the consumer (SMO).

NOTE: It is up to the protocol and data model specification to determine the one or various protocol operations enabling the authorized consumer to subscribe to the notification service, and to allow the notification service to invoke the specified callback procedure.

Table 2.1.3.1.2.4-1 lists the information flow exchanged between the SMO and the O-Cloud.

###### Table 2.1.3.1.2.4-1: O2ims Alarm Subscribe/Notify operation

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Message** | **Direction** |
| SubscribeInfrastructureAlarmRequest | SMO ? O-Cloud |
| SubscribeInfrastructureAlarmResponse | O-Cloud ? SMO |
| InfrastructureAlarmEventNotification | O-Cloud ? SMO |

</div>

The information sent in an InfrastructureAlarmEventNotification shall contain the information specified in the AlarmEvent as specified in the O-Cloud Information Model, see O-RAN WG6.O-CLOUD-IM [36], clause 4.2.1.4.11.As a result of this operation, the producer (O-Cloud) shall indicate to the consumer whether the subscription was processed successfully. If the operation is not successful, the O-Cloud shall return to the consumer appropriate error information.

The full requirements defintions can be found in O-RAN WG6.ORCH-USE-CASES [23]. The following identifiers uniquely identify the requirements applicable to this operation: [REQ-ORC-O2-14], [REQ-ORC-O2-15], [REQ-ORC-O2-23], [REQ-ORC-O2-24]

Infrastructure Alarm Purge

Normally alarms are removed from the AlarmList when they age past the retentionPeriod. The Infrastructure Alarm Purge operation deletes inactive and acknowledged alarms based on parameters in the InfrastructureAlarmPurgeRequest from the alarm list irrespective of the retentionPeriod.

The Alarm Purge operation is requested by the service consumer (SMO). To see a complete description of this operation, refer to O-RAN.WG6.ORCH-USE-CASES [23], clause 3.7.13.

Table 2.1.3.1.2.5-1 lists the information flow exchanged between the SMO and the O-Cloud in a request/response pattern.

###### Table 2.1.3.1.2.5-1: O2ims\_InfrastructureAlarmPurge operation

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Message** | **Direction** |
| InfrastructureAlarmPurgeRequest | SMO ? O-Cloud |
| InfrastructureAlarmPurgeResponse | O-Cloud ? SMO |

</div>

The input parameters sent when invoking the operation shall support the means to:

identify the specific AlarmEventRecord(s) to be purged based on attributes of the AlarmEventRecord

described in the O-Cloud Information Model, see O-RAN WG6.O-CLOUD-IM [36], clause 4.2.1.4.10.

When this operation is successful, it will result in AlarmEventRecords contained in the AlarmList to be removed irrespective of the retentionPeriod.

The full requirements definitions can be found in O-RAN.WG6.ORCH-USE-CASES [23], clause 4.3. The following identifiers uniquely specify the requirements applicable to this operation: [REQ-ORC-O2-98].

Alarm List Configure

The Alarm List Configure enables the SMO to view/set attributes which configure the behavior of Alarm List Management at the IMS. The request for Alarm List Configure is sent from the FOCOM towards the IMS. The request

has parameters which describe the attributes associated with an Alarm List to be configured. To see a complete description of the Alarm List Configure operation, refer to O-RAN.WG6.ORCH-USE-CASES [23], clause 3.7.11.

The IMS keeps all the current alarms in an Alarm List. The Retention Period of alarms can be changed by the Alarm List Configure operation. After the Retention Period expires, alarms in the Alarm List will be purged or archived based on alarm policy. For example, the Alarm List Configure request could have an attribute to specify to Retention Period by the IMS of Compute Node alarms (resource types) for 72 hours. When the current value of the retentionPeriod is reduced then the Alarm Purge Use Case is triggered, found in O-RAN.WG6.ORCH-USE- CASES [23], clause 3.7.13.

Another Alarm List Configure operation could adjust the value(s) in the Extension attribute list of the Alarm List. Additional extensions attributes in the Alarm List Management request could change other aspects of Alarm List Management behavior. This would allow for implementation specific behavior. For example, an extension attribute might cause alarms to be purged or archived based on triggers. Extensions might define overflow behavior, or Alarm List composition handling.

Table 2.1.3.1.2.6-1 lists the information flow exchanged between the SMO and the O-Cloud in a request/response pattern over O2 IMS.

###### Table 2.1.3.1.2.6-1: O2ims\_AlarmListConfigure operation

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Message** | **Direction** |
| AlarmListConfigureRequest | SMO ? O-Cloud |
| AlarmListConfigureResponse | O-Cloud ? SMO |

</div>

The input parameters sent when invoking the operation shall support the means to modify the attributes of the

AlarmList as specified in the O-Cloud Information Model, see O-RAN WG6.O-CLOUD-IM [36], clause 4.2.1.4.13:

* Provide updated values of the Retention Period applicable to the alarms in the Alarm List, and
* Provide values for the extension attribute list applicable to the Alarm List.

When this operation is successful, it will result in a change of the Alarm List management behavior.

The full requirements definitions can be found in O-RAN.WG6.ORCH-USE-CASES [23], clause 4.3. The following identifiers uniquely specify the requirements applicable to this operation: [REQ-ORC-O2-74].

#### Void

#### Void

### O2ims\_InfrastructureProvisioning Services

#### Service description

The O-Cloud, as a distributed cloud, is connected by transport WANs. The Resource Pool therefore has to be configured for ingress and egress rules onto the transport networks for Front-Haul, Mid-Haul, and Back-Haul. Other activities such as creating logical resource groups within a Resource Pool and other types of O-Cloud configuration activities are provided by the O2ims\_InfrastructureProvisioning services.

#### Service operations

FFS

### O2ims\_InfrastructureSoftwareManagement Services

#### Service description

The O2ims\_InfrastructureSoftware Management services support procedures that enable SMO/FOCOM to initiate the software update process for the O-Cloud Infrastructure Management software, the Deployment Management software, Server OS Software, updates, and patches, and firmware updates for accelerators. For initial release the O-Cloud software can be manually updated. Therefore, the orchestrated Software Update procedure is deferred FFS.

### O2ims\_InfrastructureLifecycleManagement Services

#### Service description

Although O-Clouds are usually built for future capacity, they are not static. Physical resources can become defective or obsolete. Also, the O-Cloud may grow beyond its initial deployed capacity. These activities represent life cycle events to the O-Cloud. Automation is expected to offload manual processes due to the high numbers expected of O-Cloud instances. O2ims\_InfrastructureLifecycleManagement Services support procedures for the automation of O-Clouds lifecycle events.

#### Service operations

Primary Use cases for O-Cloud Genesis and O-Cloud Scaling are FFS. However, for this release the Notification to a callback specified at the onset of O-Cloud Genesis is defined.

##### O-Cloud Available Event Notification

The O2ims\_InfrastructureLifecycle service shall provide a consumer who was established at the onset of O-Cloud Genesis. Data expected to be included with the callback URI in the genesis data is the globalCloudId, each globalLocationID, and each AssetID for infrastructure at those locations. Once enough of the O-Cloud is discovered, provisioned and is available for additional provisioning or workload deployments, the O-Cloud shall send the O- CloudAvailableEvent to the consumer (SMO), thus registering its InfrastructureManagementServiceEndPoint with the SMO. After receiving the notification, the SMO will interrogate the InfrastructureInventory APIs to account for corporate assets and discover the DMS service endpoints to allow workloads to be deployed.

NOTE: It is up to the protocol and data model specification to determine the one or various protocol operations enabling the notification service to invoke the specified callback procedure.

Table 2.1.6.2.1-1 lists the information flow exchanged between the SMO and the O-Cloud.

###### Table 2.1.6.2.1-1: O2ims Lifecycle Notification operation

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Message** | **Direction** |
| OCloudAvailableNotification | O-Cloud ? SMO |

</div>

The information representing O-Cloud Available Notification shall follow the provisions indicated in the O-Cloud Information Model, see O-RAN WG6.O-CLOUD-IM [36], clause 4.2.1.4.9.

### O2ims\_InfrastructurePerformance Services

#### Service description

The Service Operations described in the following clauses relate to Performance Management functions. These operations fall into four basic categories: Performance Measurement Job, Performance Management Reporting, Performance Management Subscription handling, and Performance Management configuration. Each of these service operations relates to the four areas in the Information Model related to Performance Management: Performance Measurement Store, Performance Measurement Report, Performance Subscription and Performance Measurement Jobs. See the O-RAN WG6.O-CLOUD-IM [36] for more details. The functions described in the following service operations collectively provide fundamental operations which enable a management system, such as the SMO, to setup

Performance Measurement Jobs, to establish Performance Management Subscriptions (to receive reports), to configure Performance Management behaviour, and to interact with a Performance Measurement Store.

There are Service Operations to Create, Query, Delete, Update, Suspend and Resume Performance Measurement Jobs. There are also Service Operations for Performance Management Subscription Query, Performance Management Subscription Update and Performance Management Subscription Delete. Once running, an entity, such as the SMO, can establish Performance Management Subscriptions to receive the collected Performance Measurements.

Service Operations relate to functioning of both kinds of Performance Measurement Jobs. Within the O-Cloud, there are Performance Measurement Jobs and preinstalled Performance Measurement Jobs. These have the function of collecting Performance Measurements from O-Cloud Resources and storing them into a Performance Measurement Store.

The behaviour of Performance Management reporting can be controlled by Performance Management Service Operations. There are three ways that an entity could receive Performance Measurement reports: through file reporting, notification reporting or streaming. Service Operations can also alter the Performance Management behaviour through the Performance Management Configure Service Operation, the Performance Measurement Job Update Service Operation, and Performance Management Subscription Update Service Operation.

#### Service operations

##### Performance Measurement Job Query

Performance Measurement (PM) Jobs collect performance data on O-Cloud infrastructure resources. The O2ims\_ InfrastructureMonitoring service shall enable an authorized consumer to query and retrieve PerformanceMeasurementJob information and its attributes for PM Jobs that reside in the O-Cloud.

The PM Job Query Service enables a consumer to:

* Query for all PM Jobs in the Active State including default PM Jobs (based on Owner).
* Query for PM Jobs in the Suspended State.
* Query for PM Jobs in the Deprecated State because of delete operations that have not yet been purged.
* Query for certain PM Jobs by indicating specific PM Job IDs in the query filter.

NOTE 1: It is up to the protocol and data model specification to determine the one or various protocol operations enabling the authorized consumer to retrieve the Performance Measurement Job information.

Table 2.1.7.2.1-1 lists the information flow exchanged between the SMO and the O-Cloud using the request-response pattern.

###### Table 2.1.7.2.1-1: O2ims\_PerformanceMeasurementJobQuery operation

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Message** | **Direction** |
| PerformanceMeasurementJobQueryRequest | SMO ? O-Cloud |
| PerformanceMeasurementJobQueryResponse | O-Cloud ? SMO |

</div>

The input parameters sent when invoking the operation shall support the means to:

* Specify a filter that defines the selection of PM Jobs to be included in the results. The attributes for filtering of the PerformanceMeasurementJob Information Object Class are specified in O-Cloud Information Model, see O-RAN WG6.O-CLOUD-IM [36], clause 4.2.1.4.16. Thus, the filter supports the requests based on PM Job IDs, PM Job status, PM Job owner, and PM Job states.
* Specify the list of associated attributes for the filtered PM Jobs to be returned in the results. An absence of attribute specification shall return the complete information of filtered PM Jobs back to the requestor.

NOTE 2: There is only one filter and only one list of associated attributes. Thus, for all filtered PM Jobs the request returns the same set of associated attributes.

The PM Job query operation shall support returning information about one or a set of filtered PM Jobs. The service operation shall support the ability to handle a large amount of data in return sets as described in ETSI

GS NFV-SOL 013 [22], clause 5.4.2.1.

As a result of this operation, the producer (O-Cloud) shall indicate to the consumer whether the query was processed successfully. If the operation is not successful, the O-Cloud shall return to the consumer appropriate error information.

The full requirements definitions can be found in O-RAN WG6.ORCH-USE-CASES [23], clause 4.3. The following identifiers uniquely specify the requirements applicable to the producer (O-Cloud) for this operation: [REQ-ORC-O2- 57].

##### Performance Management Configure

The Performance Management Configure Service operation enables a requesting entity, such as the SMO, to configure the behavior of the Performance Management system.

This Service Operation complements the Performance Measurement Job Creation Service Operation, Performance Measurement Job Update Service Operation, Performance Management Subscription Service Operation and, Performance Management Subscription Update Service Operation which are other Service Operations that can alter the behavior of Performance Management functionality.

The Performance Management Configure Service Operation enables a requesting entity, such as the SMO, to modify the Retention Period attribute or the Extension attribute list in the PerformanceMeasureStore.

The Performance Management Configure Service Operation can be used to adjust the value(s) in the Extension attribute list of the PerformanceMeasurementStore. Updates to the Extensions attribute list from the Performance Management Configure request can change other aspects of Performance Management behavior, hence enabling for implementation specific behavior.

The Retention Period is described in the O-RAN.WG6.O2-GA&P [24], clause 3.9.11 and in the O-Cloud Information Model, see O\_RAN WG6.O-CLOUD-IM [36], clause 4.2.1.4.14.2.

Table 2.1.7.2.2-1 lists the information flow exchanged between the SMO and the O-Cloud in a request/response pattern over the O2ims interface.

###### Table 2.1.7.2.2-1: O2ims\_PerformanceManagementConfigure operation

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Message** | **Direction** |
| PerformanceManagementConfigure Request | SMO ? O-Cloud |
| PerformanceManagementConfigure Response | O-Cloud ? SMO |

</div>

The input parameters sent when invoking this Service Operation shall support the means to:

* Identify the objects with the attributes to configure. For updating the Retention Period or Extension attributes, this relates to the Performance Measurement Store object.
* Provide updated value of the Retention Period for the requested object to be configured.
* Provide updated value(s) for the Extension attribute list of the requested object(s) to be configured. When this Service Operation is successful, it will result in modification of the Performance Management behavior.

A description of the Performance Management Configuration Use Case which is relevant to this Service Operation can be found in O-RAN.WG6.ORCH-USE-CASES [23], clause 3.8.15.

The full requirements definitions can be found in O-RAN.WG6.ORCH-USE-CASES [23], clause 4.3. The following identifiers uniquely specify the requirements applicable to this operation: [REQ-ORC-O2-100].

##### Performance Measurement Job Create

Performance Measurement Jobs collect performance measurements and metrics on O-Cloud infrastructure resources. The O2ims\_ InfrastructureMonitoring service shall enable an authorized consumer to create a Performance Measurement Job in the O-Cloud over the O2 interface. The requested Performance Measurement Job would be in addition to the Preinstalled Performance Measurement Jobs that would already be running in the O-Cloud. For further information on Performance Measurement Jobs, see O-RAN WG6 O2 GA&P [24], Clause 3.9.5. For further information on the Performance Measurement Job Creation Use Case, see O-RAN WG6 ORCH-USE-CASES [23], Clause 3.8.1.

To create a Performance Measurement Job, a requestor would provide the following upon invoking the service operation:

* Consumer Performance Job Id - This is an identifier provided by the consumer for purposes of managing PM Jobs. This value could be the same across multiple instances of a PM Job.
* Collection Interval - This is provided by the requestor at time of Performance Measurement Job creation to define the interval at which performance measurements will be collected and stored.
* Resource Scope Criteria - The Resource Scope Criteria determines the value set for the Qualified Resource Types. It allows for the requestor of the Service Operation to indicate the list of Resources of interest from which measurements are to be collected. This criterion determines, the value set for the Qualified Resource Types (See Note).
* Measurement Selection Criteria - This is provided by the requestor at time of Performance Measurement Job creation to describe the measurements and/or resources that the PM Job is responsible for collecting and calculating. If a Resource Type is specified in the order, then the Performance Measurement Job operations applies to all resources of that Resource Type. From the Resource Scope Criteria, the Resource Types of interest can be calculated and from that the relevant PM Dictionaries. The Measurement Selection Criteria can then use these PM Dictionaries to identify the measurements of interest.
* Extensions - These are unspecified properties (key/value) which extend the information provided about the Performance Measurement Job

NOTE: It is up to the protocol and data model specification to determine the one or various protocol operations enabling the authorized consumer to retrieve the Performance Measurement Job information.

Table 2.1.7.2.3-1 lists the information flow exchanged between the SMO and the O-Cloud using the request-response pattern.

###### Table 2.1.7.2.3-1: O2ims\_PerformanceMeasurementJobCreate operation

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Message** | **Direction** |
| PerformanceMeasurementJobCreateRequest | SMO ? O-Cloud |
| PerformanceMeasurementJobCreateResponse | O-Cloud ? SMO |

</div>

The input parameters sent when invoking the operation shall support the means to:

* Specify an order that defines the Resource Scope Criteria, Measured Resources and Resources Type which indicates the pertinent resources for the Performance Measurement Job. From these the relevant PM Dictionaries can be identified.
* Specify an order that defines the Measurement Selection Criteria that the Performance Measurement Job would be responsible for. The relevant attributes given in an order to create a PerformanceMeasurementJob Information Object Class are specified in O-Cloud Information Model in O-RAN WG6.O-CLOUD-IM [36], see clause 4.2.1.4.16.2.

As a result of the PM Job Create service operation, the producer (O-Cloud) shall indicate to the consumer whether the PM Job Create service operation was processed successfully. As a result, this operation will return the status of the newly created PM jobs running in the IMS. If the operation is not successful, the O-Cloud shall return to the consumer the appropriate error information.

The producer determines the Measured Resources as a list of Resources relevant to the PM Job; it is a read-only attribute derived from the Measurement Selection Criteria. Furthermore, the Collected Measurements are derived from the Resource Scope Criteria and Measurement Selection Criteria; this gives the measurements to be collected by the PM Job.

The Qualified Resource Types are computed from the evaluation of the Measurement Selection Criteria, thus is derived during the PM Job Create Service Operation. It is also part of the Information Model. These are byproducts of the operation inputs. The computation from the Resource Scope Criteria results in a unique set of Resource Types relevant to the PM Job create service operation. From those resources, Resource Types of interest can be calculated. From those, the associated PM Dictionaries can be deduced. From the Measurement Selection Criteria, the Qualified Measurements that the PM Job is responsible for are calculated. The Qualified Resource Type allows an operator to check these interim results.

After the service operation is complete, the IMS puts the PM Job into the Active State; and it immediately starts collecting measurements based on its collection interval.

The full requirements definitions can be found in O-RAN WG6.ORCH-USE-CASES [23], clause 4.3. The following identifiers uniquely specify the requirements applicable to the producer (O-Cloud) for this operation: [REQ-ORC-O2- 32].

##### Performance Management Subscription Create

The purpose of the Performance Subscription Create Service Operation is to create Subscriptions related to Performance Management. The Performance Management Subscription Create operation is vital because Subscriptions first need to be created before Performance Measurements Reports can be created by the producer.

Each subscription is associated with one subscriber. Each subscriber can have many subscriptions. Each Subscriber (consumer) has a consumer subscription identifier. However, the value could be the same across multiple instances of IMS subscription instances. A subscription only supports one reporting mechanism.

During the Query Information service operation, read-only attributes will provide an entity or the SMO with a capabilities assessment which indicate the protocol(s) supported for reporting, mechanism(s), and format(s) supported by the O-Cloud. Then, an entity or the SMO can subscribe to the mechanism(s) and format(s) by indicating them within the subscription filter. In the capabilities exchange, the IMS would report the Performance Measurement Jobs and their associated collection intervals.

During the Performance Management Subscription Create Service Operation, the creation request will indicate an endpoint for where the Performance Measurement Report(s) will be sent to. The subscription filter qualifies what data from the Performance Measurement Jobs will be sent. The Performance Management Subscription Create Service Operation will indicate the Subscription reporting interval. Performance Measurements in an O-Cloud might be sent through event notification reporting, stream-based reporting, or file-based reporting to a subscriber.

To create a Performance Management Subscription the following list explains the usage of the parameters that can be provided in service operation:

* **Consumer Performance Subscription ID** - This identifier can be optionally provided to indicate a consumer performance subscription which may be used to manage performance data. This value could be the same across multiple instances of IMS subscription instances.
* **Resource and Resource Types** - The Resources and Resource Types of interest can be provided by the requestor of the Service Operation.
* **Measurement Selection Criteria** - This is provided by the requestor at time of Performance Management Subscription creation to describe the measurement(s) of interest.
* **Report Format** - The Report format indicates whether the subscription is expected to be fulfilled through Event Notifications, File-based reporting or through a Stream. For Event Notifications, performance data is sent at the specified intervals. For File-base reporting, a file is generated, which can then be retrieved by the consumer. For Stream based reporting, a session will remain open and continue to send the data in a streaming format, e.g., Google Protocol Buffers (GPB), at the specified intervals until the session or subscription is terminated. Reporting use cases can be found in O-RAN WG6.ORCH-USE-CASES [23], clause 3.8.3, 3.8.4 and 3.8.5.
* **Callback** - The Performance Subscription Creation operation can (optionally) provide an end point for where Performance subscription reporting notifications are sent. For File-based reporting, the Callback is an endpoint where a file ready notification is sent. For Event-based reporting, the Callback is an endpoint where to send performance data to. The field is not required if the report format is Stream because the Callback is not used.
* **Measurement Reporting Frequency** - This is used to establish Performance monitoring processes. This indicates the periodicity that specified performance data shall be sent. Each process definition can have a Subscription Mode, Report Interval, Suppress Redundant Flag, and Heartbeat Interval. The Subscription Mode can be *Target Defined*, *On Change*, or *Sampled*. If Target Defined it is left up to the Producer when to send data. If On Change, data is sent whenever the value changes. If it is Sampled, it is sent regularly with a periodicity of the Report Interval. If the Suppress Redundant Flag is set to true, the process shall not send data at the Sample Report Interval if the value has not changed unless the Heartbeat Interval is set to a non-zero value. If the Heartbeat Interval is set it will always send data samples regularly.
* **Remote File Location** - This provides a destination for the consumer to push Performance Files to.

Performance Files produced in the O-Cloud can be retrieved by the consumer as in a pull paradigm. If a consumer wants to retrieve Performance Files, the callback is given in the Performance Subscription Create operation. When the Performance Files are ready, the callback is used as a notification endpoint for the O-Cloud to inform the consumer that the Performance Files are ready to be pulled.

Performance Files can also be delivered by the producer as in a push paradigm. In this case, the consumer will provide a *Remote File Location* (as an attribute in the operation) that the producer (O-Cloud) can upload the Performance Files to. Here, the callback is the endpoint where the Performance Files Ready notification is sent. This informs the consumer that the Performance Files have been uploaded. In the push paradigm, what happens to the files after the producer sends the Performance files to the remote file location is implementation specific.

The Performance Subscription can establish multiple monitoring processes. Each of those can have different Reporting Frequencies. Each of those processes could have different Subscription Modes, with Target Defined (producer determined), On Change or reported at every Reporting Interval. It is also possible to have a process report data periodically as defined by a heartbeat interval regardless of change when the suppress redundancy is set to true. For example, one process within the Performance Subscription could report data only when a target changes value, another process within that same Performance Subscription may report data every 8 minutes (on the heartbeat interval).

NOTE: It is up to the protocol and data model specification to determine the one or various protocol operations enabling the authorized consumer to do a Performance Management Subscription create operation.

Table 2.1.7.2.4-1 lists the information flow exchanged between the SMO and the O-Cloud using the request, response,and notification patterns.

###### Table 2.1.7.2.4-1: O2ims\_PerformanceManagementSubscriptionCreate operation

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Message** | **Direction** |
| PerformanceManagementSubscriptionCreateRequest | SMO ? O-Cloud |
| PerformanceManagementSubscriptionCreateResponse | O-Cloud ? SMO |
| FileReadyNotification | O-Cloud ? SMO |

</div>

The input parameters sent when invoking the operation shall support the means to:

* **Consumer Performance Subscription ID** - This optional input parameter is a string without requirements on the format that can be provided by the requestor. This value could be the same across multiple instances of IMS subscription instances.
* **Resources** - This would be provided in the Global Subscription Criteria. The Resources are key-value pairs that indicate the Resource(s) of interest for the subscription.
* **Resource Types** - This is provided in a Global Subscription Criteria. The Resource Types are key-value pairs that indicate the Resource Type(s) of interest for the subscription.
* **Measurement Selection Criteria** - This is provided in the Performance Management Subscription to describe the measurement(s) of interest.
* **Report Format** - The report format is provided indicating whether the Performance subscription is fulfilled via Event Notifications, File-based reporting, or Stream reporting.
* **Callback** - A Callback can be provided in the Performance Subscription as an endpoint to send Performance- related notifications to.
* **Measurement Reporting Frequency** - This is an array of definitions which is used to establish Performance monitoring processes. Each process definition can have a Subscription Mode, Report Interval, Suppress Redundant Flag, and Heartbeat Interval.
* **Remote File Location** - This provides a destination for the consumer to push Performance Files to.

The full requirements definitions can be found in O-RAN WG6.ORCH-USE-CASES [23], clause 4.3. The following identifiers uniquely specify the requirements applicable to the producer (O-Cloud) for this operation: [REQ-ORC-O2- 38]. Requirements related to the endpoint for where the Performance Measurement Reports will be sent to are described [REQ-ORC-O2-39], [REQ-ORC-O2-40], [REQ-ORC-O2-42].

### O2ims\_InfrastructureLogging Services

#### Service description

Logging Services have service operations that are related to the operation and management of Logging functions within the O-Cloud. Logs can be kept at different entities within an O-Cloud. They can be kept within O-Cloud resources, Clusters, and IMS. Each of those entities can generate different kinds of logs including Alarm, Fault, Debug, Trace, Security, and Informational logs.

#### Service operations

##### Logging Configuration Service Operation

The Logging Configuration is related to how the IMS administrates, provisions, and configures logging management for logs that are generated in the O-Cloud. There are many kinds of logs that may exist in the O-Cloud such as Alarm Logs, Fault Logs, Debug Logs, and other logs. See O-RAN WG6.O2-GA&P [24], clause 3.8.19 for more details. This service operation will configure the logging behaviour of those logs. Further logging management configuration for specific types of logs are implementation specific.

Examples of elements that can be configured through the Logging Configuration Service Operation are the retention period, the activation of logging, logging behaviour (e.g., rotation of older logs (FIFO)), and log levels. Not all logs will have each of these kinds of configurable attributes.

See O-RAN WG6.ORCH-USE-CASES [23], clause 3.7.10 Logging Management Use Case for more information.

The Logging Configuration Service Operation is related to the Log Capability Query (IMS) Service Operation (see NOTE 1) because Logging Configuration sets the behaviour how IMS handles the management of logging.

NOTE 1: The Log Capability Query Service Operation is not defined in the present document.

NOTE 2: It is up to the protocol and data model specification to determine the one or various protocol operations enabling the authorized consumer to retrieve the O-Cloud information.

Table 2.1.8.2.1-1 lists the information flow exchanged between the SMO and the O-Cloud.

###### Table 2.1.8.2.1-1: O2ims\_InfrastructureLoggingConfiguration operation

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Message** | **Direction** |
| InfrastructureLogging Configuration Request | SMO ? O-Cloud |
| InfrastructureLogging Configuration Response | O-Cloud ? SMO |

</div>

The input parameters sent when invoking the operation shall support the means to specify configuration of different aspects of the management of Logs of interest for the IMS and for O-Cloud Resources:

* **Log Type** - Specify types of Log(s) supported for the IMS and O-Cloud Resources. These might include, but are not limited to Alarm Logs, Fault Logs, Debug Logs. Other logs could be described in the input parameter as well.
* **Retention Period** - Specify the Retention Period for the different types of Log(s). This attribute indicates the period of time for which a particular type of Log would be retained for.
* **Logging State** - This is an attribute to indicate the activate state for a particular type of Log. Each Log Type might have an active or inactive state to indicate whether that Log Type is used or not.
* **Expiry method** - Configure logging expiry method for a type of Log which describes what happens if the age of a Log exceeds the Retention Period. The expiry methods could include behaviours such as LIFO, FIFO, and FILO.
* **Logging Level** - Configure the Logging Level(s) for the Logs of interest. See O-RAN WG6.O2-GA&P [24], clause 3.8.20 for more details.

The full requirements definitions can be found in O-RAN WG6.ORCH-USE-CASES [23], clause 4.3. The following identifiers uniquely specify the requirements applicable to the producer (O-Cloud) for this operation: [REQ-ORC-O2- 55].

##### Logging Query Service Operation

The Log Query Service Operation allows a user, application, or entity (e.g., SMO) to query logs based on query filter. Logs could be queried by the SMO to the IMS via O2. This Service Operation concerns the retrieval and reading of logs within the O-Cloud that are present and managed by the IMS. A user, application, or entity can query for logs that are available in the Cloud: both exposed O-Cloud and Cloud Infrastructure logs. Any log kept in the Cloud infrastructure might be queried through an implementation specific user interface client or file transfer client such as CLI, SSH2, SFTP. The associated Log Query Use Case describes the concept and flow of this operation. See O-RAN WG6.ORCH- USE-CASES [23], clause 3.7.8 Log Query Use Case for more information.

There are three basic kinds of logs that might be kept within the Cloud (both exposed O-Cloud and Cloud infrastructure): Alarm Logs, Fault Log, and Debug Logs. Additionally, there may be many other kinds of Logs that might available as well, such as Trace Logs, Security Logs, Informational Logs, and Maintenance Logs among others. See O-RAN WG6.O2-GA&P [24], clause 3.8.19 for more details.

The Service Operation is filter driven which allows a requestor to retrieve Log data of interest. Log events are time and date stamped and Log events have a severity and source. Thus, these serve as a basis for Log querying and the filter in the Service Operation. For example, using a filter, an entity invoking the service operation could request for all the alarm logs in the O-Cloud within a certain date range or a log level.

Logs can be used for a variety of purposes. The Log Query Service Operation facilities system probing, troubleshooting assistance, network optimization, and network investigation (forensics). Logs can be used for system probing to deduce an operational view of the system. For example, an entity could query for logged faults and alarms that have not been cleared.

Logs of interest produced in the O-Cloud can be retrieved by the consumer as in a pull paradigm. If a consumer wants to retrieve logs, the callback is given in the Log Query operation. When the Logs are ready, the callback is used as a notification endpoint for the O-Cloud to inform the consumer that the Logs are ready to be pulled. In a large distribute cloud native system, it can take a long time to write or move Logs, hence the callback is used as a notification mechanism to a consumer.

Logs of interest can also be delivered by the producer as in a push paradigm. In this case, the consumer will provide a *Remote File Location* (as an attribute in the operation) that the producer (O-Cloud) can upload the logs of interest to. Here, the callback is the endpoint where the Log File Ready notification is sent. This informs the consumer that the log files have been uploaded. In the push paradigm, what happens to the files after the producer sends the log files to the remote file location is implementation specific.

The Logging Capability Query use case permits an entity to query for the types of Logs that are supported by the O- Cloud.

NOTE: It is up to the protocol and data model specification to determine the one or various protocol operations enabling the authorized consumer to retrieve the O-Cloud information.

The Log Query Service Operation follows a request, response, and notification service pattern. Table 2.1.8.2.2-1 lists the information flow exchanged between the SMO and the O-Cloud.

###### Table 2.1.8.2.2-1: O2ims\_InfrastructureLoggingQuery operation

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Message** | **Direction** |
| InfrastructureLoggingQueryRequest | SMO ? O-Cloud |
| InfrastructureLoggingQueryResponse | O-Cloud ? SMO |
| FileReadyNotification | O-Cloud ? SMO |

</div>

The Log Query Service Operation request has input parameters that are sent when invoking the operation. These shall support the means to specify different aspects of the Querying Logs of interest for to the requestor:

* **Log Type** - This allows a consumer to specify the types of Log(s) to retrieve. These might include, but are not limited to Alarm Logs, Fault Logs, Debug Logs. Other logs could be described in this input parameter as well. See O-RAN WG6.O2-GA&P [24], clause 3.8.19 for Log type concepts.
* **Date Ranges** - This parameter specifies a range of dates for entries in the Log type(s) of interest.
* **Types of Events** - The Event Type(s) can be specified as an input. Log(s) containing entries with certain types of events of interest to the requestor can be specified as an input.
* **Resources** - The Resources and Resource Types can be specified as an input. Log(s) containing entries from certain types of Resources or Resource Types of interest to the requestor can be specified.
* **Log Level (Severity)** - The Logging Level(s) can be specified as an input parameter. This would result in a Query for Logs with entries matching certain Logging Level(s) in the requested Log Type(s) of interest. See O-RAN WG6.O2-GA&P [24], clause 3.8.20 for the Log Level concept.
* **Callback** - This provides an endpoint to send "log ready" notifications to. It is given by a requesting entity so that the O-Cloud can send Log Query related notifications to.
* **Remote File Location (Optional)** - The consumer can provide a URI location where the logs of interest can be uploaded to in a push paradigm. If a Remote File Location is provided, the files of interest to the consumer will be uploaded to that location and a file list would be returned in the response with a file available notification using the Callback provided.

For example, the Log Query filters in the request may include input parameters specifying the date (ranges), types of logs, types of events, log level (severity), resource(s), or resource type(s) of interest to the consumer.

The Log Query service operation can experience three exceptions as follows:

* **Non-Existing Logs** - This exception occurs when the Log Query service operation results in a query for non- existent log(s). In this case, an object not found is returned for the operation.
* **No Content** - The Log Query service operation may have a Log Query filter that returns an empty set. This would return a failure from the operation.
* **Unable to Parse** - This exception happens when the records are unavailable for parsing or retrieval by the producer. This might occur because the Log File is corrupt, has been moved, or deleted.

The full requirements definitions can be found in O-RAN WG6.ORCH-USE-CASES [23], clause 4.3. The following identifiers uniquely specify the requirements applicable to the producer (O-Cloud) for this operation: [REQ-ORC-O2- 36].

# API definitions

## General aspects

### Introduction

The present document defines the protocol and data model for the following O2ims service interfaces in the form of RESTful Application Programming Interface (API) specifications:

* O2ims\_InfrastructureInventory Service API (as produced by the O-Cloud towards the SMO)
* O2ims\_InfrastructureMonitoring Service API (as produced by the O-Cloud towards the SMO)
* O2ims\_InfrastructureProvisioning Service API (as produced by the O-Cloud towards the SMO)
* O2ims\_InfrastructureSoftwareManagement Service API (as produced by the O-Cloud towards the SMO)
* O2ims\_InfrastructureLifecycleManagement Service API (as produced by the O-Cloud towards the SMO)
* O2ims\_InfrastructurePerformance Service API (as produced by the O-Cloud towards the SMO)
* O2ims\_InfrastructureLogging Service API (as produced by the O-Cloud towards the SMO) Table 3.1.1-1 lists the versions of the APIs defined in the present document.

###### Table 3.1.1-1: Versions of the APIs specified in the present document

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **API** | **API version** |
| O2ims\_InfrastructureInventory Service API | 1.1.0 |
| O2ims\_InfrastructureMonitoring Service API | 1.2.0 |
| O2ims\_InfrastructureProvisioning Service API | TBD |
| O2ims\_InfrastructureSoftwareManagement Service API | TBD |
| O2ims\_InfrastructureLifecycleManagement Service API | TBD |
| O2ims\_InfrastructurePerformance Service API | 1.1.0 |
| O2ims\_InfrastructureLogging Service API | TBD |

</div>

The design of the protocol and data model for the above interfaces is based on the information model and requirements defined in [36]. In clause 3, general aspects are specified that apply to multiple APIs for O2ims services. In addition, the provisions in clauses 3.1.2, 3.1.3, 3.1.4, 3.1.5, 3.1.6, 3.1.7, and 3.1.8 define common aspects of RESTful APIs, and shall apply for all APIs defined in the present document.

In the subsequent clauses, the protocol and data model for the individual interfaces are specified. Per interface, the resource structure with associated HTTP methods is defined and applicable flows are provided. Further, the resources and the data model are specified in detail.

Even though the different interfaces defined in the present document are related, implementations shall not assume a particular order of messages that arrive via different interfaces.

### URI structure and supported content formats

This clause specifies the URI prefix and the supported formats applicable to the O2ims RESTful APIs.

All resource URIs of the APIs shall have the following prefix, except the "API versions" resource which shall follow the rules specified in clause 9.3 of ETSI GS NFV-SOL 013 [22]:

###### {apiRoot}/<apiName>/<apiMajorVersion>/

The request URIs used in HTTP requests from the API service consumer towards the API service producer shall have the Resource URI structure defined in clause 4.4.1 of 3GPP TS 29.501 [11], i.e.:

###### {apiRoot}/<apiName>/<apiMajorVersion>/<apiSpecificResourceUriPart>

with the following components:

* The {apiRoot} shall be set as described in clause 4.4.1 of 3GPP TS 29.501 [11].
* The <apiName> indicates the API name of the service interface in an abbreviated form. The {apiName} of each interface is defined in the clause specifying the corresponding O2ims RESTful API.
* The <apiMajorVersion> indicates the current major version of the API and is defined in the clause specifying the corresponding O2ims RESTful API.
* The <apiSpecificResourceUriPart> indicates a resource URI of the API, and shall be set as described in in the corresponding O2ims RESTful API for each one of the defined resources.

Either HTTP/2, as defined in IETF RFC 7540 [19], or HTTP/1.1, as defined in IETF RFC 7230 [30] shall be used.

The Transmission Control Protocol (TCP) as specified in IETF RFC 793 [31] shall be used as transport protocol for HTTP/2 and HTTP/1.1.

For HTTP requests and responses that have a body, the content format JSON (see IETF RFC 8259 [20]) shall be supported. The JSON format shall be signalled by the content type "application/json".

All APIs shall support and use HTTP over TLS (also known as HTTPS) (see IETF RFC 2818 [32]). At least support TLS version 1.2 but recommended to support TLS version 1.3 as defined by IETF RFC 5246 [33] shall be supported.

NOTE 1: The HTTP protocol elements mentioned in the O2ims RESTful APIs originate from the HTTP specification; HTTPS runs the HTTP protocol on top of a TLS layer. For simplicity, the O2ims RESTful APIs specifications therefore use the statement above to mention "HTTP request", "HTTP header", etc., without explicitly calling out HTTPS.

NOTE 2: There are a number of best practices and guidelines how to configure and implement TLS 1.2 in a secure manner, as security threats evolve. A detailed specification of those is beyond the scope of the present document; the reader is referred to external documentation such as annex E of ETSI TS 133 310 [35].

All resource URIs of the API shall comply with the URI syntax as defined in IETF RFC 3986 [34]. An implementation that dynamically generates resource URI parts (individual path segments, sequences of path segments that are separated by "/", query parameter values) shall ensure that these parts only use the character set that is allowed by IETF

RFC 3986 [34] for these parts.

NOTE 3: This means that characters not part of this allowed set are escaped using percent-encoding as defined by IETF RFC 3986 [34].

Unless otherwise specified explicitly, all request URI parameters that are part of the path of the resource URI shall be individual path segments, i.e., shall not contain the "/" character.

NOTE 4: A request URI parameter is denoted by a string in curly brackets, e.g. {fooId}.

### Usage of HTTP header fields

#### General

HTTP headers are components of the header section of the HTTP request and response messages. They contain the information about the server/client and metadata of the transaction. The use of HTTP header fields shall comply with the provisions defined for those header fields in the specifications referenced from tables 3.1.3.2-1 and 3.1.3.3-1. The following clauses describe more details related to selected HTTP header fields.

#### Request header fields

This clause describes the usage of selected HTTP header fields of the request messages in the O2ims RESTful APIs. The HTTP header fields used in the request messages that shall be supported are specified in table 3.1.3.2-1.

###### Table 3.1.3.2-1: Header fields supported in the request message

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Header field name** | **Reference** | **Example** | **Descriptions** |
| Accept | IETF RFC 7231 [ref-  rfc7231] | application/json | Content-Types that are acceptable for the response.  This header field shall be present if the response is expected to have a non-empty message body. |
| Content-Type | IETF RFC 7231 [ref-  rfc7231] | application/json | The MIME type of the body of the request.  This header field shall be present if the request has a non-empty  message body. |
| Authorization | IETF RFC 7235 [ref-  rfc7235] | Bearer mF\_9.B5f-4.1JqM | The authorization token for the request. |
| Range | IETF RFC 7233 [ref-  rfc7233] | 1 000-2 000 | Requested range of bytes from a file. |
| Version | IETF RFC 4229 [ref-  rfc4229] | 1.2.0  or 1.2.0-  impl:example.com:myProduct:4 | Version of the API requested to use when responding to this request. |

</div>

#### Response header fields

This clause describes the usage of selected HTTP header fields of the response messages in the O2ims RESTful APIs. The HTTP header fields used in the response messages are specified in table 3.1.3.3-1.

###### Table 3.1.3.3-1: Header fields supported in the response message

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Header field name** | **Reference** | **Example** | **Descriptions** |
| Content-Type | IETF RFC 7231 [ref-  rfc7231] | application/json | The MIME type of the body of the response.  This header field shall be present if the response has a non-empty message body. |
| Location | IETF RFC 7231 [ref-  rfc7231] | <http://www.example.com/apiname/v> 1/objects/123 | Used in redirection, or when a new resource has been created.  This header field shall be present if the response status code is 201 or 3xx.  In the O2ims RESTful APIs this header field is also used if the response status code is 202 and a  new resource was created. |
| WWW-Authenticate | IETF RFC 7235 [ref-  rfc7235] | Bearer realm="example" | Challenge if the corresponding HTTP request has not provided authorization, or error details if the corresponding HTTP request has  provided an invalid authorization token. |
| Accept-Ranges | IETF RFC 7233 [ref-  rfc7233] | bytes | Used by the server to signal whether or not it supports ranges for certain resources. |
| Content-Range | IETF RFC 7233 [ref-  rfc7233] | bytes 21 010 - 47 021/47 022 | Signals the byte range that is  contained in the response, and the total length of the file. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Header field name** | **Reference** | **Example** | **Descriptions** |
| Retry-After | IETF RFC 7231 [ref-  rfc7231] | Fri, 31 Dec 1999 23:59:59 GMT  or 120 | Used to indicate how long the user agent ought to wait before making a follow-up request.  It can be used with 503 responses. The value of this field can be an HTTP-date or a number of seconds to delay after the response is  received. |
| Link | IETF RFC 8288 [ref-  rfc8288] | <<http://example.com/resources?nex> tpage\_opaque\_marker=abc123>; rel="next" | Reference to other resources. Used for paging in the present document, see clause 3.1.4. |
| Version | IETF RFC 4229 [ref-  rfc4229] | 1.2.0  or 1.2.0-  impl:example.com:myProduct:4 | Version of the API requested to use when responding to this request. |

</div>

### Result set control

#### Introduction

This clause specifies procedures that allow to control the size of the result set of GET requests w.r.t. the number of entries in a response list (using attribute-based filtering) or w.r.t. the number of attributes returned in a response (using attribute selection).

#### Attribute-based filtering and selector

The use of attribute-based filtering shall be supported by O2ims RESTful APIs as specified in clause 5.2.2 and 5.3.2 of ETSI GS NFV-SOL 013 [22].

NOTE: ETSI GS NFV-SOL 013 [22] refers to "RESTful NFV-MANO API" specification; and wherever such reference is provided "O2ims RESTful API" is to be considered instead for the purpose of the present document.

#### Handling of large query results

The handling of large query results shall be supported by O2ims RESTful APIs as specified in clause 5.4.2 of ETSI GS NFV-SOL 013 [22].

### Error reporting

In RESTful interfaces, application errors are mapped to HTTP errors. Since HTTP error information is generally not enough to discover the root cause of the error, additional application specific error information is typically delivered.

The error reporting shall be supported by O2ims RESTful APIs as specified in clause 6 of ETSI GS NFV-SOL 013 [22].

NOTE: ETSI GS NFV-SOL 013 [22] refers to "RESTful NFV-MANO API" specification; and wherever such reference is provided "O2ims RESTful API" is to be considered instead for the purpose of the present document.

### Common data types

#### Structured data types

##### Introduction

This clause defines data structures that are referenced from data structures in multiple O2ims RESTful APIs.

##### Type: Object

An object contains structured data and shall comply with the provisions of clause 4 of IETF RFC 8259 [ref-rfc8259].

##### Type: Link

This type represents a link to a resource using an absolute URI. It shall comply with the provisions defined in table 7.1.3-1.

###### Table 3.1.6.1.3-1: Definition of the Link data type

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Attribute name** | **Data type** | **Cardinality** | **Description** |
| href | Uri | 1 | URI of another resource referenced from a resource. Shall be an absolute URI (i.e. a URI that contains {apiRoot}). |

</div>

##### Type: NotificationLink

This type represents a link to a resource in a notification, using an absolute or relative URI. It shall comply with the provisions defined in table 3.1.6.1.4-1.

###### Table 3.1.6.1.4-1: Definition of the NotificationLink data type

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Attribute name** | **Data type** | **Cardinality** | **Description** |
| href | Uri | 1 | URI of a resource referenced from a notification.  Should be an absolute URI (i.e. a URI that contains {apiRoot}), however, may be a relative URI (i.e. a URI where the {apiRoot} part is omitted) if the  {apiRoot} information is not available. |

</div>

##### Type: KeyValuePairs

This type represents a list of key-value pairs. The order of the pairs in the list is not significant. In JSON, a set of key- value pairs is represented as an object. It shall comply with the provisions defined in clause 4 of IETF RFC 8259 [ref- rfc8259]. In the following example, a list of key-value pairs with four keys ("aString", "aNumber", "anArray" and "anObject") is provided to illustrate that the values associated with different keys can be of different type.

EXAMPLE:

{

"aString" : "O2ims service", "aNumber" : 0.03,

"anArray" : [1,2,3],

"anObject" : {"organization" : "O-RAN", workingGroup" : "WG6"}

}

##### Type: ApiVersionInformation

This type represents API version information. It shall comply with the provisions defined in table 3.1.6.1.6-1.

###### Table 3.1.6.1.6-1: ApiVersionInformation data type

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Attribute name** | **Data type** | **Cardinality** | **Description** |
| uriPrefix | String | 1 | Specifies the URI prefix for the API, in the following form  {apiRoot}/{apiName}/{apiMajorVersion}/. |
| apiVersions | Structure (inlined) | 1..N | Version(s) supported for the API signaled by the uriPrefix attribute. |
| >version | String | 1 | Identifies a supported version. The value of the version attribute shall be a version identifier as specified in clause 3.1.6.2. |
| >isDeprecated | Boolean | 0..1 | If such information is available, this attribute indicates whether use of the version signaled by the version attribute is deprecated (true) or not (false).  See note. |
| >retirementDate | DateTime | 0..1 | The date and time after which the API version will no longer be supported.  This attribute may be included if the value of the isDeprecated attribute is set to true and shall be absent otherwise. |
| NOTE: A deprecated version is still supported by the API producer but is recommended not to be used any longer.  When a version is no longer supported, it does not appear in the response body. | | | |

</div>

#### Simple data types and enumerations

##### Introduction

This clause defines simple data types and enumerations that can be referenced from data structures defined in multiple interfaces.

##### Simple data types

Table 3.1.6.2.2-1 lists the simple data types that are referenced from multiple interfaces.

###### Table 3.1.6.2.2-1: Simple data types

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Type name** | **Description** |
| Identifier | An identifier with the intention of being globally unique. Representation: string of variable length. See note 1. |
| DateTime | A date-time stamp. Representation: String formatted as defined by the date-time production in IETF RFC 3339 [ref-rfc3339]. |
| Uri | A string formatted according to IETF RFC 3986 [ref-rfc3986]. |
| Boolean | A data type having two values (true and false). |
| IpAddress | An IPV4 or IPV6 address. Representation: In case of an IPV4 address, string that consists of four decimal integers separated by dots, each integer ranging from 0 to 255. In case of an IPV6 address, string that consists of groups of zero to four hexadecimal digits, separated by colons. |
| Version | A version. Representation: string of variable length. |
| String | A string as defined in IETF RFC 8259 [ref-rfc8259]. |
| Number | A number as defined in IETF RFC 8259 [ref-rfc8259]. |
| Integer | An integer, i.e. a number that cannot have a fractional component. See note 2. |
| UnsignedInt | An unsigned integer, i.e. an integer that can't assume negative values. See note 2. |
| NOTE 1: Individual API specifications are assumed to define types for additional identifiers with dedicated scope (e.g. identifiers scoped by some O-Cloud).  NOTE 2: In the JSON instance data model, only the concept of a "number" is used to represent numerical data.  Numbers in JSON can be integral, i.e. have no fractional part, or can include a fractional part. The additional numeric types defined in the present document represent constraints on the general "number" type present in JSON instances which can be enforced e.g. during parsing when processing the JSON instance or expressed as constraints in modelling languages such as JSON Schema [ref-json-scheme] or OpenAPI [ref-  openapi]. | |

</div>

### Authorization of API requests and notifications

#### Introduction

The present version of this document does not specify specific authorization mechanisms to be considered for handling API requests and notifications specified in the present document. It is expected that implementations will leverage best practices and guidelines from relevant standards such as those defined in:

* IETF RFC 5246 [ref-rfc5246] for the use of TLS 1.2/1.3,
* IETF RFC 7235 [ref-rfc7235] for authentication mechanisms over HTTP/1.1,
* IETF RFC 6749 [ref-rfc6749] for the use of OAuth 2.0 authorization framework,
* IETF RFC 6750 [ref-rfc6750] for the use of OAuth 2.0 bearer tokens, and
* IETF RFC 7519 [ref-rfc7519] for use of JSON web tokens.

### Version management

#### Version identifiers and parameters

API version identifiers and rules for incrementing version identifier fields shall be supported by O2ims RESTful APIs as specified in clause 9.1 and 9.2 of ETSI GS NFV-SOL 013 [22].

NOTE: ETSI GS NFV-SOL 013 [22] refers to "RESTful NFV-MANO API" specification and OpenAPI specification that ETSI publishes; and wherever such reference is provided "O2ims RESTful API" and OpenAPI that O-RAN publishes is to be considered instead for the purpose of the present document.

Clause 9.2.2 of ETSI GS NFV-SOL 013 [22] provides examples of backward and non-backward compatible changes.

#### Version information retrieval and signaling

The API producer shall support the dedicated URIs to enable API consumers to retrieve information about API versions supported by an API producer as specified in clause 9.3 of ETSI GS NFV-SOL 013 [22], and the API consumer shall include the "Version" HTTP header in each HTTP request as specified in clause 9.4 of ETSI GS NFV-SOL 013 [22].

NOTE: ETSI GS NFV-SOL 013 [22] refers to "RESTful NFV-MANO API" specification; and wherever such reference is provided "O2ims RESTful API" is to be considered instead for the purpose of the present document.

## O2ims\_InfrastructureInventory Service API

### Description

This API allows the SMO to invoke O2ims\_InfrastructureInventory Services towards the O-Cloud. The operations defined for O2ims\_InfrastructureInventory Services through this API are:

* Query information about one or multiple Resource Type
* Query information about one or multiple Resource Pool
* Query information about one or multiple Resource
* Query information about one or multiple Deployment Manager
* Query information about one or multiple Subscriptions
* Notify consumer identified by an established subscription which is not filtered by the filter criteria of the occurrence of a change to the infrastructure inventory objects

### API version

For the O2ims\_InfrastructureInventory Service API version as specified in the present document, the MAJOR version field shall be 1, the MINOR version field shall be 0, and the PATCH version field shall be 0.

Table 3.2.2-1 lists the history of API versions of the O2ims\_InfrastructureInventory Service and the main capabilities added/removed across versions.

###### Table 3.2.2-1: History of API versions of the O2ims\_InfrastructureInventory Service.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Version** | **Description** |
| 1.0.0 | Initial API Supporting: Resource Type List Resource Pool list Resource Description Deployment Manager List Inventory Subscription List  Inventory Subscription Description |
| 1.1.0 | Modified method:  Inventory Subscription Description  New resources: Performance Dictionary Alarm Dictionary Alarm Dictionary List  Performance Dictionary List |

</div>

### REST resources structure and methods

All resource URIs of the API shall use the base URI specification defined in clause 3.1.2. The string "O2ims\_infrastructureInventory" shall be used to represent {apiName}. All resource URIs in the clauses below are defined relative to the formed base URI (i.e., {apiRoot}/O2ims\_infrastructureInventory/{apiVersion}).

When ambiguity is possible, the term REST resource is used to make the distinction between the term resource as understood within the context of REST API from the term resource as understood within the context of O-RAN.

Figure 3.2.3-1 shows the overall resource URI structure defined for the O2ims\_InfrastructureInventory Service API.

![]({{site.baseurl}}/assets/images/1ea500eb4e31.jpg)

###### Figure 3.1.8.2.3-1 Resource URI structure of the O2ims-infrastructureInventory API

Table 3.1.6.2.2.3-1 provides an overview of the resources and applicable HTTP methods.

The O-Cloud shall support responding to requests for all HTTP methods on the resources in table 3.2.3-1 that are marked as "M" (mandatory) in the "Cat" column. The O-Cloud shall also support the "API versions" resources as specified in clause 3.1.8.

###### Table 3.1.6.2.2.3-1 Resources and methods overview

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Resource name** | **Resource URI** | **HTTP**  **method** | **Cat** | **Description** |
| O-Cloud Description | / | GET | M | To get the attributes of the O- Cloud instance |
| Resource Type List | /resourceTypes | GET | M | To get a list of resource types |
| Resource Type Description | /resourceTypes/{resourceTypeId} | GET | M | To get an individual resource type description |
| Performance Dictionary | /resourceTypes/{resourceTypeId}/ performanceDictionary  /performanceDictionaries/  {performaneDictionaryId} | GET | M | To get the Performance Dictionary |
| Alarm Dictionary | /resourceTypes/{resourceTypeId}/ alarmDictionary  /alarmDictionaries/{alarmDictionaryId} | GET | M | To get the Alarm Dictionary |
| Resource Pool List | /resourcePools | GET | M | To get a list of resource pools |
| Resouce Pool Description | /resourcePools/{resourcePoolId} | GET | M | To get an individual resource pool description |
| Resource List | /resourcePools/{resourcePoolId}  /resources | GET | M | To get a list of resources in the resource pool |
| Resource Description | /resourcePools/{resourcePoolId}  /resources/{resourceId} | GET | M | To get an individual resource description |
| Deployment Manager List | /deploymentManagers | GET | M | To get a list of deployment managers |
| Deployment Manager Description | /deploymentManagers/{deploymentManagerId} | GET | M | To get an individual deployment manager description |
| Inventory Subscription List | /subscriptions | GET | M | To get a list of subscriptions |
| Inventory Subscription List | /subscriptions | POST | M | To create an individual subscription |
| Inventory Subscription Description | /subscriptions/{subscriptionId} | GET | M | To get an individual subscription description |
| Inventory Subscription Description | /subscriptions/{subscriptionId} | DELETE | M | To delete an individual subscription |
| Alarm Dictionary List | /alarmDictionaries | GET | M | To get the list of individual Dictionaries that qualify |
| Performance Dictionary List | /performanceDictionaries | GET | M | To get the list of individual  Performance Dictionaries that qualify |

</div>

### REST resources

#### Introduction

There are no preconditions or postconditions for a successful execution of each of the O2ims\_InfrastructureInventory Service API triggered by an operation.

#### REST resource: Resource Type List

##### Description

This resource represents the list of resource types that the O-Cloud is designed to support. The Resource Type List contains Resource Type Descriptions.

##### Resource definition

###### Resource URI: {apiRoot}/o2ims-infrastructureInventory/{apiMajorVersion}/resourceTypes

This resource shall support the resource URI variables defined in Table 3.2.4.2.2-1.

###### Table 3.2.4.2.2-1 Resource URI variables for this resource

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Name** | **Data type** | **Definition** |
| apiRoot | string | See clause 3.1.2 |
| apiMajorVersion | string | See clause 3.2.2 |

</div>

##### Resource methods

POST

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

GET

The GET operation is used to retrieve the list of resource type.

This method shall support the URI query parameters specified in Table 3.2.4.2.3.2-1.

###### Table 3.2.4.2.3.2-1 URI query parameters supported by the GET method on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Name** | **Cardinality** | **Description** |
| filter | 0..1 | Attribute-based filtering expression according to clause 5.2 of ETSI GS NFV-SOL 013 [22].  The O-Cloud shall support receiving this parameter as part of the URI query string. The API consumer may supply this parameter.  All attribute names that appear in the ResourceTypeInfo and in data types referenced from it shall be supported by the O-Cloud in the filter expression. |
| all\_fields | 0..1 | Include all complex attributes in the response. See clause 5.3 of ETSI  GS NFV-SOL 013 [22] for details. The O-Cloud shall support this parameter. |
| fields | 0..1 | Complex attributes to be included into the response. See clause 5.3 of ETSI GS NFV-SOL 013 [22] for details. The O-Cloud should support this parameter. |
| exclude\_fields | 0..1 | Complex attributes to be excluded from the response. See clause 5.3 of ETSI GS NFV-SOL 013 [22] for details. The O-Cloud should support this parameter. |
| exclude\_default | 0..1 | Indicates to exclude the following complex attributes from the response. See clause 5.3 of ETSI GS NFV-SOL 013 [22] for details. The O-Cloud shall support this parameter.  The following attributes shall be excluded from the list of ResourceTypeInfo in the response body if this parameter is provided, or none of the parameters "all\_fields", "fields", "exclude\_fields", "exclude\_default" are provided:  - TBD |
| nextpage\_opaque  \_marker | 0..1 | Marker to obtain the next page of a paged response. Shall be supported by the O-Cloud if the O-Cloud supports alternative 2 (paging) according to clause 5.4.2.1 of ETSI GS NFV-SOL 013 [22] for this resource. |

</div>

This method shall support the request data structures, the response data structures, and response codes specified in Table 3.2.4.2.3.2-2.

###### Table 3.2.4.2.3.2-2: Details of the GET request/response on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Request body** | **Data type** | **Cardinality** | **Description** | |
| n/a |  |  | |
| **Response body** | **Data type** | **Cardinality** | **Response Codes** | **Description** |
| ResourceTypeInfo | 0..N | 200 OK | Shall be returned when information about zero or more ResourceTypeInfo instances has been queried successfully.  The response body shall contain in an array the representations of zero or more ResourceTypeInfo instances, as defined in clause 3.2.6.2.2.  If the "filter" URI parameter or one of the "all\_fields", "fields" (if supported), "exclude\_fields" (if supported) or "exclude\_default" URI parameters was supplied in the request, the data in the response body shall have been transformed according to the rules specified in  clauses 5.2.2 and 5.3.2 of ETSI GS NFV-SOL 013 [22],  respectively.  If the O-Cloud supports alternative 2 (paging) according to clause 5.4.2.1 of ETSI GS NFV-SOL 013  [22] for this resource, inclusion of the Link HTTP header in this response shall follow the provisions in clause 5.4.2.3 of ETSI GS NFV-SOL 013 [22]. |
| ProblemDetails | 1 | 400 Bad Request | Shall be returned upon the following error: Invalid attribute-based filtering expression.  The response body shall contain a ProblemDetails  structure, in which the "detail" attribute should convey more information about the error. |
| ProblemDetails | 1 | 400 Bad Request | Shall be returned upon the following error: Invalid attribute selector.  The response body shall contain a ProblemDetails structure, in which the "detail" attribute should convey more information about the error. |
| ProblemDetails | 1 | 400 Bad Request | Shall be returned upon the following error: Response too big.  If the O-Cloud supports alternative 1 (error) according to clause 5.4.2.1 of ETSI GS NFV-SOL 013 [22] for this  resource, this error response shall follow the provisions in clause 5.4.2.2 of ETSI GS NFV-SOL 013 [22]. |
| ProblemDetails | See clause 3.1.  5 | 4xx/5xx | In addition to the response codes defined above, any common error response code as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] may be returned. |

</div>

PUT

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

PATCH

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

DELETE

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

#### REST resource: Resource Type Description

##### Description

This resource respresents the description of a resource type. The Resource Type Description is a record of the attributes. The record contains mandatory fields and allows for non-standard attributes to also be inventoried.

##### Resource definition

###### Resource URI: {apiRoot}/o2ims-infrastructureInventory/{apiMajorVersion}/resourceTypes/{resourceTypeId}

This resource shall support the resource URI variables defined in Table 3.2.4.3.2-1.

###### Table 3.2.4.3.2-1 Resource URI variables for this resource

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Name** | **Data type** | **Definition** |
| apiRoot | String | See clause 3.1.2 |
| apiMajorVersion | String | See clause 3.2.2 |
| resourceTypeId | Identifier | The identifier of the Resource Type Description resource. See note. |
| NOTE: This identifier can be retrieved from the resourceTypeId attribute in the payload body of the response to a GET request getting the list of "ResourceType" resources. | | |

</div>

##### Resource methods

POST

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

GET

The GET operation is used to retrieve the resource type description of a single resource type. This method shall support the URI query parameters specified in Table 3.2.4.3.3.2-1.

###### Table 3.2.4.3.3.2-1 URI query parameters supported by the GET method on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Name** | **Data type** | **P** | **Cardinality** | **Description** | **Applicability** |
| n/a |  |  |  |  |  |

</div>

This method shall support the request data structures, the response data structures, and response codes specified in Table 3.2.4.3.3.2-2.

###### Table 3.2.4.3.3.2-2: Details of the GET request/response on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Request body** | **Data type** | **Cardinality** | **Description** | |
| n/a |  |  | |
| **Response body** | **Data type** | **Cardinality** | **Response Codes** | **Description** |
| ResourceTypeInfo | 1 | 200 OK | Shall be returned when information about a ResourceTypeInfo instance has been queried successfully.  The response body shall contain a representation of  the ResourceTypeInfo instance, as defined in clause 3.2.6.2.2. |
| ProblemDetails | See clause 3.1.  5 | 4xx/5xx | In addition to the response codes defined above, any  common error response code as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] may be returned. |

</div>

PUT

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

PATCH

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

DELETE

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

#### REST resource: Resource Pool List

##### Description

This resource represents the list of Resource Pools that the O-Cloud has resource deployed to. The Resource Pool List contains Resource Pool Descriptions.

##### Resource definition

###### Resource URI: {apiRoot}/o2ims-infrastructureInventory/{apiMajorVersion}/resourcePools

This resource shall support the resource URI variables defined in Table 3.2.4.2.2-1.

###### Table 3.2.4.4.2-1 Resource URI variables for this resource

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Name** | **Data type** | **Definition** |
| apiRoot | String | See clause 3.1.2 |
| apiMajorVersion | String | See clause 3.2.2 |

</div>

##### Resource methods

POST

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

GET

The GET operation is used to retrieve the list of resource pools.

This method shall support the URI query parameters specified in Table 3.2.4.2.3.2-1.

###### Table 3.2.4.4.3.2-1 URI query parameters supported by the GET method on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Name** | **Cardinality** | **Description** |
| filter | 0..1 | Attribute-based filtering expression according to clause 5.2 of ETSI GS NFV-SOL 013 [22].  The O-Cloud shall support receiving this parameter as part of the URI query string. The API consumer may supply this parameter.  All attribute names that appear in the ResourcePoolInfo and in data types referenced from it shall be supported by the O-Cloud in the filter expression. |
| all\_fields | 0..1 | Include all complex attributes in the response. See clause 5.3 of ETSI  GS NFV-SOL 013 [22] for details. The O-Cloud shall support this parameter. |
| fields | 0..1 | Complex attributes to be included into the response. See clause 5.3 of ETSI GS NFV-SOL 013 [22] for details. The O-Cloud should support this  parameter. |
| exclude\_fields | 0..1 | Complex attributes to be excluded from the response. See clause 5.3 of ETSI GS NFV-SOL 013 [22] for details. The O-Cloud should support this parameter. |
| exclude\_default | 0..1 | Indicates to exclude the following complex attributes from the response. See clause 5.3 of ETSI GS NFV-SOL 013 [22] for details. The O-Cloud shall support this parameter.  The following attributes shall be excluded from the list of ResourcePoolInfo in the response body if this parameter is provided, or none of the parameters "all\_fields", "fields", "exclude\_fields", "exclude\_default" are provided:  - TBD |
| nextpage\_opaque  \_marker | 0..1 | Marker to obtain the next page of a paged response. Shall be supported by the O-Cloud if the O-Cloud supports alternative 2 (paging) according to  clause 5.4.2.1 of ETSI GS NFV-SOL 013 [22] for this resource. |

</div>

This method shall support the request data structures, the response data structures, and response codes specified in Table 3.2.4.4.3.2-2.

###### Table 3.2.4.4.3.2-2: Details of the GET request/response on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Request body** | **Data type** | **Cardinality** | **Description** | |
| n/a |  |  | |
| **Response body** | **Data type** | **Cardinality** | **Response Codes** | **Description** |
| ResourcePoolInfo | 0..N | 200 OK | Shall be returned when information about zero or more ResourcePoolInfo instances has been queried successfully.  The response body shall contain in an array the representations of zero or more ResourcePoolInfo instances, as defined in clause 3.2.6.2.3.  If the "filter" URI parameter or one of the "all\_fields", "fields" (if supported), "exclude\_fields" (if supported) or "exclude\_default" URI parameters was supplied in the request, the data in the response body shall have been transformed according to the rules specified in  clauses 5.2.2 and 5.3.2 of ETSI  GS NFV-SOL 013 [22] , respectively.  If the O-Cloud supports alternative 2 (paging) according to clause 5.4.2.1 of ETSI GS NFV-SOL 013  [22] for this resource, inclusion of the Link HTTP header in this response shall follow the provisions in clause 5.4.2.3 of ETSI GS NFV-SOL 013 [22] . |
| ProblemDetails | 1 | 400 Bad Request | Shall be returned upon the following error: Invalid attribute-based filtering expression.  The response body shall contain a ProblemDetails  structure, in which the "detail" attribute should convey more information about the error. |
| ProblemDetails | 1 | 400 Bad Request | Shall be returned upon the following error: Invalid attribute selector.  The response body shall contain a ProblemDetails structure, in which the "detail" attribute should convey more information about the error. |
| ProblemDetails | 1 | 400 Bad Request | Shall be returned upon the following error: Response too big.  If the O-Cloud supports alternative 1 (error) according to clause 5.4.2.1 of ETSI GS NFV-SOL 013 [22] for this resource, this error response shall follow the  provisions in clause 5.4.2.2 of ETSI GS NFV-SOL 013  [22] . |
| ProblemDetails | See clause 3.1.  5 | 4xx/5xx | In addition to the response codes defined above, any common error response code as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] may be returned. |

</div>

PUT

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] .

PATCH

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] .

DELETE

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] .

#### REST resource: Resource Pool Description

##### Description

The Resource Pool Description represents the description of a resource pool. This includes some mandatory attributes and allows for extended attributes as well.

##### Resource definition

###### Resource URI: {apiRoot}/o2ims-infrastructureInventory/{apiMajorVersion}/resourcePools/{resourcePoolId}

This resource shall support the resource URI variables defined in Table 3.2.4.2.2-1.

###### Table 3.2.4.5.2-1 Resource URI variables for this resource

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Name** | **Data type** | **Definition** |
| apiRoot | String | See clause 3.1.2 |
| apiMajorVersion | String | See clause 3.2.2 |
| resourcePoolId | Identifier | The identifier of the Resource Pool Description resource. See note. |
| NOTE: This identifier can be retrieved from the resourcePoolId attribute in the payload body of the response to a GET request getting the list of "ResourcePool" resources. | | |

</div>

##### Resource methods

POST

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] .

GET

The GET operation is used to retrieve the resource pool description of a single resource pool. This method shall support the URI query parameters specified in Table 3.2.4.2.3.2-1.

###### Table 3.2.4.5.3.2-1 URI query parameters supported by the GET method on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Name** | **Data type** | **P** | **Cardinality** | **Description** | **Applicability** |
| n/a |  |  |  |  |  |

</div>

This method shall support the request data structures, the response data structures, and response codes specified in Table 3.2.4.5.3.2-2.

###### Table 3.2.4.5.3.2-2: Details of the GET request/response on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Request body** | **Data type** | **Cardinality** | **Description** | |
| n/a |  |  | |
| **Response body** | **Data type** | **Cardinality** | **Response Codes** | **Description** |
| ResourcePoolInfo | 1 | 200 OK | Shall be returned when information about a ResourcePoolInfo instance has been queried successfully.  The response body shall contain a representation of the ResourcePoolInfo instance, as defined in clause  3.2.6.3.2. |
| ProblemDetails | See clause 3.1.  5 | 4xx/5xx | In addition to the response codes defined above, any common error response code as defined in clause 6.4  of ETSI GS NFV-SOL 013 [22] may be returned. |

</div>

PUT

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] .

PATCH

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] .

DELETE

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] .

#### REST resource: Resource List

##### Description

This resource represents the list of resources in a specific Resource Pool. The Resource List contains Resource Descriptions.

##### Resource definition

###### Resource URI: {apiRoot}/o2ims- infrastructureInventory/{apiMajorVersion}/resourcePools/{resourcePoolId}/resources

This resource shall support the resource URI variables defined in Table 3.2.4.2.2-1.

###### Table 3.2.4.6.2-1 Resource URI variables for this resource

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Name** | **Data type** | **Definition** |
| apiRoot | String | See clause 3.1.2 |
| apiMajorVersion | String | See clause 3.2.2 |
| resourcePoolId | Identifier | The identifier of the Resource Pool Description resource. See note. |
| NOTE: This identifier can be retrieved from the resourcePoolId attribute in the payload body of the response to a GET request getting the list of "ResourcePool" resources. | | |

</div>

##### Resource methods

POST

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] .

GET

The GET operation is used to retrieve the list of resource descriptions in the specific Resource Pool. This method shall support the URI query parameters specified in Table 3.2.4.2.3.2-1.

###### Table 3.2.4.6.3.2-1 URI query parameters supported by the GET method on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Name** | **Cardinality** | **Description** |
| filter | 0..1 | Attribute-based filtering expression according to clause 5.2 of ETSI GS NFV-SOL 013 [22] .  The O-Cloud shall support receiving this parameter as part of the URI query string. The API consumer may supply this parameter.  All attribute names that appear in the ResourceInfo and in data types  referenced from it shall be supported by the O-Cloud in the filter expression. |
| all\_fields | 0..1 | Include all complex attributes in the response. See clause 5.3 of ETSI GS NFV-SOL 013 [22] for details. The O-Cloud shall support this  parameter. |
| fields | 0..1 | Complex attributes to be included into the response. See clause 5.3 of ETSI GS NFV-SOL 013 [22] for details. The O-Cloud should support this  parameter. |
| exclude\_fields | 0..1 | Complex attributes to be excluded from the response. See clause 5.3 of ETSI GS NFV-SOL 013 [22] for details. The O-Cloud should support this parameter. |
| exclude\_default | 0..1 | Indicates to exclude the following complex attributes from the response. See clause 5.3 of ETSI GS NFV-SOL 013 [22] for details. The O-Cloud shall support this parameter.  The following attributes shall be excluded from the list of ResourceInfo in the response body if this parameter is provided, or none of the parameters "all\_fields", "fields", "exclude\_fields", "exclude\_default" are provided:  - TBD |
| nextpage\_opaque  \_marker | 0..1 | Marker to obtain the next page of a paged response. Shall be supported by the O-Cloud if the O-Cloud supports alternative 2 (paging) according to clause 5.4.2.1 of ETSI GS NFV-SOL 013 [22] for this resource. |

</div>

This method shall support the request data structures, the response data structures, and response codes specified in Table 3.2.4.6.3.2-2.

###### Table 3.2.4.6.3.2-2: Details of the GET request/response on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Request body** | **Data type** | **Cardinality** | **Description** | |
| n/a |  |  | |
| **Response body** | **Data type** | **Cardinality** | **Response Codes** | **Description** |
| ResourceInfo | 0..N | 200 OK | Shall be returned when information about zero or more ResourceInfo instances has been queried successfully. The response body shall contain in an array the representations of zero or more ResourceInfo instances, as defined in clause 3.2.6.2.4.  If the "filter" URI parameter or one of the "all\_fields", "fields" (if supported), "exclude\_fields" (if supported) or "exclude\_default" URI parameters was supplied in the request, the data in the response body shall have been transformed according to the rules specified in  clauses 5.2.2 and 5.3.2 of ETSI  GS NFV-SOL 013 [22] , respectively.  If the O-Cloud supports alternative 2 (paging) according to clause 5.4.2.1 of ETSI GS NFV-SOL 013  [22] for this resource, inclusion of the Link HTTP header in this response shall follow the provisions in clause 5.4.2.3 of ETSI GS NFV-SOL 013 [22] . |
| ProblemDetails | 1 | 400 Bad Request | Shall be returned upon the following error: Invalid attribute-based filtering expression.  The response body shall contain a ProblemDetails structure, in which the "detail" attribute should convey  more information about the error. |
| ProblemDetails | 1 | 400 Bad Request | Shall be returned upon the following error: Invalid attribute selector.  The response body shall contain a ProblemDetails structure, in which the "detail" attribute should convey more information about the error. |
| ProblemDetails | 1 | 400 Bad Request | Shall be returned upon the following error: Response too big.  If the O-Cloud supports alternative 1 (error) according to clause 5.4.2.1 of ETSI GS NFV-SOL 013 [22] for this resource, this error response shall follow the provisions in clause 5.4.2.2 of ETSI GS NFV-SOL 013  [22] . |
| ProblemDetails | See clause 3.1.  5 | 4xx/5xx | In addition to the response codes defined above, any common error response code as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] may be returned. |

</div>

PUT

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] .

PATCH

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] .

DELETE

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] .

#### REST resource: Resource Description

##### Description

The Resource Description represents the description of an individual resource instance in a resource pool. This includes some mandatory attributes including a reference to the Resource Type that defines it and allows for extended attributes as well.

##### Resource definition

###### Resource URI: {apiRoot}/o2ims- infrastructureInventory/{apiMajorVersion}/resourcePools/{resourcePoolId}/resources/{resourceId}

This resource shall support the resource URI variables defined in Table 3.2.4.7.2-1.

###### Table 3.2.4.7.2-1 Resource URI variables for this resource

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Name** | **Data type** | **Definition** |
| apiRoot | string | See clause 4.1.1 |
| apiMajorVersion | String | See clause 3.2.2 |
| resourcePoolId | Identifier | The identifier of the Resource Pool Description resource. See note1. |
| resourceId | Identifier | The identifier of the Resource in the Resource Pool. See note2. |
| NOTE 1: This identifier can be retrieved from the resourcePoolID attribute in the payload body of the response to a GET request getting the list of "ResourcePool" resources.  NOTE 2: This identifier can be retrieved from the resourceID attribute in the payload body of the response to a GET request getting the list of "ResourcePoolResourceDescription" resources. | | |

</div>

##### Resource methods

POST

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] .

GET

The GET operation is used to retrieve the resource description of an individual resource instance in a resource pool. This method shall support the URI query parameters specified in Table 3.2.4.2.3.2-1.

###### Table 3.2.4.7.3.2-1 URI query parameters supported by the GET method on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Name** | **Data type** | **P** | **Cardinality** | **Description** | **Applicability** |
| n/a |  |  |  |  |  |

</div>

This method shall support the request data structures, the response data structures, and response codes specified in Table 3.2.4.7.3.2-2.

###### Table 3.2.4.7.3.2-2: Details of the GET request/response on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Request body** | **Data type** | **Cardinality** | **Description** | |
| n/a |  |  | |
| **Response body** | **Data type** | **Cardinality** | **Response Codes** | **Description** |
| ResourceInfo | 1 | 200 OK | Shall be returned when information about a ResourceInfo instance has been queried successfully. The response body shall contain a representation of the ResourceInfo instance, as defined in clause  3.2.6.2.4. |
| ProblemDetails | See clause 3.1.  5 | 4xx/5xx | In addition to the response codes defined above, any common error response code as defined in clause 6.4  of ETSI GS NFV-SOL 013 [22] may be returned. |

</div>

PUT

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] .

PATCH

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] .

DELETE

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] .

#### REST resource: Deployment Manager List

##### Description

This resource represents the set of Deployment Managers in the O-Cloud the SMO can use for managing Deployments. The Deployment Manager List contains Deployment Manager Descriptions.

##### Resource definition

###### Resource URI: {apiRoot}/o2ims-infrastructureInventory/{apiMajorVersion}/deploymentManagers

This resource shall support the resource URI variables defined in Table 3.2.4.8.2-1.

###### Table 3.2.4.8.2-1 Resource URI variables for this resource

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Name** | **Data type** | **Definition** |
| apiRoot | String | See clause 3.1.2 |
| apiMajorVersion | String | See clause 3.2.2 |

</div>

##### Resource methods

POST

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] .

GET

The GET operation is used to retrieve the list of deployment manager.

This method shall support the URI query parameters specified in Table 3.2.4.8.3.2-1.

###### Table 3.2.4.8.3.2-1 URI query parameters supported by the GET method on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Name** | **Cardinality** | **Description** |
| filter | 0..1 | Attribute-based filtering expression according to clause 5.2 of ETSI GS NFV-SOL 013 [22] .  The O-Cloud shall support receiving this parameter as part of the URI query string. The API consumer may supply this parameter.  All attribute names that appear in the DeploymentManagerInfo and in data types referenced from it shall be supported by the O-Cloud in the filter expression. |
| all\_fields | 0..1 | Include all complex attributes in the response. See clause 5.3 of ETSI GS NFV-SOL 013 [22] for details. The O-Cloud shall support this parameter. |
| fields | 0..1 | Complex attributes to be included into the response. See clause 5.3 of ETSI GS NFV-SOL 013 [22] for details. The O-Cloud should support this parameter. |
| exclude\_fields | 0..1 | Complex attributes to be excluded from the response. See clause 5.3 of  ETSI GS NFV-SOL 013 [22] for details. The O-Cloud should support this parameter. |
| exclude\_default | 0..1 | Indicates to exclude the following complex attributes from the response. See clause 5.3 of ETSI GS NFV-SOL 013 [22] for details. The O-Cloud shall support this parameter.  The following attributes shall be excluded from the list of DeploymentManagerInfo in the response body if this parameter is provided, or none of the parameters "all\_fields", "fields", "exclude\_fields", "exclude\_default" are provided:  - TBD |
| nextpage\_opaque  \_marker | 0..1 | Marker to obtain the next page of a paged response. Shall be supported by the O-Cloud if the O-Cloud supports alternative 2 (paging) according to clause 5.4.2.1 of ETSI GS NFV-SOL 013 [22] for this resource. |

</div>

This method shall support the request data structures, the response data structures, and response codes specified in Table 3.2.4.8.3.2-2.

###### Table 3.2.4.4.3.2-2: Details of the GET request/response on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Request body** | **Data type** | **Cardinality** | **Description** | |
| n/a |  |  | |
| **Response body** | **Data type** | **Cardinality** | **Response Codes** | **Description** |
| DeploymentManagerInf o | 0..N | 200 OK | Shall be returned when information about zero or more DeploymentManagerInfo instances has been queried successfully.  The response body shall contain in an array the representations of zero or more DeploymentManagerInfo instances, as defined in clause 3.2.6.2.5.  If the "filter" URI parameter or one of the "all\_fields", "fields" (if supported), "exclude\_fields" (if supported) or "exclude\_default" URI parameters was supplied in the request, the data in the response body shall have been transformed according to the rules specified in  clauses 5.2.2 and 5.3.2 of ETSI  GS NFV-SOL 013 [22] , respectively.  If the O-Cloud supports alternative 2 (paging) according to clause 5.4.2.1 of ETSI GS NFV-SOL 013  [22] for this resource, inclusion of the Link HTTP header in this response shall follow the provisions in  clause 5.4.2.3 of ETSI GS NFV-SOL 013 [22] . |
| ProblemDetails | 1 | 400 Bad Request | Shall be returned upon the following error: Invalid attribute-based filtering expression.  The response body shall contain a ProblemDetails structure, in which the "detail" attribute should convey more information about the error. |
| ProblemDetails | 1 | 400 Bad Request | Shall be returned upon the following error: Invalid attribute selector.  The response body shall contain a ProblemDetails structure, in which the "detail" attribute should convey more information about the error. |
| ProblemDetails | 1 | 400 Bad Request | Shall be returned upon the following error: Response too big.  If the O-Cloud supports alternative 1 (error) according to clause 5.4.2.1 of ETSI GS NFV-SOL 013 [22] for this resource, this error response shall follow the provisions in clause 5.4.2.2 of ETSI GS NFV-SOL 013  [22] . |
| ProblemDetails | See clause 3.1.  5 | 4xx/5xx | In addition to the response codes defined above, any common error response code as defined in clause 6.4  of ETSI GS NFV-SOL 013 [22] may be returned. |

</div>

PUT

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] .

PATCH

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] .

DELETE

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] .

#### REST resource: Deployment Manager Description

##### Description

The Deployment Manager Description represents the description of a Deployment Manager instance in the O-Cloud. This includes some mandatory attributes including a reference to the capabilities that defines it and allows for extended attributes as well.

##### Resource definition

###### Resource URI: {apiRoot}/o2ims- infrastructureInventory/{apiMajorVersion}/deploymentManagers/{deploymentManagerId}

This resource shall support the resource URI variables defined in Table 3.2.4.2.2-1.

###### Table 3.2.4.9.2-1 Resource URI variables for this resource

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Name** | **Data type** | **Definition** |
| apiRoot | String | See clause 3.1.2 |
| apiMajorVersion | String | See clause 3.2.2 |
| deploymentManagerId | Identifier | The identifier of the Deployment Manager Description resource. |
| NOTE: This identifier can be retrieved from the deploymentManagerId attribute in the payload body of the response to a GET request getting the list of "DeploymentManagerInfo" resources. | | |

</div>

##### Resource methods

POST

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] .

GET

The GET operation is used to retrieve the deployment manager description of a single deployment manager. This method shall support the URI query parameters specified in Table 3.2.4.2.3.2-1.

###### Table 3.2.4.9.3.2-1 URI query parameters supported by the GET method on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Name** | **Data type** | **P** | **Cardinality** | **Description** | **Applicability** |
| n/a |  |  |  |  |  |

</div>

This method shall support the request data structures, the response data structures, and response codes specified in Table 3.2.4.9.3.2-2.

###### Table 3.2.4.9.3.2-2: Details of the GET request/response on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Request body** | **Data type** | **Cardinality** | **Description** | |
| n/a |  |  | |
| **Response body** | **Data type** | **Cardinality** | **Response Codes** | **Description** |
| DeploymentManagerInf o | 1 | 200 OK | Shall be returned when information about a DeploymentManagerInfo instance has been queried successfully.  The response body shall contain a representation of  the DeploymentManagerInfo instance, as defined in clause 3.2.6.2.2. |
| ProblemDetails | See clause 3.1.  5 | 4xx/5xx | In addition to the response codes defined above, any  common error response code as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] may be returned. |

</div>

PUT

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] .

PATCH

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] .

DELETE

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] .

#### REST resource: Cloud Description

##### Description

This resource represents the attributes of the O-Cloud instance and provides the Cloud Description.

##### Resource definition

###### Resource URI: {apiRoot}/o2ims-infrastructureInventory/{apiMajorVersion}/

This resource shall support the resource URI variables defined in Table 3.2.4.10.2-1.

###### Table 3.2.1.10.2-1 Resource URI variables for this resource

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Name** | **Data type** | **Definition** |
| apiRoot | string | See clause 3.1.2 |
| apiMajorVersion | string | See clause 3.2.2 |

</div>

##### Resource methods

POST

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] .

GET

The GET operation is used to retrieve the O-Cloud description.

This method shall support the URI query parameters specified in Table 3.2.4.10.3.2-1.

###### Table 3.2.4.10.3.2-1 URI query parameters supported by the GET method on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Name** | **Cardinality** | **Description** |
| all\_fields | 0..1 | Include all complex attributes in the response. See clause 5.3 of ETSI GS NFV-SOL 013 [22] for details. The O-Cloud shall support this  parameter. |
| fields | 0..1 | Complex attributes to be included into the response. See clause 5.3 of ETSI GS NFV-SOL 013 [22] for details. The O-Cloud should support this  parameter. |
| exclude\_fields | 0..1 | Complex attributes to be excluded from the response. See clause 5.3 of ETSI GS NFV-SOL 013 [22] for details. The O-Cloud should support this parameter. |
| exclude\_default | 0..1 | Indicates to exclude the following complex attributes from the response. See clause 5.3 of ETSI GS NFV-SOL 013 [22] for details. The O-Cloud shall support this parameter.  The following attributes shall be excluded from the list of ResourceTypeInfo in the response body if this parameter is provided, or none of the parameters "all\_fields", "fields", "exclude\_fields", "exclude\_default" are provided:  - TBD |

</div>

This method shall support the request data structures, the response data structures, and response codes specified in Table 3.2.4.10.3.2-2.

###### Table 3.2.4.10.3.2-2: Details of the GET request/response on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Request body** | **Data type** | **Cardinality** | **Description** | |
| n/a |  |  | |
| **Response body** | **Data type** | **Cardinality** | **Response Codes** | **Description** |
| OCloudInfo | 1 | 200 OK | Shall be returned when information for the OCloudInfo has been queried successfully.  The response body shall contain a representation of the OCloudInfo instance, as defined in clause 3.2.6.2.6. |
| ProblemDetails | 1 | 400 Bad Request | Shall be returned upon the following error: Invalid attribute-based filtering expression.  The response body shall contain a ProblemDetails  structure, in which the "detail" attribute should convey more information about the error. |
| ProblemDetails | 1 | 400 Bad Request | Shall be returned upon the following error: Invalid attribute selector.  The response body shall contain a ProblemDetails structure, in which the "detail" attribute should convey  more information about the error. |
| ProblemDetails | See clause 3.1.  5 | 4xx/5xx | In addition to the response codes defined above, any common error response code as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] may be returned. |

</div>

PUT

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] .

PATCH

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] .

DELETE

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] .

#### REST resource: Inventory Subscription List

##### Description

This resource represents the set of Inventory Subscriptions in the O-Cloud the SMO can use for being notified when certain changes in the inventory object occur. The Inventory Subscription List contains Inventory Subscription Descriptions.

##### Resource definition

###### Resource URI: {apiRoot}/o2ims-infrastructureInventory/{apiMajorVersion}/subscriptions

This resource shall support the resource URI variables defined in Table 3.2.4.11.2-1.

###### Table 3.2.4.11.2-1 Resource URI variables for this resource

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Name** | **Data type** | **Definition** |
| apiRoot | String | See clause 3.1.2 |
| apiMajorVersion | String | See clause 3.2.2 |

</div>

##### Resource methods

POST

The POST operation is used to create an inventory subscription.

This method shall support the URI query parameters specified in Table 3.2.4.11.3.1-1.

###### Table 3.2.4.11.3.1-1 URI query parameters supported by the POST method on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Name** | **Data type** | **P** | **Cardinality** | **Description** | **Applicability** |
| n/a |  |  |  |  |  |

</div>

This method shall support the request data structures, the response data structures, and response codes specified in Table 3.2.4.11.3.1-2.

###### Table 3.2.4.11.3.1-2: Details of the POST request/response on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Request body** | **Data type** | **Cardinality** | **Description** | |
| InventorySubscriptionInfo | 1 | The InventorySubscriptionInfo instance to be created as defined in clause 3.2.6.2.7. Note: The supplied SubscriptionID is ignored and assigned by the O-Cloud. | |
| **Response body** | **Data type** | **Cardinality** | **Response Codes** | **Description** |
| InventorySubscriptionInfo | 1 | 201  Created | Shall be returned when information about a InventorySubscriptionInfo instance has been created successfully.  The response body shall contain a representation of  the InventorySubscriptionInfo instance, as defined in clause 3.2.6.2.7. |
| ProblemDetails | See clause 3.1.  5 | 4xx/5xx | In addition to the response codes defined above, any  common error response code as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] may be returned. |

</div>

GET

The GET operation is used to retrieve the list of inventory subscriptions.

This method shall support the URI query parameters specified in Table 3.2.4.11.3.2-1.

###### Table 3.2.4.11.3.2-1 URI query parameters supported by the GET method on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Name** | **Cardinality** | **Description** |
| filter | 0..1 | Attribute-based filtering expression according to clause 5.2 of ETSI GS NFV-SOL 013 [22] .  The O-Cloud shall support receiving this parameter as part of the URI query string. The API consumer may supply this parameter.  All attribute names that appear in the InventorySubscriptionInfo and in data types referenced from it shall be supported by the O-Cloud in the filter expression. |
| all\_fields | 0..1 | Include all complex attributes in the response. See clause 5.3 of ETSI GS NFV-SOL 013 [22] for details. The O-Cloud shall support this parameter. |
| fields | 0..1 | Complex attributes to be included into the response. See clause 5.3 of ETSI GS NFV-SOL 013 [22] for details. The O-Cloud should support this parameter. |
| exclude\_fields | 0..1 | Complex attributes to be excluded from the response. See clause 5.3 of  ETSI GS NFV-SOL 013 [22] for details. The O-Cloud should support this parameter. |
| exclude\_default | 0..1 | Indicates to exclude the following complex attributes from the response. See clause 5.3 of ETSI GS NFV-SOL 013 [22] for details. The O-Cloud shall support this parameter.  The following attributes shall be excluded from the list of InventorySubscriptionInfo in the response body if this parameter is provided, or none of the parameters "all\_fields", "fields", "exclude\_fields", "exclude\_default" are provided:  - TBD |
| nextpage\_opaque  \_marker | 0..1 | Marker to obtain the next page of a paged response. Shall be supported by the O-Cloud if the O-Cloud supports alternative 2 (paging) according to clause 5.4.2.1 of ETSI GS NFV-SOL 013 [22] for this resource. |

</div>

This method shall support the request data structures, the response data structures, and response codes specified in Table 3.2.4.11.3.2-2.

###### Table 3.2.4.11.3.2-2: Details of the GET request/response on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Request body** | **Data type** | **Cardinality** | **Description** | |
| n/a |  |  | |
| **Response body** | **Data type** | **Cardinality** | **Response Codes** | **Description** |
| InventorySubscriptionIn fo | 0..N | 200 OK | Shall be returned when information about zero or more InventorySubscriptionInfo instances has been queried successfully.  The response body shall contain in an array the representations of zero or more InventorySubscriptionInfo instances, as defined in clause 3.2.6.2.7.  If the "filter" URI parameter or one of the "all\_fields", "fields" (if supported), "exclude\_fields" (if supported) or "exclude\_default" URI parameters was supplied in the request, the data in the response body shall have been transformed according to the rules specified in  clauses 5.2.2 and 5.3.2 of ETSI  GS NFV-SOL 013 [22] , respectively.  If the O-Cloud supports alternative 2 (paging) according to clause 5.4.2.1 of ETSI GS NFV-SOL 013  [22] for this resource, inclusion of the Link HTTP header in this response shall follow the provisions in  clause 5.4.2.3 of ETSI GS NFV-SOL 013 [22] . |
| ProblemDetails | 1 | 400 Bad Request | Shall be returned upon the following error: Invalid attribute-based filtering expression.  The response body shall contain a ProblemDetails structure, in which the "detail" attribute should convey more information about the error. |
| ProblemDetails | 1 | 400 Bad Request | Shall be returned upon the following error: Invalid attribute selector.  The response body shall contain a ProblemDetails structure, in which the "detail" attribute should convey more information about the error. |
| ProblemDetails | 1 | 400 Bad Request | Shall be returned upon the following error: Response too big.  If the O-Cloud supports alternative 1 (error) according to clause 5.4.2.1 of ETSI GS NFV-SOL 013 [22] for this resource, this error response shall follow the provisions in clause 5.4.2.2 of ETSI GS NFV-SOL 013  [22] . |
| ProblemDetails | See clause 3.1.  5 | 4xx/5xx | In addition to the response codes defined above, any common error response code as defined in clause 6.4  of ETSI GS NFV-SOL 013 [22] may be returned. |

</div>

PUT

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] .

PATCH

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] .

DELETE

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] .

#### REST resource: Inventory Subscription Description

##### Description

The Inventory Susbcription Description represents the description of a subscription to inventory change events in the O- Cloud.

##### Resource definition

###### Resource URI: {apiRoot}/o2ims-infrastructureInventory/{apiMajorVersion}/subscriptions/{subscriptionId}

This resource shall support the resource URI variables defined in Table 3.2.4.2.2-1.

###### Table 3.2.4.12.2-1 Resource URI variables for this resource

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Name** | **Data type** | **Definition** |
| apiRoot | String | See clause 3.1.2 |
| apiMajorVersion | String | See clause 3.2.2 |
| subscriptionId | Identifier | The identifier of the Inventory Subscription Description resource. |
| NOTE: This identifier can be retrieved from the subsciptionsId attribute in the payload body of the response to a GET request getting the list of "InventorySubscriptionInfo" resources. | | |

</div>

##### Resource methods

POST

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] .

GET

The GET operation is used to retrieve the inventory subscription description of a single inventory subscription. This method shall support the URI query parameters specified in Table 3.2.4.12.3.2-1.

###### Table 3.2.4.12.3.2-1 URI query parameters supported by the GET method on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Name** | **Data type** | **P** | **Cardinality** | **Description** | **Applicability** |
| n/a |  |  |  |  |  |

</div>

This method shall support the request data structures, the response data structures, and response codes specified in Table 3.2.4.12.3.2-2.

###### Table 3.2.4.12.3.2-2: Details of the GET request/response on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Request body** | **Data type** | **Cardinality** | **Description** | |
| n/a |  |  | |
| **Response body** | **Data type** | **Cardinality** | **Response Codes** | **Description** |
| InventorySubscriptionIn fo | 1 | 200 OK | Shall be returned when information about a InventorySubscriptionInfo instance has been queried successfully.  The response body shall contain a representation of  the InventorySubscriptionInfo instance, as defined in clause 3.2.6.2.7. |
| ProblemDetails | See clause 3.1.  5 | 4xx/5xx | In addition to the response codes defined above, any  common error response code as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] may be returned. |

</div>

PUT

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] .

PATCH

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] .

DELETE

The DELETE operation is used to delete the inventory subscription description of a single inventory subscription. This method shall support the URI query parameters specified in Table 3.2.4.12.3.5-1.

###### Table 3.2.4.12.3.5-1 URI query parameters supported by the DELETE method on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Name** | **Data type** | **P** | **Cardinality** | **Description** | **Applicability** |
| n/a |  |  |  |  |  |

</div>

This method shall support the request data structures, the response data structures, and response codes specified in Table 3.2.4.12.3.5-2.

###### Table 3.2.4.12.3.5-2: Details of the DELETE request/response on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Request body** | **Data type** | **Cardinality** | **Description** | |
| n/a |  |  | |
| **Response body** | **Data type** | **Cardinality** | **Response Codes** | **Description** |
| n/a | 1 | 204 | No content. |
| ProblemDetails | See clause 3.1.  5 | 4xx/5xx | In addition to the response codes defined above, any  common error response code as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] may be returned. |

</div>

#### REST resource: Alarm Dictionary

##### Description

The Alarm Dictionary REST resource dedicated to the Alarm Dictionary which describes alarms that are collected. The Alarm Dictionaries are integrated by the IMS in the O-Cloud and provided to the SMO for consumption.

##### Resource definition

Resource URI for Alarm Dictionaries

###### Resource URI: {apiRoot}/o2ims- infrastructureInventory/{apiMajorVersion}/alarmDictionaries/{alarmDictionaryId}

This resource shall support the resource URI variables defined in Table 3.2.4.3.2-1.

###### Table 3.2.4.13.2.1-1 Resource URI variables for this resource

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Name** | **Data type** | **Definition** |
| apiRoot | String | See clause 3.1.2 |
| apiMajorVersion | String | See clause 3.2.2 |
| alarmDictionaryId | Identifier | The alarmDictionaryId is a unique identifier that singles out an individual Alarm Dictionary of interest. |

</div>

Resource URI for Resource Type Alarm Dictionary

###### Resource URI: {apiRoot}/o2ims- infrastructureInventory/{apiMajorVersion}/resourceTypes/{resourceTypeId}/alarmDictionary

This resource shall support the resource URI variables defined in Table 3.2.4.3.2-1.

###### Table 3.2.4.13.2.2-2 Resource URI variables for this resource

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Name** | **Data type** | **Definition** |
| apiRoot | String | See clause 3.1.2 |
| apiMajorVersion | String | See clause 3.2.2 |
| resourceTypeId | Identifier | The identifier of the Resource Type Description resource. See Note. |
| NOTE: This identifier can be retrieved from the resourceTypeId attribute in the payload body of the response to a GET request getting the list of "ResourceType" resources. | | |

</div>

##### Resource methods

POST

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

GET

The GET operation is used to retrieve a single dictionary.

This method shall support the URI query parameters specified in Table 3.2.4.3.3.2-1.

###### Table 3.2.4.13.3.2-1 URI query parameters supported by the GET method on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Name** | **Data type** | **P** | **Cardinality** | **Description** | **Applicability** |
| n/a |  |  |  |  |  |

</div>

This method shall support the request data structures, the response data structures, and response codes specified in Table 3.2.4.13.3.2-2.

###### Table 3.2.4.13.3.2-2: Details of the GET request/response on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Request body** | **Data type** | **Cardinality** | **Description** | |
| n/a |  |  | |
| **Response body** | **Data type** | **Cardinality** | **Response Codes** | **Description** |
| AlarmDictionary | 1 | 200 OK | Shall be returned when information about an AlarmDictionary instance has been queried successfully. The response body shall contain a representation of the AlarmDictionary instance, as  defined in clause 3.2.6.2.8. |
| ProblemDetails | See clause 3.1.  5 | 4xx/5xx | In addition to the response codes defined above, any common error response code as defined in clause 6.4  of ETSI GS NFV-SOL 013 [22] may be returned. |

</div>

PUT

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

PATCH

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

DELETE

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

#### REST resource: Alarm Dictionary List

##### Description

The Alarm Dictionary List resource represents the collection of Alarm Dictionaries. The API consumer can use this resource to query multiple Alarm Dictionaries.

##### Resource definition

###### Resource URI: {apiRoot}/o2ims-infrastructureInventory/{apiMajorVersion}/alarmDictionaries

This resource shall support the resource URI variables defined in Table 3.2.4.3.2-1.

###### Table 3.2.4.14.2-1 Resource URI variables for this resource

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Name** | **Data type** | **Definition** |
| apiRoot | String | See clause 3.1.2 |
| apiMajorVersion | String | See clause 3.2.2 |

</div>

##### Resource methods

POST

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

GET

The GET operation is used to retrieve a list of Alarm dictionaries.

This method shall support the URI query parameters specified in Table 3.2.4.3.3.2-1.

###### Table 3.2.4.14.3.2-1 URI query parameters supported by the GET method on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Name** | **Cardinality** | **Description** |
| Filter | 0..1 | Attribute-based filtering expression according to clause 5.2 of ETSI GS NFV-SOL 013 [22].  The O-Cloud shall support receiving this parameter as part of the URI query string. The API consumer may supply this parameter.  All attribute names that appear in the AlarmDictionary shall be supported by the O-Cloud in the filter expression. |
| all\_fields | 0..1 | Include all complex attributes in the response. See clause 5.3 of ETSI  GS NFV-SOL 013 [22] for details. The O-Cloud shall support this parameter. |
| Fields | 0..1 | Complex attributes to be included into the response. See clause 5.3 of ETSI  GS NFV-SOL 013 [22] for details. The O-Cloud should support this parameter. |
| exclude\_fields | 0..1 | Complex attributes to be excluded from the response. See clause 5.3 of  ETSI GS NFV-SOL 013 [22] for details. The O-Cloud should support this parameter. |
| exclude\_default | 0..1 | Indicates to exclude the following complex attributes from the response. See clause 5.3 of ETSI GS NFV-SOL 013 [22] for details. The O-Cloud shall support this parameter.  The following attributes shall be excluded from the list of AlarmDictionary in the response body if this parameter is provided, or none of the parameters "all\_fields", "fields", "exclude\_fields", "exclude\_default" are provided:  - alarmDefinition |
| nextpage\_opaque  \_marker | 0..1 | Marker to obtain the next page of a paged response. Shall be supported by the O-Cloud if the O-Cloud supports alternative 2 (paging) according to  clause 5.4.2.1 of ETSI GS NFV-SOL 013 [22] for this resource. |

</div>

This method shall support the request data structures, the response data structures, and response codes specified in Table 3.2.4.14.3.2-2.

###### Table 3.2.4.14.3.2-2: Details of the GET request/response on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Request body** | **Data type** | **Cardinality** | **Description** | |
| n/a |  |  | |
| **Response body** | **Data type** | **Cardinality** | **Response Codes** | **Description** |
| AlarmDictionary | 0..N | 200 OK | Shall be returned when information about zero or more AlarmDictionary instances has been queried successfully. The response body shall contain in an array the representations of zero or more AlarmDictionary instance(s), as defined in clause 3.2.6.2.8.  If the "filter" URI parameter or one of the "all\_fields", "fields" (if supported), "exclude\_fields" (if supported) or "exclude\_default" URI parameters was supplied in the request, the data in the response body shall have been transformed according to the rules specified in  clauses 5.2.2 and 5.3.2 of ETSI GS NFV-SOL 013 [22],  respectively.  If the O-Cloud supports alternative 2 (paging) according to clause 5.4.2.1 of ETSI GS NFV-SOL 013  [22] for this resource, inclusion of the Link HTTP header in this response shall follow the provisions in clause 5.4.2.3 of ETSI GS NFV-SOL 013 [22]. |
| ProblemDetails | 1 | 400 Bad Request | Shall be returned upon the following error: Invalid attribute-based filtering expression.  The response body shall contain a ProblemDetails  structure, in which the "detail" attribute should convey more information about the error. |
| ProblemDetails | 1 | 400 Bad Request | Shall be returned upon the following error: Invalid attribute selector.  The response body shall contain a ProblemDetails structure, in which the "detail" attribute should convey more information about the error. |
| ProblemDetails | 1 | 400 Bad Request | Shall be returned upon the following error: Response too big.  If the O-Cloud supports alternative 1 (error) according to clause 5.4.2.1 of ETSI GS NFV-SOL 013 [22] for this  resource, this error response shall follow the provisions in clause 5.4.2.2 of ETSI GS NFV-SOL 013 [22]. |
| ProblemDetails | See clause 3.1.  5 | 4xx/5xx | In addition to the response codes defined above, any common error response code as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] may be returned. |

</div>

PUT

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

PATCH

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

DELETE

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

#### REST resource: Performance Dictionary

##### Description

The Performance Dictionary REST resource dedicated to the Performance Dictionary which describes performance measurements that can be collected. The Performance Dictionaries are integrated by the IMS in the O-Cloud and provided to the SMO for consumption.

##### Resource definition

Resource URI for Performance Dictionaries

###### Resource URI: {apiRoot}/o2ims- infrastructureInventory/{apiMajorVersion}/performanceDictionaries/{performanceDictionaryId}

This resource shall support the resource URI variables defined in Table 3.2.4.3.2-1.

###### Table 3.2.4.15.2.1-1 Resource URI variables for this resource

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Name** | **Data type** | **Definition** |
| apiRoot | String | See clause 3.1.2 |
| apiMajorVersion | String | See clause 3.2.2 |
| performanceDictionaryId | Idenfitier | The performanceDictionaryId is a unique identifier that singles out an individual performance dictionary of interest. |

</div>

Resource URI for Resource Type Performance Dictionary

Resource URI: Resource URI: **{apiRoot}/o2ims- infrastructureInventory/{apiMajorVersion}/resourceTypes/{resourceTypeId}/performanceDictionary**

This resource shall support the resource URI variables defined in Table 3.2.4.3.2-1.

###### Table 3.2.4.15.2.2-2 Resource URI variables for this resource

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Name** | **Data type** | **Definition** |
| apiRoot | String | See clause 3.1.2 |
| apiMajorVersion | String | See clause 3.2.2 |
| resourceTypeId | Identifier | The identifier of the Resource Type Description resource. See Note. |
| NOTE: This identifier can be retrieved from the resourceTypeId attribute in the payload body of the response to a GET request getting the list of "ResourceType" resources. | | |

</div>

##### Resource methods

POST

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

GET

The GET operation is used to retrieve a single dictionary.

This method shall support the URI query parameters specified in Table 3.2.4.3.3.2-1.

###### Table 3.2.4.15.3.2-1 URI query parameters supported by the GET method on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Name** | **Data type** | **P** | **Cardinality** | **Description** | **Applicability** |
|  |  |  |  |  |  |

</div>

This method shall support the request data structures, the response data structures, and response codes specified in Table 3.2.4.15.3.2-2.

###### Table 3.2.4.15.3.2-2: Details of the GET request/response on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Request body** | **Data type** | **Cardinality** | **Description** | |
| n/a |  |  | |
| **Response body** | **Data type** | **Cardinality** | **Response Codes** | **Description** |
| PerformanceDictionary | 1 | 200 OK | Shall be returned when information about an PerformanceDictionary instance has been queried successfully. The response body shall contain a representation of the PerformanceDictionary instance,  as defined in clause 3.2.6.2.11. |
| ProblemDetails | See clause 3.1.  5 | 4xx/5xx | In addition to the response codes defined above, any common error response code as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] may be returned. |

</div>

PUT

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

PATCH

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

DELETE

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

#### REST resource: Performance Dictionary List

##### Description

The Performance Dictionary List resource represents the collection of Performance Dictionaries. The API consumer can use this resource to query multiple Performance Dictionaries.

##### Resource definition

###### Resource URI: {apiRoot}/o2ims-infrastructureInventory/{apiMajorVersion}/performanceDictionaries

This resource shall support the resource URI variables defined in Table 3.2.4.3.2-1.

###### Table 3.2.4.16.2-1 Resource URI variables for this resource

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Name** | **Data type** | **Definition** |
| apiRoot | String | See clause 3.1.2 |
| apiMajorVersion | String | See clause 3.2.2 |

</div>

##### Resource methods

POST

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

GET

The GET operation is used to retrieve a list of Performance dictionaries.

This method shall support the URI query parameters specified in Table 3.2.4.3.3.2-1.

###### Table 3.2.4.16.3.2-1 URI query parameters supported by the GET method on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Name** | **Cardinality** | **Description** |
| Filter | 0..1 | Attribute-based filtering expression according to clause 5.2 of ETSI GS NFV-SOL 013 [22].  The O-Cloud shall support receiving this parameter as part of the URI query string. The API consumer may supply this parameter.  All attribute names that appear in the PerformanceDictionary shall be supported by the O-Cloud in the filter expression. |
| all\_fields | 0..1 | Include all complex attributes in the response. See clause 5.3 of ETSI  GS NFV-SOL 013 [22] for details. The O-Cloud shall support this parameter. |
| Fields | 0..1 | Complex attributes to be included into the response. See clause 5.3 of ETSI GS NFV-SOL 013 [22] for details. The O-Cloud should support this parameter. |
| exclude\_fields | 0..1 | Complex attributes to be excluded from the response. See clause 5.3 of ETSI GS NFV-SOL 013 [22] for details. The O-Cloud should support this parameter. |
| exclude\_default | 0..1 | Indicates to exclude the following complex attributes from the response. See clause 5.3 of ETSI GS NFV-SOL 013 [22] for details. The O-Cloud shall support this parameter.  The following attributes shall be excluded from the list of PerformanceDictionary in the response body if this parameter is provided, or none of the parameters "all\_fields", "fields", "exclude\_fields", "exclude\_default" are provided:  - PerformanceMeasureDefinition |
| nextpage\_opaque  \_marker | 0..1 | Marker to obtain the next page of a paged response. Shall be supported by the O-Cloud if the O-Cloud supports alternative 2 (paging) according to clause 5.4.2.1 of ETSI GS NFV-SOL 013 [22] for this resource. |

</div>

This method shall support the request data structures, the response data structures, and response codes specified in Table 3.2.4.16.3.2-2.

###### Table 3.2.4.16.3.2-2: Details of the GET request/response on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Request body** | **Data type** | **Cardinality** | **Description** | |
| n/a |  |  | |
| **Response body** | **Data type** | **Cardinality** | **Response Codes** | **Description** |
| PerformanceDictionary | 0..N | 200 OK | Shall be returned when information about zero or more PerformanceDictionary instances has been queried successfully. The response body shall contain in an array the representations of zero or more PerformanceDictionary instance(s), as defined in clause 3.2.6.2.12.  If the "filter" URI parameter or one of the "all\_fields", "fields" (if supported), "exclude\_fields" (if supported) or "exclude\_default" URI parameters was supplied in the request, the data in the response body shall have been transformed according to the rules specified in  clauses 5.2.2 and 5.3.2 of ETSI GS NFV-SOL 013 [22],  respectively.  If the O-Cloud supports alternative 2 (paging) according to clause 5.4.2.1 of ETSI GS NFV-SOL 013  [22] for this resource, inclusion of the Link HTTP header in this response shall follow the provisions in clause 5.4.2.3 of ETSI GS NFV-SOL 013 [22]. |
| ProblemDetails | 1 | 400 Bad Request | Shall be returned upon the following error: Invalid attribute-based filtering expression.  The response body shall contain a ProblemDetails  structure, in which the "detail" attribute should convey more information about the error. |
| ProblemDetails | 1 | 400 Bad Request | Shall be returned upon the following error: Invalid attribute selector.  The response body shall contain a ProblemDetails structure, in which the "detail" attribute should convey more information about the error. |
| ProblemDetails | 1 | 400 Bad Request | Shall be returned upon the following error: Response too big.  If the O-Cloud supports alternative 1 (error) according to clause 5.4.2.1 of ETSI GS NFV-SOL 013 [22] for this  resource, this error response shall follow the provisions in clause 5.4.2.2 of ETSI GS NFV-SOL 013 [22]. |
| ProblemDetails | See clause 3.1.  5 | 4xx/5xx | In addition to the response codes defined above, any common error response code as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] may be returned. |

</div>

PUT

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

PATCH

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

DELETE

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

### Notifications

#### General

Notifications shall comply to the Subscribe/Notify pattern described in clause 5.9 of ETSI GS NFV-SOL 015 [25].

###### Table 3.2.5.1-1 Notifications overview

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Notification** | **Callback URI** | **HTTP**  **method** | **Description** |
| Inventory Change Notification | Inventory Subscription.callback | POST | Notify subscribers when objects in the O2ims inventory have changed. |

</div>

* + - * 1. Inventory Change Notification Description

The Inventory Change Notification is used by the O-Cloud Infrastructure Management Service to report changes to the O2ims Inventory to a O2ims consumer that has subscribed to such notifications.

##### Target URI

The Inventory Subscription.Callback URI "{InventoryEventNotification}" shall be used with the callback URI variables define in table 3.2.5.1.2-1.

###### Table 3.2.5.1.2-1 Inventory Subscription.Callback URI Vairables

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Attribute name** | **Data type** | **P** | **Cardinality** | **Description** |
| consumerSubscriptionId | Identifier | O | 0..1 | The value provided by the consumer in the subscription. |
| notificationEventType | Integer | M | 1 | One of the following values:   * 0 for "CREATE" * 1 for "MODIFY" * 2 for "DELETE" |
| objectRef | String | CO | 0..1 | The URL to the object. This is not required if the notificationEventType is 2 (DELETE). It will point to one of the following data types defined in clause 3.2.6 and the reference will match the type of objects supplied in priorObjectState and/or postObjectState:   * ResourceInfo * ResourceTypeInfo * ResourcePoolInfo * DeploymentManagerInfo * CloudInfo |
| priorObjectState | String | CM | 0..1 | This is required if the notificationEventType is 1 (MODIFY) or 2 (DELETE) and is one of the following data types defined in clause 3.2.6 and will match the type of object in postObjectState and/or the type referred to in objectRef:   * ResourceInfo * ResourceTypeInfo * ResourcePoolInfo * DeploymentManagerInfo * CloudInfo |
| postObjectState | String | CM | 0..1 | This is required if the notificationEventType is 0 (CREATE) or 1 (MODIFY) and is one of the following data types defined in clause 3.2.6 and will match the type of object in priorObjectState and/or the type referred to in objectRef:   * ResourceInfo * ResourceTypeInfo * ResourcePoolInfo * DeploymentManagerInfo * CloudInfo |

</div>

### Data model

#### REST resource data types

This clause specifies the data types to be used in resource representations and notifications supported by the present API.

Table 3.2.6.1-1 specifies the data types defined for the O2ims\_InfrastructureInventory service API.

###### Table 3.2.6.1-1: O2ims\_InfrastructureInventory resource data types

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Data type** | **Clause defined** | **Description** | **Applicability** |
| ResourceTypeInfo | 3.2.6.2.2 | This data type represents the type of a  resource deployed in the O-Cloud Infrastructure. |  |
| ResourcePoolInfo | 3.2.6.2.3 | This data type represents a logical Resource Pool for the collection of O-  Cloud Resources at a location. |  |
| ResourceInfo | 3.2.6.2.4 | This data type represents a resource instance of the O-Cloud Infrastructure |  |
| DeploymentManagerInfo | 3.2.6.2.5 | This data type represents a Deployment Manager for managing Deployments into the O-Cloud. |  |
| CloudInfo | 3.2.6.2.6 | This data type represents an O-Cloud instance. |  |
| InventorySubscriptioInfo | 3.6.5.2.7 | This data type represents an instance of a  subscription to O2ims Inventory change events. |  |
| AlarmDictionary | 3.2.6.2.8 | This data type represents an Alarm Dictionary for alarms that can be reported by a given ResourceType within the O-  Cloud. |  |
| PerformanceDictionary | 3.2.6.12.12 | This data type represents a Performance Dictionary of performance measurement  definitions that can be reported for a given ResourceType within the O-Cloud. |  |

</div>

#### Structured data types

##### Introduction

This clause defines the structures to be used in resource representations.

##### Type: ResourceTypeInfo

This type represents information about a type of a resource deployed in the O-Cloud Infrastructure. It shall comply with the provisions defined in table 3.2.6.2.2-1.

###### Table 3.2.6.2.2-1 Definition of type ResourceTypeInfo

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Attribute name** | **Data type** | **P** | **Cardinality** | **Description** |
| resourceTypeId | Identifier | M | 1 | Identifier for the Resource Type. This identifier is allocated by the O-Cloud. |
| name | String | M | 1 | Human readable name of the resource type. |
| description | String | M | 1 | Human readable description of the resource type. |
| vendor | String | M | 1 | Provider of the Resource. |
| model | String | M | 1 | Information about the model of the resource as defined by its provider. |
| version | String | M | 1 | Version or generation of the resource as defined by its provider. |
| alarmDictionary | AlarmDictionary | M | 0..1 | Dictionary of alarms for this resource type. |
| resourceKind | Enum (inlined) | M | 1 | Value describing "physicality" of the resource type Permitted values:   * UNDEFINED * PHYSICAL * LOGICAL |
| resourceClass | Enum (inlined) | M | 1 | Functional role of the resource type within the cloud. Permitted values:   * UNDEFINED * COMPUTE * NETWORKING * STORAGE |
| extensions | KeyValuePairs | M | 0..1 | List of metadata key-value pairs used to associate meaningful metadata to the related resource type. |

</div>

##### Type: ResourcePoolInfo

This type represents information about a logical Resource Pool which comprises O-Cloud Resources at a location. It shall comply with the provisions defined in table 3.2.6.2.3-1.

###### Table 3.2.6.2.3-1 Definition of type ResourcePoolInfo

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Attribute name** | **Data type** | **P** | **Cardinality** | **Description** |
| resourcePoolId | Identifier | M | 1 | Identifier for the Resource Pool in the O-Cloud instance. This identifier is allocated by the O-Cloud. |
| oCloudId | Identifier | M | 1 | Identifier for the containing O-Cloud. |
| globalLocationId | Identifier | M | 1 | This identifier is copied from the O-Cloud Id assigned by the SMO during the O-Cloud deployment. |
| name | String | M | 1 | Human readable name of the resource pool. |
| description | String | M | 1 | Human readable description of the resource pool. |
| location | String | O | 0..1 | Information about the geographical location of the resource pool as detected by the O-Cloud. |
| extensions | KeyValuePairs | O | 0..1 | List of metadata key-value pairs used to associate meaningful metadata to the related resource pool. |

</div>

##### Type: ResourceInfo

This type represents a resource instance of the O-Cloud Infrastructure. It shall comply with the provisions defined in table 3.2.6.2.4-1.

###### Table 3.2.6.2.4-1 Definition of type ResourceInfo

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Attribute name** | **Data type** | **P** | **Cardinality** | **Description** |
| resourceId | Identifier | M | 1 | Identifier for the Resource. This identifier is allocated by the O-Cloud. |
| resourcePoolId | Identifier | M | 1 | Identifier of the Resource Pool containing this resource (refer to type "ResourcePoolInfo"). |
| resourceTypeId | Identifier | M | 1 | Identifier for the Resource Type of this resource (refer to type "ResourceTypeInfo"). |
| globalAssetId | String | CM | 0..1 | Identifier or serial number of the resource, if available. It is required only if the resource has been identified  during its addition to the cloud as a reportable asset in the SMO inventory. |
| description | String | M | 1 | Human readable description of the resource |
| elements | ResourceInfo | M | 0..N | The resource might be composed of smaller resources or other resource instances of a different type |
| tags | String | M | 0..N | Keywords describing or classifying the resource instance. |
| groups | String | M | 0..N | Keywords denoting groups a resource belongs to. |
| extensions | KeyValuePairs | M | 0..1 | List of metadata key-value pairs used to associate meaningful metadata to the related resource. |

</div>

##### Type: DeploymentManagerInfo

This type represents information about a Deployment Manager for managing Deployments into the O-Cloud. It shall comply with the provisions defined in table 3.2.6.2.5-1.

###### Table 3.2.6.2.5-1 Definition of type DeploymentManagerInfo

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Attribute name** | **Data type** | **P** | **Cardina lity** | **Description** |
| deploymentManagerId | Identifier | M | 1 | Identifier for the Deployment Manager. This identifier is allocated by the O-Cloud. |
| name | String | M | 1 | Human readable name of the deployment manager. |
| description | String | M | 1 | Human readable description of the deployment manager. |
| oCloudId | Identifier | M | 1 | Identifier for the containing O-Cloud. |
| serviceUri | Uri | M | 1 | The fully qualified URI to a Deployment Management server for O2dms services. Since the O2dms provides multiple services, this entry is for the {apiRoot} only. |
| supportedLocations | String | M | 1..N | List of globalLocationIDs that were assigned to the O- Cloud Site(s) which this Deployment Manager supports. |
| capabilities | KeyValuePairs | M | 0..N | Information about the capabilities supported by the Deployment Manager and its set of deployment  management services based on the resources allocated to the Deployment Manager. |
| capacity | KeyValuePairs | M | 0..N | Information about the available, allocated and reserved capacity of O-Cloud Resources allocated to the Deployment Manager. |
| extensions | KeyValuePairs | O | 0..N | List of metadata key-value pairs  used to associate meaningful metadata to the related Deployment Manager. |

</div>

##### Type: CloudInfo

This type represents information about an O-Cloud instance. It shall comply with the provisions defined in table 3.2.6.2.6-1.

###### Table 3.2.6.2.6-1 Definition of type CloudInfo

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Attribute name** | **Data type** | **P** | **Cardinality** | **Description** |
| oCloudId | Identifier | M | 1 | Identifier for the containing O-Cloud. This identifier is  copied from the O-Cloud Id assigned by the SMO during the O-Cloud deployment. |
| globalcloudId | Identifier | M | 1 | Identifier of the O-Cloud instance. Globally unique across O-Cloud instances. This value was provided by the SMO with the callback URI at the beginning of O- Cloud genesis and used in registration at the end of  genesis. |
| name | String | M | 1 | Human readable name of the O-Cloud. |
| description | String | M | 1 | Human readable description of the O-Cloud. |
| serviceUri | Uri | M | 1 | The fully qualified URI root to all services provided by the O2ims interface, Inventory only being one of them.  Since the O2ims provides multiple services this entry is for the {apiRoot} only. |
| extensions | KeyValuePairs | O | 0..N | These are unspecified (not standardized) properties (keys) which are tailored by the vendor to extend the information provided about the O-Cloud. |

</div>

##### Type: InventorySubscriptionInfo

This type represents information about an instance of a subscription to O2ims Inventory change events. It shall comply with the provisions defined in table 3.2.6.2.7-1.

###### Table 3.2.6.2.7-1 Definition of type InventorySubscriptionInfo

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Attribute name** | **Data type** | **P** | **Cardinality** | **Description** |
| subscriptionId | Identifier | M | 1 | Identifier for the Subscription. This identifier is allocated by the O-Cloud. |
| consumerSubscriptionId | Identifier | O | 0..1 | Identifier for the consumer of events sent due to the Subscription. |
| filter | String | O | 0..1 | Criteria for events which do not need to be reported or will be filtered by the subscription notification service. Therefore, if a filter is not provided then all events are  reported. |
| callback | Uri | M | 1 | The fully qualified URI to a consumer procedure which can process a Post of the InventoryEventNotification. |

</div>

##### Type: AlarmDictionary

This type represents information about alarms that can be reported by a given ResourceType within the O-Cloud. The Alarm Dictionary object is defined not only for O-Clouds but for Network Functions as well. Therefore, its structure may overlap with other O-Cloud structures and contain redundant information that is used by the SMO. It shall comply with the provisions defined in table 3.2.6.2.8-1.

###### Table 3.2.6.2.8-1 Definition of type AlarmDictionary

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Attribute name** | **Data type** | **P** | **Cardinality** | **Description** |
| alarmDictionaryId | Identifier | M | 1 | The Identifier of the Alarm Dictionary. The Identifier is unique within an O-Cloud. |
| alarmDictionaryVersion | String | M | 1 | Version of the Alarm Dictionary. Version is vendor defined such that the version of the dictionary can be associated with a specific version of the software  delivery of this product. |
| alarmDictionarySchema Version | String Constant (See Note 1) | M | 1 | Version of the Alarm Dictionary Schema to which this alarm dictionary conforms. (See Note 2) |
| entityType | String | M | 1 | O-RAN entity type emitting the alarm: This shall be unique per vendor ResourceType.model and ResourceType.version |
| vendor | String | M | 1 | Vendor of the Entity Type to whom this Alarm  Dictionary applies. This should be the same value as in the ResourceType.vendor attribute. |
| managementInterfaceId | ENUM  *-O1*  *-O2DMS*  -O2IMS  *-OpenFH*  (See Note 3) | M | 1..N | List of management interface over which alarms are transmitted for this Entity Type.  RESTRICTION: For the O-Cloud IMS Services this value is limited to O2IMS. |
| pkNotificationField | String Constant "alarmDefinition ID" | M | 1..N | Identifies which field or list of fields in the alarm notification contains the primary key (PK) into the  Alarm Dictionary for this interface; i.e. which field contains the Alarm Definition ID. |
| alarmDefinition | AlarmDefinition | M | 1..N | Contains the list of alarms that can be detected against this ResourceType. |
| probableCauses | ProbableCause | M | 1..N | Contains the list of Probable Causes that indicate the root cause of the Alarm events. |
| NOTE 1: String value is not yet defined but would match a specific Schema Version.  NOTE 2: The specific value for this should be defined in the IM/DM specification for the Alarm Dictionary Model Schema when it is published at a future date.  NOTE 3: Italicized and grayed text is only provided for informative purposes. These values are used by other dictionary providers, but not the O2 IMS. | | | | |

</div>

##### Type: AlarmDefinition

This type represents information about an alarm that can be reported by a given ResourceType within the O-Cloud. It shall comply with the provisions defined in table 3.2.6.2.9-1.

###### Table 3.2.6.2.9-1 Definition of type AlarmDefinition

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Attribute name** | **Data type** | **P** | **Cardinality** | **Description** |
| alarmDefinitionId | UUID | M | 1 | Provides a unique identifier of the alarm being  raised. This is the Primary Key into the Alarm Dictionary. |
| alarmName | String | M | 1 | Provides short name for the alarm. |
| alarmLastChange | String | M | 1 | Indicates the Alarm Dictionary Version in which this alarm last changed. |
| alarmChangeType | ENUM:  -added  -deleted  -modified | M | 1 | Indicates the type of change that occurred during the alarm last change; added, deleted, modified. |
| alarmDescription | String | M | 1 | Provides a longer descriptive meaning of the alarm condition and a description of the consequences of the alarm condition. This is intended to be read by an operator to give an idea of what happened and a sense of the effects, consequences, and other  impacted areas of the system. |
| proposedRepairActions | String | M | 1 | Provides guidance for proposed repair actions. |
| clearingType | ENUM:  -automatic  -manual | M | 1 | Identifies whether alarm is cleared automatically or manually. |
| managementInterfaceId | ENUM  *-O1*  *-O2DMS*  -O2IMS  *-OpenFH*  (See Note 1) | M | 0..N | List of management interface over which alarms are transmitted for this Entity Type.  RESTRICTION: For the O-Cloud IMS Services this value is limited to O2IMS. |
| pkNotificationField | String Constant "alarmDefinition ID" | M | 0..N | Identifies which field or list of fields in the alarm notification contains the primary key (PK) into the Alarm Dictionary for this interface; i.e. which field  contains the Alarm Definition ID. |
| alarmAdditionalFields | KeyValuePairs | M | 0..N | List of metadata key-value pairs used to associate meaningful metadata to the related resource type. |
| NOTE 1: Italized and grayed text is only provided for informative purposes. These values are used by other dictionary providers, but not the O2 IMS. | | | | |

</div>

##### Type: ProbableCause

This type represents information about the ProbableCause which provides an indication of the root cause of an alarm event. ProbableCause is intended to help operators determine the root cause of an alarm event. It shall comply with the provisions defined in table 3.2.6.2.10-1.

There are industry suggested lists of probable causes that could be used. When used the ProbableCause definition should allow for an indication of such a source. See O-RAN WG10 Information Model and Data Models **Error! Reference source not found.**, clause 5.2.1.4.13.

Alarm Definitions may provide one or more ProbableCause(s) as part of their extended fields. However, each alarm event should have a ProbableCause that is specific to that alarm instance. The ProbableCause(s) used by the product vendor for alarm events shall be listed independently in the alarm dictionary.

###### Table 3.2.6.2.10-1 Definition of type ProbableCause

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Attribute name** | **Data type** | **P** | **Cardinality** | **Description** |
| probableCauseCode | String | M | 1 | This identifies a specific probableCause instance in  the AlarmDictionary. This is the Primary Key into the probableCauses. |
| probableCauseDescripti on | String | M | 1 | This provides any additional information beyond the probableCauseCode to describe the probable cause |
| standardReference | StandardRefere nce | M | 0..1 | This gives a reference to the standard body when the Probable Cause definition has been provided by another Standards body. |

</div>

##### Type: StandardReference

When definition has been provided by another Standards body this dataType provides a reference to the standard body that is author of particular definition, as well as to where the definition can be found. It shall comply with the provisions defined in table 3.2.6.2.11-1.

###### Table 3.2.6.2.11-1 Definition of type StandardReference

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Attribute name** | **Data type** | **P** | **Cardinality** | **Description** |
| standardDefinitionOrgani zation | String | M | 1 | Provides the Organization that provided the Definition |
| standardSpecification | String | M | 1 | Gives the Specification of the Standards Organization |
| versionOrRelease | String | M | 1 | Gives the version of the Specification of interest |
| NOTE: With reference to the baseline modeling in the O-RAN.WG10.Information Model and Data Models [37], the "clause" attribute in the type "StandardReference" is not specified in the present document version. | | | | |

</div>

##### Type: PerformanceDictionary

This type represents information about performance measurements for a performance dictionary that can be reported by a given ResourceType within the O-Cloud. It shall comply with the provisions defined in table 3.2.6.2.12-1. These are also described in O-RAN.WG10.Information Model and Data Models **Error! Reference source not found.**, clause 5.2.1

###### Table 3.2.6.2.12-1 Definition of type PerformanceDictionary

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Attribute name** | **Data type** | **P** | **Cardinality** | **Description** |
| performanceDictionaryId | Identifier | M | 1 | The Identifier of the Alarm Dictionary. The Identifier is unique within an O-Cloud. |
| performanceDictionaryV ersion | String | M | 1 | Version of the Performance Dictionary |
| performanceDictionaryS chemaVersion | String | M | 1 | Schema Version of the Performance Dictionary |
| vendorSoftwareProduct | String | M | 1 | Vendor Software Product |
| supportedInterfaces | ENUM  *-O1*  *-O2DMS*  -O2IMS  *-OpenFH*  (See Note 1) | M | 1 | This gives the supported interfaces for the Performance Dictionary |
| supportedMeasurements | PerformanceMe  asurementDefin ition | M | 1..N | This lists the supported Performance Measurements |
| NOTE 1: Italized and grayed text is only provided for informative purposes. These values are used by other dictionary providers, but not the O2 IMS. | | | | |

</div>

##### Type: PerformanceMeasurementDefinition

This type represents a performance measurement definition. The PerformanceMeasurementDefinition inherits attributes from Top IOC (defined in 3GPP TS 28.622 [39], clause 4.3.29). It shall comply with the provisions defined in table 3.2.6.2.13-1.

###### Table 3.2.6.2.13-1 Definition of type PerformanceMeasurementDefinition

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Attribute name** | **Data type** | **P** | **Cardinality** | **Description** |
| performanceMeasureme ntDefinitionId | UUID | M | 1 | Provides a unique identifier of the performance Measurement. This is the Primary Key into the  Performance Dictionary. |
| performanceMeasureme ntId | String | M | 1 | This gives the Performance Measurement Id |
| standardReference | String | M | 1 | Gives the Standards Reference from which this Performance Measurement comes from |
| supportedInterfaces | String | M | 0..1 | Supported Interfaces |
| extensions | KeyValuePairs | M | 0..1 | This gives Extension |
| measurementDefinition | 3GPPPerforma nceMeasureme  ntDefinition | M | 0 if ETSI, 1 if 3GPP.  (See Note) | If it is a 3GPP measurement, this would use the 3GPP Performance Measurement Definition  (concrete class). See Note |
| measurementDefinition | ETSIPerforman ceMeasurement  Definition | M | 0 if 3GPP, 1 if ETSI.  (See Note) | If it is a ETSI measurement, this would use the ETSI Performance Measurement Definition (concrete  class). See Note |
| NOTE: The measurementDefinition would be either 3GPPPerformanceMeasurementDefinition or ETSIPerformanceMeasurementDefinition. The "P" is "M" because this needs to be supported on the interface. | | | | |

</div>

##### Type: 3GPPPerformanceMeasurementDefinition

The 3GPPPerformanceMeasurementDefinition is a concrete class of the PerformanceMeasurementDefinition\_ class from which it inherits attributes from. It extends the class with attribute fields defined in 3GPP TS 32.404 [40] clause 3.3.

##### Type: ETSIPerformanceMeasurementDefinition

The ETSIPerformanceMeasurementDefinition is a concrete class of the PerformanceMeasurementDefinition\_ class from which it inherits attributes from. It extends the class with attribute fields defined in ETSI GS NFV-IFA 027 [41] clause 5.

#### Simple data types and enumerations

##### Introduction

This clause defines simple data types and enumerations that can be referenced from data structures defined in the previous clauses. The simple data types defined in a request body, response body, or a structured type are defined in ETSI GS NFV-SOL 013 [22] or this clause of the specification.

##### Simple data types

The simple data types defined in table 3.2.6.3.2-1 shall be supported.

###### Table 3.2.6.3.2-1: Simple data types

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Type Name** | **Type Definition** | **Description** |
| n/a |  |  |

</div>

### Error handling

#### General

For the O2ims\_InfrastructureInventory Service API, HTTP error responses shall be supported as specified in clause 3.1.5.

In addition, the requirements in the following clauses are applicable for the O2ims\_InfrastructureInventory Service API.

#### Protocol errors

No specific protocol errors for the O2ims\_InfrastructureInventory Service API are specified.

#### Application errors

No specific application errors for the O2ims\_InfrastructureInventory Service API are specified

### Security

No specific security procedures for the O2ims\_InfrastructureInventory Service API are specified beyond those in clause 3.1.7.

## O2ims\_InfrastructureMonitoring Service API

### Description

This API allows the SMO to invoke O2ims\_InfrastructureMonitoring Services towards the O-Cloud. The operations defined for O2ims\_InfrastructureMonitoring Services through this API are:

* Query information about one or multiple Alarms;
* Create a subscription to Alarms of interest;
* Notify consumer identified by an established subscription which is not filtered by the filter criteria of the occurrence of a change to the alarm objects;
* Acknowledge an Alarm;
* Clear an Alarm;
* Ability to query and modify the configurable values which govern the behaviour of the Alarm Service; and
* Purge Alarms

Services for IMS Heartbeat are not specified in the present document version.

### API version

For the O2ims\_InfrastructureMonitoring Service API version as specified in the present document, the MAJOR version field shall be 1, the MINOR version field shall be 1, and the PATCH version field shall be 0.

Table 3.3.2-1 lists the history of API versions of the O2ims\_InfrastructureMonitoring Service and the main capabilities added/removed across versions.

###### Table 3.3.2-1: History of API versions of the O2ims\_InfrastructureMonitoring Service.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Version** | **Description** |
| 1.0.0 | Initial API Supporting: Alarm Query Alarm Subscription Alarm Notification |
| 1.1.0 | New methods: Acknowledge Alarm Clear Alarm  Alarm Service Configure |
| 1.2.0 | Updated methods: Alarm Subscription  New resources:  Purge Alarms Task Task Operation List  Task Operation Occurrence |

</div>

### REST resources structure and methods

All resource URIs of the API shall use the base URI specification defined in clause 3.1.2. The string "O2ims- infrastructureMonitoring" shall be used to represent {apiName}. All resource URIs in the clauses below are defined relative to the formed base URI (i.e., {apiRoot}/O2ims-infrastructureMonitoring/{apiMajorVersion}).

When ambiguity is possible, the term REST resource is used to make the distinction between the term resource as understood within the context of REST API from the term resource as understood within the context of O-RAN.

Figure 3.3.3-1 shows the overall resource URI structure defined for the O2ims\_InfrastructureMonitoring Service API.

![]({{site.baseurl}}/assets/images/d5bb48fe7128.jpg)

###### Figure 3.3.3-1 Resource URI structure of the O2ims-infrastructureMonitoring API

Table 3.3.3-1 provides an overview of the resources and applicable HTTP methods.

The O-Cloud shall support responding to requests for all HTTP methods on the resources in table 3.3.3-1 that are marked as "M" (mandatory) in the "Cat" column. The O-Cloud shall also support the "API versions" resources as specified in clause 3.1.8.

###### Table 3.3.3-1 Resources and methods overview

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Resource name** | **Resource URI** | **HTTP**  **method** | **Cat** | **Description** |
| Alarm List | /alarms | GET | M | To get a list of alarms |
| Alarm Record | /alarms/{alarmEventRecordId} | GET | M | To get an individual alarm record |
| PATCH | M | To modify (acknowledge, clear) an individual alarm record |
| Purge Alarms Task | /alarms/purge | POST | M | To purge alarms from the list. |
| Alarm Subscription List | /alarmSubscriptions | POST | M | To create an individual alarm subscription |
| GET | M | To get a list of alarm subscriptions |
| Alarm Subscription Description | /alarmSubscriptions/{alarmSubscriptionId} | GET | M | To get an individual alarm subscription description |
| DELETE | M | To delete an individual alarm subscription |
| Alarm Service Configuration | /alarmServiceConfiguration | GET | M | To get the current configuration of the alarm  service. |
| PUT | M | To set a whole new configuration of the alarm service. |
| PATCH | M | Partially update the configuration of the alarm service. |
| Task Operation List | /taskOperations | GET | M | To query information  about multiple task operation occurrences related to alarm management. |
| Task Operation Occurrence | /taskOperations/{operationOcurrenceId} | GET | M | To query information about a specific task  operation occurrence related to alarm management. |

</div>

### REST resources

#### Introduction

There are no preconditions or postconditions for a successful execution of each of the O2ims\_InfrastructureMonitoring Service API triggered by a corresponding operation.

#### REST resource: Alarm List

##### Description

This resource represents the list of alarms that the O-Cloud has seen during its alarm retention period. The Alarm List can contain Alarm Records.

##### Resource definition

###### Resource URI: {apiRoot}/o2ims-infrastructureMonitoring/{apiMajorVersion}/alarms

This resource shall support the resource URI variables defined in Table 3.2.4.2.2-1.

###### Table 3.3.4.2.2-1 Resource URI variables for this resource

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Name** | **Data type** | **Definition** |
| apiRoot | string | See clause 3.1.2 |
| apiMajorVersion | string | See clause 3.2.2 |

</div>

##### Resource methods

POST

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

GET

The GET operation is used to retrieve the list of alarms.

This method shall support the URI query parameters specified in Table 3.2.4.2.3.2-1.

###### Table 3.3.4.2.3.2-1 URI query parameters supported by the GET method on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Name** | **Cardinality** | **Description** |
| filter | 0..1 | Attribute-based filtering expression according to clause 5.2 of ETSI GS NFV-SOL 013 [22] .  The O-Cloud shall support receiving this parameter as part of the URI query string. The API consumer may supply this parameter.  All attribute names that appear in the AlarmEventRecord and in data types referenced from it shall be supported by the O-Cloud in the filter expression. |
| all\_fields | 0..1 | Include all complex attributes in the response. See clause 5.3 of ETSI GS NFV-SOL 013 [22] for details. The O-Cloud shall support this parameter. |
| fields | 0..1 | Complex attributes to be included into the response. See clause 5.3 of ETSI GS NFV-SOL 013 [22] for details. The O-Cloud should support this parameter. |
| exclude\_fields | 0..1 | Complex attributes to be excluded from the response. See clause 5.3 of ETSI GS NFV-SOL 013 [22] for details. The O-Cloud should support this parameter. |
| exclude\_default | 0..1 | Indicates to exclude the following complex attributes from the response. See clause 5.3 of ETSI GS NFV-SOL 013 [22] for details. The O-Cloud shall support this parameter.  The following attributes shall be excluded from the list of AlarmEventRecord in the response body if this parameter is provided, or none of the parameters "all\_fields", "fields", "exclude\_fields", "exclude\_default" are provided:  - TBD |
| nextpage\_opaque  \_marker | 0..1 | Marker to obtain the next page of a paged response. Shall be supported by the O-Cloud if the O-Cloud supports alternative 2 (paging) according to clause 5.4.2.1 of ETSI GS NFV-SOL 013 [22] for this resource. |

</div>

This method shall support the request data structures, the response data structures, and response codes specified in Table 3.3.4.2.3.2-2.

###### Table 3.3.4.2.3.2-2: Details of the GET request/response on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Request body** | **Data type** | **Cardinality** | **Description** | |
| n/a |  |  | |
| **Response body** | **Data type** | **Cardinality** | **Response Codes** | **Description** |
| AlarmEventRecord | 0..N | 200 OK | Shall be returned when information about zero or more AlarmEventRecord instances has been queried successfully.  The response body shall contain in an array the representations of zero or more AlarmEventRecord instances, as defined in clause 3.3.6.2.2.  If the "filter" URI parameter or one of the "all\_fields", "fields" (if supported), "exclude\_fields" (if supported) or "exclude\_default" URI parameters was supplied in the request, the data in the response body shall have been transformed according to the rules specified in  clauses 5.2.2 and 5.3.2 of ETSI GS NFV-SOL 013 [22],  respectively.  If the O-Cloud supports alternative 2 (paging) according to clause 5.4.2.1 of ETSI GS NFV-SOL 013  [22] for this resource, inclusion of the Link HTTP header in this response shall follow the provisions in clause 5.4.2.3 of ETSI GS NFV-SOL 013 [22]. |
| ProblemDetails | 1 | 400 Bad Request | Shall be returned upon the following error: Invalid attribute-based filtering expression.  The response body shall contain a ProblemDetails  structure, in which the "detail" attribute should convey more information about the error. |
| ProblemDetails | 1 | 400 Bad Request | Shall be returned upon the following error: Invalid attribute selector.  The response body shall contain a ProblemDetails structure, in which the "detail" attribute should convey more information about the error. |
| ProblemDetails | 1 | 400 Bad Request | Shall be returned upon the following error: Response too big.  If the O-Cloud supports alternative 1 (error) according to clause 5.4.2.1 of ETSI GS NFV-SOL 013 [22] for this  resource, this error response shall follow the provisions in clause 5.4.2.2 of ETSI GS NFV-SOL 013 [22]. |
| ProblemDetails | See clause 3.1.  5 | 4xx/5xx | In addition to the response codes defined above, any common error response code as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] may be returned. |

</div>

PUT

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

PATCH

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

DELETE

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

#### REST resource: Alarm Record

##### Description

This resource represents the details of an Alarm Record in the Alarm List. The Alarm Record is a record of the details of an Alarm since its creation.

##### Resource definition

###### Resource URI: {apiRoot}/o2ims-infrastructureMonitoring/{apiMajorVersion}/alarms/{alarmEventRecordId}

This resource shall support the resource URI variables defined in Table 3.2.4.2.2-1.

###### Table 3.3.4.3.2-1 Resource URI variables for this resource

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Name** | **Data type** | **Definition** |
| apiRoot | String | See clause 3.1.2 |
| apiMajorVersion | String | See clause 3.2.2 |
| alarmEventRecordId | Identifier | The identifier of the Alarm Record resource. See note. |
| NOTE: This identifier can be retrieved from the alarmEventRecordId attribute in the payload body of the response to a GET request getting the list of "Alarm Record" resources. | | |

</div>

##### Resource methods

POST

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

GET

The GET operation is used to retrieve the details of a single Alarm Event Record. This method shall support the URI query parameters specified in Table 3.2.4.2.3.2-1.

###### Table 3.3.4.3.3.2-1 URI query parameters supported by the GET method on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Name** | **Data type** | **P** | **Cardinality** | **Description** | **Applicability** |
| n/a |  |  |  |  |  |

</div>

This method shall support the request data structures, the response data structures, and response codes specified in Table 3.3.4.3.3.2-2.

###### Table 3.3.4.3.3.2-2: Details of the GET request/response on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Request body** | **Data type** | **Cardinality** | **Description** | |
| n/a |  |  | |
| **Response body** | **Data type** | **Cardinality** | **Response Codes** | **Description** |
| AlarmEventRecord | 1 | 200 OK | Shall be returned when information about a AlarmEventRecord instance has been queried successfully.  The response body shall contain a representation of the AlarmEventRecord instance, as defined in clause  3.3.6.2.2. |
| ProblemDetails | See clause 3.1.  5 | 4xx/5xx | In addition to the response codes defined above, any common error response code as defined in clause 6.4  of ETSI GS NFV-SOL 013 [22] may be returned. |

</div>

PUT

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

PATCH

The PATCH method is used to modify an individual alarm record. Supported modifications of an individual alarm record include:

Acknowledging an alarm, and

Clearing an alarm.

A PATCH request shall only target a single type of modification from the list above. Upon processing the request, the IMS shall update the requested attributes from the "AlarmEventRecord" (see clause 3.3.6.2.2) representing the individual alarm record, as well as other related attributes concerning the requested modifications. For instance, if the alarm record is requested to be acknowledged, the "alarmAcknowledgeTime" attribute in the "AlarmEventRecord" is expected to be also updated accordingly.

This method shall support the URI query parameters specified in Table 3.3.4.3.3.4-1.

###### Table 3.3.4.3.3.4-2 URI query parameters supported by the PATCH method on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Name** | **Data type** | **P** | **Cardinality** | **Description** | **Applicability** |
| n/a |  |  |  |  |  |

</div>

This method shall support the request data structures, the response data structures, and response codes specified in Table 3.3.4.3.3.4-2.

###### Table 3.3.4.3.3.4-2: Details of the PATCH request/response on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Request body** | **Data type** | **Cardinality** | **Description** | |
| AlarmEventRecordModi fications | 1 | The parameter for the alarm record modification, as defined in clause 3.3.6.2.4.  The Content-Type header shall be set to "application/merge- patch+json" according to IETF RFC 7396 [29]. | |
| **Response body** | **Data type** | **Cardinality** | **Response Codes** | **Description** |
| AlarmEventRecordModi fications | 1 | 200 OK | Shall be returned when the request has been accepted and completed.  The response body shall contain attribute modifications  for an individual alarm record resource (see clause 3.3.6.2.2). |
| ProblemDetails | 1 | 409 Conflict | Shall be returned upon the following error: The operation cannot be executed currently, due to a conflict with the state of the individual alarm record resource.  Typically, this is due to the fact that the alarm is already in the state that is requested to be set (such as trying to acknowledge an already-acknowledged alarm, or clearing an already-cleared alarm).  The response body shall contain a ProblemDetails structure, in which the "detail" attribute shall convey more information about the error. |
| ProblemDetails | 0..1 | 412  Preconditio n failed | Shall be returned upon the following error: A precondition given in an HTTP request header is not fulfilled.  Typically, this is due to an ETag mismatch, indicating that the resource was modified by another entity.  The response body should contain a ProblemDetails  structure, in which the "detail" attribute should convey more information about the error. |
| ProblemDetails | See clause 3.1.  5 | 4xx/5xx | In addition to the response codes defined above, any  common error response code as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] may be returned. |

</div>

DELETE

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

#### REST resource: Alarm Subscription List

##### Description

This resource represents the set of Alarm Subscriptions in the O-Cloud the SMO can use for being notified when certain changes in the Alarm List occur. The Alarm Subscription List can contain Alarm Subscription Descriptions.

##### Resource definition

###### Resource URI: {apiRoot}/o2ims-infrastructureMonitoring/{apiMajorVersion}/alarmSubscriptions

This resource shall support the resource URI variables defined in Table 3.3.4.4.2-1.

###### Table 3.3.4.4.2-1 Resource URI variables for this resource

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Name** | **Data type** | **Definition** |
| apiRoot | String | See clause 3.1.2 |
| apiMajorVersion | String | See clause 3.2.2 |

</div>

##### Resource methods

POST

The POST operation is used to create an alarm subscription.

This method shall support the URI query parameters specified in Table 3.3.4.4.3.1-1.

###### Table 3.3.4.4.3.1-1 URI query parameters supported by the POST method on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Name** | **Data type** | **P** | **Cardinality** | **Description** | **Applicability** |
| n/a |  |  |  |  |  |

</div>

This method shall support the request data structures, the response data structures, and response codes specified in Table 3.3.4.4.3.1-2.

###### Table 3.3.4.4.3.1-2: Details of the POST request/response on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Request body** | **Data type** | **Cardinality** | **Description** | |
| AlarmSubscriptionInfo | 1 | The AlarmSubscriptionInfo instance to be created. Note: The supplied SubscriptionID is ignored and assigned by the O-Cloud. | |
| **Response body** | **Data type** | **Cardinality** | **Response Codes** | **Description** |
| AlarmSubscriptionInfo | 1 | 201  Created | Shall be returned when information about a AlarmSubscriptionInfo instance has been created successfully.  The response body shall contain a representation of  the AlarmSubscriptionInfo instance, as defined in clause 3.3.6.2.3. |
| ProblemDetails | See clause 3.1.  5 | 4xx/5xx | In addition to the response codes defined above, any  common error response code as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] may be returned. |

</div>

GET

The GET operation is used to retrieve the list of alarm subscriptions.

This method shall support the URI query parameters specified in Table 3.3.4.4.3.2-1.

###### Table 3.3.4.4.3.2-1 URI query parameters supported by the GET method on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Name** | **Cardinality** | **Description** |
| filter | 0..1 | Attribute-based filtering expression according to clause 5.2 of ETSI GS NFV-SOL 013 [22].  The O-Cloud shall support receiving this parameter as part of the URI query string. The API consumer may supply this parameter.  All attribute names that appear in the AlarmSubscriptionInfo and in data  types referenced from it shall be supported by the O-Cloud in the filter expression. |
| all\_fields | 0..1 | Include all complex attributes in the response. See clause 5.3 of ETSI GS NFV-SOL 013 [22] for details. The O-Cloud shall support this  parameter. |
| fields | 0..1 | Complex attributes to be included into the response. See clause 5.3 of ETSI GS NFV-SOL 013 [22] for details. The O-Cloud should support this  parameter. |
| exclude\_fields | 0..1 | Complex attributes to be excluded from the response. See clause 5.3 of ETSI GS NFV-SOL 013 [22] for details. The O-Cloud should support this parameter. |
| exclude\_default | 0..1 | Indicates to exclude the following complex attributes from the response. See clause 5.3 of ETSI GS NFV-SOL 013 [22] for details. The O-Cloud shall support this parameter.  The following attributes shall be excluded from the list of AlarmSubscriptionInfo in the response body if this parameter is provided, or none of the parameters "all\_fields", "fields", "exclude\_fields", "exclude\_default" are provided:  - TBD |
| nextpage\_opaque  \_marker | 0..1 | Marker to obtain the next page of a paged response. Shall be supported by the O-Cloud if the O-Cloud supports alternative 2 (paging) according to  clause 5.4.2.1 of ETSI GS NFV-SOL 013 [22] for this resource. |

</div>

This method shall support the request data structures, the response data structures, and response codes specified in Table 3.3.4.4.3.2-2.

###### Table 3.3.4.4.3.2-2: Details of the GET request/response on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Request body** | **Data type** | **Cardinality** | **Description** | |
| n/a |  |  | |
| **Response body** | **Data type** | **Cardinality** | **Response Codes** | **Description** |
| AlarmSubscriptionInfo | 0..N | 200 OK | Shall be returned when information about zero or more AlarmSubscriptionInfo instances has been queried successfully.  The response body shall contain in an array the representations of zero or more AlarmSubscriptionInfo instances, as defined in clause 3.3.6.2.3.  If the "filter" URI parameter or one of the "all\_fields", "fields" (if supported), "exclude\_fields" (if supported) or "exclude\_default" URI parameters was supplied in the request, the data in the response body shall have been transformed according to the rules specified in  clauses 5.2.2 and 5.3.2 of ETSI GS NFV-SOL 013 [22],  respectively.  If the O-Cloud supports alternative 2 (paging) according to clause 5.4.2.1 of ETSI GS NFV-SOL 013  [22] for this resource, inclusion of the Link HTTP header in this response shall follow the provisions in clause 5.4.2.3 of ETSI GS NFV-SOL 013 [22]. |
| ProblemDetails | 1 | 400 Bad Request | Shall be returned upon the following error: Invalid attribute-based filtering expression.  The response body shall contain a ProblemDetails  structure, in which the "detail" attribute should convey more information about the error. |
| ProblemDetails | 1 | 400 Bad Request | Shall be returned upon the following error: Invalid attribute selector.  The response body shall contain a ProblemDetails structure, in which the "detail" attribute should convey more information about the error. |
| ProblemDetails | 1 | 400 Bad Request | Shall be returned upon the following error: Response too big.  If the O-Cloud supports alternative 1 (error) according to clause 5.4.2.1 of ETSI GS NFV-SOL 013 [22] for this  resource, this error response shall follow the provisions in clause 5.4.2.2 of ETSI GS NFV-SOL 013 [22]. |
| ProblemDetails | See clause 3.1.  5 | 4xx/5xx | In addition to the response codes defined above, any common error response code as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] may be returned. |

</div>

PUT

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

PATCH

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

DELETE

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

#### REST resource: Alarm Subscription Description

##### Description

The Alarm Subscription Description represents the description of a subscription to alarm change events in the O-Cloud.

##### Resource definition

###### Resource URI: {apiRoot}/o2ims- infrastructureMonitoring/{apiMajorVersion}/alarmSubscriptions/{alarmSubscriptionId}

This resource shall support the resource URI variables defined in Table 3.3.4.5.2-1.

###### Table 3.3.4.5.2-1 Resource URI variables for this resource

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Name** | **Data type** | **Definition** |
| apiRoot | String | See clause 3.1.2 |
| apiMajorVersion | String | See clause 3.2.2 |
| alarmSubscriptionId | Identifier | The identifier of the Alarm Subscription Description resource. This identifier can be retrieved from the alarmSubscriptionsId attribute in the payload body of the response to a GET request getting the list of  "AlarmSubscriptionInfo" resources. |

</div>

##### Resource methods

POST

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

GET

The GET operation is used to retrieve the alarm subscription description of a single alarm subscription. This method shall support the URI query parameters specified in Table 3.3.4.5.3.2-1.

###### Table 3.3.4.5.3.2-1 URI query parameters supported by the GET method on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Name** | **Data type** | **P** | **Cardinality** | **Description** | **Applicability** |
| n/a |  |  |  |  |  |

</div>

This method shall support the request data structures, the response data structures, and response codes specified in Table 3.3.4.5.3.2-2.

###### Table 3.3.4.5.3.2-2: Details of the GET request/response on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Request body** | **Data type** | **Cardinality** | **Description** | |
| n/a |  |  | |
| **Response body** | **Data type** | **Cardinality** | **Response Codes** | **Description** |
| AlarmSubscriptionInfo | 1 | 200 OK | Shall be returned when information about a AlarmSubscriptionInfo instance has been queried successfully.  The response body shall contain a representation of  the AlarmSubscriptionInfo instance, as defined in clause 3.3.6.2.3. |
| ProblemDetails | See clause 3.1.  5 | 4xx/5xx | In addition to the response codes defined above, any  common error response code as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] may be returned. |

</div>

PUT

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

PATCH

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

DELETE

The DELETE operation is used to delete the alarm subscription description of a single alarm subscription. This method shall support the URI query parameters specified in Table 3.3.4.5.3.5-1.

###### Table 3.3.4.5.3.5-1 URI query parameters supported by the DELETE method on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Name** | **Data type** | **P** | **Cardinality** | **Description** | **Applicability** |
| n/a |  |  |  |  |  |

</div>

This method shall support the request data structures, the response data structures, and response codes specified in Table 3.3.4.5.3.5-2.

###### Table 3.3.4.5.3.5-2: Details of the DELETE request/response on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Request body** | **Data type** | **Cardinality** | **Description** | |
| n/a |  |  | |
| **Response body** | **Data type** | **Cardinality** | **Response Codes** | **Description** |
| n/a | 1 | 204 (no content) | Shall be returned when the individual instance of Alarm Subscription has been deleted successfully. The response body shall be empty. |
| ProblemDetails | See clause 3.1.  5 | 4xx/5xx | In addition to the response codes defined above, any common error response code as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] may be returned. |

</div>

#### REST resource: Alarm Service Configuration

##### Description

The Alarm Service Configuration represents the ability to get and set the configurable values which govern the behaviour of the alarm service.

##### Resource definition

###### Resource URI: {apiRoot}/o2ims-infrastructureMonitoring/{apiMajorVersion}/alarmServiceConfiguration

This resource shall support the resource URI variables defined in Table 3.2.4.2.2-1.

###### Table 3.3.4.6.2-1 Resource URI variables for this resource

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Name** | **Data type** | **Definition** |
| apiRoot | String | See clause 3.1.2 |
| apiMajorVersion | String | See clause 3.2.2 |

</div>

##### Resource methods

POST

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] .

GET

The GET operation is used to retrieve the current alarm service configuration.

This method shall support the URI query parameters specified in Table 3.3.4.6.3.2-1.

###### Table 3.3.4.6.3.2-1 URI query parameters supported by the GET method on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Name** | **Data type** | **P** | **Cardinality** | **Description** | **Applicability** |
| n/a |  |  |  |  |  |

</div>

This method shall support the request data structures, the response data structures, and response codes specified in Table 3.3.4.6.3.2-2.

###### Table 3.3.4.6.3.2-2: Details of the GET request/response on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Request body** | **Data type** | **Cardinality** | **Description** | |
| n/a |  |  | |
| **Response body** | **Data type** | **Cardinality** | **Response Codes** | **Description** |
| AlarmServiceConfigurat ion | 1 | 200 OK | Shall be returned when information about an AlarmServiceConfiguration instance has been queried successfully.  The response body shall contain a representation of the AlarmServiceConfiguration instance, as defined in clause 3.3.6.2.5. |
| ProblemDetails | See clause 3.1.  5 | 4xx/5xx | In addition to the response codes defined above, any common error response code as defined in ETSI GS NFV-SOL 013 [22], clause 6.4 may be returned. |

</div>

PUT

The PUT method is used to update all fields of the Alarm Service Configuration. It operates as a "replace" or "overwrite" semantic model.

A 200 *OK* response with the updated copy of the final object content after the update has been performed is the acceptable response for objects with minimal complexity.

This method shall support the URI query parameters specified in Table 3.3.4.6.3.3-1.

###### Table 3.3.4.6.3.3-2 URI query parameters supported by the PUT method on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Name** | **Data type** | **P** | **Cardinality** | **Description** | **Applicability** |
| n/a |  |  |  |  |  |

</div>

This method shall support the request data structures, the response data structures, and response codes specified in Table 3.3.4.6.3.3-2.

###### Table 3.3.4.6.3.3-2: Details of the PUT request/response on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Request body** | **Data type** | **Cardinality** | **Description** | |
| AlarmServiceConfigurat ion | 1 | The parameter for the Alarm Service Configuration, as defined in clause 3.3.6.2.5. | |
| **Response body** | **Data type** | **Cardinality** | **Response Codes** | **Description** |
| AlarmServiceConfigurat ion | 1 | 200 OK | Shall be returned when the request has been accepted and completed.  The response body shall contain attribute modifications  for the alarm service configuration (see clause 3.3.6.2.5). |
| ProblemDetails | 0..1 | 412  Preconditio n failed | Shall be returned upon the following error: A precondition given in an HTTP request header is not fulfilled.  Typically, this is due to an ETag mismatch, indicating that the resource was modified by another entity prior to this request.  The response body should contain a ProblemDetails structure, in which the "detail" attribute should convey  more information about the error. |
| ProblemDetails | See clause 3.1.  5 | 4xx/5xx | In addition to the response codes defined above, any common error response code as defined in ETSI GS  NFV-SOL 013 [22], clause 6.4 may be returned. |

</div>

PATCH

The PATCH method is used to modify individual fields of the Alarm Service Configuration.

A PATCH request shall enable only those fields of the alarm service configuration that are contained in the request to be modified. Attributes not contained in the request will remain unmodified. This is sometimes referred to as a partial update.

This method shall support the URI query parameters specified in Table 3.3.4.6.3.4-1.

###### Table 3.3.4.6.3.4-1 URI query parameters supported by the PATCH method on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Name** | **Data type** | **P** | **Cardinality** | **Description** | **Applicability** |
| n/a |  |  |  |  |  |

</div>

This method shall support the request data structures, the response data structures, and response codes specified in Table 3.3.4.6.3.4-2.

###### Table 3.3.4.6.3.4-2: Details of the PATCH request/response on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Request body** | **Data type** | **Cardinality** | **Description** | |
| AlarmServiceConfigurat ion | 1 | The parameter for the Alarm Service Configuration, as defined in clause 3.3.6.2.5.  The Content-Type header shall be set to "application/merge- patch+json" according to IETF RFC 7396 [29]. | |
| **Response body** | **Data type** | **Cardinality** | **Response Codes** | **Description** |
| AlarmServiceConfigurat ion | 1 | 200 OK | Shall be returned when the request has been accepted and completed.  The response body shall contain attribute modifications  for the alarm service configuration (see clause 3.3.6.2.5). |
| ProblemDetails | 0..1 | 412  Preconditio n failed | Shall be returned upon the following error: A precondition given in an HTTP request header is not fulfilled.  Typically, this is due to an ETag mismatch, indicating that the resource was modified by another entity.  The response body should contain a ProblemDetails structure, in which the "detail" attribute should convey  more information about the error. |
| ProblemDetails | See clause 3.1.  5 | 4xx/5xx | In addition to the response codes defined above, any common error response code as defined in ETSI GS  NFV-SOL 013 [22], clause 6.4 may be returned. |

</div>

DELETE

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in ETSI GS NFV-SOL 013 [22], clause 6.4.

#### REST resource: Purge Alarms task

##### Description

This task resource represents the "Purge Alarms" operation. The API consumer can use this resource to request purging one or multiple Alarms Event Records in the Alarms List.

##### Resource definition

The resource URI is:

###### {apiRoot}/o2ims-infrastructureMonitoring/{apiMajorVersion}/alarms/purge

This resource shall support the resource URI variables defined in table 3.3.4.7.2-1.

###### Table 3.3.4.7.2-1: Resource URI variables for this resource

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Name** | **Data type** | **Definition** |
| apiRoot | string | See clause 3.1.2 |
| apiMajorVersion | string | See clause 3.3.2 |

</div>

##### Resource Methods

POST

The POST operation is used to purge Alarm Event Record(s) contained in the alarm list. The request body input parameters can identify the specific Alarm Event Record(s) to be purged. For additional information about the purge service operation, refer to the service model in clause 2.1.3.1.2.5.

This method shall follow the provisions specified in table 3.3.4.7.3.1-1 for URI query parameters.

###### Table 3.3.4.7.3.1-1 URI query parameters supported by the POST method on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Name** | **Data type** | **P** | **Cardinality** | **Description** | **Applicability** |
| n/a |  |  |  |  |  |

</div>

This method shall support the request data structures, the response data structures, and response codes specified in table 3.3.4.7.3.1-2.

###### Table 3.3.4.7.3.1-2: Details of the POST request/response on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Request body** | **Data type** | **Cardinality** | **Description** | |
| PurgeRequest | 1 | This identifies the specific AlarmEventRecord(s) to be purged  based on attributes of the AlarmEventRecord | |
| **Response body** | **Data type** | **Cardinality** | **Response Codes** | **Description** |
| n/a |  | 202  Accepted | Shall be returned when the request has been accepted for processing. The response body shall be empty. The HTTP response shall include a "Location" HTTP header that contains the URI of the newly created "Task Operation Occurrence" resource corresponding  to the purge operation. |
| ProblemDetails | 1 | 409 Conflict | Shall be returned upon the following error: The operation cannot be executed currently, due to a conflict with the state of the resource.  Typically, this is due to the fact that another task operation is ongoing on the affected resources.  The response body shall contain a ProblemDetails structure, in which the "detail" attribute shall convey more information about the error. |
| ProblemDetails | See clause 3.1.  5 | 4xx/5xx | In addition to the response codes defined above, any  common error response code as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] may be returned. |

</div>

GET

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

PUT

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

PATCH

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

DELETE

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

#### REST resource: Task Operation List

##### Description

This resource represents the list of task operation occurrences triggered though the respective API. The API consumer can use this resource to query status information about multiple task operation occurrences.

##### Resource definition

The resource URI is:

###### {apiRoot}/o2ims-infrastructureMonitoring/{apiMajorVersion}/taskOperations

This resource shall support the resource URI variables defined in table 3.3.4.8.2-1.

###### Table 3.3.4.8.2-1: Resource URI variables for this resource

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Name** | **Data type** | **Definition** |
| apiRoot | string | See clause 3.1.2 |
| apiMajorVersion | string | See clause 3.3.2 |

</div>

##### Resource methods

POST

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

GET

The API consumer can use this method to query status information about multiple task operation occurrences. This method shall follow the provisions specified in table 3.3.4.a.3.2-1 for URI query parameters.

###### Table 3.3.4.8.3.2-1 URI query parameters supported by the GET method on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Name** | **Cardinality** | **Description** |
| filter | 0..1 | Attribute-based filtering expression according to clause 5.2 of ETSI GS NFV-SOL 013 [22].  The O-Cloud shall support receiving this parameter as part of the URI query string. The API consumer may supply this parameter.  All attribute names that appear in the TaskOperationInfo and in data  types referenced from it shall be supported by the O-Cloud in the filter expression. |
| all\_fields | 0..1 | Include all complex attributes in the response. See clause 5.3 of ETSI GS NFV-SOL 013 [22] for details. The O-Cloud shall support this parameter. |
| fields | 0..1 | Complex attributes to be included into the response. See clause 5.3 of ETSI GS NFV-SOL 013 [22] for details. The O-Cloud should support this parameter. |
| exclude\_fields | 0..1 | Complex attributes to be excluded from the response. See clause 5.3 of  ETSI GS NFV-SOL 013 [22] for details. The O-Cloud should support this parameter. |
| exclude\_default | 0..1 | Indicates to exclude the following complex attributes from the response. See clause 5.3 of ETSI GS NFV-SOL 013 [22] for details. The O-Cloud shall support this parameter.  The following attributes shall be excluded from the list of XYZ in the response body if this parameter is provided, or none of the parameters "all\_fields", "fields", "exclude\_fields", "exclude\_default" are provided.  - TBD |
| nextpage\_opaque  \_marker | 0..1 | Marker to obtain the next page of a paged response. Shall be supported  by the O-Cloud if the O-Cloud supports alternative 2 (paging) according to clause 5.4.2.1 of ETSI GS NFV-SOL 013 [2]] for this resource. |

</div>

This method shall support the request data structures, the response data structures, and response codes specified in table 3.3.4.8.3.2-2.

###### Table 3.3.4.8.3.2-2: Details of the GET request/response on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Request body** | **Data type** | **Cardinality** | **Description** | |
| n/a |  |  | |
| **Response body** | **Data type** | **Cardinality** | **Response Codes** | **Description** |
| TaskOperationInfo | 0..N | 200 OK | Shall be returned when information about zero or more task operation occurrences has been queried successfully.  The response body shall contain in an array the representations of zero or more TaskOperationInfo instances, as defined in clause 3.3.6.2.7.  If the "filter" URI parameter or one of the "all\_fields", "fields" (if supported), "exclude\_fields" (if supported) or "exclude\_default" URI parameters was supplied in the request, the data in the response body shall have been transformed according to the rules specified in clauses 5.2.2 and 5.3.2 of ETSI GS NFV-SOL 013  [22], respectively.  If the O-Cloud supports alternative 2 (paging) according to clause 5.4.2.1 of ETSI GS NFV-SOL 013 [2]] for this resource, inclusion of the Link HTTP header in this response shall follow the provisions in  clause 5.4.2.3 of ETSI GS NFV-SOL 013 [22]. |
| ProblemDetails | 1 | 400 Bad Request | Shall be returned upon the following error: Invalid attribute-based filtering expression.  The response body shall contain a ProblemDetails structure, in which the "detail" attribute should convey more information about the error. |
| ProblemDetails | 1 | 400 Bad Request | Shall be returned upon the following error: Invalid attribute selector.  The response body shall contain a ProblemDetails structure, in which the "detail" attribute should convey more information about the error. |
| ProblemDetails | 1 | 400 Bad Request | Shall be returned upon the following error: Response too big.  If the O-Cloud supports alternative 1 (error) according to clause 5.4.2.1 of ETSI GS NFV-SOL 013 [2]] for this resource, this error response shall follow the provisions in clause 5.4.2.2 of ETSI GS  NFV-SOL 013 [2]. |
| ProblemDetails | See  clause 3.1.5 | 4xx/5xx | In addition to the response codes defined above, any common error response code as defined in clause  6.4 of ETSI GS NFV-SOL 013 [22] may be returned. |

</div>

PUT

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

PATCH

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

DELETE

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

#### REST resource: Task Operation Occurrence

##### Description

This resource represents a task operation resource. The API can use this resource to read status information about an individual task operation occurrence.

The O-Cloud may remove an individual task operation occurrence resource some time after it has reached one of the terminal states (i.e., the "operationState" attribute of its representation is equal to one of the values "COMPLETED", "FAILED" or "ROLLED\_BACK"). The minimum time how long the O-Cloud waits before deleting such a resource is not defined by the present document version.

##### Resource definition

The resource URI is:

###### {apiRoot}/o2ims-infrastructureMonitoring/{apiMajorVersion}/taskOperations/{operationOccurrenceId}

This resource shall support the resource URI variables defined in table 3.3.9.b.2-1.

###### Table 3.3.4.9.2-1: Resource URI variables for this resource

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Name** | **Data type** | **Definition** |
| apiRoot | string | See clause 3.1.2 |
| apiMajorVersion | string | See clause 3.3.2 |
| operationOccurrenceId | Identifier | Identifier of a task operation occurrence. See note. |
| NOTE: This identifier can be retrieved from the resource referenced by the "Location HTTP" header in the response to a POST request triggering a task operation. | | |

</div>

##### Resource methods

POST

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

GET

The API consumer can use this method to retrieve status information about a task operation occurrence by reading a "Task Operation Occurrence" resource.

This method shall follow the provisions specified in table 3.3.4.9.3.2-1 for URI query parameters.

###### Table 3.3.4.9.3.2-1 URI query parameters supported by the GET method on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Name** | **Cardinality** | **Description** |
| none supported |  |  |

</div>

This method shall support the request data structures, the response data structures, and response codes specified in table 3.3.4.9.3.2-2.

###### Table 3.3.4.9.3.2-2: Details of the GET request/response on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Request body** | **Data type** | **Cardinality** | **Description** | |
| n/a |  |  | |
| **Response body** | **Data type** | **Cardinality** | **Response Codes** | **Description** |
| TaskOperationInfo | 1 | 200 OK | Shall be returned when information about an individual task operation occurrence has been read successfully.  The response body shall contain status information about a task operation occurrence (see clause 3.3.6.2.7). |
| ProblemDetails | See  clause 3.1.5 | 4xx/5xx | In addition to the response codes defined above, any common error response code as defined in clause  6.4 of ETSI GS NFV-SOL 013 [22] may be returned. |

</div>

PUT

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

PATCH

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

DELETE

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

### Notifications

#### General

Notifications shall comply to the Subscribe/Notify pattern described in clause 5.9 of ETSI GS NFV-SOL 015 [25].

###### Table 3.3.5.1-1 Notifications overview

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Notification** | **Callback URI** | **HTTP**  **method** | **Description** |
| Alarm Change Notification | Alarm Subscription.callback | POST | Notify subscribers when  objects in the O2ims Alarm List have changed. |

</div>

* + - * 1. Alarm Change Notification Description

The Alarm Change Notification is used by the O-Cloud Infrastructure Monitoring Service to report changes to the O2ims alarm List to an O2ims consumer that has subscribed to such notifications.

##### Target URI

The Alarm Subscription.Callback URI "{AlarmEventNotification}" shall be used with the callback URI variables define in table 3.3.5.1.2-1.

###### Table 3.3.5.1.2-1 Definition of Alarm Change Notification type

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Attribute name** | **Data type** | **P** | **Cardinality** | **Description** |
| globalCloudID | Identifier | M | 1 | The global cloud identifier assigned by the SMO. |
| consumerSubscriptionId | Identifier | M | 0..1 | The value provided by the consumer in the subscription. |
| notificationEventType | Integer | M | 1 | One of the following values:   * 0 for "NEW" * 1 for "CHANGE" * 2 for "CLEAR" * 3 for "ACKNOWLEDGE" |
| objectRef | String | M | 0..1 | The URL to the AlarmEventRecord object. |
| alarmEventRecordId | Identifier | M | 1 | The identifier for the AlarmEventRecord Object. |
| resourceTypeID | Identifier | M | 1 | A reference to the type of resource which caused the alarm. |
| resourceID | Identifier | M | 1 | A reference to the resource instance which caused the alarm. |
| alarmDefinitionID | Identifier | M | 1 | A reference to the Alarm Definition record in the Alarm Dictionary associated with the referenced Resource  Type. |
| probableCauseID | Identifier | M | 1 | A reference to the ProbableCause of the Alarm. |
| alarmRaisedTime | DateTime | M | 1 | Date/Time stamp value when the AlarmEventRecord has been created. |
| alarmChangedTime | DateTime | M | 1 | Date/Time stamp value when any value of the AlarmEventRecord has been modified. |
| alarmAcknowledgeTime | DateTime | M | 1 | Date/Time stamp value when the alarm condition is acknowledged. |
| alarmAcknowledged | Boolean | M | 1 | Boolean value indicating of a management system has acknowledged the alarm. |
| perceivedSeverity | integer | M | 1 | One of the following values:   * 0 for "CRITICAL" * 1 for "MAJOR" * 2 for "MINOR" * 3 for "WARNING" * 4 for "INDETERMINATE" * 5 for "CLEARED" |
| extensions | KeyValue | M | 0..N | Unspecified (not standardized) properties (keys) which are tailored by the vendor or operator to extend the  information provided about the O-Cloud Alarm. |

</div>

### Data model

#### REST resource data types

This clause specifies the data types to be used in resource representations and notifications supported by the present API.

Table 3.3.6.1-1 specifies the data types defined for the O2ims-InfrastructureMonitoring service API.

###### Table 3.3.6.1-1: O2ims\_InfrastructureMonitoring resource data types

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Data type** | **Clause defined** | **Description** | **Applicability** |
| AlarmEventRecord | 3.2.6.2.2 | This data type represents an instance of an Alarm detected by the O-Cloud Infrastructure. |  |
| AlarmSubscriptionInfo | 3.2.6.2.3 | This data type represents an instance of a subscription to O2ims Alarm change events. |  |
| AlarmServiceConfiguration | 3.3.6.2.5 | This type represents information about the Alarm Service Configuration. |  |
| TaskOperationInfo | 3.3.6.2.7 | This type represents a task operation occurrence. |  |

</div>

#### Structured data types

##### Introduction

This clause defines the data structures to be used in resource representations.

##### Type: AlarmEventRecord

This type represents information about an Alarm in the O-Cloud Infrastructure. It shall comply with the provisions defined in table 3.3.6.2.2-1.

###### Table 3.3.6.2.2-1 Definition of type AlarmEventRecord

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Attribute name** | **Data type** | **P** | **Cardinality** | **Description** |
| alarmEventRecordId | Identifier | M | 1 | The identifier for the AlarmEventRecord Object. |
| resourceTypeID | Identifier | M | 1 | A reference to the type of resource which caused the alarm. |
| resourceID | Identifier | M | 1 | A reference to the resource instance which caused the alarm. |
| alarmDefinitionID | Identifier | M | 1 | A reference to the Alarm Definition record in the Alarm  Dictionary associated with the referenced Resource Type. |
| probableCauseID | Identifier | M | 1 | A reference to the ProbableCause of the Alarm. |
| alarmRaisedTime | DateTime | M | 1 | Date/Time stamp value when the AlarmEventRecord has been created. |
| alarmChangedTime | DateTime | M | 0..1 | Date/Time stamp value when any value of the  AlarmEventRecord has been modified.It shall be present if the alarm record has been modified. |
| alarmAcknowledgeTi me | DateTime | M | 0..1 | Date/Time stamp value when the alarm condition is acknowledged. It shall be present if the alarm record  has been acknowledged. |
| alarmAcknowledged | Boolean | M | 1 | Boolean value indicating of a management system has acknowledged the alarm. "True" if the alarm has been  acknowledged, and "False" otherwise. |
| alarmClearedTime | DateTime | M | 0..1 | Date/Time stamp value indicating when the alarm was cleared. It shal be present if the alarm record has been cleared. |
| perceivedSeverity | integer | M | 1 | One of the following values:   * 0 for "CRITICAL" * 1 for "MAJOR" * 2 for "MINOR" * 3 for "WARNING" * 4 for "INDETERMINATE" 5 for "CLEARED" |
| extensions | KeyValue | M | 0..N | Unspecified (not standardized) properties (keys) which are tailored by the vendor or operator to extend the  information provided about the O-Cloud Alarm. |

</div>

##### Type: AlarmSubscriptionInfo

This type represents information about a Subscription for Alarms in the O-Cloud. It shall comply with the provisions defined in table 3.3.6.2.3-1.

###### Table 3.3.6.2.3-1 Definition of type AlarmSubscriptionInfo

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Attribute name** | **Data type** | **P** | **Cardinality** | **Description** |
| alarmSubscriptionId | Identifier | M | 1 | Identifier for the Alarm Subscription. This identifier is allocated by the O-Cloud. |
| consumerSubscriptionId | Identifier | O | 0..1 | Identifier for the consumer of events sent due to the Subscription. |
| filter | String | O | 0..1 | Criteria for events which do not need to be reported or will be filtered by the subscription notification service. Therefore, if a filter is not provided then all events are reported. |
| callback | Uri | M | 1 | The fully qualified URI to a consumer procedure which can process a Post of the AlarmEventNotification. |

</div>

##### Type: AlarmEventRecordModifications

This type represents modifications for an individual alarm record, i.e., modification to a resource representation based on the "AlarmEventRecord" data type. The attributes of "AlarmEventRecord" that can be modified according to the provision in clause 3.3.6.2.2 are included in the "AlarmEventRecordModifications" data type.

The "AlarmEventRecordModifications" data type shall comply with the provisions defined in table 3.3.6.2.4-1.

###### Table 3.3.6.2.4-1: Definition of type AlarmEventRecordModifications

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Attribute name** | **Data type** | **P** | **Cardinality** | **Description** |
| alarmAcknowledged | Boolean | M | 0..1 | New value of the "alarmAcknowledged" attribute in "AlarmEventRecord". See note. |
| perceivedSeverity | Integer | M | 0..1 | New value for the "perceivedSeverity" attribute in "AlarmEventRecord" to indicate that the alarm record is requested to be cleared. Only the value "5" for "CLEARED" is permitted in a request message content.  See note. |
| NOTE: Either "alarmAcknowledged" or "perceivedSeverity" shall be included in a request message content, but not both. | | | | |

</div>

##### Type: AlarmServiceConfiguration

This type represents request information about the Alarm Service Configuration which includes attributes to control the retention of Alarms in the O-Cloud Alarm List. It shall comply with the provisions defined in table 3.3.6.2.5-1.

###### Table 3.3.6.2.5-1 Definition of type AlarmServiceConfiguration

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Attribute name** | **Data type** | **P** | **Cardinality** | **Description** |
| retentionPeriod | Integer | M | 1 | Number of days for alarm history to be retained.  See Note. |
| extensions | KeyValuePairs | M | 0..N | List of metadata key-value pairs used to associate meaningful metadata to the related alarm service. |
| NOTE: this value has a minimum limit such that it can't be set to a value lower than the limit. | | | | |

</div>

##### Type: PurgeRequest

This data type is used in the Alarm Purge operation. The PurgeRequest data type is used to specify the Alarm Record IDs and a time window for alarms to be purged through the API. It shall comply with the provisions defined in table 3.3.6.2.3-1. See clause 3.3.4.2.3 for more details on the Alarm Purge Operation.

###### Table 3.3.6.2.3-1: Definition of type PurgeRequest

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Attribute name** | **Data type** | **P** | **Cardinality** | **Description** |
| alarmRecordId | String | M | 0..N | A list of AlarmRecord ID (strings) if provided would be the alarm records that are to be purged. See note. |
| purgeConditions | Structure (inline) | M | 0..1 | Provides a time window (begin time, end time) for inactive and acknowledged alarms to be purged within. See note. |
| >startWindowTime | DateTime | M | 0..1 | Start time of the timing window of Alarms to be purged. Time refers to the "alarmClearedTime" in the AlarmEventRecord. If attribute is not provided, all cleared alarms older than the "endWindowTime" are  considered for the purge request. |
| >endWindowTime | DateTime | M | 1 | End time of the timing windows of Alarms to be purged. Time refers to the "alarmClearedTime" in the AlarmEventRecord. If only this attribute is provided in the purgeConditions, all cleared alarms older than this  time are considered for the purge request. |
| NOTE: At least either alarmRecordId or purgeCondition shall be provided in a request. If more than one attribute is provided, the API producer shall determine the intersection between the affected alarm event records and the purge conditions. For instance, if a list of alarm records is provided, as well as additional purge conditions, then those purge conditions are only to be applied to the list of alarm records provided. | | | | |

</div>

##### Type: TaskOperationInfo

This type represents a task operation occurrence. It shall comply with the provisions defined in table 3.2.6.2.7-1.

###### Table 3.3.6.2.7-1 Definition of type TaskOperationInfo

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Attribute name** | **Data type** | **P** | **Cardinality** | **Description** |
| Id | Identifier | M | 1 | Identifier of this task operation occurrence. |
| operationState | Enum (inlined) | M | 1 | The state of the alarm management operation.  Permitted values:   * PROCESSING: the operation is currently in execution. * COMPLETED: the operation has completed successfully. * FAILED: the operation has failed. * ROLLED\_BACK: the operation has rolled back. |
| stateEnteredTime | DateTime | M | 1 | Date-time when the current state has been entered. |
| startTime | DateTime | M | 1 | Date-time of the start of the operation. |
| operation | Enum (inlined) | M | 1 | Type of the operation represented by this task operation occurrence.  Permitted values:  - PURGE: represents the "purge alarms" alarm management operation. |
| operationParams | Object | M | 0..1 | Input parameters of the triggered operation. This attribute shall be formatted according to the request data type of the related alarms management operation.  The following mapping between operation attribute and the data type of this attribute shall apply:  - PURGE: PurgeRequest  This attribute shall be present if this data type is returned in a response to reading an individual resource and may be present according to the chosen attribute  selector parameter if this data type is returned in a response to a query of a container resource. |
| error | ProblemDetails | M | 0..1 | If "operationState" is "FAILED", this attribute shall be present and contain error information, unless it has  been requested to be excluded via an attribute selector. |

</div>

#### Simple data types and enumerations

##### Introduction

This clause defines simple data types and enumerations that can be referenced from data structures defined in the previous clauses. The simple data types defined in a request body, response body, or a structured type are defined in ETSI GS NFV-SOL 013 [22] or this clause of the specification.

##### Simple data types

The simple data types defined in table 3.3.6.3.2-1 shall be supported.

###### Table 3.3.6.3.2-1: Simple data types

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Type Name** | **Type Definition** | **Description** |
| n/a |  |  |

</div>

### Error handling

#### General

For the O2ims\_InfrastructureMonitoring Service API, HTTP error responses shall be supported as specified in clause 3.1.5.

In addition, the requirements in the following clauses are applicable for the O2ims\_InfrastructureMonitoring Service API.

#### Protocol errors

No specific protocol errors for the O2ims\_InfrastructureMonitoring Service API are specified.

#### Application errors

No specific application errors for the O2ims\_InfrastructureMonitoring Service API are specified

### Security

No specific security procedures for the O2ims\_InfrastructureMonitoring Service API are specified beyond those in clause 3.1.7.

## O2ims\_InfrastructureProvisioning Service API

Not specified in the present document version.

## O2ims\_InfrastructureSoftwareManagement Service API

Not specified in the present document version.

## O2ims\_InfrastructureLifecycleManagement Service API

### Description

This API allows the SMO to invoke O2ims\_ InfrastructureLifecycleManagement Services towards the O-Cloud. Operations against SMO Service objects are not defined.

At this time no operations are defined for O2ims\_ InfrastructureLifecycleManagement in the present document version.

### API version

For the O2ims\_InfrastructureLifecycleManagement Service API version as specified in the present document, the MAJOR version field shall be 1, the MINOR version field shall be 0, and the PATCH version field shall be 0.

### REST resources structure and methods

REST resource structure and methods for this API are not specified in the present document version.

### REST resources

Not specified in the present document version.

### Notifications

#### General

Notifications shall comply to the Subscribe/Notify pattern described in clause 5.9 of ETSI GS NFV-SOL 015 [25].

###### Table 3.6.5.1-1 Notifications overview

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Notification** | **Callback URI** | **HTTP**  **method** | **Description** |
| OCloud Available Notification | callback | POST | Notify SMO when the O-Cloud has determined that it is complete enough to allow provisioning from the SMO and/or to begin to support  workload deployments. |

</div>

* + - * 1. OCloud Available Notification Description

The OCloud Available Notification is used by the O-Cloud Infrastructure Management Service to register itself with the SMO. This occurs as part of the Genesis life cycle procedure when the O-Cloud has determined it can begin to support interactions with the SMO.

##### Target URI

OCloud Available Notification.Callback URI "{oCloudAvailableEventNotification}" shall be used with the callback URI variables defined in table 3.6.5.1.2-1.

###### Table 3.6.5.1.2-1 OCloud Available Notification.Callback URI Vairables

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Attribute name** | **Data type** | **P** | **Cardinality** | **Description** |
| globalCloudId | Identifier | M | 1 | Identifier of the O-Cloud instance. Globally unique across O-Cloud instances. This value was provided by the SMO with the callback URI at the beginning of O-  Cloud genesis and used in registration at the end of genesis. |
| oCloudId | Identifier | M | 1 | Identifier of the O-Cloud instance. Unique within an O- Cloud instance. |
| IMS\_EP | String | M | 1 | The URI to the Infrastructure Services APIRoot. |

</div>

### Data Model

#### REST resource data types

This clause is not specified in the present document version.

#### Structured data types

This clause is not specified in the present document version.

#### Simple data types and enumerations

##### Introduction

This clause defines simple data types and enumerations that can be referenced from data structures defined in the previous clauses. The simple data types defined in a request body, response body, or a structured type are defined in ETSI GS NFV-SOL 013 [22] or this clause of the specification.

##### Simple data types

The simple data types defined in table 3.6.6.3.2-1 shall be supported.

###### Table 3.6.6.3.2-1: Simple data types

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Type Name** | **Type Definition** | **Description** |
| n/a |  |  |

</div>

### Error handling

#### General

For the O2ims\_ InfrastructureLifecycleManagement Service API, HTTP error responses shall be supported as specified in clause 3.1.5.

In addition, the requirements in the following clauses are applicable for the O2ims\_InfrastructureLifecycleManagement Service API.

#### Protocol errors

No specific protocol errors for the O2ims\_ InfrastructureLifecycleManagement Service API are specified.

#### Application errors

No specific application errors for the O2ims\_ InfrastructureLifecycleManagement Service API are specified

### Security

No specific security procedures for the O2ims\_ InfrastructureLifecycleManagement Service API are specified beyond those in clause 3.1.7.

## O2ims\_InfrastructurePerformance Service API

### Description

This API allows the SMO to invoke O2ims\_ InfrastructurePerformance Services towards the O-Cloud.

The operations defined for O2ims\_InfrastructurePerformance Services through this API are:

* Query information about one or more Performance Measurement Jobs,
* Create an individual Performance Measurement Job, and
* Ability to query and modify the configurable values which govern the behaviour of the Performance Service.

### API version

For the O2ims\_InfrastructurePerformance Service API version as specified in the present document, the MAJOR version field shall be 1, the MINOR version field shall be 0, and the PATCH version field shall be 0.

Table 3.7.2-1 lists the history of API version of the O2ims\_InfrastructurePerformance Service and the main capabilities added/removed across versions.

###### Table 3.7.2-1: History of API versions of the O2ims\_InfrastructurePerformance Service.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Version** | **Description** |
| 1.0.0 | Initial API Supporting: Measurement Job Query |
| 1.1.0 | New resources:  Performance Measurement Job Create Performance Management Configuration |

</div>

### REST resources structure and methods

All resource URIs of the API shall use the base URI specification defined in clause 3.1.2. The string "O2ims\_infrastructurePerformance" shall be used to represent {apiName}. All resource URIs in the clauses below are defined relative to the formed base URI (i.e., {apiRoot}/O2ims\_infrastructurePerformance/{apiVersion}).

When ambiguity is possible, the term REST resource is used to make the distinction between the term resource as understood within the context of REST API from the term resource as understood within the context of O-RAN.

Figure 3.7.3-1 shows the overall resource URI structure defined for the O2ims\_infrastructurePerformance Service API.

![A screenshot of a computer  Description automatically generated]({{site.baseurl}}/assets/images/4433a199a2a8.png)

###### Figure 3.7.3-1: Resource URI structure of the O2ims\_infrastructurePerformance API

Table 3.7.3-1 provides an overview of the resources and applicable HTTP methods.

The O-Cloud shall support responding to requests for all HTTP methods on the resources in table 3.7.3-1 that are marked as "M" (mandatory) in the "Cat" (category) column. The O-Cloud shall also support the "API versions" resources as specified in clause 3.1.8.

###### Table 3.7.3-1: Resources and methods overview

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Resource name** | **Resource URI** | **HTTP**  **method** | **Cat** | **Description** |
| Measurement Job List | /measurementJobs | POST | M | To create an individual Performance Measurement  Job. |
| GET | M | To get a list of Performance Measurement Jobs |
| Measurement Job | /measurementJobs/{measurementJobId} | GET | M | To get an individual Performance Measurement Job |
| Performance Service Configuration | /performanceServiceConfiguration | GET | M | To get the current  configuration of the performance service. |
| PUT | M | To set a whole new  configuration of the performance service. |
| PATCH | M | Partially update the  configuration of the performance service. |

</div>

### REST resources

#### Introduction

There are no preconditions or postconditions for a successful execution of each of the O2ims\_InfrastructurePerformance Service API triggered by a corresponding operation.

#### REST resource: Measurement Job List

##### Description

This resource represents the list of Performance Measurement Jobs. The list can include Performance Measurement Jobs created either by the O-Cloud for internal monitoring or created by the SMO for additional measurement collection.

##### Resource definition

###### Resource URI: {apiRoot}/o2ims\_infrastructurePerformance/{apiMajorVersion}/measurementJobs

This resource shall support the resource URI variables defined in Table 3.2.4.2.2-1.

###### Table 3.7.4.2.2-1: Resource URI variables for this resource

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Name** | **Data type** | **Definition** |
| apiRoot | String | See clause 3.1.2 |
| apiMajorVersion | String | See clause 3.1.2 |

</div>

##### Resource methods

POST

The POST operation is used to create a Performance Measurement Job.

This method shall support the URI query parameters specified in Table 3.7.4.2.3.1-1.

###### Table 3.7.4.2.3.1-1 URI query parameters supported by the POST method on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Name** | **Data type** | **P** | **Cardinality** | **Description** | **Applicability** |
| n/a |  |  |  |  |  |

</div>

This method shall support the request data structures, the response data structures, and response codes specified in Table 3.7.4.2.3.1-2.

###### Table 3.7.4.2.3.1-2: Details of the POST request/response on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Request body** | **Data type** | **Cardinality** | **Description** | |
| MeasurementJobRequest | 1 | Request for Performance Measurement Job instance to be created. | |
| **Response body** | **Data type** | **Cardinality** | **Response Codes** | **Description** |
| MeasurementJob | 1 | 201 Created | Shall be returned when a Performance Measurement Job instance has been created successfully.  The response body shall contain a representation of the MeasurementJob instance, as defined in  clause 3.7.6.2.2. |
| ProblemDetails | See  clause 3.1.5 | 4xx/5xx | In addition to the response codes defined above, any common error response code as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] may be  returned. |

</div>

GET

The GET operation is used to retrieve the list of Performance Measurement Jobs.

This method shall support the URI query parameters specified in Table 3.2.4.2.3.2-13.7.4.2.3.2-1.

In the provisions below, according to clause 5.3.2.1 of ETSI GS NFV-SOL 013 [22], *complex attributes* are assumed to be those attributes that are structured or that are arrays and are thus atomic in nature.

###### Table 3.7.4.2.3.2-1: URI query parameters supported by the GET method on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Name** | **Cardinality** | **Description** |
| filter | 0..1 | Attribute-based filtering expression according to ETSI GS NFV-SOL 013 [22], clause 5.2. The O-Cloud shall support receiving this parameter as part of the URI query string. The API consumer may supply this parameter.  All attribute names that appear in the MeasurementJob and in data types referenced from it shall be supported by the O-Cloud in the filter expression. |
| all\_fields | 0..1 | Include all *complex attributes* in the response. See ETSI clause 5.3 of  GS NFV-SOL 013 [22] for details. The O-Cloud shall support this parameter. |
| fields | 0..1 | *Complex attributes* to be included into the response. See clause 5.3 of ETSI GS NFV-SOL 013 [22] for details. The O-Cloud should support this parameter. |
| exclude\_fields | 0..1 | *Complex attributes* to be excluded from the response. See clause 5.3 of  ETSI GS NFV-SOL 013 [22] for details. The O-Cloud should support this parameter. |
| exclude\_default | 0..1 | Presence of this URI query parameter requests that a default set of *complex attributes* shall be excluded from the response. This parameter is a flag, i.e., it has no value. If none of the attribute selector parameters are specified, the "*exclude\_default*" parameter shall be assumed as the default. See clause  5.3 of ETSI GS NFV-SOL 013 [22] for details. The O-Cloud shall support this parameter.  The following attributes shall be excluded from the list of MeasurementJob if this parameter is provided:   * measuredResources * collectedMeasurements |
| nextpage\_opaque  \_marker | 0..1 | Marker to obtain the next page of a paged response. Shall be supported by the O-Cloud if the O-Cloud supports alternative 2 (paging) according to clause 5.4.2.1 of ETSI GS NFV-SOL 013 [22] for this resource. |

</div>

This method shall support the request data structures, the response data structures, and response codes specified in Table 3.7.4.2.3.2-2.

###### Table 3.7.4.2.3.2-2: Details of the GET request/response on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Request body** | **Data type** | **Cardinality** | **Description** | |
| n/a |  |  | |
| **Response body** | **Data type** | **Cardinality** | **Response Codes** | **Description** |
| MeasurementJob | 0..N | 200 OK | Shall be returned when information about zero or more MeasurementJob instances has been queried successfully.  The response body shall contain in an array the representations of zero or more MeasurementJob instances, as defined in clause 3.7.6.2.2.  If the "filter" URI parameter or one of the "all\_fields", "fields" (if supported), "exclude\_fields" (if supported) or "exclude\_default" URI parameters was supplied in the request, the data in the response body shall have been transformed according to the rules specified in  clauses 5.2.2 and 5.3.2 of ETSI GS NFV-SOL 013 [22],  respectively.  If the O-Cloud supports alternative 2 (paging) according to clause 5.4.2.1 of ETSI GS NFV-SOL 013  [22] for this resource, inclusion of the Link HTTP header in this response shall follow the provisions in clause 5.4.2.3 of ETSI GS NFV-SOL 013 [22]. |
| ProblemDetails | 1 | 400 Bad Request | Shall be returned upon the following error: Invalid attribute-based filtering expression.  The response body shall contain a ProblemDetails  structure, in which the "*detail*" attribute should convey more information about the error. |
| ProblemDetails | 1 | 400 Bad Request | Shall be returned upon the following error: Invalid attribute selector. The response body shall contain a  ProblemDetails structure, in which the "*detail*" attribute should convey more information about the error. |
| ProblemDetails | 1 | 400 Bad Request | Shall be returned upon the following error: Response too big.  If the O-Cloud supports alternative 1 (error) according to clause 5.4.2.1 of ETSI GS NFV-SOL 013 [22] for this resource, this error response shall follow the provisions  in clause 5.4.2.2 of ETSI GS NFV-SOL 013 [22]. |
| ProblemDetails | See clause 3.1.  5 | 4xx/5xx | In addition to the response codes defined above, any  common error response code as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] may be returned. |

</div>

PUT

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

PATCH

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

DELETE

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

#### REST resource: Measurement Job

##### Description

This resource represents the details of a Performance Measurement Job in the Measurement Job List. The Measurement Job also keeps a record of the details of the Measurement Job since its creation, such as the historical list of resources measured with the Performance Measurement Job.

##### Resource definition

###### Resource URI: {apiRoot}/o2ims- infrastructurePerformance/{apiMajorVersion}/measurementJobs/{measurementJobId}

This resource shall support the resource URI variables defined in Table 3.7.4.3.2-1.

###### Table 3.7.4.3.2-1: Resource URI variables for this resource

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Name** | **Data type** | **Definition** |
| apiRoot | String | See clause 3.1.2 |
| apiMajorVersion | String | See clause 3.2.2 |
| measurementJobId | Identifier | The identifier of the Measurement Job resource. See note. |
| NOTE: This identifier can be retrieved from the performanceMeasurementJobId attribute in the payload body of the response to a GET request getting the "Measurement Job List". | | |

</div>

##### Resource methods

POST

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

GET

The GET operation is used to retrieve the details of an individual Measurement Job. This method shall support the URI query parameters specified in Table 3.7.4.3.3.2-1.

###### Table 3.7.4.3.3.2-1: URI query parameters supported by the GET method on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Name** | **Data type** | **P** | **Cardinality** | **Description** | **Applicability** |
| n/a |  |  |  |  |  |

</div>

This method shall support the request data structures, the response data structures, and response codes specified in 3.7.4.3.3.2-2.

###### Table 3.7.4.3.3.2-2: Details of the GET request/response on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Request body** | **Data type** | **Cardinality** | **Description** | |
| n/a |  |  | |
| **Response body** | **Data type** | **Cardinality** | **Response Codes** | **Description** |
| MeasurementJob | 1 | 200 OK | Shall be returned when information about a MeasurementJob instance has been queried successfully.  The response body shall contain a representation of  the MeasurementJob instance, as defined in clause 3.7.6.2.2. |
| ProblemDetails | See clause 3.1.  5 | 4xx/5xx | In addition to the response codes defined above, any  common error response code as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] may be returned. |

</div>

PUT

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

PATCH

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

DELETE

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22].

#### REST resource: Performance Service Configuration

##### Description

The Performance Service Configuration represents the ability to get and set the configurable values which govern the behaviour of the performance service.

##### Resource definition

###### Resource URI: {apiRoot}/o2ims- infrastructurePerformance/{apiMajorVersion}/performanceServiceConfiguration

This resource shall support the resource URI variables defined in Table 3.2.4.2.2-1.

###### Table 3.7.4.4.2-1 Resource URI variables for this resource

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Name** | **Data type** | **Definition** |
| apiRoot | String | See clause 3.1.2 |
| apiMajorVersion | String | See clause 3.1.2 |

</div>

##### Resource methods

POST

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in clause 6.4 of ETSI GS NFV-SOL 013 [22] .

GET

The GET operation is used to retrieve the current performance service configuration. This method shall support the URI query parameters specified in Table 3.7.4.4.3.2-1.

###### Table 3.7.4.4.3.2-1 URI query parameters supported by the GET method on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Name** | **Data type** | **P** | **Cardinality** | **Description** | **Applicability** |
| n/a |  |  |  |  |  |

</div>

This method shall support the request data structures, the response data structures, and response codes specified in Table 3.7.4.4.3.2-2.

###### Table 3.7.4.4.3.2-2: Details of the GET request/response on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Request body** | **Data type** | **Cardinality** | **Description** | |
| n/a |  |  | |
| **Response body** | **Data type** | **Cardinality** | **Response Codes** | **Description** |
| PerformanceServiceCo nfiguration | 1 | 200 OK | Shall be returned when information about a PerformanceServiceConfiguration instance has been queried successfully.  The response body shall contain a representation of  the PerformanceServiceConfiguration instance, as defined in clause 3.7.6.2.4. |
| ProblemDetails | See clause 3.1.  5 | 4xx/5xx | In addition to the response codes defined above, any  common error response code as defined in ETSI GS NFV-SOL 013 [22], clause 6.4 may be returned. |

</div>

PUT

The PUT method is used to update all fields of the Performance Service Configuration. It operates as a replace or overwrite of the whole information representing the Performance Service Configuration

This method shall support the URI query parameters specified in Table 3.7.4.4.3.3-1.

###### Table 3.7.4.4.3.3-2 URI query parameters supported by the PUT method on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Name** | **Data type** | **P** | **Cardinality** | **Description** | **Applicability** |
| n/a |  |  |  |  |  |

</div>

This method shall support the request data structures, the response data structures, and response codes specified in Table 3.7.4.4.3.3-2.

###### Table 3.7.4.4.3.3-2: Details of the PUT request/response on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Request body** | **Data type** | **Cardinality** | **Description** | |
| PerformanceServiceCo nfiguration | 1 | The parameter for the Performance Service Configuration, as defined in clause 3.7.6.2.4. | |
| **Response body** | **Data type** | **Cardinality** | **Response Codes** | **Description** |
| PerformanceServiceCo nfiguration | 1 | 200 OK | Shall be returned when the request has been accepted and completed.  The response body shall contain a representation of the PerformanceServiceConfiguration with the result of the update (see clause 3.7.6.2.4). |
| ProblemDetails | 0..1 | 412  Preconditio n failed | Shall be returned upon the following error: A precondition given in an HTTP request header is not fulfilled.  Typically, this is due to an ETag mismatch, indicating that the resource was modified by another entity prior to this request.  The response body should contain a ProblemDetails structure, in which the "detail" attribute should convey more information about the error. |
| ProblemDetails | See clause 3.1.  5 | 4xx/5xx | In addition to the response codes defined above, any common error response code as defined in ETSI GS NFV-SOL 013 [22], clause 6.4 may be returned. |

</div>

PATCH

The PATCH method is used to modify individual fields of the Performance Service Configuration, also referred to as a partial update

A PATCH request shall enable only those fields of the performance service configuration that are contained in the request to be modified. Attributes not contained in the request will remain unmodified.

NOTE: It is not specified in the present document version the handling of the modifications of the child attributes of the "extension" attribute in the representation of the performance service configuration.

This method shall support the URI query parameters specified in Table 3.7.4.4.3.4-1.

###### Table 3.7.4.4.3.4-3 URI query parameters supported by the PATCH method on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Name** | **Data type** | **P** | **Cardinality** | **Description** | **Applicability** |
| n/a |  |  |  |  |  |

</div>

This method shall support the request data structures, the response data structures, and response codes specified in Table 3.7.4.4.3.4-2.

###### Table 3.7.4.4.3.4-2: Details of the PATCH request/response on this resource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Request body** | **Data type** | **Cardinality** | **Description** | |
| PerformanceServiceCo nfiguration | 1 | The parameter for the Performance Service Configuration, as defined in clause 3.7.6.2.4. Only parameters requested to be updated shall be included in the message content  The Content-Type header shall be set to "application/merge- patch+json" according to IETF RFC 7396 [29]. | |
| **Response body** | **Data type** | **Cardinality** | **Response Codes** | **Description** |
| PerformanceServiceCo nfiguration | 1 | 200 OK | Shall be returned when the request has been accepted and completed.  The response body shall contain only the attributes that have been modified for the performance service  configuration (see clause 3.7.6.2.4). |
| ProblemDetails | 0..1 | 412  Preconditio n failed | Shall be returned upon the following error: A precondition given in an HTTP request header is not fulfilled.  Typically, this is due to an ETag mismatch, indicating that the resource was modified by another entity.  The response body should contain a ProblemDetails  structure, in which the "detail" attribute should convey more information about the error. |
| ProblemDetails | See clause 3.1.  5 | 4xx/5xx | In addition to the response codes defined above, any  common error response code as defined in ETSI GS NFV-SOL 013 [22], clause 6.4 may be returned. |

</div>

DELETE

This method is not supported. When this method is requested on this resource, the O-Cloud shall return a "405 Method Not Allowed" response as defined in ETSI GS NFV-SOL 013 [22], clause 6.4.

### Notifications

The O2ims\_InfrastructurePerformance Service API does not specify any notifications.

### Data Model

#### REST resource data types

Table 3.7.6.1-1 specifies the data types defined for the O2ims\_InfrastructurePerformance service API.

###### Table 3.7.6.1-1: O2ims\_InfrastructurePerformance resource data types

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Data type** | **Clause defined** | **Description** | **Applicability** |
| MeasurementJob | 3.2.6.2.2 | This data type represents an instance of a Performance Measurement Job created either by the O-Cloud for internal monitoring or created by the SMO for additional measurement  collection. |  |
| MeasurementJobRequest | 3.7.6.2.3 | This data type represents a request for creation of a Performance Measurement Job by the consumer  for measurement collection. |  |
| PerformanceServiceConfiguration | 3.7.6.2.4 | This data type represents the Performance Service Configuration  information. |  |

</div>

#### Structured data types

##### Introduction

This clause defines the structures to be used in resource representations.

##### Type: MeasurementJob

This data type represents an instance of a Performance Measurement Job created either by the O-Cloud for internal monitor or created by the SMO for additional measurement collection. It shall comply with the provisions defined in table 3.7.6.2.2-1.

###### Table 3.7.6.2.2-1: Definition of type MeasurementJob

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Attribute name** | **Data type** | **P** | **Cardinality** | **Description** |
| performanceMeasur ementJobId | Identifier | M | 1 | Identifier of this instance of Performance Meaurement  Job within the IMS. This value is assigned by the IMS when the job is created |
| consumerPerforman ceJobId | String | M | 1 | Identifier provided by the consumer for its purpose of managing performance jobs. This value could be the same across multiple instances of IMS performance job  instances. |
| state | MeasurementJo bState | M | 1 | The current state of the Performance Measurement Job. |
| collectionInterval | Integer | M | 1 | The interval at which performance measurements will be collected and stored. |
| resourceScopeCriteri a | KeyValuePairs | M | 0..1 | Key value pairs of resource attributes which are used to select resources from which measurements are to be collected.  This criterion determines, the value set for the Qualified Resource Types. |
| measurementSelecti onCriteria | KeyValuePairs | M | 1 | Key value pairs that identify the distinct set of measurements within the scope of a Performance  Measurement Job. |
| status | MeasurementJo bStatus | M | 1 | The current status within the state. See note 1. |
| preinstalledJob | Boolean | M | 1 | Boolean which is True if the PerformanceMeasurementJob was created by the O- Cloud and False for external consumer such as the SMO. |
| qualifiedResourceTy pes | String | M | 0..N | This list is computed from evaluation of the resourceScopeCriteria. The resulting qualifiedResourceTypes are the distinct set of ResourceTypes among those measuredResources.  This list of resource type UUIDs is used to qualify collectedMeasurements defined in the PM Dictionary of the qualified resource types. |
| measuredResources | MeasuredResou rce | M | 0..N | This is the historical list of resources measured by this job. Resources added and deleted are kept track of for the life of the job. |
| collectedMeasureme nts | CollectedMeasur ement | M | 0..N | The historical list of measurements that are or have been collected by this job based on its resourceScopeCriteria and measurementSelectionCriteria over the life of the job. |
| extensions | KeyValuePairs | M | 0..1 | These are unspecified properties (keys and values) which extend the information provided about the Performance Measurement Job. See note 2. |
| NOTE 1: The O-RAN WG6.O-CLOUD-IM [36], clauses 4.2.1.4.16.3 and 4.2.1.4.16.4 have more details for the valid status values per state.  NOTE 2: The extensions are not specified in the present document. None of the referenced documents do currently specify such extensions. | | | | |

</div>

##### Type: MeasurementJobRequest

This data type represents a request for the creation of a Performance Measurement Job for measurement collection. It shall comply with the provisions defined in table 3.7.6.2.3-1.

###### Table 3.7.6.2.3-1: Definition of type MeasurementJobRequest

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Attribute name** | **Data type** | **P** | **Cardinality** | **Description** |
| consumerPerforman ceJobId | String | M | 1 | Identifier provided by the consumer for purpose of managing the performance job. |
| collectionInterval | Integer | M | 1 | The interval at which performance measurements will be collected and stored. The unit shall be seconds. |
| resourceScopeCriteri a | KeyValuePairs | M | 0..1 | Key value pairs of resource attributes which are used to select resources from which measurements are to be collected.  This criterion determines the value set for the Qualified Resource Types. |
| measurementSelecti onCriteria | KeyValuePairs | M | 1 | Key value pairs that identify the distinct set of measurements within the scope of a Performance Measurement Job. |
| extensions | KeyValuePairs | M | 0..1 | These are unspecified properties (keys and values) which extend the information provided about the Performance Measurement Job. See note. |
| NOTE: The extensions are not specified in the present document. None of the referenced documents do currently specify such extensions. | | | | |

</div>

##### Type: PerformanceServiceConfiguration

This type represents information about the Performance Service Configuration which includes attributes to control the retention of measurements, and the meaningful metadata related to the performance service in the PerformanceMeasureStore, see O-RAN WG6.O-CLOUD-IM [36], clause 4.2.1.4.14. It shall comply with the provisions defined in table 3.7.6.2.4-1.

###### Table 3.7.6.2.4-1 Definition of type PerformanceServiceConfiguration

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Attribute name** | **Data type** | **P** | **Cardinality** | **Description** |
| retentionPeriod | Integer | M | 1 | Number of days for measurements to be retained.  See note 1. |
| extensions | KeyValuePairs | M | 0..1 | These are unspecified properties (keys and values)  which can be tailored to control the behaviour of the Performance Service. See note 2. |
| NOTE 1: This value has a minimum limit such that it can't be set to a value lower than the limit.  NOTE 2: The extensions are not specified in the present document. None of the referenced documents do currently specify such extensions | | | | |

</div>

#### Simple data types and enumerations

##### Introduction

This clause defines simple data types and enumerations that can be referenced from data structures defined in the previous clauses. The simple data types defined in a request body, response body, or a structured type are defined in ETSI GS NFV-SOL 013 [22] or this clause of the specification.

##### Simple data types

The simple data types defined in table 3.7.6.3.2-1 shall be supported.

###### Table 3.7.6.3.2-1 Simple data types

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Type Name** | **Type Definition** | **Description** |
| n/a |  |  |

</div>

##### Enumerations

MeasurementJobState

The MeasurementJobState contains the value for the current condition of the Performance Measurement Job which reflects operational actions that is part of a state machine for the Performance Measurement Job. See O-RAN WG6.O- CLOUD-IM [36], clause 4.3.1.4.16.3 for more details.

###### Table 3.7.6.3.3.1-1 Enumeration MeasurementJobState

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Enumeration value** | **Description** |
| ACTIVE | A Performance Measurement Job that has been created and is currently running is defined to be in the ACTIVE state. |
| SUSPENDED | Performance Measurement Job that has been created, and through a request to stop measurement collection is defined to be in the SUSPENDED *state*. See the Performance Measurement Job Suspend use case in the O-RAN WG6.ORCH-USE-CASES [23], clause 3.8.9 for more  details. |
| DEPRECATED | Job has been deleted but there are still counters it collected in the Performance Measurement Store. As a result of a Performance Measurement job deletion request, the Performance Measurement job is defined to be in the DEPRECATED state. A Performance Measurement job will remain deprecated until the last performance measurement referring to it is deleted from the Performance Measurement Store. See the Performance Measurement Job Delete use case in the O-RAN WG6.ORCH-USE-CASES [23], clause  3.8.7 for more details. |

</div>

MeasurementJobStatus

The MeasurementJobStatus is further information within a current MeasurementJobState of a Performance Measurement Job. The state and status together provide a more complete view of the operational condition of a Performance Measurement Job. See O-RAN WG6.O-CLOUD-IM [36], clause 4.2.1.4.16.3 for more details.

###### Table 3.7.6.3.3.2-1: Enumeration MeasurementJobStatus

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Enumeration value** | **Description** |
| RUNNING | Performance Measurement Job is ACTIVE and running without error. |
| FAILED | Performance Measurement Job is supposed to be collecting measures but has totally failed. |
| DEGRADED | Performance Measurement Job is having issues collecting some of the measures, but it is collecting some. |
| IDLE | Performance Measurement Job is SUSPENDED. |
| PENDING\_DELETE | Performance Measurement Job is DEPRECATED. |

</div>

### Error handling

#### General

For the O2ims\_InfrastructurePerformance Service API, HTTP error responses shall be supported as specified in clause 3.1.5.

In addition, the requirements in the following clauses are applicable for the O2ims\_InfrastructurePerformance Service API.

#### Protocol errors

No specific protocol errors for the O2ims\_InfrastructurePerformance Service API are specified.

#### Application errors

No specific application errors for the O2ims\_InfrastructurePerformance Service API are specified.

### Security

No specific security procedures for the O2ims\_InfrastructurePerformance Service API are specified beyond those in clause 3.1.7.

## O2ims\_InfrastructureLogging Service API

Not specified in the present document version.

# O-Cloud Alarms

## General

Clause 4 specifies the list of common alarms for O-Cloud, so that SMO can interpret the alarms from O-Cloud and perform root cause analysis in a multi-vendor environment.

The template of alarms has been defined in clause 5.2.3.11.2 in O-RAN.WG10.Information Model and Data Models.0 [37]. This template consists of the attribute names for AlarmDictionary (such as alarmDefinitions and probableCauses). The specifications of O-Cloud alarms consist of possible values for such attributes, alarmDefinitionId and probableCauseCode.

ETSI NFV has defined alarms related to virtualized, containerized and cluster resources in clause 7 of ETSI GS NFV- IFA 045 [38]. Alarm definitions in ETSI GS NFV-IFA 045 specify the identifiers/names of the alarms, probable causes, associated managed objects and fault details, where applicable.

Since the functional capabilities in NFV and O-Cloud environments are related, O-Cloud alarms can be based, but not limited to, on alarms specified in ETSI GS NFV-IFA 045 [38]. Therefore, here feasible, terminology of alarm definitions can be generalized to align and make reusable the alarm definitions between O-RAN and ETSI NFV frameworks. Table 4.1-1 provides a mapping between the O-RAN and ETSI NFV concepts and identified objects that are managed by respective frameworks.

NOTE 1: Table 4.1-1 identifies in the present document version mapping of managed objects related to O-Cloud Node Clusters. The list can be extended in future versions of the present document.

###### Table 4.1-1: Concepts mapping between O-RAN and ETSI NFV

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **O-RAN concept** | **ETSI NFV concept** | **Description** | **Reference** |
| O-Cloud Node Cluster | CIS cluster | In ETSI NFV, CIS refers to Container Infrastructure Services, which when termed together with cluster it implies that is a cluster that provides capabilities for deployment of containerized workloads.  In O-RAN, the O-Cloud Node Cluster concept is described in clause 3.4.3.5.8 of O- RAN.WG6.O2-GA&P [24]. | Clause 7.6 of ETSI GS NFV-IFA 045 [38] specifies alarms associated to CIS cluster. |
| O-Cloud Node | CIS cluster node | A CIS cluster node is a compute resource that runs container infrastructure data plane services, or control plane services, or both.  In O-RAN, the O-Cloud Node concept is described in clause  3.4.3.5.5 of O-RAN.WG6.O2-  GA&P [24]. | Clause 7.6 of ETSI GS NFV-IFA 045 [38] specifies alarms associated to CIS cluster node. |
| O-Cloud Node Cluster Site Network | CIS cluster network | A CIS cluster network is a network connecting part of or the whole set of CIS cluster nodes conforming the  CIS cluster.  In O-RAN, the O-Cloud Node Cluster Site Network concept is described in clause 3.4.3.5.6 of  O-RAN.WG6.O2-GA&P [24]. | Clause 7.6 of ETSI GS NFV-IFA 045 [38] specifies alarms associated to CIS cluster network. |

</div>

## Alarm Definition Identifiers

This clause describes the list of possible values for alarmDefinitionId.

Table 4.2-1 lists the specified alarm definitions, based on ETSI GS NFV-IFA 045 [38] alarms definition scopes, with the alarm definition identifier and a description of the meaning (semantics) of the alarm in the O-Cloud context.

###### Table 4.2-1 List of alarmDefinitionIds with associated managed objects related to O-Cloud Node

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Managed object type** | **Alarm definition Identifier** | **Description** |
| O-Cloud Node Cluster | CLUSTER\_WARNING | One or multiple of the underlying resources of the O-Cloud Node Cluster have potential impeding service impacts, but the O-Cloud  Node Cluster is still operational. |
| CLUSTER\_MINOR | One or multiple of the underlying resources of the O-Cloud Node Cluster are experimenting non-service affecting fault conditions and the  O-Cloud Node Cluster has nonservice affecting fault conditions. |
| CLUSTER\_MAJOR | One or multiple of the underlying resources of the O-Cloud Node Cluster have service affecting conditions, but the O-Cloud Node  Cluster is still operational. |
| CLUSTER\_CRITICAL | One or multiple of the underlying resources of the O-Cloud Node Cluster has service  affecting conditions and the O-Cloud Node Cluster is not fully operational. |
| O-Cloud Node | CLUSTERNODE\_WARNING | One or multiple of the underlying resources or software of the O-Cloud Node have potential impeding service impacts, but the O-Cloud Node is still operational. |
| CLUSTERNODE\_MINOR | One or multiple of the underlying resources or software of the O-Cloud Node are experimenting non-service affecting fault conditions and the O-Cloud Node has non-  service affecting fault conditions. |
| CLUSTERNODE\_MAJOR | One or multiple of the underlying resources or software of the O-Cloud Node have service  affecting conditions, but the O-Cloud Node is still operational. |
| CLUSTERNODE\_CRITICAL | One or multiple of the underlying resources or software of the O-Cloud Node has service affecting conditions and the O-Cloud Node is not fully operational. |
| O-Cloud Node Cluster Site Network | CLUSTERNETWORK\_WARNING | One or multiple of the underlying resources or software of the O-Cloud Node Cluster Site Network resource have potential impeding service impacts, but the O-Cloud Node Cluster Site Network resource is still  operational. |
| CLUSTERNETWORK\_MINOR | One or multiple of the underlying resources or software of the O-Cloud Node Cluster Site Network resource are experimenting non- service affecting fault conditions and the O-  Cloud Node Cluster Site Network resource has non-service affecting fault conditions. |
| CLUSTERNETWORK\_MAJOR | One or multiple of the underlying resources or software of the O-Cloud Node Cluster Site Network resource have service affecting conditions, but the O-Cloud Node Cluster Site  Network resource is still operational. |
| CLUSTERNETWORK\_CRITICAL | One or multiple of the underlying resources or software of the O-Cloud Node Cluster Site Network resource has service affecting  conditions and the O-Cloud Node Cluster Site Network resource is not fully operational. |

</div>

## Probable Cause Codes

This clause describes the list of possible values for probableCauseCode.

NOTE: The probable cause codes are not specified in the present document version.

# Annex (informative): Change History

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Date** | **Revision** | **Description** |
| 2023.10.13 | 04.00.01 | Implemented CRs ATT-021, NOK-0066, NOK-0077 |
| 2023.11.10 | 04.00.02 | Implemented CRs ATT-0022, DCM-0001, NOK-0078, and editorial updates |
| 2023.11.17 | 04.00.03 | Editorial updates based on review comments |
| 2023.11.28 | 05.00 | Final version 05.00 with editorial updates |
| 2024.03.19 | 05.00.01 | Implemented CRs NOK-0095, NOK-0092, DTAG-0001, DTAG-0002, ATT-0023 |
| 2024.03.20 | 05.00.02 | Editorial updates based on review comments |
| 2024.03.22 | 05.00.03 | Editorial updates based on review comments |
| 2024.03.22 | 05.00.04 | Editorial updates based on review comments |
| 2024.04.01 | 06.00 | Final version 06.00 |
| 2024.07.15 | 06.00.01 | Implemented CRs ATT-024, ATT-0025, ATT-026, DELL-0007, NOK-0087, NOK-0114, NOK-0102 |
| 2024.07.19 | 06.00.02 | Editorial updates bed on review comments |
| 2024.07.29 | 07.00 | Final version 07.00 |
| 2024.11.14 | 07.00.01 | Implemented CRs ATT-0027, DCM-002, DTAG-0005, DTAG-007, DTAG-004, NOK-0128,  NOK-0132, NOK-0129, and editorial changes |
| 2024.11.26 | 07.00.02 | Editorial updates based on review comments |
| 2024.12.02 | 07.00.03 | Updates made based on review comments |
| 2024.12.03 | 07.00.04 | Updates made based on review comments |
| 2024.12.03 | 07.00.05 | Updates made based on review comments |
| 2024.12.09 | 08.00 | Final version 08.00 |

</div>
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG6.TS.O2IMS-INTERFACE-R004-v08.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG6.TS.O2IMS-INTERFACE-R004-v08.00.docx).
