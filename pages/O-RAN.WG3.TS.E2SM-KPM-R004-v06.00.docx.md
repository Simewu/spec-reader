## O-RAN.WG3.TS.E2SM-KPM-R004-v06.00.docx

- View in [Reader Mode](https://simewu.com/spec-reader/pages/09-WG3/O-RAN.WG3.TS.E2SM-KPM-R004-v06.00.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG3.TS.E2SM-KPM-R004-v06.00.docx).

---

![webwxgetmsgimg (7).jpeg](../assets/images/9c69df009b87.jpg)O-RAN.WG3.TS.E2SM-KPM-R004-v06.00

*Technical Specification*

**O-RAN Work Group 3 Near-Real-time RAN Intelligent Controller**

**E2 Service Model (E2SM)**

**KPM**

Copyright (C) 2025 by the O-RAN ALLIANCE e.V.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany Register of Associations, Bonn VR 11238, VAT ID DE321720189

Contents

Foreword 4

Modal verbs terminology 4

1. Scope 4
2. References 4
   1. Normative references 4
   2. Informative references 5
3. Definition of terms, symbols and abbreviations 6
   1. Terms 6
   2. Symbols 6
   3. Abbreviations 6
4. General 6
   1. Forwards and Backwards Compatibility 6
   2. Specification Notations 7
   3. Void 7
5. E2SM Services 7
6. RAN Function Service Model Description 8
   1. RAN Function Overview 8
   2. Supported RIC Services 8
      1. REPORT 8
7. RAN Function Description 8
   1. Description 8
   2. RAN Function Name 9
   3. Supported RIC Event Trigger Styles 9
      1. Event Trigger Style Types 9
      2. Event Trigger Style 1: Periodic Report 9
   4. Supported RIC REPORT Service Styles 9
      1. REPORT Service Style Type 9
      2. REPORT Service Style 1: E2 Node Measurement 10
      3. REPORT Service Style 2: E2 Node Measurement for a single UE 11
      4. REPORT Service Style 3: Condition-based, UE-level E2 Node Measurement 11
      5. REPORT Service Style 4: Common condition-based, UE-level Measurement 12
      6. REPORT Service Style 5: E2 Node Measurement for Multiple UEs 13
      7. REPORT Service Style 255: Multiple report Measurements 13
   5. Supported RIC INSERT Service Styles 15
   6. Supported RIC CONTROL Service Styles 15
   7. Supported RIC POLICY Service Styles 15
   8. A Supported RIC QUERY Service Styles 15
   9. Supported RIC Styles and E2SM IE Formats 15
   10. Conversion of measurements derived from 3GPP defined measured values 16
       1. Conversion of measurement definitions 16
       2. Changes in the units of measurements while adopting for E2SM-KPM 17
   11. O-RAN specific Performance Measurement 19
       1. DL Transmitted Data Volume (RLC SDU) 19
       2. UL Transmitted Data Volume (RLC SDU) 20
       3. Distribution of Percentage of DL Transmitted Data Volume to Incoming Data Volume 21
       4. Distribution of Percentage of UL Transmitted Data Volume to Incoming Data Volume 22
       5. Distribution of DL Packet Drop Rate 23
       6. Distribution of UL Packet Loss Rate 24
       7. DL Synchronization Signal based Reference Signal Received Power (SS-RSRP) 25
       8. DL Synchronization Signal based Signal to Noise and Interference Ratio (SS-SINR) 26
       9. UL Sounding Reference Signal based Reference Signal Received Power (SRS-RSRP) 27
       10. Total number of scheduled time slots 28
       11. DL Transmitted Data Volume (MAC SDU) 33
       12. UL Transmitted Data Volume (MAC SDU) 34
8. Elements for E2SM Service Model 34
   1. General 34
   2. Message Functional Definition and Content 35
      1. Messages for RIC Functional procedures 35
      2. Messages for RIC Global Procedures 47
   3. Information Element definitions 49
      1. General 49
      2. RAN Function Name 49
      3. RIC Style Type 49
      4. RIC Style Name 49
      5. RIC Format Type 49
      6. Void 49
      7. Void 49
      8. Granularity Period 49
      9. Measurement Type Name 50
      10. Measurement Type ID 50
      11. Measurement Label 50
      12. Time Stamp 52
      13. Void 53
      14. S-NSSAI 53
      15. PLMN Identity 53
      16. Void 53
      17. 5QI 53
      18. QCI 53
      19. Void 53
      20. Cell Global ID 53
      21. QFI 53
      22. Test Condition Information 53
      23. Test Condition Value 55
      24. UE ID 55
      25. Logical OR 55
      26. Bin Range Definition 56
      27. Bin Range Value 56
      28. Measured Value Reporting Condition 56
      29. Beam ID 57
      30. Job ID 57
   4. Information Element Abstract Syntax (with ASN.1) 58
      1. General 58
      2. Information Element definitions 58
9. Handling of Unknown, Unforeseen and Erroneous Protocol Data 70

Annex (informative) 71

# Foreword

This Technical Specification (TS) has been produced by WG3 of the O-RAN Alliance.

The contents of the present document are subject to continuing work within O-RAN and may change following formal O-RAN approval. Should the O-RAN Alliance modify the contents of the present document, it will be re-released by O-RAN with an identifying change of version date and an increase in version number as follows:

version xx.yy.zz where:

xx: the first digit-group is incremented for all changes of substance, i.e. technical enhancements, corrections, updates, etc. (the initial approved document will have xx=01). Always 2 digits with leading zero if needed.

yy: the second digit-group is incremented when editorial only changes have been incorporated in the document. Always 2 digits with leading zero if needed.

zz: the third digit-group included only in working versions of the document indicating incremental changes during the editing process. External versions never include the third digit-group. Always 2 digits with leading zero if needed.

# Modal verbs terminology

In the present document "**shall**", "**shall not**", "**should**", "**should not**", "**may**", "**need not**", "**will**", "**will not**", "**can**" and "**cannot**" are to be interpreted as described in clause 3.2 of the O-RAN Drafting Rules (Verbal forms for the expression of provisions).

"**must**" and "**must not**" are **NOT** allowed in O-RAN deliverables except when used in direct citation.

# Scope

The present document specifies the E2 Service Model (E2SM) "Key Performance Measurement" (KPM) for the RAN function handling reporting of the cell-level performance measurements for 5G networks defined in TS 28.552 [4] and for EPC networks defined in TS 32.425 [8], and their possible adaptation of UE-level or QoS flow-level measurements.

# References

## Normative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE 1: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long term validity.

NOTE 2: In the case of a reference to a 3GPP document (including a GSM document), a non-specific reference implicitly refers to the latest version of that document in 3GPP Release 18.

The following referenced documents are necessary for the application of the present document.

1. Void
2. O-RAN-WG3.TS.E2GAP: "O-RAN E2 General Aspects and Principles".
3. O-RAN.WG3.TS.E2AP, "O-RAN E2 Application Protocol (E2AP) "
4. 3GPP TS 28.552: "Management and orchestration 5G performance measurements".
5. ITU-T Recommendation X.680 (2002-07): "Information technology - Abstract Syntax Notation One (ASN.1): Specification of basic notation".
6. ITU-T Recommendation X.681 (2002-07): "Information technology - Abstract Syntax Notation One (ASN.1): Information object specification".
7. ITU-T Recommendation X.691 (2002-07): "Information technology - ASN.1 encoding rules - Specification of Packed Encoding Rules (PER)".
8. 3GPP TS 32.425: "Telecommunication management Performance Management Performance managements".
9. IETF RFC 5905 (2010-06): "Network Time Protocol Version 4: Protocol and Algorithms Specification".
10. 3GPP TS 32.404: "Telecommunication management; Performance Management (PM); Performance measurements; Definitions and template".
11. Void
12. O-RAN-WG3.TS.E2SM: "O-RAN E2 Service Model (E2SM)".
13. 3GPP TS 36.413: "E-UTRAN; S1 Application Protocol (S1AP)"
14. 3GPP TS 23.501: "System architecture for the 5G System (5GS); Stage 2"
15. 3GPP TS 36.214: "E-UTRA; Physical layer; Measurements"
16. 3GPP TS 38.215: "NR; Physical layer measurements"
17. 3GPP TS 38.133: "NR; Requirements for support of radio resource management"
18. 3GPP TS 38.214: "NR; Physical layer procedures for data"
19. 3GPP TS 23.203: "Policy and charging control architecture"
20. 3GPP TS 23.003: "Numbering, addressing and identification"
21. O-RAN.WG3.TS.UCR: "O-RAN Use Cases and Requirements"
22. Void
23. O-RAN.WG1.OAD: "O-RAN Architecture Description"
24. Void
25. 3GPP TS 37.340: "NR; Multi-connectivity; Overall description; Stage-2".

## Informative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE 1: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long term validity.

NOTE 2: In the case of a reference to a 3GPP document (including a GSM document), a non-specific reference implicitly refers to the latest version of that document in 3GPP Release 18.

The following referenced documents are not necessary for the application of the present document but they assist the user with regard to a particular subject area.

[i.1] O-RAN.WG1.mMIMO: "O-RAN Massive MIMO Use Cases Technical Report" [i.2] 3GPP TR 21.905: "Vocabulary for 3GPP Specifications"

[i.3] 3GPP TR 25.921: "Guidelines and principles for protocol description and error handling".

# Definition of terms, symbols and abbreviations

## Terms

For the purposes of the present document, the terms and definitions given in TR 21.905 [i.2], O-RAN WG1.OAD [23], O- RAN.WG3.TS.E2SM [12] and the following apply:

**KPM Report**: Key performance measurements for 4G LTE and 5G NR Network Functions.

## Symbols

Void.

## Abbreviations

For the purposes of the present document, the abbreviations given in 3GPP TR 21.905 **??!???????**, O-RAN WG1.OAD [23] and the following apply. An abbreviation defined in the present document takes precedence over the definition of the same abbreviation, if any, in 3GPP TR 21.905 **??!???????** and O-RAN WG1.OAD [23].

EN-DC E-UTRA-NR Dual Connectivity MR-DC Multi-Radio Dual Connectivity

# General

## Forwards and Backwards Compatibility

The forwards and backwards compatibility of the protocol is assured by a mechanism where all current and future messages, and IEs or groups of related IEs, include ID and criticality fields that are coded in a standard format that will not be changed in the future. These parts can always be decoded regardless of the standard version.

## Specification Notations

For the purposes of the present document, the following notations apply:

Service When referring to a Service in the present document the **SERVICE NAME** is written with upper case characters and in bold followed by the word "service", e.g. **REPORT** service.

Procedure When referring to an elementary procedure in the present document the Procedure Name is written with the first letters in each word in upper case characters followed by the word "procedure", e.g. Handover Preparation procedure.

Message When referring to a message in the present document the MESSAGE NAME is written with all letters in upper case characters followed by the word "message", e.g. HANDOVER REQUEST message.

IE When referring to an information element (IE) in the present document the *Information Element Name* is written with the first letters in each word in upper case characters and all letters in Italic font followed by the abbreviation "IE", e.g. *E-RAB ID* IE.

Value of an IE When referring to the value of an information element (IE) the present document the "Value" is written as it is specified in the present document enclosed by quotation marks, e.g. "Value".

## Void

# E2SM Services

As defined in E2 General Aspects and Principles [2], a given RAN Function offers a set of services to be exposed over the E2 (**REPORT**, **INSERT**, **CONTROL, POLICY** and/or **QUERY**) using E2AP [3] defined procedures. Each of the E2AP Procedures listed in table 5-1 contains specific E2 Node RAN Function dependent Information Elements (IEs).

Table 5-1: Relationship between E2SM services and E2AP Information elements

|  |  |  |
| --- | --- | --- |
| **RAN Function specific E2AP Information Elements** | **E2AP Information Element reference** | **Related E2AP Procedures** |
| *RIC Event Trigger Definition* IE | E2AP [3] clause 9.2.9 | RIC Subscription |
| *RIC Action Definition* IE | E2AP [3] clause 9.2.12 | RIC Subscription |
| *RIC Indication Header* IE | E2AP [3] clause 9.2.17 | RIC Indication |
| *RIC Indication Message* IE | E2AP [3] clause 9.2.16 | RIC Indication |
| *RIC Call Process ID* IE | E2AP [3] clause 9.2.18 | RIC Indication RIC Control |
| *RIC Control Header* IE | E2AP [3] clause 9.2.20 | RIC Control |
| *RIC Control Message* IE | E2AP [3] clause 9.2.19 | RIC Control |
| *RIC Control Outcome IE* | E2AP [3] clause 9.2.25 | RIC Control |
| *RAN Function Definition* IE | E2AP [3] clause 9.2.23 | E2 Setup  RIC Service Update |
| *RIC Query Header* IE | E2AP [3] clause 9.2.36 | RIC Query |
| *RIC Query Definition* IE | E2AP [3] clause 9.2.37 | RIC Query |
| *RIC Query Outcome* IE | E2AP [3] clause 9.2.38 | RIC Query |

All of these RAN Function specific IEs are defined in E2AP [3] as "OCTET STRING".

The purpose of this specification is to define the contents of these fields for the specific RAN Function "KPM Monitor".

# RAN Function Service Model Description

## RAN Function Overview

E2 Service Model KPM (E2SM-KPM) shall support O-CU-CP, O-CU-UP, and O-DU as part of NG-RAN connected to 5GC or as part of E-UTRAN connected to EPC.

The E2 Node shall host the RAN Function "KPM Monitor" which performs the following functionalities:

* Exposure of available measurements from O-DU, O-CU-CP, and/or O-CU-UP via the RAN Function Definition IE.
* Periodic reporting of measurements subscribed from Near-RT RIC.

This E2SM specification also exposes a set of services described in clause 6.2.

## Supported RIC Services

### REPORT

The "KPM Monitor" RAN Function shall provide the following **REPORT** services:

1. Fundamental level services:
   * E2 Node Measurement
   * E2 Node Measurement for a single UE
   * Condition-based, UE-level E2 Node Measurement
   * Common Condition-based, UE-level E2 Node Measurement
   * E2 Node Measurements for multiple UEs
2. Integrated level services:
   * Multi-report

These services shall be initiated according to:

* + Periodical event.

# RAN Function Description

## Description

The E2AP [3] procedures, E2 SETUP and RIC SERVICE UPDATE, are used to transport the RAN Function Definition IE.

For a specific RAN Function declared using E2SM-KPM, the *RAN Function Definition* IE, defined in clause 8.2.2, shall report the following information:

* RAN Function name along with associated information on E2SM definition
* Event trigger styles list along with the corresponding encoding type for each associated E2AP IE.
* RIC REPORT Service styles list along with the corresponding encoding type for each associated E2AP IE.

For the case where *RAN Function Definition* IE, defined in clause 8.2.2, is present in the E2 SETUP REQUEST message the IE shall provide a complete list of all Styles and associated Formats and, where appropriate, Measurement information for all supported RIC services reflecting the current status of the RAN Function.

For the case where *RAN Function Definition* IE, defined in clause 8.2.2, is present in the RIC SERVICE UPDATE message within the E2AP *RAN Functions Added List* IE, the IE shall provide a complete list of all Styles and associated Formats and, where appropriate, Measurement information for all supported RIC services for the newly added RAN Function with a new RAN Function ID.

For the case where *RAN Function Definition* IE, defined in clause 8.2.2, is present in the RIC SERVICE UPDATE message within the E2AP *RAN Functions Modified List* IE, the IE shall provide a complete list of all the Styles and associated Formats and, where appropriate, Measurement information for all supported RIC services including both modified and unchanged information for an existing RAN Function.

## RAN Function Name

RAN Function Short Name "ORAN-E2SM-KPM" RAN Function Description "KPM Monitor"

RAN Function Instance, required when and if an E2 Node exposes more than one instance of a RAN Function based on this E2SM.

## Supported RIC Event Trigger Styles

#### Event Trigger Style Types

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RIC**  **Style Type** | **Style Name** | **Supported RIC Service Style** | | | **Style Description** |
| **Report** | **Insert** | **Policy** |
| 1 | Periodic Report | 1 | - | - | *RIC Event Trigger Definition* IE based on reporting period |

#### Event Trigger Style 1: Periodic Report

Event Trigger style 1 shall set the KPM report period and uses the *RIC Event Trigger Definition* IE Format 1 (see clause 8.2.1.1.1)

## Supported RIC REPORT Service Styles

#### REPORT Service Style Type

|  |  |  |
| --- | --- | --- |
| **RIC**  **Style Type** | **Style Name** | **Style Type Description** |
| 1 | E2 Node Measurement | Used to carry measurement report from a target E2 Node Belongs to Fundamental level REPORT Services |
| 2 | E2 Node Measurement for a single UE | Used to carry measurement report for a single UE of interest from a target E2 Node  Belongs to Fundamental level REPORT Services |
| 3 | Condition-based, UE-level E2 Node Measurement | Used to carry UE-level measurement report for a group of UEs per  measurement type matching subscribed conditions from a target E2 Node Belongs to Fundamental level REPORT Services |

|  |  |  |
| --- | --- | --- |
| 4 | Common Condition-based, UE-level Measurement | Used to carry measurement report for a group of UEs across a set of measurement types satisfying common subscribed conditions from a target E2 Node  Belongs to Fundamental level REPORT Services |
| 5 | E2 Node Measurement for multiple UEs | Used to carry measurement report for multiple UEs of interest from a target E2 Node  Belongs to Fundamental level REPORT Services |
| 255 | Multiple report measurements | Used for multiple actions of the selected fundamental level REPORT Service style(s).  Belongs to Integrated level REPORT Services. |

The Report Service style 255 supports integrated level services configured per *RIC Action Definition* message by reusing the report *RIC Action Definition* IE and *RIC Indication Message* IE messages defined in the selected fundamental level Report Service style(s).

#### REPORT Service Style 1: E2 Node Measurement

###### REPORT Service Style description

REPORT Service style 1 provides the performance measurement information collection from an E2 Node.

* + - 1. REPORT Service *RIC Action Definition* IE contents

REPORT Service style 1 aims to subscribe to the measurements defined in TS 28.552 [4] and TS 32.425 [8], and shall use the

*RIC Action Definition* IE Format 1 (see clause 8.2.1.2.1).

REPORT Service *RIC Action Definition* IE Format 1 contains measurement types that Near-RT RIC is requesting to subscribe followed by a list of subcounters to be measured for each measurement type, and a granularity period indicating collection interval of those measurements. For a certain measurement type to be subscribed, the *Matching Condition for Reporting* IE may also be included to give conditions for the E2 Node in reporting measurements, to report a measured value corresponding to that measurement type only when the value satisfies the given conditions.

For the measurement types that belong to a measurement object class confined in a single cell (e.g. "EUtranCellFDD" in TS 32.425 [8] or "NRCellDU" in TS 28.552 [4]), the *Cell Global ID* IE shall be included in the IE to point to a specific cell for collecting measurements within the E2 Node. The *Cell Global ID* IE shall not be included if all the subscribed measurement types are cell agnostic, i.e. belonging to measurement object classes not confined in a single cell (e.g. "GNBCUUPFunction" in TS 28.552 [4]). In case that both single-cell-confined and cell agnostic measurement types are subscribed together, the *Cell Global ID* IE shall be included in the IE and the E2 Node shall ignore the included *Cell Global ID* IE for those cell agnostic measurement types.

A measurement ID can be used for subscription instead of a measurement type if an identifier of a certain measurement type was exposed by an E2 Node via the *RAN Function Definition* IE.

* + - 1. REPORT Service *RIC Indication Header* IE contents

REPORT Service style 1 shall use the *RIC Indication Header* IE Format 1 (see clause 8.2.1.3.1), which contains a measurement collection start time as UTC format.

REPORT Service *RIC Indication Header* IE Format 1 may carry file format version, sender name, sender type, and vendor name as printable strings.

* + - 1. REPORT Service *RIC Indication Message* IE contents

REPORT Service style 1 shall use the *RIC Indication Message* IE Format 1 (see clause 8.2.1.4.1).

REPORT Service *RIC Indication Message* IE Format 1 carries a set of measurement data reported from an E2 Node. The reported data contains a set of measurement records, each collected at every granularity period during the reporting period. In case that the *Matching Condition for Reporting* IE has been configured in the *RIC Action Definition* IE for a measurement type and a measured value corresponding to that measurement type in a granularity period did not satisfy the configured reporting

condition, the E2 Node shall indicate "Not Satisfied" instead of reporting the actual measured value within the measurement record corresponding to that granularity period. In case the configured reporting condition(s) are not satisfied entirely for a reporting period for all the subscribed measurement types, the E2 Node may omit sending the report for this reporting period. In case the E2 Node is not able to provide reliable data for a granularity period during the reporting period, it may include the optional *Incomplete Flag* IE, which indicates that the corresponding measurements record in the reported data is not reliable.

REPORT Service *RIC Indication Message* IE Format 1 may carry subscription information, i.e. *Measurement Information List* IE that indicates the order of measured values for each measurement record in the reported data, or their granularity period. If not present, the original subscription information shall apply.

#### REPORT Service Style 2: E2 Node Measurement for a single UE

###### REPORT Service Style description

REPORT Service style 2 provides the performance measurement information collection for a single UE of interest from an E2 Node.

* + - 1. REPORT Service *RIC Action Definition* IE contents

REPORT Service style 2 shall use the *RIC Action Definition* IE Format 2 (see clause 8.2.1.2.2), where the included UE ID indicates a specific UE of interest for measurement collection.

The rest of the subscription information follows the same as described in 7.4.2.2.

* + - 1. REPORT Service *RIC Indication Header* IE contents

REPORT Service style 2 shall use the *RIC Indication Header* IE Format 1 (see clause 8.2.1.3.1) as described in 7.4.2.3.

* + - 1. REPORT Service *RIC Indication Message* IE contents

REPORT Service style 2 shall use the *RIC Indication Message* IE Format 1 (see clause 8.2.1.4.1) as described in 7.4.2.4, where the measurement data reported is associated only to a specific UE that was subscribed.

#### REPORT Service Style 3: Condition-based, UE-level E2 Node Measurement

###### REPORT Service Style description

REPORT Service style 3 provides the UE-level performance measurement information collection for a group of UEs per measurement type matching subscribed conditions from an E2 Node.

* + - 1. REPORT Service *RIC Action Definition* IE contents

REPORT Service style 3 shall use the *RIC Action Definition* IE Format 3 (see clause 8.2.1.2.3), where, for each requested measurement within the *Measurement Information Condition List* IE, the *Matching Condition* IE serves as a condition to include the matched UEs' measurement values into the reporting. The *Matching Condition* IE can be expressed by a list of subcounters to be measured (i.e. as a list of labels), or by a list of test conditions that need to be passed, or by a combination of both.

The rest of the subscription information follows the same as described in 7.4.2.2.

* + - 1. REPORT Service *RIC Indication Header* IE contents

REPORT Service style 3 shall use the *RIC Indication Header* IE Format 1 (see clause 8.2.1.3.1) as described in 7.4.2.3.

* + - 1. REPORT Service *RIC Indication Message* IE contents

REPORT Service style 3 shall use the *RIC Indication Message* IE Format 2 (see clause 8.2.1.4.2).

REPORT Service *RIC Indication Message* IE Format 2 carries a set of UE-level measurement data matching subscribed conditions. The included *Measurement Information Condition UE List* IE indicates the order of measured values for each measurement record in the reported data - a list of all the UE ID(s) satisfying the subscribed *Matching Condition* IE for each requested measurement within a Reporting Period.

In every granularity period during which a UE matching a subscribed condition stays in the E2 Node and maintains the RRC\_CONNECTED or RRC\_INACTIVE state, the E2 Node shall collect the related data and reports it at the end of the reporting period.

The *List of matched UE IDs* IE for a certain measurement type in the *Measurement Information Condition UE List* IE indicates all the UE ID(s) that satisfied the subscribed *Matching Condition* IE for that measurement type and maintained the RRC\_CONNECTED or RRC\_INACTIVE state at least for one granularity period during the reporting period. The *List of matched UE IDs* IE can be omitted for a certain subscribed measurement type if none of the UEs were matched during the reporting period. If the *List of matched UE IDs* IE is used for a measurement type, then the same IE shall be used for all the measurement types in the *Measurement Information Condition UE List* IE.

If the *List of matched UE IDs* IE is used, in the granularity periods where the UE does not appear in the RRC\_CONNECTED or RRC\_INACTIVE state (e.g. transitioned to RRC\_IDLE or UE identity track is lost), the E2 Node shall not collect the related data and NULL shall be reported for those granularity periods until the end of the Reporting Period. In this case, the E2 Node shall stop reporting measurements related to this UE in the subsequent reporting periods. If the *List of matched UE IDs* IE is used and a UE whose ID is included in the IE appeared in the middle of the reporting period, then NULL shall be reported for the granularity periods priori to the UE appearing in the E2 Node.

On the other hand, the *Sequence of Matched UE IDs for Granularity Periods* IE for a certain measurement type in the *Measurement Information Condition UE List* IE can be used to indicate the UE ID(s) that satisfied the subscribed *Matching Condition* IE for the corresponding measurement type and maintained the RRC\_CONNECTED or RRC\_INACTIVE state, separately for each and every granularity period in chronological order. If the *Sequence of Matched UE IDs for Granularity Periods* IE is used for a measurement type, then the same IE shall be used for all the measurement types in the *Measurement Information Condition UE List* IE, and the *List of matched UE IDs* IE, if included for any measurement type, shall be ignored.

The rest of the information follows the same as described in 7.4.2.4.

#### REPORT Service Style 4: Common condition-based, UE-level Measurement

###### REPORT Service Style description

REPORT Service style 4 provides the UE-level performance measurement information collection for a group of UEs across a set of measurement types matching common subscribed conditions from an E2 Node.

* + - 1. REPORT Service *RIC Action Definition* IE contents

REPORT Service style 4 shall use the *RIC Action Definition* IE Format 4 (see clause 8.2.1.2.4), where a *Matching Condition* IE serves as a condition to include the matched UEs' measurement values into the reporting, common for each requested measurement within the *Measurement Information List* IE. The *Matching Condition* IE is expressed by a list of test conditions to filter matching UEs.

The rest of the subscription information follows the same as described in 7.4.2.2.

* + - 1. REPORT Service *RIC Indication Header* IE contents

REPORT Service style 4 shall use the *RIC Indication Header* IE Format 1 (see clause 8.2.1.3.1) as described in 7.4.2.3.

* + - 1. REPORT Service *RIC Indication Message* IE contents

REPORT Service style 4 shall use the *RIC Indication Message* IE Format 3 (see clause 8.2.1.4.3).

REPORT Service *RIC Indication Message* IE Format 3 carries a list of measurement data for UE(s) matching subscribed conditions.

In every granularity period during which a UE matching a subscribed condition stays in the E2 Node and maintains the RRC\_CONNECTED or RRC\_INACTIVE state, the E2 Node shall collect the related data and report it at the end of the reporting period. In the granularity periods where the UE does not appear in the RRC\_CONNECTED or RRC\_INACTIVE state (e.g. transitioned to RRC\_IDLE or UE identity track is lost), the E2 Node shall not collect the related data and NULL shall be reported for those granularity periods until the end of the Reporting Period. In this case, the E2 Node shall stop reporting measurements related to this UE in the subsequent reporting periods.

If none of the UEs were matched during the reporting period, then E2 Node shall not report measurements for that reporting period.

The rest of the information follows the same as described in 7.4.2.4.

#### REPORT Service Style 5: E2 Node Measurement for Multiple UEs

###### REPORT Service Style description

REPORT Service style 5 provides the performance measurement information collection for multiple UEs of interest from an E2 Node.

* + - 1. REPORT Service *RIC Action Definition* IE contents

REPORT Service style 5 shall use the *RIC Action Definition* IE Format 5 (see clause 8.2.1.2.5), where the included UE Identifiers indicates UEs of interest for measurement collection.

The rest of the subscription information follows the same as described in 7.4.2.2.

* + - 1. REPORT Service *RIC Indication Header* IE contents

REPORT Service style 5 shall use the *RIC Indication Header* IE Format 1 (see clause 8.2.1.3.1) as described in 7.4.2.3.

* + - 1. REPORT Service *RIC Indication Message* IE contents

REPORT Service style 5 shall use the *RIC Indication Message* IE Format 3 (see clause 8.2.1.4.3) as described in 7.4.5.4, where the measurement data reported is associated to multiple UEs that was subscribed and available in the system.

#### REPORT Service Style 255: Multiple report measurements

###### REPORT Service Style description

REPORT Service style 255 provides support for the integration of multiple report jobs into a single report action from an E2 Node.

This REPORT Service style provides a mechanism to initiate multiple report action jobs of the selected fundamental level REPORT Service style(s) that should be processed in an integrated manner by the E2 Node, i.e. the RIC Subscription procedure is considered failed if at least one of the indicated report actions is unsuccessfully subscribed, and RIC SUBSCRIPTION FAILURE message shall be sent containing the appropriate error cause.

The resulting measurement reports may be either transmitted as an integrated single Report message consisting of a list of individual job specific Report messages or as individual Report messages each corresponding to a single job in the list defined in the *RIC Action Definition* IE.

* + - 1. REPORT Service *RIC Action Definition* IE contents

**REPORT** style 255 shall use *E2SM-KPM Action Definition Format 255* IE (see clause 8.2.1.2.6).

This REPORT Service style aims to support the subscription of a set of report jobs, each defined by either a corresponding *Job Specific Action Definition* IE or by a *Common Action Definition* IE along with optional IEs used to introduce per job specific values (i.e. to set a different cell ID for each job), into an integrated *RIC Action Definition* IE (see clause 8.2.1.2).

The REPORT Service *RIC Action Definition* IE contains the list of jobs, each with a unique *Job ID* IE and either:

* a job specific fundamental level REPORT Service specific *RIC Action Definition* IE
* one or more optional job specific modification IEs (*Job Specific Cell Global ID* IE, *Job Specific UE ID* IE, *Job Specific List of Subscribed UE IDs* IE) that are used to replace specific IEs within the *Common Action Definition* IE.

The following table presents the applicable report styles, E2SM-KPM Action Definition Format and IE for each Job Specific IE

|  |  |  |  |
| --- | --- | --- | --- |
| **Job specific IE** | **Applicable Fundamental**  **level Report Style** | **E2SM-KPM Action Definition Format** | **Applicable IE** |
| *Job Specific Cell Global ID* IE | 1 | E2SM-KPM Action Definition Format 1 | *Cell Global ID* IE |
| 2 | E2SM-KPM Action Definition Format 1, contained within *Subscription Information* IE in E2SM-KPM Action Definition Format 2 | *Cell Global ID* IE |
| 3 | E2SM-KPM Action Definition Format 3 | *Cell Global ID* IE |
| 4 | E2SM-KPM Action Definition Format 1, contained  within *Subscription Information* IE in E2SM-KPM Action Definition Format 4 | *Cell Global ID* IE |
| 5 | E2SM-KPM Action Definition Format 1, contained within *Subscription Information* IE in E2SM-KPM  Action Definition Format 5 | *Cell Global ID* IE |
| J*ob Specific UE ID* IE | 2 | E2SM-KPM Action Definition Format 2 | *UE ID* IE |
| *Job Specific List of Subscribed UE IDs* IE | 5 | E2SM-KPM Action Definition Format 5 | *List of Subscribed UE IDs* IE |

REPORT Service *RIC Action Definition* 255 IE also contains a common *Reporting Approach* IE used to indicate if the resulting RIC Indication message shall be used to carry an integrated report or if each job is to be reported independently resulting in multiple RIC Indication messages sent at each event trigger.

Example *RIC Action Definition* IE may contain the optional *Common Action Definition* IE corresponding to a common fundamental level REPORT Service specific *RIC Action Definition* IE using E2SM-KPM Action Definition Format 1 to initiate a REPORT Style 1 and each job in the list of jobs may contain a *Job Specific Cell Global ID* IE. In this case each job shall be initiated according to the common with the exception that each job applies to different Cell Global ID provided by *Job Specific Cell Global ID* IE. At each Event Trigger, the *Reporting Approach* IE is used to determine if the measurements shall be reported either as a single RIC Indication message containing a list of job specific Measurement Reports (one per request cell), each using E2SM-KPM Indication Message Format 1, or as a set of RIC Indication messages each containing the Measurement Report for a single requested cell.

* + - 1. REPORT Service *RIC Indication Header* IE contents

REPORT Service style 255 shall use the *RIC Indication Header* IE Format 1 (see clause 8.2.1.3.1) as described in 7.4.2.3.

* + - 1. REPORT Service *RIC Indication Message* IE contents

REPORT Service style 255 shall use either the *E2SM-KPM Indication Message* IE Format 255 (see clause 8.2.1.4.4) or individual *RIC Indication Message* IE for each job in the list provided in the *E2SM-KPM Action Definition Format 255* IE (see

clause 8.2.1.2.6). The appropriate approach is indicated by the *Reporting Approach* IE contained in the *E2SM-KPM Action Definition Format 255* IE (see clause 8.2.1.2.6).

For the case where *E2SM-KPM Indication Message* IE Format 255 (see clause 8.2.1.4.4) is to be sent, the message carries a sequence of *RIC Indication Message* IE carrying the reports formatted according to the fundamental level REPORT Service specific *RIC Indication Message* IEs each associated with a *Job ID* IE.

For the case where individual RIC Indication messages are to be sent, the option *Job ID* IE shall be used in the *RIC Indication Message* IE to indicate which report in the list of jobs defined *E2SM-KPM Action Definition Format 255* IE (see clause 8.2.1.2.6) is being reported in each RIC Indication message.

In all cases the individual measurements and measurement records are ordered according to the definition in the applicable fundamental level Report style.

## Supported RIC INSERT Service Styles

Void

## Supported RIC CONTROL Service Styles

Void.

## Supported RIC POLICY Service Styles

Void.

## A Supported RIC QUERY Service Styles

Void.

## Supported RIC Styles and E2SM IE Formats

Table 7.8-1 and 7.8-2 provide a summary of the E2SM IE Formats defined to support this E2SM specification.

Table 7.8-1: Summary of the E2SM IE Formats defined to support RIC Event Trigger Styles

|  |  |
| --- | --- |
| **RIC Event Trigger Style** | **Event Trigger Definition Format** |
| Style 1 | 1 |
|  |  |

Table 7.8-2: Summary of the E2SM IE Formats defined to support RIC Service Styles

|  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **RIC**  **Service Style** | **Action Definition Format** | **Indication Header Format** | **Indication Message Format** | **Call Process ID Format** | **Control Header Format** | **Control Message Format** | **Control Outcome Format** |
| **REPORT** | | | | | | |  |
| Style 1 | 1 | 1 | 1 |  |  |  |  |
| Style 2 | 2 | 1 | 1 |  |  |  |  |
| Style 3 | 3 | 1 | 2 |  |  |  |  |
| Style 4 | 4 | 1 | 3 |  |  |  |  |
| Style 5 | 5 | 1 | 3 |  |  |  |  |
| Style 255 | 255 | 1 | 255 |  |  |  |  |
|  |  |  |  |  |  |  |  |
| **INSERT** | | | | | | |  |
|  |  |  |  |  |  |  |  |
| **CONTROL** | | | | | | |  |
|  |  |  |  |  |  |  |  |
| **POLICY** | | | | | | |  |
|  |  |  |  |  |  |  |  |
| **QUERY** | | | | | | |  |
|  |  |  |  |  |  |  |  |

## Conversion of measurements derived from 3GPP defined measured values

#### Conversion of measurement definitions

UE level and QoS Flow level measurements are defined based on the conversion of the measurements' definitions provided in TS 28.552 [4], TS 32.425 [8], and O-RAN specific measurement defined in clause 7.10 according to the following rules:

|  |  |  |  |
| --- | --- | --- | --- |
| **The type of the original measurements** | **The corresponding per- UE and per-UE-per-slice measurements** | **The corresponding per- QoS flow and per-slice- per-QoS flow**  **measurements** | **Notes** |
| Throughput Delay  Data volume  In-session activity time | Measured per UE | Measured per QoS flow | For the Throughput and Data volume measurements, the formulas specified in 3GPP are used with restriction to the individual UE or individual QoS flow  , and also based on clause 7.9.1. |
| PDCP drop rate IP latency | Measured per UE | Measured per QoS flow | For the Throughput and Data volume measurements, the formulas specified in 3GPP are used with restriction to the individual  UE or individual QoS flow. |
| Radio resource utilization | Measured per UE | N/A | The formulas specified in 3GPP are used with restriction to the individual  UE. |
| RRC connections related PDU sessions related DRBs related | Measured per UE | N/A |  |

|  |  |  |  |
| --- | --- | --- | --- |
| QoS flows related |  |  |  |
| Mobility management | Measured per UE | N/A |  |
| CQI related MCS related | Measured per UE | N/A |  |
| PEE related | N/A | N/A |  |
| Distribution of  Normally/Abnormally Released Calls | Measured per UE | N/A |  |

Beam level measurements are defined based on the conversion of the measurements' definitions provided in TS 28.552 [4], TS

32.425 [8], and O-RAN specific measurement defined in clause 7.10 according to the following rules:

|  |  |  |
| --- | --- | --- |
| **The type of the original measurements** | **The corresponding per- beam measurements** | **Notes** |
| Mobility Management | Measured per source beam and neighboring cell pair | The formulas specified in 3GPP are used with restriction to the source beam-neighboring cell pair. |

#### Changes in the units of measurements while adopting for E2SM-KPM

The units of the following measurements in TS 28.552 [4] and TS 32.425 [8] are replaced with newer units, as shown in the table below.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Measurement Type** | **Measurement Name** | **Data Type** | **Unit used in 3GPP** | **Unit used in E2SM-**  **KPM** |
| DL Cell PDCP SDU Data Volume, defined in TS 28.552 [4] clause  5.1.2.1.2.1. | DRB.PdcpSduVolumeDL\_Filter | INTEGER | Mbit | Kbit |
| UL Cell PDCP SDU Data Volume, defined in TS 28.552 [4] clause  5.1.2.1.2.2. | DRB.PdcpSduVolumeUL\_Filter | INTEGER | Mbit | Kbit |
| DL PDCP PDU Data Volume, defined in TS 28.552 [4] clause  5.1.3.6.1.1. | QosFlow.PdcpPduVolumeDL\_Filter | INTEGER | Mbit | Kbit |
| UL PDCP PDU Data Volume, defined in TS 28.552 [4] clause  5.1.3.6.1.2. | QosFlow.PdcpPduVolumeUL\_Filter | INTEGER | Mbit | Kbit |
| DL PDCP SDU Data Volume, defined in TS 28.552 [4] clause  5.1.3.6.2.1. | QosFlow.PdcpSduVolumeDl\_Filter | INTEGER | Mbit | Kbit |
| UL PDCP SDU Data Volume, defined in TS 28.552 [4] clause  5.1.3.6.2.2. | QosFlow.PdcpSduVolumeUl\_Filter | INTEGER | Mbit | Kbit |
| DL Cell PDCP SDU Data Volume on  X2 interface, defined in TS 28.552  [4] clause 5.1.2.1.1.2. | DRB.PdcpSduVolumeX2DL\_Filter | INTEGER | Mbit | Kbit |
| UL Cell PDCP SDU Data Volume on  X2 interface, defined in TS 28.552  [4] clause 5.1.2.1.2.2. | DRB.PdcpSduVolumeX2UL\_Filter | INTEGER | Mbit | Kbit |
| DL Cell PDCP SDU Data Volume on Xn interface, defined in TS 28.552  [4] clause 5.1.2.1.1.3. | DRB.PdcpSduVolumeXnDL\_Filter | INTEGER | Mbit | Kbit |
| UL Cell PDCP PDU Data Volume on Xn interface, defined in TS 28.552  [4] clause 5.1.2.1.2.3. | DRB.PdcpSduVolumeXnUL\_Filter | INTEGER | Mbit | Kbit |
| DL PDCP SDU Data Volume per interface, defined in TS 28.552 [4]  clause 5.1.3.6.2.3. | DRB.F1uPdcpSduVolumeDl.*QoS,* DRB.X2uPdcpSduVolumeDl.*QoS,* DRB.XnuPdcpSduVolumeDl.*QoS* | INTEGER | Mbit | Kbit |
| UL PDCP SDU Data Volume per interface, defined in TS 28.552 [4]  clause 5.1.3.6.2.4. | DRB.F1uPdcpSduVolumeUl.*QoS,* DRB.X2uPdcpSduVolumeUl.*QoS,* DRB.XnuPdcpSduVolumeUl.*QoS* | INTEGER | Mbit | Kbit |
| DL cell PDCP SDU Data Volume, defined in TS 32.425 [8] clause  4.4.7.1. | DRB.PdcpSduVolumeDl\_Filter | INTEGER | Mbit | Kbit |
| UL cell PDCP SDU Data Volume, defined in TS 32.425 [8] clause  4.4.7.2. | DRB.PdcpSduVolumeUl\_Filter | INTEGER | Mbit | Kbit |
| In-session activity time for UE, defined in TS 28.552 [4] clause  5.1.1.13.2.2. | QF.SessionTimeUE | INTEGER | s | ms |
| In-session activity time for DRB, defined in TS 28.552 [4] clause  5.1.1.10.4. | DRB.SessionTime.5QI, DRB.SessionTime.SNSSAI | INTEGER | s | ms |
| In-session activity time for QoS flow, defined in TS 28.552 [4] clause  5.1.1.13.2.1. | QF.SessionTimeQoS.*QoS* | INTEGER | s | ms |
| In-session activity time for UE, defined in TS 32.425 [8] clause  4.2.4.1. | ERAB.SessionTimeUE | INTEGER | s | ms |
| In-session activity time for E-RABs, defined in TS 32.425 [8] clause  4.2.4.2. | ERAB.SessionTimeQCI.*QCI* | INTEGER | s | ms |
| IP throughput in UL, defined in TS  32.425 [8] clause 4.4.6.2. | DRB.IPThpUl.*QCI* | REAL | Kbit | Kbit/s |

The changes in the units of the measurements shown in the above table are to prevent the reported values from being reported as 0 caused by rounding off the precision in the decimals to report them as INTEGER, except the last row of "IP throughput in UL", which is to fix the erroneous unit.

## O-RAN specific Performance Measurement

#### DL Transmitted Data Volume (RLC SDU)

|  |  |
| --- | --- |
| **Measurement Name** | **DL Transmitted Data Volume (RLC SDU)** |
| a) Description | This measurement provides the transmitted data volume in the downlink in a measurement time. The measurement is split into subcounters per QoS level (mapped 5QI or QCI in EN-DC), and subcounters per supported S-NSSAI.  The unit is kbit. |
| b) Collection Method | CC |
| c) Condition | This measurement is obtained by counting the data volume counted on RLC SDU level, in kbit successfully transmitted (acknowledged by UE) in DL for one DRB during measurement time T. Separate counters are maintained for each mapped 5QI (or QCI for option 3) and for each supported S-NSSAI. |
| d) Measurement Result | Each measurement is an integer value representing the number of bits measured in kbits (1kbits=1000 bits). The number of measurements is equal to the number of PLMNs multiplied by the number of QoS levels multiplied by the number of S- NSSAIs. |
| e) Measurement Type | The measurement name has the form DRB.RlcSduTransmittedVolumeDL\_Filter. Where filter is a combination of PLMN ID and QoS level and S-NSSAI.  Where PLMN ID represents the PLMN ID, QoS represents the mapped 5QI or the QCI level, and SNSSAI represents S-NSSAI. |
| f) Measurement Object Class | NRCellDU |
| g) Switching Technology | Valid for packet switched traffic |
| h) Generation | 5GS |
| i) Purpose | One usage of this measurement is for performance assurance within integrity area (user plane connection quality). |

#### UL Transmitted Data Volume (RLC SDU)

|  |  |
| --- | --- |
| **Measurement Name** | **UL Transmitted Data Volume (RLC SDU)** |
| a) Description | This measurement provides the transmitted data volume in the uplink in a certain period. The measurement is split into subcounters per QoS level (mapped 5QI or QCI in EN-DC), and subcounters per supported S-NSSAI.  The unit is kbit. |
| b) Collection Method | CC |
| c) Condition | This measurement is obtained by counting the data volume counted on RLC SDU level, in kbit successfully transmitted (acknowledged by E2 Node) in UL for one DRB during measurement time T. Separate counters are maintained for each mapped 5QI (or QCI for option 3) and for each supported S-NSSAI. |
| d) Measurement Result | Each measurement is an integer value representing the number of bits measured in kbits (1kbits=1000 bits). The number of measurements is equal to the number of PLMNs multiplied by the number of QoS levels multiplied by the number of S- NSSAIs. |
| e) Measurement Type | The measurement name has the form DRB.RlcSduTransmittedVolumeUL\_Filter. Where filter is a combination of PLMN ID and QoS level and S-NSSAI.  Where PLMN ID represents the PLMN ID, QoS represents the mapped 5QI or the QCI level, and SNSSAI represents S-NSSAI. |
| f) Measurement Object Class | NRCellDU |
| g) Switching Technology | Valid for packet switched traffic |
| h) Generation | 5GS |
| i) Purpose | One usage of this measurement is for performance assurance within integrity area (user plane connection quality). |

#### Distribution of Percentage of DL Transmitted Data Volume to Incoming Data Volume

|  |  |
| --- | --- |
| **Measurement Name** | **Distribution of Percentage of DL Transmitted Data Volume to Incoming Data Volume** |
| a) Description | This measurement provides the distribution of the percentage of successfully transmitted data volume to incoming data volume in downlink for UEs. The measurement is split into subcounters per QoS level (mapped 5QI or QCI in EN-DC), and subcounters per supported S-NSSAI. |
| b) Collection Method | CC |
| c) Condition | The Measurement is calculated by 100\*x/y for each UE.  x is incremented by counting the number of bits counted on RLC SDU level successfully transmitted (acknowledged by UE) in DL for one DRB during measurement time T.  y is incremented by counting the number of bits entering the RLC layers in DL for one DRB during measurement time T.  For each UE, the bin corresponding to the percentage of transmitted data volume to incoming data volume (100\*x/y) experienced by the UE is incremented by one.  Separate counters are maintained for each mapped 5QI (or QCI for option 3) and for each supported S-NSSAI. |
| d) Measurement Result | A set of integers, each representing the (integer) number of samples with a percentage of DL transmitted data volume to incoming data volume in the range represented by that bin. If the optional QoS level subcounter and S-NSSAI subcounter and PLMN ID subcounter measurements are performed, the number of measurements is equal to the number of mapped 5QIs and the number of supported S-NSSAIs, and the number of PLMN IDs. |
| e) Measurement Type | The measurement name has the form DRB.PerDataVolumeDLDist.Bin where Bin represents the bin, or optionally DRB.PerDataVolumeDLDist.Bin.QOS, where QOS identifies the target quality of service class, and DRB.PerDataVolumeDLDist.Bin.SNSSAI, where SNSSAI identifies the S-NSSAI, and DRB.PerDataVolumeDLDist.Bin.PLMN, where PLMN identifies the PLMN ID. |
| f) Measurement Object Class | NRCellDU |
| g) Switching Technology | Packet Switched |
| h) Generation | 5GS |
| i) Purpose | Network Operator's Traffic Engineering Community |

#### Distribution of Percentage of UL Transmitted Data Volume to Incoming Data Volume

|  |  |
| --- | --- |
| **Measurement Name** | **Distribution of Percentage of UL Transmitted Data Volume to Incoming Data Volume** |
| a) Description | This measurement provides the distribution of the percentage of successfully transmitted data volume to incoming data volume in uplink for UEs. The measurement is split into subcounters per QoS level (mapped 5QI or QCI in EN-DC), and subcounters per supported S-NSSAI. |
| b) Collection Method | CC |
| c) Condition | The Measurement is calculated by 100\*x/y for each UE.  x is incremented by counting the number of bits counted on RLC SDU level successfully transmitted (acknowledged by E2 Node) in UL for one DRB during measurement time T.  y is incremented by counting the number of bits entering the RLC layers in UL for one DRB during measurement time T. It is up to implementation how to measure y reliably during T.  For each UE, the bin corresponding to the percentage of transmitted data volume to incoming data volume (100\*x/y) experienced by the UE is incremented by one.  Separate counters are maintained for each mapped 5QI (or QCI for option 3) and for each supported S-NSSAI. |
| d) Measurement Result | A set of integers, each representing the (integer) number of samples with a percentage of UL transmitted data volume to incoming data volume in the range represented by that bin. If the optional QoS level subcounter and S-NSSAI subcounter and PLMN ID subcounter measurements are performed, the number of measurements is equal to the number of mapped 5QIs and the number of supported S-NSSAIs, and the number of PLMN IDs. |
| e) Measurement Type | The measurement name has the form DRB.PerDataVolumeULDist.Bin where Bin represents the bin, or optionally DRB.PerDataVolumeULDist.Bin.QOS, where QOS identifies the target quality of service class, and DRB.PerDataVolumeULDist.Bin.SNSSAI, where SNSSAI identifies the S-NSSAI, and DRB.PerDataVolumeUlDist.Bin.PLMN, where PLMN identifies the PLMN ID. |
| f) Measurement Object Class | NRCellDU |
| g) Switching Technology | Packet Switched |
| h) Generation | 5GS |
| i) Purpose | Network Operator's Traffic Engineering Community |

#### Distribution of DL Packet Drop Rate

|  |  |
| --- | --- |
| **Measurement Name** | **Distribution of DL Packet Drop Rate** |
| a) Description | This measurement provides the fraction of RLC SDU packets which are dropped on the downlink, due to high traffic load, traffic management etc in the gNB-DU. Only user-plane traffic (DTCH) is considered. A dropped packet is one without any part of it having been transmitted on the air interface. The measurement is optionally split into subcounters per QoS level (mapped 5QI or QCI in EN-DC), and subcounters per supported S-NSSAI. |
| b) Collection Method | SI |
| c) Condition | This attribute is created by counting the number of UEs experiencing a certain packet loss rate in each range. |
| d) Measurement Result | Each measurement is an integer value representing the drop rate multiplied by 1E6 of each UE within the range of the bin. The number of measurements is equal to one. If the optional QoS and S-NSSAI level measurement are performed, the measurements are equal to the number of mapped 5QIs and the number of supported S-NSSAIs. |
| e) Measurement Type | The measurement name has the form DRB.RlcPacketDropRateDLDist and optionally DRB.RlcPacketDropRateDLDist.QOS where QOS identifies the target quality of service class, and DRB.RlcPacketDropRateDLDist.SNSSAI where SNSSAI identifies the S-NSSAI. |
| f) Measurement Object Class | NRCellDU |
| g) Switching Technology | Valid for packet switched traffic |
| h) Generation | 5GS |
| i) Purpose | One usage of this measurement is for performance assurance within integrity area (user plane connection quality). |

#### Distribution of UL Packet Loss Rate

|  |  |
| --- | --- |
| **Measurement Name** | **Distribution of UL Packet Loss Rate** |
| a) Description | This measurement provides the distribution of the fraction of PDCP SDU packets which are not successfully received at gNB-CU-UP. It is a measure of the UL packet loss including any packet losses in the air interface, in the gNB-CU and on the F1-U interface. Only user-plane traffic (DTCH) and only PDCP SDUs that have entered PDCP (and given a PDCP sequence number) are considered. The measurement is optionally split into subcounters per QoS level (mapped 5QI or QCI in EN-DC), and subcounters per supported S-NSSAI. |
| b) Collection Method | SI |
| c) Condition | This attribute is created by counting the number of UEs experiencing a certain packet loss rate in each range. |
| d) Measurement Result | Each measurement is an integer value representing the loss rate multiplied by 1E6 of each UE within the range of the bin. If the optional QoS and S-NSSAI level measurement are performed, the measurements are equal to the number of mapped 5QIs and the number of supported S-NSSAIs. |
| e) Measurement Type | The measurement name has the form DRB.PacketLossRateULDist and optionally DRB.PacketLossRateULDist.QOS where QOS identifies the target quality of service class, and DRB. PacketLossRateULDist.SNSSAI where SNSSAI identifies the S- NSSAI. |
| f) Measurement Object Class | GNBCUUPFunction.  NRCellCU. |
| g) Switching Technology | Valid for packet switched traffic. |
| h) Generation | 5GS. |
| i) Purpose | One usage of this measurement is for performance assurance within integrity area (user plane connection quality). |

#### DL Synchronization Signal based Reference Signal Received Power (SS- RSRP)

|  |  |
| --- | --- |
| **Measurement Name** | **DL Synchronization Signal based Reference Signal Received Power (SS-RSRP)** |
| a) Description | This measurement provides the average of the DL SS-RSRP (see TS 38.215 [16]) values reported from UEs in the cell when SS-RSRP is used for L1-RSRP as configured by reporting configurations as defined in TS 38.214 [18], in case the L1- RSRP report function is enabled. Separate counters are maintained for each SSB in the cell. |
| b) Collection Method | DER (N=1) |
| c) Condition | This measurement is obtained by taking the average of the reported DL SS-RSRP values (i.e. between RSRP\_0 and RSRP\_126, see Table 10.1.6.1-1 in TS 38.133 [17]) from UEs in the cell per SSB during a granularity period. |
| d) Measurement Result | Each counter is an real value representing the average of the reported DL SS-RSRP values (i.e. between RSRP\_0 and RSRP\_126, see Table 10.1.6.1-1 in TS 38.133 [17]) for each SSB. The number of measurements is equal to the number of SSB beams defined in the cell. |
| e) Measurement Type | The measurement name has the form L1M.DL-SS-RSRP.*SSB*, where *SSB*  represents the counter associated with SSB. |
| f) Measurement Object Class | NRCellDU |
| g) Switching Technology | Valid for packet switched traffic |
| h) Generation | 5GS |
| i) Purpose | One usage of this measurement is for mMIMO Non-GoB optimization in [21]. |

#### DL Synchronization Signal based Signal to Noise and Interference Ratio (SS-SINR)

|  |  |
| --- | --- |
| **Measurement Name** | **DL Synchronization Signal based Signal to Noise and Interference Ratio (SS- SINR)** |
| a) Description | This measurement provides the average of the DL SS-SINR (see TS 38.215 [16]) values reported from UEs in the cell when SS-SINR is used for L1-SINR as configured by reporting configurations as defined in TS 38.214 [18], in case the L1- SINR report function is enabled. Separate counters are maintained for each SSB in the cell. |
| b) Collection Method | DER (N=1) |
| c) Condition | This measurement is obtained by taking the average of the reported DL SS-SINR values (i.e. between SINR\_0 and SINR\_127, see Table 10.1.16.1-1 in TS 38.133 [17]) from UEs in the cell per SSB during a granularity period. |
| d) Measurement Result | Each counter is an real value representing the average of the reported DL SS-SINR values (i.e. between SINR\_0 and SINR\_127, see Table 10.1.16.1-1 in TS 38.133 [17]) for each SSB. The number of measurements is equal to the number of SSB beams defined in the cell. |
| e) Measurement Type | The measurement name has the form L1M.DL-SS-SINR.*SSB*, where *SSB* represents the counter associated with SSB. |
| f) Measurement Object Class | NRCellDU |
| g) Switching Technology | Valid for packet switched traffic |
| h) Generation | 5GS |
| i) Purpose | One usage of this measurement is for mMIMO Non-GoB optimization in [21]. |

#### UL Sounding Reference Signal based Reference Signal Received Power (SRS-RSRP)

|  |  |
| --- | --- |
| **Measurement Name** | **UL Sounding Reference Signal based Reference Signal Received Power (SRS- RSRP)** |
| a) Description | This measurement provides the average of the UL SRS-RSRP (see TS 38.215 [16]) values measured for UEs in the cell. |
| b) Collection Method | DER (N=1) |
| c) Condition | This measurement is obtained by taking the average of the measured UL SRS-RSRP values for UEs in the cell during a granularity period. |
| d) Measurement Result | The measurement is an real value representing the average of the measured UL SRS-RSRP values. |
| e) Measurement Type | The measurement name has the form L1M.UL-SRS-RSRP. |
| f) Measurement Object Class | NRCellDU |
| g) Switching Technology | Valid for packet switched traffic |
| h) Generation | 5GS |
| i) Purpose | One usage of this measurement is for mMIMO Non-GoB optimization in [21]. |

#### Total number of scheduled time slots

###### Cell-specific DL Total transmission time duration

|  |  |
| --- | --- |
| **Measurement Name** | **Cell-specific DL total transmission time duration** |
| a) Description | This measurement provides the total duration of time that covers the total number of time slots within each measurement granularity period, when one or more transport blocks were scheduled for HARQ downlink transmission (including HARQ retransmission) from the radio resources of a given component carrier (i.e., a given cell) to the UEs.  The total number of time slots scheduled for a UE includes the unique time slots scheduled from the component carrier, irrespective of whether it is the primary component carrier (i.e., the primary cell) or a secondary supplemental component carrier (i.e., the secondary cell) to the UE, for downlink transmission of one or more transport blocks to the UE.  The unit is in micro-second [?s].  The measurement is optionally split into sub-counters per QoS level (mapped 5QI or QCI in EN-DC) and sub-counters per supported S-NSSAI, and sub-counters per PLMN ID, and sub-counters from BWP. |
| b) Collection Method | CC |
| c) Condition | The counter is incremented by the length of the time slot (in micro-seconds) during every time slot, when a HARQ downlink transmission is scheduled on the radio resources of the cell to one or more UEs served by the cell, either in its capacity as the primary cell or a secondary cell for the UEs.  For this counter to be generated at a per-UE level, the counter is incremented by the length of the time slot (in micro-seconds), during every time slot when a HARQ transmission is scheduled on the radio resources of the cell to the given UE served by the cell, either in its capacity as the primary cell or a secondary cell for the UE. |
| d) Measurement Result | Each measurement is a single integer value.  If optional measurements with sub-counters are performed, the number of measurements is equal to the number of supported QoS levels, the number of supported S-NSSAIs, the number of supported PLMNs, and the number of supported BWPs. |
| e) Measurement Type | The measurement name has the form: ScheduledTxTimeDl (as the default measurement, without sub-counters or filters), or optionally, ScheduledTxTimeDl.*QOS*, where *QOS* identifies the target quality of service class, ScheduledTxTimeDl.*SNSSAI* , where *SNSSAI* identifies the S-NSSAI, and ScheduledTxTimeDl.*PLMN*, where *PLMN* refers to the PLMN ID, and ScheduledTxTimeDl.*BWP,* where BWP identifies the active BWP. |
| f) Measurement Object Class | NRCellDU |
| g) Switching Technology | Valid for packet switched traffic |
| h) Generation | 5GS |
| i) Purpose | One usage of this measurement is for performance assurance within integrity area (user plane connection quality). |

###### Cell-specific downlink total failed transmission time duration

|  |  |
| --- | --- |
| **Measurement Name** | **Cell-specific DL total failed transmission time duration** |
| a) Description | This measurement provides the total duration of time that covers the total number of time slots within each measurement granularity period, when one or more transport blocks were unsuccessfully transmitted in the downlink from the radio resources of a given component carrier (i.e., a given cell) to the UEs, resulting in HARQ NACKs from the UEs.  For a given UE, this measurement indicates the total number of unique time slots scheduled from the component carrier, irrespective of whether it is the primary component carrier (i.e., the primary cell) or a secondary supplemental component carrier (i.e., the secondary cell) to the UE, which resulted in unsuccessful transmission of one or more transport blocks to the UE.  The unit is In micro-second [?s].  The measurement is optionally split into sub-counters per QoS level (mapped 5QI or QCI in EN-DC) and sub-counters per supported S-NSSAI, and sub-counters per PLMN ID, and sub-counters from BWP. |
| b) Collection Method | CC |
| c) Condition | The counter is incremented by the length of the time slot (in micro-seconds) during every time slot, when the O-DU receives a NACK from any UE for a HARQ downlink transmission from the radio resources of the cell to the UE, irrespective of whether the cell serves the UE as the primary component carrier (i.e., the primary cell) or a secondary supplemental component carrier (i.e., the secondary cell).  For this counter to be generated at a per-UE level, the counter is incremented by the length of the time slot (in micro-seconds) during every time slot, when the O-DU receives a NACK from the UE for a HARQ downlink transmission from the radio resources of the cell to the UE, irrespective of whether the cell serves the UE as the primary component carrier (i.e., the primary cell) or a secondary supplemental component carrier (i.e., the secondary cell). |
| d) Measurement Result | Each measurement is a single integer value. If optional measurements with sub- counters are performed, the number of measurements is equal to the number of supported QoS levels, the number of supported S-NSSAIs, the number of supported PLMNs, and the number of supported BWPs. |
| e) Measurement Type | The measurement name has the form: FailedTxTimeDl (as the default measurement, without sub-counters or filters), or optionally, FailedTxTimeDl.*QOS*, where *QOS* identifies the target quality of service class, FailedTxTimeDl.*SNSSAI*, where *SNSSAI* identifies the S-NSSAI, and FailedTxTimeDl.*PLMN*, where *PLMN* refers to the PLMN ID, and FailedTxTimeDl.*BWP,* where BWP identifies the active BWP. |
| f) Measurement Object Class | NRCellDU |
| g) Switching Technology | Valid for packet switched traffic |
| h) Generation | 5GS |
| i) Purpose | One usage of this measurement is for performance assurance within integrity area (user plane connection quality). |

###### Cell-specific downlink retransmission time duration

|  |  |
| --- | --- |
| **Measurement Name** | **Cell-specific DL retransmission time duration** |
| a) Description | This measurement provides the total duration of time covering the total number of time slots within each measurement granularity period, when one or more previously- unsuccessfully-transmitted transport blocks were scheduled for HARQ retransmission in the downlink from the radio resources of a given component carrier (i.e., a given cell) to the UEs.  The total number of time slots scheduled for a UE includes the unique time slots scheduled from the component carrier in the downlink, irrespective of whether it is the primary component carrier (i.e., the primary cell) or a secondary supplemental component carrier (i.e., the secondary cell) to the UE, for HARQ retransmission of one or more transport blocks to the UE.  The unit is in micro-second [?s].  The measurement is optionally split into sub-counters per QoS level (mapped 5QI or QCI in EN-DC) and sub-counters per supported S-NSSAI, and sub-counters per PLMN ID, and sub-counters from BWP. |
| b) Collection Method | CC |
| c) Condition | The counter is incremented by the length of the time slot (in micro-seconds) during every time slot, when a HARQ downlink re-transmission of one or more previously- unsuccessfully-transmitted transport blocks is scheduled on the radio resources of the cell to one or more UEs served by the cell, either in its capacity as the primary cell or a supplemental secondary cell for the UEs.  For this counter to be generated at a per-UE level, the counter is incremented by the length of the time slot (in micro-seconds), during every time slot when a HARQ downlink re-transmission of one or more previously-unsuccessfully-transmitted transport blocks is scheduled on the radio resources of the cell to the given UE served by the cell, either in its capacity as the primary cell or a supplemental secondary cell for the UE. |
| d) Measurement Result | Each measurement is a single integer value. If optional measurements with sub- counters are performed, the number of measurements is equal to the number of supported QoS levels, the number of supported S-NSSAIs, the number of supported PLMNs, and the number of supported BWPs. |
| e) Measurement Type | The measurement name has the form: ScheduledReTxTimeDl(as the default measurement, without sub-counters or filters), or optionally, ScheduledReTxTimeDl.*QOS* , where *QOS* identifies the target quality of service class, ScheduledReTxTimeDl.*SNSSAI* where *SNSSAI* identifies the S-NSSAI, and ScheduledReTxTimeDl.*PLMN*, where *PLMN* refers to the PLMN ID, andScheduledReTxTimeDl.*BWP ,* where BWP identifies the active BWP. |
| f) Measurement Object Class | NRCellDU |
| g) Switching Technology | Valid for packet switched traffic |
| h) Generation | 5GS |
| i) Purpose | One usage of this measurement is for performance assurance within integrity area (user plane connection quality). |

###### Cell-specific downlink total SU-MIMO transmission time duration

|  |  |
| --- | --- |
| **Measurement Name** | **Cell-specific DL total SU-MIMO transmission time duration** |
| a) Description | This measurement provides the total duration of time that covers the total number of time slots within each measurement granularity period, when multiple transport blocks were scheduled for HARQ downlink transmission in SU-MIMO mode from the radio resources of a given component carrier (i.e., a given cell) to the UEs.  The total number of time slots scheduled for a UE includes the unique time slots scheduled from the component carrier, irrespective of whether it is the primary component carrier (i.e., the primary cell) or a secondary supplemental component carrier (i.e., the secondary cell) to the UE, for transmission of multiple transport blocks in SU-MIMO mode to the UE.  The unit is in micro-second [?s].  The measurement is optionally split into sub-counters per QoS level (mapped 5QI or QCI in EN-DC) and sub-counters per supported S-NSSAI, and sub-counters per PLMN ID, and sub-counters from BWP. |
| b) Collection Method | CC |
| c) Condition | The counter is incremented by the length of the time slot (in micro-seconds) during every time slot, when a HARQ downlink transmission of multiple transport blocks in SU-MIMO mode is scheduled on the radio resources of the cell to one or more UEs served by the cell, either in its capacity as the primary cell or a secondary cell for the UEs.  For this counter to be generated at a per-UE level, the counter is incremented by the length of the time slot (in micro-seconds), during every time slot when a HARQ downlink transmission of multiple transport blocks in SU-MIMO mode is scheduled on the radio resources of the cell to the given UE served by the cell, either in its capacity as the primary cell or a secondary cell for the UE. |
| d) Measurement Result | Each measurement is a single integer value. If optional measurements with sub- counters are performed, the number of measurements is equal to the number of supported QoS levels, the number of supported S-NSSAIs, the number of supported PLMNs, and the number of supported BWPs. |
| e) Measurement Type | The measurement name has the form: ScheduledTxTimeDlSUMIMO (as the default measurement, without sub-counters or filters), or optionally, ScheduledTxTimeDlSUMIMO.*QOS* , where *QOS* identifies the target quality of service class, ScheduledTxTimeDlSUMIMO.*SNSSAI* , where *SNSSAI* identifies the  S-NSSAI, and ScheduledTxTimeDlSUMIMO.*PLMN*, where *PLMN* refers to the PLMN ID, and ScheduledTxTimeDlSUMIMO.*BWP,* where BWP identifies the active BWP. |
| f) Measurement Object Class | NRCellDU |
| g) Switching Technology | Valid for packet switched traffic |
| h) Generation | 5GS |
| i) Purpose | One usage of this measurement is for performance assurance within integrity area (user plane connection quality). |

###### Cell-specific downlink total MU-MIMO transmission time duration

|  |  |
| --- | --- |
| **Measurement Name** | **Cell-specific DL total MU-MIMO transmission time duration** |
| a) Description | This measurement provides the total duration of time covering the total number of time slots within each measurement granularity period, when multiple transport blocks were scheduled for HARQ downlink transmission in MU-MIMO mode from the radio resources of a given component carrier (i.e., a given cell) to the UEs.  The total number of time slots scheduled for a UE includes the unique time slots scheduled from the component carrier, irrespective of whether it is the primary component carrier (i.e., the primary cell) or a secondary supplemental component carrier (i.e., the secondary cell) to the UE, for transmission of downlink transport blocks to the UE when the UE is in MU-MIMO mode.  The unit is in micro-second [?s].  The measurement is optionally split into sub-counters per QoS level (mapped 5QI or QCI in EN-DC) and sub-counters per supported S-NSSAI, and sub-counters per PLMN ID, and sub-counters from BWP. |
| b) Collection Method | CC |
| c) Condition | The counter is incremented by the length of the time slot (in micro-seconds) during every time slot, when a HARQ downlink transmission of multiple transport blocks in MU-MIMO mode is scheduled on the radio resources of the cell to multiple UEs served by the cell, either in its capacity as the primary cell or a secondary cell for the UEs.  For this counter to be generated at a per-UE level, the counter is incremented by the length of the time slot (in micro-seconds), during every time slot when the UE is configured in MU-MIMO mode and when a HARQ downlink transmission of transport blocks is scheduled on the radio resources of the cell to the given UE served by the cell, either in its capacity as the primary cell or a secondary cell for the UE. |
| d) Measurement Result | Each measurement is a single integer value. If optional measurements with sub- counters are performed, the number of measurements is equal to the number of supported QoS levels, the number of supported S-NSSAIs, the number of supported PLMNs, and the number of supported BWPs. |
| e) Measurement Type | The measurement name has the form: ScheduledTxTimeDlMUMIMO (as the default measurement, without sub-counters or filters), or optionally, ScheduledTxTimeDlMUMIMO.*QOS*, where *QOS* identifies the target quality of service class, ScheduledTxTimeDlMUMIMO.*SNSSAI*, where *SNSSAI* identifies the S-NSSAI, and ScheduledTxTimeDlMUMIMO.*PLMN*, where *PLMN* refers to the PLMN ID, and ScheduledTxTimeDlMUMIMO.*BWP,* where BWP identifies the active BWP. |
| f) Measurement Object Class | NRCellDU |
| g) Switching Technology | Valid for packet switched traffic |
| h) Generation | 5GS |
| i) Purpose | One usage of this measurement is for performance assurance within integrity area (user plane connection quality). |

#### DL Transmitted Data Volume (MAC SDU)

|  |  |
| --- | --- |
| **Measurement Name** | **DL Transmitted Data Volume (MAC SDU)** |
| a) Description | This measurement provides the transmitted data volume in the downlink in a measurement time. The measurement is split into subcounters per PLMN ID and subcounters per QoS level (mapped 5QI or QCI in NR option 3), and subcounters per supported S-NSSAI.  The unit is kbit. |
| b) Collection Method | CC |
| c) Condition | This measurement is obtained by counting the data volume counted on MAC SDU level, in kbit successfully transmitted (reception of HARQ ACK) in DL for one DRB during measurement time T. Separate counters are maintained for each mapped 5QI (or QCI for option 3) and for each supported S-NSSAI. |
| d) Measurement Result | Each measurement is an integer value representing the number of bits measured in kbits (1kbits=1000 bits). The number of measurements is equal to the number of PLMNs multiplied by the number of QoS levels multiplied by the number of S- NSSAIs. |
| e) Measurement Type | The measurement name has the form DRB.MacSduTransmittedVolumeDL\_Filter. Where filter is a combination of PLMN ID and QoS level and S-NSSAI.  Where PLMN ID represents the PLMN ID, QoS represents the mapped 5QI or the QCI level, and SNSSAI represents S-NSSAI. |
| f) Measurement Object Class | NRCellDU |
| g) Switching Technology | Valid for packet switched traffic |
| h) Generation | 5GS |
| i) Purpose | One usage of this measurement is for performance assurance within integrity area (user plane connection quality). |

#### UL Transmitted Data Volume (MAC SDU)

|  |  |
| --- | --- |
| **Measurement Name** | **UL Transmitted Data Volume (MAC SDU)** |
| a) Description | This measurement provides the transmitted data volume in the uplink in a certain period. The measurement is split into subcounters per QoS level (mapped 5QI or QCI in NR option 3), and subcounters per supported S-NSSAI.  The unit is kbit. |
| b) Collection Method | CC |
| c) Condition | This measurement is obtained by counting the data volume counted on MAC SDU level, in kbit successfully transmitted (transmission of HARQ ACK) in UL for one DRB during measurement time T. Separate counters are maintained for each mapped 5QI (or QCI for option 3) and for each supported S-NSSAI. |
| d) Measurement Result | Each measurement is an integer value representing the number of bits measured in kbits (1kbits=1000 bits). The number of measurements is equal to the number of PLMNs multiplied by the number of QoS levels multiplied by the number of S- NSSAIs. |
| e) Measurement Type | The measurement name has the form DRB.MacSduTransmittedVolumeUL\_Filter. Where filter is a combination of PLMN ID and QoS level and S-NSSAI.  Where PLMN ID represents the PLMN ID, QoS represents the mapped 5QI or the QCI level, and SNSSAI represents S-NSSAI. |
| f) Measurement Object Class | NRCellDU |
| g) Switching Technology | Valid for packet switched traffic |
| h) Generation | 5GS |
| i) Purpose | One usage of this measurement is for performance assurance within integrity area (user plane connection quality). |

# Elements for E2SM Service Model

## General

Clause 8.2 describes the structure of the information elements as required for E2SM-KPM in tabular format. Clause 8.3 presents individual information elements. Clause 8.4 provides the corresponding ASN.1 definition of each information element.

The following attributes are used for the tabular description of the messages and information elements: NOTE: The messages have been defined by the guidelines specified in 3GPP TR 25.921 [i.3].

## Message Functional Definition and Content

#### Messages for RIC Functional procedures

##### RIC EVENT TRIGGER DEFINITION IE

This information element is part of the RIC SUBSCRIPTION REQUEST message sent by the Near-RT RIC to an E2 Node and is required for event triggers used to initiate REPORT actions.

Direction: NEAR-RT RIC ? E2 Node.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| CHOICE *Event Trigger Format* | M |  |  |  |
| >E2SM-KPM Event Trigger Definition Format 1 |  |  | 8.2.1.1.1 |  |

* + - * 1. E2SM-KPM Event Trigger Definition Format 1

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Reporting Period | M |  | INTEGER (1..42949672  95) | The reporting period is expressed in unit of 1 millisecond. |

##### RIC ACTION DEFINITION IE

This information element is part of the RIC SUBSCRIPTION REQUEST message sent by the Near-RT RIC to an E2 Node. In this service model, this information element provides additional information for the nominated Action (Report).

Direction: NEAR-RT RIC ? E2 Node.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RIC Style Type | M |  | 8.3.3 |  |
| CHOICE *Action Definition Format* | M |  |  |  |
| >E2SM-KPM Action Definition Format 1 |  |  | 8.2.1.2.1 |  |
| >E2SM-KPM Action Definition Format 2 |  |  | 8.2.1.2.2 |  |
| >E2SM-KPM Action Definition Format 3 |  |  | 8.2.1.2.3 |  |
| >E2SM-KPM Action Definition Format 4 |  |  | 8.2.1.2.4 |  |
| >E2SM-KPM Action Definition  Format 5 |  |  | 8.2.1.2.5 |  |
| >E2SM-KPM Action Definition Format 255 |  |  | 8.2.1.2.6 | Used to generate list of fundamental level E2SM-KPM Action Definition  IEs |

* + - * 1. E2SM-KPM Action Definition Format 1

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Measurement Information List |  | *1..*  *<maxnoofMeas urementInfo>* |  |  |
| >CHOICE *Measurement Type* | M |  |  |  |
| >>Measurement Name |  |  | 8.3.9  Measurement Type Name |  |
| >>Measurement ID |  |  | 8.3.10  Measurement Type ID |  |
| >List of Labels |  | *1..*  *<maxnoofLabelI nfo>* |  |  |
| >>Label Information | M |  | 8.3.11  Measurement Label |  |
| >Matching Condition for Reporting |  | *0..*  *<maxnoofCondi tionInfo>* |  |  |
| >>Measured Value Reporting Condition | M |  | 8.3.28 |  |
| >>Logical OR | O |  | 8.3.25 |  |
| Granularity Period | M |  | 8.3.8  Granularity Period | Collection interval of measurements |
| Cell Global ID | O |  | 8.3.20 Cell Global ID | Points to a specific cell for generating measurements subscribed by the *Measurement Information List* IE This IE is ignored when Report Style 255 is used, *Common Action Definition* IE is present and for the specific job, *Job Specific Action Definition* IE is absent and *Job*  *Specific Cell Global ID* IE is present. |
| Distribution Measurement Bin Range Info List |  | *0..*  *<maxnoofMeas urementInfo>* |  |  |
| >CHOICE Measurement Type | M |  |  |  |
| >>Measurement Name |  |  | 8.3.9  Measurement Type Name |  |
| >>Measurement ID |  |  | 8.3.10  Measurement Type ID |  |
| >Bin Range Definition | M |  | 8.3.26 | Indicates the value ranges of bins for distribution type measurement |

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofMeasurementInfo | Maximum no. of measurement types that can be reported by a single report. Value is <65535>. |
| maxnoofLabelInfo | Maximum no. of measurements values that can be reported for a single measurement type. Value is <2147483647>. |
| maxnoofConditionInfo | Maximum no. of conditions that can be subscribed for a single measurement type. Value is <32768>. |

* + - * 1. E2SM-KPM Action Definition Format 2

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| UE ID | M |  | 8.3.24 | Points to a specific UE of interest.  This IE is ignored when Report Style 255 is used, *Common Action Definition* IE is present and for the specific job, *Job Specific Action Definition* IE is absent and *Job Specific UE ID* IE is  present. |
| Subscription Information | M |  | 8.2.1.2.1 E2SM-KPM  Action Definition Format 1 |  |

* + - * 1. E2SM-KPM Action Definition Format 3

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Measurement Information Condition List |  | *1..*  *<maxnoofMeas urementInfo>* |  |  |
| >CHOICE *Measurement Type* | M |  |  |  |
| >>Measurement Name |  |  | 8.3.9  Measurement Type Name |  |
| >>Measurement ID |  |  | 8.3.10  Measurement Type ID |  |
| >Matching Condition |  | *1..*  *<maxnoofCondi tionInfo>* |  | The Matching Condition represents the Boolean expression, the logical connection to the next condition is AND if the *Logical*  *OR* IE is not included |
| >>CHOICE *Condition Type* | M |  |  |  |
| >>>Label Information |  |  | 8.3.11  Measurement Label |  |
| >>>Test Information |  |  | 8.3.22 Test Condition Information |  |
| >>Logical OR | O |  | 8.3.25 | If included, logical connection to the next condition is "or". |
| >Bin Range Definition | O |  | 8.3.26 | Indicates the value ranges of bins for distribution type  measurement |
| Granularity Period | M |  | 8.3.8  Granularity Period | Collection interval of measurements |
| Cell Global ID | O |  | 8.3.20 Cell Global ID | Points to a specific cell for generating measurements subscribed by the *Measurement Information List* IE. This IE is ignored when Report Style 255 is used, *Common Action Definition* IE is present and for the specific job, *Job Specific Action Definition* IE is absent and *Job Specific Cell Global*  *ID* IE is present. |

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofMeasurementInfo | Maximum no. of measurement types that can be reported by a single report. Value is <65535>. |
| maxnoofConditionInfo | Maximum no. of conditions that can be subscribed for a single measurement type. Value is <32768>. |

* + - * 1. E2SM-KPM Action Definition Format 4

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Matching Condition |  | *1..*  *<maxnoofCondi tionInfoPerSub>* |  | The Matching Condition represents the Boolean expression, the logical connection to the next condition is AND if the *Logical*  *OR* IE is not included |
| >Test Information | M |  | 8.3.22 Test Condition Information | Provides test condition to filter matching UEs |
| >Logical OR | O |  | 8.3.25 | If included, logical  connection to the next condition is "or". |
| Subscription Information | M |  | 8.2.1.2.1 E2SM-KPM  Action Definition Format 1 |  |

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofConditionInfoPerSub | Maximum no. of conditions that can be subscribed for a single subscription. Value is <32768>. |

* + - * 1. E2SM-KPM Action Definition Format 5

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| List of Subscribed UE IDs |  | *2..*  *<maxnoofUEID PerSub>* |  | Points to a list of UEs of interest.  This IE is ignored when Report Style 255 is used, *Common Action Definition* IE is present and for the specific job, *Job Specific Action Definition* IE is absent and *Job Specific List of Subscribed UE IDs*  IE is present. |
| >UE ID | M |  | 8.3.24 |  |
| Subscription Information | M |  | 8.2.1.2.1 E2SM-KPM  Action Definition Format 1 |  |

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofUEIDPerSub | Maximum no. of UE IDs that can be subscribed for a single subscription. Value is <65535>. |

* + - * 1. E2SM-KPM Action Definition Format 255

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| List of Multi Report Action Definitions |  | *1..*  *<maxnoofJobs>* |  |  |
| >Job ID | M |  | 8.3.30 |  |
| >Job Specific Action Definition | O |  | 8.2.1.2 | Used to define the Action Definition for a specific job.  If absent, then  *Common Action*  *Definition* IE applies to specific job |
| >Job Specific Cell Global ID | O |  | 8.3.20 | Used to modify the *Cell Global ID* IE within *Common Action Definition* IE. To be provided when *Job Specific Action Definition* IE is not present for the  specific job |
| >Job Specific UE ID | O |  | 8.3.24 | Used to modify the *UE ID* IE within *Common Action Definition* IE.  To be provided when *Job Specific Action Definition* IE is not  present for the specific job |
| >Job Specific List of Subscribed UE IDs | O |  |  | Used to modify the *List of Subscribed UE IDs* IE within *Common Action Definition* IE.  To be provided when *Job Specific Action Definition* IE is not present for the  specific job |
| Reporting approach | M |  | ENUMERATED  (Single, Multiple, ...) | Indicates if integrated report is to be transmitted as Single report or Multiple Reports with one per  job |
| Common Action Definition | O |  | 8.2.1.2 | Used to define a common Action Definition for one or more specific jobs. To be provided when at least one job does not have *Job Specific Action Definition* IE  present |

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofJobs | Maximum no. of fundamental levels jobs that can be reported. Value is  <65535> |

##### RIC INDICATION HEADER IE

This information element is part of the RIC INDICATION message sent by the E2 Node to the Near-RT RIC and is required for REPORT action.

Direction: E2 Node ? NEAR-RT RIC.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| CHOICE *Indication Header Format* | M |  |  |  |
| >E2SM-KPM Indication Header Format 1 |  |  | 8.2.1.3.1 |  |

* + - * 1. E2SM-KPM Indication Header Format 1

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Collection Start Time | M |  | 8.3.12 Time Stamp |  |
| File Format Version | O |  | PrintableString (SIZE (0..15), ...) |  |
| Sender Name | O |  | PrintableString (SIZE (0..400), ...) |  |
| Sender Type | O |  | PrintableString (SIZE (0..8), ...) |  |
| Vendor Name | O |  | PrintableString (SIZE (0..32), ...) |  |

##### RIC INDICATION MESSAGE IE

This information element is part of the RIC INDICATION message sent by the E2 Node to the Near-RT RIC and is required for REPORT action.

Direction: E2 Node ? NEAR-RT RIC.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| CHOICE *Indication Message Format* | M |  |  |  |
| >E2SM-KPM Indication Message Format 1 |  |  | 8.2.1.4.1 |  |
| >E2SM-KPM Indication Message Format 2 |  |  | 8.2.1.4.2 |  |
| >E2SM-KPM Indication Message Format 3 |  |  | 8.2.1.4.3 |  |
| >E2SM-KPM Indication Message Format 255 |  |  | 8.2.1.4.4 | To be used when integrated report is to be transmitted as a single report |
| Job ID | O |  | 8.3.30 | To be included when Integrated level service is being used with each job specific measurement report is sent as an independent RIC Indication  message |

* + - * 1. E2SM-KPM Indication Message Format 1

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Measurements Data |  | *1..*  *<maxnoofMeas urementRecord*  *>* |  | Contains a set of Measurement Records, each collected at each  Granularity Period. |
| >Measurements Record |  | *1..*  *<maxnoofMeas urementValue>* |  | Contains measured values in same order as in the *Measurements Information List* IE if present, otherwise in the order defined in  the subscription. |
| >>CHOICE *Measured Value* | M |  |  |  |
| >>>Integer Value |  |  | INTEGER (0..4294967295) |  |
| >>>Real Value |  |  | REAL |  |
| >>>No Value |  |  | NULL | Indicates that no measurement value  was generated. |
| >>>Not Satisfied |  |  | NULL | Indicates that the measured value did not satisfy the Matching Condition for Reporting, if  configured. |
| >Incomplete Flag | O |  | ENUMERATED (true,  ...) | Indicates that the measurements record is not reliable. |
| Measurement Information List |  | *0..*  *<maxnoofMeas urementInfo>* |  |  |
| >CHOICE *Measurement Type* | M |  |  |  |
| >>Measurement Name |  |  | 8.3.9  Measurement Type Name |  |
| >>Measurement ID |  |  | 8.3.10  Measurement Type ID |  |
| >List of Labels |  | *1..*  *<maxnoofLabelI nfo>* |  |  |
| >>Label Information | M |  | 8.3.11  Measurement Label |  |
| >Matching Condition for Reporting |  | *0..*  *<maxnoofCondi tionInfo>* |  |  |
| >>Measured Value Reporting Condition | M |  | 8.3.28 |  |
| >>Logical OR | O |  | 8.3.25 |  |
| Granularity Period | O |  | 8.3.8  Granularity Period | Collection interval of measurements |

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofMeasurementInfo | Maximum no. of measurement types that can be reported by a single report. Value is <65535>. |
| maxnoofConditionInfo | Maximum no. of conditions that can be subscribed for a single measurement type. Value is <32768>. |
| maxnoofLabelInfo | Maximum no. of measurements values that can be reported for a single measurement type. Value is <2147483647>. |
| maxnoofMeasurementRecord | Maximum no. of measurement records that can be reported by a single report. Value is <65535>. |
| maxnoofMeasurementValue | Maximum no. of measurement values that can be carried by a single measurement record. Value is <2147483647>. |

* + - * 1. E2SM-KPM Indication Message Format 2

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Measurements Data |  | *1..*  *<maxnoofMeas urementRecord*  *>* |  | Contains a set of Measurement Records, each collected at each  Granularity Period. |
| >Measurements Record |  | *1..*  *<maxnoofMeas urementValue>* |  | Contains measured values in same order as in the *Measurements*  *Information Condition UE List* IE. |
| >>CHOICE *Measured Value* | M |  |  |  |
| >>>Integer Value |  |  | INTEGER (0..4294967295) |  |
| >>>Real Value |  |  | REAL |  |
| >>>No Value |  |  | NULL |  |
| >Incomplete Flag | O |  | ENUMERATED (true,  ...) | Indicates that the measurements record is not reliable. |
| Measurement Information Condition UE List |  | *1..*  *<maxnoofMeas urementInfo>* |  |  |
| >CHOICE *Measurement Type* | M |  |  |  |
| >>Measurement Name |  |  | 8.3.9  Measurement Type Name |  |
| >>Measurement ID |  |  | 8.3.10  Measurement Type ID |  |
| >Matching Condition |  | *1..*  *<maxnoofCondi tionInfo>* |  |  |
| >>CHOICE *Condition Type* | M |  |  |  |
| >>>Label Information |  |  | 8.3.11  Measurement Label |  |
| >>>Test Information |  |  | 8.3.22 Test Condition Information |  |
| >>Logical OR | O |  | 8.3.25 |  |
| >List of matched UE IDs |  | *0..* |  | Indicates the UE |
|  | *<maxnoofUEID* | ID(s) matched for the |
|  | *>* | corresponding |
|  |  | measurement type |
|  |  | during the Reporting |
|  |  | Period. |
| >>UE ID | M |  | 8.3.24 |  |
| >Sequence of Matched UE IDs for Granularity Periods |  | *0..*  *<maxnoofMeas urementRecord*  *>* |  | Indicates the UE ID(s) matched for the corresponding measurement type, separately for each and every Granularity Period in chronological order. |
|  |  | If included, the *List of matched UE IDs* IE shall be ignored if received. |
| >>CHOICE *Matched UE for Granularity Period* | M |  |  |  |
| >>>*None* |  |  |  |  |

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| >>>>No UE matched for Granularity Period | M |  | ENUMERATED (true,  ...) | Indicates that none of UEs were matched for the corresponding measurement type for the corresponding  Granularity Period. |
| >>>*One or more* |  |  |  |  |
| >>>>List of UE IDs for Granularity Period |  | *1..*  *<maxnoofUEID*  *>* |  | Indicates the UE ID(s) matched for the corresponding measurement type  for the corresponding Granularity Period. |
| >>>>>UE ID | M |  | 8.3.24 |  |
| Granularity Period | O |  | 8.3.8  Granularity Period | Collection interval of measurements |

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofMeasurementInfo | Maximum no. of measurement types that can be reported by a single report. Value is <65535>. |
| maxnoofConditionInfo | Maximum no. of conditions that can be subscribed for a single measurement type. Value is <32768>. |
| maxnoofUEID | Maximum no. of UE IDs that can be reported for a single condition. Value is <65535>. |
| maxnoofMeasurementRecord | Maximum no. of measurement records that can be reported by a single report. Value is <65535>. |
| maxnoofMeasurementValue | Maximum no. of measurement values that can be carried by a single measurement record. Value is <2147483647>. |

* + - * 1. E2SM-KPM Indication Message Format 3

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| List of UE Measurement Reports |  | *1..*  *<maxnoofUEMe asReport>* |  |  |
| >UE ID | M |  | 8.3.24 |  |
| >Measurements Report | M |  | 8.2.1.4.1 E2SM-KPM  Indication Message Format 1 | Contains Measurement Data for a UE for a Reporting Period. |

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofUEMeasReport | Maximum no. of UE Measurement Reports that can be reported. Value is <65535>. |

* + - * 1. E2SM-KPM Indication Message Format 255

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| List of RIC Indication messages |  | *1..*  *<maxnoofJobs*  *>* |  |  |
| >Job ID | M |  | 8.3.30 |  |
| >RIC Indication Message | M |  | 8.2.1.4 | Contains Measurement report for specific Job. |

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofJobs | Maximum no. of fundamental levels jobs that can be reported. Value is  <65535>. |

##### RIC CALL PROCESS ID

Void.

##### RIC CONTROL HEADER IE

Void.

##### RIC CONTROL MESSAGE IE

Void.

##### RIC CONTROL OUTCOME IE

Void.

#### Messages for RIC Global Procedures

###### RAN Function Definition IE

This information element is part of the E2 SETUP REQUEST, and RIC SERVICE UPDATE message sent by the E2 Node to the Near-RT RIC and is used to provide all required information for the Near-RT RIC to determine how a given E2 Node has been configured to support a given RAN Function specific E2SM.

Direction: E2 Node ? NEAR-RT RIC.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RAN Function Name | M |  | 8.3.2 |  |
| Sequence of Event Trigger styles |  | *0.. <maxnoofRICStyles>* |  |  |
| >RIC Event Trigger Style Type | M |  | 8.3.3 |  |
| >RIC Event Trigger Style Name | M |  | 8.3.4 |  |
| >RIC Event Trigger Format Type | M |  | 8.3.5 |  |
| Sequence of Report styles |  | *0.. <maxnoofRICStyles>* |  | To be used to describe supported fundamental level  report styles |
| >RIC Report Style Type | M |  | 8.3.3 |  |
| >RIC Report Style Name | M |  | 8.3.4 |  |
| >RIC Report Action Format Type | M |  | 8.3.5 |  |
| >Sequence of Measurement Info for Action |  | *1..*  *<maxnoofMeasurementIn fo>* |  |  |
| >>Measurement Type Name | M |  | 8.3.9 |  |
| >>Measurement Type ID | O |  | 8.3.10 |  |
| >>Bin Range Definition | O |  | 8.3.26 | Indicates the value ranges of bins for distribution type  measurement |
| >RIC Indication Header Format Type | M |  | 8.3.5 | Indication header type used by Report  style |
| >RIC Indication Message Format Type | M |  | 8.3.5 | Indication message type used by Report style |
| Sequence of Integrated level Report styles |  | *0.. <maxnoofRICStyles>* |  | To be used to describe supported integrated level  report styles |
| >RIC Report Style Type | M |  | 8.3.3 |  |
| >RIC Report Style Name | M |  | 8.3.4 |  |
| >RIC Report Action Format Type | M |  | 8.3.5 |  |
| >RIC Indication Header Format Type | M |  | 8.3.5 | Indication header type used by Report  style |
| >RIC Indication Message Format Type | M |  | 8.3.5 | Indication message type used by Report  style |
| >Sequence of Fundamental level report styles |  | *0.. <maxnoofRICStyles>* |  |  |
| >>RIC Report Style Type | M |  | 8.3.3 | Supported features (formats, measurement info, etc.) defined in corresponding fundamental level  Report Style |
| >>Job Specific Action Definition support | O |  | ENUMERAT  ED (true, ...) |  |
| >>Job Specific Cell Global ID support | O |  | ENUMERAT  ED (true, ...) |  |
| >>Job Specific UE ID support | O |  | ENUMERAT  ED (true, ...) |  |
| >>Job Specific List of Subscribed UE IDs support | O |  | ENUMERAT  ED (true, ...) |  |
| >Single Reporting approach support | O |  | ENUMERAT  ED (true, ...) |  |
| >Multiple Reporting approach support | O |  | ENUMERAT  ED (true, ...) |  |
| >Common Action Definition support | O |  | ENUMERAT  ED (true, ...) |  |

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofCells | Maximum no. of cells supported by an E2 Node component. The value is <16384>. |
| maxnoofRICstyle | Maximum no. of Style of Report, Insert, Control or Policy actions supported by RAN Function. The value is <63>. |
| maxnoofMeasurementInfo | Maximum no. of measurement types that can be reported by a single report. The value is <65535>. |

## Information Element definitions

#### General

When specifying information elements which are to be represented by bit strings, if not otherwise specifically stated in the semantics description of the concerned IE or elsewhere, the following principle applies with regards to the ordering of bits:

* The first bit (leftmost bit) contains the most significant bit (MSB);
* The last bit (rightmost bit) contains the least significant bit (LSB);
* When importing bit strings from other specifications, the first bit of the bit string contains the first bit of the concerned information.

#### RAN Function Name

This IE is defined in [12] clause 6.2.2.1.

#### RIC Style Type

This IE is defined in [12] clause 6.2.2.2.

#### RIC Style Name

This IE is defined in [12] clause 6.2.2.3.

#### RIC Format Type

This IE is defined in [12] clause 6.2.2.4.

#### Void

#### Void

#### Granularity Period

This IE defines the measurement collection interval within a reporting period.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Granularity Period | M |  | INTEGER (1..4294967295) | Measurement collection interval expressed in unit of 1 millisecond. |

#### Measurement Type Name

This IE defines the name of a given measurement type.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Measurement Name | M |  | PrintableString(SIZE(1.. | One of the |
|  |  | 150, ...)) | measurement |
|  |  |  | names specified in |
|  |  |  | TS 28.552 [4], TS |
|  |  |  | 32.425 [8], or |
|  |  |  | clause 7.10. The |
|  |  |  | subcounters are |
|  |  |  | represented by the |
|  |  |  | Measurement |
|  |  |  | Labels defined in |
|  |  |  | 8.3.11. |

#### Measurement Type ID

This IE defines the identifier of a given measurement type.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Measurement ID | M |  | INTEGER (1.. 65535, ...) |  |

#### Measurement Label

This IE defines values of necessary subcounters applicable to an associated measurement type.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| No Label | O |  | ENUMERATED (true,  ...) | Indicates the associated measurement type without any subcounter. If included, other IEs in  8.3.11 shall not be included in the  same Measurement Label (and vice versa). |
| PLMN ID | O |  | 8.3.15 | Represents the PLMN subcounter |
| Slice ID | O |  | 8.3.14 | Represents the SNSSAI subcounter. OCTET STRING of length 1 octet shall be provided for matching the SST value only.  OCTET STRING of length 4 octets shall be provided for matching the SST + SD value. OCTET STRING  of length 4 octets with the last 3 octets as 0xFFFFFF shall be provided if a S-NSSAI without SD value has to be explicitly matched. See 3GPP TS 23.003 [20] clause  28.4.2. |
| 5QI | O |  | 8.3.17 | Represents the 5QI subcounter |
| QFI | O |  | 8.3.21 | Represents the QFI subcounter |
| QCI | O |  | 8.3.18 | Represents the QCI subcounter |
| QCImax | O |  | 8.3.18 | Used only when the name of the associated measurement type ends with '\_Filter' |

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| QCImin | O |  | 8.3.18 | Used only when the name of the associated measurement type ends with '\_Filter' |
| ARPmax | O |  | INTEGER (1.. 15, ...) | Used only when the name of the associated measurement type ends with '\_Filter' |
| ARPmin | O |  | INTEGER (1.. 15, ...) | Used only when the name of the associated measurement type ends with '\_Filter' |
| Bitrate Range | O |  | INTEGER (1..  65535, ...) | Used only when the name of the associated measurement type ends with '\_Filter' |
| Layer at MU-MIMO | O |  | INTEGER (1..  65535, ...) | Represents the MIMO layer subcounter |
| Sum | O |  | ENUMERATED (true,  ...) | Sum is calculated as cumulative sum from the start of the  measurement. |
| Distribution Bin X | O |  | INTEGER (1..  65535, ...) | An index of Bin X. Only applicable to distribution type measurement  information. |
| Distribution Bin Y | O |  | INTEGER (1..  65535, ...) | An index of Bin Y. Only applicable to distribution type measurement information. This IE may be present only when Distribution Bin X is  present. |
| Distribution Bin Z | O |  | INTEGER (1..  65535, ...) | An index of Bin Z. Only applicable to distribution type measurement information. This IE may be present  only when Distribution Bin X and Distribution Bin Y are present. |
| Precedent Label Override Indication | O |  | ENUMERATED (true,  ...) | Indicates that subcounters and their values of the precedent label applies in the same way except for the included subcounters. For  included subcounters, new values shall apply. |
| Start End Indication | O |  | ENUMERATED (start,  end, ...) | Used to indicate a range of values. If "start" is used for a label, the subsequent label should include this IE with "end".  If included together with Distribution Bin type subcounter(s), it can be used to indicate a range of multi-dimensional values in the ascending order of numbers from Bin Z (if included), then from Bin Y (if included), then from Bin X (if included). In this case, information of a label with "start" should be identical to that of the subsequent label with "end", except Distribution Bin type subcounter(s) used.  Otherwise (included together with subcounter other than Distribution Bin type subcounter), it can be used to indicate one-dimensional range of values in the ascending order, and information of a label with "start" should be identical to  that of the subsequent label with "end", except only one subcounter. |
| Min | O |  | ENUMERATED (true,  ...) | Minimum of the measured values over a granularity period. |

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Max | O |  | ENUMERATED (true,  ...) | Maximum of the measured values over a granularity period. |
| Avg | O |  | ENUMERATED (true,  ...) | Average of the measured values over a granularity period. |
| SSB Index | O |  | INTEGER (1..  65535, ...) | Represents the SSB subcounter |
| Non-GoB Beamforming Mode Index | O |  | INTEGER (1..  65535, ...) | Represents the Non- Grid of Beams (Non-GoB) beamforming mode subcounter [21]. The index is used for Non-GoB beamforming optimization for 5G mMIMO deployments. Each BF mode implies a vendor-specific proprietary Non-GoB BF algorithm that are not standardized [i.1], for which each E2 Node, who supports the Non-GoB beamforming optimization feature, provides the number of different Non-GoB BF mode(s) supported by its scheduler indexed from 1 to n. The AI/ML model for Non-GoB beamforming optimization is trained by data and measurements related to each BF mode and/or MIMO mode, for which the trained AI/ML model, based on collected data, configures the E2 Node with the best inferred Non-GoB BF mode index to be used for each UE, where such configuration could be done separately for the case of Single  User- and/or Multi-user MIMO [21]. |
| MIMO Mode Index | O |  | INTEGER (1..2, ...) | Represents the MIMO mode subcounter. Value = 1 means the SU (single-user) MIMO mode.  Value 2 means the MU (multi-user) MIMO mode. |
| CGI | O |  | 8.3.20 | Represents the subcounter for a specific cell, e.g., a neighboring cell  of the subscribed E2 Node. |
| Beam ID | O |  | 8.3.29 | Represents the beam subcounter, where the beam belongs to the subscribed E2 Node. An E2 Node level measurement can be obtained at beam-level using this  subcounter. |

#### Time Stamp

This IE contains UTC time information in picosecond-level. In this version of specification, the value is rounded in millisecond.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Time Stamp | M |  | OCTET STRING (SIZE(8)) | Encoded in the same format as the 64-bit timestamp format as defined in clause 6 of IETF RFC 5905 [13]. |

#### Void

### S-NSSAI

This IE is defined in [12] clause 6.2.3.12.

#### PLMN Identity

This IE is defined in [12] clause 6.2.3.1.

#### Void

### 5QI

This IE is defined in [12] clause 6.2.3.13.

### QCI

This IE is defined in [12] clause 6.2.3.14.

#### Void

#### Cell Global ID

This IE is defined in [12] clause 6.2.2.5.

### QFI

This IE is defined in [12] clause 6.2.3.15.

#### Test Condition Information

This IE defines a test condition for identifying UEs.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| CHOICE *Test Condition Type* | M |  |  |  |
| >GBR |  |  | ENUMERATED (true, ...) | Identifies UEs with the GBR QoS flows or within the specified bitrate range. The definition of GBR QoS flow is in TS  23.501 [14]. |
| >AMBR |  |  | ENUMERATED (true, ...) | Identifies UEs with the Session-AMBR within the specified bitrate range. The definition of Session-AMBR is in TS  23.501 [14]. |
| >IsStat |  |  | ENUMERATED (true, ...) | This IE is not used in this version of specification. |
| >IsCatM |  |  | ENUMERATED (true, ...) | This IE is not used in this version of specification. |
| >DL RSRP |  |  | ENUMERATED (true, ...) | Identifies UEs with the latest reported DL RSRP measurement for this cell within the specified range. For EUTRAN, the definition of DL RSRP is in TS 36.214 [15]. For NR, the definition of DL RSRP  is in TS 38.215 [16]. |
| >DL RSRQ |  |  | ENUMERATED (true, ...) | Identifies UEs with the latest reported DL RSRQ measurement for this cell within the specified range. For EUTRAN, the definition of DL RSRP is in TS 36.214  [15]. For NR, the definition of DL RSRQ is in TS 38.215 [16]. |
| >UL RSRP |  |  | ENUMERATED (true, ...) | Identifies UEs with the latest measured UL SRS-RSRP for this cell by the E2 Node within the specific range. The definition of UL SRS-RSRP is defined in TS 38.215 [16]. The mapping of measured quantity is described similarly to DL RSRP using the TS 38.133 [17]  Table 10.1.6.1-1. |
| >CQI |  |  | ENUMERATED (true, ...) | Identifies UEs with the latest reported wideband CQI for this cell in the Layer 1 within the specific range. The definition of wideband CQI is defined in TS 38.214  [18]. |
| >5QI |  |  | ENUMERATED (true, ...) | Identifies UEs with the 5QI of QoS flows  within the specified range. The definition of 5QI is in TS 23.501 [14]. |
| >QCI |  |  | ENUMERATED (true, ...) | Identifies UEs with the QCI of Service Data Flows within the specified range.  The definition of QCI is in TS 23.203 [19]. |
| >S-NSSAI |  |  | ENUMERATED (true, ...) | Identifies UEs with the S-  NSSAI [12] within the specified range. OCTET STRING of length 1 octet shall be provided for matching the SST value only. OCTET STRING of length 4 octets shall be provided for matching the SST + SD value. OCTET STRING of length 4 octets with the last 3 octets as 0xFFFFFF shall be provided if a S- NSSAI without SD value has to be explicitly matched. See 3GPP TS 23.003  [20] clause 28.4.2. |
| Test Condition | O |  | ENUMERATED (equal,  greaterthan, lessthan, contains, present, ...) |  |
| Test Condition Value | O |  | 8.3.23 |  |

#### Test Condition Value

This IE defines the target value for a particular Test Condition Type IE element.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| CHOICE *Test Value* | M |  |  |  |
| >INTEGER |  |  | INTEGER |  |
| >ENUMERATED |  |  | INTEGER |  |
| >BOOLEAN |  |  | BOOLEAN |  |
| >BIT STRING |  |  | BIT STRING |  |
| >OCTET STRING |  |  | OCTET STRING |  |
| >PRINTABLE STRING |  |  | PrintableString |  |
| >REAL |  |  | REAL |  |

### UE ID

This IE is defined in [12] clause 6.2.2.6.

#### Logical OR

This IE indicates a logical "or" connection of the current condition to the next condition in a given sequence of conditions.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Logical OR | M |  | ENUMERATED (true, ...) | If set to "true", logical connection to the next  condition is "or". |

#### Bin Range Definition

This IE defines the value range of bins for distribution type measurements.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| List of Bins for Distribution Bin X |  | *1..*  *<maxnoofBi n>* |  |  |
| >Bin Index | M |  | INTEGER (1.. 65535, ..) | Index of a bin to be used when subscribed |
| >Start Value | M |  | 8.3.27 |  |
| >End Value | M |  | 8.3.27 |  |
| List of Bins for Distribution Bin Y |  | *0..*  *<maxnoofBi n>* |  | Shall not be included for a distribution measurement type that doesn't use  Distribution Bin Y. |
| >Bin Index | M |  | INTEGER (1.. 65535, ..) | Index of a bin to be used when subscribed |
| >Start Value | M |  | 8.3.27 |  |
| >End Value | M |  | 8.3.27 |  |
| List of Bins for Distribution Bin Z |  | *0..*  *<maxnoofBi n>* |  | Shall not be included for a distribution measurement type that doesn't use  Distribution Bin Z. |
| >Bin Index | M |  | INTEGER (1.. 65535, ..) | Index of a bin to be used when  subscribed |
| >Start Value | M |  | 8.3.27 |  |
| >End Value | M |  | 8.3.27 |  |

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofBin | Maximum no. of bins that can be defined for a distribution type measurement. Value is <65535>. |

#### Bin Range Value

This IE defines either the start or end value of a bin for distribution type measurements.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| CHOICE *Bin Range Value* | M |  |  |  |
| >INTEGER |  |  | INTEGER |  |
| >REAL |  |  | REAL |  |

#### Measured Value Reporting Condition

This IE defines a test condition for reporting measured values when satisfied.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Test Condition | M |  | ENUMERATED (equal,  greaterthan, lessthan, contains, present, ...) |  |
| Test Condition Value | M |  | 8.3.23 |  |

#### Beam ID

This IE is defined in [12] clause 6.2.2.16.

#### Job ID

This IE indicates the identifier of individual reports when using integrated level services.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Job ID | M |  | INTEGER (1.. *maxnoofJobs*) |  |

## Information Element Abstract Syntax (with ASN.1)

#### General

E2SM-KPM ASN.1 definition conforms to ITU-T Rec. X.680 [5] and ITU-T Rec. X.681 [6].

Sub clause 8.4.2 presents the Abstract Syntax of the E2SM information elements to be carried within the E2AP [3] protocol messages with ASN.1. In case there is contradiction between the ASN.1 definition in this sub clause and the tabular format in sub clause 8.2 and 8.3, the ASN.1 shall take precedence, except for the definition of conditions for the presence of conditional elements, in which the tabular format shall take precedence.

If an E2SM information element carried as an OCTET STRING in an E2AP [3] message that is not constructed as defined above is received, this shall be considered as Abstract Syntax Error, and the message shall be handled as defined for Abstract Syntax Error in clause 9.

#### Information Element definitions

-- ASN1START

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- E2SM-KPM Information Element Definitions

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

E2SM-KPM-IEs {

iso(1) identified-organization(3) dod(6) internet(1) private(4) enterprise(1) 53148 e2(1) version2(2) e2sm(2) e2sm-KPMMON-IEs (2)} DEFINITIONS AUTOMATIC TAGS ::=

BEGIN

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- IEs

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

IMPORTS

CGI,

FiveQI, PLMNIdentity, QCI,

QosFlowIdentifier, RANfunction-Name, RIC-Format-Type, RIC-Style-Name, RIC-Style-Type,

S-NSSAI, UEID,

Beam-ID

FROM E2SM-COMMON-IEs;

TimeStamp ::= OCTET STRING (SIZE(8)) BinIndex ::= INTEGER (1.. 65535, ...)

BinRangeValue ::= CHOICE { valueInt INTEGER,

valueReal REAL,

...

}

JobID ::= INTEGER (1.. 65535)

GranularityPeriod ::= INTEGER (1.. 4294967295) LogicalOR ::= ENUMERATED {true, ...}

MeasurementType ::= CHOICE {

measName MeasurementTypeName,

measID MeasurementTypeID,

...

}

MeasurementTypeName ::= PrintableString(SIZE(1.. 150, ...)) MeasurementTypeID ::= INTEGER (1.. 65536, ...) MeasurementLabel ::= SEQUENCE {

|  |  |  |
| --- | --- | --- |
| noLabel plmnID sliceID  fiveQI | ENUMERATED {true, ...}  PLMNIdentity S-NSSAI  FiveQI | OPTIONAL, OPTIONAL, OPTIONAL,  OPTIONAL, |
| qFI | QosFlowIdentifier | OPTIONAL, |
| qCI | QCI | OPTIONAL, |
| qCImax | QCI | OPTIONAL, |
| qCImin | QCI | OPTIONAL, |
| aRPmax | INTEGER (1.. 15, ...) | OPTIONAL, |
| aRPmin | INTEGER (1.. 15, ...) | OPTIONAL, |
| bitrateRange | INTEGER (1.. 65535, ...) | OPTIONAL, |
| layerMU-MIMO | INTEGER (1.. 65535, ...) | OPTIONAL, |
| sUM | ENUMERATED {true, ...} | OPTIONAL, |
| distBinX | INTEGER (1.. 65535, ...) | OPTIONAL, |
| distBinY | INTEGER (1.. 65535, ...) | OPTIONAL, |

distBinZ INTEGER (1.. 65535, ...) OPTIONAL,

preLabelOverride ENUMERATED {true, ...} OPTIONAL, startEndInd ENUMERATED {start, end, ...} OPTIONAL, min ENUMERATED {true, ...} OPTIONAL,

max ENUMERATED {true, ...} OPTIONAL,

avg ENUMERATED {true, ...} OPTIONAL,

...,

ssbIndex INTEGER (1.. 65535, ...) OPTIONAL,

nonGoB-BFmode-Index INTEGER (1.. 65535, ...) OPTIONAL,

mIMO-mode-Index INTEGER (1.. 2, ...) OPTIONAL,

cellGlobalID CGI OPTIONAL,

beamID Beam-ID OPTIONAL

}

TestCondInfo ::= SEQUENCE{ testType TestCond-Type,

testExpr TestCond-Expression OPTIONAL,

testValue TestCond-Value OPTIONAL,

...

}

TestCond-Type ::= CHOICE{

gBR ENUMERATED {true, ...},

aMBR ENUMERATED {true, ...},

isStat ENUMERATED {true, ...},

isCatM ENUMERATED {true, ...},

rSRP ENUMERATED {true, ...},

rSRQ ENUMERATED {true, ...},

...,

ul-rSRP ENUMERATED {true, ...},

cQI ENUMERATED {true, ...},

fiveQI ENUMERATED {true, ...},

qCI ENUMERATED {true, ...},

sNSSAI ENUMERATED {true, ...}

}

TestCond-Expression ::= ENUMERATED { equal,

greaterthan, lessthan, contains, present,

...

}

TestCond-Value ::= CHOICE{ valueInt INTEGER,

valueEnum INTEGER,

valueBool BOOLEAN,

valueBitS BIT STRING,

valueOctS OCTET STRING,

valuePrtS PrintableString,

...,

valueReal REAL

}

MultiReportApproach ::= ENUMERATED { single,

multiple,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- Lists

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

|  |  |  |
| --- | --- | --- |
| maxnoofCells INTEGER | ::= | 16384 |
| maxnoofRICStyles INTEGER | ::= | 63 |
| maxnoofMeasurementInfo INTEGER | ::= | 65535 |
| maxnoofLabelInfo INTEGER | ::= | 2147483647 |
| maxnoofMeasurementRecord INTEGER | ::= | 65535 |
| maxnoofMeasurementValue INTEGER | ::= | 2147483647 |
| maxnoofConditionInfo INTEGER | ::= | 32768 |
| maxnoofUEID INTEGER | ::= | 65535 |
| maxnoofConditionInfoPerSub INTEGER | ::= | 32768 |
| maxnoofUEIDPerSub INTEGER | ::= | 65535 |
| maxnoofUEMeasReport INTEGER | ::= | 65535 |
| maxnoofBin INTEGER | ::= | 65535 |
| maxnoofJobs INTEGER | ::= | 65535 |
| BinRangeDefinition ::= SEQUENCE { binRangeListX BinRangeList,  binRangeListY BinRangeList |  | OPTIONAL -- This IE shall not be present for a distribution measurement type that doesn't use Distribution Bin Y --, |
| binRangeListZ BinRangeList  ...  } |  | OPTIONAL -- This IE shall not be present for a distribution measurement type that doesn't use Distribution Bin Z --, |

BinRangeList ::= SEQUENCE (SIZE(1..maxnoofBin)) OF BinRangeItem

BinRangeItem ::= SEQUENCE { binIndex BinIndex,

startValue BinRangeValue,

endValue BinRangeValue,

}

DistMeasurementBinRangeList ::= SEQUENCE (SIZE(1..maxnoofMeasurementInfo)) OF DistMeasurementBinRangeItem DistMeasurementBinRangeItem ::= SEQUENCE {

measType MeasurementType, binRangeDef BinRangeDefinition,

...

}

MeasurementInfoList ::= SEQUENCE (SIZE(1..maxnoofMeasurementInfo)) OF MeasurementInfoItem

MeasurementInfoItem ::= SEQUENCE { measType MeasurementType,

labelInfoList LabelInfoList,

...,

matchCondReportList MatchCondReportList OPTIONAL

}

LabelInfoList ::= SEQUENCE (SIZE(1..maxnoofLabelInfo)) OF LabelInfoItem

LabelInfoItem ::= SEQUENCE { measLabel MeasurementLabel,

...

}

MatchCondReportList ::= SEQUENCE (SIZE(1..maxnoofConditionInfo)) OF MatchCondReportItem MatchCondReportItem ::= SEQUENCE {

measValueReportCond MeasValueReportCond,

logicalOR LogicalOR OPTIONAL,

...

}

MeasValueReportCond ::= SEQUENCE {

testExpr MeasValueTestCond-Expression,

testValue TestCond-Value,

...

}

MeasValueTestCond-Expression ::= ENUMERATED { equal,

greaterthan, lessthan, contains, present,

}

MeasurementData ::= SEQUENCE (SIZE(1..maxnoofMeasurementRecord)) OF MeasurementDataItem MeasurementDataItem ::= SEQUENCE {

measRecord MeasurementRecord,

incompleteFlag ENUMERATED {true, ...} OPTIONAL,

...

}

MeasurementRecord ::= SEQUENCE (SIZE(1..maxnoofMeasurementValue)) OF MeasurementRecordItem

MeasurementRecordItem ::= CHOICE {

integer INTEGER (0.. 4294967295),

real REAL,

noValue NULL,

...,

notSatisfied NULL

}

MeasurementInfo-Action-List ::= SEQUENCE (SIZE(1..maxnoofMeasurementInfo)) OF MeasurementInfo-Action-Item MeasurementInfo-Action-Item ::= SEQUENCE {

measName MeasurementTypeName,

measID MeasurementTypeID OPTIONAL,

...,

binRangeDef BinRangeDefinition OPTIONAL

}

MeasurementCondList ::= SEQUENCE (SIZE(1..maxnoofMeasurementInfo)) OF MeasurementCondItem MeasurementCondItem ::= SEQUENCE {

measType MeasurementType, matchingCond MatchingCondList,

...,

binRangeDef BinRangeDefinition OPTIONAL

}

MeasurementCondUEidList ::= SEQUENCE (SIZE(1..maxnoofMeasurementInfo)) OF MeasurementCondUEidItem

MeasurementCondUEidItem ::= SEQUENCE { measType MeasurementType,

matchingCond MatchingCondList, matchingUEidList MatchingUEidList OPTIONAL,

...,

matchingUEidPerGP MatchingUEidPerGP OPTIONAL

}

MatchingCondList ::= SEQUENCE (SIZE(1..maxnoofConditionInfo)) OF MatchingCondItem

MatchingCondItem ::= SEQUENCE { matchingCondChoice MatchingCondItem-Choice,

logicalOR LogicalOR OPTIONAL,

...

}

MatchingCondItem-Choice ::= CHOICE{ measLabel MeasurementLabel, testCondInfo TestCondInfo,

...

}

MatchingUEidList ::= SEQUENCE (SIZE(1..maxnoofUEID)) OF MatchingUEidItem MatchingUEidItem ::= SEQUENCE{

ueID UEID,

...

}

MatchingUEidPerGP ::= SEQUENCE (SIZE(1..maxnoofMeasurementRecord)) OF MatchingUEidPerGP-Item

MatchingUEidPerGP-Item ::= SEQUENCE{ matchedPerGP CHOICE{

noUEmatched ENUMERATED {true, ...}, oneOrMoreUEmatched MatchingUEidList-PerGP,

...

},

...

}

MatchingUEidList-PerGP ::= SEQUENCE (SIZE(1..maxnoofUEID)) OF MatchingUEidItem-PerGP

MatchingUEidItem-PerGP ::= SEQUENCE{ ueID UEID,

...

}

MatchingUeCondPerSubList ::= SEQUENCE (SIZE(1..maxnoofConditionInfoPerSub)) OF MatchingUeCondPerSubItem

MatchingUeCondPerSubItem ::= SEQUENCE{ testCondInfo TestCondInfo,

...,

logicalOR LogicalOR OPTIONAL

}

MatchingUEidPerSubList ::= SEQUENCE (SIZE(2..maxnoofUEIDPerSub)) OF MatchingUEidPerSubItem

MatchingUEidPerSubItem ::= SEQUENCE{ ueID UEID,

...

}

MultiReportActionDefinitionList ::= SEQUENCE (SIZE(1..maxnoofJobs)) OF MultiReportActionDefinitionItem

MultiReportActionDefinitionItem ::=SEQUENCE { jobID JobID,

jobActionDefinition E2SM-KPM-ActionDefinition OPTIONAL, jobCellGlobalID CGI OPTIONAL,

jobUEID UEID OPTIONAL,

jobMatchingUEidList MatchingUEidPerSubList OPTIONAL,

...

}

MultiReportIndicationMessageList ::= SEQUENCE (SIZE(1..maxnoofJobs)) OF MultiReportIndicationMessageItem

MultiReportIndicationMessageItem ::=SEQUENCE { jobID JobID,

indicationMessage E2SM-KPM-IndicationMessage,

...

}

UEMeasurementReportList ::= SEQUENCE (SIZE(1..maxnoofUEMeasReport)) OF UEMeasurementReportItem UEMeasurementReportItem ::= SEQUENCE{

ueID UEID,

measReport E2SM-KPM-IndicationMessage-Format1,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- E2SM-KPM Service Model IEs

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- Event Trigger Definition OCTET STRING contents

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* E2SM-KPM-EventTriggerDefinition ::= SEQUENCE{

eventDefinition-formats CHOICE{

eventDefinition-Format1 E2SM-KPM-EventTriggerDefinition-Format1,

...

},

...

}

E2SM-KPM-EventTriggerDefinition-Format1 ::= SEQUENCE{ reportingPeriod INTEGER (1.. 4294967295),

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- Action Definition OCTET STRING contents

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

E2SM-KPM-ActionDefinition ::= SEQUENCE{

ric-Style-Type RIC-Style-Type, actionDefinition-formats CHOICE{

actionDefinition-Format1 E2SM-KPM-ActionDefinition-Format1, actionDefinition-Format2 E2SM-KPM-ActionDefinition-Format2, actionDefinition-Format3 E2SM-KPM-ActionDefinition-Format3,

...,

actionDefinition-Format4 E2SM-KPM-ActionDefinition-Format4, actionDefinition-Format5 E2SM-KPM-ActionDefinition-Format5, actionDefinition-Format255 E2SM-KPM-ActionDefinition-Format255

},

...

}

E2SM-KPM-ActionDefinition-Format1 ::= SEQUENCE { measInfoList MeasurementInfoList,

granulPeriod GranularityPeriod,

cellGlobalID CGI OPTIONAL,

...,

distMeasBinRangeInfo DistMeasurementBinRangeList OPTIONAL

}

E2SM-KPM-ActionDefinition-Format2 ::= SEQUENCE { ueID UEID,

subscriptInfo E2SM-KPM-ActionDefinition-Format1,

...

}

E2SM-KPM-ActionDefinition-Format3 ::= SEQUENCE { measCondList MeasurementCondList,

granulPeriod GranularityPeriod,

cellGlobalID CGI OPTIONAL,

...

}

E2SM-KPM-ActionDefinition-Format4 ::= SEQUENCE { matchingUeCondList MatchingUeCondPerSubList, subscriptionInfo E2SM-KPM-ActionDefinition-Format1,

...

}

E2SM-KPM-ActionDefinition-Format5 ::= SEQUENCE { matchingUEidList MatchingUEidPerSubList, subscriptionInfo E2SM-KPM-ActionDefinition-Format1,

...

}

E2SM-KPM-ActionDefinition-Format255 ::= SEQUENCE { multiReportActionDefinitionList MultiReportActionDefinitionList, multiReportApproach MultiReportApproach, commonActionDefinition E2SM-KPM-ActionDefinition OPTIONAL,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- Indication Header OCTET STRING contents

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

E2SM-KPM-IndicationHeader ::= SEQUENCE{ indicationHeader-formats CHOICE{

indicationHeader-Format1 E2SM-KPM-IndicationHeader-Format1,

...

},

...

}

E2SM-KPM-IndicationHeader-Format1 ::= SEQUENCE{ colletStartTime TimeStamp,

fileFormatversion PrintableString (SIZE (0..15), ...) OPTIONAL, senderName PrintableString (SIZE (0..400), ...) OPTIONAL,

senderType PrintableString (SIZE (0..8), ...) OPTIONAL,

vendorName PrintableString (SIZE (0..32), ...) OPTIONAL,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- Indication Message OCTET STRING contents

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* E2SM-KPM-IndicationMessage ::= SEQUENCE{

indicationMessage-formats CHOICE{

indicationMessage-Format1 E2SM-KPM-IndicationMessage-Format1, indicationMessage-Format2 E2SM-KPM-IndicationMessage-Format2,

...,

indicationMessage-Format3 E2SM-KPM-IndicationMessage-Format3, indicationMessage-Format255 E2SM-KPM-IndicationMessage-Format255

},

...,

jobID JobID OPTIONAL

}

E2SM-KPM-IndicationMessage-Format1 ::= SEQUENCE { measData MeasurementData,

measInfoList MeasurementInfoList OPTIONAL,

granulPeriod GranularityPeriod OPTIONAL,

...

}

E2SM-KPM-IndicationMessage-Format2 ::= SEQUENCE { measData MeasurementData,

measCondUEidList MeasurementCondUEidList,

granulPeriod GranularityPeriod OPTIONAL,

...

}

E2SM-KPM-IndicationMessage-Format3 ::= SEQUENCE { ueMeasReportList UEMeasurementReportList,

...

}

E2SM-KPM-IndicationMessage-Format255 ::= SEQUENCE { multiReportIndicationMessageList MultiReportIndicationMessageList,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- RAN Function Definition OCTET STRING contents

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

E2SM-KPM-RANfunction-Description ::= SEQUENCE{ ranFunction-Name RANfunction-Name,

ric-EventTriggerStyle-List SEQUENCE (SIZE(1..maxnoofRICStyles)) OF RIC-EventTriggerStyle-Item OPTIONAL, ric-ReportStyle-List SEQUENCE (SIZE(1..maxnoofRICStyles)) OF RIC-ReportStyle-Item OPTIONAL,

...,

ric-IntegratedReportStyle-List SEQUENCE (SIZE(1..maxnoofRICStyles)) OF RIC-IntegratedReportStyle-Item OPTIONAL

}

RIC-EventTriggerStyle-Item ::= SEQUENCE{

ric-EventTriggerStyle-Type RIC-Style-Type, ric-EventTriggerStyle-Name RIC-Style-Name, ric-EventTriggerFormat-Type RIC-Format-Type,

...

}

RIC-ReportStyle-Item ::= SEQUENCE{

ric-ReportStyle-Type RIC-Style-Type,

ric-ReportStyle-Name RIC-Style-Name,

ric-ActionFormat-Type RIC-Format-Type,

measInfo-Action-List MeasurementInfo-Action-List, ric-IndicationHeaderFormat-Type RIC-Format-Type,

ric-IndicationMessageFormat-Type RIC-Format-Type,

...

}

RIC-IntegratedReportStyle-Item ::= SEQUENCE{

ric-ReportStyle-Type RIC-Style-Type,

ric-ReportStyle-Name RIC-Style-Name,

ric-ActionFormat-Type RIC-Format-Type, ric-IndicationHeaderFormat-Type RIC-Format-Type, ric-IndicationMessageFormat-Type RIC-Format-Type,

|  |  |  |  |
| --- | --- | --- | --- |
|  | ric-FundamentalLevelReportStyle-List  ric-SingleReportingApproachSupport | SEQUENCE (SIZE(1..maxnoofRICStyles))  ENUMERATED{true,...} OPTIONAL, | |
| } | ric-MultipleReportingApproachSupport ric-CommonActionDefinitionSupport  ... | ENUMERATED{true,...} ENUMERATED{true,...} | OPTIONAL, OPTIONAL, |
| RIC-FundamentalLevelReportStyle-Item ::= SEQUENCE{ | | | |
|  | ric-ReportStyle-Type  jobSpecificActionDefinitionSupport | RIC-Style-Type,  ENUMERATED{true,...} | OPTIONAL, |
| } | jobSpecificCellGlobalIDSupport jobSpecificUEIDSupport jobSpecificMatchingUEidListSupport  ... | ENUMERATED{true,...} ENUMERATED{true,...} ENUMERATED{true,...} | OPTIONAL, OPTIONAL, OPTIONAL, |

OF RIC-FundamentalLevelReportStyle-Item OPTIONAL,

END

-- ASN1STOP

# Handling of Unknown, Unforeseen and Erroneous Protocol Data

clause 10 of TS 36.413 [13] is applicable for the purposes of the present document.

# Annex A (normative or informative):

Further information on RAN Function Network KPM Monitor

A.1 Background Information

The RAN function "Key Performance Measurement" is used to provide RIC Service exposure of the performance measurement logical function of the E2 Nodes. Based on the O-RAN deployment architecture, available measurements could be different. Figure A.1-1 shows the target deployment architecture for E2SM-KPM.

![](../assets/images/800707586bd8.png)Figure A.1-1 E2SM-KPM Architecture

For each logical function the E2 Node shall use the RAN Function Definition IE to declare the list of available measurements and a set of supported RIC Services (**REPORT**).

Annex (informative): Change History

|  |  |  |
| --- | --- | --- |
| **Date** | **Revision** | **Description** |
| 2020.01.29 | v01.00 | Initial version |
| 2020.12.16 | 02.00.00 | Adopt INTEL.AO's CR-0001 and CR-0002 for E2SM-KPM with cleaning up old texts and ASN.1 in v01.00 |
| 2021.02.24 | 02.00.01 | Adopt ATT.AO's CR-0001 for UE-level measurements subscription and retrieval |
| 2021.03.03 | 02.00.02 | Adopt CSP.AO's CR-0001 for Incomplete Flag |
| 2021.03.30 | 02.00.03 | Adopt INTEL's CR-0003 for clean-up |
| 2021.06.09 | 02.00.04 | Adopt (1) INT's CR-0006; (2) INT's CR-0008; (3) RSYS's CR-0004 |
| 2021.07.09 | 02.00.05 | Adopt (1) INT's CR-0009; (2) NEU.AO's CR-0001 |
| 2021.08.10 | 02.00 | New features: UE-level measurements subscription and retrieval, Incomplete Flag, clean up from v01. |
| 2021.10.13 | 02.01.00 | Adopt (1) INTEL.AO's CR-0011; (2) RSYS.AO's CR-0002 |
| 2021.10.27 | 02.01.01 | Adopt KDDI's CR-0001. |
| 2021.11.22 | 02.01.02 | Editorial Updates based on review comments during WG3 approval process |
| 2022.02.07 | 02.01 | New features: Add Cell Global ID description new Report Service Styles 4 and 5 introduced for flexible reporting of UE level measurements, enhancing conversioin rule  from measuments parameter defined in 3GPP and O-RAN, and added new O-RAN specific parameters |
| 2022.03.23 | 02.02.00 | Adopt (1) TIM.AO's CR-0003; (2) CMCC.AO's CR-0001; (3) CMCC.AO's CR-0002 |
| 2022.04.14 | 02.02 | New features: Add new parameters for better supporting UE grouping with Format 3, add new test condition types 5QI and QCI for Report Service Style Type 3 and 4, and add S- NSSAI for new test condition. |
| 2022.05.11 | 02.02.01 | Adopt (1) INT's CR-0015; (2) INT's CR-0016; (3) INT's CR-0017 |
| 2022.07.20 | 02.02.02 | Adopt INT's CR-0022 |
| 2022.07.24 | 02.02.03 | Aligned to new template |
| 2022.08.09 | 02.03 | New features: Add new Report Service Styles 4 and 5 introduced for flexible reporting of UE level measurements, Enhancing conversion rule from measurements parameter defined in 3GPP and O-RAN adding new O-RAN specific parameters clarifying CGI handling in Action Definition Formats, UL-RSRP and CQI for signal quality based UE grouping in Format 3, extend new test condition types for Report Service Style Type 3 and 4, adding Slice ID measurement label, Adding "Logical OR" into UE filtering  conditions, Indication Message Format 2 for REPORT Style 3, bin range definition of distribution type measurements, Support mMIMO non-GoB measurements |
| 2022.11.09 | 02.03.01 | Adopt (1) INT's CR-0024; (2) INT's CR-0027 |
| 2022.11.20 | 02.03.02 | Editorial changes reflecting comments received during WG3 approval process |
| 2022.11.25 | 03.00 | New features: Correction for E2SM-KPM Timestamp, Correction for mMIMO Non-GoB BF optimization |
| 2023.06.30 | 03.00.01 | Adopt (1) NOK.AO's CR-0002; (2) MAV.AO's CR-0013 |
| 2023.07.26 | 03.00.02 | Editorial changes reflecting comments received during WG3 approval process |
| 2023.07.26 | 03.00.03 | Further Editorial changes reflecting comments received during WG3 approval process |
| 2023.07.29 | 04.00 | New features: Add support mMIMO bMRO measurements and reporting, DL total number of scheduled time slots |
| 2024.03.05 | 04.00.01 | Adopt (1) SAM.AO's CR-0002; (2) NOK's CR-0003; (3) SAM's CR-0004 (4)SAM's CR- 0006 (5) NOK.AO CR-0004 (6) SAM's CR-0007 |
| 2024.03.22 | 04.00.02 | Adopt SAM's CR-0003 |
| 2024.03.27 | 04.00.03 | Editorial changes reflecting comments received during WG3 approval process |
| 2024.04.08 | 05.00 | New feature: Add Multi-Cell support |
| 2024.11.21 | 05.00.01 | Adopt (1) SAM's CR-0006; (2) SAM's CR-0009; (3) NEC's CR-033; (4) LGE's CR-0001;  (5) SAM.AO's CR-0010 |
| 2024.11.26 | 05.00.02 | Editorial changes reflecting comments received during WG3 review process |
| 2024.11.27 | 05.00.03 | Editorial changes reflecting a comment received during WG3 review process |
| 2024.12.06 | 06.00 | New feature: Add DL and UL Transmitted Data Volume for MAC SDU |
---

- View in [Reader Mode](https://simewu.com/spec-reader/pages/09-WG3/O-RAN.WG3.TS.E2SM-KPM-R004-v06.00.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG3.TS.E2SM-KPM-R004-v06.00.docx).
