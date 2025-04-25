---
title: O-RAN.WG10.TS.O1PMeas-R004-v02.00.docx.md
author: O-RAN Alliance, WG10
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG10.TS.O1PMeas-R004-v02.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG10.TS.O1PMeas-R004-v02.00.docx).

---

* toc
{:toc}

---

![webwxgetmsgimg (7).jpeg]({{site.baseurl}}/assets/images/9c69df009b87.jpg)O-RAN.WG10.TS.O1PMeas-R004-v02.00

*Technical Specification*

**O-RAN Work Group 10 (OAM for O-RAN) O-RAN O1 Performance Measurements Specification**

Copyright (C) 2025 by the O-RAN ALLIANCE e.V.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany Register of Associations, Bonn VR 11238, VAT ID DE321720189

# Contents

Foreword 4

Modal verbs terminology 4

1. Scope 5
2. References 5
   1. Normative references 5
   2. Informative references 5
3. Definition of terms, symbols and abbreviations 6
   1. Terms 6
   2. Symbols 6
   3. Abbreviations 6
4. Requirements 7
   1. General Requirements 7
5. Performance Measurement definition 7
   1. 5G Performance Measurements 7

Annex A (informative): O-RAN O1 defined Performance Measurements 9

* 1. Overview 9
  2. O-CU-CP Performance measurements 9
     1. NR X2-C Interface performance measurements (O-CU) 9
     2. NR Xn-C Interface performance measurements (O-CU) 10
     3. NR F1-C Interface performance measurements (O-CU-CP) 11
     4. Number of UE Contexts for EN-DC 12
     5. Number of UE Contexts for SA 19
     6. Monitoring of procedure for EN-DC 30
     7. Monitoring of RRC Connection for EN-DC 33
     8. Monitoring of RRC Connection for SA 36
     9. Monitoring of Establishment calls for SA 43
     10. Monitoring of PDU session connection for SA 55
     11. Monitoring of mobility for SA 61
     12. Monitoring of RRC re-establishment for SA 66
     13. Monitoring of connection status for SA 71
     14. Monitoring of procedure for NR-DC 73
     15. Monitoring of CA for SA 79
  3. O-CU-UP Performance measurements 82
     1. NR PDCP performance measurements (Type A) 82
     2. NR PDCP performance measurements (Type B) 88
     3. NR S1-U Interface Performance Measurements 94
     4. NR NG-U Interface Performance Measurements 96
     5. NR X2-U Interface performance measurements (O-CU) 97
     6. NR Xn-U Interface performance measurements (O-CU) 98
  4. O-DU Performance measurements 99
     1. NR F1 Interface performance measurements 99
     2. NR RLC performance measurements 106
     3. NR MAC performance measurements 116
     4. NR UL HARQ performance measurements 118
     5. NR DL HARQ performance measurements 122
     6. NR UL Signal Quality Level performance measurements 125
     7. NR DL Signal Quality Level performance measurements 135
     8. NR Beamforming performance measurements 142
     9. NR RACH Usage performance measurements 143
     10. NR Timing Advance performance measurements 147
     11. NR Cell Utilization performance measurements (Type A) 148
     12. NR Cell Utilization performance measurements (Type B) 170
     13. O-RU Performance measurements measured at O-DU 174
     14. O-RU Performance measurements measured at O-RU 183

Annex B (informative): 3GPP TS 32.404 template usage for O-RAN O1 defined Performance Measurements

. 183

Annex (informative): Change History 185

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

# Scope

The present document specifies the O-RAN Performance Measurements (PMeas) for 5G networks that may be supported on the O1 Interface [3].

# References

## Normative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies. In the case of a reference to a 3GPP document (including a GSM document), a non- specific reference implicitly refers to the latest version of that document in 3GPP Release 18.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following referenced documents are necessary for the application of the present document.

1. 3GPP TS 32.404: Telecommunication management; Performance Management (PM); Performance Measurements; Definition and template
2. 3GPP TS 28.552: Management and orchestration; 5G performance measurements
3. O-RAN TS O-RAN.WG10.O1-Interface: O-RAN O1 Interface Specification
4. O-RAN TS ORAN-WG4.MP.0: Management Plane Specification
5. 3GPP TS 38.401: NG-RAN; Architecture description
6. 3GPP TS 38.323: NR; Packet Data Convergence Protocol (PDCP) specification
7. O-RAN TS O-RAN.WG5.O-DU-O1, O1 Interface specification for O-DU
8. O-RAN TS O-RAN.WG5.O-CU-O1, O1 Interface specification for O-CU-UP and O-CU-CP
9. O-RAN TS O-RAN.WG10.NRM, O-RAN O1 Network Resource Model Specification

## Informative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies. In the case of a reference to a 3GPP document (including a GSM document), a non- specific reference implicitly refers to the latest version of that document in 3GPP Release 18.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following referenced documents are not necessary for the application of the present document, but they assist the user with regard to a particular subject area.

[i.1] 3GPP TR 21.905: Vocabulary for 3GPP Specifications

[i.2] O-RAN TS O-RAN.WG4.CUS: O-RAN Control, User and Synchronization Plane

[i.3] 3GPP TS 36.413: Evolved Universal Terrestrial Radio Access Network (E-UTRAN); S1 Application Protocol (S1AP)

[i.4] 3GPP TS 36.423: Evolved Universal Terrestrial Radio Access Network (E-UTRAN); X2 Application Protocol (X2AP)

[i.5] 3GPP TS 38.413: NG-RAN; NG Application Protocol (NGAP) [i.6] 3GPP TS 38.473: NG-RAN; F1 Application Protocol (F1AP)

# Definition of terms, symbols and abbreviations

## Terms

For the purposes of the present document, the terms given in 3GPP TR 21.905 [i.1] and the following apply. A term defined in the present document takes precedence over the definition of the same term, if any, in 3GPP TR 21.905 [i.1].

## Symbols

For the purposes of the present document, the symbols given in 3GPP TR 21.905 [i.1] and the following apply. A symbol defined in the present document takes precedence over the definition of the same symbol, if any, in 3GPP TR 21.905 [i.1].

## Abbreviations

For the purposes of the present document, the abbreviations given in 3GPP TR 21.905 [i.1] and the following apply. An abbreviation defined in the present document takes precedence over the definition of the same abbreviation, if any, in 3GPP TR 21.905 [i.1].

PMeas Performance Measurements

CC Cumulative counter

SI Status Inspection

# Requirements

## General Requirements

The general requirements in Table 4.1-1 apply to the definition of O-RAN performance measurements (including the template to be used):

**Table 4.1-1 - General Requirements for O-RAN performance measurement definition**

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Requirement label** | **Description** | **Motivation** |
| REQ-PMeas-MC-1 | O-RAN O1 performance measurements shall be defined using the template specified in 3GPP TS 32.404 [1]. | Identify the template to be used  for the definition of O1 performance measurements |
| REQ-PMeas-MC-2 | The Measurement Name of an O-RAN defined measurement  shall begin with "OR" prefix to indicate that O-RAN is the source of the measurement definition. |  |
| REQ-PMeas-MC-3 | The short form of the Measurement Name in the Measurement Type for an O-RAN defined measurement shall begin with "OR." to indicate that O-RAN is the source of the measurement  definition. |  |
| REQ-PMeas-MC-4 | In case O-RAN extends the definition of an existing 3GPP measurement, a new O-RAN measurement shall be defined. 3GPP Measurement Name should be part of the newly defined O-RAN Measurement Name. 3GPP measurement definition shall be referred in the newly defined O-RAN measurement  definition, when possible. |  |
| REQ-PMeas-MC-5 | When an O-RAN measurement is defined in 3GPP, the O-RAN measurement shall be deprecated.  Reference to the new 3GPP measurement shall be added. |  |
| REQ-PMeas-MC-6 | When defining an O-RAN performance measurement with filtering, the 3GPP filtering mechanism defined in 3GPP TS  28.552 [2], clause 4.2 shall be used. |  |

</div>

# Performance Measurement definition

## 5G Performance Measurements

The 3GPP defined 5G performance measurements for gNB are in 3GPP TS 28.552 [2] clause 5.1.

The O-RAN defined measurements are defined in Annex A of the present document. An annex subclause is available per O- RAN NF as follows:

* + - Annex A.2 per O-CU-CP
    - Annex A.3 per O-CU-UP
    - Annex A.4 per O-DU

NOTE: The following area of improvements have been identified in the context of O-RAN O1 performance measurements that needs to be further analysed:

1. *PmGroup* definition and harmonization with 3GPP sub-counters. 3GPP TS 28.552 [2] has already defined sub-counters per specific criteria (e.g., QoS, SNSSAI). If *PmGroup* is required, an harmonization of the performance groups between

O-DU, O-CU-CP, and O-CU-UP NFs should be also considered. *PmGroup* stage 2, stage 3 and value ranges (e.g value 0 and valid subrange per id types) have to be specified and properly referenced from this document.

NOTE: point 8 below has to be considered also in the context of the PmGroup definition and harmonization.

1. Void
2. O-RAN O1 performance counters definitions where both overall counter and optional sub-counters per specific targets are defined should be aligned with similar 3GPP performance measurement definitions (see 3GPP TS 28.552 [2], clause 5.1.3.4.2).
3. O-RAN O1 Measurement result review to ensure valid values are used according to 3GPP TS 32.404 [1] and should be reviewed (e.g., kilobyte instead of an integer value representing the number of measured bits/bytes).
4. Void
5. Validate O-RAN defined sub-counter name for existing 3GPP counter, in line with existing O1 Performance measurement requirements of this document.
6. Improve "Description" subclause with information about "PmGroup" & "CuCountGroup" based on information in "Condition" subclause.
7. Review the naming rule of performance measurements in case of subcounters. When a performance measurement has multiple subcounters, currently it is hard to distinguish the subcounters. It is proposed that O-RAN O1 performance measurements reuse filter naming rules improvements introduced in 3GPP TS 28.552 [2], clause 4.2.2.

# Annex A (informative): O-RAN O1 defined Performance Measurements

## Overview

The following clauses define the O-RAN O1 defined performance measurements per O-RAN NF. ANNEX A.2 O-CU-CP

##### ANNEX A.3 O-CU-UP ANNEX A.4 O-DU

NOTE: The usage of CuCountGroup and PMCountGroup in following clauses is based on WG5 models as specified in [7], [8]. This may be subject to change following completion of O1 consolidation activities and new WG10 models as specified in O1 NRM [9].

## O-CU-CP Performance measurements

### NR X2-C Interface performance measurements (O-CU)

#### Transmitted X2-C messages

1. This counter provides the number of the transmitted X2-C messages per signal type that is non UE-associated or UE- associated signaling 3GPP TS 38.401 [5].

##### CC

1. Measurement subcounter is incremented by 1 whenever X2 C-plane message is transmitted when the signal type of the X2 C-plane message is group of *Signaltype*.
2. Integer (32)
3. OR.X2.TxX2CMesg.*Signaltype* where *Signaltype* is signal type: 0: non UE-associated

1: UE associated

1. GNBCUCPFunction
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Received X2-C messages

1. This counter provides the number of the received X2-C messages per signal type that is non UE-associated or UE- associated signaling 3GPP TS 38.401 [5].

##### CC

1. Measurement subcounter is incremented by 1 whenever X2 C-plane message is received when the signal type of the X2 C-plane message is group of *Signaltype*.
2. Integer (32)
3. OR.X2.RxX2CMesg.*Signaltype* where *Signaltype* is signal type: 0: non UE-associated

1: UE associated

1. GNBCUCPFunction
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

### NR Xn-C Interface performance measurements (O-CU)

#### Transmitted Xn-C messages

1. This counter provides the number of the transmitted Xn-C messages per signal type that is non UE-associated or UE- associated signaling 3GPP TS 38.401 [5].

##### CC

1. Measurement subcounter is incremented by 1 whenever Xn C-plane message is transmitted when the signal type of Xn C-plane message is group of *Signaltype*.
2. Integer (32)
3. OR.Xn.TxXnCMesg.*Signaltype* where *Signaltype* is signal type: 0: non UE-associated

1: UE associated

1. GNBCUCPFunction
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Received Xn-C messages

1. This counter provides the number of the received Xn-C messages per signal type that is non UE-associated or UE- associated signaling 3GPP TS 38.401 [5].

##### CC

1. Measurement subcounter is incremented by 1 whenever Xn C-plane message is received when the signal type of the Xn C-plane message is group of *Signaltype*.
2. Integer (32)
3. OR.Xn.RxXnCMesg.*Signaltype* where *Signaltype* is signal type: 0: non UE-associated

1: UE associated

1. GNBCUCPFunction
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

### NR F1-C Interface performance measurements (O-CU-CP)

#### Transmitted F1-C messages

1. This counter provides the number of the transmitted F1-C messages per signal type that is non UE-associated or UE- associated signaling 3GPP TS 38.401 [5].

##### CC

1. Measurement subcounter is incremented by 1 whenever F1 C-plane message is transmitted when the signal type of the F1 C-plane message is group of *Signaltype*.
2. Integer (32)
3. OR.F1.TxF1CMesg.*Signaltype* where *Signaltype* is signal type: 0: non UE-associated

1: UE associated

1. GNBCUCPFunction
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Received F1-C messages

1. This counter provides the number of the received F1-C messages per signal type that is non UE-associated or UE- associated signaling 3GPP TS 38.401 [5].

##### CC

1. Measurement subcounter is incremented by 1 whenever F1 C-plane message is received when the signal type of the F1 C-plane message is group of *Signaltype*.
2. Integer (32)
3. OR.F1.RxF1CMesg.*Signaltype* where *Signaltype* is signal type: 0: non UE-associated

1: UE associated

1. GNBCUCPFunction
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

### Number of UE Contexts for EN-DC

#### Max SN terminated split bearer UE Contexts

1. This counter provides the maximum number of UE Contexts that are configured SN terminated split bearer.

##### SI

1. Measurement subcounter is the maximum number of x. It is assigned with period of 100ms by the volume x, if x is bigger than previously counted volume.

x is the number of the UE Context that are configured as SN terminated split bearer. x is acquired as an instantaneous value at every 100ms.

* + the triggers of addition
    - received X2-AP: SgNB Reconfiguration Complete (to SN terminated split bearer)
    - received X2-AP: SgNB Modification Confirm (Intra/Inter DU PSCell change using SRB1 (for target cell))
    - received RRC: RRC Reconfiguration Complete (Intra/Inter DU PSCell change using SRB3 (for target cell))
  + the triggers of subtraction
    - received X2-AP: SgNB Reconfiguration Complete (to SN terminated MCG bearer)
    - received X2-AP: SgNB Modification Confirm (Intra/Inter DU PSCell change using SRB1 (for source cell))
    - received F1-AP: UE Context Release Complete (Intra/Inter DU PSCell change using SRB3 (for source cell))
    - received X2-AP: UE Context Release

1. Integer number (U32)
2. OR.UEENDC.MaxSnSplitBearer
3. NRCellCU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Max SN terminated MCG bearer UE Contexts

1. This counter provides the maximum number of UE Contexts that are configured SN terminated MCG bearer.

##### SI

1. Measurement subcounter is the maximum number of x. It is assigned with period of 100ms by the volume x, if x is bigger than previously counted volume.

x is the number of the UE Contexts that are configured as SN terminated MCG bearer. x is acquired as an instantaneous value at every 100ms.

* + the triggers of addition
    - received X2-AP: SgNB Reconfiguration Complete (to SN terminated MCG bearer)
    - received X2-AP: SgNB Reconfiguration Confirm (to SN terminated MCG bearer)
  + the triggers of subtraction
  + received X2-AP: SgNB Reconfiguration Complete (to SN terminated split bearer)
  + received X2-AP: UE Context Release

1. Integer number (U32)
2. OR.UEENDC.MaxSnMcgBearer
3. GNBCUCPFunction
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Average SN terminated split bearer UE Contexts

1. This counter provides the average number of UE Contexts that are configured SN terminated split bearer.

##### SI

1. Measurement subcounter is x/y.

x is incremented by the number of UE Contexts that are configured SN terminated split bearer. This counter obtains the number of the UE Contexts every 100ms.

y is calculated as measurement period divided by 100ms.

* + the triggers of addition
    - received X2-AP: SgNB Reconfiguration Complete (to SN terminated split bearer)
    - received X2-AP: SgNB Modification Confirm (Intra/Inter DU PSCell change using SRB1 (for target cell))
    - received RRC: RRC Reconfiguration Complete (Intra/Inter DU PSCell change using SRB3 (for target cell))
  + the triggers of subtraction
    - received X2-AP: SgNB Reconfiguration Complete (to SN terminated MCG bearer)
    - received X2-AP: SgNB Modification Confirm (Intra/Inter DU PSCell change using SRB1 (for source cell))
    - received F1-AP: UE Context Release Complete (Intra/Inter DU PSCell change using SRB3 (for source cell))
    - received X2-AP: UE Context Release

1. Integer number (U32)
2. OR.UEENDC.AveSnSplitBearer
3. NRCellCU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Average SN terminated MCG bearer UE Contexts

1. This counter provides the average number of UE Contexts that are configured SN terminated MCG bearer that are already setup.

##### SI

1. Measurement subcounter is x/y.

x is incremented by the number of UE Contexts that are configured SN terminated MCG bearer. This counter obtains the number of the UE Contexts every 100ms.

y is calculated as measurement period divided by 100ms.

* + the triggers of addition
    - received X2-AP: SgNB Reconfiguration Complete (to SN terminated MCG bearer)
    - received X2-AP: SgNB Reconfiguration Confirm (to SN terminated MCG bearer)
  + the triggers of subtraction
    - received X2-AP: SgNB Reconfiguration Complete (to SN terminated split bearer)
    - received X2-AP: UE Context Release

1. Integer number (U32)
2. OR.UEENDC.AveSnMcgBearer
3. GNBCUCPFunction
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Total DL CA UE Contexts PSCell (100ms)

1. This counter provides the total number of UE Contexts that are set of DL CA as PSCell in units of NR Cell.

##### CC

1. Measurement subcounter is the total number of x by the measurement period.

x is the number of the UE Contexts using this cell as PSCell per the number of CC configured for DL CA in unit of NR Cell group as subcounter.*Ccnum* by every 100ms.

* + the triggers of addition
    - received X2-AP: SgNB Reconfiguration Complete (SCell addition)
    - received RRC: RRC Reconfiguration Complete (SCell addition/change using SRB3)
    - received X2-AP: SgNB Modification Confirm (SCell addition/change)
  + the triggers of subtraction
    - received X2-AP: SgNB Reconfiguration Complete (SCell release)
    - received RRC: RRC Reconfiguration Complete (SCell release/change using SRB3)
    - received X2-AP: SgNB Modification Confirm (SCell release/change)
    - received X2-AP: UE Context Release

1. integer(U32)
2. OR.UEENDC.TotalDlCaUePscell100ms.*Ccnum* where *Ccnum* is the number of CC: 0: #0CC (number of SCell excluding PSCell in the cell group)

1: #1CC (number of SCell excluding PSCell in the cell group)

...

7: #7CC (number of SCell excluding PSCell in the cell group)

1. NRCellCU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Total DL CA UE Contexts PSCell (10s)

1. This counter provides the total number of UE Contexts that are set of DL CA as PSCell in units of NR Cell.

##### CC

1. Measurement subcounter is the total number of x by the measurement period.

x is the number of the UE Contexts using this cell as PSCell per the number of CC configured for DL CA in unit of NR Cell group as subcounter.*Ccnum* by every 10s.

* + the triggers of addition
    - received X2-AP: SgNB Reconfiguration Complete (SCell addition)
    - received RRC: RRC Reconfiguration Complete (SCell addition/change using SRB3)
    - received X2-AP: SgNB Modification Confirm (SCell addition/change)
  + the triggers of subtraction
    - received X2-AP: SgNB Reconfiguration Complete (SCell release)
    - received F1-AP: UE Context Release Complete (SCell release/change using SRB3)
    - received X2-AP: SgNB Modification Confirm (SCell release/change)
    - received X2-AP: UE Context Release

1. integer(U32)
2. OR.UEENDC.TotalDlCaUePscell10s.*Ccnum* where *Ccnum* is the number of CC: 0: #0CC (number of SCell excluding PSCell in the cell group)

1: #1CC (number of SCell excluding PSCell in the cell group)

...

7: #7CC (number of SCell excluding PSCell in the cell group)

1. NRCellCU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Total DL CA UE Contexts SCell (100ms)

1. This counter provides the total number of UE Contexts that are set of DL CA as SCell in units of NR Cell.

##### CC

1. Measurement subcounter is the total number of x by the measurement period.

x is the number of the UE Contexts using this cell as SCell per the number of CC configured for DL CA in unit of NR Cell group as subcounter*.Ccnum* by every 100ms.

* + the triggers of addition
    - received X2-AP: SgNB Reconfiguration Complete (SCell addition)
    - received RRC: RRC Reconfiguration Complete (SCell addition/change using SRB3)
    - received X2-AP: SgNB Modification Confirm (SCell addition/change)
  + the triggers of subtraction
    - received X2-AP: SgNB Reconfiguration Complete (SCell release)
    - received F1-AP: UE Context Release Complete (SCell release/change using SRB3)
    - received X2-AP: SgNB Modification Confirm (SCell release/change)
    - received X2-AP: UE Context Release

1. integer(U32)
2. OR.UEENDC.TotalDlCaUeScell100ms.*Ccnum* where *Ccnum* is the number of CC: 0: #1CC (number of SCell excluding PSCell in the cell group)

1: #2CC (number of SCell excluding PSCell in the cell group)

...

6: #7CC (number of SCell excluding PSCell in the cell group)

1. NRCellCU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Total DL CA UE Contexts SCell (10s)

1. This counter provides the total number of UE Contexts that are set of DL CA as SCell in units of NR Cell.

##### CC

1. Measurement subcounter is the total number of x by the measurement period.

x is the number of the UE Contexts using this cell as SCell per the number of CC configured for DL CA in unit of NR Cell group as subcounter.*Ccnum* by every 10s.

* + the triggers of addition
    - received X2-AP: SgNB Reconfiguration Complete (SCell addition)
    - received RRC: RRC Reconfiguration Complete (SCell addition/change using SRB3)
    - received X2-AP: SgNB Modification Confirm (SCell addition/change)
  + the triggers of subtraction
    - received X2-AP: SgNB Reconfiguration Complete (SCell release)
    - received F1-AP: UE Context Release Complete (SCell release/change using SRB3)
    - received X2-AP: SgNB Modification Confirm (SCell release/change)
    - received X2-AP: UE Context Release

1. integer(U32)
2. OR.UEENDC.TotalDlCaUeScell10s.*Ccnum* where *Ccnum* is the number of CC: 0: #1CC (number of SCell excluding PSCell in the cell group)

1: #2CC (number of SCell excluding PSCell in the cell group)

...

6: #7CC (number of SCell excluding PSCell in the cell group)

1. NRCellCU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Max DL CA UE Contexts PSCell (100ms)

1. This counter provides the maximum number of UE Contexts that are set of DL CA as PSCell in units of NR Cell.

##### SI

1. Measurement subcounter is the maximum number of x. It is assigned with period of 100ms by the volume x, if x is bigger than previously counted volume.

x is the number of the UE Contexts using this cell as PSCell per the number of CC configured for DL CA in unit of NR Cell group as subcounter.*Ccnum*.

The number is acquired as an instance value at every 100ms.

* + the triggers of addition
    - received X2-AP: SgNB Reconfiguration Complete (SCell downlink addition)
    - received RRC: RRC Reconfiguration Complete (SCell downlink addition/change using SRB3)
    - received X2-AP: SgNB Modification Confirm (SCell downlink addition/change)
  + the triggers of subtraction
    - received X2-AP: SgNB Reconfiguration Complete (SCell downlink release)
    - received F1-AP: UE Context Release Complete (SCell downlink release/change using SRB3)
    - received X2-AP: SgNB Modification Confirm (SCell downlink release/change)
    - received X2-AP: UE downlink Context Release

1. Each measurement is an integer value representing the number of UE Contexts.
2. OR.UEENDC.MaxDlCaUePscell100ms.*Ccnum* where *Ccnum* is the number of CC: 0: #0CC (number of SCell excluding PSCell in the cell group)

1: #1CC (number of SCell excluding PSCell in the cell group)

...

7: #7CC (number of SCell excluding PSCell in the cell group)

1. NRCellCU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Max DL CA UE Contexts PSCell (10s)

1. This counter provides the maximum number of UE Contexts that are set of DL CA as PSCell in units of NR Cell.

##### SI

1. Measurement subcounter is the maximum number of x. It is assigned with period of 10s by the volume x, if x is bigger than previously counted volume.

x is the number of the UE Contexts using this cell as PSCell per the number of CC configured for DL CA in unit of NR Cell group as subcounter.*Ccnum*.

The number is acquired as an instance value at every 10s.

* + the triggers of addition
    - received X2-AP: SgNB Reconfiguration Complete (SCell downlink addition)
    - received RRC: RRC Reconfiguration Complete (SCell downlink addition/change using SRB3)
    - received X2-AP: SgNB Modification Confirm (SCell downlink addition/change)
  + the triggers of subtraction
    - received X2-AP: SgNB Reconfiguration Complete (SCell downlink release)
    - received F1-AP: UE Context Release Complete (SCell downlink release/change using SRB3)
    - received X2-AP: SgNB Modification Confirm (SCell downlink release/change)
    - received X2-AP: UE downlink Context Release

1. Each measurement is an integer value representing the number of UE Contexts.
2. OR.UEENDC.MaxDlCaUePscell10s.*Ccnum* where *Ccnum* is the number of CC: 0: #0CC (number of SCell excluding PSCell in the cell group)

1: #1CC (number of SCell excluding PSCell in the cell group)

...

7: #7CC (number of SCell excluding PSCell in the cell group)

1. NRCellCU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Max DL CA UE Contexts SCell (100ms)

1. This counter provides the maximum number of UE Contexts that are set of DL CA as SCell in units of NR Cell.

##### SI

1. Measurement subcounter is the maximum number of x. It is assigned with period of 100ms by the volume x, if x is bigger than previously counted volume.

x is the number of the UE Contexts using this cell as SCell per the number of CC configured for DL CA in unit of NR Cell group as subcounter.*Ccnum*.

The number is acquired as an instance value at every 100ms.

* + the triggers of addition
    - received X2-AP: SgNB Reconfiguration Complete (SCell downlink addition)
    - received RRC: RRC Reconfiguration Complete (SCell downlink addition/change using SRB3)
    - received X2-AP: SgNB Modification Confirm (SCell downlink addition/change)
  + the triggers of subtraction
    - received X2-AP: SgNB Reconfiguration Complete (SCell downlink release)
    - received F1-AP: UE Context Release Complete (SCell downlink release/change using SRB3)
    - received X2-AP: SgNB Modification Confirm (SCell downlink release/change)
    - received X2-AP: UE downlink Context Release

1. Each measurement is an integer value representing the number of UE Contexts.
2. OR.UEENDC.MaxDlCaUeScell100ms.*Ccnum* where *Ccnum* is the number of CC: 0: #1CC (number of SCell excluding PSCell in the cell group)

1: #2CC (number of SCell excluding PSCell in the cell group)

...

7: #6CC (number of SCell excluding PSCell in the cell group)

1. NRCellCU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Max DL CA UE Contexts SCell (10s)

1. This counter provides the maximum number of UE Contexts that are set of DL CA as SCell in units of NR Cell.

##### SI

1. Measurement subcounter is the maximum number of x. It is assigned with period of 10s by the volume x, if x is bigger than previously counted volume.

x is the number of the UE Contexts using this cell as SCell per the number of CC configured for DL CA in unit of NR Cell group as subcounter.*Ccnum*.

The number is acquired as an instance value at every 10s.

* + the triggers of addition
    - received X2-AP: SgNB Reconfiguration Complete (SCell downlink addition)
    - received RRC: RRC Reconfiguration Complete (SCell downlink addition/change using SRB3)
    - received X2-AP: SgNB Modification Confirm (SCell downlink addition/change)
  + the triggers of subtraction
    - received X2-AP: SgNB Reconfiguration Complete (SCell downlink release)
    - received F1-AP: UE Context Release Complete (SCell downlink release/change using SRB3)
    - received X2-AP: SgNB Modification Confirm (SCell downlink release/change)
    - received X2-AP: UE downlink Context Release

1. Each measurement is an integer value representing the number of UE Contexts.
2. OR.UEENDC.MaxDlCaUeScell10s.*Ccnum* where *Ccnum* is the number of CC: 0: #1CC (number of SCell excluding PSCell in the cell group)

1: #2CC (number of SCell excluding PSCell in the cell group)

...

7: #6CC (number of SCell excluding PSCell in the cell group)

1. NRCellCU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

### Number of UE Contexts for SA

#### Total RRC Connected UE Contexts

1. This counter provides the total number of the RRC connected UE Contexts in PCell.

##### CC

1. Measurement subcounter is the total number of x by the measurement period. x is the number of the RRC connected UE Contexts by every 10s.
   * the triggers of addition
     + received RRC: RRC Setup Complete
     + received RRC: RRC Reconfiguration Complete (Inter RAT HO to NR, Inter gNB-CU HO, Intra gNB-CU Inter gNB-DU HO, Intra-DU Inter Cell HO, RRC Connection Re-establishment (Intra gNB-CU Inter gNB-DU), RRC Connection Re-establishment (Intra gNB-DU Inter Cell))
     + received RRC: RRC Resume Complete (RRC inactive to RRC Connected)
   * the triggers of subtraction
     + received Xn-AP: UE Context Release (Inter gNB-CU HO, RRC Connection Re-establishment (Inter gNB-CU))
     + received NG-AP: UE Context Release Command (Inter-RAT HO to LTE, UE Context Release including EPS fallback)
     + received RRC: RRC Reconfiguration Complete (Intra gNB-CU Inter gNB-DU HO, Intra gNB-DU Inter-Cell HO, RRC Connection Re-establishment (Intra gNB-DU Inter Cell))
     + send RRC: RRC Release (RRC Connected to RRC inactive)
2. Integer number (U32)
3. OR.UESA.TotalRrcConnectedUes
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Total UE Contexts Per QoS

1. This counter provides the total number of the UE Contexts for PCell and SCell. The measurement is optionally calculated per QoS (mapped 5QI or QCI in EN-DC).

##### CC

1. Measurement subcounter is the total number of x by the measurement period.

x is the number of the UE Contexts for PCell and SCell optionally calculated per QoS by every 10s. NOTE: multiple 5QIs can be set per UE Context, each 5QI is counted per QoS flow.

* + the triggers of addition for PCell
    - received NG-AP: Initial Context Setup Response
    - received RRC: RRC Reconfiguration Complete (Inter RAT HO to NR, Inter gNB-CU HO, Intra gNB-CU Inter gNB-DU HO, Intra-DU Inter Cell HO, RRC Connection Re-establishment (Intra gNB-CU Inter gNB-DU), RRC Connection Re-establishment (Intra gNB-DU Inter Cell))
    - received RRC: RRC Resume Complete (RRC inactive to RRC Connected)
    - send NG-AP: PDU Session Resource Setup Response (PDU Session Establishment)
    - send NG-AP: PDU Session Resource Modify Response (PDU Session Modification)
  + the triggers of subtraction for PCell
    - send RRC: RRC Release (UE Context Release, RRC Connected to RRC inactive, SN Release without keeping UE)
    - received Xn-AP: UE Context Release (Inter gNB-CU HO, RRC Connection Re-establishment (Inter gNB-CU))
    - received NG-AP: UE Context Release Command (Inter-RAT HO to LTE, Intra gNB-CU Inter gNB-DU HO, EPS fallback)
    - received RRC: RRC Reconfiguration Complete (Intra gNB-DU Inter-Cell HO, RRC Connection Re- establishment (Intra gNB-DU Inter Cell))
    - received F1-AP: UE Context Release Command (RRC Connection Re-establishment (Intra gNB-CU Inter gNB-DU))
    - send NG-AP: PDU Session Resource Release Response (PDU Session Release)
    - send NG-AP: PDU Session Resource Modify Response (PDU Session Modification)
  + the triggers of addition for SCell
    - received RRC: RRC Reconfiguration Complete (SCell addition/change)
    - received RRC: RRC Resume Complete (RRC inactive to RRC Connected with SCell addition)
  + the triggers of subtraction for SCell
    - received RRC: RRC Reconfiguration Complete (SCell release/change)
    - received Xn-AP: UE Context Release (Inter gNB-CU HO w/ Xn)
    - received NG-AP: UE Context Release Command

1. Integer number (U32)
2. The measurement name has the form OR.UESA.TotalUes.*Celltype* or OR.UESA.TotalUes.*Celltype* \_*Filter.* Where *Filter*

is QoS and represents the mapped 5QI or QCI level and where *Celltype* is the cell type:

0: PCell

1: SCell

1. NRCellCU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Total SCell Configuration UE Contexts

1. This counter provides the total number of each SCell configuration UE Contexts.

##### CC

1. Measurement subcounter is the total number of x by the measurement period. x is the number of each SCell configuration UE Contexts by every 10s.
   * the triggers of addition
     + received RRC: RRC Reconfiguration Complete (SCell addition/change)
     + received RRC: RRC Resume Complete (RRC inactive to RRC Connected with SCell addition)
   * the triggers of subtraction
     + received RRC: RRC Reconfiguration Complete (SCell release/change)
     + received Xn-AP: UE Context Release (Inter gNB-CU HO w/ Xn)
     + received NG-AP: UE Context Release Command
2. Integer number (U32)
3. OR.UESA.TotalScellConfigUes.SCell
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Total Measurement Gap UE Contexts

1. This counter provides the total number of UE Contexts which is configured with measurement gap.

##### CC

1. Measurement subcounter is the total number of x by the measurement period.

x is the number of UE Contexts which is configured measurement gap by every 10s.

* + the triggers of addition
    - received RRC: RRC Reconfiguration Complete (setup measurement gap)
  + the triggers of subtraction
    - received RRC: RRC Reconfiguration Complete (release measurement gap)

1. Integer number (U32)
2. OR.UESA.TotalMeasGapUes
3. NRCellCU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Max RRC Connected UE Contexts

1. This counter provides the maximum number of the RRC connected UE Contexts in PCell.

##### SI

1. Measurement subcounter is the maximum number of x. It is assigned with period of 10s by the volume x, if x is bigger than previously counted volume.

x is the number of the RRC connected UE Contexts in PCell. The number is acquired as an instance value at every 10s.

* + the triggers of addition
    - received RRC: RRC Setup Complete
    - received RRC: RRC Reconfiguration Complete (Inter RAT HO to NR, Inter gNB-CU HO, Intra gNB-CU Inter gNB-DU HO, Intra-DU Inter Cell HO, RRC Connection Re-establishment (Intra gNB-CU Inter gNB-DU), RRC Connection Re-establishment (Intra gNB-DU Inter Cell))
    - received RRC: RRC Resume Complete (RRC inactive to RRC Connected)
  + the triggers of subtraction
    - received Xn-AP: UE Context Release (Inter gNB-CU HO, RRC Connection Re-establishment (Inter gNB-CU))
    - received NG-AP: UE Context Release Command (Inter-RAT HO to LTE, UE Context Release including EPS fallback)
    - received RRC: RRC Reconfiguration Complete (Intra gNB-CU Inter gNB-DU HO, Intra gNB-DU Inter-Cell HO, RRC Connection Re-establishment (Intra gNB-DU Inter Cell))
    - send RRC: RRC Release (RRC Connected to RRC inactive)

1. Integer number (U32)
2. OR.UESA.MaxRrcConnectedUes
3. NRCellCU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Max UE Contexts Per QoS

1. This counter provides the maximum number of the UE Contexts for PCell and SCell. The measurement is optionally calculated per QoS (mapped 5QI or QCI in EN-DC).

##### SI

1. Measurement subcounter is the maximum number of x. It is assigned with period of 10s by the volume x, if x is bigger than previously counted volume. x is the number of the UE Contexts for PCell and SCell optionally calculated per QoS.

NOTE: multiple 5QIs can be set per UE Context, each 5QI is counted per QoS flow.

* + the triggers of addition for PCell
    - received NG-AP: Initial Context Setup Response
    - received RRC: RRC Reconfiguration Complete (Inter RAT HO to NR, Inter gNB-CU HO, Intra gNB-CU Inter gNB-DU HO, Intra-DU Inter Cell HO, RRC Connection Re-establishment (Intra gNB-CU Inter gNB-DU), RRC Connection Re-establishment (Intra gNB-DU Inter Cell))
    - received RRC: RRC Resume Complete (RRC inactive to RRC Connected)
    - send NG-AP: PDU Session Resource Setup Response (PDU Session Establishment)
    - send NG-AP: PDU Session Resource Modify Response (PDU Session Modification)
  + the triggers of subtraction for PCell
    - send RRC: RRC Release (UE Context Release, RRC Connected to RRC inactive, SN Release without keeping UE)
    - received Xn-AP: UE Context Release (Inter gNB-CU HO, RRC Connection Re-establishment (Inter gNB-CU))
    - received NG-AP: UE Context Release Command (Inter-RAT HO to LTE, Intra gNB-CU Inter gNB-DU HO, EPS fallback)
    - received RRC: RRC Reconfiguration Complete (Intra gNB-DU Inter-Cell HO, RRC Connection Re- establishment (Intra gNB-DU Inter Cell))
    - received F1-AP: UE Context Release Command (RRC Connection Re-establishment (Intra gNB-CU Inter gNB-DU))
    - send NG-AP: PDU Session Resource Release Response (PDU Session Release)
    - send NG-AP: PDU Session Resource Modify Response (PDU Session Modification)
  + the triggers of addition for SCell
    - received RRC: RRC Reconfiguration Complete (SCell addition/change)
    - received RRC: RRC Resume Complete (RRC inactive to RRC Connected with SCell addition)
  + the triggers of subtraction for SCell
    - received RRC: RRC Reconfiguration Complete (SCell release/change)
    - received Xn-AP: UE Context Release (Inter gNB-CU HO w/ Xn)
    - received NG-AP: UE Context Release Command

1. Integer number (U32)
2. The measurement name has the form OR.UESA.MaxUes.CellType or OR.UESA.MaxUes*.*CellType\_*Filter*. Where *Filter*

is QoS and represents the mapped 5QI or QCI level and where *Celltype* is the cell type:

0: PCell

1: SCell

1. NRCellCU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Max SCell Configuration UE Contexts

1. This counter provides the maximum number of each SCell configuration UE Contexts.

##### SI

1. Measurement subcounter is the maximum number of x. It is assigned with period of 10s by the volume x, if x is bigger than previously counted volume.

x is the number of each SCell configuration UE Contexts. The number is acquired as an instance value at every 10s.

* + the triggers of addition
    - received RRC: RRC Reconfiguration Complete (SCell addition/change)
    - received RRC: RRC Resume Complete (RRC inactive to RRC Connected with SCell addition)
  + the triggers of subtraction
    - received RRC: RRC Reconfiguration Complete (SCell release/change)
    - received Xn-AP: UE Context Release (Inter gNB-CU HO w/ Xn)
    - received NG-AP: UE Context Release Command

1. Integer number (U32)
2. OR.UESA.MaxScellConfigUes.SCell
3. NRCellCU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Max Measurement Gap UE Contexts

1. This counter provides the maximum number of UE Contexts which is configured with measurement gap.

##### SI

1. Measurement subcounter is the maximum number of x. It is assigned with period of 10s by the volume x, if x is bigger than previously counted volume.

x is the number of the UE Contexts which is configured with measurement gap. The number is acquired as an instance value at every 10s.

* + the triggers of addition
    - received RRC: RRC Reconfiguration Complete (setup measurement gap)
  + the triggers of subtraction
    - received RRC: RRC Reconfiguration Complete (release measurement gap)

1. Integer number (U32)
2. OR.UESA.MaxMeasGapUes
3. NRCellCU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Total emergency UE Contexts

1. This counter provides the total number of the emergency UE Contexts in a Cell.

##### CC

1. Measurement subcounter is the total number of x by the measurement period.

x is the number of the emergency UE Contexts per PCell or SCell as subcounter.*Celltype* by every 10s.

emergency UE Contexts: UE Contexts corresponding to ARP number assigned for emergency call or Establishment cause (or Resume cause): emergency is assigned.

* + the triggers of addition for PCell
    - send NG-AP: Initial Context Setup Response
    - received RRC: RRC Reconfiguration Complete (Inter RAT HO to NR, Inter gNB-CU HO, Intra gNB-CU Inter gNB-DU HO, Intra-DU Inter Cell HO, RRC Connection Re-establishment (Intra gNB-CU Inter gNB-DU), RRC Connection Re-establishment (Intra gNB-DU Inter Cell))
    - received RRC: RRC Resume Complete (RRC inactive to RRC Connected)
  + the triggers of subtraction for PCell
    - send RRC: RRC Release (UE Context Release, RRC Connected to RRC inactive, SN Release without keeping UE)
    - received Xn-AP: UE Context Release (Inter gNB-CU HO, RRC Connection Re-establishment (Inter gNB-CU))
    - received NG-AP: UE Context Release Command (Inter-RAT HO to LTE, Intra gNB-CU Inter gNB-DU HO, EPS fallback)
    - received RRC: RRC Reconfiguration Complete (Intra gNB-DU Inter-Cell HO, RRC Connection Re- establishment (Intra gNB-DU Inter Cell))
    - received F1-AP: UE Context Release Command (RRC Connection Re-establishment (Intra gNB-CU Inter gNB-DU))
  + the triggers of addition for SCell
    - received RRC: RRC Reconfiguration Complete (SCell addition/change)
    - received RRC: RRC Resume Complete (RRC inactive to RRC Connected with SCell addition)
  + the triggers of subtraction for SCell
    - received RRC: RRC Reconfiguration Complete (SCell release/change)
    - received Xn-AP: UE Context Release (Inter gNB-CU HO w/ Xn)
    - received NG-AP: UE Context Release Command

1. Integer number (U32)
2. OR.UESA.TotalEmergencyUes.*Celltype* where *Celltype* is the cell type: 0: PCell

1: SCell

1. NRCellCU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Total high priority access UE Contexts

1. This counter provides the total number of the high priority access UE Contexts in a Cell.

##### CC

1. Measurement subcounter is the total number of x by the measurement period.

x is the number of the high priority access UE Contexts per PCell or SCell as subcounter.*Celltype* by every 10s.

high priority access UE Contexts: UE Contexts corresponding to ARP number assigned for high priority access call or Establishment cause (or Resume cause): highPriorityAccess is assigned.

* + the triggers of addition for PCell
    - send NG-AP: Initial Context Setup Response
    - received RRC: RRC Reconfiguration Complete (Inter RAT HO to NR, Inter gNB-CU HO, Intra gNB-CU Inter gNB-DU HO, Intra-DU Inter Cell HO, RRC Connection Re-establishment (Intra gNB-CU Inter gNB-DU), RRC Connection Re-establishment (Intra gNB-DU Inter Cell))
    - received RRC: RRC Resume Complete (RRC inactive to RRC Connected)
  + the triggers of subtraction for PCell
    - send RRC: RRC Release (UE Context Release, RRC Connected to RRC inactive, SN Release without keeping UE)
    - received Xn-AP: UE Context Release (Inter gNB-CU HO, RRC Connection Re-establishment (Inter gNB-CU))
    - received NG-AP: UE Context Release Command (Inter-RAT HO to LTE, Intra gNB-CU Inter gNB-DU HO, EPS fallback)
    - received RRC: RRC Reconfiguration Complete (Intra gNB-DU Inter-Cell HO, RRC Connection Re- establishment (Intra gNB-DU Inter Cell))
    - received F1-AP: UE Context Release Command (RRC Connection Re-establishment (Intra gNB-CU Inter gNB-DU))
  + the triggers of addition for SCell
    - received RRC: RRC Reconfiguration Complete (SCell addition/change)
    - received RRC: RRC Resume Complete (RRC inactive to RRC Connected with SCell addition)
  + the triggers of subtraction for SCell
    - received RRC: RRC Reconfiguration Complete (SCell release/change)
    - received Xn-AP: UE Context Release (Inter gNB-CU HO w/ Xn)
    - received NG-AP: UE Context Release Command

1. Integer number (U32)
2. OR.UESA.TotalHighPriAccessUes.*Celltype* where *Celltype* is the cell type: 0: PCell

1: SCell

1. NRCellCU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Max emergency UE Contexts

1. This counter provides the maximum number of the Emergency UE Contexts in a Cell.

##### SI

1. Measurement subcounter is the maximum number of x. It is assigned with period of 10s by the volume x, if x is bigger than previously counted volume.

X is the number of the emergency UE Contexts per PCell or SCell as subcounter.*Celltype*. The number is acquired as an instance value at every 10s.

Emergency UE Contexts: UEs corresponding to ARP number assigned for emergency call or Establishment cause (or Resume cause): emergency is assigned.

* + the triggers of addition for PCell
    - send NG-AP: Initial Context Setup Response
    - received RRC: RRC Reconfiguration Complete (Inter RAT HO to NR, Inter gNB-CU HO, Intra gNB-CU Inter gNB-DU HO, Intra-DU Inter Cell HO, RRC Connection Re-establishment (Intra gNB-CU Inter gNB-DU), RRC Connection Re-establishment (Intra gNB-DU Inter Cell))
    - received RRC: RRC Resume Complete (RRC inactive to RRC Connected)
  + the triggers of subtraction for PCell
    - send RRC: RRC Release (UE Context Release, RRC Connected to RRC inactive, SN Release without keeping UE)
    - received Xn-AP: UE Context Release (Inter gNB-CU HO, RRC Connection Re-establishment (Inter gNB-CU))
    - received NG-AP: UE Context Release Command (Inter-RAT HO to LTE, Intra gNB-CU Inter gNB-DU HO, EPS fallback)
    - received RRC: RRC Reconfiguration Complete (Intra gNB-DU Inter-Cell HO, RRC Connection Re- establishment (Intra gNB-DU Inter Cell))
    - received F1-AP: UE Context Release Command (RRC Connection Re-establishment (Intra gNB-CU Inter gNB-DU))
  + the triggers of addition for SCell
    - received RRC: RRC Reconfiguration Complete (SCell addition/change)
    - received RRC: RRC Resume Complete (RRC inactive to RRC Connected with SCell addition)
  + the triggers of subtraction for SCell
    - received RRC: RRC Reconfiguration Complete (SCell release/change)
    - received Xn-AP: UE Context Release (Inter gNB-CU HO w/ Xn)
    - received NG-AP: UE Context Release Command

1. Integer number (U32)
2. OR.UESA.MaxEmergencyUes.*Celltype* where *Celltype* is the cell type: 0: PCell

1: SCell

1. NRCellCU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Max high priority access UE Contexts

1. This counter provides the maximum number of the high priority access UE Contexts in a Cell.

##### SI

1. Measurement subcounter is the maximum number of x. It is assigned with period of 10s by the volume x, if x is bigger than previously counted volume.

x is the number of the high priority access UE Contexts per PCell or SCell as subcounter.*Celltype*. The number is acquired as an instance value at every 10s.

high priority access UE Contexts: UE Contexts corresponding to ARP number assigned for high priority access call or Establishment cause (or Resume cause): highPriorityAccess is assigned.

* + the triggers of addition for PCell
    - send NG-AP: Initial Context Setup Response
    - received RRC: RRC Reconfiguration Complete (Inter RAT HO to NR, Inter gNB-CU HO, Intra gNB-CU Inter gNB-DU HO, Intra-DU Inter Cell HO, RRC Connection Re-establishment (Intra gNB-CU Inter gNB-DU), RRC Connection Re-establishment (Intra gNB-DU Inter Cell))
    - received RRC: RRC Resume Complete (RRC inactive to RRC Connected)
  + the triggers of subtraction for PCell
    - send RRC: RRC Release (UE Context Release, RRC Connected to RRC inactive, SN Release without keeping UE)
    - received Xn-AP: UE Context Release (Inter gNB-CU HO, RRC Connection Re-establishment (Inter gNB-CU))
    - received NG-AP: UE Context Release Command (Inter-RAT HO to LTE, Intra gNB-CU Inter gNB-DU HO, EPS fallback)
    - received RRC: RRC Reconfiguration Complete (Intra gNB-DU Inter-Cell HO, RRC Connection Re- establishment (Intra gNB-DU Inter Cell))
    - received F1-AP: UE Context Release Command (RRC Connection Re-establishment (Intra gNB-CU Inter gNB-DU))
  + the triggers of addition for SCell
    - received RRC: RRC Reconfiguration Complete (SCell addition/change)
    - received RRC: RRC Resume Complete (RRC inactive to RRC Connected with SCell addition)
  + the triggers of subtraction for SCell
    - received RRC: RRC Reconfiguration Complete (SCell release/change)
    - received Xn-AP: UE Context Release (Inter gNB-CU HO w/ Xn)
    - received NG-AP: UE Context Release Command

1. Integer number (U32)
2. OR.UESA.MaxHighPriAccessUes.*Celltype* where *Celltype* is the cell type: 0: PCell

1: SCell

1. NRCellCU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Total SN terminated split bearer UE Contexts in NR-DC

1. This counter provides the total number of UE Contexts configured as SN terminated split bearer in the NR-DC.

##### CC

1. Measurement subcounter is the total number of x by the measurement period.

x is the number of the UE Contexts configured as SN terminated Split bearer in the NR-DC. The number is acquired as an instance value at every 10s.

* + the triggers of addition
    - received Xn-AP: SN Reconfiguration Complete (to SN terminated split bearer)
    - received Xn-AP: S-Node Modification Confirm (Intra/Inter DU PSCell change using SRB1 (for target cell))
    - received RRC: RRC Reconfiguration Complete (Intra DU PSCell change using SRB3 (for target cell))
  + the triggers of subtraction
    - received Xn-AP: S-Node Modification Confirm (Intra/Inter DU PSCell change using SRB1 (for source cell))
    - received RRC: RRC Reconfiguration Complete (Intra DU PSCell change using SRB3 (for source cell))
    - received Xn-AP: UE Context Release

1. Integer number (U32)
2. OR.UENRDC.TotalSnSplitbearUes
3. NRCellCU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Max SN terminated split bearer UE Contexts in NR-DC

1. This counter provides the maximum number of UE Contexts configured as SN terminated split bearer in the NR-DC.

##### SI

1. Measurement subcounter is the maximum number of x. It is assigned with period of 100ms by the volume x, if x is bigger than previously counted volume.

x is the number of the UE Contexts configured as SN terminated split bearer in the NR-DC. x is acquired as an instantaneous value at every 100ms.

* + the triggers of addition
    - received Xn-AP: SN Reconfiguration Complete (to SN terminated split bearer)
    - received Xn-AP: S-Node Modification Confirm (Intra/Inter DU PSCell change using SRB1 (for target cell))
    - received RRC: RRC Reconfiguration Complete (Intra DU PSCell change using SRB3 (for target cell))
  + the triggers of subtraction
    - received Xn-AP: S-Node Modification Confirm (Intra/Inter DU PSCell change using SRB1 (for source cell))
    - received RRC: RRC Reconfiguration Complete (Intra DU PSCell change using SRB3 (for source cell))
    - received Xn-AP: UE Context Release

1. Integer number (U32)
2. OR.UENRDC.MaxSnSplitbearUes
3. NRCellCU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Total UE Contexts during voice call

1. This counter provides the total number of the UE Contexts during voice call.

##### CC

1. Measurement subcounter is the total number of x by the measurement period. x is the number of the UE Contexts during voice call by every 10s.
   * the triggers of addition
     + send NG-AP: Initial Context Setup Response
     + received RRC: RRC Reconfiguration Complete (Inter RAT HO to NR, Inter gNB-CU HO, Intra gNB-CU Inter gNB-DU HO, Intra-DU Inter Cell HO, RRC Connection Re-establishment (Intra gNB-CU Inter gNB-DU), RRC Connection Re-establishment (Intra gNB-DU Inter Cell))
     + received RRC: RRC Resume Complete (RRC inactive to RRC Connected)
   * the triggers of subtraction
     + send RRC: RRC Release (UE Context Release, RRC Connected to RRC inactive, SN Release without keeping UE)
     + received Xn-AP: UE Context Release (Inter gNB-CU HO, RRC Connection Re-establishment (Inter gNB-CU))
     + received NG-AP: UE Context Release Command (Inter-RAT HO to LTE, Intra gNB-CU Inter gNB-DU HO, EPS fallback)
     + received RRC: RRC Reconfiguration Complete (Intra gNB-DU Inter-Cell HO, RRC Connection Re- establishment (Intra gNB-DU Inter Cell))
     + received F1-AP: UE Context Release Command (RRC Connection Re-establishment (Intra gNB-CU Inter gNB-DU))
2. Integer number (U32)
3. OR.UESA.TotalUesVoice
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

### Monitoring of procedure for EN-DC

#### Number of SgNB Addition procedure attempted for each Cell

1. This counter provides the number of the transmitted X2-AP:SGNB ADDITION REQUEST ACKNOWLEDGE messages.

##### CC

1. Measurement counter is incremented by 1 whenever X2-AP:SGNB ADDITION REQUEST ACKNOWLEDGE message is transmitted as PSCell.
2. Integer number (U32)
3. OR.ENDCPROCEDURE.SgnbAddAttemptCell
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of SgNB Addition procedure successfully for each Cell

1. This counter provides the number of the completed SgNB addition Procedure.

##### CC

1. Measurement counter is incremented by 1 whenever SgNB addition procedure is completed as PSCell (i.e. X2-AP:SGNB RECONFIGURATION COMPLETE message (SgNB addition complete) is received and RACH processing with UE is completed).
2. Integer number (U32)
3. OR.ENDCPROCEDURE.SgnbAddSuccessCell
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of SgNB Addition procedure attempted for each neighbour eNB

1. This counter provides the number of the transmitted X2-AP:SGNB ADDITION REQUEST ACKNOWLEDGE messages.

This counter is split into subcounters per neighbour eNB.

##### CC

1. Measurement subcounter is incremented by 1 whenever X2-AP:SGNB ADDITION REQUEST ACKNOWLEDGE message is transmitted when the eNB configured by the message is group of subcounter.*neighboureNB.*
2. Integer number (U32)
3. OR.ENDCPROCEDURE.SgnbAddAttemptNeiEnb.*neighboureNB* where *neighboureNB* is neighbour eNB index: 0: #0

1: #1

...

63: #63

1. GNBCUCPFunction
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of SgNB Addition procedure successfully for each neighbour eNB

1. This counter provides the number of the completed SgNB addition Procedure. This counter is split into subcounters per neighbour eNB.

##### CC

1. Measurement counter is incremented by 1 whenever SgNB addition procedure is completed (i.e. X2-AP:SGNB RECONFIGURATION COMPLETE message (SgNB addition complete) is received and RACH processing with UE is completed) when the eNB configured by the message is group of subcounter.*neighboureNB.*
2. Integer number (U32)
3. OR.ENDCPROCEDURE.SgnbAddSuccessNeiEnb.*neighboureNB* where *neighboureNB* is neighbour eNB index: 0: #0

1: #1

...

63: #63

1. GNBCUCPFunction
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of SgNB modification procedure attempted for each neighbour eNB

1. This counter provides the number of the received X2-AP:SGNB MODIFICATION REQUEST messages or transmitted X2-AP:SGNB MODIFICATION REQUIRED messages.

This counter is split into subcounters per neighbour eNB.

##### CC

1. Measurement subcounter is incremented by 1 whenever X2-AP:SGNB MODIFICATION REQUEST message is received or X2-AP:SGNB MODIFICATION REQUIRED message is transmitted , when the eNB configured by the message is group of subcounter.*neighboureNB.*

Double counting is not performed if the procedure is changed to the MN initiated SN Modification procedure after transmitted X2-AP:SGNB MODIFICATION REQUIRED message (e.g. Measurement gap Coordination(SN initiated)).

This subcounter will not be incremented if received X2-AP:SGNB MODIFICATION REQUEST message which True is set for SCG Configuration Query IE.

1. Integer number (U32)
2. OR.ENDCPROCEDURE.SgnbModAttemptNeiEnb.*neighboureNB* where *neighboureNB* is neighbour eNB index: 0: #0

1: #1

...

63: #63

1. GNBCUCPFunction
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of SgNB modification procedure successfully for each neighbour eNB

1. This counter provides the number of the completed SgNB modification Procedure. This counter is split into subcounters per neighbour eNB.

##### CC

1. Measurement subcounter is incremented by 1 whenever SgNB Modification procedure is completed (i.e. X2-AP:SGNB RECONFIGURATION COMPLETE message(SgNB modification complete) is received or X2-AP:SGNB MODIFICATION CONFIRM is received and RACH processing with UE is completed) when the eNB configured by the message is group of subcounter.*neighboureNB.*
2. Integer number (U32)
3. OR.ENDCPROCEDURE.SgnbModSuccessNeiEnb.*neighboureNB* where *neighboureNB* is neighbour eNB index: 0: #0

1: #1

...

63: #63

1. GNBCUCPFunction
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

### Monitoring of RRC Connection for EN-DC

#### Number of Measurement Gap Coordination for per FR2 gap via SRB3 attempted

1. This counter provides the number of the transmitted RRC:RRC Reconfiguration messages via SRB3 when the following procedure.
   * Measurement Gap Coordination for per FR2 gap (without MN involvement) Procedure (SN initiated).

##### CC

1. Measurement subcounter is incremented by 1 whenever RRC:RRCReconfiguration message is transmitted via SRB3 when the following procedure.
   * Measurement Gap Coordination for per FR2 gap (without MN involvement) Procedure (SN initiated).
2. Integer number (U32)
3. OR.RRCCONENDC.ReconfSrb3AttemptGap
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of Measurement Gap Coordination for per FR2 gap via SRB3 successfully

1. This counter provides the number of the received RRC:RRC Reconfiguration Complete messages via SRB3 when the following procedure.
   * Measurement Gap Coordination for per FR2 gap (without MN involvement) Procedure (SN initiated).

##### CC

1. Measurement subcounter is incremented by 1 whenever RRC:RRCReconfiguration Complete message is received via SRB3 when the following procedure.
   * Measurement Gap Coordination for per FR2 gap (without MN involvement) Procedure (SN initiated).
2. Integer number (U32)
3. OR.RRCCONENDC.ReconfSrb3SuccessGap
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of Inter gNB-DU PSCell Change via SRB3 attempted

1. This counter provides the number of the transmitted RRC:RRC Reconfiguration messages via SRB3 when the following procedure.
   * Inter gNB-DU PSCell Change using SRB3 for RRC Reconfiguration

##### CC

1. Measurement subcounter is incremented by 1 whenever RRC:RRCReconfiguration message is transmitted via SRB3 when the following procedure.
   * Inter gNB-DU PSCell Change using SRB3 for RRC Reconfiguration
2. Integer number (U32)
3. OR.RRCCONENDC.ReconfSrb3AttemptInterDuPscellch
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of Inter gNB-DU PSCell Change via SRB3 successfully

1. This counter provides the number of the received RRC:RRC Reconfiguration Complete messages via SRB3 when the following procedure.
   * Inter gNB-DU PSCell Change using SRB3 for RRC Reconfiguration

##### CC

1. Measurement subcounter is incremented by 1 whenever RRC:RRCReconfiguration Complete message is received via SRB3 when the following procedure.
   * Inter gNB-DU PSCell Change using SRB3 for RRC Reconfiguration
2. Integer number (U32)
3. OR.RRCCONENDC.ReconfSrb3SuccessInterDuPscellch
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of Intra gNB-DU PSCell Change via SRB3 attempted

1. This counter provides the number of the transmitted RRC:RRC Reconfiguration messages via SRB3 when the following procedure.
   * Intra gNB-DU PSCell Change using SRB3 for RRC Reconfiguration

##### CC

1. Measurement subcounter is incremented by 1 whenever RRC:RRCReconfiguration message is transmitted via SRB3 when the following procedure.
   * Intra gNB-DU PSCell Change using SRB3 for RRC Reconfiguration
2. Integer number (U32)
3. OR.RRCCONENDC.ReconfSrb3AttemptIntraDuPscellch
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of Intra gNB-DU PSCell Change via SRB3 successfully

1. This counter provides the number of the received RRC:RRC Reconfiguration Complete messages via SRB3 when the following procedure.
   * Intra gNB-DU PSCell Change using SRB3 for RRC Reconfiguration

##### CC

1. Measurement subcounter is incremented by 1 whenever RRC:RRCReconfiguration Complete message is received via SRB3 when the following procedure.
   * Intra gNB-DU PSCell Change using SRB3 for RRC Reconfiguration
2. Integer number (U32)
3. OR.RRCCONENDC.ReconfSrb3SuccessIntraDuPscellch
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

### Monitoring of RRC Connection for SA

#### Number of initial RRC Connection requests

1. This counter provides the number of the received RRC: RRC Setup Request (or RRC: RRC Resume Request) messages via F1-C which is in the first time for each ue-Identity.

##### CC

1. Measurement counter is incremented by 1 whenever RRC: RRC Setup Request (or RRC: RRC Resume Request) message is received via F1-C, if RRC: RRC Setup Request (or RRC: RRC Resume Request) message of the same ue- Identity is not received for a certain period of time from the reception timing.
2. Integer number (U32)
3. OR.RRCCONSA.IniConReq
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of RRC connection completions for initial RRC Connection requests

1. This counter provides the number of the received RRC: RRC Setup Complete (or RRC: RRC Resume Response) messages via F1-C which corresponds to the initial RRC: RRC Setup Request (or RRC: RRC Resume Request) except fall-back procedure.

##### CC

1. Measurement counter is incremented by 1 whenever RRC: RRC Setup Complete (or RRC: RRC Resume Response) message which corresponds to the initial RRC: RRC Setup Request (or RRC: RRC Resume Request) except fall-back procedure is received via F1-C.
2. Integer number (U32)
3. OR.RRCCONSA.IniConComp
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of retransmission RRC Connections requests

1. This counter provides the number of the received RRC: RRC Setup Request (or RRC: RRC Resume Request) messages via F1-C which is retransmission for each ue-Identity.

##### CC

1. Measurement counter is incremented by 1 whenever RRC: RRC Setup Request (or RRC: RRC Resume Request) message is received via F1-C, if RRC: RRC Setup Request (or RRC: RRC Resume Request) message of the same ue- Identity is received for a certain period of time from the reception timing.
2. Integer number (U32)
3. OR.RRCCONSA.RetConReq
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of RRC Connections completions for retransmission RRC Connections requests

1. This counter provides the number of the received RRC: RRC Setup Complete (or RRC: RRC Resume Response) messages via F1-C which corresponds to the retransmission RRC: RRC Setup Request (or RRC: RRC Resume Request) except fall-back procedure.

##### CC

1. Measurement counter is incremented by 1 whenever RRC: RRC Setup Complete (or RRC: RRC Resume Response) message which corresponds to the retransmission RRC: RRC Setup Request (or RRC: RRC Resume Request) except fall- back procedure is received via F1-C.
2. Integer number (U32)
3. OR.RRCCONSA.RetransConComp
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of incomplete RRC Connection by failed resource allocations

1. This counter provides the number of the RRC Connection configuration interrupted by failed resource allocations.

##### CC

1. Measurement counter is incremented by 1 whenever RRC Connection configuration is interrupted between RRC: RRC Setup Request (or RRC: RRC Resume Request) to RRC: RRC Setup Complete (or RRC: RRC Resume Complete) by failed resource allocations.
2. Integer number (U32)
3. OR.RRCCONSA.IncompConResourAllo
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of incomplete RRC Connection by O-CU internal error

1. This counter provides the number of the RRC Connection configuration interrupted by O-CU internal error (e.g. L3 message sending NG).

##### CC

1. Measurement counter is incremented by 1 whenever RRC Connection configuration is interrupted between RRC: RRC Setup Request (or RRC: RRC Resume Request) to RRC: RRC Setup Complete (or RRC: RRC Resume Complete) by O- CU internal error.
2. Integer number (U32)
3. OR.RRCCONSA.IncompConOcuInterErr
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of initial RRC Connection requests each Establishment Cause

1. This counter provides the number of the received RRC: RRC Setup Request (or RRC: RRC Resume Request) messages via F1-C which is in the first time for each ue-Identity.

This counter is split into subcounters per EstablishmentCause.

##### CC

1. Measurement subcounter is incremented by 1 whenever RRC: RRC Setup Request (or RRC: RRC Resume Request) message is received via F1-C, if RRC: RRC Setup Request (or RRC: RRC Resume Response) message of the same ue- Identity is not received for a certain period of time from the reception timing when the cell configured by the message is group of subcounter*.EstablishmentCause.*
2. Integer number (U32)
3. OR.RRCCONSA.IniConReqEstaCause*.EstablishmentCause* where *EstablishmentCause* is EstablishmentCause: 0: EstablishmentCause = emergency

1: EstablishmentCause = highPriorityAccess 2: EstablishmentCause = mt-Access

3: EstablishmentCause = mo-Signalling

4: EstablishmentCause = mo-Data

5: EstablishmentCause = mo-VoiceCall 6: EstablishmentCause = mo-VideoCall 7: EstablishmentCause = mo-SMS

8: EstablishmentCause = mps-PriorityAccess 9: EstablishmentCause = mcs-PriorityAccess

1. NRCellCU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of RRC connection completions for initial RRC Connection requests each Establishment Cause

1. This counter provides the number of the received RRC: RRC Setup Complete (or RRC: RRC Resume Response) messages via F1-C which corresponds to the initial RRC: RRC Setup Request (or RRC: RRC Resume Request) except fall-back procedure.

This counter is split into subcounters per EstablishmentCause.

##### CC

1. Measurement subcounter is incremented by 1 whenever RRC:RRC Setup Complete (or RRC: RRC Resume Response) message which corresponds to the initial RRC: RRC Setup Request (or RRC: RRC Resume Request) except fall-back procedure is received via F1-C when the cell configured by the message is group of subcounter*.EstablishmentCause.*
2. Integer number (U32)
3. OR.RRCCONSA.IniConCompEstaCause*.EstablishmentCause* where *EstablishmentCause* is EstablishmentCause: 0: EstablishmentCause = emergency

1: EstablishmentCause = highPriorityAccess 2: EstablishmentCause = mt-Access

3: EstablishmentCause = mo-Signalling 4: EstablishmentCause = mo-Data

5: EstablishmentCause = mo-VoiceCall 6: EstablishmentCause = mo-VideoCall 7: EstablishmentCause = mo-SMS

8: EstablishmentCause = mps-PriorityAccess 9: EstablishmentCause = mcs-PriorityAccess

1. NRCellCU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of retransmission RRC Connections requests each Establishment Cause

1. This counter provides the number of the received RRC: RRC Setup Request (or RRC: RRC Resume Request) messages via F1-C which is retransmission for each ue-Identity.

This counter is split into subcounters per EstablishmentCause.

##### CC

1. Measurement subcounter is incremented by 1 whenever RRC: RRC Setup Request (or RRC: RRC Resume Request) message is received via F1-C, if RRC: RRC Setup Request (or RRC: RRC Resume Request) message of the same ue- Identity is received for a certain period of time from the reception timing when the cell configured by the message is group of subcounter*.EstablishmentCause.*
2. Integer number (U32)
3. OR.RRCCONSA.RetransConReqEstaCause*.EstablishmentCause* where *EstablishmentCause* is EstablishmentCause: 0: EstablishmentCause = emergency

1: EstablishmentCause = highPriorityAccess 2: EstablishmentCause = mt-Access

3: EstablishmentCause = mo-Signalling 4: EstablishmentCause = mo-Data

5: EstablishmentCause = mo-VoiceCall 6: EstablishmentCause = mo-VideoCall 7: EstablishmentCause = mo-SMS

8: EstablishmentCause = mps-PriorityAccess 9: EstablishmentCause = mcs-PriorityAccess

1. NRCellCU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of RRC Connections completions for retransmission RRC Connections requests each Establishment Cause

1. This counter provides the number of the received RRC: RRC Setup Complete (or RRC: RRC Resume Response) messages via F1-C which corresponds to the retransmission RRC: RRC Setup Request (or RRC: RRC Resume Request) except fall-back procedure.

This counter is split into subcounters per EstablishmentCause.

##### CC

1. Measurement subcounter is incremented by 1 whenever RRC: RRC Setup Complete (or RRC: RRC Resume Response) message which corresponds to the retransmission RRC: RRC Setup Request (or RRC: RRC Resume Request) except fall- back procedure is received via F1-C when the cell configured by the message is group of subcounter.*EstablishmentCause.*
2. Integer number (U32)
3. OR.RRCCONSA.RetransConCompEstaCause*.EstablishmentCause* where *EstablishmentCause* is EstablishmentCause: 0: EstablishmentCause = emergency

1: EstablishmentCause = highPriorityAccess 2: EstablishmentCause = mt-Access

3: EstablishmentCause = mo-Signalling 4: EstablishmentCause = mo-Data

5: EstablishmentCause = mo-VoiceCall 6: EstablishmentCause = mo-VideoCall 7: EstablishmentCause = mo-SMS

8: EstablishmentCause = mps-PriorityAccess 9: EstablishmentCause = mcs-PriorityAccess

1. NRCellCU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of incomplete RRC Connection by failed resource allocations each Establishment Cause

1. This counter provides the number of the RRC Connection configuration interrupted by failed resource allocations. This counter is split into subcounters per EstablishmentCause.

##### CC

1. Measurement subcounter is incremented by 1 whenever RRC Connection configuration is interrupted between RRC: RRC Setup Request (or RRC: RRC Resume Request) to RRC: RRC Setup Complete (or RRC: RRC Resume Complete) by failed resource allocations when the cell configured by the message is group of subcounter*.EstablishmentCause.*
2. Integer number (U32)
3. OR.RRCCONSA.IncompConResourAlloEstaCause*.EstablishmentCause* where *EstablishmentCause* is EstablishmentCause:

0: EstablishmentCause = emergency

1: EstablishmentCause = highPriorityAccess 2: EstablishmentCause = mt-Access

3: EstablishmentCause = mo-Signalling

4: EstablishmentCause = mo-Data

5: EstablishmentCause = mo-VoiceCall 6: EstablishmentCause = mo-VideoCall 7: EstablishmentCause = mo-SMS

8: EstablishmentCause = mps-PriorityAccess 9: EstablishmentCause = mcs-PriorityAccess

1. NRCellCU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of incomplete RRC Connection by O-CU internal error each Establishment Cause

1. This counter provides the number of the RRC Connection configuration interrupted by O-CU internal error (e.g. L3 message sending NG).

This counter is split into subcounters per EstablishmentCause.

##### CC

1. Measurement subcounter is incremented by 1 whenever RRC Connection configuration is interrupted between RRC: RRC Setup Request (or RRC: RRC Resume Request) to RRC: RRC Setup Complete (or RRC: RRC Resume Complete) by O-CU internal error when the cell configured by the message is group of subcounter*.EstablishmentCause.*
2. Integer number (U32)
3. OR.RRCCONSA.IncompConOcuInterErrEstaCause*.EstablishmentCause* where *EstablishmentCause* is EstablishmentCause:

0: EstablishmentCause = emergency

1: EstablishmentCause = highPriorityAccess 2: EstablishmentCause = mt-Access

3: EstablishmentCause = mo-Signalling 4: EstablishmentCause = mo-Data

5: EstablishmentCause = mo-VoiceCall 6: EstablishmentCause = mo-VideoCall 7: EstablishmentCause = mo-SMS

8: EstablishmentCause = mps-PriorityAccess 9: EstablishmentCause = mcs-PriorityAccess

1. NRCellCU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

### Monitoring of Establishment calls for SA

#### Number of attempted establishment calls for mo-Data

1. This counter provides the number of the received RRC: RRC Setup Complete (or RRC: RRC Resume Complete) messages via F1-C after received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (Resume Cause):mo-Data).

##### CC

1. Measurement counter is incremented by 1 whenever RRC: RRC Setup Complete (or RRC: RRC Resume Complete) message is received via F1-C after received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause): mo-Data).
2. Integer number (U32)
3. OR.ESTACALL.AttemptModata
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of successful establishment calls for mo-Data

1. This counter provides the number of the following message after received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause): mt-Data):
   * send NG-AP: Initial Context Setup Response
   * received NG-AP: UE Context Release Command (for deregistration) before sending NG-AP: Initial Context Setup Response

##### CC

1. Measurement counter is incremented by 1 whenever the following event occurs after received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause): mo-Data):
   * send NG-AP: Initial Context Setup Response
   * received NG-AP: UE Context Release Command (for deregistration) before sending NG-AP: Initial Context Setup ResponseMeasurement counter is incremented by 1 whenever NG-AP:Initial Context Setup Response message is transmitted after received RRC: RRC Setup Request (Establishment Cause: mo-Data).
2. Integer number (U32)
3. OR.ESTACALL.SuccessModata
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of incomplete establishment calls for mo-Data by protocol error

1. This counter provides the number of the Call establishment for mo-Data interrupted by protocol error.

##### CC

1. Measurement counter is incremented by 1 whenever Call establishment for mo-Data is interrupted between RRC: RRC Setup Request (or RRC: RRC Resume Request) to NG-AP: Initial Context Setup Response (or RRC: RRC Resume Complete) by protocol error.
2. Integer number (U32)
3. OR.ESTACALL.IncompModataProtocolErr
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of incomplete establishment calls for mo-Data by O-CU internal error

1. This counter provides the number of the call establishment for mo-Data interrupted by O-CU internal error.

##### CC

1. Measurement counter is incremented by 1 whenever call establishment for mo-Data is interrupted between RRC: RRC Setup Request (or RRC: RRC Resume Request) to NG-AP: Initial Context Setup Response (or RRC: RRC Resume Complete) by O-CU internal error.
2. Integer number (U32)
3. OR.ESTACALL.IncompModataOcuInterErr
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of incomplete establishment calls for mo-Data by O-DU error detection

1. This counter provides the number of the call establishment for mo-Data interrupted by O-DU Error Detection.

##### CC

1. Measurement counter is incremented by 1 whenever call establishment for mo-Data is interrupted between RRC: RRC Setup Request (or RRC: RRC Resume Request) to NG-AP: Initial Context Setup Response (or RRC: RRC Resume Complete) by O-DU Error Detection*.*
2. Integer number (U32)
3. OR.ESTACALL.IncompModataOduErrDetect
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of attempted establishment calls for mt-Access

1. This counter provides the number of the received RRC: RRC Setup Complete (or RRC: RRC Resume Complete) messages via F1-C after received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause): mt-Access).

##### CC

1. Measurement counter is incremented by 1 whenever RRC: RRC Setup Complete (or RRC: RRC Resume Complete) message is received via F1-C after received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause): mt-Access)*.*
2. Integer number (U32)
3. OR.ESTACALL.AttemptMtaccess
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of successful establishment calls for mt-Access

1. This counter provides the number of the following message after received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause):mt-Access):
   * send NG-AP: Initial Context Setup Response
   * received NG-AP: UE Context Release Command (for deregistration) before sending NG-AP: Initial Context Setup Response

##### CC

1. Measurement counter is incremented by 1 whenever the following event occurs after received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause):mt-Access):
   * send NG-AP: Initial Context Setup Response
   * received NG-AP: UE Context Release Command (for deregistration) before sending NG-AP: Initial Context Setup Response
2. Integer number (U32)
3. OR.ESTACALL.SuccessMtaccess
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of incomplete establishment calls for mt-Access by protocol error

1. This counter provides the number of the call establishment for mt-Access interrupted by protocol error.

##### CC

1. Measurement counter is incremented by 1 whenever call establishment for mt-Access is interrupted between RRC: RRC Setup Request (or RRC: RRC Resume Request) to NG-AP: Initial Context Setup Response (or RRC: RRC Resume Complete) by protocol error.
2. Integer number (U32)
3. OR.ESTACALL.IncompMtaccessProtocolErr
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of incomplete establishment calls for mt-Access by O-CU internal error

1. This counter provides the number of the call establishment for mt-Access interrupted by O-CU internal error.

##### CC

1. Measurement counter is incremented by 1 whenever call establishment for mt-Access is interrupted between RRC: RRC Setup Request (or RRC: RRC Resume Request) to NG-AP: Initial Context Setup Response (or RRC: RRC Resume Complete) by O-CU internal error*.*
2. Integer number (U32)
3. OR.ESTACALL.IncompMtaccessOcuInterErr
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of incomplete establishment calls for mt-Access by O-DU error detection

1. This counter provides the number of the call establishment for mt-Access is interrupted by O-DU Error Detection.

##### CC

1. Measurement counter is incremented by 1 whenever call establishment for mt-Access is interrupted between RRC: RRC Setup Request (or RRC: RRC Resume Request) to NG-AP: Initial Context Setup Response (or RRC: RRC Resume Complete) by DU Error Detection.
2. Integer number (U32)
3. OR.ESTACALL.IncompMtaccessOduErrDetect
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of attempted establishment calls for mo-Signalling

1. This counter provides the number of the received RRC: RRC Setup Complete (or RRC: RRC Resume Complete) messages via F1-C after received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause):mo-Signalling).

##### CC

1. Measurement counter is incremented by 1 whenever RRC: RRC Setup Complete (or RRC: RRC Resume Complete) message is received via F1-C after received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause):mo-Signalling).
2. Integer number (U32)
3. OR.ESTACALL.AcceptMosignal
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of successful establishment calls for mo-Signalling

1. This counter provides the number of the following message after received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause): mo-Signalling):
   * send NG-AP: Initial Context Setup Response
   * received NG-AP: UE Context Release Command (for deregistration) before sending NG-AP: Initial Context Setup Response

##### CC

1. Measurement counter is incremented by 1 whenever the following event occurs after received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause): mo-Signalling):
   * send NG-AP: Initial Context Setup Response
   * received NG-AP: UE Context Release Command (for deregistration) before sending NG-AP: Initial Context Setup Response
2. Integer number (U32)
3. OR.ESTACALL.SuccessMosignal
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of incomplete establishment calls for mo-Signalling by protocol error

1. This counter provides the number of the call establishment for mo-Signalling interrupted by protocol error.

##### CC

1. Measurement counter is incremented by 1 whenever call establishment for mo-Signalling is interrupted between RRC: RRC Setup Request (or RRC: RRC Resume Request) to NG-AP: Initial Context Setup Response (or RRC: RRC Resume Complete) by protocol error.
2. Integer number (U32)
3. OR.ESTACALL.IncompMosignalProtocolErr
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of incomplete establishment calls for mo-Signalling by O-CU internal error

1. This counter provides the number of the call establishment for mo-Signalling interrupted by O-CU internal error.

##### CC

1. Measurement counter is incremented by 1 whenever mo-Signalling configuration is interrupted between RRC: RRC Setup Request (or RRC: RRC Resume Request) to NG-AP: Initial Context Setup Response (or RRC: RRC Resume Complete) by O-CU internal error.
2. Integer number (U32)
3. OR.ESTACALL.IncompMosignalOcuInterErr
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of incomplete establishment calls for mo-Signalling by O-DU error detection

1. This counter provides the number of the call establishment for mo-Signalling interrupted by O-DU error detection.

##### CC

1. Measurement counter is incremented by 1 whenever call establishment for mo-Signalling is interrupted between RRC: RRC Setup Request (or RRC: RRC Resume Request) to NG-AP: Initial Context Setup Response (or RRC: RRC Resume Complete) by O-DU error detection.
2. Integer number (U32)
3. OR.ESTACALL.IncompMosignalDuErrDetect
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of attempted establishment calls for mo-SMS

1. This counter provides the number of the received RRC: RRC Setup Complete (or RRC: RRC Resume Complete) messages via F1-C after received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause): mo-SMS).

##### CC

1. Measurement counter is incremented by 1 whenever RRC: RRC Setup Complete (or RRC: RRC Resume Complete) message is received via F1-C after received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause): mo-SMS).
2. Integer number (U32)
3. OR.ESTACALL.AttemptMossms
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of successful establishment calls for mo-SMS

1. This counter provides the number of the following message after received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause): mo-SMS):
   * send NG-AP: Initial Context Setup Response
   * received NG-AP: UE Context Release Command (for deregistration) before sending NG-AP: Initial Context Setup Response

##### CC

1. Measurement counter is incremented by 1 whenever the following event occurs after received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause): mo-SMS):
   * send NG-AP: Initial Context Setup Response
   * received NG-AP: UE Context Release Command (for deregistration) before sending NG-AP: Initial Context Setup Response
2. Integer number (U32)
3. OR.ESTACALL.SuccessMossms
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of incomplete establishment calls for mo-SMS by protocol error

1. This counter provides the number of the call establishment for mo-SMS interrupted by protocol error.

##### CC

1. Measurement counter is incremented by 1 whenever call establishment for mo-SMS is interrupted between RRC: RRC Setup Request (or RRC: RRC Resume Request) to NG-AP: Initial Context Setup Response (or RRC: RRC Resume Complete) by protocol error.
2. Integer number (U32)
3. OR.ESTACALL.IncompMossmsProtocolErr
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of incomplete establishment calls for mo-SMS by O-CU internal error

1. This counter provides the number of the call establishment for mo-SMS interrupted by O-CU internal error.

##### CC

1. Measurement counter is incremented by 1 whenever call establishment for mo-SMS is interrupted between RRC: RRC Setup Request (or RRC: RRC Resume Request) to NG-AP: Initial Context Setup Response (or RRC: RRC Resume Complete) by O-CU internal error.
2. Integer number (U32)
3. OR.ESTACALL.IncompMossmsOcuInterErr
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of incomplete establishment calls for mo-SMS by O-DU error detection

1. This counter provides the number of the call establishment for mo-SMS interrupted by O-DU error detection.

##### CC

1. Measurement counter is incremented by 1 whenever call establishment for mo-SMS is interrupted between RRC: RRC Setup Request (or RRC: RRC Resume Request) to NG-AP: Initial Context Setup Response (or RRC: RRC Resume Complete) by O-DU error detection.
2. Integer number (U32)
3. OR.ESTACALL.IncompMossmsOduErrDetect
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of attempted establishment calls for high priority access

1. This counter provides the number of the received RRC: RRC Setup Complete messages (or RRC: RRC Resume Complete) via F1-C after received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause): highPriorityAccess).

##### CC

1. Measurement counter is incremented by 1 whenever RRC: RRC Setup Complete (or RRC: RRC Resume Complete) message is received via F1-C after received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause): highPriorityAccess).
2. Integer number (U32)
3. OR.ESTACALL.AttemptHighPriAccess
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of successful establishment calls for high priority access

1. This counter provides the number of the following message after received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause): highPriorityAccess):
   * NG-AP: Initial Context Setup Response is transmitted.
   * NG-AP: UE Context Release Command (for detach) is received before NG-AP: Initial Context Setup Response is transmitted.

##### CC

1. Measurement counter is incremented by 1 whenever the following event occurs after received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause): highPriorityAccess):
   * send NG-AP: Initial Context Setup Response
   * NG-AP: UE Context Release Command (for detach) is received before NG-AP: Initial Context Setup Response is transmitted.
2. Integer number (U32)
3. OR.ESTACALL.SuccessHighPriAccess
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of incomplete establishment calls for high priority access by protocol error

1. This counter provides the number of the call establishment for high priority access interrupted by protocol error.

##### CC

1. Measurement counter is incremented by 1 whenever call establishment for high priority access is interrupted between RRC: RRC Setup Request (or RRC: RRC Resume Request) to NG-AP: Initial Context Setup Response (or RRC: RRC Resume Complete) by protocol error (Call acceptance condition of CU/DU is not met).
2. Integer number (U32)
3. OR.ESTACALL.IncompHighPriAccessProtocolErr
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of incomplete establishment calls for high priority access by O-CU internal error

1. This counter provides the number of the call establishment for high priority access interrupted by O-CU internal error.

##### CC

1. Measurement counter is incremented by 1 whenever call establishment for high priority access is interrupted between RRC: RRC Setup Request (or RRC: RRC Resume Request) to NG-AP: Initial Context Setup Response (or RRC: RRC Resume Complete) by O-CU internal error (Call acceptance condition of CU/DU is not met).
2. Integer number (U32)
3. OR.ESTACALL.IncompHighPriAccessOcuInterErr
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of incomplete establishment calls for high priority access by O-DU error detection

1. This counter provides the number of the call establishment for high priority access interrupted by O-DU error detection.

##### CC

1. Measurement counter is incremented by 1 whenever call establishment for high priority access is interrupted between RRC: RRC Setup Request (or RRC: RRC Resume Request) to NG-AP: Initial Context Setup Response (or RRC: RRC Resume Complete) by O-DU error detection (Call acceptance condition of CU/DU is not met).
2. Integer number (U32)
3. OR.ESTACALL.IncompHighPriAccessOduErrDetect
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of attempted establishment calls for emergency

1. This counter provides the number of the received RRC: RRC Setup Complete (or RRC: RRC Resume Complete) messages via F1-C after received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause): emergency).

##### CC

1. Measurement counter is incremented by 1 whenever RRC: RRC Setup Complete (or RRC: RRC Resume Complete) message is received via F1-C after received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause): emergency).
2. Integer number (U32)
3. OR.ESTACALL.AttemptEmergency
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of successful establishment calls for emergency

1. This counter provides the number of the following message after received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause): emergency):
   * send NG-AP: Initial Context Setup Response
   * NG-AP: UE Context Release Command (for detach) is received before NG-AP: Initial Context Setup Response is transmitted.

##### CC

1. Measurement counter is incremented by 1 whenever the following event occurs after received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause): emergency):
   * NG-AP: Initial Context Setup Response is transmitted.
   * NG-AP: UE Context Release Command (for detach) is received before NG-AP: Initial Context Setup Response is transmitted.
2. Integer number (U32)
3. OR.ESTACALL.SuccessEmergency
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of incomplete establishment calls for emergency by protocol error

1. This counter provides the number of the call establishment for emergency interrupted by protocol error.

##### CC

1. Measurement counter is incremented by 1 whenever call establishment for emergency is interrupted between RRC: RRC Setup Request (or RRC: RRC Resume Request) to NG-AP: Initial Context Setup Response (or RRC: RRC Resume Complete) by protocol error (Call acceptance condition of CU/DU is not met).
2. Integer number (U32)
3. OR.ESTACALL.IncompEmergencyProtocolErr
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of incomplete establishment calls for emergency by O-CU internal error

1. This counter provides the number of the call establishment for emergency interrupted by O-CU internal error.

##### CC

1. Measurement counter is incremented by 1 whenever call establishment for emergency is interrupted between RRC: RRC Setup Request (or RRC: RRC Resume Request) to NG-AP: Initial Context Setup Response (or RRC: RRC Resume Complete) by O-CU internal error (Call acceptance condition of CU/DU is not met).
2. Integer number (U32)
3. OR.ESTACALL.IncompEmergencyOcuInterErr
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of incomplete establishment calls for emergency by O-DU error detection

1. This counter provides the number of the call establishment for emergency interrupted by O-DU error detection.

##### CC

1. Measurement counter is incremented by 1 whenever call establishment for emergency is interrupted between RRC: RRC Setup Request (or RRC: RRC Resume Request) to NG-AP: Initial Context Setup Response (or RRC: RRC Resume Complete) by O-DU error detection (Call acceptance condition of CU/DU is not met).
2. Integer number (U32)
3. OR.ESTACALL.IncompEmergencyOduErrDetect
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community
   * + 1. Void

### Monitoring of PDU session connection for SA

#### Accepted PDU Session Resource Configuration

1. This counter provides the number of the accepted PDU session resource configuration. The measurement is optionally calculated per QoS (mapped 5QI or QCI in EN-DC).

##### CC

1. Measurement subcounter is incremented by 1 whenever gNB received the following message, optionally calculated per QoS.

NOTE: multiple 5QIs can be set per PDU session, each 5QI is counted per QoS flow.

* + "NG-AP: Initial Context Setup Request" is received
  + "NG-AP: PDU Session Resource Setup Request"
  + "NG-AP: PDU Session Resource Modify Request"

1. Integer number (U32)
2. The measurement name has the form OR.PDUSESSION.AcceptConfig or OR.PDUSESSION.AcceptConfig \_*Filter*. Where *Filter* is QoS and represents the mapped 5QI or QCI level.
3. NRCellCU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Completed PDU Session Resource Configuration

1. This counter provides the number of the completed PDU session resource configuration. The measurement is optionally calculated per QoS (5QI or QCI).

##### CC

1. Measurement subcounter is incremented by 1 whenever gNB transmitted the following message, optionally calculated per QoS.

NOTE: multiple 5QIs can be set per PDU session, each 5QI is counted per QoS flow.

* + "NG-AP: Initial Context Setup Response"
  + "NG-AP: PDU Session Resource Setup Response"
  + "NG-AP: PDU Session Resource Modify Response"

1. Integer number (U32)
2. The measurement name has the form OR.PDUSESSION.CompConfig or OR.PDUSESSION.CompConfig\_*Filter*. Where

*Filter* is QoS and represents the mapped 5QI or QCI level.

1. NRCellCU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Interrupted PDU Session Resource configuration by Protocol Error

1. This counter provides the number of the PDU session resource configuration interrupted by protocol error. The measurement is optionally calculated per QoS (mapped 5QI or QCI in EN-DC).

##### CC

1. Measurement subcounter is incremented by 1 whenever the PDU session resource configuration interrupted in the following interval by protocol error, optionally calculated per QoS.

NOTE: multiple 5QIs can be set per PDU session, each 5QI is counted per QoS flow.

* + between RRC: RRC Setup Request (or RRC: RRC Resume Request) to NG-AP: Initial Context Setup Response (or RRC: RRC Resume Complete)
  + between Xn-AP: Handover Request to NG-AP: Path Switch Acknowledge (Inter gNB-CU HO w Xn)
  + between NG-AP: Handover Request to NG-AP: Path Switch Acknowledge (Inter gNB-CU HO w/o Xn)
  + between NG-AP: Handover Request to NG-AP: Handover Notify (Inter RAT HO to NR)
  + between NG-AP: PDU Session Resource Setup Request to NG-AP: PDU Session Resource Setup Response (PDU Session Establishment)
  + between NG-AP: PDU Session Resource Modify Request to NG-AP: PDU Session Resource Modify Response (PDU Session Modification)
  + between NG-AP: PDU Session Resource Release Request to NG-AP: PDU Session Resource Release Response (PDU Session Release)

1. Integer number (U32)
2. The measurement name has the form OR.PDUSESSION.InterruptConfigProcolErr or OR.PDUSESSION.InterruptConfigProcolErr\_*Filter*. Where *Filter* is QoS and represents the mapped 5QI or QCI level.
3. NRCellCU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Interrupted PDU Session Resource configuration by O-DU Error Detection

1. This counter provides the number of the PDU session resource configuration interrupted by O-DU error detection. The measurement is optionally calculated per QoS (mapped 5QI or QCI in EN-DC).

##### CC

1. Measurement subcounter is incremented by 1 whenever the PDU session resource configuration interrupted in the following interval by O-DU error detection, optionally calculated per QoS.

NOTE: multiple 5QIs can be set per PDU session, each 5QI is counted per QoS flow.

* + between RRC: RRC Setup Request (or RRC: RRC Resume Request) to NG-AP: Initial Context Setup Response (or RRC: RRC Resume Complete)
  + between Xn-AP: Handover Request to NG-AP: Path Switch Acknowledge (Inter gNB-CU HO w Xn)
  + between NG-AP: Handover Request to NG-AP: Path Switch Acknowledge (Inter gNB-CU HO w/o Xn)
  + between NG-AP: Handover Request to NG-AP: Handover Notify (Inter RAT HO to NR)
  + between NG-AP: PDU Session Resource Setup Request to NG-AP: PDU Session Resource Setup Response (PDU Session Establishment)
  + between NG-AP: PDU Session Resource Modify Request to NG-AP: PDU Session Resource Modify Response (PDU Session Modification)
  + between NG-AP: PDU Session Resource Release Request to NG-AP: PDU Session Resource Release Response (PDU Session Release)

1. Integer number (U32)
2. The measurement name has the form OR.PDUSESSION.InterruptConfigOduErrDetect or OR.PDUSESSION.InterruptConfigOduErrDetect\_*Filter*. Where *Filter* is QoS and represents the mapped 5QI or QCI level.
3. NRCellCU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Interrupted PDU Session Resource configuration by O-CU internal error

1. This counter provides the number of the PDU session resource configuration interrupted by O-CU internal error. The measurement is optionally calculated per QoS (mapped 5QI or QCI in EN-DC).

##### CC

1. Measurement subcounter is incremented by 1 whenever the PDU session resource configuration interrupted in the following interval by O-CU internal error, optionally calculated per QoS.

NOTE: multiple 5QIs can be set per PDU session, each 5QI is counted per QoS flow.

* + between RRC: RRC Setup Request (or RRC: RRC Resume Request) to NG-AP: Initial Context Setup Response (or RRC: RRC Resume Complete)
  + between Xn-AP: Handover Request to NG-AP: Path Switch Acknowledge (Inter gNB-CU HO w Xn)
  + between NG-AP: Handover Request to NG-AP: Path Switch Acknowledge (Inter gNB-CU HO w/o Xn)
  + between NG-AP: Handover Request to NG-AP: Handover Notify (Inter RAT HO to NR)
  + between NG-AP: PDU Session Resource Setup Request to NG-AP: PDU Session Resource Setup Response (PDU Session Establishment)
  + between NG-AP: PDU Session Resource Modify Request to NG-AP: PDU Session Resource Modify Response (PDU Session Modification)
  + between NG-AP: PDU Session Resource Release Request to NG-AP: PDU Session Resource Release Response (PDU Session Release)

1. Integer number (U32)
2. The measurement name has the form OR.PDUSESSION.InterruptConfigOcuInterErr or OR.PDUSESSION.InterruptConfigOcuInterErr\_*Filter*. Where *Filter* is QoS and represents the mapped 5QI or QCI level.
3. NRCellCU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Accepted PDU Session Resource Configuration for emergency and high priority access

1. This counter provides the number of the accepted PDU session resource configuration for emergency and high priority access. The measurement is optionally calculated per QoS (mapped 5QI or QCI in EN-DC).

##### CC

1. Measurement subcounter is incremented by 1 whenever gNB received the following message after received RRC: RRC Setup Request (Establishment Cause: emergency or high priority access), optionally calculated per QoS.

NOTE: multiple 5QIs can be set per PDU session, each 5QI is counted per QoS flow.

* + received NG-AP: Initial Context Setup Request
  + received NG-AP: PDU Session Resource Setup Request
  + received NG-AP: PDU Session Resource Modify Request

1. Integer number (U32)
2. The measurement name has the form OR.PDUSESSION.AcceptConfigEmergencyHighPriAccess or OR.PDUSESSION.AcceptConfigEmergencyHighPriAccess\_*Filter*. Where *Filter* is QoS and represents the mapped 5QI or QCI level.
3. NRCellCU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Completed PDU Session Resource Configuration for emergency and high priority access

1. This counter provides the number of the completed PDU session resource configuration for emergency and high priority access. The measurement is optionally calculated per QoS (mapped 5QI or QCI in EN-DC).

##### CC

1. Measurement subcounter is incremented by 1 whenever gNB transmitted the following message after received RRC: RRC Setup Request (Establishment Cause: emergency or high priority access), optionally calculated per QoS.

NOTE: multiple 5QIs can be set per PDU session, each 5QI is counted per QoS flow.

* + send NG-AP: Initial Context Setup Response
  + send NG-AP: PDU Session Resource Setup Response
  + send NG-AP: PDU Session Resource Modify Response

1. Integer number (U32)
2. The measurement name has the form OR.PDUSESSION.CompConfigEmergencyHighPriAccess or OR.PDUSESSION.CompConfigEmergencyHighPriAccess \_*Filter*. Where *Filter* is QoS and represents the mapped 5QI or QCI level.
3. NRCellCU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Interrupted PDU Session Resource configuration for emergency and high priority access by Protocol Error

1. This counter provides the number of the PDU session resource configuration for emergency and high priority access interrupted by protocol error. The measurement is optionally calculated per QoS (mapped 5QI or QCI in EN-DC).

##### CC

1. Measurement subcounter is incremented by 1 whenever the PDU session resource configuration for emergency and high priority access interrupted in the following interval by protocol error, optionally calculated per QoS.

NOTE: multiple 5QIs can be set per PDU session, each 5QI is counted per QoS flow.

* + between RRC: RRC Setup Request (or RRC: RRC Resume Request) to NG-AP: Initial Context Setup Response (or RRC: RRC Resume Complete)
  + between Xn-AP: Handover Request to NG-AP: Path Switch Acknowledge (Inter gNB-CU HO w Xn)
  + between NG-AP: Handover Request to NG-AP: Path Switch Acknowledge (Inter gNB-CU HO w/o Xn)
  + between NG-AP: Handover Request to NG-AP: Handover Notify (Inter RAT HO to NR)
  + between NG-AP: PDU Session Resource Setup Request to NG-AP: PDU Session Resource Setup Response (PDU Session Establishment)
  + between NG-AP: PDU Session Resource Modify Request to NG-AP: PDU Session Resource Modify Response (PDU Session Modification)
  + between NG-AP: PDU Session Resource Release Request to NG-AP: PDU Session Resource Release Response (PDU Session Release)

1. Integer number (U32)
2. The measurement name has the form OR.PDUSESSION.InterruptConfigProcolErrEmergencyHighPriAccess or OR.PDUSESSION.InterruptConfigProcolErrEmergencyHighPriAccess\_*Filter*. Where *Filter* is QoS and represents the mapped 5QI or QCI level.
3. NRCellCU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Interrupted PDU Session Resource configuration for emergency and high priority access by O-DU Error Detection

1. This counter provides the number of the PDU session resource configuration for emergency and high priority access interrupted by O-DU error detection. The measurement is optionally calculated per QoS (mapped 5QI or QCI in EN-DC).

##### CC

1. Measurement subcounter is incremented by 1 whenever the PDU session resource configuration for emergency and high priority access interrupted in the following interval by O-DU error detection, optionally calculated per QoS.

NOTE: multiple 5QIs can be set per PDU session, each 5QI is counted per QoS flow.

* + between RRC: RRC Setup Request (or RRC: RRC Resume Request) to NG-AP: Initial Context Setup Response (or RRC: RRC Resume Complete)
  + between Xn-AP: Handover Request to NG-AP: Path Switch Acknowledge (Inter gNB-CU HO w Xn)
  + between NG-AP: Handover Request to NG-AP: Path Switch Acknowledge (Inter gNB-CU HO w/o Xn)
  + between NG-AP: Handover Request to NG-AP: Handover Notify (Inter RAT HO to NR)
  + between NG-AP: PDU Session Resource Setup Request to NG-AP: PDU Session Resource Setup Response (PDU Session Establishment)
  + between NG-AP: PDU Session Resource Modify Request to NG-AP: PDU Session Resource Modify Response (PDU Session Modification)
  + between NG-AP: PDU Session Resource Release Request to NG-AP: PDU Session Resource Release Response (PDU Session Release)

1. Integer number (U32)
2. The measurement name has the form OR.PDUSESSION.InterruptConfigOduErrDetectEmergencyHighPriAccess or OR.PDUSESSION.InterruptConfigOduErrDetectEmergencyHighPriAccess \_*Filter*. Where *Filter* is QoS and represents the mapped 5QI or QCI level.
3. NRCellCU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Interrupted PDU Session Resource configuration for emergency and high priority access by O-CU internal Error

1. This counter provides the number of the PDU session resource configuration for emergency and high priority access interrupted by O-CU internal error. The measurement is optionally calculated per QoS (mapped 5QI or QCI in EN-DC).

##### CC

1. Measurement subcounter is incremented by 1 whenever the PDU session resource configuration for emergency and high priority access interrupted in the following interval by O-CU internal error, optionally calculated per QoS.

NOTE: multiple 5QIs can be set per PDU session, each 5QI is counted per QoS flow.

* + between RRC: RRC Setup Request (or RRC: RRC Resume Request) to NG-AP: Initial Context Setup Response (or RRC: RRC Resume Complete)
  + between Xn-AP: Handover Request to NG-AP: Path Switch Acknowledge (Inter gNB-CU HO w Xn)
  + between NG-AP: Handover Request to NG-AP: Path Switch Acknowledge (Inter gNB-CU HO w/o Xn)
  + between NG-AP: Handover Request to NG-AP: Handover Notify (Inter RAT HO to NR)
  + between NG-AP: PDU Session Resource Setup Request to NG-AP: PDU Session Resource Setup Response (PDU Session Establishment)
  + between NG-AP: PDU Session Resource Modify Request to NG-AP: PDU Session Resource Modify Response (PDU Session Modification)
  + between NG-AP: PDU Session Resource Release Request to NG-AP: PDU Session Resource Release Response (PDU Session Release)

1. Integer number (U32)
2. The measurement name has the form OR.PDUSESSION.InterruptConfigOcuInterErrEmergencyHighPriAccess or OR.PDUSESSION.InterruptConfigOcuInterErrEmergencyHighPriAccess\_*Filter*. Where *Filter* is QoS and represents the mapped 5QI or QCI level.
3. NRCellCU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

### Monitoring of mobility for SA

#### Accepted Handover

1. This counter provides the number of the accepted Intra RAT handover.

##### CC

1. Measurement subcounter is incremented by 1 whenever source gNB decides to perform Intra RAT HO procedure by the received (transmitted) following messages:
   * Intra-Cell HO: transmitted "RRC: RRC Reconfiguration"
   * HO procedure other than those above: received "RRC: Measurement report"
2. Integer number (U32)
3. OR.MOBILITY.AcceptHo
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Completed Handover

1. This counter provides the number of the completed Intra RAT handover.

##### CC

1. Measurement subcounter is incremented by 1 whenever source gNB detects successful Intra RAT handover procedure triggered by source gNB by the received following messages:
   * Intra-gNB HO: received "RRC: RRC Reconfiguration Complete"
   * HO procedure other than those above: received "XnAP:UE CONTEXT RELEASE" from the target gNB at Xn HO or "NGAP: UE CONTEXT RELEASE COMMAND" from AMF at NG HO
2. Integer number (U32)
3. OR.MOBILITY.CompHo
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Accepted Inter RAT Handover to LTE

1. This counter provides the number of the accepted Inter RAT Handover to LTE.

##### CC

1. Measurement subcounter is incremented by 1 whenever source gNB decides to perform Inter RAT HO to LTE procedure by the received following messages:

- received RRC: Measurement report (Inter RAT HO to LTE)

1. Integer number (U32)
2. OR.MOBILITY.AcceptHotoLte
3. NRCellCU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Completed Inter RAT Handover to LTE

1. This counter provides the number of the completed Inter RAT Handover to LTE.

##### CC

1. Measurement subcounter is incremented by 1 whenever source gNB detects successful handover procedure triggered by source gNB by the received following messages:

- received NG-AP: UE Context Release Command (Inter RAT HO to LTE)

1. Integer number (U32)
2. OR.MOBILITY.CompHotoLte
3. NRCellCU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Accepted EPS Fallback

1. This counter provides the number of the accepted EPS Fallback.

##### CC

1. Measurement subcounter is incremented by 1 whenever PCell decides to perform EPS Fallback procedure by the received following messages:

- received NG-AP: PDU Session Resource Modify Request (EPS Fallback)

1. Integer number (U32)
2. OR.MOBILITY.AcceptEpsFallback
3. NRCellCU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Completed EPS Fallback

1. This counter provides the number of the completed EPS Fallback.

##### CC

1. Measurement subcounter is incremented by 1 whenever PCell detects successful EPS Fallback procedure triggered by the received following messages:

- received NG-AP: UE Context Release Command (EPS Fallback)

1. Integer number (U32)
2. OR.MOBILITY.CompEpsFallback
3. NRCellCU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Normal interrupted EPS Fallback

1. This counter provides the number of the completed EPS Fallback.

##### CC

1. Measurement subcounter is incremented by 1 whenever PCell detects interrupted EPS Fallback procedure triggered by the received following messages:

- received NG-AP: UE Context Release Command (Cause:Deregister) during EPS Fallback procedure

1. Integer number (U32)
2. OR.MOBILITY.NormalInterruptedEpsFallback
3. NRCellCU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Accepted Handover during Voice call

1. This counter provides the number of the accepted Intra RAT handover during voice call.

##### CC

1. Measurement subcounter is incremented by 1 whenever source gNB decides to perform Intra RAT HO procedure by the received (transmitted) following messages during voice call:
   * transmitted RRC: RRC Reconfiguration (Intra-cell HO)
   * HO procedure other than those above: received RRC: Measurement report
2. Integer number (U32)
3. OR.MOBILITY.AcceptHoVoice
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Completed Handover during Voice call

1. This counter provides the number of the completed Intra RAT handover during voice call.

##### CC

1. Measurement subcounter is incremented by 1 whenever source gNB detects successful Intra RAT handover procedure triggered by source gNB by the received following messages during voice call:
   * received RRC: RRC Reconfiguration Complete (Intra gNB-CU Inter gNB-DU HO, Intra gNB-DU Inter-cell HO)
   * HO procedure other than those above: received Xn-AP: UE CONTEXT RELEASE (Inter gNB-CU HO w/ Xn), NG-AP: UE CONTEXT RELEASE COMMAND (Inter gNB-CU HO w/o Xn)
2. Integer number (U32)
3. OR.MOBILITY.CompHoVoice
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Accepted Inter RAT Handover to LTE during Voice call

1. This counter provides the number of the accepted Inter RAT handover to LTE during voice call.

##### CC

1. Measurement subcounter is incremented by 1 whenever source gNB decides to perform Inter RAT HO to LTE procedure by the received following messages during voice call:

- received RRC: Measurement report that triggers Inter RAT HO to LTE

1. Integer number (U32)
2. OR.MOBILITY.AcceptHotoLteVoice
3. NRCellCU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Completed Inter RAT Handover to LTE during Voice call

1. This counter provides the number of the completed Inter RAT handover during voice call.

##### CC

1. Measurement subcounter is incremented by 1 whenever source gNB detects successful Inter RAT handover procedure triggered by source gNB by the received following messages during voice call:

- received NG-AP: UE CONTEXT RELEASE COMMAND from the AMF at Inter RAT HO to LTE

1. Integer number (U32)
2. OR.MOBILITY.CompHotoLteVoice
3. NRCellCU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

### Monitoring of RRC re-establishment for SA

#### Number of initial RRC re-establishment requests when UE context can be retrieved

1. This counter provides the number of the received RRC: RRC Reestablishment Request messages via F1-C which is in the first time for each ReestabUE-Identity when UE context can be retrieved.

##### CC

1. Measurement counter is incremented by 1 whenever RRC: RRC Reestablishment Request message is received via F1-C when UE context can be retrieved, if RRC: RRC Reestablishment Request of the same ReestabUE-Identity is not received for a certain period of time from the reception timing.
2. Integer number (U32)
3. OR.REEST.IniReqUecontext
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of RRC re-establishment request completions for initial RRC re- establishment requests when UE context can be retrieved

1. This counter provides the number of the received RRC: RRC Reconfiguration Complete messages via F1-C which corresponds to the initial RRC: RRC Reestablishment Request when UE context can be retrieved.

##### CC

1. Measurement counter is incremented by 1 whenever RRC: RRC Reconfiguration Complete message which corresponds to the initial RRC: RRC Reestablishment Request is received via F1-C when UE context can be retrieved.
2. Integer number (U32)
3. OR.REEST.IniReqCompUecontext
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of retransmission RRC re-establishment requests when UE context can be retrieved

1. This counter provides the number of the received RRC: RRC Reestablishment Request messages via F1-C which is the retransmission for each ReestabUE-Identity when UE context can be retrieved.

##### CC

1. Measurement counter is incremented by 1 whenever RRC: RRC Reestablishment Request message is received via F1-C when UE context can be retrieved, if RRC: RRC Reestablishment Request message of the same ReestabUE-Identity is received for a certain period of time from the reception timing.
2. Integer number (U32)
3. OR.REEST.RetaransReqUecontext
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of RRC re-establishment request completions for retransmission RRC re- establishment request when UE context can be retrieved

1. This counter provides the number of the received RRC: RRC Reconfiguration Complete messages via F1-C which corresponds to the retransmission RRC: RRC Reestablishment Request when UE context can be retrieved.

##### CC

1. Measurement counter is incremented by 1 whenever RRC: RRC Reconfiguration Complete message which corresponds to the retransmission RRC: RRC Reestablishment Request is received via F1-C when UE context can be retrieved.
2. Integer number (U32)
3. OR.REEST.RetaransReqCompUecontext
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of initial RRC re-establishment requests when UE context cannot be retrieved

1. This counter provides the number of the received RRC: RRC Reestablishment Request messages via F1-C which is in the first time for each ReestabUE-Identity when UE context cannot be retrieved.

##### CC

1. Measurement counter is incremented by 1 whenever RRC: RRC Reestablishment Request message is received via F1-C when UE context cannot be retrieved, if RRC: RRC Reestablishment Request of the same ReestabUE-Identity is not received for a certain period of time from the reception timing.
2. Integer number (U32)
3. OR.REEST.IniReqNotUecontext
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of RRC re-establishment request completions for initial RRC re- establishment requests when UE context cannot be retrieved

1. This counter provides the number of the received RRC: RRC Reconfiguration Complete messages via F1-C which corresponds to the initial RRC: RRC Reestablishment Request when UE context cannot be retrieved.

##### CC

1. Measurement counter is incremented by 1 whenever RRC: RRC Setup Complete message which corresponds to the initial RRC: RRC Reestablishment Request is received via F1-C when UE context cannot be retrieved.
2. Integer number (U32)
3. OR.REEST.IniReqCompNotUecontext
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of retransmission RRC re-establishment requests when UE context cannot be retrieved

1. This counter provides the number of the received RRC: RRC Reestablishment Request messages via F1-C which is the retransmission for each ReestabUE-Identity when UE context cannot be retrieved.

##### CC

1. Measurement counter is incremented by 1 whenever RRC: RRC Reestablishment Request message is received via F1-C when UE context cannot be retrieved, if RRC: RRC Reestablishment Request message of the same ReestabUE-Identity is received for a certain period of time from the reception timing.
2. Integer number (U32)
3. OR.REEST.RetransReqNotUecontext
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of RRC re-establishment request completions for retransmission RRC re- establishment requests when UE context cannot be retrieved

1. This counter provides the number of the received RRC: RRC Reconfiguration Complete messages via F1-C which corresponds to the retransmission RRC: RRC Reestablishment Request when UE context cannot be retrieved.

##### CC

1. Measurement counter is incremented by 1 whenever RRC: RRC Reconfiguration Complete message which corresponds to the retransmission RRC: RRC Reestablishment Request is received via F1-C when UE context cannot be retrieved.
2. Integer number (U32)
3. OR.REEST.RetransReqCompNotUecontext
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of initial RRC re-establishment requests during Voice call when UE context can be retrieved

1. This counter provides the number of the received RRC: RRC Reestablishment Request messages via F1-C which is in the first time for each ReestabUE-Identity during voice call when UE context can be retrieved.

##### CC

1. Measurement counter is incremented by 1 whenever RRC: RRC Reestablishment Request message is received via F1-C during voice call when UE context can be retrieved, if RRC: RRC Reestablishment Request of the same ReestabUE- Identity is not received for a certain period of time from the reception timing.
2. Integer number (U32)
3. OR.REEST.IniReqUecontextVoice
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of RRC re-establishment request completions for initial RRC re- establishment requests during Voice call when UE context can be retrieved

1. This counter provides the number of the received RRC: RRC Reconfiguration Complete messages via F1-C which corresponds to the initial RRC: RRC Reestablishment Request during voice call when UE context can be retrieved.

##### CC

1. Measurement counter is incremented by 1 whenever RRC: RRC Reconfiguration Complete message which corresponds to the initial RRC: RRC Reestablishment Request is received via F1-C during voice call when UE context can be retrieved.
2. Integer number (U32)
3. OR.REEST.IniReqCompUecontextVoice
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of retransmission RRC re-establishment requests during Voice call when UE context can be retrieved

1. This counter provides the number of the received RRC: RRC Reestablishment Request messages via F1-C which is the retransmission for each ReestabUE-Identity during voice call when UE context can be retrieved.

##### CC

1. Measurement counter is incremented by 1 whenever RRC: RRC Reestablishment Request message is received via F1-C during voice call when UE context can be retrieved, if RRC: RRC Reestablishment Request message of the same ReestabUE-Identity is received for a certain period of time from the reception timing.
2. Integer number (U32)
3. OR.REEST.RetaransReqUecontextVoice
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of RRC re-establishment request completions for retransmission RRC re- establishment request during Voice call when UE context can be retrieved

1. This counter provides the number of the received RRC: RRC Reconfiguration Complete messages via F1-C which corresponds to the retransmission RRC: RRC Reestablishment Request during voice call when UE context can be retrieved.

##### CC

1. Measurement counter is incremented by 1 whenever RRC: RRC Reconfiguration Complete message which corresponds to the retransmission RRC: RRC Reestablishment Request is received via F1-C during voice call when UE context can be retrieved.
2. Integer number (U32)
3. OR.REEST.RetaransReqCompUecontextVoice
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

### Monitoring of connection status for SA

#### Normally Released Calls

1. This counter provides the number of the normally released calls.

##### CC

1. Measurement subcounter is incremented by the number of the normally released calls. Normal released calls is as follows:
   * received NG-AP: UE Context Release Command (Cause: Normal release or Deregister)
   * the expiry of a UE inactivity timer, the gNB release the RRC connection
2. Integer number (U32)
3. OR.CONNECTSTATUS.NormalRelCalls
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Abnormally Released Calls

1. This counter provides the number of the abnormally released calls.

##### CC

1. Measurement subcounter is incremented by the number of the abnormally released calls.

- Trigger timing: when gNB release the UE Context except for the Normally Released calls (A.2.13.1) and Another Cell HO UE Contexts (A.2.13.3).

1. Integer number (U32)
2. OR.CONNECTSTATUS.AbnormallRelCalls
3. NRCellCU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Another Cell HO UE Contexts

1. This counter provides the number of the UE Contexts which has transferred to another cell.

##### CC

1. Measurement subcounter is incremented by the number of the UE Contexts which has transferred to another cell. Another Cell released call is as follows:
   * received Xn-AP: UE Context Release (Inter gNB-CU HO w/ Xn, RRC Connection Re-establishment (Inter gNB- CU))
   * received NG-AP: UE Context Release Command (Inter gNB-CU HO w/o Xn, Inter-RAT HO to LTE, EPS fallback)
   * received RRC: RRC Reconfiguration Complete (Intra gNB-DU Inter-cell HO, RRC Connection Re-establishment (Intra gNB-DU Inter-cell))
   * received F1-AP: UE Context Release Command (Intra gNB-CU Inter gNB-DU HO, RRC Connection Re- establishment (Intra gNB-CU Inter gNB-DU))
2. Integer number (U32)
3. OR.CONNECTSTATUS.AnotherCellHoUes
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Normally Released Calls during voice call

1. This counter provides the number of the normally released calls during voice call.

##### CC

1. Measurement subcounter is incremented by the number of the normally released calls during voice call. Normal released calls are as follows:
   * received NG-AP: UE Context Release Command (Cause: Normal release or Deregister)
   * the expiry of a UE inactivity timer, the gNB release the RRC connection
2. Integer number (U32)
3. OR.CONNECTSTATUS.NormalRelCallsVoice
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Abnormally Released Calls during voice call

1. This counter provides the number of the abnormally released calls during voice call.

##### CC

1. Measurement subcounter is incremented by the number of the abnormally released calls during voice call.

- Trigger timing: when gNB release the UE Context except for the Normally Released calls (A.2.13.4) and Another Cell HO UE contexts (A.2.13.6) during voice call.

1. Integer number (U32)
2. OR.CONNECTSTATUS.AbnormalRelCallsVoice
3. NRCellCU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Another Cell HO UE Contexts during voice call

1. This counter provides the number of the UE Contexts which has transferred to another cell during voice call.

##### CC

1. Measurement subcounter is incremented by the number of the UE Contexts which has transferred to another cell during voice call. Another Cell released calls are as follows:
   * received Xn-AP: UE Context Release (Inter gNB-CU HO w/ Xn, RRC Connection Re-establishment (Inter gNB- CU))
   * received NG-AP: UE Context Release Command (Inter gNB-CU HO w/o Xn, Inter-RAT HO to LTE, EPS fallback)
   * received RRC: RRC Reconfiguration Complete (Intra gNB-DU Inter-cell HO, RRC Connection Re-establishment (Intra gNB-DU Inter-cell))
   * received F1-AP: UE Context Release Command (Intra gNB-CU Inter gNB-DU HO, RRC Connection Re- establishment (Intra gNB-CU Inter gNB-DU))
2. Integer number (U32)
3. OR.CONNECTSTATUS.AnotherCellHoUesVoice
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

### Monitoring of procedure for NR-DC

#### Number of S-NG-RAN Node Addition procedure attempted for each Cell

1. This counter provides the number of the transmitted Xn-AP: S-NODE ADDITION REQUEST ACKNOWLEDGE message.

##### CC

1. Measurement counter is incremented by 1 whenever Xn-AP: S-NODE ADDITION REQUEST ACKNOWLEDGE message is transmitted as PSCell.
2. Integer number (U32)
3. OR.NRDCPROCEDURE.SnAddAttemptCell
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of S-NG-RAN Node Addition procedure successfully for each Cell

1. This counter provides the number of the completed S-NG-RAN Node addition Procedure.

##### CC

1. Measurement counter is incremented by 1 whenever S-NG-RAN Node addition procedure is completed as PSCell (i.e. Xn-AP: S-NODE RECONFIGURATION COMPLETE message (SN addition complete) is received and RACH processing with UE Context is completed).
2. Integer number (U32)
3. OR.NRDCPROCEDURE.SnAddSuccessCell
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of S-NG-RAN Node Addition procedure attempted for each neighbour gNB

1. This counter provides the number of the transmitted Xn-AP: S-NODE ADDITION REQUEST ACKNOWLEDGE messages.

This counter is split into subcounters per neighbour gNB.

##### CC

1. Measurement subcounter is incremented by 1 whenever Xn-AP: S-NODE ADDITION REQUEST ACKNOWLEDGE message is transmitted when the gNB configured by the message is group of subcounter.*neighbourgNB.*
2. Integer number (U32)
3. OR.NRDCPROCEDURE.SnAddAttemptNeiGnb.*neighbourgNB* where *neighbourgNB* is neighbour gNB index: 0: #0

1: #1

...

63: #63

1. NRCellCU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of S-NG-RAN Node Addition procedure successfully for each neighbour gNB

1. This counter provides the number of the completed S-NG-RAN Node addition Procedure.

This counter is split into subcounters per neighbour gNB.

##### CC

1. Measurement counter is incremented by 1 whenever S-NG-RAN Node addition procedure is completed (i.e. Xn-AP: S- NODE RECONFIGURATION COMPLETE message (SN addition complete) is received and RACH processing with UE Context is completed) when the gNB configured by the message is group of subcounter.*neighbourgNB.*
2. Integer number (U32)
3. OR.NRDCPROCEDURE.SnAddSuccessNeiGnb.*neighbourgNB* where *neighbourgNB* is neighbour gNB index: 0: #0

1: #1

...

63: #63

1. NRCellCU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of S-NG-RAN Node modification procedure attempted for each Cell

1. This counter provides the number of the received Xn-AP: S-NODE MODIFICATION REQUEST messages or transmitted Xn-AP: S-NODE MODIFICATION REQUIRED messages.

##### CC

1. Measurement subcounter is incremented by 1 whenever Xn-AP: S-NODE MODIFICATION REQUEST message is received or Xn-AP: S-NODE MODIFICATION REQUIRED message is transmitted as PSCell.

Double counting is not performed if the procedure is changed to the MN initiated SN Modification procedure after transmitted Xn-AP: S-NODE MODIFICATION REQUIRED message (e.g. Measurement gap Coordination (SN initiated)).

This subcounter will not be incremented if received Xn-AP: S-NODE MODIFICATION REQUEST message which True is set for SCG Configuration Query IE.

1. Integer number (U32)
2. OR.NRDCPROCEDURE.SnModAttemptCell
3. NRCellCU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of S-NG-RAN Node modification procedure successfully for each Cell

1. This counter provides the number of the completed S-NG-RAN Node modification Procedure.

##### CC

1. Measurement subcounter is incremented by 1 whenever SN Modification procedure is completed as PSCell (i.e. Xn-AP: S-NODE RECONFIGURATION COMPLETE message (SN modification complete) is received or Xn-AP: S-NODE MODIFICATION CONFIRM is received and RACH processing with UE Context is completed)
2. Integer number (U32)
3. OR.NRDCPROCEDURE.SnModSuccessCell
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of S-NG-RAN Node modification procedure attempted for each neighbour gNB

1. This counter provides the number of the received Xn-AP: S-NODE MODIFICATION REQUEST messages or transmitted Xn-AP: S-NODE MODIFICATION REQUIRED messages.

This counter is split into subcounters per neighbour gNB.

##### CC

1. Measurement subcounter is incremented by 1 whenever Xn-AP: S-NODE MODIFICATION REQUEST message is received or Xn-AP: S-NODE MODIFICATION REQUIRED message is transmitted, when the gNB configured by the message is group of subcounter.*neighbourgNB.*

Double counting is not performed if the procedure is changed to the MN initiated SN Modification procedure after transmitted Xn-AP: S-NODE MODIFICATION REQUIRED message (e.g. Measurement gap Coordination (SN initiated)).

This subcounter will not be incremented if received Xn-AP: S-NODE MODIFICATION REQUEST message which True is set for SCG Configuration Query IE.

1. Integer number (U32)
2. OR.NRDCPROCEDURE.SnModAttemptNeiGnb.*neighbourgNB* where *neighbourgNB* is neighbour gNB index: 0: #0

1: #1

...

63: #63

1. NRCellCU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of S-NG-RAN Node modification procedure successfully for each neighbour gNB

1. This counter provides the number of the completed S-NG-RAN Node modification Procedure.

This counter is split into subcounters per neighbour gNB.

##### CC

1. Measurement subcounter is incremented by 1 whenever SN Modification procedure is completed (i.e. Xn-AP: S-NODE RECONFIGURATION COMPLETE message (SN modification complete) is received or Xn-AP: S-NODE MODIFICATION CONFIRM is received and RACH processing with UE Context is completed) when the gNB configured by the message is group of subcounter.*neighbourgNB.*
2. Integer number (U32)
3. OR.NRDCPROCEDURE.SnModSuccessNeiGnb.*neighbourgNB* where *neighbourgNB* is neighbour gNB index: 0: #0

1: #1

...

63: #63

1. NRCellCU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of S-NG-RAN Node Release procedure attempted for each Cell

1. This counter provides the number of the received Xn-AP: S-NODE RELEASE REQUIRED messages or transmitted Xn- AP: S-NODE RELEASE REQUEST messages.

##### CC

1. Measurement subcounter is incremented by 1 whenever Xn-AP: S-NODE RELEASE REQUIRED message is received or Xn-AP: S-NODE RELEASE REQUEST message is transmitted as PSCell.
2. Integer number (U32)
3. OR.NRDCPROCEDURE.SnRelAttemptCell
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of S-NG-RAN Node Release procedure successfully for each Cell

1. This counter provides the number of the completed S-NG-RAN Node Release Procedure.

##### CC

1. Measurement subcounter is incremented by 1 whenever SN Release procedure is completed as PSCell (i.e. Xn-AP: UE CONTEXT RELEASE message is transmitted
2. Integer number (U32)
3. OR.NRDCPROCEDURE.SnRelSuccessCell
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of S-NG-RAN Node Release procedure attempted for each neighbour gNB

1. This counter provides the number of the received Xn-AP: S-NODE RELEASE REQUIRED messages or transmitted Xn- AP: S-NODE RELEASE REQUEST messages.

This counter is split into subcounters per neighbour gNB.

##### CC

1. Measurement subcounter is incremented by 1 whenever Xn-AP: S-NODE RELEASE REQUIRED message is received or Xn-AP: S-NODE RELEASE REQUEST message is transmitted, when the gNB configured by the message is group of subcounter.*neighbourgNB.*
2. Integer number (U32)
3. OR.NRDCPROCEDURE.SnRelAttemptNeiGnb.*neighbourgNB* where *neighbourgNB* is neighbour gNB index: 0: #0

1: #1

...

63: #63

1. NRCellCU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of S-NG-RAN Node Release procedure successfully for each neighbour gNB

1. This counter provides the number of the completed S-NG-RAN Node Release Procedure. This counter is split into subcounters per neighbour gNB.

##### CC

1. Measurement subcounter is incremented by 1 whenever SN Release procedure is completed (i.e. Xn-AP: UE CONTEXT RELEASE message is transmitted)
2. Integer number (U32)
3. OR.NRDCPROCEDURE.SnRelSuccessNeiGnb.*neighbourgNB* where *neighbourgNB* is neighbour gNB index: 0: #0

1: #1

...

63: #63

1. NRCellCU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of SCGFailureInformation received

1. This counter provides the number of SCGFailureInformation received.

##### CC

1. Measurement subcounter is incremented by 1 whenever RRC: SCG Failure Information message is received.
2. Integer number (U32)
3. OR.NRDCPROCEDURE.NumFailInfoRec
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

### Monitoring of CA for SA

#### Number of SCell Addition procedure attempted

1. This counter provides the number of the attempted SCell addition procedure.

##### CC

1. Measurement subcounter is incremented by 1 whenever PCell decides to perform SCell addition procedure by the following trigger.
   * received RRC: Measurement report for SCell addition.
   * SCell addition triggered internal the gNB other than above trigger.
2. Integer number (U32)
3. OR.SACAPROCEDURE.ScellAddAttempt
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of SCell Addition procedure successfully

1. This counter provides the number of the completed SCell addition procedure.

##### CC

1. Measurement subcounter is incremented by 1 whenever PCell detects successful SCell addition procedure by the received following messages.

- received RRC: RRC Reconfiguration Complete for SCell addition.

1. Integer number (U32)
2. OR.SACAPROCEDURE.ScellAddSuccess
3. NRCellCU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of SCell Change procedure attempted

1. This counter provides the number of the attempted SCell change procedure.

##### CC

1. Measurement subcounter is incremented by 1 whenever PCell decides to perform SCell change procedure by the following trigger.
   * received RRC: Measurement report for SCell change.
   * SCell change triggered internal the gNB other than above trigger.
2. Integer number (U32)
3. OR.SACAPROCEDURE.ScellChangeAttempt
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of SCell Change procedure successfully

1. This counter provides the number of the completed SCell change procedure.

##### CC

1. Measurement subcounter is incremented by 1 whenever PCell detects successful SCell change procedure by the received following messages.

- received RRC: RRC Reconfiguration Complete for SCell change.

1. Integer number (U32)
2. OR.SACAPROCEDURE.ScellChangeSuccess
3. NRCellCU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of SCell Deletion procedure attempted

1. This counter provides the number of the attempted SCell deletion procedure.

##### CC

1. Measurement subcounter is incremented by 1 whenever PCell decides to perform SCell deletion procedure by the following trigger.
   * received RRC: Measurement report for SCell deletion.
   * SCell deletion triggered internal the gNB other than above trigger.
2. Integer number (U32)
3. OR.SACAPROCEDURE.ScellDeletionAttempt
4. NRCellCU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Number of SCell Deletion procedure successfully

1. This counter provides the number of the completed SCell deletion procedure.

##### CC

1. Measurement subcounter is incremented by 1 whenever PCell detects successful SCell deletion procedure by the received following messages.

- received RRC: RRC Reconfiguration Complete for SCell deletion.

1. Integer number (U32)
2. OR.SACAPROCEDURE.ScellDeletionSuccess
3. NRCellCU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

## O-CU-UP Performance measurements

### NR PDCP performance measurements (Type A)

#### Distribution of UE per UL received data volume

1. This counter provides the distribution of the UE per received uplink data volume. When more than one RLCs are configured, the data volume refers to all volume regardless through which RLC the data is transferred.

The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC) and per S-NSSAI.

##### CC

1. If O-CU connects 5GC, the measurement is the number of the QoS flow of which x is mapped to bin of subcounter.*binX*. If O-CU connects EPC, the measurement is the number of the bearer of which x is mapped to the bin of subcounter.*binX.* The number, x is acquired and calculated at the end of measurement period (100ms).

x is incremented by the volume of the UL PDCP PDU volume whenever the UL PDCP PDU is received from lower layer, and optionally when the UL PDCP PDU is mapped to the filter.

1. Integer (U16)
2. The measurement name has the form OR.PDCPA.DistUeUlRxData.*binX* or OR.PDCPA.DistUeUlRxData.*binX*\_*Filter*. Where *Filter* is a combination of QoS level and SNSSAI. Where QoS represents the mapped 5QI or QCI level, SNSSAI represents S-NSSAI, and where *binX* is the bin of the throughput, x:

bin 1: 0 Byte < x < 1 kByte

bin 2: 1 kByte <= x < 2 kByte

bin 3: 2 kByte <= x < 5 kByte

bin 4: 5 kByte <= x < 10 kByte

bin 5: 10 kByte <= x < 20 kByte

bin 6: 20 kByte <= x < 50 kByte

bin 7: 50 kByte <= x < 100 kByte

bin 8: 100 kByte <= x < 200 kByte

bin 9: 200 kByte <= x < 500 kByte

bin 10: 500 kByte <= x < 1 MByte

bin 11: 1 MByte <= x < 1.5 MByte

bin 12: 1.5 MByte <= x < 2 MByte

bin 13: 2 MByte <= x < 2.5 MByte

bin 14: 2.5 MByte <= x < 3 MByte

bin 15: 3 MByte <= x < 3.5 MByte

bin 16: 3.5 MByte <= x < 4 MByte

bin 17: 4 MByte <= x < 4.5 MByte

bin 18: 4.5 MByte <= x < 5 MByte

bin 19: 5 MByte <= x < 10 MByte

bin 20: 10 MByte <= x

1. GNBCUUPFunction
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Distribution of DL UE throughput in O-CU

1. This counter provides the distribution of the UE throughput in downlink. When more than one RLCs are configured, the data volume refers to the all volume regardless through which RLC the data is transferred.

The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC) and per S-NSSAI.

##### CC

1. If O-CU connects 5GC, the measurement is the number of the QoS flow of which throughput, x/y is mapped to bin of subcounter.*binX*.

If O-CU connects EPC, the measurement is the number of the bearer of which throughput, x/y is mapped to bin of subcounter.*binX*.

The number, x/y is acquired and calculated at the end of measurement period.

x is incremented by the volume of the DL PDCP PDU volume which is acknowledged by the DDDS whenever DDDS is received, and optionally when PDCP PDU is mapped to the filter.

y is the smaller value in the followings:

- y = ?(y1 - y2):

where y1 is the point in time after y2 when data up until the second last piece of data in the transmitted data burst

which emptied the PDCP SDU available for transmission for the filterable group was successfully transmitted, as acknowledged by the UE, and where y2 is the point in time when the first transmission begins after a PDCP SDU becomes available for transmission, where previously no PDCP SDUs were available for transmission for the particular filter.

- The measurement report period is 60000 ms.

1. Integer (U16)
2. The measurement name has the form OR.PDCPA.DistDlUeThroughput.*binX* or OR.PDCPA.DistDlUeThroughput.*binX*

\_*Filter*. Where *Filter* is a combination of QoS level and SNSSAI. Where QoS represents the mapped 5QI or QCI level, SNSSAI represents S-NSSAI, and where *binX* is the bin of the throughput, x/y:

bin 1: 0 Mbps <= x/y < 1 Mbps

bin 2: 1 Mbps <= x/y < 2 Mbps

bin 3: 2 Mbps <= x/y < 5 Mbps

bin 4: 5 Mbps <= x/y < 10 Mbps

bin 5: 10 Mbps <= x/y < 20 Mbps

bin 6: 20 Mbps <= x/y < 50 Mbps

bin 7: 50 Mbps <= x/y < 100 Mbps

bin 8: 100 Mbps <= x/y < 200 Mbps

bin 9: 200 Mbps <= x/y < 500 Mbps

bin 10: 500 Mbps <= x/y < 1 Gbps

bin 11: 1 Gbps <= x/y < 1.5 Gbps

bin 12: 1.5 Gbps <= x/y < 2 Gbps

bin 13: 2 Gbps <= x/y < 2.5 Gbps

bin 14: 2.5 Gbps <= x/y < 3 Gbps

bin 15: 3 Gbps <= x/y < 3.5 Gbps

bin 16: 3.5 Gbps <= x/y < 4 Gbps

bin 17: 4 Gbps <= x/y < 4.5 Gbps

bin 18: 4.5 Gbps <= x/y < 5 Gbps

bin 19: 5 Gbps <= x/y < 10 Gbps

bin 20: 10 Gbps <= x/y

1. GNBCUUPFunction
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Total discarded UL PDCP SDU volume

1. This counter provides the UL PDCP SDU volume discarded at PDCP due to any cause.

The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC) and per S-NSSAI.

##### CC

1. The measurement counter is incremented by the volume of the UL PDCP SDU whenever the UL PDCP SDU volume is discarded, and optionally when the UL PDCP SDU is mapped to the filter.
2. Each measurement is an integer value representing the volume discarded in kilobits.
3. The measurement name has the form OR.PDCPA.TotalDiscardedUlPdcpSduVol or OR.PDCPA.TotalDiscardedUlPdcpSduVol \_*Filter*. Where *Filter* is a combination of QoS level and SNSSAI. Where QoS represents the mapped 5QI or QCI level and SNSSAI represents S-NSSAI.
4. GNBCUUPFunction
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### UL PDCP SDU volume discarded due to bearer release

1. This counter provides the UL PDCP SDU volume discarded at PDCP due to bearer release.

The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC) and per S-NSSAI.

##### CC

1. The measurement counter is incremented by the volume of the UL PDCP SDU whenever the UL PDCP SDU volume is discarded due to bearer release, and optionally when the UL PDCP SDU is mapped to the filter.
2. Each measurement is an integer value representing the volume discarded in kilobits.
3. The measurement name has the form OR.PDCPA.UlPdcpSduVolDiscardBearerRel, or OR.PDCPA.UlPdcpSduVolDiscardBearerRel*\_Filter*. Where *Filter* is a combination of QoS level and SNSSAI. Where QoS represents the mapped 5QI or QCI level, SNSSAI represents S-NSSAI.
4. GNBCUUPFunction
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Total discarded DL PDCP SDU volume discarded

1. This counter provides the DL PDCP SDU volume discarded at PDCP due to any causes.

The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC) and per S-NSSAI.

##### CC

1. The measurement counter is incremented by the volume of the DL PDCP SDU whenever the DL PDCP SDU volume is discarded, and optionally when the DL PDCP SDU is mapped to the filter.
2. Each measurement is an integer value representing the volume discarded in kilobits.
3. The measurement name has the form OR.PDCPA.TotalDiscardedDlPdcpSduVol, or OR.PDCPA.TotalDiscardedDlPdcpSduVol\_*Filter*. Where *Filter* is a combination of QoS level, SNSSAI. Where QoS represents the mapped 5QI or QCI level, SNSSAI represents S-NSSAI..
4. GNBCUUPFunction
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### DL PDCP SDU volume discarded due to bearer release

1. This counter provides the DL PDCP SDU volume discarded at PDCP due to bearer release.

The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC) and per S-NSSAI.

##### CC

1. The measurement counter is incremented by the volume of the DL PDCP SDU whenever the DL PDCP SDU volume is discarded due to bearer release, and optionally when the DL PDCP SDU is mapped to the filter.
2. Each measurement is an integer value representing the volume discarded in kilobits.
3. The measurement name has the form OR.PDCPA.DlPdcpSduVolDiscardLessBearerRel, or OR.PDCPA.DlPdcpSduVolDiscardLessBearerRel\_*Filter*. Where *Filter* is a combination of QoS level and SNSSAI. Where QoS represents the mapped 5QI or QCI level, SNSSAI represents S-NSSAI.
4. GNBCUUPFunction
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### DL PDCP SDU volume discarded due to out of memory

1. This counter provides the DL PDCP SDU volume discarded at PDCP due to out of memory.

The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC) and per S-NSSAI.

##### CC

1. The measurement counter is incremented by the volume of the DL PDCP SDU whenever the DL PDCP SDU volume is discarded due to out of memory, and optionally when the DL PDCP SDU is mapped to the filter.
2. Each measurement is an integer value representing the volume discarded in kilobits.
3. The measurement name has the form OR.PDCPA.DlPdcpSduVolDiscardOthercauses, or optionally OR.PDCPA.DlPdcpSduVolDiscardOthercauses\_*Filter*. Where *Filter* is a combination of QoS level and SNSSAI. Where QoS represents the mapped 5QI or QCI level, SNSSAI represents S-NSSAI.
4. GNBCUUPFunction
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### PDCP transmission stop

1. This counter provides the number of the detection of PDCP transmission stop.

The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC) and per S-NSSAI.

##### CC

1. The measurement counter is incremented by 1 whenever PDCP transmission stop is occurred, and optionally when the PDCP SDU is mapped to the filter. It is incremented by 1 at most in each filter for one radio bearer until the transmission stop is resolved.
2. Integer (U16)
3. The measurement name has the form OR.PdcpTxStop, or optionally OR.PdcpTxStop\_*Filter*. Where *Filter* is a combination of QoS level and SNSSAI. Where QoS represents the mapped 5QI or QCI level, SNSSAI represents S- NSSAI
4. GNBCUUPFunction
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### UL F1-U packet loss rate

1. Refer to 3GPP TS 28.552 [2] clause 5.1.3.1.2 O-RAN addition:

The split into subcounters per S-NSSAI is recommended when the Slicing feature is supported.

The split into subcounters per QoS is recommended where QoS identifies the target quality of service class.

1. Refer to 3GPP TS 28.552 [2] clause 5.1.3.1.2
2. Refer to 3GPP TS 28.552 [2] clause 5.1.3.1.2 O-RAN addition:

The numbers are accumulated in the reference measurement period T (1000ms).

1. Refer to 3GPP TS 28.552 [2] clause 5.1.3.1.2
2. Refer to 3GPP TS 28.552 [2] clause 5.1.3.1.2
3. Refer to 3GPP TS 28.552 [2] clause 5.1.3.1.2
4. Refer to 3GPP TS 28.552 [2] clause 5.1.3.1.2
5. Refer to 3GPP TS 28.552 [2] clause 5.1.3.1.2
6. Refer to 3GPP TS 28.552 [2] clause 5.1.3.1.2

#### UL PDCP SDU Loss Rate

1. Refer to 3GPP TS 28.552 [2] clause 5.1.3.1.1
2. Refer to 3GPP TS 28.552 [2] clause 5.1.3.1.1
3. Refer to 3GPP TS 28.552 [2] clause 5.1.3.1.1 O-RAN addition:

The numbers are accumulated in the reference measurement period T (1000ms).

1. Refer to 3GPP TS 28.552 [2] clause 5.1.3.1.1
2. Refer to 3GPP TS 28.552 [2] clause 5.1.3.1.1
3. Refer to 3GPP TS 28.552 [2] clause 5.1.3.1.1
4. Refer to 3GPP TS 28.552 [2] clause 5.1.3.1.1
5. Refer to 3GPP TS 28.552 [2] clause 5.1.3.1.1
6. Refer to 3GPP TS 28.552 [2] clause 5.1.3.1.1

#### DL PDCP SDU Loss Rate

1. Refer to 3GPP TS 28.552 [2] clause 5.1.3.2.1
2. Refer to 3GPP TS 28.552 [2] clause 5.1.3.2.1
3. Refer to 3GPP TS 28.552 [2] clause 5.1.3.2.1 O-RAN addition:

The numbers are accumulated in the reference measurement period T (1000ms).

1. Refer to 3GPP TS 28.552 [2] clause 5.1.3.2.1
2. Refer to 3GPP TS 28.552 [2] clause 5.1.3.2.1
3. Refer to 3GPP TS 28.552 [2] clause 5.1.3.2.1
4. Refer to 3GPP TS 28.552 [2] clause 5.1.3.2.1
5. Refer to 3GPP TS 28.552 [2] clause 5.1.3.2.1
6. Refer to 3GPP TS 28.552 [2] clause 5.1.3.2.1

#### DL F1-U packet loss rate

1. Refer to 3GPP TS 28.552 [2] clause 5.1.3.1.3 O-RAN addition:

The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC) and per S-NSSAI.

1. Refer to 3GPP TS 28.552 [2] clause 5.1.3.1.3
2. Refer to 3GPP TS 28.552 [2] clause 5.1.3.1.3 O-RAN addition:

The numbers are accumulated in the reference measurement period T (1000ms).

1. Refer to 3GPP TS 28.552 [2] clause 5.1.3.1.3
2. Refer to 3GPP TS 28.552 [2] clause 5.1.3.1.3
3. Refer to 3GPP TS 28.552 [2] clause 5.1.3.1.3
4. Refer to 3GPP TS 28.552 [2] clause 5.1.3.1.3
5. Refer to 3GPP TS 28.552 [2] clause 5.1.3.1.3
6. Refer to 3GPP TS 28.552 [2] clause 5.1.3.1.3

### NR PDCP performance measurements (Type B)

#### UL PDCP SDU Data Volume

1. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.2 O-RAN addition:

The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC) and per S-NSSAI.

1. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.2
2. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.2 O-RAN addition:

NOTE: excludes UL PDCP SDU received as data forwarding.

1. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.2
2. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.2 O-RAN addition:

The measurement name has the form OR.PDCPB.UlPdcpSduDataVol, or optionally OR.PDCPB.UlPdcpSduDataVol\_*Filter*. Where *Filter* is a combination of QoS level and SNSSAI. Where QoS represents the mapped 5QI or QCI level, SNSSAI represents S-NSSAI.

1. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.2
2. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.2
3. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.2
4. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.2

#### UL PDCP SDU Data Volume on X2 Interface

1. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.4 O-RAN addition:

The measurement is for X2 interface.

The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC) and per S-NSSAI.

1. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.4
2. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.4 O-RAN addition:

The measurement is for X2 interface.

NOTE: excludes UL PDCP SDU received as data forwarding.

1. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.4
2. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.4 O-RAN addition:

The measurement name has the form OR.PDCPB.UlPdcpSduDataVolX2, or optionally OR.PDCPB.UlPdcpSduDataVolX2\_*Filter*. Where *Filter* is a combination of QoS level and SNSSAI. Where QoS represents the mapped 5QI or QCI level, SNSSAI represents S-NSSAI.

1. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.4
2. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.4
3. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.4
4. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.4

#### UL PDCP SDU Data Volume on Xn Interface

1. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.4 O-RAN addition:

The measurement is for Xn interface.

The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC) and per S-NSSAI..

1. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.4
2. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.4 O-RAN addition:

The measurement is for Xn interface.

NOTE: excludes UL PDCP SDU received as data forwarding.

1. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.4
2. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.4 O-RAN addition:

The measurement name has the form OR.PDCPB.UlPdcpSduDataVolXn, or optionally OR.PDCPB.UlPdcpSduDataVolXn\_*Filter*. Where *Filter* is a combination of QoS level and SNSSAI. Where QoS represents the mapped 5QI or QCI level, SNSSAI represents S-NSSAI.

1. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.4
2. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.4
3. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.4
4. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.4

#### DL PDCP SDU Data Volume

1. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.1 O-RAN addition:

The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC) and per S-NSSAI.

1. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.1
2. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.1 O-RAN addition:

NOTE: excludes DL PDCP SDU transmitted as data forwarding.

1. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.1
2. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.1 O-RAN addition:

The measurement name has the form OR.PDCPB.DlPdcpSduDataVol, or optionally OR.PDCPB.DlPdcpSduDataVol\_*Filter*. Where *Filter* is a combination of QoS level and SNSSAI. Where QoS represents the mapped 5QI or QCI level, SNSSAI represents S-NSSAI.

1. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.1
2. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.1
3. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.1
4. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.1

#### DL PDCP SDU Data Volume on X2 Interface

1. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.3 O-RAN addition:

The measurement is for X2 interface.

The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC) and per S-NSSAI.

1. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.3
2. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.3 O-RAN addition:

The measurement is for X2 interface.

NOTE: excludes DL PDCP SDU transmitted as data forwarding.

1. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.3
2. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.3 O-RAN addition:

The measurement name has the form OR.PDCPB.DlPdcpSduDataVolX2, or optionally

OR.PDCPB.DlPdcpSduDataVolX2\_*Filter*. Where *Filter* is a combination of QoS level and SNSSAI. Where QoS represents the mapped 5QI or QCI level, SNSSAI represents S-NSSAI.

1. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.3
2. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.3
3. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.3
4. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.3

#### DL PDCP SDU Data Volume on Xn Interface

1. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.3

O-RAN addition:

The measurement is for Xn interface.

The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC) and per S-NSSAI.

1. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.3
2. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.3 O-RAN addition:

The measurement is for Xn interface.

NOTE: excludes DL PDCP SDU transmitted as data forwarding.

1. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.3
2. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.3 O-RAN addition:

The measurement name has the form OR.PDCPB.DlPdcpSduDataVolXn, or optionally OR.PDCPB.DlPdcpSduDataVolXn\_*Filter*. Where *Filter* is a combination of QoS level and SNSSAI. Where QoS represents the mapped 5QI or QCI level, SNSSAI represents S-NSSAI.

1. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.3
2. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.3
3. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.3
4. Refer to 3GPP TS 28.552 [2] clause 5.1.3.6.2.3

#### UL PDCP SDU Data Volume per cell

1. This counter provides the UL PDCP SDU volume received via X2, Xn or F1.

The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC) and per S-NSSAI.

##### CC

1. The measurement is incremented by the volume of UL PDCP SDU whenever the UL PDCP PDU is received via X2-U, Xn-U or F1-U UL GTP-u tunnel, and optionally when the UL PDCP SDU is mapped to the filter.

NOTE: excludes UL PDCP SDU received as data forwarding.

1. Mbit (U32)
2. The measurement name has the form OR.PDCPB.UlPdcpSduDataVolCell, or optionally OR.PDCPB.UlPdcpSduDataVolCell\_*Filter*. Where *Filter* is a combination of QoS level and SNSSAI. Where QoS represents the mapped 5QI or QCI level, SNSSAI represents S-NSSAI.
3. NRCellCU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### UL PDCP SDU Data Volume on X2 Interface per cell

1. This counter provides the UL PDCP SDU volume received via X2.

The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC) and per S-NSSAI.

##### CC

1. The measurement is incremented by the volume of UL PDCP SDU whenever the UL PDCP PDU is received via X2-U UL GTP-u tunnel, and optionally when the UL PDCP SDU is mapped to the filter.

NOTE: excludes UL PDCP SDU received as data forwarding.

1. Mbit (U32)
2. The measurement name has the form OR.PDCPB.UlPdcpSduDataVolX2Cell, or optionally OR.PDCPB.UlPdcpSduDataVolX2Cell\_*Filter*. Where *Filter* is a combination of QoS level and SNSSAI. Where QoS represents the mapped 5QI or QCI level, SNSSAI represents S-NSSAI.
3. NRCellCU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### UL PDCP SDU Data Volume on Xn Interface per cell

1. This counter provides the UL PDCP SDU volume received via Xn.

The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC) and per S-NSSAI.

##### CC

1. The measurement is incremented by the volume of UL PDCP SDU whenever the UL PDCP PDU is received via Xn-U UL GTP-u tunnel, and optionally when the UL PDCP SDU is mapped to the filter.

NOTE: excludes UL PDCP SDU received as data forwarding.

1. Mbit (U32)
2. The measurement name has the form OR.PDCPB.UlPdcpSduDataVolXnCell, or optionally OR.PDCPB.UlPdcpSduDataVolXnCell\_*Filter*. Where *Filter* is a combination of QoS level and SNSSAI. Where QoS represents the mapped 5QI or QCI level, SNSSAI represents S-NSSAI.
3. NRCellCU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### DL PDCP SDU Data Volume per cell

1. This counter provides the DL PDCP SDU volume transmitted via X2, Xn or F1.

The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC) and per S-NSSAI.

##### CC

1. The measurement is incremented by the volume of DL PDCP SDU whenever the DL PDCP PDU is transmitted via X2- U, Xn-U or F1-U DL GTP-u tunnel, and optionally when the DL PDCP SDU is mapped to the filter.

NOTE: excludes DL PDCP SDU transmitted as data forwarding.

1. Mbit (U32)
2. The measurement name has the form OR.PDCPB.DlPdcpSduDataVolCell, or optionally OR.PDCPB.DlPdcpSduDataVolCell\_*Filter*. Where *Filter* is a combination of QoS level and SNSSAI. Where QoS represents the mapped 5QI or QCI level, SNSSAI represents S-NSSAI.
3. NRCellCU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### DL PDCP SDU Data Volume on X2 Interface per cell

1. This counter provides the DL PDCP SDU volume transmitted via X2.

The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC) and per S-NSSAI.

##### CC

1. The measurement is incremented by the volume of DL PDCP SDU whenever the DL PDCP PDU is transmitted via X2-U DL GTP-u tunnel, and optionally when the DL PDCP SDU is mapped to the filter.

NOTE: excludes DL PDCP SDU transmitted as data forwarding.

1. Mbit (U32)
2. The measurement name has the form OR.PDCPB.DlPdcpSduDataVolX2Cell, or optionally OR.PDCPB.DlPdcpSduDataVolX2Cell\_*Filter*. Where *Filter* is a combination of QoS level and SNSSAI. Where QoS represents the mapped 5QI or QCI level, SNSSAI represents S-NSSAI.
3. NRCellCU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### DL PDCP SDU Data Volume on Xn Interface per cell

1. This counter provides the DL PDCP SDU volume transmitted via Xn.

The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC) and per S-NSSAI.

##### CC

1. The measurement is incremented by the volume of DL PDCP SDU whenever the DL PDCP PDU is transmitted via Xn-U DL GTP-u tunnel, and optionally when the DL PDCP SDU is mapped to the filter.

NOTE: excludes DL PDCP SDU transmitted as data forwarding.

1. Mbit (U32)
2. The measurement name has the form OR.PDCPB.DlPdcpSduDataVolXnCell, or optionally OR.PDCPB.DlPdcpSduDataVolXnCell\_*Filter*. Where *Filter* is a combination of QoS level and SNSSAI. Where QoS represents the mapped 5QI or QCI level, SNSSAI represents S-NSSAI.
3. NRCellCU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

### NR S1-U Interface Performance Measurements

#### UL PDCP SDU volume transmitted via S1-U UL GTP-U tunnel

1. This counter provides the UL PDCP SDU volume transmitted via S1-U UL GTP-U tunnel

The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC) and per S-NSSAI.

##### CC

1. The measurement is incremented by the volume of UL PDCP SDU whenever the UL PDCP SDU is transmitted via S1-U UL GTP-u tunnel, and optionally when the UL PDCP SDU is mapped to the filter. S1 interface is defined in 3GPP TS

36.413 [i.3], clause 8.

1. Each measurement is an integer value representing the volume transmitted in kilobits.
2. The measurement name has the form OR.S1.UlPdcpSduVolTxS1UUl, or optionally OR.S1.UlPdcpSduVolTxS1UUl\_*Filter*. Where *Filter* is a combination of QoS level and SNSSAI. Where QoS represents the mapped 5QI or QCI level, SNSSAI represents S-NSSAI.
3. GNBCUUPFunction
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### DL PDCP SDU volume received via S1-U DL GTP-U tunnel

1. This counter provides the DL PDCP SDU volume received via S1-U DL GTP-U tunnel.

The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC) and per S-NSSAI.

##### CC

1. The measurement is incremented by the volume of DL PDCP SDU whenever the DL PDCP SDU is received via S1-U DL GTP-u tunnel, and optionally when the DL PDCP SDU is mapped to the filter. S1 interface is defined in 3GPP TS

36.413 [i.3], clause 8.

1. Each measurement is an integer value representing the volume received in kilobits.
2. The measurement name has the form OR.S1.DlPdcpSduVolRxS1UDl, or optionally OR.S1.DlPdcpSduVolRxS1UDl\_*Filter*. Where *Filter* is a combination of QoS level and SNSSAI. Where QoS represents the mapped 5QI or QCI level, SNSSAI represents S-NSSAI.
3. GNBCUUPFunction
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### UL PDCP SDUs transmitted via S1-U UL GTP-U tunnel

1. This counter provides the number of the UL PDCP SDUs transmitted via S1-U UL GTP-U tunnel.

The counter is split into subcounters per GTP Path. The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC) and per S-NSSAI.

##### CC

1. The measurement is incremented by 1 whenever the UL PDCP SDU is transmitted via S1 U UL GTP-u tunnel.

Optionally, the GTP Path filter is calculated, where the number of measurements is accumulated per the number of supported GTP Path, and additionally per filter.

1. Integer number (U32)
2. The measurement name has the form OR.S1.UlPdcpPduTxS1UUl.*GTPPath* or OR.S1.UlPdcpPduTxS1UUl.*GTPPath*\_*Filter.* Where *GTPPath* is GTP Path and where *Filter* is a combination of QoS level and S-NSSAI. Where QoS represents the mapped 5QI or QCI level and SNSSAI represents S-NSSAI.
3. GNBCUUPFunction
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### DL PDCP SDUs transmitted via S1-U DL GTP-U tunnel

1. This counter provides the number of the DL PDCP SDUs transmitted via S1-U DL GTP-U tunnel.

The counter is split into subcounters per GTP Path. The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC) and per S-NSSAI.

##### CC

1. The measurement is incremented by 1 whenever the DL PDCP SDU is transmitted via S1 U DL GTP-u tunnel.

Optionally the GTP Path filter is calculated, where the number of measurements is accumulated per the number of supported GTP Path per filter.

1. Integer number (U32)
2. The measurement name has the form OR.S1.DlPdcpPduTxS1UDl.*GTPPath* or OR.S1.DlPdcpPduTxS1UDl.*GTPPath\_Filter.* Where *GTPPath* is GTP Path and where *Filter* is a combination of QoS level and SNSSAI. Where QoS represents the mapped 5QI or QCI level and SNSSAI represents S-NSSAI.
3. GNBCUUPFunction
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

### NR NG-U Interface Performance Measurements

#### UL PDCP SDU volume transmitted via NG-U UL GTP-U tunnel

1. This counter provides the UL PDCP SDU volume transmitted via NG-U UL GTP-U tunnel.

The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC) and per S-NSSAI.

##### CC

1. The measurement is incremented by the volume of UL PDCP SDU whenever the UL PDCP SDU is transmitted via NG- U UL GTP-u tunnel, and optionally when the UL PDCP SDU is mapped to the filter. NG-U interface is defined in 3GPP TS 38.413 [i.5], clause 8.
2. Each measurement is an integer value representing the volume transmitted in kilobits.
3. The measurement name has the form OR.NG.UlPdcpSduVolTxNGUUl, or optionally OR.NG.UlPdcpSduVolTxNGUUl\_*Filter*. Where *Filter* is a combination of QoS level and SNSSAI. Where QoS represents the mapped 5QI or QCI level, and SNSSAI represents S-NSSAI.
4. GNBCUUPFunction
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### DL PDCP SDU volume received via NG-U DL GTP-U tunnel

1. This provides the DL PDCP SDU volume received via NG-U DL GTP-U tunnel.

The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC) and per S-NSSAI.

##### CC

1. The measurement is incremented by the volume of DL PDCP SDU whenever the DL PDCP SDU is received via NG-U DL GTP-u tunnel, and optionally when the DL PDCP SDU is mapped to the filter. NG-U interface is defined in 3GPP TS

38.413 [i.5], clause 8.

1. Each measurement is an integer value representing the volume received in kilobits.
2. The measurement name has the form OR.NG.DlPdcpSduVolRxNGUDl, or optionally OR.NG.DlPdcpSduVolRxNGUDl\_*Filter*. Where *Filter* is a combination of QoS level and SNSSAI. Where QoS represents the mapped 5QI or QCI level, SNSSAI represents S-NSSAI.
3. GNBCUUPFunction
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

### NR X2-U Interface performance measurements (O-CU)

#### UL PDCP SDU volume received via X2-U UL GTP-U tunnel (X2-U UL data forwarding)

1. This counter provides the UL PDCP SDU volume received via X2-U UL GTP-U tunnel for data forwarding. The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC) and per S-NSSAI.

##### CC

1. The measurement is incremented by the volume of UL PDCP SDU whenever the UL PDCP PDU is received via X2-U UL GTP-u tunnel for data forwarding, and optionally when the UL PDCP SDU is mapped to the filter. X2 interface is defined in 3GPP TS 36.423 [i.4], clause 8.
2. Each measurement is an integer value representing the volume received in kilobits.
3. The measurement name has the form OR.X2.UlPdcpSduVolRxX2UUlDataForward, or optionally OR.X2.UlPdcpSduVolRxX2UUlDataForward\_*Filter*. Where *Filter* is a combination of QoS level and S-NSSAI. Where QoS represents the mapped 5QI or QCI level, SNSSAI represents S-NSSAI.
4. GNBCUUPFunction
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### DL PDCP SDU volume received via X2-U DL GTP-U tunnel (X2-U DL data forwarding)

1. This counter provides the DL PDCP SDU volume received via X2-U DL GTP-U tunnel for data forwarding. The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC) and per S-NSSAI.

##### CC

1. The measurement is incremented by the volume of DL PDCP SDU whenever the DL PDCP PDU is transmitted via X2-U DL GTP-u tunnel for data forwarding, and optionally when the DL PDCP SDU is mapped to the filter. X2 interface is defined in 3GPP TS 36.423 [i.4], clause 8.
2. Each measurement is an integer value representing the volume received in kilobits.
3. The measurement name has the form OR.X2.DlPdcpSduVolRxX2UDlDataForward, or optionally OR.X2.DlPdcpSduVolRxX2UDlDataForward\_*Filter.* Where *Filter* is a combination of QoS level and SNSSAI. Where QoS represents the mapped 5QI or QCI level and SNSSAI represents S-NSSAI.
4. GNBCUUPFunction
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

### NR Xn-U Interface performance measurements (O-CU)

#### UL PDCP SDU volume received via Xn-U UL GTP-U tunnel (Xn-U UL data forwarding)

1. This counter provides the UL PDCP SDU volume received via Xn-U UL GTP-U tunnel for data forwarding. The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC) and per S-NSSAI.

##### CC

1. The measurement is incremented by the volume of UL PDCP SDU whenever the UL PDCP PDU is received via Xn-U UL GTP-u tunnel for data forwarding, and optionally when the UL PDCP SDU is mapped to the filter. Xn interface is defined in 3GPP TS 36.423 [i.4], clause 8.
2. Each measurement is an integer value representing the volume received in kilobits.
3. The measurement name has the form OR.Xn.UlPdcpSduVolRxXnUUlDataForward, or optionally OR.Xn.UlPdcpSduVolRxXnUUlDataForward\_*Filter*. Where *Filter* is a combination of QoS level and SNSSAI. Where QoS represents the mapped 5QI or QCI level and SNSSAI represents S-NSSAI.
4. GNBCUUPFunction
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### DL PDCP SDU volume received via Xn-U DL GTP-U tunnel (Xn-U DL data forwarding)

1. This counter provides the DL PDCP SDU volume received via Xn-U DL GTP-U tunnel for data forwarding. The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC) and per S-NSSAI.

##### CC

1. The measurement is incremented by the volume of DL PDCP SDU whenever the DL PDCP PDU is transmitted via Xn-U DL GTP-u tunnel for data forwarding, and optionally when the DL PDCP SDU is mapped to the filter. Xn interface is defined in 3GPP TS 36.423 [i.4], clause 8.
2. Each measurement is an integer value representing the volume received in kilobits.
3. The measurement name has the form OR.Xn.DlPdcpSduVolTxXnUDlDataForward, or optionally OR.Xn.DlPdcpSduVolTxXnUDlDataForward\_*Filter*. Where *Filter* is a combination of QoS level and SNSSAI. Where QoS represents the mapped 5QI or QCI level, SNSSAI represents S-NSSAI.
4. GNBCUUPFunction
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

## O-DU Performance measurements

### NR F1 Interface performance measurements

#### UL PDCP PDUs transmitted via F1-U UL GTP-U tunnel

1. This counter provides the number of the UL PDCP PDUs transmitted via F1-U UL GTP-U tunnel. The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC).

It is optional counter for O-DU.

##### CC

1. The measurement is incremented by 1 whenever the UL PDCP PDU is transmitted via F1 U UL GTP-u tunnel, and optionally when the QCI or the 5QI of the UL PDCP PDU is the filter*.*
2. Integer number (U32)
3. The measurement name has the form OR.F1.UlPdcpPduTxF1UUl or OR.F1.UlPdcpPduTxF1UUl\_*Filter*. Where *Filter* is the QoS level and represents the mapped 5QI or QCI level.
4. gNBDUFunction
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### UL PDCP PDU volume transmitted via F1-U UL GTP-U tunnel

1. This counter provides the UL PDCP PDU volume transmitted via F1-U UL GTP-U tunnel. The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC).

NOTE: Measurement Object Class, gNBDUFunction, is different to A.4.1.14. It is optional counter for O-DU.

##### CC

1. The measurement is accumulated by the volume of UL PDCP PDU whenever the UL PDCP PDU is transmitted via F1 U UL GTP-u tunnel, and optionally when the QCI or the 5QI of the UL PDCP PDU is the filter*.* F1 interface is defined in 3GPP TS 38.473 [i.6], clause 8.
2. Each measurement is an integer value representing the volume transmitted in kilobits.
3. The measurement name has the form OR.F1.UlPdcpPduVolTxF1UUl or OR.F1.UlPdcpPduVolTxF1UUl\_*Filter*. Where

*Filter* is the QoS level and represents the mapped 5QI or QCI level.

1. gNBDUFunction
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Maximum UL PDCP PDU volume transmitted via F1-U UL GTP-U tunnel

1. This counter provides the maximum UL PDCP PDU volume transmitted during 1s via F1-U UL GTP-U tunnel. The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC).

It is optional counter for O-DU.

##### SI

1. The measurement is the maximum value of x, optionally when the QCI or the 5QI of the UL PDCP PDU is the filter. It is assigned with period of 1s by the volume x, if x is bigger than previously counted volume.

x is the volume of UL PDCP PDU for every 1 second. x is incremented by the volume of UL PDCP PDU whenever the UL PDCP PDU is transmitted via F1 U UL GTP-u tunnel for a period of 1 second. F1 interface is defined in 3GPP TS

38.473 [i.6], clause 8.

1. Each measurement is an integer value representing the volume transmitted in kilobits.
2. The measurement name has the form OR.F1.MaxUlPdcpPduVolTxF1UUl or OR.F1.MaxUlPdcpPduVolTxF1UUl

\_*Filter*. Where *Filter* is the QoS level and represents the mapped 5QI or QCI level.

1. gNBDUFunction
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Minimum UL PDCP PDU volume transmitted via F1-U UL GTP-U tunnel

1. This counter provides the minimum UL PDCP PDU volume transmitted during 1s via F1-U UL GTP-U tunnel. The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC).

It is optional counter for O-DU.

##### SI

1. The measurement is the minimum value of x, optionally when the QCI or the 5QI of the UL PDCP PDU is the filter*.* It is assigned with period of 1s by the volume x, if x is smaller than previously counted volume.

x is the volume of UL PDCP PDU for every 1 second. x is incremented by the volume of UL PDCP PDU whenever the UL PDCP PDU is transmitted via F1 U UL GTP-u tunnel for a period of 1 second. F1 interface is defined in 3GPP TS

38.473 [i.6], clause 8.

1. Each measurement is an integer value representing the volume transmitted in kilobits.
2. The measurement name has the form OR.F1.MinUlPdcpPduVolTxF1U or OR.F1.MinUlPdcpPduVolTxF1U\_*Filter.* Where *Filter* is the QoS level and represents the mapped 5QI or QCI level.
3. gNBDUFunction
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### DL PDCP PDUs received via F1-U DL GTP-U tunnel

1. This counter provides the number of the DL PDCP PDUs received via F1-U DL GTP-U tunnel. The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC).

It is optional counter for O-DU.

##### CC

1. The measurement is incremented by 1 whenever the DL PDCP PDU is received via F1 U DL GTP-u tunnel, optionally when the QCI or the 5QI of the DL PDCP PDU is the filter*.*
2. Integer number (U32)
3. The measurement name has the form OR.F1.DlPdcpPduRxF1UDl or OR.OR.F1.DlPdcpPduRxF1UDl\_*Filter*. Where

*Filter* is the QoS level and represents the mapped 5QI or QCI level.

1. gNBDUFunction
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### DL PDCP PDU volume received via F1-U DL GTP-U tunnel

1. This counter provides the DL PDCP PDU volume received via F1-U DL GTP-U tunnel. The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC).

NOTE: Measurement Object Class, gNBDUFunction, is different to A.4.1.15. It is optional counter for O-DU.

##### CC

1. The measurement is accumulated by the volume of DL PDCP PDU whenever the DL PDCP PDU is received via F1 U DL GTP-u tunnel, optionally when the QCI or the 5QI of the DL PDCP PDU is the filter*.* F1 interface is defined in 3GPP TS 38.473 [i.6], clause 8.
2. Each measurement is an integer value representing the volume received in kilobits.
3. The measurement name has the form OR.F1.DlPdcpPduVolRxF1UDl or OR.F1.DlPdcpPduVolRxF1UDl \_*Filter*. Where

*Filter* is the QoS level and represents the mapped 5QI or QCI level.

1. gNBDUFunction
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Maximum DL PDCP PDU volume received via F1-U DL GTP-U tunnel

1. This counter provides the maximum DL PDCP PDU volume received during 1s via F1-U DL GTP-U tunnel. The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC).

It is optional counter for O-DU.

##### SI

1. The measurement is the maximum value of x, optionally when the QCI or the 5QI of the DL PDCP PDU is the filter*.* It is assigned with period of 1s by the volume x, if x is bigger than previously counted volume.

x is the volume of DL PDCP PDU for every 1 second. x is incremented by the volume of DL PDCP PDU whenever the DL PDCP PDU is received via F1 U DL GTP-u tunnel for a period of 1 second. F1 interface is defined in 3GPP TS

38.473 [i.6], clause 8.

1. Each measurement is an integer value representing the volume received in kilobits.
2. The measurement name has the form OR.F1.MaxDlPdcpPduVolRxF1UDl or OR.F1.MaxDlPdcpPduVolRxF1UDl\_*Filter*. Where *Filter* is the QoS level and represents the mapped 5QI or QCI level.
3. gNBDUFunction
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Minimum DL PDCP PDU volume received via F1-U DL GTP-U tunnel

1. This counter provides the minimum DL PDCP PDU volume received during 1s via F1-U DL GTP-U tunnel. The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC).

It is optional counter for O-DU.

##### SI

1. The measurement is the minimum value of x, optionally when the QCI or the 5QI of the DL PDCP PDU is the filter*.* It is assigned with period of 1s by the volume x, if x is smaller than previously counted volume.

x is the volume of DL PDCP PDU for every 1 second. x is incremented by the volume of DL PDCP PDU whenever the DL PDCP PDU is received via F1 U DL GTP-u tunnel for a period of 1 second. F1 interface is defined in 3GPP TS

38.473 [i.6], clause 8.

1. Each measurement is an integer value representing the volume received in kilobits.
2. The measurement name has the form OR.F1.MinDlPdcpPduVolRxF1UDl or OR.F1.MinDlPdcpPduVolRxF1UDl

\_*Filter*. Where *Filter* is the QoS level and represents the mapped 5QI or QCI level.

1. gNBDUFunction
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Transmitted F1-C messages

1. This counter provides the number of the transmitted F1-C messages per signal type that is non UE-associated or UE- associated signaling.

It is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by 1 whenever the F1 C-plane message is transmitted per the signal type of the F1 C-plane message: non UE-associated or UE-associated as subcounter.*Sigtype.*
2. Integer number (U32)
3. OR.F1.TxF1CMes.*Sigtype* where

*Sigtype* is the signal type:

0: non UE-associated

1: UE-associated

1. gNBDUFunction
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Received F1-C messages

1. This counter provides the number of the received F1-C SCTP messages per signal type that is non UE-associated or UE- associated signaling.

It is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by 1 whenever the F1 C-plane message is received per the signal type of the F1 C-plane message: non UE-associated or UE-associated as subcounter.*Sigtype.*
2. Integer number (U32)
3. OR.F1.RxF1CMes*.Sigtype* where

*Sigtype* is the signal type:

0: non UE-associated

1: UE-associated

1. gNBDUFunction
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### DL F1-U packets discarded due to NR U-Plane protocol error

1. This counter provides the number of the DL F1-U packets discarded due to NR U-Plane protocol error. It is recommended to support for O-DU.

##### CC

1. The measurement counter is incremented by 1 whenever the DL F1-U plane packet is discarded due to NR U-plane protocol error.
2. Integer number (U32)
3. OR.F1.DlF1UDiscardNRUProtocolError
4. gNBDUFunction
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### DL F1-U packet loss rate

1. Refer to 3GPP TS 28.552 [2] clause 5.1.3.1.3 O-RAN addition:

It is optional counter for O-DU.

The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC) and per S-NSSAI.

1. Refer to 3GPP TS 28.552 [2] clause 5.1.3.1.3
2. Refer to 3GPP TS 28.552 [2] clause 5.1.3.1.3
3. Refer to 3GPP TS 28.552 [2] clause 5.1.3.1.3
4. Refer to 3GPP TS 28.552 [2] clause 5.1.3.1.3 O-RAN addition:

The measurement name has the form OR.DRB.F1UPacketLossRateDl or OR.DRB.F1UPacketLossRateDl\_*Filter*. Where *Filter* is a combination of QoS level and SNSSAI. Where QoS represents the mapped 5QI or QCI level, SNSSAI represents S-NSSAI.

1. O-RAN Measurement Object Class: gNBDUFunction
2. Refer to 3GPP TS 28.552 [2] clause 5.1.3.1.3
3. Refer to 3GPP TS 28.552 [2] clause 5.1.3.1.3
4. Refer to 3GPP TS 28.552 [2] clause 5.1.3.1.3

#### DL Packet Drop Rate in gNB-DU

1. Refer to 3GPP TS 28.552 [2] clause 5.1.3.2.2 O-RAN addition:

It is optional counter for O-DU.

The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC) and per S-NSSAI.

1. Refer to 3GPP TS 28.552 [2] clause 5.1.3.2.2
2. Refer to 3GPP TS 28.552 [2] clause 5.1.3.2.2
3. Refer to 3GPP TS 28.552 [2] clause 5.1.3.2.2
4. Refer to 3GPP TS 28.552 [2] clause 5.1.3.2.2 O-RAN addition:

The measurement name has the form OR.DRB.RlcPacketDropRateDl or OR.DRB.RlcPacketDropRateDl\_*Filter*. Where *Filter* is a combination of QoS level and SNSSAI. Where QoS represents the mapped 5QI or QCI level, SNSSAI represents S-NSSAI.

1. gNBDUFunction
2. Refer to 3GPP TS 28.552 [2] clause 5.1.3.2.2
3. Refer to 3GPP TS 28.552 [2] clause 5.1.3.2.2
4. Refer to 3GPP TS 28.552 [2] clause 5.1.3.2.2

#### UL PDCP PDU volume transmitted via F1-U UL GTP-U tunnel

1. This counter provides the UL PDCP PDU volume of the cell transmitted via F1-U UL GTP-U tunnel. The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC) and per S-NSSAI.

NOTE: Measurement Object Class, NRCellDU, is different to A.4.1.2. It is optional counter for O-DU.

##### CC

1. The measurement counter is accumulated by the volume of UL PDCP PDU whenever the UL PDCP PDU is transmitted from the Cell via F1 U UL GTP-u tunnel. F1 interface is defined in 3GPP TS 38.473 [i.6], clause 8.
2. Each measurement is an integer value representing the volume transmitted in kilobits.
3. The measurement name has the form OR.F1.UlPdcpPduCellVOlTxF1UUl or OR.F1.UlPdcpPduCellVOlTxF1UUl

\_*Filter*. Where *Filter* is a combination of QoS level and SNSSAI. Where QoS represents the mapped 5QI or QCI level, SNSSAI represents S-NSSAI.

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### DL PDCP PDU volume received via F1-U DL GTP-U tunnel

1. This counter provides the DL PDCP PDU volume of the cell received via F1-U DL GTP-U tunnel. The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC) and per S-NSSAI.

NOTE: Measurement Object Class, NRCellDU, is different to A.4.1.6. It is optional counter for O-DU.

##### CC

1. The measurement counter is accumulated by the volume of DL PDCP PDU whenever the DL PDCP PDU is received to the Cell via F1 U DL GTP-u tunnel. F1 interface is defined in 3GPP TS 38.473 [i.6], clause 8.
2. Each measurement is an integer value representing the volume received in kilobits.
3. The measurement name has the form OR.F1.DlPdcpPduCellVolTxF1UDl or OR.F1.DlPdcpPduCellVolTxF1UDl\_*Filter*. Where *Filter* is a combination of QoS level and SNSSAI. Where QoS represents the mapped 5QI or QCI level, SNSSAI represents S-NSSAI.
4. NRCellDU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

### NR RLC performance measurements

#### Received UL RLC PDUs

1. This counter provides the number of the received UL RLC PDUs. The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC).

It is optional counter for O-DU.

##### CC

1. The measurement is incremented by 1 whenever the UL RLC PDU is received, optionally when the QCI or the 5QI of the UL RLC PDU is the filter.
2. Integer number (U32)
3. The measurement name has the form OR.RLC.RxUlRlcPdu or OR.RLC.RxUlRlcPdu\_*Filter*. Where *Filter* is a QoS level and represents the mapped 5QI or QCI level.
4. gNBDUFunction
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Received UL RLC PDU volume

1. This counter provides the received UL RLC PDU volume. The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC).

It is recommended to support for O-DU.

##### SI

1. The measurement is incremented by the volume of the UL RLC PDU whenever the UL RLC PDU is received, optionally when the QCI or the 5QI of the UL RLC PDU is the filter.
2. Each measurement is an integer value representing the volume received in kilobits.
3. The measurement name has the form OR.RLC.RxUlRlcPduVol or OR.RLC.RxUlRlcPduVol \_*Filter*. Where *Filter* is a QoS level and represents the mapped 5QI or QCI level.
4. gNBDUFunction
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Request for UL RLC PDUs retransmission

1. This counter provides the number of the requests for UL RLC PDUs retransmission. The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC).

It is optional counter for O-DU.

##### CC

1. The measurement is incremented by 1 whenever the UL RLC PDU is received, optionally when the QCI or the 5QI of the UL RLC PDU is the filter.
2. Integer number (U32)
3. The measurement name has the form OR.RLC.ReqUlRlcPduRetrans or OR.RLC.ReqUlRlcPduRetrans\_*Filter*. Where

*Filter* is a QoS level and represents the mapped 5QI or QCI level.

1. gNBDUFunction
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Transmitted DL RLC PDUs

1. This counter provides the number of the transmitted DL RLC PDUs. The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC).

It is optional counter for O-DU.

##### CC

1. The measurement subcounter is incremented by 1 whenever the DL RLC PDU is transmitted, optionally when the QCI or the 5QI of the DL RLC PDU is the filter.
2. Integer number (U32)
3. The measurement name has the form OR.RLC.TxDlRlcPdu or OR.RLC.TxDlRlcPdu\_*Filter*. Where *Filter* is a QoS level and represents the mapped 5QI or QCI level.
4. gNBDUFunction
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Transmitted DL RLC PDU volume

1. This counter provides the transmitted DL RLC PDU volume. The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC).

It is recommended to support for O-DU.

##### SI

1. The measurement is incremented by the volume of the DL RLC PDU whenever the DL RLC PDU is transmitted, optionally when the QCI or the 5QI of the DL RLC PDU is the filter.
2. Each measurement is an integer value representing the volume transmitted in kilobits.
3. The measurement name has the form OR.RLC.TxDlRlcPduVol or OR.RLC.TxDlRlcPduVol\_*Filter*. Where *Filter* is a QoS level and represents the mapped 5QI or QCI level.
4. gNBDUFunction
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Retransmitted DL RLC PDUs

1. This counter provides the number of the DL RLC PDUs retransmitted in RLC layer. The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC).

It is optional counter for O-DU.

##### CC

1. The measurement is incremented by 1 whenever the DL RLC PDU is retransmitted in RLC layer, optionally when the QCI or the 5QI of the DL RLC PDU is the filter.
2. Integer number (U32)
3. The measurement name has the form OR.RLC.RetransDlRlcPdu or OR.RLC.RetransDlRlcPdu \_*Filter*. Where *Filter* is a QoS level and represents the mapped 5QI or QCI level.
4. gNBDUFunction
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Retransmitted DL RLC PDU volume

1. This counter provides the DL RLC PDU volume retransmitted in RLC layer. The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC).

It is recommended to support for O-DU.

##### SI

1. The measurement is incremented by the volume of the DL RLC PDU whenever the DL RLC PDU is retransmitted in RLC layer, optionally when the QCI or the 5QI of the DL RLC PDU is the filter.
2. Each measurement is an integer value representing the volume retransmitted in kilobits.
3. The measurement name has the form OR.RLC.RetransDlRlcPduVol or OR.RLC.RetransDlRlcPduVol\_*Filter*. Where

*Filter* is a QoS level and represents the mapped 5QI or QCI level.

1. gNBDUFunction
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### UL RLC PDUs discarded due to bearer release

1. This counter provides the number of the UL RLC PDUs discarded due to bearer release. The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC).

It is optional counter for O-DU.

##### CC

1. The measurement is incremented by 1 whenever the UL RLC PDU is discarded due to bearer release, optionally when the QCI or the 5QI of the UL RLC PDU is the filter.
2. Integer number (U32)
3. The measurement name has the form OR.RLC.UlRlcPduDiscardBearerRel or OR.RLC.UlRlcPduDiscardBearerRel\_*Filter*. Where *Filter* is a QoS level and represents the mapped 5QI or QCI level.
4. gNBDUFunction
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### UL RLC PDU volume discarded due to bearer release

1. This counter provides the UL RLC PDU volume discarded due to bearer release. The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC).

It is recommended to support for O-DU.

##### SI

1. The measurement is incremented by the volume of the UL RLC PDU whenever the UL RLC PDU is discarded due to bearer release, optionally when the QCI or the 5QI of the UL RLC PDU is the filter.
2. Each measurement is an integer value representing the volume discarded in kilobits.
3. The measurement name has the form OR.RLC.UlRlcPduVolDiscardBearerRel or OR.RLC.UlRlcPduVolDiscardBearerRel\_*Filter*. Where *Filter* is a QoS level and represents the mapped 5QI or QCI level.
4. gNBDUFunction
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### UL RLC PDUs discarded due to RLC re-establishment

1. This counter provides the number of the UL RLC PDUs discarded due to RLC re-establishment. The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC).

It is optional counter for O-DU.

##### CC

1. The measurement is incremented by 1 whenever the UL RLC PDU is discarded due to RLC re-establishment, optionally when the QCI or the 5QI of the UL RLC PDU is the filter.
2. Integer number (U32)
3. The measurement name has the form OR.RLC.UlRlcPduDiscardRlcReest or OR.RLC.UlRlcPduDiscardRlcReest\_*Filter*. Where *Filter* is a QoS level and represents the mapped 5QI or QCI level.
4. gNBDUFunction
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### UL RLC PDU volume discarded due to RLC re-establishment

1. This counter provides the UL RLC PDU volume discarded due to RLC re-establishment. The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC).

It is recommended to support for O-DU.

##### SI

1. The measurement is incremented by the volume of the UL RLC PDU whenever the UL RLC PDU is discarded due to RLC re-establishment, optionally when the QCI or the 5QI of the UL RLC PDU is the filter.
2. Each measurement is an integer value representing the volume discarded in kilobits.
3. The measurement name has the form OR.RLC.UlRlcPduVolDiscardRlcReest or OR.RLC.UlRlcPduVolDiscardRlcReest\_*Filter*. Where *Filter* is a QoS level and represents the mapped 5QI or QCI level.
4. gNBDUFunction
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### UL RLC PDUs discarded due to other causes

1. This counter provides the number of the UL RLC PDUs discarded due to other causes. The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC).

It is optional counter for O-DU.

##### CC

1. The measurement is incremented by 1 whenever the UL RLC PDU is discarded for reason other than bearer release and RLC re-establishment, optionally when the QCI or the 5QI of the UL RLC PDU is the filter.
2. Integer number (U32)
3. The measurement name has the form levelOR.RLC.RlcPduDiscardOther or OR.RLC.RlcPduDiscardOther\_*Filter*. Where

*Filter* is a QoS level and represents the mapped 5QI or QCI level.

1. gNBDUFunction
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### UL RLC PDU volume discarded due to other causes

1. This counter provides the UL RLC PDU volume discarded due to other causes. The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC).

It is recommended to support for O-DU.

##### CC

1. The measurement is incremented by the volume of the UL RLC PDU whenever the UL RLC PDU is discarded for reason other than bearer release and RLC re-establishment, optionally when the QCI or the 5QI of the UL RLC PDU is the filter.
2. Each measurement is an integer value representing the volume discarded in kilobits.
3. The measurement name has the form OR.RLC.RlcPduDiscardOther or OR.RLC.RlcPduDiscardOther\_*Filter*. Where

*Filter* is a QoS level and represents the mapped 5QI or QCI level.

1. gNBDUFunction
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### DL RLC PDUs discarded due to bearer release

1. This counter provides the number of DL RLC PDUs discarded due to bearer release. This counter includes DL RLC PDUs which has transmitted or not lower layer. The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC).

It is optional counter for O-DU.

##### CC

1. The measurement is incremented by 1 whenever the DL RLC PDU is discarded due to bearer release, optionally when the QCI or the 5QI of the DL RLC PDU is the filter.
2. Integer number (U32)
3. The measurement name has the form OR.RLC.DlRlcPduDiscardBearerRel or OR.RLC.DlRlcPduDiscardBearerRel\_*Filter*. Where *Filter* is a QoS level and represents the mapped 5QI or QCI level.
4. gNBDUFunction
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### DL RLC PDU volume discarded due to bearer release

1. This counter provides the DL RLC PDU volume discarded due to bearer release. This counter includes DL RLC PDUs which has transmitted or not lower layer. The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC).

It is recommended to support for O-DU.

##### SI

1. The measurement is incremented by the volume of the DL RLC PDU whenever the DL RLC PDU is discarded due to bearer release, optionally when the QCI or the 5QI of the DL RLC PDU is the filter.
2. Each measurement is an integer value representing the volume discarded in kilobits.
3. The measurement name has the form OR.RLC.DlRlcPduVolDiscardBearerRel or OR.RLC.DlRlcPduVolDiscardBearerRel\_*Filter*. Where *Filter* is a QoS level and represents the mapped 5QI or QCI level.
4. gNBDUFunction
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### DL RLC PDUs discarded due to RLC re-establishment

1. This counter provides the number of the DL RLC PDUs discarded due to RLC re-establishment. This counter includes DL RLC PDUs which has transmitted or not lower layer. The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC).

It is optional counter for O-DU.

##### CC

1. The measurement is incremented by 1 whenever the DL RLC PDU is discarded due to RLC re-establishment, optionally when the QCI or the 5QI of the DL RLC PDU is the filter.
2. Integer number (U32)
3. The measurement name has the form OR.RLC.DlRlcPduDiscardRlcReest or OR.RLC.DlRlcPduDiscardRlcReest \_*Filter*. Where *Filter* is a QoS level and represents the mapped 5QI or QCI level.
4. gNBDUFunction
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### DL RLC PDU volume discarded due to RLC re-establishment

1. This counter provides the DL RLC PDU volume discarded due to RLC re-establishment. This counter includes DL RLC PDUs which has transmitted or not lower layer. The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC).

It is recommended to support for O-DU.

##### SI

1. The measurement is incremented by the volume of the DL RLC PDU whenever the DL RLC PDU is discarded due to RLC re-establishment, optionally when the QCI or the 5QI of the DL RLC PDU is the filter.
2. Each measurement is an integer value representing the volume discarded in kilobits.
3. The measurement name has the form OR.RLC.DlRlcPduVolDiscardRlcReest or OR.RLC.DlRlcPduVolDiscardRlcReest\_*Filter*. Where *Filter* is a QoS level represeting the mapped 5QI or QCI level.
4. gNBDUFunction
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### DL RLC PDUs discarded due to full buffer

1. This counter provides the number of the DL RLC PDUs discarded due to full RLC transmission buffer. This counter includes DL RLC PDUs which has not been transmitted to lower layer. The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC).

It is optional counter for O-DU.

##### CC

1. The measurement is incremented by 1 whenever the DL RLC PDU is discarded due to full RLC transmission buffer, optionally when the QCI or the 5QI of the DL RLC PDU is the filter.
2. Integer number (U32)
3. The measurement name has the form OR.RLC.DlRlcPduDiscardTxFullBuffer or OR.RLC.DlRlcPduDiscardTxFullBuffer\_*Filter*. Where *Filter* is a QoS level and represents the mapped 5QI or QCI level.
4. gNBDUFunction
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### DL RLC PDU volume discarded due to full buffer

1. This counter provides the DL RLC PDU volume discarded due to full RLC transmission buffer. This counter includes DL RLC PDUs which has not been transmitted to lower layer. The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC).

It is recommended to support for O-DU.

##### SI

1. The measurement is incremented by the volume of the DL RLC PDU whenever the DL RLC PDU is discarded due to full RLC transmission buffer, optionally when the QCI or the 5QI of the DL RLC PDU is the filter.
2. Each measurement is an integer value representing the volume discarded in kilobits.
3. The measurement name has the form OR.RLC.DlRlcPduVolDiscardTxFullBuffer or OR.RLC.DlRlcPduVolDiscardTxFullBuffer\_*Filter*. Where *Filter* is a QoS level rapresenting the mapped 5QI or QCI level.
4. gNBDUFunction
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### The number of exceeding maximum RLC retransmissions

1. This counter provides the number of received NACK for the final retransmission in RLC layer. The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC).

It is recommended to support for O-DU.

##### CC

1. The measurement is incremented by 1 whenever RLC status report including NACK for the final retransmission is received, optionally when the QCI or the 5QI of the DL RLC PDU is the filter.
2. Integer number (U32)
3. The measurement name has the form OR.RLC.NumExceedMaxRlcRetrans or OR.RLC.NumExceedMaxRlcRetrans\_*Filter*. Where *Filter* is a QoS level and represents the mapped 5QI or QCI level.
4. gNBDUFunction
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Average delay DL in gNB-DU

1. Refer to 3GPP TS 28.552 [2] clause 5.1.3.3.3 O-RAN addition:

The measurement is optionally calculated per S-NSSAI, per QoS level (mapped 5QI or QCI in EN-DC) and PLMN ID, according to 3GPP TS 28.552 [2] clause 5.1.3.3.3.

It is optional counter for O-DU.

1. Refer to 3GPP TS 28.552 [2] clause 5.1.3.3.3
2. Refer to 3GPP TS 28.552 [2] clause 5.1.3.3.3
3. Refer to 3GPP TS 28.552 [2] clause 5.1.3.3.3
4. Refer to 3GPP TS 28.552 [2] clause 5.1.3.3.3

O-RAN addition:

The measurement name has the form OR.DRB.RlcSduDelayDl or OR.DRB.RlcSduDelayDl\_*Filter*. Where *Filter* is a combination of PLMNID, QoS level and SNSSAI. Where PLMNID represents the PLMN ID, QoS represents the mapped 5QI or QCI level, and SNSSAI represents S-NSSAI.

1. O-RAN Measurement Object Class: gNBDUFuncton
2. Refer to 3GPP TS 28.552 [2] clause 5.1.3.3.3
3. Refer to 3GPP TS 28.552 [2] clause 5.1.3.3.3
4. Refer to 3GPP TS 28.552 [2] clause 5.1.3.3.3

#### IP Latency DL in gNB-DU

1. Refer to 3GPP TS 28.552 [2] clause 5.1.3.4.2 O-RAN addition:

The measurement is optionally calculated per S-NSSAI, per QoS level (mapped 5QI or QCI in EN-DC) and PLMN ID, according to 3GPP TS 28.552 [2] clause 5.1.3.4.2.

It is optional counter for O-DU.

1. Refer to 3GPP TS 28.552 [2] clause 5.1.3.4.2
2. Refer to 3GPP TS 28.552 [2] clause 5.1.3.4.2
3. Refer to 3GPP TS 28.552 [2] clause 5.1.3.4.2
4. Refer to 3GPP TS 28.552 [2] clause 5.1.3.4.2 O-RAN addition:

The measurement name has the form OR.DRB.RlcSduLatencyDl or OR.DRB.RlcSduLatencyDl\_*Filter*. Where *Filter* is a combination of PLMNID, QoS level and SNSSAI. Where PLMNID represents the PLMN ID, QoS represents the mapped 5QI or QCI level, and SNSSAI represents S-NSSAI.

1. O-RAN Measurement Object Class: gNBDUFuncton
2. Refer to 3GPP TS 28.552 [2] clause 5.1.3.4.2
3. Refer to 3GPP TS 28.552 [2] clause 5.1.3.4.2
4. Refer to 3GPP TS 28.552 [2] clause 5.1.3.4.2
   * + 1. Void
       2. Void
       3. DL RLC SDU discarded due to discard timer expiry indication
5. This counter provides the number of the DL RLC SDUs discarded due to the discard timer expiry indication from the higher layers. The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC).

It is an optional counter for O-DU.

##### CC

1. The measurement increases by 1 whenever the DL RLC SDU is discarded due to the expiration of the *discardtimer*

indicated by the higher layers, optionally where the QCI or the 5QI of the DL RLC SDU is the filter. NOTE: The *discardtimer* is configured for only DRBs, as per 3GPP TS 38.323 [6], clause 7.3.

1. Integer number.

NOTE: Implementation of this performance measurement requires at least U32.

1. The measurement name has the form OR.RLC.RlcSduDiscardTimerExpiry or OR.RLC.RlcSduDiscardTimerExpiry\_*Filter*. Where *Filter* is a QoS level. Where QoS represents the mapped 5QI or QCI level.
2. gNBDUFunction
3. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community
   * + 1. DL RLC SDU Volume discarded due to discard timer expiry indication
2. This counter provides the DL RLC SDU volume discarded due to the discard timer expiry indication from the higher layers. The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC).

It is recommended to support O-DU.

##### SI

1. The measurement increases by the RLC SDU volume in kilobits whenever the DL RLC SDU is discarded due to the expiration of the *discardtimer* indicated by the higher layers, optionally where the QCI or the 5QI of the DL RLC SDU is the filter.

NOTE: The *discardtimer* is configured for only DRBs, as per 3GPP TS 38.323 [6], clause 7.3.

1. Each measurement is an integer value representing the discarded SDU volume measured in kilobits. NOTE: Implementation of this performance measurement requires at least U64.
2. The measurement name has the form OR.RLC.DlRlcSduVolDiscardTimerExpiry or OR.RLC.DlRlcSduVolDiscardTimerExpiry\_*Filter*. Where *Filter* is a QoS level. Where QoS represents the mapped 5QI or QCI level.
3. gNBDUFunction
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

### NR MAC performance measurements

#### Received UL MAC PDU volume

1. This counter provides the UL MAC PDU volume received as initial transmission or retransmission in MAC layer.

It is recommended to support for O-DU

##### CC

1. Measurement subcounter is incremented by the volume of the UL MAC PDU whenever the UL MAC PDU is received as initial transmission or retransmission when the SSB for PUSCH is the group of subcounter.*SSB*.
2. Each measurement is an integer value representing the volume received in kilobits.
3. OR.MAC.RxUlMacPduVol.*SSB* where *SSB* is the SSB index: 0: #0

1: #1

...

63: #63

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Transmitted DL MAC PDU volume

1. This counter provides the DL MAC PDU volume transmitted as initial transmission or retransmission in MAC layer. It is recommended to support for O-DU.

##### CC

1. Measurement subcounter is incremented by the volume of the DL MAC PDU whenever the DL MAC PDU is transmitted as initial transmission or retransmission when the SSB for PDSCH is the group of subcounter.*SSB*.
2. Each measurement is an integer value representing the volume transmitted in kilobits.
3. OR.MAC.TxDlMacPduVol.*SSB* where *SSB* is the SSB index: 0: #0

1: #1

...

63: #63

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community
   * + 1. Void

### NR UL HARQ performance measurements

#### Distribution of PUSCH per MCS (initial transmission)

1. This counter provides the distributions of PUSCH at the initial transmission per MCS. It is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by 1 whenever PUSCH is received for initial transmission when the MCS table of the PUSCH is group of subcounter.*MCSTable* and when the MCS index of the PUSCH is group of

subcounter.*MCSInitial*.

1. Integer number (U32)
2. OR.ULHARQ.DistPuschMcsInitial.*MCSInitial.MCSTable* where *MCSInitial* is the MCS index for initial transmission: 0: IMCS = 0

1: IMCS = 1

...

28: IMCS = 28

*MCSTable* is the MCS table:

0: MCS index table 1 for PDSCH/PUSCH without transform precoding 1: MCS index table 2 for PDSCH/PUSCH without transform precoding 2: MCS index table 3 for PDSCH/PUSCH without transform precoding

3: MCS index table for PUSCH with transform precoding and 64QAM (q=1) 4: MCS index table for PUSCH with transform precoding and 64QAM (q=2) 5: MCS index table 2 for PUSCH with transform precoding and 64QAM(q=1) 6: MCS index table 2 for PUSCH with transform precoding and 64QAM (q=2)

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Distribution of PUSCH per MCS (initial transmission/CRC OK)

1. This counter provides the distributions of the number of CRC succeeded for PUSCH at initial transmission per MCS. It is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by 1 whenever PUSCH of which CRC is OK is received for initial transmission when the MCS table of the PUSCH is group of subcounter.*MCSTable* and when the MCS index of the PUSCH is group of subcounter.*MCSInitial*.
2. Integer number (U32)
3. OR.ULHARQ.DistPuschMcsInitialTxCRC.*MCSInitial.MCSTable* where *MCSInitial* is the MCS index for initial transmission:

0: IMCS = 0

1: IMCS = 1

...

28: IMCS = 28

*MCSTable* is the MCS table:

0: MCS index table 1 for PDSCH/PUSCH without transform precoding 1: MCS index table 2 for PDSCH/PUSCH without transform precoding 2: MCS index table 3 for PDSCH/PUSCH without transform precoding

3: MCS index table for PUSCH with transform precoding and 64QAM (q=1) 4: MCS index table for PUSCH with transform precoding and 64QAM (q=2) 5: MCS index table 2 for PUSCH with transform precoding and 64QAM(q=1) 6: MCS index table 2 for PUSCH with transform precoding and 64QAM (q=2)

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Distribution of PUSCH per MCS (any/CRC OK)

1. This counter provides the distributions of PUSCH at initial transmission or retransmission per MCS. It is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by 1 whenever PUSCH of which CRC is OK is received for initial transmission or retransmission when the MCS table of the PUSCH is group of subcounter.*MCSTable* and when the MCS index of the PUSCH is group of subcounter.*MCSRetx*.
2. Integer number (U32)
3. OR.ULHARQ.DistPuschMcsAny.*MCSRetx.MCSTable* where *MCSRetx* is the MCS index for initial transmission or retransmission:

0: IMCS = 0

1: IMCS = 1

...

31: IMCS = 31

*MCSTable* is the MCS table:

0: MCS index table 1 for PDSCH/PUSCH without transform precoding 1: MCS index table 2 for PDSCH/PUSCH without transform precoding 2: MCS index table 3 for PDSCH/PUSCH without transform precoding

3: MCS index table for PUSCH with transform precoding and 64QAM (q=1) 4: MCS index table for PUSCH with transform precoding and 64QAM (q=2) 5: MCS index table 2 for PUSCH with transform precoding and 64QAM(q=1) 6: MCS index table 2 for PUSCH with transform precoding and 64QAM (q=2)

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Distribution of PUSCH per MCS (exceeding HARQ retransmission)

1. This counter provides the distributions of the number of CRC failure for PUSCH at final retransmission per MCS. It is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by 1 whenever PUSCH of which CRC is NG is received for final retransmission when the MCS table of the PUSCH is group of subcounter.*MCSTable* and when the MCS index of the PUSCH is group of subcounter.*MCSRetx*.
2. Integer number (U32)
3. OR.ULHARQ.DistPuschMcsExceedHarqRetrans.*MCSRetx.MCSTable* where *MCSRetx*is the MCS index for final retransmission:

0: IMCS = 0

1: IMCS = 1

...

31: IMCS = 31

*MCSTable* is the MCS table:

0: MCS index table 1 for PDSCH/PUSCH without transform precoding 1: MCS index table 2 for PDSCH/PUSCH without transform precoding 2: MCS index table 3 for PDSCH/PUSCH without transform precoding

3: MCS index table for PUSCH with transform precoding and 64QAM (q=1) 4: MCS index table for PUSCH with transform precoding and 64QAM (q=2) 5: MCS index table 2 for PUSCH with transform precoding and 64QAM(q=1) 6: MCS index table 2 for PUSCH with transform precoding and 64QAM (q=2)

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Distribution of PUSCH per MCS (MU-MIMO/initial transmission)

1. This counter provides the distributions of PUSCH at initial transmission in MU-MIMO usage per MCS. It is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by 1 whenever PUSCH is transmitted (including MU-MIMO usage) for initial transmission when the MCS table of the PUSCH is group of subcounter.*MCSTable* and when the MCS index of the PUSCH is group of subcounter.*MCSInitial*.
2. Integer number (U32)
3. OR.ULHARQ.DistPuschMcsMuMimoInitialTx.*MCSInitial.MCSTable* where *MCSInitial* is the MCS index for initial transmission:

0: IMCS = 0

1: IMCS = 1

...

28: IMCS = 28

*MCSTable* is the MCS table:

0: MCS index table 1 for PDSCH/PUSCH without transform precoding 1: MCS index table 2 for PDSCH/PUSCH without transform precoding 2: MCS index table 3 for PDSCH/PUSCH without transform precoding

3: MCS index table for PUSCH with transform precoding and 64QAM (q=1) 4: MCS index table for PUSCH with transform precoding and 64QAM (q=2) 5: MCS index table 2 for PUSCH with transform precoding and 64QAM(q=1) 6: MCS index table 2 for PUSCH with transform precoding and 64QAM (q=2)

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Distribution of PUSCH per MCS (MU-MIMO/initial transmission/ACK)

1. This counter provides the distributions of the number of HARQ-ACK for PUSCH at initial transmission in MU-MIMO usage per MCS.

It is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by 1 whenever PUSCH is which of CRC is OK is transmitted (including MU- MIMO usage) for initial transmission when the MCS table of the PUSCH is group of subcounter.*MCSTable* and when the MCS index of the PUSCH is group of subcounter.*MCSInitial*.
2. Integer number (U32)
3. OR.ULHARQ.DistPuschMcsMuMimoInitialTxAck.*MCSInitial.MCSTable* where *MCSInitial* is the MCS index for initial transmission:

0: IMCS = 0

1: IMCS = 1

...

28: IMCS = 28

*MCSTable* is the MCS table:

0: MCS index table 1 for PDSCH/PUSCH without transform precoding 1: MCS index table 2 for PDSCH/PUSCH without transform precoding 2: MCS index table 3 for PDSCH/PUSCH without transform precoding

3: MCS index table for PUSCH with transform precoding and 64QAM (q=1) 4: MCS index table for PUSCH with transform precoding and 64QAM (q=2) 5: MCS index table 2 for PUSCH with transform precoding and 64QAM(q=1) 6: MCS index table 2 for PUSCH with transform precoding and 64QAM (q=2)

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

### NR DL HARQ performance measurements

#### Distribution of PDSCH per MCS (initial transmission)

1. This counter provides the distributions of PDSCH at initial transmission. This counter excludes MU-MIMO usage. It is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by 1 whenever PDSCH is transmitted (except for MU-MIMO usage) for initial transmission when the MCS table of the PDSCH is group of subcounter.*MCSTable* and when the MCS index of the PDSCH is group of subcounter.*MCSInitial*.
2. Integer number (U32)
3. OR.DLHARQ.DistPdschMcsInitial.*MCSInitial.MCSTable* where *MCSInitial* is the MCS index for initial transmission: 0: IMCS = 0

1: IMCS = 1

...

28: IMCS = 28

*MCSTable* is the MCS table:

0: MCS index table 1 for PDSCH/PUSCH without transform precoding 1: MCS index table 2 for PDSCH/PUSCH without transform precoding 2: MCS index table 3 for PDSCH/PUSCH without transform precoding

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Distribution of PDSCH per MCS (initial transmission/ACK)

1. This counter provides the distributions of the number of HARQ-ACK for PDSCH at initial transmission per MCS. This counter excludes MU-MIMO usage.

It is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by 1 whenever the HARQ-ACK feedback is received for the corresponding PDSCH (except for MU-MIMO usage) transmitted for initial transmission when the MCS table of the PDSCH is group of subcounter.*MCSTable* and when the MCS index of the PDSCH is group of subcounter.*MCSInitial*.
2. Integer number (U32)
3. OR.DLHARQ.DistPdschMcsInitialTxAck.*MCSInitial.MCSTable* where *MCSInitial* is the MCS index for initial transmission:

0: IMCS = 0

1: IMCS = 1

...

28: IMCS = 28

*MCSTable* is the MCS table:

0: MCS index table 1 for PDSCH/PUSCH without transform precoding 1: MCS index table 2 for PDSCH/PUSCH without transform precoding 2: MCS index table 3 for PDSCH/PUSCH without transform precoding

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Distribution of PDSCH per MCS (any/ACK)

1. This counter provides the distributions of the number of HARQ-ACK for PDSCH at initial transmission or retransmission per MCS. This counter excludes MU-MIMO usage.

It is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by 1 whenever the HARQ-ACK feedback is received for the corresponding PDSCH (except for MU-MIMO usage) transmitted for initial transmission or retransmission when the MCS table of the PDSCH is group of subcounter.*MCSTable* and when the MCS index of the PDSCH is group of subcounter.*MCSRetx*.
2. Integer number (U32)
3. OR.DLHARQ.DistPdschMcsAny.*MCSRetx.MCSTable* where *MCSRetx* is the MCS index for initial transmission or retransmission:

0: IMCS = 0

1: IMCS = 1

...

31: IMCS = 31

*MCSTable* is the MCS table:

0: MCS index table 1 for PDSCH/PUSCH without transform precoding 1: MCS index table 2 for PDSCH/PUSCH without transform precoding 2: MCS index table 3 for PDSCH/PUSCH without transform precoding

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Distribution of PDSCH per MCS (exceeding HARQ retransmission)

1. This counter provides the distributions of the number of HARQ-NACK for PDSCH at final retransmission per MCS. This counter excludes MU-MIMO usage.

It is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by 1 whenever the HARQ-NACK feedback or no feedback related with HARQ is received for the corresponding PDSCH (except for MU-MIMO usage) transmitted for final retransmission when the MCS table of the PDSCH is group of subcounter.*MCSTable* and when the MCS index of the PDSCH is group of subcounter.*MCSRetx*.
2. Integer number (U32)
3. OR.DLHARQ.DistPdschMcsExceedHarqRetrans.*MCSRetx.MCSTable* where *MCSRetx* is the MCS index for final retransmission:

0: IMCS = 0

1: IMCS = 1

...

31: IMCS = 31

*MCSTable* is the MCS table:

0: MCS index table 1 for PDSCH/PUSCH without transform precoding 1: MCS index table 2 for PDSCH/PUSCH without transform precoding 2: MCS index table 3 for PDSCH/PUSCH without transform precoding

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Distribution of PDSCH per MCS (MU-MIMO/initial transmission)

1. This counter provides the distributions of PDSCH at initial transmission in MU-MIMO usage per MCS. It is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by 1 whenever PDSCH is transmitted (including MU-MIMO usage) for initial transmission when the MCS table of the PDSCH is group of subcounter.*MCSTable* and when the MCS index of the PDSCH is group of subcounter.*MCSInitial*.
2. Integer number (U32)
3. OR.DLHARQ.DistPdschMcsMuMimoInitialTx.*MCSInitial.MCSTable* where *MCSInitial* is the MCS index for initial transmission:

0: IMCS = 0

1: IMCS = 1

...

28: IMCS = 28

*MCSTable* is the MCS table:

0: MCS index table 1 for PDSCH/PUSCH without transform precoding 1: MCS index table 2 for PDSCH/PUSCH without transform precoding 2: MCS index table 3 for PDSCH/PUSCH without transform precoding

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Distribution of PDSCH per MCS (MU-MIMO/initial transmission/ACK)

1. This counter provides the distributions of the number of HARQ-ACK for PDSCH at initial transmission in MU-MIMO usage per MCS.

It is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by 1 whenever the HARQ-ACK feedback is received for the corresponding PDSCH (including MU-MIMO usage) transmitted for initial transmission when the MCS table of the PDSCH is group of subcounter.*MCSTable* and when the MCS index of the PDSCH is group of subcounter.*MCSInitial*.
2. Integer number (U32)
3. OR.DLHARQ.DistPdschMcsMuMimoInitialTxAck.*MCSInitial.MCSTable* where *MCSInitial* is the MCS index for initial transmission:

0: IMCS = 0

1: IMCS = 1

...

28: IMCS = 28

*MCSTable* is the MCS table:

0: MCS index table 1 for PDSCH/PUSCH without transform precoding 1: MCS index table 2 for PDSCH/PUSCH without transform precoding 2: MCS index table 3 for PDSCH/PUSCH without transform precoding

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

### NR UL Signal Quality Level performance measurements

#### Distribution of PUSCH per MCS (Rank1)

1. This counter provides the distributions of PUSCH transmitted with rank 1 per MCS. It is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by 1 whenever PUSCH is received with Rank 1 when the MCS table of the PUSCH is group of subcounter.*MCSTable* and when the MCS index of the PUSCH is group of subcounter.*MCSRetx*.
2. Integer number (U32)
3. OR.ULSQL.DistPuschMcsRank1.*MCSRetx.MCSTable* where *MCSRetx* is the MCS index for initial transmission: 0: IMCS = 0

1: IMCS = 1

...

31: IMCS = 31

*MCSTable* is the MCS table:

0: MCS index table 1 for PDSCH/PUSCH without transform precoding 1: MCS index table 2 for PDSCH/PUSCH without transform precoding 2: MCS index table 3 for PDSCH/PUSCH without transform precoding

3: MCS index table for PUSCH with transform precoding and 64QAM (q=1) 4: MCS index table for PUSCH with transform precoding and 64QAM (q=2) 5: MCS index table 2 for PUSCH with transform precoding and 64QAM(q=1) 6: MCS index table 2 for PUSCH with transform precoding and 64QAM (q=2)

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Distribution of PUSCH per MCS (Rank2)

1. This counter provides the distributions of PUSCH transmitted with rank 2 per MCS. It is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by 1 whenever PUSCH is received with Rank 2 when the MCS table of the PUSCH is group of subcounter.*MCSTable* and when the MCS index of the PUSCH is group of subcounter.*MCSRetx*.
2. Integer number (U32)
3. OR.ULSQL.DistPuschMcsRank2.*MCSRetx.MCSTable* where *MCSRetx* is the MCS index for initial transmission: 0: IMCS = 0

1: IMCS = 1

...

31: IMCS = 31

*MCSTable* is the MCS table:

0: MCS index table 1 for PDSCH/PUSCH without transform precoding 1: MCS index table 2 for PDSCH/PUSCH without transform precoding 2: MCS index table 3 for PDSCH/PUSCH without transform precoding

3: MCS index table for PUSCH with transform precoding and 64QAM (q=1) 4: MCS index table for PUSCH with transform precoding and 64QAM (q=2) 5: MCS index table 2 for PUSCH with transform precoding and 64QAM(q=1) 6: MCS index table 2 for PUSCH with transform precoding and 64QAM (q=2)

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Distribution of PUSCH per SSB (Rank1)

1. This counter provides the distributions of PUSCH transmitted with rank 1 per SSB.

It is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by 1 whenever PUSCH is received with Rank 1 when the SSB used for the PUSCH is group of subcounter.*SSB*.
2. Integer number (U32)
3. OR.ULSQL.DistPuschSsbBeamRank1.*SSB* where *SSB* is the SSB index: 0: #0

1: #1

...

63: #63

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Distribution of PUSCH per SSB (Rank2)

1. This counter provides the distributions of PUSCH transmitted with rank 2 per SSB. It is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by 1 whenever PUSCH is received with Rank 2 when the SSB used for the PUSCH is group of subcounter.*SSB*.
2. Integer number (U32)
3. OR.ULSQL.DistPuschSsbBeamRank2.*SSB* where *SSB* is the SSB index: 0: #0

1: #1

...

63: #63

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### PUSCH received power

1. This counter measures the following x and provides round(x, 2)?102. x is the statistics of received power of FL DMRS of PUSCH. This counter obtains the power for every slot or mini slot in which PUSCH reception is expected. The power is normalized by PRB and antenna port. If Rx beam is created by some antenna ports, this counter is calculated with the power of only the antenna ports used to create Rx beam.

It is recommended to support for O-DU.

##### SI

1. Measurement subcounter of subcounter.*statistic*(avg.) is calculated by round(x/y, 2) \* 102, where:

x is incremented by the volume of power of front loaded DMRS of PUSCH whenever PUSCH reception is expected when SSB used for PUSCH is group of subcounter.SSB. The power is normalized by PRB and antenna port. If Rx beam is created by some antenna ports, this counter is calculated with the power of only the antenna ports used to create Rx beam.

y is incremented by 1 whenever PUSCH reception is expected when SSB used for PUSCH is group of subcounter.*SSB*.

Measurement subcounter of subcounter.statistic(max/min) is maximum/minimum number of round(z, 2) \* 102 . It is assigned whenever z is updated by the volume round(z, 2) \* 102, if round(z, 2) \* 102 is bigger/smaller than previously counted volume, where:

z is the volume of power of front loaded DMRS of PUSCH whenever PUSCH reception is expected when SSB used for PUSCH is group of subcounter.*SSB*. The power is normalized by PRB and antenna port. If Rx beam is created by some antenna ports, this counter is calculated with the power of only the antenna ports used to create Rx beam.

1. dBm/102 (S16)
2. OR.ULSQL.PuschRxPower.*SSB.statistic* where *SSB* is the SSB index: 0: #0

1: #1

...

63: #63

*statistic* is 0: average

1: maximum

2: minimum

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### PUSCH RSSI

1. This counter measures the following x and provides round(x, 2)?102. x is the statistic of the power of the REs in which PUSCH DMRS reception is expected.

It is recommended to support for O-DU.

##### SI

1. Measurement subcounter of subcounter.*statistic*(avg.) is calculated by round(x/y, 2) \* 102, where:

x is incremented by the volume of power of the RE which PUSCH DMRS reception is expected whenever PUSCH reception is expected when SSB used for PUSCH is group of subcounter.*SSB*.

y is incremented by 1 whenever PUSCH reception is expected when SSB used for PUSCH is group of subcounter.*SSB*.

Measurement subcounter of subcounter.statistic(max/min) is maximum/minimum number of round(z, 2) \* 102. It is assigned whenever z is updated by the volume round(z, 2) \* 102, if round(z, 2) \* 102 is bigger/smaller than previously counted volume, where:

z is the volume of power of the RE which PUSCH DMRS reception is expected whenever PUSCH reception is expected when SSB used for PUSCH is group of subcounter.SSB.

1. dBm/102 (S16)
2. OR.ULSQL.PuschRssi.*SSB.statistic* where *SSB* is the SSB index: 0: #0

1: #1

...

63: #63

*statistic* is 0: average

1: maximum

2: minimum

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### PUSCH SINR

1. This counter measures the following x and provides round(x, 2)?102. x is the statistics of PUSCH with 2 dB bin of SINR of UE specific PUSCH.

It is optional counter for O-DU.

##### SI

1. Measurement subcounter of subcounter.*statistic*(avg.) is calculated by round(x/y, 2) \* 102, where:

x is incremented by the volume of SINR of the UE specific PUSCH when SSB used for PUSCH is group of subcounter.*SSB* and when MIMO layer of the PUSCH is group of subcounter.*MIMO*.

y is incremented by 1 whenever PUSCH which power detection check is OK is received when SSB used for PUSCH is group of subcounter.*SSB* and when MIMO layer of the PUSCH is group of subcounter.*MIMO*.

Measurement subcounter of subcounter.*statistic*(max/min) is maximum/minimum number of round(z, 2) \* 102. It is assigned whenever z is updated by the volume round(z, 2) \* 102, if round(z, 2) \* 102 is bigger/smaller than previously counted volume, where:

z is the volume of SINR of the UE specific PUSCH when SSB used for PUSCH is group of subcounter.*SSB* and when MIMO layer of the PUSCH is group of subcounter.*MIMO*.

1. dB/102 (S16)
2. OR.ULSQL.PuschSinr.*SSB*.*MIMO.statistic* where *SSB* is the SSB index: 0: #0

1: #1

...

63: #63

*MIMO* is the number of MIMO layer: 0: 1 layer

1: 2 layer

...

7: 8 layer

*statistic* is 0: average

1: maximum

2: minimum

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### PUCCH RSSI

1. This counter measures the following x and provides round(x, 2)?102. x is the statistics of the power of the REs in which PUCCH DMRS reception is expected.

It is recommended to support for O-DU.

##### SI

1. Measurement subcounter of subcounter.*statistic*(avg.) is calculated by round(x/y, 2) \* 102, where:

x is incremented by the volume of power of the RE which PUCCH DMRS reception is expected whenever PUCCH reception is expected when SSB used for PUCCH is group of subcounter.*SSB*.

y is incremented by 1 whenever PUCCH reception is expected when SSB used for PUCCH is group of subcounter.*SSB*.

Measurement subcounter of subcounter.statistic(max/min) is maximum/minimum number of round(z, 2) \* 102. It is assigned whenever z is updated by the volume round(z, 2) \* 102, if round(z, 2) \* 102 is bigger/smaller than previously counted volume, where:

z is the volume of power of the RE which PUCCH DMRS reception is expected whenever PUCCH reception is expected when SSB used for PUCCH is group of subcounter.*SSB.*

1. dBm/102 (S16)
2. OR.ULSQL.PucchRssi.*SSB.statistic* where *SSB* is the SSB index: 0: #0

1: #1

...

63: #63

*statistic* is 0: average

1: maximum

2: minimum

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### PUCCH SINR

1. This counter measures the following x and provides round(x, 2)?102. x is the statistics of SINR of UE specific PUCCH. It is optional counter for O-DU.

##### SI

1. Measurement subcounter of subcounter.*statistic*(avg.) is calculated by round(x/y, 2) \* 102, where:

x is incremented by the volume of SINR of the UE specific PUCCH when SSB used for PUCCH is group of subcounter.*SSB*.

y is incremented by 1 whenever PUCCH which power detection check is OK is received when SSB used for PUCCH is group of subcounter.*SSB*.

Measurement subcounter of subcounter.*statistic*(max/min) is maximum/minimum number of round(z, 2) \* 102. It is assigned whenever z is updated by the volume round(z, 2) \* 102, if round(z, 2) \* 102 is bigger/smaller than previously counted volume, where:

z is the volume of SINR of the UE specific PUCCH when SSB used for PUCCH is group of subcounter.*SSB*.

1. dB/102 (S16)
2. OR.ULSQL.PucchSinr.*SSB.statistic* where *SSB* is the SSB index: 0: #0

1: #1

...

63: #63

*statistic* is 0: average

1: maximum

2: minimum

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### PRACH preamble correlation value

1. This counter measures the following x and provides round(x, 2) ?102. x is the statistics of the correlation value among preambles of the PRB where PRACH preamble is detected. This counter is normalized by PRB.

It is recommended to support for O-DU.

##### SI

1. Measurement of subcounter.SSB.*statistic*(avg.) is calculated by round(x/y, 2) \* 102, where:

x is incremented by the correlation volume among preambles of the PRB whenever PRACH preamble is detected when SSB used for PRACH is subcounter.*SSB*.

y is incremented by 1 whenever PRACH preamble is detected when SSB used for PRACH is subcounter.*SSB*.

The correlation value is calculated by summing the received power of the PRACH and the preamble repetition gain within one PRACH reception per SSB index.

Measurement of subcounter.SSB.*statistic*(max/min) is maximum/minimum number of round(z, 2) \* 102. It is assigned whenever z is updated by the volume round(z, 2) \* 102, if round(z, 2) \* 102 is bigger/smaller than previously counted volume, where:

z is the correlation volume among preambles of the PRB whenever PRACH preamble is detected when SSB used for PRACH is subcounter.*SSB*.

1. dBm/102 (S16)
2. OR.ULSQL.PrachPreambleCorrelationValue.*SSB.statistic* where *SSB* is the SSB index: 0: #0

1: #1

...

63: #63

*statistic* is 0: average

1: maximum

2: minimum

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### RSSI of PRACH transmission occasion

1. This counter measures the following x and provides round(x, 2) ?102. x is the statistics of the RACH occasion RSSI. This counter is normalized by PRB.

It is optional counter for O-DU.

##### SI

1. Measurement subcounter of subcounter.*statistic*(avg.) is calculated by round(x/y, 2) \* 102, where:

x is incremented by the volume of RSSI at every PRACH occasion when SSB used for PRACH is group of subcounter.*SSB*.

y is incremented by 1 at every PRACH occasion when SSB used for PRACH is group of subcounter.*SSB*.

Measurement subcounter of subcounter.*statistic*(max/min) is maximum/minimum number of round(z, 2) \* 102. It is assigned whenever z is updated by the volume round(z, 2) \* 102, if round(z, 2) \* 102 is bigger/smaller than previously counted volume, where:

z is the volume of RSSI at every PRACH occasion when SSB used for PRACH is group of subcounter.*SSB*.

1. dBm/102 (S16)
2. OR.ULSQL.RssiPrachTxOccasion.*SSB.statistic* where *SSB* is the SSB index: 0: #0

1: #1

...

63: #63

*statistic* is 0: average

1: maximum

2: minimum

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Distribution of path loss for FR1

1. This counter provides the distributions of PUSCH including PHR with a certain bin of the pathloss. This counter is for FR1.

It is optional counter for O-DU.

##### CC

1. This subcounter is measured only when the cell uses FR1.

Measurement subcounter is incremented by 1 whenever PHR is received when the SSB used for the PUSCH is group of subcounter.*SSB* and when the pathloss calculated with the PHR is group of subcounter.*binX*.

1. Integer number (U32)
2. OR.ULSQL.DistPathlossFr1.*SSB.binX* where *SSB* is the SSB index: 0: #0

1: #1

...

63: #63

binX is the bin of the pathloss, x. Bin1: 0 dB <= x < 40 dB

Bin2: 40 dB <= x < 45 dB Bin3: 45 dB <= x < 50 dB

...

Bin25: 155 dB <= x

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Path loss for FR2

1. This counter measures the following x and provides round(x, 2)?102. x is the statistics of the pathloss. This counter is for FR2.

It is optional counter for O-DU.

##### SI

1. This subcounter is measured only when the cell uses FR2.

Measurement subcounter of subcounter.*statistic*(avg.) is calculated by round(x/y, 2) \* 102, where:

x is incremented by the volume of the pathloss calculated with PHR whenever PHR is received when the SSB used for the PUSCH is group of subcounter.*SSB*.

y is incremented by 1 whenever PHR is received when the SSB used for the PUSCH is group of subcounter.*SSB*

Measurement subcounter of subcounter.*statistic*(max/min) is maximum/minimum number of round(z, 2) \* 102. It is assigned whenever z is updated by the volume round(z, 2) \* 102, if round(z, 2) \* 102 is bigger/smaller than previously counted volume, where:

z is the volume of the pathloss calculated with PHR whenever PHR is received when the SSB used for the PUSCH is group of subcounter.*SSB*.

1. dB/102 (S16)
2. OR.ULSQL.PathlossFr2.*SSB.statistic* where *SSB* is the SSB index: 0: #0

1: #1

...

63: #63

*statistic* is 0: average

1: maximum

2: minimum

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Detection of UL out-of-sync

1. This counter provides the number of the detection of UL out-of-sync for bearer type change from SN terminated split bearer to SN terminated MCG bearer or SgNB release or RRC release.

It is recommended to support for O-DU.

##### CC

1. Measurement subcounter is incremented by 1 whenever the UL out-of-sync is detected per SSB index of the UE: #0, #1,

..., #63 as subcounter.*SSB*.

1. Integer number (U32)
2. OR.ULSQL.DetectUlOutSync.*SSB* where *SSB* is the SSB index: 0: #0

1: #1

...

63: #63

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

### NR DL Signal Quality Level performance measurements

#### Distribution of PDSCH per MCS (Rank1)

1. This counter provides the distributions of PDSCH transmitted with rank 1 per MCS. It is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by 1 whenever PDSCH is transmitted with Rank 1 when the MCS table of the PDSCH is group of subcounter.*MCSTable* and when the MCS index of the PDSCH is group of subcounter.*MCSRetx*.
2. Integer number (U32)
3. OR.DLSQL.DistPdschMcsRank1.*MCSRetx.MCSTable* where *MCSRetx* is the MCS index for initial transmission: 0: IMCS = 0

1: IMCS = 1

...

31: IMCS = 31

*MCSTable* is the MCS table:

0: MCS index table 1 for PDSCH/PUSCH without transform precoding 1: MCS index table 2 for PDSCH/PUSCH without transform precoding 2: MCS index table 3 for PDSCH/PUSCH without transform precoding

3: MCS index table for PUSCH with transform precoding and 64QAM (q=1) 4: MCS index table for PUSCH with transform precoding and 64QAM (q=2) 5: MCS index table 2 for PUSCH with transform precoding and 64QAM(q=1) 6: MCS index table 2 for PUSCH with transform precoding and 64QAM (q=2)

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Distribution of PDSCH per MCS (Rank2)

1. This counter provides the distributions of PDSCH transmitted with rank 2 per MCS. It is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by 1 whenever PDSCH is transmitted with Rank 2 when the MCS table of the PDSCH is group of subcounter.*MCSTable* and when the MCS index of the PDSCH is group of subcounter.*MCSRetx*.
2. Integer number (U32)
3. OR.DLSQL.DistPdschMcsRank2.*MCSRetx.MCSTable* where *MCSRetx* is the MCS index for initial transmission: 0: IMCS = 0

1: IMCS = 1

...

31: IMCS = 31

*MCSTable* is the MCS table:

0: MCS index table 1 for PDSCH/PUSCH without transform precoding 1: MCS index table 2 for PDSCH/PUSCH without transform precoding 2: MCS index table 3 for PDSCH/PUSCH without transform precoding

3: MCS index table for PUSCH with transform precoding and 64QAM (q=1) 4: MCS index table for PUSCH with transform precoding and 64QAM (q=2) 5: MCS index table 2 for PUSCH with transform precoding and 64QAM(q=1) 6: MCS index table 2 for PUSCH with transform precoding and 64QAM (q=2)

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Distribution of PDSCH per MCS (Rank3)

1. This counter provides the distributions of PDSCH transmitted with rank 3 per MCS. It is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by 1 whenever PDSCH is transmitted with Rank 3 when the MCS table of the PDSCH is group of subcounter.*MCSTable* and when the MCS index of the PDSCH is group of subcounter.*MCSRetx*.
2. Integer number (U32)
3. OR.DLSQL.DistPdschMcsRank3.*MCSRetx.MCSTable* where *MCSRetx* is the MCS index for initial transmission: 0: IMCS = 0

1: IMCS = 1

...

31: IMCS = 31

*MCSTable* is the MCS table:

0: MCS index table 1 for PDSCH/PUSCH without transform precoding 1: MCS index table 2 for PDSCH/PUSCH without transform precoding 2: MCS index table 3 for PDSCH/PUSCH without transform precoding 3: MCS index table for PUSCH with transform precoding

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Distribution of PDSCH per MCS (Rank4)

1. This counter provides the distributions of PDSCH transmitted with rank 4 per MCS. It is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by 1 whenever PDSCH is transmitted with Rank 4 when the MCS table of the PDSCH is group of subcounter.*MCSTable* and when the MCS index of the PDSCH is group of subcounter.*MCSRetx*.
2. Integer number (U32)
3. OR.DLSQL.DistPdschMcsRank4.*MCSRetx.MCSTable* where *MCSRetx* is the MCS index for initial transmission: 0: IMCS = 0

1: IMCS = 1

...

31: IMCS = 31

*MCSTable* is the MCS table:

0: MCS index table 1 for PDSCH/PUSCH without transform precoding 1: MCS index table 2 for PDSCH/PUSCH without transform precoding 2: MCS index table 3 for PDSCH/PUSCH without transform precoding 3: MCS index table for PUSCH with transform precoding

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Distribution of PDSCH per SSB (Rank1)

1. This counter provides the distributions of PDSCH transmitted with rank 1 per SSB. It is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by 1 whenever PDSCH is transmitted with Rank 1 when the SSB used for the PDSCH is group of subcounter.*SSB*.
2. Integer number (U32)
3. OR.DLSQL.DistPdschSsbBeamRank1.*SSB* where *SSB* is the SSB index: 0: #0

1: #1

...

63: #63

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Distribution of PDSCH per SSB (Rank2)

1. This counter provides the distributions of PDSCH transmitted with rank 2 per SSB. It is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by 1 whenever PDSCH is transmitted with Rank 2 when the SSB used for the PDSCH is group of subcounter.*SSB*.
2. Integer number (U32)
3. OR.DLSQL.DistPdschSsbBeamRank2.*SSB* where *SSB* is the SSB index: 0: #0

1: #1

...

63: #63

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Distribution of PDSCH per SSB (Rank3)

1. This counter provides the distributions of PDSCH transmitted with rank 3 per SSB. It is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by 1 whenever PDSCH is transmitted with Rank 3 when the SSB used for the PDSCH is group of subcounter.*SSB*.
2. Integer number (U32)
3. OR.DLSQL.DistPdschSsbBeamRank3.*SSB* where *SSB* is the SSB index: 0: #0

1: #1

...

63: #63

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Distribution of PDSCH per SSB (Rank4)

1. This counter provides the distributions of PDSCH transmitted with rank 4 per SSB. It is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by 1 whenever PDSCH is transmitted with Rank 4 when the SSB used for the PDSCH is group of subcounter.*SSB*.
2. Integer number (U32)
3. OR.DLSQL.DistPdschSsbBeamRank4.*SSB* where *SSB* is the SSB index: 0: #0

1: #1

...

63: #63

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Distribution of Wideband CQI for FR1

1. This counter provides the distributions of the wideband CQI reports. It is optional counter for O-DU.

##### CC

1. This subcounter is measured only when the cell uses FR1.

Measurement subcounter is incremented by 1 whenever CQI report is received when the SSB index used for the CQI report is group of subcounter.*SSB,* when the CQI table of the CQI report is group of subcounter.*CQITable* and when the CQI is group of subcounter.*CQI.*

1. Integer number (U32)
2. OR.DLSQL.DistWidebandCqiFR1.*SSB*.*CQITable.CQI* where *SSB* is the SSB index: 0: #0

1: #1

...

63: #63

*CQITable* is the CQI table:

0: table 1

1: table 2

*CQI* is the CQI index: 0: CQI index 0

1: CQI index 1

...

15: CQI index 15

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Wideband CQI for FR2

1. This counter measures the following x and provides round(x, 2)?102. x is the statistics of linear value of the wideband CQI reports.

It is optional counter for O-DU.

##### SI

1. This subcounter is measured only when the cell uses FR2.

Measurement subcounter of subcounter.*statistic*(avg.) is calculated by round(x/y, 2) \* 102, where:

x is incremented by the volume of CQI whenever CQI report is received when the SSB index used for the CQI report is group of subcounter.*SSB* and when the CQI table of the CQI report is group of subcounter.*CQITable.*

y is incremented by 1 whenever CQI report is received when the SSB index used for the CQI report is group of subcounter.*SSB* and when the CQI table of the CQI report is group of subcounter.*CQITable.*

Measurement subcounter of subcounter.*statistic*(max/min) is maximum/minimum number of round(z, 2) \* 102. It is assigned whenever z is updated by the volume round(z, 2) \* 102, if round(z, 2) \* 102 is bigger/smaller than previously counted volume, where:

z is the volume of CQI whenever CQI report is received when the SSB index used for the CQI report is group of subcounter.*SSB* and when the CQI table of the CQI report is group of subcounter.*CQITable*.

##### CQI/102 (S16)

1. OR.DLSQL.WidebandCqiFR2.*SSB*.*CQITable.statistic* where *SSB* is the SSB index: 0: #0

1: #1

...

63: #63

*CQITable* is the CQI table:

0: table 1

1: table 2

*statistic* is 0: average

1: maximum

2: minimum

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### PDCCH transmission power

1. This counter measures the following x and provides round(x, 2) ?102. x is the statistics of transmission power determined by outer-loop TPC of UE specific PDCCH. If one or more PDCCHs associated with same SSB are transmitted within some OFDM symbols in one slot, this counter counts 1 sample and calculates power as linear average within OFDM symbols. If one or more PDCCHs associated with different SSBs are transmitted in each OFDM symbols in the one slot, this counter counts the PDCCHs for each SSB, and doesn't calculate power as average within OFDM symbols.

It is optional counter for O-DU.

##### SI

1. Measurement of subcounter.SSB.DCI.*statistic*(avg.) is calculated by round(x/y, 2) \* 102, where:

x is incremented by the volume of transmission power of PDCCH whenever PDCCH is transmitted when SSB used for PDCCH is subcounter.*SSB* and when the DCI format of transmitted DCI is subcounter.SSB.*DCI*. If one or more PDCCHs associated with same SSB are transmitted within plural OFDM symbols in one slot, the volume is linear average within the OFDM symbols. If one or more PDCCHs associated with different SSBs are transmitted in each OFDM symbols in the one slot, x is incremented for each PDCCH per SSB.

y is incremented by 1 whenever PDCCH is transmitted when SSB used for PDCCH is subcounter.*SSB* and when the DCI format of transmitted DCI is subcounter.SSB.*DCI*. If one or more PDCCHs associated with same SSB are transmitted within plural OFDM symbols in one slot, y is only incremented once per slot. If one or more PDCCHs associated with different SSBs are transmitted in each OFDM symbols in the one slot, y is incremented once per OFDM symbol.

Measurement of subcounter.*statistic.SSB.DCI*(max/min) is maximum/minimum number of round(z, 2) \* 102. It is assigned whenever z is updated by the volume round(z, 2) \* 102, if round(z, 2) \* 102 is bigger/smaller than previously counted volume, where:

z is the volume of transmission power of PDCCH whenever PDCCH is transmitted when SSB used for PDCCH is subcounter.*SSB* and when the DCI format of transmitted DCI is subcounter.SSB.*DCI*. If one or more PDCCHs associated with same SSB are transmitted within plural OFDM symbols in one slot, the volume is linear average within OFDM symbols. If one or more PDCCHs associated with different SSBs are transmitted in each OFDM symbols in the one slot, z is once per OFDM symbol.

1. dBm/102 (S16)
2. OR.DLSQL.PdcchTxPower.*SSB.DCI.statistic* where *SSB* is the SSB index: 0: #0

1: #1

...

63: #63

*DCI* is the DCI format:

0: 0\_0

1: 0\_1

2: 1\_0

3: 1\_1

*statistic* is 0: average

1: maximum

2: minimum

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

### NR Beamforming performance measurements

#### Distribution of UEs per beam index

1. This counter provides distribution of the UEs with beam index. This counter obtains the number of the UEs every 100 ms.

This is recommended to support for O-DU.

##### CC

1. Measurement subcounter is incremented by the number of the UEs per SSB index of the UE: #0, #1, ..., #63 as subcounter.*SSB*.

The number is acquired as an instantaneous value at every 100ms.

1. Integer number

NOTE: The Integer number should be at least U32.

1. OR.BF.DistUeBeamIndex.*SSB* where

*SSB* is the SSB index:

0: #0

1: #1

..

63: #63

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Best and Second Best Beam distribution

1. This counter provides the distribution of Best and Second best beams. This counter is only updated when number of SSB is 8 or less.

This is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by the number of the UEs per the best and second best SSB index of the UE: best beam #0 and second beam #0, best beam #1 and second beam #0, ..., best beam#7 and second beam#7 as subcounter.*binX*.

The value for a given bin shall be incremented when either best or second best beam is changed for any reason.

1. Integer number

NOTE: The Integer number should be at least U32.

1. OR.BF.BestSecondBestBeamDist*.binX* where

*Bin1* is best beam #0 and second beam #0.

*Bin2* is best beam #1 and second beam #0.

*:*

*BinX* is best beam #a and second beam #b. :X = a+8b+1

*:*

*Bin64* is best beam#7 and second beam#7.

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### UE reported differential L1-RSRP of second best beam

1. This counter provides the distribution of the UE reported differential L1-RSRP of second best beam. This is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by 1 whenever L1-RSRP report is received when the differential L1-RSRP of second best beam is group of subcounter.bin.
2. Integer number (U16)
3. OR.BF.UeReportedDisffL1RsrpSecondBestBeam*.binX* where *binX* corresponds to the UE reported differential L1- RSRP, x, of second best beam

Bin1: 0 <= x < 2 dB Bin2: 2 dB <= x < 4 dB

...

Bin16: 30 dB <= x

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

### NR RACH Usage performance measurements

#### Received preambles in group A

1. This counter provides the number of the received random preambles of group A. This is recommended to support for O-DU.

##### CC

1. Measurement subcounter is incremented by 1 whenever random preamble of group A is received when the SSB which is used for preamble transmission is group of subcounter.*SSB*.
2. Integer number (U32)
3. OR.RACH.RxPreamblesGroupA.*SSB* where *SSB* is the SSB index: 0: #0

1: #1

... 63: #63

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### The number of received dedicated preamble

1. This counter provides the number of the received dedicated preambles. This is recommended to support for O-DU.

##### CC

1. Measurement subcounter is incremented by 1 whenever dedicated preamble is received when the SSB which is used for preamble transmission is group of subcounter.*SSB*.
2. Integer number (U32)
3. OR.RACH.NumRxDedictedPreamble.*SSB* where *SSB* is the SSB index: 0: #0

1: #1

... 63: #63

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Transmitted RARs for preamble in group A

1. This counter provides the number of the transmitted RAR for preambles of group A. This is recommended to support for O-DU.

##### CC

1. Measurement subcounter is incremented by 1 whenever RAR for preamble of group A is transmitted when the SSB which is used for RAR transmission is group of subcounter.*SSB*.
2. Integer number (U32)
3. OR.RACH.TxRarPreambleGroupA.*SSB* where *SSB* is the SSB index: 0: #0

1: #1

... 63: #63

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Transmitted RARs for dedicated preamble

1. This counter provides the number of the transmitted RAR for dedicated preambles. This is recommended to support for O-DU.

##### CC

1. Measurement subcounter is incremented by 1 whenever RAR for dedicated preamble is transmitted when the SSB which is used for RAR transmission is group of subcounter.*SSB*.
2. Integer number (U32)
3. OR.RACH.TxRarDedicatedPreamble.*SSB* where *SSB* is the SSB index: 0: #0

1: #1

... 63: #63

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Failures at assignment of dedicated preamble

1. This counter provides the number indicating use of random preamble due to NG of dedicated preamble delivery. This is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by 1 whenever RA procedure using random preamble is triggered due to NG of dedicated preamble assignment when the SSB which is used for random preamble transmission is group of subcounter.*SSB*.
2. Integer number (U16)
3. OR.RACH.FailAssignmentDedicatedPreamble.*SSB* where *SSB* is the SSB index: 0: #0

1: #1

... 63: #63

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Occasions for dedicated preamble reception

1. This counter provides the number of the occasions for dedicated preamble. If multiple dedicated preambles are assigned, this counter calculated as the number of assigned preambles.

This is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by the number of assigned preambles whenever dedicated preamble(s) are expected to be received when the SSB which is used for random preamble transmission is group of subcounter.*SSB*.
2. Integer number (U32)
3. OR.RACH.OccasionDedicatedPreambleRx.*SSB* where *SSB* is the SSB index: 0: #0

1: #1

... 63: #63

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Failures at assignment of a dedicated preamble for PDCCH order RA (UL out-of- sync)

1. This counter provides the number of failures at assignment of a dedicated preamble when the gNB detects UL out-of- sync and tries CFRA operation (PDCCH order) to recover UL link connection.

This is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by 1 whenever a failure at assignment of a dedicated preamble is occurred due to UL out-of-sync when the SSB used for assignment of a dedicated preamble is group of subcounter.*SSB*.
2. Integer number (U16)
3. OR.RACH.FailAssignmentDedicatedPreamblePdcchOrderRaUlOutSync.*SSB* where *SSB* is the SSB index: 0: #0

1: #1

...

63: #63

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

### NR Timing Advance performance measurements

#### Distribution of NTA value of RAR message

1. This counter provides the distributions of RARs with the bin of NTA value described the following. The bin type is selected corresponding to CellSize.

This is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by 1 whenever RAR is transmitted when the SSB index used for the RAR is group of subcounter.*SSB* and when the NTA is group of subcounter.*binX*.
2. Integer number (U32)
3. OR.TA.DistNtaRarMessage.*SSB.binX* where

*SSB* is the SSB index:

0: #0

1: #1

..

63: #63

*binX* depends on cellSize below:

CellSize = *large*:

bin1: 0 <= NTA < 72765

bin2: 72765 <= NTA < 145530

...

bin10: 654885 <= NTA

CellSize = *middle*:

bin1: 0 <= NTA < 29106

bin2: 29106 <= NTA < 58212

...

bin10: 261954 <= NTA

CellSize = *small*: bin1: 0 <= NTA < 728

bin2: 728 <= NTA < 1456

...

bin10: 6552 <= NTA

CellSize = *Very small*:

Reserved

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

### NR Cell Utilization performance measurements (Type A)

#### Slots at which PDCCH resource shortage occurred

1. This counter provides the number of the slots when PDCCH shortage occurred. This is recommended to support for O-DU.

##### CC

1. Measurement subcounter is incremented by 1 at every slot in whcih CCE resource shortage restricts the multiplexing number of PDCCH at least once.
2. Integer number (U32)
3. OR.CellUA.SlotPdcchResourceShortageOccurred
4. NRCellDU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Cancelled DCI due to PDCCH resource shortage

1. This counter provides the number of the cancels of DCI transmission due to PDCCH resource shortage. This is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by the number of DCI which is canceled due to CCE resource shortage whenever CCE resource shortage restricts the multiplexing number of PDCCH.
2. Integer number (U32)
3. OR.CellUA.CancelDciPdcchResourceShortage
4. NRCellDU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Maximum UEs buffering UL/DL data

1. This counter obtains the number of UEs buffering UL/DL data every 100 ms and provides the maximum number of each 100 ms. The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC).

This is optional counter for O-DU.

##### CC

1. The measurement is the maximum number of x. It is assigned with period of 100ms by the volume x, if x is bigger than previously counted volume.

x is the number of the UEs, optionally which has UL and/or DL data within the filter*.* x is acquired as an instantaneous value at every 100ms.

NOTE: multiple 5QIs can be set per UE, each 5QI is counted per QoS flow.

1. Integer number (U16)
2. The measurement name has the form OR.CellUA.MaxUeBufferUlDlData or OR.CellUA.MaxUeBufferUlDlData\_*Filter*. Where *Filter* is a QoS level. Where QoS represents the mapped 5QI or QCI level.
3. NRCellDU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Maximum UEs buffering UL data

1. This counter obtains the number of UEs buffering UL data every 100 ms and provides the maximum number of each 100 ms. The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC).

This is optional counter for O-DU.

##### CC

1. The measurement is the maximum number of x. It is assigned with period of 100ms by the volume x, if x is bigger than previously counted volume.

x is the number of UEs, optionally which has UL data within the filter*.* x is and is acquired as an instantaneous value at every 100ms.

NOTE: multiple 5QIs can be set per UE, each 5QI is counted per QoS flow.

1. Integer number (U16)
2. The measurement name has the form OR.CellUA.MaxUeBufferUlData or OR.CellUA.MaxUeBufferUlData\_*Filter*. Where *Filter* is a QoS level. Where QoS represents the mapped 5QI or QCI level.
3. NRCellDU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Maximum UEs buffering DL data

1. This counter obtains the number of UEs buffering DL data every 100 ms and provides the maximum number of each 100 ms. The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC).

This is optional counter for O-DU.

##### CC

1. The measurement is the maximum number of x. It is assigned with period of 100ms by the volume x, if x is bigger than previously counted volume.

x is the number of Ues, optionally which has DL data within the filter*.* x is acquired as an instantaneous value at every 100ms.

NOTE: multiple 5QIs can be set per UE, each 5QI is counted per QoS flow.

1. Integer number (U16)
2. The measurement name has the form OR.CellUA.MaxUeBufferDlData or OR.CellUA.MaxUeBufferDlData\_*Filter*. Where *Filter* is a QoS level. Where QoS represents the mapped 5QI or QCI level.
3. NRCellDU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Multiplexed transmissions of PUSCH

1. This counter provides the accumulated number of the multiplication number of PUSCH. This is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by 1 at every slot in which PUSCH is received when the multiplexed number in frequency domain is group of subcounter.*mux*.
2. Integer number (U32)
3. OR.CellUA.MultiplexTxPusch.*mux* where *mux* is the number of multiplex: 0: 1 multiplex

1: 2 multiplex to 5 multiplex

2: 6 multiplex to 12 multiplex

3: more than 12 multiplex

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Multiplexed receptions of PDSCH

1. This counter provides the accumulated number of the multiplication number of PDSCH. This is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by 1 when PDSCH is recieved when the multiplexed number in frequency domain is group of subcounter.*mux*.
2. Integer number (U16)
3. OR.CellUA.MultiplexRxPdsch.*mux* where *mux* is the number of multiplex: 0: 1 multiplex

1: 2 multiplex to 5 multiplex

2: 6 multiplex to 12 multiplex

3: more than 12 multiplex

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Maximum DRX inactive UEs

1. This counter obtains the number of UEs configured as DRX inactive every 100 ms and provides the maximum number of each 100 ms.

This is optional counter for O-DU.

##### CC

1. Measurement subcounter is the maximum number of x. It is assigned with period of 100ms by the volume x, if x is bigger than previously counted volume.

x is the number of UEs of which *drx-InactivityTimer* is assumed to be running. x is acquired as an instantaneous value at every 100ms.

1. Integer number (U16)
2. OR.CellUA.MaxDrxInactiveUe
3. NRCellDU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Maximum DRX active UEs

1. This counter obtains the number of UEs configured as DRX active every 100 ms and provides the maximum number of each 100 ms.

This is optional counter for O-DU.

##### CC

1. Measurement subcounter is the maximum number of x. It is assigned with period of 100ms by the volume x, if x is bigger than previously counted volume.

x is the number of UEs which is configured *drx-config* and of which *drx-InactivityTimer* is assumed not to be running. x is acquired as an instantaneous value at every 100ms.

1. Integer number (U32)
2. OR.CellUA.MaxDrxActiveUe
3. NRCellDU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Distribution of trafficInactivityTimer

1. This counter provides the distribution of the UEs whose trafficInactivityTimer is running with 1 s bin of the trafficInactivityTimer. trafficInactivityTimer measures the consecutive time when no UL/DL data for the UE is available. This counter obtains the number of UEs every 1 m.

This is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by the number of UEs whose trafficInactivityTimer is in the value of the subcounter.*binX*.

The number is acquired as an instantaneous value at every 1 minute.

1. Integer number (U16)
2. OR.CellUA.DistTrafficInactiveTimer*.binX* where bin 1: 0 s <= trafficInactivityTimer< 1 s

bin 2: 1 s <= trafficInactivityTimer< 2 s

bin 3: 2 s <= trafficInactivityTimer< 4 s

bin 4: 4 s <= trafficInactivityTimer< 8 s

bin 5: 8 s <= trafficInactivityTimer< 16 s

bin 6: 16 s <= trafficInactivityTimer< 32 s

bin 7: 32 s <= trafficInactivityTimer< 64 s

bin 8: 64 s <= trafficInactivityTimer< 128 s

bin 9: 128 s <= trafficInactivityTimer

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Slots in which scheduler assigned as mini slot

1. This counter provides the number of slots with mini slot scheduling. This counter is for FR2. This is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by 1 at every slot in which PDSCH which is multiplexed in time domain in a slot is assigned.
2. Integer number (U32)
3. OR.CellUA.SlotSchedulerAssignMiniSlot
4. NRCellDU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Mini slots in which PUSCH was received

1. This counter provides the number of mini slots when PUSCH is received. This is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by 1 when PUSCH which is multiplexed in time domain in a slot is assigned.
2. Integer number (U32)
3. OR.CellUA.MiniSlotsPuschRx
4. NRCellDU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### UEs in the cell using this cell as PSCell or having activated SCell in DL

1. This counter provides the accumulated number of the UEs in the cell using this cell as PSCell or having activated SCell in DL. This counter obtains the number of the UEs every 100 ms.

This is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by the number of the UEs which using this cell as PSCell or activate SCell in DL.

The number is acquired as an instantaneous value at every 100ms.

1. Integer number (U32)
2. OR.CellUA.UeCellPscellActiveScellDl
3. NRCellDU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### UEs in the cell using this cell as PSCell or having activated SCell in UL

1. This counter provides the accumulated number of the UEs in the cell using this cell as PSCell or having activated SCell in UL. This counter obtains the number of the UEs every 100 ms.

This is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by the number of the UEs which using this cell as PSCell or activate SCell in UL.

The number is acquired as an instantaneous value at every 100ms.

1. Integer number (U32)
2. OR.CellUA.UeCellPscellActiveScellUl
3. NRCellDU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Distribution of PSCell UEs with X activated SCells in UL

1. This counter provides the distribution of the PSCell UE with the number of activated SCell in UL. This counter obtains the number of the UEs every 100 ms.

This is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by the number of the UE configured this cell as PSCell per the number of activated SCell in UL: 1 active SCell,, 2 active SCell, ..., 31 active SCell as subcounter.*SCell.*

The number is acquired as an instantaneous value at every 100ms.

1. Integer number (U32)
2. OR.CellUA.DistPscellUeXactiveScellUl.*NumScell* where *NumScell* is the number of active SCell: 0: 1 active SCell

1: 2 active SCell

...

30: 31 active SCell

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Distribution of PSCell UEs with X activated SCells in DL

1. This counter provides the distribution of the PSCell UEs with the number of activated SCell in DL. This counter obtains the number of the UEs every 100 ms.

This is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by the number of the UE configured this cell as PSCell per the number of activated SCell in DL: 1 active SCell,, 2 active SCell, ..., 31 active SCell as subcounter.*SCell.*

The number is acquired as an instantaneous value at every 100ms.

1. Integer number (U32)
2. OR.CellUA.DistPscellUeXactiveScellDl.*NumScell* where *NumScell* is the number of active SCell: 0: 1 active SCell

1: 2 active SCell

...

30: 31 active SCell

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Maximum amount of PSCell UEs (UL)

1. This counter obtains the number of the PSCell UEs for UL every 100 ms and provides the maximum number of each 100 ms.

This is optional counter for O-DU.

##### CC

1. Measurement subcounter is the maximum number of x. It is assigned with period of 100ms by the volume x, if x is bigger than previously counted volume.

x is the number of UE configured this cell as PSCell per the number of activated SCell in UL: 1 active SCell,, 2 active SCell, ..., 31 active SCell as subcounter.*SCell.* x is acquired as an instantaneous value at every 100ms.

1. Integer number (U16)
2. OR.CellUA.MaxPscellUeUl.*NumScell* where *NumScell* is the number of active SCell: 0: 1 active SCell

1: 2 active SCell

...

30: 31 active SCell

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Minimum amount of PSCell UEs (UL)

1. This counter obtains the number of the PSCell UEs for UL every 100 ms and provides the minimum number of each 100 ms.

This is optional counter for O-DU.

##### CC

1. Measurement subcounter is the minimum number of x. It is assigned with period of 100ms by the volume x, if x is smaller than previously counted volume.

x is the number of the UE configured this cell as PSCell per the number of activated SCell in UL: 1 active SCell,, 2 active SCell, ..., 31 active SCell as subcounter.*SCell.* x is acquired as an instantaneous value at every 100ms.

1. Integer number (U16)
2. OR.CellUA.MinPscellUeUl.*NumScell* where *NumScell* is the number of active SCell: 0: 1 active SCell

1: 2 active SCell

...

30: 31 active SCell

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Maximum amount of PSCell UEs (DL)

1. This counter obtains the number of the PSCell UEs for DL every 100 ms and provides the maximum number of each 100 ms.

This is optional counter for O-DU.

##### CC

1. Measurement subcounter is the maximum number of x. It is assigned with period of 100ms by the volume x, if x is bigger than previously counted volume.

x is the number of the UE configured this cell as PSCell per the number of activated SCell in DL: 1 active SCell,, 2 active SCell, ..., 31 active SCell as subcounter.*SCell.* x is acquired as an instantaneous value at every 100ms.

1. Integer number (U16)
2. OR.CellUA.MaxPscellUeDl.*NumScell* where *NumScell* is the number of active SCell: 0: 1 active SCell

1: 2 active SCell

...

30: 31 active SCell

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Minimum amount of PSCell UEs (DL)

1. This counter obtains the number of the PSCell UEs for DL every 100 ms and provides the minimum number of each 100 ms.

This is optional counter for O-DU.

##### CC

1. Measurement subcounter is the minimum number of x. It is assigned with period of 100ms by the volume x, if x is smaller than previously counted volume.

x is the number of the UE configured this cell as PSCell per the number of activated SCell in DL: 1 active SCell,, 2 active SCell, ..., 31 active SCell as subcounter.SCell. x is acquired as an instantaneous value at every 100ms.

1. Integer number (U16)
2. OR.CellUA.MinPscellUeDl.*NumScell* where *NumScell* is the number of active SCell: 0: 1 active SCell

1: 2 active SCell

...

30: 31 active SCell

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Activation/Deactivation MAC CE (SCell Active)

1. This counter provides the number of the Activation/Deactivation MAC Ces transmitted for Scell activation. This is optional counter for O-DU.

##### CC

1. Measurement subcounter is the incremented by 1 whenever Activation/Deactivatoin MAC Ces is transmitted for Scell activation.
2. Integer number (U16)
3. OR.CellUA.ActDeactMacCeScellAct
4. NRCellDU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Activation/Deactivation MAC CE (SCell Deactive)

1. This counter provides the number of the Activation/Deactivation MAC CEs transmitted for SCell deactivation. If Activation/Deactivation MAC CE isn't transmitted when sCellDeactivationTimer expires, this counter includes the number of sCellDeactivationTimer expiry.

This is optional counter for O-DU.

##### CC

1. Measurement subcounter is the incremented by 1 whenever Activation/Deactivatoin MAC CEs is transmitted for SCell deactivation or whenever sCellDeactivationTimer managed at O-DU expires.
2. Integer number (U16)
3. OR.CellUA.ActDeactMacCeScellDeact
4. NRCellDU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Distribution of DL Total PRB Usage

1. Refer to 3GPP TS 28.552 [2] clause 5.1.1.2.3 O-RAN addition:

Averaging is done over a time period tn of 1s.

bin 1: 0 % <= PRB usage < 5 % bin 2: 5 % <= PRB usage < 10 %

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| bin 3: 10 % <= PRB usage < | 15 % |
| bin 4: 15 % <= PRB usage < | 20 % |
| bin 5: 20 % <= PRB usage < | 25 % |
| bin 6: 25 % <= PRB usage < | 30 % |
| bin 7: 30 % <= PRB usage < | 35 % |
| bin 8: 35 % <= PRB usage < | 40 % |
| bin 9: 40 % <= PRB usage < | 45 % |
| bin 10: 45 % <= PRB usage < | 50 % |
| bin 11: 50 % <= PRB usage < | 55 % |
| bin 12: 55 % <= PRB usage < | 60 % |
| bin 13: 60 % <= PRB usage < | 65 % |
| bin 14: 65 % <= PRB usage < | 70 % |
| bin 15: 70 % <= PRB usage < | 75 % |
| bin 16: 75 % <= PRB usage < | 80 % |
| bin 17: 80 % <= PRB usage < | 85 % |
| bin 18: 85 % <= PRB usage < | 90 % |
| bin 19: 90 % <= PRB usage < | 95 % |
| bin 20: 95 % <= PRB usage < | 100 % |

</div>

This is recommended to support for O-DU.

The counter is split into subcounters per S-NSSAI. The counter is recommended when related slice feature is supported.

1. Refer to 3GPP TS 28.552 [2] clause 5.1.1.2.3
2. Refer to 3GPP TS 28.552 [2] clause 5.1.1.2.3 O-RAN addition:

Averaging is done over a time period tn of 1s and the bin defined in description should be used.

If S-NSSAI subcounter is maintained, the number of measurements is accumulated per the number of supported S- NSSAI.

1. Refer to 3GPP TS 28.552 [2] clause 5.1.1.2.3
2. Refer to 3GPP TS 28.552 [2] clause 5.1.1.2.3 O-RAN addition:

Subcounter

OR.RRU.PrbTotDlDist.BinX.*SNSSAI*, where SNSSAI identifies the S-NSSAI.

1. Refer to 3GPP TS 28.552 [2] clause 5.1.1.2.3
2. Refer to 3GPP TS 28.552 [2] clause 5.1.1.2.3
3. Refer to 3GPP TS 28.552 [2] clause 5.1.1.2.3
4. Refer to 3GPP TS 28.552 [2] clause 5.1.1.2.3

#### Distribution of UL Total PRB Usage

1. Refer to 3GPP TS 28.552 [2] clause 5.1.1.2.4 O-RAN addition:

Averaging is done over a time period tn of 1s.

bin 1: 0 % <= PRB usage < 5 %

bin 2: 5 % <= PRB usage < 10 %

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| bin 3: 10 % <= PRB usage < | 15 % |
| bin 4: 15 % <= PRB usage < | 20 % |
| bin 5: 20 % <= PRB usage < | 25 % |
| bin 6: 25 % <= PRB usage < | 30 % |
| bin 7: 30 % <= PRB usage < | 35 % |
| bin 8: 35 % <= PRB usage < | 40 % |
| bin 9: 40 % <= PRB usage < | 45 % |
| bin 10: 45 % <= PRB usage < | 50 % |
| bin 11: 50 % <= PRB usage < | 55 % |
| bin 12: 55 % <= PRB usage < | 60 % |
| bin 13: 60 % <= PRB usage < | 65 % |
| bin 14: 65 % <= PRB usage < | 70 % |
| bin 15: 70 % <= PRB usage < | 75 % |
| bin 16: 75 % <= PRB usage < | 80 % |
| bin 17: 80 % <= PRB usage < | 85 % |
| bin 18: 85 % <= PRB usage < | 90 % |
| bin 19: 90 % <= PRB usage < | 95 % |
| bin 20: 95 % <= PRB usage < | 100 % |

</div>

This is recommended to support for O-DU.

The counter is split into subcounters per S-NSSAI. The counter is recommended when related slice feature is supported.

1. Refer to 3GPP TS 28.552 [2] clause 5.1.1.2.4
2. Refer to 3GPP TS 28.552 [2] clause 5.1.1.2.4 O-RAN addition:

Averaging is done over a time period tn of 1s and the bin defined in description should be used.

If S-NSSAI subcounter is maintained, the number of measurements is accumulated per the number of supported S- NSSAI.

1. Refer to 3GPP TS 28.552 [2] clause 5.1.1.2.4
2. Refer to 3GPP TS 28.552 [2] clause 5.1.1.2.4 O-RAN addition:

Subcounter

OR.RRU.PrbTotUlDist.BinX.*SNSSAI*, where SNSSAI identifies the S-NSSAI.

1. Refer to 3GPP TS 28.552 [2] clause 5.1.1.2.4
2. Refer to 3GPP TS 28.552 [2] clause 5.1.1.2.4
3. Refer to 3GPP TS 28.552 [2] clause 5.1.1.2.4
4. Refer to 3GPP TS 28.552 [2] clause 5.1.1.2.4

#### Average DL Cell throughput

1. This counter provides the Average DL Cell throughput of MAC. This counter is obtained by accumulating the MAC level volume of a data, and then dividing by the scheduled time per cell. The measurement is performed at the MAC level. This measurement can be split into subcounters per supported S-NSSAI.

This is optional counter for O-DU.

The counter is split into subcounters per S-NSSAI. The counter is recommended when related slice feature is supported.

##### SI

1. Measurement subcounter is calculated by x/y.

x is incremented by the volume of DL MAC PDU whenever the successfully delivery of DL MAC PDU is confirmed.

y is incremented by the transmission period (e.g. 0.5ms or 0.125ms) for the PDU whenever DL MAC PDU is transmitted (i.e. including HARQ retransmission) .

If S-NSSAI subcounter is maintained, the number of measurements is accumulated per the number of supported S- NSSAI.

1. kbps (U32)
2. OR.CellUA.AveDlCellThroughput or OR.CellUA.AveDlCellThroughput.*SNSSAI*, where SNSSAI identifies the S- NSSAI.
3. NRCellDU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Average UL Cell throughput

1. This counter provides the Average UL Cell throughput of MAC. This counter is obtained by accumulating the MAC level volume of a data, and then dividing by the scheduled time per cell. The measurement is performed at the MAC level. This measurement can be split into subcounters per S-NSSAI.

This is optional counter for O-DU.

The counter is split into subcounters per S-NSSAI. The counter is recommended when related slice feature is supported.

##### SI

1. Measurement subcounter is calculated by x/y.

x is incremented by the volume of UL MAC PDU whenever UL MAC PDU is successfully received.

y is incremented by the transmission period whenever the UL MAC PDU is received (i.e. including HARQ retransmission) .

If S-NSSAI subcounter is maintained, the number of measurements is accumulated per the number of supported S- NSSAI.

1. kbps (U32)
2. OR.CellUA.AveUlCellThroughput or OR.CellUA.AveUlCellThroughput.*SNSSAI*, where SNSSAI identifies the S- NSSAI.
3. NRCellDU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Average DL Beam throughput

1. This counter provides the Average DL Beam throughput of MAC. This counter is obtained by accumulating the MAC level volume of a data, and then dividing by the scheduled time per SSB index. The measurement is performed at the MAC level.

This is optional counter for O-DU.

##### SI

1. Measurement subcounter is calculated by x/y.

x is incremented by the volume of DL MAC PDU whenever DL MAC PDU is confirmed the successfully delivery when the SSB used for PDSCH is the group of subcounter.*SSB*.

y is incremented by the transmission period whenever the DL MAC PDU is transmitted (i.e. including HARQ retransmission) when the SSB used for PDSCH is the group of subcounter.*SSB*..

1. kbps (U32)
2. OR.CellUA.AveDlBeamThroughput.*SSB* where *SSB* is the SSB index: 0: #0

1: #1

...

63: #63

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Average UL Beam throughput

1. This counter provides the Average UL Beam throughput of MAC. This counter is obtained by accumulating the MAC level volume of a data, and then dividing by the scheduled time per SSB index. The measurement is performed at the MAC level.

This is optional counter for O-DU.

##### SI

1. Measurement subcounter is calculated by x/y.

x is incremented by the volume of UL MAC PDU whenever UL MAC PDU is successfully received when the SSB used for PUSCH is the group of subcounter.*SSB*.

y is incremented by the transmission period whenever the UL MAC PDU is received (i.e. including HARQ retransmission) when the SSB used for PUSCH is the group of subcounter.*SSB*.

1. kbps (U32)
2. OR.CellUA.AveUlBeamThroughput.*SSB* where *SSB* is the SSB index: 0: #0

1: #1

...

63: #63

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Average DL active DRB

1. This counter provides the average number of DL active DRB. This counter is obtained by averaging the number of the active DRB which has data in MAC/RLC buffer during measurement time per cell.

This is optional counter for O-DU.

##### SI

1. Measurement subcounter is calculated by x/y.

x is incremented by the number of the DRB which has DL data in MAC/RLC buffer at every 100 ms. y is calculated by measurement period divided by 100 ms.

1. Integer number (U32)
2. OR.CellUA.AveDlActDrb
3. NRCellDU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Maximum DL active DRB

1. This counter provides the maximum number of DL active DRB. This counter is obtained by providing the maximum number of the active DRB which has data in MAC/RLC buffer during measurement time per cell.

This is optional counter for O-DU.

##### SI

1. Measurement subcounter is the maximum number of x. It is assigned with period of 100ms by the volume x, if x is bigger than previously counted volume.

x is the number of the DRB which has DL data in MAC/RLC buffer. x is acquired as an instantaneous value at every 100ms.

1. Integer number (U32)
2. OR.CellUA.MaxDlActDrb
3. NRCellDU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community
   * + 1. Void
       2. Void
       3. Distribution of UL UE throughput in gNB
2. Refer to 3GPP TS 28.552 [2] clause 5.1.1.3.4 O-RAN addition:

The reference measurement time T for calculating the throughput of each UE is 1000ms. The bins corresponding to the UL throughput experienced by the UE is defined as follow. bin 1: 0 <= UL UE throughput < 0.05xThroughput

bin 2: 0.05xThroughput <= UL UE throughput < 0.1xThroughput

bin 3: 0.1xThroughput <= UL UE throughput < 0.15xThroughput bin 4: 0.15xThroughput <= UL UE throughput < 0.2xThroughput

bin 5: 0.2xThroughput <= UL UE throughput < 0.25xThroughput bin 6: 0.25xThroughput <= UL UE throughput < 0.3xThroughput bin 7: 0.3xThroughput <= UL UE throughput < 0.35xThroughput bin 8: 0.35xThroughput <= UL UE throughput < 0.4xThroughput bin 9: 0.4xThroughput <= UL UE throughput < 0.45xThroughput bin 10: 0.45xThroughput <= UL UE throughput < 0.5xThroughput bin 11: 0.5xThroughput <= UL UE throughput < 0.55xThroughput bin 12: 0.55xThroughput <= UL UE throughput < 0.6xThroughput bin 13: 0.6xThroughput <= UL UE throughput < 0.65xThroughput bin 14: 0.65xThroughput <= UL UE throughput < 0.7xThroughput bin 15: 0.7xThroughput <= UL UE throughput < 0.75xThroughput bin 16: 0.75xThroughput <= UL UE throughput < 0.8xThroughput bin 17: 0.8xThroughput <= UL UE throughput e < 0.85xThroughput bin 18: 0.85xThroughput <= UL UE throughput < 0.9xThroughput bin 19: 0.9xThroughput <= UL UE throughput < 0.95xThroughput bin 20: 0.95xThroughput <= UL UE throughput < Throughput

\*Throughput is a predefined value in the implementation

The measurement is optionally calculated per S-NSSAI, per QoS level (mapped 5QI or QCI in EN-DC) and PLMN ID, according to 3GPP TS 28.552 [2] clause 5.1.1.3.4.

This is recommended to support for O-DU.

1. Refer to 3GPP TS 28.552 [2] clause 5.1.1.3.4
2. Refer to 3GPP TS 28.552 [2] clause 5.1.1.3.4 O-RAN addition:

The per UE throughput is calculated by the following formula. And the bin defined in description should be used.

If ?ThpTimeUl > 0, ?ThpVolUl

?ThpTimeUl

If ?ThpTimeUl=0,0[kbit/s]

x 1000[kbits/s]

1. Refer to 3GPP TS 28.552 [2] clause 5.1.1.3.4
2. Refer to 3GPP TS 28.552 [2] clause 5.1.1.3.4 O-RAN addition:

The measurement name has the form OR.DRB.UEThpUlDist.Bin or OR.DRB.UEThpUlDist.Bin\_*Filter*. Where *Filter* is

a combination of PLMNID, QoS level and SNSSAI. Where PLMNID represents the PLMN ID, QoS represents the mapped 5QI or QCI level, and SNSSAI represents S-NSSAI.

1. gNBDUFunction
2. Refer to 3GPP TS 28.552 [2] clause 5.1.1.3.4
3. Refer to 3GPP TS 28.552 [2] clause 5.1.1.3.4
4. Refer to 3GPP TS 28.552 [2] clause 5.1.1.3.4

#### Distribution of DL UE throughput in gNB

1. Refer to 3GPP TS 28.552 [2] clause 5.1.1.3.2 O-RAN addition:

The reference measurement time T for calculating the throughput of each UE is 1000ms. The bins corresponding to the DL throughput experienced by the UE is defined as follow. bin 1: 0 <= DL UE throughput < 0.05xThroughput

bin 2: 0.05xThroughput <= DL UE throughput < 0.1xThroughput

bin 3: 0.1xThroughput <= DL UE throughput < 0.15xThroughput bin 4: 0.15xThroughput <= DL UE throughput < 0.2xThroughput bin 5: 0.2xThroughput <= DL UE throughput < 0.25xThroughput bin 6: 0.25xThroughput <= DL UE throughput < 0.3xThroughput bin 7: 0.3xThroughput <= DL UE throughput < 0.35xThroughput bin 8: 0.35xThroughput <= DL UE throughput < 0.4xThroughput bin 9: 0.4xThroughput <= DL UE throughput < 0.45xThroughput bin 10: 0.45xThroughput <= DL UE throughput < 0.5xThroughput bin 11: 0.5xThroughput <= DL UE throughput < 0.55xThroughput bin 12: 0.55xThroughput <= DL UE throughput < 0.6xThroughput bin 13: 0.6xThroughput <= DL UE throughput < 0.65xThroughput bin 14: 0.65xThroughput <= DL UE throughput < 0.7xThroughput bin 15: 0.7xThroughput <= DL UE throughput < 0.75xThroughput bin 16: 0.75xThroughput <= DL UE throughput < 0.8xThroughput bin 17: 0.8xThroughput <= DL UE throughput < 0.85xThroughput bin 18: 0.85xThroughput <= DL UE throughput < 0.9xThroughput bin 19: 0.9xThroughput <= DL UE throughput < 0.95xThroughput bin 20: 0.95xThroughput <= DL UE throughput < Throughput

\*Throughput is a predefined value in the implementation

The measurement is optionally calculated per S-NSSAI, per QoS level (mapped 5QI or QCI in EN-DC) and PLMN ID, according to 3GPP TS 28.552 [2] clause 5.1.1.3.2.

This is recommended to support for O-DU.

1. Refer to 3GPP TS 28.552 [2] clause 5.1.1.3.2
2. Refer to 3GPP TS 28.552 [2] clause 5.1.1.3.2 O-RAN addition:

The per UE throughput is calculated by the following formula. And the bin defined in description should be used.

If ?ThpTimeDl > 0, ?ThpVolDl

?ThpTimeDl

If ?ThpTimeDl=0,0[kbit/s]

x 1000[kbits/s]

1. Refer to 3GPP TS 28.552 [2] clause 5.1.1.3.2
2. Refer to 3GPP TS 28.552 [2] clause 5.1.1.3.2 O-RAN addition:

The measurement name has the form OR.DRB.UEThpDlDist.Bin or OR.DRB.UEThpDlDist.Bin\_*Filter*. Where *Filter* is a combination of PLMNID, QoS level and SNSSAI. Where PLMNID represents the PLMN ID, QoS represents the mapped 5QI or QCI level, and SNSSAI represents S-NSSAI.

1. gNBDUFunction
2. Refer to 3GPP TS 28.552 [2] clause 5.1.1.3.2
3. Refer to 3GPP TS 28.552 [2] clause 5.1.1.3.2
4. Refer to 3GPP TS 28.552 [2] clause 5.1.1.3.2

#### Distribution of DL packet drop rate

1. This measurement provides distribution of UE's fraction of RLC SDU packets which are dropped on the downlink, due to high traffic load, traffic management etc, in the gNB-DU. Only user-plane traffic (DTCH) is considered. A dropped packet is one who context is removed from the gNB-DU without any part of it having been transmitted on the air interface.

The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC) and per S-NSSAI. The filter is recommended when related slice feature is supported.

The reference measurement time T for calculating the packet drop rate of each UE is 1000ms. The bins corresponding to the DL packet drop rate experienced by the UE is defined as follow. bin 1: 0 % <= DL Packet drop rate < 5 %

bin 2: 5 % <= DL Packet drop rate < 10 % bin 3: 10 % <= DL Packet drop rate < 15 % bin 4: 15 % <= DL Packet drop rate < 20 % bin 5: 20 % <= DL Packet drop rate < 25 % bin 6: 25 % <= DL Packet drop rate < 30 % bin 7: 30 % <= DL Packet drop rate < 35 % bin 8: 35 % <= DL Packet drop rate < 40 % bin 9: 40 % <= DL Packet drop rate < 45 % bin 10: 45 % <= DL Packet drop rate < 50 % bin 11: 50 % <= DL Packet drop rate < 55 % bin 12: 55 % <= DL Packet drop rate < 60 % bin 13: 60 % <= DL Packet drop rate < 65 % bin 14: 65 % <= DL Packet drop rate < 70 % bin 15: 70 % <= DL Packet drop rate < 75 % bin 16: 75 % <= DL Packet drop rate < 80 % bin 17: 80 % <= DL Packet drop rate < 85 % bin 18: 85 % <= DL Packet drop rate < 90 % bin 19: 90 % <= DL Packet drop rate < 95 % bin 20: 95 % <= DL Packet drop rate < 100 %

##### SI

1. This measurement is obtained as: 1000000\*Number of DL packets, for which no part has been transmitted over the air, of the data radio bearers for each UE, that are discarded in the gNB-DU divided by Number of DL packets for data radio bearers for each UE that were received from gNB-CU-UP. Then map packet drop rate to the bins according to their value and the thresholds of the bins and then provide an integer value of the number of samples in Bin

Optionally QoS and S-NSSAI filtering is obtained by the number of measurements is accumulated per the number of supported QoS and S-NSSAI.

1. Integer number (U32)
2. The measurement name has the form OR.DRB.RlcPacketDropRateDlDist.Bin or OR.DRB.RlcPacketDropRateDlDist.Bin\_*Filter*. Where *Filter* is a combination of QoS level and SNSSAI. Where QoS represents the mapped 5QI or QCI level, and SNSSAI represents S-NSSAI.
3. gNBDUFunction
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### PDCCH for BWP switching

1. This measurement provides the total number of PDCCH for BWP switching. This measurement optionally is split into subcounters per BWP ID.

##### CC

1. The measurement is incremented by 1 whenever PDCCH for BWP switching is triggered. This measurement shall not count retransmission.

If the optional BWP ID level subcounter measurements are performed, the number of measurements is equal to the number of BWP IDs to which the target BWP is to be switched.

1. Integer number (U32)
2. OR.CellA.PdcchBwpSwitch or optionally OR.CellA.PdcchBwpSwitch.*BWP*, where *BWP* is BWP ID.
3. NRCellDU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Distribution of Activated BWP ID

1. This measurement provides distribution of UEs for activated BWP. The measurement is split into subcounters per active BWP ID. This counter obtains the number of the UEs in certain period with recommended value 100ms.

##### CC

1. Measurement subcounter is incremented by the number of the UEs per active BWP ID. This measurement shall count UEs configured multiple BWPs and triggered BWP switching by PDCCH. (ex. Energy saving). The number of UEs is acquired as an instantaneous value in certain period with recommended value 100ms.
2. Integer number (U16)
3. OR.CellA.DistActBwpId.*BWP*, where *BWP* is BWP ID.
4. NRCellDU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Non-linear Scale Distribution of UL UE throughput in gNB

1. Refer to 3GPP TS 28.552 [2] clause 5.1.1.3.4 O-RAN addition:

The reference measurement time T for calculating the throughput of each UE is 1000ms. The bins corresponding to the UL throughput experienced by the UE is defined as follows. bin1: 0 kbps <= UL UE Throughput < 100 Kbps

bin2: 100 Kbps <= UL UE Throughput < 200 Kbps bin3: 200 Kbps <= UL UE Throughput < 500 Kbps bin4: 500 Kbps <= UL UE Throughput < 1 Mbps bin5: 1 Mbps <= UL UE Throughput < 2 Mbps bin6: 2 Mbps <= UL UE Throughput < 5 Mbps bin7: 5 Mbps <= UL UE Throughput < 10 Mbps bin8: 10 Mbps <= UL UE Throughput < 20 Mbps bin9: 20 Mbps <= UL UE Throughput < 40 Mbps bin10: 40 Mbps <= UL UE Throughput < 60 Mbps bin11: 60 Mbps <= UL UE Throughput < 80 Mbps bin12: 80 Mbps <= UL UE Throughput < 100 Mbps

bin13: 100 Mbps <= UL UE Throughput < 200 Mbps bin14: 200 Mbps <= UL UE Throughput < 400 Mbps bin15: 400 Mbps <= UL UE Throughput < 600 Mbps bin16: 600 Mbps <= UL UE Throughput < 800 Mbps bin17: 800 Mbps <= UL UE Throughput < 1 Gbps bin18: 1 Gbps <= UL UE Throughput < 2 Gbps bin19: 2 Gbps <= UL UE Throughput < 5 Gbps bin20: 5 Gbps <= UL UE Throughput

The measurement is optionally calculated per S-NSSAI, per QoS level (mapped 5QI or QCI in EN-DC) and PLMN ID, according to 3GPP TS 28.552 [2] clause 5.1.1.3.4.

1. Refer to 3GPP TS 28.552 [2] clause 5.1.1.3.4
2. Refer to 3GPP TS 28.552 [2] clause 5.1.1.3.4 O-RAN addition:

The per UE throughput is calculated by the following formula. And the bin defined in description should be used.

If ?ThpTimeUl > 0, ?ThpVolUl

?ThpTimeUl

If ?ThpTimeUl=0,0[kbit/s]

x 1000[kbits/s]

1. Refer to 3GPP TS 28.552 [2] clause 5.1.1.3.4
2. Refer to 3GPP TS 28.552 [2] clause 5.1.1.3.4 O-RAN addition:

The measurement name has the form OR.DRB.UEThpUlLogDist.Bin or OR.DRB.UEThpUlLogDist.Bin*\_Filter*. Where

*Filter* is a combination of PLMNID, QoS level and SNSSAI. Where PLMNID represents the PLMN ID, QoS represents the mapped 5QI or QCI level, and SNSSAI represents S-NSSAI.

1. gNBDUFunction
2. Refer to 3GPP TS 28.552 [2] clause 5.1.1.3.4
3. Refer to 3GPP TS 28.552 [2] clause 5.1.1.3.4
4. Refer to 3GPP TS 28.552 [2] clause 5.1.1.3.4

#### Non-linear Scale Distribution of DL UE throughput in gNB

1. Refer to 3GPP TS 28.552 [2] clause 5.1.1.3.2 O-RAN addition:

The reference measurement time T for calculating the throughput of each UE is 1000ms. The bins corresponding to the DL throughput experienced by the UE is defined as follows. bin1: 0 kbps <= DL UE Throughput < 500 Kbps

bin2: 500 Kbps <= DL UE Throughput < 1 Mbps bin3: 1 Mbps <= DL UE Throughput < 5 Mbps bin4: 5 Mbps <= DL UE Throughput < 10 Mbps bin5: 10 Mbps <= DL UE Throughput < 20 Mbps bin6: 20 Mbps <= DL UE Throughput < 40 Mbps bin7: 40 Mbps <= DL UE Throughput < 60 Mbps bin8: 60 Mbps <= DL UE Throughput < 80 Mbps bin9: 80 Mbps <= DL UE Throughput < 100 Mbps

bin10: 100 Mbps <= DL UE Throughput < 120 Mbps bin11: 120 Mbps <= DL UE Throughput < 160 Mbps bin12: 160 Mbps <= DL UE Throughput < 200 Mbps bin13: 200 Mbps <= DL UE Throughput < 400 Mbps bin14: 400 Mbps <= DL UE Throughput < 800 Mbps bin15: 800 Mbps <= DL UE Throughput < 1.6 Gbps bin16: 1.6 Gbps <= DL UE Throughput < 2 Gbps bin17: 2 Gbps <= DL UE Throughput < 4 Gbps bin18: 4 Gbps <= DL UE Throughput < 8 Gbps bin19: 8 Gbps <= DL UE Throughput < 16 Gbps bin20: 16 Gbps <= DL UE Throughput

The measurement is optionally calculated per S-NSSAI, per QoS level (mapped 5QI or QCI in EN-DC) and PLMN ID, according to 3GPP TS 28.552 [2] clause 5.1.1.3.2.

1. Refer to 3GPP TS 28.552 [2] clause 5.1.1.3.2
2. Refer to 3GPP TS 28.552 [2] clause 5.1.1.3.2 O-RAN addition:

The per UE throughput is calculated by the following formula. And the bin defined in description should be used.

If ?ThpTimeDl > 0, ?ThpVolDl

?ThpTimeDl

If ?ThpTimeDl=0,0[kbit/s]

x 1000[kbits/s]

1. Refer to 3GPP TS 28.552 [2] clause 5.1.1.3.2
2. Refer to 3GPP TS 28.552 [2] clause 5.1.1.3.2 O-RAN addition:

The measurement name has the form OR.DRB.UEThpDlLogDist.Bin or OR.DRB.UEThpDlLogDist.Bin*\_Filter*. Where

*Filter* is a combination of PLMNID, QoS level and SNSSAI. Where PLMNID represents the PLMN ID, QoS represents the mapped 5QI or QCI level, and SNSSAI represents S-NSSAI.

1. gNBDUFunction
2. Refer to 3GPP TS 28.552 [2] clause 5.1.1.3.2
3. Refer to 3GPP TS 28.552 [2] clause 5.1.1.3.2
4. Refer to 3GPP TS 28.552 [2] clause 5.1.1.3.2

### NR Cell Utilization performance measurements (Type B)

#### PUSCH slots

1. This counter provides the number of the slots when PUSCH was received. This is recommended to support for O-DU.

##### CC

1. Measurement subcounter is incremented by 1 whenever PUSCH is received.
2. Integer number (U32)
3. OR.CellUB.PuschSlot
4. NRCellDU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### PDSCH slots

1. This counter provides the number of the slots when PDSCH was transmitted. This is recommended to support for O-DU.

##### CC

1. Measurement subcounter is incremented by 1 whenever PDSCH is transmitted.
2. Integer number (U32)
3. OR.CellUB.PdschSlot
4. NRCellDU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### PDCCH slots

1. This counter provides the number of the slots when PDCCH was transmitted. This is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by 1 whenever PDCCH is transmitted.
2. Integer number (U32)
3. OR.CellUB.PdcchSlot
4. NRCellDU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### CCE utilization rate

1. This counter measures the following x in the report period and provides round(x, 2)?102. x is the usage rate of CCE. This is recommended to support for O-DU.

##### SI

1. Measurement subcounter is round(x/y, 2)\*10^2.

x is incremented by the number of CCEs which are used to transmit DCI whenever PDCCH is transmitted. y is incremented by the number of CCEs which can be used whenever PDCCH is transmitted.

1. Percentage/102 (U16)
2. OR.CellUB.CceUtilizationRate
3. NRCellDU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### UEs buffering UL/DL data

1. This counter provides the accumulated number of the UEs buffering UL/DL data. This counter obtains the number of the UEs every 100 ms. The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC).

This is recommended to support for O-DU.

##### CC

1. The measurement is incremented by the number of the UEs, optional when UL and/or DL data is the filter. The number is acquired as an instantaneous value at every 100ms.

NOTE: multiple 5QIs can be set per UE, each 5QI is counted per QoS flow.

1. Integer number (U32)
2. The measurement name has the form OR.CellUB.UeBufferingUlDlData or OR.CellUB.UeBufferingUlDlData\_*Filter.* Where *Filter* is the QoS level. Where QoS represents the mapped 5QI or QCI level.
3. NRCellDU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### UEs buffering UL data

1. This counter provides the accumulated number of the UEs buffering UL data. This counter obtains the number of the UEs every 100 ms. The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC).

This is recommended to support for O-DU.

##### CC

1. The measurement is incremented by the number of the Ues, optionally when UL data is the filter. The number is acquired as an instantaneous value at every 100ms.

NOTE: multiple 5QIs can be set per UE, each 5QI is counted per QoS flow.

1. Integer number (U32)
2. The measurement name has the form OR.CellUB.UeBufferingUlData or OR.CellUB.UeBufferingUlData\_*Filter*. Where

*Filter* is the QoS level. Where QoS represents the mapped 5QI or QCI level.

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### UEs buffering DL data

1. This counter provides the accumulated number of the UEs buffering DL data. This counter obtains the number of the UEs every 100 ms. The measurement is optionally calculated per QoS level (mapped 5QI or QCI in EN-DC).

This is recommended to support for O-DU.

##### CC

1. The measurement is incremented by the number of the Ues, optionally when DL data is the filter*.* The number is acquired as an instantaneous value at every 100ms.

NOTE: multiple 5QIs can be set per UE, each 5QI is counted per QoS flow.

1. Integer number (U32)
2. The measurement name has the form OR.CellUB.UeBufferingDlData or OR.CellUB.UeBufferingDlData\_*Filter*. Where

*Filter* is the QoS level. Where QoS represents the mapped 5QI or QCI level.

1. NRCellDU
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### DRX inactive UEs

1. This counter provides the accumulated number of the UEs configured as DRX inactive. This counter obtains the number of the UEs every 100 ms.

This is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by the number of UEs of which *drx-InactivityTimer* is assumed to be running. The number is acquired as an instantaneous value at every 100ms.
2. Integer number (U32)
3. OR.CellUB.DrxInactUe
4. NRCellDU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### DRX active UEs

1. This counter provides the accumulated number of the UEs configured as DRX active. This counter obtains the number of the UEs every 100 ms.

This is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by the number of UEs which is configured *drx-config* and of which *drx- InactivityTimer* is assumed not to be running.

The number is acquired as an instantaneous value at every 100ms.

1. Integer number (U32)
2. OR.CellUB.DrxActUe
3. NRCellDU
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### PDSCH slot for paging

1. This counter provides the number of PDSCH slot in which paging message is actually transmitted.

##### CC

1. This counter is incremented by 1 even when the same paging message is transmitted for different beam.
2. Integer number (U32)
3. OR.CellUB.PdschSlotForPaging
4. NRCellDU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

### O-RU Performance measurements measured at O-DU

#### Uplink data and control frames received in total

1. The total number of control/user plane messages received. It is recommended to support for O-DU.

##### CC

1. The total number of control/user plane eCPRI or 1914.3 messages received. This counter is the sum of all valid and errored messages received.
2. Integer number (U64)
3. OR.ORU.RX.Total
4. aggregation (O-RU)
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Uplink data frames received on Time

1. The number of inbound user plane messages that arrived within the specified time window. It is recommended to support for O-DU.

##### CC

1. The number of inbound user plane (ecpri type 0) messages that arrived within the specified time window. Some "on time" messages may have sequence number errors or corruption errors but as long as they arrived within specified window time, this counter should include them. If the received message has been transport-fragmented, the full message shall be reassembled before checking its arrival window.
2. Integer number (U64)
3. OR.ORU.RXData.OnTime
4. aggregation (O-RU)
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Uplink data frames received too early

1. The number of inbound user plane messages which were detected to have arrived before the start of their designated receive window time.

It is recommended to support for O-DU.

##### CC

1. The number of inbound user plane messages which were detected to have arrived before the start of their designated receive window time.
2. Integer number (U64)
3. OR.ORU.RXData.TooEarly
4. aggregation (O-RU)
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Uplink data frames received too late

1. The number of inbound user plane messages which were detected to have arrived after the end of their designated receive window time.

It is recommended to support for O-DU.

##### CC

1. The number of inbound user plane messages which were detected to have arrived after the end of their designated receive window time.
2. Integer number (U64)
3. OR.ORU.RXData.TooLate
4. aggregation (O-RU)
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Uplink control frames received on Time

1. The number of inbound control plane messages that are completely arrived within the reception time window for uplink C-Plane messages (C-Plane UL). Refer to WG4 CUS-Plane specification [i.2], clause 4.4.3 and clause 9.1 for details.

It is recommended to support for O-DU.

##### CC

1. The number of valid inbound control plane (ecpri type 2) messages that arrived within the specified time window. Some "on time" messages may have sequence number errors or corruption errors but as long as they arrived within specified window time, this counter should count them.
2. Integer number (U64)
3. OR.ORU.RXControl.OnTime
4. aggregation (O-RU)
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Uplink control frames received too early

1. The number of inbound control plane messages which were detected to be arrived before the start of their designated reception time window for uplink C-Plane messages (C-Plane UL). Refer to WG4 CUS-Plane specification [i.2], clause

4.4.3 and clause 9.1 for details.

It is recommended to support for O-DU.

##### CC

1. The number of inbound control plane messages which were detected to be arrived before the start of their designated reception window time.

This counter increments whether the message is subsequently processed or dropped.

1. Integer number (U64)
2. OR.ORU.RXControl.TooEarly
3. aggregation (O-RU)
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Uplink control frames received too late

1. The number of inbound control plane messages which were detected to be arrived after the end of their designated reception time window for C-Plane messages (C-Plane UL). Refer to WG4 CUS-Plane specification [i.2], clause 4.4.3 and clause 9.1 for details.

It is recommended to support for O-DU.

##### CC

1. The number of inbound control plane messages which were detected to be arrived after the end of their designated reception window time.

This counter increments whether the message is subsequently processed or dropped.

1. Integer number (U64)
2. OR.ORU.RXControl.TooLate
3. aggregation (O-RU)
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Uplink data frames with detecting sequence identifier error

1. The number of inbound on time user plane messages in which a sequence identifier number error is detected. It is optional counter for O-DU.

##### CC

1. The number of inbound on time user plane messages in which a sequence identifier number error is detected.

This error occurs when the ecpriSeqId field does not increment. Both the Sequence ID, and Subsequence ID fields must be checked if transport fragmentation is supported otherwise only the Sequence ID field may be checked.

In addition to identifying a sending equipment sequencing error, this counter can increment when packets are dropped prior to reception by the RU, or when packets reordered by the network exceed the receiving device's capabilities.

1. Integer number (U64)
2. OR.ORU.RXData.SeqidErr
3. aggregation (O-RU)
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Uplink control frames with detecting sequence identifier error

1. The number of inbound on time control messages in which a sequence identifier number error is detected. It is optional counter for O-DU.

##### CC

1. The number of inbound on time control messages in which a sequence identifier number error is detected.

This counter increments under the same conditions as the rx\_seqid\_num\_err except for control plane messages.

1. Integer number (U64)
2. OR.ORU.RXControl.SeqidErr
3. aggregation (O-RU)
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Uplink frames with corrupt contents

1. The number of inbound on time messages with a correct ecpriSeqId (no sequence number error) which are dropped by the terminating entity due to the message containing one or more eCPRI/1914.3 or ORAN protocol errors.

It is optional counter for O-DU.

##### CC

1. The number of inbound on time messages with a correct ecpriSeqId (no sequence number error) which are dropped by the terminating entity due to the message containing one or more eCPRI/1914.3 or ORAN protocol errors.

Protocol errors are defined as when eCPRI/1914.3/ORAN defined fields contain invalid values or indicate unsupported capabilities. Some examples of this are:

* 1. PcId or section Id number which has not been configured.
  2. Unexpected use of C bit,
  3. Unconfigured or Unsupported udCompHdr setting.
  4. Unsupported section extension.
  5. Wrong ecpriVersion and/or payloadVersion information
  6. ecpriMessage field does not contain 0, 2, or 5.

1. Integer number (U64)
2. OR.ORU.RX.Corrupt
3. aggregation (O-RU)
4. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Uplink frames dropped and discarded

1. The total number of inbound messages which are discarded by the receiving O-RAN entity for any reason. It is optional counter for O-DU.

##### CC

1. The total number of inbound messages which are discarded by the receiving O-RAN entity for any reason.
2. Integer number (U64)
3. OR.ORU.RX.ErrDrop
4. aggregation (O-RU)
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Downlink control and data frames transmitted

1. The number of valid outbound control/user plane messages. It is recommended to support for O-DU.

##### CC

1. The number of valid outbound control/user plane messages.
2. Integer number (U64)
3. OR.ORU.TX.Total
4. aggregation (O-RU)
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Downlink control frames transmitted to O-RU in total at O-DU

1. The number of valid outbound control plane messages. This counter is required only if O-RU supports LAA/LBT capabilities.

It is recommended to support for O-DU.

##### CC

1. The number of valid outbound control plane messages. This counter is required only if O-RU supports LAA/LBT capabilities.
2. Integer number (U64)
3. OR.ORU.TXControl.Total
4. aggregation (O-RU)
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### TRx Control activation

1. This counter is divided into sub-counters, each of which provides the cumulative number of times the O-DU has attempted to activate the specific TRx Control configuration to the O-RU using C-Plane command within a specified reporting period.

The O-DU increments this sub-counter when it sends a C-Plane command to activate a specific TRx Control configuration in the O-RU.

The counter name follows the format OR.ORU.TrxCtrl.ActReq\_Filter,

where the filter represents the configuration ID (NOTE: This ID should correspond to the "mask-name" in the list

**supported-trx-control-masks** provided by O-RU in o-ran-module-cap.yang module and can be referenced in clause

20.3.1.2 of [4]).

For example, if the configuration is indexed by the mask-name "32TRx", then the sub-counter name would be OR.ORU.TrxCtrl.ActReq.32TRx.

This is optional counter for O-DU.

##### CC

1. O-RU supports Energy Saving by employing TRx Control.
2. Integer number (U16)
3. OR.ORU.TrxCtrl.ActReq\_Filter
4. NRCellDU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### TRx Control activation failure

1. This counter accumulates the total number of failures that occurred when O-DU attempts to activate the specific TRx Control configuration in O-RU using C-Plane command within a designated reporting period.

This counter is divided into sub-counters, each of which counts the unsuccessful attempts by the O-DU to activate a specific TRx Control configuration in the O-RU.

The O-DU increments the counter when it experiences a failure while attempting to activate a specific TRx Control configuration in the O-RU using a C-Plane command. Failures are counted based on:

* + The reception of a NACK message
  + The absence of expected ACK message

The counter name follows the format OR.ORU.TrxCtrl.Fail\_Filter,

where the filter represents the configuration ID (NOTE: This ID should correspond to the "mask-name" in the list

**supported-trx-control-masks** provided by O-RU in o-ran-module-cap.yang module and can be referenced in clause

20.3.1.2 of [4]).

For example, if the configuration is indexed by the mask-name "32TRx", then the sub-counter name would be OR.ORU.TrxCtrl.Fail.32TRx.

This is optional counter for O-DU.

##### CC

1. O-RU supports Energy Saving by employing TRx Control.
2. Integer number (U16)
3. OR.ORU.TrxCtrl.Fail\_Filter
4. NRCellDU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### TRx Control Cumulative Activity time

1. This counter provides the cumulative time that the O-RU utilizes in energy-saving mode using the TRx Control configuration within each reporting period.

This counter is divided into sub-counters, each recording the cumulative duration that the O-RU spends in a specific TRx Control configuration from the moment it is activated by the O-DU using C-Plane command.

Time is measured in milliseconds and should be rounded up in the event of a fractional result. The O-DU starts the timer immediately upon receiving confirmation of the activation of a specific TRx Control configuration in the O-RU. This counter becomes pertinent only when the O-DU receives an ACK/NACK message from the O-RU for the C-Plane based TRx Control implementation.

The counter name follows the format OR.ORU.TrxCtrl.UtiTime\_Filter,

where the filter represents the configuration ID (NOTE: This ID should correspond to the "mask-name" in the list

**supported-trx-control-masks** provided by O-RU in o-ran-module-cap.yang module and can be referenced in clause

20.3.1.2 of [4]).

For example, if the configuration is indexed by the mask-name "32TRx", then the sub-counter name would be OR.ORU.TrxCtrl.UtiTime.32TRx.

This is optional counter for O-DU.

##### CC

1. The O-RU supports Energy Saving by employing TRx Control. At least one TRx Control configuration is activated to conserve energy within the O-RU.
2. Integer number (U64) in unit of time
3. OR.ORU.TrxCtrl.UtiTime\_Filter
4. NRCellDU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Advanced Sleep Mode activation

1. This counter is divided into sub-counters, each of which provides the cumulative number of times the O-DU has attempted to activate the specific Sleep Mode to the O-RU using C-Plane command within a specified reporting period.

The O-DU increments this sub-counter when it sends a C-Plane command to activate a specific Sleep Mode in the O-RU. The counter name follows the format OR.ORU.Asm.ActReq\_Filter,

where the filter represents the configuration ID (NOTE: This ID should correspond to the "sleep-mode-type" provided by O-RU in the o-ran-module-cap.yang module and can be referenced in clause 20.4.1 of [4]).

As sub-counters are in relation to specific Sleep Modes by values of sleep-mode-type node, expected names for sub- counters are as follows:

name of sub-counter for SLEEP\_MODE\_0 should be OR.ORU.Asm.ActReq.SM0, name of sub-counter for SLEEP\_MODE\_1 should be OR.ORU.Asm.ActReq.SM1, name of sub-counter for SLEEP\_MODE\_2 should be OR.ORU.Asm.ActReq.SM2, name of sub-counter for SLEEP\_MODE\_3 should be OR.ORU.Asm.ActReq.SM3.

This is optional counter for O-DU.

##### CC

1. O-RU supports Energy Saving by employing Advanced Sleep Mode.
2. Integer number (U16)
3. OR.ORU.Asm.ActReq\_Filter
4. NRCellDU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Advanced Sleep Mode activation failure

1. This counter accumulates the total number of failures that occurred when O-DU attempts to activate the specific Sleep Mode in O-RU using C-Plane command within a designated reporting period.

This counter is divided into sub-counters, each of which counts the unsuccessful attempts by the O-DU to activate a specific Sleep Mode in the O-RU.

The O-DU increments the counter when it experiences a failure while attempting to activate a specific Sleep Mode in the O-RU using a C-Plane command. Failures are counted based on:

* + The reception of a NACK message
  + The absence of expected ACK message

The counter name follows the format OR.ORU.Asm.Fail\_Filter,

where the filter represents the configuration ID (NOTE: This ID should correspond to the "sleep-mode-type" provided by O-RU in the o-ran-module-cap.yang module and can be referenced in clause 20.4.1 of [4]).

As sub-counters are in relation to specific Sleep Modes by values of sleep-mode-type node, expected names for sub- counters are as follows:

name of sub-counter for SLEEP\_MODE\_0 should be OR.ORU.Asm.Fail.SM0, name of sub-counter for SLEEP\_MODE\_1 should be OR.ORU.Asm.Fail.SM1, name of sub-counter for SLEEP\_MODE\_2 should be OR.ORU.Asm.Fail.SM2, name of sub-counter for SLEEP\_MODE\_3 should be OR.ORU.Asm.Fail.SM3.

This is optional counter for O-DU.

##### CC

1. O-RU supports Energy Saving by employing Advanced Sleep Mode.
2. Integer number (U16)
3. OR.ORU.Asm.Fail\_Filter
4. NRCellDU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

#### Advanced Sleep Mode Cumulative Activity time

1. This counter provides the cumulative time that the O-RU utilizes in energy-saving mode using the Sleep Mode within each reporting period.

This counter is divided into sub-counters, each recording the cumulative duration that the O-RU spends in a specific Sleep Mode from the moment it is activated by the O-DU using C-Plane command.

Time is measured in milliseconds and should be rounded up in the event of a fractional result. The O-DU starts the timer immediately upon receiving confirmation of the activation of a specific Sleep Mode in the O-RU. This counter becomes pertinent only when the O-DU receives an ACK/NACK message from the O-RU for the C-Plane based Advanced Sleep Mode implementation.

The counter name follows the format OR.ORU.Asm.UtiTime\_Filter,

where the filter represents the configuration ID (NOTE: This ID should correspond to the "sleep-mode-type" provided by O-RU in the o-ran-module-cap.yang module and can be referenced in clause 20.4.1 of [4]).

As sub-counters are in relation to specific Sleep Modes by values of sleep-mode-type node, expected names for sub- counters are as follows:

name of sub-counter for SLEEP\_MODE\_0 should be OR.ORU.Asm.UtiTime.SM0, name of sub-counter for SLEEP\_MODE\_1 should be OR.ORU.Asm.UtiTime.SM1, name of sub-counter for SLEEP\_MODE\_2 should be OR.ORU.Asm.UtiTime.SM2, name of sub-counter for SLEEP\_MODE\_3 should be OR.ORU.Asm.UtiTime.SM3.

This is optional counter for O-DU.

##### CC

1. The O-RU supports Energy Saving by employing Advanced Sleep Mode. At least one Sleep Mode is activated to conserve energy within the O-RU.
2. Integer number (U64) in unit of time
3. OR.ORU.Asm.UtiTime\_Filter
4. NRCellDU
5. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

### O-RU Performance measurements measured at O-RU

Please see [4].

# Annex B (informative): 3GPP TS 32.404 template usage for O- RAN O1 defined Performance Measurements

An example of the usage of the 3GPP TS 32.404 [1] Performance Measurement template to define the O1 performance measurements contained in this document is shown. The fields to be specified, according to the 3GPP performance measurement template, are labelled from a) to i) as follows:

#### Clause Header (indicating the name of the Performance Measurement)

1. Description
2. Collection Method
3. Condition
4. Measurement Result
5. Measurement Type
6. Measurement Object Class
7. Switching Technology
8. Generation
9. Purpose

For more information about the meaning of each field refer to 3GPP TS 32.404 [1], clause 3.3

## O1 Performance Measurement Example

#### Received UL RLC PDUs

1. This counter provides the number of the received UL RLC PDUs. It is optional counter for O-DU.

##### CC

1. Measurement subcounter is incremented by 1 whenever the UL RLC PDU is received when the QCI or the 5QI of the UL RLC PDU is group of subcounter.Pmgroup.
2. Integer number (U32)
3. OR.RLC.RxUlRlcPdu.Pmgroup where Pmgroup is PmCountGroup number: 0: #0

1: #1

...

19: #19

1. gNBDUFunction
2. Packet Switched

##### 5GS

1. Network Operator's Traffic Engineering Community

# Annex (informative): Change History

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Date** | **Revision** | **Description** |
| 2024.07.29 | 01.00 | First Release Inclusion of CRs:   * Addition of O1 PMeas Scope * Addition of O1 PMeas Requirements * Change of short name from O1 PM to O1 PMeas * Addition of contents regarding further clarifications to clause 5.1 * Import of PMeas definitions from WG5 specs to Annex A * Application of new PMeas template in Annex A * Corrections and clarifications in Annex A * Addition of note regarding WG5 models to clause A.1 * Addition of new PMeas to clauses A.4.2.25 and A.4.2.26 * Addition of PMeas template usage to Annex B |
| 2024.12.09 | 02.00 | Summary of changes since the previous version:   * Adoption of 3GPP filter mechanism * Addition of a new general requirement * Update to 3GPP Release 18 references * Alignment with 3GPP for measurement values * Addition of counting triggers * Corrections and clarifications for measurement definitions * Voiding A.2.9.31, A.4.2.23, A.4.2.24, A.4.3.3, A.4.11.31, and A.4.11.32 * Voiding NOTE 2) and 5) in clause 5.1 |

</div>
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG10.TS.O1PMeas-R004-v02.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG10.TS.O1PMeas-R004-v02.00.docx).
