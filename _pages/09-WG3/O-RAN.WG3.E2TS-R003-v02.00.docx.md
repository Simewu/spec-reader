---
title: O-RAN.WG3.E2TS-R003-v02.00.docx.md
author: O-RAN Alliance, WG3
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG3.E2TS-R003-v02.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG3.E2TS-R003-v02.00.docx).

---

* toc
{:toc}

---

![webwxgetmsgimg (7).jpeg]({{site.baseurl}}/assets/images/bea03973c631.jpg) O-RAN.WG3.E2TS-R003-v02.00

\

Technical Specification

Copyright (C) 2023 by the O-RAN ALLIANCE e.V.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany

O-RAN Work Group 3

E2 Interface Test Specification

Contents

Foreword 6

Modal verbs terminology 6

1 Scope 6

2 References 6

2.1 Normative references 6

2.2 Informative references 7

3 Definitions of terms, symbols and and Abbreviations 7

3.1 Terms 7

3.2 Symbols 7

3.3 Abbreviations 7

4 Test methodology 9

4.1 General 9

4.2 Conformance testing Near-RT RIC 9

4.2.1 General 9

4.2.2 Test configuration 9

4.2.2.1 Device Under Test (Near-RT RIC) 10

4.2.2.2 Testing Tools 10

4.3 Conformance testing E2 Nodes 10

4.3.1 General 10

4.3.2 Test configuration 10

4.3.2.1 Device Under Test (E2 Node) 11

4.3.2.2 Testing Tools 12

4.4 Interoperability Testing between Near-RT RIC and E2 Node 12

4.4.1 General 12

4.4.2 Test configuration 12

4.4.2.1 System Under Test (Near-RT RIC and E2 Node) 13

4.4.2.2 Testing Tools 14

5 Test Cases for Near-RT RIC 14

5.1 General 14

5.2 Conformance Test Cases 14

5.2.1 E2AP Global Procedures 14

5.2.1.1 Test Cases for E2 Setup 14

5.2.1.1.1 E2 Setup (positive case) 14

5.2.1.2 Test Cases for RESET procedure 15

5.2.1.2.1 Reset procedure (initiated by E2 Node) (positive case) 15

5.2.1.2.2 Reset procedure (initiated by Near-RT RIC) (positive case) 16

5.2.1.3 Test Cases for Error Indication 17

5.2.1.3.1 Error Indication procedure 17

5.2.1.4 Test Cases for RIC Service Update procedure 19

5.2.1.4.1 RIC Service Update procedure with RAN Function modified (positive case) 19

5.2.1.4.2 RIC Service Update procedure with RAN Function deleted (positive case) 20

5.2.1.4.3 RIC Service Update procedure with RAN Function added (positive case) 21

5.2.1.5 Test Cases for E2 Node Configuration Update procedure 22

5.2.1.5.1 E2 Node Configuration Update procedure with E2 Node configuration added (positive) 22

5.2.1.5.2 E2 Node Configuration Update procedure with E2 Node configuration updated (positive) 24

5.2.1.5.3 E2 Node Configuration Update procedure with E2 Node configuration removed (positive) 25

5.2.1.6 Test Cases for E2 Connection Update procedure 27

5.2.1.6.1 E2 Connection Update procedure with TNL Association added (positive case) 27

5.2.1.7 Test Cases for E2 Removal procedure 28

5.2.1.7.1 E2 Removal procedure initiated by E2 Node (positive case) 28

5.2.1.7.2 E2 Removal procedure initiated by Near-RT RIC (positive case) 29

5.2.2 E2AP Functional Procedures 30

5.2.2.1 Test Cases for RIC Subscription procedure 30

5.2.2.1.1 RIC Subscription procedure for single RIC action (positive) 30

5.2.2.2 Test Cases for RIC Subscription Delete 32

5.2.2.2.1 RIC Subscription Delete procedure (positive) 32

5.2.2.3 Test Cases for RIC Subscription Delete Required procedure 34

5.2.2.3.1 RIC Subscription Delete Required procedure (positive) 34

5.2.2.4 Test Cases for RIC Indication procedure 35

5.2.2.4.1 RIC Indication procedure for REPORT Service (positive) 35

5.2.2.5 Test Cases for RIC Control procedure 36

5.2.2.5.1 RIC Control procedure for CONTROL Service (positive) 36

5.2.3 E2AP Functional Procedures for E2SM-KPM 38

5.2.3.1 Test Cases for RIC Subscription E2SM-KPM 38

5.2.3.1.1 RIC Subscription procedure with REPORT Service Style 1, Single Action Format Type 1 (positive) 38

5.2.3.1.2 RIC Subscription procedure with REPORT Service Style 2, Single Action Format Type 2 (positive) 40

5.2.3.1.3 RIC Subscription procedure with REPORT Service Style 1, Single Action Format Type 1 (negative) 41

5.2.3.1.4 RIC Subscription procedure with REPORT Service Style 2, Single Action Format Type 2 (negative) 43

5.2.3.1.5 RIC Subscription procedure with REPORT Service Style 1, Single Action Format Type 1 for multiple measurements (positive) 45

5.2.3.1.6 RIC Subscription procedure with REPORT Service Style 2, Single Action Format Type 2 for multiple measurements (positive) 48

5.2.3.1.7 RIC Indication procedure for REPORT Service style 1 for multiple measurements (positive) 50

5.2.3.1.8 RIC Indication procedure for REPORT Service style 2 for multiple measurements (positive) 52

5.2.3.2 Test Cases for RIC Indication E2SM-KPM 54

5.2.3.2.1 RIC Indication procedure with REPORT Service style 1 (positive) 54

5.2.3.2.2 RIC Indication procedure for REPORT Service style 2 (positive) 55

5.2.4 E2AP Functional Procedures for E2SM-RC 57

5.2.5 E2AP Functional Procedures for E2SM-NI 57

5.2.5.1 Test Cases for RIC Subscription E2SM-NI 57

5.2.5.1.1 RIC Subscription for RIC REPORT Style 1, Single Action, RIC Event Trigger 1 (positive case) 57

6 Test Cases for E2 Nodes 59

6.1 General 59

6.2 Conformance Test Cases 59

6.2.1 E2AP Global Procedures 59

6.2.1.1 Test Cases for E2 Setup procedure 59

6.2.1.1.1 E2 Setup 59

6.2.1.2 Test Cases for RESET procedure 60

6.2.1.2.1 Reset procedure (initiated by Near-RT RIC) (positive case) 60

6.2.1.2.2 Reset procedure (initiated by E2 Node) (positive case) 61

6.2.1.3 Test Cases for Error Indication 62

6.2.1.3.1 Error Indication procedure (Transfer Syntax Error) 62

6.2.1.4 Test Cases for RIC Service Update procedure 64

6.2.1.4.1 RIC Service Update procedure with empty RIC SERVICE QUERY message (positive case) 64

6.2.1.4.2 RIC Service Update procedure with RIC SERVICE QUERY message provided list of Accepted RAN functions (positive case) 65

6.2.1.5 Test Cases for E2 Node Configuration Update procedure 67

6.2.1.5.1 E2 Node Configuration Update procedure after a Near-RT RIC initiated addition of a new TNL association (positive case) 67

6.2.1.5.2 E2 Node Configuration Update procedure for E2 Node initiated TNL association removal (positive case) 68

6.2.1.6 Test Cases for E2 Connection Update procedure 70

6.2.1.6.1 E2 Connection Update procedure for adding additional TNL Association (positive case) 70

6.2.1.7 Test Cases for E2 Removal Procedure 71

6.2.1.7.1 E2 Removal procedure initiated by E2 Node (positive case) 71

6.2.1.7.2 E2 Removal procedure initiated by Near-RT RIC (positive case) 72

6.2.2 E2AP Functional Procedures 74

6.2.2.1 Test Cases for RIC Subscription procedure 74

6.2.2.1.1 RIC Subscription procedure for single RIC action (positive) 74

6.2.2.2 Test Cases for RIC Subscription Delete procedure 76

6.2.2.2.1 RIC Subscription Delete procedure (positive) 76

6.2.2.2.2 RIC Subscription Delete Request procedure (Negative)-RIC Request ID unknown. 77

6.2.2.2.3 RIC Subscription Delete procedure (Negative)-RAN Function ID invalid. 79

6.2.2.3 Test Cases for RIC Subscription Delete Required procedure 80

6.2.2.3.1 RIC Subscription Delete Required procedure (positive) 80

6.2.2.4 Test Cases for RIC Indication procedure 81

6.2.2.4.1 RIC Indication procedure for REPORT Service (positive) 81

6.2.2.5 Test Cases for RIC Control procedure 83

6.2.2.5.1 RIC Control procedure for CONTROL Service (positive) 83

6.2.3 E2AP Functional Procedures for E2SM-KPM 85

6.2.4 E2AP Functional Procedures for E2SM-RC 85

6.2.5 E2AP Functional Procedures for E2SM-NI 85

7 Test Cases for Interoperability between Near-RT RIC and E2 Node 85

7.1 General 85

7.1.1 Protocol Analyzer and TAP Interface 85

7.2 Interoperability Test Cases 85

7.2.1 Test Cases for E2AP Global Procedures 85

7.2.1.1 Near-RT RIC Support procedures 85

7.2.1.1.1 Test Purpose 85

7.2.1.1.2 Test Entrance Criteria 85

7.2.1.1.3 Test Methodology 86

7.2.2 Test Cases for E2AP Functional Procedures for E2SM-KPM 88

7.2.2.1 Tests cases for RIC REPORT Service Styles procedures E2SM-KPM 88

7.2.2.1.1 RIC Subscription and RIC Indication procedures with REPORT Service Style 1, Single Action Format Type 1, Indication Message Format Type 1 88

7.2.2.1.2 RIC Subscription and RIC Indication procedures with REPORT Service Style 2, Single Action Format Type 2, Indication Message Format Type 1 90

7.2.2.1.3 RIC Subscription and RIC Indication procedures with REPORT Service Style 3, Single Action Format Type 3, Indication Message Format Type 2 92

7.2.2.2 Tests cases for RIC INSERT Service Styles procedures E2SM-KPM 95

7.2.2.3 Tests cases for RIC CONTROL Service Styles procedures E2SM-KPM 95

7.2.2.4 Tests cases for RIC POLICY Service Styles procedures E2SM-KPM 95

7.2.2.5 Tests cases for RIC Subscription Delete procedures E2SM-KPM 95

7.2.2.5.1 RIC Subscription Delete procedure with RIC Event Trigger Style 1 95

7.2.3 Test Cases for E2AP Functional Procedures for E2SM-RC 97

7.2.4 Test Cases for E2AP Functional Procedures for E2SM-NI 97

Revision history 98

History 101

# Foreword

This Technical Specification (TS) has been produced by O-RAN Alliance.

# Modal verbs terminology

In the present document "**shall**", "**shall not**", "**should**", "**should not**", "**may**", "**need not**", "**will**", "**will not**", "**can**" and "**cannot**" are to be interpreted as described in clause 3.2 of the O-RAN Drafting Rules (Verbal forms for the expression of provisions).

"**must**" and "**must not**" are **NOT** allowed in O-RAN deliverables except when used in direct citation.

# Scope

The contents of the present document are subject to continuing work within O-RAN and may change following formal O-RAN approval. Should the O-RAN Alliance modify the contents of the present document, it will be re-released by O-RAN with an identifying change of version date and an increase in version number as follows:

version xx.yy.zz

where:

xx: the first digit-group is incremented for all changes of substance, i.e. technical enhancements, corrections, updates, etc. (the initial approved document will have xx=01). Always 2 digits with leading zero if needed.

yy: the second digit-group is incremented when editorial only changes have been incorporated in the document. Always 2 digits with leading zero if needed.

zz: the third digit-group included only in working versions of the document indicating incremental changes during the editing process. External versions never include the third digit-group. Always 2 digits with leading zero if needed.

The present document specifies test configurations and test cases for E2 interface testing including conformance testing of the Near- RT RIC over E2 interface, conformance testing of the E2 Nodes over E2 interface and interoperability testing with Near-RT RIC and E2 Nodes over E2 interface.

# References

## Normative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long term validity.

The following referenced documents are necessary for the application of the present document.

[1] O-RAN.WG3.E2GAP-v02.00: "O-RAN Working Group 3 Near-Real-time RAN Intelligent Controller, E2 General Aspects and Principles".

[2] O-RAN.WG3.E2AP-v02.00: "O-RAN Working Group 3, Near-Real-time RAN Intelligent Controller, E2 Application Protocol (E2AP)".

[3] O-RAN.WG3.E2SM-v02.00: "O-RAN Working Group 3, Near-Real-time RAN Intelligent Controller, ".

[4] O-RAN.WG3.E2SM-NI-v01.00: "ORAN Working Group 3, Near-Real-time RAN Intelligent Controller, E2 Service Model, Network Interface (E2SM-NI)".

[5] O-RAN.WG3.E2SM-KPM-v02.00: "O-RAN Working Group 3, Near-Real-time RAN Intelligent Controller, E2 Service Model, KPI Monitor (E2SM-KPM)".

[6] O-RAN.WG3.E2SM-RC-v01.00: "O-RAN Working Group 3, Near-Real-time RAN Intelligent Controller, E2 Service Model, RAN Control (E2SM-RC)".

[7] O-RAN.WG3.RICARCH-v01.01: "O-RAN Working Group 3, Near-Real-time RAN Intelligent Controller, Near-RT RIC Architecture"

[8] O-RAN.WG1.O-RAN Architecture Description: "O-RAN Architecture Description".

[9] O-RAN.WG1.OAM Architecture: "O-RAN Operations and Maintenance Architecture".

[10] O-RAN.WG3.E2SM-CCC-v01.00: "O-RAN Working Group 3, Near-Real-time RAN Intelligent Controller, E2 Service Model, Cell Configuration and Control (E2SM-CCC)".

## Informative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long term validity.

The following referenced documents are not necessary for the application of the present document but they assist the user with regard to a particular subject area.

[i.1] <Standard Organization acronym> <document number><version number/date of publication>: "<Title>".

# Definitions of terms, symbols and and Abbreviations

## Terms

For the purposes of the present document, the following terms apply:

## Symbols

For the purposes of the present document, the following symbols apply:

## Abbreviations

For the purposes of the present document, the following abbreviations apply.

DUT Device Under Test

Near-RT RIC near-real-time RAN Intelligent Controller

Non-RT RIC non-real-time RAN Intelligent Controller:

O-CU O-RAN Central Unit

O-CU-CP O-RAN Central Unit - Control Plane

O-CU-UP O-RAN Central Unit - User Plane

O-DU O-RAN Distributed Unit

O-RU O-RAN Radio Unit

TNL Transport Network Layer

TNLA TNL association

# Test methodology

## General

## Conformance testing Near-RT RIC

### General

### Test configuration

The test configuration for E2 conformance testing of Near-RT RIC is illustrated in Figure 4.2.2-1 which shows a test setup that employs an E2 Node simulator, O-RU simulator, and UE simulator as a simplification. A test set-up without use of simulations would require inclusion of an O-RU with associated M-Plane support and also a real UE or test UE.

In as much as the conformance testing involves configuring the E2 Nodes and the Near- RT RIC, it shall be performed by means of the O1 interface. Configuration of the E2 Nodes and Near-RT RIC to operate in nominal state via the O1 interface and configuring for policy guidance and enrichment data to the Near-RT RIC via the A1 interface are outside

the scope of this test specification.

![]({{site.baseurl}}/assets/images/30c059288f0c.png)

Figure - Illustration of Near-RT RIC E2 conformance test setup

Although the above test configuration diagrams illustrated Near-RT RIC, O-CU-CP, O-CU-UP, O-DU as separate entities, the E2 Node simulator may support a range of different RAN configurations similar to the list of cases described in "O-RAN.WG1.O-RAN-Architecture-Description" [8], Annex A.4. Examples include:

- Standalone O-CU-CP connected to one or more standalone O-CU-UP and one or more standalone O-DU. Each logical node is considered as an E2 Node that presents an E2 interface to the Near-RT RIC.

- Combined O-CU-CP and O-CU-UP connected to one or more standalone O-DU. The combined O-CU-CP/O-CU-UP may present either a common E2 interface or individual E2 interfaces corresponding to the individual O-RAN components

- Combined O-CU-CP, O-CU-UP and O-DU. The combined node may present either a common E2 interface or individual E2 interfaces corresponding to the individual O-RAN components

In all cases the different RAN components may initiate either independent E2 connections to the Near-RT RIC for each logical O-RAN component or may present a shared E2 interface and hence present the combined RAN components as a common E2 Node supporting services appropriate to more than one logical O-RAN components.The following RAN configurations where the Near-RT RIC are bundled with some or all of the O-RAN nodes as discussed in "O-RAN.WG1.O-RAN-Architecture-Description" [8], Annex A.4, are not addressed in this version of the specification.

* Bundle the Near-RT RIC, O-CU-CP and O-CU-UP
* Bundle the Near-RT RIC, O-CU-CP, O-CU-UP, O-DU and O-RU

#### Device Under Test (Near-RT RIC)

For enabling conformance testing, the Near-RT RIC has implemented the E2 interface, and the procedures specified in "O-RAN WG3: E2 Application Protocol" [2] that are required to perform testing of the applicable test cases. It may also support all or a subset of the E2 service models - E2SM-KPM, E2SM-NI and E2SM-RC as specified in "ORAN WG3: E2SM KPM" [5], "ORAN WG3: E2SM NI" [4] and "ORAN WG3: E2SM RC" [6] respectively.

The DUT, Near-RT RIC, may comply to only a subset of E2 procedures and E2 service models. Therefore, only those testcases that relate to compliance claimed by a DUT are relevant. This is noted on a case-by-case basis in testcases defined in clause 5.2.

#### Testing Tools

The E2 Node simulator simulates the E2 functionalities of the E2 Node side and have flexibility to generate, receive and validate messages for all the E2 global procedures and certain or all of the E2 service models. The test simulator logs all message content during the testing.

The test simulator has all the capabilities needed to operate the E2 test cases, including:

* Generate E2 Node initiated procedures.
* Receive Near-RT RIC initiated procedures.
* Generate responses for either successful or unsuccessful operations with appropriate cause value in case of failure.

The test simulator should support all the RAN configurations discussed in clause 4.2.2, except those excluded in this version of the specification as described above.

The E2 Node simulator may also logically simulate the UE functions from the Near-RT RIC point of view, enabling meaningful cell and UE specific E2 services to run. Only the UE functions sufficient to facilitate the E2 interface focused conformance testing are simulated.

## Conformance testing E2 Nodes

### General

### Test configuration

The test configuration for E2 conformance testing of different types of E2 Nodes are illustrated in Figure 4.3.2-1. The test setup employs a Near-RT RIC simulator, O-RU simulator, Core simulator and UE simulator as a simplification. A test set-up without use of simulations would require inclusion of real equipment. Configuring E2 Nodes to bring it to nominal operating state via the O1 is outside the scope of this test specification.

![]({{site.baseurl}}/assets/images/88354f051156.png)

Figure - Illustration of E2-Node conformance test setup

Although the above test configuration diagrams illustrate O-CU-CP, O-CU-UP, O-DU as separate entities, the E2 Node may support a range of different RAN configurations similar to the list of cases described in "O-RAN.WG1.O-RAN-Architecture-Description" [8], Annex A.4. Examples include:

- Standalone O-CU-CP connected to one or more standalone O-CU-UP and one or more standalone O-DU. Each logical node is considered as an E2 Node that presents an E2 interface to the Near-RT RIC.

- Combined O-CU-CP and O-CU-UP connected to one or more standalone O-DU. The combined O-CU-CP/O-CU-UP may present either a common E2 interface or individual E2 interfaces corresponding to the individual O-RAN components

- Combined O-CU-CP, O-CU-UP and O-DU. The combined node may present either a common E2 interface or individual E2 interfaces corresponding to the individual O-RAN components

In all cases the different RAN components may initiate either independent E2 connections to the Near-RT RIC Simulator for each logical O-RAN component or may present a shared E2 interface and hence present the combined RAN components as a common E2 Node supporting services appropriate to more than one logical O-RAN component.

The following RAN configurations where the Near-RT RIC is bundled with some or all of the O-RAN nodes as discussed in "O-RAN.WG1.O-RAN-Architecture-Description" [8], Annex A.4, are not addressed in this version of the specification.

#### Device Under Test (E2 Node)

The DUT could be of any E2 Node of the following type

* O-CU-CP, O-CU-UP or O-DU
* Combined O-CU-CP, O-CU-UP and O-DU
* Combined O-CU-CP and O-CU-UP
* O-DU
* O-eNB

For conformance testing the E2 Node has E2AP interface and implements procedures specified in "O-RAN WG3: E2 Application Protocol" [2] that are required to perform testing of the applicable test cases. It may support all or a subset of the E2 service models - E2SM-KPM, E2SM-NI and E2SM-RC as specified in "ORAN WG3: E2SM KPM" [5], "ORAN WG3: E2SM NI" [4] and "ORAN WG3: E2SM RC" [6] respectively.

The DUT (E2 Node ) may comply to only a subset of E2AP procedures and E2 service models. Therefore, only those testcases that relate to compliance claimed by a DUT are relevant. This is noted on a case-by-case basis in testcases defined in clause 6.2.

#### Testing Tools

The Near-RT RIC simulator simulates the E2 functionalities of Near-RT RIC and has flexibility to generate, receive and validate messages for all the E2AP procedures and certain or all of the E2 service models. The test simulator logs all message contents during the testing.

The test simulator has all the capabilities needed to operate the E2 test cases, including:

* Generate Near-RT RIC initiated procedures.
* Receive E2 Node initiated procedures.
* Generate responses for either successful or unsuccessful operations with appropriate cause value in case of failure.

The Test simulator (Near-RT RIC) should support all the RAN configurations discussed in clause 4.3.2, except those excluded in this version of the specification as described above.

The test setup has the DUT (E2 Node) connect to other test equipment. These can be real or simulated UEs, RAN elements and Core (EPC or 5GC) to support scenarios appropriate for the E2 functionality being tested. An SMO with O1 interface is also included optionally if the E2 Node or any of real or simulated elements need configuration or operation to function.

## Interoperability Testing between Near-RT RIC and E2 Node

### General

FFS

### Test configuration

The test configuration for interoperability testing between Near-RT RIC and E2 Node(s) is illustrated in figure 4.4.2-1 which shows a test setup that employs a Non-RT RIC simulator, Core Simulator, O-RU simulator, and UE simulator as a simplification. A test set-up without use of simulations would require inclusion of a real O-RU with associated M-Plane support and also a real UE or test UE.

In as much as the interoperability testing involves configuring the Near-RT RIC and the E2 Node, it shall be performed by means of the O1 interface. Configuration of the Near-RT RIC and E2 Node to operate in nominal state via the O1 interface, and configuring for policy guidance and enrichment data to the Near-RT RIC via the A1 interface are outside the scope of this test specification.

![]({{site.baseurl}}/assets/images/0aa9960a7d3a.png)

**Figure 4.4.2-1 Illustration of interoperability between Near-RT RIC and E2 Node test setup**

Although the above test configuration diagrams illustrate O-CU-CP, O-CU-UP, O-DU as separate entities, the E2 Node may support a range of different RAN configurations similar to the list of cases described in "O-RAN.WG1.O-RAN-Architecture-Description" [8], Annex A.4. Examples include:

- Standalone O-CU-CP connected to one or more standalone O-CU-UP and one or more standalone O-DU. Each logical node is considered as an E2 Node that presents an E2 interface to the Near-RT RIC.

- Combined O-CU-CP and O-CU-UP connected to one or more standalone O-DU. The combined O-CU-CP/O-CU-UP may present either a common E2 interface or individual E2 interfaces corresponding to the individual O-RAN components

- Combined O-CU-CP, O-CU-UP and O-DU. The combined node may present either a common E2 interface or individual E2 interfaces corresponding to the individual O-RAN components

In all cases the different RAN components may initiate either independent E2 connections to the Near-RT RIC for each logical O-RAN component or may present a shared E2 interface and hence present the combined RAN components as a common E2 Node supporting services appropriate to more than one logical O-RAN component.

The following RAN configurations where the Near-RT RIC is bundled with some or all of the O-RAN nodes as discussed in "O-RAN.WG1.O-RAN-Architecture-Description" [8], Annex A.4, are not addressed in this version of the specification.

#### System Under Test (Near-RT RIC and E2 Node)

The System Under Test (SUT) consist of Near-RT RIC and E2 Node.
The E2 Node can be of any of the following type:

* O-CU-CP, O-CU-UP or O-DU
* Combined O-CU-CP, O-CU-UP and O-DU
* Combined O-CU-CP and O-CU-UP
* O-DU
* O-eNB

For enabling interoperability testing, the Near-RT RIC and E2 Node have implemented the E2 interface, and the procedures specified in "O-RAN WG3: E2 Application Protocol" [2] that are required to perform testing of the applicable test cases. They may also support all or a subset of the E2 service models - E2SM-KPM, E2SM-NI and E2SM-RC as specified in "ORAN WG3: E2SM KPM" [5], "ORAN WG3: E2SM NI" [4], "ORAN WG3: E2SM RC" [6] and "ORAN WG3: E2SM CCC" [10] respectively.

Each element of the SUT, Near-RT RIC and E2 Node, may comply to only a subset of E2 procedures and E2 service models. Therefore, only those testcases that relate to procedures supported by both Near-RT and E2 Node are relevant. This is noted on a case-by-case basis in testcases defined in clause 7.

#### Testing Tools

The test setup has the SUT (Near-RT RIC and E2 Node) connected to other test equipments. These can be real or simulated UEs, O-RU, RAN elements, Core (EPC or 5GC) and Non-RT RIC to support scenarios appropriate for the E2 functionality being tested. An SMO with O1 interface is also included optionally if the Near-RT RIC, E2 Node or any of real or simulated elements need configuration or operation to function.

In addition, a TAP interface can be used on E2 interface between Near-RT RIC and E2 Node to passively capture and analyze packets for test case validation. Alternatively, E2 logs from the SUT can be used for protocol analysis.

# Test Cases for Near-RT RIC

## General

## Conformance Test Cases

### E2AP Global Procedures

#### Test Cases for E2 Setup

##### E2 Setup (positive case)

###### Test Purpose

The purpose of this test case is to test the E2 Setup procedure of the Near-RT RIC as specified in "O-RAN WG3: E2 Application Protocol" [2] clause 8.3.1. The expected outcome is successful establishment of the signaling connection between E2 Node and Near-RT RIC.

This testcase is mandatory if the DUT (Near-RT RIC) claims to support E2 Setup procedure.

###### Test Entrance Criteria

1. The Test Simulator has the functionality to initiate E2 Setup procedure.
2. The DUT (Near-RT RIC) support E2 Setup procedure.

###### Test Methodology

Initial conditions

1. An SCTP association is successfully established between the two SCTP endpoints of the E2 interface.
   (SCTP initiation procedure has taken place before or is taking place with execution of this test case)
2. The DUT (Near-RT RIC) has the E2 service ready and available to receive E2 SETUP REQUEST from the Test Simulator.

Procedure

Step 1. Initiate the E2 Setup procedure from Test Simulator to the DUT (Near-RT RIC) by sending E2 SETUP REQUEST Message.

Step 2. At the Test Simulator the received and transmitted E2 messages are recorded in logs.

Expected result

![]({{site.baseurl}}/assets/images/46cfa9b18d93.png)At the Test Simulator check the E2 response recorded in step 2 of procedure.

The test is considered passed if following conditions are met:

1. E2 Setup procedure is successfully completed.
2. E2 SETUP RESPONSE message is received.
3. E2 logs recorded in the Test Simulator are aligned with the message flow specified in "O-RAN WG3: E2 Application Protocol" [2] clause 8.3.1.

#### Test Cases for RESET procedure

##### Reset procedure (initiated by E2 Node) (positive case)

###### Test Purpose

The purpose of this test case is to test Reset procedure of E2AP the initiated by E2 Node as specified in "O-RAN WG3: E2 Application Protocol" [2] clause 8.3.2. The expected outcome is successful validation of RESET RESPONSE message from Near-RT RIC.

This testcase is mandatory if the DUT (Near-RT RIC) claims to support Reset procedure.

###### Test Entrance Criteria

1. The Test Simulator has the functionality to initiate Reset procedure.
2. The DUT (Near-RT RIC) supports Reset procedure.

###### Test Methodology

Initial conditions

1. An SCTP association is successfully established between the two SCTP endpoints of the E2 interface.
   (SCTP initiation procedure has taken place before or is taking place with execution of this test case)
2. The DUT (Near-RT RIC) has the E2 service ready and available to receive E2 SETUP REQUEST from the Test Simulator.

Procedure

Step 1. Initiate the Reset procedure from Test Simulator to the DUT (Near-RT RIC) by sending RESET REQUEST message as specified in [2] clause 9.1.2.5 with information elements as specified in table below.

Table - Information elements in RESET REQUEST message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE Name** | **Reference** | **Configuration / Value** |
| Message Type | [2] 9.2.3 | RESET REQUEST |
| Transaction ID | [2] 9.2.33 | INTEGER (0...255,..) |
| Cause | [2] 9.2.1 | Any valid cause |

</div>

Step 2. At the Test Simulator (E2 Node) the received and transmitted E2 messages are recorded.

Step 3. The Test Simulator does the following validation:

The received message is RESET RESPONSE as specified in [2] clause 9.1.2.6 and validated with information elements as specified in table below.

Table - Validation of IEs in RESET RESPONSE message

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **IE Name** | **Reference** | **Presence** | **Validation** |
| Message Type | [2] 9.2.3 | M | RESET RESPONSE |
| Transaction ID | [2] 9.2.33 | M | INTEGER (0...255,...) same as received in RESET REQUEST |
| Criticality Diagnostics | [2] 9.2.2 | O | Optional, if present check for valid information elements |

</div>

Expected results

The test is considered passed if

1. Validation in test procedure step 3 is successful.
2. E2 logs recorded in the Test Simulator (E2 Node) are aligned with the message flow specified in [2] Figure 8.3.2.2-1

##### Reset procedure (initiated by Near-RT RIC) (positive case)

###### Test Purpose

The purpose of this test case is to test Reset procedure of E2AP initiated by Near-RT RIC as specified in "O-RAN WG3: E2 Application Protocol" [2] clause 8.3.2. The expected outcome is successful validation of RESET REQUEST message from Near-RT RIC.

This testcase is mandatory if the DUT (Near-RT RIC) claims to support Reset procedure.

###### Test Entrance Criteria

1. The DUT (Near-RT RIC) and Test Simulator (E2 Node) support Reset procedure.
2. The DUT (Near-RT RIC) has the functionality to trigger Reset procedure.

###### Test Methodology

Initial conditions

1. An SCTP association is successfully established between the two SCTP endpoints of the E2 interface.
   (SCTP initiation procedure has taken place before or is taking place with execution of this test case)
2. The DUT (Near-RT RIC) has the E2 service ready and available to receive E2 SETUP REQUEST from the Test Simulator.

Procedure

Step 1. Initiate appropriate action in DUT (Near-RT RIC) to trigger Reset procedure.

Step 2. At the Test Simulator (E2 Node) the received and transmitted E2 messages are recorded.

Step 3. The Test Simulator does the following validation:

The received message is RESET REQUEST as specified in [2] clause 9.1.2.5 and validated with information elements as specified in table below

Table 5.2.1.2.2-1 Validation of IEs in RESET REQUEST message

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **IE Name** | **Reference** | **Presence** | **Validation** |
| Message Type | [2] 9.2.3 | M | RESET REQUEST |
| Transaction ID | [2] 9.2.33 | M | Valid *Transaction ID*, INTEGER (0...255,...) |
| Cause | [2] 9.2.1 | M | Valid *Cause* information element |

</div>

Step 4. If validation in step 3 is successful RESET RESPONSE message as specified in [2] clause 9.1.2.6 is sent to the DUT (Near-RT RIC) with parameters shown in table below

Table - Parameters in RESET RESPONSE message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE Name** | **Reference** | **Configuration / Value** |
| Message Type | [2] 9.2.3 | RESET RESPONSE |
| Transaction ID | [2] 9.2.33 | INTEGER (0...255,..) same as received in RESET REQUEST |
| Criticality Diagnostics | [2] 9.2.2 | Optional, not sent |

</div>

Expected results

The test is considered passed if

1. Validation in test procedure step 3 is successful.
2. E2 logs recorded in the Test Simulator (E2 Node) are aligned with the message flow specified in [2] Figure 8.3.2.2-1

#### Test Cases for Error Indication

##### Error Indication procedure

###### Test Purpose

The purpose of this test case is to test the Error Indication procedure of the DUT (Near-RT RIC) as specified in "O-RAN WG3: E2 Application Protocol" [2] clause 8.2.4.4 and 8.3.3. The expected outcome is successful validation of ERROR INDICATION message from Near-RT RIC.

This testcase is conditional mandatory if DUT claims to support Error Indication procedure.

###### Test Entrance Criteria

1. The Test Simulator (E2 Node) has the functionality to initiate E2 Setup procedure
2. The DUT (Near-RT RIC) and Test Simulator (E2 Node) support RIC Control procedure with timer TRICcontrol
3. The DUT (Near-RT RIC) has ability to set RIC Control Ack Request IE in RIC CONTROL REQUEST message.
4. The RAN Function are predefined between the DUT (Near-RT RIC) and the Test Simulator (E2 Node), see clause 5.2.2.1.1.2.

###### Test Methodology

Initial conditions

1. An SCTP association is successfully established between the two SCTP endpoints of the E2 interface
   (SCTP initiation procedure has taken place before or is taking place with execution of this test case).
2. The DUT (Near-RT RIC) has already successfully completed E2 Setup procedure initiated from the Test Simulator (E2 Node) with the agreed RAN Function been added.

Procedure

Step 1. Initiate appropriate actions in DUT (Near-RT RIC) to trigger RIC Control procedure to the agreed RAN Function.

Step 2. At the Test Simulator the received and transmitted E2 messages are recorded.

Step 3. Received RIC CONTROL REQUEST message defined in [2] clause 9.1.1.8 is validated for the following E2AP information elements defined.

Table -- Validation for RIC CONTROL REQUEST message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE/Group Name** | **Reference** | **Validation** |
| Message Type | [2] 9.2.3 | RIC CONTROL REQUEST |
| RIC Request ID | [2] 9.2.7 | Valid RIC Request ID |
| RAN Function ID | [2] 9.2.8 | Same as the RAN Function ID indicated for the agreed RAN Function during E2 Setup procedure |
| RIC Call Process ID | [2] 9.2.18 | Not applicable.  This IE shall only be used when RIC CONTROL message is in response to RIC Subscription with RIC Action Type IE as "Insert" |
| RIC Control Header | [2] 9.2.20 | IEs defined in RAN Function specific E2 Service Model [4] [5] [6] |
| RIC Control Message | [2] 9.2.19 | IEs defined in RAN Function specific E2 Service Model [4] [5] [6] |
| RIC Control Ack Request | [2] 9.2.21 | Ack |

</div>

Step 4. Do not send RIC CONTROL ACKNOWLEDGE message specified in [2] clause 9.1.1.9 to DUT (Near-RT RIC) and wait until Timer TRICcontrol expires in DUT (Near-RT RIC)

Step 5. The Test Simulator does the following validation:

The received message from DUT (Near-RT RIC) is ERROR INDICATION message specified in [2] clause 9.1.2.1 with following values

Table - Validation for ERROR INDICATION message

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **IE Name** | **Presence** | **Reference** | **Configuration / Value** |
| Message Type | M | [2] 9.2.3 | ERROR INDICATION |
| Transaction ID | O | [2] 9.2.33 | INTEGER (0...255,..) Required if RIC Request ID IE is not present |
| RIC Request ID | O | [2] 9.2.7 | Required if Transaction ID IE is not present |
| RAN Function ID | O | [2] 9.2.8 | Same as the RAN Function ID indicated for the agreed RAN Function during E2 Setup procedure |
| Cause | O | [2] 9.2.1 | Valid Cause |
| Criticality Diagnostics | O | [2] 9.2.2 | Optional |

</div>

Expected results

The test is considered passed if

1. Validation in test procedure Step 5 is successful.
2. E2 logs recorded in the Test Simulator (E2 Node) are aligned with the message flow as specified above.

#### Test Cases for RIC Service Update procedure

##### RIC Service Update procedure with RAN Function modified (positive case)

###### Test Purpose

The purpose of this test case is to test the RIC Service Update procedure of the DUT (Near-RT RIC) as specified in "O-RAN WG3: E2 Application Protocol" [2] clause 8.3.4. This test is designed to be agnostic to the E2 Service Model and RAN functions supported by the Near-RT RIC. This test covers the scenario where a RAN Function is modified as part of the RIC Service Update procedure. The expected outcome is successful validation of the RIC SERVICE UPDATE ACKNOWLEDGE message from Near-RT RIC.

This testcase is conditional mandatory if DUT claims support of RIC Service Update procedure.

###### Test Entrance Criteria

1. The DUT (Near-RT RIC) and Test Simulator (E2 Node) support RIC Service Update procedure.
2. The Test Simulator (E2 Node) has the functionality to initiate RIC Service Update procedure.

###### Test Methodology

conditions

1. An SCTP association is successfully established between the two SCTP endpoints of the E2 interface.
2. The DUT (Near-RT RIC) has already successfully completed E2 Setup procedure initiated from the Test Simulator (E2 Node) with a RAN function supported by the Test Simulator.

Procedure

Step 1. Initiate the RIC Service Update procedure from Test Simulator to the DUT (Near-RT RIC) by sending RIC SERVICE UPDATE message as specified in [2] clause 9.1.2.7 with information elements as specified in table below.

**Table 5.2.1.4.1-1** **Information elements in RIC SERVICE UPDATE message**

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE/Group Name** | **Reference** | **Configuration/Value** |
| Message Type | [2] 9.2.3 | RIC SERVICE UPDATE |
| Transaction ID | [2] 9.2.33 | INTEGER (0...255,...) |
| **RAN Functions Modified List** |  |  |
| >RAN Function Item |  |  |
| >>RAN Function ID | [2] 9.2.8 | INTEGER (1...4095) same as the one used in E2 Setup procedure |
| >>RAN Function Definition | [2] 9.2.23 | Valid *RAN Function Definition* as defined in the corresponding E2 Service Model [3] but different from the one used in E2 Setup procedure and supported by Near-RT RIC |
| >>RAN Function Revision | [2] 9.2.24 | Valid *RAN Function Revision*, INTEGER (0...4095) but different from the one used in E2 Setup procedure |
| >>RAN Function OID | [2] 9.2.31 | Valid *RAN Function OID* as specified in the corresponding E2 Service Model [3] |

</div>

Step 2. At the Test Simulator (E2 Node) the received and transmitted E2 messages are recorded.

Step 3. The Test Simulator does the following validation:

The received message is RIC SERVICE UPDATE ACKNOWLEDGE as specified in [2] clause 9.1.2.8 and validated with information elements as specified in table below. The RAN Function ID sent in RIC SERVICE UPDATE ACKNOWLEDGE being in Accepted List.

Table - Validation of IEs in RIC SERVICE UPDATE ACKNOWLEDGE message

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **IE/Group Name** | **Reference** | **Presence** | **Validation** |
| Message Type | [2] 9.2.3 | M | RIC SERVICE UPDATE ACKNOWLEDGE |
| Transaction ID | [2] 9.2.33 | M | INTEGER (0...255,..) Same as in RIC SERVICE UPDATE message |
| **RAN Functions Accepted List** |  |  | RAN Function modified has been accepted |
| >RAN Function ID Item |  |  |  |
| >>RAN Function ID | [2] 9.2.8 | M | INTEGER (1...4095) Same as in RIC SERVICE UPDATE message |
| >>RAN Function Revision | [2] 9.2.24 | M | INTEGER (0...4095) Same as in RIC SERVICE UPDATE message |

</div>

Expected results

The test is considered passed if

1. Validation in test procedure steps 3 is successful.
2. E2 logs recorded in the Test Simulator (E2 Node) are aligned with the message flow specified in [2] figure 8.3.4.2-1.

##### RIC Service Update procedure with RAN Function deleted (positive case)

###### Test Purpose

The purpose of this test case is to test the RIC Service Update procedure of the DUT (Near-RT RIC) as specified in "O-RAN WG3: E2 Application Protocol" [2] clause 8.3.4. This test is designed to be agnostic to the E2 Service Model and RAN functions supported by the Near-RT RIC. This test covers the scenario where a RAN Function is deleted as part of the RIC Service Update procedure. The expected outcome is successful validation of the RIC SERVICE UPDATE ACKNOWLEDGE message from Near-RT RIC.

This testcase is conditional mandatory if DUT claims support of RIC Service Update procedure.

###### Test Entrance Criteria

1. The DUT (Near-RT RIC) and Test Simulator (E2 Node) support RIC Service Update procedure.
2. The Test Simulator (E2 Node) has the functionality to initiate RIC Service Update procedure.

###### Test Methodology

Initial conditions

1. An SCTP association is successfully established between the two SCTP endpoints of the E2 interface.
2. The DUT (Near-RT RIC) has already successfully completed E2 Setup procedure initiated from the Test Simulator (E2 Node) with a RAN function supported by the Test Simulator

Procedure

Step 1. Initiate a new RIC Service Update procedure from Test Simulator to the DUT (Near-RT RIC) by sending RIC SERVICE UPDATE message as specified in [2] clause 9.1.2.7 with information elements as specified in the table below.

Table - Information elements in RIC SERVICE UPDATE message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE/Group Name** | **Reference** | **Configuration/Value** |
| Message Type | [2] 9.2.3 | RIC SERVICE UPDATE |
| Transaction ID | [2] 9.2.33 | INTEGER (0...255,...) |
| **RAN Functions Deleted List** |  |  |
| >RAN Function Item |  |  |
| >>RAN Function ID | [2] 9.2.8 | INTEGER (1...4095) same as the one used in E2 Setup procedure |
| >>RAN Function Revision | [2] 9.2.24 | INTEGER (0...4095) same as the one used in E2 Setup procedure |

</div>

Step 2. At the Test Simulator (E2 Node) the received and transmitted E2 messages are recorded.

Step 3. The Test Simulator does the following validation:

The received message is RIC SERVICE UPDATE ACKNOWLEDGE as specified in [2] clause 9.1.2.8 and validated with information elements as specified in table below. The RAN Function ID sent in RIC SERVICE UPDATE ACKNOWLEDGE being in Accepted List.

Table - Validation of IEs in RIC SERVICE UPDATE ACKNOWLEDGE message

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **IE/Group Name** | **Reference** | **Presence** | **Validation** |
| Message Type | [2] 9.2.3 | M | RIC SERVICE UPDATE ACKNOWLEDGE |
| Transaction ID | [2] 9.2.33 | M | INTEGER (0...255,..) Same as in RIC SERVICE UPDATE message |
| **RAN Functions Accepted List** |  |  | RAN Function modified has been accepted |
| >RAN Function ID Item |  |  |  |
| >>RAN Function ID | [2] 9.2.8 | M | INTEGER (1...4095) Same as in RIC SERVICE UPDATE message |
| >>RAN Function Revision | [2] 9.2.24 | M | INTEGER (0...4095) Same as in RIC SERVICE UPDATE message |

</div>

Expected results

The test is considered passed if

1) Validation in test procedure steps 3 is successful.

2) E2 logs recorded in the Test Simulator (E2 Node) are aligned with the message flow specified in [2] figure 8.3.4.2-1.

##### RIC Service Update procedure with RAN Function added (positive case)

###### Test Purpose

The purpose of this test case is to test the RIC Service Update procedure of the DUT (Near-RT RIC) as specified in "O-RAN WG3: E2 Application Protocol" [2] clause 8.3.4. This test is designed to be agnostic to the E2 Service Model and RAN functions supported by the Near-RT RIC. This test covers the scenario where a RAN Function is added as part of the RIC Service Update procedure. The expected outcome is successful validation of the RIC SERVICE UPDATE ACKNOWLEDGE message from Near-RT RIC.

This testcase is conditional mandatory if DUT claims support of RIC Service Update procedure.

###### Test Entrance Criteria

1. The DUT (Near-RT RIC) and Test Simulator (E2 Node) support RIC Service Update procedure.
2. The Test Simulator (E2 Node) has the functionality to initiate RIC Service Update procedure.

###### Test Methodology

Initial conditions

1. An SCTP association is successfully established between the two SCTP endpoints of the E2 interface.
2. The DUT (Near-RT RIC) has already successfully completed E2 Setup procedure initiated from the Test Smulator (E2 Node) with a RAN function supported by the Test Simulator.

Procedure

Step 1. Initiate a new RIC Service Update procedure from Test Simulator to the DUT (Near-RT RIC) by sending RIC SERVICE UPDATE message as specified in [2] clause 9.1.2.7 with information elements as specified in the table below

**Table 5.2.1.4.3-1 Information elements in RIC SERVICE UPDATE message**

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE/Group Name** | **Reference** | **Configuration/Value** |
| Message Type | [2] 9.2.3 | RIC SERVICE UPDATE |
| Transaction ID | [2] 9.2.33 | INTEGER (0...255,...) |
| **RAN Functions Added List** |  |  |
| >RAN Function Item |  |  |
| >>RAN Function ID | [2] 9.2.8 | Valid *RAN Function Id that doesn't exist in the DUT (Near-RT RIC)*, INTEGER (1...4095) |
| >>RAN Function Definition | [2] 9.2.23 | Valid *RAN Function Definition for a RAN Function doesn't exist in the DUT (Near-RT RIC)* as defined in the corresponding E2 Service Model [3] and supported by Near-RT RIC. |
| >>RAN Function Revision | [2] 9.2.24 | Valid *RAN Function Revision*, INTEGER (0...4095) |
| >>RAN Function OID | [2] 9.2.31 | Valid *RAN Function OID* as specified in the corresponding E2 Service Model [3] |

</div>

Step 2. At the Test Simulator (E2 Node) the received and transmitted E2 messages are recorded.

Step 3. The Test Simulator does the following validation:

The received message is RIC SERVICE UPDATE ACKNOWLEDGE as specified in [2] clause 9.1.2.8 and validated with information elements as specified in table below. The RAN Function ID sent in RIC SERVICE UPDATE ACKNOWLEDGE in Accepted List.

Table - Validation of IEs in RIC SERVICE UPDATE ACKNOWLEDGE message

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **IE/Group Name** | **Reference** | **Presence** | **Validation** |
| Message Type | [2] 9.2.3 | M | RIC SERVICE UPDATE ACKNOWLEDGE |
| Transaction ID | [2] 9.2.33 | M | INTEGER (0...255,..) Same as in RIC SERVICE UPDATE message |
| **RAN Functions Accepted List** |  |  | RAN Function modified has been accepted |
| >RAN Function ID Item |  |  |  |
| >>RAN Function ID | [2] 9.2.8 | M | INTEGER (1...4095) Same as in RIC SERVICE UPDATE message |
| >>RAN Function Revision | [2] 9.2.24 | M | INTEGER (0...4095) Same as in RIC SERVICE UPDATE message |

</div>

Expected results

The test is considered passed if

1. Validation in test procedure steps 3 is successful.
2. E2 logs recorded in the Test Simulator (E2 Node) are aligned with the message flow specified in [2] figure 8.3.4.2-1.

#### Test Cases for E2 Node Configuration Update procedure

##### E2 Node Configuration Update procedure with E2 Node configuration added (positive)

###### Test Purpose

The purpose of this test case is to test the E2 Node Configuration Update procedure of the DUT (Near-RT RIC) as specified in "O-RAN WG3: E2 Application Protocol" [2] clause 8.3.5. This test is designed to test the scenario where an E2 Node component configuration is added as a part of update procedure.

The expected outcome of this test is DUT (Near-RT RIC) successfully acknowledging the update.

This testcase is conditionally mandatory if the DUT (Near-RT RIC) claims to support E2 Node Configuration Update procedure.

###### Test Entrance Criteria

1. The Test Simulator (E2 Node) has the functionality to initiate E2 Setup procedure.
2. The DUT (Near-RT RIC) and Test Simulator (E2 Node) supports E2 Node Configuration Update procedure.
3. Test Simulator (E2 Node) has functionality to trigger E2 Node Configuration Update procedure.

###### Test Methodology

Initial conditions

1. An SCTP association is successfully established between the two SCTP endpoints of the E2 interface.
2. The DUT (Near-RT RIC) has successfully completed E2 Setup procedure but does not include the E2 Node configuration used in the procedure described in next section.

Procedure

Step 1. Initiate the E2 Node Configuration Update procedure from Test Simulator to the DUT (Near-RT RIC) by sending E2 NODE CONFIGURATION UPDATE message as specified in [2] clause 9.1.2.11 with information elements for a E2 Node component addition shown in example table below.

Table - Information elements in E2 NODE CONFIGURATION UPDATE

message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE / Message value** | **Reference** | **Configuration / Value** |
| Message Type | [2] 9.2.3 | E2 NODE CONFIGURATION UPDATE |
| Transaction ID | [2] 9.2.33 | INTEGER (0..255, ...) any valid value. |
| E2 Node Component Configuration Addition List | List with one item as specified below |  |
| >E2 Node Component Configuration Addition Item |
| >>E2 Node Component Interface Type | [2] 9.2.26 | ENUMERATED (ng, xn, e1, f1, w1, s1, x2, ...)  Interface Type = "f1" used as a valid example |
| >>E2 Node Component ID | [2] 9.2.32 | Valid gNB-DU ID |
| >>E2 Node Component Configuration | [2] 9.2.27 | OCTECT STRINGs representing F1 SETUP REQUEST and F1 SETUP RESPONSE for the added F1 interface |

</div>

Step 2. At the Test Simulator the received and transmitted E2 message is recorded.

Step 3. The Test Simulator does the following validation:

The received message is E2 NODE CONFIGURATION UPDATE ACKNOWLEDGE as specified in [2] clause 9.1.2.12 and validated with the information elements specified in table below.

Table - Validation of IEs in E2 NODE CONFIGURATION UPDATE ACKNOWLEDGE message

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **IE Name** | **Reference** | **Presence** | **Validation** |
| Message Type | [2] 9.2.3 | M | E2 NODE CONFIGURATION UPDATE ACKNOWLEDGE |
| Transaction ID | [2] 9.2.33 | M | INTEGER (0...255,...) same as in E2 NODE CONFIGURATION UPDATE |
| E2 Node Component Configuration Addition Acknowledge List |  | M |  |
| >E2 Node Component Configuration Addition Acknowledge Item |
| >>E2 Node Component Interface Type | [2] 9.2.26 | M | Interface Type = "f1" same as in E2 NODE CONFIGURATION UPDATE |
| >>E2 Node Component ID | [2] 9.2.32 | M | gNB-DU ID same as in E2 NODE CONFIGURATION UPDATE |
| >>E2 Node Component Configuration Acknowledge | [2] 9.2.28 | M | Success or failure with Cause |

</div>

Expected results

The test is considered passed if

1. Validations in test procedure Step 3.
2. Step 2 E2 logs recorded in the Test Simulator (E2 Node) are aligned with the message flow specified in "O-RAN WG3: E2 Application Protocol" [2] 8.3.5.2

##### E2 Node Configuration Update procedure with E2 Node configuration updated (positive)

###### Test Purpose

The purpose of this test case is to test the E2 Node Configuration Update procedure of the DUT (Near-RT RIC) as specified in "O-RAN WG3: E2 Application Protocol" [2] clause 8.3.5. This test is designed to test the scenario where an E2 Node component configuration is updated as a part of update procedure.

The expected outcome of this test is DUT (Near-RT RIC) successfully acknowledging the update.

This testcase is conditionally mandatory if the DUT (Near-RT RIC) claims to support E2 Node Configuration Update procedure.

###### Test Entrance Criteria

1. The Test Simulator (E2 Node) has the functionality to initiate E2 Setup procedure.
2. The DUT (Near-RT RIC) and Test Simulator (E2 Node) supports E2 Node Configuration Update procedure.
3. Test Simulator (E2 Node) has functionality to trigger E2 Node Configuration Update procedure.

###### Test Methodology

Initial conditions

1. An SCTP association is successfully established between the two SCTP endpoints of the E2 interface.
2. The DUT (Near-RT RIC) has successfully completed E2 Setup procedure and includes an E2 Node configuration that will be updated by the procedure described in next section.

Procedure

Step 1. Initiate the E2 Node Configuration Update procedure from Test Simulator to the DUT (Near-RT RIC) by sending E2 NODE CONFIGURATION UPDATE message as specified in [2] clause 9.1.2.11 with information elements for an E2 Node component updated as shown in example table below.

Table - Information elements in E2 NODE CONFIGURATION UPDATE message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE / Message value** | **Reference** | **Configuration / Value** |
| Message Type | [2] 9.2.3 | E2 NODE CONFIGURATION UPDATE |
| Transaction ID | [2] 9.2.33 | INTEGER (0..255, ...) any valid value. |
| E2 Node Component Configuration Update List | List with one item as specified below |  |
| >E2 Node Component Configuration Update Item |
| >>E2 Node Component Interface Type | [2] 9.2.26 | ENUMERATED (ng, xn, e1, f1, w1, s1, x2, ...)  Interface Type = "f1" used as a valid example |
| >>E2 Node Component ID | [2] 9.2.32 | Use gNB-DU ID of the existing E2 Node intended to be updated |
| >>E2 Node Component Configuration | [2] 9.2.27 | OCTECT STRINGs representing F1 SETUP REQUEST and F1 SETUP RESPONSE with updated information. |

</div>

Step 2. At the Test Simulator the received and transmitted E2 message is recorded.

Step 3. The Test Simulator does the following validation:

The received message is E2 NODE CONFIGURATION UPDATE ACKNOWLEDGE as specified in [2] clause 9.1.2.12 and validated with information elements specified in table below.

Table - Validation of IEs in E2 NODE CONFIGURATION UPDATE ACKNOWLEDGE message

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **IE Name** | **Reference** | **Presence** | **Validation** |
| Message Type | [2] 9.2.3 | M | E2 NODE CONFIGURATION UPDATE ACKNOWLEDGE |
| Transaction ID | [2] 9.2.33 | M | INTEGER (0...255,...) same as in E2 NODE CONFIGURATION UPDATE |
| E2 Node Component Configuration Update Acknowledge List |  | M |  |
| >E2 Node Component Configuration Update Acknowledge Item |
| >>E2 Node Component Interface Type | [2] 9.2.26 | M | Interface Type = "f1" same as in E2 NODE CONFIGURATION UPDATE |
| >>E2 Node Component ID | [2] 9.2.32 | M | gNB-DU ID same as in E2 NODE CONFIGURATION UPDATE |
| >>E2 Node Component Configuration Acknowledge | [2] 9.2.28 | M | Success or failure with Cause |

</div>

Expected results

The test is considered passed if

1. Validations in test procedure Step 3.

Step 2 E2 logs recorded in the Test Simulator (E2 Node) are aligned with the message flow specified in "O-RAN WG3: E2 Application Protocol" [2] 8.3.5.2

##### E2 Node Configuration Update procedure with E2 Node configuration removed (positive)

###### Test Purpose

The purpose of this test case is to test the E2 Node Configuration Update procedure of the DUT (Near-RT RIC) as specified in "O-RAN WG3: E2 Application Protocol" [2] clause 8.3.5. This test is designed to test the scenario where an E2 Node component configuration is removed as a part of update procedure.

The expected outcome of this test is DUT (Near-RT RIC) successfully acknowledging the update.

This testcase is conditionally mandatory if the DUT (Near-RT RIC) claims to support E2 Node Configuration Update procedure.

###### Test Entrance Criteria

1. The Test Simulator (E2 Node) has the functionality to initiate E2 Setup procedure.
2. The DUT (Near-RT RIC) and Test Simulator (E2 Node) supports E2 Node Configuration Update procedure.
3. Test Simulator (E2 Node) has functionality to trigger E2 Node Configuration Update procedure.

###### Test Methodology

Initial conditions

1. An SCTP association is successfully established between the two SCTP endpoints of the E2 interface
2. The DUT (Near-RT RIC) has successfully completed E2 Setup procedure and includes an E2 Node configuration that will be removed by the procedure described in next section.

Procedure

Step 1. Initiate the E2 Node Configuration Update procedure from Test Simulator to the DUT (Near-RT RIC) by sending E2 NODE CONFIGURATION UPDATE message as specified in [2] clause 9.1.2.11 with information elements for an E2 Node component removed as shown in example table below.

Table - Information elements in E2 NODE CONFIGURATION UPDATEmessage

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE / Message value** | **Reference** | **Configuration / Value** |
| Message Type | [2] 9.2.3 | E2 NODE CONFIGURATION UPDATE |
| Transaction ID | [2] 9.2.33 | INTEGER (0..255, ...) any valid value. |
| E2 Node Component Configuration Removal List | List with one item as specified below |  |
| >E2 Node Component Configuration Removal Item |
| >>E2 Node Component Interface Type | [2] 9.2.26 | ENUMERATED (ng, xn, e1, f1, w1, s1, x2, ...)  Interface Type = "f1" used as a valid example |
| >>E2 Node Component ID | [2] 9.2.32 | Use gNB-DU ID of the existing E2 Node intended to be updated |
|  |  |  |

</div>

Step 2. At the Test Simulator the received and transmitted E2 message is recorded.

Step 3. The Test Simulator does the following validation:

The received message is E2 NODE CONFIGURATION UPDATE ACKNOWLEDGE as specified in [2] clause 9.1.2.12 and validated with the information elements specified in table below.

Table - Validation of IEs in E2 NODE CONFIGURATION UPDATE ACKNOWLEDGE message

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **IE Name** | **Reference** | **Presence** | **Validation** |
| Message Type | [2] 9.2.3 | M | E2 NODE CONFIGURATION UPDATE ACKNOWLEDGE |
| Transaction ID | [2] 9.2.33 | M | INTEGER (0...255,...) same as received in E2 NODE CONFIGURATION UPDATE |
| E2 Node Component Configuration Removal Acknowledge List |  | M |  |
| >E2 Node Component Configuration Removal Acknowledge Item |
| >>E2 Node Component Interface Type | [2] 9.2.26 | M | Interface Type = "f1" same as in E2 NODE CONFIGURATION UPDATE |
| >>E2 Node Component ID | [2] 9.2.32 | M | gNB-DU ID same as in E2 NODE CONFIGURATION UPDATE |
| >>E2 Node Component Configuration Acknowledge | [2] 9.2.28 | M | Success or failure with Cause |

</div>

Expected results

The test is considered passed if

1. Validations in test procedure Step 3.
2. Step 2 E2 logs recorded in the Test Simulator (E2 Node) are aligned with the message flow specified in "O-RAN WG3: E2 Application Protocol" [2] 8.3.5.2

#### Test Cases for E2 Connection Update procedure

##### E2 Connection Update procedure with TNL Association added (positive case)

###### Test Purpose

The purpose of this test case is to test the E2 Connection Update procedure of the DUT (Near-RT RIC) as specified in "O-RAN WG3: E2 Application Protocol" [2] clause 8.3.6. The expected outcome is successful validation of the E2 CONNECTION UPDATE message from Near-RT RIC and establishment of a new TNL Association.

This testcase is conditional mandatory if DUT claims support E2 Connection Update procedure and multiple TNLAs over E2.

###### Test Entrance Criteria

1. The DUT (Near-RT RIC) and Test Simulator (E2 Node) support E2 Connection Update procedure and multiple TNLAs over E2.
2. The DUT (Near-RT RIC) has the functionality to trigger E2 Connection Update procedure for addition of a new TNL Association.

###### Test Methodology

Initial conditions

1. An SCTP association is successfully established between the two SCTP endpoints of the E2 interface.
2. The DUT (Near-RT RIC) has already successfully completed E2 Setup procedure initiated from the Test Simulator (E2 Node).

Procedure

Step 1. Initiate appropriate action in DUT (Near-RT RIC) to trigger E2 Connection Update procedure for addition of a new TNL Association.

Step 2. At the Test Simulator (E2 Node) the received, transmitted E2 messages and SCTP Transport level messages are recorded.

Step 3. The Test Simulator does the following validation:

The received message is E2 CONNECTION UPDATE as specified in [2] clause 9.1.2.14 and validated with information elements as specified in table below.

Table - Validation of parameters in E2 Connection Update message

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **IE Name** | **Reference** | **Presence** | **Validation** |
| Message Type | [2] 9.2.3 | M | E2 CONNECTION UPDATE |
| Transaction ID | [2] 9.2.33 | M | Valid *Transaction ID,* INTEGER (0...255,..) |
| **E2 Connection To Add List** |  |  |  |
| >E2 Connection to Add Item IEs |  |  | One item |
| >>Transport Layer Information | [2] 9.2.29 | M | Valid *Transport Layer Information,* BIT STRING for Transport Layer Address (Mandatory, SIZE(1...160,...)) and Transport Layer Port (Optional, SIZE(16) )  Different from transport layer information used in initial SCTP association |
| >>TNL Association Usage | [2] 9.2.30 | M | Valid *TNL Association Usage*, ENUMERATED (ric service, support functions, both,..) |

</div>

Step 4. The Test Simulator (E2 Node) initiates and establishes a new SCTP connection towards the Transport Layer Information (address and port) provided in E2 CONNECTION UPDATE message.

Step 5. Based on SCTP Transport Level messages recoded, the Test Simulator (E2 Node) validates the SCTP establishment in Step 4.

Step 6. If validation in steps 3 and 5 are successful, E2 CONNECTION UPDATE ACKNOWLEDGE message as specified in [2] clause 9.1.2.15 is sent to DUT (Near-RT RIC) with parameters shown in table below.

Table - Validation for E2 CONNECTION UPDATE ACKNOWLEDGE message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE/Group Name** | **Reference** | **Configuration/Value** |
| Message Type | [2] 9.2.3 | E2 CONNECTION UPDATE ACKNOWLEDGE |
| Transaction ID | [2] 9.2.33 | INTEGER (0...255,...) same as in E2 CONNECTION UPDATE message |
| **E2 Connection Setup List** |  |  |
| >E2 Connection Setup Item IEs |  |  |
| >>Transport Layer Information | [2] 9.2.29 | Same BIT STRING as in E2 CONNECTION UPDATE message |
| >>TNL Association Usage | [2] 9.2.30 | Same TNL Association Usage, , ENUMERATED (ric service, support functions, both,..), as in E2 CONNECTION UPDATE message |

</div>

Step 7. The Test Simulator (E2 Node) triggers E2 Node Configuration Update procedure on the new TNL Association. Validation of the E2 Node Configuration Update procedure is out of the scope of this test and can be referred in clause 5.2.1.5.3.

Expected results

The test is considered passed if

1. Validation in test procedure steps 3 and 5 are successful.
2. E2 logs recorded in the Test Simulator (E2 Node) are aligned with the message flow specified in [2] figure 8.3.6.2-1.

#### Test Cases for E2 Removal procedure

##### E2 Removal procedure initiated by E2 Node (positive case)

###### Test Purpose

The purpose of this test case is to test the E2 Node initiated E2 Removal procedure of Near-RT RIC as specified in "O-RAN WG3: E2 Application Protocol" [2] clause 8.3.7. The expected outcome of this test is successful removal of E2 signaling connection between the Near-RT RIC and the E2 Node.

This testcase is mandatory if the DUT (Near-RT RIC) claims to support E2 Removal procedure.

###### Test Entrance Criteria

1. The DUT (Near-RT RIC) and Test Simulator (E2 Node) support E2 Removal procedure.
2. The Test Simulator (E2 Node) has the functionality to trigger E2 Removal procedure.

###### Test Methodology

Initial conditions

1. An SCTP association is successfully established between the two SCTP endpoints of the E2 interface
   (SCTP initiation procedure has taken place before the execution of this test case).
2. The DUT (Near-RT RIC) and Test Simulator (E2 Node) has successfully completed E2 Setup procedure.

Procedure

Step 1. Initiate the E2 Removal procedure from Test Simulator (E2 Node) to the DUT (Near-RT RIC) by sending E2 REMOVAL REQUEST message as specified in [2] clause 9.1.1.17 with information elements as specified in table below.

Table - Parameters in in E2 REMOVAL REQUEST message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| IE/Group Name | Reference | Configuration / Value |
| Message Type | 9.2.3 | REMOVAL REQUEST |
| Transaction ID | 9.2.33 | INTEGER (0..255, ...) |

</div>

Step 2. At the Test Simulator (E2 Node) the transmitted, received E2 messages and SCTP Transport level messages are recorded.

Step 3. The Test Simulator does the following validation:

The received message is E2 REMOVAL RESPONSE as specified in [2] clause 9.2.1.18 and validated with information elements are as specified in table below:

Table - Validation for RESET RESPONSE message

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Reference** | **Validation** |
| Message Type | M | 9.2.3 |  |
| Transaction ID | M | 9.2.33 | INTEGER (0..255, ...)  Same value as the one in REMOVAL REQUEST. |
| Criticality Diagnostics | O | 9.2.2 | Will not be used in this test |

</div>

Step 4. Based on SCTP Transport level messages recorded in Step 2 validate that the DUT (Near-RT RIC) successfully acknowledge the termination of the SCTP connection initiated by the Test Simulator (E2 Node) and sends SHUTDOWN\_ACK message

Expected results

The test is considered passed if

1. Validations in test procedure Step 4 and Step 4 are successful.
2. E2 logs recorded in the Test Simulator (E2 Node) are aligned with the message flow specified in [2] figure 8.3.7.2-1.

##### E2 Removal procedure initiated by Near-RT RIC (positive case)

###### Test Purpose

The purpose of this test case is to test the Near-RT RIC initiated E2 Removal procedure of Near-RT RIC as specified in "O-RAN WG3: E2 Application Protocol" [2] clause 8.3.7. The expected outcome of this test is successful removal of E2 signaling connection between the Near-RT RIC and the E2 Node

This testcase is mandatory if the DUT (E2 Node) claims to support E2 Removal procedure.

###### Test Entrance Criteria

1. The DUT (Near-RT RIC) and Test Simulator (E2 Node) supports E2 Removal procedure.
2. The DUT (Near-RT RIC) has the functionality to trigger E2 Removal procedure.

###### Test Methodology

Initial conditions

1. An SCTP association is successfully established between the two SCTP endpoints of the E2 interface (SCTP initiation procedure has taken place before the execution of this test case).
2. The Test Simulator (E2 Node) and DUT (Near-RT RIC) has successfully completed E2 Setup procedure.

Procedure

Step 1. Initiate appropriate action in DUT (Near-RT RIC) to trigger E2 Removal procedure.

Step 2. At the Test Simulator (E2 Node) the transmitted, received E2 messages and SCTP Transport level messages are recorded.

Step 3. The Test Simulator (E2 Node) does the following validation:

The received message is E2 REMOVAL REQUEST as specified in [2] clause 9.1.1.17 and validated with information elements as specified in table below:

Table - Validation of IEs in E2 REMOVAL REQUEST message

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| IE/Group Name | Presence | Reference | Configuration / Value |
| Message Type | M | 9.2.3 | REMOVAL REQUEST |
| Transaction ID | M | 9.2.33 | INTEGER (0..255, ...) |

</div>

Step 4. If validation in step 3 is successful, E2 REMOVAL RESPONSE message as specified in [2] clause 9.1.1.18 is sent to the DUT (Near-RT RIC) with parameters shown in table below

Table - Parameters in E2 RESET RESPONSE message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE/Group Name** | **Reference** | **Validation** |
| Message Type | 9.2.3 |  |
| Transaction ID | 9.2.33 | INTEGER (0..255, ...)  Same value as the one in REMOVAL REQUEST. |
| Criticality Diagnostics | 9.2.2 | Will not be used in this test |

</div>

Step 5. Based on SCTP Transport level messages recorded in Step 2 validate that the DUT (Near-RT RIC) initiates and complete the termination of the SCTP connection by sending the SHUTDOWN\_COMPLETE message

Expected results

The test is considered passed if

1. Validations in test procedure Step 4 and Step 5 are successful.
2. E2 logs recorded in the Test Simulator (Near-RT RIC) are aligned with the message flow specified in [2] figure 8.3.7.2-2

### E2AP Functional Procedures

#### Test Cases for RIC Subscription procedure

##### RIC Subscription procedure for single RIC action (positive)

###### Test Purpose

The purpose of this test case is to test the RIC Subscription procedure of Near-RT RIC for single RIC action as specified in [2] clause 8.2.1. This test is designed to be agnostic to the E2 Service Model and RAN functions. The RAN Function and RAN Function definition to which RIC Subscribes are predefined between the DUT (Near-RT RIC) and the Test Simulator (E2 Node). The expected outcome of this test is successful RIC Subscription by Near-RT RIC.

Test cases for RIC Subscription procedures for specific E2 Service Models and functionalities are defined in sections dedicated for Service Models which will reuse initial conditions, test procedures, and validation steps specified in this section for base E2AP functionality.

This testcase is mandatory if the DUT claims to support E2AP RIC Subscription procedure.

###### Test Entrance Criteria

1. The Test Simulator (E2 Node) has the functionality to initiate E2 Setup procedure.
2. The DUT (Near-RT RIC) and Test Simulator (E2 Node) support RIC Subscription procedure.
3. The RAN Function to which RIC subscribes and the RAN Function definition are predefined between the DUT (Near-RT RIC) and the Test Simulator (E2 Node). An example of the agreed RAN Function Definition IE as per configuration is shown in table below.

Table - E2SM KPM RAN Function Definition Profile IE profile for this test

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE Name** | **Reference** | **Configuration / Value** |
| RAN Function Name | [5] 8.3.1 |  |
| >RAN Function Short Name | [5] 8.3.1 | ORAN-E2SM-KPM |
| >RAN Function Service Model OID | [5] 8.3.1 | 1.3.6.1.4.1.53148.1.2.2 |
| > RAN Function Description | [5] 8.3.1 | KPM Monitor |
| Sequence of Event Trigger styles |  |  |
| >RIC Event Trigger Style Type | [5] 8.3.3 | 1 |
| >RIC Event Trigger Style Name | [5] 8.3.4 | Periodic Report |
| >RIC Event Trigger Format Type | [5] 8.3.5 | 1 |
| Sequence of Report styles |  |  |
| > RIC Report Style Type | [5] 8.3.3 | 1 |
| > RIC Report Style Name | [5] 8.3.4 | E2 Node Measurement |
| > RIC Report Action Format Type | [5] 8.3.5 | 1 |
| > Sequence of Measurement Info for Action |  |  |
| >> Measurement Type Name | [5]8.3.9 | Name of one Measurement agreed for this test |
| >RIC Indication Header Format | [5] 8.3.5 | 1 |
| >RIC Indication Message Format | [5] 8.3.5 | 1 |

</div>

1. DUT (Near-RT RIC) has functionality to trigger subscription to the RAN Function agreed.

###### Test Methodology

Initial conditions

1. An SCTP association is successfully established between the two SCTP endpoints of the E2 interface
   (SCTP initiation procedure has taken place before or is taking place with execution of this test case).
2. The DUT (Near-RT RIC) has already successfully completed E2 Setup Request initiated from the Test Simulator (E2 Node) with the agreed RAN Function.

Procedure

Step 1. Initiate appropriate actions in DUT (Near-RT RIC) to trigger RIC Subscription procedure to the agreed RAN Function.

Step 2. At the Test Simulator the received and transmitted E2 messages are recorded.

Step 3. Received RIC SUBSCRIPTION REQUEST message defined in [2] clause 9.1.1.1 is validated for the following E2AP information elements defined.

Table - Validation for RIC SUBSCRIPTION REQUEST message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE/Group Name** | **Reference** | **Validation** |
| Message Type | [2] 9.1.1.1 | RIC SUBSCRIPTION REQUEST |
| RIC Request ID | [2] 9.1.1.1 | Valid RIC Request ID |
| RAN Function ID | [2] 9.2.8 | Should be same as RAN Function ID indicated for the agreed RAN Function during E2 Setup procedure |
| RIC Subscription Details |  |  |
| >RIC Event Trigger Definition | [2] 9.2.9 | Validation for IEs defined in RAN Function specific E2 Service Model [4] [5] [6] is outside the scope of this test. |
| >Sequence of Actions |  |  |
| >>RIC Action ID | [2] 9.2.10 | Valid RIC Action ID, INTEGER (0..255) |
| >>RIC Action Type | [2] 9.2.11 | Valid RIC Action Type, ENUMERATED (Insert, Report, Policy, ...) |
| >>RIC Action Definition | [2] 9.2.12 | Validation for IEs defined in RAN Function specific E2 Service Model [4] [5] [6] is outside the scope of this test. |

</div>

Step 4. If validation in step 3 is successful RIC SUBSCRIPTION RESPONSE message specified in [2] clause 9.2.1.1 is sent to the DUT (Near-RT RIC) with parameters shown in table below.

**Table 5.2.2.1.1-3 Parameters in RIC SUBSCRIPTION RESPONSE message**

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE/Group Name** | **IE type and reference** | **Semantics description** |
| Message Type | [2] 9.2.3 | RIC SUBSCRIPTION RESPONSE |
| RIC Request ID | [2] 9.2.7 | Received RIC Request ID |
| RAN Function ID | [2] 9.2.8 | Received RAN Function ID |
| RIC Actions Admitted List |  |  |
| >RIC Action ID | [2] 9.2.10 | Received Action ID requested included in *RIC Actions Admitted List* IE. |

</div>

Expected results

The test is considered passed if

1. Validation in test procedure step 3 is successful.
2. E2 logs recorded in the Test Simulator (E2 Node) are aligned with the message flow specified in [2] clause 8.2.1.2.

#### Test Cases for RIC Subscription Delete

##### RIC Subscription Delete procedure (positive)

###### Test Purpose

The purpose of this test case is to test the RIC Subscription delete procedure of the Near-RT RIC as specified in "O-RAN WG3: E2 Application Protocol" [2] clause 8.2.2. This test is designed to be agnostic to the E2 Service Model and RAN functions. This testcase validates RIC Subscription Delete procedure of E2AP. The RAN Function and RAN Function definition to which RIC Subscribes are predefined between the DUT (Near-RT RIC) and the Test Simulator (E2 Node).

The expected outcome of this test is successful deletion of RIC Subscription by Near-RT RIC.

This testcase is mandatory if the DUT claims to support RIC Subscription Delete procedure.

###### Test Entrance Criteria

1. The Test Simulator (E2 Node) has the functionality to initiate E2 Setup procedure.
2. The DUT (Near-RT RIC) and Test Simulator (E2 Node) support RIC Subscription Delete procedure.
3. The RAN Function the RIC subscribes to and the RAN Function definition are predefined between the DUT (Near-RT RIC) and the Test Simulator (E2 Node). An example of the agreed RAN Function Definition IE as per configuration is shown in table below.

Table - E2SM KPM RAN Function Definition Profile IE profile for this test

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Name** | **Reference** | **Configuration / Value** |
| RAN Function Name | [5] 8.3.1 |  |
| >RAN Function Short Name | [5] 8.3.1 | ORAN-E2SM-KPM |
| >RAN Function Service Model OID | [5] 8.3.1 | 1.3.6.1.4.1.53148.1.2.2 |
| > RAN Function Description | [5] 8.3.1 | KPM Monitor |

</div>

1. DUT (Near-RT RIC) has functionality to trigger RIC subscription delete to the RAN Function agreed.

###### Test Methodology

Initial conditions

1. The DUT (Near-RT RIC) has successfully completed E2 Setup procedure with the agreed RAN Function ID
2. The DUT (Near-RT RIC) has successfully completed RIC subscription procedure with the agreed RIC request ID.

Procedure

Step 1. Initiate appropriate actions in DUT (Near-RT RIC) to trigger RIC Subscription Delete procedure for the agreed RAN Function.

Step 2. At the Test Simulator the received and transmitted E2 message is recorded.

Step 3. Received RIC SUBSCRIPTION DELETE REQUEST message defined in [2] clause 9.1.1.4 is validated for the following E2AP information elements defined.

Table - Validation for RIC SUBSCRIPTION DELETE REQUEST message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE/Group Name** | **Reference** | **Validation** |
| Message Type | [2] 9.2.3 | RIC SUBSCRIPTION DELETE REQUEST |
| RIC Request ID | [2] 9.2.7 | Valid RIC Request ID |
| RAN Function ID | [2] 9.2.8 | Should be same as RAN Function ID indicated for the agreed RAN Function during E2 Setup procedure |

</div>

Step 4. If validation in step 3 is successful RIC SUBSCRIPTION DELETE RESPONSE message specified in [2] 9.1.1.5 is sent to the DUT (Near-RT RIC) with parameters shown in table below.

Table - Parameters in RIC SUBSCRIPTION DELETE RESPONSE message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE/Group Name** | **IE type and reference** | **Semantics description** |
| Message Type | [2] 9.2.3 | RIC SUBSCRIPTION DELETE RESPONSE |
| RIC Request ID | [2] 9.2.7 | Received RIC Request ID |
| RAN Function ID | [2] 9.2.8 | Received RAN Function ID |

</div>

Expected results

The test is considered passed if

1. Validation in test procedure step 3 is successful.
2. Step 2 E2 logs recorded in the Test Simulator (E2 Node) are aligned with the message flow specified in "O-RAN WG3: E2 Application Protocol" [2] clause 8.2.2.2

#### Test Cases for RIC Subscription Delete Required procedure

##### RIC Subscription Delete Required procedure (positive)

###### Test Purpose

The purpose of this test case is to test the RIC Subscription Delete Required procedure of the DUT (Near-RT RIC) as specified in "O-RAN WG3: E2 Application Protocol" [2] clause 8.2.2A. This test is designed to be agnostic to the E2 Service Model and RAN functions decided to be used. The RAN Function and RAN Function definition to which RIC Subscribes are predefined between the DUT (Near-RT RIC) and the Test Simulator (E2 Node).

The expected outcome of this test is DUT (Near-RT RIC) processing RIC SUBSCRIPTION DELETE REQUIRED message successfully and subsequently initiating RIC Subscription Delete procedure to Test Simulator (E2 Node).

This testcase is conditionally mandatory if the DUT (Near-RT RIC) claims to support RIC Subscription Delete Required procedure.

###### Test Entrance Criteria

1. The Test Simulator (E2 Node) has the functionality to initiate E2 Setup procedure.
2. The DUT (Near-RT RIC) and Test Simulator (E2 Node) supports RIC Subscription Delete Required procedure.
3. The RAN Function the RIC subscribes to and the RAN Function definition are predefined between the DUT (Near-RT RIC) and the Test Simulator (E2 Node). An example of the agreed RAN Function Definition IE as per configuration is shown in table below.

Table - E2SM KPM RAN Function Definition Profile IE profile for this test

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE Name** | **Reference** | **Configuration / Value** |
| RAN Function Name | [5] 8.3.1 |  |
| >RAN Function Short Name | [5] 8.3.1 | ORAN-E2SM-KPM |
| >RAN Function Service Model OID | [5] 8.3.1 | 1.3.6.1.4.1.53148.1.2.2 |
| > RAN Function Description | [5] 8.3.1 | KPM Monitor |

</div>

1. Test Simulator (E2 Node) has functionality to trigger RIC Subscription Delete Required procedure.

###### Test Methodology

Initial conditions

1. An SCTP association is successfully established between the two SCTP endpoints of the E2 interface.
   (SCTP initiation procedure has taken place before or is taking place with execution of this test case).
2. The DUT (Near-RT RIC) has successfully completed E2 Setup procedure and RIC subscription procedure with the agreed RAN Function ID and RIC request ID.

Procedure

Step 1. Initiate the RIC Subscription Delete Required procedure from Test Simulator to the DUT (Near-RT RIC) by sending RIC SUBSCRIPTION DELETE REQUIRED message as specified in [2] clause 9.1.1.6A with information elements as specified in table below.

Table - Information element in RIC SUBSCRIPTION DELETE REQUIRED message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE / Message value** | **Reference** | **Configuration / Value** |
| Message Type | [2] 9.2.3 | RIC SUBSCRIPTION DELETE REQUIRED |
| List of RIC Subscriptions To Be Removed |  | One item |
| RIC Request ID | [2] 9.2.7 | Should be same as the RIC Request ID used during subscription procedure |
| RAN Function ID | [2] 9.2.8 | Should be same as RAN Function ID used during subscription |
| Cause | [2] 9.2.1 | Any valid cause |

</div>

Step 2. At the Test Simulator the received and transmitted E2 message is recorded.

Step 3. RIC Subscription Delete procedure initiated by DUT (Near-RT RIC) is validated as per clause 5.2.2.1.1.3.2 Steps 3 and 4.

Step 4: Validation is done to confirm that RIC SUBSCRIPTION DELETE message has the same RIC Request ID and RAN Function ID as received in RIC SUBSCRIPTION DELETE REQUIRED message.

Expected results

1. The test is considered passed if
2. Validations in test procedure Step 3 and Step 4 are successful.
3. Step 2 E2 logs recorded in the Test Simulator (E2 Node) are aligned with the message flow specified in "O-RAN WG3: E2 Application Protocol" [2] clause 8.2.2A.2

#### Test Cases for RIC Indication procedure

##### RIC Indication procedure for REPORT Service (positive)

###### Test Purpose

The purpose of this test case is to test the RIC Indication procedure of Near-RT RIC as specified in [2] clause 8.2.3. This test is designed to be agnostic to the E2 Service Model and RAN functions. The RAN Function and RAN Function definition to which RIC Subscribes are predefined between the DUT (Near-RT RIC) and the Test Simulator (E2 Node). The expected outcome of this test is successful reception of the RIC INDICATION message associated with a REPORT Service from the E2 Node.

Test cases for RIC Indication procedures for specific E2 Service Models and functionalities are defined in sections dedicated for Service Models. These will reuse initial conditions, test procedures, and validation steps specified in this section for base E2AP functionality.

This testcase is mandatory if the DUT (Near-RT RIC) claims to support E2AP RIC Indication procedure.

###### Test Entrance Criteria

1. The Test Simulator (E2 Node) has the functionality to initiate E2 Setup procedure and accept RIC Subscription procedure for REPORT Service.
2. The DUT (Near-RT RIC) and Test Simulator (E2 Node) support RIC Indication procedure.
3. The RAN Function to which RIC subscribes and the RAN Function definition are predefined between the DUT (Near-RT RIC) and the Test Simulator (E2 Node), see clause 5.2.2.1.
4. Test Simulator has functionality to trigger RIC Indication procedure.

###### Test Methodology

Initial conditions

1. An SCTP association is successfully established between the two SCTP endpoints of the E2 interface
   (SCTP initiation procedure has taken place before or is taking place with execution of this test case).
2. The DUT (Near-RT RIC) has already successfully completed E2 Setup procedure initiated from the Test Simulator (E2 Node) with the agreed RAN Function been added.
3. DUT (Near-RT RIC) has already initiated a RIC Subscription procedure to the Test Simulator (E2 Node) and received a successful response, at least one successful action associated with REPORT Service exists. The RIC Event Trigger Definition and RIC Action Definition IEs specific to E2 Service Models are not defined in the scope of this test.

Procedure

Step 1. Test Simulator sends RIC INIDACTION message to the DUT (Near-RT RIC) as specified in [2] clause 9.1.1.7 with parameters shown in table below. The sent and received E2 messages are recorded.

Table - RIC INDICATION IE Profile for this test message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE/Group Name** | **Reference** | **Configuration/ Value** |
| Message Type | [2] 9.2.3 | RIC INDICATION |
| RIC Request ID | [2] 9.2.7 | Same as the RIC Request ID received in the corresponding RIC subscription procedure |
| RAN Function ID | [2] 9.2.8 | Same as the RAN Function ID indicated for the agreed RAN Function during E2 Setup procedure |
| RIC Action ID | [2] 9.2.10 | Same as the RIC Action ID received in the corresponding RIC subscription procedure |
| RIC Indication SN | [2] 9.2.14 | Not used.  Sequence Number is optional and not used in this test case |
| RIC Indication Type | [2] 9.2.15 | Report |
| RIC Indication Header | [2] 9.2.17 | IEs defined in RAN Function specific E2 Service Model [4] [5] [6] is outside the scope of this test. |
| RIC Indication Message | [2] 9.2.16 | IEs defined in RAN Function specific E2 Service Model [4] [5] [6] is outside the scope of this test. |
| RIC Call process ID | [2] 9.2.18 | Not applicable.  This IE shall only be used when RIC INDICATION message is in response to RIC Subscription with RIC Action Type IE as "Insert" |

</div>

Expected results

The test is considered passed if

1. The DUT (Near-RT RIC) correctly receives the RIC INDICATION message from the Test Simulator.
2. E2 logs recorded in the Test Simulator (E2 Node) are aligned with the message flow specified in [2] clause 8.2.3.2.

#### Test Cases for RIC Control procedure

##### RIC Control procedure for CONTROL Service (positive)

###### Test Purpose

The purpose of this test case is to test the RIC Control procedure of Near-RT RIC as specified in [2] clause 8.2.4. This test is designed to be agnostic to the E2 Service Model and RAN functions. The RAN Function and RAN Function definition to which RIC Subscribes are predefined between the DUT (Near-RT RIC) and the Test Simulator (E2 Node). The expected outcome of this test is successful RIC Control procedure from Near-RT RIC to the E2 Node.

Test cases for RIC Control procedures for specific E2 Service Models and functionalities are defined in sections dedicated for Service Models. These will reuse initial conditions, test procedures, and validation steps specified in this section for base E2AP functionality.

This testcase is mandatory if the DUT (Near-RT RIC) claims to support E2AP RIC Control procedure.

###### Test Entrance Criteria

1. The Test Simulator (E2 Node) has the functionality to initiate E2 Setup procedure
2. The DUT (Near-RT RIC) and Test Simulator (E2 Node) support RIC Control procedure.
3. The RAN Function are predefined between the DUT (Near-RT RIC) and the Test Simulator (E2 Node), see clause 5.2.2.1.1.

###### Test Methodology

Initial conditions

1. An SCTP association is successfully established between the two SCTP endpoints of the E2 interface
   (SCTP initiation procedure has taken place before or is taking place with execution of this test case).
2. The DUT (Near-RT RIC) has already successfully completed E2 Setup procedure initiated from the Test Simulator (E2 Node) with the agreed RAN Function been added.

Procedure

Step 1. Initiate appropriate actions in DUT (Near-RT RIC) to trigger RIC Control procedure to the agreed RAN Function.

Step 2. At the Test Simulator the received and transmitted E2 messages are recorded.

Step 3. Received RIC CONTROL REQUEST message defined in [2] clause 9.1.1.8 is validated for the following E2AP information elements defined.

Table - Validation for RIC CONTROL REQUEST message

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **IE/Group Name** | **Reference** | **Presence** | **Validation** |
| Message Type | [2] 9.2.3 | M | RIC CONTROL REQUEST |
| RIC Request ID | [2] 9.2.7 | M | Valid RIC Request ID |
| RAN Function ID | [2] 9.2.8 | M | Same as the RAN Function ID indicated for the agreed RAN Function during E2 Setup procedure |
| RIC Call Process ID | [2] 9.2.18 | O | Not applicable.  This IE shall only be used when RIC CONTROL message is in response to RIC Subscription with RIC Action Type IE as "Insert" |
| RIC Control Header | [2] 9.2.20 | M | IEs defined in RAN Function specific E2 Service Model [4] [5] [6] |
| RIC Control Message | [2] 9.2.19 | M | IEs defined in RAN Function specific E2 Service Model [4] [5] [6] |
| RIC Control Ack Request | [2] 9.2.21 | O | Ack |

</div>

Step 4. If validation in step 3 is successful RIC CONTROL ACKNOWLEDGE message specified in [2] clause 9.1.1.9 is sent to the DUT (Near-RT RIC) with parameters shown in table below.

Table - Parameters in RIC CONTROL ACKNOWLEDGE message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE/Group Name** | **Reference** | **Semantics description** |
| Message Type | [2] 9.2.3 | RIC CONTROL ACKNOWLEDGE |
| RIC Request ID | [2] 9.2.7 | Received RIC Request ID in RIC CONTROL REQUEST |
| RAN Function ID | [2] 9.2.8 | Same as the RAN Function ID indicated for the agreed RAN Function during E2 Setup procedure |
| RIC Call process ID | [2] 9.2.18 | Not applicable.  This IE shall only be used when RIC CONTROL REQUEST message is in response to RIC Subscription with RIC Action Type IE as "Insert" |
| RIC Control Outcome | [2] 9.2.25 | Not used |

</div>

Expected results

The test is considered passed if

1. Validation in test procedure step 3 is successful.
2. E2 logs recorded in the Test Simulator (E2 Node) are aligned with the message flow specified in [2] clause 8.2.4.2.

### E2AP Functional Procedures for E2SM-KPM

#### Test Cases for RIC Subscription E2SM-KPM

##### RIC Subscription procedure with REPORT Service Style 1, Single Action Format Type 1 (positive)

###### Test Purpose

The purpose of this test case is to test the RIC Subscription procedure to RAN function "O-RAN-E2SM-KPM" Report Style 1 as specified in [5] clause 7.4.1 The expected outcome is successful RIC Subscription by Near-RT RIC.

This testcase is conditional mandatory if the DUT claims to support RIC Subscription procedure for RAN function "O-RAN-E2SM-KPM" Report Style 1 and Action Format Type 1.

###### Test Entrance Criteria

1. The Test Simulator (E2 Node) has the functionality to initiate E2 Setup procedure.
2. The DUT (Near-RT RIC) and Test Simulator (E2 Node) support RIC Subscription procedure.
3. The RAN Function to which RIC subscribes and the RAN Function definition are predefined between the DUT (Near RT RIC) and the Test Simulator (E2 Node). The agreed RAN Function Definition IE defined in [5] clause 8.2.2.1 is shown in table below.

Table - E2SM KPM Function Definition Profile IE profile

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE Name** | **Reference** | **Configuration / Value** |
| RAN Function Name | [5] 8.3.1 |  |
| >RAN Function Short Name | [5] 8.3.1 | ORAN-E2SM-KPM |
| >RAN Function Service Model OID | [5] 8.3.1 | 1.3.6.1.4.1.53148.1.2.2 |
| > RAN Function Description | [5] 8.3.1 | KPM Monitor |
| Sequence of Event Trigger styles |  |  |
| >RIC Event Trigger Style Type | [5] 8.3.3 | 1 |
| >RIC Event Trigger Style Name | [5] 8.3.4 | Periodic Report |
| >RIC Event Trigger Format Type | [5] 8.3.5 | 1 |
| Sequence of Report styles |  |  |
| > RIC Report Style Type | [5] 8.3.3 | 1 |
| > RIC Report Style Name | [5] 8.3.4 | E2 Node Measurement |
| > RIC Report Action Format Type | [5] 8.3.5 | 1 |
| > Sequence of Measurement Info for Action |  |  |
| >> Measurement Type Name | [5] 8.3.9 | Name of one Measurement agreed for this test |
| >RIC Indication Header Format | [5] 8.3.5 | 1 |
| >RIC Indication Message Format | [5] 8.3.5 | 1 |

</div>

1. DUT (Near-RT RIC) has functionality to trigger subscription to RAN function "O-RAN-E2SM-KPM" Report Style 1, for the agreed measurement information.

###### Test Methodology

Initial conditions

1. An SCTP association is successfully established between the two SCTP endpoints of the E2 interface
   (SCTP initiation procedure has taken place before or is taking place with execution of this test case).
2. The DUT (Near-RT RIC) has already successfully completed E2 Setup Request initiated from the Test Simulator (E2 Node) with the agreed RAN Function Definition IE defined in [5] clause 8.2.2.1.

Procedure

Step 1. The procedures and validations for E2AP specified in Steps 1 to 3 of clause 5.2.2.1.1.3.2 applies with agreed RAN Function Definition IE defined in clause 5.2.3.1.1.2.

Step 2. E2SM-KPM information elements in RIC SUBSCRIPTION REQUEST message are validated as per table below.

Table - Validation for E2SM-KPM IEs in RIC SUBSCRIPTION REQUEST message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **E2SM-KPM IE/Group Name** | **Reference** | **Validation** |
| RIC Action Definition IE | [5] 8.2.1.2 |  |
| >RIC Style Type | [5] 8.2.1.2 | 1 |
| >> E2SM-KPM Action Definition Format1 | [5] 8.2.1.2.1 |  |
| >>> Measurement Name | [5] 8.3.9 | Name of one Measurement agreed for this test |
| >>> Measurement ID | [5] 8.3.10 | Valid ID |
| >>Label Information | [5] 8.3.11 | No Label |
| >>Granularity Period | [5] 8.3.8 | (1..4294967295) |
| RIC Event Trigger Definition IE | [5] 8.2.1.1 |  |
| >> E2SM-KPM Event Trigger Definition Format 1 | [5] 8.2.1.1.1 |  |
| >> Reporting Period | [5] 8.2.1.1.1 | (1..4294967295) |

</div>

.

Step 3. If validation in Step 1 and Step 2 are successful RIC SUBSCRIPTION RESPONSE is sent as per clause

5.2.2.1.1.3.2, Step 4.

Expected results

The same expected results specified in clause 5.2.2.1.1.3.3 applies with the additional validation in step 2 above.

##### RIC Subscription procedure with REPORT Service Style 2, Single Action Format Type 2 (positive)

###### Test Purpose

The purpose of this test case is to test the RIC Subscription procedure with RAN function "O-RAN-E2SM-KPM" Report Style 2 as specified in [5] clause 7.4.3. The expected outcome is successful RIC Subscription by Near-RT RIC.

This testcase is conditional mandatory if the DUT claims to support RIC Subscription procedure for RAN function "O-RAN-E2SM-KPM" Report Style 2.

###### Test Entrance Criteria

1. The Test Simulator (E2 Node) has the functionality to initiate E2 Setup procedure
2. The DUT (Near-RT RIC) and Test Simulator (E2 Node) support RIC Subscription procedure.
3. The RAN Function to which RIC subscribes and the RAN Function definition are predefined between the DUT (Near-RT RIC) and the Test Simulator (E2 Node). The agreed RAN Function Definition IE defined in [5] clause 8.2.2.1 is shown in table below.

Table - E2SM KPM Function Definition IE profile

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE Name** | **Reference** | **Configuration / Value** |
| RAN Function Name | [5] 8.3.1 |  |
| >RAN Function Short Name | [5] 8.3.1 | ORAN-E2SM-KPM |
| >RAN Function Service Model OID | [5] 8.3.1 | 1.3.6.1.4.1.53148.1.1.2.2 |
| > RAN Function Description | [5] 8.3.1 | KPM Monitor |
| Sequence of Event Trigger styles |  |  |
| >RIC Event Trigger Style Type | [5] 8.3.3 | 1 |
| >RIC Event Trigger Style Name | [5] 8.3.4 | Periodic Report |
| >RIC Event Trigger Format Type | [5] 8.3.5 | 1 |
| Sequence of Report styles |  |  |
| > RIC Report Style Type | [5] 8.3.3 | 2 |
| > RIC Report Style Name | [5] 8.3.4 | E2 Node Measurement for a single UE |
| > RIC Report Action Format Type | [5] 8.3.5 | 2 |
| > Sequence of Measurement Info for Action |  |  |
| >> Measurement Type Name | [5] 8.3.9 | Name of one Measurement agreed for this test |
| >RIC Indication Header Format | [5] 8.3.5 | 1 |
| >RIC Indication Message Format | [5] 8.3.5 | 1 |

</div>

1. DUT (Near-RT RIC) has functionality to trigger subscription to RAN function "O-RAN-E2SM-KPM" Report Style 2, for the agreed measurement information.

###### Test Methodology

Initial conditions

1. An SCTP association is successfully established between the two SCTP endpoints of the E2 interface
   (SCTP initiation procedure has taken place before or is taking place with execution of this test case).
2. The DUT (Near-RT RIC) has already successfully completed E2 Setup Request initiated from the Test Simulator (E2 Node) with the agreed RAN Function Definition IE defined in [5] clause 8.2.2.1.

Procedure

Step 1. The procedures and validations for E2AP specified in Steps 1 to 3 of clause 5.2.2.1.1.3.2 applies with agreed RAN Function Definition IE defined in clause 5.2.3.1.1.2.

Step 2. E2SM-KPM information elements in RIC SUBSCRIPTION REQUEST message are validated as per table

Table - Validation for E2SM-KPM IEs in RIC SUBSCRIPTION REQUEST message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **E2SM-KPM IE/Group Name** | **Reference** | **Validation** |
| RIC Action Definition IE | [5] 8.2.1.2 |  |
| >RIC Style Type | [5] 8.2.1.2 |  |
| >> E2SM-KPM Action Definition Format2 | [5] 8.2.1.2.2 |  |
| >>>UE ID | [5] 8.3.24 | Valid UE ID pointing to a specific UE of interest |
| >>>>> Measurement Name | [5] 8.3.9 | Name of one Measurement agreed for this test |
| >>>>> Measurement ID | [5] 8.3.10 | (1.. 65535) |
| >>>>> Label Information | [5] 8.3.11 | No Label |
| >>>> Granularity Period | [5] 8.3.8 | Use the same value as Reporting Period |
| >>>> Cell Global ID | [5] 8.3.20 | Not used |
| RIC Event Trigger Definition IE | [5] 8.2.1.1 |  |
| > E2SM-KPM Event Trigger Definition Format 1 | [5] 8.2.1.1.1 |  |
| >> Reporting Period | [5] 8.2.1.1.1 | (1..4294967295) |

</div>

Step 3. If validation in Step 1 and Step 2 are successful RIC SUBSCRIPTION RESPONSE is sent to DUT (Near-RT RIC) as per clause 5.2.2.1.1.3.2, Step 4.

Expected results

The same expected results specified in clause 5.2.2.1.1.3.3 applies with the additional validation in 5.2.3.1.2.3.2 Step 2.

##### RIC Subscription procedure with REPORT Service Style 1, Single Action Format Type 1 (negative)

###### Test Purpose

The purpose of this test case is to test the RIC Subscription procedure to RAN function "O-RAN-E2SM-KPM" Report Style 1 as specified in [5] clause 7.4.1 The expected outcome is that Near-RT RIC can receive and process unsuccessful RIC Subscription from E2 node.

This testcase is conditional mandatory if the DUT claims to support unsuccessful operation of RIC Subscription procedure for RAN function "O-RAN-E2SM-KPM" Report Style 1 and Action Format Type 1.

###### Test Entrance Criteria

1. The Test Simulator (E2 Node) has the functionality to initiate E2 Setup procedure.
2. The DUT (Near-RT RIC) and Test Simulator (E2 Node) support RIC Subscription procedure.
3. The RAN Function to which the DUT (Near RT RIC) subscribes and the RAN Function definition are predefined between the DUT (Near RT RIC) and the Test Simulator (E2 Node). The agreed RAN Function Definition IE defined in [5] clause 8.2.2.1 is shown in table below.

Table 3- E2SM KPM Function Definition Profile IE profile

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE Name** | **Reference** | **Configuration / Value** |
| RAN Function Name | [5] 8.3.1 |  |
| >RAN Function Short Name | [5] 8.3.1 | ORAN-E2SM-KPM |
| >RAN Function Service Model OID | [5] 8.3.1 | 1.3.6.1.4.1.53148.1.2.2 |
| > RAN Function Description | [5] 8.3.1 | KPM Monitor |
| Sequence of Event Trigger styles |  |  |
| >RIC Event Trigger Style Type | [5] 8.3.3 | 1 |
| >RIC Event Trigger Style Name | [5] 8.3.4 | Periodic Report |
| >RIC Event Trigger Format Type | [5] 8.3.5 | 1 |
| Sequence of Report styles |  |  |
| > RIC Report Style Type | [5] 8.3.3 | 1 |
| > RIC Report Style Name | [5] 8.3.4 | E2 Node Measurement |
| > RIC Report Action Format Type | [5] 8.3.5 | 1 |
| > Sequence of Measurement Info for Action |  |  |
| >> Measurement Type Name | [5] 8.3.9 | Name of one Measurement agreed for this test |
| >> Measurement Type ID | [5] 8.3.10 | Optional IE; Test Simulator may configure this IE with one Measurement Type Name |
| >RIC Indication Header Format | [5] 8.3.5 | 1 |
| >RIC Indication Message Format | [5] 8.3.5 | 1 |

</div>

1. DUT (Near-RT RIC) has functionality to trigger subscription to RAN function "O-RAN-E2SM-KPM" Report Style 1, for the agreed measurement information.

###### Test Methodology

Initial conditions

1. An SCTP association is successfully established between the two SCTP endpoints of the E2 interface(SCTP initiation procedure has taken place before or is taking place with execution of this test case).
2. The DUT (Near-RT RIC) has already successfully completed E2 Setup Request initiated from the Test Simulator (E2 Node) with the agreed RAN Function Definition IE defined in [5] clause 8.2.2.1.

Procedure

Step 1. The procedures and validations for E2AP specified in Steps 1 to 3 of clause 5.2.2.1.1.3.2 applies with agreed RAN Function Definition IE defined in clause 5.2.3.1.3.2.

Step 2. E2SM-KPM information elements in RIC SUBSCRIPTION REQUEST message are validated as per table below.

Table 3- Validation for E2SM-KPM IEs in RIC SUBSCRIPTION REQUEST message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **E2SM-KPM IE/Group Name** | **Reference** | **Validation** |
| RIC Action Definition IE | [5] 8.2.1.2 |  |
| >RIC Style Type | [5] 8.2.1.2 | 1 |
| >> E2SM-KPM Action Definition Format1 | [5] 8.2.1.2.1 |  |
| >>>CHOICE *Measurement Type* |  | Select one item of the two parameters below to subscribe if "Measurement ID" is configured during E2 Setup procedure; Otherwise configure "Measurement Name" below. |
| >>>> Measurement Name | [5] 8.3.9 | Name of one Measurement agreed for this test |
| >>>>Measurement ID | [5] 8.3.10 | The parameter may be configured during E2 Setup Procedure. |
| >>>Label Information | [5] 8.3.11 | If "Measurement Type Name" is a cell level parameter, the value is set to "No Label";  If "Measurement Type Name" is a slice level parameter, the value is set to "Slice ID". |
| >>>Granularity Period | [5] 8.3.8 | (1..4294967295) |
| >>> Cell Global ID | [5] 8.3.20 | Mandatory present if the subscribed Measurement above points to a specific cell. |
| RIC Event Trigger Definition IE | [5] 8.2.1.1 |  |
| >> E2SM-KPM Event Trigger Definition Format 1 | [5] 8.2.1.1.1 |  |
| >>>Reporting Period | [5] 8.2.1.1.1 | (1..4294967295) |

</div>

.

Step 3. Upon receiving RIC SUBSCRIPTION REQUEST, Test Simulator (E2 Node) shall send RIC SUBSCRIPTION FAILURE with parameters shown in table below.

Table 3-3 IEs in RIC SUBSCRIPTION FAILURE message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE/Group Name** | **Reference** | **Value** |
| Message Type | [2] 9.2.3 | RIC SUBSCRIPTION RESPONSE |
| RIC Request ID | [2] 9.2.7 | Same RIC Request ID in RIC SUBSCRIPTION REQUEST |
| RAN Function ID | [2] 9.2.8 | Same RAN Function ID in RIC SUBSCRIPTION REQUEST |
| Cause | [2] 9.2.1 | DUT responds Failure with reasonable cause,eg. RIC services->RIC Request->Function resource limit. |
| Criticality Diagnostics | [2] 9.2.2 |  |

</div>

Expected results

The test is considered passed if

1. Validation in test procedure step 2 is successful.
2. The DUT could receive the RIC SUBSCRIPTION FAILURE message sent by E2 Node successfully and decode the IEs in Table 5.2.3.1.3-3. DUT doesn't initiate Error Indication procedure after receiving the RIC SUBSCRIPTION FAILURE message.
3. E2 logs recorded in the Test Simulator (E2 Node) are aligned with the message flow specified in [2] clause 8.2.1.3.

##### RIC Subscription procedure with REPORT Service Style 2, Single Action Format Type 2 (negative)

###### Test Purpose

The purpose of this test case is to test the RIC Subscription procedure to RAN function "O-RAN-E2SM-KPM" Report Style 1 as specified in [5] clause 7.4.1 The expected outcome is that Near-RT RIC can receive and process unsuccessful RIC Subscription from E2 node.

This testcase is conditional mandatory if the DUT claims to support unsuccessful operation of RIC Subscription procedure for RAN function "O-RAN-E2SM-KPM" Report Style 2 and Action Format Type 2.

###### Test Entrance Criteria

1. The Test Simulator (E2 Node) has the functionality to initiate E2 Setup procedure.
2. The DUT (Near-RT RIC) and Test Simulator (E2 Node) support RIC Subscription procedure.
3. The RAN Function to which the DUT (Near RT RIC) subscribes and the RAN Function definition are predefined between the DUT (Near RT RIC) and the Test Simulator (E2 Node). The agreed RAN Function Definition IE defined in [5] clause 8.2.2.1 is shown in table below.

Table 4- E2SM KPM Function Definition Profile IE profile

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE Name** | **Reference** | **Configuration / Value** |
| RAN Function Name | [5] 8.3.1 |  |
| >RAN Function Short Name | [5] 8.3.1 | ORAN-E2SM-KPM |
| >RAN Function Service Model OID | [5] 8.3.1 | 1.3.6.1.4.1.53148.1.2.2 |
| > RAN Function Description | [5] 8.3.1 | KPM Monitor |
| Sequence of Event Trigger styles |  |  |
| >RIC Event Trigger Style Type | [5] 8.3.3 | 1 |
| >RIC Event Trigger Style Name | [5] 8.3.4 | Periodic Report |
| >RIC Event Trigger Format Type | [5] 8.3.5 | 1 |
| Sequence of Report styles |  |  |
| > RIC Report Style Type | [5] 8.3.3 | 2 |
| > RIC Report Style Name | [5] 8.3.4 | E2 Node Measurement for a single UE |
| > RIC Report Action Format Type | [5] 8.3.5 | 2 |
| > Sequence of Measurement Info for Action |  |  |
| >> Measurement Type Name | [5] 8.3.9 | Name of one Measurement agreed for this test |
| >> Measurement Type ID | [5] 8.3.10 | Optional IE; Test Simulator may configure this IE with one Measurement Type Name |
| >RIC Indication Header Format | [5] 8.3.5 | 1 |
| >RIC Indication Message Format | [5] 8.3.5 | 1 |

</div>

1. DUT (Near-RT RIC) has functionality to trigger subscription to RAN function "O-RAN-E2SM-KPM" Report Style 2, for the agreed measurement information.

###### Test Methodology

Initial conditions

1. An SCTP association is successfully established between the two SCTP endpoints of the E2 interface(SCTP initiation procedure has taken place before or is taking place with execution of this test case).
2. The DUT (Near-RT RIC) has already successfully completed E2 Setup Request initiated from the Test Simulator (E2 Node) with the agreed RAN Function Definition IE defined in [5] clause 8.2.2.1.

Procedure

Step 1. The procedures and validations for E2AP specified in Steps 1 to 3 of clause 5.2.2.1.1.3.2 applies with agreed RAN Function Definition IE defined in clause 5.2.3.1.4.2.

Step 2. E2SM-KPM information elements in RIC SUBSCRIPTION REQUEST message are validated as per table below.

Table 4- Validation for E2SM-KPM IEs in RIC SUBSCRIPTION REQUEST message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **E2SM-KPM IE/Group Name** | **Reference** | **Validation** |
| RIC Action Definition IE | [5] 8.2.1.2 |  |
| >RIC Style Type | [5] 8.2.1.2 |  |
| >> E2SM-KPM Action Definition Format2 | [5] 8.2.1.2.2 |  |
| >>>UE ID | [5] 8.3.24 | Valid UE ID pointing to a specific UE of interest |
| >>>CHOICE *Measurement Type* |  | Select one item of the two parameters below to subscribe if "Measurement ID" is configured during E2 Setup procedure; Otherwise configure "Measurement Name" below. |
| >>>> Measurement Name | [5] 8.3.9 | Name of one Measurement agreed for this test |
| >>>> Measurement ID | [5] 8.3.10 | The parameter may be configured during E2 Setup Procedure. |
| >>> Label Information | [5] 8.3.11 | If "Measurement Type Name" is a UE level parameter, Value is set to "No Label"; If "Measurement Type Name" is a 5QI level parameter, the value is set to "5QI". |
| >>>> Granularity Period | [5] 8.3.8 | Use the same value as Reporting Period |
| >>>> Cell Global ID | [5] 8.3.20 | The cell which the subcribed UE belongs to |
| RIC Event Trigger Definition IE | [5] 8.2.1.1 |  |
| > E2SM-KPM Event Trigger Definition Format 1 | [5] 8.2.1.1.1 |  |
| >> Reporting Period | [5] 8.2.1.1.1 | (1..4294967295) |

</div>

Step 3. Upon receiving RIC SUBSCRIPTION REQUEST, Test Simulator (E2 Node) shall send RIC SUBSCRIPTION FAILURE with parameters shown in table below.

Table 4-3 IEs in RIC SUBSCRIPTION FAILURE message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE/Group Name** | **Reference** | **Value** |
| Message Type | [2] 9.2.3 | RIC SUBSCRIPTION RESPONSE |
| RIC Request ID | [2] 9.2.7 | Same RIC Request ID in RIC SUBSCRIPTION REQUEST |
| RAN Function ID | [2] 9.2.8 | Same RAN Function ID in RIC SUBSCRIPTION REQUEST |
| Cause | [2] 9.2.1 | DUT responds Failure with reasonable cause,eg. RIC services->RIC Request->Function resource limit. |
| Criticality Diagnostics | [2] 9.2.2 |  |

</div>

Expected results

The test is considered passed if

1. Validation in test procedure step 2 is successful.
2. The DUT could receive the RIC SUBSCRIPTION FAILURE message sent by E2 Node successfully and decode the IEs in Table 5.2.3.1.4-3. DUT doesn't initiate Error Indication procedure after receiving the RIC SUBSCRIPTION FAILURE message.
3. E2 logs recorded in the Test Simulator (E2 Node) are aligned with the message flow specified in [2] clause 8.2.1.3.

##### RIC Subscription procedure with REPORT Service Style 1, Single Action Format Type 1 for multiple measurements (positive)

###### Test Purpose

The purpose of this test case is to test the RIC Subscription procedure with multiple KPM measurement items to RAN function "O-RAN-E2SM-KPM" Report Style 1 as specified in [5] clause 7.4.1. The expected outcome is successful RIC Subscription by Near-RT RIC.

This testcase is conditional mandatory if the DUT claims to support RIC Subscription procedure for RAN function "O-RAN-E2SM-KPM" Report Style 1 and Action Format Type 1.

###### Test Entrance Criteria

1. The Test Simulator (E2 Node) has the functionality to initiate E2 Setup procedure.
2. The DUT (Near-RT RIC) and Test Simulator (E2 Node) support RIC Subscription procedure.
3. The RAN Function to which RIC subscribes and the RAN Function definition are predefined between the DUT (Near RT RIC) and the Test Simulator (E2 Node). The agreed RAN Function Definition IE defined in [5] clause 8.2.2.1 is shown in table below.

Table - E2SM KPM Function Definition Profile IE profile

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE Name** | **Reference** | **Configuration / Value** |
| RAN Function Name | [5] 8.3.1 |  |
| >RAN Function Short Name | [5] 8.3.1 | ORAN-E2SM-KPM |
| >RAN Function Service Model OID | [5] 8.3.1 | 1.3.6.1.4.1.53148.1.2.2 |
| > RAN Function Description | [5] 8.3.1 | KPM Monitor |
| Sequence of Event Trigger styles |  |  |
| >RIC Event Trigger Style Type | [5] 8.3.3 | 1 |
| >RIC Event Trigger Style Name | [5] 8.3.4 | Periodic Report |
| >RIC Event Trigger Format Type | [5] 8.3.5 | 1 |
| Sequence of Report styles |  |  |
| > RIC Report Style Type | [5] 8.3.3 | 1 |
| > RIC Report Style Name | [5] 8.3.4 | E2 Node Measurement |
| > RIC Report Action Format Type | [5] 8.3.5 | 1 |
| > Sequence of Measurement Info for Action |  | At least 2 items |
| >> Measurement Type Name | [5] 8.3.9 | Name of Measurement agreed for this test |
| >RIC Indication Header Format | [5] 8.3.5 | 1 |
| >RIC Indication Message Format | [5] 8.3.5 | 1 |

</div>

1. DUT (Near-RT RIC) has functionality to trigger subscription to RAN function "O-RAN-E2SM-KPM" Report Style 1, for at least two agreed measurement information.

###### Test Methodology

Initial conditions

1. An SCTP association is successfully established between the two SCTP endpoints of the E2 interface
   (SCTP initiation procedure has taken place before or is taking place with execution of this test case).
2. The DUT (Near-RT RIC) has already successfully completed E2 Setup Request initiated from the Test Simulator (E2 Node) with the agreed RAN Function Definition IE defined in [5] clause 8.2.2.1.

Procedure

Step 1. Initiate appropriate actions in DUT (Near-RT RIC) to trigger RIC Subscription procedure to the agreed RAN Function.

Step 2. At the Test Simulator the received and transmitted E2 messages are recorded.

Step 3. Received RIC SUBSCRIPTION REQUEST message defined in [2] clause 9.1.1.1 is validated for the following E2AP information elements defined.

Table 5- Validation for RIC SUBSCRIPTION REQUEST message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE/Group Name** | **Reference** | **Validation** |
| Message Type | [2] 9.1.1.1 | RIC SUBSCRIPTION REQUEST |
| RIC Request ID | [2] 9.1.1.1 | Valid RIC Request ID |
| RAN Function ID | [2] 9.2.8 | Should be same as RAN Function ID indicated for the agreed RAN Function during E2 Setup procedure |
| RIC Subscription Details |  |  |
| >RIC Event Trigger Definition | [2] 9.2.9 | Validation for IEs defined in RAN Function specific E2 Service Model [4] [5] [6] is outside the scope of this test. |
| >Sequence of Actions |  |  |
| >>RIC Action ID | [2] 9.2.10 | Valid RIC Action ID, INTEGER (0..255) |
| >>RIC Action Type | [2] 9.2.11 | Valid RIC Action Type, ENUMERATED (Insert, Report, Policy, ...) |
| >>RIC Action Definition | [2] 9.2.12 | Validation for IEs defined in RAN Function specific E2 Service Model [4] [5] [6] is outside the scope of this test. |

</div>

Step 4. E2SM-KPM information elements in RIC SUBSCRIPTION REQUEST message are validated as per table below. Measurement Information List shall include at least two measurement items.

Table -3 Validation for E2SM-KPM IEs in RIC SUBSCRIPTION REQUEST message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **E2SM-KPM IE/Group Name** | **Reference** | **Validation** |
| RIC Action Definition IE | [5] 8.2.1.2 |  |
| >RIC Style Type | [5] 8.2.1.2 | 1 |
| >> E2SM-KPM Action Definition Format1 | [5] 8.2.1.2.1 |  |
| >> Measurement Information List |  | At least 2 items |
| >>> Measurement Name | [5] 8.3.9 | Name of one Measurement agreed for this test |
| >>> Measurement ID | [5] 8.3.10 | Valid ID |
| >>Label Information | [5] 8.3.11 | If "Measurement Type Name" is a cell level parameter, the value is set to "No Label"; If "Measurement Type Name" is a slice level parameter, the value is set to "Slice ID". |
| >>Granularity Period | [5] 8.3.8 | (1..4294967295) |
| RIC Event Trigger Definition IE | [5] 8.2.1.1 |  |
| >> E2SM-KPM Event Trigger Definition Format 1 | [5] 8.2.1.1.1 |  |
| >> Reporting Period | [5] 8.2.1.1.1 | (1..4294967295) |

</div>

.

Step 5. If validation in step 3 and step 4 is successful RIC SUBSCRIPTION RESPONSE message specified in [2] clause 9.2.1.1 is sent to the DUT (Near-RT RIC) with parameters shown in table below.

**Table 5.2.3.1.5-4 Parameters in RIC SUBSCRIPTION RESPONSE message**

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE/Group Name** | **IE type and reference** | **Semantics description** |
| Message Type | [2] 9.2.3 | RIC SUBSCRIPTION RESPONSE |
| RIC Request ID | [2] 9.2.7 | Received RIC Request ID |
| RAN Function ID | [2] 9.2.8 | Received RAN Function ID |
| RIC Actions Admitted List |  |  |
| >RIC Action ID | [2] 9.2.10 | Received Action ID requested included in *RIC Actions Admitted List* IE. |

</div>

Expected results

The test is considered passed if

1. Validation in test procedure step 3 and step 4 is successful.
2. E2 logs recorded in the Test Simulator (E2 Node) are aligned with the message flow specified in [2] clause 8.2.1.2.

##### RIC Subscription procedure with REPORT Service Style 2, Single Action Format Type 2 for multiple measurements (positive)

###### Test Purpose

The purpose of this test case is to test the RIC Subscription procedure with multiple KPM measurement items to RAN function "O-RAN-E2SM-KPM" Report Style 2 as specified in [5] clause 7.4.3. The expected outcome is successful RIC Subscription by Near-RT RIC.

This testcase is conditional mandatory if the DUT claims to support RIC Subscription procedure for RAN function "O-RAN-E2SM-KPM" Report Style 2.

###### Test Entrance Criteria

1. The Test Simulator (E2 Node) has the functionality to initiate E2 Setup procedure
2. The DUT (Near-RT RIC) and Test Simulator (E2 Node) support RIC Subscription procedure.
3. The RAN Function to which RIC subscribes and the RAN Function definition are predefined between the DUT (Near-RT RIC) and the Test Simulator (E2 Node). The agreed RAN Function Definition IE defined in [5] clause 8.2.2.1 is shown in table below.

Table 6- E2SM KPM Function Definition IE profile

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE Name** | **Reference** | **Configuration / Value** |
| RAN Function Name | [5] 8.3.1 |  |
| >RAN Function Short Name | [5] 8.3.1 | ORAN-E2SM-KPM |
| >RAN Function Service Model OID | [5] 8.3.1 | 1.3.6.1.4.1.53148.1.1.2.2 |
| > RAN Function Description | [5] 8.3.1 | KPM Monitor |
| Sequence of Event Trigger styles |  |  |
| >RIC Event Trigger Style Type | [5] 8.3.3 | 1 |
| >RIC Event Trigger Style Name | [5] 8.3.4 | Periodic Report |
| >RIC Event Trigger Format Type | [5] 8.3.5 | 1 |
| Sequence of Report styles |  |  |
| > RIC Report Style Type | [5] 8.3.3 | 2 |
| > RIC Report Style Name | [5] 8.3.4 | E2 Node Measurement for a single UE |
| > RIC Report Action Format Type | [5] 8.3.5 | 2 |
| > Sequence of Measurement Info for Action |  | At least two items |
| >> Measurement Type Name | [5] 8.3.9 | Name of Measurement agreed for this test |
| >RIC Indication Header Format | [5] 8.3.5 | 1 |
| >RIC Indication Message Format | [5] 8.3.5 | 1 |

</div>

1. DUT (Near-RT RIC) has functionality to trigger subscription to RAN function "O-RAN-E2SM-KPM" Report Style 2, for at least two agreed measurement information.

###### Test Methodology

Initial conditions

1. An SCTP association is successfully established between the two SCTP endpoints of the E2 interface
   (SCTP initiation procedure has taken place before or is taking place with execution of this test case).
2. The DUT (Near-RT RIC) has already successfully completed E2 Setup Request initiated from the Test Simulator (E2 Node) with the agreed RAN Function Definition IE defined in [5] clause 8.2.2.1.

Procedure

Step 1. Initiate appropriate actions in DUT (Near-RT RIC) to trigger RIC Subscription procedure to the agreed RAN Function.

Step 2. At the Test Simulator the received and transmitted E2 messages are recorded.

Step 3. Received RIC SUBSCRIPTION REQUEST message defined in [2] clause 9.1.1.1 is validated for the following E2AP information elements defined.

Table 6- Validation for RIC SUBSCRIPTION REQUEST message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE/Group Name** | **Reference** | **Validation** |
| Message Type | [2] 9.1.1.1 | RIC SUBSCRIPTION REQUEST |
| RIC Request ID | [2] 9.1.1.1 | Valid RIC Request ID |
| RAN Function ID | [2] 9.2.8 | Should be same as RAN Function ID indicated for the agreed RAN Function during E2 Setup procedure |
| RIC Subscription Details |  |  |
| >RIC Event Trigger Definition | [2] 9.2.9 | Validation for IEs defined in RAN Function specific E2 Service Model [4] [5] [6] is outside the scope of this test. |
| >Sequence of Actions |  |  |
| >>RIC Action ID | [2] 9.2.10 | Valid RIC Action ID, INTEGER (0..255) |
| >>RIC Action Type | [2] 9.2.11 | Valid RIC Action Type, ENUMERATED (Insert, Report, Policy, ...) |
| >>RIC Action Definition | [2] 9.2.12 | Validation for IEs defined in RAN Function specific E2 Service Model [4] [5] [6] is outside the scope of this test. |

</div>

Step 4. E2SM-KPM information elements in RIC SUBSCRIPTION REQUEST message are validated as per table below. Measurement Information List shall include at least two measurement items.

Table 6-3 Validation for E2SM-KPM IEs in RIC SUBSCRIPTION REQUEST message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **E2SM-KPM IE/Group Name** | **Reference** | **Validation** |
| RIC Action Definition IE | [5] 8.2.1.2 |  |
| >RIC Style Type | [5] 8.2.1.2 |  |
| >> E2SM-KPM Action Definition Format2 | [5] 8.2.1.2.2 |  |
| >>>UE ID | [5] 8.3.24 | Valid UE ID pointing to a specific UE of interest |
| >>>>Measurement Information List |  | At least two items |
| >>>>> Measurement Name | [5] 8.3.9 | Name of Measurement agreed for this test |
| >>>>> Measurement ID | [5] 8.3.10 | (1.. 65535) |
| >>>>> Label Information | [5] 8.3.11 | If "Measurement Type Name" is a UE level parameter, Value is set to "No Label"; If "Measurement Type Name" is a 5QI level parameter, the value is set to "5QI". |
| >>>> Granularity Period | [5] 8.3.8 | Use the same value as Reporting Period |
| >>>> Cell Global ID | [5] 8.3.20 | Not used |
| RIC Event Trigger Definition IE | [5] 8.2.1.1 |  |
| > E2SM-KPM Event Trigger Definition Format 1 | [5] 8.2.1.1.1 |  |
| >> Reporting Period | [5] 8.2.1.1.1 | (1..4294967295) |

</div>

Step 5. If validation in step 3 and step 4 is successful RIC SUBSCRIPTION RESPONSE message specified in [2] clause 9.2.1.1 is sent to the DUT (Near-RT RIC) with parameters shown in table below.

**Table 5.2.3.1.6-4 Parameters in RIC SUBSCRIPTION RESPONSE message**

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE/Group Name** | **IE type and reference** | **Semantics description** |
| Message Type | [2] 9.2.3 | RIC SUBSCRIPTION RESPONSE |
| RIC Request ID | [2] 9.2.7 | Received RIC Request ID |
| RAN Function ID | [2] 9.2.8 | Received RAN Function ID |
| RIC Actions Admitted List |  |  |
| >RIC Action ID | [2] 9.2.10 | Received Action ID requested included in *RIC Actions Admitted List* IE. |

</div>

Expected results

The test is considered passed if

1. Validation in test procedure step 3 and step 4 is successful.
2. E2 logs recorded in the Test Simulator (E2 Node) are aligned with the message flow specified in [2] clause 8.2.1.2.

##### RIC Indication procedure for REPORT Service style 1 for multiple measurements (positive)

###### Test Purpose

The purpose of this test case is to test the RIC Indication procedure of Near-RT RIC for RAN function "O-RAN-E2SM-KPM" REPORT Service style 1 as specified in [5] clause 7.4.2. The expected outcome of this test is successful receiving of the RIC INDICATION message associated with the E2SM-KPM REPORT Service style 1 from the E2 Node with multiple measurement items.

This testcase is conditionally mandatory if the DUT (Near-RT RIC) claims to support RIC Indication procedure for RAN function "O-RAN-E2SM-KPM" REPORT Service style 1.

###### Test Entrance Criteria

1. The Test Simulator (E2 Node) has the functionality to initiate E2 Setup procedure.
2. The DUT (Near-RT RIC) and Test Simulator (E2 Node) support RIC Subscription procedure.
3. The RAN Function to which RIC subscribes and the RAN Function definition are predefined between the DUT (Near-RT RIC) and the Test Simulator (E2 Node). An example of the agreed RAN Function Definition IE as per configuration is shown in table below.

Table 3- E2SM KPM RAN Function Definition Profile IE profile for this test

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE Name** | **Reference** | **Configuration / Value** |
| RAN Function Name | [5] 8.3.1 |  |
| >RAN Function Short Name | [5] 8.3.1 | ORAN-E2SM-KPM |
| >RAN Function Service Model OID | [5] 8.3.1 | 1.3.6.1.4.1.53148.1.2.2 |
| > RAN Function Description | [5] 8.3.1 | KPM Monitor |
| Sequence of Event Trigger styles |  |  |
| >RIC Event Trigger Style Type | [5] 8.3.3 | 1 |
| >RIC Event Trigger Style Name | [5] 8.3.4 | Periodic Report |
| >RIC Event Trigger Format Type | [5] 8.3.5 | 1 |
| Sequence of Report styles |  |  |
| > RIC Report Style Type | [5] 8.3.3 | 1 |
| > RIC Report Style Name | [5] 8.3.4 | E2 Node Measurement |
| > RIC Report Action Format Type | [5] 8.3.5 | 1 |
| > Sequence of Measurement Info for Action |  |  |
| >> Measurement Type Name | [5]8.3.9 | Name of one Measurement agreed for this test |
| >RIC Indication Header Format | [5] 8.3.5 | 1 |
| >RIC Indication Message Format | [5] 8.3.5 | 1 |

</div>

1. DUT (Near-RT RIC) has functionality to trigger subscription to the RAN Function agreed.

###### Test Methodology

Initial conditions

1. An SCTP association is successfully established between the two SCTP endpoints of the E2 interface
   (SCTP initiation procedure has taken place before or is taking place with execution of this test case).
2. The DUT (Near-RT RIC) has already successfully completed E2 Setup Request initiated from the Test Simulator (E2 Node) with the agreed RAN Function.
3. at least one successful subscription with at least two measurement items associated with E2SM-KPM REPORT Service style 1 exists. The RIC Event Trigger Definition and RIC Action Definition IEs in the RIC SUBSCRIPTION REQUEST message are defined in table below.

Table 3-2 E2SM-KPM IEs in RIC SUBSCRIPTION REQUEST message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **E2SM-KPM IE/Group Name** | **Reference** | **Validation** |
| RIC Action Definition IE | [5] 8.2.1.2 |  |
| >RIC Style Type | [5] 8.2.1.2 | 1 |
| >> E2SM-KPM Action Definition Format1 | [5] 8.2.1.2.1 |  |
| >> Measurement Information List |  | At least 2 items |
| >>> Measurement Name | [5] 8.3.9 | Name of one Measurement agreed for this test |
| >>> Measurement ID | [5] 8.3.10 | Valid ID |
| >>Label Information | [5] 8.3.11 | If "Measurement Type Name" is a cell level parameter, the value is set to "No Label"; If "Measurement Type Name" is a slice level parameter, the value is set to "Slice ID". |
| >>Granularity Period | [5] 8.3.8 | (1..4294967295) |
| RIC Event Trigger Definition IE | [5] 8.2.1.1 |  |
| >> E2SM-KPM Event Trigger Definition Format 1 | [5] 8.2.1.1.1 |  |
| >> Reporting Period | [5] 8.2.1.1.1 | (1..4294967295) |

</div>

Procedure

Step 1. Test Simulator periodically sends RIC INIDACTION message associated with the subscribed REPORT Service to the DUT (Near-RT RIC) according to the reporting period defined in the RIC Event Trigger Definition. The parameters used in the RIC Indication Header (Format 1) and RIC Indication Message (Format 1) are shown in Table 5.2.3.2.3-3 and Table 5.2.3.2.3-4 respectively. The sent and received E2 messages are recorded.

Table 3-3 RIC Indication Header IE Profile for this test

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| IE/Group Name | Reference | Configuration/ Value |
| Collection Start Time | [5] 8.3.12 | Time stamp encoded in the same format as the first four octets of the 64-bit timestamp format as defined in section 6 of IETF RFC 5905 [13]. |
| File Format Version | [5] 8.2.1.3.1 | Not used |
| Sender Name | [5] 8.2.1.3.1 | Not used |
| Sender Type | [5] 8.2.1.3.1 | Not used |
| Vendor Name | [5] 8.2.1.3.1 | Not used |

</div>

Table 3-4 RIC Indication Message IE Profile for this test

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| IE/Group Name | Reference | Configuration/ Value |
| Measurements Data |  |  |
| >Measurements Record |  | Contains measured values in same order as in the  *Measurements Information List* IE if present, otherwise in the order defined in the subscription identified by the *Subscription* ID. |
| >>CHOICE *Measured Value* |  |  |
| >>>Integer Value | [5] 8.2.1.4.1 | INTEGER (0..4294967295) |
| >>>Real Value | [5] 8.2.1.4.1 | REAL |
| >>>No Value | [5] 8.2.1.4.1 | Not used |
| >Incomplete Flag | [5] 8.2.1.4.1 | No incomplete flag |
| Measurement Information List |  | At least two items |
| >CHOICE *Measurement Type* |  |  |
| >>Measurement Name | [5] 8.3.9 | Same as the Measurement Name received in the corresponding RIC Subscription procedure |
| >>Measurement ID | [5] 8.3.10 | Not used |
| >List of Labels |  |  |
| >>Label Information | [5] 8.3.11 | If "Measurement Type Name" is a cell level parameter, the value is set to "No Label"; If "Measurement Type Name" is a slice level parameter, the value is set to "Slice ID". |
| Granularity Period | [5] 8.3.8 | Not used |

</div>

Expected results

The test is considered passed if

1. The DUT (Near-RT RIC) correctly receives the RIC INDICATION message from the Test Simulator.
2. E2 logs recorded in the Test Simulator (E2 Node) are aligned with the message flow specified in [2] clause 8.2.3.2.

##### RIC Indication procedure for REPORT Service style 2 for multiple measurements (positive)

###### Test Purpose

The purpose of this test case is to test the RIC Indication procedure of Near-RT RIC for RAN function "O-RAN-E2SM-KPM" REPORT Service style 2 as specified in [5] clause 7.4.1 The expected outcome of this test is successful reception of the RIC INDICATION message associated with the E2SM-KPM REPORT Service style 2 from the E2 Node with multiple measurement items.

This testcase is conditionally mandatory if the DUT (Near-RT RIC) claims to support RIC Indication procedure for RAN function "O-RAN-E2SM-KPM" REPORT Service style 2.

###### Test Entrance Criteria

1. The Test Simulator (E2 Node) has the functionality to initiate E2 Setup procedure.
2. The DUT (Near-RT RIC) and Test Simulator (E2 Node) support RIC Subscription procedure.
3. The RAN Function to which RIC subscribes and the RAN Function definition are predefined between the DUT (Near-RT RIC) and the Test Simulator (E2 Node). An example of the agreed RAN Function Definition IE as per configuration is shown in table below.

Table 4- E2SM KPM RAN Function Definition Profile IE profile for this test

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE Name** | **Reference** | **Configuration / Value** |
| RAN Function Name | [5] 8.3.1 |  |
| >RAN Function Short Name | [5] 8.3.1 | ORAN-E2SM-KPM |
| >RAN Function Service Model OID | [5] 8.3.1 | 1.3.6.1.4.1.53148.1.2.2 |
| > RAN Function Description | [5] 8.3.1 | KPM Monitor |
| Sequence of Event Trigger styles |  |  |
| >RIC Event Trigger Style Type | [5] 8.3.3 | 1 |
| >RIC Event Trigger Style Name | [5] 8.3.4 | Periodic Report |
| >RIC Event Trigger Format Type | [5] 8.3.5 | 1 |
| Sequence of Report styles |  |  |
| > RIC Report Style Type | [5] 8.3.3 | 1 |
| > RIC Report Style Name | [5] 8.3.4 | E2 Node Measurement |
| > RIC Report Action Format Type | [5] 8.3.5 | 1 |
| > Sequence of Measurement Info for Action |  |  |
| >> Measurement Type Name | [5]8.3.9 | Name of one Measurement agreed for this test |
| >RIC Indication Header Format | [5] 8.3.5 | 1 |
| >RIC Indication Message Format | [5] 8.3.5 | 1 |

</div>

1. DUT (Near-RT RIC) has functionality to trigger subscription to the RAN Function agreed.

###### Test Methodology

Initial conditions

1. An SCTP association is successfully established between the two SCTP endpoints of the E2 interface
   (SCTP initiation procedure has taken place before or is taking place with execution of this test case).
2. The DUT (Near-RT RIC) has already successfully completed E2 Setup Request initiated from the Test Simulator (E2 Node) with the agreed RAN Function.
3. at least one successful subscription with at least two measurement items associated with E2SM-KPM REPORT Service style 2 exists. The RIC Event Trigger Definition and RIC Action Definition IEs in the RIC SUBSCRIPTION REQUEST message are defined in Table below.

Table 4-2 Validation for E2SM-KPM IEs in RIC SUBSCRIPTION REQUEST message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **E2SM-KPM IE/Group Name** | **Reference** | **Validation** |
| RIC Action Definition IE | [5] 8.2.1.2 |  |
| >RIC Style Type | [5] 8.2.1.2 |  |
| >> E2SM-KPM Action Definition Format2 | [5] 8.2.1.2.2 |  |
| >>>UE ID | [5] 8.3.24 | Valid UE ID pointing to a specific UE of interest |
| >>>>Measurement Information List |  | At least two items |
| >>>>> Measurement Name | [5] 8.3.9 | Name of Measurement agreed for this test |
| >>>>> Measurement ID | [5] 8.3.10 | (1.. 65535) |
| >>>>> Label Information | [5] 8.3.11 | If "Measurement Type Name" is a UE level parameter, Value is set to "No Label"; If "Measurement Type Name" is a 5QI level parameter, the value is set to "5QI". |
| >>>> Granularity Period | [5] 8.3.8 | Use the same value as Reporting Period |
| >>>> Cell Global ID | [5] 8.3.20 | Not used |
| RIC Event Trigger Definition IE | [5] 8.2.1.1 |  |
| > E2SM-KPM Event Trigger Definition Format 1 | [5] 8.2.1.1.1 |  |
| >> Reporting Period | [5] 8.2.1.1.1 | (1..4294967295) |

</div>

Procedure

Step 1. Test Simulator periodically sends RIC INIDACTION message associated with the subscribed REPORT Service to the DUT (Near-RT RIC) according to the reporting period defined in the RIC Event Trigger Definition. The parameters used in the RIC Indication Header (Format 2) and RIC Indication Message (Format 2) are shown in Table 5.2.3.2.4-3 and Table 5.2.3.2.4-4. The sent and received E2 messages are recorded.

Table 4-3 RIC Indication Header IE Profile [8] for this test message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| IE/Group Name | Reference | Configuration/ Value |
| Collection Start Time | [5] 8.3.12 | Time stamp encoded in the same format as the first four octets of the 64-bit timestamp format as defined in section 6 of IETF RFC 5905 [13]. |
| File Format Version | [5] 8.2.1.3.1 | Not used |
| Sender Name | [5] 8.2.1.3.1 | Not used |
| Sender Type | [5] 8.2.1.3.1 | Not used |
| Vendor Name | [5] 8.2.1.3.1 | Not used |

</div>

Table 4-4 RIC Indication Message IE Profile [8] for this test message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| IE/Group Name | Presence | Configuration/ Value |
| Measurements Data |  |  |
| >Measurements Record |  | Contains measured values in same order as in the  *Measurements Information Condition UE List* IE. |
| >>CHOICE *Measured Value* |  |  |
| >>>Integer Value | [5] 8.2.1.4.2 | INTEGER (0..4294967295) |
| >>>Real Value | [5] 8.2.1.4.2 | REAL |
| >>>No Value | [5] 8.2.1.4.2 | Not used |
| >Incomplete Flag | [5] 8.2.1.4.2 | No incomplete flag |
| Measurement Information Condition UE List |  | At least two items |
| >CHOICE *Measurement Type* |  |  |
| >>Measurement Name | [5] 8.3.9 | Same as the Measurement Name received in the corresponding RIC Subscription procedure |
| >>Measurement ID | [5] 8.3.10 | NULL (not selected) |
| >Matching Condition |  |  |
| >>CHOICE *Condition Type* | [5] 8.2.1.4.2 |  |
| >>>Label Information | [5] 8.3.11 | If "Measurement Type Name" is a UE level parameter, Value is set to "No Label"; If "Measurement Type Name" is a 5QI level parameter, the value is set to "5QI". |
| >>>Test Information | [5] 8.3.22 | No Test Information |
| >List of matched UE IDs |  |  |
| >>UE ID | [5] 8.3.24 | Valid UE ID |
| Granularity Period | [5] 8.3.8 | No Granularity Period |

</div>

Expected results

The test is considered passed if

1. The DUT (Near-RT RIC) correctly receives the RIC INDICATION message from the Test Simulator.
2. E2 logs recorded in the Test Simulator (E2 Node) are aligned with the message flow specified in [2] clause 8.2.3.2.

#### Test Cases for RIC Indication E2SM-KPM

##### RIC Indication procedure with REPORT Service style 1 (positive)

###### Test Purpose

The purpose of this test case is to test the RIC Indication procedure of Near-RT RIC for RAN function "O-RAN-E2SM-KPM" REPORT Service style 1 as specified in [5] clause 7.4.2. The expected outcome of this test is successful receiving of the RIC INDICATION message associated with the E2SM-KPM REPORT Service style 1 from the E2 Node.

This testcase is conditionally mandatory if the DUT (Near-RT RIC) claims to support RIC Indication procedure for RAN function "O-RAN-E2SM-KPM" REPORT Service style 1.

###### Test Entrance Criteria

The test entrance criteria specified in clause 5.2.2.1.1.2 applies with agreed RAN Function Definition IE defined in [5] clause 8.2.2.1 as per configuration profile shown in Table 5.2.3.1.1-1Table 5.2.2-1

###### Test Methodology

Initial conditions

The initial conditions specified in clause 5.2.2.1.1.3.1 applies. In addition, at least one successful subscription associated with E2SM-KPM REPORT Service style 1 exists. The RIC Event Trigger Definition and RIC Action Definition IEs in the RIC SUBSCRIPTION REQUEST message are defined in Table 5.2.3.1.1-2

Procedure

Step 1. Test Simulator periodically sends RIC INIDACTION message associated with the subscribed REPORT Service to the DUT (Near-RT RIC) according to the reporting period defined in the RIC Event Trigger Definition. The parameters used in the RIC Indication Header (Format 1) and RIC Indication Message (Format 1) areshown in Table 5.2.3.2.1-1 and Table 5.2.3.2.1-2 respectively. The sent and received E2 messages are recorded.

Table - RIC Indication Header IE Profile for this test

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| IE/Group Name | Reference | Configuration/ Value |
| Collection Start Time | [5] 8.3.12 | Time stamp encoded in the same format as the first four octets of the 64-bit timestamp format as defined in section 6 of IETF RFC 5905 [13]. |
| File Format Version | [5] 8.2.1.3.1 | Not used |
| Sender Name | [5] 8.2.1.3.1 | Not used |
| Sender Type | [5] 8.2.1.3.1 | Not used |
| Vendor Name | [5] 8.2.1.3.1 | Not used |

</div>

Table - RIC Indication Message IE Profile [5] for this test

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| IE/Group Name | Reference | Configuration/ Value |
| Measurements Data |  |  |
| >Measurements Record |  | Contains measured values in same order as in the  *Measurements Information List* IE if present, otherwise in the order defined in the subscription identified by the *Subscription* ID. |
| >>CHOICE *Measured Value* |  |  |
| >>>Integer Value | [5] 8.2.1.4.1 | INTEGER (0..4294967295) |
| >>>Real Value | [5] 8.2.1.4.1 | REAL |
| >>>No Value | [5] 8.2.1.4.1 | Not used |
| >Incomplete Flag | [5] 8.2.1.4.1 | No incomplete flag |
| Measurement Information List |  |  |
| >CHOICE *Measurement Type* |  |  |
| >>Measurement Name | [5] 8.3.9 | Same as the Measurement Name received in the corresponding RIC Subscription procedure |
| >>Measurement ID | [5] 8.3.10 | Not used |
| >List of Labels |  |  |
| >>Label Information | [5] 8.3.11 | No Label |
| Granularity Period | [5] 8.3.8 | Not used |

</div>

Expected results

The same expected results specified in clause 5.2.2.4.1.3.3 applies.

##### RIC Indication procedure for REPORT Service style 2 (positive)

###### Test Purpose

The purpose of this test case is to test the RIC Indication procedure of Near-RT RIC for RAN function "O-RAN-E2SM-KPM" REPORT Service style 2 as specified in [5] clause 7.4.1 The expected outcome of this test is successful reception of the RIC INDICATION message associated with the E2SM-KPM REPORT Service style 2 from the E2 Node.

This testcase is conditionally mandatory if the DUT (Near-RT RIC) claims to support RIC Indication procedure for RAN function "O-RAN-E2SM-KPM" REPORT Service style 2.

###### Test Entrance Criteria

The test entrance criteria specified in clause 5.2.2.1.1.2 apply with agreed RAN Function Definition IE defined in [5] clause 8.2.2.1 as per configuration shown in Table 5.2.3.1.2-1

###### Test Methodology

Initial conditions

1. The initial conditions specified in clause 5.2.2.1.1.3.1 apply. In addition, at least one successful subscription associated with E2SM-KPM REPORT Service style 2 exists. The RIC Event Trigger Definition and RIC Action Definition IEs in the RIC SUBSCRIPTION REQUEST message are defined in Table 5.2.3.1.2-2

Procedure

Step 1. Test Simulator periodically sends RIC INIDACTION message associated with the subscribed REPORT Service to the DUT (Near-RT RIC) according to the reporting period defined in the RIC Event Trigger Definition. The parameters used in the RIC Indication Header (Format 2) and RIC Indication Message (Format 2) areshown in Table 5.2.3-7 and Table 5.2.3-8. The sent and received E2 messages are recorded.

Table - RIC Indication Header IE Profile [8] for this test message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| IE/Group Name | Reference | Configuration/ Value |
| Collection Start Time | [5] 8.3.12 | Time stamp encoded in the same format as the first four octets of the 64-bit timestamp format as defined in section 6 of IETF RFC 5905 [13]. |
| File Format Version | [5] 8.2.1.3.1 | Not used |
| Sender Name | [5] 8.2.1.3.1 | Not used |
| Sender Type | [5] 8.2.1.3.1 | Not used |
| Vendor Name | [5] 8.2.1.3.1 | Not used |

</div>

Table - RIC Indication Message IE Profile [8] for this test message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| IE/Group Name | Presence | Configuration/ Value |
| Measurements Data |  |  |
| >Measurements Record |  | Contains measured values in same order as in the  *Measurements Information Condition UE List* IE. |
| >>CHOICE *Measured Value* |  |  |
| >>>Integer Value | [5] 8.2.1.4.2 | INTEGER (0..4294967295) |
| >>>Real Value | [5] 8.2.1.4.2 | REAL |
| >>>No Value | [5] 8.2.1.4.2 | Not used |
| >Incomplete Flag | [5] 8.2.1.4.2 | No incomplete flag |
| Measurement Information Condition UE List |  |  |
| >CHOICE *Measurement Type* |  |  |
| >>Measurement Name | [5] 8.3.9 | Same as the Measurement Name received in the corresponding RIC Subscription procedure |
| >>Measurement ID | [5] 8.3.10 | NULL (not selected) |
| >Matching Condition |  |  |
| >>CHOICE *Condition Type* | [5] 8.2.1.4.2 |  |
| >>>Label Information | [5] 8.3.11 | No Label Information |
| >>>Test Information | [5] 8.3.22 | No Test Information |
| >List of matched UE IDs |  |  |
| >>UE ID | [5] 8.3.24 | Valid UE ID |
| Granularity Period | [5] 8.3.8 | No Granularity Period |

</div>

Expected results

The same expected results specified in clause 5.2.2.4.1.3.3 applies.

### E2AP Functional Procedures for E2SM-RC

FFS

### E2AP Functional Procedures for E2SM-NI

#### Test Cases for RIC Subscription E2SM-NI

##### RIC Subscription for RIC REPORT Style 1, Single Action, RIC Event Trigger 1 (positive case)

###### Test Purpose

The purpose of this test case is to test the RIC Subscription procedure of the Near-RT RIC as specified in "O-RAN WG3: E2 Application Protocol" [2] clause 8.2.1. This test case is for subscription to RAN function "ORAN-E2SM-NI" Report style 1 as specified in [4] clause 7.4.2. The expected outcome is successful RIC Subscription by Near-RT RIC.

This test case is mandatory if the DUT claims to support RIC Subscription procedure for RAN function "O-RAN-E2SM-NI" Report style 1.

###### Test Entrance Criteria

1. The test entrance criteria specified in clause 5.2.2.1.1.2 applies with agreed RAN Function Definition IE defined in [4] clause 8.2.2.1 as per configuration shown in table below.

Table - E2SM NI RAN Function Definition Profile IE profile.

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| IE/Group Name | Reference | Configuration / Value |
| RAN Function Name | [4] 8.3.2 |  |
| >RAN Function Short Name | [4] 8.3.2 | "ORAN-WG3-NI" |
| >RAN Function Service Model OID | [4] 8.3.2 | "1.3.6.1.4.1.53148.1.2.1" |
| > RAN Function Description | [4] 8.3.2 | "Network Interface" |
| Sequence of Network Interface Types |  |  |
| >Network Interface Type | [4] 8.3.21 | One Network Interface Type agreed for this test. |
| >Sequence of Event trigger styles |  |  |
| >>RIC Event Trigger Style Type | [4] 8.3.3 | 1 |
| >>RIC Event Trigger Style Name | [4] 8.3.4 | "Interface Message Event" |
| >>RIC Event Trigger Format Type | [4] 8.3.5 | 1 |
| >Sequence of Report styles |  |  |
| >>RIC Report Style Type | [4] 8.3.3 | 1 |
| >>RIC Report Style Name | [4] 8.3.4 | "Complete message" |
| >>RIC Report Action Format Type | [4] 8.3.5 | 1 |
| >>RIC Indication Header Format Type | [4] 8.3.5 | 1 |
| >>RIC Indication Message Format Type | [4] 8.3.5 | 1 |

</div>

1. DUT (Near-RT RIC) has functionality to trigger subscription to RAN function "ORAN-E2SM-NI, compatible RAN Function Revision, Report Style 1, RIC Report Action Format 1 for the agreed Network Interface Type for this test.

###### Test Methodology

Initial Conditions

1. The DUT (Near-RT RIC) has successfully completed E2 Setup procedure with the agreed RAN Function ID
2. The DUT (Near-RT RIC) has successfully completed RIC subscription procedure with the agreed RIC request ID.

Procedure

Step 1. The procedures and validations for E2AP specified in Steps 1 to 3 of clause 5.2.2.1.1.3.2 applies with agreed RAN Function Definition IE defined in clause 5.2.5.1.1.2.

Step 2. E2SM-NI information elements in RIC SUBSCRIPTION REQUEST message are validated as per table below.

Table - Validation for RIC SUBSCRIPTION REQUEST for NI Report Style 1

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE/Group Name** | **Reference** | **Validation** |
| >RIC Event Trigger Definition | [4] 8.2.1.1.1 | E2SM-NI Event Trigger Definition Format 1 |
| >> Network Interface Type | [4] 8.3.21 | Network Interface Type as indicated during subscription. |

</div>

Step 3. If validation in Step 1 and Step 2 are successful RIC SUBSCRIPTION RESPONSE is send as per clause 5.2.2.1.1.3.2, Step 4.

Expected Results

The same expected results specified in clause 5.2.2.1.1.3.3 applies with the additional validation in Step 2 above.

# Test Cases for E2 Nodes

## General

## Conformance Test Cases

### E2AP Global Procedures

#### Test Cases for E2 Setup procedure

##### E2 Setup

###### Test Purpose

The purpose of this test case is to test the E2 Setup procedure of the DUT (E2 Node) as specified in "O-RAN WG3: E2 Application Protocol" [2] clause 8.3.1. This test is designed to be agnostic to the E2 Service Model and RAN functions supported by the E2 Node. The expected outcome is successful validation of E2 SETUP REQUEST message from E2 Node and establishment of the signalling connection between E2 Node and Near-RT RIC.

This testcase is mandatory.

###### Test Entrance Criteria

The DUT (E2 Node) has the functionality to trigger E2 Setup procedure.

###### Test Methodology

Initial conditions

1. An SCTP association is successfully established between the two SCTP endpoints of the E2 interface.
   (SCTP initiation procedure has taken place before or is taking place with execution of this test case)

Procedure

Step 1. Initiate appropriate action in DUT (E2 Node) to trigger E2 Setup procedure.

Step 2. At the Test Simulator (Near-RT RIC) the received and transmitted E2 messages are recorded.

Step 3. The Test Simulator does the following validation:

The received message is E2 SETUP REQUEST as specified in [2] clause 9.1.2.2 and validated with information elements as specified in table below.

Table - Validation of IEs in E 2 SETUP REQUEST message

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **IE/Group Name** | **Reference** | **Presence** | **Validation** |
| Message Type | [2] 9.2.3 | M | E2 SETUP REQUEST |
| Transaction ID | [2] 9.2.33 | M | Valid *Transaction ID*, INTEGER (0...255,...) |
| Global E2 Node ID | [2] 9.2.6 | M | Valid *Global E2 Node ID* corresponding to claimed E2 Node type and supported modes |
| **RAN Functions Added List** |  |  | List of RAN functions in E2 Node |
| >RAN Function Item |  |  | From 1 to maxofRANfunctionID (256) items |
| >>RAN Function ID | [2] 9.2.8 | M | Valid *RAN Function ID*, INTEGER (1...4095). 0 is invalid as reserved to Near-RT RIC internal usage |
| >>RAN Function Definition | [2] 9.2.23 | M | Valid *RAN Function Definition* as defined in the corresponding E2 Service Model [3] |
| >>RAN Function Revision | [2] 9.2.24 | M | Valid *RAN Function Revision*, INTEGER (0...4095) |
| >>RAN Function OID | [2] 9.2.31 | M | Valid *RAN Function OID* as specified in the corresponding E2 Service Model [3] |
| **E2 Node Component Configuration Addition List** |  |  | List of E2 Node component configuration information |
| >E2 Node Component Configuration Addition Item |  |  | From 1 to maxofE2nodeComponents (1024) items |
| >>E2 Node Component Interface Type | [2] 9.2.26 | M | Valid *E2 Node Component Interface Type*, ENUMERATED (ng, xn, e1, f1, w1, s1, x2, ...) corresponding to the DUT E2 node component type |
| >>E2 Node Component ID | [2] 9.2.32 | O | Optional, if present check for valid information elements |
| >>E2 Node Component Configuration | [2] 9.2.27 | M | Refer to table in [2] clause 9.2.27 with DUT (E2 Node) component type to determine the appropriate 3GPP specification. Validate data structure against this specification |

</div>

Step 4. If validation in step 3 is successful, E2 SETUP RESPONSE message as specified in [2] clause 9.1.2.3 is sent to the DUT (E2 Node) with parameters shown in table below

Table - Parameters in E2 SETUP RESPONSE message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE Name** | **Reference** | **Configuration / Value** |
| Message Type | [2] 9.2.3 | E2 SETUP RESPONSE |
| Transaction ID | [2] 9.2.33 | INTEGER (0...255,..) same as received in E2 SETUP REQUEST |
| Global RIC ID | [2] 9.2.4 | Valid Global RIC ID following parameter in Test Simulator |
| **RAN Functions Accepted List** |  |  |
| >RAN Functions ID item |  | Accept all valid RAN Functions received in E2 SETUP REQUEST |
| >>RAN Function ID | [2] 9.2.8 | Received RAN Function ID |
| >>RAN Function Revision | [2] 9.2.24 | Received RAN Function Revision |
| **E2 Node Component Configuration Addition Acknowledge List** |  |  |
| >E2 Node Component Configuration Addition Acknowledge Item |  | Acknowledge all valid Component Configuration Addition received in E2 SETUP REQUEST message |
| >>E2 Node Component Interface Type | [2] 9.2.26 | Received E2 Node Component Interface Type |
| >>E2 Node Component ID | [2] 9.2.32 | Received E2 Node Component ID if any present in the E2 SETUP REQUEST message |
| >>E2 Node Component Configuration Acknowledge | [2] 9.2.28 | Success |

</div>

6.2.1.1.1.3.3 Expected results

The test is considered passed if

1. Validation in test procedure step 3 is successful.
2. E2 logs recorded in the Test Simulator (Near-RT RIC) are aligned with the message flow specified in [2] Figure 8.3.1.2-1

#### Test Cases for RESET procedure

##### Reset procedure (initiated by Near-RT RIC) (positive case)

###### Test Purpose

The purpose of this test case is to test the E2 Reset procedure of the E2 Node initiated by Near-RT RIC as specified in "O-RAN WG3: E2 Application Protocol" [2] clause 8.3.2. The expected outcome is successful validation of RESET RESPONSE from E2 Node.

This testcase is mandatory if the DUT (E2 Node) claims to support Reset procedure.

###### Test Entrance Criteria

1. The DUT (E2 Node) and Test Simulator (Near-RT RIC) support Reset procedure.
2. The Test Simulator (Near-RT RIC) has the functionality to trigger Reset procedure.

###### Test Methodology

Initial conditions

1. An SCTP association is successfully established between the two SCTP endpoints of the E2 interface.
2. The DUT (E2 Node) and Test Simulator (Near-RT RIC) have completed E2 Setup procedure.

Procedure

Step 1. Initiate the Reset procedure from Test Simulator (Near-RT RIC) to the DUT (E2 Node) by sending RESET REQUEST message as specified in [2] clause 9.1.2.5 with information elements as specified in table below.

Table - Information elements in RESET REQUEST message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE Name** | **Reference** | **Configuration / Value** |
| Message Type | [2] 9.2.3 | RESET REQUEST |
| Transaction ID | [2] 9.2.33 | INTEGER (0...255,..) |
| Cause | [2] 9.2.1 | Any valid cause |

</div>

Step 2. At the Test Simulator (Near-RT RIC) the transmitted and received E2 messages are recorded.

Step 3. The Test Simulator does the following validation:

The received message is RESET RESPONSE as specified in [2] clause 9.1.2.6 with information elements validated as specified in table below

Table - Validation of IEs in RESET RESPONSE message

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| IE/Group Name | Reference | Presence | Validation |
| Message Type | [2] 9.2.3 | M | RESET RESPONSE |
| Transaction ID | [2] 9.2.33 | M | INTEGER (0...255,...) same as received in RESET REQUEST |
| Criticality Diagnostics | [2] 9.2.2 | O | Optional, if present check for valid information elements |

</div>

Expected results

The test is considered passed if

1. Validation in test procedure step 3 is successful.
2. E2 logs recorded in the Test Simulator (Near-RT RIC) are aligned with the message flow specified in [2] figure 8.3.2.2-2

##### Reset procedure (initiated by E2 Node) (positive case)

###### Test Purpose

The purpose of this test case is to test the E2 Reset procedure of E2 Node initiated by E2 Node as specified in "O-RAN WG3: E2 Application Protocol" [2] clause 8.3.2. The expected outcome is successful validation of RESET REQUEST from E2 Node.

This testcase is mandatory if the DUT (E2 Node) claims to support Reset procedure.

###### Test Entrance Criteria

1. The DUT (E2 Node) and Test Simulator (Near-RT RIC) support Reset procedure.
2. The DUT (E2 Node) has the functionality to trigger Reset procedure.

###### Test Methodology

Initial conditions

The initial conditions specified in clause 6.2.1.2.1.3.1 applies.

Procedure

Step 1. Initiate appropriate action in DUT (E2 Node) to trigger Reset procedure.

Step 2. At the Test Simulator (Near-RT RIC) the received and transmitted E2 messages are recorded.

Step 3. The Test Simulator does the following validation:

The received message is RESET REQUEST as specified in [2] clause 9.1.2.5 and validated with information elements as specified in table below

Table - Validation of IEs in RESET REQUEST message

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| IE/Group Name | Reference | Presence | Validation |
| Message Type | [2] 9.2.3 | M | RESET REQUEST |
| Transaction ID | [2] 9.2.33 | M | Valid *Transaction ID*, INTEGER (0...255,...) |
| Cause | [2] 9.2.1 | M | Valid *Cause* information element |

</div>

Step 4. If validation in step 3 is successful, RESET RESPONSE message as specified in [2] clause 9.1.2.6 is sent to the DUT (E2 Node) with parameters shown in table below

Table - Parameters in RESET RESPONSE message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE Name** | **Reference** | **Configuration / Value** |
| Message Type | [2] 9.2.3 | RESET RESPONSE |
| Transaction ID | [2] 9.2.33 | INTEGER (0...255,..) same as received in RESET REQUEST |
| Criticality Diagnostics | [2] 9.2.2 | Optional, not sent |

</div>

Expected results

The test is considered passed if

1. Validation in test procedure step 3 is successful.
2. E2 logs recorded in the Test Simulator (Near-RT RIC) are aligned with the message flow specified in [2] figure 8.3.2.2-1

#### Test Cases for Error Indication

##### Error Indication procedure (Transfer Syntax Error)

###### Test Purpose

The purpose of this test case is to test the Error Indication procedure of the DUT (E2-Node) as specified in "O-RAN WG3: E2 Application Protocol" [2] clause 8.3.3 and clause 10. An ASN.1 syntax error is intentionally made in a message from Test Simulator (Near-RT RIC ) to trigger Error Indication from DUT (E2 Node ). The expected outcome is successful reception and validation of ERROR INDICATION message from E2-Node.

This testcase is conditional mandatory if DUT claims to support Error Indication procedure.

###### Test Entrance Criteria

The DUT (E2 Node) has the functionality to initiate E2 Setup procedure

###### Test Methodology

Initial conditions

1. An SCTP association is successfully established between the two SCTP endpoints of the E2 interface
   (SCTP initiation procedure has taken place before or is taking place with execution of this test case).

Procedure

Step 1. Initiate appropriate action in DUT (E2 Node) to trigger E2 Setup procedure.

Step 2. At the Test Simulator (Near-RT RIC) the received and transmitted E2 messages are recorded.

Step 3. The Test Simulator does the following validation:

The received message is E2 SETUP REQUEST as specified in [2] clause 9.1.2.2 and validated with information elements as specified in table below.

Table - Validation of IEs in E2 SETUP REQUEST message

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **IE/Group Name** | **Reference** | **Presence** | **Validation** |
| Message Type | [2] 9.2.3 | M | E2 SETUP REQUEST |
| Transaction ID | [2] 9.2.33 | M | Valid *Transaction ID*, INTEGER (0...255,...) |
| Global E2 Node ID | [2] 9.2.6 | M | Valid *Global E2 Node ID* corresponding to claimed E2 Node type and supported modes |
| **RAN Functions Added List** |  |  | List of RAN functions in E2 Node |
| >RAN Function Item |  |  | From 1 to maxofRANfunctionID (256) items |
| >>RAN Function ID | [2] 9.2.8 | M | Valid *RAN Function ID*, INTEGER (1...4095). 0 is invalid as reserved to Near-RT RIC internal usage |
| >>RAN Function Definition | [2] 9.2.23 | M | Valid *RAN Function Definition* as defined in the corresponding E2 Service Model [3] |
| >>RAN Function Revision | [2] 9.2.24 | M | Valid *RAN Function Revision*, INTEGER (0...4095) |
| >>RAN Function OID | [2] 9.2.31 | M | Valid *RAN Function OID* as specified in the corresponding E2 Service Model [3] |
| **E2 Node Component Configuration Addition List** |  |  | List of E2 Node component configuration information |
| >E2 Node Component Configuration Addition Item |  |  | From 1 to maxofE2nodeComponents (1024) items |
| >>E2 Node Component Interface Type | [2] 9.2.26 | M | Valid *E2 Node Component Interface Type*, ENUMERATED (ng, xn, e1, f1, w1, s1, x2, ...) corresponding to the DUT E2 node component type |
| >>E2 Node Component ID | [2] 9.2.32 | O | Optional, if present check for valid information elements |
| >>E2 Node Component Configuration | [2] 9.2.27 | M | Refer to table in [2] clause 9.2.27 with DUT (E2 Node) component type to determine the appropriate 3GPP specification. Validate data structure against this specification |

</div>

Step 4. If validation in step 3 is successful, E2 SETUP RESPONSE message as specified in [2] clause 9.1.2.3 is sent to the DUT (E2 Node) with parameters shown in table below

Table - Parameters in E2 SETUP RESPONSE message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE Name** | **Reference** | **Configuration / Value** |
| Message Type | [2] 9.2.3 | E2 SETUP RESPONSE |
| Transaction ID | [2] 9.2.33 | INTEGER (0...255,..) same as received in E2 SETUP REQUEST |
| Global RIC ID | [2] 9.2.4 | **Invalid** **Global RIC ID eg Near-RT RIC ID more than 20 bit string or invalid PLMN ID** |
| **RAN Functions Accepted List** |  |  |
| >RAN Functions ID item |  | Accept all valid RAN Functions received in E2 SETUP REQUEST |
| >>RAN Function ID | [2] 9.2.8 | Received RAN Function ID |
| >>RAN Function Revision | [2] 9.2.24 | Received RAN Function Revision |
| **E2 Node Component Configuration Addition Acknowledge List** |  |  |
| >E2 Node Component Configuration Addition Acknowledge Item |  | Acknowledge all valid Component Configuration Addition received in E2 SETUP REQUEST message |
| >>E2 Node Component Interface Type | [2] 9.2.26 | Received E2 Node Component Interface Type |
| >>E2 Node Component ID | [2] 9.2.32 | Received E2 Node Component ID if any present in the E2 SETUP REQUEST message |
| >>E2 Node Component Configuration Acknowledge | [2] 9.2.28 | Success |

</div>

Step 5. The Test Simulator does the following validation:

The received message from DUT (E2 Node) is ERROR INDICATION message since ASN.1decoding for Global RIC ID IE should fail at E2 Node. The ERROR INDICATION message is validated with parameters shown in table below.

Table - Validation for ERROR INDICATION message

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **IE Name** | **Presence** | **Reference** | **Configuration / Value** |
| Message Type | M | [2] 9.2.3 | ERROR INDICATION |
| Transaction ID | O | [2] 9.2.33 | INTEGER (0...255,..) Same as E2 SETUP RESPONSE |
| RIC Request ID | O | [2] 9.2.7 | Required if Transaction ID IE is not present |
| RAN Function ID | O | [2] 9.2.8 | Optional |
| Cause | O | [2] 9.2.1 | Cause Group: Protocol and Protocol Cause : Transfer Syntax Error |
| Criticality Diagnostics | O | [2] 9.2.2 | Optional |

</div>

Expected results

The test is considered passed if

1. Validation in test procedure Step 3 and Step 5 are successful.
2. E2 logs recorded in the Test Simulator (Near-RT RIC) are aligned with the message flow as specified above.

#### Test Cases for RIC Service Update procedure

##### RIC Service Update procedure with empty RIC SERVICE QUERY message (positive case)

###### Test Purpose

The purpose of this test case is to test the RIC Service Update procedure of the DUT (E2 Node) initiated by a RIC SERVICE QUERY message from Test Simulator (Near-RT RIC) as specified in "O-RAN WG3: E2 Application Protocol" [2] clause 8.3.4. This test case covers the scenario where RIC SERVICE QUERY is sent by Near-RT RIC without *RAN Functions Accepted List IE*.This test is designed to be agnostic to the E2 Service Model and RAN functions supported by the E2 Node. The expected outcome is successful validation of RIC SERVICE UPDATE message from E2 Node.

This test case is conditional mandatory if DUT claims support of RIC Service Update procedure.

###### Test Entrance Criteria

1. The DUT (E2 Node) and Test Simulator support RIC Service Update procedure.
2. The Test Simulator (Near-RT RIC) has the functionality to initiate RIC Service Update procedure

###### Test Methodology

Initial conditions

1. An SCTP association is successfully established between the two SCTP endpoints of the E2 interface.
2. The Test Simulator (Near-RT RIC) has already successfully completed E2 Setup procedure initiated from the DUT (E2 Node).

Procedure

Step 1. Initiate the RIC Service Update procedure from Test Simulator (Near-RT RIC) to the DUT (E2 Node) by sending RIC SERVICE QUERY message as specified in [2] clause 9.1.2.10 with information elements as specified in table below without sending *RAN Function Accepted List* IE.

Table - Information Elements in RIC SERVICE QUERY message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE Name** | **Reference** | **Configuration / Value** |
| Message Type | [2] 9.2.3 | RIC SERVICE QUERY |
| Transaction ID | [2] 9.2.33 | INTEGER (0...255,..) |

</div>

Step 2. At the Test Simulator (Near-RT RIC) the received and transmitted E2 messages are recorded.

Step 3. The Test Simulator does the following validation:

The received message is RIC SERVICE UPDATE as specified in [2] clause 9.1.2.7 and validated with information elements as specified in table below.

Table - Validation of IEs in RIC SERVICE UPDATE message

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **IE/Group Name** | **Reference** | **Presence** | **Configuration/Value** |
| Message Type | [2] 9.2.3 | M | RIC SERVICE UPDATE |
| Transaction ID | [2] 9.2.33 | M | INTEGER (0...255,...) same as in RIC SERVICE QUERY message |
| **RAN Functions Added List** |  |  | List of RAN functions in E2 Node |
| >RAN Function Item |  |  | From 1 to maxofRANfunctionID (256) items |
| >>RAN Function ID | [2] 9.2.8 | M | Valid *RAN Function ID*, INTEGER (1...4095). 0 is invalid as reserved to Near-RT RIC internal usage |
| >>RAN Function Definition | [2] 9.2.23 | M | Valid *RAN Function Definition* as defined in the corresponding E2 Service Model [3] |
| >>RAN Function Revision | [2] 9.2.24 | M | Valid *RAN Function Revision*, INTEGER (0...4095) |
| >>RAN Function OID | [2] 9.2.31 | M | Valid *RAN Function OID* as specified in the corresponding E2 Service Model [3] |

</div>

Step 4. If validation in step 3 is successful, RIC SERVICE UPDATE ACKNOWLEDGE message as specified in [2] clause 9.1.2.8 is sent to the DUT (E2 Node) with parameters shown in table below

Table - Parameters in RIC SERVICE UPDATE ACKNOWLEDGE message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE Name** | **Reference** | **Configuration / Value** |
| Message Type | [2] 9.2.3 | RIC SERVICE UPDATE ACKNOWLEDGE |
| Transaction ID | [2] 9.2.33 | INTEGER (0...255,..) same as received in RIC SERVICE UPDATE message |
| Global RIC ID | [2] 9.2.4 | Valid Global RIC ID following parameter in Test Simulator |
| **RAN Functions Accepted List** |  |  |
| >RAN Functions ID item |  | Accept all valid RAN Functions received in RIC SERVICE UPDATE message |
| >>RAN Function ID | [2] 9.2.8 | Received RAN Function ID |
| >>RAN Function Revision | [2] 9.2.24 | Received RAN Function Revision |

</div>

Expected results

1. Validation in test procedure step 3 is successful.
2. E2 logs recorded in the Test Simulator (Near-RT RIC) are aligned with the message flow specified in [2] figure 8.3.4.2-1

##### RIC Service Update procedure with RIC SERVICE QUERY message provided list of Accepted RAN functions (positive case)

###### Test Purpose

The purpose of this test case is to test the RIC Service Update procedure of the DUT (E2 Node) initiated by a RIC SERVICE QUERY message from Test Simulator (Near-RT RIC) as specified in "O-RAN WG3: E2 Application Protocol" [2] clause 8.3.4. This test case covers the scenario where RIC SERVICE QUERY is sent by Near-RT RIC providing *RAN Functions Accepted List IE.* This test is designed to be agnostic to the E2 Service Model and RAN functions supported by the E2 Node. The expected outcome is successful validation of RIC SERVICE UPDATE message from E2 Node.

This test case is conditional mandatory if DUT claims support of RIC Service Update procedure.

###### Test Entrance Criteria

1. An SCTP association is successfully established between the two SCTP endpoints of the E2 interface.
2. The Test Simulator (Near-RT RIC) has already successfully completed E2 Setup procedure initiated from the DUT (E2 Node).

###### Test Methodology

Initial conditions

1. An SCTP association is successfully established between the two SCTP endpoints of the E2 interface.
2. The Test Simulator (Near-RT RIC) has already successfully completed E2 Setup procedure initiated from the DUT (E2 Node).
3. The Test Simulator (Near-RT RIC) has kept updated in its database the list of RAN Functions supported by the E2 Node and accepted by the Near-RT RIC from E2 Setup and any previous RIC Service Update procedures.

Procedure

Step 1. Initiate the RIC Service Update procedure from Test Simulator (Near-RT RIC) to the DUT (E2 Node) by sending RIC SERVICE QUERY message as specified in [2] clause 9.1.2.10 with information elements as specified in table below. *RAN Functions Accepted List IE* is the list of RAN Functions supported by the E2 Node and accepted by the Near-RT RIC from E2 Setup and any previous RIC Service Update procedures.

Table - Information Elements in RIC SERVICE QUERY message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE Name** | **Reference** | **Configuration / Value** |
| Message Type | [2] 9.2.3 | RIC SERVICE QUERY |
| Transaction ID | [2] 9.2.33 | INTEGER (0...255,..) |
| **RAN Functions Accepted List** |  | Updated list of RAN functions from previous procedures |
| >RAN Functions ID Item |  |  |
| >>RAN Function ID | [2] 9.2.8 | Same as in previous procedures |
| >>RAN Function Revision | [2] 9.2.24 | Same as in previous procedures |

</div>

Step 2. At the Test Simulator (Near-RT RIC) the received and transmitted E2 messages are recorded.

Step 3. The Test Simulator does the following validation:

The received message is RIC SERVICE UPDATE as specified in [2] clause 9.1.2.7 and validated with information elements as specified in table below.

Table - Validation of IEs in RIC SERVICE UPDATE message

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **IE/Group Name** | **Reference** | **Presence** | **Configuration/Value** |
| Message Type | [2] 9.2.3 | M | RIC SERVICE UPDATE |
| Transaction ID | [2] 9.2.33 | M | INTEGER (0...255,...) same as in RIC SERVICE QUERY message |
| **RAN Functions Added List** |  |  | List of RAN functions in E2 Node not present in RAN Functions Accepted List IE from RIC SERVICE QUERY message |
| >RAN Function Item |  |  | From 1 to maxofRANfunctionID (256) items |
| >>RAN Function ID | [2] 9.2.8 | M | Valid *RAN Function ID*, INTEGER (1...4095). 0 is invalid as reserved to Near-RT RIC internal usage |
| >>RAN Function Definition | [2] 9.2.23 | M | Valid *RAN Function Definition* as defined in the corresponding E2 Service Model [3] |
| >>RAN Function Revision | [2] 9.2.24 | M | Valid *RAN Function Revision*, INTEGER (0...4095) |
| >>RAN Function OID | [2] 9.2.31 | M | Valid *RAN Function OID* as specified in the corresponding E2 Service Model [3] |
| **RAN Functions Modified List** |  |  | List of RAN functions in E2 Node present in RAN Functions Accepted List IE from RIC SERVICE QUERY message but with at least one modification |
| >RAN Function Item |  |  | From 1 to maxofRANfunctionID (256) items |
| >>RAN Function ID | [2] 9.2.8 | M | Valid *RAN Function ID*, INTEGER (1...4095). same as in RIC SERVICE QUERY message |
| >>RAN Function Definition | [2] 9.2.23 | M | Valid *RAN Function Definition* as defined in the corresponding E2 Service Model [3] |
| >>RAN Function Revision | [2] 9.2.24 | M | Valid *RAN Function Revision*, INTEGER (0...4095) |
| >>RAN Function OID | [2] 9.2.31 | M | Valid *RAN Function OID* as specified in the corresponding E2 Service Model [3] |
| **RAN Functions Deleted List** |  |  | List of RAN functions not supported in E2 Node but present in RAN Functions Accepted List IE from RIC SERVICE QUERY message. |
| >RAN Function Item |  |  | From 1 to maxofRANfunctionID (256) items |
| >>RAN Function ID | [2] 9.2.8 | M | Valid *RAN Function ID*, INTEGER (1...4095).  same as in RIC SERVICE QUERY message |
| >>RAN Function Revision | [2] 9.2.24 | M | Valid *RAN Function Revision*, INTEGER (0...4095)  same as in RIC SERVICE QUERY message |

</div>

Step 4. If validation in step 3 is successful, RIC SERVICE UPDATE ACKNOWLEDGE message as specified in [2] clause 9.1.2.8 is sent to the DUT (E2 Node) with parameters shown in table below

Table - Parameters in RIC SERVICE UPDATE ACKNOWLEDGE message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE Name** | **Reference** | **Configuration / Value** |
| Message Type | [2] 9.2.3 | RIC SERVICE UPDATE ACKNOWLEDGE |
| Transaction ID | [2] 9.2.33 | INTEGER (0...255,..) same as received in RIC SERVICE UPDATE message |
| Global RIC ID | [2] 9.2.4 | Valid Global RIC ID following parameter in Test Simulator |
| **RAN Functions Accepted List** |  |  |
| >RAN Functions ID item |  | Accept all valid RAN Functions received in RIC SERVICE UPDATE message from Added, Modified and Deleted Lists |
| >>RAN Function ID | [2] 9.2.8 | Received RAN Function ID |
| >>RAN Function Revision | [2] 9.2.24 | Received RAN Function Revision |

</div>

Expected results

The test is considered passed if

1. Validation in test procedure step 3 is successful.
2. E2 logs recorded in the Test Simulator (Near-RT RIC) are aligned with the message flow specified in [2] figure 8.3.4.2-1

#### Test Cases for E2 Node Configuration Update procedure

##### E2 Node Configuration Update procedure after a Near-RT RIC initiated addition of a new TNL association (positive case)

###### Test Purpose

The purpose of this test case is to test the E2 Node Configuration Update procedure of the DUT (E2 Node) as specified in "O-RAN WG3: E2 Application Protocol" [2] clause 8.3.5 on a newly added TNL association. The expected outcome is successful validation of E2 NODE CONFIGURATION UPDATE message from E2 Node.

This test case is conditional mandatory if DUT (E2 Node) claims to support E2 Node Configuration Update procedure and multiple TNLAs over E2.

###### Test Entrance Criteria

1. The DUT (E2 Node) and Test Simulator support E2 Node Configuration Update, E2 Connection Update procedures and multiple TNLAs over E2.
2. The Test Simulator (Near-RT RIC) has the functionality to trigger E2 Connection Update procedure for addition of a new TNL Association.

###### Test Methodology

Initial conditions

1. An SCTP association is successfully established between the two SCTP endpoints of the E2 interface.
2. The Test Simulator (Near-RT RIC) has already successfully completed E2 Setup procedure initiated from the DUT (E2 Node).

Procedure

Step 1. Initiate the E2 Connection Update procedure from Test Simulator (Near-RT RIC) to the DUT (E2 Node) by requesting addition of a new TNL Association between DUT and Test Simulator. Validation of the E2 Connection Update procedure is out of the scope of this tests and can be referred in clause 6.2.1.K.

Step 2. At the Test Simulator (Near-RT RIC) the received, transmitted E2 messages and SCTP Transport level messages are recorded.

Step 3. The DUT (E2 Node) shall trigger E2 Node Configuration Update procedure on the new TNL Association.

Step 4. The Test Simulator does the following validation:

The received message is E2 NODE CONFIGURATION UPDATE as specified in [2] clause 9.1.2.11 and validated with information elements as specified in table below.

Table - Validation for E2 NODE CONFIGURATION UPDATE message

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **IE/Group Name** | **Reference** | **Presence** | **Configuration/Value** |
| Message Type | [2] 9.2.3 | M | E2 NODE CONFIGURATION UPDATE |
| Transaction ID | [2] 9.2.33 | M | Valid *Transaction ID,* INTEGER (0...255,..) |
| Global E2 Node ID | [2] 9.2.6 | M (in this scenario) | Valid *Global E2 Node ID* corresponding to claimed E2 Node type and supported modes. Same as in E2 Setup procedure. |

</div>

Step 5. If validation in step 4 is successful, E2 NODE CONFIGURATION UPDATE ACKNOWLEDGE message as specified in [2] clause 9.1.2.12 is sent to DUT (E2 Node) with parameters shown in table below.

Table - Parameters in E2 NODE CONFIGURATION UPDATE ACKNOWLEDGE message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE/Group Name** | **Reference** | **Configuration/Value** |
| Message Type | [2] 9.2.3 | E2 NODE CONFIGURATION UPDATE ACKNOWLEDGE |
| Transaction ID | [2] 9.2.33 | INTEGER (0...255,...) same as in E2 NODE CONFIGURATION UPDATE message |

</div>

Expected results

The test is considered passed if

1. Validation in test procedure Step 4 is successful.
2. E2 logs recorded in the Test Simulator (Near-RT RIC) are aligned with the message flow specified in [2] figure 8.3.5.2-1

##### E2 Node Configuration Update procedure for E2 Node initiated TNL association removal (positive case)

###### Test Purpose

The purpose of this test case is to test the E2 Node Configuration Update procedure of the DUT (E2 Node) as specified in "O-RAN WG3: E2 Application Protocol" [2] clause 8.3.5 for removal of a TNL association. The expected outcome is successful validation of E2 NODE CONFIGURATION UPDATE message from E2 Node and removal of the TNL Association.

This test case is conditional mandatory if DUT (E2 Node) claims to support E2 Node Configuration Update procedure and multiple TNLAs over E2.

###### Test Entrance Criteria

1. The DUT (E2 Node) and Test Simulator support E2 Node Configuration Update procedure and multiple TNLAs over E2.
2. The DUT (E2 Node) has the functionality to trigger E2 Node Configuration Update procedure for removal of a TNL Association.

###### Test Methodology

Initial conditions

1. Two SCTP associations are successfully established between the DUT (E2 Node) and the Test Simulator (Near-RT RIC).
2. The Test Simulator (Near-RT RIC) has already successfully completed E2 Setup procedure initiated from the DUT (E2 Node) on the first TNL Association.
3. The Test Simulator (Near-RT RIC) and DUT (E2 Node) have successfully completed the E2 Node Configuration Update procedure for addition of the second TNL Association, initiated either by the Test Simulator or by the DUT.

Procedure

Step 1. Initiate appropriate action in the DUT (E2 Node) to trigger E2 Node Configuration Update procedure for removal of the first TNL Association.

Step 2. At the Test Simulator (Near-RT RIC) the received, transmitted E2 messages and SCTP Transport level messages are recorded.

Step 3. The Test Simulator does the following validation:

The received message is E2 NODE CONFIGURATION UPDATE as specified in [2] clause 9.1.2.11 and validated with information elements as specified in table below.

Table - Validation for E2 NODE CONFIGURATION UPDATE message

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **IE/Group Name** | **Reference** | **Presence** | **Configuration/Value** |
| Message Type | [2] 9.2.3 | M | E2 NODE CONFIGURATION UPDATE |
| Transaction ID | [2] 9.2.33 | M | Valid *Transaction ID,* INTEGER (0...255,..) |
| **E2 Node TNL Association To Remove List** |  |  |  |
| > E2 Node TNL Association To Remove Item IEs |  |  |  |
| >> Transport Layer Information | [2] 9.2.29 | M | Valid *Transport Layer Information,* BIT STRING for Transport Layer Address (Mandatory, SIZE(1...160,...)) and Transport Layer Port (Optional, SIZE(16) )  Should correspond to the E2 Node Transport Layer Information of the first association |
| >> Transport Layer Information Near-RT RIC | [2] 9.2.29 | O | Optional  Valid *Transport Layer Information,* BIT STRING for Transport Layer Address (Mandatory, SIZE(1...160,...)) and Transport Layer Port (Optional, SIZE(16) )  If provided, should correspond to the Near-RT RIC Transport Layer Information of the first association. |

</div>

Step 4. If validation in step 3 is successful, E2 NODE CONFIGURATION UPDATE ACKNOWLEDGE message as specified in [2] clause 9.1.2.12 is sent to DUT (E2 Node) with parameters shown in table below.

Table - Parameters in E2 NODE CONFIGURATION UPDATE ACKNOWLEDGE message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE/Group Name** | **Reference** | **Configuration/Value** |
| Message Type | [2] 9.2.3 | E2 NODE CONFIGURATION UPDATE ACKNOWLEDGE |
| Transaction ID | [2] 9.2.33 | INTEGER (0...255,...) same as in E2 NODE CONFIGURATION UPDATE message |

</div>

Step 5. Based on SCTP Transport level messages recorded in Step 2, the Test Simulator validates that the DUT (E2 Node) initiates and performs SCTP connection removal of the first TNL Association, following E2 NODE CONFIGURATION UPDATE ACKNOWLEDGE message.

Expected results

The test is considered passed if

1. Validation in test procedure Step 3 and Step 5 are successful.
2. E2 logs recorded in the Test Simulator (Near-RT RIC) are aligned with the message flow specified in [2] figure 8.3.5.2-1

#### Test Cases for E2 Connection Update procedure

##### E2 Connection Update procedure for adding additional TNL Association (positive case)

###### Test Purpose

The purpose of this test case is to test the E2 Connection Update procedure of the DUT (E2 Node) as specified in "O-RAN WG3: E2 Application Protocol" [2] clause 8.3.6. The expected outcome is successful completion of E2 Connection Update procedure, E2 Node establishing additional TNL Association requested and validation of E2 CONNECTION UPDATE ACKNOWLEDGE message from E2 Node.

This testcase is conditional mandatory if DUT claims to support E2 Connection Update procedure and multiple TNLAs over E2.

###### Test Entrance Criteria

1. The DUT (E2 Node) and Test Simulator support E2 Connection Update procedure and multiple TNLAs over E2.
2. The Test Simulator (Near-RT RIC) has the functionality to initiate E2 Connection Update procedure.

###### Test Methodology

Initial conditions

1. An SCTP association is successfully established between the two SCTP endpoints of the E2 interface.
2. The Test Simulator (Near-RT RIC) has already successfully completed E2 Setup procedure initiated from the DUT (E2 Node).

Procedure

Step 1. Initiate the E2 Connection Update procedure from Test Simulator (Near-RT RIC) to the DUT (E2 Node) by sending E2 CONNECTION UPDATE message as specified in [2] clause 9.1.2.14 with information elements as specified in table below.

Table - Parameters in E2 CONNECTION UPDATE message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE Name** | **Reference** | **Configuration / Value** |
| Message Type | [2] 9.2.3 | E2 CONNECTION UPDATE |
| Transaction ID | [2] 9.2.33 | INTEGER (0...255,..) |
| **E2 Connection To Add List** |  |  |
| >E2 Connection to Add Item IEs |  |  |
| >>Transport Layer Information | [2] 9.2.29 | BIT STRING for Transport Layer Address (Mandatory, SIZE(1...160,...)) and Transport Layer Port (Optional, SIZE(16) )  Different from transport layer information used in initial SCTP association |
| >>TNL Association Usage | [2] 9.2.30 | ENUMERATED (ric service, support functions, both,..)  "ric service" used as valid example |

</div>

Step 2. At the Test Simulator (Near-RT RIC) the received, transmitted E2 messages and SCTP Transport level messages are recorded.

Step 3. Based on SCTP Transport level messages recorded in Step 2 validate that the DUT (E2 Node) initiates and establishes a new SCTP connection towards Test Simulator (Near-RT RIC) according to the Transport Layer information (address and port) provided in E2 CONNECTION UPDATE message.

Step 4. The Test Simulator does the following validation:

The received message is E2 CONNECTION UPDATE ACKNOWLEDGE as specified in [2] clause 9.1.2.15 and validated for information elements as specified in table below:

Table - Validation for E2 CONNECTION UPDATE ACKNOWLEDGE message

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **IE/Group Name** | **Reference** | **Presence** | **Configuration/Value** |
| Message Type | [2] 9.2.3 | M | E2 CONNECTION UPDATE ACKNOWLEDGE |
| Transaction ID | [2] 9.2.33 | M | INTEGER (0...255,...) same as in E2 CONNECTION UPDATE message |
| **E2 Connection Setup List** |  |  |  |
| >E2 Connection Setup Item IEs |  |  |  |
| >>Transport Layer Information | [2] 9.2.29 | M | Same BIT STRING as in E2 CONNECTION UPDATE message |
| >>TNL Association Usage | [2] 9.2.30 | M | "ric service" same as in E2 CONNECTION UPDATE message |

</div>

Expected results

The test is considered passed if

1. Validation in test procedure Step 3 and Step 4 are successful.
2. E2 logs recorded in the Test Simulator (Near-RT RIC) are aligned with the message flow specified in [2] figure 8.3.5.2-1

#### Test Cases for E2 Removal Procedure

##### E2 Removal procedure initiated by E2 Node (positive case)

###### Test Purpose

The purpose of this test case is to test the E2 Node initiated E2 Removal procedure of E2 Node as specified in "O-RAN WG3: E2 Application Protocol" [2] clause 8.3.7. The expected outcome of this test is successful removal of E2 signaling connection between the Near-RT RIC and the E2 Node.

This testcase is mandatory if the DUT (E2 Node) claims to support E2 Removal procedure.

###### Test Entrance Criteria

1. The DUT (E2 Node) and Test Simulator (Near-RT RIC) support E2 Removal procedure.
2. The DUT (E2 Node) has the functionality to trigger E2 Removal procedure.

###### Test Methodology

Initial conditions

1. An SCTP association is successfully established between the two SCTP endpoints of the E2 interface
   (SCTP initiation procedure has taken place before the execution of this test case).
2. The DUT (E2 Node) and Test Simulator has successfully completed E2 Setup procedure.

Procedure

Step 1. Initiate appropriate action in DUT (E2 Node) to trigger E2 Removal procedure.

Step 2. At the Test Simulator (Near-RT RIC) the received, transmitted E2 messages and SCTP Transport level messages are recorded.

Step 3. The Test Simulator does the following validation:

The received message is E2 REMOVAL REQUEST as specified in [2] clause 9.1.2.17 and validated with information elements as specified in table below:

Table - Validation of IEs in REMOVAL REQUEST message

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| IE/Group Name | Presence | Reference | Configuration / Value | |
| Message Type | M | 9.2.3 | REMOVAL REQUEST | |
| Transaction ID | M | 9.2.33 | INTEGER (0..255, ...) |

</div>

Step 4. If validation in step 3 is successful, E2 REMOVAL RESPONSE message as specified in [2] clause 9.1.2.18 is sent to the DUT (E2 Node) with parameters shown in table below

Table - Parameters in RESET RESPONSE message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE/Group Name** | **Reference** | **Validation** |
| Message Type | 9.2.3 |  |
| Transaction ID | 9.2.33 | INTEGER (0..255, ...)  Same value as the one in REMOVAL REQUEST. |
| Criticality Diagnostics | 9.2.2 | Will not be used in this test |

</div>

Step 5. Based on SCTP Transport level messages recorded in Step 2 validate that the DUT (E2 Node) initiates and complete the termination of the SCTP connection by sending the SCTP SHUTDOWN\_COMPLETE message.

Expected results

1. Validations in test procedure Step 4 and Step 5 are successful.
2. E2 logs recorded in the Test Simulator (Near-RT RIC) are aligned with the message flow specified in [2] figure 8.3.7.2-1

##### E2 Removal procedure initiated by Near-RT RIC (positive case)

###### Test Purpose

The purpose of this test case is to test the Near-RT initiated E2 Removal procedure of E2 Node as specified in "O-RAN WG3: E2 Application Protocol" [2] clause 8.3.7. The expected outcome of this test is successful removal of E2 signaling connection between the Near-RT RIC and the E2 Node.

This testcase is mandatory if the DUT (E2 Node) claims to supports E2 Removal procedure.

###### Test Entrance Criteria

1. The DUT (E2 Node) and Test Simulator (Near-RT RIC) support E2 Removal procedure.
2. The Test Simulator (Near-RT RIC) has the functionality to trigger E2 Removal procedure.

###### Test Methodology

Initial conditions

1. An SCTP association is successfully established between the two SCTP endpoints of the E2 interface
   (SCTP initiation procedure has taken place before the execution of this test case).
2. The DUT (E2 Node) and Test Simulator (Near-RT RIC) has successfully completed E2 Setup procedure.

Procedure

Step 1. Initiate the E2 Removal procedure from Test Simulator (Near-RT RIC) to the DUT (E2 Node) by sending E2 REMOVAL REQUEST message as specified in [2] clause 9.1.2.17 with information elements as specified in table below.

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| IE/Group Name | Reference | Configuration / Value |
| Message Type | 9.2.3 | REMOVAL REQUEST |
| Transaction ID | 9.2.33 | INTEGER (0..255, ...) |

</div>

Table - Parameters in in E2 REMOVAL REQUEST message

Step 2. At the Test Simulator (Near-RT RIC) the transmitted, received E2 messages and SCTP Transport level messages are recorded.

Step 3. The Test Simulator does the following validation:

The received message is E2 REMOVAL RESPONSE as specified in [2] clause 9.1.2.18 and validated with information elements as specified in table below:

Table - Validation for E2 RESET RESPONSE message

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Reference** | **Validation** |
| Message Type | M | 9.2.3 |  |
| Transaction ID | M | 9.2.33 | INTEGER (0..255, ...)  Same value as the one in REMOVAL REQUEST. |
| Criticality Diagnostics | O | 9.2.2 | Will not be used in this test |

</div>

Step 4. Based on SCTP Transport level messages recorded in Step 2 validate that the DUT (E2 Node) successfully acknowledge the termination of the SCTP connection initiated by the Test Simulator (Near-RT RIC) and sends SHUTDOWN\_ACK message

Expected results

1. Validation in test procedure step 4 is successful.
2. E2 logs recorded in the Test Simulator (Near-RT RIC) are aligned with the message flow specified in [2] figure 8.3.7.2-2

### E2AP Functional Procedures

#### Test Cases for RIC Subscription procedure

##### RIC Subscription procedure for single RIC action (positive)

###### Test Purpose

The purpose of this test case is to test RIC Subscription procedure of E2 Node for single RIC action as specified in [2] clause 8.2.1. This test is designed to be agnostic to the E2 Service Model and RAN functions. The RAN Function and RAN Function definition to which RIC subscribes are predefined between the DUT (E2 Node) and the Test Simulator (Near-RT RIC). The expected outcome of this test is successful RIC Subscription at E2 Node.

Test cases for RIC Subscription procedures for specific E2 Service Models and functionalities are defined in sections dedicated for Service Models which will reuse initial conditions, test procedures, and validation steps specified in this section for base E2AP functionality.

This testcase is mandatory if the DUT claims to support E2AP RIC Subscription procedure.

.

###### Test Entrance Criteria

1. The DUT (E2 Node) has the functionality to initiate E2 Setup procedure.
2. The DUT (E2 Node) and Test Simulator (Near-RT RIC) supports RIC Subscription procedure.
3. The Test Simulator (Near-RT RIC) is capable of subscribing to a Service Model and RAN function indicated during the E2 Setup procedure.

###### Test Methodology

Initial conditions

1. An SCTP association is successfully established between the two SCTP endpoints of the E2 interface.
2. The Test Simulator (Near-RT RIC) and DUT (E2 Node) have successfully completed E2 Setup procedure using the agreed RAN Function.

Procedure

Step 1. Initiate appropriate actions in Test Simulator (Near-RT RIC) to trigger RIC Subscription procedure to the DUT (E2 Node) for the agreed RAN Function with the below information elements:

Table - Parameters RIC SUBSCRIPTION REQUEST message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE/Group Name** | **Reference** | **Configuration / Value** |
| Message Type | [2] 9.1.1.1 | RIC SUBSCRIPTION REQUEST |
| RIC Request ID | [2] 9.1.1.1 | Any valid RIC Request ID, INTEGER (0.. 65535) |
| RAN Function ID | [2] 9.2.8 | Should be same as RAN Function ID indicated for the agreed RAN Function during E2 Setup procedure |
| RIC Subscription Details |  |  |
| >RIC Event Trigger Definition | [2] 9.2.9 | Use a supported Event Trigger in RAN Function IE in the E2 SETUP REQUEST message exchanged during E2 Setup Procedure |
| >Sequence of Actions |  |  |
| >>RIC Action ID | [2] 9.2.10 | Any valid RIC Action ID, INTEGER (0..255) |
| >>RIC Action Type | [2] 9.2.11 | Any valid RIC Action Type, ENUMERATED (Insert, Report, Policy, ...) indicated during E2 Setup procedure |
| >>RIC Action Definition | [2] 9.2.12 | Optionally added if required for the Service Model and RAN Function indicated during E2 Setup procedure |
| >>RIC Subsequent Action | [2] 9.2.13 | Optionally added if required for the RIC Action Type, Service Model and RAN Function used. |

</div>

Step 2. At the Test Simulator the received and transmitted E2 messages are recorded.

Step 3. Received RIC SUBSCRIPTION RESPONSE message defined in [2] clause 9.1.1.2 is validated for the following E2AP information elements defined:

Table - Validation for RIC SUBSCRIPTION RESPONSE message

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **IE/Group Name** | **IE type and reference** | **Presence** | **Validation** |
| Message Type | [2] 9.2.3 | M | RIC SUBSCRIPTION RESPONSE |
| RIC Request ID | [2] 9.2.7 | M | RIC Request ID used in RIC SUBSCRIPTION REQUEST |
| RAN Function ID | [2] 9.2.8 | M | RAN Function ID used in RIC SUBSCRIPTION REQUEST |
| RIC Actions Admitted List |  |  |  |
| >RIC Action ID | [2] 9.2.10 | M | RIC Action ID used in RIC SUBSCRIPTION REQUEST |

</div>

Expected results

The test is considered passed if

1. Validation in test procedure step 3 is successful.
2. E2 logs recorded in the Test Simulator (Near-RT RIC) are aligned with the message flow specified in [2] clause 8.2.1.2.

#### Test Cases for RIC Subscription Delete procedure

##### RIC Subscription Delete procedure (positive)

###### Test Purpose

The purpose of this test case is to test the RIC Subscription Delete procedure of the DUT (E2 Node) as specified in "O-RAN WG3: E2 Application Protocol" [2] clause 8.2.2. This test is designed to be agnostic to the E2 Service Model and RAN functions. The RAN Function and RAN Function definition to which RIC Subscribes are predefined between the DUT (E2 Node) and the Test Simulator (Near-RT RIC).

The expected outcome of this test is DUT (E2 Node) processing RIC SUBSCRIPTION DELETE REQUEST message successfully and sending the RIC SUBSCRIPTION DELETE RESPONSE.

This testcase is conditionally mandatory if the DUT claims to support RIC Subscription Delete procedure.

###### Test Entrance Criteria

1. The DUT (E2 Node) has the functionality to initiate E2 Setup procedure.
2. The DUT (E2 Node) and Test Simulator (Near-RT RIC) support RIC Subscription Delete procedure.
3. The RAN Function the RIC subscribes to and the RAN Function definition are predefined between the DUT (E2 Node) and the Test Simulator (Near-RT RIC). An example of the agreed RAN Function Definition IE as per configuration is shown in table below.

Table - E2SM KPM RAN Function Definition Profile IE profile for this test

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE Name** | **Reference** | **Configuration / Value** |
| RAN Function Name | [5] 8.3.1 |  |
| >RAN Function Short Name | [5] 8.3.1 | ORAN-E2SM-KPM |
| >RAN Function Service Model OID | [5] 8.3.1 | 1.3.6.1.4.1.53148.1.2.2 |
| > RAN Function Description | [5] 8.3.1 | KPM Monitor |

</div>

1. Near-RT RIC has functionality to trigger RIC subscription delete procedure to E2 Node for agreed RAN Functions.

###### Test Methodology

Initial conditions

1. An SCTP association is successfully established between the two SCTP endpoints of the E2 interface.
   (SCTP initiation procedure has taken place before or is taking place with execution of this test case).
2. The DUT (E2 Node) has successfully completed E2 Setup procedure and RIC subscription procedure with the agreed RAN Function ID and RIC request ID.

Procedure

Step 1. Initiate the RIC Subscription Delete procedure from Near-RT RIC to DUT (E2 Node) by sending RIC SUBSCIPTION DELETE REQUEST message as specified in [2] clause 9.1.1.4 with information elements as specified in table below.

Table - Information elements in RIC SUBSCRIPTION DELETE REQUEST message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE/Group Name** | **Reference** | **Configuration / Value** |
| Message Type | [2] 9.2.3 | RIC SUBSCRIPTION DELETE REQUEST |
| RIC Request ID | [2] 9.2.7 | Use RIC Request ID agreed during RIC Subscription procedure |
| RAN Function ID | [2] 9.2.8 | Use RAN Function ID agreed during RIC Subscription procedure |

</div>

Step 2. At the Test Simulator (Near-RT RIC) the received and transmitted E2 message is recorded.

Step 3. The Test Simulator does the following validation:

The received message is RIC SUBSCRIPTION DELETE RESPONSE message specified in [2] 9.1.1.5 and validated with information elements as specified in table below.

Table - Validation for RIC SUBSCRIPTION DELETE RESPONSE message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE/Group Name** | **IE type and reference** | **Validation** |
| Message Type | [2] 9.2.3 | RIC SUBSCRIPTION DELETE RESPONSE |
| RIC Request ID | [2] 9.2.7 | Received RIC Request ID |
| RAN Function ID | [2] 9.2.8 | Received RAN Function ID |

</div>

Step 4. Validation is done to confirm that RIC SUBSCRIPTION DELETE RESPONSE message has the same RIC Request ID and RAN Function ID as received in RIC SUBSCRIPTION DELETE REQUEST.

Expected results

The test is considered passed if

1. Validation in test procedure step 3 and step 4 are successful.
2. Step 2 E2 logs recorded in the Test Simulator (Near-RT RIC) are aligned with the message flow specified in "O-RAN WG3: E2 Application Protocol" [2] clause 8.2.2.2

##### RIC Subscription Delete Request procedure (Negative)-RIC Request ID unknown.

###### Test Purpose

The purpose of this test case is to test the RIC Subscription delete procedure of the DUT (E2 Node) as specified in "O-RAN WG3: E2 Application Protocol" [2] clause 8.2.2. This test is designed to be agnostic to the E2 Service Model and RAN functions, decided to be used and validates RIC Subscription Delete procedure of E2AP. The RAN Function and RAN Function definition to which RIC Subscribes are predefined between the DUT (E2 Node) and the Test Simulator (Near-RT RIC).

The expected outcome of this test is failure of RIC Subscription deletion due to unsupported RIC request ID.

This test case is conditionally mandatory if the DUT claims to support RIC Subscription Delete procedure.

###### Test Entrance Criteria

1. The DUT (E2 Node) has the functionality to initiate E2 Setup procedure.
2. The DUT (E2 Node) and Test Simulator (Near-RT RIC) support RIC Subscription Delete procedure.
3. The RAN Function the RIC subscribes to, and the RAN Function definition are predefined between the DUT (E2 Node) and the Test Simulator (Near-RT RIC). An example of the agreed RAN Function Definition IE as per configuration is shown in table below.

Table 6.2.2.2.2-1 E2SM KPM RAN Function Definition Profile IE profile for this test

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE Name** | **Reference** | **Configuration / Value** |
| RAN Function Name | [5] 8.3.1 |  |
| >RAN Function Short Name | [5] 8.3.1 | ORAN-E2SM-KPM |
| >RAN Function Service Model OID | [5] 8.3.1 | 1.3.6.1.4.1.53148.1.2.2 |
| > RAN Function Description | [5] 8.3.1 | KPM Monitor |

</div>

1. Near-RT RIC has functionality to trigger RIC subscription delete to the RAN Function agreed.

###### Test Methodology

Initial conditions

1. An SCTP association is successfully established between the two SCTP endpoints of the E2 interface. (SCTP initiation procedure has taken place before or is taking place with execution of this test case).
2. The DUT (E2 Node) has successfully completed E2 Setup procedure and RIC subscription procedure with agreed RAN function ID and RIC request ID.

Procedure

Step 1. Initiate the RIC Subscription Delete procedure from Test Simulator (Near-RT RIC) to the DUT (E2 Node) by sending RIC SUBSCRIPTION DELETE REQUEST message as specified in [2] clause 9.1.1.4 with information elements as specified in table below.

Table 6.2.2.2.2-2 Information elements in RIC SUBSCRIPTION DELETE REQUEST message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE/Group Name** | **Reference** | **Validation** |
| Message Type | [2] 9.2.3 | RIC SUBSCRIPTION DELETE REQUEST |
| RIC Request ID | [2] 9.2.7 | unsupported RIC Request ID |
| RAN Function ID | [2] 9.2.8 | Should be same as RAN Function ID indicated for the agreed RAN Function during E2 Setup procedure |

</div>

Step 2. At the Test Simulator (Near-RT RIC) the received and transmitted E2 messages are recorded.

Step 3. The test simulator does the following validation:

The received message is RIC SUBSCRIPTION DELETE FAILURE message specified in [2] 9.1.1.6 and validated with information elements as specified in the table below.

Table 6.2.2.2.2-3 Validation of IEs in RIC SUBSCRIPTION DELETE FAILURE message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE/Group Name** | **IE type and reference** | **Validation** |
| Message Type | [2] 9.2.3 | RIC SUBSCRIPTION DELETE FAILURE |
| RIC Request ID | [2] 9.2.7 | Received RIC Request ID |
| RAN Function ID | [2] 9.2.8 | Received RAN Function ID |
| Cause | [2]9.2.1 | RIC Request ID unknown |

</div>

Step 4. Validation is done to confirm that RIC SUBSCRIPTION DELETE FAILURE message sent with the cause value "RIC Request ID unknown".

Expected results

The test is considered passed if

1. Validation in test procedure step 3 and step 4 are successful.
2. RIC Subscription Delete Failure message sent to Near-RT RIC with the cause value "RIC Request ID unknown".

##### RIC Subscription Delete procedure (Negative)-RAN Function ID invalid.

###### Test Purpose

The purpose of this test case is to test the RIC Subscription delete procedure of the DUT (E2 Node) as specified in "O-RAN WG3: E2 Application Protocol" [2] clause 8.2.2. This test is designed to be agnostic to the E2 Service Model and RAN functions, decided to be used and validates RIC Subscription Delete procedure of E2AP. The RAN Function and RAN Function definition to which RIC Subscribes are predefined between the DUT (E2 Node) and the Test Simulator (Near-RT RIC).

The expected outcome of this test is failure of RIC Subscription deletion due to unsupported RAN function ID.

This test case is conditionally mandatory if the DUT claims to support RIC Subscription Delete procedure.

###### Test Entrance Criteria

1. The DUT (E2 Node) has the functionality to initiate E2 Setup procedure.
2. The DUT (E2 Node) and Test Simulator (Near-RT RIC) support RIC Subscription Delete procedure.
3. The RAN Function the RIC subscribes to, and the RAN Function definition are predefined between the DUT (E2 Node) and the Test Simulator (Near-RT RIC). An example of the agreed RAN Function Definition IE as per configuration is shown in table below.

Table 6.2.2.2.3-1 E2SM KPM RAN Function Definition Profile IE profile for this test

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE Name** | **Reference** | **Configuration / Value** |
| RAN Function Name | [5] 8.3.1 |  |
| >RAN Function Short Name | [5] 8.3.1 | ORAN-E2SM-KPM |
| >RAN Function Service Model OID | [5] 8.3.1 | 1.3.6.1.4.1.53148.1.2.2 |
| > RAN Function Description | [5] 8.3.1 | KPM Monitor |

</div>

1. Near-RT RIC has functionality to trigger RIC subscription delete to the unsupported RAN Function agreed.

###### Test Methodology

Initial conditions

1. An SCTP association is successfully established between the two SCTP endpoints of the E2 interface. (SCTP initiation procedure has taken place before or is taking place with execution of this test case).
2. The DUT (E2 Node) has successfully completed E2 Setup procedure and RIC subscription procedure with agreed RAN function ID and RIC request ID.

Procedure

Step 1. Initiate the RIC Subscription Delete procedure from Test Simulator (Near-RT RIC) to the DUT (E2 Node) by sending RIC SUBSCRIPTION DELETE REQUEST message as specified in [2] clause 9.1.1.4 with information elements as specified in table below.

Table 6.2.2.2.3-2 Information elements in RIC SUBSCRIPTION DELETE REQUEST message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE/Group Name** | **Reference** | **Validation** |
| Message Type | [2] 9.2.3 | RIC SUBSCRIPTION DELETE REQUEST |
| RIC Request ID | [2] 9.2.7 | Valid RIC Request ID |
| RAN Function ID | [2] 9.2.8 | Should be unsupported RAN Function ID |

</div>

Step 2. At the Test Simulator (Near-RT RIC) the received and transmitted E2 messages are recorded.

Step 3. The test simulator does the following validation:

The received message is RIC SUBSCRIPTION DELETE FAILURE message specified in [2] 9.1.1.6 and validated with information elements as specified in table below.

Table 6.2.2.2.3-3 Validation of IEs in RIC SUBSCRIPTION DELETE FAILURE message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE/Group Name** | **IE type and reference** | **Validation** |
| Message Type | [2] 9.2.3 | RIC SUBSCRIPTION DELETE FAILURE |
| RIC Request ID | [2] 9.2.7 | Received RIC Request ID |
| RAN Function ID | [2] 9.2.8 | Received RAN Function ID |
| Cause | [2]9.2.1 | RAN Function ID invalid |

</div>

Step 4. Validation is done to confirm that RIC SUBSCRIPTION DELETE FAILURE message sent with the cause value "RAN Function ID invalid".

Expected results

The test is considered passed if

1. Validation in test procedure step 3 and step 4 are successful.
2. RIC Subscription Delete Failure message sent to Near-RT RIC with the cause value "RAN Function ID invalid".

#### Test Cases for RIC Subscription Delete Required procedure

##### RIC Subscription Delete Required procedure (positive)

###### Test Purpose

The purpose of this test case is to test the RIC Subscription Delete Required procedure of the DUT (E2 Node) as specified in "O-RAN WG3: E2 Application Protocol" [2] clause 8.2.2A. This test is designed to be agnostic to the E2 Service Model and RAN functions decided to be used. The RAN Function and RAN Function definition to which RIC Subscribes are predefined between the DUT (E2 Node) and the Test Simulator (Near-RT RIC).

The expected outcome of this test is successful validation of RIC SUBSCRIPTION DELETE REQUIRED message.

This testcase is conditionally mandatory if the DUT (E2 Node) claims to support RIC Subscription Delete Required procedure.

###### Test Entrance Criteria

1. The DUT (E2 Node) has the functionality to initiate E2 Setup procedure.
2. The DUT (E2 Node) and Test Simulator (Near-RT RIC) supports RIC Subscription Delete Required procedure.
3. The RAN Function the RIC subscribes to, and the RAN Function definition are predefined between the DUT (E2 Node) and the Test Simulator (Near-RT RIC).
4. DUT (E2 Node) has functionality to trigger RIC Subscription Delete Required procedure.

###### Test Methodology

Initial conditions

1. An SCTP association is successfully established between the two SCTP endpoints of the E2 interface.
   (SCTP initiation procedure has taken place before or is taking place with execution of this test case).
2. The DUT (E2 Node) has successfully completed E2 Setup procedure and RIC subscription procedure with the agreed RAN Function ID and RIC request ID.

Procedure

Step 1. Initiate appropriate actions in DUT (E2 Node) to trigger RIC Subscription Delete Required procedure for the agreed RAN Function.

Step 2. At the Test Simulator the received and transmitted E2 messages are recorded.

Step 3. Received RIC SUBSCRIPTION DELETE REQUIRED message defined in [2] clause 9.1.1.6A is validated for the following E2AP information elements defined.

Table - validation for RIC SUBSCRIPTION DELETE REQUIRED message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE / Message value** | **Reference** | **Configuration / Value** |
| Message Type | [2] 9.2.3 | RIC SUBSCRIPTION DELETE REQUIRED |
| List of RIC Subscriptions to Be Removed |  | One item |
| RIC Request ID | [2] 9.2.7 | Should be same as the RIC Request ID used during subscription procedure |
| RAN Function ID | [2] 9.2.8 | Should be same as RAN Function ID used during subscription |
| Cause | [2] 9.2.1 | Any valid cause |

</div>

Step 4. If validation in Step 3 is successful RIC Subscription Delete procedure is initiated by Test Simulator (Near-RT RIC).

Expected results

The test is considered passed if

1. Validations in test procedure Step 3 is successful.
2. Step 2 E2 logs recorded in the Test Simulator (Near-RT RIC) are aligned with the message flow specified in "O-RAN WG3: E2 Application Protocol" [2] clause 8.2.2A.2

#### Test Cases for RIC Indication procedure

##### RIC Indication procedure for REPORT Service (positive)

###### Test Purpose

The purpose of this test case is to test the RIC Indication procedure of E2 Node as specified in [2] clause 8.2.3. This test is designed to be agnostic to the E2 Service Model and RAN functions. The RAN Function and RAN Function definition to which RIC Subscribes are predefined between the DUT (E2 Node) and the Test Simulator (Near-RT RIC). The expected outcome of this test is successful validation of the RIC INDICATION message associated with a REPORT Service from the E2 Node.

Test cases for RIC Indication procedures for specific E2 Service Models and functionalities are defined in sections dedicated for Service Models. These will reuse initial conditions, test procedures, and validation steps specified in this section for base E2AP functionality.

This testcase is mandatory if the DUT (E2 Node) claims to support E2AP RIC Indication procedure.

###### Test Entrance Criteria

1. The DUT (E2 Node) has the functionality to initiate E2 Setup procedure and accept RIC Subscription procedure for REPORT Service.
2. The DUT (E2 Node) and Test Simulator (Near-RT RIC) support RIC Indication procedure.
3. The RAN Function to which RIC subscribes and the RAN Function definition are predefined between the DUT (E2 Node) and the Test Simulator (Near-RT RIC), see clause 6.2.2.1.
4. DUT (E2 Node) has functionality to trigger RIC Indication procedure.

###### Test Methodology

Initial conditions

1. An SCTP association is successfully established between the two SCTP endpoints of the E2 interface
   (SCTP initiation procedure has taken place before or is taking place with execution of this test case).
2. The Test Simulator (Near-RT RIC) has already successfully completed E2 Setup procedure initiated from the DUT (E2 Node) with the agreed RAN Function been added.
3. Test Simulator (Near-RT RIC) has already initiated a RIC Subscription procedure to the DUT (E2 Node) and received a successful response with at least one successful action associated with REPORT Service. The RIC Event Trigger Definition and RIC Action Definition IEs specific to E2 Service Models are not defined in the scope of this test.

Procedure

Step 1. Initiate appropriate actions in the DUT (E2 Node) and connected test tools to trigger sending of RIC INDICATION messages to Test Simulator (Near-RT RIC)

Step 2. At the Test Simulator (Near-RT RIC) the received and transmitted E2 messages are recorded.

Step 3. The Test Simulator does the following validation:

The received message is RIC INDICATION message as specified in [2] clause 9.1.1.7 and validated with information elements as specified in table below

Table - Validation of IEs in RIC INDICATION message

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **IE/Group Name** | **Reference** | **Presence** | **Configuration/ Value** |
| Message Type | [2] 9.2.3 | M | RIC INDICATION |
| RIC Request ID | [2] 9.2.7 | M | Same as the RIC Request ID received in the corresponding RIC subscription procedure |
| RAN Function ID | [2] 9.2.8 | M | Same as the RAN Function ID indicated for the agreed RAN Function during E2 Setup procedure |
| RIC Action ID | [2] 9.2.10 | M | Same as the RIC Action ID received in the corresponding RIC subscription procedure |
| RIC Indication SN | [2] 9.2.14 | O | Sequence Number is optional and not validated in this test case |
| RIC Indication Type | [2] 9.2.15 | M | Report |
| RIC Indication Header | [2] 9.2.17 | M | OCTECT STRING , this IEs defined in RAN Function specific E2 Service Model [4] [5] [6] is outside the scope of this test. |
| RIC Indication Message | [2] 9.2.16 | M | OCTECT STRING , this IEs defined in RAN Function specific E2 Service Model [4] [5] [6] is outside the scope of this test. |
| RIC Call process ID | [2] 9.2.18 | O | Not applicable.  with RIC Action Type IE as "Insert" |

</div>

Expected results

The test is considered passed if validation in step 3 is successful.

#### Test Cases for RIC Control procedure

##### RIC Control procedure for CONTROL Service (positive)

###### Test Purpose

The purpose of this test case is to test the RIC Control procedure of E2 Node as specified in [2] clause 8.2.4. This test is designed to be agnostic to the E2 Service Model and RAN functions. The RAN Function and RAN Function definition to which RIC Subscribes are predefined between the DUT (E2 Node) and the Test Simulator (Near-RT RIC). The expected outcome of this test is successful RIC Control from Near-RT RIC to the E2 Node.

Test cases for RIC Control procedures for specific E2 Service Models and functionalities are defined in sections dedicated for Service Models. These will reuse initial conditions, test procedures, and validation steps specified in this section for base E2AP functionality.

This testcase is mandatory if the DUT (E2 Node) claims to support E2AP RIC Control procedure.

###### Test Entrance Criteria

1. The DUT (E2 Node) has the functionality to initiate E2 Setup procedure.
2. The DUT (E2 Node) and Test Simulator (Near-RT RIC) supports RIC Control procedure.
3. The RAN Function are predefined between the DUT (E2 Node) and the Test Simulator (Near-RT RIC), see clause 5.2.2.1.

###### Test Methodology

Initial conditions

1. An SCTP association is successfully established between the two SCTP endpoints of the E2 interface
   (SCTP initiation procedure has taken place before or is taking place with execution of this test case).
2. The Test Simulator (Near-RT RIC) and DUT (E2 Node) have successfully completed E2 Setup procedure using the agreed RAN Function.

Procedure

Step 1. Initiate appropriate actions in Test Simulator (Near-RT RIC) to trigger RIC Control procedure to the DUT (E2 Node) for the agreed RAN Function with the below information elements:

Table - Parameters in RIC CONTROL REQUEST message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE/Group Name** | **Reference** | **Semantics description** |
| Message Type | [2] 9.2.3 | RIC CONTROL REQUEST |
| RIC Request ID | [2] 9.2.7 | Valid RIC Request ID |
| RAN Function ID | [2] 9.2.8 | Same as the RAN Function ID indicated for the agreed RAN Function during E2 Setup procedure |
| RIC Call Process ID | [2] 9.2.18 | Not applicable.  This IE shall only be used when RIC CONTROL REQUEST message is in response to RIC Subscription with RIC Action Type IE as "Insert" |
| RIC Control Header | [2] 9.2.20 | IEs defined in RAN Function specific E2 Service Model [4] [5] [6] is outside the scope of this test. |
| RIC Control Message | [2] 9.2.19 | IEs defined in RAN Function specific E2 Service Model [4] [5] [6] is outside the scope of this test. |
| RIC Control Ack Request | [2] 9.2.21 | Ack |

</div>

Step 2. At the Test Simulator the received and transmitted E2 messages are recorded.

Step 3. Received RIC CONTROL ACKNOWLEDGE message defined in [2] clause 9.1.1.9 is validated for the following E2AP information elements defined.

Table - Validation for RIC CONTROL RESPONSE message

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE/Group Name** | **Reference** | **Semantics description** |
| Message Type | [2] 9.2.3 | RIC CONTROL ACKNOWLEDGE |
| RIC Request ID | [2] 9.2.7 | Received RIC Request ID in RIC CONTROL REQUEST |
| RAN Function ID | [2] 9.2.8 | Same as the RAN Function ID indicated for the agreed RAN Function during E2 Setup procedure |
| RIC Call process ID | [2] 9.2.18 | Not applicable.  This IE shall only be used when RIC CONTROL REQUEST message is in response to RIC Subscription with RIC Action Type IE as "Insert" |
| RIC Control Outcome | [2] 9.2.25 | Not used |

</div>

Expected results

The test is considered passed if

1. Validation in test procedure step 3 is successful.
2. E2 logs recorded in the Test Simulator (E2 Node) are aligned with the message flow specified in [2] clause 8.2.4.2.

### E2AP Functional Procedures for E2SM-KPM

FFS

### E2AP Functional Procedures for E2SM-RC

FFS

### E2AP Functional Procedures for E2SM-NI

FFS

# Test Cases for Interoperability between Near-RT RIC and E2 Node

## General

### Protocol Analyzer and TAP Interface

A TAP interface and a protocol analyzer may be used over the E2 interface to passively capture and analyze packets for test case validation. Alternatively, packet capture capabilities of the SUT may be used to capture packets for analysis to validate the test cases. Captured pactets with associated analysis should be attached to the test report.
When the following test cases refer to the protocol analyzer and the TAP interface, alternative E2 interface packet capture utilised as long as decoding and analysis have been performed and are available in the test report.

## Interoperability Test Cases

### Test Cases for E2AP Global Procedures

#### Near-RT RIC Support procedures

##### Test Purpose

The purpose of this test case is to test the interoperability of Near-RT RIC and E2 Node in the E2 interface management and Near-RT RIC support functions as specified in "O-RAN WG3: E2 General Aspects and Principles" [1] clause 5.5 and "O-RAN WG3: E2 Application Protocol" [2] clause 8.3.
The expected outcome is successful establishment and management of the E2 interface in the SUT.

This test case is conditional mandatory if the SUT (Near-RT and E2 Node) claims to support E2AP global procedures with the exception of any test steps marked as optional.

##### Test Entrance Criteria

1. Each element of the SUT (Near-RT RIC and E2 Node) supports E2AP global procedures
2. (Optional) the Near-RT RIC element of the SUT has the ability to trigger a RIC SERVICE QUERY message (the optional steps 3 can be performed).
3. (Optional) one element of the SUT (Near-RT RIC or E2 Node) has the ability to trigger E2 Removal procedure, (the optional step 8 can be performed).

##### Test Methodology

###### Initial conditions

1. Each element of the SUT (Near-RT RIC and E2 Node) are connected through E2 interface.
2. Network between Near-RT RIC and E2 Node allows connectivity between the elements.
3. Near-RT RIC and E2 Nodes are configured, through O1 interface or other vendor specific configuration interface, with the needed parameters for the association, in particular the transport layer parameters (Near-RT RIC address configured in E2 Node), RIC Service information and E2 node configuration.
4. The status of the SCTP association and E2 setup procedure is in one of the following conditions
   condition A: SCTP association has not yet been established. Then E2 Node shall initiate the SCTP procedure during step 2 below.
   condition B: SCTP association has been established and configuration of the E2 Node is such that E2 Node is not yet sending any E2 SETUP REQUEST message towards Near-RT RIC.
   condition C: SCTP association has been established and E2 Node is sending E2 SETUP REQUEST messages to Near-RT RIC but configuration in Near-RT RIC is such that no E2 SETUP RESPONSE is sent back.

###### Procedure

Step 1. Enable the protocoal analyzer to capture, record and decode the E2 signalling between SUT elements via the TAP interface.

Step 2. Depending on the initial condition 4), enable the E2 interface towards the associated element either in Near-RT RIC or in E2 Node, by configuration or by establishment of the physical connection.

E2 Node initiates E2 Setup procedure by sending E2 SETUP REQUEST message to the Near-RT RIC

Near-RT RIC sends E2 SETUP RESPONSE to E2 Node with the list of accepted and rejected RAN Functions

Step 3. (Optional) If the Near-RT RIC has the ability to trigger RIC SERVICE QUERY message towards the E2 Node, initiate appropriate action to trigger the procedure.

After reception of RIC SERVICE QUERY message, E2 Node sends RIC SERVICE UPDATE message to the Near-RT RIC. E2 Node may send RIC SERVICE UPDATE message without any IE except for *Message Type* IE as specified in [2] clause 8.3.4.2.

Near-RT RIC sends RIC SERVICE UPDATE ACKNOWLEDGE message to the E2 Node.

Step 4. Take appropriate action to initiate on E2 Node one of the following RIC service configuration changes:
- Adding a new RAN Function
- Modifying an existing RAN Function
- Deleting an existing RAN Function

Step 5. E2 Node initiates RIC Service Update procedure by sending RIC SERVICE UPDATE message to the Near-RT RIC with the configuration change performed in Step 4.

Near-RT RIC sends RIC SERVICE UPDATE ACKNOWLEDGE message to the E2 Node.

Step 6. Take appropriate action to initiate on the E2 Node one of the following E2 Node system configuration changes
- Adding a new E2 Node Component Configuration
- Updating an existing E2 Node Component Configuration
- Removing an existing E2 Node Component Configuration

Step 7. E2 Node triggers E2 Node Configuration Update procedure by sending E2 NODE CONFIGURATION UPDATE message to the Near-RT RIC.

Near-RT RIC sends E2 NODE CONFIGURATION UPDATE ACKNOWLEDGE message to the E2 Node.

Step 8 (Optional) If one element of the SUT (Near-RT RIC or E2 Node) has the ability to trigger E2 Removal procedure, then initiate appropriate action to trigger the procedure.
- The element of the SUT (Near-RT RIC or E2 Node) initiating the E2 Removal procedure sends E2 REMOVAL REQUEST message.
- The other element sends E2 REMOVAL RESPONSE message to initiating element.
- The initiating element initiates the removal of the TNL associations.

###### Expected results

The test is considered passed if

1. All messages are correctly decoded by the protocol analyzer
2. E2 logs recorded in the protocol analyzer for steps 1 to 8 above are aligned with successful operation message flows specified in [2] clause 8.3. and coherent with the configuration in E2 Node and Near-RT RIC

In particular the following procedures should be throughly validated:

E2 Setup procedure (Step 2): RAN Functions and E2 Node Component Configuration configured in E2 Node.
are present in E2 SETUP message, and in E2 SETUP RESPONSE message *RAN Functions Accepted List IE* or *RAN Functions Rejected List* IE for RAN Functions and *E2 Node Component Configuration Addition Acknowledge List* IE for E2 Node Component Configurations.

RIC Service Update procedure (Step 5): RIC SERVICE UPDATE message is aligned with the modification performed in E2 Node configuration in Step 4. And the RAN Functions present in RIC SERVICE UPDATE message are present either in *RAN Functions Accepted List* IE or *RAN Functions Rejected List* IE of RIC SERVICE UPDATE ACKNOWLEDGE message.

E2 Node Configuration Update procedure (Step 7) E2 NODE CONFIGURATION UPDATE message is aligned the modification performed in E2 Node configuration in Step 6. And the E2 Node Component Configurations present in E2 NODE CONFIGURATION UPDATE message are present in E2 NODE CONFIGURATION UPDATE ACKNOWLEDGE message in the corresponding *E2 Node Component Configuration Addition Acknowledge List*, *E2 Node Component Configuration Update Acknowledge List* or *E2 Node Component Configuration Removal Acknowledge List* information elements.

###### RAN Functions, E2 Node Components Configuration rejection and unexpected behaviors

If any of the following IEs is observed in the recorded E2 logs:

* *RAN Functions Rejected List* IE in E2 SETUP RESPONSE message or RIC SERVICE UPDATE ACKNOWLEDGE message
* *E2 Connection Failed to Setup List* IE in E2 CONNECTION UPDATE ACKNOWLEDGE message
* *Outcome* IE from *E2 Node Component Configuration Acknowledge* IE is *failure* in E2 SETUP RESPONSE message or in E2 NODE CONFIGURATION UPDATE ACKNOWLEDGE message
* *Criticality diagnostics* IE in E2 REMOVAL RESPONSE message

the test result shall be determined to be "successful with remarks".

If a RESET procedure has been triggered by one the elements of the SUT, the test result shall determined to be "successful with remarks"

###### Unsuccesful operations and Error Indication

If any of the global procedures completes unsuccessfully or if an Error Indication procedure is triggered by one of the elements of the SUT, then the test result shall be determined as failed.

### Test Cases for E2AP Functional Procedures for E2SM-KPM

#### Tests cases for RIC REPORT Service Styles procedures E2SM-KPM

##### RIC Subscription and RIC Indication procedures with REPORT Service Style 1, Single Action Format Type 1, Indication Message Format Type 1

###### Test Purpose

The purpose of this test case is to test the interoperability of Near-RT RIC and E2 Node in RAN function "O-RAN-E2SM-KPM" Report Service Style 1: E2 Node Measurement, as specified in [5] clause 7.4.2
The expected outcome is successful RIC Subscription and RIC Indication procedures by the SUT.

This test case is conditional mandatory if the SUT (Near-RT and E2 Node) claims to support RAN function "O-RAN-E2SM-KPM" Report Style 1.

###### Test Entrance Criteria

1. Each element of the SUT (Near-RT RIC and E2 Node) supports RAN function "O-RAN-E2SM-KPM" Report Style 1, Action Format Type 1, and Indication Message Format Type 1.
2. Each element of the SUT (Near-RT RIC and E2 Node) supports RIC Subscription procedure and RIC Indication procedure for the above RAN Function.
3. The Test Equipment (RU and UE simulator) has the ability to generate the traffic required for the agreed measurement.
4. A reporting period for the measurement is agreed and configured in the SUT. The test duration is then selected to allow to cover several reporting periods.
5. The RAN Function to which RIC subscribes and the RAN Function definition are predefined between the elements of the SUT (Near RT RIC and E2 Node). The agreed RAN Function Definition IE defined in [5] clause 8.2.2.1 is shown in table below.

Table 7.2.2.1.1-1 E2SM KPM Function Definition Profile IE profile

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE Name** | **Reference** | **Configuration / Value** |
| RAN Function Name | [5] 8.3.2 |  |
| >RAN Function Short Name | [5] 8.3.2 | ORAN-E2SM-KPM |
| >RAN Function Service Model OID | [5] 8.3.2 | 1.3.6.1.4.1.53148.1.1.2.2 |
| > RAN Function Description | [5] 8.3.2 | KPM Monitor |
| Sequence of Event Trigger styles |  |  |
| >RIC Event Trigger Style Type | [5] 8.3.3 | 1 |
| >RIC Event Trigger Style Name | [5] 8.3.4 | Periodic Report |
| >RIC Event Trigger Format Type | [5] 8.3.5 | 1 |
| Sequence of Report styles |  |  |
| > RIC Report Style Type | [5] 8.3.3 | 1 |
| > RIC Report Style Name | [5] 8.3.4 | E2 Node Measurement |
| > RIC Report Action Format Type | [5] 8.3.5 | 1 |
| > Sequence of Measurement Info for Action |  |  |
| >> Measurement Type Name | [5] 8.3.9 | Name of one Measurement agreed for this test |
| >RIC Indication Header Format | [5] 8.3.5 | 1 |
| >RIC Indication Message Format | [5] 8.3.5 | 1 |

</div>

###### Test Methodology

Initial conditions

1. The elements of the SUT (Near-RT RIC and E2 Node) are connected by E2 interface
2. The E2 Setup procedure is successfully completed in the SUT with the agreed RAN Function Definition IE

Procedure

Step 1. Enable the protocol analyzer to capture, record and decode the E2 signalling between SUT elements via the TAP interface

Step 2. Initiate in the Test Equipment the traffic required for the agreed measurement

Step 3. Perform RIC Subscription Request from the Near-RT RIC

An example of how this procedure can be performed (or triggered) is listed below. The exact method to perform (or trigger) this procedure is out of scope of this specification and is left up to the implementation of the DUT.

1. Initiate appropriate action or configuration in the SUT to trigger the RIC Subscription Request

Step 4. The Near-RT RIC initiates RIC Subscription procedure by sending RIC SUBSCRIPTION REQUEST message to the E2 Node, with the agreed RAN Function Definition IE and measurement information

The E2 Node sends RIC SUBSCRIPTION RESPONSE to Near-RT RIC with the list of admitted and not admitted RAN Actions

The E2 Node sends periodic REPORT RIC INDICATION messages for the agreed RAN Function Definition with the agreed measurement to the Near-RT RIC

Step 5. The test is ended after the test duration defined in test entrance criteria, allowing the E2 Node to send several RIC INDICATION messages to the Near-RT RIC

Expected results

The test is considered passed if

1. All messages are correctly decoded by the protocol analyzer
2. E2 logs recorded in the protocol analyzer are aligned with successful operation message flows specified in [2] clause 8.2. and consistent with the configuration in E2 Node and Near-RT RIC
3. RIC Subscription procedure is successful and it is validated in recorded E2 logs that
   - *RAN Function ID* IE corresponds to the agreed RAN Function (during E2 Setup procedure) in both RIC SUBSCRIPTION REQUEST and RIC SUBSCRIPTION RESPONSE messages
   - *RIC REQUEST ID IE* is the same in RIC SUBSCRIPTION REQUEST, RIC SUBSCRIPTION RESPONSE and RIC INDICATION messages
   - *RIC Action ID IE* is the same in RIC SUBSCRIPTION REQUEST message, in *RIC Actions Admitted List IE* of RIC SUBSCRIPTION RESPONSE message and in RIC INDICATION message
   - *RIC Action Definition IE* in RIC SUBSCRIPTION REQUEST message is E2SM-KPM Action Definition Format 1 with the agreed measurement.
4. Periodicity of the RIC INDICATION messages in the recorded E2 logs corresponds with the value of *Reporting Period IE* from *RIC Event Trigger Definition IE* of RIC SUBSCRIPTION REQUEST message as defined in [5] clause 8.2.1.1.1
5. *Measurement Type* IE in the RIC INDICATION messages is the same as that in the RIC SUBSCRITPION REQUEST message
6. Measurements reported by the E2 Node in the RIC Indication messages are consistent with the traffic simulated by the Test Equipment

If an Error Indication procedure is triggered during the test, then the test result shall be determined as failed.

If the agreed *RIC Action ID IE* is present in the *RIC Actions Not Admitted List IE* of RIC SUBSCRIPTION RESPONSE message, then the test result shall be determined as failed.

##### RIC Subscription and RIC Indication procedures with REPORT Service Style 2, Single Action Format Type 2, Indication Message Format Type 1

###### Test Purpose

The purpose of this test case is to test the interoperability of Near-RT RIC and E2 Node in RAN function "O-RAN-E2SM-KPM" Report Service Style 2: E2 Node Measurement for a single UE, as specified in [5] clause 7.4.3
The expected outcome is successful RIC Subscription and RIC Indication procedures by the SUT.

This test case is conditional mandatory if the SUT (Near-RT and E2 Node) claims to support RAN function "O-RAN-E2SM-KPM" Report Style 2.

###### Test Entrance Criteria

1. Each element of the SUT (Near-RT RIC and E2 Node) supports RAN function "O-RAN-E2SM-KPM" Report Style 2, Action Format Type 2, and Indication Message Format Type 1
2. Each element of the SUT (Near-RT RIC and E2 Node) supports RIC Subscription procedure and RIC Indication procedure for the above RAN Function
3. The Test Equipment (RU and UE simulator) has the ability to generate the traffic required for the agreed measurement
4. A reporting period for the measurement is agreed and configured in the SUT. The test duration is then selected to allow to cover several reporting periods
5. The RAN Function to which RIC subscribes and the RAN Function definition are predefined and shared between the elements of the SUT (Near RT RIC and E2 Node). The agreed RAN Function Definition IE defined in [5] clause 8.2.2.1 is shown in table below.

Table 7.2.2.1.2-1 E2SM KPM Function Definition Profile IE profile

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE Name** | **Reference** | **Configuration / Value** |
| RAN Function Name | [5] 8.3.2 |  |
| >RAN Function Short Name | [5] 8.3.2 | ORAN-E2SM-KPM |
| >RAN Function Service Model OID | [5] 8.3.2 | 1.3.6.1.4.1.53148.1.1.2.2 |
| > RAN Function Description | [5] 8.3.2 | KPM Monitor |
| Sequence of Event Trigger styles |  |  |
| >RIC Event Trigger Style Type | [5] 8.3.3 | 1 |
| >RIC Event Trigger Style Name | [5] 8.3.4 | Periodic Report |
| >RIC Event Trigger Format Type | [5] 8.3.5 | 1 |
| Sequence of Report styles |  |  |
| > RIC Report Style Type | [5] 8.3.3 | 2 |
| > RIC Report Style Name | [5] 8.3.4 | E2 Node Measurement for a single UE |
| > RIC Report Action Format Type | [5] 8.3.5 | 2 |
| > Sequence of Measurement Info for Action |  |  |
| >> Measurement Type Name | [5] 8.3.9 | Name of one Measurement agreed for this test |
| >RIC Indication Header Format | [5] 8.3.5 | 1 |
| >RIC Indication Message Format | [5] 8.3.5 | 1 |

</div>

###### Test Methodology

Initial conditions

1. The elements of the SUT (Near-RT RIC and E2 Node) are connected by E2 interface
2. E2 Setup procedure is successfully completed in the SUT with the agreed RAN Function Definition IE

Procedure

Step 1. Enable the protocol analyzer to capture, record and decode the E2 signalling between SUT elements via the TAP interface

Step 2. Initiate in the Test Equipment the traffic required for the agreed measurement

Step 3. Perform RIC Subscription Request from the Near-RT RIC.

An example of how this procedure can be performed (or triggered) is listed below. The exact method to perform (or trigger) this procedure is out of scope of this specification and is left up to the implementation of the DUT.

1. Initiate appropriate action or configuration in the SUT to trigger the RIC Subscription Request

Step 4. The Near-RT RIC initiates the RIC Subscription procedure by sending RIC SUBSCRIPTION REQUEST message to the E2 Node, with the agreed RAN Function Definition IE and measurement information

The E2 Node sends RIC SUBSCRIPTION RESPONSE to Near-RT RIC with the list of admitted and not admitted RAN Actions

The E2 Node sends periodic REPORT RIC INDICATION messages for the agreed RAN Function Definition with the agreed measurement to the Near-RT RIC for the requested UE Id

Step 5. The test is ended after the test duration defined in test entrance criteria, allowing the E2 Node to send several RIC INDICATION messages to the Near-RT RIC

Expected results

The test is considered passed if

1. All messages are correctly decoded by the protocol analyzer
2. E2 logs recorded in the protocol analyzer are aligned with successful operation message flows specified in [2] clause 8.2. and consistent with the configuration in E2 Node and Near-RT RIC
3. RIC Subscription procedure is successful and it is validated in recorded E2 logs that
   - *RAN Function ID* IE corresponds to the agreed RAN Function (during E2 Setup procedure) in both RIC SUBSCRIPTION REQUEST and RIC SUBSCRIPTION RESPONSE messages
   - *RIC REQUEST ID IE* is the same that in the RIC SUBSCRIPTION REQUEST, RIC SUBSCRIPTION RESPONSE and RIC INDICATION messages
   - The *RIC Action ID IE* is the same as that in the RIC SUBSCRIPTION REQUEST message in the *RIC Actions Admitted List IE* of the RIC SUBSCRIPTION RESPONSE message and in the RIC INDICATION message
   - The *RIC Action Definition IE* in the RIC SUBSCRIPTION REQUEST message indicates E2SM-KPM Action Definition Format 1 with the agreed measurement
4. Periodicity of the RIC INDICATION messages in the recorded E2 logs corresponds with the value of *Reporting Period IE* from *RIC Event Trigger Definition IE* of RIC SUBSCRIPTION REQUEST message as defined in [5] clause 8.2.1.1.1
5. *The Measurement Type* IE in the RIC INDICATION messages is the same as that in RIC SUBSCRITPION REQUEST message
6. Measurements reported by E2 Node in the RIC Indication messages are consistent with the traffic simulated by the Test Equipment for the specified UE Id

If an Error Indication procedure is triggered during the test, then the test result shall be determined as failed.

If the agreed *RIC Action ID IE* is present in the *RIC Actions Not Admitted List IE* of RIC SUBSCRIPTION RESPONSE message, then the test result shall be determined as failed.

##### RIC Subscription and RIC Indication procedures with REPORT Service Style 3, Single Action Format Type 3, Indication Message Format Type 2

###### Test Purpose

The purpose of this test case is to test the interoperability of Near-RT RIC and E2 Node in RAN function "O-RAN-E2SM-KPM" Report Service Style 3: Condition-based, UE-level E2 Node Measurement, as specified in [5] clause 7.4.4
The expected outcome is successful RIC Subscription and RIC Indication procedures by the SUT.

This test case is conditional mandatory if the SUT (Near-RT and E2 Node) claims to support RAN function "O-RAN-E2SM-KPM" Report Style 3.

###### Test Entrance Criteria

1. Each element of the SUT (Near-RT RIC and E2 Node) supports RAN function "O-RAN-E2SM-KPM" Report Style 3 and Action Format Type 3 and Indication Message Format Type 2
2. The RAN Function to which RIC subscribes and the RAN Function definition are predefined and shared between the elements of the SUT (Near RT RIC and E2 Node). A Measurement Type as specified in [5] clause 8.3.9 is agreed along with a Matching Condition as specified in [5] clause 8.2.1.2.3. The agreed RAN Function Definition IE defined in [5] clause 8.2.2.1 is shown in table below

Table 7.2.2.1.3-1 E2SM KPM Function Definition Profile IE profile

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE Name** | **Reference** | **Configuration / Value** |
| RAN Function Name | [5] 8.3.2 |  |
| >RAN Function Short Name | [5] 8.3.2 | ORAN-E2SM-KPM |
| >RAN Function Service Model OID | [5] 8.3.2 | 1.3.6.1.4.1.53148.1.1.2.2 |
| > RAN Function Description | [5] 8.3.2 | KPM Monitor |
| Sequence of Event Trigger styles |  |  |
| >RIC Event Trigger Style Type | [5] 8.3.3 | 1 |
| >RIC Event Trigger Style Name | [5] 8.3.4 | Periodic Report |
| >RIC Event Trigger Format Type | [5] 8.3.5 | 1 |
| Sequence of Report styles |  |  |
| > RIC Report Style Type | [5] 8.3.3 | 3 |
| > RIC Report Style Name | [5] 8.3.4 | E2 Node Measurement for a single UE |
| > RIC Report Action Format Type | [5] 8.3.5 | 3 |
| > Sequence of Measurement Info for Action |  |  |
| >> Measurement Type Name | [5] 8.3.9 | Name of one Measurement agreed for this test |
| >RIC Indication Header Format | [5] 8.3.5 | 1 |
| >RIC Indication Message Format | [5] 8.3.5 | 2 |

</div>

1. Each element of the SUT (Near-RT RIC and E2 Node) supports RIC Subscription procedure and RIC Indication procedure for the above RAN Function
2. The matching condition is sucessivley matched and unmatched for a given UE.

An example of how this procedure can be performed (or triggered) is listed below. The exact method to perform (or trigger) this procedure is out of scope of this specification and is left up to the implementation of the DUT.

1. The Test Equipment (RU and UE simulator) generates the traffic required for the agreed Measurement in a scenario where the Matching Condition will be successively matched and then unmatched for a given UE

For simplification in this test a single UE traffic is considered

1. A reporting period for the measurement is agreed and configured in the SUT.

Note: The test duration is then selected to allow to cover several reporting periods with the traffic scenario both matching and unmatching the agreed condition for the followed UE.

###### Test Methodology

Initial conditions

1. The elements of the SUT (Near-RT RIC and E2 Node) are connected by E2 interface
2. The E2 Setup procedure is successfully completed in the SUT with the agreed RAN Function Definition IE

Procedure

Step 1. Enable the protocol analyzer to capture, record and decode the E2 signalling between SUT elements via the TAP interface

Step 2. Initiate in the Test Equipment the traffic required for the agreed measurement with the agreed condition being matched.

Step 3.Perform the RIC Subscription Request from the Near-RT RIC

An example of how this procedure can be performed (or triggered) is listed below. The exact method to perform (or trigger) this procedure is out of scope of this specification and is left up to the implementation of the DUT.

1. Initiate appropriate action or configuration in the SUT to trigger the RIC Subscription Request from the Near-RT RIC

Step 4. The Near-RT RIC initiates the RIC Subscription procedure by sending the RIC SUBSCRIPTION REQUEST message to the E2 Node, with the agreed RAN Function Definition IE and measurement information (Measurement Type, Matching Condition and Granularity)

E2 Node sends RIC SUBSCRIPTION RESPONSE to Near-RT RIC with the list of admitted and not admitted RAN Actions

E2 Node sends periodic REPORT RIC INDICATION messages for the agreed RAN Function Definition with the agreed Measurement Data to the Near-RT RIC for the UE matching the agreed condition.

Step 5. Initiate in the Test Equipment the traffic required for the agreed measurement with the selected UE not matching the agreed condition

E2 Node sends periodic REPORT RIC INDICATION messages for the agreed RAN Function Definition omitting the *List of matched UE IDs* IE

Step 6. The test is ended after the test duration defined in test entrance criteria, allowing the E2 Node to send several RIC INDICATION messages to the Near-RT RIC.

Expected results

The test is considered passed if

1. All messages are correctly decoded by the protocol analyzer
2. E2 logs recorded in the protocol analyzer are aligned with successful operation message flows specified in [2] clause 8.2. and consistent with the configuration in E2 Node and Near-RT RIC
3. RIC Subscription procedure is successful and it is validated in recorded E2 logs that
   - *RAN Function ID* IE corresponds to the agreed the RAN Function (during E2 Setup procedure) in both RIC SUBSCRIPTION REQUEST and RIC SUBSCRIPTION RESPONSE messages
   - *RIC REQUEST ID IE* is the same as that in the RIC SUBSCRIPTION REQUEST, RIC SUBSCRIPTION RESPONSE and RIC INDICATION messages
   - *RIC Action ID IE* is the same as that in the RIC SUBSCRIPTION REQUEST message, in the *RIC Actions Admitted List IE* of the RIC SUBSCRIPTION RESPONSE message and in the RIC INDICATION message
   - *RIC Action Definition IE* in the RIC SUBSCRIPTION REQUEST message is E2SM-KPM Action Definition Format 1 with the agreed *Measurement Type* IE and agreed *Matching Condition* IE
4. The periodicity of the RIC INDICATION messages in the recorded E2 logs corresponds with the value of *Reporting Period IE* from the *RIC Event Trigger Definition IE* of the RIC SUBSCRIPTION REQUEST message as defined in [5] clause 8.2.1.1.1
5. *Measurement Type* IE in the RIC INDICATION messages is the same as that in RIC SUBSCRITPION REQUEST message
6. During the period covered by step 4, where the selected UE is matching the agreed condition, the *UE ID* IE of the selected UE in the Test Equipment is present in *List of matched UE IDs* IE of the RIC INDICATION messages sent by the E2 Node
7. During the period covered by step 5, where the selected UE is not matching the agreed condition, the *UE ID* IE of the selected UE in the Test Equipment is absent from *List of matched UE IDs* IE of the RIC INDICATION messages sent by the E2 Node. *List of matched UE IDs* IE is omitted if no UE is matching the agreed condition during the reporting period
8. Measurements reported by E2 Node in RIC Indication messages are consistent with the traffic simulated by the Test Equipment for the specified UE Id

If an Error Indication procedure is triggered during the test, then the test result shall be determined as failed.

If the agreed *RIC Action ID IE* is present in the *RIC Actions Not Admitted List IE* of RIC SUBSCRIPTION RESPONSE message, then the test result shall be determined as failed.

#### Tests cases for RIC INSERT Service Styles procedures E2SM-KPM

Note: No test case defined.

#### Tests cases for RIC CONTROL Service Styles procedures E2SM-KPM

Note: No test case defined.

#### Tests cases for RIC POLICY Service Styles procedures E2SM-KPM

Note: No test case defined.

#### Tests cases for RIC Subscription Delete procedures E2SM-KPM

##### RIC Subscription Delete procedure with RIC Event Trigger Style 1

###### Test Purpose

The purpose of this test case is to test the interoperability of Near-RT RIC and E2 Node for RIC Subscription Delete as specified in [2] clause 8.2.2 for Service Model "O-RAN-E2SM-KPM" as specified in [5].
The expected outcome is successful RIC Subscription Delete procedure by the SUT.

This test case is mandatory if the SUT (Near-RT and E2 Node) claims to support any RAN function in "O-RAN-E2SM-KPM" Service Model using RIC Event Trigger Style 1.

###### Test Entrance Criteria

1. Each element of the SUT (Near-RT RIC and E2 Node) supports a common RAN Function in "O-RAN-E2SM-KPM" Service Model using RIC Event Trigger Style 1
2. Each element of the SUT (Near-RT RIC and E2 Node) supports RIC Subscription Delete procedure for the above RAN Function
3. A reporting period for the measurement is agreed and configured in the SUT. The test duration is then selected to allow to cover several reporting periods
4. The RAN Function to which RIC subscribes and the RAN Function definition are predefined and shared between the elements of the SUT (Near RT RIC and E2 Node).). A Measurement Type as specified in [5] clause 8.3.9 is agreed to be included in the RIC Subscription. An example of the agreed RAN Function Definition IE defined in [5] clause 8.2.2.1 is shown in table below

Table 7.2.2.5.1-1 E2SM KPM Function Definition Profile IE profile

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **IE Name** | **Reference** | **Configuration / Value** |
| RAN Function Name | [5] 8.3.2 |  |
| >RAN Function Short Name | [5] 8.3.2 | ORAN-E2SM-KPM |
| >RAN Function Service Model OID | [5] 8.3.2 | 1.3.6.1.4.1.53148.1.1.2.2 |
| > RAN Function Description | [5] 8.3.2 | KPM Monitor |
| Sequence of Event Trigger styles |  |  |
| >RIC Event Trigger Style Type | [5] 8.3.3 | 1 |
| >RIC Event Trigger Style Name | [5] 8.3.4 | Periodic Report |
| >RIC Event Trigger Format Type | [5] 8.3.5 | 1 |
| Sequence of Report styles |  |  |
| > RIC Report Style Type | [5] 8.3.3 | 1 |
| > RIC Report Style Name | [5] 8.3.4 | E2 Node Measurement |
| > RIC Report Action Format Type | [5] 8.3.5 | 1 |
| > Sequence of Measurement Info for Action |  |  |
| >> Measurement Type Name | [5] 8.3.9 | Name of one Measurement agreed for this test |
| >RIC Indication Header Format | [5] 8.3.5 | 1 |
| >RIC Indication Message Format | [5] 8.3.5 | 1 |

</div>

1. The SUT has functionality to trigger RIC Subscription Delete procedure

###### Test Methodology

Initial conditions

1. The elements of the SUT (Near-RT RIC and E2 Node) are connected by E2 interface
2. E2 Setup procedure is successfully completed in the SUT with the agreed RAN Function Definition IE
3. RIC Subscription procedure is successfully completed in the SUT with the agreed RIC Request ID and RAN Function ID

Procedure

Step 1. Enable the protocol analyzer to capture, record and decode the E2 signalling between SUT elements via the TAP interface.

Step 2. Perform the RIC Subscription Delete procedure

An example of how this procedure can be performed (or triggered) is listed below. The exact method to perform (or trigger) this procedure is out of scope of this specification and is left up to the implementation of the DUT.

1. Initiate appropriate action or configuration in the SUT to trigger the RIC Subscription Delete procedure

Near-RT RIC sends the RIC SUBSCRIPTION DELETE REQUEST message to the E2 Node, with the agreed RIC Request ID and RAN Function ID

E2 Node sends RIC SUBSCRIPTION DELETE RESPONSE to the Near-RT RIC with the agreed RIC Request ID and RAN Function ID

Step 3. The test is ended after the test duration defined in test entrance criteria, allowing the E2 Node to cover several Reporting periods after the RIC SUBSCRIPTION DELETE RESPONSE message is received

Expected results

The test is considered passed if

1. All messages are correctly decoded by the protocol analyser
2. E2 logs recorded in the protocol analyzer are aligned with successful operation message flows specified in [2] clause 8.2.2.
3. RIC Subscription Delete procedure is successful and it is validated in recorded E2 logs that
   - *RAN Function ID* IE corresponds to the agreed RAN Function (during E2 Setup procedure and RIC Subscription procedure) in both RIC SUBSCRIPTION DELETE REQUEST and RIC SUBSCRIPTION DELETE RESPONSE messages
   - *RIC REQUEST ID IE* is the same as that in RIC SUBSCRIPTION REQUEST, RIC SUBSCRIPTION RESPONSE and RIC INDICATION messages

- *RIC REQUEST ID IE* corresponds to the agreed RIC Request ID (during RIC Subscription procedure) in both the RIC SUBSCRIPTION DELETE REQUEST and RIC SUBSCRIPTION DELETE RESPONSE messages

1. No RIC Indication messages are sent for the agreed RAN Function ID and RIC Request ID after the E2 Node sends the RIC SUBSCRIPTION DELETE message

If an Error Indication procedure is triggered during the test, then the test result shall be determined as failed.

If RIC SUBSCRIPTION DELETE FAILURE message is sent by E2 Node, then the test result shall be determined as failed.

### Test Cases for E2AP Functional Procedures for E2SM-RC

FFS

### Test Cases for E2AP Functional Procedures for E2SM-NI

FSS

# Revision history

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Date | Revision | Description |
| 2021.08.24 | 00.00.01 | Draft Skeleton Proposal agreed WG3#111 |
| 2022.01.21 | 00.00.02 | Added approved CRs  Addition of:  **<VIA-2021.10.28-WG3-CR-0001-Near-RT RIC E2 conformance test configuration-v04> agreed WG3#125**  **<VIA-2021.10.28-WG3-CR-0003-Near-RT RIC E2 conformance test case-E2 Setup procedures-v04> agreed#125** **<VIA-2021.10.28-WG3-CR-0002-E2 Interface Test specification-scope and reference-v02> agreed#125** |
| 2022.02.01 | 01.00.03 | Added approved CRs  Addition of:  < VIA.AO-2021.12.10-WG3-CR-0003-Near-RT RIC E2 conformance test case-RIC Subscription-v03> agreed WG3#129  < KEY.AO-2021.11.23-WG3-CR-0002-Near-RT RIC E2 Procedures-NI-Subscription\_Report\_style\_1\_V05> agreed WG3#129  < KEY-2021.11.18-WG3-CR-0001-Near-RT\_RIC\_KPM\_Subscription\_Action\_Type1-v06> agreed WG3#129 |
| 2022.02.28 | 01.00.04 | Added approved CRs  < TCS.AO-2022.02.01-WG3-CR-0001-Near-RT RIC E2 conformance test case-RIC Subscription Delete-v01> agreed WG3#131  <****KEY.AO-2022.02.02-WG3-CR-0003-Near\_RT\_RIC\_Reset\_RIC\_Initiated-v01>**** agreed WG3#131  <KEY.AO-2022.02.02-WG3-CR-0004-Near\_RT\_RIC\_Reset\_E2\_Node\_Initiated-v01> agreed WG3#131****<KEY.AO-2022.02.03-WG3-CR-0005-E2Node-Setup\_Procedure-v01>**** agreed WG3#131  Corrected numbering to position test cases appropriately |
| 2022.03.29 | 01.00.05 | Added approved CRs  Added links to cross referenced clauses, added cross reference for tables, removed un-uncessary spaces  < JIO.AO-2022.03.28-WG3-CR-0003-Editorial\_changes\_updated\_baseline\_v01.docx> agreed WG#138  <KEY.AO-2022.03.03-WG3-CR-0011-E2Node-E2\_Connection\_Update\_Procedure-v01.docx> agreed WG#138  <KEY.AO-2022.03.05-WG3-CR-0012-E2-Node\_RIC\_Subscription \_Procedure-v01.docx> agreed WG#138  <KEY.AO-2022.03.10-WG3-CR-0013-E2-Node\_Removal\_Procedure-E2\_Node\_DUT-v01.docx> agreed WG#138  <KEY.AO-2022.03.02-WG3-CR-0008-E2Node-RIC\_Service\_Update\_Procedure-v01.docx agreed WG3#137>  <VIA.AO-2022.03.14-WG3-CR-0010-Near-RT RIC E2 conformance test case-RIC Control-v01> agreed WG3#136  <VIA.AO-2022.03.14-WG3-CR-0011-E2 Node E2 AP conformance test case-RIC Control-v01> agreed WG3#136  <KEY.AO-2022.03.16-WG3-CR-0018- Adding-additional-level-to-organize-test-cases-v02> agreed WG3#136  <KEY.AO-2022.03.13-WG3-CR-0017-Test-Configuration-Description-E2-Nodes-v01> agreed WG3#136  <KEY.AO-2022.03.12-WG3-CR-0016-E2Node-E2\_Node\_Configuration\_Update\_Procedure-v01> agreed WG3#136  <KEY.AO-2022.03.10-WG3-CR-0015-Near-RT RIC-E2\_Connection\_Update\_Procedure-v01> agreed WG3#136  <KEY.AO-2022.03.10-WG3-CR-0014-E2-Node\_Removal\_Procedure-Near-RT RIC\_DUT-v01> agreed WG3#136  <Jio.AO-2022.03.10-WG3-CR-0001-Near-RTRIC-Error\_Indication\_Procedure-v01> agreed WG3#136  <JIO.AO-2022.03.10-WG3-CR-0002-E2Node-Error\_Indication\_Procedure-v01> agreed WG3#136  < KEY.AO-2022.02.22-WG3-CR-0007-Near-RT RIC-RIC\_Service\_Update\_Procedure-v02.docx> agreed WG#135  < KEY.AO-2022.03.03-WG3-CR-0009-E2-Node\_Reset\_Procedure-Near-RT RIC\_initiated-v01.docx> agreed WG#135  < KEY.AO-2022.03.03-WG3-CR-0010-E2-Node\_Reset\_Procedure-E2\_Node\_initiated-v01.docx> agreed WG#135  < VIA.AO-2022.03.02-WG3-CR-0004-Near-RT RIC E2 conformance test case-RIC Indication-v01.docx> agreed WG#135  < VIA.AO-2022.03.02-WG3-CR-0005-Near-RT RIC E2 conformance test case-KPM Report Serivce style 1-v01.docx> agreed WG#135  < VIA.AO-2022.03.02-WG3-CR-0006-Near-RT RIC E2 conformance test case-KPM Report Serivce style 2-v01.docx> agreed WG#135  < VIA.AO-2022.03.02-WG3-CR-0007-Near-RT RIC E2 conformance test case-KPM Subscription Action type2-v01.docx> agreed WG#135  < VIA.AO-2022.03.02-WG3-CR-0009-E2 Node E2 AP conformance test case-RIC Indication-v01.docx> agreed WG#135  < VIA.AO-2022.03.02-WG3-CR-0008-Adding Missing Event Trigger to test case 5.2.3.1 KPM\_v01.docx> agreed WG#135  < TCS.AO-2022.03.08-WG3-CR-0003-E2Node conformance test case-RIC Subscription Delete-v01.docx> agreed WG#135  < TCS.AO-2022.03.08-WG3-CR-0004-E2 Node conformance test case-RIC Subscription Delete Required-v02.docx> agreed WG#135  < KEY.AO-2022.02.27-WG3-CR-0006-Near-RT RIC E2 Node Configuration Update-v03.docx> agreed WG#134  < TCS.AO-2022.02.18-WG3-CR-0002-Near-RT RIC E2 conformance test case-RIC Subscription Delete Required-v01.docx> agreed WG#134 |
| 2022.06.29 | 01.00 | Removed third digit from version information. |
| 2022.10.25 | 01.00.07 | Added approved CRs  <TCS.AO-2022.04.15-WG3-CR-0005-E2Node conformance test case-RIC Subscription Delete Request-v02.docx> agreed WG#152  <KEY.AO-20220705-WG3-CR-0020-Editorial\_corrections-v01.docx> agreed WG#162  <KEY.AO-20220613-WG3-CR-0019-E2\_IOT\_Testing\_Methodology-v04.docx> agreed WG3 Madrid F2F Oct 2022  <KEY.AO-20220907-WG3-CR-0021-IOT Near-RT RIC support procedures-v05.docx> agreed WG3 Madrid F2F Oct 2022  <CMCC.AO-2022.10.10-WG3-CR-0001-E2TS Near-RT RIC Conformance E2SM-KPM RIC Subscription procedure negative test cases-v01.docx> agreed WG3 Madrid F2F Oct 2022  <CMCC.AO-2022.10.10-WG3-CR-0002-E2TS Near-RT RIC Conformance E2SM-KPM RIC Subscription procedure multiple measurements-v01.docx> agreed WG3 Madrid F2F Oct 2022  <CMCC.AO-2022.10.10-WG3-CR-0003- E2TS Near-RT RIC Conformance E2SM-KPM RIC Indication procedure multiple measurements-v01.docx> agreed WG3 Madrid F2F Oct 2022  <KEY.AO-20220929-WG3-CR-0022-IOT\_E2SM-KPM-v02.docx> agreed WG3 Madrid F2F Oct 2022 |
| 2022.11.09 | 01.00.08 | Updated document structure according to new TS template. Change copyright year to be 2023, Ready for WG3 internal review |
| 2022.11.18 | 01.00.09 | Changes reflecting remarks received during WG3 approval process  - Added R003 to file name  - Updated clause 6.2.1.2 heading to Test Cases for RESET procedure  - Updated Table of content |
| 2022.11.20 | 02.00 | Ready for TSC approval and publication |

</div>

# History

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Date | Revision | Description |
| 2022.04.11 | 01.00.06 | Published as Final version 01.00 |

</div>
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG3.E2TS-R003-v02.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG3.E2TS-R003-v02.00.docx).
