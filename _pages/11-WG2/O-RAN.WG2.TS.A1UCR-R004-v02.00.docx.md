---
title: O-RAN.WG2.TS.A1UCR-R004-v02.00.docx.md
author: O-RAN Alliance
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG2.TS.A1UCR-R004-v02.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG2.TS.A1UCR-R004-v02.00.docx).

---

* toc
{:toc}

---

<div class="table-wrapper" markdown="block">

|  |
| --- |
| ![webwxgetmsgimg (7).jpeg]({{site.baseurl}}/assets/images/bea03973c631.jpg)O-RAN.WG2.TS.A1UCR-R004-v02.00 |

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
| A1 interface: Use Cases and Requirements |

</div>

<div class="table-wrapper" markdown="block">

|  |
| --- |
|  |
| Copyright (C) 2025 by the O-RAN ALLIANCE e.V.  The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.  O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany  Register of Associations, Bonn VR 11238, VAT ID DE321720189 |

</div>

Contents

Foreword 5

Modal verbs terminology 5

1 Scope 6

2 References 6

2.1 Normative references 6

2.2 Informative references 6

3 Definition of terms, symbols, abbreviations and conventions 7

3.1 Terms 7

3.2 Symbols 7

3.3 Abbreviations 7

3.4 Conventions 7

3.4.1 General 7

3.4.2 Requirements 7

3.4.3 UML diagrams 7

4 General 8

5 Requirements 8

5.1 Functional requirements 8

6 Use cases for A1 policy management 10

6.1 Policy type discovery use cases 10

6.1.1 Background and goal of the use cases 10

6.1.2 Entities/resources involved in the use cases 10

6.1.3 Solutions 10

6.1.4 Required data 13

6.2 Policy type status use cases 13

6.2.1 Background and goal of the use cases 13

6.2.2 Entities/resources involved in the use cases 13

6.2.3 Solutions 14

6.2.4 Required data 17

6.3 Create policy use cases 17

6.3.1 Background and goal of the use cases 17

6.3.2 Entities/resources involved in the use cases 17

6.3.3 Solutions 18

6.3.4 Required data 18

6.4 Query policy use cases 18

6.4.1 Background and goal of the use cases 18

6.4.2 Entities/resources involved in the use cases 18

6.4.3 Solutions 19

6.4.4 Required data 20

6.5 Update policy use cases 20

6.5.1 Background and goal of the use cases 20

6.5.2 Entities/resources involved in the use cases 20

6.5.3 Solutions 21

6.5.4 Required data 21

6.6 Delete policy use cases 21

6.6.1 Background and goal of the use cases 21

6.6.2 Entities/resources involved in the use cases 22

6.6.3 Solutions 22

6.6.4 Required data 22

6.7 Policy status use cases 22

6.7.1 Background and goal of the use cases 22

6.7.2 Entities/resources involved in the use cases 23

6.7.3 Solutions 23

6.7.4 Required data 24

7 Use cases for A1 enrichment information 24

7.1 EI discovery use cases 24

7.1.1 Background and goal of the use cases 24

7.1.2 Entities/resources involved in the use cases 25

7.1.3 Solutions 25

7.2 EI type status use cases 26

7.2.1 Background and goal of the use cases 26

7.2.2 Entities/resources involved in the use cases 27

7.2.3 Solutions 27

7.2.4 Required data 30

7.3 Create EI job use cases 30

7.3.1 Background and goal of the use cases 30

7.3.2 Entities/resources involved in the use cases 30

7.3.3 Solutions 31

7.3.4 Required data 31

7.4 Query EI jobs use cases 31

7.4.1 Background and goal of the use cases 31

7.4.2 Entities/resources involved in the use cases 31

7.4.3 Solutions 32

7.4.4 Required data 33

7.5 Update EI job use cases 33

7.5.1 Background and goal of the use cases 33

7.5.2 Entities/resources involved in the use cases 33

7.5.3 Solutions 34

7.5.4 Required data 34

7.6 Delete EI job use cases 34

7.6.1 Background and goal of the use cases 34

7.6.2 Entities/resources involved in the use cases 35

7.6.3 Solutions 35

7.6.4 Required data 35

7.7 EI job status use cases 36

7.7.1 Background and goal of the use cases 36

7.7.2 Entities/resources involved in the use cases 36

7.7.3 Solutions 36

7.7.4 Required data 37

7.8 EI delivery use cases 38

7.8.1 Background and goal of the use cases 38

7.8.2 Entities/resources involved in the use cases 38

7.8.3 Solutions 38

7.8.4 Required data 39

8 Use cases for A1 ML model management service - Near-RT RIC as A1-ML Consumer 39

8.1 Request AI/ML model training use cases 39

8.1.1 Background and goal of the use cases 39

8.1.2 Entities/resources involved in the use cases 39

8.1.3 Solutions 40

8.1.4 Required data 41

8.2 AI/ML model training job status use cases 41

8.2.1 Background and goal of the use cases 41

8.2.2 Entities/resources involved in the use cases 41

8.2.3 Solutions 42

8.2.4 Required data 43

9 Use cases for A1 ML model management service - Non-RT RIC as A1-ML Consumer 43

9.1 Request AI/ML model training use cases 43

9.1.1 Background and goal of the use cases 43

9.1.2 Entities/resources involved in the use cases 43

9.1.3 Solutions 44

9.1.4 Required data 45

Annex A (normative): Authorization of service access requests 46

A.1 Pre-conditions 46

A.2 A1 service access based on token verification use cases 46

A.2.1 Background and goal of the use cases 46

A.2.2 Entities/resources involved in the use cases 46

A.2.3 Solutions 46

A.2.4 Required data 47

Annex (informative): Change History 48

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

The present document specifies the use cases and requirements for the A1 interface.

# 2 References

## 2.1 Normative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies. In the case of a reference to a 3GPP document (including a GSM document), a non-specific reference implicitly refers to the latest version of that document in 3GPP Release 18.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following referenced documents are necessary for the application of the present document.

[1] O-RAN TS: "A1 interface: General Aspects and Principles" ("A1GAP").

[2] Void

[3] O-RAN TS: "A1 interface: Application Protocol" ("A1AP").

[4] O-RAN TS: "A1 interface: Type Definitions" ("A1TD").

[5] O-RAN TS: "Non-RT RIC Architecture".

[6] O-RAN TS: "Near-RT RIC Architecture".

[7] Recommendation ITU-T M.3020: "Management interface specification methodology".

[8] OMG(R) Unified Modeling Language (OMG UML) version 2.5.1 ("OMG UML").

[9] O-RAN TS: "O-RAN Security Protocols Specifications" ("SPS").

## 2.2 Informative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies. In the case of a reference to a 3GPP document (including a GSM document), a non-specific reference implicitly refers to the latest version of that document in 3GPP Release 18.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following referenced documents are not necessary for the application of the present document, but they assist the user with regard to a particular subject area.

Not applicable.

# 3 Definition of terms, symbols, abbreviations and conventions

## 3.1 Terms

For the purposes of the present document, the terms given in A1GAP [1], clause 3.1 apply.

## 3.2 Symbols

Void.

## 3.3 Abbreviations

For the purposes of the present document, the abbreviations given in A1GAP [1], clause 3.3 apply.

## 3.4 Conventions

### 3.4.1 General

For the purposes of the present document, the conventions in the following clauses apply.

### 3.4.2 Requirements

The requirements and solutions for use cases are based on the methodology specified in ITU-T M.3020 [7], clause A.1.2.

### 3.4.3 UML diagrams

The sequence diagrams for the messages that are exchanged between use case actors are based on the OMG UML [8], clause 17.4.4.1 and an example is illustrated in figure 3.4.3-1.

![Diagram  Description automatically generated]({{site.baseurl}}/assets/images/fabe4aeff30d.png)

Figure 3.4.3-1 Example of UML messages.

For each message in the present document, the following information is indicated:

* interface name and procedure name;
* type of message (e.g. request or response); and
* transferred information (if applicable).

An example is illustrated in figure 3.4.3-2.

![Graphical user interface, text, application, email  Description automatically generated]({{site.baseurl}}/assets/images/dbed2d71d9c2.png)

Figure 3.4.3-2 Example of message labels used in the present document.

# 4 General

Non-RT RIC with A1 termination function and A1 related functions in the SMO/Non-RT RIC framework is defined in Non-RT RIC Architecture [5].

Near-RT RIC with A1 Termination and internal functions is defined in Near-RT RIC Architecture [6].

Access token request, and service access request based on token verification, is defined in SPS [9], clause 4.7.

The A1 policy management service (A1-P) and the A1-P procedures are defined in A1GAP [1], clause 4.1.3.1, the service operations and the API are defined in A1AP [3], clause 6.2, and policy types are defined in A1TD [4], clause 7.2.

The A1 enrichment information service (A1-EI) and the A1-EI procedures are defined in A1GAP [1], clause 4.1.3.2, the service operations and the API are defined in A1AP [3], clause 6.3, and EI types are defined in A1TD [4], clause 9.2.

The A1 ML model management service (A1-ML) is defined in A1GAP [1], clause 4.1.3.3.

# 5 Requirements

## 5.1 Functional requirements

For the A1 policy management service (A1-P), the functional requirements are included in table 5.1-1.

Table 5.1-1 A1 Policy management service (A1-P) functional requirements

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| REQ | Description | Note |
| REQ-A1-P-FUN1 | A1-P shall support discovery of policy type identifiers |  |
| REQ-A1-P-FUN2 | An A1 policy type shall be identified by a policy type identifier |  |
| REQ-A1-P-FUN3 | A1-P shall support retrieval of information about A1 policy types |  |
| REQ-A1-P-FUN4 | A1-P shall support retrieval of status information related to an A1 policy type |  |
| REQ-A1-P-FUN5 | A1-P shall support subscription to, and notification about, changes in status information related to an A1 policy type |  |
| REQ-A1-P-FUN6 | A1-P shall support request of policy enforcement related to an A1 policy type by managing an A1 policy |  |
| REQ-A1-P-FUN7 | A1-P shall support discovery of policy identifiers |  |
| REQ-A1-P-FUN8 | A1-P shall support retrieval of information about an A1 policy |  |
| REQ-A1-P-FUN9 | A1-P shall support retrieval of status information related to an A1 policy |  |
| REQ-A1-P-FUN10 | A1-P shall support subscription to, and notification about, changes in status information related to an A1 policy |  |
| REQ-A1-P-FUN11 | A1-P shall support authorization of service access requests |  |

</div>

For the A1 enrichment information service (A1-EI), the functional requirements are included in table 5.1-2.

Table 5.1-2 A1 enrichment information service (A1-EI) functional requirements

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| REQ | Description | Note |
| REQ-A1-EI-FUN1 | A1-EI shall support discovery of EI type identifiers |  |
| REQ-A1-EI-FUN2 | An EI type shall be identified by an EI type identifier |  |
| REQ-A1-EI-FUN3 | A1-EI shall support retrieval of information about EI types |  |
| REQ-A1-EI-FUN4 | A1-EI shall support retrieval of status information related to an EI type |  |
| REQ-A1-EI-FUN5 | A1-EI shall support subscription to, and notification about, changes in status information related to an EI type |  |
| REQ-A1-EI-FUN6 | A1-EI shall support request of enrichment information related to an EI type by managing an EI job |  |
| REQ-A1-EI-FUN7 | A1-EI shall support discovery of EI job identifiers |  |
| REQ-A1-EI-FUN8 | A1-EI shall support retrieval of information about an EI job |  |
| REQ-A1-EI-FUN9 | A1-EI shall support retrieval of status information related to an EI job |  |
| REQ-A1-EI-FUN10 | A1-EI shall support subscription to, and notification about, changes in status information related to an EI job. |  |
| REQ-A1-EI-FUN11 | A1-EI shall support delivery of enrichment information over the A1 interface |  |
| REQ-A1-EI-FUN12 | A1-EI shall support authorization of service access requests |  |

</div>

For the A1 ML model management service (A1-ML), the functional requirements are included in table 5.1-3.

Table 5.1-3 A1 ML model management service (A1-ML) functional requirements

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| REQ | Description | Note |
| REQ-A1-ML-FUN1 | A1-ML shall support authorization of service access requests |  |
| REQ-A1-ML-FUN2 | A1-ML shall support the request of AI/ML model training |  |
| REQ-A1-ML-FUN3 | A1-ML shall support query of AI/ML model training job status. |  |
| REQ-A1-ML-FUN4 | A1-ML shall support notification for AI/ML model training job status changes. |  |

</div>

# 6 Use cases for A1 policy management

## 6.1 Policy type discovery use cases

### 6.1.1 Background and goal of the use cases

The policy type discovery use cases define how Non-RT RIC can detect which A1 policy types are available in a Near-RT RIC and how Non-RT RIC can retrieve information about one or more A1 policy types.

Policy type information is provided by the Near-RT RIC and is used by Non-RT RIC for creating and by Near-RT RIC for validating A1 policies. When policy type identifier and policy type information are known, the Non-RT RIC can create A1 policies in a Near-RT RIC as described by policy creation use cases.

### 6.1.2 Entities/resources involved in the use cases

1) Non-RT RIC:

a) Discovers A1 policy types available in Near-RT RIC.

2) Near-RT RIC:

b) Makes A1 policy types available to Non-RT RIC for which it can support A1 policies.

### 6.1.3 Solutions

#### 6.1.3.1 Query all policy type identifiers

Table 6.1.3.1-1 Query all policy type identifiers use case

<div class="table-wrapper" markdown="block">

| Use case stage | Evolution / specification | <<Uses>> Related use |
| --- | --- | --- |
| Goal | Non-RT RIC to discover policy type identifiers for A1 policy types that are available in Near-RT RIC |  |
| Actors and Roles | Non-RT RIC as A1-P Consumer  Near-RT RIC as A1-P Producer |  |
| Assumptions | A1 policy types are available in Near-RT RIC |  |
| Pre-conditions | A1 interface is established, and the actors are authorized for using the A1-P service |  |
| Begins when | Non-RT RIC initiates A1 policy type identifiers query |  |
| Step 1 (M) | Non-RT RIC sends Query policy type identifiers request |  |
| Step 2 (M) | Near-RT RIC sends Query policy type identifiers response containing policy type identifiers |  |
| Ends when | Non-RT RIC has received policy type identifiers for all available A1 policy types |  |
| Exceptions |  |  |
| Post-conditions | Policy type identifiers are known to Non-RT RIC |  |
| Traceability | REQ-A1-P-FUN1 |  |

</div>

![Graphical user interface, application  Description automatically generated]({{site.baseurl}}/assets/images/346830320066.png)

Figure 6.1.3.1-1 Query all policy type identifiers

#### 6.1.3.2 Query single policy type

Table 6.1.3.2-1 Query single policy type use case

<div class="table-wrapper" markdown="block">

| Use case stage | Evolution / specification | <<Uses>> Related use |
| --- | --- | --- |
| Goal | Non-RT RIC to retrieve policy type information about an A1 policy type |  |
| Actors and Roles | Non-RT RIC as A1-P Consumer  Near-RT RIC as A1-P Producer |  |
| Assumptions | The policy type identifier known to the Non-RT RIC corresponds to an available A1 policy type |  |
| Pre-conditions | A1 interface is established, and the actors are authorized for using the A1-P service.  The policy type identifier is known to the Non-RT RIC. |  |
| Begins when | Non-RT RIC initiates A1 policy type query |  |
| Step 1 (M) | Non-RT RIC sends Query single policy type request containing the policy type identifier of the policy type being queried |  |
| Step 2 (M) | Near-RT RIC sends Query single policy type response containing policy type information |  |
| Ends when | Non-RT RIC has received the A1 policy type information |  |
| Exceptions |  |  |
| Post-conditions | A1 policy type information is known to Non-RT RIC |  |
| Traceability | REQ-A1-P-FUN2, REQ-A1-P-FUN3 |  |

</div>

![Graphical user interface, text, application  Description automatically generated]({{site.baseurl}}/assets/images/5770dda0c489.png)

Figure 6.1.3.2-1 Query single policy type

#### 6.1.3.3 Query multiple policy types

Table 6.1.3.3-1 Query multiple policy types use case

<div class="table-wrapper" markdown="block">

| Use case stage | Evolution / specification | <<Uses>> Related use |
| --- | --- | --- |
| Goal | Non-RT RIC to retrieve policy type information for a selection of A1 policy types it is interested in |  |
| Actors and Roles | Non-RT RIC as A1-P Consumer  Near-RT RIC as A1-P Producer |  |
| Assumptions | The policy type identifiers known to the Non-RT RIC correspond to available A1 policy types |  |
| Pre-conditions | A1 interface is established, and the actors are authorized for using the A1-P service.  The policy type identifiers are known to the Non-RT RIC. |  |
| Begins when | Non-RT RIC initiates A1 policy types query |  |
| Step 1 - **ref** (M) | Non-RT RIC queries for information about a single policy type | 6.1.3.2 |
| Step 2 - **loop** (M) | Non-RT RIC repeats Step 1 for the policy type identifiers it is interested in |  |
| Ends when | Non-RT RIC has received information about multiple available A1 policy types |  |
| Exceptions |  |  |
| Post-conditions | Information about multiple A1 policy types is known to Non-RT RIC |  |
| Traceability | REQ-A1-P-FUN2, REQ-A1-P-FUN3 |  |

</div>

![Diagram  Description automatically generated]({{site.baseurl}}/assets/images/59098637ec86.png)

Figure 6.1.3.3-1 Query multiple policy types

#### 6.1.3.4 Query all policy type information

Table 6.1.3.4-1 Query all policy type information use case

<div class="table-wrapper" markdown="block">

| Use case stage | Evolution / specification | <<Uses>> Related use |
| --- | --- | --- |
| Goal | Non-RT RIC to retrieve policy type information for all A1 policy types that are available in Near-RT RIC |  |
| Actors and Roles | Non-RT RIC as A1-P Consumer  Near-RT RIC as A1-P Producer |  |
| Assumptions | The policy type identifiers known to the Non-RT RIC correspond to all available A1 policy types. |  |
| Pre-conditions | A1 interface is established, and the actors are authorized for using the A1-P service.  All policy type identifiers are known to the Non-RT RIC. |  |
| Begins when | Non-RT RIC initiates A1 policy types query |  |
| Step 1 - **ref** (M) | Non-RT RIC queries for information about a single policy type | 6.1.3.2 |
| Step 2 - **loop** (M) | Non-RT RIC repeats Step 1 for all policy type identifiers |  |
| Ends when | Non-RT RIC has received information about all available A1 policy types |  |
| Exceptions |  |  |
| Post-conditions | Information about all available A1 policy types is known to Non-RT RIC |  |
| Traceability | REQ-A1-P-FUN2, REQ-A1-P-FUN3 |  |

</div>

![Diagram  Description automatically generated]({{site.baseurl}}/assets/images/1f226240438e.png)

Figure 6.1.3.4-1 Query all policy types

### 6.1.4 Required data

An A1 policy type is identified by a policy type identifier. A list of policy type identifiers is provided by Near-RT RIC corresponding to available A1 policy types. The Non-RT RIC provides a policy type identifier when querying for information about a single A1 policy type. The Near-RT RIC includes policy type information in response to a query for information about an A1 policy type.

## 6.2 Policy type status use cases

### 6.2.1 Background and goal of the use cases

The policy type status use cases define how Non-RT RIC can detect status of an A1 policy type and subscribe to notifications for changes in availability and state of policy types.

Policy type status information is provided by the Near-RT RIC and is used by Non-RT RIC when managing A1 policies.

### 6.2.2 Entities/resources involved in the use cases

1) Non-RT RIC:

a) Requests policy type status.

b) Subscribes to notifications for changes in policy type status.

2) Near-RT RIC:

a) Responds to queries for policy type status.

b) Handles subscriptions and notifies Non-RT RIC about changes in availability and state of policy types.

### 6.2.3 Solutions

#### 6.2.3.1 Query policy type status

Table 6.2.3.1-1: Query policy type status use case

<div class="table-wrapper" markdown="block">

| Use case stage | Evolution / specification | <<Uses>> Related use |
| --- | --- | --- |
| Goal | Non-RT RIC to retrieve policy type status information for an A1 policy type |  |
| Actors and Roles | Non-RT RIC as A1-P Consumer  Near-RT RIC as A1-P Producer |  |
| Assumptions | The policy type identifier known to the Non-RT RIC corresponds to an available policy type |  |
| Pre-conditions | A1 interface is established, and the actors are authorized for using the A1-P service.  The policy type identifier is known to the Non-RT RIC. |  |
| Begins when | Non-RT RIC initiates A1 policy type status query |  |
| Step 1 (M) | Non-RT RIC sends Query policy type status request containing the policy type identifier of the policy type being queried for status |  |
| Step 2 (M) | Near-RT RIC sends Query policy type status response containing policy type status information |  |
| Ends when | Non-RT RIC has received the A1 policy type status information |  |
| Exceptions |  |  |
| Post-conditions | Policy type status information is known to Non-RT RIC |  |
| Traceability | REQ-A1-P-FUN4 |  |

</div>

![Graphical user interface, text, application  Description automatically generated]({{site.baseurl}}/assets/images/1e158e1f6af6.png)

Figure 6.2.3.3-1 Query policy type status

#### 6.2.3.2 Subscription for policy type status notification

Table 6.2.3.2-1 Subscribe policy type status use case

<div class="table-wrapper" markdown="block">

| Use case stage | Evolution / specification | <<Uses>> Related use |
| --- | --- | --- |
| Goal | Non-RT RIC to subscribe to notifications for policy type status information for A1 policy types |  |
| Actors and Roles | Non-RT RIC as A1-P Consumer  Near-RT RIC as A1-P Producer |  |
| Assumptions | Non-RT RIC is interested in notifications of policy types that are made available or unavailable, and/or notifications of state changes of a policy type |  |
| Pre-conditions | A1 interface is established, and the actors are authorized for using the A1-P service.  Policy type identifiers are known to the Non-RT RIC when subscribing for notifications on type state changes. |  |
| Begins when | Non-RT RIC initiates A1 Policy type status subscribe |  |
| Step 1 (M) | Non-RT RIC sends Subscribe policy type status request containing the policy type status subscription information including policy type identifier(s) if type state changes are requested. |  |
| Step 2 (M) | Near-RT RIC sends Subscribe policy type status response |  |
| Ends when | Policy type status subscription has been created |  |
| Exceptions |  |  |
| Post-conditions | Non-RT RIC is subscribed to policy type status notifications |  |
| Traceability | REQ-A1-P-FUN5 |  |

</div>

Table 6.2.3.2-2 Update policy type status subscription use case

<div class="table-wrapper" markdown="block">

| Use case stage | Evolution / specification | <<Uses>> Related use |
| --- | --- | --- |
| Goal | Non-RT RIC to update its subscription to notifications for policy type status information for A1 policy types |  |
| Actors and Roles | Non-RT RIC as A1-P Consumer  Near-RT RIC as A1-P Producer |  |
| Assumptions | Non-RT RIC is interested in notifications of policy types that are made available or unavailable, and/or notifications of state changes of a policy type |  |
| Pre-conditions | A1 interface is established, and the actors are authorized for using the A1-P service.  Policy type status notifications has been subscribed to. |  |
| Begins when | Non-RT RIC initiates A1 Policy type status subscribe |  |
| Step 1 (M) | Non-RT RIC sends Subscribe policy type status request containing the updated policy type status subscription information |  |
| Step 2 (M) | Near-RT RIC sends Subscribe policy type status response |  |
| Ends when | Policy type status subscription has been updated |  |
| Exceptions |  |  |
| Post-conditions | Non-RT RIC is subscribed to policy type status notifications |  |
| Traceability | REQ-A1-P-FUN5 |  |

</div>

Table 6.2.3.2-3 Unsubscribe policy type status use case

<div class="table-wrapper" markdown="block">

| Use case stage | Evolution / specification | <<Uses>> Related use |
| --- | --- | --- |
| Goal | Non-RT RIC to unsubscribe from notifications for policy type status information for A1 policy types |  |
| Actors and Roles | Non-RT RIC as A1-P Consumer  Near-RT RIC as A1-P Producer |  |
| Assumptions | Non-RT RIC is no longer interested in notifications of policy types status |  |
| Pre-conditions | A1 interface is established, and the actors are authorized for using the A1-P service.  Policy type status notifications has been subscribed to. |  |
| Begins when | Non-RT RIC initiates A1 Policy type status unsubscribe |  |
| Step 1 (M) | Non-RT RIC sends Subscribe policy type status request containing policy type status subscription information with no content |  |
| Step 2 (M) | Near-RT RIC sends Subscribe policy type status response |  |
| Ends when | Policy type status subscription has been deleted |  |
| Exceptions |  |  |
| Post-conditions | Non-RT RIC is not subscribed to policy type status notifications |  |
| Traceability | REQ-A1-P-FUN5 |  |

</div>

![Graphical user interface  Description automatically generated with low confidence]({{site.baseurl}}/assets/images/bcb27c6eda98.png)

Figure 6.2.3.2-1 Subscription for policy type status notifications

#### 6.2.3.3 Notify policy type status

Table 6.2.3.3-1 Notify policy type status use case

<div class="table-wrapper" markdown="block">

| Use case stage | Evolution / specification | <<Uses>> Related use |
| --- | --- | --- |
| Goal | Non-RT RIC to receive policy type status information for an A1 Policy type |  |
| Actors and Roles | Non-RT RIC as A1-P Consumer  Near-RT RIC as A1-P Producer |  |
| Assumptions |  |  |
| Pre-conditions | A1 interface is established, and the actors are authorized for using the A1-P service.  Non-RT RIC has subscribed to policy type status notifications and provided a callback URI. |  |
| Begins when | Event occurs in Near-RT RIC related to the status of an A1 Policy type, either a change in availability or of the type state |  |
| Step 1 (M) | Near-RT RIC sends Notify policy type status message containing the policy type status information |  |
| Ends when | Non-RT RIC has received the policy type status information |  |
| Exceptions |  |  |
| Post-conditions | Policy type status information is known to Non-RT RIC |  |
| Traceability | REQ-A1-P-FUN5 |  |

</div>

![Graphical user interface, text, application  Description automatically generated]({{site.baseurl}}/assets/images/85ee36b907ff.png)

Figure 6.2.3.3-1 Notify policy type status

### 6.2.4 Required data

The policy type status information includes policy type availability change information (i.e. if A1 policy type has been made available or unavailable) and/or state change information related to an A1 policy type.

The state of the A1 policy type indicates if A1 policies can be created for the policy type or not, and if A1 policies for the policy type would be enforced or not enforced.

The policy type status subscription information includes details on whether notifications are requested for changes in A1 policy type availability and/or changes in state of the A1 policy type for which policy type identifiers were provided.

## 6.3 Create policy use cases

### 6.3.1 Background and goal of the use cases

The create policy use cases define how Non-RT RIC can create an A1 policy for an A1 policy type and subscribe to notifications for changes in policy status.

### 6.3.2 Entities/resources involved in the use cases

1) Non-RT RIC:

a) Creates A1 policy in Near-RT RIC.

2) Near-RT RIC:

b) Enforces A1 policies for available A1 policy types.

### 6.3.3 Solutions

#### 6.3.3.1 Create single policy

Table 6.3.3.1-1 Create single policy use case

<div class="table-wrapper" markdown="block">

| Use case stage | Evolution / specification | <<Uses>> Related use |
| --- | --- | --- |
| Goal | Non-RT RIC to create A1 policy for an A1 policy type |  |
| Actors and Roles | Non-RT RIC as A1-P Consumer  Near-RT RIC as A1-P Producer |  |
| Assumptions | The policy type information known to the Non-RT RIC corresponds to an available A1 policy type.  Non-RT RIC has the schema for formulating A1 policy information. |  |
| Pre-conditions | A1 interface is established, and the actors are authorized for using the A1-P service.  The policy type information is known to the Non-RT RIC. |  |
| Begins when | Non-RT RIC initiates A1 policy creation |  |
| Step 1 (M) | Non-RT RIC sends Create policy request containing the policy identifier and the policy information |  |
| Step 2 (M) | Near-RT RIC sends Create policy response |  |
| Ends when | A1 policy has been created |  |
| Exceptions |  |  |
| Post-conditions | The A1 policy exists |  |
| Traceability | REQ-A1-P-FUN6 |  |

</div>

![Graphical user interface  Description automatically generated with medium confidence]({{site.baseurl}}/assets/images/ae99149e1156.png)

Figure 6.3.3.4-1 Create single policy

### 6.3.4 Required data

For creating an A1 policy of a certain policy type, the Non-RT RIC provides the policy identifier and the policy information, the callback URI for policy result delivery, and optionally the callback URI for policy status notifications.

## 6.4 Query policy use cases

### 6.4.1 Background and goal of the use cases

The query policies use cases define how Non-RT RIC can query for information on existing A1 policies.

### 6.4.2 Entities/resources involved in the use cases

1) Non-RT RIC:

a) Discovers A1 policies that exist in the Near-RT RIC.

b) Retrieves policy information.

2) Near-RT RIC:

a) Handles A1 policies.

b) Responds to queries for policy identifiers and policy information.

### 6.4.3 Solutions

#### 6.4.3.1 Query policy identifiers

Table 6.4.3.1-1 Query policy identifiers use case

<div class="table-wrapper" markdown="block">

| Use case stage | Evolution / specification | <<Uses>> Related use |
| --- | --- | --- |
| Goal | Non-RT RIC to discover policy identifiers for A1 policies that exist in Near-RT RIC |  |
| Actors and Roles | Non-RT RIC as A1-P Consumer  Near-RT RIC as A1-P Producer |  |
| Assumptions | A1 policies exist in Near-RT RIC |  |
| Pre-conditions | A1 interface is established, and the actors are authorized for using the A1-P service |  |
| Begins when | Non-RT RIC initiates A1 policy identifiers query |  |
| Step 1 (M) | Non-RT RIC sends Query policy identifiers request |  |
| Step 2 (M) | Near-RT RIC sends Query policy identifiers response containing policy identifiers |  |
| Ends when | Non-RT RIC has received policy identifiers for existing A1 policies |  |
| Exceptions |  |  |
| Post-conditions | Policy identifiers are known to Non-RT RIC |  |
| Traceability | REQ-A1-P-FUN7 |  |

</div>

![Graphical user interface, application  Description automatically generated]({{site.baseurl}}/assets/images/ccc6602414d2.png)

Figure 6.4.3.1-1 Query policy identifiers

#### 6.4.3.2 Query single policy

Table 6.4.3.2-1 Query single policy use case

<div class="table-wrapper" markdown="block">

| Use case stage | Evolution / specification | <<Uses>> Related use |
| --- | --- | --- |
| Goal | Non-RT RIC to retrieve information about an A1 policy |  |
| Actors and Roles | Non-RT RIC as A1-P Consumer  Near-RT RIC as A1-P Producer |  |
| Assumptions | The A1 policy identifier known to the Non-RT RIC corresponds to an existing A1 policy.  Non-RT RIC has the schema for interpreting policy information. |  |
| Pre-conditions | A1 interface is established, and the actors are authorized for using the A1-P service.  The policy identifier is known to the Non-RT RIC. |  |
| Begins when | Non-RT RIC initiates A1 policy query |  |
| Step 1 (M) | Non-RT RIC sends Query policy request containing the policy identifier |  |
| Step 2 (M) | Near-RT RIC sends Query policy response containing policy information |  |
| Ends when | Non-RT RIC has received the policy information about the A1 policy |  |
| Exceptions |  |  |
| Post-conditions | Policy information is known to Near-RT RIC |  |
| Traceability | REQ-A1-P-FUN8 |  |

</div>

![Graphical user interface, text, application  Description automatically generated]({{site.baseurl}}/assets/images/4fe1ec37dab8.png)

Figure 6.4.3.2-1 Query single policy

### 6.4.4 Required data

For querying policy identifiers, the Non-RT RIC optionally provides a policy type identifier as filter parameter.

For querying an A1 policy, the Non-RT RIC provides a policy identifier.

The policy information includes the A1 policy definition.

## 6.5 Update policy use cases

### 6.5.1 Background and goal of the use cases

The update policy use cases define how Non-RT RIC can update an existing A1 policy.

Non-RT RIC provides updated policy information. The reason for the update can be related to state of the A1 policy type and received policy status information.

### 6.5.2 Entities/resources involved in the use cases

1) Non-RT RIC:

a) Updates A1 policy in Near-RT RIC that it has created.

2) Near-RT RIC:

b) Handles A1 policies for available policy types.

### 6.5.3 Solutions

#### 6.5.3.1 Update single policy

Table 6.5.3.1-1 Update single policy use case

<div class="table-wrapper" markdown="block">

| Use case stage | Evolution / specification | <<Uses>> Related use |
| --- | --- | --- |
| Goal | Non-RT RIC to update an existing A1 policy |  |
| Actors and Roles | Non-RT RIC as A1-P Consumer  Near-RT RIC as A1-P Producer |  |
| Assumptions | The policy identifier known to the Non-RT RIC corresponds to an existing A1 policy that was created by the Non-RT RIC |  |
| Pre-conditions | A1 interface is established, and the actors are authorized for using the A1-P service.  The A1 policy exists. |  |
| Begins when | Non-RT RIC initiates A1 policy update |  |
| Step 1 (M) | Non-RT RIC sends Update policy request containing the updated policy information |  |
| Step 2 (M) | Near-RT RIC sends Update policy response |  |
| Ends when | A1 policy has been updated |  |
| Exceptions |  |  |
| Post-conditions | The A1 policy exists |  |
| Traceability | REQ-A1-P-FUN6 |  |

</div>

![Graphical user interface, text, application, email  Description automatically generated]({{site.baseurl}}/assets/images/14bdf54b4648.png)

Figure 6.5.3.4-1 Update single policy

### 6.5.4 Required data

For updating an A1 policy, the Non-RT RIC provides the policy identifier and updated policy information and/or callback URI for policy status notifications.

## 6.6 Delete policy use cases

### 6.6.1 Background and goal of the use cases

The delete policy use cases define how Non-RT RIC can delete an A1 policy.

The reason for the deletion can be related to the state of the A1 policy type and received policy status information.

### 6.6.2 Entities/resources involved in the use cases

1) Non-RT RIC:

a) Deletes A1 policy in Near-RT RIC that it has created.

2) Near-RT RIC:

b) Handles A1 policies for available policy types.

### 6.6.3 Solutions

#### 6.6.3.1 Delete single policy

Table 6.6.3.1-1 Delete single policy use case

<div class="table-wrapper" markdown="block">

| Use case stage | Evolution / specification | <<Uses>> Related use |
| --- | --- | --- |
| Goal | Non-RT RIC to delete an existing A1 policy |  |
| Actors and Roles | Non-RT RIC as A1-P Consumer  Near-RT RIC as A1-P Producer |  |
| Assumptions | The policy identifier known to the Non-RT RIC corresponds to an existing A1 policy that was created by the Non-RT RIC |  |
| Pre-conditions | A1 interface is established, and the actors are authorized for using the A1-P service.  The A1 policy exists. |  |
| Begins when | Non-RT RIC initiates A1 policy deletion |  |
| Step 1 (M) | Non-RT RIC sends Delete policy request containing the policy identifier |  |
| Step 2 (M) | Near-RT RIC sends Delete policy response |  |
| Ends when | A1 policy has been deleted |  |
| Exceptions |  |  |
| Post-conditions | The A1 policy does not exist |  |
| Traceability | REQ-A1-P-FUN6 |  |

</div>

![Graphical user interface, text, application, email  Description automatically generated]({{site.baseurl}}/assets/images/ad3ef5c600c2.png)

Figure 6.6.3.1-1 Delete single policy

### 6.6.4 Required data

For deleting an A1 policy, the Non-RT RIC provides the policy identifier.

## 6.7 Policy status use cases

### 6.7.1 Background and goal of the use cases

The policy status use cases define how Non-RT RIC can detect status, and changes in status, of an A1 policy.

Policy status information is provided by the Near-RT RIC and is used by Non-RT RIC when managing A1 policies.

### 6.7.2 Entities/resources involved in the use cases

1) Non-RT RIC:

a) Requests A1 policy status.

b) Receives notifications about changes in policy status.

2) Near-RT RIC:

a) Handles A1 policy and responds to queries for policy status.

b) Notifies Non-RT RIC about changes in policy status.

### 6.7.3 Solutions

#### 6.7.3.1 Query policy status

Table 6.7.3.1-1 Query policy status use case

<div class="table-wrapper" markdown="block">

| Use case stage | Evolution / specification | <<Uses>> Related use |
| --- | --- | --- |
| Goal | Non-RT RIC to retrieve policy status information for an existing A1 policy |  |
| Actors and Roles | Non-RT RIC as A1-P Consumer  Near-RT RIC as A1-P Producer |  |
| Assumptions | The policy identifier known to the Non-RT RIC corresponds to an existing A1 policy that was created by the Non-RT RIC.  Non-RT RIC has the schema for interpreting policy status information. |  |
| Pre-conditions | A1 interface is established, and the actors are authorized for using the A1-P service.  The policy identifier is known to the Non-RT RIC. |  |
| Begins when | Non-RT RIC initiates A1 policy status query |  |
| Step 1 (M) | Non-RT RIC sends Query policy status request containing the policy identifier of the A1 policy being queried for status |  |
| Step 2 (M) | Near-RT RIC sends Query policy status response containing policy status information |  |
| Ends when | Non-RT RIC has received the A1 policy status information |  |
| Exceptions |  |  |
| Post-conditions | Policy status information is known to Non-RT RIC |  |
| Traceability | REQ-A1-P-FUN9 |  |

</div>

![Graphical user interface, text, application  Description automatically generated]({{site.baseurl}}/assets/images/cedc541aeefa.png)

Figure 6.7.3.1-1 Query policy status

#### 6.7.3.2 Notify policy status change

Table 6.7.3.2-1 Notify policy status change use case

<div class="table-wrapper" markdown="block">

| Use case stage | Evolution / specification | <<Uses>> Related use |
| --- | --- | --- |
| Goal | Non-RT RIC to receive policy status change information for an existing A1 policy |  |
| Actors and Roles | Non-RT RIC as A1-P Consumer  Near-RT RIC as A1-P Producer |  |
| Assumptions | Non-RT RIC has the schema for interpretating policy status information. |  |
| Pre-conditions | A1 interface is established, and the actors are authorized for using the A1-P service.  A callback URI for policy status notifications has been provided when creating and/or updating the A1 policy. |  |
| Begins when | Event occurs in Near-RT RIC related to the status change of the A1 policy |  |
| Step 1 (M) | Near-RT RIC sends Notify policy status message containing the policy status information |  |
| Ends when | Non-RT RIC has received the A1 policy status change information |  |
| Exceptions |  |  |
| Post-conditions | Policy status information is known to Non-RT RIC |  |
| Traceability | REQ-A1-P-FUN10 |  |

</div>

![A black text on a white background  Description automatically generated]({{site.baseurl}}/assets/images/25aaaa493f40.png)

Figure 6.7.3.2-1 Notify policy status change

### 6.7.4 Required data

The policy status information includes the A1 policy status that is formulated based on, and validated against, the policy status schema and indicates if A1 policy is enforced or not enforced.

The policy status change information includes indication about a change of the A1 policy status.

# 7 Use cases for A1 enrichment information

## 7.1 EI discovery use cases

### 7.1.1 Background and goal of the use cases

The EI discovery use cases define how Near-RT RIC can detect which EI types are available in Non-RT RIC and how Near-RT RIC can retrieve information about EI types.

EI type information is provided by Non-RT RIC and is used by Near-RT RIC for creating, and by Non-RT RIC for validating, EI jobs. EI type information is also used by Non-RT RIC for creating, and by Near-RT RIC for validating, EI job results.

When EI type identifier and EI type information are known, the Near-RT RIC can create EI jobs in a Non-RT RIC as described by EI job creation use cases, and the Non-RT RIC can deliver EI job results to Near-RT RIC as described by EI delivery use cases.

EI job constraints information is provided by Non-RT RIC and used by Near-RT RIC when formulating EI job definitions based on the EI type information.

### 7.1.2 Entities/resources involved in the use cases

1) Non-RT RIC:

a) Makes EI types available to Near-RT RIC for which it can support EI jobs and deliver EI job results.

b) Provides information on EI types and constraints for EI jobs.

2) Near-RT RIC:

a) Discovers EI types available in Non-RT RIC.

b) Retrieves EI type information.

### 7.1.3 Solutions

#### 7.1.3.1 Query EI type identifiers

Table 7.1.3.1-1 Query EI type identifiers use case

<div class="table-wrapper" markdown="block">

| Use case stage | Evolution / specification | <<Uses>> Related use |
| --- | --- | --- |
| Goal | Near-RT RIC to discover EI type identifiers for EI types that are available in Non-RT RIC |  |
| Actors and Roles | Non-RT RIC as A1-EI Producer  Near-RT RIC as A1-EI Consumer |  |
| Assumptions | EI types are available in Non-RT RIC |  |
| Pre-conditions | A1 interface is established, and the actors are authorized for using the A1-EI service |  |
| Begins when | Near-RT RIC initiates EI type identifiers query |  |
| Step 1 (M) | Near-RT RIC sends Query EI type identifiers request |  |
| Step 2 (M) | Non-RT RIC sends Query EI type identifiers response containing EI type identifiers |  |
| Ends when | Near-RT RIC has received EI type identifiers for available EI types |  |
| Exceptions |  |  |
| Post-conditions | EI type identifiers are known to Non-RT RIC |  |
| Traceability | REQ-A1-EI-FUN1 |  |

</div>

![Graphical user interface, application  Description automatically generated]({{site.baseurl}}/assets/images/99465bc4ddca.png)

Figure 7.1.3.1-1 Query EI type identifiers

#### 7.1.3.2 Query EI type

Table 7.1.3.2-1 Query EI type use case

<div class="table-wrapper" markdown="block">

| Use case stage | Evolution / specification | <<Uses>> Related use |
| --- | --- | --- |
| Goal | Near-RT RIC to retrieve EI type information about an EI type |  |
| Actors and Roles | Non-RT RIC as A1-EI Producer  Near-RT RIC as A1-EI Consumer |  |
| Assumptions | The EI type identifier known to the Near-RT RIC corresponds to an available EI type |  |
| Pre-conditions | A1 interface is established, and the actors are authorized for using the A1-EI service.  The EI type identifier is known to the Near-RT RIC. |  |
| Begins when | Near-RT RIC initiates EI type query |  |
| Step 1 (M) | Near-RT RIC sends Query EI type request containing the EI type identifier of the EI type being queried |  |
| Step 2 (M) | Non-RT RIC sends Query EI type response containing EI type information and EI job constraints information |  |
| Ends when | Near-RT RIC has received the EI type information |  |
| Exceptions |  |  |
| Post-conditions | EI type information is known to Near-RT RIC |  |
| Traceability | REQ-A1-EI-FUN2, REQ-A1-EI-FUN3 |  |

</div>

![Table  Description automatically generated with medium confidence]({{site.baseurl}}/assets/images/2fe0de60f9f2.png)

Figure 7.1.3.2-1 Query EI type

#### 7.1.4 Required data

An EI type is identified by an EI type identifier. A list of EI type identifiers is provided by Non-RT RIC corresponding to available EI types. The Near-RT RIC provides an EI type identifier when querying for information about an EI type. In response to a query for information about an EI type, the Non-RT RIC includes EI type information and optionally also EI job constraints information.

The EI type information includes the schemas for EI job definition, EI job status, EI job result and EI job constraints. The EI job constraints information includes information on how EI job can be created and how EI job results can be produced and delivered.

## 7.2 EI type status use cases

### 7.2.1 Background and goal of the use cases

The EI type status use cases define how Near-RT RIC can detect status of an EI type and subscribe to notifications for changes in availability and status of EI types.

EI type status information is provided by the Non-RT RIC and is used by Near-RT RIC when managing EI jobs.

### 7.2.2 Entities/resources involved in the use cases

1) Non-RT RIC:

a) Responds to queries for EI type status.

b) Handles subscriptions and notifies Near-RT RIC about changes in availability and state of EI types.

2) Near-RT RIC:

a) Requests EI type status.

b) Subscribes to notifications for changes in EI type status.

### 7.2.3 Solutions

#### 7.2.3.1 Query EI type status

Table 7.2.3.1-1 Query EI type status use case

<div class="table-wrapper" markdown="block">

| Use case stage | Evolution / specification | <<Uses>> Related use |
| --- | --- | --- |
| Goal | Near-RT RIC to retrieve EI type status information for an EI type |  |
| Actors and Roles | Non-RT RIC as A1-EI Producer  Near-RT RIC as A1-EI Consumer |  |
| Assumptions | The EI type identifier known to the Near-RT RIC corresponds to an available EI type |  |
| Pre-conditions | A1 interface is established, and the actors are authorized for using the A1-EI service.  The EI type identifier is known to the Near-RT RIC. |  |
| Begins when | Near-RT RIC initiates EI type status query |  |
| Step 1 (M) | Near-RT RIC sends Query EI type status request containing the EI type identifier of the EI type being queried for status |  |
| Step 2 (M) | Non-RT RIC sends Query EI type status response containing EI type status information |  |
| Ends when | Near-RT RIC has received the EI type status information |  |
| Exceptions |  |  |
| Post-conditions | EI type status information is known to Near-RT RIC |  |
| Traceability | REQ-A1-EI-FUN4 |  |

</div>

![Graphical user interface, text, application  Description automatically generated]({{site.baseurl}}/assets/images/9cc8acdb092a.png)

Figure 7.2.3.1-1 Query EI type status

#### 7.2.3.2 Subscription for EI type status notification

Table 7.2.3.2-1 Subscribe EI type status use case

<div class="table-wrapper" markdown="block">

| Use case stage | Evolution / specification | <<Uses>> Related use |
| --- | --- | --- |
| Goal | Near-RT RIC to subscribe to notifications for EI type status information |  |
| Actors and Roles | Non-RT RIC as A1-EI Producer  Near-RT RIC as A1-EI Consumer |  |
| Assumptions | Near-RT RIC is interested in notifications of EI types that are made available or unavailable, and/or notifications of state changes of a policy type |  |
| Pre-conditions | A1 interface is established, and the actors are authorized for using the A1-EI service.  EI type identifiers are known to the Near-RT RIC when subscribing for notifications on type state changes. |  |
| Begins when | Near-RT RIC initiates EI type status subscribe |  |
| Step 1 (M) | Near-RT RIC sends Subscribe EI type status request containing the EI type status subscription information including EI type identifier(s) if type state changes are requested. |  |
| Step 2 (M) | Non-RT RIC sends Subscribe EI type status response |  |
| Ends when | EI type status subscription has been created |  |
| Exceptions |  |  |
| Post-conditions | Near-RT RIC is subscribed to EI type status notifications |  |
| Traceability | REQ-A1-EI-FUN5 |  |

</div>

Table 7.2.3.2-2 Update type status subscription use case

<div class="table-wrapper" markdown="block">

| Use case stage | Evolution / specification | <<Uses>> Related use |
| --- | --- | --- |
| Goal | Near-RT RIC to update its subscription to notifications for EI type status information |  |
| Actors and Roles | Non-RT RIC as A1-EI Producer  Near-RT RIC as A1-EI Consumer |  |
| Assumptions | Near-RT RIC is interested in notifications of EI types that are made available or unavailable, and/or notifications of state changes of a policy type |  |
| Pre-conditions | A1 interface is established, and the actors are authorized for using the A1-EI service.  EI type status notifications has been subscribed to. |  |
| Begins when | Near-RT RIC initiates EI type status subscribe |  |
| Step 1 (M) | Near-RT RIC sends Subscribe EI type status request containing the updated EI type status subscription information |  |
| Step 2 (M) | Non-RT RIC sends Subscribe EI type status response |  |
| Ends when | EI type status subscription has been updated |  |
| Exceptions |  |  |
| Post-conditions | Near-RT RIC is subscribed to EI type status notifications |  |
| Traceability | REQ-A1-EI-FUN5 |  |

</div>

Table 7.2.3.2-3 Unsubscribe EI type status use case

<div class="table-wrapper" markdown="block">

| Use case stage | Evolution / specification | <<Uses>> Related use |
| --- | --- | --- |
| Goal | Near-RT RIC to unsubscribe from notifications for EI type status information |  |
| Actors and Roles | Non-RT RIC as A1-EI Producer  Near-RT RIC as A1-EI Consumer |  |
| Assumptions | Near-RT RIC is no longer interested in notifications of EI types status |  |
| Pre-conditions | A1 interface is established, and the actors are authorized for using the A1-EI service.  EI type status notifications have been subscribed to. |  |
| Begins when | Near-RT RIC initiates EI type status unsubscribe |  |
| Step 1 (M) | Near-RT RIC sends Subscribe EI type status request containing the EI type status subscription information with no content |  |
| Step 2 (M) | Non-RT RIC sends Subscribe EI type status response |  |
| Ends when | EI type status subscription has been deleted |  |
| Exceptions |  |  |
| Post-conditions | Near-RT RIC is not subscribed to EI type status notifications |  |
| Traceability | REQ-A1-EI-FUN5 |  |

</div>

![Table  Description automatically generated with medium confidence]({{site.baseurl}}/assets/images/0911c6c570d2.png)

Figure 7.2.3.2-1 Subscribe EI type status

#### 7.2.3.3 Notify EI type status

Table 7.2.3.3-1 Notify EI type status use case

<div class="table-wrapper" markdown="block">

| Use case stage | Evolution / specification | <<Uses>> Related use |
| --- | --- | --- |
| Goal | Near-RT RIC to receive EI type status information for an EI type |  |
| Actors and Roles | Non-RT RIC as A1-EI Producer  Near-RT RIC as A1-EI Consumer |  |
| Assumptions |  |  |
| Pre-conditions | A1 interface is established, and the actors are authorized for using the A1-EI service.  Near-RT RIC has subscribed to EI type status notifications and provided a callback URI. |  |
| Begins when | Event occurs in Non-RT RIC related to the status of an EI type, either a change in availability or of the type state |  |
| Step 1 (M) | Non-RT RIC sends Notify EI type status request containing the EI type status information |  |
| Ends when | Near-RT RIC has received the EI type status information |  |
| Exceptions |  |  |
| Post-conditions | EI type status information is known to Near-RT RIC |  |
| Traceability | REQ-A1-EI-FUN5 |  |

</div>

![Graphical user interface, text, application  Description automatically generated]({{site.baseurl}}/assets/images/e3c419332e99.png)

Figure 7.2.3.3-1 Notify EI type status

### 7.2.4 Required data

The EI type status information includes EI type availability change information (i.e. if EI type has been made available or unavailable) and/or state change information related to an EI type.

The state of the EI type state indicates if EI jobs can be created for the EI type or not, and if EI jobs for the EI type would be enabled or disabled.

The EI type status subscription information includes details on if notifications are requested for changes in EI type availability and/or changes in state of the EI type for which EI type identifiers were provided.

## 7.3 Create EI job use cases

### 7.3.1 Background and goal of the use cases

The create EI job use cases define how Near-RT RIC can create an EI job for an EI type and subscribe to notifications for changes in EI job status.

Near-RT RIC provides EI job definition information based on EI type information and considering the EI job constraints.

### 7.3.2 Entities/resources involved in the use cases

1) Non-RT RIC:

a) Handles EI jobs for available EI types.

2) Near-RT RIC:

b) Creates EI job in Non-RT RIC.

### 7.3.3 Solutions

#### 7.3.3.1 Create EI job

Table 7.3.3.1-1 Create EI job use case

<div class="table-wrapper" markdown="block">

| Use case stage | Evolution / specification | <<Uses>> Related use |
| --- | --- | --- |
| Goal | Near-RT RIC to create EI job for an EI type |  |
| Actors and Roles | Non-RT RIC as A1-EI Producer  Near-RT RIC as A1-EI Consumer |  |
| Assumptions | The EI type information known to the Near-RT RIC corresponds to an available EI type.  Near-RT RIC has the schema for formulating EI job definition. |  |
| Pre-conditions | A1 interface is established, and the actors are authorized for using the A1-EI service.  The EI type information is known to the Near-RT RIC. |  |
| Begins when | Near-RT RIC initiates EI job creation |  |
| Step 1 (M) | Near-RT RIC sends Create EI job request containing the EI job identifier and the EI job definition |  |
| Step 2 (M) | Non-RT RIC sends Create EI job response |  |
| Ends when | EI job has been created |  |
| Exceptions |  |  |
| Post-conditions | EI job exists |  |
| Traceability | REQ-A1-EI-FUN6 |  |

</div>

![Table  Description automatically generated]({{site.baseurl}}/assets/images/e25640dd5617.png)

Figure 7.3.3.3-1 Create EI job

### 7.3.4 Required data

For creating an EI job of a certain EI type, the Near-RT RIC provides the EI job identifier and the EI job information, the callback URI for EI job result delivery, and optionally the callback URI for EI job status notifications.

EI job information includes the EI job definition that is formulated based on, and validated against, the EI job definition schema. The EI job definition can be formulated considering the EI job constraints information if provided.

## 7.4 Query EI jobs use cases

### 7.4.1 Background and goal of the use cases

The query EI jobs use cases define how Near-RT RIC can query for information on existing EI jobs.

### 7.4.2 Entities/resources involved in the use cases

1) Non-RT RIC:

a) Handles EI job.

b) Responds to queries for EI job identifiers and EI job information.

2) Near-RT RIC:

a) Discovers EI jobs available in Non-RT RIC.

b) Retrieves EI job information.

### 7.4.3 Solutions

#### 7.4.3.1 Query EI job identifiers

Table 7.4.3.1-1 Query EI job identifiers use case

<div class="table-wrapper" markdown="block">

| Use case stage | Evolution / specification | <<Uses>> Related use |
| --- | --- | --- |
| Goal | Near-RT RIC to discover job identifiers for EI jobs that exist in Non-RT RIC |  |
| Actors and Roles | Non-RT RIC as A1-EI Producer  Near-RT RIC as A1-EI Consumer |  |
| Assumptions | EI jobs exist in Non-RT RIC |  |
| Pre-conditions | A1 interface is established, and the actors are authorized for using the A1-EI service |  |
| Begins when | Near-RT RIC initiates EI job identifiers query |  |
| Step 1 (M) | Near-RT RIC sends Query EI job identifiers request |  |
| Step 2 (M) | Non-RT RIC sends Query EI job identifiers response containing EI job identifiers |  |
| Ends when | Near-RT RIC has received EI job identifiers |  |
| Exceptions |  |  |
| Post-conditions | EI job identifiers are known to Non-RT RIC |  |
| Traceability | REQ-A1-EI-FUN7 |  |

</div>

![Graphical user interface, application  Description automatically generated]({{site.baseurl}}/assets/images/e6d36d4c0df0.png)

Figure 7.4.3.1-1 Query EI job identifiers

#### 7.4.3.2 Query EI job

Table 7.4.3.2-1 Query EI job use case

<div class="table-wrapper" markdown="block">

| Use case stage | Evolution / specification | <<Uses>> Related use |
| --- | --- | --- |
| Goal | Near-RT RIC to retrieve information about an EI job |  |
| Actors and Roles | Non-RT RIC as A1-EI Producer  Near-RT RIC as A1-EI Consumer |  |
| Assumptions | The EI job identifier known to the Near-RT RIC corresponds to an existing EI job.  Near-RT RIC has the schema for interpreting EI job information. |  |
| Pre-conditions | A1 interface is established, and the actors are authorized for using the A1-EI service.  The EI job identifier is known to the Near-RT RIC. |  |
| Begins when | Near-RT RIC initiates EI job query |  |
| Step 1 (M) | Near-RT RIC sends Query EI job request containing the EI job identifier |  |
| Step 2 (M) | Non-RT RIC sends Query EI job response containing EI job information |  |
| Ends when | Near-RT RIC has received the EI job information |  |
| Exceptions |  |  |
| Post-conditions | EI job information is known to Near-RT RIC |  |
| Traceability | REQ-A1-EI-FUN8 |  |

</div>

![Graphical user interface  Description automatically generated with medium confidence]({{site.baseurl}}/assets/images/2270e539e68d.png)

Figure 7.4.3.3-1 Query EI job

### 7.4.4 Required data

For querying EI job identifiers, the Near-RT RIC provides optionally an EI type identifier as filter parameter.

For querying EI job, the Near-RT RIC provides an EI job identifier.

EI job information includes the EI job definition.

## 7.5 Update EI job use cases

### 7.5.1 Background and goal of the use cases

The update EI job use cases define how Near-RT RIC can update an existing EI job.

Near-RT RIC provides updated EI job definition information. The reason for the update can be related to state of the EI type, EI job status and previously received EI job results.

### 7.5.2 Entities/resources involved in the use cases

1) Non-RT RIC:

a) Handles EI jobs for available EI types.

2) Near-RT RIC:

b) Updates EI job in Non-RT RIC that it has created.

### 7.5.3 Solutions

#### 7.5.3.1 Update EI job

Table 7.5.3.1-1 Update EI job use case

<div class="table-wrapper" markdown="block">

| Use case stage | Evolution / specification | <<Uses>> Related use |
| --- | --- | --- |
| Goal | Near-RT RIC to update an existing EI job |  |
| Actors and Roles | Non-RT RIC as A1-EI Producer  Near-RT RIC as A1-EI Consumer |  |
| Assumptions | The EI job identifier known to the Near-RT RIC corresponds to an existing EI job that was created by the Near-RT RIC |  |
| Pre-conditions | A1 interface is established, and the actors are authorized for using the A1-EI service.  The EI job exists. |  |
| Begins when | Near-RT RIC initiates EI job update |  |
| Step 1 (M) | Near-RT RIC sends Update EI job request containing the updated EI job information |  |
| Step 2 (M) | Non-RT RIC sends Update EI job response |  |
| Ends when | EI job has been updated |  |
| Exceptions |  |  |
| Post-conditions | EI job exists |  |
| Traceability | REQ-A1-EI-FUN6 |  |

</div>

![Table  Description automatically generated with medium confidence]({{site.baseurl}}/assets/images/180bbe499fc5.png)

Figure 7.5.3.3-1 Update EI job

### 7.5.4 Required data

For updating an EI job, the Near-RT RIC provides the EI job identifier and updated EI job information and/or callback URI for EI job status notifications.

## 7.6 Delete EI job use cases

### 7.6.1 Background and goal of the use cases

The delete EI job use cases define how Near-RT RIC can delete an EI job.

The reason for the deletion can be related to the state of the EI type, EI job status and previously received EI job results.

### 7.6.2 Entities/resources involved in the use cases

1) Non-RT RIC:

a) Handles EI jobs for available EI types.

2) Near-RT RIC:

b) Deletes EI job in Non-RT RIC that it has created.

### 7.6.3 Solutions

#### 7.6.3.1 Delete EI job

Table 7.6.3.1-1 Delete EI job use case

<div class="table-wrapper" markdown="block">

| Use case stage | Evolution / specification | <<Uses>> Related use |
| --- | --- | --- |
| Goal | Near-RT RIC to delete an existing EI job |  |
| Actors and Roles | Non-RT RIC as A1-EI Producer  Near-RT RIC as A1-EI Consumer |  |
| Assumptions | The EI job identifier known to the Near-RT RIC corresponds to an existing EI job that was created by the Near-RT RIC |  |
| Pre-conditions | A1 interface is established, and the actors are authorized for using the A1-EI service.  The EI job exists. |  |
| Begins when | Near-RT RIC initiates EI job deletion |  |
| Step 1 (M) | Near-RT RIC sends Delete EI job request containing the EI job identifier |  |
| Step 2 (M) | Non-RT RIC sends Delete EI job response |  |
| Ends when | EI job has been deleted |  |
| Exceptions |  |  |
| Post-conditions | EI job does not exist |  |
| Traceability | REQ-A1-EI-FUN6 |  |

</div>

![Graphical user interface  Description automatically generated with medium confidence]({{site.baseurl}}/assets/images/63da71042030.png)

Figure 7.6.3.3-1 Delete EI job

### 7.6.4 Required data

For deleting an EI job, the Near-RT RIC provides the EI job identifier.

## 7.7 EI job status use cases

### 7.7.1 Background and goal of the use cases

The EI job status use cases define how Near-RT RIC can detect status, and changes in status, of an EI job.

EI job status information is provided by the Non-RT RIC and is used by Near-RT RIC when managing EI jobs.

### 7.7.2 Entities/resources involved in the use cases

1) Non-RT RIC:

a) Handles EI job and responds to queries for EI job status.

b) Notifies Near-RT RIC about changes in EI job status.

2) Near-RT RIC:

a) Requests EI job status.

b) Receives notifications about changes in EI job status.

### 7.7.3 Solutions

#### 7.7.3.1 Query EI job status

Table 7.7.3.1-1 Query EI job status use case

<div class="table-wrapper" markdown="block">

| Use case stage | Evolution / specification | <<Uses>> Related use |
| --- | --- | --- |
| Goal | Near-RT RIC to retrieve EI job status information for an existing EI job |  |
| Actors and Roles | Non-RT RIC as A1-EI Producer  Near-RT RIC as A1-EI Consumer |  |
| Assumptions | The EI job identifier known to the Near-RT RIC corresponds to an existing EI job that was created by the Near-RT RIC.  Near-RT RIC has the schema for interpreting EI job status information. |  |
| Pre-conditions | A1 interface is established, and the actors are authorized for using the A1-EI service.  The EI job identifier is known to the Near-RT RIC. |  |
| Begins when | Near-RT RIC initiates EI job status query |  |
| Step 1 (M) | Near-RT RIC sends Query EI job status request containing the EI job identifier of the EI job being queried for status |  |
| Step 2 (M) | Non-RT RIC sends Query EI job status response containing EI job status information |  |
| Ends when | Near-RT RIC has received the EI job status information |  |
| Exceptions |  |  |
| Post-conditions | EI job status information is known to Near-RT RIC |  |
| Traceability | REQ-A1-EI-FUN9 |  |

</div>

![Graphical user interface  Description automatically generated with medium confidence]({{site.baseurl}}/assets/images/1b7e66697316.png)

Figure 7.7.3.1-1 Query EI job status

#### 7.7.3.2 Notify EI job status

Table 7.7.3.2-1 Notify EI job status use case

<div class="table-wrapper" markdown="block">

| Use case stage | Evolution / specification | <<Uses>> Related use |
| --- | --- | --- |
| Goal | Near-RT RIC to receive EI job status information for an existing EI job |  |
| Actors and Roles | Non-RT RIC as A1-EI Producer  Near-RT RIC as A1-EI Consumer |  |
| Assumptions | Near-RT RIC has the schema for interpretating EI job status information. |  |
| Pre-conditions | A1 interface is established, and the actors are authorized for using the A1-EI service.  A callback URI for EI job status notifications has been provided when creating and/or updating the EI job. |  |
| Begins when | Event occurs in Non-RT RIC related to the status of the EI job |  |
| Step 1 (M) | Non-RT RIC sends Notify EI job status request containing the EI job status information |  |
| Ends when | Near-RT RIC has received the EI job status information |  |
| Exceptions |  |  |
| Post-conditions | EI job status information is known to Near-RT RIC |  |
| Traceability | REQ-A1-EI-FUN10 |  |

</div>

![Graphical user interface, text, application  Description automatically generated]({{site.baseurl}}/assets/images/6534cced4a02.png)

Figure 7.7.3.2-1 Notify EI job status

### 7.7.4 Required data

EI job status information includes the EI job status that is formulated based on, and validated against, the EI job status schema.

The EI job status information includes indication if EI job is enabled or disabled.

## 7.8 EI delivery use cases

### 7.8.1 Background and goal of the use cases

The EI delivery use cases define how Non-RT RIC delivers EI job results to Near-RT RIC based on an EI job.

Depending on the EI job definition, the EI job result can be delivered in one delivery message or in repeated delivery messages.

### 7.8.2 Entities/resources involved in the use cases

1) Non-RT RIC:

a) Handles EI job and delivers EI job results.

2) Near-RT RIC:

b) Receives EI job result related to an EI job it has created.

### 7.8.3 Solutions

#### 7.8.3.1 Deliver EI job result

Table 7.8.3.1-1 Deliver EI job result use case

<div class="table-wrapper" markdown="block">

| Use case stage | Evolution / specification | <<Uses>> Related use |
| --- | --- | --- |
| Goal | Non-RT RIC to deliver EI job result based on an EI job |  |
| Actors and Roles | Non-RT RIC as A1-EI Producer  Near-RT RIC as A1-P Consumer |  |
| Assumptions | There is enrichment information based on the EI job definition that is to be delivered |  |
| Pre-conditions | A1 interface is established, and the actors are authorized for using the A1-EI service.  EI job exists and is enabled. |  |
| Begins when | Non-RT RIC initiates EI job result delivery |  |
| Step 1 (M) | Non-RT RIC sends push request with EI job result to be delivered |  |
| Step 2 (M) | Near-RT RIC validates the received information and sends push response |  |
| Ends when | Near-RT RIC has received enrichment information |  |
| Exceptions |  |  |
| Post-conditions | EI job result for the EI job has been delivered |  |
| Traceability | REQ-A1-EI-FUN11 |  |

</div>

![Graphical user interface  Description automatically generated with medium confidence]({{site.baseurl}}/assets/images/81e9b9fa7b76.png)

Figure 7.8.3.1-1 Deliver EI job result

#### 7.8.3.2 Deliver EI job results

Table 7.8.3.2-1 Deliver EI job results use case

<div class="table-wrapper" markdown="block">

| Use case stage | Evolution / specification | <<Uses>> Related use |
| --- | --- | --- |
| Goal | Non-RT RIC to deliver EI job results based on an EI job |  |
| Actors and Roles | Non-RT RIC as A1-EI Producer  Near-RT RIC as A1-P Consumer |  |
| Assumptions | There is enrichment information based on the EI job definition that is to be delivered in more than one delivery message |  |
| Pre-conditions | A1 interface is established, and the actors are authorized for using the A1-EI service.  EI job exists and is enabled. |  |
| Begins when | Non-RT RIC initiates EI job result delivery |  |
| Step 1 - **ref** (M) | Non-RT RIC delivers EI job result | 7.8.3.1 |
| Step 2 - **loop** (M) | Non-RT RIC repeats Step 1 as per the EI job definition |  |
| Ends when | The EI job is completed or deleted. |  |
| Exceptions |  |  |
| Post-conditions | EI job result for the EI job has been delivered |  |
| Traceability | REQ-A1-EI-FUN11 |  |

</div>

![Diagram  Description automatically generated]({{site.baseurl}}/assets/images/d92d80dddc03.png)

Figure 7.8.3.2-1 Deliver EI job results

### 7.8.4 Required data

EI job result information contains the enrichment information requested in the EI job definition. It is formulated based on, and validated against, the EI job result schema.

# 8 Use cases for A1 ML model management service - Near-RT RIC as A1-ML Consumer

## 8.1 Request AI/ML model training use cases

### 8.1.1 Background and goal of the use cases

The Request AI/ML model training use cases define how Near-RT RIC requests SMO/Non-RT RIC to train an AI/ML Model.

### 8.1.2 Entities/resources involved in the use cases

1) SMO/Non-RT RIC:

a) Produces AI/ML model training services.

b) Makes AI/ML model training services available to Near-RT RIC.

2) Near-RT RIC:

b) Requests AI/ML model training from SMO/Non-RT RIC.

### 8.1.3 Solutions

#### 8.1.3.1 Request AI/ML model training

Table 8.1.3.1-1 Request AI/ML model training use case

<div class="table-wrapper" markdown="block">

| Use case stage | Evolution / specification | <<Uses>> Related use |
| --- | --- | --- |
| Goal | Near-RT RIC requests training of an AI/ML model. |  |
| Actors and Roles | SMO/Non-RT RIC as producer of AI/ML training services.  Non-RT RIC as A1-ML Producer.  Near-RT RIC as A1-ML Consumer. |  |
| Assumptions | AI/ML training services are produced by the SMO/Non-RT RIC framework or by rApps for the AI/ML model that training is requested for.  Near-RT RIC is aware of that SMO/Non-RT RIC can train the AI/ML model. |  |
| Pre-conditions | A1 interface is established, and the actors are authorized for using the A1-ML service. |  |
| Begins when | Near-RT RIC determines the need to train an AI/ML model |  |
| Step 1 (M) | Near-RT RIC sends Request training request |  |
| Step 2 (M) | Non-RT RIC sends Request training response |  |
| Step 3 (M) | SMO/Non-RT RIC trains the AI/ML model |  |
| Step 4 (M) | Non-RT RIC sends Notify AI/ML model training job status message containing the AI/ML model training job status and status-dependent information |  |
| Ends when | Near-RT RIC has the location of the trained AI/ML model |  |
| Exceptions |  |  |
| Post-conditions | Trained AI/ML model is available to Near-RT RIC |  |
| Traceability | REQ-A1-ML-FUN2 |  |

</div>

![PlantUML diagram]({{site.baseurl}}/assets/images/6d0bf78e2573.png)

Figure 8.1.3.1-1 Request AI/ML model training - Near-RT RIC requests AI/ML model training

### 8.1.4 Required data

Information for training (e.g. information about training dataset, model identifier, training criteria), and a notification URI to receive notification is provided by Near-RT RIC.

SMO/Non-RT RIC provides the training job identifier and the information for training job status notification, including status-dependent information (e.g location of the trained model, or details in case of non-successful training).

## 8.2 AI/ML model training job status use cases

### 8.2.1 Background and goal of the use cases

This use cases define how Near-RT RIC queries AI/ML model training job status and receives notification about AI/ML model training job status change. AI/ML model training job status is provided by the SMO/Non-RT RIC.

### 8.2.2 Entities/resources involved in the use cases

1) Non-RT RIC:

a) Responds to queries for AI/ML model training job status.

b) Notifies Near-RT RIC about changes in AI/ML model training job status.

2) Near-RT RIC:

a) Requests AI/ML model training job status.

b) Receives notifications about changes in AI/ML model training job status.

### 8.2.3 Solutions

#### 8.2.3.1 Query AI/ML model training job status

Table 8.2.3.1-1 Query AI/ML model training job status use case

<div class="table-wrapper" markdown="block">

| Use case stage | Evolution / specification | <<Uses>> Related use |
| --- | --- | --- |
| Goal | Near-RT RIC to retrieve AI/ML model training job status for an existing AI/ML model training job |  |
| Actors and Roles | Non-RT RIC as A1-ML Producer  Near-RT RIC as A1-ML Consumer |  |
| Assumptions | The AI/ML model training job identifier known to the Near-RT RIC corresponds to an existing AI/ML model training job that was created based on the training request from Near-RT RIC. |  |
| Pre-conditions | A1 interface is established, and the actors are authorized for using the A1-ML service.  The AI/ML model training job identifier is known to the Near-RT RIC. |  |
| Begins when | Near-RT RIC initiates AI/ML model training job status query |  |
| Step 1 (M) | Near-RT RIC sends Query AI/ML model training job status request containing the AI/ML model training job identifier of the AI/ML model training job being queried for status |  |
| Step 2 (M) | Non-RT RIC sends Query AI/ML model training job status response containing AI/ML model training job status |  |
| Ends when | Near-RT RIC has received the AI/ML model training job status |  |
| Exceptions |  |  |
| Post-conditions | AI/ML model training job status is known to Near-RT RIC |  |
| Traceability | REQ-A1-ML-FUN3 |  |

</div>

![PlantUML diagram]({{site.baseurl}}/assets/images/f6ceb574dcc9.png)

Figure 8.2.3.1-1 Query AI/ML model training job status

#### 8.2.3.2 Notify AI/ML model training job status

Table 8.2.3.2-1 Notify AI/ML model training job status use case

<div class="table-wrapper" markdown="block">

| Use case stage | Evolution / specification | <<Uses>> Related use |
| --- | --- | --- |
| Goal | Near-RT RIC to receive AI/ML model training job status for an existing AI/ML model training job |  |
| Actors and Roles | Non-RT RIC as A1-ML Producer  Near-RT RIC as A1-ML Consumer |  |
| Assumptions |  |  |
| Pre-conditions | A1 interface is established, and the actors are authorized for using the A1-ML service.  A callback URI for AI/ML model training job status notifications has been provided when creating the AI/ML model training job. |  |
| Begins when | Event occurs in SMO/Non-RT RIC related to the status of the AI/ML model training job |  |
| Step 1 (M) | Non-RT RIC sends Notify AI/ML model training job status message containing the AI/ML model training job status and optionally status-dependent information |  |
| Ends when | Near-RT RIC has received the AI/ML model training job status |  |
| Exceptions |  |  |
| Post-conditions | AI/ML model training job status is known to Near-RT RIC |  |
| Traceability | REQ-A1-ML-FUN4 |  |

</div>

![PlantUML diagram]({{site.baseurl}}/assets/images/a76a2d9eec42.png)

Figure 8.2.3.2-1 Notify AI/ML model training job status

### 8.2.4 Required data

SMO/Non-RT RIC provides the training job id, the training job status, and optionally the status-dependent information.

# 9 Use cases for A1 ML model management service - Non-RT RIC as A1-ML Consumer

## 9.1 Request AI/ML model training use cases

### 9.1.1 Background and goal of the use cases

The Request AI/ML model training use cases define how Non-RT RIC requests Near-RT RIC to train an AI/ML Model.

### 9.1.2 Entities/resources involved in the use cases

1) Non-RT RIC:

a) Requests AI/ML model training from Non-RT RIC.

2) Near-RT RIC:

a) Produce AI/ML model training services.

b) Makes AI/ML model training services available to Non-RT RIC.

### 9.1.3 Solutions

#### 9.1.3.1 Request AI/ML model training

Table 9.1.3.1-1 Request AI/ML model training use case

<div class="table-wrapper" markdown="block">

| Use case stage | Evolution / specification | <<Uses>> Related use |
| --- | --- | --- |
| Goal | Non-RT RIC requests training of an AI/ML model. |  |
| Actors and Roles | Near-RT RIC as producer of AI/ML training services and A1-ML Producer.  Non-RT RIC as A1-ML Consumer. |  |
| Assumptions | Non-RT RIC is aware of that Near-RT RIC can train the AI/ML model. |  |
| Pre-conditions | A1 interface is established, and the actors are authorized for using the A1-ML service. |  |
| Begins when | Non-RT RIC determines the need to train an AI/ML model |  |
| Step 1 (M) | Non-RT RIC sends Request training request |  |
| Step 2 (M) | Near-RT RIC sends Request training response |  |
| Step 3 (M) | Near-RT RIC trains the AI/ML model |  |
| Step 4 (M) | Near-RT RIC sends Notify AI/ML model training job status message containing the AI/ML model training job status and status-dependent information |  |
| Ends when | Non-RT RIC has the location of the trained AI/ML model |  |
| Exceptions |  |  |
| Post-conditions | Trained AI/ML model is available to Non-RT RIC |  |
| Traceability | REQ-A1-ML-FUN2 |  |

</div>

![PlantUML diagram]({{site.baseurl}}/assets/images/7177fc2631fa.png)

Figure 9.1.3.1-1 AI/ML model training - Non-RT RIC requests AI/ML model training

### 9.1.4 Required data

Information for training (e.g. information about training dataset, model identifier, training criteria), and a notification URI to receive notification is provided by Non-RT RIC.

Near-RT RIC provides the training job identifier and the information for training job status notification, including status-dependent information (e.g location of the trained model, or details in case of non-successful training).

Annex A (normative):
Authorization of service access requests

# A.1 Pre-conditions

The preconditions of the A1 use cases in clauses 6 to 8 are that the actors are authorized for using the A1 service and the authorization procedures are defined in SPS [9], clause 4.7. The registration process for the entity acting as service producer is described in SPS [9], clause 4.7.2.2, and the access token request process for the entity acting as service consumer is described in SPS [9], clause 4.7.2.3.

# A.2 A1 service access based on token verification use cases

### A.2.1 Background and goal of the use cases

The service access request based on token verification is described generically in SPS [9], clause 4.7.2.4.

The A1 service access use cases define how the access token is transferred and verified. This description applies to all solutions specified in clauses 6 to 8 although they do not explicitly refer to token transfer or verification.

### A.2.2 Entities/resources involved in the use cases

1) SMO/Non-RT RIC framework:

a) either makes service access requests containing access token; or

b) verifies received access token before sending service access responses.

2) Near-RT RIC:

a) either verifies received access token before sending service access responses; or

b) makes service access requests containing access token.

### A.2.3 Solutions

#### A.2.3.1 General

The notation A1 Consumer refers to either A1-P Consumer, A1-EI Consumer, or A1-ML Consumer while the notation A1 Producer refers to either A1-P Producer, A1-EI Producer, or A1-ML Producer. SMO/Non-RT RIC framework acts as A1 Consumer for A1-P and/or A1-ML when Near-RT RIC acts as A1 Producer for A1-P and/or A1-ML, and SMO/Non-RT RIC framework acts as A1 Producer for A1-EI and/or A1-ML when Near-RT RIC acts as A1 Consumer for A1-EI and/or A1-ML.

The notation "service access" for the use case, the procedure, and the request/response messages in this clause refers to the use case, procedure and request/response message names used in the solutions in clauses 6 to 8.

#### A.2.3.2 Service access request

Table A.2.3.2-1 Service access use case

<div class="table-wrapper" markdown="block">

| Use case stage | Evolution / specification | <<Uses>> Related use |
| --- | --- | --- |
| Goal | A1 Producer to verify access token in service access request received from A1 Consumer | SPS [9], clause 4.7.2.4 |
| Actors and Roles | SMO/Non-RT RIC framework as A1 Consumer and Near-RT RIC as A1 Producer  or  SMO/Non-RT RIC framework as A1 Producer and Near-RT RIC as A1 Consumer |  |
| Assumptions | See solutions for A1-P, A1-EI, and A1-ML use cases | Clauses 6 to 8 |
| Pre-conditions | A1 interface is established, and the actors are authorized for using the requested A1 service. | SPS [9], clause 4.7 |
| Begins when | A1 Consumer initiates service access |  |
| Step 1 (M) | A1 Consumer sends A1 service access request message containing access token | Clauses 6 to 8 |
| Step 2 (M) | A1 Producer verifies the access token. |  |
| Step 3 (M) | A1 Producer sends A1 service access response message. | Clauses 6 to 8 |
| Ends when | Service access request has been verified. |  |
| Exceptions | If token verification was not successful, further details may be provided that may indicate what is needed to access the service. |  |
| Post-conditions | If verification was successful, the service has been executed. |  |
| Traceability | REQ-A1-P-FUN11, REQ-A1-EI-FUN12, REQ-A1-ML-FUN1 |  |

</div>

![PlantUML diagram]({{site.baseurl}}/assets/images/fdd7edd9f9cf.png)

Figure A.2.3.2-1 Service access

### A.2.4 Required data

In addition to the data required in the solutions in clauses 6 to 8, the access token is included in the service access request message.

In case service access is rejected due to that access is forbidden, the service access response message may include information on the token scope necessary to access the service.

Annex (informative):
Change History

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Date | Revision | Description |
| 2022.07.30 | 01.00 | First version |
| 2022.11.17 | 01.01 | Aligning to O-RAN drafting rules |
| 2023.11.30 | 01.02 | Editorial enhancement and applying latest template |
| 2024.03.31 | 01.03 | Editorial enhancements and alignment of notation for status and feedback. |
| 2024.07.31 | 01.04 | Updated specification designator to R004 |
| 2024.11.30 | 02.00 | Use cases for Authorization of service access requests and AI/ML model training |

</div>
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG2.TS.A1UCR-R004-v02.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG2.TS.A1UCR-R004-v02.00.docx).

---

* toc
{:toc}
