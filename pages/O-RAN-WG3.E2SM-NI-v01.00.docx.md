## O-RAN-WG3.E2SM-NI-v01.00.docx

- View in [Reader Mode](https://simewu.com/spec-reader/pages/10-WG3/O-RAN-WG3.E2SM-NI-v01.00.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN-WG3.E2SM-NI-v01.00.docx).

---

**O-RAN Working Group 3 Near-Real-time RAN Intelligent Controller**

**E2 Service Model (E2SM), RAN Function Network Interface (NI)**

**This is a re-published version of the attached final specification.**

##### For this re-published version, the prior versions of the IPR Policy will apply, except that the previous requirement for Adopters (as defined in the earlier IPR Policy) to agree to an O-RAN Adopter License Agreement to access and use Final Specifications shall no longer apply or be required for these Final Specifications after 1st July 2022.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material on this site for your personal use, or copy the material on this site for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

**O-RAN Working Group 3 Near-Real-time RAN Intelligent Controller**

**E2 Service Model (E2SM), RAN Function Network Interface (NI)**

Prepared by the O-RAN Alliance e.V. Copyright (C) 2020 by the O-RAN Alliance e.V.

By using, accessing or downloading any part of this O-RAN specification document, including by copying, saving, distributing, displaying or preparing derivatives of, you agree to be and are bound to the terms of the O-RAN Adopter License Agreement contained in the Annex ZZZ of this specification. All other rights reserved.

Copyright (C) 2020 by the O-RAN Alliance e.V. Your use is subject to the terms of the O-RAN Adopter License Agreement in the Annex ZZZ. 1

# 1 Revision History

|  |  |  |  |
| --- | --- | --- | --- |
| Date | Revision | Author | Description |
| 2020.01.22 | 01.00.00 | Alistair URIE, Paul STEPHENS  (Nokia) | Specification renamed v01.00.00 for approval |
| 2020.01.29 | 0.1.00.00 | Alistair URIE, Paul STEPHENS  (Nokia) | Corrected based on remarks during electronic vote. |

2

3

4

5

6

7

8

9

10

11

12

13

14

15

16

17

18

19

20

21

22

23

24

25

26

27

28

29

30

31

32

1. "(C) 2019. 3GPP(TM) TSs and TRs are the property of ARIB, ATIS, CCSA, ETSI, TSDSI, TTA
2. and TTC who jointly own the copyright in them. They are subject to further modifications
3. and are therefore provided to you "as is" for information purposes only. Further use is
4. strictly prohibited."

37

38

1. "(C) 2020. 3GPP(TM) TSs and TRs are the property of ARIB, ATIS, CCSA, ETSI, TSDSI, TTA
2. and TTC who jointly own the copyright in them. They are subject to further modifications
3. and are therefore provided to you "as is" for information purposes only. Further use is
4. strictly prohibited."

43

# 1 Contents

1. Revision History 2
2. 1 Scope 5
3. 2 References 5
4. 3 Definitions and Abbreviations 6
5. 3.1 Definitions 6
6. 3.2 Abbreviations 6
7. 4 General 7
8. 4.1 Procedure Specification Principles 7
9. 4.2 Forwards and Backwards Compatibility 7
10. 4.3 Specification Notations 7
11. 4.3 Identifiers 8
12. 5 E2SM services 9
13. 6 RAN Function Service Model Description 10
14. 6.1 RAN Function Overview 10
15. 6.2 RAN Function exposure services 10
16. 6.2.1 REPORT service 10
17. 6.2.2 INSERT service 10
18. 6.2.3 CONTROL service 10
19. 6.2.4 POLICY service 10
20. 7 RAN Function Description 11
21. 7.1 Description 11
22. 7.2 RAN Function name 11
23. 7.3 Event trigger definition styles 11
24. 7.3.1 RIC Event trigger definition IE style list 11
25. 7.3.2 *RIC Event trigger definition* IE style 1: Interface Message Event 11
26. 7.4 Supported RIC **REPORT** Service styles 12
27. 7.4.1 REPORT Service style list 12
28. 7.4.2 **REPORT** Service Style 1: Complete message 12
29. 7.4.3 **REPORT** Service Style 2: Partial message 12
30. 7.5 Supported RIC **INSERT** Service styles 13
31. 7.5.1 RIC **INSERT** Service style list 13
32. 7.5.2 **INSERT** Service Style 1: Complete message 13
33. 7.6 Supported RIC **CONTROL** Service styles 14
34. 7.6.1 RIC CONTROL Service style list 14
35. 7.6.2 **CONTROL** Service Style 1: Complete message 14
36. 7.7 Supported RIC **POLICY** Service styles 15
37. 7.7.1 RIC **POLICY** Service style list 15
38. 7.7.2 **POLICY** Service style 1: Message admission 15
39. 7.8 Supported RIC Service Styles and E2SM IE Formats 16
40. 8 Elements for E2SM Service Model 17
41. 8.1 General 17
42. 8.2 Message Functional Definition and Content 17
43. 8.2.1 Messages for RIC Functional procedures 17
44. 8.2.2 Messages for RIC Global Procedures 22
45. 8.3 Information Element definitions 24
46. 8.3.1 General 24
47. 8.3.2 RAN Function name 25
48. 8.3.3 RIC Style Type 25
49. 8.3.4 RIC Style Name 25
50. 8.3.5 RIC Format Type 25
51. 8.3.6 RAN Parameter Type 26
52. 8.3.7 RAN Parameter ID 26
53. 8.3.8 RAN Parameter Test Condition 26
54. 8.3.9 RAN Parameter Value 26
55. 8.3.10 RAN Parameter Name 27
56. 8.3.11 RAN Call process ID 27
57. 8.3.12 RIC Control Message Priority 27
58. 8.3.13 reserved 27
59. 8.3.14 RAN UE Group ID 27
60. 8.3.15 RAN UE Group Definition 28
61. 8.3.16 RAN Imperative Policy 28
62. 8.3.17 reserved 28
63. 8.3.18 reserved 28
64. 8.3.19 reserved 28
65. 8.3.20 reserved 28
66. 8.3.21 Network Interface Type 28
67. 8.3.22 Network Interface Identifier 29
68. 8.3.23 Network Interface Direction 29
69. 8.3.24 Network Interface Timestamp 30
70. 8.3.25 Network Interface Message Type 30
71. 8.3.26 Message Protocol IE Identifier 30
72. 8.3.27 Message Protocol IE Test Condition 31
73. 8.3.28 Message Protocol IE Value 31
74. 8.3.29 Network Interface Message 31
75. 8.4 Information Element Abstract Syntax (with ASN.1) 32
76. 8.4.1 General 32
77. 8.4.2 Information Element definitions 32
78. 8.5 Message transfer syntax 40
79. 9 Handling of Unknown, Unforeseen and Erroneous Protocol Data 40
80. Annex A: Further information on RAN Function Network Interface 40
81. A.1 Background information 40
82. A.2 X2 Network Interface 41
83. A.2.1 Message Admission policy handling 41
84. Annex ZZZ : O-RAN Adopter License Agreement 42
85. Section 1: DEFINITIONS 42
86. Section 2: COPYRIGHT LICENSE 42
87. Section 3: FRAND LICENSE 42
88. Section 4: TERM AND TERMINATION 43
89. Section 5: CONFIDENTIALITY 43
90. Section 6: INDEMNIFICATION 43
91. Section 7: LIMITATIONS ON LIABILITY; NO WARRANTY 44
92. Section 8: ASSIGNMENT 44
93. Section 9: THIRD-PARTY BENEFICIARY RIGHTS 44
94. Section 10: BINDING ON AFFILIATES 44
95. Section 11: GENERAL 44

44

45

46

1

2 1 Scope

1. This Technical Specification has been produced by the O-RAN Alliance.
2. The contents of the present document are subject to continuing work within O-RAN and may change following formal
3. O-RAN approval. Should the O-RAN Alliance modify the contents of the present document, it will be re-released by O-
4. RAN with an identifying change of release date and an increase in version number as follows:
5. Release x.y.z
6. where:
7. x the first digit is incremented for all changes of substance, i.e. technical enhancements, corrections, updates,
8. etc. (the initial approved document will have x=01).
9. y the second digit is incremented when editorial only changes have been incorporated in the document.
10. z the third digit included only in working versions of the document indicating incremental changes during the
11. editing process.
12. The present document specifies the E2 Service Model (E2SM) "Network Interface" (NI) for the RAN function handling
13. the Network Interfaces in an E2 Node. Further information on this RAN function is described in Annex A.

# 16 2 References

1. The following documents contain provisions which, through reference in this text, constitute provisions of the present
2. document.
3. - References are either specific (identified by date of publication, edition number, version number, etc.) or
4. non-specific.
5. - For a specific reference, subsequent revisions do not apply.
6. - For a non-specific reference, the latest version applies. In the case of a reference to a 3GPP document (including
7. a GSM document), a non-specific reference implicitly refers to the latest version of that document.
8. [1] 3GPP TR 21.905: "Vocabulary for 3GPP Specifications".
9. [2] O-RAN Working Group 3, Near-Real-time RAN Intelligent Controller, Architecture & E2 General Aspects and
10. Principles (E2GAP)
11. [3] ORAN WG3, O-RAN Working Group 3, Near-Real-time RAN Intelligent Controller, E2 Application Protocol

28 (E2AP).

1. [4] 3GPP TR 25.921: "Guidelines and principles for protocol description and error handling".
2. [5] ITU-T Recommendation X.680 (2002-07): "Information technology - Abstract Syntax Notation One (ASN.1):
3. Specification of basic notation".
4. [6] ITU-T Recommendation X.681 (2002-07): "Information technology - Abstract Syntax Notation One (ASN.1):
5. Information object specification".
6. [7] ITU-T Recommendation X.691 (2002-07): "Information technology - ASN.1 encoding rules - Specification of
7. Packed Encoding Rules (PER) "
8. [8] reserved
9. [9] reserved
10. [10] 3GPP 36.413, Evolved Universal Terrestrial Radio Access Network (E-UTRAN); S1 Application Protocol
11. (S1AP)
12. [11] 3GPP 36.423, Evolved Universal Terrestrial Radio Access Network (E-UTRAN); X2 application protocol
13. (X2AP)
    1. [12] 3GPP 38.413, NG-RAN; NG Application Protocol (NGAP)
    2. [13] 3GPP 38.423, NG-RAN; Xn application protocol (XnAP)
    3. [14] F1 interface, NG-RAN; F1 application protocol (F1AP), 3GPP 38.473
    4. [15] E1 interface, NG-RAN; E1 Application Protocol (E1AP), 3GPP 38.463

# 5 3 Definitions and Abbreviations

## 3.1 Definitions

1. For the purposes of the present document, the following terms and definitions apply.
2. **E2 Node**: as defined in E2GAP [2].
3. **RAN Function**: as defined in E2GAP [2]
4. **E2 Service Model**: The description of the Services exposed by a specific RAN function within an E2 node over the E2
5. interface towards the Near-RT RIC.
6. **Network Interface**: Network interface used to carry a network protocol between network nodes

## 3.2 Abbreviations

1. For the purposes of the present document, the following abbreviations apply.
2. O-CU O-RAN Central Unit
3. O-CU-CP O-RAN Central Unit - Control Plane
4. O-CU-UP O-RAN Central Unit - User Plane
5. O-DU O-RAN Distributed Unit
6. Near-RT RIC Near-real-time RAN Intelligent Controller 20

# 1 4 General

## 4.1 Procedure Specification Principles

* 1. The principle for specifying the procedure logic is to specify the functional behaviour of the terminating node exactly
  2. and completely. Any rule that specifies the behaviour of the originating node shall be possible to be verified with
  3. information that is visible within the system.
  4. The following specification principles have been applied for the procedure text in clause 8:
  5. - The procedure text discriminates between:
  6. 1) Functionality which "shall" be executed.
  7. The procedure text indicates that the receiving node "shall" perform a certain function Y under a certain
  8. condition. If the receiving node supports procedure X but cannot perform functionality Y requested in the
  9. REQUEST message of a Class 1 EP, the receiving node shall respond with the message used to report
  10. unsuccessful outcome for this procedure, containing an appropriate cause value.
  11. 2) Functionality which "shall, if supported" be executed.
  12. The procedure text indicates that the receiving node "shall, if supported," perform a certain function Y under
  13. a certain condition. If the receiving node supports procedure X, but does not support functionality Y, the
  14. receiving node shall proceed with the execution of the EP, possibly informing the requesting node about the
  15. not supported functionality.
  16. - Any required inclusion of an optional IE in a response message is explicitly indicated in the procedure text. If the
  17. procedure text does not explicitly indicate that an optional IE shall be included in a response message, the
  18. optional IE shall not be included. For requirements on including *Criticality Diagnostics* IE, see clause 10.

## 4.2 Forwards and Backwards Compatibility

* 1. The forwards and backwards compatibility of the protocol is assured by a mechanism where all current and future
  2. messages, and IEs or groups of related IEs, include ID and criticality fields that are coded in a standard format that will
  3. not be changed in the future. These parts can always be decoded regardless of the standard version.

## 4.3 Specification Notations

* 1. For the purposes of the present document, the following notations apply:
  2. Service when referring to a Service in the specification the **SERVICE NAME** is written with upper case
  3. characters and in bold followed by the word "service", e.g. **REPORT** service.
  4. Procedure When referring to an elementary procedure in the specification the Procedure Name is written with
  5. the first letters in each word in upper case characters followed by the word "procedure", e.g.
  6. Handover Preparation procedure.
  7. Message When referring to a message in the specification the MESSAGE NAME is written with all letters
  8. in upper case characters followed by the word "message", e.g. HANDOVER REQUEST message.
  9. IE When referring to an information element (IE) in the specification the *Information Element Name*
  10. is written with the first letters in each word in upper case characters and all letters in Italic font
  11. followed by the abbreviation "IE", e.g. *E-RAB ID* IE.
  12. Value of an IE When referring to the value of an information element (IE) in the specification the "Value" is
  13. written as it is specified in the specification enclosed by quotation marks, e.g. "Value".

## 4.3 Identifiers

* + 1. For the purposes of the present document, the following identifiers are defined:
    2. Style Type The identifier used to nominate a specific approach or Style used to exposing a given RIC Service
    3. (REPORT, INSERT, CONTROL and POLICY). The same E2SM may support more than one
    4. Style for each RIC Service.
    5. Format Type The identifier used to nominate a specific formatting approach used to encode one of the E2AP IEs
    6. defined in this E2SM. The same E2SM may support more than one encoding Formats for each
    7. E2AP IE and each E2AP IE message encoding Format may be used by one or more RIC Service
    8. Styles.

10

# 1 5 E2SM services

1. As defined in E2 General Aspects and Principles [2], a given RAN Function offers a set of services to be exposed over
2. the E2 (**REPORT**, **INSERT**, **CONTROL** and/or **POLICY**) using E2AP [3] defined procedures. Each of the E2AP
3. Procedures listed in table 5-1 contains specific E2 Node RAN Function dependent Information Elements (IEs).

###### Table 5-1: Relationship RAN Function specific E2AP Information elements and E2AP Procedures

|  |  |  |
| --- | --- | --- |
| **RAN Function specific E2AP Information Elements** | **E2AP Information Element reference** | **Related E2AP Procedures** |
| *RIC Event Trigger Definition* IE | E2AP [3] section 9.2.9 | RIC Subscription |
| *RIC Action Definition* IE | E2AP [3] section 9.2.12 | RIC Subscription |
| *RIC Indication Header* IE | E2AP [3] section 9.2.17 | RIC Indication |
| *RIC Indication Message* IE | E2AP [3] section 9.2.16 | RIC Indication |
| *RIC Call Process ID* IE | E2AP [3] section 9.2.18 | RIC Indication RIC Control |
| *RIC Control Header* IE | E2AP [3] section 9.2.20 | RIC Control |
| *RIC Control Message* IE | E2AP [3] section 9.2.19 | RIC Control |
| *RIC Control Outcome IE* | E2AP [3] section 9.2.25 | RIC Control |
| *RAN Function Definition* IE | E2AP [3] section 9.2.23 | E2 Setup  RIC Service Update |

6

1. All of these RAN Function specific E2AP IEs are defined in E2AP [3] as "OCTET STRING".
2. The purpose of this specification is to define the contents of these fields for the specific RAN function "NI" (Network
3. Interface).

10

11

# 1 6 RAN Function Service Model Description

## 6.1 RAN Function Overview

1. For the purposed of this E2 Service Model, E2SM-NI, the E2 Node terminating the E2 Interface is assumed to host the
2. RAN Function NI "Network Interface" which performs the following functionalities:
3. - Exposure of Network Interfaces
4. - Modification of both incoming and outgoing network interface message contents
5. - Execution of policies that may result in change of network behavior
6. This E2SM specification provides a set of RAN Function exposure services described in clause 6.2 and has been
7. prepared with the assumption that the same E2SM may be used to describe either a single RAN Function handling all
8. Network Interfaces or more than one RAN function with each one handling a subset of the Network Interfaces
9. terminated on the E2 Node.

## 6.2 RAN Function exposure services

1. 6.2.1 **REPORT** service
2. The "Network Interface" RAN Function provides selective support of the following **REPORT** services:
3. - Copy of Complete message with header providing network interface type, identifier and direction with optional
4. network interface timestamp
5. - Copy of Partial message selected by target message protocol IE identifier with with header providing network
6. interface type, identifier, direction and message type with optional network interface timestamp
7. These services may be initiated according to:
8. - Target network interface type, identifier, direction and message type along with the presence of a sequence of
9. one or more message protocol IE identifiers with optional message protocol IE contents selection rules.
10. 6.2.2 **INSERT** service
11. The "Network Interface" RAN Function provides selective support of the following **INSERT** services:
12. - Forwarding of Complete message with header providing network interface type, identifier and direction with
13. optional network interface timestamp
14. This service may be initiated according to:
15. - Target network interface type, identifier and direction, message type and presence of a sequence of one or more
16. message protocol IE identifiers with optional message protocol IE contents selection rules.
17. 6.2.3 **CONTROL** service
18. The "Network Interface" RAN Function provides selective support of the following **CONTROL** services:
19. - Injection of Complete message with header providing target network interface type, identifier and direction and
20. optional RIC Control Message Priority
21. 6.2.4 **POLICY** service
22. The "Network Interface" RAN Function provides selective support of the following **POLICY** services:
23. - Handling of Message Admission process according to a list of parameters to be applied to different RAN UE
24. groups
    1. This service may be initiated according to:
    2. - Target network interface type, identifier and direction, message type and presence of a sequence of one or more
    3. message protocol IE identifiers with optional message protocol IE contents selection rules.

# 4 7 RAN Function Description

## 7.1 Description

* 1. The E2AP [3] procedures E2 Setup and RIC Service Update are used to transport the RAN Function Description.
  2. For the specific RAN Function, the *RAN Function Description* IE shall report the following information:
  3. - RAN Function name along with associated information on E2SM definition
  4. - Event trigger styles list along with the corresponding encoding type for each associated E2AP IE.
  5. - RIC **REPORT** Service styles list along with the corresponding encoding type for each associated E2AP IE.
  6. - RIC **INSERT** Service styles list along with the corresponding encoding type for each associated E2AP IE.
  7. - RIC **CONTROL** Service styles list along with the corresponding encoding type for each associated E2AP IE.
  8. - RIC **POLICY** Service styles list along with the corresponding encoding type for each associated E2AP IE.

## 7.2 RAN Function name

* 1. RAN Function Short Name "ORAN-E2SM-NI"
  2. RAN Function name description "Network Interface"
  3. RAN Function Instance, required when and if E2 Node exposes more than one instance of a RAN Function based on
  4. this E2SM.

## 7.3 Event trigger definition styles

### 7.3.1 RIC Event trigger definition IE style list

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RIC**  **Style Type** | **Style Name** | **Supported RIC Service Style** | | | **Style Description** |
| **Report** | **Insert** | **Policy** |
| 1 | Interface Message Event | 1, 2 | 1 | 1 | *RIC Event trigger definition* IE based on arrival of defined message |

21

1. 7.3.2 *RIC Event trigger definition* IE style 1: Interface Message Event
2. This *RIC Event Trigger Definition* IE style is used to detect a specific interface message event in E2 Node RAN
3. Function based on specified target Network Interface Type, Network Interface Identifier, Network Interface Direction,
4. Network Interface Message Type, Message Protocol IE Identifier, Message Protocol IE Test Condition and Message
5. Protocol IE Test Value.
6. This *RIC Event Trigger Definition* IE style uses *RIC Event Trigger Definition* IE Format 1 (8.2.1.1.1)

## 7.4 Supported RIC **REPORT** Service styles

1. 7.4.1 **REPORT** Service style list

|  |  |  |
| --- | --- | --- |
| **RIC Style Type** | **Style Name** | **Style Description** |
| 1 | Complete message | Used to send copy of complete message from E2 Node RAN Function |
| 2 | Partial message | Used to send copy of part of message from E2 Node RAN Function |

3

### 7.4.2 **REPORT** Service Style 1: Complete message

#### 7.4.2.1 **REPORT** Service Style description

1. This **REPORT** Service style provides a copy of a complete network interface message with the network interface
2. specific encoded message carried as a transparent container with an associated header providing information on the
3. target Network Interface Type, Network Interface Identifier, Network Interface Direction and optional Network
4. Interface Timestamp. The addition of optional information time stamp in the Indication Header is controlled using the
5. associated RIC Action Parameter
6. 7.4.2.2 **REPORT** Service *RIC Action Definition* IE contents
7. This **REPORT** Service style uses the following RAN parameters with *RIC Action Definition* IE Format 1 (8.2.1.1.1)
8. where AddTimestamp is used to request the inclusion of optional Network Interface Timestamp information in *RIC*
9. *Indication header* IE:

|  |  |  |  |
| --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter Name** | **RAN**  **Parameter Type** | **Parameter description** |
| 1 | AddTimestamp | BOOLEAN | TRUE=Use optional Network Interface Timestamp in RIC Indication Header |

15

1. 7.4.2.3 **REPORT** Service *RIC Indication header* IE contents
2. **REPORT** Service *RIC Indication Header* IE contains the Network Interface Type, Network Interface Identifier,
3. Network Interface Direction and optional Network Interface Timestamp.
4. This **REPORT** Service style uses *RIC Indication header* IE Format 1 (8.2.1.3.1)
5. 7.4.2.4 **REPORT** Service *RIC Indication message* IE contents
6. **REPORT** Service *RIC Indication message* IE contains contains a transparent container used to carry the complete
7. message with contents defined by the specific network interface specification.
8. This **REPORT** Service style uses *RIC Indication message* IE Format 1 (8.2.1.4.1)

### 7.4.3 **REPORT** Service Style 2: Partial message

#### 7.4.3.1 **REPORT** Service Style description

1. This **REPORT** Service style provides a copy of a specific information element extracted from a network interface
2. message with the network interface specific encoded message carried as a transparent container associated with an
3. indication header providing information on the target Network Interface Type, Network Interface Identifier, Network
4. Interface Direction, Network Interface Message Type and optional Network Interface Timestamp. The addition of
5. optional Network Interface Timestamp in the Indication Header and the rules for extracting the part of the message are
6. controlled using the associated RIC Action Parameter
7. 7.4.3.2 **REPORT** Service *RIC Action Definition* IE contents
8. This **REPORT** Service style uses the following RAN parameters with *RIC Action Definition* IE Format 1 (8.2.1.1.1)
9. where AddTimestamp is used to request the inclusion of optional Timestamp information in *RIC Indication header* IE
10. and Target Protocol IE Identifier is used to specify the required IE to be copied from the message.

|  |  |  |  |
| --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN**  **Parameter Name** | **RAN**  **Parameter Type** | **Parameter description** |
| 1 | AddTimestamp | BOOLEAN | TRUE=Use optional Network Interface Timestamp in RIC Indication Header |
| 2 | Target Protocol IE Identifier | INTEGER | Identifies the target Protocol IE identifier to be copied from the message and sent in Indication Message IE. Specified in terms of  Protocol IE ID using the definition of the specific network interface type |

5

1. 7.4.3.3 **REPORT** Service *RIC Indication header* IE contents
2. **REPORT** Service *RIC Indication Header* IE contains the Network Interface Type, Network Interface Identifier,
3. Network Interface Direction and optional Network Interface Timestamp.
4. This **REPORT** Service style uses *RIC Indication header* IE Format 1 (8.2.1.3.1)
5. 7.4.3.4 **REPORT** Service *RIC Indication message* IE contents
6. **REPORT** Service *RIC Indication message* IE contains a transparent container used to carry the extracted part of the
7. message with contents defined by the specific network interface specification.
8. This **REPORT** Service style uses *RIC Indication message* IE Format 1 (8.2.1.4.1)

## 7.5 Supported RIC **INSERT** Service styles

### 7.5.1 RIC **INSERT** Service style list

|  |  |  |
| --- | --- | --- |
| **RIC Style Type** | **Style Name** | **Style Description** |
| 1 | Complete message | Used to forward a complete message from E2 Node RAN function |

16

### 7.5.2 **INSERT** Service Style 1: Complete message

#### 7.5.2.1 **INSERT** Service Style description

1. This **INSERT** Service style provides the forwarding of a complete network interface message with the network
2. interface specific encoded message carried as a transparent container with an associated header providing information
3. on the target Network Interface Type, Network Interface Identifier, Network Interface Direction and optional Network
4. Interface Timestamp. The addition of optional information timestamp in the Indication Header is controlled using the
5. associated RIC Action Parameter
6. 7.5.2.2 **INSERT** Service *RIC Action Definition* IE contents

|  |  |  |  |
| --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN**  **Parameter Name** | **RAN**  **Parameter Type** | **Parameter description** |
| 1 | AddTimestamp | BOOLEAN | TRUE=Use optional *Timestamp* IE in *RIC Indication Header* |

25

1. 7.5.2.3 **INSERT** Service *RIC Indication header* IE contents
2. **INSERT** Service *RIC Indication Header* IE contains the following information Network Interface Type, Network
3. Interface Identifier, Network Interface Direction and optional Network Interface Timestamp.
4. This **INSERT** Service style uses *RIC Indication header* Format 1 (8.2.1.3.1)
5. 7.5.2.4 **INSERT** Service *RIC Indication message* IE contents
6. **INSERT** Service *RIC Indication message* IE contains a transparent container used to carry the complete message with
7. contents defined by the specific network interface specification.
8. This **INSERT** Service style uses *RIC Indication message* IE Format 1 (8.2.1.4.1)
9. 7.5.2.5 **INSERT** Service *RIC Call Process ID* IE contents
10. *RIC Call Process ID* contains identifier used by the RAN Function to match the outgoing **INSERT** Service message
11. with a subsequent incoming **CONTROL** Service message.
12. This **INSERT** Service style uses *RIC Call Process ID* type 1 (8.2.1.5.1) to carry a local RAN Function assigned call
13. process instance sequence number that, under normal traffic conditions, shall be unique to the given RAN function
14. instance for a period of 1 hour.

## 7.6 Supported RIC **CONTROL** Service styles

1. 7.6.1 RIC **CONTROL** Service style list

|  |  |  |
| --- | --- | --- |
| **RIC Style Type** | **Style Name** | **Style Description** |
| 1 | Complete message | Used to inject a complete message into E2 Node RAN Function |

17

### 7.6.2 **CONTROL** Service Style 1: Complete message

#### 7.6.2.1 **CONTROL** Service Style description

1. This **CONTROL** Service style provides the injection of a complete message carried as a transparent container with an
2. associated header providing the target Network Interface Type, Network Interface Identifier and Network Interface
3. Direction along with an option RIC Control Message Priority.
4. The RIC Control Message Priority shall be used by the RAN Function to order the queuing of incoming Control
5. messages and E2 Node originated messages on the same network interface. The following rules shall apply:
6. - Control messages with higher priority shall be handled prior to Control messages with lower priority
7. - Positive RIC Control Message Priority implies a priority over E2 Node originated messages
8. - Negative priority implies that E2 Node originated messages shall be sent prior to incoming Control messages.
9. - Default Control priority = 0 implies Control messages shall be treated with the same priority as E2 Node
10. originated messages
11. 7.6.2.2 **CONTROL** Service *RIC Control Header* IE contents
12. *RIC Control Header* contains the following information Network Interface Type, Network Interface Identifier and
13. Network Interface Direction and the optional RIC Control Message Priority. This **CONTROL** style uses *RIC Control*
14. *Header* Format 1 (8.2.1.6.1)
15. 7.6.2.3 **CONTROL** Service *RIC Control Message* IE contents
16. *RIC Control Message* contains a transparent container used to carry the complete message with contents defined by the
17. specific network interface specification.
18. This **CONTROL** style uses *RIC Control Message* Format 1 (8.2.1.7.1)
19. 7.6.2.4 **CONTROL** Service *RIC Call Process ID* IE contents
20. **CONTROL** Service *RIC Call Process ID* contains identifier used by the Near-RT RIC to allow the RAN Function to
21. match the outgoing **INSERT** Service message with a subsequent incoming **CONTROL** Service message.
22. This **CONTROL** Service style uses *RIC Call Process ID* IE Format 1 (8.2.1.5.1)
23. 7.6.2.5 **CONTROL** Service *RIC Control Outcome* IE contents
24. *RIC Control Outcome* IE contains a transparent container used to carry the outcome of executing the RIC Control
25. Request. In particular this message reports on the time that the RIC Control Request was received by the RAN
26. Function and the time that the network interface message contained in the RIC Control Message IE was transmitted by
27. the RAN function over the specified network interface. The difference between these two timestamps reflects both
28. internal processes delays and the impact of the requested RIC Control Message Priority with respect to E2 Node
29. originated network interface messages
30. This **CONTROL** style uses *RIC Control Outcome* Format 1 (8.2.1.8.1)

|  |  |  |  |
| --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter Name** | **RAN Parameter Type** | **Parameter description** |
| 1 | ReceivedTimestamp | NetworkInterfaceTimestamp | Time RIC Control Request received by RAN Function |
| 2 | TransmitteTimestamp | NetworkInterfaceTimestamp | Time RIC Control Request message contents transmitted by RAN Function |

17

18

19 7.7 Supported RIC **POLICY** Service styles

**l**

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| 20 | 7.7.1 | RIC **POLICY** Service style list | | |
| 21 |  |  | | |
|  | **RIC Sty** | **e Type** | **Style Name** | **Style Description** |
|  | 1 |  | Message Admission | Used to control the execution of the Message Admission process for an incoming message into E2 Node RAN Function |
| 22 |  |  | | |
| 23 | 7.7.2 | **POLICY** Service style 1: Message admission | | |
| 24 | 7.7.2.1 | **POLICY** Service style description | | |

1. This **POLICY** Service style is used to provide an Imperative Policy to control execution of a Message Admission
2. process for an incoming message of type "REQUEST" received by the specific E2 Node RAN Function. The
3. associated *Action Definition* IE provides the rules to be executed as an Imperative E2 Policy with different parameters
4. assigned to each RAN UE Group.
5. A positive outcome of the Imperative policy results in the incoming message being forwarded to the E2 Node without
6. modification.
7. A negative outcome of the Imperative policy results in the creation of an appropriate request rejection message as
8. defined in Annex A.2.1
9. 7.7.2.2 **POLICY** Service *RIC Action Definition* IE contents
10. This **POLICY** Service style uses *RIC Action Definition* IE Format 2 (8.2.1.1.2) where:
11. - RAN UE group is described in terms of a list of test conditions using RAN Parameters. A given UE is to be
12. considered to be assigned to a specific RAN UE Group when all test conditions are met. RAN UE Group ID = 0
13. is used for the default case and so applies to any UE that is not assigned to any other RAN UE Group
14. - Imperative E2 Policy is encoded in terms of a list of specific RAN Parameters and shall be applied to any UE
15. within a given RAN UE Group. The default UE policy corresponding to the default behavior of the RAN
16. function without an active Imperative E2 Policy is used for UE assigned to RAN UE Group ID = 0

## 7.8 Supported RIC Service Styles and E2SM IE Formats

1. Table 7.8-1 and 7.8-2 provide a summary of the E2SM IE Formats defined to support the set of RIC Event Triggers and
2. RIC Service Styles defined in this E2SM specification. 14

###### Table 7.8-1: Summary of the E2SM IE encoding Formats defined to support the set of RIC Event

1. **Trigger styles**

|  |  |
| --- | --- |
| **RIC**  **Service and Style** | **Event Trigger Definition Format** |
| **Event Trigger** | |
| Style 1 | 1 |
|  |  |
|  |  |

17

###### Table 7.8-1: Summary of the E2SM IE encoding Formats defined to support the set of RIC Service

1. **Styles**

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **RIC**  **Service and Style** | **Action Definition**  **Format** | **Indication header**  **Format** | **Indication message**  **Format** | **Call Process ID**  **Format** | **Control header**  **Format** | **Control message**  **Format** |
| **REPORT** | | | | | | |
| Style 1 | 1 | 1 | 1 |  |  |  |
| Style 2 | 1 | 1 | 1 |  |  |  |
|  |  |  |  |  |  |  |
| **INSERT** | | | | | | |
| Style 1 | 1 | 1 | 1 | 1 |  |  |
|  |  |  |  |  |  |  |
| **CONTROL** | | | | | | |
| Style 1 |  |  |  | 1 | 1 | 1 |
|  |  |  |  |  |  |  |
| **POLICY** | | | | | | |
| Style 1 | 2 |  |  |  |  |  |
|  |  |  |  |  |  |  |

20

21

# 1 8 Elements for E2SM Service Model

## 8.1 General

* 1. Sub clause 8.2 describes the structure of the information elements as required for the E2SM-NI Service Model in
  2. tabular format. Sub clause 8.3 presents the individual information elements. Sub clause 8.4 provides the corresponding
  3. ASN.1 definition of each information element.
  4. The following attributes are used for the tabular description of the messages and information elements:
  5. NOTE: The messages have been defined in accordance to the guidelines specified in 3GPP TR 25.921 [4].

## 8.2 Message Functional Definition and Content

### 8.2.1 Messages for RIC Functional procedures

#### 8.2.1.1 RIC Event Trigger Definition IE

* 1. This information element is part of the RIC SUBSCRIPTION REQUEST message sent by the Near-RT RIC to a E2
  2. Node and is required for event triggers used to initiate REPORT, INSERT and POLICY actions.
  3. Direction: Near-RT RIC ? E2 Node.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| CHOICE Format |  |  |  |  |
| >E2SM-NI Event Trigger Definition Format 1 | M |  | 8.2.1.1.1 |  |

14

##### 8.2.1.1.1 E2SM-NI Event Trigger Definition Format 1

1. This RIC Event Trigger Definition style allows to select a specific target using:
2. - Network Interface Type IE used to select a specific interface type,
3. - Network Interface Identifier used to select a specific interface instance,
4. - Network Interface Direction used to select a specific interface direction (incoming or outgoing),
5. - Network Interface Message Type used to select a specific message on the interface,
6. - Message Protocol IE Identifier used to select a specific protocol element in the selected message,
7. - Message Protocol IE Test Condition and Message Protocol IE Test Value are used to test if the selected protocol
8. element meets a specific test condition where the trigger condition applies when and only if all of the test
9. conditions are TRUE (i.e. logical ADD of each test condition).

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Network Interface Type | M |  | 8.3.21 |  |
| Network Interface Identifier | O |  | 8.3.22 | "Any" instance to be used if absent |
| Network Interface Direction | O |  | 8.3.23 | "Both" directions to be used if absent |
| Network Interface Message Type | O |  | 8.3.25 | "Any" message type to be used if absent |
| Sequence of Message Protocol Tests |  | 0.. <maxof Interface Protocol  Test> |  | "Any" message if zero message protocol tests in list |
| >Message Protocol IE ID | M |  | 8.3.26 | Protocol IE ID presence in message if test  condition is absent |
| >Message Protocol IE Test condition | O |  | 8.3.27 |  |
| >Message Protocol IE Value | O |  | 8.3.28 | Shall be included if test condition is present |

1

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxof Interface Protocol Test | Maximum no. of Network Interface Protocol Test in event trigger definition supported by RAN Function. Value is <15>. |

2

#### 8.2.1.2 RIC Action Definition IE

1. This information element is part of the RIC SUBSCRIPTION REQUEST message sent by the Near-RT RIC to a E2
2. Node and is required for POLICY actions and optional for REPORT and INSERT actions. This information element
3. provides addition information for the nominated Action (Report, Insert, Policy)
4. Direction: Near-RT RIC ? E2 Node.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RIC Style Type | M |  | 8.3.3 |  |
| CHOICE Format |  |  |  |  |
| >E2SM-NI Action Definition Format 1 | M |  | 8.2.1.2.1 |  |
| > E2SM-NI Action Definition Format 2 | M |  | 8.2.1.2.2 |  |

8

##### 8.2.1.2.1 E2SM-NI Action Definition Format 1

1. The *E2SM-NI Action Definition* IE Format 1 supports a sequence of RAN Parameters sent as ID/Value pairs. The
2. meaning of the ID/Value pairs is defined in section 7.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Sequence of RAN Parameters |  | 0..  <maxofActio nParameters  > |  |  |
| >RAN Parameter ID | M |  | 8.3.7 |  |
| >RAN Parameter Value | M |  | 8.3.9 |  |

12

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxofActionparameters | Maximum no. of RAN Parameters. Value is <255> |

13

##### 8.2.1.2.2 E2SM-NI Action Definition Format 2

1. The *E2SM-NI Action Definition* IE Format 2 supports a POLICY encoded as a list of RAN UE Groups, each with a
2. group identifier, group definition described in terms of a list of RAN parameters with test conditions and a command
3. described in terms of a list of RAN parameters. The meaning of the ID/Value pairs is defined in section 7 and Annex A.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Sequence of RAN UE Group |  | 0..<maxofRANu eGroups> |  |  |
| >RAN UE Group ID | M |  | 8.3.14 |  |
| >RAN UE Group Definition | M |  | 8.3.15 | Defines RAN UE group |
| >RAN Imperative Policy | M |  | 8.3.16 | Defines policy to  be applied to RAN UE Group |

5

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxofRANueGroups | Maximum no. of RAN UE Groups in action definition supported by RAN Function. Value is 255. |

6

#### 8.2.1.3 RIC Indication Header IE

1. This information element is part of the RIC INDICATION message sent by the E2 Node to a Near-RT RIC node and is
2. required for REPORT and INSERT actions.
3. Direction: E2 Node ? Near-RT RIC.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| CHOICE Format |  |  |  |  |
| >E2SM-NI Indication Header Format 1 | M |  | 8.2.1.3.1 |  |

11

##### 12 8.2.1.3.1 E2SM-NI Indication Header Format 1

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Network Interface Type | M |  | 8.3.21 |  |
| Network Interface Identifier | M |  | 8.3.22 |  |
| Network Interface Direction | M |  | 8.3.23 |  |
| Network Interface Timestamp | O |  | 8.3.24 |  |
|  |  |  |  |  |

13

#### 8.2.1.4 RIC Indication Message IE

1. This information element is part of the RIC INDICATION message sent by the E2 Node to a Near-RT RIC node and is
2. required for REPORT and INSERT actions.
3. Direction: E2 Node ? Near-RT RIC.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| CHOICE Format |  |  |  |  |
| >E2SM-NI Indication Message Format 1 | M |  | 8.2.1.4.1 |  |

18

##### 8.2.1.4.1 E2SM-NI Indication Message Format 1

1. Content is encoded as per definition of network interface type indicated in the Network Interface Type IE in associated
2. RIC Indication Header IE.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Network Interface Message | M |  | 8.3.29 |  |

4

#### 8.2.1.5 RIC Call Process ID IE

1. This information element is part of the RIC INDICATION message sent by the E2 Node to a Near-RT RIC node and is
2. required for INSERT action. The same information element is used in RIC Control procedure
3. Direction: E2 Node ? Near-RT RIC.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| CHOICE Format |  |  |  |  |
| >E2SM-NI Call Process ID Format 1 | M |  | 8.2.1.5.1 |  |
| >E2SM-NI Call Process ID Format 2 | M |  | 8.2.1.5.2 |  |

9

##### 10 8.2.1.5.1 E2SM-NI Call Process ID Format 1

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RIC Call process ID approach 1 | M |  | 8.3.11.1 |  |

11

##### 12 8.2.1.5.2 E2SM-NI Call Process ID Format 2

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RIC Call process ID approach 2 | M |  | 8.3.11.2 |  |

13

#### 8.2.1.6 RIC Control Header IE

1. This information element is part of the RIC CONTROL message sent by the Near-RT RIC to a E2 Node and is required
2. for RIC Control Procedure.
3. Direction: Near-RT RIC ? E2 Node.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| CHOICE Format |  |  |  |  |
| >E2SM-NI Control Header Format 1 | M |  | 8.2.1.6.1 |  |

18

##### 8.2.1.6.1 E2SM-NI Control Header Format 1

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Network Interface Type | M |  | 8.3.21 |  |
| Network Interface Identifier | M |  | 8.3.22 |  |
| Network Interface Direction | M |  | 8.3.23 |  |
| RIC Control Message Priority | O |  | 8.3.12 |  |

2

#### 8.2.1.7 RIC Control Message IE

1. This information element is part of the RIC CONTROL message sent by the Near-RT RIC to a E2 Node and is required
2. for RIC Control Procedure.
3. Direction: Near-RT RIC ? E2 Node.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| CHOICE Format |  |  |  |  |
| >E2SM-NI Control Message Format 1 | M |  | 8.2.1.7.1 |  |

7

##### 8.2.1.7.1 E2SM-NI Control Message Format 1

1. Content is encoded as per definition of network interface type indicated in the Network Interface Type IE in associated
2. RIC Control Header IE.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Network Interface Message | M |  | 8.3.29 |  |

11

#### 8.2.1.8 RIC Control Outcome IE

1. This information element is part of the RIC CONTROL ACKOWLEDGEMENT and RIC CONTROL FAILURE
2. messages and is sent by the E2 Node to the Near-RT RIC and is required for RIC Control Procedure.
3. Direction: Near-RT RIC ? E2 Node.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| CHOICE Format |  |  |  |  |
| >E2SM-NI Control Outcome Format 1 | M |  | 8.2.1.8.1 |  |

16

##### 8.2.1.8.1 E2SM-NI Control Outcome Format 1

1. The *E2SM-NI Control Outcome* IE Format 1 supports a sequence of RAN Parameters sent as ID/Value pairs. The
2. meaning of the ID/Value pairs is defined in section 7.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Sequence of RAN Parameters |  | 0..  <maxofRAN parameters> |  |  |
| >RAN Parameter ID | M |  | 8.3.7 |  |
| >RAN Parameter Value | M |  | 8.3.9 |  |

20

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxofRANparameters | Maximum no. of RAN Parameters. Value is <255> |

1

### 8.2.2 Messages for RIC Global Procedures

#### 8.2.2.1 RAN Function Definition IE

1. This information element is part of the E2 SETUP REQUEST and RIC SERVICE UPDATE message sent by the RAN
2. to a NEAR-RT RIC node and is used to provide all required information for the Near-RT RIC to determine how a given
3. E2 Node has been configured to support a given RAN Function specific E2SM.
4. Direction: E2 Node ? Near-RT RIC.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RAN Function Name | M |  | 8.3.2 |  |
| Sequence of Network Interface Types |  | 1.. <maxofNItypes> |  |  |
| >Network Interface Type | M |  | 8.3.21 |  |
| >Sequence of Event trigger styles |  | 0.. <maxofRICstyles> |  |  |
| >>RIC Event Trigger Style Type | M |  | 8.3.3 | ID of Event trigger style |
| >>RIC Event Trigger Style Name | M |  | 8.3.4 | Name of Event trigger style |
| >>RIC Event Trigger Format Type | M |  | 8.3.5 | Event trigger format used by Event  trigger style |
| >Sequence of Report styles |  | 0.. <maxofRICstyles> |  |  |
| >>RIC Report Style Type | M |  | 8.3.3 | ID of Report style |
| >>RIC Report Style Name | M |  | 8.3.4 | Name of Report style |
| >>RIC Report Action Format Type | M |  | 8.3.5 | Action definition format used by Report style |
| >>Sequence of RAN parameters for Action |  | 0..  <maxofRANparameters> |  | RAN parameters used by Report style |
| >>>RAN Parameter ID | M |  | 8.3.7 |  |
| >>>RAN Parameter Name | M |  | 8.3.10 |  |
| >>>RAN Parameter Type | M |  | 8.3.6 |  |
| >>RIC Indication Header Format Type | M |  | 8.3.5 | Indication header format used by Report style |
| >>RIC Indication Message Format Type | M |  | 8.3.5 | Indication message  format used by Report style |
| >Sequence of Insert styles |  | 0.. <maxofRICstyles> |  |  |
| >>RIC Insert Style Type | M |  | 8.3.3 | ID of Insert style |
| >>RIC Insert Style Name | M |  | 8.3.4 | Name of Insert style |
| >>RIC Insert Action Format Type | M |  | 8.3.5 | Action definition format used by Insert style |
| >>Sequence of RAN parameters for Action |  | 0..  <maxofRANparameters> |  | RAN parameters used by Insert style |
| >>>RAN Parameter ID | M |  | 8.3.7 |  |
| >>>RAN Parameter Name | M |  | 8.3.10 |  |
| >>>RAN Parameter Type | M |  | 8.3.6 |  |
| >>RIC Indication Header Format Type | M |  | 8.3.5 | Indication header  format used by Insert style |
| >>RIC Indication Message Format Type | M |  | 8.3.5 | Indication message format used by  Insert style |
| >>RIC Call Process ID Format Type | M |  | 8.3.5 | Call Processs ID format used by  Insert style |
| >Sequence of Control styles |  | 0.. <maxofRICstyles> |  |  |
| >>RIC Control Style Type | M |  | 8.3.3 | ID of Control style |

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| >>RIC Control Style Name | M |  | 8.3.4 | Name of Control style |
| >>RIC Control Header Format Type | M |  | 8.3.5 | Control header format used by control style |
| >>RIC Control Message Format Type | M |  | 8.3.5 | Control message format used by control style |
| >>RIC Call Process ID Format Type | M |  | 8.3.5 | Call Processs ID format used by control style |
| >>RIC Control Outcome Format Type | M |  | 8.3.5 | Call Processs ID format used by control style |
| >>Sequence of RAN  parameters for Control Outcome |  | 0..  <maxofRANparameters> |  | RAN parameters  used by Control Outcome style |
| >>>RAN Parameter ID | M |  | 8.3.7 |  |
| >>>RAN Parameter Name | M |  | 8.3.10 |  |
| >>>RAN Parameter Type | M |  | 8.3.6 |  |
| >Sequence of Policy styles |  | 0.. <maxofRICstyles> |  |  |
| >>RIC Policy Style Type | M |  | 8.3.3 |  |
| >>RIC Policy Style Name | M |  | 8.3.4 |  |
| >>RIC Policy Action Format Type | M |  | 8.3.5 | Action definition format used by Policy style |
| >>Sequence of RAN parameters for Action |  | 0..  <maxofRANparameters> |  | RAN parameters used by Policy style |
| >>>RAN Parameter ID | M |  | 8.3.7 |  |
| >>>RAN Parameter Name | M |  | 8.3.10 |  |
| >>>RAN Parameter Type | M |  | 8.3.6 |  |

1

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxofNItypes | Maximum no. of Network Interface Types supported by RAN Function <63> |
| maxofRICstyles | Maximum no. of Style of Report, Insert, Control or Policy actions supported by RAN Function. Value is <63>. |
| maxofRANparameters | Maximum no. of RAN Parameters for given style. Value is <65535> |

2

3

4

## 8.3 Information Element definitions

### 8.3.1 General

1. When specifying information elements which are to be represented by bit strings, if not otherwise specifically stated in
2. the semantics description of the concerned IE or elsewhere, the following principle applies with regards to the ordering
3. of bits:
4. - The first bit (leftmost bit) contains the most significant bit (MSB);
5. - The last bit (rightmost bit) contains the least significant bit (LSB);
6. - When importing bit strings from other specifications, the first bit of the bit string contains the first bit of the
7. concerned information.

### 8.3.2 RAN Function name

1. This IE defines the Name of a given *RAN Function Name* IE as a structured data.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RAN Function Short Name | M |  | PrintableString(SIZE(1..150,...)) | ORAN-WG3-NI |
| RAN Function Service Model OID | M |  | PrintableString(SIZE(1..1000,...)  ) | Object Identifier of this specific E2SM. Formatted as per OID (1.3.6.1.4.1.53148.1  .2.1 for E2SM-NI) |
| RAN Function Description | M |  | PrintableString(SIZE(1..150,...)) | "Network Interface" |
| RAN Function Instance | O |  | INTEGER | Default 0 assumed if absent |

5

### 8.3.3 RIC Style Type

1. This IE defines the Identifier of a given *RIC Style Type* IE.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RIC Style Type | M |  | INTEGER |  |

8

9 Note: Assignment of RIC Style Type values is described in section 7 10

### 8.3.4 RIC Style Name

1. This IE defines the *RIC Style Name* IE.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RIC Style Name | M |  | PrintableString(SIZE(1..150,...)) |  |

13

1. Note: Assignment of RIC Style Name values is described in section 7 15

### 8.3.5 RIC Format Type

1. This IE defines the Identifier of a given *RIC Format Type* IE.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RIC Format Type | M |  | INTEGER |  |

18

19 Note: Assignment of RIC Format Type values is described in section 7 and summarized in section 7.8.

### 8.3.6 RAN Parameter Type

1. This IE defines the RAN function specific *RAN Parameter Type* IE.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RAN Parameter Type | M |  | ENUMERATED (integer, enumerated, boolean, bit string, octet string, printable  string...) |  |

3

### 8.3.7 RAN Parameter ID

1. This IE defines the RAN function specific *RAN parameter ID* IE.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RAN Parameter ID | M | 0..maxofRA Nparameter s | INTEGER |  |

6

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxofRANparameters | Maximum no. of RAN Parameter ID. Value is < 65535> |

7

### 8.3.8 RAN Parameter Test Condition

1. This IE defines the RAN Function specific *RAN Parameter Test Condition* IE to be used to compare the particular value
2. of a given parameter with the target value.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RAN Parameter Test Condition | M |  | ENUMERATED (equal,  greaterthan, lessthan, contains, present, ...) |  |

11

1. For all cases the test condition is Value (*RAN Parameter ID*) (*RAN Parameter Test Condition*) (*RAN Parameter Value*).
2. For example:
3. - If RAN Parameter Test Condition = "equal" then test condition is:
4. Value (RAN Parameter ID) = (RAN Parameter Value)
5. - If RAN Parameter Test Condition = "greaterthan" then test condition is:
6. Value (RAN Parameter ID) > (RAN Parameter Value)

### 8.3.9 RAN Parameter Value

1. This IE defines the *RAN Parameter Value* IE.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| CHOICE RAN Parameter Value | M |  |  |  |
| >INTEGER |  |  | INTEGER |  |
| >ENUMERATED |  |  | INTEGER |  |
| >BOOLEAN |  |  | BOOLEAN |  |
| >BIT STRING |  |  | BIT STRING |  |
| >OCTET STRING |  |  | OCTET STRING |  |
| >PRINTABLE STRING |  |  | PrintableString |  |

20

### 8.3.10 RAN Parameter Name

1. This IE defines the *RAN Parameter Name* IE of a given RAN Parameter ID.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RAN Parameter Name | M |  | PrintableString(SIZE(1..150,...)) |  |

3

### 8.3.11 RAN Call process ID

#### 8.3.11.1 RAN Call process ID approach 1

1. This IE defines the required Call process ID approach 1.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Call process ID number |  |  | INTEGER |  |

7

#### 8.3.11.1 RAN Call process ID approach 2

1. This IE defines the required Call process ID approach 2 IE.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Call process ID string |  |  | PrintableString(SIZE(1..150,...)) |  |

10

### 8.3.12 RIC Control Message Priority

1. This IE defines the *RIC Control Message Priority* IE

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| ControlMessagePriority | M |  | INTEGER |  |

13

14

### 8.3.13 reserved

16

### 8.3.14 RAN UE Group ID

1. This IE defines the generic *RAN UE Group ID* IE

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RAN UE Group ID | M |  | INTEGER |  |

19

20

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxofRANueGroups | Maximum no. of RAN UE Groups. Value is <255> |

21

22

### 8.3.15 RAN UE Group Definition

1. This IE defines the generic *RAN UE Group Definition* IE

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Sequence of RAN Parameters |  | 0..<maxofRANp arameters> |  | Defines RAN UE group |
| >RAN Parameter ID | M |  | 8.3.7 |  |
| >RAN Parameter Test Condition | M |  | 8.3.8 |  |
| >RAN Parameter Value | M |  | 8.3.9 |  |

3

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxofRANparameters | Maximum no. of RAN Parameter ID. Value is <255> |

4

### 8.3.16 RAN Imperative Policy

1. This IE defines the generic *RAN Imperative Policy* IE

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Sequence of RAN Parameters |  | 0..<maxofRAN parameters> |  | Defines RAN UE group |
| >RAN Parameter ID | M |  | 8.3.7 |  |
| >RAN Parameter Value | M |  | 8.3.9 |  |

7

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxofRANparameters | Maximum no. of RAN Parameter types in action definition supported by RAN Function. Value is <255>. |

8

### 9 8.3.17 reserved

10

### 11 8.3.18 reserved

12

### 13 8.3.19 reserved

14

### 15 8.3.20 reserved

16

### 8.3.21 Network Interface Type

1. This IE defines the Network Interface Type as a list referring to a standardized Network Interface Type.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| NetworkInterfaceType | M |  | ENUMERATED (S1, X2, NG, Xn, F1, E1, ...) |  |

19

1. Where:
2. - S1 means S1 interface [10]
3. - X2 means X2 interface [11]
4. - NG means NG (N2) interface [12]
5. - Xn means Xn interface [13]
6. - F1 means F1 interface [14]
7. - E1 means E1 interface [15] 8

### 8.3.22 Network Interface Identifier

1. This IE defines the Network Interface Identifier in terms of global identifier of the network node terminating a specific
2. network interface.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| CHOICE  NetworkInterfaceIdentifier | M |  |  |  |
| >Global eNB ID |  |  | As defined in spec 3GPP  36.413 [10] section 9.2.1.37 | For S1, X2 |
| >Global en-gNB ID |  |  | As defined in spec 3GPP  36.423 [11] section 9.2.112 | For X2 |
| >Global ng-RAN ID |  |  | As defined in spec 3GPP  38.413 [12] section 9.3.1.5 | For NG, Xn, F1, E1 |
| >Global gNB-DU ID |  |  |  | For F1 |
| >> Global ng-RAN ID | M |  | As defined in spec 3GPP  38.413 [12] section 9.3.1.5 | Used as prefix to gNB-DU ID |
| >>gNB-DU ID | M |  | As defined in spec 3GPP  38.473 [14] section 9.3.1.9 | For F1 |
| >Global gNB-CU-UP ID |  |  |  | For E1 |
| >> Global ng-RAN ID | M |  | As defined in spec 3GPP  38.413 [12] section 9.3.1.5 | Used as prefix to gNB-CU-UP ID |
| >>gNB-CU-UP ID | M |  | As defined in spec 3GPP  38.463 [15] section 9.3.1.15 | For E1 |

|  |  |  |
| --- | --- | --- |
| 12 |  |  |
| 13 | Notes: |
| 14 | - | O-CU and O-CU-CP nodes terminating F1 and O-CU-CP nodes terminating E1 interfaces are identified by the |
| 15 |  | associated Global RAN Node ID |
| 16 | - | O-DU nodes terminating F1 and O-CU-UP terminating E1 interfaces are identified by the local gNB-DU-ID or |
| 17 |  | gNB-CU-UP ID with a prefix Global RAN Node ID identifying logical gNB |

### 8.3.23 Network Interface Direction

1. This IE defines the *Network Interface Direction* IE.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| NetworkInterfaceDirection | M |  | ENUMERATED (incoming, outgoing, both, ...) |  |

20

### 8.3.24 Network Interface Timestamp

1. This IE defines the NetworkInterfaceTimestamp.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| NetworkInterfaceTimestamp | M |  | OCTET STRING (SIZE(8)) | UTC time encoded as the 64-bit timestamp format as defined in section 6 of IETF RFC 5905 [35]  containing both seconds and  fraction parts |

3

### 8.3.25 Network Interface Message Type

1. This IE defines the NetworkInterfaceMessageType in terms of Message Type structure data of the specific network
2. interface.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| CHOICE  NetworkInterfaceMessageTy pe | M |  |  |  |
| >S1 message type |  |  | As defined in spec 3GPP  36.413 [10] section 9.3.1.1 | For S1 |
| >X2 message type |  |  | As defined in spec 3GPP  36.423 [11] section 9.2.13 | For X2 |
| >NG message type |  |  | As defined in spec 3GPP  38.413 [12] section 9.3.1.1 | For NG |
| >Xn message type |  |  | As defined in spec 3GPP  38.423 [12] section 9.2.3.1 | For Xn |
| >F1 message type |  |  | As defined in spec 3GPP  38.473 [12] section 9.3.1.1 | For F1 |
| >E1 message type |  |  | As defined in spec 3GPP  38.463 [12] section 9.3.1.1 | For E1 |

7

### 8.3.26 Message Protocol IE Identifier

1. This IE defines the MessageProtocolIE-ID

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| MessageProtocolIE-ID | M |  | INTEGER |  |

10

1. Notes:
2. - Refer to the specific target interface specification for the assignment of network interface specific Message
3. Protocol IE Identifier
4. - Comon definition of type "INTEGER" has been observed to be adopted by all 3GPP interfaces and so assumed
5. here.

16

### 8.3.27 Message Protocol IE Test Condition

* 1. This IE defines the network interface message protocol IE specific test condition to be used to compare the particular
  2. value of a given parameter with the target value.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| MessageProtocolIE- TestCondition | M |  | ENUMERATED (equal,  greaterthan, lessthan, contains, present, ...) |  |

4

1. For all cases the test condition is Value (*Message Protocol IE ID*) (*Message Protocol IE Test Condition*) (*Message*
2. *Protocol IE Test Value*).
3. For example:
4. - If Message Protocol IE Test Condition = "equal" then test condition is:
5. Value (Message Protocol IE ID) = (Message Protocol IE Test Value)
6. - If Message Protocol IE Test Condition = "greaterthan" then test condition is:
7. Value (Message Protocol IE ID) > (Message Protocol IE Test Value)

### 8.3.28 Message Protocol IE Value

1. This IE defines the target value type for a particular Message Protocol IE element.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| CHOICE Message Protocol IE Value | M |  |  |  |
| >INTEGER |  |  | INTEGER |  |
| >ENUMERATED |  |  | INTEGER |  |
| >BOOLEAN |  |  | BOOLEAN |  |
| >BIT STRING |  |  | BIT STRING |  |
| >OCTET STRING |  |  | OCTET STRING |  |
| >PRINTABLE STRING |  |  | PrintableString |  |

14

### 8.3.29 Network Interface Message

1. This IE defines the *Network Interface Message Container* IE

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Network Interface Message | M |  | OCTET STRING |  |

17

18 Note: The actual contents of the message is defined in the network interface specification. 19

20

21

22

## 8.4 Information Element Abstract Syntax (with ASN.1)

### 8.4.1 General

1. E2SM ASN.1 definition conforms to ITU-T Rec. X.680 [5] and ITU-T Rec. X.681 [6].
2. Sub clause 8.4.2 presents the Abstract Syntax of the E2SM information elements to be carried within the E2AP [3]
3. protocol messages with ASN.1. In case there is contradiction between the ASN.1 definition in this sub clause and the
4. tabular format in sub clause 8.2 and 8.3, the ASN.1 shall take precedence, except for the definition of conditions for the
5. presence of conditional elements, in which the tabular format shall take precedence.
6. If an E2SM information element carried as an OCTET STRING in an E2AP [3] message that is not constructed as
7. defined above is received, this shall be considered as Abstract Syntax Error, and the message shall be handled as
8. defined for Abstract Syntax Error in clause 9.

|  |  |
| --- | --- |
| 11 | 8.4.2 Information Element definitions |
| 12 | -- ASN1START |
| 13 | -- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* |
| 14 | -- E2SM-NI |
| 15 | -- Information Element Definitions |
| 16 | -- |
| 17 | -- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* |
| 18 |  |
| 19 | E2SM-NI-IEs { |
| 20 | iso(1) identified-organization(3) dod(6) internet(1) private(4) enterprise(1) 53148 e2(1) version1 |
| 21 | (1) e2sm(2) e2sm-NI-IEs (1)} |
| 22 |  |
| 23 | DEFINITIONS AUTOMATIC TAGS ::= |
| 24 |  |
| 25 | BEGIN |
| 26 |  |
| 27 | -- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* |
| 28 | -- IEs |
| 29 | -- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* |
| 30 |  |
| 31 | -- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* |
| 32 | -- copied from X2AP IEs v15.4.0 |
| 33 | -- note: ie-Extensions removed |
| 34 | -- Note: to avoid duplicate names with XnAP, GNB-ID renamed ENGNB-ID, GlobalGNB-ID renamed |
| 35 | GlobalenGNB-ID |
| 36 | -- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* |
| 37 |  |
| 38 | GlobalENB-ID ::= SEQUENCE { |
| 39 | pLMN-Identity PLMN-Identity, |
| 40 | eNB-ID ENB-ID, |
| 41 | ... |
| 42 | } |
| 43 |  |
| 44 | ENB-ID ::= CHOICE { |
| 45 | macro-eNB-ID BIT STRING (SIZE (20)), |
| 46 | home-eNB-ID BIT STRING (SIZE (28)), |
| 47 | ... , |
| 48 | short-Macro-eNB-ID BIT STRING (SIZE(18)), |
| 49 | long-Macro-eNB-ID BIT STRING (SIZE(21)) |
| 50 | } |
| 51 |  |
| 52 | GlobalenGNB-ID ::= SEQUENCE { |
| 53 | pLMN-Identity PLMN-Identity, |
| 54 | gNB-ID ENGNB-ID, |
| 55 | ... |
| 56 | } |
| 57 |  |
| 58 | ENGNB-ID ::= CHOICE { |
| 59 | gNB-ID BIT STRING (SIZE (22..32)), |
| 60 | ... |
| 61 | } |
| 62 |  |
| 63 | PLMN-Identity ::= OCTET STRING (SIZE(3)) |
| 64 |  |
| 65 | -- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* |

|  |  |
| --- | --- |
| 1 | -- copied from 38.463 v15.5.0 E1AP IEs |
| 2 | -- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* |
| 3 | GNB-CU-UP-ID::= INTEGER (0..68719476735) |
| 4 |  |
| 5 | -- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* |
| 6 | -- copied from 38.473 v15.4.1 F1AP IEs |
| 7 | -- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* |
| 8 | GNB-DU-ID::= INTEGER (0..68719476735) |
| 9 |  |
| 10 | -- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* |
| 11 | -- copied from 38.423 v15.5.0 XnAP IEs |
| 12 | -- note: ie-Extensions removed |
| 13 | -- note: |
| 14 | -- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* |
| 15 | GlobalgNB-ID ::= SEQUENCE { |
| 16 | plmn-id PLMN-Identity, |
| 17 | gnb-id GNB-ID-Choice, |
| 18 | ... |
| 19 | } |
| 20 | GNB-ID-Choice ::= CHOICE { |
| 21 | gnb-ID BIT STRING (SIZE(22..32)), |
| 22 | ... |
| 23 | } |
| 24 |  |
| 25 |  |
| 26 | GlobalngeNB-ID ::= SEQUENCE { |
| 27 | plmn-id PLMN-Identity, |
| 28 | enb-id ENB-ID-Choice, |
| 29 | ... |
| 30 | } |
| 31 |  |
| 32 | ENB-ID-Choice ::= CHOICE { |
| 33 | enb-ID-macro BIT STRING (SIZE(20)), |
| 34 | enb-ID-shortmacro BIT STRING (SIZE(18)), |
| 35 | enb-ID-longmacro BIT STRING (SIZE(21)), |
| 36 | ... |
| 37 | } |
| 38 |  |
| 39 | GlobalNG-RANNode-ID ::= CHOICE { |
| 40 | gNB GlobalgNB-ID, |
| 41 | ng-eNB GlobalngeNB-ID, |
| 42 | ... |
| 43 | } |
| 44 |  |
| 45 |  |
| 46 |  |
| 47 | -- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* |
| 48 | -- |
| 49 | -- copied from X2AP common data types v15.4.0 |
| 50 | -- |
| 51 | -- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* |
| 52 |  |
| 53 | maxProtocolIEs INTEGER ::= 65535 |
| 54 |  |
| 55 | Criticality ::= ENUMERATED { reject, ignore, notify } |
| 56 |  |
| 57 | Presence ::= ENUMERATED { optional, conditional, mandatory } |
| 58 |  |
| 59 | ProcedureCode ::= INTEGER (0..255) |
| 60 |  |
| 61 | ProtocolIE-ID ::= INTEGER (0..maxProtocolIEs) |
| 62 |  |
| 63 |  |
| 64 |  |
| 65 | -- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* |
| 66 | -- |
| 67 | -- Lists |
| 68 | -- |
| 69 | -- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* |
| 70 |  |
| 71 | maxofInterfaceProtocolTests INTEGER ::= 15 |
| 72 | maxofRANueGroups INTEGER ::= 255 |
| 73 | maxofActionParameters INTEGER ::= 255 |
| 74 | maxofRANparameters INTEGER ::= 65535 |
| 75 | maxofNItypes INTEGER ::= 63 |
| 76 | maxofRICstyles INTEGER ::= 63 |
| 77 |  |

1 -- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

1. -- E2SM-NI Service model IEs
2. -- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

4

1. ![](../assets/images/512d47fc8aff.png)
2. -- Event Trigger Definition OCTET STRING contents
3. ![](../assets/images/512d47fc8aff.png)

8

1. -- E2SM-NI-EventTriggerDefinition IE
2. E2SM-NI-EventTriggerDefinition ::= CHOICE{
3. eventDefinition-Format1 E2SM-NI-EventTriggerDefinition-Format1,
4. ...

13 }

14

1. -- E2SM-NI-EventTriggerDefinition IE is used for Event Trigger Definition Format 1
2. E2SM-NI-EventTriggerDefinition-Format1 ::= SEQUENCE{
3. interface-type NI-Type,
4. interface-ID NI-Identifier,
5. interfaceDirection NI-Direction,
6. interfaceMessageType NI-MessageType,
7. interfaceProtocolIE-List SEQUENCE (SIZE(1..maxofInterfaceProtocolTests)) OF NI-ProtocolIE-
8. Item OPTIONAL,
9. ...

24 }

25

1. ![](../assets/images/512d47fc8aff.png)
2. -- Action Definition OCTET STRING contents
3. ![](../assets/images/a4013d67e85b.png)
4. -- E2SM-NI-ActionDefinition IE
5. E2SM-NI-ActionDefinition ::= SEQUENCE{
6. ric-Style-Type RIC-Style-Type,
7. action-Definition-Format E2SM-NI-ActionDefinitionFormat,
8. ...

34 }

35

1. E2SM-NI-ActionDefinitionFormat ::= CHOICE{
2. actionDefinition-Format1 E2SM-NI-ActionDefinition-Format1,
3. actionDefinition-Format2 E2SM-NI-ActionDefinition-Format2,
4. ...

40 }

41

1. -- E2SM-NI-ActionDefinition IE is used for Action Format 1
2. E2SM-NI-ActionDefinition-Format1 ::= SEQUENCE{
3. actionParameter-List SEQUENCE (SIZE(1..maxofActionParameters)) OF RANparameter-Item
4. OPTIONAL,
5. ...

47 }

48

49

1. -- E2SM-NI-ActionDefinition IE is used for Action Format 2
2. E2SM-NI-ActionDefinition-Format2 ::= SEQUENCE{
3. ranUEgroup-List SEQUENCE (SIZE(1..maxofRANueGroups)) OF RANueGroup-Item OPTIONAL,
4. ...

54 }

55

1. ![](../assets/images/512d47fc8aff.png)
2. -- Indication Header OCTET STRING contents
3. ![](../assets/images/a4013d67e85b.png)

59

1. -- E2SM-NI-IndicationHeader IE
2. E2SM-NI-IndicationHeader ::= CHOICE{
3. indicationHeader-Format1 E2SM-NI-IndicationHeader-Format1,
4. ...

64 }

65

1. -- E2SM-NI-IndicationHeader Format 1
2. E2SM-NI-IndicationHeader-Format1 ::= SEQUENCE{
3. interface-type NI-Type,
4. interface-ID NI-Identifier,
5. interfaceDirection NI-Direction,
6. timestamp NI-TimeStamp OPTIONAL,
7. ...

73 }

74

1. ![](../assets/images/512d47fc8aff.png)
2. -- Indication Message OCTET STRING contents
3. ![](../assets/images/a4013d67e85b.png)

1

1. -- E2SM-NI-IndicationMessage IE
2. E2SM-NI-IndicationMessage ::= CHOICE{
3. indicationMessage-Format1 E2SM-NI-IndicationMessage-Format1,
4. ...

6 }

7

1. -- E2SM-NI-IndicationMessage IE
2. E2SM-NI-IndicationMessage-Format1 ::= SEQUENCE{
3. interfaceMessage NI-Message,
4. ...

12 }

13

1. ![](../assets/images/512d47fc8aff.png)
2. -- Call Process ID
3. ![](../assets/images/512d47fc8aff.png)

17

1. E2SM-NI-CallProcessID ::= CHOICE{
2. callProcessID-Format1 E2SM-NI-CallProcessID-Format1,
3. callProcessID-Format2 E2SM-NI-CallProcessID-Format2,
4. ...

22 }

23 -- E2SM-NI-callProcessID IE Format 1

24

1. E2SM-NI-CallProcessID-Format1 ::= SEQUENCE{
2. callProcess-ID RANcallProcess-ID-number,
3. ...

28 }

29

1. E2SM-NI-CallProcessID-Format2 ::= SEQUENCE{
2. callProcess-ID RANcallProcess-ID-string,
3. ...

33 }

34

1. ![](../assets/images/a4013d67e85b.png)
2. -- Control Header OCTET STRING contents
3. ![](../assets/images/512d47fc8aff.png)

38

1. -- E2SM-NI-ControlHeader IE
2. E2SM-NI-ControlHeader ::= CHOICE{
3. controlHeader-Format1 E2SM-NI-ControlHeader-Format1,
4. ...

43 }

1. -- E2SM-NI-ControlHeader Format 1
2. E2SM-NI-ControlHeader-Format1 ::= SEQUENCE{
3. interface-type NI-Type,
4. interface-ID NI-Identifier,
5. interface-Direction NI-Direction,
6. ric-Control-Message-Priority RIC-Control-Message-Priority OPTIONAL,
7. ...

51 }

52

53

1. ![](../assets/images/512d47fc8aff.png)
2. -- Control Message OCTET STRING contents
3. ![](../assets/images/512d47fc8aff.png)

57

1. -- E2SM-NI-ControlHeader IE
2. E2SM-NI-ControlMessage ::= CHOICE{
3. controlMessage-Format1 E2SM-NI-ControlMessage-Format1,
4. ...

62 }

63

1. -- E2SM-NI-ControlMessage Format 1
2. E2SM-NI-ControlMessage-Format1 ::= SEQUENCE{
3. interfaceMessage NI-Message,
4. ...

68 }

69

1. ![](../assets/images/512d47fc8aff.png)
2. -- Control Outcome OCTET STRING contents
3. ![](../assets/images/512d47fc8aff.png)

73

1. -- E2SM-NI-ControlOutcome IE
2. E2SM-NI-ControlOutcome ::= CHOICE{
3. controlOutcome-Format1 E2SM-NI-ControlOutcome-Format1,
4. ...

1 }

2

* 1. -- E2SM-NI-ControlOutcome Format 1
  2. E2SM-NI-ControlOutcome-Format1 ::= SEQUENCE{
  3. outcomeElement-List SEQUENCE (SIZE(1..maxofRANparameters)) OF RANparameter-Item OPTIONAL,
  4. ...

7 }

8

1. ![](../assets/images/a4013d67e85b.png)
2. -- RAN Function Description OCTET STRING contents
3. ![](../assets/images/512d47fc8aff.png)

12

1. -- E2SM-NI-RANfunction-Description
2. E2SM-NI-RANfunction-Description ::= SEQUENCE{
3. ranFunction-Name RANfunction-Name,
4. ni-Type-List SEQUENCE (SIZE(1..maxofNItypes)) OF E2SM-NI-RANfunction-Item OPTIONAL,
5. ...

18 }

19

1. E2SM-NI-RANfunction-Item ::= SEQUENCE{
2. interface-type NI-Type,
3. ric-EventTriggerStyle-List SEQUENCE (SIZE(1..maxofRICstyles)) OF RIC-EventTriggerStyle-List
4. OPTIONAL,
5. ric-ReportStyle-List SEQUENCE (SIZE(1..maxofRICstyles)) OF RIC-ReportStyle-List OPTIONAL,
6. ric-InsertStyle-List SEQUENCE (SIZE(1..maxofRICstyles)) OF RIC-InsertStyle-List OPTIONAL,
7. ric-ControlStyle-List SEQUENCE (SIZE(1..maxofRICstyles)) OF RIC-ControlStyle-List
8. OPTIONAL,
9. ric-PolicyStyle-List SEQUENCE (SIZE(1..maxofRICstyles)) OF RIC-PolicyStyle-List OPTIONAL,
10. ...

30 }

31

1. ![](../assets/images/512d47fc8aff.png)
2. -- commmon IEs
3. ![](../assets/images/a4013d67e85b.png)

35

1. -- A
2. -- B
3. -- C
4. -- D
5. -- E
6. -- F
7. -- G
8. Global-eNB-ID ::= GlobalENB-ID
9. Global-en-gNB-ID ::= GlobalenGNB-ID
10. Global-gNB-DU-ID ::= SEQUENCE{
11. global-ng-RAN-ID Global-ng-RAN-ID,
12. gNB-DU-ID GNB-DU-ID
13. }

49

1. Global-gNB-CU-UP-ID ::= SEQUENCE{
2. global-ng-RAN-ID Global-ng-RAN-ID,
3. gNB-CU-UP-ID GNB-CU-UP-ID
4. }

54

1. Global-ng-RAN-ID ::= GlobalNG-RANNode-ID
2. -- H
3. -- I
4. -- J
5. -- K
6. -- L
7. -- M
8. -- N
9. NI-Direction ::= ENUMERATED{
10. incoming,
11. outgoing,
12. both,
13. ...

68 }

69

70

71

1. NI-Identifier ::= CHOICE{
2. global-eNB-ID Global-eNB-ID,
3. global-en-gNB-ID Global-en-gNB-ID,
4. global-ng-RAN-ID Global-ng-RAN-ID,
5. global-gNB-DU-ID Global-gNB-DU-ID,
6. global-gNB-CU-UP-ID Global-gNB-CU-UP-ID,

1 ...

2 }

3

4

5

1. NI-Message ::= OCTET STRING

7

1. NI-MessageType::= CHOICE{
2. s1MessageType NI-MessageTypeS1,
3. x2MessageType NI-MessageTypeX2,
4. ngMessageType NI-MessageTypeNG,
5. xnMessageType NI-MessageTypeXn,
6. f1MessageType NI-MessageTypeF1,
7. e1MessageType NI-MessageTypeE1,
8. ...

16 }

17

1. NI-MessageTypeS1 ::= NI-MessageTypeApproach1
2. NI-MessageTypeX2 ::= NI-MessageTypeApproach1
3. NI-MessageTypeNG ::= NI-MessageTypeApproach1
4. NI-MessageTypeXn ::= NI-MessageTypeApproach1
5. NI-MessageTypeF1 ::= NI-MessageTypeApproach1
6. NI-MessageTypeE1 ::= NI-MessageTypeApproach1

24

1. NI-MessageTypeApproach1 ::= SEQUENCE {
2. procedureCode ProcedureCode,
3. typeOfMessage TypeOfMessage,
4. ...

29 }

30

1. TypeOfMessage ::= ENUMERATED { nothing, initiating-message, successful-outcome, unsuccessful-
2. outcome }

33

34

1. NI-ProtocolIE-Item ::= SEQUENCE{
2. interfaceProtocolIE-ID NI-ProtocolIE-ID,
3. interfaceProtocolIE-Test NI-ProtocolIE-Test,
4. interfaceProtocolIE-Value NI-ProtocolIE-Value,
5. ...

40 }

41

42 NI-ProtocolIE-ID ::= ProtocolIE-ID

43

1. NI-ProtocolIE-Test ::= ENUMERATED{
2. equal,
3. greaterthan,
4. lessthan,
5. contains,
6. present,
7. ...

51 }

52

1. NI-ProtocolIE-Value ::= CHOICE{
2. valueInt INTEGER,
3. valueEnum INTEGER,
4. valueBool BOOLEAN,
5. valueBitS BIT STRING,
6. valueOctS OCTET STRING,
7. valuePrtS PrintableString,
8. ...

61 }

62

63 NI-TimeStamp ::= OCTET STRING (SIZE(8))

64

65 NI-Type ::= ENUMERATED{

66 s1,

67 x2,

1. ng,
2. xn,
3. f1,
4. e1,
5. ...

73 }

74

75 -- O

76 -- P

77 -- Q

1 -- R

2

3 RANcallProcess-ID-number ::= INTEGER

4

5 RANcallProcess-ID-string ::= PrintableString(SIZE(1..150,...))

6

1. RANfunction-Name ::= SEQUENCE{
2. ranFunction-ShortName PrintableString(SIZE(1..150,...)),
3. ranFunction-E2SM-OID PrintableString(SIZE(1..1000,...)),
4. ranFunction-Description PrintableString(SIZE(1..150,...)),
5. ranFunction-Instance INTEGER OPTIONAL,
6. ...

13 }

14

15

1. RANimperativePolicy ::= SEQUENCE{
2. ranImperativePolicy-List SEQUENCE (SIZE(1..maxofRANparameters)) OF RANparameter-Item
3. OPTIONAL,
4. ...

20 }

21

1. RANparameter-Item ::= SEQUENCE {
2. ranParameter-ID RANparameter-ID,
3. ranParameter-Value RANparameter-Value,
4. ...

26 }

27

1. RANparameterDef-Item ::= SEQUENCE {
2. ranParameter-ID RANparameter-ID,
3. ranParameter-Name RANparameter-Name,
4. ranParameter-Type RANparameter-Type,
5. ...

33 }

34

35 RANparameter-ID ::= INTEGER (0..maxofRANparameters)

36

1. RANparameter-Name ::= PrintableString(SIZE(1..150,...))

38

1. RANparameter-Test-Condition ::= ENUMERATED{
2. equal,
3. greaterthan,
4. lessthan,
5. contains,
6. present,
7. ...

46 }

47

1. RANparameter-Type ::= ENUMERATED{
2. integer,
3. enumerated,
4. boolean,
5. bit-string,
6. octet-string,
7. printable-string,
8. ...

56 }

57

1. RANparameter-Value ::= CHOICE{
2. valueInt INTEGER,
3. valueEnum INTEGER,
4. valueBool BOOLEAN,
5. valueBitS BIT STRING,
6. valueOctS OCTET STRING,
7. valuePrtS PrintableString,
8. ...

66 }

67

68

69 RANueGroupID ::= INTEGER (0..maxofRANueGroups)

70

1. RANueGroup-Item ::= SEQUENCE {
2. ranUEgroupID RANueGroupID,
3. ranUEgroupDefinition RANueGroupDefinition,
4. ranPolicy RANimperativePolicy,
5. ...

76 }

77

1

2

* 1. RANueGroupDefinition ::= SEQUENCE{
  2. ranUEgroupDef-List SEQUENCE (SIZE(1..maxofRANparameters)) OF RANueGroupDef-Item OPTIONAL,
  3. ...

6 }

7

8

1. RANueGroupDef-Item ::= SEQUENCE{
2. ranParameter-ID RANparameter-ID,
3. ranParameter-Test RANparameter-Test-Condition,
4. ranParameter-Value RANparameter-Value,
5. ...

14 }

15

1. RIC-Control-Message-Priority ::= INTEGER

17

18

1. RIC-ControlStyle-List ::= SEQUENCE{
2. ric-ControlStyle-Type RIC-Style-Type,
3. ric-ControlStyle-Name RIC-Style-Name,
4. ric-ControlFormat-Type RIC-Format-Type,
5. ric-ControlHeaderFormat-Type RIC-Format-Type,
6. ric-ControlMessageFormat-Type RIC-Format-Type,
7. ric-CallProcessIDFormat-Type RIC-Format-Type,
8. ric-ControlOutcomeFormat-Type RIC-Format-Type,
9. ric-ControlOutcomeRanParaDef-List SEQUENCE (SIZE(1..maxofRANparameters)) OF RANparameterDef-
10. Item,
11. ...

30 }

31

1. RIC-EventTriggerStyle-List ::= SEQUENCE{
2. ric-EventTriggerStyle-Type RIC-Style-Type,
3. ric-EventTriggerStyle-Name RIC-Style-Name,
4. ric-EventTriggerFormat-Type RIC-Format-Type,
5. ...

37 }

1. RIC-InsertStyle-List ::= SEQUENCE{
2. ric-InsertStyle-Type RIC-Style-Type,
3. ric-InsertStyle-Name RIC-Style-Name,
4. ric-InsertActionFormat-Type RIC-Format-Type,
5. ric-InsertRanParameterDef-List SEQUENCE (SIZE(1..maxofRANparameters)) OF RANparameterDef-
6. Item,
7. ric-IndicationHeaderFormat-Type RIC-Format-Type,
8. ric-IndicationMessageFormat-Type RIC-Format-Type,
9. ric-CallProcessIDFormat-Type RIC-Format-Type,
10. ...

48 }

1. RIC-PolicyStyle-List ::= SEQUENCE{
2. ric-PolicyStyle-Type RIC-Style-Type,
3. ric-PolicyStyle-Name RIC-Style-Name,
4. ric-PolicyActionFormat-Type RIC-Format-Type,
5. ric-PolicyRanParameterDef-List SEQUENCE (SIZE(1..maxofRANparameters)) OF RANparameterDef-
6. Item,
7. ...

56 }

57

1. RIC-ReportStyle-List ::= SEQUENCE{
2. ric-ReportStyle-Type RIC-Style-Type,
3. ric-ReportStyle-Name RIC-Style-Name,
4. ric-ReportActionFormat-Type RIC-Format-Type,
5. ric-ReportRanParameterDef-List SEQUENCE (SIZE(1..maxofRANparameters)) OF RANparameterDef-
6. Item,
7. ric-IndicationHeaderFormat-Type RIC-Format-Type,
8. ric-IndicationMessageFormat-Type RIC-Format-Type,
9. ...

67 }

68

69 RIC-Format-Type ::= INTEGER

70

71 RIC-Style-Type ::= INTEGER

72

73 RIC-Style-Name ::= PrintableString(SIZE(1..150,...))

74

75

1. -- S
2. -- T
3. -- U
4. -- V
5. -- W
6. -- X
7. -- Y
8. -- Z

7

1. END
2. -- ASN1STOP

10

11

## 8.5 Message transfer syntax

1. E2SM shall use the ASN.1 Basic Packed Encoding Rules (BASIC-PER) Aligned Variant as transfer syntax, as specified
2. in ITU-T Rec. X.691 [7].

15

16

# 17 9 Handling of Unknown, Unforeseen and Erroneous

18 Protocol Data

19 Section 10 of TS 36.413 [10] is applicable for the purposes of the present document. 20

21

22

# 23 Annex A: Further information on RAN Function Network

24 Interface

## A.1 Background information

1. The RAN function "Network Interface" is used to provide RIC Service expose of the network interface logical function
2. of the E2 Node.
3. It is assumed that the network interfaces are terminated on one of more logical functions with the E2 Node. For each
4. logical function the E2 Node shall use the RAN Function Description to declare the list of supported Network Interfaces
5. and the corresponding set of supported RIC Services (**REPORT**, **INSERT**, **CONTROL** and **POLICY**) and for each
6. supported RIC Service the list of supported Styles.
7. Each Network Interface is uniquely identified by:
8. - Network Interface Type defined by reference to the name of the interface specification (S1, F1, etc.)
9. - Network Interface Identifier defined by the Global identifier of the network node terminating the network
10. interface
11. Furthermore, it is assumed that a given network interface id bidirectional and so has an incoming direction terminated
12. by the E2 Node and an outgoing direction originated by the E2 Node.
13. Messages on the network interface are assumed to be encoded in terms of Message Types and each message is assumed
14. to contain one or more Protocol Information Elements (IE) each of which may de identified by the unique Protocol IE
15. Identifier as defined in the corresponding network interface specification.
16. Event triggers, Indication and Control procedure message contents and Policy Action Definitions are encoded in terms
17. of the corresponding network interface specification.

## A.2 X2 Network Interface

1. The RAN function "Network Interface" on an E2 Node of type eNB, gNB, gNB-CU and gNB-CU-CP may be used to
2. expose the X2AP (X2c) interface.
3. Editor's note:
4. List here the specific use cases with corresponding messages and actions that may be exposed for the X2
5. interface.

### A.2.1 Message Admission policy handling

|  |  |  |
| --- | --- | --- |
| **Use Case** | **RIC Service** | **Semantics description** |
| EN-DC Admission Control | E2 POLICY Style 1  on E2 Node of type en-gNB | Event Trigger Definition type 1 = Incoming X2 SgNB Addition Request from eNB  RAN UE Group Definition = AND combination of sequence of RAN Parameter tests  RAN Imperative Policy = Sequence of RAN parameters used to enhance RAN admission algorithm  Negative outcome results in EN-DC SgNB Addition Rejection message sent to eNB and incoming message dropped. |
|  |  |  |

8

9

# 1 Annex ZZZ : O-RAN Adopter License Agreement

1. BY DOWNLOADING, USING OR OTHERWISE ACCESSING ANY O-RAN SPECIFICATION, ADOPTER
2. AGREES TO THE TERMS OF THIS AGREEMENT.
3. This O-RAN Adopter License Agreement (the "Agreement") is made by and between the O-RAN Alliance and the
4. entity that downloads, uses or otherwise accesses any O-RAN Specification, including its Affiliates (the "Adopter").
5. This is a license agreement for entities who wish to adopt any O-RAN Specification.

## Section 1: DEFINITIONS

1. 1.1 "Affiliate" means an entity that directly or indirectly controls, is controlled by, or is under common control with
2. another entity, so long as such control exists. For the purpose of this Section, "Control" means beneficial ownership of
3. fifty (50%) percent or more of the voting stock or equity in an entity.
4. 1.2 "Compliant Implementation" means any system, device, method or operation (whether implemented in hardware,
5. software or combinations thereof) that fully conforms to a Final Specification.
6. 1.3 "Adopter(s)" means all entities, who are not Members, Contributors or Academic Contributors, including their
7. Affiliates, who wish to download, use or otherwise access O-RAN Specifications.
8. 1.4 "Minor Update" means an update or revision to an O-RAN Specification published by O-RAN Alliance that does
9. not add any significant new features or functionality and remains interoperable with the prior version of an O-RAN
10. Specification. The term "O-RAN Specifications" includes Minor Updates.
11. 1.5 "Necessary Claims" means those claims of all present and future patents and patent applications, other than design
12. patents and design registrations, throughout the world, which (i) are owned or otherwise licensable by a Member,
13. Contributor or Academic Contributor during the term of its Member, Contributor or Academic Contributorship; (ii)
14. such Member, Contributor or Academic Contributor has the right to grant a license without the payment of
15. consideration to a third party; and (iii) are necessarily infringed by a Compliant Implementation (without considering
16. any Contributions not included in the Final Specification). A claim is necessarily infringed only when it is not possible
17. on technical (but not commercial) grounds, taking into account normal technical practice and the state of the art
18. generally available at the date any Final Specification was published by the O-RAN Alliance or the date the patent
19. claim first came into existence, whichever last occurred, to make, sell, lease, otherwise dispose of, repair, use or operate
20. a Compliant Implementation without infringing that claim. For the avoidance of doubt in exceptional cases where a
21. Final Specification can only be implemented by technical solutions, all of which infringe patent claims, all such patent
22. claims shall be considered Necessary Claims.
23. 1.6 "Defensive Suspension" means for the purposes of any license grant pursuant to Section 3, Member, Contributor,
24. Academic Contributor, Adopter, or any of their Affiliates, may have the discretion to include in their license a term
25. allowing the licensor to suspend the license against a licensee who brings a patent infringement suit against the
26. licensing Member, Contributor, Academic Contributor, Adopter, or any of their Affiliates.

## Section 2: COPYRIGHT LICENSE

1. 2.1 Subject to the terms and conditions of this Agreement, O-RAN Alliance hereby grants to Adopter a nonexclusive,
2. nontransferable, irrevocable, non-sublicensable, worldwide copyright license to obtain, use and modify O-RAN
3. Specifications, but not to further distribute such O-RAN Specification in any modified or unmodified way, solely in
4. furtherance of implementations of an O-RAN
5. Specification.
6. 2.2 Adopter shall not use O-RAN Specifications except as expressly set forth in this Agreement or in a separate written
7. agreement with O-RAN Alliance.

## Section 3: FRAND LICENSE

1. 3.1 Members, Contributors and Academic Contributors and their Affiliates are prepared to grant based on a separate
2. Patent License Agreement to each Adopter under Fair Reasonable And Non- Discriminatory (FRAND) terms and
3. conditions with or without compensation (royalties) a nonexclusive, non-transferable, irrevocable (but subject to
4. Defensive Suspension), non-sublicensable, worldwide patent license under their Necessary Claims to make, have made,
5. use, import, offer to sell, lease, sell and otherwise distribute Compliant Implementations; provided, however, that such
6. license shall not extend: (a) to any part or function of a product in which a Compliant Implementation is incorporated
7. that is not itself part of the Compliant Implementation; or (b) to any Adopter if that Adopter is not making a reciprocal
8. grant to Members, Contributors and Academic Contributors, as set forth in Section 3.3. For the avoidance of doubt, the
9. foregoing licensing commitment includes the distribution by the Adopter's distributors and the use by the Adopter's
10. customers of such licensed Compliant Implementations.
11. 3.2 Notwithstanding the above, if any Member, Contributor or Academic Contributor, Adopter or their Affiliates has
12. reserved the right to charge a FRAND royalty or other fee for its license of Necessary Claims to Adopter, then Adopter
13. is entitled to charge a FRAND royalty or other fee to such Member, Contributor or Academic Contributor, Adopter and
14. its Affiliates for its license of Necessary Claims to its licensees.
15. 3.3 Adopter, on behalf of itself and its Affiliates, shall be prepared to grant based on a separate Patent License
16. Agreement to each Members, Contributors, Academic Contributors, Adopters and their Affiliates under Fair
17. Reasonable And Non-Discriminatory (FRAND) terms and conditions with or without compensation (royalties) a
18. nonexclusive, non-transferable, irrevocable (but subject to Defensive Suspension), non-sublicensable, worldwide patent
19. license under their Necessary Claims to make, have made, use, import, offer to sell, lease, sell and otherwise distribute
20. Compliant Implementations; provided, however, that such license will not extend: (a) to any part or function of a
21. product in which a Compliant Implementation is incorporated that is not itself part of the Compliant Implementation; or
22. (b) to any Members, Contributors, Academic Contributors, Adopters and their Affiliates that is not making a reciprocal
23. grant to Adopter, as set forth in Section 3.1. For the avoidance of doubt, the foregoing licensing commitment includes
24. the distribution by the Members', Contributors', Academic Contributors', Adopters' and their Affiliates' distributors
25. and the use by the Members', Contributors', Academic Contributors', Adopters' and their Affiliates' customers of such
26. licensed Compliant Implementations.

## Section 4: TERM AND TERMINATION

1. 4.1 This Agreement shall remain in force, unless early terminated according to this Section 4.
2. 4.2 O-RAN Alliance on behalf of its Members, Contributors and Academic Contributors may terminate this Agreement
3. if Adopter materially breaches this Agreement and does not cure or is not capable of curing such breach within thirty
4. (30) days after being given notice specifying the breach.
5. 4.3 Sections 1, 3, 5 - 11 of this Agreement shall survive any termination of this Agreement. Under surviving Section 3,
6. after termination of this Agreement, Adopter will continue to grant licenses (a) to entities who become Adopters after
7. the date of termination; and (b) for future versions of O-RAN Specifications that are backwards compatible with the
8. version that was current as of the date of termination.

## Section 5: CONFIDENTIALITY

1. Adopter will use the same care and discretion to avoid disclosure, publication, and dissemination of O-RAN
2. Specifications to third parties, as Adopter employs with its own confidential information, but no less than reasonable
3. care. Any disclosure by Adopter to its Affiliates, contractors and consultants should be subject to an obligation of
4. confidentiality at least as restrictive as those contained in this Section. The foregoing obligation shall not apply to any
5. information which is: (1) rightfully known by Adopter without any limitation on use or disclosure prior to disclosure;
6. (2) publicly available through no fault of Adopter; (3) rightfully received without a duty of confidentiality; (4) disclosed
7. by O-RAN Alliance or a Member, Contributor or Academic Contributor to a third party without a duty of
8. confidentiality on such third party; (5) independently developed by Adopter; (6) disclosed pursuant to the order of a
9. court or other authorized governmental body, or as required by law, provided that Adopter provides reasonable prior
10. written notice to O-RAN Alliance, and cooperates with O-RAN Alliance and/or the applicable Member, Contributor or
11. Academic Contributor to have the opportunity to oppose any such order; or (7) disclosed by Adopter with O-RAN
12. Alliance's prior written approval.

## Section 6: INDEMNIFICATION

1. Adopter shall indemnify, defend, and hold harmless the O-RAN Alliance, its Members, Contributors or Academic
2. Contributors, and their employees, and agents and their respective successors, heirs and assigns (the "Indemnitees"),
3. against any liability, damage, loss, or expense (including reasonable attorneys' fees and expenses) incurred by or
4. imposed upon any of the Indemnitees in connection with any claims, suits, investigations, actions, demands or
5. judgments arising out of Adopter's use of the licensed O-RAN Specifications or Adopter's commercialization of
6. products that comply with O-RAN Specifications.

## Section 7: LIMITATIONS ON LIABILITY; NO WARRANTY

1. EXCEPT FOR BREACH OF CONFIDENTIALITY, ADOPTER'S BREACH OF SECTION 3, AND ADOPTER'S
2. INDEMNIFICATION OBLIGATIONS, IN NO EVENT SHALL ANY PARTY BE LIABLE TO ANY OTHER
3. PARTY OR THIRD PARTY FOR ANY INDIRECT, SPECIAL, INCIDENTAL, PUNITIVE OR CONSEQUENTIAL
4. DAMAGES RESULTING FROM ITS PERFORMANCE OR NON-PERFORMANCE UNDER THIS AGREEMENT,
5. IN EACH CASE WHETHER UNDER CONTRACT, TORT, WARRANTY, OR OTHERWISE, AND WHETHER OR
6. NOT SUCH PARTY HAD ADVANCE NOTICE OF THE POSSIBILITY OF SUCH DAMAGES. O-RAN
7. SPECIFICATIONS ARE PROVIDED "AS IS" WITH NO WARRANTIES OR CONDITIONS WHATSOEVER,
8. WHETHER EXPRESS, IMPLIED, STATUTORY, OR OTHERWISE. THE O-RAN ALLIANCE AND THE
9. MEMBERS, CONTRIBUTORS OR ACADEMIC CONTRIBUTORS EXPRESSLY DISCLAIM ANY WARRANTY
10. OR CONDITION OF MERCHANTABILITY, SECURITY, SATISFACTORY QUALITY, NONINFRINGEMENT,
11. FITNESS FOR ANY PARTICULAR PURPOSE, ERROR-FREE OPERATION, OR ANY WARRANTY OR
12. CONDITION FOR O-RAN SPECIFICATIONS.

## Section 8: ASSIGNMENT

1. Adopter may not assign the Agreement or any of its rights or obligations under this Agreement or make any grants or
2. other sublicenses to this Agreement, except as expressly authorized hereunder, without having first received the prior,
3. written consent of the O-RAN Alliance, which consent may be withheld in O-RAN Alliance's sole discretion. O-RAN
4. Alliance may freely assign this Agreement.

## Section 9: THIRD-PARTY BENEFICIARY RIGHTS

1. Adopter acknowledges and agrees that Members, Contributors and Academic Contributors (including future Members,
2. Contributors and Academic Contributors) are entitled to rights as a third-party beneficiary under this Agreement,
3. including as licensees under Section 3.

## Section 10: BINDING ON AFFILIATES

1. Execution of this Agreement by Adopter in its capacity as a legal entity or association constitutes that legal entity's or
2. association's agreement that its Affiliates are likewise bound to the obligations that are applicable to Adopter hereunder
3. and are also entitled to the benefits of the rights of Adopter hereunder.

## Section 11: GENERAL

1. This Agreement is governed by the laws of Germany without regard to its conflict or choice of law provisions.
2. This Agreement constitutes the entire agreement between the parties as to its express subject matter and expressly
3. supersedes and replaces any prior or contemporaneous agreements between the parties, whether written or oral, relating
4. to the subject matter of this Agreement.
5. Adopter, on behalf of itself and its Affiliates, agrees to comply at all times with all applicable laws, rules and
6. regulations with respect to its and its Affiliates' performance under this Agreement, including without limitation, export
7. control and antitrust laws. Without limiting the generality of the foregoing, Adopter acknowledges that this Agreement
8. prohibits any communication that would violate the antitrust laws.
9. By execution hereof, no form of any partnership, joint venture or other special relationship is created between Adopter,
10. or O-RAN Alliance or its Members, Contributors or Academic Contributors. Except as expressly set forth in this
11. Agreement, no party is authorized to make any commitment on behalf of Adopter, or O-RAN Alliance or its Members,
12. Contributors or Academic Contributors.
13. In the event that any provision of this Agreement conflicts with governing law or if any provision is held to be null,
14. void or otherwise ineffective or invalid by a court of competent jurisdiction, (i) such provisions will be deemed stricken
15. from the contract, and (ii) the remaining terms, provisions, covenants and restrictions of this Agreement will remain in
16. full force and effect.
17. Any failure by a party or third party beneficiary to insist upon or enforce performance by another party of any of the
18. provisions of this Agreement or to exercise any rights or remedies under this Agreement or otherwise by law shall not
19. be construed as a waiver or relinquishment to any extent of the other parties' or third party beneficiary's right to assert
20. or rely upon any such provision, right or remedy in that or any other instance; rather the same shall be and remain in full
21. force and effect. 49
---

- View in [Reader Mode](https://simewu.com/spec-reader/pages/10-WG3/O-RAN-WG3.E2SM-NI-v01.00.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN-WG3.E2SM-NI-v01.00.docx).
