---
title: O-RAN.WG1.TR.SMO-INT-R004-v04.00.docx.md
author: O-RAN Alliance
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG1.TR.SMO-INT-R004-v04.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG1.TR.SMO-INT-R004-v04.00.docx).

---

* toc
{:toc}

---

O-RAN-WG1.TR.SMO-INT-R004-v04.00

Technical Report

Copyright (C) 2025 by the O-RAN ALLIANCE e.V.

The copying or incorporation into any other work of part or all of the material available in this document in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this document for your personal use, or copy the material of this document for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany

Register of Associations, Bonn VR 11238, VAT ID DE321720189

O-RAN Work Group 1 (Use Cases and Overall Architecture)

SMO Intents-driven Management

Contents

List of figures 4

List of tables 4

Foreword 5

Modal verbs terminology 5

Executive summary 5

Introduction 5

1 Scope 6

2 References 6

2.1 Informative references 6

3 Definition of terms, symbols and abbreviations 7

3.1 Terms 7

3.2 Symbols 7

3.3 Abbreviations 7

4 SMO Intent driven management concepts 7

4.1 Overview 7

4.2 Intents management in current industry landscape 8

4.2.1 Intent-driven Management in TMF 9

4.2.2 Intent-driven Management in 3GPP 10

5 SMO Intent driven management Use Cases 12

5.1 Overview 12

5.2 Use Case: External exposure of RAN Intent-driven management services 13

5.2.1 Use Case flow: RAN management Intents capabilities discovery 14

5.2.2 Use Case flow: Handling of external RAN management Intents requests 15

5.2.3 Use Case flow: RAN management Intents capabilities registration 15

5.3 Use Case: Intent-driven management of RAN performance assurance 16

5.3.1 Use Case flow: Intent-driven management of RAN performance assurance 17

5.4 Use Case: intent deadline 19

5.4.1 Use Case Flow: intent deadline 19

6 Procedures for Intent-driven management 19

6.1 Overview 19

6.2 Removal of intent 19

6.2.1 Remove Intent 20

6.3 Assessment of the potential fulfilment and outcome of an intent 20

6.3.1 Probing the outcome of an intent 21

6.3.2 Modify the intent probing 21

6.4 Preferences on possible options for intents outcome 21

6.4.1 RMIO preferences for one of the offered intent options 23

6.5 Requesting intent reports and intent report generation 23

6.5.1 Requesting intent reports and intent report generation 24

6.6 Modification of requirements in an intent 24

6.6.1 Flow 25

6.7 Intent Negotiation 25

6.7.1 Intent feasibility check 25

6.7.2 Intent exploration 25

6.7.3 Intent fulfilment 25

7 Recommended SMO Intent driven management requirements 26

7.1 Overview 26

7.2 Requirements for intent management in SMO 26

8 SMO Intent driven management Analysis 27

8.1 Overview 27

8.2 SMO Architecture 27

8.2.1 SMO Architecture Considerations 27

8.2.2 SMO Architecture Recommendations 28

8.3 SMO Intent-driven Management Interface 28

8.3.1 Intent Management interface approach 28

8.3.2 Interface summary 28

8.3.3 Interface recommendations 29

Annex: Change history/Change request (history) 30

# List of figures

**No table of figures entries found.**

# List of tables

Table 5.1-1: Actors used across the different RAN Intents-driven management use cases 13

Table 5.2.1-1: RAN management Intent discovery by external SMO consumers 14

Table 5.2.2-1: RAN management Intent service invocation handling by SME 15

Table 5.2.3-1: RMIH capabilities registration with SME 15

Table 5.3.1-1: RAN management Intent for performance assurance of a set of O-RAN NFs instances 18

Table 5.4.1-1: Intent Deadline flow 19

Table 6.2.1-1: Remove Intent flow 20

Table 6.3.1-1: Probing for the potential fulfilment of an intent 21

Table 6.4.1-1: Preferences regarding the possible outcome options for intents 23

Table 6.5.1-1: Requesting intent reports and the intent report generation 24

Table 6.6.1-1: Modification of existing intents 25

Table 7.2-1: Requirements for intent management in SMO 27

# Foreword

This Technical Report (TR) has been produced by O-RAN Alliance.

# Modal verbs terminology

In the present document "**shall**", "**shall not**", "**should**", "**should not**", "**may**", "**need not**", "**will**", "**will not**", "**can**" and "**cannot**" are to be interpreted as described in clause 3.2 of the O-RAN Drafting Rules (Verbal forms for the expression of provisions).

"**must**" and "**must not**" are **NOT** allowed in O-RAN deliverables except when used in direct citation.

# Executive summary

# Introduction

Industry standards provide today increasing support for enhanced network automation, using management loops mechanisms with separation of concerns in the interactions between different management domains, or between service and business domains. The O-RAN SMO provides a range of RAN management services which can be exposed to other management domains (e.g., E2E Service Management, enterprise) or towards a business support system.

While abstracting such details needed to manage a RAN (e.g., several O-RAN NFs and their connectivity), the intents are a means to allow consumers of SMO services to express their end goals, requirements and constraints for such a RAN instance in a simplified form. The intents focus on "what" and not on the "how", which is left to the intent management handling logic to resolve.

In O-RAN SMO, intents can have a wide range of applicability, and this allows external consumers like management, and/or business systems, to interact with the SMO by expressing their requirements and goals for RAN management in a simplified manner, without needing to be aware of all the details of the RAN models, and the various types of management and orchestration interfaces design.

# 1 Scope

The contents of the present document are subject to continuing work within O-RAN and may change following formal O-RAN approval. Should the O-RAN Alliance modify the contents of the present document, it will be re-released by O-RAN with an identifying change of version date and an increase in version number as follows:

version xx.yy.zz

where:

xx: the first digit-group is incremented for all changes of substance, i.e. technical enhancements, corrections, updates, etc. (the initial approved document will have xx=01). Always 2 digits with leading zero if needed.

yy: the second digit-group is incremented when editorial only changes have been incorporated in the document. Always 2 digits with leading zero if needed.

zz: the third digit-group included only in working versions of the document indicating incremental changes during the editing process. External versions never include the third digit-group. Always 2 digits with leading zero if needed.

The present document specifies the use cases and provides an initial analysis of the SMO Intents-driven management of the RAN, concluding with recommendations for requirements, the architecture and interfaces for RAN intents-driven management to be pursued in the next phase of the feature.

# 2 References

## 2.1 Informative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their longterm validity.

The following referenced documents are not necessary for the application of the present document but they assist the user with regard to a particular subject area.

1. [WG1.ARCH] O-RAN.WG1.O-RAN-Architecture-Description
2. [WG1.UCR]  O-RAN.WG1.Use-Cases-Detailed-Specification
3. O-RAN.WG2.Non-RT-RIC-ARCH-TS-v02.00, "O-RAN Working Group 2; Non-RT RIC Architecture Technical Specification".
4. O-RAN-WG1.Decoupled-SMO-Architecture-TR: "O-RAN Working Group 1 (Use Cases and Overall Architecture) Decoupled SMO Architecture".
5. 3GPP TR 28.912 "Study on enhanced intent driven management services for mobile networks", Release 18, April 2023.
6. 3GPP TS 28.312 "Intent driven management services for mobile networks", Release 17, April 2023.
7. IG1253, "Intent in Autonomous Networks", v1.3.0, August 2022
8. TR290, "Intent Common Model", v3.0.0, February 2023
9. TMF921, "Intent management API", Release 23.0.0, v4.0.0, March 2023
10. IG1251, "Autonomous Networks - Reference Architecture", v1.0.1, September 2022

# 3 Definition of terms, symbols and abbreviations

## 3.1 Terms

For the purposes of the present document, the following terms apply:

**Intent:** formal specification of all requirements including goals and constraints given to a system.

**Intent Expression:** representation of an intent, which captures the requirements, objectives, and related details.

**Intent Driven Object:** object identifying a set of vocabulary and semantics used to capture and express intent.

## 3.2 Symbols

For the purposes of the present document, no special symbols apply.

## 3.3 Abbreviations

For the purposes of the present document, the [following] abbreviations [given in ... and the following] apply:

BSS Business Support System

CM Configuration Management

FM Fault Management

KPI Key Performance Indicators

LCM LifeCycle Management

NBI NorthBound Interface

NF Network Function

OSS Operational Support System

O-RU O-RAN Radio Unit

PM Performance Mangement

SMO Service Management and Orchestration

SMOS SMO Service

# 4 SMO Intent driven management concepts

## 4.1 Overview

An intent specifies the expectations including requirements, goals, and constraints, without specifying how the expectations should be fulfilled. In short, an intent is a statement or specification on the desired state of the system. Following are some general concepts for intent:

* An intent is understandable by both humans as well as the machines without any ambiguity.
* An intent specifies "what" needs to be achieved without specifying "how" it can be done.

The expectations expressed by an intent is agnostic to the underlying system implementation, technology, and infrastructure. Intents are a means to allow consumers of SMO Services to express their end goals, requirements and constraints, and then allows the SMO Service Producers, nonRT-RIC, and relevant rApps to figure out how to execute the realization of that intent. Advanced options can also be available, such as consumer making feasibility inquiries using various sets/subsets of its requirements or to obtain the possible available options for certain requirements.

In O-RAN SMO, intents can have a wide range of applicability including the various interactions within SMO management loops (closed, open), serving as a simplified method for management exposure of RAN services both externally and internally to other management or business systems. The external exposure allows external management and business entities to interact with the SMO by expressing their requirements and goals for RAN instances in a simplified manner, without needing to be aware of all the details of the RAN models and the various types of management and orchestration interfaces design. An example of such external management service can be an E2E Service Management (E2E SM) system that is tasked to create and maintain a 5G service which includes all the access/RAN, core, transport and cloud services needed. Internally, different SMOS producers and rApps can use intents to interact with each other for different RAN management related tasks. Using intents would simplify the interactions and minimize dependencies between the consuming and producing entity of the management service, e.g., E2E SM entity, or a BSS, and the O-RAN SMO.

A simplified approach of the SMO NBI, SMOS exposure, and R1 using intent-based management is beneficial, for the following reasons:

(a) Separation of concerns, between SMO and other management entities in OSS or BSS, which do not need to have a detailed knowledge of the O-RAN information models and data models to be able to request an O-RAN service.

(b) Ability for SMOS producers to produce and/or consumer intent based services (be it SMO framework services or SMOS realized via rApps).

(c) Enable an evolution path of the SMO towards knowledge-driven management systems, where machine reasoning capabilities can process received O-RAN intents, perform data inference when needed and are easily extensible.

(d) Establish a common intent management framework in the SMO that can handle the O-RAN service level management via intents, which can be reused and extended as necessary. The extensions to add further scoping of O-RAN intents can be done by simply defining their intent models (since the interface definition and intent management framework are reusable throughout the SMO).

(e) Leverage existing standardization work on intents management, specifically intent interfaces, models, and management aspects such as intent capabilities tracking (registration, discovery), such as TM Forum's TR290X, TR291X, TR292X, TR293, TMF921A and GB921, 3GPP TS 28.312, 3GPP TR 28.912, ETSI GR ZSM011 and ETSI GS ZSM016, etc.

4.1.1 Overview on intent negotiation procedures

Intent negotiation procedures help the RMIO (an authorized consumer of the SMO services) to find the best possible way to fulfil an intent. These procedures are important since they help the RMIO and RMIH engage with each other in a collaborative way that is beneficial for both. When an intent is provided to the RMIH, it can go either of the two ways:

* Pre-evaluation/Exploration: if the intent is provided to RMIH for pre-evaluation/exploration, nothing in the network or the system (including SMO) changes. Intent negotiation in this phase includes:
  + intent feasibility check: this enables the RMIO to understand if an intent can be supported by the RMIH. The output of this phase is binary: FEASIBLE or INFEASIBLE.
  + intent exploration: the output of this phase is non-binary. This enables the RMIO to understand what can be achieved with respect to the expectation(s) specified in the intent.

The attribute corresponding to intent reporting in the intent model can be configured to choose from these options. This will be discussed further in detail during the intent modelling in the subsequent normative work.

* Fulfilment: if the intent is provided to the RMIH for fulfilment, it means that RMIH starts taking necessary actions (e.g., allocating resources) and actual changes in the network and/or the system can be observed.

## 4.2 Intents management in current industry landscape

### 4.2.1 Intent-driven Management in TMF

The work on intent-based operation at TM Forum is done under the Autonomous Networks Project (ANP) and specified in the set of specifications, with IG1253 [i.7] and TR290 [i.8] being the central ones for the intent concept and intent expression models. The intent specification work is embedded in the Autonomous Network Reference Architecture [i.10].

The ANP develops specifications for various aspects of autonomous networks including its generic architecture, the definition, and assessment of levels of autonomy and closed loop management. Intent is a particular focus with specifications about:

* The definition of intent
* The architecture of intent-based networks with intent management functions
* An API for life cycle management of intents, reporting, and requirement negotiation
* The intent expression model in the form of the TM Forum Intent Ontology (TIO)
* Capability exposure and discovery of intent management functions.

The scope of the work is not limited to a single operational domain. It rather introduces concepts that would be applicable vertically in multiple operational layers as well as horizontally across multiple domains. The API as well as the model for intent expressions are designed to adapt to domain specific use cases while maintaining a generic core model.

Although the models are different, the proposed O-RAN intent definitions in this study are similar and compatible to other SDOs, such as TMForum and 3GPP.

Intents are declarative. They specify "what" is reached, but not "how" to reach it leaving the intent handlers with full autonomy to handle them. Therefore, any explicit instructions of what to execute is excluded from being specified within intent or by the intent API. Both are rather concerned with the definition, distribution, and management of requirements enabling subsystems to make suitable decisions and find solutions on their own rather than being instructed what actions to take. This way of interaction between subsystems enhances separation of concerns which is advantageous for AI-native implementations.

Intent modeling

Intent is a knowledge object expressing requirements. Sending an intent therefore means informing the receiving system about a set of requirements it needs to comply to. When the requirements in the intent are not needed anymore then they are removed. This means intent objects are actively lifecycle managed and need to be fulfilled, as long as the requirements they relayed are needed. The TM Forum intent API TMF921[i.9] is therefore primarily concerned with executing the lifecycle management of intent knowledge objects.

The TM Forum intent ontology (TIO) is the model for intent expression. It is based on the Resource Descriptor Framework (RDF) standard by W3C. It was chosen due to its capabilities and track record for knowledge modeling applications, since RDF is used in native machine reasoning implementations provided by different opensource solutions. Intent instances are a subgraph within the ontology and therefore anchored with full semantical context. Logical reasoning about the requirements is directly supported by this approach.

The intent ontology model proposed by TM Forum is highly modular. The ontology used for intent expression within a domain is a federation of a common generic model referred to as intent common model and domain-specific additions referred to as intent extension models. The intent common model is specified in TM Forum (TR290) [i.8], with a simple common structure that defines the internal structure of intent objects and provides general purpose vocabulary for expression of requirements. Other SDOs are invited to leverage the common intent model and then develop their own intent extension models for their scope of expertise (e.g., specific extensions to RAN management intents in O-RAN). No central or formal governance is required for intent extension models. The goal of the model federation is to keep intent expressions consistent across domains (business, management, traffic, etc.), while still being able to easily adapt it to new domain specific needs.

Intent API

The TM Forum intent API is designed as polymorphic API with two-tiered information models. It mainly defines generic life-cycle management operations of intent objects and intent reports. This makes the API applicable whenever intent based operation is needed, irrespective of the domain or reference point. The API adapts its information model using the same federation mechanism described above. The stage 3 API work is published as TM Forum Open APIs and it is based on REST. The intent encoding follows established standards, with support of JSON-LD, XML/RDF, and TURTLE formats.

Architectural aspects and definitions

TM Forum ANP introduces intent managers [i.7]. They constitute functional blocks present in all sub-systems that interact using intents. If two systems or domains interact using intents, it is their intent managers that are directly interacting over the intent API. In this respect, the introduction of intent-based operation means allocation of intent managers in the target architecture.

The implementation of intent managers in various domains can vary significantly with respect to complexity and capability. Any function or component within an architecture that implements the intent API and therefore participates in intent life-cycle management and intent reporting classifies to be an intent manager.

Within a domain or sub-system, an intent manager initiates and coordinates the assurance of requirements received within intents. Consequently, an intent manager interacts with other management functions using their exposed APIs and management services as part of its intent requirement assurance.

TM Forum ANP defines two roles intent managers can take in the life cycle of intent:

* Intent Owner: The intent manager that creates a requirement another system or domain will fulfill is referred to as intent owner. In this respect an intent owner is the source of intents.
* Intent Handler: The intent manager that receives an intent and is obliged to fulfill it is referred to as intent handler.

Intent owner and intent handler are roles an intent manager would take within the life cycle of a particular intent. In this respect an intent object has exactly one owner and one handler. If considering the intent API being a management service, the MnS producer would be associated with the intent handler role, while an intent owner would be an MnS consumer. However, the TM Forum defined roles of Intent Owner and Handler imply further responsibilities and authorization in the intent life cycle. For example, only an intent owner can modify or delete the intent it has issued. An intent handler cannot change the intent objects, but it can report to the owner about its state and success in fulfilling the requirements.

Intent managers publish their capabilities. This includes their support for optional operations on the intent API and most importantly they specify which intent extension models they supports. The capability profile also determines the scope of responsibility of an intent manager. Tying it to domains in the architecture, network topology or sets/types of resources. This allows other intent managers to detect them as suitable destination of their requirements, but it also determines what vocabulary and semantics is available for formulating intent.

### 4.2.2 Intent-driven Management in 3GPP

Introduction

The work on intent-driven management in 3GPP SA5 is specified in the technical specification (TS) 28.312 [i.6] and in the technical report (TR) 28.912 [i.5].

An intent specifies the expectations including requirements, goals, and constraints for a specific service or network management workflow. The intent may provide additional information on particular objective(s) and possibly some related details. SA5 defines four general concepts related to intent:

* An intent is understandable by humans, and also needs to be interpreted by the machine without any ambiguity.
* An intent focuses more on describing "what" needs to be achieved and not "how" to achieve them.
* The expectations specified in an intent are agnostic to the underlying implementation within the scope of a 3GPP system.
* An intent need to be quantifiable from network data so that the fulfilment result can be measured and evaluated.

Intent Driven Management Service

Complying with the service-based architecture of 5G, an intent-driven management system is proposed to consist of three basic components: (i) an intent-driven management service, (ii) producer of the service, and (iii) consumer of the service. In an intent-driven management system, the consumer provides its intent to the producer of a set of management services (MnS) that would be consumed in a specific domain. The difference between an intent-driven management approach and a non-intent-driven one can be explained with the following example. For the purpose of requesting a radio network with a new coverage, in a non-intent-driven approach, the set of non-intent-based MnSs (e.g., provisioning MnS) is used to decommission a cell and instantiate the cell to a new Node B for the new coverage. However, in an intent-driven approach, the intent-related MnS produced by the domain is used. Based on the intent, the system can trigger actions (e.g., decommission a cell and instantiate the cell to a new Node B) to satisfy received intent. The Intent-driven MnS could in principle be deployed as a replacement of the deployed non-intent-based MnSs for the same network and service management purpose, where the consumer focuses on the 'what' and the producer is concerned about the 'how'.

A 3GPP intent driven MnS allows for the following between its consumers and producers, as defined in 3GPP Rel-17 TS 28.312 [i.6].

- Its MnS Consumerto:

- express intents for managing networks and network services

- to obtain feedback on intent evaluation result

- to modify intents

- Its MnS Producertoprovide the following capabilities:

* validate the intent
* translate the received intent to executable actions by:
  + Performing service or network management tasks.
  + Identifying, formulating, and activating service or network management policies.
* evaluate the result/information about the intent fulfilment (e.g., the intent is initially satisfied or not) and intent assurance (e.g., the intent is continuously satisfied).

Further enhancements are proposed for Rel-18 in study TR 28.912 [i.5], including:

* intent reporting to provide detailed reporting on intent fulfilment
* capability management to allow MnS Producers to expose their intent handling capabilities to MnS Consumers

Workflow

The workflow of an intent-driven MnS consists of the following steps:

* The consumer states the intent which is to be fulfilled.
* The producer validates the intent and translates it to identify the required internal logic.
* The producer executes the compiled logic to fulfil the intent.
* The producer may report about the fulfilment result of the intent.

The intents can be fulfilled by the intent-driven MnS producer using mechanisms including among others: rule-based mechanism, closed loopt, and AI/ML based mechanisms. Different kinds of intents are applicable for different kinds of standardized interfaces. Based on roles related to 5G networks and network slicing management, following categories of intents may exist:

* Intent from communication service customer (Intent-CSC)
* Intent from communication service provider (Intent-CSP)
* Intent from network operator (Intent-NOP)

Intent Model

The Intent Information Object Class (IOC) allows MnS Consumers to manage intent expectations towards MnS Producers. Generally, a consumer may use an intent to express to the producer the need for: "an object O with characteristics S". The characteristics S reflects the requirements, goals, and contexts for an object. The object may be a 3GPP managed object like a network slice, subnetwork (e.g., radio network) or other objects like a service. The consumer may specify the same characteristics, S, for multiple objects within a single intent. Accordingly, an intent contains one or more intent expectations, each of which specifies requirements on one object or on multiple objects of the same type.

For a given intent expectation, the desired characteristics of the object(s) are the expectation targets to be achieved. The expectation targets can include the metrics that characterize the performance of the object(s) or some abstract index that expresses the behavior of the object(s). Each expectation target may be constrained to only be achieved for a very specific set of conditions as context. The context describes a set of conditions and constraints to trigger corresponding management tasks to achieve the expectation targets. For example, the consumer may state that: "ensure that *handoverFailureRate* < 2 % if Load > 80 %", where the expectation target (*handoverFailureRate* < 2 %) is to be achieved only in the context (Load > 80 %). In this example, the producer will perform handover tasks to achieve the expectation target *handoverFailureRate* < 2 %" when they observe the context "Load > 80 %". The object (s) for which a given expectation is addressed can be expressed with the expectation object's identifier.

Intent Life Cycle Management

An Intent driven MnS includes the management capabilities to support intent lifecycle management, e.g., create an intent, read an intent, update an intent, delete an intent.

Intent Driven MnS Scenarios

3GPP Rel-17 TS 28.312 [i.6] defines the following scenarios and use cases related to RAN:

* + Intent containing an expectation for delivering radio network
  + Intent containing an expectation for delivering a radio service
  + Intent containing an expectation for delivering a service
  + Intent containing an expectation on coverage performance to be assured
  + Intent containing an expectation on RAN UE throughput performance to be assured.

Further work in 3GPP Rel-18 TR 28.912 [i.5] proposes enhancements, including:

* + Intent Capabilities Handling
  + Intent Reporting
  + Intent fulfilment feasibility check
  + Intent driven approach for radio capacity assurance
  + Intent driven approach for RAN energy saving
  + Intent driven approach for 5GC management, specifically 5GC network delivering.

# 5 SMO Intent driven management Use Cases

## 5.1 Overview

The SMO contributes to the autonomous network management in OSS by supporting intent-driven management for a subset of the RAN management features. This chapter describes the RAN management use cases where intent-driven management is used.

The actors used across the different RAN Intents-driven management use cases are:

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Actor/Role | Description |
| RAN Management Intent Owner (RMIO) | An authorized SMO service consumer, responsible for formulating the RAN management Intents as per its own goals and requirements and consuming intent-based services.  NOTE: the actual owner of the intent might have own management architecture behind the RMIO which is interacting with the SMO. |
| RAN Management Intent Handler (RMIH) | An authorized SMO service producer which understands, can process and ensure fulfilment of RAN management Intents. |
| SMO | RAN Service Management and Orchestration system that offers, among other services, the RAN Intent-driven management services. |
| SME | Service defined in non-RT RIC architecture [i.3], enhanced with support for invocation, registration, and discovery services for the capabilities of the RMIHs. |

</div>

Table 5.1-1: Actors used across the different RAN Intents-driven management use cases

## 5.2 Use Case: External exposure of RAN Intent-driven management services

An SMO consumer (e.g., an E2E management system, a BSS, etc.) needs to set a RAN management Intent. In order to discover what RAN management Intents are supported by a certain SMO, the SMO consumer can inquire about the RAN Intent handling capabilities offered by an SMO, before it decides which RAN management Intent it will formulate and set with that SMO.

The SMO needs to support capabilities for the registration and discovery of the RMIHs. This can be a natural add-on to the Service Management and Exposure (SME) in the SMO, where enhancements to the SME services would accommodate the registration and discovery of information specific to the RMIHs capabilities.
The RMIHs can register information about the Intent Driven Objects they support, and the intent management operations supported, their own addressing/reachability information, and possibly other information of use for the SMO consumers.
The RAN management Intent requests received by the SMO can be handled via the SME's service invocation capabilities, which can also authorize the requests before routing them to the right RMIH (i.e., with the capability to handle the given RAN management Intent).

NOTE: There can be alternative flows, these are not analyzed in the present document.

### 5.2.1 Use Case flow: RAN management Intents capabilities discovery

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Use Case Step | Description of the Step |
| Goal | SMO exposure of the capabilities for RAN management Intent services to external SMO consumers (e.g., an E2E management system, a BSS, etc.). |
| Actors and Roles | RMIO  RMIH  SMO  SME |
| Assumptions | SMO has the SME services that support capabilities for RAN management Intents. |
| Pre-conditions | The SMO consumer is an authorized consumer of the SMO services.  RMIHs have registered their service capabilities with the SME, see use case 5.2.3. |
| Begins when | The SMO consumer (E2E management system, BSS, etc.) wants to set a RAN management Intent and needs to discover the matching capabilities supported by the SMO before deciding which RAN management Intent it will set.  The SME receives the discovery request for the RAN Management Intent capabilities supported in the SMO, with criteria set for available RAN management intents models. |
| Step 1 (M) | The SME queries its RAN management Intents capability registry using the query criteria and finds three RAN Intent Driven Objects related to RAN management intents that are supported by a RMIH. |
| Step 2 (M) | The SME returns the matches to the SMO consumer that initiated the intents capabilities discovery. |
| Ends when | The SMO consumer discovered the RAN management Intent capabilities supported in the SMO that are related to RAN management intents. |
| Exceptions | None |
| Post Conditions | The SMO consumer obtained the list of RAN management Intent capabilities supported by the SMO. |

</div>

Table 5.2.1-1: RAN management Intent discovery by external SMO consumers

### 5.2.2 Use Case flow: Handling of external RAN management Intents requests

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Use Case Step | Description of the Step |
| Goal | SMO exposure of the RAN management Intent services to external SMO consumers (e.g., an E2E management system, a BSS, etc). |
| Actors and Roles | RMIO  RMIH  SMO  SME |
| Assumptions | SMO has the SME services that support capabilities for RAN management Intents. |
| Pre-conditions | The SMO consumer (E2E management system, BSS, etc) has discovered RAN management intents capabilities supported by the SMO, as per use case 5.2.1 and has decided which RAN management Intent it will set in the SMO.  The RAN management Intent that the SMO consumer wants to set is supported by the SMO.  The SMO consumer is an authorized consumer of the SMO services. |
| Begins when | The SMO consumer acts as an RMIO and initiates a request to set a RAN management intent in the SMO (example: performance assurance expectations for a group of cells from a certain site). |
| Step 1 (M) | The SME receives the RAN Intent-driven management request and starts processing the service invocation request. |
| Step 2 (O) | The SME can perform the authorization procedure.  As example, if OAuth is used, the SME returns the authorization token to the SMO consumer, with the token scope set to allow access to the RAN management Intents related services. |
| Step 3 (M) | The SME queries its RAN Intents capability registry and finds a RMIH in SMO which has the capability and responsibility to process the received Intent. The SME forwards the RAN management Intent set request to the appropriate RMIH. |
| Ends when | The RMIH received the RAN management Intent capabilities supported in the SMO that are related to RAN performance assurance intents for a group of cells. |
| Exceptions | None |
| Post Conditions | N/A |

</div>

Table 5.2.2-1: RAN management Intent service invocation handling by SME

### 5.2.3 Use Case flow: RAN management Intents capabilities registration

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Use Case Step | Description of the Step |
| Goal | SMO handling of registration for the RMIH capabilities (including their domain responsibilities). |
| Actors and Roles | RMIH  SMO  SME. |
| Assumptions | SMO has the SME services that support capabilities for RAN management Intents.  At least one RMIH is available in the SMO. |
| Pre-conditions | The RMIH is installed and running. |
| Begins when | The RMIH has submitted a request to register its RAN management Intent handling capabilities to the SME. |
| Step 1 (M) | The SME adds the received registration information into the RAN Intents capability registry. |
| Ends when | The RMIH capabilities are successfully registered by the SME into the RAN Intents capability registry. |
| Exceptions | None |
| Post Conditions | N/A |

</div>

Table 5.2.3-1: RMIH capabilities registration with SME

## 5.3 Use Case: Intent-driven management of RAN performance assurance

An SMO consumer (e.g., an E2E management system, a BSS, etc) needs several O-RAN NFs with some specific performance assurance targets. The SMO consumer has the capability to formulate the RAN management requests using intents hence it plays the role of the RAN Management Intent Owner (RMIO). The RMIO also wants to receive reports on the status and fulfilment of the intent with a given scope, frequency of reporting and once certain milestones were reached, or events were observed.

Some examples of the RAN management intent requirements for the performance assurance service levels of O-RAN NF instances are:

* the service availability requirements (e.g., redundancy level, acceptable maximum time of service interruption, etc) to be provided,
* maximum number of UEs to be supported,
* desired coverage area or geographical regional area,
* an URLLC profile and any specific characteristics,
* granularity and specific events for the reporting, and others.

The performance assurance requirements for the desired O-RAN NFs instances, as well as the intent reporting expectations, are expressed as expectations by the RMIO and are then sent to the SMO. Assuming that the SMO receiving the RAN management Intent has also the capability to process it, then the SMO acts from here on in a RAN Management Intent Handler (RMIH) role. The RMIH automates management in the SMO and for that purpose it consumes the SMOSs available in the SMO.

The RMIH extracts the different expectations from the received intent and decomposes them into various actions for the SMO. The RMIH needs to translate the received intent expectations into known RAN PM, KPIs, CM for the O-RAN NFs, and then determines if a set of O-RAN NFs consisting of the O-RAN NFs with the characteristics and performance profiles identified does already exist.
If a set of O-RAN NFs instances with the desired performance assurance profile does not exist, or if it exists but its cloudified NF resources are at capacity so they cannot be shared with another SMO consumer, the RMIH can determine that new O-RAN NFs instances need to be created. In that case, the O-RAN NFs instances are identified, with their appropriate flavors and profiles to match the assurance requirements derived from the intent. For simplification purposes, it is assumed in this use case that the O-RUs are available and only the cloudified NFs are subjected to the intent request. The RMIH triggers and coordinates the appropriate actions within SMO, to achieve the creation of the set of O-RAN NF instances with the appropriate characteristics and performance that matches the expectations of the RAN management Intent. The RMIH continues to monitor the NFs instances throughout its lifetime (i.e., until that RAN management Intent is terminated), and takes during this time any necessary actions (CM, LCM, etc) to maintain the O-RAN NFs instances performance at a level that meets the Intent expectations.
The RMIH also provides the reporting on the status and fulfilment of the received RAN management Intent according to the reporting expectations of that Intent.

### 5.3.1 Use Case flow: Intent-driven management of RAN performance assurance

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Use Case Step | Description of the Step |
| Goal | A set of O-RAN NFs instances with given performance expectations can be provided, and sustained, by the SMO based on a RAN management Intent received from a SMO consumer. |
| Actors and Roles | RMIO.  RMIH.  SMO. |
| Assumptions | * SMO has the RMIH capabilities to handle the RAN management Intent for a set of O-RAN NFs instances performance assurance. * The RAN network is assumed to have sufficient coverage and there is no need to install new O-RUs for the area targeted by the intent. * The different types of service profiles are provisioned in SMO, including the type URLLC used in this use case. |
| Pre-conditions | * The SMO consumer (E2E management system, BSS, etc) identified the need for a gset of O-RAN NFs instances with given characteristics and performance levels. * The SMO consumer has the capabilities to formulate and use a RAN management Intent, hence can act in the role of the RMIO. * The SMO consumer (RMIO) was authorized to access the SMO services for RAN management Intents. The Use Case from clause 5.2 was executed and SMO routed the request to the RMIH that is capable to handle the RAN management Intent. * The SMO consumer (RMIO) has used the intent manager capabilities exposed by the SMO and has found that the SMO has RMIH capable to handle an intent that the RMIO wants to set. |
| Begins when | The RMIH receives the request to set a RAN management Intent that contains expectations on characteristics and performance assurance expectations for the set of O-RAN NFs instances, as well as the reporting expectations on the outcome and fulfilment of the Intent. |
| Step 1 (M) | RMIO sets a RAN management Intent to the SMO, that contains expectations on the set of O-RAN NFs instances with specific characteristics and performance levels and expects them to be assured by the SMO. |
| Step 2 (M) | The SMO processes the RAN management request received, and further acts in the RMIH role.  This step can consist in several sub-steps, to handle the Intent decomposition and translation of the given Intent expectations into appropriate O-RAN NFs and each of their PM, CM, KPIs, and/or specific characteristics to match the given expectations. There can be different services that need to be invoked within the SMO in order to realize the use case.  Note: the RMIH logic for this step can be done in various ways, ranging from more elaborate use of machine reasoning and AI/ML technologies to simpler approaches using policy-based decision making. As this is subject to implementation choices, it is not elaborated in the present document. |
| Step 3 (M) | The RMIH initiates the actuation of the identified actions by making use of the respective SMO services. These can range from requesting O-RAN NF instantiations using O2, to their configurations over O1. |
| Step 4 (M) | The RMIH provides any needed intent reporting on the outcome and status of the Intent, in accordance with the intent reporting expectations received from the RMIO. |
| Step 5 (M) | The RMIH continuously observes, evaluates, decides and actuates any required management actions with other SMO functions in order to provide the performance assurance of the set of O-RAN NFs instances per expectations.  Hence the RMIH initiates the necessary monitoring actions (e.g., PM, FM) to be able to evaluate at all times the level of fulfilment of the Intent, by consuming the appropriate SMOSs. |
| Step 6 (M) | In case any of the received PM, FM are evaluated by the RMIH to be in a breach the performance assurance expectations for the set of O-RAN NFs instances, the RMIH assesses and takes the necessary actions to rectify the situation, and to bring back the performance of the respective O-RAN NF/s at the required level/s. |
| Step 7 (M) | The RMIH provides the intent reporting on the status of the Intent, in accordance with the intent reporting expectations received from the RMIO (e.g., when a certain event occurs, regular status reporting, when certain thresholds are met, etc). |
| Ends when | The RMIO requests the termination of this RAN management Intent. |
| Exceptions | None in the present document |
| Post Conditions | N/A |

</div>

Table 5.3.1-1: RAN management Intent for performance assurance of a set of O-RAN NFs instances

## 5.4 Use Case: intent deadline

As discussed in Clause 4.1.1, an RMIO can provide an intent either for exploration purposes or for fulfilment purposes. However, for both cases, the RMIO may want to obtain the results (sent by the RMIH via intent reports) within a certain timeframe. If the RMIO does not get the results within that timeframe, the intent may not remain of interest to the RMIO anymore and therefore removed. This information can be conveyed to the RMIH, as an intent attribute, referred to as "intent termination deadline".

When the RMIO provides the intent to the RMIH, the corresponding deadline can be modelled within the intent itself. There are different ways the RMIO can specify the termination deadline. For example, it can be specified in a datetime format (e.g., DD-MM-YYYY hh:mm:ss). Alternatively, it can be set as a value to a timer that starts as soon as the RMIH receives the intent.

When the deadline is passed (or the timer expired), regardless of the state/status of the intent, the RMIH removes the intent from the system and sends a report about it to the RMIO.

### 5.4.1 Use Case Flow: intent deadline

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Use Case Step | Description of the Step |
| Goal | RMIO wants to obtain the result for handling an intent within a certain timeframe. |
| Actors and Roles | RMIO  RMIH  SMO |
| Assumptions | SMO exposes its capability for RAN management intents through the SME.  At least one RMIH is available in the SMO. |
| Pre-conditions | The RMIO is an authorized consumer of the SMO services.  The RMIO can specify an intent to be handled. |
| Begins when | The RMIO has decided to obtain the result of handling an intent within a timeframe. |
| Step 1 (M) | The RMIO provides an intent to the SMO. |
| Step 2 (M) | The SMO routes the request to the right RMIH, as per use case 5.2.2. "Use Case flow: Handling of external RAN management intents requests". |
| Step 3 (M) | The RMIH considers the intent and starts the necessary actions to handle the intent. |
| Step 4 (M) | The RMIH starts sending intent reports within the specified timeframe. |
| Ends when | * The intent is already handled by the RMIH (for fulfilment or for exploration). * The specified timeframe already passed. |
| Post Conditions | The RMIH removes the intent from the system. |

</div>

Table 5.4.1-1: Intent Deadline flow

# 6 Procedures for Intent-driven management

## 6.1 Overview

This clause describes the procedures for intent-driven management.

## 6.2 Removal of intent

An SMO consumer (e.g., an E2E management system, a BSS, etc.) has previously provided an intent containing its requirements to the RMIH within the SMO. Consequently, the SMO consumer took the role of RMIO for this intent.

If for some reason, the RMIO has decided that it does not need the requirements anymore, which were previously expressed and issued within the intent. the RMIO requests the RMIH for a removal of the intent.

On reception of the intent removal request, the RMIH within the SMO stops considering the intent in its intent assurance activities. Furthermore, it performs potentially needed cleanup actions before removing the intent.

The removal of the intent by the RMIH within the SMO is acknowledged by sending a final intent report to the RMIO by the RMIH.

### 6.2.1 Remove Intent

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Use Case Step | Description of the Step |
| Goal | RMIH retires the intent, i.e., stops considering the intent requirements in network operations. |
| Actors and Roles | RMIO  RMIH  SMO |
| Assumptions | - |
| Pre-conditions | The RMIO has previously provided the intent to the RMIH within the SMO. |
| Begins when | The RMIO decides that all expectations in the previously provided intent are not required any more. |
| Step 1 (M) | The RMIO requests a removal for this intent from the RMIH. |
| Step 2 (M) | The RMIH on reception of the remove request stops considering all expectations from this intent in a graceful way in its intent assurance. |
| Step 3 (M) | The RMIH issues a final intent report to the RMIO about the status of the intent removal. |
| Ends when | The RMIO received the final intent report about the removed intent. |
| Exceptions | None |
| Post Conditions | N/A |

</div>

Table 6.2.1-1: Remove Intent flow

## 6.3 Assessment of the potential fulfilment and outcome of an intent

An RMIO can explore what intent requirements and constraints are feasible. This means, the RMIO can explore if and to what extent an RMIH can realistically fulfill the intent. For an intent being explored RMIH is not required to fulfill the intent but assess if it would be able to do so and what level of fulfillment it could reach. The results of this assessment are reported to the RMIO.

Providing an intent without requiring fulfillment, but rather asking for hypothetical assessment of possible fulfillment is also referred to as intent probing. To distinguish what the intent is provided for, the term "provided for exploration" is used for potential fulfillment assessment, while the term "provided for operation" is used if an RMIH is asked to fulfill the intent. The term "providing an intent" refers to both without distinguishing if operation or exploration is wanted.

An RMIO provides an intent for exploration to an RMIH expecting a report about the estimated outcome of that intent, without the RMIH being required to actually take actions in the network that would fulfill the intent. After receiving an intent for evaluation, the RMIH begins to generate intent reports according to report subscription. These reports contain an estimated outcome for the provided intent. These reports would resemble intent reporting an RMIH would generate for this intent if it were provided for operation and would need to be fulfilled. Through the series of intent reports an RMIH can communicate potential outcomes to the RMIO.

This use case allows the exploration of multiple options and a continuous observation of the RMIH and its estimated intent fulfilment over time. An RMIO can observe the potential intent fulfilment an RMIH is capable of and use this information in its own decisions. In particular, the RMIO can decide what requirements to include in an intent it would provide for operation.

An intent provided for exploration is actively managed through its life cycle by the RMIO. The intent being explored can be updated on request by the RMIO. The sending of reports by the RMIH according to report subscription continues until removal of the intent is requested by the RMIO.

### 6.3.1 Probing the outcome of an intent

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Use Case Step | Description of the Step |
| Goal | RMIO wants to explore if a particular set of requirements and constraints can be fulfilled by the RMIH. |
| Actors and Roles | RMIO  RMIH  SMO |
| Assumptions | SMO exposes its capability for RAN management intents through the SME.  At least one RMIH is available in the SMO. |
| Pre-conditions | RMIO has discovered capability for RAN management intent supported by SMO, as per use case 5.2.1 "Use Case flow: RAN management intents capabilities discovery".  The RAN management intent that the RMIO wants to provide for exploration is supported by an RMIH within the SMO.  The RMIO is an authorized consumer of the SMO services. |
| Begins when | The RMIO has decided which RAN management intent it needs to explore with an RMIH. |
| Step 1 (M) | The RMIO provides an intent to the SMO for exploration. |
| Step 2 (M) | The SMO routes the request to the right RMIH, as per use case 5.2.2. "Use Case flow: Handling of external RAN management intents requests". |
| Step 3 (M) | The RMIH considers the intent and starts the assessment of the expected outcome in case the intent became an actual requirement that needs to be fulfilled. |
| Step 4 (M) | The RMIH starts sending intent reports with the expected outcomes following the reporting expectations set in the intent being probed. |
| Step 5 (O) | The RMIO requests an update of the intent. The RMIH will provide further reports considering the updated requirements. |
| Ends when | The RMIO requests the removal the intent being assessed by the RMIH, following same steps as for intent removal described in use case 5.4. |
| Exceptions | None |
| Post Conditions | N/A |

</div>

Table 6.3.1-1: Probing for the potential fulfilment of an intent

### 6.3.2 Modify the intent probing

The RMIO performs lifecycle management of the intent being explored, in a similar manner to any regular intent. The RMIO can modify the intent, setting new expectations, and/or exploring different combinations of requirements. This would be performed following the same steps as in use case 5.8*).*

## 6.4 Preferences on possible options for intents outcome

In some cases, an RMIH may find different alternative options to fulfil an intent. One of the alternatives can be better or more optimized in one aspect (with respect to some expectations within the intent) and other alternatives can be better in another aspect (with respect to other expectations). In other cases, an RMIH is not able to find any option capable to fulfil all the intent expectations but there can be some alternatives that achieve better results for certain expectation(s) compared to others.

In both situations described above the RMIH has the domain knowledge to find the alternative solutions and it has the autonomy to decide on the solution to be employed to fulfil intent expectations. However, if suitable solutions are different in the outcome, the RMIH might not have sufficient information, which can be deducted from the intent to make an optimal decision. The RMIH does (and should not) not have the domain knowledge of the RMIO's domain where the intent and its requirements originate from. Only the RMIO understands if and why a particular outcome achieved by the RMIH is preferred or not. In some cases, it can therefore be beneficial that the RMIH and RMIO engage in a collaborative assessment of the alternative solutions. An RMIH seeking evaluation of the alternative solutions is referred to as a "request for judgement" and a reply from the RMIO that contains the respective assessment of the presented alternatives is referred to as "providing of preferences".

This enables the RMIH to seek support in its decision making from the RMIO. The potential outcomes are represented by intent reports. This means the RMIH asks for judgement from the RMIO regarding which intent report the RMIO would consider to be most preferable.

The use of intent reports to represent the potential effect of a solution considered by the RMIH allows seeking judgement from the RMIO without revealing details about the solution. The RMIO does not have the domain knowledge to understand the solution as applied in the RMIH's domain, but it is able to understand and evaluate the outcome for requirements it has provided itself. Intent reports are a representation of outcomes the RMIH would be able to generate, and the RMIO would be able to evaluate. This mechanism avoids the disclosure of detailed domain information in both directions. It avoids, that details about the reason for intent requirements would be disclosed to the RMIH, and it avoids, that the details of the solution and its implementation in the RMIH's domain are disclosed to the RMIO. This means this use case allows collaborative evaluation of solutions, while preserving the fundamental separation of concerns between RMIO and RMIH.

On reception of the intent reports to be judged, the RMIO assesses its preferences and provides them to the RMIH. The preferences would be provided by the RMIO through an intent update. This means, the preference information regarding a specific judgement request is added to the intent.

The RMIO can provide its preference in several ways . For example, the RMIO can provide its preference by stating which report the RMIO prefers the most. Or, the RMIO can rank the received reports from the most preferred to least preferred. Furthermore, the RMIO can present a quantitative assessment by providing a preference score for each judged outcome.

On receiving the modified intent from the RMIO containing preferences, the RMIH maps them back to the investigated solutions and decides which to implement.

### 6.4.1 RMIO preferences for one of the offered intent options

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Use Case Step | Description of the Step |
| Goal | RMIH wants to collaboratively evaluate which is the preferred solution among different alternatives that it can offer to the RMIO. |
| Actors and Roles | RMIO  RMIH  SMO  SME according to [i.4] |
| Assumptions | SMO exposes its capability for RAN management intents through the SME.  At least one RMIH is available in the SMO.  SME in SMO has awareness of the RMIO capabilities with respect to supporting requests for collaborative assessment of solutions. |
| Pre-conditions | The RMIO has provided an intent to the RMIH.  If the RMIO supports the capabilities to receive a judgement request and to express its preferences in a collaborative exchange with an RMIH.  *Editor's Note: the registration of RMIO capabilities needs to be added under the intent capabilities registration use case.* |
| Begins when | The RMIH found a set of potential solution alternatives that would produce different outcomes regarding an intent. The RMIH decides to request the preferences on these intent outcome alternatives from RMIO's perspective. |
| Step 1 (M) | RMIH discovers the RMIO's capabilities as described in use case 5.2.3 and determines that it has the capability to receive judgement requests and express its preferences.  NOTE*:* the discovery of RMIO capabilities can be added under the intent capabilities discovery use case. |
| Step 2 (M) | The RMIH asks the RMIO for its preferences on a set of potential intent outcomes. The preferences are requested by the RMIH sending multiple intent reports (as described in use case 5.7. "Requesting intent reports and intent report generation"). Each intent report is representing the expected outcomes of an investigated solution. |
| Step 3 (M) | The RMIO considers the set of intent reports and determines its preferences on the presented outcomes, according to its own criteria. |
| Step 4 (M) | The RMIO provides its preferences containing the order of preference for the presented outcomes. |
| Step 5 (M) | The RMIH considers the preferences provided by the RMIO and uses the most preferred. |
| Ends when | The RMIH applies the previously investigated solution towards achieving the preferred intent outcome as expressed by the RMIO. |
| Exceptions | None |
| Post Conditions | N/A |

</div>

Table 6.4.1-1: Preferences regarding the possible outcome options for intents

## 6.5 Requesting intent reports and intent report generation

An RMIO can stay informed about the compliance of the network to intent through intent reports. An intent report is a data object created by an RMIH. It contains information about overall compliance of the SMO to an intent. It can furthermore contain detailed information about the status of individual expectations and the fulfilment and/or assurance conditions including e.g., observed state, and KPI values at the time of report generation.

The RMIO includes intent reporting requirements in the intent expression. These include information about events and conditions for intent report generation by the RMIH. If such an event occurs or condition is met, the RMIH will generate an intent report and sends a notification to the RMIO.

Events for intent report generation capture significant milestones in intent handling and events in intent lifecycle management. These can include for example, the decision to accept and reject intent or intent modifications, the transition of the network from being compliant to being degraded and vice versa, or the termination of intent. Furthermore, it is possible to request and generate intent reports periodically and with timing specified by RMIO. The complete list of events and milestones available for intent report requests will be determined in the normative phase.

The requirements for intent reports also allow the RMIO to refine the scope of reporting. This refers to the information that is expected to be included in an intent report. It is possible to define multiple requirements for intent reporting for the same intent. This allows the RMIO to receive notification about intent reports for the same intent but for different cases in which report generating events, conditions, and scope were different. An intent report contains references to the information in the intent about which it is reporting. Furthermore, it includes information on the SMO fulfillment of the intent overall and about each individual fulfillment of each requirement.

An intent report refers to the intent it is generated for using the unique identifier of the intent known by RMIO and RMIH.

The intent report may contain the timestamp of report generation and a unique identifier/sequence number for the report.

The intent report allows the RMIH to include additional information such as reasons behind certain actions in the intent report. For example, their provided reason can state why an intent was rejected or what caused the non-fulfilment. In the successful case, it includes fulfilment information per intent reporting request.

This use case introduces intent report sending though a notification mechanism. Whenever an intent report is ready, the RMIH sends a notification to RMIO that the intent report is ready for collection.

### 6.5.1 Requesting intent reports and intent report generation

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Use Case Step | Description of the Step |
| Goal | RMIO wants to be informed with an intent report about status of the intent request processing by the RMIH, in accordance to the report scoping stated in the intent |
| Actors and Roles | RMIO  RMIH  SMO  SME |
| Assumptions | -The RMIO is an authorized SMO consumer for intents.  - SMO has the SME services that support capabilities for RAN management Intents.  - SMO exposes capabilities to handle RAN management intents via its available RMIHs |
| Pre-conditions | - The RMIO has decided which detailed requirements to include in the intent to be sent to SMO, including the reporting requirements. The RMIO has provided an intent to the RMIH that was available in the SMO. |
| Begins when | The RMIH successfully accepted the intent, and the intent is under fulfilment. |
| Step 1 (M) | The RMIH monitors the conditions for intent report generation as stated in the intent reporting requirements. |
| Step 2 (M) | Once intent report generation conditions are met, the RMIH generates the report(s) according to the requirements. |
| Step 3 (M) | The RMIH sends a notification that an intent report has been generated and available to be collected by the RMIO. |
| Step 4 (M) | The RMIH continues to determine throughout the intent handling process when intent reports need to be sent to the RMIO, by repeating steps 1, 2 and 3. |
| Ends when | The intent is removed or when the intent reporting requirements are removed. |
| Exceptions | None |
| Post Conditions | N/A |

</div>

Table 6.5.1-1: Requesting intent reports and the intent report generation

## 6.6 Modification of requirements in an intent

The RMIO, which previously provided an intent containing its requirements, can modify the requirements within any existing intents that it is owns. This use case can be used for example if the RMIO wants to set new target KPIs for performance requirements, change the intent reporting periodicity or rate, or change any service delivery requirements, etc.

The RMIO is the only actor allowed to modify an existing intent. The RMIH within the SMO cannot modify existing intent requirements after they have been accepted, but it is responsible for keeping the RMIO updated about the intent fulfilment state and progress through intent reports as required by the RMIO.

The intent to be modified is referred to in the modification request by its unique identity known to RMIH and RMIO.

The RMIH can accept or reject the intent modification request. The acceptance or rejection of the requirements modification in an intent is reported by the RMIH. If the intent modification request is rejected, a rejection reason will be provided by the RMIH, and the original intent will remain unchanged. Examples of possible reasons for rejection are: intent with incorrect syntax, intent models required are not supported, there are no available resources to fulfil the intent after the modification, the requestor is not the RMIO responsible for that intent, among others.

If the RMIH accepts the intent modification, all requirements affected by it would be replaced by the updated information. Immediately after the acceptance of a modification, the RMIH resumes the processing of the intent according to the latest information.

### 6.6.1 Flow

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Use Case Step | Description of the Step |
| Goal | RMIO wants to modify a set of requirements in an existing intent. |
| Actors and Roles | RMIO  RMIH  SMO  SME |
| Assumptions | The RMIO is an authorized SMO consumer for intents.  SMO has the SME services that support capabilities for RAN management Intents.  SMO exposes capabilities to handle RAN management intents via its available RMIHs RMIH and RMIO know the unique ID of the Intent to be modified |
| Pre-conditions | The RMIO has previously provided the intent to an RMIH within the SMO.  The RMIO has verified that the RMIH supports intent modification.  The RMIH handling the intent to be modified is available and in operation in the SMO. |
| Begins when | The RMIO decides to modify one or more expectations within the intent. |
| Step 1 (M) | The RMIO requests the modification of the intent. It can request to add, remove or change requirements within an existing intent. |
| Step 2 (M) | The RMIH informs the RMIO that the intent modification request has been received. |
| Step 3 (M) | The RMIH starts the evaluation of the intent modification request and verifies if the new requirements can be accepted or should be rejected. |
| Step 4 (M) | The RMIH informs the RMIO about the acceptance/rejection of the modification request. |
| Step 5 (M) | The RMIH continues to send intent reports according to the reporting expectations, considering either the modified requirements (in case of modification was accepted) or the unchanged requirements (in case of modification was rejected). |
| Ends when | The RMIH has rejected or accepted the intent modification and has responded accordingly to the RMIO. |
| Exceptions | None |
| Post Conditions | N/A |

</div>

Table 6.6.1-1: Modification of existing intents

## 6.7 Intent Negotiation

In Clause 4.1.1 we gave a brief overview of different possibilities which can take place during intent negotiation between the RMIO and the RMIH. Here we discuss them in detail.

### 6.7.1 Intent feasibility check

### 6.7.2 Intent exploration

### 6.7.3 Intent fulfilment

# 7 Recommended SMO Intent driven management requirements

## 7.1 Overview

This Clause lists the requirements which are recommended for intent-driven management in SMO

## 7.2 Requirements for intent management in SMO

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Number# | | Description |
| SMO-INT\_FUN052\_01 | | The SMO (via SME) shall expose the RAN Intent-driven management services to authorized SMO consumers. |
| SMO-INT\_FUN052\_02 | | The SMO (via SME) shall provide discoverability of the RAN Intent-driven management capabilities offered by the SMO to authorized SMO consumers. |
| SMO-INT\_FUN052\_03 | | The SMO (via SME) shall provide the registration service for the RAN management Intent handlers to register their intent handling capabilities. |
| SMO-INT\_FUN052\_04 | | The RMIHs in the SMO shall register their RAN Intent management capabilities, including among others information about the Intent Driven Objects supported and reachability information of the RMIH. |
| SMO-INT\_FUN053\_01 | | The SMO shall support the capabilities to process, fulfill, and assure Intent-driven management requests for RAN management. |
| SMO-INT\_FUN053\_02 | | The SMO shall support the capabilities to provide reporting to SMO consumers on the RAN management intents they have requested to the SMO, according to the intent reporting requirements it received from the SMO consumers. |
| SMO-INT\_FUN054\_01 | | The RMIH shall support the capability to remove the intent based on request from RMIO. |
| SMO-INT\_FUN055\_01 | | The RMIH within the SMO should support the capability to assess the potential fulfilment of an intent and report it back to the RMIO. |
| SMO-INT\_FUN055\_02 | | The RMIH within the SMO should support the capability to assess the potential outcome of an intent and report it back to the RMIO. |
| SMO-INT\_FUN056\_01 | | The RMIH should be able to discover the capabilities of an RMIO. |
| SMO-INT\_FUN056\_02 | | The RMIH within the SMO should support the capability to request that an RMIO provides its preferences on different possible outcomes for an intent. |
| SMO-INT\_FUN056\_03 | | The RMIH within the SMO should support the capability to receive preferences from RMIO. |
| SMO-INT\_FUN057\_01 | The RMIO shall provide the requirements for intent reporting to the RMIH, including trigger events for reporting, scope of reporting, frequency of reporting, intent fulfilment status, intent fulfilment status change, and further content of reporting expected. | |
| SMO-INT\_FUN057\_02 | The RMIH shall provide intent reports based on the reporting requirements received from an RMIO. | |
| SMO-INT\_FUN058\_01 | | The SMO shall support that the RMIO requests to modify the intent it has provided previously |
| SMO-INT\_FUN058\_02 | | The RMIH within the SMO shall support the capability to evaluate intent modification requests from the RMIO. It shall be able to accept or reject modifications and inform the RMIO about the acceptance/rejection. |
| SMO-INT\_FUN059\_01 | | The RMIO should support the capability to specify intent termination deadline for an intent to the RMIH |
| SMO-INT\_FUN060\_02 | | The RMIH should support the capability to remove an intent from the system if the intent is not processed within the intent termination deadline |

</div>

Table 7.2-1: Requirements for intent management in SMO

# 8 SMO Intent driven management Analysis

## 8.1 Overview

## 8.2 SMO Architecture

### 8.2.1 SMO Architecture Considerations

#### 8.2.1.1 RMIH and RMIO roles support in SMO

The O-RAN SMO architecture allows support for intent-based RAN management via support of one, or both, of the RMIH and/or RMIO roles in any SMOS Producer, for the exposure of the different SMOSs. This architectural approach enables:

* Support for hierarchical intents:
  + a SMOS Producer can take on the role of the RMIH, which after decomposing a RAN management intent can further make another/next level intent-based request that is processed by another SMOS Producer that has registered the RMIH capabilities to handle the decomposed intent(s),
* Support of intents in the SMOS Producer/Consumer in both SMO framework and in rApps:
  + Any SMOS Producer/Consumer can take on the RMIH and/or RMIO roles, whether the SMOS Producer/Consumer provides SMO framework services, or it provides SMOSs realized via rApps. This implies that intent-based management support is also introduced over the R1 interface.

#### 8.2.1.2 RMIH and RMIO capabilities registration and discovery in SMO

A dynamic intent capabilities registration and discovery mechanism, which is very similar to the SME registration and discovery of SMOSs, needs to use an intent capabilities profile with standardized metadata, so it can be understood in an interoperable, multi-vendor way by SMOS Producers in the SMO, as well as by external SMO consumers taking the RMIO role. This can be a natural addition to SME, or it can be a separate (new) intents capability registry service.

That will enable a flexible addition of new RMIHs to the SMO, of new intent-based models support, and of new RMIO capabilities, via the registration of the intent capabilities profiles that can be discovered by other RMIOs and RMIHs, whether internal to SMO or external.

#### 8.2.1.3 RMIH and RMIO consumption of services and data

Any SMOS Producer that acts in an RMIH or RMIO role can consume SMO services, as well as it can consume external services (outside SMO) and external data that they might need to either process intent-based requests, or respectively to make RAN management requests via intents. Some examples of SMO services consumption are:

* DME data type registration, used by RMIHs to register intent related data, for discoverability by RMIOs,
* Consumption of any SMOSs by RMIHs, throughout the entire process of handling the intents and assuring their fulfilment,
* Consumption of any data types needed by RMIH, discovered via DME,
* Consumption of external services and/or data that is made accessible to the SMO,
* Consumption of Intent based exposure of the SMOSs.

#### 8.2.1.4 RMIH and RMIO topology hiding

The SMO's RMIHs can be hidden from the RMIOs (internal and/or external) via an intent abstraction layer, e.g., an intent proxy service. The Producer of this service would register RMIH and/or RMIO capabilities on behalf of RMIH and RMIO.

Such intent proxy service would then have to also assume the capability to route any intent-based requests to the right RMIH instances for handling. The same approach can be taken with the RMIOs, for which a similar topology hiding can be applied for requests coming from the RMIHs (intent reports, judge requests, etc).

#### 8.2.1.5 SMO Northbound exposure of RAN management via intents

Current SMO architecture in [i.1] does not show an external exposure of RAN management services, via a northbound interface. While this is possible as described in the DEC\_SMO TR [i.4], the capabilities to expose SMO services northbound via intents is now added via this report.

### 8.2.2 SMO Architecture Recommendations

The intent-based management of the RAN is exposed by SMO via intent-based northbound interfaces that need to be further specified. The support of these intent-based requests for RAN management needs to also be added to the R1 interface, to enable rApps to provide intent based services in the RMIH and/or RMIO roles. Any SMOS Producer/Consumer can expose and consume intent-based interfaces for the SMOSs they produce or consume.

Any of the SMOS Producers/Consumers can support the RMIH and/or RMIO roles.

The ORAN intent modelling is modular and extensible. The intent modelling supported by an RMIH and RMIO is composed from a mandatory common model and a number of optional models' extension, to address the use cases identified in this report. This approach enables flexible model extensions that can be added for future use cases. The metadata of the intent capabilities' profiles for RMIH and RMIO roles needs to be standardized including their support of the optional model extensions, so that these capabilities can be registered and discovered in multi-vendor environments.

The architecture details on the support for intents capabilities registration and discovery, as well as for the RMIH and RMIO topology hiding (intent proxy services) need to be specified in the SMO architecture.

## 8.3 SMO Intent-driven Management Interface

### 8.3.1 Intent Management interface approach

The intent management interface serves for the communication between a RMIO (internal or external to the SMO) and a RMIH (in the SMO). This interface needs to support the the actions of feasibility check, lifecycle management by the RMIH, and reporting of a RAN management intent to the RMIO. Additionally, this interface may be used for advanced interactions (and associated negotiations) between the RMIO and the RMIH.

### 8.3.2 Interface summary

The communication via the Intent management interface primarily involves the exchange of two types of information objects between the RMIO and the RMIH: intents and intent reports.

NOTE: the difference between use cases and capabilities as described in clause 5 will be addressed in stage 2.

### 8.3.3 Interface recommendations

Some recommendations for the next level of details of the SMO intent-driven management interface are:

* The intent management interface to be based on OpenAPI/REST.
* The interface to allow an RMIO to provide an intent either for fulfilment or for exploration to a RMIH, as indicated by use case in clause 5.5.
* The interface to allow an RMIH to send a notification to the RMIO once an intent report to the RMIO based on the reporting requirements expressed by the RMIO is ready for collection, as indicated by use case in clause 5.7.
* The interface to support different types of interactions between a RMIO and a RMIH. These interactions may include (and not limited to): requests from RMIO to find achievable outcomes by RMIH on a requirement, suggestions from RMIH on different possible alternatives on a requirement, and so on, as indicated by the use cases in clause 5.
* The interface to enable an RMIH and an RMIO to expose its capabilitites via a capability profile as part of the intent capability registration process.

# Annex: Change history/Change request (history)

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Date | Revision | Description |
| 2022.10.23 | 00.00.01 | Initial TR skeleton as approved at Madrid F2F meeting:  ATG: [ERI-2022.10.14-WG1-D-SMO-INT-TR-skeleton-proposal-v01.00.01.docx](https://protect2.fireeye.com/v1/url?k=31323334-501d5122-313273af-454445555731-c2a55a5730d24b99&q=1&e=68fa1255-bde1-4b5d-bba9-110fa1381620&u=https%3A%2F%2Furldefense.com%2Fv3%2F__https%3A%2Foranalliance.atlassian.net%2Fwiki%2Fdownload%2Fattachments%2F2217705842%2FERI-2022.10.14-WG1-D-SMO-INT-TR-skeleton-proposal-v01.00.01.docx%3Fapi%3Dv2__%3B%21%21NEt6yMaO-gk%21BkoVLSHOGFZY1MP4SjNXV0NtyhDNjSi58cFTqUe_l2-eA86pMrU5jtoVBqkX9gdQcJAJHwaMnXZhkWUd9B6T1dFProI%24)  UCTG: [ERI-2022.10.14-WG1-D-SMO-INT-TR-skeleton-proposal-v01.00.01.docx](https://protect2.fireeye.com/v1/url?k=31323334-501d5122-313273af-454445555731-01a42a15d280e1f0&q=1&e=68fa1255-bde1-4b5d-bba9-110fa1381620&u=https%3A%2F%2Furldefense.com%2Fv3%2F__https%3A%2Foranalliance.atlassian.net%2Fwiki%2Fdownload%2Fattachments%2F2217280033%2FERI-2022.10.14-WG1-D-SMO-INT-TR-skeleton-proposal-v01.00.01.docx%3Fapi%3Dv2__%3B%21%21NEt6yMaO-gk%21BkoVLSHOGFZY1MP4SjNXV0NtyhDNjSi58cFTqUe_l2-eA86pMrU5jtoVBqkX9gdQcJAJHwaMnXZhkWUd9B6T_j0TPGY%24) |
| 2023.01.30 | 00.00.02 | Incorporrated approved CR:   * [ERI-2022.11.04-ORAN-SMO-INT-CR-0032 Intents\_Terms\_v02.docx](https://oranalliance.atlassian.net/wiki/download/attachments/2217705842/ERI-2022.11.04-ORAN-SMO-INT-CR-0032%20Intents_Terms_v02.docx?api=v2) |
| 2023.05.16 | 00.00.03 | Incorporated approved CRs:   * [ERI.AO-2023.01.19-ORAN-SMO-INT-CR-0040 UseCaseOverview\_v04.docx](https://oranalliance.atlassian.net/wiki/download/attachments/2844918001/ERI.AO-2023.01.19-ORAN-SMO-INT-CR-0040%20UseCaseOverview_v04.docx?api=v2) * [ERI-2023.01.19-ORAN-SMO-INT-CR-0041 UseCase\_External\_exposure\_RANIntentsMgmt\_v02.docx](https://oranalliance.atlassian.net/wiki/download/attachments/2217705842/ERI-2023.01.19-ORAN-SMO-INT-CR-0041%20UseCase_External_exposure_RANIntentsMgmt_v02.docx?api=v2) * [ERI-2023.02.07-ORAN-SMO-INT-CR-0042 UseCaseAssurance\_intent\_for\_ORAN\_NFs\_v03.docx](https://oranalliance.atlassian.net/wiki/download/attachments/2217705842/ERI-2023.02.07-ORAN-SMO-INT-CR-0042%20UseCaseAssurance_intent_for_ORAN_NFs_v03.docx?api=v2) |
| 2023.07.31 | 00.00.04 | Incorporated approved CRs:   * [ERI.AO-2023.07.10-WG1-CR-0052-SMO\_INT-UC\_Intent\_Concepts\_Industry\_3GPP-v03.docx](https://oranalliance.atlassian.net/wiki/download/attachments/2845999442/ERI.AO-2023.07.10-WG1-CR-0052-SMO_INT-UC_Intent_Concepts_Industry_3GPP-v03.docx?api=v2) * [ERI-2023.05.15-WG1-CR-0054-ORAN-SMO-INT\_UC\_Intent Termination\_v04.docx](https://oranalliance.atlassian.net/wiki/download/attachments/2845999442/ERI-2023.05.15-WG1-CR-0054-ORAN-SMO-INT_UC_Intent%20Termination_v04.docx?api=v2) * [ERI-2023.05.15-WG1-CR-0055-ORAN-SMO-INT\_UC\_Intent\_Probing\_v04.docx](https://oranalliance.atlassian.net/wiki/download/attachments/2845999442/ERI-2023.05.15-WG1-CR-0055-ORAN-SMO-INT_UC_Intent_Probing_v04.docx?api=v2) * [ERI-2023.05.15-WG1-CR-0056-SMO-INT\_UC\_Intent\_Negotiation\_Judge\_v03.docx](https://oranalliance.atlassian.net/wiki/download/attachments/2845999442/ERI-2023.05.15-WG1-CR-0056-SMO-INT_UC_Intent_Negotiation_Judge_v03.docx?api=v2) |
| 2023.09.08 | 00.00.05 | Incorporated approved CR:   * [NOK-2023.07.27-WG1-CR-0022\_SMO-INT\_Basic\_intent\_concepts\_v01\_rev01.docx](https://oranalliance.atlassian.net/wiki/download/attachments/2845999442/NOK-2023.07.27-WG1-CR-0022_SMO-INT_Basic_intent_concepts_v01_rev01.docx?api=v2) |
| 2023.10.25 | 00.00.06 | Incorporated approved CRs:   * ERI-2023.07.31-WG1-CR-0059-SMO-INT\_UC\_Reporting\_v03 |
| 2023.11.02 | 00.00.07 | Incorporated approved CRs:   * [ERI-2023.09.04-WG1-CR-0057-SMO-INT\_UC\_Intent\_Modification-v04.docx](https://oranalliance.atlassian.net/wiki/download/attachments/2845999442/ERI-2023.09.04-WG1-CR-0057-SMO-INT_UC_Intent_Modification-v04.docx?api=v2) * [ERI-2023.04.17-WG1-CR-0043-SMO-INT-Intent\_Concepts\_Industry\_TMF\_v02.docx](https://oranalliance.atlassian.net/wiki/download/attachments/2845999442/ERI-2023.04.17-WG1-CR-0043-SMO-INT-Intent_Concepts_Industry_TMF_v02.docx?api=v2) |
| 2023.11.06 | 00.00.08 | Incorporated approved CRs:   * ERI.AO-2023.10.27-WG1-CR-0087-SMO-INT\_Overview in 4.1. SMO Intent driven management concepts-v02 * ERI-2023.10.10-ORAN-SMO-INT-CR-0088-SMOArchitectureConsiderations\_v03 * ERI-2023.10.10-ORAN-SMO-INT-CR-0089-SMOArchitectureRecommendations\_v03 * ERI.AO-2023.10.27-WG1-CR-0099-SMO-INT\_7.3.1\_Intent\_Management\_Interface\_Approach-v03 * ERI-2023.10.23-WG1-CR-0100-SMO-INT\_7.3.2\_Interface\_Summary-v03 * ERI.AO-2023.10.27-WG1-CR-0101-SMO-INT\_7.3.3\_Interface\_Recommendations-v03 * ERI-2023.10.30-WG1-CR-0105-SMO-INT\_Removal\_stage2\_sections-v01   Editorial:   * removed the Annex examples inherited from the template since they were not used * removed leftover ENs under headings (originally indicating intended scoping of the sections - in 6, 7) |
| 2023.11.14 | 00.00.09 | Minor editorial corrections: replaced comma with period, space missing between words, etc |
| 2023.11.22 | 00.00.10 | Incorporated editorial comments from WG approval: [**here**](https://oranalliance.atlassian.net/wiki/spaces/UCOA/pages/2699952355/Comments%2Bon%2BCRs%2Bfor%2BSMO-INT%2BSMO%2BIntents-driven%2BManagement)towards v01.00 |
| 2024.03.18 | 01.00.01 | Incorporrated approved CR:   * [NOK.AO-2024.02.22-WG1-CR-0038\_SMO-INT\_inconsistency\_fix.docx](https://oranalliance.atlassian.net/wiki/download/attachments/2844918001/NOK.AO-2024.02.22-WG1-CR-0038_SMO-INT_inconsistency_fix.docx?api=v2) |
| 2024.03.19 | 01.00.02 | Incorporated editorial comments from WG approval: [here](https://oranalliance.atlassian.net/wiki/spaces/UCOA/pages/3192160272/Comments%2Bon%2BSMO-INT%2BSMO%2BIntents-driven%2BManagement%2BTR%2Bv00.01.xx) |
| 2024.03.27 | 01.00.03 | Incorporated last 2 comments from WG approval: [here](https://oranalliance.atlassian.net/wiki/spaces/UCOA/pages/3192160272/Comments%2Bon%2BSMO-INT%2BSMO%2BIntents-driven%2BManagement%2BTR%2Bv00.01.xx) towards v02.00 |
| 2024.07.09 | 02.00.01 | Incorporated two approved CRs:   * [NOK-2024.06.13-WG1-CR-0255\_SMO-INT\_intent\_definition\_v02.docx](https://oranalliance.atlassian.net/wiki/download/attachments/2844918001/NOK-2024.06.13-WG1-CR-0255_SMO-INT_intent_definition_v02.docx?api=v2) * [NOK-2024.06.05-WG1-CR-0252\_SMO-INT\_intent\_removal\_v02.docx](https://oranalliance.atlassian.net/wiki/download/attachments/2844918001/NOK-2024.06.05-WG1-CR-0252_SMO-INT_intent_removal_v02.docx?api=v2) |
| 2024.07.15 | 02.00.02 | Incorporated one approved CR:   * [NOK.AO-2024.06.11-WG1-CR-0253\_SMO-INT\_intent\_negotiation\_overview\_v02\_rev02.docx](https://eur02.safelinks.protection.outlook.com/?url=https%3A%2F%2Foranalliance.atlassian.net%2Fwiki%2Fdownload%2Fattachments%2F2845999442%2FNOK.AO-2024.06.11-WG1-CR-0253_SMO-INT_intent_negotiation_overview_v02_rev02.docx%3Fapi%3Dv2&data=05%7C02%7Cjoerg.niemoeller%40ericsson.com%7C4968905b53174727b24908dca4a8a1ed%7C92e84cebfbfd47abbe52080c6b87953f%7C0%7C0%7C638566292150273574%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C0%7C%7C%7C&sdata=u1JSmM5fnFvNi9vJy3gLrGVK0WMBGUl7CAZFUCazGFI%3D&reserved=0) |
| 2024.07.15 | 02.00.03 | Corrected chapter number of 4.1.1 |
| 2024.07.25 | 02.00.04 | Incorporated last comments from WG approval: [here](https://oranalliance.atlassian.net/wiki/spaces/UCOA/pages/3401220938/Comments%2Bon%2BSMO%2BIntents-driven%2BManagement%2BTR%2Bv00.02.xx) towards v03.00   * Updated document number, title page and change history to latest TR template |
| 2024-11-15 | 03.00.01 | Incorporated approved CRs:  [NOK-2024.06.14-WG1-CR-0256\_SMO-INT\_intent\_negotiation\_skeleton\_v03\_rev01.docx](https://oranalliance.atlassian.net/wiki/download/attachments/2844918001/NOK-2024.06.14-WG1-CR-0256_SMO-INT_intent_negotiation_skeleton_v03_rev01.docx?api=v2)  [NOK-2024.06.26-WG1-CR-0258\_SMO-INT\_intent\_judge\_improvement\_v03\_rev02.docx](https://oranalliance.atlassian.net/wiki/download/attachments/2844918001/NOK-2024.06.26-WG1-CR-0258_SMO-INT_intent_judge_improvement_v03_rev02.docx?api=v2)  [NOK-2024.07.18-WG1-CR-0260\_SMO-INT\_intent\_deadline\_correction\_v03.docx](https://oranalliance.atlassian.net/wiki/download/attachments/2845999442/NOK-2024.07.18-WG1-CR-0260_SMO-INT_intent_deadline_correction_v03.docx?api=v2)  [NOK-2024.07.25-WG1-CR-0261\_SMO-INT\_intent\_deadline\_use\_case\_flow\_v03.docx](https://oranalliance.atlassian.net/wiki/download/attachments/2845999442/NOK-2024.07.25-WG1-CR-0261_SMO-INT_intent_deadline_use_case_flow_v03.docx?api=v2) |
| 2024-11-18 | 03.00.02 | Incorporated last comments from WG approval: [here](https://oranalliance.atlassian.net/wiki/spaces/UCOA/pages/3661856770/Comments%2Bon%2BSMO%2BIntents-driven%2BManagement%2BTR%2Bv03.00.xx) towards v04.00 |

</div>
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG1.TR.SMO-INT-R004-v04.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG1.TR.SMO-INT-R004-v04.00.docx).

---

* toc
{:toc}
