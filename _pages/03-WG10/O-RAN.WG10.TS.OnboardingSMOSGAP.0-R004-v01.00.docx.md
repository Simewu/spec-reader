---
title: O-RAN.WG10.TS.OnboardingSMOSGAP.0-R004-v01.00.docx.md
author: O-RAN Alliance
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG10.TS.OnboardingSMOSGAP.0-R004-v01.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG10.TS.OnboardingSMOSGAP.0-R004-v01.00.docx).

---

* toc
{:toc}

---

<div class="table-wrapper" markdown="block">

|  |
| --- |
| ![webwxgetmsgimg (7).jpeg]({{site.baseurl}}/assets/images/bea03973c631.jpg)O-RAN.WG10.TS.OnbdSMOSGAP-R004-v01.00 |

</div>

<div class="table-wrapper" markdown="block">

|  |
| --- |
| Technical Specification |
|  |

</div>

<div class="table-wrapper" markdown="block">

|  |
| --- |
| O-RAN Work Group 10 (OAM for O-RAN)  Onboarding SMOS General Aspects and Principles |

</div>

<div class="table-wrapper" markdown="block">

|  |
| --- |
|  |
| Copyright (C) 2025 by the O-RAN ALLIANCE e.V.  The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.  O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany  Register of Associations, Bonn VR 11238, VAT ID DE321720189 |

</div>

Contents

List of figures 4

List of tables 4

Foreword 5

Modal verbs terminology 5

1 Scope 6

2 References 6

2.1 Normative references 6

2.2 Informative references 6

3 Definition of terms, symbols and abbreviations 7

3.1 Terms 7

3.2 Symbols 7

3.3 Abbreviations 7

4. Application Lifecycle Management (LCM) 7

4.1 Onboarding in the Software Lifecycle 7

4.2 Onboarding Activity 8

5 General Aspects of the Onboarding SMOS 8

5.1 ETSI Alignment 8

5.1.1 ETSI GS NFV SOL004 [2] Alignment 8

5.2 Onboarding as a distributed SMOS 8

5.2.1 Design Patterns for Onboarding 8

5.2.2 Replicated Load-Balanced Services 9

5.2.3 Saga 9

5.3 Messaging 9

5.3.1 Procedure Requests 9

5.3.2 Procedure Responses 9

5.3.3 Published Notifications 9

5.4 Reference vs Copy 10

5.5 General Aspect: Idempotence 10

5.6 Role Based Access 10

6 Principles of the Onboarding SMOS 11

6.1 Contained Functionality of the Onboarding SMOS 11

6.1.1 Package Security 11

6.1.2 Package Delivery Format 11

7 Onboarding Use Cases 11

7.1 Use Case Overview 11

7.2 Onboard 12

7.3 Deprecate 12

7.4 Forced Delete 12

7.5 Application List Query 12

7.6 Application Manifest Query 13

7.7 Application Artifact Query 13

7.8 Application Delete Cancelation 13

8 Onboarding Service Requirements 13

9 Onboarding Service Information Model 13

Annex A (informative): 14

Annex (informative): Change history/Change request (history) 15

# List of figures

Figure 4.2-1: Activities of the Application Onboarding Process 7

# List of tables

**No table of figures entries found.**

# Foreword

This Technical Specification (TS) has been produced by WG10 of the O-RAN Alliance.

The content of the present document is subject to continuing work within O-RAN and may change following formal O-RAN approval. Should the O-RAN Alliance modify the contents of the present document, it will be re-released by O-RAN with an identifying change of version date and an increase in version number as follows:

version xx.yy.zz

where:

xx: the first digit-group is incremented for all changes of substance, i.e. technical enhancements, corrections, updates, etc. (the initial approved document will have xx=01). Always 2 digits with leading zero if needed.

yy: the second digit-group is incremented when editorial only changes have been incorporated in the document. Always 2 digits with leading zero if needed.

zz: the third digit-group included only in working versions of the document indicating incremental changes during the editing process. External versions never include the third digit-group. Always 2 digits with leading zero if needed.

# Modal verbs terminology

In the present document "**shall**", "**shall not**", "**should**", "**should not**", "**may**", "**need not**", "**will**", "**will not**", "**can**" and "**cannot**" are to be interpreted as described in clause 3.2 of the O-RAN Drafting Rules (Verbal forms for the expression of provisions).

"**must**" and "**must not**" are **NOT** allowed in O-RAN deliverables except when used in direct citation.

# 1 Scope

The present document specifies the general aspects and principles of the Onboarding SMOS as described in the SMO Decomposition TR [i.3], clause 5.11. The specification identifies where the service fits into the Application Lifecycle as described in the OAM Architecture [i.5], clause 6. Beyond the general aspects and principles, this document provides the use cases from the user perspective and specifies the service procedures, requirements, and information model for the service.

# 2 References

## 2.1 Normative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies. In the case of a reference to a 3GPP document (including a GSM document), a non-specific reference implicitly refers to the latest version of that document in 3GPP Release 18.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following referenced documents are necessary for the application of the present document.

[1] O-RAN.WG11-O-RAN-Security-Requirements-Specification: "O-RAN Security Requirements"

[2] ETSI GS NFV-SOL 004 v5.1.1, " Network Functions Virtualisation (NFV) Release 5; Protocols and Data Models; VNF Package and PNFD Archive specification", July 2024

## 2.2 Informative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies. In the case of a reference to a 3GPP document (including a GSM document), a non-specific reference implicitly refers to the latest version of that document in 3GPP Release 18.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following referenced documents are not necessary for the application of the present document, but they assist the user with regard to a particular subject area.

[i.1] 3GPP TR 21.905: "Vocabulary for 3GPP Specifications".

[i.2] O-RAN WG1-O-RAN Architecture Description: "O-RAN Architecture Description"

[i.3] O-RAN WG1-Decoupled-SMO-Architecture: "Decoupled SMO Architecture"

[i.4] O-RAN.WG6.ORC, "Cloudification and Orchestration Use Cases for O-RAN Virtualized RAN"

[i.5] O-RAN.WG10.OAM-Architecture: "OAM Architecture"

# 3 Definition of terms, symbols and abbreviations

## 3.1 Terms

For the purposes of the present document, the terms given in 3GPP TR 21.905 [i.1] apply.

NOTE: A term defined in the present document takes precedence over the definition of the same term, if any, in 3GPP TR 21.905 [i.1].

**SMO**:A Service Management and Orchestration framework as described in the O-RAN WG1.OAD [i.2].

**Application:** The software aspect of a vendor product for a Network Element [i.3], an xApp or rApp which is sold/delivered to an operator.

**Application Artifact**: A file contained within an archive such as the Application Package.

**Application Package:** The set of information provided by a Solution Provider to a Service Provider representing all or a component of an Application.

**Onboarding:** The process of validating and ingesting an Application Package to make it available to other services within the SMO.

**Service Provider:** The RAN service provider often referred to as the operator.

**Solution Provider:** Application development entity often referred to as a vendor.

**xApp**: An application designed to run on the near-RT RIC as described in the O-RAN Architecture Description [i.2].

## 3.2 Symbols

For the purposes of the present document, the symbols given in 3GPP TR 21.905 [i.1] apply.

NOTE: A symbol defined in the present document takes precedence over the definition of the same symbol, if any, in 3GPP TR 21.905 [i.1].

## 3.3 Abbreviations

For the purposes of the present document, the abbreviations given in 3GPP TR 21.905 [i.1] and the following apply.

NOTE: An abbreviation defined in the present document takes precedence over the definition of the same abbreviation, if any, in 3GPP TR 21.905 [i.1].

FCAPS Fault, Configuration, Accounting, Performance, and Security

OAM Operations, Administration, and Maintenance

RLBS Replicated Load-Balanced Services

# 4. Application Lifecycle Management (LCM)

## 4.1 Onboarding in the Software Lifecycle

The Application Software Lifecycle is described in the OAM Architecture [i.5], clause 6. The onboarding phase identifies the "Onboarding" activity. This specification will detail the process that an Application Package from a Solution Provider is delivered to the Service Provider through the "Marketplace" external Meet Me Point.

Applications should be onboarded in a common manner, regardless of how they are deployed. The Application Package contents are dependent on the type of application being onboarded. The required artifacts and their format are defined in a separate specification, currently under development. The conventions used to convey the details of Onboarding activity are described in the OAM Architecture [i.5], figure 6.1-4.

## 4.2 Onboarding Activity

The fine-grained activities of the Onboarding are shown below in figure 4.2-1. Activities of the Onboarding Service which impact the content of the Application Package are highlighted in bold. All the functions of this activity are specific to the Onboarding Service.

![A green dotted line with a circle  Description automatically generated]({{site.baseurl}}/assets/images/aa07b6f3a2a9.png)

Figure 4.2-1: Activities of the Application Onboarding Process

An Application Package is onboarded from the exchange, and its content verified. If valid, its contents (the App) are unpacked and stored/referenced in a catalogue. If invalid, the Service Provider may provide AppPackage-level feedback to the Solution Provider via the Marketplace. The capabilities described in this clause are the focus of the Onboarding SMOS.

# 5 General Aspects of the Onboarding SMOS

## 5.1 ETSI Alignment

### 5.1.1 ETSI GS NFV SOL004 [2] Alignment

Per the O-RAN Security Requirements [1] the package will follow the security requirements of ETSI GS NFV SOL004 [2]. However, SOL004 goes beyond just the security requirements and identifies a strict package artifact set. This set is not comprehensive enough to accommodate some Application Package capabilities required by O-RAN. Therefore, for ETSI based packages, ETSI GS NFV SOL004 [2] will be followed as specified. However, it is expected that there will be some augmentation of ETSI GS NFV SOL004 [2] or alternative approaches will be specified to cover O-RAN specific scenarios.

## 5.2 Onboarding as a distributed SMOS

### 5.2.1 Design Patterns for Onboarding

The SMO may deploy one or more Onboarding SMOS instances based on the scale of Onboarding requests. The service assumes all instances are capable of onboarding a package. The FileSystem-As-A-Service can reduce physical data replication across service instance locations. However, it is expected that the Database-As-A-Service provides one consistent view of all Applications onboarded. Race conditions between services can exist if the same onboarding request is received independently to two different Onboarding SMOS instances. In this case resolution of the race condition is defined by the service implementation.

There are common design patterns for implementing a distributed service. A design pattern is a tried and tested implementation example which allows developers to follow a behavioral model that other developers have successfully implemented. Conditions such as whether the service consumer is centralized or decentralized are considered to determine which patter to use.

To provide greater flexibility and interoperability multiple patterns may be integrated. For the Onboarding SMOS where a user wants to onboard an Application Package, it is used from a centralized perspective, two common patterns exist one synchronous and one asynchronous that are adaptable to the Onboarding SMOS, the Replicated Load-Balanced Services (RLBS) and Saga patterns respectively.

### 5.2.2 Replicated Load-Balanced Services

RLBS is one of the simplest and most commonly used design patterns. All the service instances use a common/central load balancer. The first service instance would establish the load balancer and point to the virtual endpoint provided by the load balancer in the service registry. Each additional service instance would add itself to the back end of the load balancer. Simple service healthchecks can take service instances in and out of service providing robustness of the service when individual instances fail.

### 5.2.3 Saga

Saga provides an asynchronous pattern where instead of directy calling the API, a message is sent over an Event Bus. This eliminates the central controller and its single point of failure. It also self regulates any irregularities that may be induced due to the load balancing algorithm. However, it may become hard to debug when errors occur due the non-deterministic assignment of work to an instance.

## 5.3 Messaging

### 5.3.1 Procedure Requests

In this messaging model the subscriber(s) is one the Onboarding SMOS. There could be potentially many publishers, Onboarding Service Consumers. The Onboarding SMOS will create the data product within the DME for the data structure to create an oboarding service request. Since some procedures are privileged and if supported through a notification then a form of authentication will have to be employed to ensure the requestor has the authorization to execute the procedure,

### 5.3.2 Procedure Responses

In this messaging model the publisher(s) is the Onboarding SMOS. There could be potentially many subscribers, Onboarding Service Consumers. The Onboarding SMOS will create the data product within the DME for the responses to onboarding service requests.

### 5.3.3 Published Notifications

In this messaging model there is one publisher, the Onboarding SMOS. There could be potentially many subcribers, Onboarding Service Consumers. The Onboarding SMOS will create the data product within the DME for the event(s) which will notify service consumers of state changes to Application Packages,

## 5.4 Reference vs Copy

The Onboarding Service provides reference to objects which may require modification prior to deployment and some which should never be modified. Some artifacts may be small and others extremely large. The strategy for data reference vs data replication should be documented.

Large extremely static objects should only be replicated as needed for resiliency. Software binaries whether as a software update package or as an executable image in a cloud environment shouldn't be replicated for any other reason. Preferably the O-Cloud would have access to such a repository and therefore only the image reference would be registered with the O-Cloud for which it will receive a deployment request.

Other data may or may not require modification prior to being able to deploy the application. When data has to be modified it is done in the local copy maintained by the Onboarding Consumer. When no modification is required and the Onboarding Consumer needs to provide the artifact to another entity it is preferable that it provides a reference to the original artifact rather than a copy to it. This limits the number of copies that must be managed when an application version is no longer required and SMO storage space needs to be reclaimed.

## 5.5 General Aspect: Idempotence

The overall concept of idempotence is that repeated requests for the same thing will result in the same outcome. This has some limitations when applied to the public procedures of the Onboarding service which are discussed here.

The Onboarding procedure can be called multiple times to recover from procedural failures. But once the notification that the package has been made available to other SMOS, who may now reference the package data, reloading the package is not possible. To reload after this point, delete, due to scheduled delete or forced delete, is required before the package can be re-onboarded.

Deprecate can be called repeatedly. If the Application Package is already in a DEPRECATED state no change to the record or its scheduled deletion time will occur, but success will still be returned to the consumer.

Forced Delete causes the entry to no longer exist. Therefore, if the object does not exist it assumes it was previously deleted and instead of indicating a not found error, it will return an indication of success.

Repeated calls to Cancel Delete will not change the state which would have been moved to AVAILABLE or modify the already cleared scheduled deletion time attribute. However, success will still be returned.

Query is by default idempotent since is provides only read access to the data and no change occurs.

## 5.6 Role Based Access

The Onboarding service supports two roles, an operator user and an administrator user. To ensure that only entitled users are allowed to execute the procedures exposed by the Onboarding SMOS, the required role for each procedure is to be specified.

# 6 Principles of the Onboarding SMOS

## 6.1 Contained Functionality of the Onboarding SMOS

### 6.1.1 Package Security

#### 6.1.1.1 Application Package Supply Chain Security

The Onboarding SMOS provides the functionality to meet all the security requirements assigned by O-RAN Security Requirements [1], clause 5.3.2.1.1 to the Application Package. The Onboarding SMOS verifies that the package and/or contained artifacts were properly signed and the Solution Providers certificate is valid.

#### 6.1.1.2 Application Package Content Security

The Onboarding SMOS provides the functionality to meet all the security requirements assigned by the O-RAN Security Requirements [1], clause 5.3.2.1.2 The Onboarding SMOS verifies that the package contents have not been modified since the package was created.

### 6.1.2 Package Delivery Format

#### 6.1.2.1 Application Package Archive Compression

The Application Package is expected to be transported in a compressed format. The Onboarding SMOS provides the functionality to know how the received archive is uncompressed so that downstream consumers of the package artifacts are able to directly access an uncompressed version of the artifact.

#### 6.1.2.2 Application Package Archive Structure

The Application Package will have a defined structure that allows the Onboarding SMOS to locate the different artifacts. When the Onboarding SMOS extracts the artifacts and stores them in catalogues the package structure is not maintained. Once unpacked, individual artifacts are identifiable without the support of the package structure. Thus, consumers of individual artifacts are in general unaware of the original package structure and are not affected by changes in it.

# 7 Onboarding Use Cases

## 7.1 Use Case Overview

The use cases below are high level descriptions from the perspective of the Onboarding Service Consumer. The use case identifies several aspects of the service behaviour the following variable are used to express the use case.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Variable Text** | **Description** |
| **Consumer** | Who is requesting an operation to be performed by the Onboarding Service |
| **Feature Name** | What feature or capability is being requested |
| **Feature Behavior** | What extending behaviors does the feature need to provide, can be left blank |
| **Expected Outcome** | What is the expected outcome of the feature |
| **Enabled Need** | Why does the consumer need the feature |

</div>

The variables can be inserted into an epic like story:

As the **{Consumer}** I need the Onboarding Service to provide the capability to **{Feature Name}** [with the ability to **{Feature Behavior}**] to **{Expected Outcome}** so that I can **{Enabled Need}**.

## 7.2 Onboard

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Variable** | **Value** |
| **Consumer** | Service Designer |
| **Feature Name** | Onboard an Application |
| **Feature Behavior** | Recover from previous failures |
| **Expected Outcome** | Provide package artifacts in a catalogue |
| **Enabled Need** | Certify and/or train the Application as part of a service. |

</div>

## 7.3 Deprecate

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Variable** | **Value** |
| **Consumer** | Service Designer |
| **Feature Name** | Deprecate an Application |
| **Feature Behavior** | Identify its scheduled deletion date |
| **Expected Outcome** | Change the Application Package state is DEPRECATED and establish a scheduled deletion date |
| **Enabled Need** | Retire older application versions once they are no longer needed by operations |

</div>

## 7.4 Forced Delete

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Variable** | **Value** |
| **Consumer** | Systems Administrator |
| **Feature Name** | Force the deletion of an Application |
| **Feature Behavior** | Without regard to referential integrity |
| **Expected Outcome** | Application and its artifacts are forcibly deleted from the catalogue |
| **Enabled Need** | Cleanup Applications in the catalogue |

</div>

## 7.5 Application List Query

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Variable** | **Value** |
| **Consumer** | Service Designer |
| **Feature Name** | Query for a list of available Applications |
| **Feature Behavior** | To filter by Application type, name, vendor, and/or version |
| **Expected Outcome** | A list of qualifying Applications can be identified |
| **Enabled Need** | The selection of an Application to retrieve |

</div>

## 7.6 Application Manifest Query

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Variable** | **Value** |
| **Consumer** | Service Designer |
| **Feature Name** | Query Application Manifest |
| **Feature Behavior** | To filter to exclude or include a list of artifacts |
| **Expected Outcome** | Application descriptive data and/or a list of qualifying artifacts each identified as a link to a readable file |
| **Enabled Need** | To get package data not included in an artifact |

</div>

## 7.7 Application Artifact Query

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Variable** | **Value** |
| **Consumer** | Service Designer |
| **Feature Name** | Query Application Artifacts |
| **Feature Behavior** | To filter a list of artifacts by by type or use |
| **Expected Outcome** | Application list of qualifying artifacts identified as a link to a readable file |
| **Enabled Need** | Open an artifact as a file for processing |

</div>

## 7.8 Application Delete Cancelation

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Variable** | **Value** |
| **Consumer** | Systems Administrator |
| **Feature Name** | Cancel Application Delete |
| **Feature Behavior** |  |
| **Expected Outcome** | Change the Application Package state to AVAILABLE and remove a scheduled deletion date |
| **Enabled Need** | Cancel a scheduled delete to extend the availability of the Application Package |

</div>

# 8 Onboarding Service Requirements

Not specified in this version of the specification.

# 9 Onboarding Service Information Model

Not specified in this version of the specification.

# Annex A (informative):

# Annex (informative): Change history/Change request (history)

<Change history/Change request (history) is mandatory>
<Please delete the sample entries below and replace with entries for this document>

<Note that if this document will be submitted to ETSI for publication, ETSI may insert an additional "History" table on the following page. This should not be created by the authors of the current document.>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Date | Revision | Description |
| 2024.06.24 | 00.00.01 | Create initial O-RAN version, from TS Template |
| 2024.11.12 | 00.00.02 | ATT-2024.07.08-WG10-CR-0001-OAM APP LCM Content-v05  ATT-2024.09.16-WG10-CR-0003-Scope Correction-v04 |
| 2024.11.12 | 00.00.03 | ATT-2024.09.16-WG10-CR-0004-Onboarding Use Cases-v02 |
| 2024.11.12 | 00.00.04 | General Aspects:  ATT-2024.09.16-WG10-CR-0005-GA ETSI Alignment-v04  ATT-2024.09.16-WG10-CR-0007-GA Distributed SMOS-v03  ATT-2024.09.16-WG10-CR-0008-GA Notifications-v02  ATT-2024.09.16-WG10-CR-0010-GA Reference vs Copy-v02  ATT-2024.09.18-WG10-CR-0011-GA Procedure Idempotence-v02  ATT-2024.09.18-WG10-CR-0012-GA Role Based Procedures-v02 |
| 2024.11.12 | 00.00.05 | Principles:  ATT-2024.09.18-WG10-CR-0013-Principle of Encapsulations-v04  Editorial Changes for publication |
| 2024.12.02 | 01.00 | Initial Published version |

</div>
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG10.TS.OnboardingSMOSGAP.0-R004-v01.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG10.TS.OnboardingSMOSGAP.0-R004-v01.00.docx).

---

* toc
{:toc}
