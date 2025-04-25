---
title: O-RAN.WG2.R1TP-v04.02.docx.md
author: O-RAN Alliance, WG2
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG2.R1TP-v04.02.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG2.R1TP-v04.02.docx).

---

* toc
{:toc}

---

![webwxgetmsgimg (7).jpeg]({{site.baseurl}}/assets/images/bea03973c631.jpg) O-RAN.WG2.R1TP-R003-v04.02

Technical Specification

Copyright (C) 2024 by the O-RAN ALLIANCE e.V.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany

Register of Associations, Bonn VR 11238, VAT ID DE321720189

Transport Protocols for R1 Services

Contents

Foreword 3

Modal verbs terminology 3

1. Scope 4

2. References 4

2.1 Normative references 4

2.2 Informative references 4

3. Definition of terms, symbols and abbreviations 5

3.1 Terms 5

3.2 Symbols 5

3.3 Abbreviations 5

4. Transport protocols for R1 Services 6

4.1 General 6

5. REST based protocol stack 6

5.1 General 6

5.2 Network layer 6

5.3 Transport layer 6

5.4 Security 6

5.5 Application 7

5.6 Data interchange 7

6. Kafka based protocol stack 8

6.1 General 8

6.2 Network layer 8

6.3 Transport layer 8

6.4 Security 8

6.5 Application 8

6.6 Data interchange 9

# Foreword

This Technical Specification (TS) has been produced by WG2 of the O-RAN Alliance. It is part of a TS-family covering the O-RAN WG2: R1 interface specifications.

The content of the present document is subject to continuing work within O-RAN and may change following formal O-RAN approval. Should the O-RAN Alliance modify the contents of the present document, it will be re-released by O-RAN with an identifying change of version date and an increase in version number as follows:

version xx.yy.zz

where:

xx: the first digit-group is incremented for all changes of substance, i.e. technical enhancements, corrections, updates, etc. (the initial approved document will have xx=01). Always 2 digits with leading zero if needed.

yy: the second digit-group is incremented when editorial only changes have been incorporated in the document. Always 2 digits with leading zero if needed.

zz: the third digit-group included only in working versions of the document indicating incremental changes during the editing process. External versions never include the third digit-group. Always 2 digits with leading zero if needed.

# Modal verbs terminology

In the present document "**shall**", "**shall not**", "**should**", "**should not**", "**may**", "**need not**", "**will**", "**will not**", "**can**" and "**cannot**" are to be interpreted as described in clause 3.2 of the O-RAN Drafting Rules (Verbal forms for the expression of provisions).

"**must**" and "**must not**" are **NOT** allowed in O-RAN deliverables except when used in direct citation.

# Scope

The present document specifies the transport protocols for R1 services.

# References

## 2.1 Normative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following referenced documents are necessary for the application of the present document.

[1] IETF RFC 791: "Internet Protocol" ("IPV4").

[2] IETF RFC 793: "Transmission Control Protocol"("TCP").

[3] Void.

[4] Void.

[5] Void.

[6] Void.

[7] Void.

[8] IETF RFC 8259: "The JavaScript Object Notation (JSON) Data Interchange Format" ("JSON").

[9] IETF RFC 8200: "Internet Protocol, Version 6 (IPv6) Specification" ("IPV6").

[10] IETF RFC 8446: "The Transport Layer Security Protocol Version 1.3" ("TLS").

[11] O-RAN TS: "R1 interface: General Aspects and Principles" ("R1GAP").

[12] O-RAN TS: "Security Requirements and Controls Specifications" ("SRS").

[13] O-RAN TS: "Security Protocols Specifications"("SPS").

[14] IETF RFC 6749: "The OAuth 2.0 Authorization Framework" ("OAuth2.0").

[15] IETF RFC 7519: "JSON Web Token" ("JWT").

[16] IETF RFC 9110: "HTTP Semantics" ("HTTP").

[17] IETF RFC 9112: "HTTP/1.1" ("HTTP/1.1").

[18] IETF RFC 9113: "HTTP/2" ("HTTP/2").

[19] O-RAN TS: "Application Protocols for R1 Services"("R1AP").

[20] Kafka Protocol Guide: <https://kafka.apache.org/protocol.html>.

## 2.2 Informative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long term validity.

The following referenced documents are not necessary for the application of the present document, but they assist the user with regard to a particular subject area.

[i.1] Kafka Documentation: <https://kafka.apache.org/documentation.html>

# Definition of terms, symbols and abbreviations

## 3.1 Terms

Void

## 3.2 Symbols

Void

## 3.3 Abbreviations

For the purposes of the present document, the abbreviations given in "O-RAN TS R1GAP"[11] and the following apply:

HTTP: Hypertext Transfer Protocol

JSON: JavaScript Object Notation

TCP: Transmission Control Protocol

TLS: Transport Layer Security

JWT: JSON Web Tokens

# Transport protocols for R1 Services

## 4.1 General

The R1 interface is defined between the rApps and the Non-RT RIC framework, as defined in R1GAP [11].

# REST based protocol stack

## 5.1 General

The layers of the protocol stack for the R1 interface are described in the following chapters:

* TCP [2] provides the communication service at the transport layer,
* TLS [10] is used as specified in clause 4.2 of SPS [13] to provide secure HTTP [17] [18] connections,
* HTTP [16] [17] [18] is used as application-level protocol,
* The data interchange layer constitutes the transport of documents in the JSON format [8].

Figure 5.1-1illustrates the REST based protocol stack for the R1 interface.

![]({{site.baseurl}}/assets/images/8ae5aa554bc8.emf.png)

Figure 5.1-1: REST Based Protocol Stack for the R1 Interface

## 5.2 Network layer

As network layer at least one of IPv6 [9] or IPv4 [1] shall be supported.

## 5.3 Transport layer

TCP [2] shall be supported as transport protocol.

NOTE: When using TCP as the transport protocol, an HTTP connection is mapped to a TCP connection.

## 5.4 Security

The specification of security controls on the R1 interface in clause 5.2.6.2 of SRS [12] shall be followed.

These security controls refer to the detailed specification of the support and use of TLS v1.2 and TLS v1.3 (IETF RFC 8446 [10]), and OAuth2.0 [14] with JSON Web Tokens (JWT) (IETF RFC 7519 [15]) in the O-RAN TS SPS [13] .

## 5.5 Application

As application layer, HTTP/1.1 [17] shall be supported, and HTTP/2 [18] should be supported. The HTTP semantics as defined in IETF RFC 9110 [16] shall be supported.

HTTP over TLS (as defined in IETF RFC 9112 for HTTP/1.1 [17] and in IETF RFC 9113 [18] for HTTP/2) shall be supported.

HTTP details such as use of standard headers, custom headers, error codes, methods, URIs etc. will be specified in Application Protocols for R1 Services.

The default TCP port numbers should be used for HTTP operation.

## 5.6 Data interchange

As a data interchange format, JSON [8] shall be supported.

# Kafka based protocol stack

## 6.1 General

The Kafka based protocol stack for the R1 interface includes the following layers:

* TCP [2] provides the communication service at the transport layer,
* TLS [10] is used to provide secure connections at the security layer,

NOTE: Specific security requirement references for Kafka based protocol stack are not specified in the present document.

* The Kafka Protocol Guide [20] is used at the application layer,
* The data interchange layer constitutes the serialization format in which data are represented.

Figure 6.1-1 illustrates the Kafka based protocol stack for the R1 interface.

![]({{site.baseurl}}/assets/images/17aadfe76b79.emf.png)

Figure 6.1-1: Kafka Based Protocol Stack for the R1 interface

## 6.2 Network layer

As network layer at least one of IPv6 [9] or Ipv4 [1] shall be supported.

## 6.3 Transport layer

TCP [2] shall be supported as defined in Kafka Protocol Guide [20].

## 6.4 Security

NOTE: Specific security requirement references for Kafka based protocol stack are not specified in the present document.

## 6.5 Application

As application layer, Kafka Protocol Guide [20] version 3.0 or higher shall be supported. The Kafka semantics are defined in the Kafka Documentation [i.1].

R1 service procedures as defined in R1GAP [11] are mapped to the Kafka protocol in R1AP [19] .

## 6.6 Data interchange

The Kafka based protocol stack for the R1 interface is agnostic to the data serialization format.

Annex A (informative):
Change history

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Date | Revision | Description |
| 2024-03-18 | 04.02 | Update the specification by removing the TLS1.2 reference across the specifications |
| 2023-11-20 | 04.01 | Updated the version of the Kafka in the Application layer and published as final version 4.01 |
| 2023-07-29 | 04.00 | Published as Final version 4.0 |
| 2023-03-24 | 03.00 | Published as Final version 3.0 |
| 2022-07-28 | 02.00 | Published as Final version 2.0 |
| 2022-03-31 | 01.00 | Published as Final version 1.0 |

</div>
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG2.R1TP-v04.02.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG2.R1TP-v04.02.docx).
