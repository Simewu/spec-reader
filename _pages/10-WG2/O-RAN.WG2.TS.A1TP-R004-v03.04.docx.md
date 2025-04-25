---
title: O-RAN.WG2.TS.A1TP-R004-v03.04.docx.md
author: O-RAN Alliance, WG2
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG2.TS.A1TP-R004-v03.04.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG2.TS.A1TP-R004-v03.04.docx).

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
| A1 interface: Transport Protocol |

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

2.2 Informative references 5

3 Definition of terms, symbols and abbreviations 5

3.1 Terms 5

3.2 Symbols 5

3.3 Abbreviations 5

4 A1 interface protocol stack 5

4.1 General 5

4.2 Reference model 5

4.3 Functions and protocol stack 6

5 Network layer 6

6 Transport layer 7

7 Security 7

8 Application 7

9 Data interchange 7

Annex (informative): Change History 8

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

The present document specifies the transport protocol stack for the A1 interface.

# 2 References

## 2.1 Normative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies. In the case of a reference to a 3GPP document (including a GSM document), a non-specific reference implicitly refers to the latest version of that document in 3GPP Release 18.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following referenced documents are necessary for the application of the present document.

[1] O-RAN TS: "A1 interface: General Aspects and Principles" ("A1GAP").

[2] O-RAN TS: "A1 interface: Application Protocol" ("A1AP").

[3] O-RAN TS: "A1 interface: Type Definitions" ("A1TD").

[4] IETF RFC 793: "Transmission Control Protocol".

[5] Void.

[6] IETF RFC 8446: "The Transport Layer Security (TLS) Protocol Version 1.3".

[7] Void.

[8] Void.

[9] Void.

[10] Void.

[11] IETF RFC 8259: "The JavaScript Object Notation (JSON) Data Interchange Format".

[12] IETF RFC 8200: "Internet Protocol, Version 6 (IPv6) Specification".

[13] IETF RFC 791: "Internet Protocol".

[14] Void.

[15] Void.

[16] O-RAN TS: "O-RAN Security Requirements and Controls Specifications" ("SRS").

[17] O-RAN TS: "O-RAN Security Protocols Specifications" ("SPS").

[18] IETF RFC 9110: "HTTP Semantics".

[19] IETF RFC 9112: "HTTP/1.1".

[20] IETF RFC 9113: "HTTP/2".

## 2.2 Informative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies. In the case of a reference to a 3GPP document (including a GSM document), a non-specific reference implicitly refers to the latest version of that document in 3GPP Release 18.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following referenced documents are not necessary for the application of the present document, but they assist the user with regard to a particular subject area.

Not applicable.

# 3 Definition of terms, symbols and abbreviations

## 3.1 Terms

For the purposes of the present document, the terms given in A1GAP [1], clause 3.1, apply.

## 3.2 Symbols

Void.

## 3.3 Abbreviations

For the purposes of the present document, the abbreviations given in A1GAP [1], clause 3.3, and the following apply:

IETF Internet Engineering Task Force

JWT JSON Web Tokens

RFC Request For Comments

# 4 A1 interface protocol stack

## 4.1 General

The architecture for the A1 interface is specified in A1GAP [1], clause 4.1. The protocol stack for the A1 interface supports application protocol and data models as specified in A1AP [2] and A1TD [3].

## 4.2 Reference model

The A1 interface is defined between the Non-RT RIC and the Near-RT RIC functions. The A1 architecture and principles are described in A1GAP [1], clause 4. Figure 4.2-1 illustrates the reference model for the A1 interface.

![]({{site.baseurl}}/assets/images/444cffd4540c.emf.png)

Figure 4.2-1: A1 interface reference model

## 4.3 Functions and protocol stack

The following layers of the protocol stack for the A1 interface are described in the following clauses:

* TCP as specified in IETF RFC 793 [4] provides the communication service at the transport layer;
* TLS as specified in IETF RFC 8446 [6] is used to provide secure HTTP connections;
* HTTP as specified in IETF RFC 9110 [18], IETF RFC 9112 [19] and IETF RFC 9113 [20] is used as application-level protocol;
* The data interchange layer constitutes the transport of documents in the JSON format as specified in IETF RFC 8259 [11].

Figure 4.3-1 illustrates the protocol stack of the A1 interface.

![]({{site.baseurl}}/assets/images/3acd3a2215f6.emf.png)

Figure 4.3-1: A1 protocol stack

# 5 Network layer

A1 may be transported over IPv6 as specified in IETF RFC 8200 [12] and/or IPv4 as specified in IETF RFC 791 [13].

# 6 Transport layer

TCP as specified in IETF RFC 793 [4] shall be used as transport protocol. An HTTP connection is mapped to a TCP connection.

Both Non-RT RIC and Near-RT RIC can act as HTTP client and HTTP server. As a result, Non-RT RIC and Near-RT RIC can establish a TCP connection for each direction.

# 7 Security

TLS, mTLS, and OAuth2.0 shall be supported as specified in SRS [16], clause 5.2.1.

mTLS and OAuth 2.0 with JWT shall be supported as specified in SPS [17], clause 4.7.

# 8 Application

As application layer, HTTP/1.1 as specified in IETF RFC 9112 [19] shall be supported, and HTTP/2 as specified in IETF RFC 9113 [20] should be supported.

HTTP over TLS as specified in IETF RFC 9110 [18] and IETF RFC 9112 [19] shall be supported. If HTTP/2 is supported, HTTP/2 over TLS as specified in IETF RFC 9113 [20] shall be supported.

HTTP details such as standard headers, custom headers, error codes, methods, URIs etc are specified in A1AP [2].

The default TCP port numbers should be used for HTTP operation.

# 9 Data interchange

As a data interchange format, JSON as specified in IETF RFC 8259 [11] shall be supported. The objects transported in HTTP messages, and the data types in JSON format, are specified in A1TD [3].

Annex (informative):
Change History

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Date | Revision | Description |
| 2019.09.30 | 01.00 | First version |
| 2021.03.13 | 01.01 | Editorial corrections to apply latest template and update references. Clarification of HTTP port number. |
| 2022.07.30 | 02.00 | Adapting to ODR template and referring to O-RAN security specifications for mTLS and OAuth2.0 |
| 2022.11.17 | 02.01 | Aligning to O-RAN drafting rules |
| 2023.07.31 | 03.00 | Updating obsolete references and applying latest template |
| 2023.11.30 | 03.01 | ETSI PAS related editorial enhancements of references in clause 7 |
| 2024.03.31 | 03.02 | Editorial enhancement of references |
| 2024.07.31 | 03.03 | Updated specification designator to R004 |
| 2024.11.30 | 03.04 | Editorial enhancement of references |

</div>
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG2.TS.A1TP-R004-v03.04.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG2.TS.A1TP-R004-v03.04.docx).
