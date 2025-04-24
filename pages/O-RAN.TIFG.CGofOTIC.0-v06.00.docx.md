## O-RAN.TIFG.CGofOTIC.0-v06.00.docx

- View in [Reader Mode](https://simewu.com/spec-reader/pages/01-TIFG/O-RAN.TIFG.CGofOTIC.0-v06.00.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.TIFG.CGofOTIC.0-v06.00.docx).

---

![](../assets/images/01a2ffa695db.png)O-RAN.TIFG.CGofOTIC.0-v06.00

*Process Document*

1

**O-RAN ALLIANCE Test and Integration Focus Group**

**Criteria and Guidelines of Open Testing and Integration Centre**

Copyright (C) 2025 by the O-RAN ALLIANCE e.V.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany

## Contents

1. Foreword 2
2. Modal verbs terminology 2
3. 1 Scope 3
4. 2 References 3
5. 2.1 Normative references 3
6. 2.2 Informative references 4
7. 3 Definition of terms, symbols and abbreviations 4
8. 3.1 Terms 4
9. 3.2 Symbols 5
10. 3.3 Abbreviations 5
11. 4 Overview of OTIC 6
12. 5 General Requirements of OTIC 7
13. 5.1 Participants and roles in OTIC 7
14. 5.1.1 Host 7
15. 5.1.2 Partner 8
16. 5.1.3 Client 8
17. 5.1.4 Observer 8
18. 5.2 OTIC Physical Lab Architecture and Layout 9
19. 5.3 Basic Guidelines for OTIC Agreements 9
20. 6 Application and Qualification Processes 10
21. 6.1 Application for OTIC Qualification 10
22. 6.2 OTIC Application Reviewing and Evaluation 11
23. 6.3 OTIC Application Approval 11
24. 6.4 OTIC Catalogue 12
25. 6.5 Complaints and Disqualification 12
26. Annex A (normative): OTIC application form 14
27. Annex B (informative): Guidelines on OTIC application form 20
28. Annex C (normative): Hosting agreement 21
29. Revision history 25
30. History **Error! Bookmark not defined.**

## Foreword

1. This Process Document has been produced by O-RAN ALLIANCE.

## Modal verbs terminology

1. In the present document "**shall**", "**shall not**", "**should**", "**should not**", "**may**", "**need not**", "**will**", "**will not**",
2. "**can**" and "**cannot**" are to be interpreted as described in clause 3.2 of the O-RAN Drafting Rules (Verbal
3. forms for the expression of provisions).
4. "**must**" and "**must not**" are **NOT** allowed in O-RAN deliverables except when used in direct citation.

## 1 Scope

1. The contents of the present document are subject to continuing work within O-RAN and may change
2. following formal O-RAN approval. Should the O-RAN Alliance modify the contents of the present document,
3. it will be re-released by O-RAN with an identifying change of version date and an increase in version
4. number as follows:
5. version xx.yy.zz
6. where:
7. xx: the first digit-group is incremented for all changes of substance, i.e. technical enhancements,
8. corrections, updates, etc. (the initial approved document will have xx=01). Always 2 digits with
9. leading zero if needed.
10. yy: the second digit-group is incremented when editorial only changes have been incorporated in the
11. document. Always 2 digits with leading zero if needed.
12. zz: the third digit-group included only in working versions of the document indicating incremental
13. changes during the editing process. External versions never include the third digit-group. Always
14. 2 digits with leading zero if needed.
15. The present document describes the essential criteria and guidelines (guiding principles) from process,
16. organization, space and technical perspective on the qualified Open Testing and Integration Centre (OTIC).
17. The conformance and interoperability certification/validation/badging processes will be described in a
18. separate set of documents (e.g. [1]), incl. the definition on who can and how to issue O-RAN certificate or
19. badge.

## 2 References

### 2.1 Normative references

1. References are either specific (identified by date of publication and/or edition number or version number)
2. or non-specific. For specific references, only the cited version applies. For non-specific references, the latest
3. version of the referenced document (including any amendments) applies.
4. NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN
5. cannot guarantee their long-term validity.
6. The following referenced documents are necessary for the application of the present document.

|  |  |  |
| --- | --- | --- |
| 30 | [1] | O-RAN.TIFG.Cert-Badge.0-v05.00: O-RAN ALLIANCE Test and Integration Focus Group, |
| 31 |  | Certification and Badging Processes and Procedures, Version 05.00, October 2022" |
| 32 | [2] | O-RAN.WG1.O-RAN-Architecture-Description-v07.00: O-RAN ALLIANCE WG1, O-RAN Architecture |
| 33 |  | Description, Version 7.0, October 2022 |
| 34 | [3] | O-RAN.TSC.WORKPROC-v03.00: "O-RAN Working Procedures" |
| 35 | [4] | O-RAN ALLIANCE Constitution, version 27-06-2018 , available at [www.o-ran.org/membership-info](http://www.o-ran.org/membership-info) |

1

### 2.2 Informative references

1. References are either specific (identified by date of publication and/or edition number or version number)
2. or non-specific. For specific references, only the cited version applies. For non-specific references, the latest
3. version of the referenced document (including any amendments) applies.
4. NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN
5. cannot guarantee their long-term validity.
6. The following referenced documents are not necessary for the application of the present document, but
7. they assist the user with regard to a particular subject area. 10

## 3 Definition of terms, symbols and abbreviations

### 3.1 Terms

1. For the purposes of the present document, the following terms apply:
2. **Affiliate**: the definition is given in [4].
3. **Blueprint**: is the set of inputs which is used to describe a specific O-RAN deployment from several aspects.
4. These aspects include the specification of the O-RAN deployment at the system level (e.g. architecture,
5. performance metrics) as well as subsystem level and the interfaces between the specified subsystems. This
6. would then allow definition and documentation of the testing methodology and the test cases using the
7. blueprint specification.
8. **Client**: is a participant in OTIC who provides its O-RAN equipment, components and/or services for the testing
9. in OTIC.
10. **Host**: is a founder and main sponsor of Open Testing and Integration Centre (OTIC). Only O-RAN Member
11. (including the affiliates [4]) or non-vendor O-RAN Participants (including the affiliates [4]) may become a host.
12. Host is mandatory entity in OTIC.
13. **IOT profile**: specifies a specific selection of parameters, optional features, default values and ranges of
14. configurable attributes and mechanisms from O-RAN subsystem interface specification(s) that shall be
15. supported and used in order to guarantee interoperability between implementations from different vendors.
16. **Observer**: is a participant in OTIC who is allowed to observe the testing activities in OTIC for a limited period
17. and/or a limited purpose.
18. **OTIC**: is a qualified Open Testing and Integration Centre meeting the relevant subset of criteria and guidelines
19. mentioned in the present document.
20. **O-RAN Academic Contributor**: the definition is given in [3].
21. **O-RAN Contributor**: the definition is given in [3].
22. **O-RAN Entity**: the definition is given in [3].
23. **O-RAN Member**: the definition is given in [3].
24. **O-RAN Participant**: the definition is given in [3].
25. **Partner**: is a participant in OTIC who can provide, maintain and/or operate test and measurement equipment
26. and tools, can provide space and services, can design, set-up, conduct and evaluate the testing activities on
27. behalf of host.
28. **Testing**: any activity involving testing of O-RAN equipment, e.g. plugfest, demo, lab trial, field trial.

### 3.2 Symbols

1. For the purposes of the present document, the following symbols apply: 9

### 3.3 Abbreviations

1. For the purposes of the present document, the following abbreviations apply:

|  |  |  |
| --- | --- | --- |
| 12 | IOT | Interoperability |
| 13 | IUT | Interface under Test |
| 14 | O-CU-CP | O-RAN Central Unit - Control Plane |
| 15 | O-CU-UP | O-RAN Central Unit - User Plane |
| 16 | O-DU | O-RAN Distributed Unit |
| 17 | O-RU | O-RAN Radio Unit |
| 18 | OTIC | Open Testing and Integration Centre |
| 19 | PoC | Proof of Concept |
| 20 | RIC | RAN Intelligent Controller |
| 21 | TIFG | O-RAN ALLIANCE Test and Integration Focus Group |
| 22 | TSC | O-RAN ALLIANCE Technical Steering Committee |
| 23 |  |  |

## 4 Overview of OTIC

1. The Open Testing and Integration Centre (OTIC) provides a collaborative, open, and impartial working
2. environment; however, the intellectual property of participants in OTIC must be protected in this
3. environment as well.
4. The environment meeting all of the criteria and guidelines from this document may be qualified as OTIC and

6 may be named as "Open Testing and Integration Centre (OTIC)". OTIC may or may not have its own legal

1. incorporation. OTIC is an activity outside O-RAN ALLIANCE.
2. Multiple OTICs may exist in different regions around the world. Each OTIC may focus on different O-RAN
3. functions [2] (such as Near-RT RIC, O-CU-CP and O-CU-UP, O-DU, O-RU), interfaces [2] (such as Open
4. Fronthaul, E2, O1, O2, A1), blueprints, IOT profiles, etc. The testing results, experiences, best practices,
5. knowledge, lesson-learned, adopted processes, etc. are assumed to be shared among the OTICs in order to
6. reduce the overall costs and resources and coordinate the efforts. The learning and experiences may also be
7. published and shared outside the O-RAN community with specified level of confidentiality. The Open Testing
8. and Integration Centre is proposed as vendor-independent[**1**], open and qualified physical space in order to,
9. among others (not everything must be included in the scope of work of a particular OTIC):
10. a) Support of wide adoption of O-RAN specifications and promote the openness of O-RAN ecosystem
11. via demos, community events (e.g. speaker sessions, workshops, tutorials), lab and field trials, etc.
12. b) Demonstrate implementations and solutions based on O-RAN specifications via plugfests and proofs
13. of concept "PoCs".
14. c) Test and verify the conformity of RAN equipment with O-RAN interface specifications, based on
15. O-RAN conformance test specifications.
16. d) Test and verify the interoperability of RAN equipment from different vendors (or the same vendor)
17. using O-RAN interface specifications, based on O-RAN interoperability test specifications.
18. e) Foster and develop the integrator's technical capabilities via workshops, tutorials, etc.
19. f) Conduct functional as well as performance (load, capacity) tests of both end-to-end systems as well
20. as sub-systems.
21. g) Give O-RAN (in particular O-RAN workgroups, O-RAN contributors) feedback about the experiences
22. made with O-RAN specifications during the testing activities (i.e. implementation driven
23. specification).

30

1. The coordination (in terms of considered focus areas, test scenarios, operators' specific requirements,
2. plugfests) among worldwide OTICs is required to avoid fragmentation and repeating the same functional as
3. well as performance tests (with the same vendors) multiple times. The services offered by OTICs should be
4. complementary rather than competitive.
5. The O-RAN ALLIANCE in cooperation with TIFG (O-RAN ALLIANCE Test and Integration Focus Group) is the
6. governing body to resolve any un-clarity, inconsistency and ambiguity in the present document, as well as
7. any conflict and complaint which cannot be resolved internally inside OTIC.

**1** Vendors include all commercial suppliers of equipment and tools, including test and measurement companies.

## 5 General Requirements of OTIC

### 5.1 Participants and roles in OTIC

1. The following roles with relations and responsibilities are defined in Open Testing and Integration Centre
2. (OTIC):
3. a) Host
4. b) Partner
5. c) Client
6. d) Observer

#### 9 5.1.1 Host

1. a) Host is a founder, main contact (designated multi-host representative in case of co-hosted OTIC) and
2. main sponsor of OTIC. The financial flows inside the OTIC are controlled and managed by the host
3. itself. Host is also an entity which coordinates and is fully responsible for all the activities in OTIC.
4. b) Host shall be an O-RAN Member [3] (i.e. mobile operator, including the affiliates [4]) or an O-RAN
5. Participants [3] (i.e. O-RAN Contributor or O-RAN Academic Contributor, including the affiliates [4]);
6. in order to ensure a high level of credibility, confidentiality, the O-RAN Participant shall demonstrate
7. vendor-independence**2**. For example, a third-party authorized test laboratory (an open lab) may also
8. host OTIC, but it shall become O-RAN Participant first. Note that only O-RAN Entities may present the
9. results, proposals, etc. at O-RAN ALLIANCE meetings, and upload the results and reports to O-RAN
10. ALLIANCE wiki and other shared folders.
11. c) OTIC may be hosted by one or more hosts (co-hosted OTIC). In this case a designated multi-host
12. representative will be designated as main OTIC contact among the involved hosts.
13. d) Host provides the space (test rooms, server rooms) for conducting of the tests and hosting the events
14. (incl. IOT and conformance testing, plugfest, PoC, demo), network connectivity, and
15. test/measurement equipment, tools and services. These can be fully or partially provided by the host
16. itself or by the contracted partner(s), but the host assumes responsibility for meeting the required
17. criteria, conditions, and guidelines.
18. e) Host guarantees the openness and fairness to any client who has interest in testing its equipment in
19. OTIC. It means OTIC is available and open for all clients, and any client may not be disqualified from
20. testing in OTIC without cause. All clients shall be handled equally.
21. f) Host guarantees the credibility, confidentiality, openness and vendor-independence[2] of OTIC. Host
22. also guarantees that the agreed test procedures are properly followed, and the results are produced
23. in agreed format and with certain level of quality and confidentiality.
24. g) Host enters into agreements (e.g. participant agreement, testing agreement) with all other
25. participants in OTIC. The agreement shall be in compliance with the criteria and requirements stated
26. in the present document.
27. h) Host shall take all necessary steps (e.g. participant's agreement, testing agreement, isolated space) to
28. work towards protecting the intellectual property each participant in OTIC in a mutually collaborative
29. environment; however, OTIC participants shall recognize that it may not be possible to safeguard
30. intellectual property in all situations, e.g. outdoor equipment.

**2** Vendors include all commercial suppliers of equipment and tools, including test and measurement companies.

* 1. i) Host shall take necessary steps to ensure that the used test and measurement equipment and tools
  2. are properly calibrated and ready to use.
  3. j) Host allows the detailed results, blueprints, interface profiles, experiences, best practices,
  4. knowledges, lesson-learned, adopted processes, etc. to be shared following the confidentiality levels
  5. from the agreements.
  6. k) Host regularly presents the summary of testing results, experiences, best practices, knowledges,
  7. lesson-learned and adopted processes at TIFG meetings (and optionally on request to any other O-
  8. RAN meeting).
  9. l) Host or multi-host designated representative responds to the request for information or testing
  10. results from TIFG in a timely manner.
  11. m) Host acts as a mediator trying to resolve any complaint inside OTIC. The complaint resolution
  12. processes (incl. documentation of resolution of complaint) shall be set up in each OTIC. O-RAN
  13. ALLIANCE in cooperation with TIFG acts as the governing body in case the complaint might not be
  14. resolved by the host(s) inside OTIC.
  15. n) In the multi-host scenario, O-RAN ALLIANCE and TIFG will only communicate officially with the
  16. multi-host designated representative.

#### 5.1.2 Partner

* 1. a) Partner is any company/organization with or without O-RAN ALLIANCE membership in good standing.
  2. b) Partner can provide maintain, and/or operate test and measurement equipment and tools (e.g.
  3. emulators, log tools, analysers, generators) on behalf of the host on permanent basis or temporary
  4. basis per test.
  5. c) Partner can provide, maintain space (rooms, servers) and services in OTIC on behalf of the host.
  6. d) Partner can design, set-up, conduct and evaluate the testing activities on behalf of the host, but the
  7. host always guarantees that the test procedures are properly followed with certain level of quality
  8. and confidentiality (e.g. using a confidentiality agreement signed between host and partner).
  9. e) All the aforementioned items can be also provided by the host itself, i.e. OTIC can have no contracted
  10. partner.

#### 5.1.3 Client

* 1. a) Client (or customer) is any company/organization with or without O-RAN ALLIANCE membership in
  2. good standing producing O-RAN equipment and components which are subsequently provided for
  3. the testing in OTIC.
  4. b) Client can choose any OTIC for the testing of its RAN equipment and components.
  5. c) The host or delegated partner should sign a testing agreement with the client.
  6. d) Client is encouraged to leave at least one representative product in the OTIC for a reasonable time
  7. period. Leaving more than one product is encouraged, as is replacing outdated products with newer
  8. models.

#### 5.1.4 Observer

* 1. a) Observer (or Visitor) is any company/organization with or without O-RAN ALLIANCE membership in
  2. good standing which is allowed to observe the testing activities in OTIC for a limited period and/or a
  3. limited purpose. The period and purpose shall be clearly specified and known in advance to all
  4. participants in OTIC involved in testing activity. The role is expected to be more related to the O-RAN
  5. PlugFest.
     1. b) The host guarantees that the confidentiality in OTIC is not violated by the observer (e.g. using a
     2. confidentiality agreement signed between host/delegated partner and observer).

### 5.2 OTIC Physical Lab Architecture and Layout

* + 1. The OTIC physical lab is designed to create an open and collaborative environment, but at the same time
    2. satisfy IPR protection concerns of all OTIC participants. OTIC is a place where different participating
    3. companies are onsite collaborating, and where multiple different testing activities can be hosted at the same
    4. time. Therefore, the space layout, architecture and network setups shall be flexible and ensure restricted
    5. access to specific components only to specific participants engaged in specific testing activity.
    6. A logical and physical separation between OTIC and the rest of facilities (e.g. host's own internal lab(s)) shall
    7. be provided and ensured in order to minimize any security risk. The OTIC environment should be presented
    8. as an OTIC resource.
    9. Every testing activity shall be assigned a separated work area with restricted access (e.g. a badging access)
    10. only to participants engaged in that testing activity. The work area shall be equipped with working desks and
    11. secure connections to the server room(s) with server racks. The size of specified work area is related to the
    12. number of engaged participants and complexity of the testing activity.
    13. The server room(s) shall be separated from the work area. The restricted access to server room is granted
    14. only to participants engaged in the testing activity(ies). The server room might be shared for multiple testing
    15. activities but the physical and/or logical separation between servers shall be ensured (e.g. physical servers
    16. separated in locked racks, virtual servers logically separated).
    17. The access to the network and sharing of the resources and equipment should be secured (e.g. using subnets,
    18. access lists).
    19. The host of OTIC is responsible (also, where appropriate, by engaging into specific agreements with any
    20. contracted partners) for the security, configuration and maintenance of network (e.g. assignment of subnets,
    21. VPNs to each testing activity and participants) as well as for identification and provision of the proper test
    22. and measurement equipment and tools within hosted testing activities and supported services and focus
    23. areas. The additional equipment and tools, which are not available in OTIC, might be needed for the period
    24. of the testing activity.
    25. Each OTIC is encouraged to have the capability to easily and securely connect to the other OTICs in case
    26. different HW or SW components from each individual OTIC need to communicate with each other.
    27. The vendors may remotely connect their O-RAN functions to the OTIC and run the specified remote testing
    28. (e.g. remote testing of A1 interface between Non-RT RIC and Near-RT RIC, or O1 interface between Service
    29. Management and Orchestration system and O-RAN functions). This will allow vendors to scale logistic issues.
    30. The OTIC support of remote connectivity is optional.

### 5.3 Basic Guidelines for OTIC Agreements

* + 1. O-RAN ALLIANCE foresees the following two types of agreements that OTIC will adopt
    2. ? Legal agreement between host and its potential partners, clients or observers

1. ? Legally binding Hosting agreement between the underlying OTIC (OTIC host(s)) and O-RAN ALLIANCE
2. (see Annex C)
3. In general, the host or hosts have the full flexibility and authorization to negotiate and sign legal agreements
4. with its partners, clients and observers. O-RAN ALLIANCE will not interfere in such processes. However, O-
5. RAN ALLIANCE recommends the following main common items to be included in the agreement:
6. ? Confidentiality
7. ? Openness and fairness
8. ? Rights to share the testing/validation results and other outcomes
9. It is required for the underlying OTIC and its host(s) to sign the Hosting agreement with O-RAN ALLIANCE to
10. be qualified as Open Testing and Integration Centre (OTIC), which may cover the following processes and
11. main considerations:
12. ? Qualification and disqualification process
13. ? Reporting and results sharing process
14. ? Complaint resolution process

## 6 Application and Qualification Processes

### 6.1 Application for OTIC Qualification

1. This section describes OTIC qualification process. The OTIC applicant (i.e. host or designated multi-host
2. representative in case of co-hosted OTIC) needs to send the complete application to *otic@groups.o-ran.org*
3. in order to start OTIC qualification process. The OTIC application can be submitted at any time. The submitted
4. application is received by the O-RAN Office and sent to TIFG for handling the review. The approval process is
5. handled by O-RAN Office. The OTIC application form is defined in Annex A (with the guidelines on how to fill
6. OTIC application form in Annex B), and it contains among others the following information:
7. ? General information about OTIC, incl. name of OTIC, location (address) and main contacts
8. ? Information about the host(s) and potential partners, if any
9. ? Information about the lab(s), incl. space layout and architecture
10. ? Information about the supported focus area and work scope - supported services and test cases
11. ? OTIC applicant self-declaration confirming that the requirements for qualification have been fulfilled.
12. The name of OTIC shall be unique and English name including word "OTIC". The proposed OTIC name may be
13. revised and harmonized with other OTIC names during the review meeting. It would be also recommended
14. (optional) to use the naming convention (scheme) based on geographic location of OTIC lab(s) and/or hosting
15. company/organization name(s) whenever possible. Please visit https://[www.o-ran.org/](http://www.o-ran.org/) for already approved
16. OTIC names.

1

1. The following changes are subject to O-RAN approval. The OTIC needs to send a request for such approval to
2. *otic@groups.o-ran.org*.
3. o Changing of name of OTIC
4. o Changing of host(s) of the OTIC

### 6.2 OTIC Application Reviewing and Evaluation

1. Once the O-RAN Office sends the application to the TIFG, TIFG co-chairs assign each application to a reviewer
2. who is the next in line and who has no relation to the OTIC applicant or OTIC host(s). The applications should
3. be equally distributed to the reviewers.
4. The reviewer is selected from the list of reviewers which is maintained by TIFG. The reviewer list is accessible
5. to all O-RAN Entities [3], and it contains information about the reviewers such as name, e-mail address, phone
6. number, company affiliation, and assigned OTIC applications. Any representative of O-RAN Entity can be
7. registered in or deregister from the list of reviewers at his or her own request at any time. The TIFG co-chairs
8. can re-select the assigned reviewer if needed.
9. The assigned reviewer checks the application to ensure it is complete and in compliance with the
10. requirements. If needed, the reviewer may request OTIC applicant to provide additional information for any
11. missing or unclear information in the application. The reviewer is designated as the point of contact for all
12. communications with OTIC applicant. The reviewer helps OTIC applicant to complete the application. The
13. reviewer guarantees completeness and compliance of the application. The reviewer does not approve or
14. evaluate the application.
15. Once the application is completed, the assigned reviewer needs to inform TIFG co-chairs to schedule a review
16. meeting where OTIC applicant will present and defend the application. If needed, TIFG can also try to
17. coordinate the application with other OTICs in order to avoid fragmentation, overlap, etc.
18. If the review meeting does not take place within 2 months of the date when application was submitted, the
19. application may be withdrawn from review process. The applicant can still submit new OTIC application later
20. on.
21. The preliminary favourable or unfavourable recommendations should be collected by TIFG co-chairs during
22. the review meeting, and provided to OTIC applicant after the review meeting. The TIFG co-chairs also add
23. the recommendations and summary of the review meeting to OTIC application. OTIC applicant has the rights
24. to provide their statements and any necessary information or correction if the unfavourable
25. recommendation is made. The OTIC applicant statements and corrections are also added to OTIC application.
26. It needs to be noted that the OTIC application cannot be approved or rejected by TIFG.

### 6.3 OTIC Application Approval

1. The completed application with TIFG recommendations and with OTIC applicant statements, if provided, shall
2. be sent back to the O-RAN Office for further approvals. The OTIC application is handled as a process
3. document and not as a technical specification. OTIC applicant needs to address any question or inquiry raised
4. during this official approval process.
5. After passing O-RAN ALLIANCE approval process, OTIC applicant will be required to sign the **Hosting**
6. **agreement** with O-RAN ALLIANCE, which is defined in Annex C. The OTIC qualification process is considered
7. completed after the Hosting agreement is signed.
8. It needs to be noted that O-RAN ALLIANCE can terminate the Hosting agreement without cause at any time
9. with prior written notice.
10. It needs to be also noted that the additional criteria and requirements on conformance and interoperability
11. validation processes (certification, badging, etc.) can be added and described in a separate set of documents
12. (e.g. [1]).
13. There may be a future requirement to make a contribution or to pay a license fee to the O-RAN ALLIANCE for
14. the use of their logos (e.g., "O-RAN", "OTIC") or fees for O-RAN qualification services in the event that an
15. OTIC collects a fee.

### 6.4 OTIC Catalogue

1. The assigned reviewer will create new record (page) with the information about approved OTIC in the list of
2. OTICs (OTIC catalogue) at O-RAN ALLIANCE wiki and at O-RAN ALLIANCE web site. The reviewer will be also
3. assigned as the initial page administrator in the OTIC catalogue. The list of OTICs is maintained by TIFG (via
4. assigned page administrator), and each **OTIC needs to keep all published information up to date** - any
5. relevant change, which does not require approval (see chapter 6.1 for changes requiring approval), shall be
6. reported to assigned page administrator as soon as possible. The page administrator ensures changes at all
7. relevant places. TIFG co-chairs can re-select the assigned page administrator if needed.

### 6.5 Complaints and Disqualification

1. O-RAN ALLIANCE encourages each underlying OTIC to resolve internally the complaints and disagreements
2. raised by its partners, clients or observers. O-RAN ALLIANCE has no intent and will not involve in the daily
3. operations of OTIC and resulting normal business operation issues, which could be arbitrated or resolved by
4. legal challenges among the involved parties.
5. However, when O-RAN ALLIANCE receives the official request with convincing evidence that this guideline
6. has been violated or the following situations have happened, O-RAN ALLIANCE will launch the formal
7. investigation and may request the further information from all underlying parties
8. ? The behaviour of OTIC has seriously undermined the healthy operation of global OTICs.
9. ? The OTIC is not following the testing process. For example, OTIC releases detailed test results without
10. the written consent of participant (vendor).
11. ? OTIC unable to fulfil its obligations and responsibilities with O-RAN ALLIANCE.
12. The O-RAN Entity [3] can submit the complaint directly to O-RAN ALLIANCE, while the others can use the
13. contact form at [www.o-ran.org](http://www.o-ran.org/) for this purpose (as they have no access to O-RAN internal documents and
14. procedures).
15. The OTIC host(s) has/have the obligation to provide the information requested, as well as full rights to appeal
16. and defend its/their position by providing evidence and supporting materials.
17. O-RAN ALLIANCE will review the materials submitted by all parties, collect and verify all necessary
18. information, and present the findings and preliminary recommendation to O-RAN ALLIANCE TSC/EC/Board,
19. and follow the legal process defined in the Hosting agreement between the OTIC host and O-RAN ALLIANCE
20. for the disqualification process.
21. All participants in OTIC should be acquainted with the complaint rights and procedures (e.g. via OTIC charter,
22. testing agreements).

## Annex A (normative): OTIC application form

1. The following application form is used during OTIC qualification process as described in Chapter 6. 3

4

# Open Testing and Integration Centre - Application form

##### A. GENERAL INFORMATION

|  |  |
| --- | --- |
| A1 Full name of OTIC | A1-1 Proposed O-RAN ALLIANCE designator of OTIC (3-4 letters) |
| A2 Link to OTIC web site | A3 E-mail address |
| A4 Correspondence address: street - city - country - postal code | |
| A5 Description and introduction of OTIC (max 100 words) | |
| Contact 1 | |
| A7 First name | A8 Surname |
| A9 Telephone number (incl. country code) | A10 E-mail address |
| A11 Responsibilities/duties | |
| Contact 2 | |
| A12 First name | A13 Surname |
| A14 Telephone number (incl. country code) | A15 E-mail address |
| A16 Responsibilities/duties | |

1. *Note A1: Name of OTIC is unique and English name including word "OTIC". The proposed OTIC name can be revised and harmonized during the*
2. *review meeting.*
3. *Note A1-1: Proposed O-RAN ALLIANCE designator of OTIC needs to be a unique identifier within O-RAN ALLIANCE and is subject to harmonization.*
4. *The assigned O-RAN ALLIANCE designator will be mentioned in item F4.*

###### The designed single point of contact for all communication between OTIC and O-RAN ALLIANCE

|  |  |
| --- | --- |
| A17 First name | A18 Surname |
| A19 Telephone number (incl. country code) | A20 E-mail address |

1. **OTIC Applicant**

|  |  |
| --- | --- |
| A21 Full legal name of company | |
| A22 Correspondence address: street - city - country - postal code | |
| The point of contact for all communication between applicant and O-RAN ALLIANCE during qualification process | |
| A23 First name | A24 Surname |
| A25 Telephone number (incl. country code) | A26 E-mail address |

3

##### B. HOSTS AND PARTNERS

1. The OTIC has at least one host, and no or more partners.

|  |  |
| --- | --- |
| B1 Total number of hosts | B2 Total number of partners |

6

###### Host 1#

|  |  |
| --- | --- |
| B3 Full legal name of company | |
| B4 Correspondence address: street - city - country - postal code | |
| Contact | |
| B5 First name | B6 Surname |
| B7 Telephone number (incl. country code) | B8 E-mail address |
| B9 O-RAN membership  ? Member (i.e. mobile network operator) ? Contributor ? Academic Contributor | |

1. *Note #: The OTIC has at least one host. The other host(s) is optional. Please copy the table if OTIC has more than one host.*

###### Partner 1#

|  |  |
| --- | --- |
| B10 Full legal name of company | |
| B11 Correspondence address: street - city - country - postal code | |
| Contact | |
| B12 First name | B13 Surname |
| B14 Telephone number (incl. country code) | B15 E-mail address |
| B16 O-RAN membership  ? Member (i.e. mobile network operator) ? Contributor ? Academic Contributor  ? No O-RAN membership | |

1. *Note #: The OTIC has no or more partners. Please leave the table empty if OTIC has no partner, and copy the table if OTIC has more than one*
2. *partner.*

4

##### C. PHYSICAL LAYOUT AND ARCHITECTURE OF LAB(S)

1. The OTIC has at least one physical lab. An additional information about the lab(s) can be asked during
2. O-RAN ALLIANCE review meeting.

|  |
| --- |
| C1 Total number of physical labs |
| C2 Description of OTIC architecture (max 100 words) - the pictures/photos can be including |

8

9 **Lab 1#**

|  |
| --- |
| C3 Name of lab |
| C4 Correspondence address: street - city - country - postal code |

1. *Note #: If OTIC has more than one lab, please copy the table.*

C5 Please describe the applied security and IPR protection mechanisms in the lab such as isolation of the lab from host own facilities (offices), capability of quickly setting up a separate work area with restricted access based on projects, etc.

2

##### D. SUPPORTED WORK SCOPE AND SERVICES

1. Please tick the relevant box(es) based on the current OTIC testing capabilities (e.g. based on the available
2. test and measurement equipment in the OTIC today).

|  |  |
| --- | --- |
| D1 Brief description of testing and other services currently supported by OTIC that can be offered to clients (text max 100 words) | |
| D2 Is anechoic chamber available in the OTIC?  ? Yes, FR1 ? Yes, FR2 ? No | D3 Is RF shielded chamber/room available in the OTIC?  ? Yes, FR1 ? Yes, FR2 ? No |

6

|  |  |  |  |
| --- | --- | --- | --- |
| D4 O-RAN Certificates and Badges that can be awarded by OTIC, as defined in Clause 5.3 [1] | | | |
| Type of award | Interface under test | Device under test | RAT under test |
|  |  |  |  |
|  |  |  |  |

7

##### E. SELF-DECLARATION

1. OTIC applicant declares fulfilment of the requirements for qualification as an OTIC HOST as defined in the
2. Criteria and Guidelines of Open Testing and Integration Centre, dated ......................, Version OTIC
3. applicant also hereby confirms the accuracy of data provided in this application form. 12

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Representative of OTIC applicant |  | Date |  | Signature |

13

14

1

##### F. PROCESSING INFORMATION

1. Please do not fill the following items. The following items will be filled by O-RAN ALLIANCE.

|  |  |
| --- | --- |
| F1 Date of application received | F2 Assigned reviewer |
| F3 O-RAN ALLIANCE unique reference ID for this application | F4 O-RAN ALLIANCE designator assigned to OTIC (3-4 letters) |
| F5 Recommendations and summary from the review meeting, and OTIC applicant statements | |

4

5

## 1 Annex B (informative): Guidelines on OTIC application form

2 VOID

3

## 1 Annex C (normative): Hosting agreement

2 After passing O-RAN ALLIANCE approval process, OTIC applicant will be required to sign the legally binding

3 Hosting agreement with O-RAN ALLIANCE. 4

1

# 2 HOSTING AGREEMENT

3

4 Between

5

6 <Company Name>

###### 7 ("OTIC Host")

8 <Address>

9 <Address>

10

11 And

12

13 **O-RAN ALLIANCE e.V.**

##### 14 ("O-RAN ALLIANCE")

15 Buschkauler Weg 27

16 53347 Alfter/Germany

17

18 1. O-RAN ALLIANCE has accepted <Company> as OTIC HOST on <DATE>. 19

1. 2. O-RAN ALLIANCE confirms that OTIC HOST fulfills the requirements for qualification as an OTIC HOST
2. as defined in the Criteria and Guidelines of Open Testing and Integration Centre, dated ,
3. Version ("Criteria and Guidelines") and as declared by OTIC Host in its self-declaration
4. (OTIC application form). 24
5. 3. OTIC HOST as the founder, main contact and main sponsor of OTIC will take full responsibility for all
6. OTIC activities, including the organization as well as all budget and financial flows inside the OTIC. 27
7. 4. OTIC HOST will in particular:
8. a. Provide the space (test rooms, server rooms) for conducting of tests and hosting events (incl.
9. IOT and conformance testing, PlugFest, PoC, demo), network connectivity, and
10. test/measurement equipment, tools and services; these services may also be provided by
11. partner(s) contracted by the OTIC HOST;
12. b. Guarantee the openness and fairness to any client who has interest in testing its equipment
13. in OTIC;
14. c. Guarantee the credibility, confidentiality, openness and vendor-independence of OTIC;
15. d. Guarantee that the agreed O-RAN ALLIANCE test procedures (e.g. for certification and
16. badging) are properly followed, and the results are produced in agreed format and with
17. certain level of quality and confidentiality;
    1. e. Enter into agreements (e.g. participant agreement, testing agreement) with all other
    2. participants in OTIC; all agreements shall be in compliance with the criteria and requirements
    3. stated in the "Criteria and Guidelines";
    4. f. Take all necessary steps (e.g. participation agreement, testing agreement, isolated space) to
    5. work towards protecting the intellectual property of each participant in OTIC; to safeguard
    6. intellectual property in all situations, e.g., outdoor equipment;
    7. g. Take all necessary steps to ensure that the used test and measurement equipment and tools
    8. are properly calibrated and ready to use;
    9. h. Allow the detailed results, blueprints, interface profiles, experiences, best practices,
    10. knowledges, lesson-learned, adopted processes, etc. to be shared following the
    11. confidentiality levels from the agreements;
    12. i. Regularly present the summary of testing results, experiences, best practices, knowledges,
    13. lesson-learned and adopted processes at O-RAN ALLIANCE TIFG meetings (and optionally on
    14. request to any other O-RAN ALLIANCE meeting);
    15. j. Host or multi-host designated representative responds to the request for information or
    16. testing results from O-RAN ALLIANCE in a timely manner;
    17. k. Acts as a mediator trying to resolve any complaint and disagreements inside OTIC raised by
    18. its partners, clients or observers; and
    19. l. Set-up a complaint resolution processes (incl. documentation of resolution of complaint) as
    20. described in the "Criteria and Guidelines".
    21. 5. OTIC HOST has flexibility and authorization to negotiate and sign bilateral legal agreements with its
    22. partners, clients and observers. At minimum these agreements should include confidentiality,
    23. openness and fairness, and rights to share the testing/validation results according to the "Criteria
    24. and Guidelines".
    25. 6. OTIC HOST must notify the O-RAN ALLIANCE immediately if any of the requirements for qualification
    26. as an OTIC Host as defined in the "Criteria and Guidelines" are not fulfilled any longer.
    27. 7. O-RAN ALLIANCE must notify OTIC HOST immediately if any of the requirements for qualification as
    28. OTIC HOST as defined in the "Criteria and Guidelines", are changed.
    29. 8. There is no obligation to pay fees to O-RAN ALLIANCE. In case that OTIC HOST collects fees from
    30. OTIC participants O-RAN ALLIANCE reserves the right to charge fees for the use of its logos (e.g. "O-
    31. RAN", "OTIC" ) and/or fees for O-RAN ALLIANCE qualification services.
    32. 9. Having regard to the considerable commercial value of confidential information, OTIC HOST shall
    33. keep confidential and secret and not disclose to any third party confidential information.
    34. "Confidential Information" means all financial, commercial, technical, operational, staff,
    35. management and other information, data and know-how relating to Specifications or Contributions,
    36. which may be supplied to or may otherwise come into the possession of the OTIC HOST, whether
    37. orally or in writing or in any other form, and which is confidential or proprietary in nature or
    38. otherwise expressed by the disclosing party to be confidential.
    39. 10. The restrictions on use and disclosure of Confidential Information as described above shall not
    40. apply to any information which:
    41. a) is already in the possession of the receiving party prior to its disclosure;
    42. b) is or comes into the public domain or otherwise ceases to be of a confidential nature other
    43. than as a result of wrongful disclosure hereunder by the receiving party;
        1. c) becomes available to the receiving party on a non-confidential basis from a source other than
        2. the Disclosing Party or any of its Associates;
        3. d) is separately generated by the receiving party who are not privy to the Confidential
        4. Information; or
        5. e) is required to be disclosed by any law or order of a court of competent jurisdiction, recognised
        6. stock exchange, governmental department or agency provided that the receiving party (where
        7. legally permitted to do so) promptly notifies the OTIC HOST of any such requirement.
        8. 11. O-RAN ALLIANCE grants OTIC HOST a royalty-free, non-exclusive, non-transferable, non-
        9. sublicensable license to use the registered O-RAN logos ("O-RAN", "OTIC") solely for the purpose of
        10. this Hosting Agreement. In the event of termination of this Hosting Agreement, OTIC HOST must
        11. immediately cease all use of the Logo.
        12. 12. OTIC HOST will comply with the rules on data protection as provided by the European General Data
        13. Protection Regulation (GDPR) in effect since May 25, 2018.
        14. 13. O-RAN ALLIANCE reserves the right to suspend or withdraw OTIC HOST its status as OTIC HOST if it
        15. reasonably believes that OTIC is not in compliance with the terms of this Hosting Agreement by
        16. following the procedure described in the "Criteria and Guidelines". The OTIC HOST shall reasonably
        17. cooperate with O-RAN ALLIANCE and provide all the requested necessary information and data
        18. during investigation of received complaints.
        19. 14. O-RAN ALLIANCE and OTIC HOST can terminate this Hosting Agreement without cause at any time
        20. with prior written notice of ninety (90) days.
        21. 15. Upon termination of this Hosting Agreement OTIC HOST shall on demand promptly return to or
        22. destroy all originals of Confidential Information, whether in paper or in electronic form, supplied to
        23. it and promptly destroy all copies made of the Confidential Information and all notes, memoranda
        24. and other documents or computer files or records prepared by it to the extent of the Confidential
        25. Information contained in them, provided that the Receiving Party may keep one copy of Confidential
        26. Information for archiving purposes.
        27. 16. OTIC HOST agrees and acknowledges that the obligations contained in this Hosting Agreement are
        28. legally binding upon it and that they will be construed and interpreted in accordance with German
        29. law.
        30. 17. The OTIC HOST agrees that any disputes which may rise out of or in connection with this Hosting
        31. Agreement or otherwise in connection with its involvement in or with the O-RAN ALLIANCE shall be
        32. finally settled under the Rules of Conciliation and Arbitration of the International Chamber of
        33. Commerce by one or more arbitrators appointed in accordance with these Rules. The OTIC HOST
        34. further agrees that the place of arbitration shall be Geneva/Switzerland and all proceedings in the
        35. arbitration shall be in English.
        36. 18. The obligations in this Hosting Agreement in respect of confidentiality shall survive termination of
        37. this Hosting Agreement howsoever arising.
        38. Signatures:
        39. Company Name ("OTIC Host") (Name and Date)
        40. O-RAN ALLIANCE e.V (Name and Date)

## Annex:

1. Change history/Change request (history)

|  |  |  |
| --- | --- | --- |
| **Date** | **Revision** | **Description** |
| 2020.07.02 | 01.00 | First published version |
| 2020.11.07 | 02.00 | The details of OTIC qualification process have been added in Chapter 4. The OTIC  application form has been added in Annex A. |
| 2021.05.07 | 03.00 | The format of document has been changed from technical specification to process document. The OTIC application approval process has been updated in Chapter 4. The Hosting agreement has been added in Annex C. The OTIC application form in Annex A  has been extended by Self-declaration. |
| 2022.06.01 | 04.00 | Legal review of the document. The guidelines on mapping of OTIC testing capabilities and services to OTIC application form have been added to Annex B. The OTIC application form in Annex A has been updated. The format and structure of document has  been updated according to the latest O-RAN templates. |
| 2023.03.01 | 05.00 | Harmonization of OTIC names - adding requirements on OTIC names and recommended naming convention (scheme) in chapter 6.1. The changes which require additional O- RAN approval have been listed in chapter 6.1. Limitation of 2 months on duration of OTIC review process has been added to chapter 6.2. The OTIC application form (Annex A) has been updated accordingly, and new item for O-RAN ALLIANCE designator has been  added. |
| 2025.01.15 | 06.00 | Updated and simplified OTIC application form in Annex A. Alignment of terminology with O-RAN Working procedures and O-RAN Constitution. Clarification of who can be OTIC  host, including O-RAN Contributors as well as O-RAN Academic Contributors. |

3
---

- View in [Reader Mode](https://simewu.com/spec-reader/pages/01-TIFG/O-RAN.TIFG.CGofOTIC.0-v06.00.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.TIFG.CGofOTIC.0-v06.00.docx).
