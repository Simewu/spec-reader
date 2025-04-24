---
title: O-RAN.WG2.TS.A1GAP-R004-v05.00.docx.md
author: O-RAN Alliance
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG2.TS.A1GAP-R004-v05.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG2.TS.A1GAP-R004-v05.00.docx).

---

* toc
{:toc}

---

<div class="table-wrapper" markdown="block">

|  |
| --- |
| ![webwxgetmsgimg (7).jpeg]({{site.baseurl}}/assets/images/bea03973c631.jpg) |

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
| A1 interface: General Aspects and Principles |

</div>

<div class="table-wrapper" markdown="block">

|  |
| --- |
|  |
| Copyright (C) 2025 by the O-RAN ALLIANCE e.V.  The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.  O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany  Register of Associations, Bonn VR 11238, VAT ID DE321720189 |

</div>

Contents

Foreword 3

Modal verbs terminology 3

1 Scope 4

2 References 4

2.1 Normative references 4

2.2 Informative references 4

3 Definition of terms, symbols and abbreviations 5

3.1 Terms 5

3.2 Symbols 6

3.3 Abbreviations 6

4 General Aspects 6

4.1 A1 architecture 6

4.1.1 General 6

4.1.2 Role of A1 in the O-RAN architecture 7

4.1.3 A1 service architecture 7

4.2 A1 interface general principles 9

4.3 A1 interface specification objectives 10

4.4 A1 interface capabilities 10

5 Functions of the A1 interface 11

5.1 Policy management 11

5.1.1 Introduction 11

5.1.2 The policy management function 11

5.1.3 Lifecycle aspects of A1 policies 12

5.1.4 Identification and scope of A1 policies 13

5.1.5 A1 policy content 14

5.2 A1 enrichment information 15

5.2.1 Introduction 15

5.2.2 The enrichment information function 15

5.2.3 Lifecycle aspects of A1 enrichment information 15

5.2.4 Identification of A1 enrichment information 17

5.2.5 A1 enrichment information format and delivery 17

5.3 ML model management 17

5.3.1 Introduction 17

6 Signalling procedures of the A1 interface 17

6.1 General 17

6.2 Policy related procedures 17

6.3 Enrichment information transfer procedures 18

6.4 ML model related procedures 18

7 A1 interface protocol structure 19

8 Other A1 interface specifications 19

8.1 A1 TS-family overview 19

8.2 A1 interface: Use Cases and Requirements 20

8.3 A1 interface: Transport Protocol 20

8.4 A1 interface: Application Protocol 20

8.5 A1 interface: Type Definitions 20

8.6 A1 interface: Test Specification 20

Annex (informative): Change History 21

# Foreword

This Technical Specification (TS) has been produced by O-RAN Alliance Working Group 2. It is part of a TS-family covering the A1 interface as identified below:

* "A1 interface: General Aspects and Principles";
* "A1 interface: Use Cases and Requirements";
* "A1 interface: Transport Protocol";
* "A1 interface: Application Protocol";
* "A1 interface: Type Definitions"; and
* "A1 interface: Test Specification".

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

The present document specifies the general aspects and principles of the A1 interface.

# 2 References

## 2.1 Normative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies. In the case of a reference to a 3GPP document (including a GSM document), a non-specific reference implicitly refers to the latest version of that document in 3GPP Release 18.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following referenced documents are necessary for the application of the present document.

[1] Void.

[2] O-RAN TS: "Non-RT RIC & A1/R1 Interface: Use Cases and Requirements".

[3] Void.

[4] O-RAN TS: "O-RAN Architecture Description".

[5] O-RAN TS: "A1 interface: Type Definitions" ("A1TD").

[6] O-RAN TS: "A1 interface: Use Cases and Requirements" ("A1UCR").

[7] O-RAN TS: "A1 interface: Application Protocol" ("A1AP").

[8] O-RAN TS: "A1 interface: Transport Protocol" ("A1TP").

[9] O-RAN TS: "A1 interface: Test Specification" ("A1TS").

## 2.2 Informative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies. In the case of a reference to a 3GPP document (including a GSM document), a non-specific reference implicitly refers to the latest version of that document in 3GPP Release 18.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following referenced documents are not necessary for the application of the present document, but they assist the user with regard to a particular subject area.

[i.1] O-RAN TR: "AI/ML workflow description and requirements".

[i.2] 3GPP TR 21.905: "3rd Generation Partnership Project; Technical Specification Group Services and System Aspects; Vocabulary for 3GPP Specifications".

[i.3] O-RAN TS: "Non-RT RIC: Architecture".

# 3 Definition of terms, symbols and abbreviations

## 3.1 Terms

For the purposes of the present document, the terms given in 3GPP TR 21.905 [i.2], clause 3, the O-RAN specifications Non-RT RIC & A1/R1 Interface: Use Cases and Requirements [2], clause 3.1, Non-RT RIC: Architecture [i.3], clause 3.1, O-RAN Architecture Description [4], clause 3.1, and the following apply:

**A1 enrichment information:** enrichment information that is collected or derived at SMO/Non-RT RIC either from non-network data sources or from network functions themselves and provided over the A1 interface to be utilized by Near-RT RIC.

NOTE 1: A1 enrichment information is either not directly available to Near-RT RIC from O-RAN network functions via standardized interfaces or cannot be derived in Near-RT RIC from network function data due to processing or storage constraints.

NOTE 2: Inferred/modelled information elements that can be provided over O1-CM is not considered as A1 enrichment information.

**A1 interface**: interface between Non-RT RIC and Near-RT RIC

**A1 policy:** declarative policy expressed using formal statements that enable the Non-RT RIC function in the SMO to guide the Near-RT RIC function, and hence the RAN, towards better fulfilment of the RAN intent.

**A1 policy type**: formal schema-based definition of how an A1 policy, and its status, is expressed and validated.

**available A1 policy type:** A1 policy type for which the policy type identifier can be discovered, and policy type information and policy type status can be queried, over the A1 interface

**available EI type:** EI type for which the EI type identifier can be discovered, and EI type information and EI type status can be queried, over the A1 interface

**declarative policy**: type of policy that uses statements to express the goals of the policy, but not how to accomplish those goals

**EI job:** request for delivery of A1 enrichment information expressed using formal statements.

**EI type**: formal schema-based definition of how request and result deliveries for A1 enrichment information, and the status and constraints related to an EI job, is expressed and validated.

**enrichment information**: information provided to an entity, in addition to the information that is generally available to it, in order to enhance the performance of its tasks.

NOTE: The availability or usage of enrichment information is not critical for the entity to be able to perform its tasks.

**External enrichment information:** information provided by an O-RAN external information source through a direct and secure connection with Near-RT RIC.

NOTE: Detailed specification of a direct interface for external enrichment information is out of scope of the present document.

**policy**: set of rules that are used to manage and control the changing and/or maintaining of the state of one or more managed objects

**policy objectives:** statements with the objective to reach the goal of the policy

**policy resources:** statements expressing the use of resources

**RAN intent:** expression of high-level operational or business goals to be achieved by the radio access network, allowing an operator to specify the desired SLAs that RAN needs to fulfil for all or a class of users in a given area over a period of time.

NOTE: RAN intent is not in A1 scope.

## 3.2 Symbols

Void.

## 3.3 Abbreviations

For the purposes of the present document, the abbreviations given in 3GPP TR 21.905 [i.2], clause 4, the O-RAN specifications Non-RT RIC & A1/R1 Interface: Use Cases and Requirements [2], clause 3.3, Non-RT RIC: Architecture [i.3], clause 3.3, O-RAN Architecture Description [4], clause 3.3, and the following apply:

A1-EI A1 Enrichment Information service

A1-ML A1 ML model management service

A1-P A1 Policy management service

BSS Business Support System

EI Enrichment Information

IP Internet Protocol

JSON JavaScript Object Notation

HTTP Hypertext Transfer Protocol

KPI Key Performance Indicator

KQI Key Quality Indicator

QoS Quality of Service

QoE Quality of Experience

RIC RAN Intelligent Controller

SLA Service Level Agreement

SMO Service Management and Orchestration

TCP Transmission Control Protocol

TLS Transport Layer Security

UE User Equipment

# 4 General Aspects

## 4.1 A1 architecture

### 4.1.1 General

O-RAN Architecture Description [4] includes a Non-RT RIC and a Near-RT RIC which are connected through the A1 interface as shown in figure 4.1.1-1.

![]({{site.baseurl}}/assets/images/6961fe63bbe9.emf.png)

Figure 4.1.1-1: A1 is the interface between the Non-RT RIC and the Near-RT RIC

### 4.1.2 Role of A1 in the O-RAN architecture

The Non-RT RIC function resides in the SMO layer as described in O-RAN Architecture Description [4]. that also handles deployment, configuration, and data collection from RAN nodes.

In the SMO layer there also resides functions that handle AI/ML workflow, e.g. training and update of ML models, as well as functions for deployment of ML models and other applications as described in AI/ML workflow description and requirements [i.1].

The SMO Layer may also have access to data other than that available in the RAN network functions and this enrichment information can be used to enhance the RAN guidance and optimization functions.

One purpose of the SMO layer is to optimize the RAN performance towards fulfilment of the SLAs in the RAN intent. The purpose of the A1 interface is to enable the Non-RT RIC function to provide policy-based guidance, support for AI/ML workflows, and enrichment information to the Near-RT RIC function so that the RAN can optimize e.g. RRM under certain conditions.

![]({{site.baseurl}}/assets/images/00a236b7d484.emf.png)

Figure 4.1.2-1: Illustration of A1 and related interfaces in the O-RAN architecture

The E2 nodes in figure 4.1.2-1 refers to RAN nodes such as an O-CU-CP, an O-CU-UP, an O-DU or an O-eNB. A1 policies and A1 enrichment information derived from various (O-RAN internal and O-RAN external) sources, are provided by the Non-RT RIC to the Near-RT RIC via the A1 interface.

### 4.1.3 A1 service architecture

#### 4.1.3.1 A1 policy management service (A1-P)

The A1 policy management service (A1-P), and the policy related procedures listed in clause 6.2, are defined for communication between an A1-P service consumer referred to as A1-P Consumer and an A1-P service producer referred to as A1-P Producer. SMO/Non-RT RIC framework takes the role of A1-P Consumer and Near-RT RIC takes the role of A1-P Producer as illustrated in figure 4.1.3.1-1.

![]({{site.baseurl}}/assets/images/0f7fc2250d20.emf.png)

Figure 4.1.3.1-1: A1-P

Based on high level goals for the system expressed in RAN intent, and on observables (events and counters) provided over O1, the Non-RT RIC can define policies that are provided to the Near-RT RIC over the A1 interface. The purpose of the A1 policies is to guide the RAN performance towards the overall goal expressed in RAN intent. The A1 policies are declarative policies that contain statements on policy objectives and policy resources applicable to e.g. UEs and cells.

The Non-RT RIC can manage the A1 policies based on A1 policy status and feedback information provided by the Near-RT RIC, and on the network status provided over O1. The Non-RT RIC can use the O1 observables to continuously evaluate the impact of the A1 policies towards fulfilment of the RAN intent and based on internal conditions it can decide to issue/update the goals expressed in the A1 policies.

The Near-RT RIC functions based on its internal functions or applications, the configuration received over O1 and the temporary policies received over A1. The A1 policies may not survive a re-start of the Near-RT RIC.

To support the policy enforcement in the Near-RT RIC, the Non-RT RIC can provide enrichment information over the A1 interface.

#### 4.1.3.2 A1 enrichment information service (A1-EI)

The A1 enrichment information service (A1-EI), and the enrichment information transfer procedures listed in clause 6.3, are defined for communication between an A1-EI service consumer referred to as A1-EI Consumer and an A1-EI service producer referred to as A1-EI Producer. SMO/Non-RT RIC framework RIC takes the role of A1-EI Producer and Near-RT RIC takes the role of A1-P Consumer as illustrated in figure 4.1.3.2-1.

![]({{site.baseurl}}/assets/images/af422eaa17be.emf.png)

Figure 4.1.3.2-1: A1-EI

Enrichment information is generically defined as *information provided to an entity, in addition to the information that is generally available to it, in order to enhance the performance of its tasks*. It can be produced based on information from one or more sources, e.g. by relaying, combining, refining or analysing information from the input source(s).

In O-RAN Architecture Description [4] it is described that external systems can provide enrichment data to the SMO. This is referred to as "O-RAN external information sources" while the network functions in the RAN are examples of "O-RAN internal information sources".

SMO can collect information from O-RAN internal and O-RAN external information sources. Based on this information, Non-RT RIC can derive information that could be beneficial for both Non-RT RIC and/or Near-RT RIC internal functions or applications, e.g. an ML model, to improve its performance.

In relation to the A1 interface, two types of enrichment information are distinguished: A1 enrichment information and external enrichment information.

The A1 interface is used for discovery, request, and delivery of A1 enrichment information.

The A1 interface is also used for the discovery of external enrichment information and the SMO / Non-RT RIC is responsible for the authentication of the source and the security of the direct connection.

NOTE: The handling of direct connections, and discovery or delivery of external enrichment information involving the A1 interface is not defined in the present document.

#### 4.1.3.3 A1 ML model management service (A1-ML)

The A1 ML model management service (A1-ML), and the ML model related procedures listed in clause 6.4, are defined for communication between an A1-ML service consumer referred to as A1-ML Consumer and an A1-ML service producer referred to as A1-ML Producer. Depending on the use case, SMO/Non-RT RIC framework takes the role of A1-ML Producer and Near-RT RIC takes the role of A1-ML Consumer, or SMO/Non-RT RIC framework takes the role of A1-ML Consumer and Near-RT RIC takes the role of A1-ML Producer, as illustrated in figure 4.1.3.3-1.

![]({{site.baseurl}}/assets/images/a284aab86dc2.emf.png)

Figure 4.1.3.3-1: A1-ML

The A1-ML service supports AI/ML workflows between SMO/Non-RT RIC and Near-RT RIC.

SMO/Non-RT RIC and Near-RT RIC can exchange AI/ML model training related messages via A1 interface.

## 4.2 A1 interface general principles

The general principles for the specification of the A1 interface are as follows:

* the A1 interface is an open logical interface within O-RAN architecture between the Non-RT RIC functionality in the SMO and the Near-RT RIC functionality in the RAN;
* the A1 interface enables a multi-vendor environment and is independent of specific implementations of the SMO, Non-RT RIC, and Near-RT RIC;
* the A1 interface is defined in an extensible way that enables new services and data types to be added without needing to change the protocol stack or the procedures;
* the A1 interface enables policy-based guidance (objective, resource) of radio resource management internal functions or applications that are part of Near-RT RIC;
* the A1 interface enable mechanisms for Near-RT RIC to provide status and feedback information regarding enforcement of A1 policies to Non-RT RIC;
* the policy enforcement service in Near-RT RIC requires that the policies transferred over A1 interface are expressed using a standardized mechanism (language, syntax, etc);
* the A1 interface enables transmission of A1 enrichment information from Non-RT RIC to Near-RT RIC as needed by Near-RT RIC;
* the A1 interface enables Near-RT to discover available enrichment information for which secure delivery can be provided, and to request delivery of enrichment information;
* A1 policies are created, modified, and deleted by the Non-RT RIC;
* the A1 policies are enforced until deleted and it is the responsibility of Non-RT RIC to create and delete policies based on context information e.g. observability from RAN indicating RAN intent fulfilment received over O1;
* EI jobs are created, modified, and deleted by the Near-RT RIC based on the needs of its internal functions;
* the Non-RT RIC delivers A1 enrichment information to the Near-RT RIC according to an EI job as long as the EI job is enabled and until it is deleted; and
* the A1 interface enables mechanisms for SMO/Non-RT RIC to exchange AI/ML model training related messages with Near-RT RIC.

## 4.3 A1 interface specification objectives

The A1 interface specification facilitates the following:

* inter-connection of Non-RT RIC functionality in the SMO with Near-RT RIC functionality in the Radio Access Network supplied by different manufacturers;
* provision of policies for individual UEs or groups of UEs, or for individual cells or group of cells;
* provision of status and feedback from Near-RT RIC that enables Non-RT RIC to monitor the enforcement of policies;
* provision of enrichment information as requested by Near-RT RIC; and
* exchange of AI/ML model training related messages between SMO/Non-RT RIC and Near-RT RIC.

## 4.4 A1 interface capabilities

As described in Non-RT RIC & A1/R1 Interface: Use Cases and Requirements [2], the A1 interface supports:

* transfer of policy management information from Non-RT RIC to Near-RT RIC;
* policy status and feedback information from Near-RT RIC to Non-RT RIC;
* discovery and request of A1 enrichment information from Near-RT RIC to Non-RT RIC and delivery of A1 enrichment information from Non-RT RIC to Near-RT RIC; and
* request of AI/ML model training, and transfer of AI/ML model training status between SMO/Non-RT RIC and Near-RT RIC.

As described in A1TP [8], clause 7, the A1 interface supports:

* Authorization of requests to access A1 services.

# 5 Functions of the A1 interface

## 5.1 Policy management

### 5.1.1 Introduction

The purpose of A1 policies is to enable the Non-RT RIC function in the SMO to guide the Near-RT RIC function, and hence the RAN, towards a better fulfilment of the RAN intent.

NOTE: RAN intent represents e.g. the SLA from the BSS (Business Support System) that the RAN is to fulfil for all users or for a subset of users (e.g. QCI or slice). Based on the permanent configuration and the available resources, the RAN strives to deliver the expected QoS for the users.

By utilising the observability over O1, and the A1 policy status and feedback information, the Non-RT RIC can conclude that the RAN intent is not achieved. The Non-RT RIC can then decide to use A1 policies that enable the Near-RT RIC to e.g. optimize RRM for a single UEs or for group of UEs.

EXAMPLE: When the Non-RT RIC understands that the available resources in a certain area are not enough to fulfil the SLA for all users in a slice, it can then decide to temporarily change the QoS targets for some users (dynamic group of users) belonging to the same slice (pre-defined group of users).

There are different types of A1 policies referred to as A1 policy types. A Non-RT RIC need not use all A1 policy types, and a specific function in the Near-RT RIC may only support one specific A1 policy type. Non-RT RIC can discover available A1 policy types over the A1 interface.

NOTE: As A1 policy types represent capabilities of the Near-RT RIC and they may also be indicated to the Non-RT RIC in other ways.

### 5.1.2 The policy management function

The policy management function is used by the Non-RT RIC to provision and manage A1 policies in the Near-RT RIC. The Non-RT RIC is responsible for definition and administration of A1 policies.

The function is used to query the available A1 policy types in the Near-RT RIC.

The function is used to create, update, and delete A1 policies in the Near-RT RIC.

The function is used to query the presence, content, and run-time status of an A1 policy in the Near-RT RIC.

The function is supported by A1 policy status and feedback information from the Near-RT RIC to the Non-RT RIC.

NOTE 1: As the Near-RT RIC cannot change the content of a policy, only a change in enforcement status can be notified. If context is changed in such a way that the enforcement status of a policy is changed, the Non-RT RIC is notified and may decide to delete the policy.

NOTE 2: Feedback on the fulfilment of A1 policies in the Near-RT RIC is not transferred over the A1 interface. The Non-RT RIC can estimate the fulfilment of A1 policies based on O1 observables.

NOTE 3: Before and after the creation of an A1 policy, the Non-RT RIC can monitor the network to understand the effect of the A1 policy on performance. Performance monitoring or tracing is not handled over the A1 interface.

### 5.1.3 Lifecycle aspects of A1 policies

Per default, the Near-RT RIC controls the RAN based on the persistent configuration. The RAN operation can be optimized using A1 policies that, compared to the persistent configuration,

* are not critical to traffic;
* have temporary validity;
* handle individual UE or dynamically defined groups of UEs;
* express goals for the optimization rather than direct changes to the configuration; and
* are non-persistent, i.e., do not survive a restart of the Near-RT RIC.

An A1 policy exists in the Near-RT RIC after it has been created by the Non-RT RIC using the Create policy procedure and accepted by the Near-RT RIC.

For an A1 policy, the Near-RT RIC can provide status and feedback information to the Non-RT RIC.

The Near-RT RIC continuously evaluates the policy conditions versus the environment and notifies the Non-RT RIC in case the enforcement status of the policy changes due to e.g. environment changes.

When a create A1 policy request is accepted, the Non-RT RIC can assume that the policy is enforced until policy status is queried or a change in enforcement status is notified.

An A1 policy can be updated by the Non-RT RIC using the Update policy procedure. After the update, the policy is evaluated and enforced by the Near-RT RIC based on the updated policy statements.

An A1 policy exists in the Near-RT RIC until it is deleted by the Non-RT RIC using the Delete policy procedure.

The states related to policy lifecycle and policy enforcement are illustrated in figure 5.1.3-1.

![]({{site.baseurl}}/assets/images/0df8cdd8a641.emf.png)

Figure 5.1.3-1: State transition diagram for policy in the Non-RT RIC

The state transition diagram in figure 5.1.3-1 illustrates the Non-RT RIC view of the states of a policy instance during the policy lifecycle. All state transitions are related to A1 policy related procedures as listed in clause 6.1 with the following notes:

NOTE 1: A Create policy request is accepted after the policy has been validated and considered as being possible to enforce.

NOTE 2: An Update policy request is accepted after the policy has been validated and considered as being possible to enforce, it does not cause a state transition unless it makes a policy possible to enforce.

NOTE 3: A Delete policy request, whether accepted or not, always leads to that the Non-RT RIC considers the policy as deleted.

NOTE 4: A Query policy request does not cause a state transition, and a Query policy status request does not cause a state transition in case the enforcement status has not changed.

NOTE 5: A Query policy request or a Notify policy status cause a state transition in case the enforcement status has changed from ENFORCED to NOT\_ENFORCED.

NOTE 6: A Query policy request or a Notify policy status cause a state transition in case the enforcement status has changed from NOT\_ENFORCED to ENFORCED.

### 5.1.4 Identification and scope of A1 policies

#### 5.1.4.0 General

An A1 policy type is identified by the policy type identifier (PolicyTypeId). Different policy types have different PolicyTypeIds. Based on the PolicyTypeId, schemas are identified and used for creation, validation, and formulation, and for query of the status, of A1 policies of that type.

An A1 policy is identified by a policy identifier (PolicyId) that shall be assigned by Non-RT RIC. The PolicyId shall be locally unique within Non-RT RIC and sent in the policy request operations that carry representations of A1 policies.

A1 policies consist of a scope identifier and one or more policy statements as illustrated in figure 5.1.4.0-1. The scope identifier represents what the policy statements are to be applied on (e.g. UEs, QoS flows, or cells). The policy statements represent the goals to the Near-RT RIC and covers policy objectives and policy resources.

![]({{site.baseurl}}/assets/images/661cb3d76def.emf.png)

Figure 5.1.4.0-1: Illustration of the structure of an A1 policy

By including policy statements with policy objectives,

* the quality of experience can be optimized for UEs or QoS flows that are identified either explicitly by e.g. a UE identifier or a QoS identifier, or implicitly by e.g. a group identifier from which the Near-RT RIC can deduce a set of UEs; and
* energy saving can be applied to one or more cells that are identified either explicitly by e.g. a cell identifier or implicitly by e.g. a list of identifiers from which the Near-RT RIC can deduce a set of cells.

By including policy statements with policy resources, UEs can e.g. be made to avoid certain cells or the radio network can be optimized in specific areas.

The identifiers that can be used as scope identifier in A1 policies are defined as data types in the A1 Type Definitions specification [5], clause 6.3.1. The scope identifier can be composed by a single or a by a combination of these as defined for each policy type definition in A1TD [5], clause 7.2.

#### 5.1.4.1 Identification of UEs

In the scope of A1 policies, a UE is identified by a UE identifier. The UE identifier identifies a logical UE entity that is known to the RAN and measurements related to it. It does not identify any hardware equipment or user subscription.

The UE identifier is used for correlating O1-PM data with service targets and enables evaluation of the fulfilment of policies. In order to be able to utilize non-RAN data for the usage of A1 policies, non-RAN data need to include identifiers that can be correlated with the UE identifier by the Non-RT RIC.

If the Non-RT RIC needs to express policies for multiple individual UEs, it can be done through a set of policies, one for each individual UE.

#### 5.1.4.2 Identification of groups of UEs

In the scope of A1 policies, a group of UEs can be identified based on a group identifier.

When the Near-RT RIC receives a group identifier in an A1 policy, it may resolve it into a set of UEs that are present in the nodes controlled by the Near-RT RIC and applies the policy statements to each one of the UEs.

#### 5.1.4.3 Identification of slices

When the Near-RT RIC receives a slice identifier in an A1 policy, it may resolve it into a set of UEs and a set of QoS flows that are present in the nodes controlled by the Near-RT RIC and applies the policy statements to each one of the UEs or the QoS flows.

#### 5.1.4.4 Identification of QoS flows

When the Near-RT RIC receives a QoS identifier in an A1 policy, it may resolve it into a set of QoS flows (that are related to the applications that the Non-RT RIC is intending to optimize) and the set of UEs (that are present in the nodes controlled by the Near-RT RIC) for which they apply. Then it applies the policy statements to each one of the UEs and QoS flows.

#### 5.1.4.5 Identification of cells

In the scope of A1 policies, a part of the radio network can be identified based on a cell identifier or a set of cell identifiers.

When the scope identifier in an A1 policy contains one or more cell identifiers, the policy statement may contain policy resources and the policy may implicitly impact on multiple UEs handled by the specified cell(s).

An A1 policy is applied to a specific cell when a cell identifier is included in the scope. An A1 policy is applied to a group of cells when a set of cell identifiers is included in the scope. When no cell identifier or set of cell identifiers is included in the scope, a policy may apply to multiple cells.

If the Non-RT RIC needs to express policies for a group of cells (i.e. a set of cells), it is done through a set of policies for individual cells or through a set of cell identifiers or other identifiers that the Near-RT RIC may resolve into a set of cell identifiers.

### 5.1.5 A1 policy content

#### 5.1.5.1 General

In addition to a scope identifier, an A1 policy contains policy statements. There are several kinds of policy statements that cover policy objectives and policy resources.

NOTE: The detailed rules for how to formulate policy statements, and which combinations of identifiers and statements that are allowed, are specified for the policy types defined in A1TD [5], clause 7.2.

#### 5.1.5.2 Policy objectives

A statement for policy objectives expresses the goal for the policy. It can be related to e.g. QoS or QoE targets, or KPI or KQI targets. For detailed definitions of statements for policy objectives, see A1TD [5], clause 6.3.3.

There is normally only one statement for policy objectives in an A1 policy.

#### 5.1.5.3 Policy resources

A statement for policy resources expresses the conditions for resource usage for the policy. It can be related to e.g. cell preferences. For detailed definitions of statements for policy resources, see A1TD [5], clause 6.3.4.

Statements for policy resources can be combined with a statement for policy objectives in an A1 policy.

## 5.2 A1 enrichment information

### 5.2.1 Introduction

The purpose of A1 enrichment information is to enable the Near-RT RIC to improve its RAN optimization performance by utilizing information that is not available within the RAN. The information sources can be O-RAN internal and O-RAN external, and the derived A1 enrichment information can be provided by the Non-RT RIC over the A1 interface.

There are different types of A1 enrichment information referred to as EI types. A Near-RT RIC may not need to use all EI types, and a specific function in the Near-RT RIC may only need one specific type of A1 enrichment information.

An EI type is identified by the EI type identifier (EiTypeId). Based on the EiTypeId, information can be provided about the A1 enrichment information properties and how to request delivery of the A1 enrichment information.

The Near-RT RIC can discover available EiTypeIds over A1 and request delivery of A1 enrichment information related to an available EiTypeId. The Non-RT RIC controls the access to A1 enrichment information and how the connection for delivery of the enrichment information can be made.

NOTE: There may be functions in the SMO or the Non-RT RIC that also utilize enrichment information for their tasks, it may be the same or different enrichment information as exposed over the A1 interface. This is outside the scope of the present document to describe.

### 5.2.2 The enrichment information function

The enrichment information function is used by the Non-RT RIC to produce and make A1 enrichment information available to the Near-RT RIC. The Non-RT RIC is responsible for exposure and secure delivery of A1 enrichment information.

The function is used to publish available EiTypeIds over A1.

The function is used to deliver A1 enrichment information for an EiTypeId based on an EI job.

### 5.2.3 Lifecycle aspects of A1 enrichment information

#### 5.2.3.1 Registration of enrichment information source

Before the Non-RT RIC can provide a certain EiTypeId over A1, the SMO needs to set-up the collection of input information from O-RAN internal and/or external sources and the Non-RT RIC needs to set-up the functions that produce the enrichment information based on the input information and deliver it. When onboarding and set-up is complete, the new EiTypeId can be discovered over A1.

#### 5.2.3.2 Discovery of enrichment information

##### 5.2.3.2.0 General

Before a Near-RT RIC can use A1 enrichment information it needs to identify that the needed EiTypeId is available and how to access it.

The Near-RT RIC can discover available EiTypeIds using A1-EI. The Non-RT RIC controls which EiTypeIds are discoverable and accessible by a specific Near-RT RIC.

For a specific EiTypeId, the Near-RT RIC can request a detailed description of the enrichment information provided and how to formulate a request for delivery of it.

##### 5.2.3.2.1 Lifecycle aspects of EI types

The Non-RT RIC is responsible for ensuring that the EI types that are discoverable over A1 can be used for EI jobs and delivery of EI job results. An EiTypeId shall not be made available until EI jobs can be created, and EI job results delivered for that EI type.

In case Non-RT RIC detects that it is no longer able to deliver EI job results for an EI type, the EiTypeId should no longer be discoverable over A1.

#### 5.2.3.3 Request and Delivery of enrichment information

##### 5.2.3.3.0 General

A1 enrichment information can be delivered to the Near-RT RIC in different ways depending on the type of the A1 enrichment information or on the needs from the using internal function or application.

A1 enrichment information can be delivered on an as per needed basis, due to an event or continuously. For continuous delivery, different mechanisms can be used depending on the volume of enrichment information to be delivered.

Following the discovery that an EiTypeId is available, the request and delivery of A1 enrichment information is done in two steps:

1. First the Near-RT RIC requests over A1 to get A1 enrichment information for the EiTypeId by creating an EI job that contains a description of the information that is requested and which delivery mechanism to use.
2. Then the Non-RT RIC sets up the appropriate connection and delivers A1 enrichment information according to the agreed details for the EI job.

##### 5.2.3.3.1 Lifecycle aspects of EI jobs

The Near-RT RIC can initiate creation, update, and deletion of EI jobs. The EI job is created when the Near-RT RIC needs A1 enrichment information of a specific EI type and the EI job is deleted when the Near-RT RIC no longer needs the information.

In case the Near-RT RIC temporarily cannot use delivered EI, it can discard or buffer the received EI or stop the EI delivery by deleting the EI job and re-create it when it is ready to receive delivered EI.

The Near-RT RIC may query existing EI jobs after a re-start, and either delete, update, or keep the EI jobs if still relevant.

##### 5.2.3.3.2 Lifecycle aspects of EI job results

The Non-RT RIC is responsible for the set-up of connections to the Near-RT RIC for the delivery of EI job results according to the agreed EI job. The delivery of the EI job results is started when the EI job is created and stopped when the EI job is deleted.

In case delivery connections cannot be set-up to the Near-RT RIC, the Non-RT RIC need not buffer any information produced while the delivery connections are not successful. In case the EI cannot be successfully produced or delivered according to an agreed EI job, the Near-RT RIC can detect this through the delivered EI job results, or through lack of delivered EI job results.

The Near-RT RIC may evaluate the received EI job results. If the received EI job results are not according to expectations, the Near-RT RIC can update the EI job or delete it.

### 5.2.4 Identification of A1 enrichment information

A1 enrichment information is identified by the A1 enrichment information identifier (EiTypeId). Different types of A1 enrichment information have different EiTypeIds.

The Near-RT RIC can request delivery of A1 enrichment information from the Non-RT RIC by creating an EI job for an EiTypeId. The EI job and the EI job results are identified by an EI job identifier (EiJobId) assigned by the Near-RT RIC.

### 5.2.5 A1 enrichment information format and delivery

#### 5.2.5.1 Push based delivery

When A1 enrichment information has been produced during an EI job, it is pushed from the Non-RT RIC to the Near-RT RIC. This can be done once, regularly or event based depending on the conditions set for the EI job.

## 5.3 ML model management

### 5.3.1 Introduction

The purpose of A1 ML model management is to enable:

* the Near-RT RIC to request the Non-RT RIC to train an AI/ML model;
* the Non-RT RIC to request the Near-RT RIC to train an AI/ML model;
* the Near-RT RIC to query the training status of an AI/ML model that is trained at Non-RT RIC/SMO;
* the Non-RT RIC to query the training status of an AI/ML model that is trained at Near-RT RIC;
* the Non-RT RIC to discover training capabilities provided by Near-RT RIC's; and
* the Near-RT RIC to discover training capabilities provided by Non-RT RIC/SMO.

# 6 Signalling procedures of the A1 interface

## 6.1 General

The usage of the procedures listed in this clause are described in A1UCR [6] and defined in detail in A1AP [7].

## 6.2 Policy related procedures

Policy related procedures include:

* Query policy type identifiers procedure;
* Query policy type procedure;
* Query policy type status procedure;
* Notify policy type status procedure;
* Create policy procedure;
* Query policy identifiers procedure;
* Query policy procedure;
* Update policy procedure;
* Delete policy procedure;
* Query policy status procedure; and
* Notify policy status procedure.

## 6.3 Enrichment information transfer procedures

A1 enrichment information related procedures include:

For EI discovery:

* Query EI type identifiers;
* Query EI type;
* Query EI type status, and
* Notify EI type status.

For EI job control:

* Query EI job identifiers;
* Create EI job;
* Query EI job;
* Update EI job;
* Delete EI job;
* Query EI job status; and
* Notify EI job status.

For EI delivery:

* Deliver EI job result.

## 6.4 ML model related procedures

A1 ML model related procedures include:

* Request AI/ML model training.

# 7 A1 interface protocol structure

The protocol stack of the A1 interface is shown in figure 7-1. The transport network layer is built on IP transport. For the secure and reliable transport of messages, HTTP/TLS is added on top of TCP/IP. The application layer protocol is based on a RESTful approach with transfer of JSON formatted policy statements.

The detailed description is provided in A1TP [8].

![]({{site.baseurl}}/assets/images/76c36ceca2eb.emf.png)

Figure 7-1: Illustration of the A1 protocol stack

# 8 Other A1 interface specifications

## 8.1 A1 TS-family overview

The present document is part of a TS-family covering the A1 interface. The other specifications cover Use Cases and Requirements, Transport Protocol, Application Protocol, Type Definitions, and Test cases.

The relations between the A1 specifications and their relations to other O-RAN specifications for architecture and for use cases and requirements are illustrated in figure 8.1-1.

![]({{site.baseurl}}/assets/images/564eaa94076e.png)Figure 8.1-1: Overview of relations between A1 specifications

## 8.2 A1 interface: Use Cases and Requirements

A1UCR [6] describes the use cases for the A1 procedures and the related requirements.

## 8.3 A1 interface: Transport Protocol

A1TP [8] defines how the A1 protocol stack is based on TCP/IP, HTTP/1.1 over TLS and JSON as data interchange format.

## 8.4 A1 interface: Application Protocol

A1AP [7] defines the resources, the service operations and the service APIs for the A1 services including the URIs for HTTP based procedures.

## 8.5 A1 interface: Type Definitions

A1TD [5] defines attributes, data types and objects for HTTP based procedures and JSON examples of objects are provided.

## 8.6 A1 interface: Test Specification

A1TS [9] defines test cases for

* A1 conformance testing of Non-RT RIC;
* A1 conformance testing of Near-RT RIC; and
* A1 interoperability testing between Non-RT RIC and Near-RT RIC

based on the procedures defined in A1AP [7].

Annex (informative):
Change History

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Date | Revision | Description |
| 2019.09.30 | 01.00 | First version |
| 2020.07.30 | 02.00 | Definitions, functions and procedures for A1 enrichment information and A1 policy type description. |
| 2020.11.09 | 02.01 | Enhancing description of LCM aspects for A1 enrichment information service. |
| 2021.03.13 | 02.02 | Editorial corrections to apply latest template and update references. Enhance description of life cycle aspects for A1 policies. |
| 2021.07.16 | 02.03 | Enhancing descriptions of A1 policy scope and content. |
| 2022.07.30 | 03.00 | Adapting to ODR template and general updates to align with A1 suite specifications |
| 2022.11.17 | 03.01 | Aligning to O-RAN drafting rules. |
| 2023.11.30 | 03.02 | ETSI PAS related editorial enhancements and applying latest template. |
| 2024.03.31 | 03.03 | Editorial enhancements, alignment of notation for status and feedback, and extended cell identification. |
| 2024.07.31 | 04.00 | General aspects of A1 ML model management service |
| 2024.11.30 | 05.00 | Updated A1 service architecture, and A1 ML functions and related procedures |

</div>
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG2.TS.A1GAP-R004-v05.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG2.TS.A1GAP-R004-v05.00.docx).

---

* toc
{:toc}
