---
title: O-RAN.WG10.TS.TE&IV-CIMI.0-R004-v03.00.docx.md
author: O-RAN Alliance, WG10
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG10.TS.TE%26IV-CIMI.0-R004-v03.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG10.TS.TE&IV-CIMI.0-R004-v03.00.docx).

---

* toc
{:toc}

---

![webwxgetmsgimg (7).jpeg]({{site.baseurl}}/assets/images/9c69df009b87.jpg)O-RAN.WG10.TS.TE&IV-CIMI.0-R004.v03.00

<div class="table-wrapper" markdown="block">

|  |
| --- |
| *Technical Specification* |
|  |
| **O-RAN Work Group 10 (OAM for O-RAN)**  **Topology Exposure & Inventory Common Information Models**  **and Interface Specification - Stage 2** |
| Copyright (C) 2025 by the O-RAN ALLIANCE e.V.  The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.  O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany Register of Associations, Bonn VR 11238, VAT ID DE321720189 |

</div>

Contents

Foreword 3

Modal verbs terminology 3

Executive summary 3

Introduction 3

1. Scope 4
2. References 4
   1. Normative references 4
   2. Informative references 5
3. Definition of terms, symbols and abbreviations 5
   1. Terms 5
   2. Symbols 5
   3. Abbreviations 5
4. TE&IV Information Models 6
   1. Introduction 6
   2. TE&IV Information Modeling Guidelines 6
      1. Modeling approach, Unified Modeling Language (UML) 6
      2. Modeling guidelines 11
   3. TE&IV Information Model Definitions 12
      1. Namespace ORAN.SMO.TEIV.RAN 12
      2. Namespace ORAN.SMO.TEIV.Cloud 17
      3. Namespace ORAN.SMO.TEIV.REL-RAN-Cloud 22
   4. TE&IV Service Operations 30
      1. Introduction 30
      2. Operations and Notification 31

Annex A (Informative): Model views 37

* 1. Model View: O-RAN TE&IV Network Function Deployment View (informative) 37

Annex (informative): Change History 40

# Foreword

This Technical Specification (TS) has been produced by WG10 of the O-RAN Alliance.

The content of the present document is subject to continuing work within O-RAN and may change following formal O-RAN approval. Should the O-RAN Alliance modify the contents of the present document, it will be re-released by O-RAN with an identifying change of version date and an increase in version number as follows:

version xx.yy.zz where:

xx: the first digit-group is incremented for all changes of substance, i.e. technical enhancements, corrections, updates, etc. (the initial approved document will have xx=01). Always 2 digits with leading zero if needed.

yy: the second digit-group is incremented when editorial only changes have been incorporated in the document. Always 2 digits with leading zero if needed.

zz: the third digit-group included only in working versions of the document indicating incremental changes during the editing process. External versions never include the third digit-group. Always 2 digits with leading zero if needed.

# Modal verbs terminology

In the present document "**shall**", "**shall not**", "**should**", "**should not**", "**may**", "**need not**", "**will**", "**will not**", "**can**" and "**cannot**" are to be interpreted as described in clause 3.2 of the O-RAN Drafting Rules (Verbal forms for the expression of provisions).

"**must**" and "**must not**" are **NOT** allowed in O-RAN deliverables except when used in direct citation.

# Executive summary

The present document specifies the TE&IV Information Models suited to realize the use cases of TE&IV Service Consumer as specified in [1].

# Introduction

The O-RAN TE&IV Information Models provide the logical representation of O-RAN specific TE&IV resources. This includes:

* Topology Entities intended to convey classes that realizes TE&IV resources.
* Topology Relationships intended to realize relationship between Topology Entities.
* Enumerations which provide a predefined list of choices.
* Data Types which provide structure to the elements of TE&IV resources.
* Notifications which is the information conveyed in a message from TE&IV Service Producer to TE&IV Service Consumer.

# Scope

This document specifies the Information Model used to support TE&IV services within the SMO. The TE&IV Information Models described in this document are structured using the concept of Namespaces. In addition, relevant sections in this document include information imported from existing standards and industry work that serve as a basis for O-RAN TE&IV.

The Annex section of this document describes multiple views of the TE&IV Information Models that supports TE&IV Service Consumer use cases [1] within the SMO.

The TE&IV Information Models specified in this present document is part of a "modeling continuum" that aims to establish and evolve an O-RAN TE&IV Information Model from which O-RAN TE&IV Data Models may be generated manually or with a set of tools. However, the O-RAN TE&IV Data Models is out of scope of this present document and will be specified in a different specification.

# References

## Normative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies. In the case of a reference to a 3GPP document, a non-specific reference implicitly refers to the latest version of that document in Release 18.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following referenced documents are necessary for the application of the present document.

1. O-RAN TS: "Topology Exposure and Inventory Management Services Use Cases and Requirement Specification"
2. 3GPP TS 32.156: Telecommunication management; Fixed Mobile Convergence (FMC) Model repertoire, version 17.5.0, December 2023
3. OMG formal/2017-12-05: OMG(R) Unified Modeling Language(R) (OMG UML(R)), version 2.5.1
4. 3GPP TS 32.160: Management and orchestration; Management service template, version 17.9.0, September 2023
5. 3GPP TS 28.541: 3rd Generation Partnership Project; Technical Specification Group Services and System Aspects; Management and orchestration; 5G Network Resource Model (NRM), version 17.13.0, December 2023
6. O-RAN TS: " O-RAN Architecture Description" ("OAD")
7. O-RAN TS: "O2 Interface General Aspects and Principles"
8. O-RAN TS: "O2dms Interface Specification: Profile based on ETSI NFV Protocol and Data Models"
9. O-RAN TS: "O2dms Interface Specification: Kubernetes Native API Profile for Containerized NFs"
10. O-RAN TS: "Cloudification and Orchestration Use Cases and Requirements for O-RAN Virtualized RAN"
11. O-RAN TS: "O-RAN Operations and Maintenance Architecture"
12. O-RAN TS: "E2 Application Protocol (E2AP)"
13. 3GPP TS 28.658: 3rd Generation Partnership Project; Technical Specification Group Services and System Aspects; Telecommunication management; Evolved Universal Terrestrial Radio Access Network (E-UTRAN) Network Resource Model (NRM) Integration Reference Point (IRP); Information Service (IS)
14. IETF RFC 8141: "Uniform Resource Names (URNs)"
15. O-RAN TS: "Open Fronthaul Management Plane Specification"

## Informative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following referenced documents are not necessary for the application of the present document, but they assist the user with regard to a particular subject area.

[i.1] 3GPP TR 21.905: "3rd Generation Partnership Project; Technical Specification Group Services and System Aspects; Vocabulary for 3GPP Specifications"

# Definition of terms, symbols and abbreviations

## Terms

For the purposes of the present document, the terms given in [i.1] and the following apply:

**Information Model:** a representation of concepts and the relationships, constraints, rules, and operations to specify data semantics for a chosen domain of discourse, it specifies relations between objects, can provide sharable, stable, and organized structure of information requirements or knowledge for the domain context.

**Namespace:** a logical grouping of named elements specified, to prevent name collisions across named elements imported and associated from other specifications to support the independent lifecycle of its representation in the TE&IV Information Model.

**Topology Entity:** is a modelling construct that represents TE&IV resources useful to a Topology and Inventory use case [1].

**Topology Relationship:** is a modelling construct that represents the relationship between Topology Entities useful to a Topology and Inventory use case [1].

**Domain**: a logical grouping of Topology Entities and/or Topology Relationships.

## Symbols

Void

## Abbreviations

For the purposes of the present document, the following abbreviations apply: TEC Topology Entity Class

TRC Topology Relationship Class

# TE&IV Information Models

## Introduction

The TE&IV Information Models described in this specification exposes the Topology Entities and Topology Relationships of the TE&IV resources as defined in [1].

## TE&IV Information Modeling Guidelines

### Modeling approach, Unified Modeling Language (UML)

The TE&IV Information Models shall use the Unified Modeling Language(TM) (UML(R)) version 2.5.1 [3] from the Object Management Group (OMG).

UML provides a rich set of concepts, graphical notations, and model elements to model distributive systems. 3GPP TS 32.156

[2] provides the necessary and sufficient set of UML notations and model elements, including the ones built by the UML extension mechanism <<stereotype>> to model network management systems and their managed nodes. These conventions are applied to the TE&IV Information Model.

The TE&IV Information Model also defines UML notation, model elements and <<stereotypes>> which shall be used to model behaviours of the Topology Entity and Topology Relationship.

The TE&IV Information Model uses embedded PlantUML for diagraming and the relationships are modeled using UML Class diagram conventions.

O-RAN TE&IV Information Models shall also follow methodology documented in 3GPP TS 32.160 [4] Clause 5.2.

#### Model elements and notation

##### General

The UML graphical notation in this document is only used to represent the Topology Entity and Topology Relationship model elements.

UML properties as defined in [3] clause 9.5 are referred in this document and shall be used only for TE&IV Information Model.

##### Basic model elements

UML [3] has defined a number of basic model elements. This subclause lists the subset selected for use in TE&IV Information Model.

The characteristics defined in UML [3] clause 11.4 is applicable to TE&IV Information Model. However, in this specification, classes may or may not have attributes and the graphical notation of a class may show a suppressed attribute (middle) compartment even if the class has attributes, as shown in figure below. The operation (bottom) compartment is also suppressed.

![]({{site.baseurl}}/assets/images/185ca05eb270.png)

Figure 4.2.1.1.2-1: Basic model elements

##### Attribute

Description

In UML [3], an attribute is a typed element of a class that is represented by a property. The properties listed in this section represents the attributes of a Topology Entity and Topology Relationship class.

Table 4.2.1.1.3.1-1 below lists the adaptations of the attribute properties and its values applicable for TE&IV Information Model when re-using the attribute properties specified in 3GPP TS 32.156 [2] clause 5.2.1.

Table 4.2.1.1.3.1-1: TE&IV Information Model valid attribute values

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Property name** | **TE&IV Adaptations** |
| type | This property and its description, legal values  shall be supported |
| allowedValues | This property and its description, legal values  shall be supported |
| defaultValue | This property and its description, legal values  shall be supported |
| multiplicity | This property and its description, legal values  shall be supported |
| isOrdered | This property and its description, legal values  shall be supported |
| isUnique | This property and its description, legal values  shall be supported |
| isNullable | Not required to be supported |
| passedById | This property and its description, legal values  shall be supported |
| lifecycleStatus | Not required to be supported |
| isInvariant | This property and its description, legal values  shall be supported |
| isWritable | This property and its description, legal values shall be supported. However, A "isWritable: True" property might be restricted by access  control. |
| isReadable | This property and its description, legal values  shall be supported |
| isNotifyable | This property and its description, legal values  shall be supported |
| supportQualifier | This property and its description, legal values  shall be supported |

</div>

Example

This example shows three attributes, i.e., x, y,and z, listed in the attribute (the second) compartment of the class. However, as mentioned in 4.2.1.1.2, the attribute compartment (middle) can be suppressed.

![]({{site.baseurl}}/assets/images/eebbfbbe3972.jpg)

Figure 4.2.1.1.3.2-1: Attribute notation

Name style

As defined in clause 5.2.1.3 of 3GPP TS 32.156 [2].

##### Association Relationship

Description

An association relationship class is a modelling construct that represents potentially complex series of associations that may cross domain boundaries. These classes are identifiable, searchable, have attributes and a record of the entities (and potentially configuration/associations) that make up their source.

Association relationship classes are appropriate for use to show a relationship between different Topology Entities [see clause 4.2.1.1.2] through the Topology Relationship class [see clause 4.2.1.1.3]. Each association relationship class has properties such as role by using aSide and bSide relationships, multiplicity, and navigability as shown in the example clause 4.2.1.1.4.2.

For a relationship, the following rules apply:

The relationship class names shall have the form "<X>\_{REL}\_<Y>", where <X> represents the TEC at the aSide of the relationship, <Y> represents the TEC at the bSide of the relationship, and {REL} is a transient verb representing the relationship between <X> and <Y>. e.g., NFDeployment\_serves\_ODUFunction.

The aSide is considered the originating side of the relationship. The bSide is considered the terminating side of the relationship. The order of aSide and bSide is of importance and shall not be changed once defined. Both aSide and bSide are defined on a topology entity type (e.g., OCUCPFunction, NFDeployment) and are given a role.

A role defined to the aSide topology entity type indicates navigation from the aSide to the bSide. Similarly, a role defined to the bSide topology entity type indicates navigation from the bSide to the aSide. e.g., serviced-oduFunction represents the aSide association and serving-nfDeployment representing the bSide association.

Example

For TE&IV Information model, the example (Figure 4.2.1.1.4.2-1) shows a unidirectional association (shown with an open arrow at the target model element end) in that only the source model element has a pointer to the target model element and not vice-versa.

In this example (Figure 4.2.1.1.4.2-1), both Topology Entity classes (AbcFunction and XyzFunction) are related through a separate relationship class named AbcXyzRelation class. By default, the aSide of the relationship is considered when relating its associated Topology Entity classes.

![]({{site.baseurl}}/assets/images/027980915d74.png)

Figure 4.2.1.1.4.2-1: Association Relationship notation

However, the figure 4.2.1.1.4.2-1 can also be represented in a simpler form with only the relationship class name and is not necessary to mention the role such as aSide and bSide relationship names, as shown in the below figure 4.2.1.1.4.2-2.

![]({{site.baseurl}}/assets/images/812dbcb68ba3.png)

Figure 4.2.1.1.4.2-2: Simple Association Relationship notation

Name style

The name shall use the same style as used in << TopologyRelationshipClass >> clause 4.2.1.2.3.3.

##### Abstract class

Description

An abstract class is a generalized representation of Topology Entity and Topology Relationship classes. An abstract class cannot be instantiated.

This modelled element has the same properties as class. See 4.2.1.1.2.

Example

This example (Figure 4.2.1.1.5-1) shows that *AbcFunction\_* of stereotype TopologyEntityClass is an abstract class. It is a generalization of both AbcFunction1 and AbcFunction2.

![]({{site.baseurl}}/assets/images/df683944a3b4.png)

Figure 4.2.1.1.5-1: Abstract class notation for Topology Entity

This example (Figure 4.2.1.1.5-2) shows that *XyzFunction\_* of stereotype TopologyRelationshipClass is an abstract class. It is a generalization of both XyzFunction1 and XyzFunction2.

![]({{site.baseurl}}/assets/images/939aa7ecdc3f.png)

Figure 4.2.1.1.5-2: Abstract class notation for Topology Relationship

Name style

The name shall use the same style as used in TopologyEntityClass and TopologyRelationshipClass as specified in clauses 4.2.1.2.2.3 and 4.2.1.2.3.3. The name shall be in italics and its last character shall be an underscore.

#### Stereotype

##### Description

Subclause 4.2.1 listed the UML defined basic model elements. UML defined a stereotype concept allowing the specification of simple or complex user-defined model elements.

This subclause lists all allowable stereotypes for TE&IV Information Model.

The names of stereotypes shall be chosen such that they do not clash with any stereotype defined in O-RAN.

The characteristics defined in subclause 5.3.0 of 3GPP TS 32.156 [2] is applicable to TE&IV Information Model elements i.e, as per the clause 5.3.0 of 3GPP TS 32.156 [2] "For each stereotype model element listed, there are three parts. The first part contains its description. The second part contains its graphical notation examples, and the third part contains the rule, if any, recommended for labelling or naming it".

##### <<TopologyEntityClass>>

Description

The << TopologyEntityClass >> is identical to UML *class* [3] clause 11.4.3.1 which specifies a Topology Entity Resource including properties, attributes and allows inheritance but it does not include/define methods or operations.

Example

This example (figure 4.2.1.2.2.2-1) shows a class AbcFunction << TopologyEntityClass >>.

![]({{site.baseurl}}/assets/images/c7836e8d2617.png)

Figure 4.2.1.2.2.2-1: << TopologyEntityClass >> notation

This example (figure 4.2.1.2.2.2-2) shows an abstract class *AbcFunction\_* << TopologyEntityClass >>.

![]({{site.baseurl}}/assets/images/8907abe64f2a.png)

Figure 4.2.1.2.2.2-2: Abstract class << TopologyEntityClass >> notation

Name style

For << TopologyEntityClass >> name, use the same style as defined in clause 5.3.2.3 of 3GPP TS 32.156 [2].

##### <<TopologyRelationshipClass>>

Description

The <<TopologyRelationshipClass>> is identical to UML *class* [3] clause 11.4.3.1 which specifies a Topology Relationship between different Topology Entities including properties, attributes and allows multiple inheritance but it does not include/define methods or operations.

Example

This example shows a class AbcXyzRelation <<TopologyRelationshipClass>>.

![]({{site.baseurl}}/assets/images/537efcf8929e.png)

Figure 4.2.1.2.3.2-1: <<TopologyRelationshipClass>> notation

This example shows an abstract class *AbcXyzRelation*\_ <<TopologyRelationshipClass>>.

![]({{site.baseurl}}/assets/images/9849e7db646d.png)

Figure 4.2.1.2.3.2-2: Abstract class <<TopologyRelationshipClass>> notation

Name style

For <<TopologyRelationshipClass>> name, use the same style as defined in clause 5.3.2.3 of 3GPP TS 32.156 [2].

### Modeling guidelines

The TE&IV Information Models references concepts from each of the other O-RAN Information Model Namespaces by adding and removing attributes, entities, and relationships to serve the needs of the SMO use cases and services. TE&IV Information Models use multiple separate Namespaces to support independent lifecycle of loosely coupled topology and inventory concepts.

The definitions and mapping involved with the TE&IV resources created within O-RAN TE&IV shall follow the below mentioned guidelines:

* shall be defined in a TE&IV namespace
* shall follow the 3GPP style when defining its identity and attributes [5]
* shall maintain a standard mapping to existing O-RAN definitions within O-RAN namespaces
* if it is a 1:1 mapping with other namespace resource, not limited to O-RAN,
  + the resource name shall be reused exactly
  + the identities used in the TE&IV resources shall encapsulate the type of the instance identifier and the instance identifier of the resource defined in other source namespaces
* if it is a 1:N mapping with other namespace resource, not limited to O-RAN,
  + the resource name shall begin with O-RAN prefix "ORT-"
  + the identities used in the TE&IV resources shall be generated within TE&IV and represented using a TE&IV specified type of the instance identifier and the generated instance identifier of the resource
  + the generated identities to map the TE&IV instance identifier to the source shall be preserved along with the identity of the source.

## TE&IV Information Model Definitions

### Namespace ORAN.SMO.TEIV.RAN

#### Namespace overview

This namespace contains the Topology Entities and Topology Relationship in the RAN Logical domain, which represents the functional capability of the deployed RAN that are relevant to realise use cases of TE&IV Service Consumer as specified in [1].

#### Imported associated information

##### Imported information entities and local labels

Imported information entities and local labels is not defined in the present version of the document.

##### Associated information entities and local labels

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Label reference** | **Local label** |
| TS 28.541 [5], IOC, GNBDUFunction | GNBDUFunction |
| TS 28.541 [5], IOC, GNBCUCPFunction | GNBCUCPFunction |
| TS 28.541 [5], IOC, GNBCUUPFunction | GNBCUUPFunction |

</div>

#### Class diagram

##### Relationships

Relationships are not defined in the present version of the document.

##### Inheritance

@startuml skin rose

skinparam ClassStereotypeFontStyle normal skinparam style strictuml

hide empty members

set namespaceSeparator none namespace ORAN.SMO.TEIV.RAN {

abstract class ORANNetworkFunction\_ class ORUFunction

class ODUFunction class OCUCPFunction

class OCUUPFunction class NearRTRICFunction

<div class="table-wrapper" markdown="block">

ORANNetworkFunction\_ <|-- ORUFunction ORANNetworkFunction\_ <|-- ODUFunction ORANNetworkFunction\_ <|-- OCUCPFunction ORANNetworkFunction\_ <|-- OCUUPFunction ORANNetworkFunction\_ <|-- NearRTRICFunction

</div>

}

@enduml

![Generated by PlantUML]({{site.baseurl}}/assets/images/ab27ab42ea52.png)

Figure 4.3.1.3.2-1: ORAN SMO TE&IV RAN inheritance view

#### Class definitions

##### ORUFunction

Definitions

This class provides the TE&IV resource representation of O-RU O-RAN Network Function using the equivalent concept as defined in clause 5 of O-RAN.WG1.OAD [6].

Attributes

The ORUFunction TEC includes the attributes inherited from *ORANNetworkFunction\_* and have the following attributes:

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Attribute Name** | **S** | **isReadable** | **isWritable** | **isInvariant** | **isNotifyable** |
| oruId | M | T | F | F | T |

</div>

Attribute constraints

None.

Notifications

There is no notification defined.

State diagram

None.

##### NearRTRICFunction

Definitions

This class provides the TE&IV resource representation of Near-RT RIC O-RAN Network Function using the equivalent concept as defined in clause 5 of O-RAN.WG1.OAD [6].

Attributes

The NearRTRICFunction TEC includes the topology attributes inherited from *ORANNetworkFunction\_* and have the following attributes:

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Attribute Name** | **S** | **isReadable** | **isWritable** | **isInvariant** | **isNotifyable** |
| pLMNId | M | T | F | F | T |
| nearRtRicId | M | T | F | F | T |

</div>

Attribute constraints

None.

Notifications

There is no notification defined.

State diagram

None.

##### OCUCPFunction

Definitions

This class provides the TE&IV resource representation of O-CU-CP Network Function using the equivalent concept as defined in clause 5 of O-RAN TS OAD [6].

NOTE: The management characteristics of the O-CU-CP O-RAN NF is represented by the IOC GNBCUCPFunction as specified in 3GPP NR NRM model, as per 3GPP TS 28.541 [5].

Attributes

The OCUCPFunction TEC includes the attributes inherited from *ORANNetworkFunction\_* and have the following attributes:

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Attribute Name** | **S** | **isReadable** | **isWritable** | **isInvariant** | **isNotifyable** |
| gNBCUName | O | T | F | F | T |
| gNBId | M | T | F | F | T |
| gNBIdLength | M | T | F | F | T |
| pLMNId | M | T | F | F | T |

</div>

Attribute constraints

None.

Notifications

There is no notification defined.

State diagram

None.

##### OCUUPFunction

Definitions

This class provides the TE&IV resource representation of O-CU-UP Network Function using the equivalent concept as defined in clause 5 of O-RAN.WG1.OAD [6].

NOTE: The management characteristics of the O-CU-UP O-RAN NF is represented by the IOC GNBCUUPFunction as specified in 3GPP NR NRM model, as per 3GPP TS 28.541 [5].

Attributes

The OCUUPFunction TEC includes the attributes inherited from *ORANNetworkFunction\_* and have the following attributes:

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Attribute Name** | **S** | **isReadable** | **isWritable** | **isInvariant** | **isNotifyable** |
| gNBId | M | T | F | F | T |
| gNBIdLength | M | T | F | F | T |
| pLMNIdList | M | T | F | F | T |

</div>

Attribute constraints

None.

Notifications

There is no notification defined.

State diagram

None.

##### ODUFunction

Definitions

This class provides the TE&IV resource representation of O-DU Network Function using the equivalent concept as defined in clause 5 of O-RAN.WG1.OAD [6].

NOTE: The management characteristics of the O-DU O-RAN NF is represented by the IOC GNBDUFunction as specified in 3GPP NR NRM model, as per 3GPP TS 28.541 [5].

Attributes

The ODUFunction TEC includes the attributes inherited from *ORANNetworkFunction\_* and have the following attributes:

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Attribute Name** | **S** | **isReadable** | **isWritable** | **isInvariant** | **isNotifyable** |
| gNBDUId | M | T | F | F | T |
| gNBId | M | T | F | F | T |
| gNBIdLength | M | T | F | F | T |

</div>

Attribute constraints

None.

Notifications

There is no notification defined.

State diagram

None.

###### *ORANNetworkFunction\_*

Definitions

This abstract class is provided for sub-classing only.

Attributes

The classes defined in this ORAN.SMO.TEIV.RAN namespace shall inherit from *ORANNetworkFunction\_* and have the following attributes:

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Attribute Name** | **S** | **isReadable** | **isWritable** | **isInvariant** | **isNotifyable** |
| topologyEntityId | M | T | F | T | F |
| sourceIds | M | T | F | F | T |

</div>

Attribute constraints

None.

Notifications

There is no notification defined.

State diagram

None.

#### Attribute definitions

##### Attribute properties

The following table defines the properties of attributes specified in the present document.

Table 4.3.1.5.1-1: Attribute properties

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Attribute Name** | **Documentation and Allowed Values** | **Properties** | **Source Domain** |
| gNBCUName | Name of gNB-CU, see subclause 4.4.1 of 3GPP TS 28.541 [5]. allowedValues: Not applicable | type: String multiplicity: 1 isOrdered: N/A isUnique: N/AdefaultValue:  None | O1 |
| gNBDUId | Unique identifier for the gNB-DU at least within a gNB-CU, see subclause 4.4.1 of 3GPP TS 28.541 [5].  allowedValues: Not applicable | type: Integer multiplicity: 1 isOrdered: N/A isUnique: N/AdefaultValue:  None | O1 |
| gNBId | Identity of gNB within a PLMN, see subclause 4.4.1 of 3GPP TS  28.541 [5].  allowedValues: 0..4294967295 | type: Integer multiplicity: 1 isOrdered: N/A isUnique: N/AdefaultValue:  None | O1 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Attribute Name** | **Documentation and Allowed Values** | **Properties** | **Source Domain** |
| gNBIdLength | Length of gNBId bit string representation, see subclause 4.4.1 of 3GPP TS 28.541 [5].  allowedValues: 22 .. 32 | type: Integer multiplicity: 1 isOrdered: N/A isUnique: N/AdefaultValue:  None | O1 |
| topologyEntityId | Unique identifier of the Topology Entity.  This identity is represented using a URN notation format [14]. | type: URN multiplicity: 1 isOrdered: N/A isUnique: TruedefaultValue:  None | SMO/TE&IV |
| nearRTRICID | The identifier of Near-RT RIC as defined in O-RAN.WG3.E2AP [12], clause 9.2.4 | type: Integer multiplicity: 1 isOrdered: N/A isUnique: N/AdefaultValue:  None | O1 |
| pLMNId | Identity of the PLMN, see subclause 4.4.1 of 3GPP TS 28.541 [5]. | type: PLMNId multiplicity: 1 isOrdered: N/A isUnique: N/AdefaultValue:  None | O1 |
| sourceIds | Identities of the underlying topology resources represented by the Topology Entity.  The sourceIds are represented using a URN notation format [14].  A TE&IV consumer can use the identifiers to navigate to the source domain objects. | type: URN multiplicity: 1..N isOrdered: N/A isUnique: N/A defaultValue: None | e.g., O1 |
| oruId | Identity of the O-RU as discovered from the source domain based on M-Plane architecture model as defined in O-RAN TS [15]  Note: The oruId is assumed to be available in TE&IV. | type: String multiplicity: 1 isOrdered: N/A isUnique: N/AdefaultValue:  None | O1 (Hierarchical) O1, Open FH M-  Plane (Hybrid) |
| pLMNIdList | List of unique identities for PLMN, see subclause 4.4.1 of 3GPP TS 28.658 [13]. | type: PLMNId multiplicity: 1..12 isOrdered: N/A isUnique: N/A isWritable: False  defaultValue: None | O1 |

</div>

### Namespace ORAN.SMO.TEIV.Cloud

#### Namespace overview

This namespace contains the Topology Entities and Topology Relationship in the O-CLOUD domain, which comprises cloud infrastructure and cloud deployment aspects.

#### Imported associated information

##### Imported information entities and local labels

Imported information entities and local labels is not defined in the present version of the document.

##### Associated information entities and local labels

Associated information entities and local labels is not defined in the present version of the document.

#### Class diagram

##### Relationships

@startuml skin rose

skinparam ClassStereotypeFontStyle normal skinparam style strictuml

hide empty members

set namespaceSeparator none namespace ORAN.SMO.TEIV.Cloud {

class CloudifiedNF class NFDeployment class OCloudNamespace class NodeCluster class OCloudSite

note as locationnote Has location info.

end note

locationnote .. OCloudSite

CloudifiedNF "1" --> "1..\*" NFDeployment: comprizes NFDeployment " 1..\* "--> "1..\*" OCloudNamespace : deployedOn OCloudNamespace " 1..\* "--> "1" NodeCluster : deployedOn NodeCluster "1..\*" --> "1..\*" OCloudSite : locatedAt

}

@enduml

![Generated by PlantUML]({{site.baseurl}}/assets/images/4cf541c5ae10.png)

Figure 4.3.2.3.1-1: ORAN SMO TE&IV O-Cloud relationship view

##### Inheritance

@startuml skin rose

skinparam ClassStereotypeFontStyle normal skinparam style strictuml

hide empty members

set namespaceSeparator none namespace ORAN.SMO.TEIV.Cloud {

class Resource

class CloudifiedNF class NFDeployment class OCloudNamespace class NodeCluster class OCloudSite

<div class="table-wrapper" markdown="block">

Resource <|-- CloudifiedNF Resource <|-- NFDeployment Resource <|-- OCloudNamespace Resource <|-- NodeCluster Resource <|-- OCloudSite

</div>

}

@enduml

![Generated by PlantUML]({{site.baseurl}}/assets/images/5ae33c6d3184.png)

Figure 4.3.2.3.2-1: ORAN SMO TE&IV O-Cloud inheritance view

#### Class definitions

##### CloudifiedNF

Definitions

This class provides the TE&IV resource representation of Cloudified NF using the equivalent concept as defined in O- RAN.WG6.O2-GA&P [7].

Attributes

Not specified in the present version of the document.

Attribute constraints

Not specified in the present version of the document.

Notifications

Not specified in the present version of the document.

State diagram

Not specified in the present version of the document.

##### NFDeployment

Definitions

This class provides the TE&IV resource representation of NF Deployment using the equivalent concept as defined in O- RAN.WG6.O2-GA&P [7].

Attributes

Not specified in the present version of the document.

Attribute constraints

Not specified in the present version of the document.

Notifications

Not specified in the present version of the document.

State diagram

Not specified in the present version of the document.

##### OCloudNamespace

Definitions

This class provides the TE&IV resource representation of OCloud Namespace using the equivalent concept as "containerNamespace" defined in O-RAN.WG6.O2DMS-INTERFACE-ETSI-NFV-PROFILE [8] and as "namespace" in O- RAN.WG6.O2DMS-INTERFACE-K8S-PROFILE [9].

Attributes

Not specified in the present version of the document.

Attribute constraints

Not specified in the present version of the document.

Notifications

Not specified in the present version of the document.

State diagram

Not specified in the present version of the document.

##### NodeCluster

Definitions

This class provides the TE&IV resource representation of O-Cloud Node Cluster using the equivalent concept as defined in O- RAN.WG6.O2-GA&P [7].

Attributes

Not specified in the present version of the document.

Attribute constraints

Not specified in the present version of the document.

Notifications

Not specified in the present version of the document.

State diagram

Not specified in the present version of the document.

##### OCloudSite

Definitions

This class provides the TE&IV resource representation of O-Cloud Site using the equivalent concept as defined in O- RAN.WG6.O2-GA&P [7].

Attributes

Not specified in the present version of the document.

Attribute constraints

Not specified in the present version of the document.

Notifications

Not specified in the present version of the document.

State diagram

Not specified in the present version of the document.

### Namespace ORAN.SMO.TEIV.REL-RAN-Cloud

#### Namespace overview

This namespace contains the relationship between ORAN.SMO.TEIV.RAN to ORAN.SMO.TEIV.Cloud namespaces.

The *ORANNetworkFunction\_* abstract class depicted in the figure 4.3.3.3.1-1 is a generalization of the various O-RAN Network Functions and shall be associated from the ORAN.SMO.TEIV.RAN namespace.

The *NFDeployment\_REL\_NF\_* abstract class depicted in the figure 4.3.3.3.1-1 is a generalization of the various relationships between the O-RAN Network Functions and its associated NF Deployments.

The NFDeployment class depicted in the figure 4.3.3.3.1-1 shall be associated from the ORAN.SMO.TEIV.Cloud namespace.

#### Imported associated information

##### Imported information entities and local labels

Imported information entities and local labels is not defined in the present version of the document.

##### Associated information entities and local labels

Associated information entities and local labels is not defined in the present version of the document.

#### Class diagram

##### Relationships

@startuml skin rose

skinparam ClassStereotypeFontStyle normal skinparam style strictuml

hide empty members

set namespaceSeparator none

namespace ORAN.SMO.TEIV.RAN { abstract class ORANNetworkFunction\_

}

namespace ORAN.SMO.TEIV.Cloud { class NFDeployment

}

namespace ORAN.SMO.TEIV.REL-RAN-Cloud { abstract class NFDeployment\_REL\_NF\_

NFDeployment "0..n

" .r. "1..n" ORANNetworkFunction\_

NFDeployment\_REL\_NF\_ -[hidden] NFDeployment\_REL\_NF\_ : 




NFDeployment\_REL\_NF\_ "0..n " --> " 1 " NFDeployment : 


> servingNFDeployment ORANNetworkFunction\_ "1 " <-- "1..n" NFDeployment\_REL\_NF\_ : 


< servicedORANNetworkFunction

}

@enduml

![Generated by PlantUML]({{site.baseurl}}/assets/images/daaf247665aa.png)

Figure 4.3.3.3.1-1: SMO TE&IV RAN-Cloud relationship model

![]({{site.baseurl}}/assets/images/bba46da7f52a.png)

Figure 4.3.3.3.1-2: Simplified SMO TE&IV RAN-Cloud relationship model

![]({{site.baseurl}}/assets/images/a7789b1f30cc.png)

Figure 4.3.3.3.1-3: NFDeployment and ODUFunction relationship model

![]({{site.baseurl}}/assets/images/40ba8d69eff1.png)

Figure 4.3.3.3.1-4: NFDeployment and OCUCPFunction relationship model

![]({{site.baseurl}}/assets/images/1b343dd66286.png)

Figure 4.3.3.3.1-5: NFDeployment and OCUUPFunction relationship model

![]({{site.baseurl}}/assets/images/cde870ed243a.png)

Figure 4.3.3.3.1-6: NFDeployment and NearRTRICFunction relationship model

##### Inheritance

![]({{site.baseurl}}/assets/images/e046bbdf53e9.jpg)

Figure 4.3.3.3.2-1: TE&IV RAN-Cloud Serves Relationship Generalization

#### Class definitions

##### NFDeployment\_serves\_ODUFunction

Definitions

This class provides the Topology Relationship between the NFDeployment and the ODUFunction Topology Entities as shown in figure 4.3.3.3.1-3. This class represents the relationship type of the NF Deployment serving the functionality of the ODU Function.

The NFDeployment\_serves\_ODUFunction TRC has the following associations:

* **serviced-ODUFunction** as the aSide association originating at the NFDeployment instance. It represents that this ODUFunction instance is serviced by this NFDeployment instance.
* **serving-NFDeployment** as the bSide association originating at the ODUFunction instance. It represents that this NFDeployment is serving this ODUFunction instance.

Attributes

The NFDeployment\_serves\_ODUFunction TRC includes the attributes inherited from *NFDeployment\_REL\_NF\_*.

.

Attribute constraints

None.

Notifications

None.

State diagram

None.

##### NFDeployment\_serves\_OCUCPFunction

Definitions

This class provides the Topology Relationship between the NFDeployment and the OCUCPFunction Topology Entities as shown in figure 4.3.3.3.1-4. This class represents the relationship type of the NF Deployment serving the functionality of the OCUCP Function.

The NFDeployment\_serves\_OCUCPFunction TRC has the following associations:

* **serviced-OCUCPFunction** as the aSide association originating at the NFDeployment. It represents that this OCUCPFunction instance is serviced by this NFDeployment instance.
* **serving-NFDeployment** as the bSide association originating at the OCUCPFunction. It represents that this NFDeployment is serving this OCUCPFunction instance.

Attributes

The NFDeployment\_serves\_OCUCPFunction TRC includes the attributes inherited from *NFDeployment\_REL\_NF\_*.

.

Attribute constraints

None.

Notifications

None.

State diagram

None.

##### NFDeployment\_serves\_OCUUPFunction

Definitions

This class provides the Topology Relationship between the NFDeployment and the OCUUPFunction Topology Entities as shown in figure 4.3.3.3.1-5. This class represents the relationship type of the NF Deployment serving the functionality of the OCUUP Function.

The NFDeployment\_serves\_OCUUPFunction TRC has the following associations:

* **serviced-OCUUPFunction** as the aSide association originating at the NFDeployment. It represents that this OCUUPFunction instance is serviced by this NFDeployment instance.
* **serving-NFDeployment** as the bSide association originating at the OCUUPFunction. It represents that this NFDeployment is serving this OCUUPFunction instance.

Attributes

The NFDeployment\_serves\_OCUUPFunction TRC includes the attributes inherited from *NFDeployment\_REL\_NF\_*.

Attribute constraints

None.

Notifications

None.

State diagram

None.

##### NFDeployment\_serves\_NearRTRICFunction

Definitions

This class provides the Topology Relationship between the NFDeployment and the NearRTRICFunction Topology Entities as shown in figure 4.3.3.3.1-6. This class represents the relationship type of the NF Deployment serving the functionality of the Near-RT RIC Function.

The NFDeployment\_serves\_NearRTRICFunction TRC has the following associations:

* **serviced-NearRTRICFunction** as the aSide association originating at the NFDeployment. It represents that this NearRTRICFunction instance is serviced by this NFDeployment instance.
* **serving-NFDeployment** as the bSide association originating at the NearRTRICFunction. It represents that this NFDeployment is serving this NearRTRICFunction instance.

Attributes

The NFDeployment\_serves\_ NearRTRICFunction TRC includes the attributes inherited from *NFDeployment\_REL\_NF\_*..

Attribute constraints

None.

Notifications

None.

State diagram

None.

###### *NFDeployment\_REL\_NF\_*

Definitions

This abstract class is provided for sub-classing only.

Attributes

The classes defined in this ORAN.SMO.TEIV.REL-RAN-Cloud namespace shall inherit from *NFDeployment\_REL\_NF\_* and have the following attributes:

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Attribute Name** | **S** | **isReadable** | **isWritable** | **isInvariant** | **isNotifyable** |
| topologyRelationshipId | M | T | F | T | F |
| sourceIds | M | T | F | F | T |

</div>

.

Attribute constraints

None.

Notifications

None.

State diagram

None.

#### Attribute definitions

##### 4.3.3.5.1 Attribute properties

The following table defines the properties of attributes specified in the present document.

Table 4.3.3.5.1-1: Attribute properties

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Attribute Name** | **Documentation and Allowed Values** | **Properties** | **Source Domain** |
| topologyRelations hipId | Unique identifier of the Topology Relationship.  This identity is represented using a URN notation format [14]. | type: URN multiplicity: 1 isOrdered: N/A isUnique: True  defaultValue: None | SMO/TE&IV |
| sourceIds | Identities of the underlying topology resources represented by the Topology Relationship.  The sourceIds are represented using a URN notation format [14].  A TE&IV consumer can use the identifiers to navigate to the source domain objects. | type: URN multiplicity: 1..N isOrdered: N/A isUnique: N/A defaultValue: None | e.g., O1 |

</div>

## TE&IV Service Operations

### Introduction

This clause provides the stage 2 definitions of TE&IV Service Operations for exposing Topology Entities, Topology Relationships and their attributes.

The information model in Figure 4.4.1-1 depicts the model view of the entities used in the TE&IV Service Operations initiated by TE&IV Service Consumers to retrieve the Domains in Topology, Topology Entities and Topology Relationships.

![]({{site.baseurl}}/assets/images/b6e3fca52ec3.png)

Figure 4.4.1-1: ORAN SMO TE&IV Topology Domain, Topology Entity and Topology Relationship Model View

The Figure 4.4.1-2 shows the allowed inter-domain relationships. It depicts subclasses of the Domain concept comprising two distinct categories: Relationship and Entity. An Entity Domain may contain both Entities and Relationships, however both aSide and bSide of such relationships shall exist in that domain. A Relationship Domain encapsulates Relationships to Entities in one or more Entity Domains. The Relationship Domain should not have any Entities.

![]({{site.baseurl}}/assets/images/b8182c863398.png)

Figure 4.4.1-2: ORAN SMO TE&IV Domain Dependency Model View

### Operations and Notification

#### getAllDomains operation

##### Description

This operation is invoked by the TE&IV Service Consumer to retrieve all the available Topology Domains.

##### Input parameters

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Parameter Name** | **S** | **Description** |
| Accept | M | This parameter specifies the response media types that are  acceptable. |
| offsetParam | O | This query parameter allows you to omit a specified number of  entries before the beginning of the result set for pagination. |
| limitParam | O | The query parameter provides to limit the number of entries  returned for a request for pagination. |

</div>

##### Output parameters

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Parameter name** | **S** | **Description** |
| Domains | M | A list of Topology Domains and the links to its  EntityTypes and RelationshipTypes. |

</div>

##### Results

In case of success, all the available Topology Domains are returned. In case of failure, an appropriate error response may be provided.

#### getTopologyEntityTypes operation

##### Description

This operation is invoked by the TE&IV Service Consumer to get all the available Topology Entity types within a domain.

##### Input parameters

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Parameter Name** | **S** | **Description** |
| Accept | M | This parameter specifies the response media types that are  acceptable. |
| domainName | M | This path parameter specifies the name of the Topology  Domain. |
| offsetParam | O | This query parameter allows you to omit a specified number of  entries before the beginning of the result set for pagination. |
| limitParam | O | The query parameter provides to limit the number of entries  returned for a request for pagination. |

</div>

##### Output parameters

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Parameter name** | **S** | **Description** |
| EntityTypes | M | A list of links to the Topology Entities within the  Topology Domain. |

</div>

##### Results

In case of success, all the available Topology Entity types in domain name are returned. In case of failure, an appropriate error response may be provided.

#### getTopologyByEntityTypeName operation

##### Description

This operation is invoked by the TE&IV Service Consumer to get all Topology Entity instances of a specific Topology Entity type.

##### Input parameters

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Parameter Name** | **S** | **Description** |
| Accept | M | This parameter specifies the response media types that are  acceptable. |
| domainName | M | This path parameter specifies the name of the Topology  Domain. |
| entityTypeName | M | This path parameter specifies the name of a Topology Entity in a  Topology Domain. |
| targetFilter | O | This query parameter specifies the entity type and attributes to  be returned in the REST response. |
| scopeFilter | O | This query parameter specifies the attributes to match on for  specific Topology Entities for which the data is to be produced. |
| offsetParam | O | This query parameter allows you to omit a specified number of  entries before the beginning of the result set for pagination. |
| limitParam | O | The query parameter provides to limit the number of entries  returned for a request for pagination. |

</div>

##### Output parameters

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Parameter name** | **S** | **Description** |
| Entities | M | A list of links to the data model for schema definition of  Topology Entities. |

</div>

##### Results

In case of success, all the available instances of a specific topology entity type are returned. In case of failure, an appropriate error response may be provided.

#### getTopologyById operation

##### Description

This operation is invoked by the TE&IV Service Consumer to get a specific Topology Entity instance of a Topology Entity type.

##### Input parameters

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Parameter Name** | **S** | **Description** |
| Accept | M | This parameter specifies the response media types that are  acceptable. |
| domainName | M | This path parameter specifies the name of the Topology  Domain. |
| entityTypeName | M | This path parameter specifies the name of a Topology Entity in a  Topology Domain. |
| entityId | M | The path parameter specifies the Identifier of a Topology Entity  instance. |

</div>

##### Output parameters

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Parameter name** | **S** | **Description** |
| EntityInstance | M | Encapsulated object reference to the data model for  schema definition of Topology Entities. |

</div>

##### Results

In case of success, an object referencing to the data model schema definition of Topology Entity instance of a specific Topology Entity type name is returned. In case of failure, an appropriate error response may be provided.

#### getAllRelationshipsForEntityId operation

##### Description

This operation is invoked by the TE&IV Service Consumer to get all relationships for a specific Topology Entity instance of a Topology Entity type.

##### Input parameters

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Parameter Name** | **S** | **Description** |
| Accept | M | This parameter specifies the response media types that are  acceptable. |
| domainName | M | This path parameter specifies the name of the Topology  Domain. |
| entityTypeName | M | This path parameter specifies the name of a Topology Entity in a  Topology Domain. |
| entityId | M | The path parameter specifies the Identifier of a Topology Entity  instance. |
| offsetParam | O | This query parameter allows you to omit a specified number of  entries before the beginning of the result set for pagination. |
| limitParam | O | The query parameter provides to limit the number of entries  returned for a request for pagination. |

</div>

##### Output parameters

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Parameter name** | **S** | **Description** |
| Relationships | M | Encapsulated object reference to the data model for  schema definition of Topology Relationships. |

</div>

##### Results

In case of success, an object referencing to the data model schema definition of Topology Relationships of a specific Topology Entity type name is returned. In case of failure, an appropriate error response may be provided.

#### getTopologyRelationshipTypes operation

##### Description

This operation is invoked by the TE&IV Service Consumer to retrieve all the available Topology Relationship types.

##### Input parameters

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Parameter Name** | **S** | **Description** |
| Accept | M | This parameter specifies the response media types that are  acceptable. |
| domainName | M | This path parameter specifies the name of the Topology  Domain. |
| offsetParam | O | This query parameter allows you to omit a specified number of  entries before the beginning of the result set for pagination. |
| limitParam | O | The query parameter provides to limit the number of entries  returned for a request for pagination. |

</div>

##### Output parameters

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Parameter name** | **S** | **Description** |
| RelationshipTypes | M | A list of links to the Topology Relationships. |

</div>

##### Results

In case of success, all the available Topology Relationship types are returned. In case of failure, an appropriate error response may be provided.

#### getRelationshipsByType operation

##### Description

This operation is invoked by the TE&IV Service Consumer to get all the available Topology Relationships of a specific relationship type name.

##### Input parameters

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Parameter Name** | **S** | **Description** |
| Accept | M | This parameter specifies the response media types that are  acceptable. |
| domainName | M | This path parameter specifies the name of the Topology  Domain. |
| relationshipTypeName | M | This path parameter specifies the name of a Topology  Relationship in a Topology Domain. |
| targetFilter | O | This query parameter specifies the entity type and attributes to  be returned in the REST response. |
| scopeFilter | O | This query parameter specifies the attributes to match on for  specific Topology Entities for which the data is to be produced. |
| offsetParam | O | This query parameter allows you to omit a specified number of  entries before the beginning of the result set for pagination. |
| limitParam | O | The query parameter provides to limit the number of entries  returned for a request for pagination. |

</div>

##### Output parameters

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Parameter name** | **S** | **Description** |
| Relationships | M | Encapsulated object reference to the data model for  schema definition of Topology Relationships. |

</div>

##### Results

In case of success, all the available Topology Relationships of a specific relationship type name are returned. In case of failure, an appropriate error response may be provided.

#### getRelationshipById operation

##### Description

This operation is invoked by the TE&IV Service Consumer to get a specific Topology Relationship instance of a Topology Relationship type.

##### Input parameters

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Parameter Name** | **S** | **Description** |
| Accept | M | This parameter specifies the response media types that are  acceptable. |
| domainName | M | This path parameter specifies the name of the Topology  Domain. |
| relationshipTypeName | M | This path parameter specifies the name of a Topology  Relationship in a Topology Domain. |
| relationshipId | M | This path parameter specifies the identifier of a Topology  Relationship instance. |

</div>

##### Output parameters

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Parameter name** | **S** | **Description** |
| Relationship | M | Encapsulated object reference to the data model for  schema definition of Topology Relationship. |

</div>

##### Results

In case of success, a specific Topology Relationship instance of a Topology Relationship type is returned. In case of failure, an appropriate error response may be provided.

# Annex A (Informative): Model views

## Model View: O-RAN TE&IV Network Function Deployment View (informative)

The TE&IV Network Function Deployment model view provides the basic constructs of the Topology Entities and Topology Relationship to represent the topology information related to the physical and cloud deployment aspects of the O-RAN Network Functions. The physical network function deployment view is shown in Figure A.1-1 and the cloud network function deployment view is shown in Figure A.1-2.

@startuml skin rose

skinparam ClassStereotypeFontStyle normal skinparam style strictuml

hide empty members

set namespaceSeparator none

package "TE&IV Physical Network Function Deployment View" { class PhysicalAppliance

abstract class ORANNetworkFunction\_ class Site

note "has location info." as N1

note "Represents a Physical hardware which is used to realise Network Functions" as P1

}

PhysicalAppliance .r. P1 Site .r. N1

ORANNetworkFunction\_ "\*" <-- "0..n" PhysicalAppliance : serves PhysicalAppliance "1..\*" --> "0..1" Site : installedAt

@enduml

![Generated by PlantUML]({{site.baseurl}}/assets/images/8f5bfc4c1c3e.png)

Figure A.1-1: ORAN TE&IV Physical NF Deployment View

@startuml skin rose

skinparam ClassStereotypeFontStyle normal skinparam style strictuml

hide empty members

set namespaceSeparator none

package "TE&IV Cloud Network Function Deployment View" {

class CloudifiedNF class NFDeployment

abstract class ORANNetworkFunction\_ class OCloudNamespace

class NodeCluster class OCloudSite

note "has location info." as N1

}

ORANNetworkFunction\_ "1..n" <-- "0..n" NFDeployment : serves

CloudifiedNF"1" --> "1..\*" NFDeployment: comprizes NFDeployment "1..\* " --> "1..\*" OCloudNamespace : deployedOn OCloudNamespace "1..\* " --> "1" NodeCluster : deployedOn NodeCluster "1..\* " --> "1..\*" OCloudSite : locatedAt

OCloudSite .r. N1 @enduml

![Generated by PlantUML]({{site.baseurl}}/assets/images/106f4212cd47.png)

Figure A.1-2: ORAN TE&IV Cloud NF Deployment View

# Annex (informative): Change History

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Date** | **Revision** | **Description** |
| 08/06/2023 | 00.00.01 | Initial proposed skeleton for the TE&IV Common Topology Information Models and  Interface Specification |
| 14/06/2023 | 00.00.02 | Updated skeleton for the TE&IV Common Information Models and Interface  Specification as per comments |
| 09/11/2023 | 00.00.03 | Updated title for this specification and removed Stage-2 wording |
| 11/01/2024 | 00.00.04 | Updated the title, numbering, introduced structure for namespaces |
| 06/03/2024 | 00.00.05 | Merged the TE&IV Stage-2 IM CRs for March'24 train  SYM.AO-2023.10.05-WG10-CR-001-TEIV NF deployment model-v07, ERI-  2024.02.08-WG10-CR-0064-Adding introduction scope in TEIV IM specification-v04, ERI-2023.12.21-WG10-CR-0056-Update to TE&IV-IM specification-v01 |
| 13/03/2024 | 00.00.06 | Editorial changes to update reference names, version as per O-RAN guidelines.  Removed redundant versioning text in foreward and updated the O-RAN release versioning format in scope |
| 13/03/2024 | 01.00.00 | Editorial Comments, First Publication for the March 2024 Train |
| 11/07/2024 | 02.00.00 | Implemented the following CRs for the July'24 train: ERI.AO-2024.03.11-WG10-CR- 0067-RAN-Logical-To-Cloud-Relationship-Namespace-v06, ERI-2024.04.18-WG10- CR-0071-Update to O-RAN TE&IV Network Function Deployment -v06, ERI- 2024.06.10-WG10-CR-0075-Addition of UML notation and model element -v02, ERI- 2024.06.10-WG10-CR-0084-adding attributes to RAN logical namespace-05,  Editorial corrections. |
| 15/07/2024 | 02.00.00 | Addressed WG10 review comments. Used Atlassian versioning to track revisions on  the captured comments. |
| 06/11/2024 | 03.00 | Implemented the following CRs for the November 2024 train: ERI-2024.09.18- WG10-CR-0113-TE&IV\_IS\_Definitions\_of\_ServiceOperations-v02, ERI-2024.09.18- WG10-CR-0114-TE&IV\_IS\_Definitions\_of\_ServiceOperations\_for\_Relationships-  v01, ERI-2024.10.04-WG10-CR-0124-REL-RAN-Cloud Namespace |

</div>
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG10.TS.TE%26IV-CIMI.0-R004-v03.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG10.TS.TE&IV-CIMI.0-R004-v03.00.docx).
