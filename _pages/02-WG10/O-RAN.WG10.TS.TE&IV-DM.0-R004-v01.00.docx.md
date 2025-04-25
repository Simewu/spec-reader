---
title: O-RAN.WG10.TS.TE&IV-DM.0-R004-v01.00.docx.md
author: O-RAN Alliance, WG10
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG10.TS.TE%26IV-DM.0-R004-v01.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG10.TS.TE&IV-DM.0-R004-v01.00.docx).

---

* toc
{:toc}

---

![webwxgetmsgimg (7).jpeg]({{site.baseurl}}/assets/images/9c69df009b87.jpg)O-RAN.WG10.TS.TE&IV-DM.0-R004-v01.00

##### *Technical Specification*

**O-RAN Work Group 10 (OAM for O-RAN) Topology Exposure and Inventory Data Model Specification -**

**Stage 3**

#### Copyright (C) 2025 by the O-RAN ALLIANCE e.V.

#### The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

#### O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany Register of Associations, Bonn VR 11238, VAT ID DE321720189

Contents

Foreword 3

Modal verbs terminology 3

Executive summary 3

1. Scope 3
2. References 3
   1. Normative references 3
   2. Informative references 4
3. Definition of terms, symbols and abbreviations 4
   1. Terms 4
   2. Symbols 4
   3. Abbreviations 4
4. Solution Set (SS) definitions 4
   1. YANG based Solution Set (SS) definitions 4

Annex A (normative): YANG definitions for common types and extensions 5

* 1. Generals 5
  2. Common Modules 5
     1. module o-ran-smo-teiv-common-yang-types 5
     2. module o-ran-smo-teiv-common-yang-extensions 6

Annex B (normative): YANG definitions for O-RAN TE&IV RAN Domain 8

* 1. General 8
  2. module o-ran-smo-teiv-ran 8

Annex (informative): Change History 11

# Foreword

#### This Technical Specification (TS) has been produced by WGn of the O-RAN Alliance.

#### The content of the present document is subject to continuing work within O-RAN and may change following formal O-RAN approval. Should the O-RAN Alliance modify the contents of the present document, it will be re-released by O-RAN with an identifying change of version date and an increase in version number as follows:

#### version xx.yy.zz where:

#### xx: the first digit-group is incremented for all changes of substance, i.e. technical enhancements, corrections, updates, etc. (the initial approved document will have xx=01). Always 2 digits with leading zero if needed.

#### yy: the second digit-group is incremented when editorial only changes have been incorporated in the document. Always 2 digits with leading zero if needed.

#### zz: the third digit-group included only in working versions of the document indicating incremental changes during the editing process. External versions never include the third digit-group. Always 2 digits with leading zero if needed.

# Modal verbs terminology

In the present document "**shall**", "**shall not**", "**should**", "**should not**", "**may**", "**need not**", "**will**", "**will not**", "**can**" and "**cannot**" are to be interpreted as described in clause 3.2 of the O-RAN Drafting Rules (Verbal forms for the expression of provisions).

#### "**must**" and "**must not**" are **NOT** allowed in O-RAN deliverables except when used in direct citation.

# Executive summary

#### The present document specifies the TE&IV Data Models suited to realize the TE&IV Information Models as specified in [1].

# Scope

#### This document specifies the TE&IV Data Models used to support TE&IV services within the SMO.

# References

## Normative references

#### References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies. In the case of a reference to a 3GPP document, a non-specific reference implicitly refers to the latest version of that document in Release 18.

#### NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long term validity.

#### The following referenced documents are necessary for the application of the present document.

#### [1] O-RAN TS: "Topology Exposure & Inventory Common Information Models and Interface Specification - Stage 2" ("TE&IV CIMI")

## Informative references

#### Void

# Definition of terms, symbols and abbreviations

## Terms

#### Void

## Symbols

#### Void

## Abbreviations

#### Void

# Solution Set (SS) definitions

## YANG based Solution Set (SS) definitions

#### The present document defines the following TE&IV Solution Set definitions for O-RAN:

#### YANG based ORAN TEIV Common YANG Types and Extensions Solution Set (Annex A).

#### YANG based ORAN TE&IV RAN Domain Solution Set (Annex B).

Annex A (normative):

YANG definitions for common types and extensions

## Generals

#### This annex contains the YANG definitions for the common types and extensions to the YANG language that topology and inventory model will frequently use, in accordance with information model definitions specified in TE&IV CIMI [1].

## Common Modules

### module o-ran-smo-teiv-common-yang-types

<CODE BEGINS>

module o-ran-smo-teiv-common-yang-types { yang-version 1.1;

namespace "urn:o-ran:smo-teiv-common-yang-types"; prefix or-teiv-types;

import o-ran-smo-teiv-common-yang-extensions { prefix or-teiv-yext; } organization "O-RAN Alliance";

contact

["www.o-ran.org";](http://www.o-ran.org/)

description

"Topology and Inventory common types model.

This model contains re-usable data types that topology and inventory models will frequently use as part of types and relationships.

Copyright 2024 the O-RAN Alliance.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS 'AS IS' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

* Redistributions of source code must retain the above copyright notice, this list of conditions and the above disclaimer.
* Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the above disclaimer in the documentation and/or other materials provided with the distribution.
* Neither the Members of the O-RAN Alliance nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.";

revision "2024-10-10" {

description "Initial revision."; or-teiv-yext:label 1.0.0;

reference "O-RAN.WG10.TE&IV-DM.0-R004-v01.00";

}

grouping Top\_Grp\_Type {

description "Grouping containing the key attribute common to all types. All types MUST use this grouping.";

leaf id {

type string;

description "Unique identifier of topology entities. Represents the Entity Instance Identifier.";

}

}

grouping Adapter\_Entity\_Grp {

description "Grouping to identify sourceIds on a topology object";

leaf-list sourceIds { type sourceId;

min-elements 1; ordered-by user; description

"An ordered list of identities that represent the set of native source identifiers for participating entities.

This must be attached to Topology Entity instance, outside of the declared Topology Entity's attributes. This is exposed to the consumers and can only be set by the responsible adapter. This cannot be instantiated, and it MUST NOT be augmented or deviated in any way, unless stated otherwise.";

}

}

typedef sourceId { type string;

description "An identity that represents a native identifier of a topology entity.";

}

}

<CODE ENDS>

### module o-ran-smo-teiv-common-yang-extensions

<CODE BEGINS>

module o-ran-smo-teiv-common-yang-extensions { yang-version 1.1;

namespace "urn:o-ran:smo-teiv-common-yang-extensions"; prefix or-teiv-yext;

organization "O-RAN Alliance";

contact

["www.o-ran.org";](http://www.o-ran.org/)

description

"Topology and Inventory YANG extensions model.

This model contains extensions to the YANG language that topology and inventory models will use to define and annotate types and relationships.

Copyright 2024 the O-RAN Alliance.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS 'AS IS' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

* Redistributions of source code must retain the above copyright notice, this list of conditions and the above disclaimer.
* Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the above disclaimer in the documentation and/or other materials provided with the distribution.
* Neither the Members of the O-RAN Alliance nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.";

revision "2024-10-10" {

description "Initial revision."; or-teiv-yext:label 1.0.0;

reference "O-RAN.WG10.TE&IV-DM.0-R004-v01.00";

}

extension domain { argument domainName;

description "Keyword used to carry domain information.";

}

extension label { argument semversion; description

"The label can be used to give modules and submodules a semantic version, in addition to their revision.

The format of the label is 'x.y.z' - expressed as pattern, it is [0-9]+\.[0-9]+\.[0-9]+

The statement MUST only be a substatement of the revision statement. Zero or one revision label statements per parent statement are allowed.

Revision labels MUST be unique amongst all revisions of a module or submodule.";

}

}

<CODE ENDS>

Annex B (normative):

YANG definitions for O-RAN TE&IV RAN Domain

## General

#### This annex contains the YANG definitions for the TE&IV RAN domain, in accordance with ORAN.SMO.TEIV.RAN information model definitions specified in TE&IV CIMI [1].

## module o-ran-smo-teiv-ran

<CODE BEGINS>

module o-ran-smo-teiv-ran { yang-version 1.1;

namespace "urn:o-ran:smo-teiv-ran"; prefix or-teiv-ran;

import o-ran-smo-teiv-common-yang-types {prefix or-teiv-types; } import o-ran-smo-teiv-common-yang-extensions {prefix or-teiv-yext; } import \_3gpp-common-yang-types { prefix types3gpp; }

organization "O-RAN Alliance";

contact

["www.o-ran.org";](http://www.o-ran.org/)

description

"RAN Logical topology model.

This model contains the topology entities and relations in the RAN Logical domain, which represents the functional capability of the deployed RAN that are relevant to rApps use cases.

Copyright 2024 the O-RAN Alliance.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS 'AS IS' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)

ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

* Redistributions of source code must retain the above copyright notice, this list of conditions and the above disclaimer.
* Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the above disclaimer in the documentation and/or other materials provided with the distribution.
* Neither the Members of the O-RAN Alliance nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.";

revision "2024-10-10" { description "Initial revision.";

or-teiv-yext:label 1.0.0;

reference "O-RAN.WG10.TE&IV-DM.0-R004-v01.00";

}

or-teiv-yext:domain RAN;

list ODUFunction {

uses or-teiv-types:Top\_Grp\_Type;

uses or-teiv-types:Adapter\_Entity\_Grp; key id;

description "O-RAN Distributed Unit (O-DU).

The O-DU is an O-RAN NF in the O-RAN Architecture. An O-DU, combined with one or more O-RU(s) connected to it, supports and is fully compatible with the functions of a gNB-DU as defined by 3GPP TS 38.401.

The O-DU terminates the E2 and the F1 interface, and the Open Fronthaul interface (also known as LLS interface) as well as the RLC, MAC, and High-PHY functions of the radio interface towards the UE.

Note: O-DU is a concrete class that extends the ORANNetworkFunction abstract class. In Topology, you can create, read, update, and delete the O-DU object.

The management characteristics of the O-DU O-RAN NF is represented by the IOC GNBDUFunction as specified in 3GPP NR NRM model, as per 3GPP TS 28.541";

container attributes {

description "Container for O-RAN Distributed Unit (O-DU) attributes"; leaf gNBDUId {

type int64;

description "Unique identifier for the DU within a gNodeB";

}

leaf gNBId { type int64;

description "Identity of gNodeB within a PLMN";

}

leaf gNBIdLength { type int32;

description "Length of gNBId bit string representation";

}

}

}

list OCUCPFunction {

uses or-teiv-types:Top\_Grp\_Type;

uses or-teiv-types:Adapter\_Entity\_Grp; key id;

description "O-RAN Central Unit - Control Plane (O-CU-CP)

The O-CU-CP terminates the NG-c, X2-c, Xn-c, F1-c, and E1 interfaces as well as the RRC and PDCP (for SRB) protocols towards the UE as defined by 3GPP TS 38.401. The O-CU-CP terminates E2 interface to Near-RT RIC and is managed via O1 interface by the SMO.

Note: O-CU-CP is a concrete class that extends the ORANNetworkFunction abstract class. In Topology, you can create, read, update, and delete the O-CU-CP object.

The management characteristics of the O-CU-CP O-RAN NF is represented by the IOC GNBCUCPFunction as specified in 3GPP NR NRM model, as per 3GPP TS 28.541";

container attributes {

description "Container for O-RAN Central Unit - Control Plane (O-CU-CP) attributes"; leaf gNBCUName {

type string;

description "Name of gNodeB-CU";

}

leaf gNBId { type int64;

description "Identity of gNodeB within a PLMN";

}

leaf gNBIdLength { type int32;

description "Length of gNBId bit string representation";

}

container pLMNId {

description "PLMN identifier to be used as part of global RAN node identity"; uses types3gpp:PLMNId;

}

}

}

list OCUUPFunction {

uses or-teiv-types:Top\_Grp\_Type;

uses or-teiv-types:Adapter\_Entity\_Grp; key id;

description "O-RAN Central Unit - User Plane (O-CU-UP)

The O-CU-UP terminates the NG-u, X2-u, Xn-u, F1-u, and E1 interfaces as well as the PDCP and SDAP protocols towards the UE as defined by 3GPP TS 38.401. The O-CU-UP terminates E2 interface to Near-RT RIC and is managed via O1 interface by the SMO.

Note: O-CU-UP is a concrete class that extends the ORANNetworkFunction abstract class. In Topology, you can create, read, update, and delete the O-CU-UP object.

The management characteristics of the O-CU-UP O-RAN NF is represented by the IOC GNBCUUPFunction as specified in 3GPP NR NRM model, as per 3GPP TS 28.541";

container attributes {

description "Container for O-RAN Central Unit - User Plane (O-CU-UP) attributes"; leaf gNBId {

type int64;

description "Identity of gNodeB within a PLMN";

}

leaf gNBIdLength { type int32;

description "Length of gNBId bit string representation";

}

container pLMNIdList {

description "List of unique identities for PLMN"; uses types3gpp:PLMNId;

}

}

}

list NearRTRICFunction {

uses or-teiv-types:Top\_Grp\_Type;

uses or-teiv-types:Adapter\_Entity\_Grp; key id;

description "Near-Real-Time RAN Intelligent Controller (Near-RT RIC)

Near-RT RIC is an O-RAN NF that enables near real-time control and optimization of services and resources of E2 Nodes via fine-grained data collection and actions over the E2 interface with control loops in the order of 10 ms-1s.";

container attributes {

description "Container for Near-Real-Time RAN Intelligent Controller (Near-RT RIC) attributes"; container pLMNId {

description "PLMN identifier to be used as part of global RAN node identity"; uses types3gpp:PLMNId;

}

leaf nearRtRicId { type int32;

description "Identifier of Near-RT RIC";

}

}

}

list ORUFunction {

uses or-teiv-types:Top\_Grp\_Type;

uses or-teiv-types:Adapter\_Entity\_Grp; key id;

description "O-RAN Radio Unit (O-RU)

The O-RU terminates the Open Fronthaul interface (also known as LLS interface) as well as Low-PHY functions of the radio interface towards the UE. This is deployed as a PNF.

The O-RU terminates the Open Fronthaul M-Plane interface towards the O-DU and SMO.";

container attributes {

description "Container for O-RAN Radio Unit (O-RU) attributes"; leaf oruId {

type string;

description "Identity of the O-RU as discovered from the source domain based on M-Plane architecture model";

}

}

}

}

<CODE ENDS>

# Annex (informative): Change History

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Date** | **Revision** | **Description** |
| 2024.10.01 | 00.00.01 | Initial proposed skeleton for the TE&IV Data Model Specification |
| 2024.11.21 | 01.00 | Implemented the following CRs for the November 2024 train: ERI-2024.08.14-WG10-CR- 0128-Initial Content for the TE&IV Data Model Specification-v01, ERI-2024.10.09-WG10- CR-0130-TE&IV\_RAN\_Model-v02, ERI-2024.11.07-WG10-CR-0136-  TE&IV\_DM\_ReferenceUpdate-v01 |

</div>
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG10.TS.TE%26IV-DM.0-R004-v01.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG10.TS.TE&IV-DM.0-R004-v01.00.docx).
