## O-RAN.WG5.U.0-R003-v07.00.docx

- View in [Reader Mode](https://simewu.com/spec-reader/pages/07-WG5/O-RAN.WG5.U.0-R003-v07.00.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG5.U.0-R003-v07.00.docx).

---

|  |
| --- |
| ![webwxgetmsgimg (7).jpeg](../assets/images/bea03973c631.jpg) |

|  |
| --- |
| Technical Specification |
|  |

|  |
| --- |
| O-RAN Work Group 5  (Open F1/W1/E1/X2/Xn Interfaces Working Group)  NR U-plane profile |

|  |
| --- |
|  |
| Copyright (C) 2024 by the O-RAN ALLIANCE e.V.  The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.  O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany  Register of Associations, Bonn VR 11238, VAT ID DE321720189 |

Contents

Foreword 4

Modal verbs terminology 4

1 Scope 5

2 References 5

3 Definitions of terms, symbols and abbreviations 6

3.1 Terms 6

3.2 Symbols 6

3.2 Abbreviations 6

4 User plane function 6

4.1 Flow control 6

4.1.1 Elementary procedures 6

4.1.2 Elements for the NR user plane protocols 7

Annex (informative): Change History 8

# Foreword

This Technical Specification (TS) has been produced by WG5 of the O-RAN Alliance.

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

The present document provides profiles for the EN-DC and NG-RAN related NR U-plane procedures and functions to achieve interoperability among different vendors. The profiles specify the expected behavior of each node, e.g., message flow of each use case, definitions of IEs, etc. which is not specified in 3GPP specifications. The profile specification provided in this document does not violate 3GPP specifications. Overall architecture in EN-DC and NG-RAN is illustrated in TS 37.340 [1] and TS 38.300 [3], respectively. Note that the following two figures are created by O-RAN WG5.

*![](../assets/images/1e5a6f9e6282.emf.png)*

Figure 1-1: EN-DC Overall Architecture

![](../assets/images/151c63944dea.emf.png)

Figure 1-2: NG-RAN Overall Architecture

# 2 References

The following documents contain provisions which, through reference in this text, constitute provisions of the present document.

- References are either specific (identified by date of publication, edition number, version number, etc.) or non-specific.

- For a specific reference, subsequent revisions do not apply.

- For a non-specific reference, the latest version applies. In the case of a reference to a 3GPP document (including a GSM document), a non-specific reference implicitly refers to the latest version of that document in Release 15.

[1] 3GPP TS 37.340 V16.6.0: "Evolved Universal Terrestrial Radio Access (E-UTRA) and NR; Multi-connectivity; Stage 2".

[2] 3GPP TS 38.425 V16.3.0: "NG-RAN; NR user plane protocol".

[3] 3GPP TS 38.300 V16.6.0: "NR; NR and NG-RAN Overall Description; Stage 2"

# 3 Definitions of terms, symbols and abbreviations

## 3.1 Terms

Definitions used in this specification refer to the ones defined in the referenced 3GPP specifications.

## 3.2 Symbols

Void

## 3.2 Abbreviations

Abbreviations defined in this document take precedence over the definition of the referenced 3GPP specifications.

DDDS DL DATA DELIVERY STATUS

AID ASSISTANCE INFORMATION DATA

# 4 User plane function

This section provides NR U-plane profile to achieve interoperability. In this version of the profile, RLC-AM and RLC-UM are supported. In this version of the profile, the following procedure is defined.

* Flow control

## 4.1 Flow control

### 4.1.1 Elementary procedures

#### 4.1.1.1 Node behaviour of the corresponding node

* When the corresponding node indicates Radio Link Outage over NR-U, the corresponding node shall not interpret the Radio Link Outage indication as a trigger to discard any remaining packets for RLC-AM and RLC-UM and shall not discard the packets unless receiving indication from the higher layer, e.g. RLC entity re-establishment/release, or buffer discard indication from the node hosting the NR PDCP entity.
* Unless a situation of overload at the corresponding node is encountered, the corresponding node may send DDDS in the following cases in addition to the cases TS 38.425 [2] defines:
  + Lost packet detection
  + Radio link outage
  + Stop scheduling for the data bearer

### 4.1.2 Elements for the NR user plane protocols

#### 4.1.2.1 General

* For the optional fields of DDDS, if the corresponding value is not available yet (e.g. no valid corresponding PDCP SN to be reported as the corresponding node hasn't yet transmitted any NR PDCP PDU to the lower layer), the corresponding node shall not include the corresponding IEs (including the corresponding indication for presence) in the DDDS. Once the value comes to be valid or updated, the corresponding node shall include them at least in the next DDDS.

NOTE: For Lost Packet Report fields, if the value is continuously reported in the consecutive DDDS, the node hosting the NR PDCP entity cannot identify whether the reported lost NR-U Sequence Number is for before or after the wrap around. How to prevent this is up to implementation.

#### 4.1.2.2 Report polling

* The node hosting the NR PDCP entity shall use this IE to trigger the corresponding node to send DDDS when the Report Polling Flag set to 1.
* The corresponding node shall send DDDS when the Report Polling Flag set to 1, unless a situation of overload at the corresponding node is encountered.

#### 4.1.2.3 Buffer discard Indication

* The corresponding node shall support both DL Discard Blocks and DL Flush for the buffer discard indication.

#### 4.1.2.4 User data existence flag

* In case of split bearer, when the corresponding node does not support the IE, e.g. for the corresponding node compliant with the former version of 3GPP specification, the node hosting the NR PDCP entity shall send the actual user data to notify the existence of user data.

#### 4.1.2.5 Assistance Information Report Polling Flag

* The node hosting the NR PDCP entity shall use this IE to trigger the corresponding node sending AID whenever it needs.

NOTE: Whether the corresponding node sends AID by itself is up to implementation.

#### 4.1.2.6 Radio quality assistance information

* It is configured via M-plane which assistance information to be included in AID.
* For the information configured to be reported and supported by the corresponding node:
  + if corresponding value is not available yet (e.g. no valid Power Headroom Report to be reported as the corresponding node hasn't yet received any Power Headroom Report from the UE):
    - the corresponding node shall not include the corresponding information in the reporting AID.
  + else:
    - the corresponding node shall include the latest value as the corresponding information in the consecutive AID, even when there is no update from the previous reported AID.
    - when Power Headroom Report is configured to be reported and multiple data bearers are configured to one UE, the corresponding node shall include Power Headroom Report information in all the reporting AID.
* For the information configured not to be reported or not supported by the corresponding node, the corresponding node shall not include the corresponding information in the AID.

#### 4.1.2.7 DL report NR PDCP PDU SN

* The node hosting the NR PDCP entity may use this IE to trigger the corresponding node to send DDDS when the NR PDCP PDU with this sequence number has been successfully delivered.
* The corresponding node, if supported, shall send DDDS when the NR PDCP PDU with the indicated DL report NR PDCP PDU SN has been successfully delivered, unless a situation of overload at the corresponding node is encountered. The DDDS sent as a response to a specific DL report NR PDCP PDU SN shall be sent only when all PDCP PDU SNs up to this DL report NR PDCP PDU have been successfully delivered in-sequence.

# Annex (informative): Change History

|  |  |  |  |
| --- | --- | --- | --- |
| Date | Revision | Author | Description |
| 2019.04.08 | 1.00 | H. Ou  (NTT DOCOMO) | Final version 1.00 |
| 2019.09.19 | 2.00 | H. Ou  (NTT DOCOMO) | This version of the specification contains updates for the clarification about the use of NR-U protocol. |
| 2020.06.19 | 3.00 | K. Teshima  (NTT DOCOMO) | This version of the specification contains general updates. In addition, minor editorial corrections were done in Annex ZZZ. |
| 2021.03.05 | 4.00 | K. Teshima  (NTT DOCOMO) | The version of 3GPP specs reffered in this specification is updated. |
| 2021.11.17 | 5.00 | K. Teshima  (NTT DOCOMO) | The version of 3GPP specs reffered in this specification is updated to Rel-16. |
| 2023.11.16 | 6.00 | K. Teshima  (NTT DOCOMO) | This version of the specification contains following updates:   * RLC UM is added to the supported Mode of RLC in this profile. * New profile of DL report NR PDCP PDU SN is specified. |
| 2024.03.07 | 6.00.01 | K. Saito  (NTT DOCOMO) | Following changes are included.   * Technical changes agreed in CR DCM-00-88 * Editorial error in the chapter of 4.1.1.1 (From "encounterd" to "encountered") * Format changes (not technical changes) to follow the latest O-RAN document template |
| 2024.03.14 | 6.00.02 | K.Saito  (NTT DOCOMO) | Editorial error in the chapter of 4.1.1.1 (From "difines" to "defines") was fixed. |
| 2024.03.21 | 6.00.03 | K.Saito  (NTT DOCOMO) | This version has the same content as the version 06.00.02 with the difference that this version has no comments, the track changes information is removed and the revision history is added. |
---

- View in [Reader Mode](https://simewu.com/spec-reader/pages/07-WG5/O-RAN.WG5.U.0-R003-v07.00.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG5.U.0-R003-v07.00.docx).
