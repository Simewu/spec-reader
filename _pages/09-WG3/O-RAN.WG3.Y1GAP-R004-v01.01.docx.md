---
title: O-RAN.WG3.Y1GAP-R004-v01.01.docx.md
author: O-RAN Alliance, WG3
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG3.Y1GAP-R004-v01.01.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG3.Y1GAP-R004-v01.01.docx).

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
| O-RAN Work Group 3 (Near-Real-time RAN Intelligent Controller and E2 Interface)  Y1 interface: General Aspects and Principles |

</div>

<div class="table-wrapper" markdown="block">

|  |
| --- |
|  |
| Copyright (C) 2024 by the O-RAN ALLIANCE e.V.  The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.  O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany  Register of Associations, Bonn VR 11238, VAT ID DE321720189 |

</div>

Contents

Foreword 3

Modal verbs terminology 3

1 Scope 4

2 References 4

2.1 Normative references 4

2.2 Informative references 4

3 Definition of terms, symbols and abbreviations 4

3.1 Terms 4

3.2 Symbols 5

3.3 Abbreviations 5

4 General Aspects 5

4.1 Reference Model for Y1 interface 5

4.2 Y1 interface general principles 5

4.3 Y1 interface specification objectives 5

5 Y1 services and operations 5

5.1 Introduction 5

5.2 Y1\_RAI\_Subscription service 6

5.2.1 General 6

5.2.2 RAI\_Subscribe service operation 6

5.2.3 RAI\_Unsubscribe service operation 6

5.2.4 RAI\_Notify service operation 7

5.3 Y1\_RAI\_Query service 7

5.3.1 General 7

5.3.2 RAI\_Query service operation 7

6 Supported information types 8

6.1 Introduction 8

6.2 RAI types 8

6.2.1 General 8

6.2.2 RAN performance analytics 8

7 Y1 interface protocol structure 8

7.1 General 8

7.2 Solution 1: HTTP REST with JSON 8

7.2.1 Introduction 8

7.2.2 Network layer 9

7.2.3 Transport layer 9

7.2.4 Security 9

7.2.5 Application 9

7.2.6 Data interchange 9

8 Other Y1 interface specifications 9

8.1 Y1 interface: Application Protocol 9

8.2 Y1 interface: Type Definitions 10

9 Other Security aspects 10

Annex (informative): Change History 11

# Foreword

This Technical Specification (TS) has been produced by WG3 of the O-RAN Alliance.

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

The present document specifies the stage2 definition of the general aspects and principles of the Y1 interface.

# 2 References

## 2.1 Normative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE 1: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

NOTE 2: In the case of a reference to a 3GPP document (including a GSM document), a non-specific reference implicitly refers to the latest version of that document in 3GPP Release 17.

The following referenced documents are necessary for the application of the present document.

[1] O-RAN.WG1.OAD, "O-RAN Architecture Description".

[2] O-RAN.WG3.UCR, "Near-Real-time RAN Intelligent Controller, Use Cases and Requirements".

[3] IETF RFC 9293: "Transmission Control Protocol".

[4] IETF RFC 5246: "The Transport Layer Security (TLS) Protocol Version 1.2".

[5] IETF RFC 8446: " The Transport Layer Security (TLS) Protocol Version 1.3".

[6] IETF RFC 9110: "HTTP Semantics".

[7] IETF RFC 8259: "The JavaScript Object Notation (JSON) Data Interchange Format".

[8] IETF RFC 8200: "Internet Protocol, Version 6 (IPv6) Specification".

[9] IETF RFC 791: "Internet Protocol".

[10] IETF RFC 9112: "HTTP/1.1".

[11] IETF RFC 9113: "HTTP/2".

[12] O-RAN.WG11.SecReqCtlSpecs, "Security Requirements and Controls Specification".

[13] O-RAN.WG3.Y1AP, "Y1 interface: Application Protocol".

[14] O-RAN.WG3.Y1TD, "Y1 interface: Type Definitions".

## 2.2 Informative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE 1: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

NOTE 2: In the case of a reference to a 3GPP document (including a GSM document), a non-specific reference implicitly refers to the latest version of that document in 3GPP Release 17.

The following referenced documents are not necessary for the application of the present document, but they assist the user with regard to a particular subject area.

[i.1] 3GPP TR 21.905: "Vocabulary for 3GPP Specifications".

# 3 Definition of terms, symbols and abbreviations

## 3.1 Terms

For the purposes of the present document, the terms given in 3GPP TR 21.905 [i.1] and O-RAN.WG1.OAD [1] apply.

## 3.2 Symbols

For the purposes of the present document, the symbols given in 3GPP TR 21.905 [i.1] and O-RAN.WG1.OAD [1] apply.

## 3.3 Abbreviations

For the purposes of the present document, the abbreviations given in 3GPP TR 21.905 [i.1], O-RAN.WG1.OAD [1] and the following apply:

RAI RAN Analytics Information

# 4 General Aspects

## 4.1 Reference Model for Y1 interface

As depicted in Figure 4.1-1, the O-RAN architecture [1] supports authorized consumers, which may be O-RAN or 3GPP NFs, to request RAN analytics information from Near-RT RIC via Y1 interface.

![]({{site.baseurl}}/assets/images/748f9db54636.png)

Figure 4.1-1: Reference Model for Y1 interface

## 4.2 Y1 interface general principles

The general principles for the specification of the Y1 interface are as follows:

- The Y1 interface is an open logical interface that enables services to be accessed by authorized consumers;

- The Y1 interface enables a multi-vendor environment and is independent of specific implementations of the Near-RT RIC;

- The Y1 interface is defined in an extensible way that enables new services and data types to be added without needing to change the protocols or the procedures.

## 4.3 Y1 interface specification objectives

The Y1 interface shall support the following:

- inter-connection of Near-RT RIC and Y1 consumers.

# 5 Y1 services and operations

## 5.1 Introduction

Table 5.1-1 illustrates the services that shall be supported on Y1 interface.

Table 5.1-1: Services supported on Y1 interface

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Service Name | Service Operations | Operation Semantics |
| Y1\_RAI\_Subscription | RAI\_Subscribe | Subscribe / Notify |
|  | RAI\_Unsubscribe |  |
|  | RAI\_Notify |  |
| Y1\_RAI\_Query | RAI\_Query | Request / Response |

</div>

## 5.2 Y1\_RAI\_Subscription service

### 5.2.1 General

**Service Description:** This service enables Y1 consumer to subscribe/unsubscribe for RAI.

When the subscription for RAI is accepted by Near-RT RIC, Y1 consumer receives an identifier (Subscription ID) from Near-RT RIC which shall be used to modify or delete this subscription.

### 5.2.2 RAI\_Subscribe service operation

**Service operation name:** RAI\_Subscribe.

**Description:** Y1 consumer subscribes to RAI.

**Inputs, Required:**

- RAI type ID: Uniquely identifies the type of RAI;

- Target entity: Information that identifies the entity to which the RAI is related, such as specific UE(s), slice(s), etc.;

- Notification target address: the endpoint for receiving the notification(s) associated with the subscription;

- Notification criteria: indicates the timing or the conditions when the RAI notifications are triggered.

**Inputs, Optional:**

- Filter parameters: The conditions for filtering RAI content to be included in the notification.

**Outputs Required:**

- Subscription ID, if the subscription is accepted;

- Error response, if the subscription is not accepted.

**Outputs, Optional:**

- None.

### 5.2.3 RAI\_Unsubscribe service operation

**Service operation name:** RAI\_Unsubscribe.

**Description:** Y1 consumer unsubscribes to RAI.

**Inputs, Required:**

- Subscription ID;

**Inputs, Optional:**

- None.

**Outputs, Required:**

- Operation execution result.

**Outputs, Optional:**

- None.

### 5.2.4 RAI\_Notify service operation

**Service operation name:** RAI\_Notify.

**Description:** Near-RT RIC notifies Y1 consumer of the RAI that has been subscribed to, or termination of the subscription.

**Inputs, Required:**

- Subscription ID;

- RAI type ID: see clause 5.2.2;

**Inputs, Optional:**

- The following parameters, if the notification contains RAI:

- RAI content: The set of attributes that compose a type of RAI, e.g., the longitude/latitude of a hypothetical RAI type "UE Position";

- Timestamp of RAI generation: The time when the RAI is generated;

- Validity period: The time period for which the RAI is valid;

- Confidence: Probability assertion, if the RAI is a prediction.

- The following parameters, if the notification is to terminate the subscription:

- Subscription termination indication: Indicates by Near-RT RIC that the subscription can no longer be fulfilled.

**Outputs, Required:**

- Operation execution result.

**Outputs, Optional:**

- None.

## 5.3 Y1\_RAI\_Query service

### 5.3.1 General

**Service description:** This service enables Y1 consumer to request and get RAI from Near-RT RIC.

### 5.3.2 RAI\_Query service operation

**Service operation name:** RAI\_Query.

**Description:** Y1 consumer queries RAI.

**Inputs, Required:**

- RAI type ID: see clause 5.2.2;

- Target entity: see clause 5.2.2.

**Inputs, Optional:**

- Filter parameters: The conditions for filtering RAI content to be included in the response.

**Outputs, Required:**

- RAI type ID (see clause 5.2.2), if the request is accepted;

- RAI content (see clause 5.2.4), if the request is accepted;

- Error response, if the request is not accepted.

**Outputs, Optional:**

- Timestamp of RAI generation: see clause 5.2.4;

- Validity period: see clause 5.2.4;

- Confidence: see clause 5.2.4.

# 6 Supported information types

## 6.1 Introduction

This clause specifies the information types exposed on Y1 interface.

## 6.2 RAI types

### 6.2.1 General

Table 6.2.1-1 shows the RAI types that may be supported on Y1 interface.

Table 6.2.1-1: RAI types supported on Y1 interface

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| RAI Type ID | Description |
| RAN performance analytics | Statistics or predictions on the RAN performance. |

</div>

### 6.2.2 RAN performance analytics

With RAN performance analytics, Near-RT RIC provides statistics or predictions on the RAN performance [2].

In particular, the following parameter values may be used in a request for this RAI type:

- RAI type ID: "RAN performance analytics";

- Target entity: e.g., S-NSSAI(s) or O-RAN UE ID;

- Filter Parameters:

- Subset(s) of analytics of this RAI type;

# 7 Y1 interface protocol structure

## 7.1 General

One or more solutions in terms of network protocol and data interchange format may be supported by Y1 interface. The use of a specific solution by the Near-RT RIC and the Y1 consumer may be pre-configured or negotiated via a proper mechanism.

The solution sets defined for Y1 interface are listed in Table 7.1-1.

Table 7.1-1: Solution sets for Y1 interface

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Solution Set | Clause |
| Solution 1: HTTP REST with JSON | 7.2 |

</div>

## 7.2 Solution 1: HTTP REST with JSON

### 7.2.1 Introduction

The protocol stack of this solution is shown on Figure 7.2.1-1:

- TCP [3] shall be used to provide the communication service at the transport layer;

- TLS [4][5] shall be supported to provide secure HTTP [6] connections;

- HTTP [6] shall be used as application-level protocol;

- JSON format [7] shall be used in the data interchange layer for the transport of documents.

![]({{site.baseurl}}/assets/images/a24c3959fc31.emf.png)

Figure 7.2.1-1: Illustration of the Y1 protocol stack

### 7.2.2 Network layer

IPv6 [8] and/or IPv4 [9] may be used as the network layer.

### 7.2.3 Transport layer

TCP [3] shall be used as transport protocol.

### 7.2.4 Security

The detailed requirements and protocols for security protection are defined in [12], clauses 5.2.7 and 5.1.3.2.

### 7.2.5 Application

As application layer, HTTP/1.1 [10] shall be supported, and HTTP/2 [11] should be supported. The HTTP semantics as defined in [6] shall be supported.

HTTP over TLS [6] shall be supported.

HTTP details such as use of standard headers, custom headers, error codes, methods, URIs etc. are specified in Application Protocols for Y1 interface.

The default TCP port numbers should be used for HTTP operation.

### 7.2.6 Data interchange

As a data interchange format, JSON [7] shall be supported.

# 8 Other Y1 interface specifications

## 8.1 Y1 interface: Application Protocol

Y1AP [13] specifies the Y1 interface application protocols.

## 8.2 Y1 interface: Type Definitions

Y1TD [14] specifies the detailed information types (e.g., RAI types) for Y1 interface.

# 9 Other Security aspects

Void

Annex (informative):
Change History

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Date | Revision | Description |
| 2023.01.10 | 00.00.01 | Create the skeleton. |
| 2023.03.23 | 00.00.02 | Implemented  [CMCC-2023.02.02-WG3-CR-0002-Y1GAP-General Aspects in Section 4-v02.docx](https://view.officeapps.live.com/op/view.aspx?src=https://api.media.atlassian.com/file/7c05c04a-404a-4cc9-bf8c-536f4cb02222/binary?token=eyJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIwOTA4N2MzYi0xNGU1LTQzM2YtOTZhYy03MjIyZjFkN2RiYTgiLCJhY2Nlc3MiOnsidXJuOmZpbGVzdG9yZTpmaWxlOjdjMDVjMDRhLTQwNGEtNGNjOS1iZjhjLTUzNmY0Y2IwMjIyMiI6WyJyZWFkIl19LCJleHAiOjE2Nzk2NDg2NzEsIm5iZiI6MTY3OTU2NTc1MX0.H5EtfrL6cuME7TeA916W4pw1btkMyC7_U9whLO8xJso&client=09087c3b-14e5-433f-96ac-7222f1d7dba8&name=CMCC-2023.02.02-WG3-CR-0002-Y1GAP-General%20Aspects%20in%20Section%204-v02.docx&wdOrigin=BROWSELINK)  [CMCC-2023.02.27-WG3-CR-0003-Y1GAP-Y1 services and [operations] in Section 5-v01.docx](https://view.officeapps.live.com/op/view.aspx?src=https://api.media.atlassian.com/file/9d4c1c26-13a8-40e0-b072-6e837c912d1e/binary?token=eyJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIwOTA4N2MzYi0xNGU1LTQzM2YtOTZhYy03MjIyZjFkN2RiYTgiLCJhY2Nlc3MiOnsidXJuOmZpbGVzdG9yZTpmaWxlOjlkNGMxYzI2LTEzYTgtNDBlMC1iMDcyLTZlODM3YzkxMmQxZSI6WyJyZWFkIl19LCJleHAiOjE2Nzk2NDg2ODksIm5iZiI6MTY3OTU2NTc2OX0.xiQkl7gcakins6-s9LlZ27RglKkgedEBdSyDwk9hmTE&client=09087c3b-14e5-433f-96ac-7222f1d7dba8&name=CMCC-2023.02.27-WG3-CR-0003-Y1GAP-Y1%20services%20and%20%5Boperations%5D%20in%20Section%205-v01.docx&wdOrigin=BROWSELINK) |
| 2023.04.18 | 00.00.03 | Implemented  [CMCC-2023.03.31-WG3-CR-0004-Y1GAP-Supported information types in Section 6-v04.docx](https://view.officeapps.live.com/op/view.aspx?src=https%3A%2F%2Fapi.media.atlassian.com%2Ffile%2Fc59f9cbd-770e-4a62-b14c-a071232453ba%2Fbinary%3Ftoken%3DeyJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIwOTA4N2MzYi0xNGU1LTQzM2YtOTZhYy03MjIyZjFkN2RiYTgiLCJhY2Nlc3MiOnsidXJuOmZpbGVzdG9yZTpmaWxlOmM1OWY5Y2JkLTc3MGUtNGE2Mi1iMTRjLWEwNzEyMzI0NTNiYSI6WyJyZWFkIl19LCJleHAiOjE2ODEzNjIzMzAsIm5iZiI6MTY4MTI3OTQxMH0.ILrNfVKPM2qx1UwzkNuzFxebjClJ1QK_Fe8pRU6CKXs%26client%3D09087c3b-14e5-433f-96ac-7222f1d7dba8%26name%3DCMCC-2023.03.31-WG3-CR-0004-Y1GAP-Supported%2520information%2520types%2520in%2520Section%25206-v04.docx&wdOrigin=BROWSELINK)  [CMCC-2023.04.10-WG3-CR-0005-Y1GAP- Y1 interface protocol structure in Section 7-v03.docx](https://view.officeapps.live.com/op/view.aspx?src=https%3A%2F%2Fapi.media.atlassian.com%2Ffile%2Fd220f8d3-c813-4809-8f9f-03e49f3f6e7f%2Fbinary%3Ftoken%3DeyJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIwOTA4N2MzYi0xNGU1LTQzM2YtOTZhYy03MjIyZjFkN2RiYTgiLCJhY2Nlc3MiOnsidXJuOmZpbGVzdG9yZTpmaWxlOmQyMjBmOGQzLWM4MTMtNDgwOS04ZjlmLTAzZTQ5ZjNmNmU3ZiI6WyJyZWFkIl19LCJleHAiOjE2ODEzNjIzMjgsIm5iZiI6MTY4MTI3OTQwOH0.s7-wBXv5er_GkU53-x_TYo_Pyvg0ymyN2jzw4R3qSIE%26client%3D09087c3b-14e5-433f-96ac-7222f1d7dba8%26name%3DCMCC-2023.04.10-WG3-CR-0005-Y1GAP-%2520Y1%2520interface%2520protocol%2520structure%2520in%2520Section%25207-v03.docx&wdOrigin=BROWSELINK) |
| 2023.10.31 | 00.00.04 | Implemented  [CMCC-2023.09.04-WG3-CR-0007-Y1GAP-Modification for the attribute of API-v01.docx](https://oranalliance.atlassian.net/wiki/download/attachments/2719319035/CMCC-2023.09.04-WG3-CR-0007-Y1GAP-Modification%20for%20the%20attribute%20of%20API-v01.docx?api=v2)  [CMCC-2023.06.13-WG3-CR-0006-Y1GAP-Text for security aspects-v02.docx](https://oranalliance.atlassian.net/wiki/download/attachments/2719319035/CMCC-2023.06.13-WG3-CR-0006-Y1GAP-Text%20for%20security%20aspects-v02.docx?api=v2)  and editorial changes. |
| 2023.11.17 | 00.00.05 | Editorial changes according to the review comments during WG3 poll. |
| 2023.11.18 | 01.00 | Version incremented for publication. |
| 2024.07.05 | 01.00.01 | Implemented  [CMCC-2024.05.10-WG3-CR-0008-Y1GAP-Editorial corrections for ODR alignment-v01.docx](https://oranalliance.atlassian.net/wiki/download/attachments/2719319035/CMCC-2024.05.10-WG3-CR-0008-Y1GAP-Editorial%20corrections%20for%20ODR%20alignment-v01.docx?api=v2)  and editorial changes. |
| 2024.07.22 | 01.00.02 | Editorial changes according to the review comments during WG3 poll. |
| 2024.07.26 | 01.01 | Version incremented for TSC. |

</div>
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG3.Y1GAP-R004-v01.01.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG3.Y1GAP-R004-v01.01.docx).
