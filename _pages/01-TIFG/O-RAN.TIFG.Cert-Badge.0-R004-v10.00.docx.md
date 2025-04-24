---
title: O-RAN.TIFG.Cert-Badge.0-R004-v10.00.docx.md
author: O-RAN Alliance
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.TIFG.Cert-Badge.0-R004-v10.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.TIFG.Cert-Badge.0-R004-v10.00.docx).

---

* toc
{:toc}

---

![]({{site.baseurl}}/assets/images/743ec7a17ca1.tiff.png) O-RAN.TIFG.Cert-Badge.0-R004-v10.00

Technical Specification

O-RAN ALLIANCE Test and Integration Focus Group

Certification and Badging Processes and Procedures

Copyright (C) 2024 by the O-RAN ALLIANCE e.V.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany

Register of Associations, Bonn VR 11238, VAT ID DE321720189

Contents

Foreword 3

Modal verbs terminology 3

1 Scope 4

2 References 4

2.1 Normative references 4

2.2 Informative references 5

3 Definition of terms, symbols, and abbreviations 5

3.1 Terms 5

3.2 Symbols 6

3.3 Abbreviations 6

4 Certification and Badging Overview 7

4.1 Objectives 7

4.2 Scope 8

4.3 Entities Involved 9

4.3.1 O-RAN ALLIANCE 9

4.3.2 Certification/Badging entity 9

4.4 Outline of Processes and Technical Procedures 10

5. Certification and badging processes 10

5.1 General 10

5.1.1 Objectives of defining certification/badging processes 10

5.1.2 Principles 11

5.1.3 Overview 11

5.1.4 O-RAN Certificates and Badges 12

5.2 Processes 13

5.2.1 Defining Certification/Badging and Set of Tests 13

5.2.2 Test platforms 13

5.2.3 Identifying Applicable O-RAN certificate/badge and Tests 13

5.2.4 Executing Tests 14

5.2.5 Verifying Test Results 14

5.2.6 Issuing Certificates/Badges 14

5.2.6.1 Certificate/Badge Reference Identifier 14

5.2.7 Compliance Folder 15

5.2.8 Storing and Sharing of Summary Reports, Test reports and Measurement Results 15

5.2.9 SH/HW changes to certified/badged devices 16

5.2.10 Multi-vendor Scenario 16

5.3 Defined and Available O-RAN Certificates and Badges 16

6. O-RAN Certificate Procedures 17

6.1 Subsystems and Interfaces 17

6.2 O-RAN Open Fronthaul interface of O-RU 18

6.3 O-RAN Open Fronthaul interface of O-DU 18

7. O-RAN IOT Badge Procedures 19

7.1 Subsystems and Interfaces 19

7.2 O-RAN Open Fronthaul interface 19

7.3 X2 interface 20

7.4 F1 interface 20

7.5 Xn interface 20

8. O-RAN E2E Badge Procedures 21

Annex A - Certification application 22

Annex B - Compliance folder 23

Revision history 24

History 27

# Foreword

This Technical Specification (TS) has been produced by O-RAN ALLIANCE.

# Modal verbs terminology

In the present document "**shall**", "**shall not**", "**should**", "**should not**", "**may**", "**need not**", "**will**", "**will not**", "**can**" and "**cannot**" are to be interpreted as described in clause 3.2 of the O-RAN Drafting Rules (Verbal forms for the expression of provisions).

"**must**" and "**must not**" are **NOT** allowed in O-RAN deliverables except when used in direct citation.

# 1 Scope

The contents of the present document are subject to continuing work within O-RAN and may change following formal O-RAN approval. Should the O-RAN ALLIANCE modify the contents of the present document, it will be re-released by O-RAN with an identifying change of version date and an increase in version number as follows:

version xx.yy.zz

where:

xx: the first digit-group is incremented for all changes of substance, i.e. technical enhancements, corrections, updates, etc. (the initial approved document will have xx=01). Always 2 digits with leading zero if needed.

yy: the second digit-group is incremented when editorial only changes have been incorporated in the document. Always 2 digits with leading zero if needed.

zz: the third digit-group included only in working versions of the document indicating incremental changes during the editing process. External versions never include the third digit-group. Always 2 digits with leading zero if needed.

The present document describes the certification and badging processes and associated detail technical procedures that Open Testing and Integration Centre (OTIC) [1] and other testing entities should adopt to:

1. Verify compliance of devices under test (DUTs) using O-RAN interface or an implementation of O-RAN reference design based on conformance test specifications (**conformance certification**),
2. Assess interoperability of DUT pairs using O-RAN interfaces based on Interoperability Test (IOT) specifications (**IOT badging**)
3. Assess end-to-end system integration of SUT using O-RAN interfaces based on E2E test specifications (**E2E badging**).

# 2 References

## 2.1 Normative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following referenced documents are necessary for the application of the present document.

1. O-RAN.TIFG.CGofOTIC.0-v05.00: O-RAN ALLIANCE Test and Integration Focus Group, Criteria and Guidelines of Open Testing and Integration Centre, Version 05.00, October 2022
2. O-RAN.TIFG.E2E-TST.0-v04.00: O-RAN ALLIANCE Test and Integration Focus Group, End-to-end Test Specification, Version 5.0, February 2024
3. O-RAN.WG1.OAD-R003-v10.00: O-RAN ALLIANCE Working Group 1, O-RAN Architecture Description, Version 10.0, October 2023
4. 3GPP TS 38.300: "NR; NR and NG-RAN Overall Description; Stage 2"
5. 3GPP TS 38.401: "NG-RAN; Architecture description"
6. 3GPP TS 37.340: "Evolved Universal Terrestrial Radio Access (E-UTRA) and NR; Multi-connectivity; Stage 2"

## 2.2 Informative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following referenced documents are not necessary for the application of the present document, but they assist the user with regard to a particular subject area.

# 3 Definition of terms, symbols, and abbreviations

## 3.1 Terms

For the purposes of the present document, the following terms apply:

**Badging**: the process by which interoperability for a pair of products or E2E system integration for a group of products are assessed, and the involved products are authorized to carry a specific set of credentials that indicate successful results. Badging information, which is common to all products involved, will include information on all products (including hardware version and software version) which were involved in interoperability testing or E2E system testing.

**Blueprint**: the set of inputs which is used to describe a specific deployment of O-RAN-based system or solution from several aspects. These aspects include the specification of the O-RAN deployment at the system level (e.g. architecture, performance metrics) as well as subsystem level and the interfaces between the specified subsystems. This would then allow definition and documentation of the testing methodology and the test cases using the blueprint specification.

**Catalogue:** the centralized database providing basic (non-sensitive) information about all issued certificates, IOT badges and E2E badges. This catalogue is publicly available at O-RAN ALLIANCE web site and maintained by O-RAN ALLIANCE.

**Certification**: the process by which compliance with O-RAN interface or reference design specifications for a product is verified, and the product is authorized to carry a specific set of credentials that indicate that it is conformant.

**Compliance folder**: the set of detailed measurement results demonstrating an O-RAN ALLIANCE device's compliance to the Badging and Certification Criteria, which includes the ICS, test reports, summary reports, technical documentation, change management documentation and certification information.

**Implementation Conformance Statement (ICS)**: statement of conformance provided by vendors who bring their DUTs/SUT for badging and/or certification service, which is the key element in determining which test cases will be executed on a particular product.

**Logo:** O-RAN approved logo for certification and badging differentiating products/solutions that passed certification, IOT badging, and/or E2E badging. The logo is a part of O-RAN certificate, IOT badge or E2E badge. The logo is intended to be utilized for marketing purposes at website, brochure, printed at the product itself, etc.

**Measurement results:** a collection of detailed measurement results collected during the certification or badging including logs, screenshots, packet captures, etc. The file format of measurement results is not specified and unified and depends on used test and measurement equipment and tools.

**MVP:** the minimum viable plan to be tested for Certification and Badging.

**Test report (O-RAN Certificate and Badge Test Report):** provides detailed information about DUT/SUT, test setup configuration, assessment of measured KPIs, gap analysis, evidence of meeting pass criteria, etc. The unified format of document (template) is used to ensure reusability and sharing of the information. The test report is a part of O-RAN certificate, IOT badge or E2E badge.

**Summary report (O-RAN Certificate and Badge Summary Report):** provides a summary of O-RAN certification, IOT badging or E2E badging testing including basic information about issued O-RAN certificate, IOT badge or E2E badge, contacts to all involved entities, list of awarded DUTs, list of used test and measurement equipment and tools, list of applicable and conducted tests, etc. The unified format of document (template) is used to ensure reusability and sharing of the information. The Summary report is a part of O-RAN certificate, IOT Badge and E2E badge.

## 3.2 Symbols

For the purposes of the present document, the following symbols apply:

## 3.3 Abbreviations

For the purposes of the present document, the following abbreviations apply:

DUT Device Under Test

E2E End-to-End

FFS For Future Study

IOT Interoperability Testing

IUT Interface under Test

MVP Minimum Viable Plan

O-CU O-RAN Central Unit

O-DU O-RAN Distributed Unit

O-RU O-RAN Radio Unit

OTIC Open Testing and Integration Centre

RIC RAN Intelligent Controller

SMO Service Management and Orchestration

SUT System Under Test

TIFG O-RAN Test and Integration Focus Group

# 4 Certification and Badging Overview

## 4.1 Objectives

The motivation of O-RAN certification and badging is to minimize the repetition of fundamental and common tests which should be performed to verify and validate O-RAN compliant products, systems, and solutions before their deployment in operator networks thus reduce the test effort. The idea is to test only once and reuse/adopt the test results multiple times whenever it is possible. In addition, the use of O-RAN certificates and badges for network components can be a very important way to promote the O-RAN ecosystem and to encourage implementation and testing of O-RAN products, systems and solutions and their deployment in operator networks.

The purpose of **O-RAN certification** is to validate and certify that a vendor product is compliant to a related set of O-RAN defined interface or reference design specifications through a set of O-RAN defined conformance tests using unified test procedures and templates for sharing of results. The O-RAN certificate is awarded to a product for one or more interfaces (e.g. O-RU CUSM-OpenFH, O-RU O1, O-DU O1, O-cloud O2).

The purpose of **O-RAN IOT badging** is to prove interoperability of a pair of products based on the most fundamental and operator neutral (common) features and parameters through a set of O-RAN defined interoperability tests using unified test procedures and templates for sharing of results. In addition, O-RAN IOT badging can also provide an indication of interoperability of a pair of products based on optional/advanced and operator specific features and parameters through a set of O-RAN defined interoperability tests using unified test procedures and templates for sharing of results. The O-RAN IOT badge is awarded to both products in the DUT pair and is applicable for an O-RAN interface.

The purpose of **O-RAN end-to-end badging** is to demonstrate and verify that a (multi-vendor) end-to-end system meets minimum requirements in terms of functionality, security and other mandatory features defined in related O-RAN test specifications. In addition, O-RAN end-to-end badging can also provide an indication of end-to-end performance and other optional end-to-end capabilities though a set of O-RAN defined end-to-end tests using unified test procedures and templates and data formats for sharing of results. The O-RAN E2E badge is awarded to all products in the SUT and is applicable to the specific scope tested.

With certification and badging in place, operator awareness of a vendor O-RAN-based system or solution is expected to increase, and the operator own testing is expected to reduce because the common tests can be performed only once and would not need to be repeated.

O-RAN certification and badging may also be helpful for vendors as it provides some level of evidence that their O-RAN-based systems and solutions work, which could be used to promote their systems and solutions to operators. Further, for vendors looking for other vendors to interoperate with, certification and badging may also be beneficial to increase acceptance from other vendors.

O-RAN certification and badging should not be used as a substitute for operator-specific testing of O-RAN based systems and solutions prior to deployment in operator networks. O-RAN certificate and badge do not mean all the necessary tests have been performed and passed, and O-RAN certified/badged system or solution can be automatically deployed in an operator network without any additional testing. Rather, O-RAN certification and badging can improve operator confidence in their chosen O-RAN based blueprint and can reduce the complexity and duration of pre-deployment testing.

## 4.2 Scope

The document defines and unifies the processes, procedures, templates, data format, etc. to ensure reusability and sharing of the test results and repeatability of the executed tests. The required tests for issuing of specific O-RAN certificate/badge are decoupled from this document. The document only references O-RAN test specification(s) (but without mentioning a specific version) which shall be used for issuing of specific O-RAN certificate/badge. All the test related information such as test description, test applicability, test procedure, test setup and configuration, expected results, recorded KPIs, pass/fail criteria are defined in the O-RAN test specifications and shall be properly followed. If needed, the specific modifications, clarifications and alignments of O-RAN test specifications required only for the purpose of O-RAN certificates and badges are defined in this document. It is also assumed that the user/tester has properly read and understood the related O-RAN test specifications. In case of any unclarity in O-RAN test specification, specific O-RAN WG/FG owning O-RAN test specification shall be contacted to resolve the unclarity.

For certification and badging purposes, OTICs and vendors should use the latest published version of this document. The summary report and test report shall include the versions of this document and relevant O-RAN test specification used to perform O-RAN certification or badging. Each O-RAN certificate or badge shall only be issued against a single version of the corresponding test specification which is indicated in the summary report and test report (i.e. a certificate/badge cannot be issued based on mixing tests from multiple test specification versions).

The certification and badging described in this document defines the processes and associated technical procedures in the following areas:

* Compliance verification of DUTs using O-RAN interface or an implementation of O-RAN reference design based on conformance test specifications (**conformance certification**)
* Interoperability assessment of DUT pairs using O-RAN interfaces based on IOT test specifications (**IOT badging**)
* E2E system integration assessment of SUT using O-RAN interfaces based on E2E test specifications (**E2E badging**)

The reason to use the term "certification" for conformance testing and "badging" for interoperability and E2E system testing is as follows:

* Conformance tests are controllable as it only involves a single DUT and verifies whether that DUT behaves in accordance with a technical specification (e.g. open fronthaul interface specification);
* IOT and E2E system tests have some variability as it involves multiple DUTs/SUT (from different vendors) and the results may depend on the DUT/SUT combinations, deployment blueprints and test profiles.

Figure 4.2-1 provides an illustration for the above-described concept of O-RAN certification and badging.

![]({{site.baseurl}}/assets/images/79e270d18730.png)

Figure 4.2-1: O-RAN certification and badging concept

Whether or not and how to address 3GPP functional and performance testing for the underlying components and interfaces is for future study (FFS).

## 4.3 Entities Involved

### 4.3.1 O-RAN ALLIANCE

In terms of certification and badging, O-RAN Test and Integration Focus Group (TIFG) only specifies the processes and associated detailed technical procedures, identifies the relevant O-RAN test specifications and test cases specified by O-RAN WGs/FGs, including end-to-end tests defined by O-RAN TIFG [2].

Under no circumstances is the certification/badging entity under the charter or governed/sponsored by O-RAN/TIFG. It is the underlying certification/badging entity that will take full responsibility on all certification/badging related activities including certification/badging implementation, verification/assessment as well as certificate/badge issuance.

### 4.3.2 Certification/Badging entity

O-RAN certification and badging can only be performed by approved O-RAN Open Testing and Integration Centers (OTICs), and consequently the O-RAN Certificates and Badges (with O-RAN approved logos for certification and badging) can only be issued by OTICs. In addition, the O-RAN Certificates and Badges (with O-RAN approved logos for certification and badging) can only be awarded to a product provided by O-RAN member, O-RAN contributor, or O-RAN academic contributor.

OTICs provide a collaborative, open, and impartial working environment, and the criteria and guidelines for OTICs are specified in [1]. These guidelines stipulate that:

* O-RAN summary reports, test reports and detailed measurement results can be freely accessed by O-RAN operator members for the purpose of evaluating the equipment for use in their networks
* An OTIC may or may not choose to provide certification and/or badging services. If an OTIC intends to provide O-RAN certification/badging services, it is mandatory for them to follow the processes and associated technical procedures specified in this document.
* Prerequisites for OTICs to be able to provide certification/badging services are defined in [1].

O-RAN allows the testing to be also performed outside of the OTICs using O-RAN test specifications and following the certification and badging procedures as defined in this document. However, such test results cannot carry an O-RAN Certificate or O-RAN Badge with O-RAN approved logos but may state that their equipment has been "tested according to O-RAN Certification and Badging Process and Procedures document."

The certification/badging entity may require certain pre-requisite testing be done by vendors before the start of the certification/badging process. Some examples are illustrated as follows

* 3GPP compliance validated by vendor, 3rd party, or the same certification entity as add-on service may be a pre-requisite for any O-RAN conformance certification
* O-RAN conformance certification by vendor, 3rd party, or the same certification/badging entity as add-on service may be a prerequisite for O-RAN IOT / E2E badging.

## 4.4 Outline of Processes and Technical Procedures

Certification and badging include various processes and technical procedures.

Chapter 5 will define these processes in following areas:

* Describe the process of verifying certification/badging test results and responsible entity
* Describe how to issue a certificate/badge
* Describe how to share O-RAN summary reports, test reports and detailed measurement results
* Describe how to improve/enhance the certification/badging process and what triggers a new release of this document (e.g. WG spec 1.0 to 2.0, O-RAN Software Community Bronze release to Cherry)

Corresponding to processes to be described in Chapter 5, the detail technical procedures introduced in the following Chapters include identifying all relevant test specifications given by various O-RAN WGs/FGs in terms of Conformance, IOT, and E2E validation of underlying subsystems and interfaces.

Chapter 6 defines the procedures related to Conformance certification that must be performed on the DUT.

Chapter 7 defines the procedures related to the IOT badging that must be performed on the DUTs.

Chapter 8 defines the procedures related to E2E badging that are applicable for the operator deployment scenario (e.g. LTE, 5G NSA, or 5G SA). This can also include some unique O-RAN features or use cases that are part of O-RAN MVP initiative.

# 5. Certification and badging processes

## 5.1 General

### 5.1.1 Objectives of defining certification/badging processes

The objective is to have in place some level of uniformity on the certification/badging processes in order to:

* Ensure quality of the certification/badging service provided by different certification/badging entities;
* Align procedures that users of the certification/badging service (both vendors bringing in DUTs/SUT for certification/badging, and operators requesting access to summary reports, test reports and detailed measurement results of certified/badged DUTs/SUT) experience at different certification/badging entities.

### 5.1.2 Principles

The certification/badging process sub-chapter adheres to the following principles:

* A distributed approach is adopted in which (a) roles pertaining to certification/badging are allocated to certification/badging entities and (b) related details are left to certification/badging entities' discretion and responsibility. Rather than having rigorous centralized O-RAN control and management, this approach helps avoid imposing heavy requirements and allows freedom of operation to the certification/badging entities. However, centralized approach will also be adopted where required, e.g. to ensure quality of certification/badging, sharing of summary reports, test reports and detailed measurement results, etc.
* Defining certification/badging process elements to address near-term needs of the community, while also establishing a framework that can evolve and scale with the ecosystem growth, i.e. this sub-chapter can evolve over time.
* O-RAN will, as necessary, issue new versions of its functional specifications. As a result, O-RAN may determine that it will launch an updated version of its certification/badging program.
* O-RAN will, as necessary, determine that an existing version of its functional specification is no longer viable and should be taken out of service for product development and certification/badging. As a result, O-RAN may determine when the specification is to be taken out of service.

### 5.1.3 Overview

Figure 5.1-1 shows the relation between O-RAN and certification/badging entities.

**![]({{site.baseurl}}/assets/images/3bd940ada802.png)**

Figure 5.1-1: Relation between O-RAN and certification/badging entity

1. O-RAN provides the certification and badging process framework in this document. Certification/badging entities should follow the processes described in this document.
2. O-RAN defines tests for certification/badging. Further description is provided in Section 5.2.1.
3. Certification/badging entities can provide feedback to O-RAN on the certification/badging process and tests for certification/badging, making it a closed loop operation.
4. O-RAN TIFG is the governing body to resolve any un-clarity, inconsistency, and ambiguity in the present document.
5. Certification/badging entities create a catalogue or database to share certification test reports with the vendors whose subsystems/systems were tested, operators, and other OTICs. Detailed measurement results should be stored by the vendors themselves as evidence. Further description on sharing of summary reports, test reports and detailed measurement results is provided in Section 5.2.8 and on SW/HW update in Section 5.2.9.

Figure 5.1-2 shows the certification/badging process framework. This is a general framework to be followed with O-RAN certification/badging.

![]({{site.baseurl}}/assets/images/f3adad620d93.png)

**Figure 5.1-2: Certification/badging process framework -parts to be performed by certification/badging entities**

### 5.1.4 O-RAN Certificates and Badges

O-RAN certificates or badges issued by OTICs are comprised of:

* **Logo of the O-RAN Certificate, IOT Badge or E2E Badge**, which the product that is awarded the certificate or badge can display on the product or in corresponding marketing material, e.g. website, brochure, etc.
* **Summary report (O-RAN Certificate and Badge Summary Report)** providing a summary of O-RAN certification, IOT badging or E2E badging testing. The unified structure and format of document (using the same file format as associated template O-RAN.TIFG.Cert-Badge.1) is used to ensure reusability and sharing of the information.
* **Test report (O-RAN Certificate and Badge Test Report)** providing details of O-RAN certification, IOT badging or E2E badging testing. The unified format of document (associated template O-RAN.TIFG.Cert-Badge.2) is used to ensure reusability and sharing of the information
* Detailed **measurement results** providing a collection of detailed measurement results collected during the certification or badging including logs, screenshots, packet captures, etc. which are captured from DUT/SUT or/and from test and measurement equipment and tools. The file format of measurement results is not specified and unified and depends on used DUT/SUT and test and measurement equipment and tools.

The summary and test reports shall be encrypted, and editing shall be restricted to avoid unauthorized editing and modification of the reports. The summary and test reports shall be digitally signed by OTIC to provide assurance about integrity, validity, and authenticity of the reported data. It is recommended that the reports be co-signed by participating vendor(s) to confirm their involvement and their approval of reported data. The public key certificate (identity certificate) associated with the digital signature shall be valid and issued by a trusted certificate authority.

## 5.2 Processes

### 5.2.1 Defining Certification/Badging and Set of Tests

O-RAN Work Groups (WGs) specify Conformance Tests and Interoperability Tests related to their scope of work (e.g. WG4 specifies Conformance Tests and Interoperability Tests for Open Fronthaul interface). O-RAN TIFG specifies E2E tests where applicable.

O-RAN TIFG defines certification and badging processes and procedures while conformance, interoperability and E2E testing are defined in O-RAN WG/FG test specifications. This is specified in Chapter 6 for O-RAN certification, Chapter 7 for O-RAN IOT badging and Chapter 8 for O-RAN E2Ebadging.

O-RAN TIFG should define certification and badging according to market needs. If a certification/badging entity does not find certificate/badge defined for its intended scenario(s), then certification/badging entity is encouraged to submit a proposal to the O-RAN TIFG in order to define new certificate/badge.

### 5.2.2 Test platforms

To reliably and successfully execute the tests for conformance certification, IOT badging, and E2E badging, specialized test equipment and tools are needed. Such test equipment and tools need to meet specific criteria and be designed to execute the identified tests.

It is the responsibility of certification/badging entities to use appropriate test equipment and tools for certification/badging. O-RAN does not provide qualification or acknowledge processes for test equipment and tools, i.e. the choice of test equipment and tools for certification/badging will be left to the test market and their suitability will depend on self-declaration of certification/badging entities and test equipment vendors.

The certification/badging entities should use commercially available or open-source test platforms. The certification/ badging entities should also ensure proper calibration of test equipment and tools as specified by the test equipment vendors. (Pre-) Commercial UE(s) can also be used as long as it is allowed in the associated O-RAN test specification(s) and the information about the UE(s) is documented as a part of the test setup and test results are reproducible.

The description of certification/badging test setup including information about used test equipment and tools needs to be document in the summary report and test report. This will allow DUT/SUT vendors to challenge any failed test that may be caused by the test equipment.

### 5.2.3 Identifying Applicable O-RAN certificate/badge and Tests

The following steps describe the process for certification/badging entities to identify which O-RAN certification/badging and test sets to conduct in the course of certification/badging of the DUTs/SUT. The process will take into consideration the interfaces and functions supported by the DUTs/SUT that are brought in for certification/badging.

Step 1: Identify which type of O-RAN certification/badging can be applied: Conformance certification (Chapter 6), Interoperability badging (Chapter 7) and/or E2E system integration badging (Chapter 8).

Step 2: Identify relevant DUT(s)/SUT and interface(s) to be tested based on O-RAN logical architecture [3] and type of O-RAN certification/badging identified in Step 1.

Step 3: Identify relevant test sets for certification or badging (see Chapters 6-8) of the particular DUT(s)/SUT and interface(s) identified in Step 2.

### 5.2.4 Executing Tests

The certification/badging entity executes the identified test sets based on type of O-RAN certificate/badge and relevant DUT(s)/SUT identified in Chapter 5.2.3.

### 5.2.5 Verifying Test Results

The certification/badging entities shall collect the test results for each executed test and fill in the summary report and test report to be shared accordingly. The detailed measurement results such as logs, screenshots, packet captures, etc. shall be also recorded. Each test in the summary report and test report must be evaluated against the expected results in associated test specification(s) to determine whether test passed or failed. The test results should be reproducible, i.e. the same results should be observed under the same conditions.

### 5.2.6 Issuing Certificates/Badges

The O-RAN certificate or badge can be awarded only to DUT (product) representing O-RAN function(s) (node(s)) (such as Near-RT RIC, O-CU-CP, O-CU-UP, O-DU, O-RU, etc.) with O-RAN interface(s) (such as Open Fronthaul, O1, A1, etc.) as defined in O-RAN architecture [3], or to 3GPP function(s) (node(s)) (such as eNB, gNB-CU, gNB-DU, etc.) with O-RAN profiled 3GPP interfaces (such as Xn, F1, etc.). The certification/badging entity issues O-RAN certificate or badge to each individual DUT involved in the certification or badging. In case of O-RAN IOT badge, both DUTs involves in DUT pair are awarded by O-RAN IOT badge with the same certificate/badge reference identifier (see 5.2.6.1). In case of O-RAN E2E badge, all DUTs involved in E2E system (SUT) are awarded by O-RAN E2E badges with the same certificate/badge reference identifier. Assigning the same certificate/badge reference identifier helps to identify which DUTs have been involved in DUT pair for interoperability testing or E2E system for end-to-end testing.

#### 5.2.6.1 Certificate/Badge Reference Identifier

The OTIC manages and assigns own certificate/badge reference identifiers with the following naming convention. The naming convention is common for all O-RAN certificates, O-RAN IOT badges, and O-RAN E2E badges. The certificate/badge reference identifier is unique for each certification or badging testing. The certificate/badge reference identifier is a nine or ten-digit alphanumeric name with the following convention:

*NAMEyy####*

where:

*NAME* is unique 3 or 4 letter OTIC designator

*yy* are the last two digits of the year of issue

*####* is sequential four-digit serial number within the year of issue (start from '0001') assigned individually by each OTIC

### 5.2.7 Compliance Folder

The Compliance Folder represents an electronic collection of all relevant documents for a product submitted for certification/badging. It is the responsibility of the vendor to create and maintain such a Compliance Folder, which must be kept for a period of no less than six years and must be available for sharing under the definition of described in Section 5.2.8. The Compliance Folder contents shall contain the certification and badging report template. It is recommended that the vendor collects and stores all relevant information in such a Compliance Folder.

The vendor appoints a person responsible within the vendor's organization for all matters related to the submission, execution, and maintenance of the product's certification. Vendor shall provide evidence that a Quality Management System (QMS), i.e., ISO9001 or equivalent recognized standard, is followed. The compliance folder shall be uniquely identified, included in the vendor's document control system.

To further clarify, in the case of IOT or End-to-end badging process, where multiple vendors would participate in the tests, it is recommended each vendor create and maintain its own Compliance Folder independently with information relevant to its own products, subsystems or interfaces involved in such tests. Even though it is possible that some information stored is redundant, the independently maintained Compliance Folder by each vendor involved in the tests is necessary in the case there is need to resolve data or result conflict or dispute.

### 5.2.8 Storing and Sharing of Summary Reports, Test reports and Measurement Results

The O-RAN public website keeps a catalogue with basic (non-sensitive) information (such as Certificate/Badge ID, Date of issued certificate/badge, Vendor name, OTIC name) about all issued O-RAN certificates and badges from all OTICs. This centralized catalogue has unrestricted access and is available to all O-RAN as well as non-O-RAN entities. Each individual OTIC shall promptly report to O-RAN Office the basic information needed for the O-RAN catalogue for any newly issued O-RAN certificate or badge. The information reported by OTICs is subject to the review and approval by O-RAN Office before publication.

The summary reports and test reports associated with the O-RAN certificate or badge shall be securely stored by the individual OTICs issuing the O-RAN certificate or badge. The detailed measurement results shall be stored either by vendor(s) (in case the measurement results are captured by vendor(s) from its DUT(s)) or by OTIC (in case the measurement results are captured by OTIC from its test and measurement equipment and tools) participating in the certification or badging testing.

Since O-RAN certificates and badges can only be issued by OTIC, the test results sharing principles defined for OTIC [1] need to be followed. On request, the OTIC shall share the summary reports and test reports (associated with O-RAN certificates and badges issued by the OTIC) only with O-RAN members (i.e. mobile network operators) and O-RAN Office. The OTIC shall not share the summary reports and test reports (associated with O-RAN certificates and badges issued by the OTIC) with other O-RAN entities (i.e. O-RAN contributors and academic contributors) as well as non-ORAN entities without the written permission of all copyright holders (i.e. the OTIC and all vendors participated in the certification or badging testing). The detailed measurement results may be shared at the discretion of either vendor(s) (the measurement results stored by vendor(s)) or OTIC (the measurement results stored by OTIC).

All sharing requests for the summary reports, test reports and measurement results should be directed to the OTIC that issued the O-RAN certificate or badge. In case of sharing request for measurement results, the OTIC forwards the request to participated vendor(s).

### 5.2.9 SH/HW changes to certified/badged devices

When SW/HW changes are made to a DUT/SUT, certification/badging for the previous versions of that DUT/SUT may not necessarily hold. On the other hand, a SW/HW change may also have nothing to do with interfaces which were the subject of previous certification/badging. Vendors should judge and self-declare when a redo of certification/badging is necessary with SW/HW changes.

### 5.2.10 Multi-vendor Scenario

The products under the O-RAN certification and badging process could present the following two multi-vendor scenarios:

* multi-vendor DUT: a single product with multiple internal SW/HW components (e.g. OS, HW, network cards, accelerator cards) from various vendors
* multi-vendor SUT: a combination of multiple DUTs (products) from same vendor or different vendors, where individual DUT (product) can be also multi-vendor DUT

**In general, regardless of single vendor or multi-vendor DUT or SUT described above, O-RAN certificate or badge can be awarded only to DUT (product) representing O-RAN function(s) (node(s)) with O-RAN interface(s) or 3GPP function(s) (node(s)) with O-RAN profiled 3GPP interface(s) (see 5.2.6).**

**For the awarding of O-RAN certificates and badges in multi-vendor scenario, the following guidelines shall be observed**:

* **In the case of multi-vendor DUT described above, the single DUT (product) may be awarded the O-RAN certificate or badge although its internal SW/HW components could come from various vendors.**
* **In the case of multi-vendor SUT described above, all single or multi-vendor DUTs included in the end-to-end system (SUT) or interoperability DUT pair may be awarded the O-RAN badges.**

Underlying certification/badging entity and involved product vendors shall record the information about all involved products and products' components in the final summary and test report defined by O-RAN certification and badging process.

## 5.3 Defined and Available O-RAN Certificates and Badges

Based on the current availability of Conformance/Interoperability/End-to-end test specifications from all O-RAN WGs/FGs, the O-RAN certificates and badges have been defined for the following combinations of Interface Under Test and Device Under Test and are ready for issuance under this release. More O-RAN certificates and badges will be defined for issuance in future releases when the corresponding test specifications become available. Note that the "RAT (Radio Access Technology) under test" is a RAT (5G NR or/and 4G LTE) which is supported by Device under test, and which has been also applied within the testing.

* Certificates (Conformance)

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Interface Under Test** | **Device Under Test** | **RAT Under Test** | **Notes** |
| Open Fronthaul (OpenFH) | O-RU | 4G LTE or/and 5G NR |  |
| Open Fronthaul (OpenFH) | O-DU | 4G LTE or/and 5G NR |  |
| Open Fronthaul (OpenFH) | O-DU/O-CU | 4G LTE or/and 5G NR | Combined O-DU and O-CU [3] |

</div>

* IOT Badges

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Interface Under Test** | **Device Under Test** | **RAT Under Test** | **Notes** |
| Open Fronthaul (OpenFH) | O-RU | 4G LTE or/and 5G NR |  |
| Open Fronthaul (OpenFH) | O-DU | 4G LTE or/and 5G NR |  |
| Open Fronthaul (OpenFH) | O-DU/O-CU | 4G LTE or/and 5G NR | Combined O-DU and O-CU [3] |
| X2 | eNB | 4G LTE | 3GPP compliant node |
| X2 | en-gNB | 5G NR | 3GPP compliant node [6] |
| F1 | gNB-CU | 5G NR | 3GPP compliant node [5] |
| F1 | gNB-DU | 5G NR | 3GPP compliant node [5] |
| Xn | gNB | 5G NR | 3GPP compliant node [4] |

</div>

* E2E Badges

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Interface Under Test** | **Device Under Test** | **RAT Under Test** | **Notes** |
| Not Applicable | O-RU | 4G LTE or/and 5G NR |  |
| Not Applicable | O-DU | 4G LTE or/and 5G NR |  |
| Not Applicable | O-CU | 4G LTE or/and 5G NR |  |
| Not Applicable | O-RU/O-DU | 4G LTE or/and 5G NR | Combined O-RU and O-DU [3] |
| Not Applicable | O-DU/O-CU | 4G LTE or/and 5G NR | Combined O-DU and O-CU [3] |
| Not Applicable | O-RU/O-DU/O-CU | 4G LTE or/and 5G NR | Combined O-RU, O-DU and O-CU [3] |

</div>

# 6. O-RAN Certificate Procedures

This section provides the procedures for verification of compliance of O-RAN interface implementations with O-RAN defined interface specifications resulting in the award of O-RAN certificate.

## 6.1 Subsystems and Interfaces

The O-RAN conformance test specifications have been defined for the following combinations of O-RAN specified interface and subsystem (device under test), and these combinations can be awarded an O-RAN certificate. The Table 6.1-1 will be updated following publication of new O-RAN conformance test specifications, and as soon as new combinations of interfaces and subsystems can be awarded an O-RAN certificate.

Table 6.1-1: The combinations of interface and subsystem (device under test) which can be awarded by O-RAN certificate, incl. the applicable test specifications

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Interface** | **Subsystem (DUT)** | **Applicable test specification(s)** | **O-RAN WG/FG owning test specification** |
| O-RAN Open Fronthaul incl. CUSM-planes | O-RU | Open Fronthaul conformance test specification (O-RAN.WG4.CONF) | O-RAN WG4 |
| O-RAN Open Fronthaul incl. CUSM-planes | O-DU | Open Fronthaul conformance test specification (O-RAN.WG4.CONF) | O-RAN WG4 |
| O-RAN Open Fronthaul incl. CUSM-planes | O-DU/O-CU | Open Fronthaul conformance test specification (O-RAN.WG4.CONF) | O-RAN WG4 |

</div>

If needed, the following sections provide details on each combination mentioned in Table 6.1-1.

## 6.2 O-RAN Open Fronthaul interface of O-RU

All tests for validation of conformance of O-RAN specified Open Fronthaul interface of O-RU against relevant O-RAN technical specification are specified in the O-RAN "Open Fronthaul conformance test specification" (O RAN.WG4.CONF). Tests that are mandatory are for those functionalities of the O-RU that by specification are required to be supported. Optional functionality in an O-RU implies that the corresponding tests are conditionally mandatory and are mandatory only if the O-RU supports the optional functionality. **All M-plane and S-plane tests marked as mandatory (M), and all applicable M-plane and S-plane tests marked as conditional mandatory (CM) shall be passed for issuing of the O-RAN certificate. For the selected test scenario, all UC-plane tests marked as mandatory, and all applicable UC-plane tests marked as conditional mandatory shall be passed for issuing of the O-RAN certificate.** The user/tester identifies all conditionally mandatory tests based on the optional functionalities that the O-RU declares as supported. The user/tester also selects one applicable test scenario that can be executed for UC-plane tests. The tests marked as optional (O) or other unmarked tests from the test specification or any tests from other sources (e.g. 3GPP specifications) can be executed, and test results may be added to summary report and test report, but passing of these tests is not required for issuing of the specific O-RAN certificate.

For the purpose of O-RAN Certificate, all the information and data from the testing shall be collected in the summary report (tab "Certificate O-RU OpenFH") and test report.

## 6.3 O-RAN Open Fronthaul interface of O-DU

All tests for validation of conformance of O-RAN specified Open Fronthaul interface of stand-alone O-DU (or combined O-DU/O-CU) against relevant O-RAN technical specification are specified in the O-RAN "Open Fronthaul conformance test specification" (O RAN.WG4.CONF). Tests that are mandatory are for those functionalities of the O-DU that by specification are required to be supported. Optional functionality in an O-DU implies that the corresponding tests are conditionally mandatory and are mandatory only if the O-DU supports the optional functionality. **All tests marked as mandatory (M) and all applicable tests marked as conditional mandatory (CM) shall be passed for issuing of O RAN certificate.** The user/tester identifies all conditionally mandatory tests based on the optional functionalities that the O-DU declares as supported. The tests marked as optional (O) or other unmarked tests from the test specification or any tests from other sources (e.g. 3GPP specifications) can be executed, and test results may be added to summary report and test report, but passing of these tests is not required for issuing of the specific O-RAN certificate.

For the purpose of O-RAN certificate, all the information and data from the testing shall be collected in the summary report (tab "Certificate O-DU OpenFH") and test report.

# 7. O-RAN IOT Badge Procedures

This section provides the procedures for validation of interoperability (IOT) of subsystems utilizing O-RAN specified or profiled open interfaces resulting in the award of O-RAN IOT badge.

## 7.1 Subsystems and Interfaces

The O-RAN interoperability test specifications have been defined for the following combinations of O-RAN specified interface and subsystems (device under test), and these combinations can be awarded an O-RAN IOT Badge. The Table 7.1-1 will be updated following publication of new O-RAN interoperability test specifications, and as soon as new combinations of interfaces and subsystems can be awarded an O-RAN IOT Badge.

Table 7.1-1 The combinations of interface and subsystems (devices under tests) which can be awarded by O-RAN IOT Badge, incl. the applicable test specifications

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Interface** | **Subsystems (DUT pair)** | **Applicable test specification(s)** | **O-RAN WG/FG owning test specification** |
| O-RAN Open Fronthaul | O-RU, O-DU | Fronthaul Interoperability Test Specification (IOT) (O-RAN.WG4.IOT) | O-RAN WG4 |
| O-RAN Open Fronthaul | O-RU, O-DU/O-CU | Fronthaul Interoperability Test Specification (IOT) (O-RAN.WG4.IOT) | O-RAN WG4 |
| X2 | eNB, en-gNB | Interoperability Test Specification (IOT) (O-RAN.WG5.IOT) | O-RAN WG5 |
| F1 | gNB-CU, gNB-DU | Interoperability Test Specification (IOT) (O-RAN.WG5.IOT) | O-RAN WG5 |
| Xn | gNB, gNB | Interoperability Test Specification (IOT) (O-RAN.WG5.IOT) | O-RAN WG5 |

</div>

If needed, the following sections provide details on each combination mentioned in Table 7.1-1.

## 7.2 O-RAN Open Fronthaul interface

All tests for validation of interoperability between O-RU and stand-alone O-DU (or combined O-DU/O-CU) utilizing O-RAN Open fronthaul interface are specified in the O-RAN "Fronthaul Interoperability Test Specification (IOT)" (O-RAN.WG4.IOT). **All tests marked as mandatory (M) and all applicable tests marked as conditional mandatory (CM) shall be passed for issuing of O-RAN IOT badge.** The optional tests or other unmarked tests from the test specification or any tests from other sources (e.g. 3GPP specifications) can be executed, and test results may be added to summary report and test report, but passing of these tests is not required for issuing of the specific O-RAN IOT badge.

The Fronthaul Interoperability Test Specification (IOT) (O-RAN.WG4.IOT) defines Interoperability Test (IOT) Profiles with associated IOT Profile Test Configurations. For the purpose of O-RAN IOT badge, both O-RU and O-DU (or combined O-DU/O-CU) need to agree and use at least one common IOT Profile Test Configuration or Customized IOT Configuration in order to verify the interoperability. For the purpose of O-RAN IOT Badge, the participating vendors can choose one or both of the following options:

* **Option 1: selection of IOT Profile Test Configuration(s) listed in the Fronthaul Interoperability Test Specification (IOT) (O-RAN.WG4.IOT). The name(s) of used IOT Profile Test Configuration shall be mentioned in the summary report (tab "IOT Badge OpenFH").**
* **Option 2: creation of Customized IOT Configuration(s). The Customized IOT Configuration(s) (incl. the values of all required system parameters) shall be included in the summary report (tab "OpenFH Customized IOT Conf."). In case of multiple Customized IOT Configurations, individual column shall be created for each Customized IOT configuration. The name(s) of used Customized IOT Configuration shall be mentioned in the summary report (tab "IOT Badge OpenFH").**

For the purpose of O-RAN IOT Badge, all the information and data from the testing shall be collected in the summary report (tab "IOT Badge OpenFH") and test report.

## 7.3 X2 interface

All tests for validation of interoperability between subsystems (DUT pairs listed in Table 7.1-1) utilizing X2 interface are specified in the O-RAN "Interoperability Test Specification (IOT)" (O-RAN.WG5.IOT). Based on the supported capabilities, functionalities, and features of Devices under Test (DUTs), the user/tester needs to identify all applicable X2 C-plane and X2 U-plane IOT tests from this test specification. **All applicable X2 C-plane and U-plane IOT tests shall be passed for issuing of O RAN IOT badge.**

For the purpose of O-RAN IOT Badge, all the information and data from the testing shall be collected in the summary report (tab "IOT Badge X2") and test report.

## 7.4 F1 interface

All tests for validation of interoperability between subsystems (DUT pairs listed in Table 7.1-1) utilizing F1 interface are specified in the O-RAN "Interoperability Test Specification (IOT)" (O-RAN.WG5.IOT). Based on the supported capabilities, functionalities, and features of Devices under Test (DUTs), the user/tester needs to identify all applicable F1 IOT tests from this test specification. **All applicable F1 IOT tests shall be passed for issuing of O-RAN IOT badge.**

For the purpose of O-RAN IOT Badge, all the information and data from the testing shall be collected in the summary report (tab "IOT Badge F1") and test report.

## 7.5 Xn interface

All tests for validation of interoperability between subsystems (DUT pairs listed in Table 7.1-1) utilizing Xn interface are specified in the O-RAN "Interoperability Test Specification (IOT)" (O-RAN.WG5.IOT). Based on the supported capabilities, functionalities, and features of Devices under Test (DUTs), the user/tester needs to identify all applicable Xn IOT tests from this test specification. **All applicable Xn IOT tests shall be passed for issuing of O-RAN IOT badge.**

For the purpose of O-RAN IOT Badge, all the information and data from the testing shall be collected in the summary report (tab "IOT Badge Xn") and test report.

# 8. O-RAN E2E Badge Procedures

This section provides the procedures for validation of end-to-end functionality and security of end-to-end systems or subsystems utilizing O-RAN specified or profiled open interfaces resulting in the award of O-RAN E2E badge.

All tests for validation of end-to-end functionality are specified in O-RAN End-to-end Test Specification (O-RAN.TIFG.E2E-Test) and for end-to-end security in O-RAN Security Test Specifications (O-RAN.WG11. SecTestSpecs). **All applicable functional tests and "3GPP Security Assurance Specification (SCAS)" tests shall be passed for issuing of O-RAN E2E badge**. The applicability of tests depends on the supported capabilities, functionalities, and features of Device(s) under test/System under test. The other tests from the test specification or any tests from other sources (e.g. 3GPP specifications) can be executed, and test results may be added to summary report and test report, but passing of these tests is not required for issuing of the specific O-RAN E2E badge.

For the purpose of O-RAN E2E badge, the participating vendor(s) can choose one of the following scenarios:

* **Validation of E2E functionality and security of single or multiple Device(s) under test (DUTs) as a part of E2E reference test setup (subsystem replacement testing)**
* **Validation of E2E functionality and security of the entire E2E test setup as System under test (SUT)**

For the purpose of O-RAN E2E Badge, all the information and data from the testing shall be collected in the summary report (tab "E2E Badge") and test report.

# Annex A - Certification application

Certification application should at least include the following information:

* Company
* Contact Name
* Contact e-mail
* Contact Address
* Contact Phone
* Product Name/Model
* Product Software/Firmware Version
* Product Description
* Date of Submission
* Date of expected start of testing
* Preferred OTIC
* Sub-system Type

If the product uses certified building blocks or wishes to reuse results from an already certified/tested product, provide a description of the sub-assembly/building block and identify the source certified/tested product(s). Include any potential differences, changes or other factors that may impact the definition of needed regression testing.

# Annex B - Compliance folder

Compliance folder should at least include the following information:

* Index of contents
* Completed ICS with test execution information
* Model/type numbers
* Brand name
* Manufacturer detail
* Technical description including a block diagram, circuit diagram
* Details of significant design aspects (features, specifications, installation measures, control of variants and manufacturing)
* Variant description (as applicable)
* Software version(s) / SVN
* Reference to versions of O-RAN ALLIANCE Certification Criteria used
* User, installation, or special instructions
* Test data
* Internal and the third party test reports
* Products tested for interoperability
* Details of changes in hardware and/or software configuration together with evidence of continued compliance
* Evidence that the device has been developed and tested according to the Quality Management Program requirements
* A copy of the Certification Declaration

# Revision history

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Date | Revision | Description |
| 2021.03.05 | 01.00 | First published version |
| 2021.07.09 | 02.00 | 1. Clarification of certification/badging objectives in Chapter 4 & test result sharing in Chapter 5 2. Alignment with the updated Conformance and IOT specs from WG4 and WG5 in Chapter 6 & 7 3. Inclusion of custom IOT profile in the badging process in Chapter 7 4. Making security test mandatory in E2E badging process in Chapter 8 5. Alignment with the updated E2E Test Spec by adding load & stress test and additional service tests |
| 2021.11.10 | 03.00 | 1. Clarification in Chapter 4 on what entity can issue certificates and badges with O-RAN logos 2. Removing the sharing mechanism in Chapter 5 related to self-certification by vendors, individual operators, and 3rd party testing houses/labs 3. Adding in Chapter 5 the requirement on universal machine-readable format in test data sharing 4. Making test case 4.2.4.6 in Chapter 7 mandatory 5. Modifying the wording in Section 7.2.1 to be more concise and refer to Fronthaul IOT test specification clearly 6. Revising Figure 5.2-1 and Table 6.2-1 to sync up with the latest reference documents 7. In the companion test report template, making the following changes  * Adding tab for O-DU Conformance * Adding new test cases defined in WG4 CONF v04.00 to "FH O-RU Conformance" tab * Editorial corrections throughout the "FH O-RU Conformance" tab |
| 2022.03.22 | 04.00 | 1. Adding section 5.3 on available certificates and badges to be issued under this release 2. Adding section 5.1.4 on the composition of O-RAN certificates and badges; Revising section 5.2.8.2 and 5.2.8.4 on test result sharing location and format; Revising the Certificate/Badge reference identifier 3. Revising section 5.2.5 and 5.2.6 on verifying test results and issuing certificates/badges; Revising section 4.3.2 to clarify what equipment can be awarded O-RAN certificate/badges 4. Revising section 6.4.2 to exclude LTE tests in various scenarios when O-RU does not support LTE 5. Many corrections and clean-ups in FH O-RU Conformance Tab inside the companion test report template 6. Many IOT updates in Chapter 7 to align with Nov-2021 WG test specifications 7. Adding all corresponding new test cases in various IOT TABs inside the companion test report template 8. Automating reference version updates inside the companion test report template by adding a "References" tab to list all documents that are referenced on other tabs |
| 2022.07.27 | 05.00 | 1. Decoupling of O-RAN certification and badging processes and procedures from definition of tests in WG/FG test specifications - chapters 6, 7 and 8 2. Revising section 5.2.8.2 to provide further clarifications on centralized O-RAN web catalogue for issued O-RAN certificates and badges |
| 2022.11.10 | 06.00 | 1. Adding Summary report (O-RAN Certificate and Badge Summary Report) and Test report (O-RAN Certificate and Badge Test Report), and updating whole document with these new terms 2. Updating section "7.2 O-RAN Open Fronthaul interface between O-RU and O-DU" with the terminology used in the latest version of O-RAN.WG4.IOT. 3. Adding section "5.2.10 Multi-vendor Scenario" introducing multi-vendor scenario to O-RAN certification and badging processes |
| 2023.03.24 | 07.00 | 1. Clarification of available certificates and badges (Chapters 5.3, 6, 7, 8) 2. Adding subsystem combined O-DU/O-CU to OpenFH 3. Clarification of the tests which need to be passed (conducted) - Chapters 6, 7, 8 4. Updated process in Chapter 5.2    * Clarification of issuing of certificates and badges    * Updated processes for storing and sharing of summary report, test reports and measurement results. |
| 2023.11.09 | 08.00 | 1. Removing references not quoted 2. Clarification on the relocation of end-to-end security test cases to WG11 Security Test Specification |
| 2024.03.22 | 09.00 | 1. Clarification on F1/Xn IOT badge by including both user-plane and control-plane test cases based on the latest updates in O-RAN.WG5.IOT 2. Clarification on OpenFH IOT badge based on the latest updates in O-RAN.WG4.IOT related to new assigned status (M/CM/O) for S-plane IOT test cases |
| 2024.07.18 | 10.00 | 1. Updated requirements on the summary and test reports to improve confidentiality - the reports shall be encrypted and digitally signed. 2. To ensure reusability and machine-readability of summary report, the unified file format (.xls/.xlsx) shall be used. |

</div>

# History

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Date | Revision | Description |
| 2024.03.22 | 09.00 | Published as Final version 09.00 |
| 2023.11.09 | 08.00 | Published as Final version 08.00 |
| 2023.03.24 | 07.00 | Published as Final version 07.00 |
| 2022.11.10 | 06.00 | Published as Final version 06.00 |
| 2022.07.27 | 05.00 | Published as Final version 05.00 |
| 2022.03.22 | 04.00 | Published as Final version 04.00 |
| 2021.11.10 | 03.00 | Published as Final version 03.00 |
| 2021.07.09 | 02.00 | Published as Final version 02.00 |
| 2021.03.05 | 01.00 | Published as Final version 01.00 |

</div>
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.TIFG.Cert-Badge.0-R004-v10.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.TIFG.Cert-Badge.0-R004-v10.00.docx).

---

* toc
{:toc}
