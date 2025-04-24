---
title: O-RAN.WG3.TS.E2SM-R004-v07.00.docx.md
author: O-RAN Alliance
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG3.TS.E2SM-R004-v07.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG3.TS.E2SM-R004-v07.00.docx).

---

* toc
{:toc}

---

![webwxgetmsgimg (7).jpeg]({{site.baseurl}}/assets/images/28e22da37450.jpg)O-RAN.WG3.TS.E2SM-R004-v07.00

*Technical Specification*

**O-RAN Work Group 3 (Near-RT RIC and E2 Interface)**

**E2 Service Model (E2SM)**

Copyright (C) 2025 by the O-RAN ALLIANCE e.V.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany Register of Associations, Bonn VR 11238, VAT ID DE321720189

"(C) 2019. 3GPP(TM) TSs and TRs are the property of ARIB, ATIS, CCSA, ETSI, TSDSI, TTA and TTC who jointly own the copyright in them. They are subject to further modifications and are therefore provided to you "as is" for information purposes only. Further use is strictly prohibited."

"(C) 2020. 3GPP(TM) TSs and TRs are the property of ARIB, ATIS, CCSA, ETSI, TSDSI, TTA and TTC who jointly own the copyright in them. They are subject to further modifications and are therefore provided to you "as is" for information purposes only. Further use is strictly prohibited."

"(C) 2021. 3GPP(TM) TSs and TRs are the property of ARIB, ATIS, CCSA, ETSI, TSDSI, TTA and TTC who jointly own the copyright in them. They are subject to further modifications and are therefore provided to you "as is" for information purposes only. Further use is strictly prohibited."

Contents

List of tables 4

Foreword 5

Modal verbs terminology 5

1. Scope 6
2. References 6
   1. Normative references 6
   2. Informative references 7
3. Definition of terms, symbols and abbreviations 7
   1. Terms 7
   2. Symbols 7
   3. Abbreviations 7
4. General 8
   1. Procedure specification principles 8
   2. Forwards and backwards compatibility 8
   3. Specification notations 8
5. E2SM services 8
6. Common Information Elements for E2SM Service Models 11
   1. General 11
   2. Information Element definitions 11
      1. General 11
      2. E2SM common IEs 11
      3. 3GPP derived IEs 18
   3. Information Element Abstract Syntax (with ASN.1) 28
      1. General 28
      2. Information Element definitions 28
      3. Message transfer syntax 36

Annex (informative): Change History 37

# List of tables

Table 5-1: Relationship between RAN Function specific E2AP Information elements and E2AP procedures 8

Table 5-2: O-RAN specified E2 Service Models and related OIDs 10

# Foreword

This Technical Specification (TS) has been produced by WG3 of the O-RAN Alliance.

The content of the present document is subject to continuing work within O-RAN and may change following formal O-RAN approval. Should the O-RAN Alliance modify the contents of the present document, it will be re-released by O-RAN with an identifying change of version date and an increase in version number as follows:

version xx.yy.zz where:

xx: the first digit-group is incremented for all changes of substance, i.e. technical enhancements, corrections, updates, etc. (the initial approved document will have xx=01). Always 2 digits with leading zero if needed.

yy: the second digit-group is incremented when editorial only changes have been incorporated in the document. Always 2 digits with leading zero if needed.

zz: the third digit-group included only in working versions of the document indicating incremental changes during the editing process. External versions never include the third digit-group. Always 2 digits with leading zero if needed.

# Modal verbs terminology

In the present document "**shall**", "**shall not**", "**should**", "**should not**", "**may**", "**need not**", "**will**", "**will not**", "**can**" and "**cannot**" are to be interpreted as described in clause 3.2 of the O-RAN Drafting Rules (Verbal forms for the expression of provisions).

"**must**" and "**must not**" are **NOT** allowed in O-RAN deliverables except when used in direct citation.

# Scope

The present document describes the O-RAN specified RAN Function-specific Service Models supported over E2 (E2SM) and specifies the common elements for use in E2 service models.

# References

## Normative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE 1: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

NOTE 2: In the case of a reference to a 3GPP document (including a GSM document), a non-specific reference implicitly refers to the latest version of that document in 3GPP Release 18.

The following referenced documents are necessary for the application of the present document.

1. Void.
2. O-RAN WG3.TS.E2GAP, "O-RAN E2 General Aspects and Principles (E2GAP)"
3. O-RAN WG3.TS.E2AP, "O-RAN E2 Application Protocol (E2AP)".
4. O-RAN WG3.TS.E2SM-NI, "O-RAN E2 Service Model, Network Interface (E2SM-NI)".
5. O-RAN WG3.TS.E2SM-KPM, "O-RAN E2 Service Model, KPI Monitor (E2SM-KPM)".
6. 3GPP TS 38.413: "NG-RAN; NG Application Protocol (NGAP)".
7. 3GPP TS 38.423: "NG-RAN; Xn Application Protocol (XnAP)".
8. 3GPP TS 38.473: "NG-RAN; F1 Application Protocol (F1AP)".
9. 3GPP TS 37.483: "E1 Application Protocol (E1AP)".
10. 3GPP TS 36.413: "E-UTRAN; S1 Application Protocol (S1AP)"
11. 3GPP TS 36.423: "E-UTRAN; X2 Application Protocol (X2AP)".
12. 3GPP TS 37.473: "W1 interface; Application Protocol (W1AP)".
13. Void.
14. 3GPP TS 36.331: "E-UTRA; Radio Resource Control (RRC) Protocol Specification".
15. 3GPP TS 38.331: "NR; Radio Resource Control (RRC) Protocol Specification".
16. Recommendation ITU-T X.680 (07/2002): "Information technology - Abstract Syntax Notation One (ASN.1): Specification of basic notation".
17. Recommendation ITU-T X.681 (07/2002): "Information technology - Abstract Syntax Notation One (ASN.1): Information object specification".
18. O-RAN WG1.TS.OAD, "O-RAN Architecture Description".
19. O-RAN WG3.TS.E2SM-RC, "O-RAN E2 Service Model, RAN Control (E2SM-RC)".
20. O-RAN WG3.TS.E2SM-CCC, "O-RAN E2 Service Model, Cell Configuration and Control (E2SM- CCC)"
21. Recommendation ITU-T X.691 (07/2002): "Information technology - ASN.1 encoding rules: Specification of Packed Encoding Rules (PER)".
22. O-RAN WG3.TS.E2SM-LLC, "O-RAN E2 Service Model, Lower Layers Control (E2SM-LLC)"

## Informative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE 1: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

NOTE 2: In the case of a reference to a 3GPP document (including a GSM document), a non-specific reference implicitly refers to the latest version of that document in 3GPP Release 18.

The following referenced documents are not necessary for the application of the present document, but they assist the user with regard to a particular subject area.

Not applicable.

[i.1] 3GPP TR 21.905: "Vocabulary for 3GPP Specifications"

[i.2] 3GPP TR 25.921: "Guidelines and principles for protocol description and error handling".

# Definition of terms, symbols and abbreviations

## Terms

For the purposes of the present document, the terms given in 3GPP TR 23.905 [1], O-RAN WG1.TS.OAD [18], O-RAN WG3.TS.E2GAP [2] and the following apply:

**Format Type**: The identifier used to nominate a specific formatting approach used to encode one of the E2AP IEs defined in this E2SM.

**RAN Function specific E2AP Information Element**: An E2SM specific implementation of a container used to carry an O- RAN WG3.TS.E2AP [3] defined E2SM specific IE.

**Style Type**: The identifier used to nominate a specific approach or Style used to expose a given RIC Service (REPORT, INSERT, CONTROL and POLICY).

## Symbols

Void.

## Abbreviations

For the purposes of the present document, the abbreviations given in 3GPP TR 23.905 [1], O-RAN WG3.TS.E2GAP [2] and O-RAN WG1.TS.OAD [18] and the following apply:

Void.

# General

## Procedure specification principles

The procedure specification principles defined in O-RAN WG3.TS.E2AP [3] clause 4 shall apply.

## Forwards and backwards compatibility

The forwards and backwards compatibility of the E2 interface uses the forward and backwards compatibility compatibilities offered by the O-RAN WG3.TS.E2AP [3] protocol.

## Specification notations

For the purposes of the present document, the following notations apply:

IE When referring to an Information Element (IE) in the present document the *Information Element Name* is written with the first letters in each word in upper case characters and all letters in Italic font followed by the abbreviation "IE", e.g. *E-RAB ID* IE.

Value of an IE When referring to the value of an Information Element (IE) in the present document the "Value" is written as it is specified in the present document enclosed by quotation marks, e.g. "Value".

# E2SM services

As defined in O-RAN WG3.TS.E2GAP [2], a given RAN Function offers a set of RIC Services to be exposed over the E2 (REPORT, INSERT, CONTROL, POLICY, QUERY and/or ASSISTANCE) using O-RAN WG3.TS.E2AP [3] defined

procedures. Each of the E2AP Procedures listed in table 5-1 contains specific E2 Node RAN Function dependent Information Elements (IEs) which shall be defined by a specific E2SM.

###### Table 5-1: Relationship between RAN Function specific E2AP Information elements and E2AP procedures

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **RAN Function specific E2AP**  **Information Elements** | **E2AP Information Element reference** | **Related E2AP Procedures** |
| *RIC Event Trigger Definition* IE | O-RAN WG3.TS.E2AP [3] clause 9.2.9 | RIC Subscription  RIC Subscription Modification |
| *RIC Action Definition* IE | O-RAN WG3.TS.E2AP [3] clause 9.2.12 | RIC Subscription  RIC Subscription Modification |
| *RIC Assistance Header* IE | O-RAN WG3.TS.E2AP [3] clause 9.2.47 | RIC Assistance  RIC Assistance Indication |
| *RIC Assistance Message* IE | O-RAN WG3.TS.E2AP [3] clause 9.2.48 | RIC Assistance |
| *RIC Assistance Outcome* IE | O-RAN WG3.TS.E2AP [3] clause 9.2.51 | RIC Assistance  RIC Assistance Indication |
| *RIC Indication Header* IE | O-RAN WG3.TS.E2AP [3] clause 9.2.17 | RIC Indication |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **RAN Function specific E2AP**  **Information Elements** | **E2AP Information Element reference** | **Related E2AP Procedures** |
| *RIC Indication Message* IE | O-RAN WG3.TS.E2AP [3] clause 9.2.16 | RIC Indication |
| *RIC Call Process ID* IE | O-RAN WG3.TS.E2AP [3] clause 9.2.18 | RIC Indication RIC Control |
| *RIC Control Header* IE | O-RAN WG3.TS.E2AP [3] clause 9.2.20 | RIC Control |
| *RIC Control Message* IE | O-RAN WG3.TS.E2AP [3] clause 9.2.19 | RIC Control |
| *RIC Control Outcome* IE | O-RAN WG3.TS.E2AP [3] clause 9.2.25 | RIC Control |
| *RIC Query Header* IE | O-RAN WG3.TS.E2AP [3] clause 9.2.36 | RIC Query |
| *RIC Query Definition* IE | O-RAN WG3.TS.E2AP [3] clause 9.2.37 | RIC Query |
| *RIC Query Outcome* IE | O-RAN WG3.TS.E2AP [3] clause 9.2.38 | RIC Query |
| *RAN Function Definition* IE | O-RAN WG3.TS.E2AP [3] clause 9.2.23 | E2 Setup  RIC Service Update |
| *Service Layer Cause IE* | O-RAN WG3.TS.E2AP [3] clause 9.2.53 | RIC Subscription  RIC Subscription modification RIC Indication  RIC Control RIC Query Error Indication E2 Setup  RIC Service Update |

</div>

All of these RAN Function specific E2AP IEs are defined in O-RAN WG3.TS.E2AP [3] as "OCTET STRING".

The purpose of the E2SM series of specifications is to define the approach that a given RAN Function specific E2 Service Model shall use to define the contents of these fields.

The supported O-RAN specified E2 Service Models are presented in table 5-2.

###### Table 5-2: O-RAN specified E2 Service Models and related OIDs

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **E2SM short**  **name** | **OID** | **Syntax**  **language** | **Scope** |
| E2SM-NI O-RAN  WG3.TS.E2SM- NI [4] | iso(1) identified- organization(3) dod(6) internet(1) private(4) enterprise(1) 53148  e2(1) version1 (1) e2sm(2) e2sm-NI-IEs (1) | ASN.1 | E2SM-NI "Network Interface" is used to define the services exposed by a RAN function which performs the following functionalities:   * Exposure of Network Interfaces * Modification of both incoming and outgoing network interface message contents * Execution of policies that may result in change of   network behavior |
| E2SM-KPM  version1 O-RAN  WG3.TS.E2SM- KPM [5] | iso(1) identified- organization(3) dod(6) internet(1) private(4) enterprise(1) 53148  e2(1) version1 (1) e2sm(2) e2sm- KPMMON-IEs (2) | ASN.1 | E2SM-KPM "KPM Monitor" (version1) is used to define the services exposed by a RAN function which performs the following functionalities:   * Exposure of O-DU's cell related performance IEs   through periodic KPM Report.   * Exposure of O-CU-CP's cell/UE related performance IEs through periodic KPM Report. * Exposure of O-CU-UP's bearer related performance   IEs through periodic KPM Report |
| E2SM-KPM  version2 O-RAN  WG3.TS.E2SM- KPM [5] | iso(1) identified- organization(3) dod(6) internet(1) private(4) enterprise(1) 53148  e2(1) version2 (2) e2sm(2) e2sm- KPMMON-IEs (2) | ASN.1 | E2SM-KPM "KPM Monitor" (version2) is used to define the services exposed by a RAN function which performs the following functionalities:   * Exposure of available measurements from O-DU, O- CU-CP, and/or O-CU-UP via the RAN Function Definition IE. * Periodic reporting of measurements subscribed from   Near-RT RIC. |
| E2SM-RC O-RAN  WG3.TS.E2SM- RC [19] | iso(1) identified- organization(3) dod(6) internet(1) private(4) enterprise(1) 53148  e2(1) version1 (1) e2sm(2) e2sm-RC-IEs (3) | ASN.1 | E2SM-RC "RAN Control" is used to define the services exposed by a RAN function which performs the following functionalities:   * Exposure of RAN control and UE context related information. * Modification and initiation of RAN control related call processes and messages * Execution of policies that may result in change of RAN   control behavior |
| E2SM-CCC O-RAN  WG3.TS.E2SM- CCC [20] | iso(1) identified- organization(3) dod(6) internet(1) private(4) enterprise(1) 53148  e2(1) version1 (1) e2sm(2) e2sm-CCC-IEs  (4) | JSON | E2SM-CCC "Cell Configuration and Control" is used to define the services exposed by a RAN function which performs the following functionalities:   * Exposure of node level and cell level configuration information * Initiate control and/or configuration of node level and   cell level parameters |
| E2SM-LLC O-RAN  WG3.TS.E2SM- LLC [22] | iso(1) identified- organization(3) dod(6) internet(1) private(4) enterprise(1) 53148 e2(1) version1(1) e2sm(2) e2sm-LLC-  IEs(5) | ASN.1 | E2SM-LLC "Lower Layers Control" is used to define the services exposed by a RAN function which performs the following functionalities:   * Exposure of L1 and L2 information * Initiate control and/or configuration of L1 and L2 parameters |

</div>

# Common Information Elements for E2SM Service Models

## General

Clause 6.2 presents the individual Information Elements that may be adopted by any specific E2SM including the specifications listed in table 5-1. Clause 6.3 provides the corresponding ASN.1 definition of each Information Element, this module may be associated with the ASN.1 definitions in a specific E2SM specification using the ASN.1 "Import" instruction.

The following attributes are used for the tabular description of the messages and information elements:

NOTE: The messages have been defined in accordance with the guidelines specified in 3GPP TR 25.921 [i.2].

## Information Element definitions

### General

When specifying information elements which are to be represented by bit strings, if not otherwise specifically stated in the semantics description of the concerned IE or elsewhere, the following principle applies with regards to the ordering of bits:

* The first bit (leftmost bit) contains the Most Significant Bit (MSB).
* The last bit (rightmost bit) contains the Least Significant Bit (LSB).
* When importing bit strings from other specifications, the first bit of the bit string contains the first bit of the concerned information.

### E2SM common IEs

##### RAN Function Name

This IE defines the name of a given *RAN Function Name* IE as a structured data.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics**  **description** |
| RAN Function Short Name | M |  | PrintableString(SIZE(1..150,...)) | Suitable unique  short name. |
| RAN Function Service Model OID | M |  | PrintableString(SIZE(1..1000,...)  ) | Object Identifier of this specific E2SM. Formatted as per  OID. |
| RAN Function Description | M |  | PrintableString(SIZE(1..150,...)) | Suitable text  describing scope of E2SM. |
| RAN Function Instance | O |  | INTEGER | Suggested when E2 Node declares multiple RAN Function ID supporting the same  E2SM specification. |

</div>

##### RIC Style Type

This IE defines the identifier of a given RIC Style.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics**  **description** |
| RIC Style Type | M |  | INTEGER |  |

</div>

##### RIC Style Name

This IE defines the name of a given RIC Style.

The same E2SM may support more than one Style for each RIC Service.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics**  **description** |
| RIC Style Name | M |  | PrintableString(SIZE(1..150,...)) |  |

</div>

##### RIC Format Type

This IE defines the identifier of a given RIC Format.

The same E2SM may support more than one encoding Formats for each E2AP IE and each E2AP IE message encoding Format may be used by one or more RIC Service Styles.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics**  **description** |
| RIC Format Type | M |  | INTEGER |  |

</div>

##### Cell Global ID

This IE is used to globally identify a cell in an E2 Node. The IE is derived from 3GPP TS 38.423 [7] clause 9.2.3.25 "Target Cell Global ID".

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| CHOICE *RAT type* | M |  |  |  |
| *>NR* |  |  |  |  |
| >>NR CGI | M |  | 6.2.3.7 |  |
| *>E-UTRA* |  |  |  |  |
| >>E-UTRA CGI | M |  | 6.2.3.11 |  |

</div>

#### UE ID

This IE contains the O-RAN agreed UE ID data structure to be used on E2 interface.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| CHOICE *UEID case* | M |  |  |  |
| *>gNB* |  |  |  | E2 Node of type gNB when  connected to 5GC. |
| >>AMF UE NGAP ID | M |  | 6.2.3.16 |  |
| >>GUAMI | M |  | 6.2.3.17 |  |
| >>gNB-CU UE F1AP ID  List | C-  ifCUDUsep arated |  |  | More than 1 F1AP ID shall be reported by E2 Node only when  NR-DC is established. |
| >>>gNB-CU UE F1AP  ID Item |  | *1 ..*  *<maxF1APId*  *>* |  |  |
| >>>>gNB-CU UE  F1AP ID | M |  | 6.2.3.21 |  |
| >>gNB-CU-CP UE E1AP  ID List | C-  ifCPUPsep arated |  |  |  |
| >>>gNB-CU-CP UE E1AP ID Item |  | *1 ..*  *<maxE1APId*  *>* |  |  |
| >>>>gNB-CU-CP  UE E1AP ID | M |  | 6.2.3.20 |  |
| >>RAN UE ID | O |  | 6.2.3.25 |  |
| >>M-NG-RAN node UE  XnAP ID | C-  ifDCSetup |  | 6.2.3.19 | To be reported by both MN and  SN. |
| >>Global gNB ID | O |  | 6.2.3.3 | This IE shall not be used. *Global NG-RAN Node ID* IE shall  replace this IE. |
| >>Global NG-RAN Node  ID | C-  ifDCSetup |  | 6.2.3.2 | To be reported only by SN. |
| >>Cell RNTI | O |  | 6.2.2.17 |  |
| *>gNB-DU / en-gNB-DU* |  |  |  | E2 node of type gNB-DU. |
| >>gNB-CU UE F1AP ID | M |  | 6.2.3.21 |  |
| >>RAN UE ID | O |  | 6.2.3.25 |  |
| >>Cell RNTI | O |  | 6.2.2.17 |  |
| >*gNB-CU-UP / en-gNB-CU-*  *UP* |  |  |  | E2 node of type gNB-CU-UP. |
| >>gNB-CU-CP UE E1AP  ID | M |  | 6.2.3.20 |  |
| >>RAN UE ID | O |  | 6.2.3.25 |  |
| *>ng-eNB* |  |  |  | E2 Node of type ng-eNB when  connected to 5GC. |
| >>AMF UE NGAP ID | M |  | 6.2.3.16 |  |
| >>GUAMI | M |  | 6.2.3.17 |  |
| >>ng-eNB-CU UE W1AP ID | C-  ifCUDUsep arated |  | 6.2.3.22 |  |
| >>M-NG-RAN node UE  XnAP ID | C-  ifDCSetup |  | 6.2.3.19 | To be reported by both MN and  SN. |
| >>Global ng-eNB ID | O |  | 6.2.3.8 | This IE shall not be used. *Global NG-RAN Node ID* IE shall  replace this IE. |
| >>Global NG-RAN Node  ID | C-  ifDCSetup |  | 6.2.3.2 | To be reported only by SN. |
| >>Cell RNTI | O |  | 6.2.2.17 |  |
| *>ng-eNB-DU* |  |  |  | E2 node of type ng-eNB-DU. |
| >> ng-eNB-CU UE W1AP  ID | M |  | 6.2.3.22 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| >>Cell RNTI | O |  | 6.2.2.17 |  |
| *>en-gNB* |  |  |  | E2 Node of type en-gNB when connected to EPC and EN-DC is  established. |
| >>MeNB UE X2AP ID | M |  | 6.2.3.23 |  |
| >>MeNB UE X2AP ID  Extension | O |  | 6.2.3.24 |  |
| >>Global eNB ID | M |  | 6.2.3.9 |  |
| >>gNB-CU UE F1AP ID | C-  ifCUDUsep arated |  | 6.2.3.21 |  |
| >>gNB-CU-CP UE E1AP  ID List | C-  ifCPUPsep arated |  |  |  |
| >>>gNB-CU UE E1AP  ID Item |  | *1 ..*  *<maxE1APId*  *>* |  |  |
| >>>>gNB-CU-CP  UE E1AP ID | M |  | 6.2.3.20 |  |
| >> RAN UE ID | O |  | 6.2.3.25 |  |
| >>Cell RNTI | O |  | 6.2.2.17 |  |
| *>eNB* |  |  |  | E2 Node of type eNB when  connected to EPC. |
| >>MME UE S1AP ID | M |  | 6.2.3.26 |  |
| >>GUMMEI | M |  | 6.2.3.18 |  |
| >>MeNB UE X2AP ID | C-  ifDCSetup |  | 6.2.3.23 | To be reported by MeNB and  SeNB. |
| >>MeNB UE X2AP ID  Extension | C-  ifDCSetup |  | 6.2.3.24 | To be reported by MeNB and  SeNB. |
| >>Global eNB ID | C-  ifDCSetup |  | 6.2.3.9 | To be reported only by SeNB. |
| >>Cell RNTI | O |  | 6.2.2.17 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| *maxF1APId* | Maximum number of F1AP UEID for a NR-NR DC is 4. |
| *maxE1APId* | Maximum number of E1AP UEID for UE connected with different CU-  UP is 65535. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Condition** | **Explanation** |
| ifDCSetup | This IE shall be present in messages from E2 Node to NearRT-RIC if DC is established, whereas from NearRT-RIC to E2 Node messages,  this IE may not be included. |
| ifCUDUseparated | This IE shall be present in messages from E2 Node to NearRT-RIC for a CU-DU separated ng-eNB or (en-)gNB, whereas from NearRT-  RIC to E2 Node messages, this IE may not be included. |
| ifCPUPseparated | This IE shall be present in messages from E2 Node to NearRT-RIC  for a CP-UP separated (en-)gNB, whereas from NearRT-RIC to E2 Node messages, this IE may not be included. |

</div>

##### Group ID

This IE defines a generic "Group ID" suitable for both EPC and 5GC networks.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| CHOICE *Core type* | M |  |  |  |
| *>5GC* |  |  |  |  |
| >>IRFSP | M |  | 6.2.3.27 |  |
| *>EPC* |  |  |  |  |
| >>SPID | M |  | 6.2.3.28 |  |

</div>

##### Core CP ID

This IE defines a generic "Core CP ID" suitable for both EPC and 5GC networks.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| CHOICE *Core type* | M |  |  |  |
| *>5GC* |  |  |  |  |
| >>GUAMI | M |  | 6.2.3.17 |  |
| *>EPC* |  |  |  |  |
| >>GUMMEI | M |  | 6.2.3.18 |  |

</div>

##### QoS ID

This IE defines a generic "QoS ID" suitable for both EPC and 5GC networks.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| CHOICE *Core type* | M |  |  |  |
| *>5GC* |  |  |  |  |
| >>5QI | M |  | 6.2.3.13 |  |
| *>EPC* |  |  |  |  |
| >>QCI | M |  | 6.2.3.14 |  |

</div>

##### Network Interface Type

This IE defines the type of a standardized Network Interface.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Interface Type | M |  | ENUMERATED (NG, Xn, F1, | NG refers to NG interface 3GPP |
|  |  | E1, S1, X2, W1, ...) | TS 38.413 [6]. |
|  |  |  | Xn refers to Xn interface 3GPP |
|  |  |  | TS 38.423 [7]. |
|  |  |  | F1 refers to F1 interface 3GPP |
|  |  |  | TS 38.473 [8]. |
|  |  |  | E1 refers to E1 interface 3GPP |
|  |  |  | TS 37.483 [9]. |
|  |  |  | S1 refers to S1 interface 3GPP |
|  |  |  | TS 36.413 [10]. |
|  |  |  | X2 refers to X2 interface 3GPP |
|  |  |  | TS 36.423 [11]. |
|  |  |  | W1 refers to W1 interface 3GPP |
|  |  |  | TS 37.473 [12]. |

</div>

##### Network Interface Identifier

This IE defines the identifier of the network node terminating a specific network interface.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| **CHOICE** *Interface Identifier* | M |  |  |  |
| *>NG* |  |  |  | For interface type NG 3GPP  TS 38.413 [6]. |
| >>GUAMI | M |  | 6.2.3.17 |  |
| *>Xn* |  |  |  | For interface type Xn 3GPP  TS 38.423 [7]. |
| >>Global NG-RAN Node ID | M |  | 6.2.3.2 |  |
| *>F1* |  |  |  | For interface type F1 3GPP  TS 38.473 [8]. |
| >>Global gNB ID | M |  | 6.2.3.2 |  |
| >>gNB-DU ID | M |  | 6.2.3.6 |  |
| *>E1* |  |  |  | For interface type E1 3GPP  TS 37.483 [9]. |
| >>Global gNB ID | M |  | 6.2.3.2 |  |
| >>gNB-CU-UP ID | M |  | 6.2.3.5 |  |
| *>S1* |  |  |  | For interface type S1 3GPP  TS 36.413 [10]. |
| >>GUMMEI | M |  | 6.2.3.18 |  |
| *>X2* |  |  |  | For interface type X2 3GPP  TS 36.423 [11]. |
| >>**CHOICE** *Node Type* | M |  |  |  |
| >>>Global eNB ID |  |  | 6.2.3.9 | For eNB. |
| >>>Global en-gNB ID |  |  | 6.2.3.4 | For en-gNB. |
| *>W1* |  |  |  | For interface type W1 3GPP  TS 37.473 [12]. |
| >>Global ng-eNB ID | M |  | 6.2.3.8 |  |
| >>ng-eNB-DU ID | M |  | 6.2.3.10 |  |

</div>

##### Network Interface Message ID

This IE defines the identifier for a specific message of a given Network Interface.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Interface Procedure ID | M |  | INTEGER | Elementary Procedure Code. |
| Message Type | M |  | ENUMERATED  (InitiatingMessage, SuccessfulOutcome, UnsuccessfulOutcome,  ...) |  |

</div>

##### RRC Message ID

This IE defines the identifier for a specific RRC message defined in either 3GPP TS 36.331 [14] or 3GPP TS 38.331 [15].

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| **CHOICE** *RRC Type* | M |  |  |  |
| *>LTE* |  |  |  |  |
| >>LTE RRC Class | M |  | ENUMERATED (BCCH- BCH, BCCH-BCH-MBMS, BCCH-DL-SCH, BCCH- DL-SCH-BR, BCCH-DL- SCH-MBMS, MCCH, PCCH, DL-CCCH, DL- DCCH, UL-CCCH, UL-  DCCH, SC-MCCH, ...) | Refers to RRC message class defined in 3GPP TS 36.331 [14]  clause 6.2.1. |
| *>NR* |  |  |  |  |
| >>NR RRC Class | M |  | ENUMERATED (BCCH- BCH, BCCH-DL-SCH, DL- CCCH, DL-DCCH, PCCH, UL-CCCH, UL-CCCH1,  UL-DCCH, ...) | Refers to RRC message class defined in 3GPP TS 38.331 [15]  clause 6.2.1. |
| RRC Message ID | M |  | INTEGER | Number starts from 0 from the first entry of a given RRC message class defined in 3GPP TS 36.331 [14] or  TS 38.331 [15]. |

</div>

##### Serving Cell PCI

This IE is used to identify the serving cell PCI in an E2 Node. The IE is derived from 3GPP TS 38.473 [8] clause 9.3.1.10 and 3GPP TS 36.423 [11] clause 9.2.8.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| **CHOICE** *RAT type* | M |  |  |  |
| *>NR* |  |  |  |  |
| >>NR PCI | M |  | 6.2.3.29 |  |
| *>E-UTRA* |  |  |  |  |
| >>E-UTRA PCI | M |  | 6.2.3.32 |  |

</div>

##### Serving Cell ARFCN

This IE is used to identify the serving cell ARFCN in an E2 Node. The IE is derived from 3GPP TS 38.473 [8] clause 9.3.1.17 and 3GPP TS 36.423 [11] clause 9.2.26.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| **CHOICE** *RAT type* | M |  |  |  |
| *>NR* |  |  |  |  |
| >>NR ARFCN | M |  | 6.2.3.30 |  |
| *>E-UTRA* |  |  |  |  |
| >>EARFCN | M |  | 6.2.3.33 |  |

</div>

##### Beam ID

This IE is used to identify the generic "Beam ID" suitable for NR Radio Access Technology (RAT).

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| CHOICE *RAT* | M |  |  |  |
| *>NR* |  |  |  |  |
| >>NR SSB-index | M |  | 6.2.3.36 | SSB-Index is used in NR as  the Beam identifier. |

</div>

##### Cell RNTI

This represents a temporary UE Identifier in a cell in a Radio Network.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| C-RNTI | M |  | 6.2.3.37 |  |
| Cell Global ID | M |  | 6.2.2.5 | Identifies the cell where the C-  RNTI is generated. |

</div>

##### Partial UE ID

This IE contains the UE ID data structure to be used for communication from Near-RT RIC to E2 Node.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| AMF UE NGAP ID | O |  | 6.2.3.16 |  |
| GUAMI | O |  | 6.2.3.17 |  |
| gNB-CU UE F1AP ID | O |  | 6.2.3.21 |  |
| gNB-CU-CP UE E1AP ID | O |  | 6.2.3.20 |  |
| RAN UE ID | O |  | 6.2.3.25 |  |
| M-NG-RAN node UE XnAP  ID | O |  | 6.2.3.19 |  |
| Global NG-RAN Node ID | O |  | 6.2.3.2 |  |
| Cell RNTI | O |  | 6.2.2.17 |  |
| ng-eNB-CU UE W1AP ID | O |  | 6.2.3.22 |  |
| MeNB UE X2AP ID | O |  | 6.2.3.23 |  |
| MeNB UE X2AP ID  Extension | O |  | 6.2.3.24 |  |
| Global eNB ID | O |  | 6.2.3.9 |  |
| MME UE S1AP ID | O |  | 6.2.3.26 |  |
| GUMMEI | O |  | 6.2.3.18 |  |

</div>

### 3GPP derived IEs

##### PLMN Identity

This IE indicates the PLMN Identity.

Derived from 3GPP TS 38.413 [6] clause 9.3.3.5.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| PLMN Identity | M |  | OCTET STRING  (SIZE(3)) | Defined in 3GPP TS 38.413 [6]  clause 9.3.3.5. |

</div>

##### Global NG-RAN Node ID

This IE is used to globally identify an NG-RAN node of gNB and ng-eNB cases only. Derived from 3GPP TS 38.423 [7] clause 9.2.2.3.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| CHOICE *NG-RAN node* | M |  |  |  |
| *>gNB* |  |  |  |  |
| >>Global gNB ID | M |  | 6.2.3.3 |  |
| >*ng-eNB* |  |  |  |  |
| >>Global ng-eNB ID | M |  | 6.2.3.8 |  |

</div>

##### Global gNB ID

This IE is used to globally identify a gNB. Derived from 3GPP TS 38.413 [6] clause 9.3.1.6.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| PLMN Identity | M |  | 6.2.3.1 |  |
| CHOICE *gNB ID* | M |  |  |  |
| *>gNB ID* |  |  |  |  |
| >>gNB ID | M |  | BIT STRING  (SIZE(22..32)) | Defined in 3GPP TS 38.413 [6]  clause 9.3.1.6. |

</div>

##### Global en-gNB ID

This IE is used to globally identify an en-gNB. Derived from 3GPP TS 36.423 [11] clause 9.2.112.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| PLMN Identity | M |  | 6.2.3.1 |  |
| CHOICE *en-gNB ID* | M |  |  |  |
| *>en-gNB ID* |  |  |  |  |
| >>en-gNB ID | M |  | BIT STRING (SIZE(22..32)) | Defined in 3GPP TS 36.423  [11] clause 9.2.112. |

</div>

##### gNB-CU-UP ID

This IE uniquely identifies the gNB-CU-UP at least within a gNB-CU-CP. Derived from 3GPP TS 37.483 [9] clause 9.3.1.15.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| gNB-CU-UP ID | M |  | INTEGER (0  .. 236-1) | Defined in 3GPP TS 37.483 [9]  clause 9.3.1.15. |

</div>

##### gNB-DU ID

This IE uniquely identifies the gNB-DU at least within a gNB-CU. Derived from 3GPP TS 38.473 [8] clause 9.3.1.9.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| gNB-DU ID | M |  | INTEGER (0  .. 236-1) | Defined in 3GPP TS 38.473 [8]  clause 9.3.1.9. |

</div>

#### NR CGI

This IE is used to globally identify an NR cell. Derived from 3GPP TS 38.413 [6] clause 9.3.1.7.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| PLMN Identity | M |  | 6.2.3.1 |  |
| NR Cell Identity | M |  | BIT STRING  (SIZE(36)) | Defined in 3GPP TS  38.413 [6] clause 9.3.1.7. |

</div>

##### Global ng-eNB ID

This IE is used to globally identify an ng-eNB. Derived from 3GPP TS 38.413 [6] clause 9.3.1.8.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| PLMN Identity | M |  | 6.2.3.1 |  |
| CHOICE *ng-eNB ID* | M |  |  |  |
| *>Macro ng-eNB ID* |  |  |  |  |
| >>Macro ng-eNB ID | M |  | BIT STRING  (SIZE(20)) | Defined in 3GPP TS 38.413 [6]  clause 9.3.1.8. |
| *>Short Macro ng-eNB ID* |  |  |  |  |
| >>Short Macro ng-eNB  ID | M |  | BIT STRING  (SIZE(18)) | Defined in 3GPP TS 38.413 [6]  clause 9.3.1.8. |
| *>Long Macro ng-eNB ID* |  |  |  |  |
| >>Long Macro ng-eNB ID | M |  | BIT STRING  (SIZE(21)) | Defined in 3GPP TS 38.413 [6]  clause 9.3.1.8. |

</div>

##### Global eNB ID

This IE is used to globally identify an eNB. Derived from 3GPP TS 36.413 [10] clause 9.2.1.37.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| PLMN Identity | M |  | 6.2.3.1 |  |
| CHOICE *eNB ID* | M |  |  |  |
| *>Macro eNB ID* |  |  |  |  |
| >>Macro eNB ID | M |  | BIT STRING  (SIZE(20)) | Defined in 3GPP TS 36.413 [10] clause  9.2.1.37. |
| *>Home eNB ID* |  |  |  |  |
| >>Home eNB ID | M |  | BIT STRING  (SIZE(28)) | Defined in 3GPP TS 36.413 [10] clause  9.2.1.37. |
| *>Short Macro eNB ID* |  |  |  |  |
| >> Short Macro  eNB ID | M |  | BIT STRING  (SIZE(18)) | Defined in 3GPP TS 36.413 [10] clause  9.2.1.37. |
| *>Long Macro eNB ID* |  |  |  |  |
| >> Long Macro  eNB ID | M |  | BIT STRING  (SIZE(21)) | Defined in 3GPP TS 36.413 [10] clause  9.2.1.37. |

</div>

##### ng-eNB-DU ID

This IE uniquely identifies the ng-eNB-DU at least within an ng-eNB-CU. Derived from 3GPP TS 37.473 [12] clause 9.3.1.9.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| ng-eNB-DU ID | M |  | INTEGER (0 ..  236-1) | Defined in 3GPP TS 37.473 [12]  clause 9.3.1.9. |

</div>

#### E-UTRA CGI

This IE is used to globally identify an E-UTRA cell. Derived from 3GPP TS 38.413 [6] clause 9.3.1.9.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| PLMN Identity | M |  | 6.2.3.1 |  |
| E-UTRA Cell Identity | M |  | BIT STRING  (SIZE(28)) | Defined in 3GPP TS  38.413 [6] clause 9.3.1.9. |

</div>

#### S-NSSAI

This IE is used to indicate the S-NSSAI.

Derived from 3GPP TS 38.413 [6] clause 9.3.1.24.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| SST | M |  | OCTET STRING  (SIZE(1)) | Defined in 3GPP TS 38.413 [6]  clause 9.3.1.24. |
| SD | O |  | OCTET STRING  (SIZE(3)) | Defined in 3GPP TS 38.413 [6]  clause 9.3.1.24. |

</div>

#### 5QI

This IE is used to indicate 5QI value.

Derived from 3GPP TS 38.413 [6] clause 9.3.1.28.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| 5QI | M |  | INTEGER (0..255, ...) | Defined in 3GPP TS 38.413 [6]  clause 9.3.1.28. |

</div>

#### QCI

This IE is used to indicate QCI value.

Derived from 3GPP TS 36.413 [10] clause 9.2.1.15.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| QCI | M |  | INTEGER (0..255) | Defined in 3GPP TS 36.413 [10]  clause 9.2.1.15. |

</div>

* + - 1. QoS Flow Identifier (QFI) This IE identifies a QoS flow within a PDU Session. Derived from 3GPP TS 38.413 [6] clause 9.3.1.51.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| QoS Flow Identifier | M |  | INTEGER (0..63, ...) | Defined in 3GPP TS 38.413 [6]  clause 9.3.1.51. |

</div>

#### AMF UE NGAP ID

This IE uniquely identifies a UE over the NG interface within a NG-RAN node. Derived from 3GPP TS 38.413 [6] clause 9.3.3.1.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| AMF UE NGAP ID | M |  | INTEGER (0..240 -1) | Defined in 3GPP TS 38.413 [6]  clause 9.3.3.1. |

</div>

#### GUAMI

This IE indicates the AMF identity.

Derived from 3GPP TS 38.413 [6] clause 9.3.3.3.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| PLMN Identity | M |  | 6.2.3.1 |  |
| AMF Region ID | M |  | BIT STRING  (SIZE(8)) |  |
| AMF Set ID | M |  | BIT STRING  (SIZE(10)) | Defined in 3GPP TS 38.413 [6]  clause 9.3.3.12. |
| AMF Pointer | M |  | BIT STRING  (SIZE(6)) | Defined in 3GPP TS 38.413 [6]  clause 9.3.3.19. |

</div>

#### GUMMEI

This IE indicates the globally unique MME identity. Derived from 3GPP TS 36.413 [10] clause 9.2.3.9.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| PLMN Identity | M |  | 6.2.3.1 |  |
| MME Group ID | M |  | OCTET STRING (SIZE(2)) |  |
| MME code | M |  | OCTET STRING (SIZE (1)) | Defined in 3GPP TS  36.413 [10] clause  9.2.3.12. |

</div>

##### NG-RAN Node UE XnAP ID

This IE uniquely identifies a UE over the Xn interface within a NG-RAN node. Derived from 3GPP TS 38.423 [7] clause 9.2.3.16.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| NG-RAN node UE XnAP  ID | M |  | INTEGER (0 .. 232 -1) | Defined in 3GPP TS 38.423  [7] clause 9.2.3.16. |

</div>

##### gNB-CU-CP UE E1AP ID

This IE uniquely identifies a UE over the E1 interface within a gNB-CU-CP. Derived from 3GPP TS 37.483 [9] clause 9.3.1.4.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| gNB-CU-CP UE E1AP ID | M |  | INTEGER  (0 .. 232 -1) | Defined in 3GPP TS 37.483 [9]  clause 9.3.1.4. |

</div>

##### gNB-CU UE F1AP ID

This IE uniquely identifies a UE over the F1 interface within a gNB-CU. Derived from 3GPP TS 38.473 [8] clause 9.3.1.4.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| gNB-CU UE F1AP ID | M |  | INTEGER  (0 .. 232 -1) | Defined in 3GPP TS 38.473 [8]  clause 9.3.1.4. |

</div>

##### ng-eNB-CU UE W1AP ID

This IE uniquely identifies a UE over the W1 interface within an ng-eNB-CU. Derived from 3GPP TS 37.473 [12] clause 9.3.1.4.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| ng-eNB-CU UE W1AP ID | M |  | INTEGER (0 ..  232 -1) | Defined in 3GPP TS 37.473 [12]  clause 9.3.1.4. |

</div>

##### eNB UE X2AP ID

This IE, combined with the eNB UE X2AP ID Extension when present regardless its value, uniquely identifies a UE over the X2 interface within an eNB.

Derived from 3GPP TS 36.423 [11] clause 9.2.24.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| eNB UE X2AP ID | M |  | INTEGER  (0..4095) | Defined in 3GPP TS  36.423 [11] clause 9.2.24. |

</div>

##### eNB UE X2AP ID Extension

This IE, combined with the eNB UE X2AP ID uniquely identifies a UE over the X2 interface within an eNB. If the setup of an UE associated signalling connection was initiated including the eNB UE X2AP ID Extension, the eNB UE X2AP ID Extension shall be used by both peers for the life-time of the respective UE-associated signalling connection.

Derived from 3GPP TS 36.423 [11] clause 9.2.86.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| eNB UE X2AP ID Extension | M |  | INTEGER  (0..4095, ...) | Defined in 3GPP TS  36.423 [11] clause 9.2.86. |

</div>

#### RAN UE ID

This UE Identifier identifies an UE over E1 and F1 interface within a gNB. Derived from 3GPP TS 38.473 [8] clause 9.2.2.1.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| RAN UE ID | O |  | OCTET STRING  (SIZE (8)) | Defined in 3GPP TS 38.473 [8]  clause 9.2.2.1. |

</div>

#### MME UE S1AP ID

This IE uniquely identifies a UE over the S1 interface within a MME. Derived from 3GPP TS 36.413 [10] clause 9.2.3.3.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| MME UE S1AP ID | M |  | INTEGER  (0 .. 232 -1) | Defined in 3GPP TS 36.413  [10] clause 9.2.3.3. |

</div>

##### Index to RAT/Frequency Selection Priority (IRFSP)

This IE is used to define local configuration for RRM strategies such as camp priorities in Idle mode and control of inter- RAT/inter-frequency handover in Active mode.

Derived from 3GPP TS 38.413 [6] clause 9.3.1.61.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| Index to RAT/Frequency  Selection Priority | M |  | INTEGER (1..256,  ...) | Defined in 3GPP TS 38.413 [6]  clause 9.3.1.61. |

</div>

##### Subscriber Profile ID for RAT/Frequency priority (SPID)

This IE is used to define camp priorities in Idle mode and to control inter-RAT/inter-frequency handover in Active mode. Derived from 3GPP TS 36.413 [10] clause 9.2.1.39.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| Subscriber Profile ID for  RAT/Frequency Priority | M |  | INTEGER (1..256) | Defined in 3GPP TS 36.413  [10] clause 9.2.1.39. |

</div>

#### NR PCI

This IE is used to identify an NR cell PCI. Derived from 3GPP TS 38.473 [8] clause 9.3.1.10.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| NR PCI | M |  | INTEGER  (0.. 1007) | Derived from 3GPP TS  38.473 [8] clause 9.3.1.10. |

</div>

#### NR ARFCN

This IE is used to identify an NR ARFCN. Derived from 3GPP TS 38.473 [8] clause 9.3.1.17.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE Type and**  **Reference** | **Semantics Description** |
| NR ARFCN | M |  | INTEGER  (0..maxNRARFCN) | Derived from 3GPP TS  38.473 [8] clause 9.3.1.17. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxNRARFCN | Maximum value of NR ARFCNs. Value is 3279165. |

</div>

#### 5GS TAC

This IE is used to identify 5GS Tracking Area Code. Defined in 3GPP TS 38.473 [8] clause 9.3.1.29.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| 5GS TAC | M |  | OCTET STRING  (SIZE (3)) | Defined in 3GPP TS  38.473 [8] clause 9.3.1.29. |

</div>

#### E-UTRA PCI

This IE is used to identify an E-UTRA cell PCI. Derived from 3GPP TS 36.423 [11] clause 9.2.8.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| E-UTRA PCI | M |  | INTEGER  (0.. 503, ...) | Derived from 3GPP TS  36.423 [11] clause 9.2.8. |

</div>

#### E-UTRA ARFCN

This IE is used to identify an E-UTRA Frequency Info. Defined in 3GPP TS 36.423 [11] clause 9.2.26.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE Type and**  **Reference** | **Semantics Description** |
| EARFCN | M |  | INTEGER (0..  maxEARFCN) | Defined in 3GPP TS  36.423 [11] clause 9.2.26. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxEARFCN | Maximum value of EARFCNs. Value is 65535. |

</div>

#### E-UTRA TAC

This IE is used to identify an E-UTRA Tracking Area Code. Derived from 3GPP TS 36.423 [11] clause 9.2.8.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| E-UTRA TAC | M |  | OCTET STRING  (SIZE(2)) | Derived from 3GPP TS  36.423 [11] clause 9.2.8. |

</div>

##### NR Frequency Info

This IE is used to define the carrier frequency and bands used in a cell. Derived from 3GPP TS 38.473 [8] clause 9.3.1.17.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE Type and Reference** | **Semantics Description** |
| NR ARFCN | M |  | 6.2.3.30 |  |
| NR Frequency  Band List |  | *1* |  |  |
| >NR Frequency  Band Item |  | *1..<maxnoofNRCellBands>* |  |  |
| >>NR  Frequency Band | M |  | INTEGER (1.. 1024, ...) | Defined in 3GPP TS 38.473  [8] clause 9.3.1.17. |
| >>Supported  SUL band List |  | *0..<maxnoofNRCellBands>* |  |  |
| >>>Supported  SUL band Item | M |  | INTEGER (1.. 1024, ...) | Defined in 3GPP TS 38.473  [8] clause 9.3.1.17. |
| NRFrequency Shift  7p5khz | O |  | ENUMERATED (false,  true, ...) | Defined in 3GPP TS 38.473  [8] clause 9.3.1.17. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofNRCellBands | Maximum no. of frequency bands supported for a NR cell.  Value is 32. |

</div>

##### NR SSB-Index

This IE is used to identify the NR SSB-Index. Derived from 3GPP TS 38.331 [15] clause 6.3.2.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| SSB-Index | M |  | INTEGER  (0.. maxNrofSSBs-  1) | Derived from 3GPP TS  38.331 [15] clause 6.3.2. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxNrofSSBs-1 | Maximum number of SSB resources in a resource set  minus 1. Value is 63. |

</div>

#### C-RNTI

This represents a temporary UE Identifier in a cell in a Radio Network. Derived from 3GPP TS 38.331 [15] clause 6.3.2.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| C-RNTI | M |  | INTEGER  (0..65535) | Defined in 3GPP TS 38.331  [15] clause 6.3.2. |

</div>

## Information Element Abstract Syntax (with ASN.1)

### General

E2SM ASN.1 definition conforms to ITU-T Rec. X.680 [16] and ITU-T Rec. X.681 [17].

Clause 6.3.2 presents the Abstract Syntax of the common E2SM information elements that may be used with RAN Function specific O-RAN WG3.TS.E2AP [3] Information Elements when encoded using ASN.1. In case there is contradiction between the ASN.1 definition in this clause and the tabular format in clause 6.2, the ASN.1 shall take precedence, except for the definition of conditions for the presence of conditional elements, in which the tabular format shall take precedence.

### Information Element definitions

-- ASN1START

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- E2SM

-- Information Element Definitions

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

E2SM-COMMON-IEs {

iso(1) identified-organization(3) dod(6) internet(1) private(4) enterprise(1) 53148 e2(1) version1(1) e2sm(2) e2sm-COMMON-IEs(0)}

DEFINITIONS AUTOMATIC TAGS ::= BEGIN

-- Constants

maxE1APid INTEGER ::= 65535

maxF1APid INTEGER ::= 4

-- IEs derived from 3GPP 36.423 (X2AP) maxEARFCN INTEGER ::= 65535

-- IEs derived from 3GPP 38.473 (F1AP) maxNRARFCN INTEGER ::= 3279165

maxnoofNrCellBands INTEGER ::= 32

-- IEs derived from 3GPP 38.331 (NR RRC) maxNrofSSBs-1 INTEGER ::= 63

-- E2SM Common IEs

Beam-ID ::= CHOICE {

nR-Beam-ID NR-SSB-Index,

...

}

Cell-RNTI ::= SEQUENCE {

c-RNTI RNTI-Value,

cell-Global-ID CGI,

...

}

CGI ::= CHOICE {

nR-CGI NR-CGI,

eUTRA-CGI EUTRA-CGI,

...

}

CoreCPID ::= CHOICE {

fiveGC GUAMI,

ePC GUMMEI,

...

}

InterfaceIdentifier ::= CHOICE {

nG InterfaceID-NG,

xN InterfaceID-Xn,

f1 InterfaceID-F1,

e1 InterfaceID-E1,

s1 InterfaceID-S1,

x2 InterfaceID-X2,

w1 InterfaceID-W1,

...

}

InterfaceID-NG ::= SEQUENCE { guami GUAMI,

...

}

InterfaceID-Xn ::= SEQUENCE {

global-NG-RAN-ID GlobalNGRANNodeID,

...

}

InterfaceID-F1 ::= SEQUENCE {

globalGNB-ID GlobalGNB-ID,

gNB-DU-ID GNB-DU-ID,

...

}

InterfaceID-E1 ::= SEQUENCE {

globalGNB-ID GlobalGNB-ID,

gNB-CU-UP-ID GNB-CU-UP-ID,

...

}

InterfaceID-S1 ::= SEQUENCE { gUMMEI GUMMEI,

...

}

InterfaceID-X2 ::= SEQUENCE { nodeType CHOICE {

global-eNB-ID GlobalENB-ID,

global-en-gNB-ID GlobalenGNB-ID,

...

},

...

}

InterfaceID-W1 ::= SEQUENCE {

global-ng-eNB-ID GlobalNgENB-ID,

ng-eNB-DU-ID NGENB-DU-ID,

...

}

Interface-MessageID ::= SEQUENCE { interfaceProcedureID INTEGER,

messageType ENUMERATED {initiatingMessage, successfulOutcome, unsuccessfulOutcome,

...},

...

}

InterfaceType ::= ENUMERATED {nG, xn, f1, e1, s1, x2, w1, ...} GroupID ::= CHOICE {

fiveGC FiveQI,

ePC QCI,

...

}

PartialUEID ::= SEQUENCE {

amf-UE-NGAP-ID AMF-UE-NGAP-ID OPTIONAL,

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
|  | guami  gNB-CU-UE-F1AP-ID gNB-CU-CP-UE-E1AP-ID  ran-UEID  m-NG-RAN-UE-XnAP-ID  globalNG-RANNode-ID | GUAMI  GNB-CU-UE-F1AP-ID GNB-CU-CP-UE-E1AP-ID RANUEID  NG-RANnodeUEXnAPID  GlobalNGRANNodeID | OPTIONAL, OPTIONAL, OPTIONAL, OPTIONAL, OPTIONAL,  OPTIONAL, |
| cell-RNTI | Cell-RNTI | OPTIONAL, |
| } | ng-eNB-CU-UE-W1AP-ID m-eNB-UE-X2AP-ID  m-eNB-UE-X2AP-ID-Extension globalENB-ID  mME-UE-S1AP-ID gUMMEI  ... | NGENB-CU-UE-W1AP-ID ENB-UE-X2AP-ID  ENB-UE-X2AP-ID-Extension GlobalENB-ID  MME-UE-S1AP-ID GUMMEI | OPTIONAL, OPTIONAL, OPTIONAL, OPTIONAL, OPTIONAL, OPTIONAL, |

</div>

QoSID ::= CHOICE {

fiveGC FiveQI,

ePC QCI,

...

}

RANfunction-Name ::= SEQUENCE{

ranFunction-ShortName PrintableString(SIZE(1..150,...)), ranFunction-E2SM-OID PrintableString(SIZE(1..1000,...)), ranFunction-Description PrintableString(SIZE(1..150,...)),

ranFunction-Instance INTEGER OPTIONAL,

...

}

RIC-Format-Type ::= INTEGER RIC-Style-Type ::= INTEGER

RIC-Style-Name ::= PrintableString(SIZE(1..150,...))

RRC-MessageID ::= SEQUENCE {

rrcType CHOICE {

lTE RRCclass-LTE,

nR RRCclass-NR,

...

},

messageID INTEGER,

...

}

RRCclass-LTE ::= ENUMERATED {bCCH-BCH, bCCH-BCH-MBMS, bCCH-DL-SCH, bCCH-DL-SCH-BR, bCCH-DL-SCH-MBMS, mCCH, pCCH, dL-CCCH, dL-DCCH, uL-CCCH, uL-DCCH, sC-MCCH, ...}

RRCclass-NR ::= ENUMERATED {bCCH-BCH, bCCH-DL-SCH, dL-CCCH, dL-DCCH, pCCH, uL-CCCH, uL-CCCH1, uL-DCCH,

...}

ServingCell-ARFCN ::= CHOICE { nR NR-ARFCN,

eUTRA E-UTRA-ARFCN,

...

}

ServingCell-PCI ::= CHOICE { nR NR-PCI,

eUTRA E-UTRA-PCI,

...

}

UEID ::= CHOICE{

gNB-UEID UEID-GNB,

gNB-DU-UEID UEID-GNB-DU, gNB-CU-UP-UEID UEID-GNB-CU-UP, ng-eNB-UEID UEID-NG-ENB,

ng-eNB-DU-UEID UEID-NG-ENB-DU, en-gNB-UEID UEID-EN-GNB,

eNB-UEID UEID-ENB,

...

}

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| UEID-GNB ::= SEQUENCE{  amf-UE-NGAP-ID | AMF-UE-NGAP-ID, |  |
| guami | GUAMI, |  |
| gNB-CU-UE-F1AP-ID-List | UEID-GNB-CU-F1AP-ID-List | OPTIONAL, |

</div>

-- C-ifCUDUseparated: This IE shall be present in messages from E2 Node to NearRT-RIC for a CU-DU separated gNB, whereas from NearRT-RIC to E2 Node messages, this IE may not be included. More than 1 F1AP ID shall be reported by E2 Node only when NR-DC is established.

gNB-CU-CP-UE-E1AP-ID-List UEID-GNB-CU-CP-E1AP-ID-List OPTIONAL,

-- C-ifCPUPseparated: This IE shall be present in messages from E2 Node to NearRT-RIC for a CP-UP separated gNB, whereas from NearRT-RIC to E2 Node messages, this IE may not be included.

ran-UEID RANUEID OPTIONAL,

m-NG-RAN-UE-XnAP-ID NG-RANnodeUEXnAPID OPTIONAL,

-- C-ifDCSetup: This IE shall be present in messages from E2 Node to NearRT-RIC if DC is established, whereas from NearRT-RIC to E2 Node messages, this IE may not be included. To be reported by both MN and SN.

globalGNB-ID GlobalGNB-ID OPTIONAL,

-- This IE shall not be used. This IE is replaced with globalNG-RANNode-ID.

...,

globalNG-RANNode-ID GlobalNGRANNodeID OPTIONAL,

-- C-ifDCSetup: This IE shall be present in messages from E2 Node to NearRT-RIC if DC is established, whereas from NearRT-RIC to E2 Node messages, this IE may not be included. To be reported only by SN.

cell-RNTI Cell-RNTI OPTIONAL

}

UEID-GNB-CU-CP-E1AP-ID-List ::= SEQUENCE (SIZE(1..maxE1APid)) OF UEID-GNB-CU-CP-E1AP-ID-Item

UEID-GNB-CU-CP-E1AP-ID-Item ::= SEQUENCE{

gNB-CU-CP-UE-E1AP-ID GNB-CU-CP-UE-E1AP-ID,

...

}

UEID-GNB-CU-F1AP-ID-List ::= SEQUENCE (SIZE(1..maxF1APid)) OF UEID-GNB-CU-CP-F1AP-ID-Item UEID-GNB-CU-CP-F1AP-ID-Item ::= SEQUENCE{

gNB-CU-UE-F1AP-ID GNB-CU-UE-F1AP-ID,

...

}

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| UEID-GNB-DU ::= SEQUENCE{ |  |  |
| gNB-CU-UE-F1AP-ID | GNB-CU-UE-F1AP-ID, |
| ran-UEID | RANUEID | OPTIONAL, |
| ..., |  |  |
| cell-RNTI | Cell-RNTI | OPTIONAL |

</div>

}

UEID-GNB-CU-UP ::= SEQUENCE{

gNB-CU-CP-UE-E1AP-ID GNB-CU-CP-UE-E1AP-ID,

ran-UEID RANUEID OPTIONAL,

...

}

UEID-NG-ENB ::= SEQUENCE{

amf-UE-NGAP-ID AMF-UE-NGAP-ID,

guami GUAMI,

ng-eNB-CU-UE-W1AP-ID NGENB-CU-UE-W1AP-ID OPTIONAL,

-- C-ifCUDUseparated: This IE shall be present in messages from E2 Node to NearRT-RIC for a CU-DU separated ng-eNB, whereas from NearRT-RIC to E2 Node messages, this IE may not be included.

m-NG-RAN-UE-XnAP-ID NG-RANnodeUEXnAPID OPTIONAL,

-- C-ifDCSetup: This IE shall be present in messages from E2 Node to NearRT-RIC if DC is established, whereas from NearRT-RIC to E2 Node messages, this IE may not be included. To be reported by both MN and SN.

globalNgENB-ID GlobalNgENB-ID OPTIONAL,

-- This IE shall not be used. This IE is replaced with globalNG-RANNode-ID.

...,

globalNG-RANNode-ID GlobalNGRANNodeID OPTIONAL,

-- C-ifDCSetup: This IE shall be present in messages from E2 Node to NearRT-RIC if DC is established, whereas from NearRT-RIC to E2 Node messages, this IE may not be included. To be reported only by SN.

cell-RNTI Cell-RNTI OPTIONAL

}

UEID-NG-ENB-DU ::= SEQUENCE{

ng-eNB-CU-UE-W1AP-ID NGENB-CU-UE-W1AP-ID,

...,

cell-RNTI Cell-RNTI OPTIONAL

}

UEID-EN-GNB ::= SEQUENCE{

m-eNB-UE-X2AP-ID ENB-UE-X2AP-ID,

m-eNB-UE-X2AP-ID-Extension ENB-UE-X2AP-ID-Extension OPTIONAL, globalENB-ID GlobalENB-ID,

gNB-CU-UE-F1AP-ID GNB-CU-UE-F1AP-ID OPTIONAL,

-- C-ifCUDUseparated: This IE shall be present in messages from E2 Node to NearRT-RIC for a CU-DU separated en-gNB, whereas from NearRT-RIC to E2 Node messages, this IE may not be included.

gNB-CU-CP-UE-E1AP-ID-List UEID-GNB-CU-CP-E1AP-ID-List OPTIONAL,

-- C-ifCPUPseparated: This IE shall be present in messages from E2 Node to NearRT-RIC for a CP-UP separated en-gNB, whereas from NearRT-RIC to E2 Node messages, this IE may not be included.

ran-UEID RANUEID OPTIONAL,

...,

cell-RNTI Cell-RNTI OPTIONAL

}

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| UEID-ENB ::= SEQUENCE{ |  |  |
| mME-UE-S1AP-ID | MME-UE-S1AP-ID, |
| gUMMEI | GUMMEI, |  |
| m-eNB-UE-X2AP-ID | ENB-UE-X2AP-ID | OPTIONAL, |

</div>

-- This IE shall be present in messages from E2 Node to NearRT-RIC if DC is established, whereas from NearRT-RIC to E2 Node messages, this IE may not be included. To be reported by MeNB and SeNB.

m-eNB-UE-X2AP-ID-Extension ENB-UE-X2AP-ID-Extension OPTIONAL, globalENB-ID GlobalENB-ID OPTIONAL,

-- This IE shall be present in messages from E2 Node to NearRT-RIC if DC is established, whereas from NearRT-RIC to E2 Node messages, this IE may not be included. To be reported only by SeNB.

...,

cell-RNTI Cell-RNTI OPTIONAL

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- 3GPP derived IEs

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- NOTE:

-- - Extension fields removed and replaced with "..."

-- - IE names modified across all extracts to use "PLMNIdentity"

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- IEs derived from 3GPP 36.413 (S1AP)

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

ENB-ID ::= CHOICE {

macro-eNB-ID BIT STRING (SIZE (20)), home-eNB-ID BIT STRING (SIZE (28)),

... ,

short-Macro-eNB-ID BIT STRING (SIZE(18)), long-Macro-eNB-ID BIT STRING (SIZE(21))

}

GlobalENB-ID ::= SEQUENCE {

pLMNIdentity PLMNIdentity,

eNB-ID ENB-ID,

...

}

GUMMEI ::= SEQUENCE {

pLMN-Identity PLMNIdentity,

mME-Group-ID MME-Group-ID,

mME-Code MME-Code,

...

}

MME-Group-ID ::= OCTET STRING (SIZE (2)) MME-Code ::= OCTET STRING (SIZE (1)) MME-UE-S1AP-ID ::= INTEGER (0..4294967295) QCI ::= INTEGER (0..255)

SubscriberProfileIDforRFP ::= INTEGER (1..256)

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- IEs derived from 3GPP 36.423 (X2AP)

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- Extension fields removed.

-- Note: to avoid duplicate names with NGAP, XnAP, etc.:

-- GNB-ID renamed ENGNB-ID,

-- GlobalGNB-ID renamed GlobalenGNB-ID,

-- UE-X2AP-ID renamed ENB-UE-X2AP-ID

-- UE-X2AP-ID-Extension renamed ENB-UE-X2AP-ID-Extension

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

EN-GNB-ID ::= CHOICE {

en-gNB-ID BIT STRING (SIZE (22..32)),

...

}

ENB-UE-X2AP-ID ::= INTEGER (0..4095)

ENB-UE-X2AP-ID-Extension ::= INTEGER (0..4095, ...) E-UTRA-ARFCN ::= INTEGER (0..maxEARFCN)

E-UTRA-PCI ::= INTEGER (0..503, ...) E-UTRA-TAC ::= OCTET STRING (SIZE(2))

GlobalenGNB-ID ::= SEQUENCE {

pLMN-Identity PLMNIdentity,

en-gNB-ID EN-GNB-ID,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- IEs derived from 3GPP 37.473 (W1AP)

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* NGENB-CU-UE-W1AP-ID ::= INTEGER (0..4294967295)

NGENB-DU-ID ::= INTEGER (0..68719476735)

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- IEs derived from 3GPP 38.331 (NR RRC)

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* NR-SSB-Index ::= INTEGER (0..maxNrofSSBs-1)

RNTI-Value ::= INTEGER (0..65535)

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- IEs derived from 3GPP 38.413 (NGAP)

-- Extension fields removed and replaced with ...

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* AMFPointer ::= BIT STRING (SIZE(6))

AMFRegionID ::= BIT STRING (SIZE(8)) AMFSetID ::= BIT STRING (SIZE(10))

AMF-UE-NGAP-ID ::= INTEGER (0..1099511627775) EUTRACellIdentity ::= BIT STRING (SIZE(28))

EUTRA-CGI ::= SEQUENCE {

pLMNIdentity PLMNIdentity, eUTRACellIdentity EUTRACellIdentity,

...

}

FiveQI ::= INTEGER (0..255, ...)

GlobalGNB-ID ::= SEQUENCE {

pLMNIdentity PLMNIdentity,

gNB-ID GNB-ID,

...

}

GlobalNgENB-ID ::= SEQUENCE {

pLMNIdentity PLMNIdentity,

ngENB-ID NgENB-ID,

...

}

GNB-ID ::= CHOICE {

gNB-ID BIT STRING (SIZE(22..32)),

...

}

GUAMI ::= SEQUENCE {

pLMNIdentity PLMNIdentity,

aMFRegionID AMFRegionID,

aMFSetID AMFSetID,

aMFPointer AMFPointer,

...

}

IndexToRFSP ::= INTEGER (1..256, ...) NgENB-ID ::= CHOICE {

macroNgENB-ID BIT STRING (SIZE(20)), shortMacroNgENB-ID BIT STRING (SIZE(18)), longMacroNgENB-ID BIT STRING (SIZE(21)),

...

}

NRCellIdentity ::= BIT STRING (SIZE(36)) NR-CGI ::= SEQUENCE {

pLMNIdentity PLMNIdentity, nRCellIdentity NRCellIdentity,

...

}

PLMNIdentity ::= OCTET STRING (SIZE(3))

QosFlowIdentifier ::= INTEGER (0..63, ...) SD ::= OCTET STRING (SIZE(3))

S-NSSAI ::= SEQUENCE {

sST SST,

sD SD OPTIONAL,

...

}

SST ::= OCTET STRING (SIZE(1))

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- IEs derived from 3GPP 38.423 (XnAP)

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* NG-RANnodeUEXnAPID ::= INTEGER (0.. 4294967295)

GlobalNGRANNodeID ::= CHOICE {

gNB GlobalGNB-ID,

ng-eNB GlobalNgENB-ID,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- IEs derived from 3GPP 37.483 (E1AP)

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* GNB-CU-CP-UE-E1AP-ID ::= INTEGER (0..4294967295)

GNB-CU-UP-ID ::= INTEGER (0..68719476735)

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- IEs derived from 3GPP 38.473 (F1AP)

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* FiveGS-TAC ::= OCTET STRING (SIZE(3))

FreqBandNrItem ::= SEQUENCE {

freqBandIndicatorNr INTEGER (1..1024, ...),

...

}

GNB-CU-UE-F1AP-ID ::= INTEGER (0..4294967295) GNB-DU-ID ::= INTEGER (0..68719476735)

NR-PCI ::= INTEGER (0..1007)

NR-ARFCN ::= SEQUENCE {

nRARFCN INTEGER (0..maxNRARFCN),

...

}

NRFrequencyBand-List ::= SEQUENCE (SIZE(1..maxnoofNrCellBands)) OF NRFrequencyBandItem

NRFrequencyBandItem ::= SEQUENCE {

freqBandIndicatorNr INTEGER (1..1024,...), supportedSULBandList SupportedSULBandList,

...

}

NRFrequencyInfo ::= SEQUENCE { nrARFCN NR-ARFCN,

frequencyBand-List NRFrequencyBand-List, frequencyShift7p5khz NRFrequencyShift7p5khz OPTIONAL,

...

}

NRFrequencyShift7p5khz ::= ENUMERATED {false, true, ...} RANUEID ::= OCTET STRING (SIZE (8))

SupportedSULBandList ::= SEQUENCE (SIZE(0..maxnoofNrCellBands)) OF SupportedSULFreqBandItem

SupportedSULFreqBandItem ::= SEQUENCE { freqBandIndicatorNr INTEGER (1..1024,...),

...

}

END

-- ASN1STOP

### Message transfer syntax

E2SM shall use the ASN.1 Basic Packed Encoding Rules (BASIC-PER) Aligned Variant as transfer syntax, as specified in ITU-T Rec. X.691 [21].

# Annex (informative): Change History

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Date** | **Revision** | **Description** |
|  |  |  |
| **2020.01.22** | **01.00** | **Initial version** |
|  |  |  |
| 2020.07.09 | 01.00.01 | Inclusion of agreed CR "E2SM Change to Annex A layout" |
| 2020.07.10 | 01.00.02 | Clarification in table 7.8-2 within the embedded example document  Reference corrected in table in 8.2.2.1 |
| **2020.07.15** | **01.01** | **Editorial and functional corrections** |
|  |  |  |
| 2021.05.28 | v02.00.01 | Inclusion of CR agreed at WG3#99 < NOK.AO-2021.05.05-WG3-CR-0001-  E2SM+common+IEs-v01 >. Endorsed as WG3#100 |
| 2021.07.07 | v02.00.02 | Adopted INT.AO-CR-0010. |
| **2021.08.10** | **02.00** | **New feature: Common IEs with shared ASN.1** |
|  |  |  |
| 2021.11.09 | V02.01.01 | Inclusion of CR agreed at WG3#117 <RSYS-2021.10.05-WG3-CR-0001-E2SM-Common- Correction for UEID and NRARFCN\_v0.5>  Alignment of copyright notice |
| 2021.11.22 | V02.01.02 | Corrections based on WG3 review comments during WG3 approval process |
| **2022.02.07** | **02.01** | **Additional common IEs including O-RAN agreed UEID. Editorial and functional**  **corrections** |
|  |  |  |
| 2022.10.27 | V02.01.01 | Addition of CR:  < NOK-2022.09.01-WG3-CR-0003-E2SM-E1AP reference correction-v03> error in CR corrected (ref [9] should be 37.483)  < NOK-2022.10.31-WG3-CR-0004-E2SM-E2SM-CCC table entry-v01 >  Aligned for specification to latest O-RAN template |
| 2022.11.10 | V02.01.02 | Addition of CR:  <QCM.AO-2022.10.27-WG3-CR-0001-E2SM-RIC Query-v03> |
| 2022.11.16 | V02.01.03 | Changes reflecting remarks received during WG3 approval process   * Alignment to latest O-RAN template * Added R003 to file name * Updated copyright year * Corrected error in CRs implemented in previous drafts |
| **2022.12.07** | **03.00** | **New features: RIC Query. Editorial and functional corrections** |
|  |  |  |
| 2023.02.16 | V03.00.01 | CR <NOK-2023.02.08-WG3-CR-0006-E2SM-PAS step1-v02> approved Prague F2F  16/2/2023 |
| 2023.03.24 | V03.00.02 | Inclusion of corrections agreed during WG3 approval process as per <O-  RAN.WG3.E2SM-R003-v03.00.01-ApprovalChanges-v2> |
| **2023.03.24** | **03.01** | **Alignment of O-RAN Drafting Rules (ODR) in preparation for ETSI PAS submission** |
|  |  |  |
| 2023.05.15 | V03.01.01 | CR <NOK-2023.01.23-WG3-CR-0005-E2SM-Beam-ID-v02> approved WG3#180  CR <NOK-2023.04.28-WG3-CR-0007-E2SM-Correction to clause 2.1-v01> approved WG3#183 |
| 2023.06.27 | V03.01.02 | CR <QCM-2023.04.17-WG3-CR-0002-E2SM-Addition of C-RNTI-v01> approved F2F  Osaka  Editorial correction to ASN.1 variable name "nR-Beam-ID" (was "nR-Beam\_ID") |
| 2023.07.26 | V03.01.03 | Editorial corrections based on comments received during WG3 poll. |
| 2023.07.27 | V03.01.04 | Editorial changes to align to O-RAN TS template v01.01 |
| **2023.07.31** | **04.00** | **Additional common IEs. Editorial and functional corrections** |
|  |  |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Date** | **Revision** | **Description** |
| 2023.10.30 | 04.00.01 | CR < QCM-2023.10.19-WG3-CR-0003-E2SM-UEID Structure for RIC Query\_v0>  approved WG3#202, 25/10/2023. Editorial correction to IE name in ASN.1 |
| 2023.11.15 | 04.00.02 | Editorial corrections implementing WG3 voting period feedback |
| 2023.11.21 | 04.00.03 | Restored full revision history into Annex: Change History and deletion of Annex: History |
| **2023.11.21** | **05.00** | **Additional common IEs. Editorial and function corrections.** |
|  |  |  |
| 2024.02.29 | 05.00.01 | CR <NOK-2024.02.13-WG3-CR-0008-E2SM-Change history-v01> approved F2F Athens |
| 2024.05.22 | 05.00.02 | CR <NOK-2024.04.22-WG3-CR-0009-E2SM-Editorial corrections for PAS-step2-v04> approved WG3#225  Also includes editorial changes to align with ETSI "Edit Help" changes during PAS  processing of v04.00 |
| 2024.07.26 | 05.00.03 | Editorial corrections implementing review comments collected during July24 train  approval |
| **2024.07.26** | **06.00** | **Alignment to ETSI Drafting Rules and implementation of all agreed ETSI PAS**  **comments** |
|  |  |  |
| 2024.10.09 | 06.00.01 | CR <NOK-2024.09.27-E2SM-CR-0011-EditHelp alignment-v1> approved WG3#241 |
| 2024.11.24 | 06.00.02 | Editorial changes to align with O-RAN WORKPROC v04.00  CR <NOK-2024.09.02-E2SM-CR-0010-Adding E2SM-LLC to table 5-2-v02> approved WG3#239  CR <NOK-2024.10.23-WG3-CR-0013-E2SM-Handling LS from MSG-v02> approved F2F  Montreal  CR <NOK-2024.11.12-E2SM-CR-0014-Adding Error handling Cause IE- v02> approved WG3#245  CR <NOK-2024.11.13-WG3-CR-E2SM-0015-Adding RIC Assistance IE-v01 > approved WG3#245  Editorial changes to align with E2SM-v06.00.02 review comments |
| **2024.12.04** | **07.00** | **New features: RIC Assistance, Service Level error handling. Implementation of**  **changes related to ETSI MSG Liaison** |
|  |  |  |

</div>
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG3.TS.E2SM-R004-v07.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG3.TS.E2SM-R004-v07.00.docx).

---

* toc
{:toc}
