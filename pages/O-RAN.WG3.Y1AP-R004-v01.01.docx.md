## O-RAN.WG3.Y1AP-R004-v01.01.docx

- View in [Reader Mode](https://simewu.com/spec-reader/pages/10-WG3/O-RAN.WG3.Y1AP-R004-v01.01.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG3.Y1AP-R004-v01.01.docx).

---

|  |
| --- |
| ![webwxgetmsgimg (7).jpeg](../assets/images/bea03973c631.jpg) |

|  |
| --- |
| Technical Specification |
|  |

|  |  |
| --- | --- |
| O-RAN Work Group 3 (Near-Real-time RAN Intelligent Controller and E2 Interface)  Y1 interface: Application Protocol |  |

|  |
| --- |
|  |
| Copyright (C) 2024 by the O-RAN ALLIANCE e.V.  The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.  O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany  Register of Associations, Bonn VR 11238, VAT ID DE321720189 |

Contents

Foreword 5

Modal verbs terminology 5

1 Scope 6

2 References 6

2.1 Normative references 6

2.2 Informative references 6

3 Definition of terms, symbols and abbreviations 7

3.1 Terms 7

3.2 Symbols 7

3.3 Abbreviations 7

4 General 7

4.1 Introduction 7

4.2 Versioning of Y1 service APIs 7

4.2.1 General rules for API version 7

4.2.2 Versioning for multiple solution sets of a Y1 service API 7

4.2.3 Versioning for certain data types 8

5 Usage of solution sets 8

5.1 Introduction 8

5.2 Usage of HTTP REST with JSON 8

5.2.1 General 8

5.2.2 Content type 8

5.2.3 URI structure 8

5.2.3.1 Resource URI structure 8

5.2.4 HTTP headers 9

5.2.4.1 General 9

5.2.5 Error handling 9

5.2.5.1 General 9

6 API Definitions 9

6.1 Introduction 9

6.2 Y1\_RAI\_Subscription API 9

6.2.1 Introduction 9

6.2.2 HTTP REST with JSON solution set 10

6.2.2.1 Service operations 10

6.2.2.1.1 Introduction 10

6.2.2.1.2 RAI\_Subscribe service operation 10

6.2.2.1.2.1 General 10

6.2.2.1.2.2 Subscribe to RAI notifications 10

6.2.2.1.2.3 Update subscription for RAI notifications 11

6.2.2.1.3 RAI\_Unsubscribe service operation 12

6.2.2.1.3.1 General 12

6.2.2.1.3.2 Unsubscribe from RAI notifications 12

6.2.2.1.4 RAI\_Notify service operation 13

6.2.2.1.4.1 General 13

6.2.2.1.4.2 Notify subscribed RAI or termination of subscription 13

6.2.2.2 Resources 14

6.2.2.2.1 Resource URI structure 14

6.2.2.2.2 Resource: All Y1 RAI Subscriptions 15

6.2.2.2.2.1 Description 15

6.2.2.2.2.2 Resource Definition 15

6.2.2.2.2.3 Resource Standard Methods 15

6.2.2.2.2.3.1 HTTP POST 15

6.2.2.2.2.4 Resource Custom Operations 16

6.2.2.2.3 Resource: Individual Y1 RAI Subscription 16

6.2.2.2.3.1 Description 16

6.2.2.2.3.2 Resource definition 16

6.2.2.2.3.3 Resource Standard Methods 16

6.2.2.2.3.3.1 HTTP DELETE 16

6.2.2.2.3.3.2 HTTP PUT 17

6.2.2.2.3.4 Resource Custom Operations 17

6.2.2.3 Custom operations without associated resources 18

6.2.2.4 Notifications 18

6.2.2.4.1 General 18

6.2.2.4.2 RAI Notification 18

6.2.2.4.2.1 Description 18

6.2.2.4.2.2 Operation Definition 18

6.2.2.5 Data model 18

6.2.2.5.1 General 18

6.2.2.5.2 Structured data types 19

6.2.2.5.2.1 Introduction 19

6.2.2.5.2.2 Type RaiSubscription 20

6.2.2.5.2.3 Type NotificationCriteria 21

6.2.2.5.2.4 Type RaiNotification 21

6.2.2.5.2.5 Type RaiReport 22

6.2.2.5.2.6 Type ValidityPeriodRelative 22

6.2.2.5.2.7 Type ValidityPeriod 22

6.2.2.5.3 Simple data types and enumerations 23

6.2.2.5.3.1 Introduction 23

6.2.2.5.3.2 Simple data types 23

6.2.2.5.3.3 Enumeration: NotificationMethod 23

6.2.2.5.3.4 Enumeration: TerminationCause 23

6.2.2.6 Error handling 23

6.2.2.6.1 General 23

6.2.2.6.2 Protocol Errors 23

6.2.2.6.3 Application Errors 23

6.3 Y1\_RAI\_Query service API 24

6.3.1 Introduction 24

6.3.2 HTTP REST with JSON solution set 24

6.3.2.1 Service operations 24

6.3.2.1.1 Introduction 24

6.3.2.1.2 RAI\_Query service operation 24

6.3.2.1.2.1 General 24

6.3.2.1.2.2 Query RAI 24

6.3.2.2 Resources 26

6.3.2.2.1 Resource URI structure 26

6.3.2.2.2 Resource: Y1 RAI 26

6.3.2.2.2.1 Description 26

6.3.2.2.2.2 Resource Definition 26

6.3.2.2.2.3 Resource Standard Methods 26

6.3.2.2.2.3.1 HTTP GET 26

6.3.2.3 Custom operations without associated resources 27

6.3.2.4 Notifications 27

6.3.2.5 Data model 27

6.3.2.5.1 General 27

6.3.2.5.2 Structured data types 28

6.3.2.5.2.1 Introduction 28

6.3.2.5.2.2 Type RaiQueryResult 28

6.3.2.5.3 Simple data types and enumerations 28

6.3.2.5.3.1 Introduction 28

6.3.2.5.3.2 Simple data types 28

6.3.2.6 Error handling 29

6.3.2.6.1 General 29

6.3.2.6.2 Protocol Errors 29

6.3.2.6.3 Application Errors 29

Annex A (normative): OpenAPI specification 30

A.1 General 30

A.2 Y1\_RAI\_Subscription API 30

A.3 Y1\_RAI\_Query API 37

Annex (informative): Change History 43

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

The present document specifies the stage3 definition of the application protocols of the Y1 services.

# 2 References

## 2.1 Normative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE 1: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

NOTE 2: In the case of a reference to a 3GPP document (including a GSM document), a non-specific reference implicitly refers to the latest version of that document in 3GPP Release 17.

The following referenced documents are necessary for the application of the present document.

[1] O-RAN.WG3.Y1GAP, "Y1 interface: General Aspects and Principles".

[2] O-RAN.WG3.Y1TD, "Y1 interface: Type Definitions".

[3] OpenAPI, "OpenAPI 3.1.0 Specification", <https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md>.

[4] IETF RFC 8259: "The JavaScript Object Notation (JSON) Data Interchange Format".

[5] IETF RFC 7807: "Problem Details for HTTP APIs".

[6] IETF RFC 3986: "Uniform Resource Identifier (URI): Generic Syntax".

[7] 3GPP TS 29.122: "T8 reference point for Northbound APIs".

[8] 3GPP TS 29.571: "5G System; Common Data Types for Service Based Interfaces; Stage 3".

[9] O-RAN.WG1.OAD, "O-RAN Architecture Description".

## 2.2 Informative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE 1: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

NOTE 2: In the case of a reference to a 3GPP document (including a GSM document), a non-specific reference implicitly refers to the latest version of that document in 3GPP Release 17.

The following referenced documents are not necessary for the application of the present document, but they assist the user with regard to a particular subject area.

[i.1] 3GPP TR 21.905: "Vocabulary for 3GPP Specifications"

[i.2] Semantic Versioning Specification. Available at <https://semver.org>.

# 3 Definition of terms, symbols and abbreviations

## 3.1 Terms

For the purposes of the present document, the terms given in 3GPP TR 21.905 [i.1] and O-RAN.WG1.OAD [9] apply.=

## 3.2 Symbols

For the purposes of the present document, the symbols given in 3GPP TR 21.905 [i.1] and O-RAN.WG1.OAD [9] apply.

## 3.3 Abbreviations

For the purposes of the present document, the abbreviations given in 3GPP TR 21.905 [i.1], O-RAN.WG1.OAD [9] and the following apply:

AS Application Server

RAI RAN Analytics Information

SCEF Service Capability Exposure Function

SCS Services Capability Server

# 4 General

## 4.1 Introduction

The present document contains the stage-3 definitions for the services identified in Y1GAP [1]. Certain data types, including but not limited to RAI data types are defined in Y1TD [2].

One or more solution sets in terms of network protocol and data interchange format may be defined for each Y1 service API. The use of a specific solution set for a Y1 service API may be preconfigured or selected via negotiation mechanisms between the Near-RT RIC and the Y1 consumer.

## 4.2 Versioning of Y1 service APIs

### 4.2.1 General rules for API version

Each Y1 service API is versioned independently. An API version shall consist of at least 3 fields, following a MAJOR.MINOR.PATCH pattern according to the Semantic Versioning Specification [i.2] unless specified otherwise.

EXAMPLE: "1.0.0".

The basic rules as reproduced from [i.2] shall apply for incrementing the versions:

- MAJOR version is incremented if backward incompatible change is made.

- MINOR version is incremented if functional change is made in a backward compatible way.

- PATCH version is incremented if correction is made in a backward compatible way.

### 4.2.2 Versioning for multiple solution sets of a Y1 service API

For a single Y1 service API in the present document, a single version should be kept across all the solution sets defined for that API. That means the different solution sets for a Y1 service API should evolve simultaneously.

### 4.2.3 Versioning for certain data types

The Y1 service APIs are designed in the approach that certain data types are decoupled from the APIs, and such data types may have versions independent from the API version. To that end, the full compatibility for a given solution set of a single Y1 service API between Near-RT RIC and Y1 consumer is jointly governed by the API version and the relevant data type version(s).

# 5 Usage of solution sets

## 5.1 Introduction

For each solution set, the generic designs are defined in this clause.

The solution sets that may be used for a Y1 service API are listed in Table 5.1-1.

Table 5.1-1: Solution sets for Y1 interface

|  |  |
| --- | --- |
| Solution Set | Clause |
| Solution 1: HTTP REST with JSON | 5.2 |

## 5.2 Usage of HTTP REST with JSON

### 5.2.1 General

The solution set of HTTP REST with JSON is introduced in clause 7.2 of Y1GAP [1].

The OpenAPI [3] specifications for each Y1 service API with this solution set are documented in Annex A.

### 5.2.2 Content type

The bodies of HTTP request and successful HTTP responses shall be encoded in JSON format. The MIME media type that shall be used within the related Content-Type header field is "application/json", as defined in IETF RFC 8259 [4], unless specified otherwise.

The "Problem Details" JSON object used to indicate additional details of the error in a HTTP response body shall be signaled by the content type "application/problem+json", as defined in IETF RFC 7807 [5].

### 5.2.3 URI structure

#### 5.2.3.1 Resource URI structure

The resource URIs of all Y1 service APIs, unless specified otherwise, shall be structured as:

**{apiRoot}/<apiName>/<apiMajorVersion>/<apiSpecificResourceUriPart>**

with the following components:

- The {apiRoot} indicates the scheme, the host name and optional port, and an optional implementation-specific sequence of path segments (starting with "/").

- The <apiName> indicates the API name of the service API in an abbreviated form. It is defined in the clause specifying the corresponding Y1 service API.

- The <apiMajorVersion> indicates the major version of the service API (see clause 4.2.1) and is defined in the clause specifying the corresponding Y1 service API.

- Each <apiSpecificResourceUriPart> represents a specific resource of the service API. It is defined in the clause specifying the corresponding Y1 service API.

All resource URIs of the service APIs shall comply with the URI syntax as defined in IETF RFC 3986 [6].

### 5.2.4 HTTP headers

#### 5.2.4.1 General

The HTTP headers used in [7] shall be supported by all Y1 service APIs with the solution set "HTTP REST with JSON" in the present document, unless specified otherwise.

### 5.2.5 Error handling

#### 5.2.5.1 General

Unless specified otherwise, the HTTP error handling mechanism described in clause 5.2.6 of [7] shall be supported by all Y1 service APIs with the solution set "HTTP REST with JSON" in the present document, with the following replacements:

- the SCEF is replaced by the Near-RT RIC; and

- the SCS/AS is replaced by the Y1 consumer.

# 6 API Definitions

## 6.1 Introduction

The Y1 service APIs defined in the present document are listed in Table 6.1-1.

Table 6.1-1: List of Y1 Service APIs

| Y1 service API | Clause | API version | Supported solution sets |
| --- | --- | --- | --- |
| Y1\_RAI\_Subscription | 6.2 | 1.0.0 | HTTP REST with JSON |
| Y1\_RAI\_Query | 6.3 | 1.0.0 | HTTP REST with JSON |

## 6.2 Y1\_RAI\_Subscription API

### 6.2.1 Introduction

The Y1\_RAI\_ Subscription API is used to access the Y1\_RAI\_Subscription service.

The service operations and corresponding API definitions are organized in the following clauses for different solution sets.

### 6.2.2 HTTP REST with JSON solution set

#### 6.2.2.1 Service operations

##### 6.2.2.1.1 Introduction

Table 6.2.2.1.1-1 lists the operations supported by the Y1\_RAI\_Subscription service for the solution set "HTTP REST with JSON".

Table 6.2.2.2.1-1: Operations of the Y1\_RAI\_Subscription service

| Service operation name | Description | Initiated by |
| --- | --- | --- |
| RAI\_Subscribe | This service operation is used by a Y1 consumer to subscribe or update subscription for RAI notifications.  Periodic or event-triggered notification can be subscribed. | Y1 consumer |
| RAI\_Unsubscribe | This service operation is used by a Y1 consumer to unsubscribe from RAI notifications. | Y1 consumer |
| RAI\_Notify | This service operation is used by a Near-RT RIC to notify Y1 consumes about subscribed RAI. | Near-RT RIC |

##### 6.2.2.1.2 RAI\_Subscribe service operation

###### 6.2.2.1.2.1 General

The RAI\_Subscribe service operation is used by a Y1 consumer to create or update a subscription for RAI notifications from the Near-RT RIC.

###### 6.2.2.1.2.2 Subscribe to RAI notifications

Figure 6.2.2.1.2.2-1 shows a scenario where the Y1 consumer sends a request to the Near-RT RIC to create a subscription to RAI notifications. The operation is based on HTTP POST.

@startuml

participant "Y1 consumer" as cons

participant "Near-RT RIC" as prod

cons ->> prod: 1. POST .../subscriptions

prod ->> cons: 2. 201 Created

@enduml

![](../assets/images/b3a27265313e.png)

Figure 6.2.2.1.2.2-1: Y1 consumer subscribes to notifications

The Y1 consumer shall send an HTTP POST request to the Near-RT RIC with the Resource URL "{apiRoot}/Y1\_RAI\_Subscription/<apiMajorVersion>/subscriptions" representing the "All Y1 RAI Subscriptions" resource, to create an "Individual Y1 RAI Subscription" resource according to the information in the message.

NOTE: The path segment " Y1\_RAI\_Subscription" does not follow the related naming convention specified in clause 5.2.4.1 of [7]. The path segment is however kept as currently defined in this specification for backward compatibility considerations.

The "RaiSubscription" data structure provided in the request body shall include:

- the type of RAI as the "raiType" attribute;

- the version of the RAI type as the "raiTypeVersion" attribute;

- the target entity/entities of the RAI in the "targetEntities" attribute;

- an URI where to receive the RAI notifications as the "notificationTargetAddress" attribute;

- the timing or the events when the RAI notifications are triggered in the "notificationCriteria" attribute, which shall include:

- the method used to trigger RAI notifications as the "notificationMethod" attribute;

- the time interval between periodic RAI notifications as the "notificationPeriod" attribute, if the "notificationMethod" attribute is set to "PERIODIC";

- the trigger event that triggers RAI notifications in the "notificationTriggerEvent" attribute, if the "notificationMethod" attribute is set to "EVENT\_TRIGGERED";

and may include:

- the expected time of the first RAI notification as the "notificationStartTime" attribute, if the "notificationMethod" attribute is set to "PERIODIC".

The "RaiSubscription" data structure provided in the request body may include:

- the expected validity period(s) for the RAI in the "expectedValidityPeriodsRelative" attribute; an expected validity period before the occurrence of a RAI notification refers to statistics for a past time, and an expected validity period after the occurrence of a RAI notification refers to a prediction for a future time.

- the filter parameters to filter RAI contents in the RAI report as the "filterParameters" attribute;

Upon the reception of the HTTP POST request, the Near-RT RIC shall create the subscription according to the request, assign a unique subscription ID as "subscriptionId", and store the record.

If the Near-RT RIC successfully creates an "Individual Y1 RAI Subscription" resource, the Near-RT RIC shall respond with "201 Created" status code, with the message body containing a representation of the created subscription. The response shall include a "Location" HTTP header field which contains the URI of the created subscription, i.e., "{apiRoot}/Y1\_RAI\_Subscription/<apiMajorVersion>/subscriptions/{subscriptionId}".

If an error occurs when processing the HTTP POST request, the Near-RT RIC shall send an HTTP error response as specified in clause 6.2.2.6. In particular,

- If the necessary data to perform the analysis are unavailable, the Near-RT RIC shall reject the request with a "500 Internal Server Error" status code and a "ProblemDetails" data structure including the "cause" attribute set to "DATA\_UNAVAILABLE".

###### 6.2.2.1.2.3 Update subscription for RAI notifications

Figure 6.2.2.1.2.3-1 shows a scenario where the Y1 consumer sends a request to the Near-RT RIC to update a subscription to RAI notifications. The operation is based on HTTP PUT.

@startuml

participant "Y1 consumer" as cons

participant "Near-RT RIC" as prod

cons ->> prod: 1. PUT .../subscriptions/{subscriptionId}

prod ->> cons: 2a. "200 OK" or 2b. "204 No Content"

@enduml

![](../assets/images/18a1f4f041f7.png)

Figure 6.2.2.1.2.3-1: Y1 consumer updates subscription to notifications

The Y1 consumer shall send an HTTP PUT request to the Near-RT RIC with the Resource URL "{apiRoot}/Y1\_RAI\_Subscription/<apiMajorVersion>/subscriptions/{subscriptionId}" representing the "Individual Y1 RAI Subscription" resource, to update that resource identified by the "subscriptionId" field.

The "RaiSubscription" data structure provided in the request body shall include the same contents as described in clause 6.2.2.1.2.2.

Upon the reception of the HTTP PUT request, the Near-RT RIC shall update the subscription according to the request, and store the record.

If the Near-RT RIC successfully updates the "Individual Y1 RAI Subscription" resource, the Near-RT RIC shall respond with:

- a "200 OK" status code with the message body containing a representation of the updated subscription; or,

- a "204 No Content" status code.

If an error occurs when processing the HTTP PUT request, the Near-RT RIC shall send an HTTP error response as specified in clause 6.2.2.6. In particular,

- If the necessary data to perform the analysis are unavailable, the Near-RT RIC shall reject the request with a "500 Internal Server Error" status code and a "ProblemDetails" data structure including the "cause" attribute set to "DATA\_UNAVAILABLE".

##### 6.2.2.1.3 RAI\_Unsubscribe service operation

###### 6.2.2.1.3.1 General

The RAI\_Unsubscribe service operation is used by an Y1 consumer to delete a subscription for RAI notifications.

###### 6.2.2.1.3.2 Unsubscribe from RAI notifications

Figure 6.2.2.1.3.2-1 shows a scenario where the Y1 consumer sends a request to the Near-RT RIC to unsubscribe from RAI notifications. The operation is based on HTTP DELETE.

@startuml

participant "Y1 consumer" as cons

participant "Near-RT RIC" as prod

cons ->> prod: 1. DELETE .../subscriptions/{subscriptionId}

prod ->> cons: 2. 204 No Content

@enduml

![](../assets/images/0cf125032559.png)

Figure 6.2.2.1.3.2-1: Y1 consumer unsubscribes from notifications

The Y1 consumer shall send an HTTP DELETE request to the Near-RT RIC with the resource URI "{apiRoot}/ Y1\_RAI\_Subscription/<apiMajorVersion>/subscriptions/{subscriptionId}" representing the "Individual Y1 RAI Subscription" resource, to delete that resource identified by the "subscriptionId" field.

The message body shall be empty.

Upon the reception of the HTTP DELETE request, the Near-RT RIC shall remove the "Individual Y1 RAI Subscription" resource according to the request.

If the Near-RT RIC successfully removes the "Individual Y1 RAI Subscription" resource, the Near-RT RIC shall respond with "204 No Content" status code.

If an error occurs when processing the HTTP DELETE request, the Near-RT RIC shall send an HTTP error response as specified in clause 6.2.2.6.

##### 6.2.2.1.4 RAI\_Notify service operation

###### 6.2.2.1.4.1 General

The RAI\_Notify service operation is used by the Near-RT RIC to send RAI notifications to the Y1 consumer, or to terminate the subscription.

###### 6.2.2.1.4.2 Notify subscribed RAI or termination of subscription

Figure 6.2.2.1.4.2-1 shows a scenario where the Near-RT RIC sends a request to the Y1 Consumer to send RAI notifications or to terminate the subscription. The operation is based on HTTP POST.

@startuml

participant "Y1 consumer" as prod

participant "Near-RT RIC" as cons

cons ->> prod: 1. POST{notificationTargetAddress}

prod ->> cons: 2. "204 No Content"

@enduml

![](../assets/images/c394d53d3cef.png)

Figure 6.2.2.1.4.2-1: Y1 consumer notifies the subscribed event

The Near-RT RIC shall send an HTTP POST request to the Y1 consumer with "{notificationTargetAddress}" as the resource URL.

The request shall be triggered according to the notification criteria as the "notificationCriteria" attribute in the subscription request, or when Near-RT RIC determines to terminate the subscription.

When the request is triggered by the notification criteria, the "RaiNotification" data structure provided in the request body shall include:

- the subscription ID as the "subscriptionId" attribute;

- the RAI reports in the "raiReports" attribute that, for each RAI report, the "RaiReport" data type shall include:

- the target entity of the RAI report as the "targetEntity" attribute;

- the validity period of the RAI report as the "validityPeriod" attribute;

- the actual RAI contents as the "raiContents" attribute;

and may include:

- the confidence of the RAI report, if the RAI report is a prediction;

- the timestamp when Near-RT RIC generates the RAI report as the "timeStampRaiGeneration" attribute.

When the request is to terminate the subscription, the "RaiNotification" data structure provided in the request body shall include:

- the subscription ID as the "subscriptionId" attribute;

- the termination indication as the "raiSubscriptionTerminationIndication" which is set to "TRUE";

and may include:

- the reason for which Near-RT RIC terminates the subscription.

Upon the reception of the HTTP POST request, the Y1 consumer shall process the information in the message.

If the Y1 consumer successfully processes the request, the Y1 consumer shall respond with "204 No Content" status code.

If errors occur when processing the HTTP DELETE request, the Y1 consumer shall send an HTTP error response as specified in clause 6.2.2.6.

#### 6.2.2.2 Resources

##### 6.2.2.2.1 Resource URI structure

The resource URI shall have the structure as defined in clause 5.2.3.1 with the following clarifications:

- The <apiName> shall be "Y1\_RAI\_Subscription".

- The <apiMajorVersion> shall be "v1".

- The <apiSpecificResourceUriPart> shall be set as illustrated in figure 6.2.2.2.1-1.

![](../assets/images/8486adc58d9b.png)

Figure 6.2.2.2.1-1: Resource URI structure of the Y1\_RAI\_Subscription API

Table 6.2.2.2.1-1 provides an overview of the resources and applicable HTTP methods for the Y1\_RAI\_Subscription API.

Table 6.2.2.2.1-1: Resources and methods overview

|  |  |  |  |
| --- | --- | --- | --- |
| Resource name | API specific resource URI part | HTTP method or custom operation | Description |
| All Y1 RAI Subscriptions | /subscriptions | POST | Creates a new Individual Y1 RAI Subscription resource. |
| Individual Y1 RAI Subscription | /subscriptions/{subscriptionId} | DELETE | Deletes an Individual Y1 RAI Subscription resource identified by {subscriptionId}. |
| PUT | Updates an existing Individual Y1 RAI Subscription resource. |

##### 6.2.2.2.2 Resource: All Y1 RAI Subscriptions

###### 6.2.2.2.2.1 Description

The All Y1 RAI Subscriptions resource represents all subscriptions to the Y1\_RAI\_Subscription service at a given Near-RT RIC. The resource allows a Y1 consumer to create a new Individual Y1 RAI Subscription resource.

###### 6.2.2.2.2.2 Resource Definition

Resource URI: **{apiRoot}/Y1\_RAI\_Subscription/v1/subscriptions**

This resource shall support the resource URI variables defined in table 6.2.2.2.2.2.

Table 6.2.2.2.2.2-1: Resource URI variables for this resource

|  |  |  |
| --- | --- | --- |
| Name | Data type | Definition |
| apiRoot | string | See clause 5.2.3.1 |

###### 6.2.2.2.2.3 Resource Standard Methods

6.2.2.2.2.3.1 HTTP POST

This method shall support the URI query parameters specified in table 6.2.2.2.2.3.1-1.

Table 6.2.2.2.2.3.1-1: URI query parameters supported by the POST method on this resource

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Name | Data type | P | Cardinality | Description |
| n/a |  |  |  |  |

This method shall support the request data structures specified in table 6.2.2.2.2.3.1-2 and the response data structures and response codes specified in table 6.2.2.2.2.3.1-3.

Table 6.2.2.2.2.3.1-2: Data structures supported by the POST Request Body on this resource

|  |  |  |  |
| --- | --- | --- | --- |
| Data type | P | Cardinality | Description |
| RaiSubscription | M | 1 | Create a new Individual Y1 RAI Subscription resource. |

Table 6.2.2.2.2.3.1-3: Data structures supported by the POST Response Body on this resource

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Data type | P | Cardinality | Response  codes | Description |
| RaiSubscription | M | 1 | 201 Created | The creation of an Individual Y1 RAI Subscription resource is confirmed and a representation of that resource is returned. |
| ProblemDetails | O | 0..1 | 500 Internal Server Error | (NOTE 2) |
| NOTE 1: The mandatory HTTP error status codes for the POST method used by [7] also apply. See clause 5.2.5.  NOTE 2: Failure cases are described in clause 6.2.2.6. | | | | |

Table 6.2.2.2.2.3.1-4: Headers supported by the 201 Response Code on this resource

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Name | Data type | P | Cardinality | Description |
| Location | string | M | 1 | Contains the URI of the newly created resource, according to the structure: {apiRoot}/Y1\_RAI\_Subscription/v1/subscriptions/{subscriptionId} |

###### 6.2.2.2.2.4 Resource Custom Operations

No custom operations are defined in the present document.

##### 6.2.2.2.3 Resource: Individual Y1 RAI Subscription

###### 6.2.2.2.3.1 Description

The Individual Y1 RAI Subscription resource represents a single subscription to the Y1\_RAI\_Subscription service via Y1 interface.

###### 6.2.2.2.3.2 Resource definition

Resource URI: **{apiRoot}/Y1\_RAI\_Subscription/v1/subscriptions/{subscriptionId}**

This resource shall support the resource URI variables defined in table 6.2.2.2.3.2-1.

Table 6.2.2.2.3.2-1: Resource URI variables for this resource

|  |  |  |
| --- | --- | --- |
| Name | Data type | Definition |
| apiRoot | string | See clause 5.2.3.1 |
| subscriptionId | string | Identifies a subscription to the Y1\_RAI\_Subscription service |

###### 6.2.2.2.3.3 Resource Standard Methods

6.2.2.2.3.3.1 HTTP DELETE

This method shall support the URI query parameters specified in table 6.2.2.2.3.3.1-1.

Table 6.2.2.2.3.3.1-1: URI query parameters supported by the DELETE method on this resource

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Name | Data type | P | Cardinality | Description |
| n/a |  |  |  |  |

This method shall support the request data structures specified in table 6.2.2.2.3.3.1-2 and the response data structures and response codes specified in table 6.2.2.2.3.3.1-3.

Table 6.2.2.2.3.3.1-2: Data structures supported by the DELETE Request Body on this resource

|  |  |  |  |
| --- | --- | --- | --- |
| Data type | P | Cardinality | Description |
| n/a |  |  |  |

Table 6.2.2.2.3.3.1-3: Data structures supported by the DELETE Response Body on this resource

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Data type | P | Cardinality | Response  codes | Description |
| n/a |  |  | 204 No Content | Successful case: The Individual Y1 RAI Subscription resource matching the subscriptionId is deleted. |
| NOTE 1: The mandatory HTTP error status codes for the DELETE method used by [7] also apply. See clause 5.2.5. | | | | |

6.2.2.2.3.3.2 HTTP PUT

This method shall support the URI query parameters specified in table 6.2.2.2.3.3.2-1.

Table 6.2.2.2.3.3.2-1: URI query parameters supported by the PUT method on this resource

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Name | Data type | P | Cardinality | Description |
| n/a |  |  |  |  |

This method shall support the request data structures specified in table 6.2.2.2.3.3.2-2 and the response data structures and response codes specified in table 6.2.2.2.3.3.2-3.

Table 6.2.2.2.3.3.2-2: Data structures supported by the PUT Request Body on this resource

|  |  |  |  |
| --- | --- | --- | --- |
| Data type | P | Cardinality | Description |
| RaiSubscription | M | 1 | Parameters to update an existing Individual Y1 RAI Subscription resource. |

Table 6.2.2.2.3.3.2-3: Data structures supported by the PUT Response Body on this resource

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Data type | P | Cardinality | Response codes | Description |
| RaiSubscription | M | 1 | 200 OK | The Individual Y1 RAI Subscription resource is modified successfully and a representation of that resource is returned. |
| n/a |  |  | 204 No Content | The Individual Y1 RAI Subscription resource is modified successfully. |
| ProblemDetails | O | 0..1 | 500 Internal Server Error | (NOTE 2) |
| NOTE 1: The mandatory HTTP error status codes for the PUT method used by [7] also apply. See clause 5.2.5.  NOTE 2: Failure cases are described in clause 6.2.2.6. | | | | |

###### 6.2.2.2.3.4 Resource Custom Operations

No custom operations are defined in the present document.

#### 6.2.2.3 Custom operations without associated resources

No custom operations are defined in the present document.

#### 6.2.2.4 Notifications

##### 6.2.2.4.1 General

The notifications are summarized in Table 6.2.2.4.1-1.

Table 6.2.2.4.1-1: Notifications overview

|  |  |  |  |
| --- | --- | --- | --- |
| Notification | Callback URI | Mapped HTTP method | Description (service operation) |
| RAI Notification | {notificationTargetAddress} | POST | RAI\_Notify operation. |

##### 6.2.2.4.2 RAI Notification

###### 6.2.2.4.2.1 Description

The RAI Notification is used by the Near-RT RIC to report RAI to a Y1 consumer that has subscribed to such RAI associated with an Individual Y1 RAI Subscription resource, or to notify termination of the RAI subscription.

###### 6.2.2.4.2.2 Operation Definition

Callback URI: **{notificationTargetAddress}**

The operation shall support the URI variables defined in table 6.2.2.4.2.2-1, the request data structures specified in table 6.2.2.4.2.2-2 and the response data structure and response codes specified in table 6.2.2.4.2.2-3.

Table 6.2.2.4.2.2-1: URI variables

|  |  |  |
| --- | --- | --- |
| Name | Data type | Definition |
| notificationTargetAddress | Uri | The Notification URI as assigned within the Individual Y1 RAI Subscription resource and described within the RAISubscription type. |

Table 6.2.2.4.2.2-2: Data structures supported by the POST Request Body on this resource

|  |  |  |  |
| --- | --- | --- | --- |
| Data type | P | Cardinality | Description |
| RaiNotification | M | 1 | Provides RAI or notifies termination of the RAI subscription. |

Table 6.2.2.4.2.2-3: Data structures supported by the POST Response Body on this resource

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Data type | P | Cardinality | Response codes | Description |
| n/a |  |  | 204 No Content | The RAI Notification is acknowledged by the receiver. |
| NOTE: The mandatory HTTP error status codes for the DELETE method used by [7] also apply. See clause 5.2.5. | | | | |

#### 6.2.2.5 Data model

##### 6.2.2.5.1 General

This clause specifies the application data model.

Table 6.2.2.5.1-1 specifies the data types defined for the Y1\_RAI\_Subscription API in this specification.

Table 6.2.2.5.1-1: Y1\_RAI\_Subscription specific data types in this specification

|  |  |  |  |
| --- | --- | --- | --- |
| Data type | Clause | Description | Applicability |
| NotificationCriteria | 6.2.2.5.2.3 | Contains the timing or the event that triggers RAI notifications. |  |
| NotificationMethod | 6.2.2.5.3.3 | Represents the method used for RAI notifications. |  |
| RaiNotification | 6.2.2.5.2.4 | Represents an individual occurrence of RAI notification. |  |
| RaiReport | 6.2.2.5.2.5 | Represents a RAI report in a RAI notification. |  |
| RaiSubscription | 6.2.2.5.2.2 | Represents an individual RAI subscription. |  |
| TerminationCause | 6.2.2.5.3.4 | Indicates the cause from the Near-RT RIC to terminate a RAI subscription. |  |
| ValidityPeriod | 6.2.2.5.2.7 | Indicate a validity period in UTC time. |  |
| ValidityPeriodRelative | 6.2.2.5.2.6 | Indicate a validity period relative to a RAI notification. |  |

Table 6.2.2.5.1-2 specifies the data types re-used by the Y1\_RAI\_Subscription API from other specifications.

Table 6.2.2.5.1-2: Y1\_RAI\_Subscription re-used Data Types

|  |  |  |  |
| --- | --- | --- | --- |
| Data type | Reference | Comments | Applicability |
| DateTime | 3GPP TS 29.571 [8] | Identifies the actual date and time. |  |
| FilterParameters | Y1TD [2] | Describes the filter(s) used for the RAI contents.  This data type is defined per RAI type. |  |
| NotificationTriggerEvent | Y1TD [2] | Contains the event that triggers RAI notifications.  This data type is defined per RAI type. |  |
| RAIContents | Y1TD [2] | Contains the actual RAI contents.  This data type is defined per RAI type. |  |
| RaiTypeId | Y1TD [2] | Indicates the type of RAI. |  |
| RaiTypeVersion | Y1TD [2] | Indicates the version of the RAI type. |  |
| TargetEntity | Y1TD [2] | Contains information used to identify a target entity with which a RAI report is associated.  This data type is defined per RAI type. |  |

##### 6.2.2.5.2 Structured data types

###### 6.2.2.5.2.1 Introduction

This clause defines data structures to be used in resource representations.

###### 6.2.2.5.2.2 Type RaiSubscription

Table 6.2.2.5.2.2-1: Definition of type RaiSubscription

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| raiType | RaiTypeId | M | 1 | The type of RAI. |  |
| raiTypeVersion | RaiTypeVersion | M | 1 | Version of the RAI type. |  |
| targetEntities | array(TargetEntity) | M | 1..N | Information that identifies the entity/entities to which the requested RAI is related. |  |
| expectedValidityPeriodsRelative | array(ValidityPeriodRelative) | O | 1..N | Represents the expected validity period(s) for the RAI, which is relative to the occurrence of a RAI notification. |  |
| filterParameters | FilterParameters | O | 1 | The conditions for filtering RAI contents to be included in a RAI notification. |  |
| notificationCriteria | NotificationCriteria | M | 1 | Represents the timing or the events when the RAI notifications are triggered. |  |
| notificationTargetAddress | Uri | C | 0..1 | Identifies the recipient of RAI notifications sent by the Near-RT RIC.  This parameter shall be supplied by the Y1 consumer in the HTTP POST requests that create the subscriptions for RAI notifications, and in the HTTP PUT requests that update the subscriptions for RAI notifications. |  |

###### 6.2.2.5.2.3 Type NotificationCriteria

Table 6.2.2.5.2.3-1: Definition of type NotificationCriteria

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| notificationMethod | NotificationMethod | M | 1 | Represents the notification method, e.g., periodic. |  |
| notificationPeriod | integer | C | 0..1 | Indicates the periodicity of RAI notifications, in units of milliseconds.  Shall be present when the "notificationMethod" attribute is set to "PERIODIC". |  |
| notificationStartTime | DateTime | O | 0..1 | UTC time indicating the expected time of the first RAI notification.  May be present when the "notificationMethod" attribute is set to "PERIODIC". |  |
| notificationTriggerEvent | NotificationTriggerEvent | C | 0..1 | Represents the trigger event for RAI notifications.  Shall be present when notificationMethod is set to "EVENT\_TRIGGERED". |  |

###### 6.2.2.5.2.4 Type RaiNotification

Table 6.2.2.5.2.4-1: Definition of type RaiNotification

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| subscriptionId | String | M | 1 | Identifies the RAI subscription with which the RAI notification is associated. |  |
| terminationIndication | boolean | C | 0..1 | Indicates the termination of the RAI subscription by the Near-RT RIC.  Shall be present and set to "TRUE" when the Near-RT RIC decides to terminate the subscription. |  |
| terminationCause | TerminationCause | O | 0..1 | Indicates the reason why Near-RT RIC terminates the RAI subscription.  May be present when the "terminationIndication" attribute is set to "TRUE". |  |
| raiReports | array(RaiReport) | C | 1..N | Represents the RAI reports.  Shall be present when the "terminationIndication" attribute is absent or set to "FALSE". |  |

###### 6.2.2.5.2.5 Type RaiReport

Table 6.2.2.5.2.5-1: Definition of type RaiReport

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| targetEntity | TargetEntity | M | 1 | The type of RAI. |  |
| validityPeriod | ValidityPeriod | M | 1 | The validity period of the RAI report. |  |
| raiContents | RaiContents | M | 1 | Contains the actual RAI contents. |  |
| confidence | integer | O | 0..1 | Indicates the confidence of a prediction, in unit of percent.  Minimum = 0. Maximum = 100. |  |
| timeStampRaiGeneration | DateTime | O | 0..1 | Indicates the timestamp when the RAI report is generated by the Near-RT RIC. |  |

###### 6.2.2.5.2.6 Type ValidityPeriodRelative

Table 6.2.2.5.2.6-1: Definition of type ValidityPeriodRelative

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| startTimeRelative | integer | M | 1 | Indicate the start time of the validity period in a relative manner, which is expressed as a time offset relative to the time of the RAI notification, in units of milliseconds. A negative value means a point of time before the RAI notification, and a positive value means a point of time after the RAI notification. |  |
| durationMilliSecond | integer | O | 0..1 | Indicate the duration of validity period, in units of milliseconds.  The absence of the attribute means a zero duration, i.e., the RAI is calculated only for the point of time given by the start time of the validity period. |  |

###### 6.2.2.5.2.7 Type ValidityPeriod

Table 6.2.2.5.2.7-1: Definition of type ValidityPeriod

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| startTime | DateTime | M | 1 | Indicate the start time of the validity period in UTC time. |  |
| durationMilliSecond | integer | O | 0..1 | Indicate the duration of validity period, in units of milliseconds.  The absence of the attribute means a zero duration, i.e., the RAI is calculated only for the point of time given by the start time of the validity period. |  |

##### 6.2.2.5.3 Simple data types and enumerations

###### 6.2.2.5.3.1 Introduction

This clause defines simple data types and enumerations that can be referenced from data structures defined in the previous clauses.

###### 6.2.2.5.3.2 Simple data types

The simple data types defined in table 6.2.2.5.3.2-1 shall be supported.

Table 6.2.2.5.3.2-1: Simple data types

|  |  |  |  |
| --- | --- | --- | --- |
| Type Name | Type Definition | Description | Applicability |
| n/a |  |  |  |

###### 6.2.2.5.3.3 Enumeration: NotificationMethod

Table 6.2.2.5.3.3-1: Enumeration NotificationMethod

|  |  |  |
| --- | --- | --- |
| Enumeration value | Description | Applicability |
| PERIODIC | The RAI notifications are sent with certain time interval. |  |
| EVENT\_TRIGGERED | The RAI notifications are triggered by certain event. |  |

###### 6.2.2.5.3.4 Enumeration: TerminationCause

Table 6.2.2.5.3.4-1: Enumeration TerminationCause

|  |  |  |
| --- | --- | --- |
| Enumeration value | Description | Applicability |
| UNKNOWN | Indicates the RAI subscription is terminated due to unknown reasons. |  |
| OVERLOAD | Indicates the RAI subscription is terminated due to overload in the Near-RT RIC. |  |

#### 6.2.2.6 Error handling

##### 6.2.2.6.1 General

The generic mechanism for error handling is described in clause 5.2.5. In addition, the requirements in the following clause 6.2.2.6.2 and clause 6.2.2.6.3 shall be applied.

##### 6.2.2.6.2 Protocol Errors

In the present document, no additional protocol errors are defined for the Y1\_RAI\_Subscription API.

##### 6.2.2.6.3 Application Errors

The application errors specific to the Y1\_RAI\_Subscription API are listed in table 6.2.2.6.2-1. The Near-RT RIC shall include in the HTTP status code a "ProblemDetails" data structure with the "cause" attribute indicating the application error as listed in table 6.2.2.6.2-1.

Table 6.2.2.6.2-1: Application errors

|  |  |  |
| --- | --- | --- |
| Application Error | HTTP status code | Description |
| DATA\_UNAVAILABLE | 500 Internal Server Error | Indicates the RAI subscription is rejected since necessary data to perform the analysis is unavailable. |

## 6.3 Y1\_RAI\_Query service API

### 6.3.1 Introduction

The Y1\_RAI\_Query API is used to access the Y1\_RAI\_Query service.

The service operations and corresponding API definitions are organized in the following clauses for different solution sets.

### 6.3.2 HTTP REST with JSON solution set

#### 6.3.2.1 Service operations

##### 6.3.2.1.1 Introduction

Table 6.3.2.1.1-1 lists the operations supported by the Y1\_RAI\_Query service for the solution set "HTTP REST with JSON".

Table 6.3.2.2.1-1: Operations of the Y1\_RAI\_Subscription service

| Service operation name | Description | Initiated by |
| --- | --- | --- |
| RAI\_Query | This service operation is used by a Y1 consumer to query specific RAI from Near-RT RIC. | Y1 consumer |

##### 6.3.2.1.2 RAI\_Query service operation

###### 6.3.2.1.2.1 General

The RAI\_Query service operation is used by a Y1 consumer to query specific RAI from the Near-RT RIC.

###### 6.3.2.1.2.2 Query RAI

Figure 6.3.2.1.2.2-1 shows a scenario where the Y1 consumer sends a request to the Near-RT RIC to query RAI. The operation is based on HTTP GET.

@startuml

participant "Y1 consumer" as cons

participant "Near-RT RIC" as prod

cons ->> prod : 1. GET .../analytics?query\_parameters

prod ->> cons : 2. 200 OK

@enduml

![PlantUML diagram](../assets/images/12d28ddd1189.png)

Figure 6.3.2.1.2.2-1: Y1 consumer query a RAI

The Y1 consumer shall send an HTTP GET request to the Near-RT RIC on the resource URI "{apiRoot}/Y1\_RAI\_Query/<apiMajorVersion>/analytics" representing the "Y1 RAI" resource, to request RAI.

NOTE: The path segment " Y1\_RAI\_Query " does not follow the related naming convention specified in clause 5.2.4.1 of [7]. The path segment is however kept as currently defined in this specification for backward compatibility considerations.

The following information shall be provided:

- the type of RAI as the "raiType" attribute;

- the version of the RAI type as the "raiTypeVersion" attribute;

- the target entity/entities of the RAI in the "targetEntities" attribute.

The following information may be provided:

- the expected validity period(s) for the RAI in the "expectedValidityPeriods" attribute; an expected validity period before the occurrence of a RAI query refers to statistics for a past time, and an expected validity period after the occurrence of a RAI query refers to a prediction for a future time.

- the filter parameters to filter RAI contents in the RAI report as the "filterParameters" attribute;

Upon the reception of the HTTP GET request, the Near-RT RIC shall analyse RAI according to the request.

If the HTTP request message from the Y1 consumer is accepted, the Near-RT RIC shall respond with "200 OK" status code with the message body containing the RAI with parameters as relevant for the requesting Y1 consumer. The "raiQueryResult" data structure in the response body shall include:

- the RAI reports in the "raiReports" attribute that, for each RAI report, the "RaiReport" data type shall include:

- the target entity of the RAI report as the "targetEntity" attribute;

- the validity period of the RAI report as the "validityPeriod" attribute;

- the actual RAI contents as the "raiContents" attribute;

and may include:

- the confidence of the RAI report, if the RAI report is a prediction;

- the timestamp when Near-RT RIC generates the RAI report as the "timeStampRaiGeneration" attribute.

If an error occurs when processing the HTTP POST request, the Near-RT RIC shall send an HTTP error response as specified in clause 6.2.2.6. In particular,

- If the necessary data to perform the analysis are unavailable, the Near-RT RIC shall reject the request with a "500 Internal Server Error" status code and a "ProblemDetails" data structure including the "cause" attribute set to "DATA\_UNAVAILABLE".

#### 6.3.2.2 Resources

##### 6.3.2.2.1 Resource URI structure

The resource URI shall have the structure as defined in clause 5.2.3.1 with the following clarifications:

- The <apiName> shall be "Y1\_RAI\_Query".

- The <apiMajorVersion> shall be "v1".

- The <apiSpecificResourceUriPart> shall be set as illustrated in figure 6.3.2.2.1-1.

![](../assets/images/a2492eb9fe1e.png)

Figure 6.3.2.2.1-1: Resource URI structure of the Y1\_RAI\_Query API

Table 6.3.2.2.1-1 provides an overview of the resources and applicable HTTP methods for the Y1\_RAI\_Query API.

Table 6.3.2.2.1-1: Resources and methods overview

|  |  |  |  |
| --- | --- | --- | --- |
| Resource name | API specific resource URI part | HTTP method or custom operation | Description |
| Y1 RAI | /analytics | GET | Retrieve the RAI |

##### 6.3.2.2.2 Resource: Y1 RAI

###### 6.3.2.2.2.1 Description

The Y1 RAI resource represents the RAI to the RAI\_Query Service at a given Near-RT RIC.

###### 6.3.2.2.2.2 Resource Definition

Resource URI: **{apiRoot}/Y1\_RAI\_Query/v1/analytics**

This resource shall support the resource URI variables defined in table 6.3.2.2.2.2-1.

Table 6.3.2.2.2.2-1: Resource URI variables for this resource

|  |  |  |
| --- | --- | --- |
| Name | Data type | Definition |
| apiRoot | string | See clause 5.2.3.1 |

###### 6.3.2.2.2.3 Resource Standard Methods

6.3.2.2.2.3.1 HTTP GET

This method shall support the URI query parameters specified in table 6.3.2.2.2.3.1-1.

Table 6.3.2.2.2.3.1-1: URI query parameters supported by the GET method on this resource

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Name | Data type | P | Cardinality | Description |
| raiType | RaiTypeId | M | 1 | Indicates the type of RAI. |
| raiTypeVersion | RaiTypeVersion | M | 1 | Indicates the version of the RAI type. |
| targetEntities | array(TargetEntity) | M | 1..N | Information that identifies the entity/entities to which the requested RAI is related. |
| expectedValidityPeriods | array(ValidityPeriod) | O | 1..N | Represents the expected validity period(s) for the RAI. |
| filterParameters | FilterParameters | O | 1 | Describes the filter(s) used for the RAI contents. |
| NOTE: The query parameters "raiType", "raiTypeVersion", "targetEntities", "expectedValidityPeriods" and "filterParameters" do not follow the related naming convention specified in clause 5.2.4.1 of [7]. These query parameters are however kept as currently defined in this specification for backward compatibility considerations. | | | | |

This method shall support the request data structures specified in table 6.3.2.2.2.3.1-2 and the response data structures and response codes specified in table 6.3.2.2.2.3.1-3.

Table 6.3.2.2.2.3.1-2: Data structures supported by the GET Request Body on this resource

|  |  |  |  |
| --- | --- | --- | --- |
| Data type | P | Cardinality | Description |
| n/a |  |  |  |

Table 6.3.2.2.2.3.1-3: Data structures supported by the GET Response Body on this resource

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Data type | P | Cardinality | Response  codes | Description |
| RaiQueryResult | M | 1 | 200 OK | Containing the RAI with parameters as relevant for the requesting Y1 consumer |
| ProblemDetails | O | 0..1 | 500 Internal Server Error | (NOTE 2) |
| NOTE 1: The mandatory HTTP error status codes for the GET method used by [7] also apply. See clause 5.2.5.  NOTE 2: Failure cases are described in clause 6.3.2.6. | | | | |

#### 6.3.2.3 Custom operations without associated resources

No custom operations are defined in the present document.

#### 6.3.2.4 Notifications

No notifications are defined in the present document.

#### 6.3.2.5 Data model

##### 6.3.2.5.1 General

Table 6.3.2.5.1-1 specifies the data types defined for the Y1\_RAI\_Query API in this specification.

Table 6.3.2.5.1-1: Y1\_RAI\_Query specific data types in this specification

|  |  |  |  |
| --- | --- | --- | --- |
| Data type | Clause | Description | Applicability |
| RaiQueryResult | 6.3.2.5.2.2 | Contains the RAI with parameters indicated in the request. |  |

Table 6.3.2.5.1-2 specifies the data types re-used by the Y1\_RAI\_Query API from other specifications.

Table 6.3.2.5.1-2: Y1\_RAI\_Query re-used Data Types

|  |  |  |  |
| --- | --- | --- | --- |
| Data type | Reference | Comments | Applicability |
| DateTime | 3GPP TS 29.571 [8] | Identifies the actual date and time. |  |
| FilterParameters | Y1TD [2] | Describes the filter(s) used for the RAI contents.  This data type is defined per RAI type. |  |
| RAIContents | Y1TD [2] | Contains the actual RAI contents.  This data type is defined per RAI type. |  |
| RaiReport | 6.2.2.5.2.5 | Represents a RAI report in a RAI query result. |  |
| RaiTypeId | Y1TD [2] | Indicates the type of RAI. |  |
| RaiTypeVersion | Y1TD [2] | Indicates the version of the RAI type. |  |
| TargetEntity | Y1TD [2] | Contains information used to identify a target entity with which a RAI report is associated.  This data type is defined per RAI type. |  |
| ValidityPeriod | 6.2.2.5.2.7 | Indicate a validity period in UTC time. |  |

##### 6.3.2.5.2 Structured data types

###### 6.3.2.5.2.1 Introduction

This clause defines data structures to be used in resource representations.

###### 6.3.2.5.2.2 Type RaiQueryResult

Table 6.3.2.5.2.2-1: Definition of type RaiResultSet

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| raiReports | array(RaiReport) | M | 1..N | Represents the RAI reports. |  |

##### 6.3.2.5.3 Simple data types and enumerations

###### 6.3.2.5.3.1 Introduction

This clause defines simple data types and enumerations that can be referenced from data structures defined in the previous clauses.

###### 6.3.2.5.3.2 Simple data types

The simple data types defined in table 6.3.2.5.3.2-1 shall be supported.

Table 6.3.2.5.3.2-1: Simple data types

|  |  |  |  |
| --- | --- | --- | --- |
| Type Name | Type Definition | Description | Applicability |
| n/a |  |  |  |

#### 6.3.2.6 Error handling

##### 6.3.2.6.1 General

The generic mechanism for error handling is described in clause 5.2.5. In addition, the requirements in the following clauses shall apply.

##### 6.3.2.6.2 Protocol Errors

In the present document, no additional protocol errors are defined for the Y1\_RAI\_Query API.

##### 6.3.2.6.3 Application Errors

The application errors specific to the Y1\_RAI\_Query API are listed in table 6.3.2.6.3-1. The Near-RT RIC shall include in the HTTP status code a "ProblemDetails" data structure with the "cause" attribute indicating the application error as listed in table 6.2.2.6.3-1.

Table 6.3.2.6.3-1: Application errors

|  |  |  |
| --- | --- | --- |
| Application Error | HTTP status code | Description |
| DATA\_UNAVAILABLE | 500 Internal Server Error | Indicates the RAI subscription is rejected since necessary data to perform the analysis is unavailable. |

Annex A (normative):
OpenAPI specification

## A.1 General

This Annex specifies the formal definition of the Y1 service API(s). It consists of OpenAPI documents in YAML format that are based on the OpenAPI Specification [2].

## A.2 Y1\_RAI\_Subscription API

openapi: 3.1.0

info:

title: Y1\_RAI\_Subscription API

description: |

Y1\_RAI\_Subscription API as part of Y1 interface.

(C) 2023, O-RAN ALLIANCE

All rights reserved.

version: "1.0.0"

externalDocs:

description: O-RAN.WG3.Y1AP-v01.00

url: 'https://www.o-ran.org/specifications'

servers:

- url: '{apiRoot}/Y1\_RAI\_Subscription/v1'

variables:

apiRoot:

default: https://example.com

description: apiRoot as defined in clause 5.2.3 of O-RAN.WG3.Y1AP-v01.00

paths:

/subscriptions:

post:

description: Creates a new Individual Y1 RAI Subscription.

operationId: CreateY1RAISubscription

requestBody:

required: true

content:

application/json:

schema:

$ref: '#/components/schemas/RaiSubscription'

responses:

'201':

description: >

The Individual Y1 RAI Subscription resource is created successfully and a

representation of that resource is returned.

content:

application/json:

schema:

$ref: '#/components/schemas/RaiSubscription'

headers:

Location:

description: >

Contains the URI of the newly created resource, according to the structure

{apiRoot}/Y1\_RAI\_Subscription/v1/subscriptions/{subscriptionId}

required: true

schema:

type: string

'400':

$ref: '#/components/responses/400'

'401':

$ref: '#/components/responses/401'

'403':

$ref: '#/components/responses/403'

'404':

$ref: '#/components/responses/404'

'411':

$ref: '#/components/responses/411'

'413':

$ref: '#/components/responses/413'

'415':

$ref: '#/components/responses/415'

'429':

$ref: '#/components/responses/429'

'500':

$ref: '#/components/responses/500'

'503':

$ref: '#/components/responses/503'

default:

$ref: '#/components/responses/default'

callbacks:

RAINotification:

'{$request.body#/notificationTargetAddress}':

post:

requestBody: # contents of the callback message

required: true

content:

application/json:

schema:

$ref: '#/components/schemas/RaiNotification'

responses:

'204':

description: No Content (successful notification)

'307':

$ref: '#/components/responses/307'

'308':

$ref: '#/components/responses/308'

'400':

$ref: '#/components/responses/400'

'401':

$ref: '#/components/responses/401'

'403':

$ref: '#/components/responses/403'

'404':

$ref: '#/components/responses/404'

'411':

$ref: '#/components/responses/411'

'413':

$ref: '#/components/responses/413'

'415':

$ref: '#/components/responses/415'

'429':

$ref: '#/components/responses/429'

'500':

$ref: '#/components/responses/500'

'503':

$ref: '#/components/responses/503'

default:

$ref: '#/components/responses/default'

/subscriptions/{subscriptionId}:

delete:

description: Deletes an Individual Y1 RAI Subscription.

operationId: DeleteY1RAISubscription

parameters:

- name: subscriptionId

in: path

description: Identifier of the Individual Y1 RAI Subscription

required: true

schema:

type: string

responses:

'204':

description: >

The Individual Y1 RAI Subscription resource matching the subscriptionId is deleted.

'307':

$ref: '#/components/responses/307'

'308':

$ref: '#/components/responses/308'

'400':

$ref: '#/components/responses/400'

'401':

$ref: '#/components/responses/401'

'403':

$ref: '#/components/responses/403'

'404':

$ref: '#/components/responses/404'

'429':

$ref: '#/components/responses/429'

'500':

$ref: '#/components/responses/500'

'503':

$ref: '#/components/responses/503'

default:

$ref: '#/components/responses/default'

put:

description: Updates an Individual Y1 RAI Subscription

operationId: UpdateY1RAISubscription

requestBody:

required: true

content:

application/json:

schema:

$ref: '#/components/schemas/RaiSubscription'

parameters:

- name: subscriptionId

in: path

description: Identifier of the Individual Y1 RAI Subscription

required: true

schema:

type: string

responses:

'200':

description: >

The Individual Y1 RAI Subscription resource is updated successfully and a

representation of that resource is returned.

content:

application/json:

schema:

$ref: '#/components/schemas/RaiSubscription'

'204':

description: The Individual Y1 RAI Subscription resource is updated successfully.

'307':

$ref: '#/components/responses/307'

'308':

$ref: '#/components/responses/308'

'400':

$ref: '#/components/responses/400'

'401':

$ref: '#/components/responses/401'

'403':

$ref: '#/components/responses/403'

'404':

$ref: '#/components/responses/404'

'411':

$ref: '#/components/responses/411'

'413':

$ref: '#/components/responses/413'

'415':

$ref: '#/components/responses/415'

'429':

$ref: '#/components/responses/429'

'500':

$ref: '#/components/responses/500'

'503':

$ref: '#/components/responses/503'

default:

$ref: '#/components/responses/default'

components:

schemas:

RaiSubscription:

type: object

description: Represents an Individual RAI Subscription resource.

properties:

raiType:

$ref: '#/components/schemas/RaiTypeId'

raiTypeVersion:

$ref: '#/components/schemas/RaiTypeVersion'

targetEntities:

type: array

items:

$ref: '#/components/schemas/TargetEntity'

minItems: 1

expectedValidityPeriodsRelative:

type: array

items:

$ref: '#/components/schemas/ValidityPeriodRelative'

filterParameters:

$ref: '#/components/schemas/FilterParameters'

notificationCriteria:

$ref: '#/components/schemas/NotificationCriteria'

notificationTargetAddress:

$ref: '#/components/schemas/Uri'

required:

- raiType

- raiTypeVersion

- notificationCriteria

- targetEntities

NotificationCriteria:

type: object

description: Contains the timing or event that triggers RAI notifications.

properties:

notificationMethod:

$ref: '#/components/schemas/NotificationMethod'

notificationPeriod:

type: integer

description: Indicates the interval of periodic RAI notifications in units of milliseconds.

notificationStartTime:

$ref: '#/components/schemas/DateTime'

description: Indicates the expected time of the first notification for the periodic RAI notifications.

notificationTriggerEvent:

$ref: '#/components/schemas/NotificationTriggerEvent'

required:

- notificationMethod

RaiNotification:

type: object

description: Represents a RAI notification.

properties:

subscriptionId:

type: string

description: >

Identifier of the subscription resource to which the RAI notification

is related.

terminationIndication:

type: boolean

description: When true, indicates the termination of the RAI subscription by the Near-RT RIC.

terminationCause:

$ref: '#/components/schemas/TerminationCause'

raiReports:

type: array

items:

$ref: '#/components/schemas/RaiReport'

minItems: 1

required:

- subscriptionId

RaiTypeId:

type: string

description: Indicates the type of RAI. It is defined in Y1TD.

RaiTypeVersion:

type: string

description: Indicates the version of the RAI type. It is defined in Y1TD.

RaiContents:

type: object

description: Contains the actual RAI contents. It is defined in Y1TD per RAI type.

RaiReport:

type: object

description: Represents a RAI report in a RAI notification.

properties:

targetEntity:

$ref: '#/components/schemas/TargetEntity'

validityPeriod:

$ref: '#/components/schemas/ValidityPeriod'

raiContents:

$ref: '#/components/schemas/RaiContents'

confidence:

type: integer

minimum: 0

maximum: 100

description: Indicates the confidence of a prediction, in unit of percent.

timeStampRaiGeneration:

$ref: '#/components/schemas/DateTime'

description: The date and time when the RAI report is generated.

required:

- targetEntity

- validityPeriod

- raiContents

TargetEntity:

type: object

description: Contains information used to identify a target entity with which a RAI report is associated. It is defined in Y1TD per RAI type.

TerminationCause:

type: string

enum:

- UNKNOWN

- OVERLOAD

description: Indicates the cause from the Near-RT RIC to terminate a RAI subscription.

ValidityPeriodRelative:

type: object

description: Indicate a validity period relative to a RAI notification.

properties:

startTimeRelative:

type: integer

description: Indicate the start time of the validity period in a relative manner, which is expressed as a time offset relative to the time of the RAI notification, in units of milliseconds

durationMilliSecond:

type: integer

description: Indicate the duration of validity period, in units of milliseconds.

required:

- startTimeRelative

ValidityPeriod:

type: object

description: Indicate a validity period in UTC time.

properties:

startTime:

$ref: '#/components/schemas/DateTime'

durationMilliSecond:

type: integer

description: Indicate the duration of validity period, in units of milliseconds.

required:

- startTime

FilterParameters:

type: object

description: Describes the filter(s) used for the RAI contents. It is defined in Y1TD per RAI type.

NotificationMethod:

type: string

enum:

- PERIODIC

- EVENT\_TRIGGERED

description: Represents the method used for RAI notifications.

NotificationTriggerEvent:

type: object

description: Contains the event that triggers RAI notifications. It is defined in Y1TD per RAI type.

DateTime:

type: string

format: date-time

description: date and time as defined by RFC3339.

Uri:

type: string

description: string providing an URI formatted according to IETF RFC 3986.

ProblemDetails:

type: object

properties:

type:

$ref: '#/components/schemas/Uri'

title:

type: string

description: A short, human-readable summary of the problem type. It should not change from occurrence to occurrence of the problem.

status:

type: integer

description: The HTTP status code for this occurrence of the problem.

detail:

type: string

description: A human-readable explanation specific to this occurrence of the problem.

instance:

$ref: '#/components/schemas/Uri'

cause:

type: string

description: A machine-readable application error cause specific to this occurrence of the problem. This IE should be present and provide application-related error information, if available.

invalidParams:

type: array

items:

$ref: '#/components/schemas/InvalidParam'

minItems: 1

description: Description of invalid parameters, for a request rejected due to invalid parameters.

InvalidParam:

type: object

properties:

param:

type: string

description: Attribute's name encoded as a JSON Pointer, or header's name.

reason:

type: string

description: A human-readable reason, e.g. "must be a positive integer".

required:

- param

#

# HTTP Responses

#

responses:

'307':

description: Temporary Redirect

headers:

Location:

description: 'An alternative URI of the resource.'

required: true

schema:

type: string

'308':

description: Permanent Redirect

headers:

Location:

description: 'An alternative URI of the resource.'

required: true

schema:

type: string

'400':

description: Bad request

content:

application/problem+json:

schema:

$ref: '#/components/schemas/ProblemDetails'

'401':

description: Unauthorized

content:

application/problem+json:

schema:

$ref: '#/components/schemas/ProblemDetails'

'403':

description: Forbidden

content:

application/problem+json:

schema:

$ref: '#/components/schemas/ProblemDetails'

'404':

description: Not Found

content:

application/problem+json:

schema:

$ref: '#/components/schemas/ProblemDetails'

'406':

description: Not Acceptable

content:

application/problem+json:

schema:

$ref: '#/components/schemas/ProblemDetails'

'409':

description: Conflict

content:

application/problem+json:

schema:

$ref: '#/components/schemas/ProblemDetails'

'411':

description: Length Required

content:

application/problem+json:

schema:

$ref: '#/components/schemas/ProblemDetails'

'412':

description: Precondition Failed

content:

application/problem+json:

schema:

$ref: '#/components/schemas/ProblemDetails'

'413':

description: Payload Too Large

content:

application/problem+json:

schema:

$ref: '#/components/schemas/ProblemDetails'

'414':

description: URI Too Long

content:

application/problem+json:

schema:

$ref: '#/components/schemas/ProblemDetails'

'415':

description: Unsupported Media Type

content:

application/problem+json:

schema:

$ref: '#/components/schemas/ProblemDetails'

'429':

description: Too Many Requests

content:

application/problem+json:

schema:

$ref: '#/components/schemas/ProblemDetails'

'500':

description: Internal Server Error

content:

application/problem+json:

schema:

$ref: '#/components/schemas/ProblemDetails'

'503':

description: Service Unavailable

content:

application/problem+json:

schema:

$ref: '#/components/schemas/ProblemDetails'

default:

description: Generic Error

## A.3 Y1\_RAI\_Query API

openapi: 3.1.0

info:

title: Y1\_RAI\_Query API

description: |

Y1\_RAI\_Query API as part of Y1 interface.

(C) 2023, O-RAN ALLIANCE

All rights reserved.

version: "1.0.0"

externalDocs:

description: O-RAN.WG3.Y1AP-v01.00

url: 'https://www.o-ran.org/specifications'

servers:

- url: '{apiRoot}/Y1\_RAI\_Query/v1'

variables:

apiRoot:

default: https://example.com

description: apiRoot as defined in clause 5.2.3 of O-RAN.WG3.Y1AP-v01.00

paths:

/analytics:

get:

description: Retrieve RAI.

operationId: GetY1RAI

parameters:

- name: raiType

in: query

description: Identify the type of RAI.

required: true

schema:

$ref: '#/components/schemas/RaiTypeId'

- name: raiTypeVersion

in: query

description: Identify the version of the RAI type.

required: true

schema:

$ref: '#/components/schemas/RaiTypeVersion'

- name: targetEntities

in: query

description: Identify the entity/entities to which the requested RAI is related.

required: true

schema:

type: array

items:

$ref: '#/components/schemas/TargetEntity'

minItems: 1

- name: expectedValidityPeriods

in: query

description: Represents the expected validity period(s) for the RAI.

required: false

schema:

type: array

items:

$ref: '#/components/schemas/ValidityPeriod'

- name: filterParameters

in: query

description: Identify the filter(s) used for the RAI contents.

required: false

schema:

$ref: '#/components/schemas/FilterParameters'

responses:

'200':

description: >

Containing the RAI query result with parameters as relevant for the requesting Y1 consumer.

content:

application/json:

schema:

$ref: '#/components/schemas/RaiQueryResult'

'400':

$ref: '#/components/responses/400'

'401':

$ref: '#/components/responses/401'

'403':

$ref: '#/components/responses/403'

'404':

description: Indicates that the Y1 RAI resource does not exist.

content:

application/problem+json:

schema:

$ref: '#/components/schemas/ProblemDetails'

'406':

$ref: '#/components/responses/406'

'414':

$ref: '#/components/responses/414'

'429':

$ref: '#/components/responses/429'

'500':

$ref: '#/components/responses/500'

'503':

$ref: '#/components/responses/503'

default:

$ref: '#/components/responses/default'

components:

schemas:

RaiQueryResult:

type: object

description: Represents the RAI with parameters as relevant for the requesting Y1 consumer.

properties:

raiReports:

type: array

items:

$ref: '#/components/schemas/RaiReport'

minItems: 1

required:

- raiReports

RaiTypeId:

type: string

description: Indicates the type of RAI. It is defined in Y1TD.

RaiTypeVersion:

type: string

description: Indicates the version of the RAI type. It is defined in Y1TD.

RaiContents:

type: object

description: Contains the actual RAI contents. It is defined in Y1TD per RAI type.

RaiReport:

type: object

description: Represents a RAI report in a RAI notification.

properties:

targetEntity:

$ref: '#/components/schemas/TargetEntity'

validityPeriod:

$ref: '#/components/schemas/ValidityPeriod'

raiContents:

$ref: '#/components/schemas/RaiContents'

confidence:

type: integer

minimum: 0

maximum: 100

description: Indicates the confidence of a prediction, in unit of percent.

timeStampRaiGeneration:

$ref: '#/components/schemas/DateTime'

description: The date and time when the RAI report is generated.

required:

- targetEntity

- validityPeriod

- raiContents

FilterParameters:

type: object

description: Describes the filter(s) used for the RAI contents. It is defined in Y1TD per RAI type.

TargetEntity:

type: object

description: Contains information used to identify a target entity with which a RAI report is associated. It is defined in Y1TD per RAI type.

ValidityPeriod:

type: object

description: Indicate a validity period in UTC time.

properties:

startTime:

$ref: '#/components/schemas/DateTime'

durationMilliSecond:

type: integer

description: Indicate the duration of validity period, in units of milliseconds.

required:

- startTime

DateTime:

type: string

format: date-time

description: date and time as defined by RFC3339.

Uri:

type: string

description: string providing an URI formatted according to IETF RFC 3986.

ProblemDetails:

type: object

properties:

type:

$ref: '#/components/schemas/Uri'

title:

type: string

description: A short, human-readable summary of the problem type. It should not change from occurrence to occurrence of the problem.

status:

type: integer

description: The HTTP status code for this occurrence of the problem.

detail:

type: string

description: A human-readable explanation specific to this occurrence of the problem.

instance:

$ref: '#/components/schemas/Uri'

cause:

type: string

description: A machine-readable application error cause specific to this occurrence of the problem. This IE should be present and provide application-related error information, if available.

invalidParams:

type: array

items:

$ref: '#/components/schemas/InvalidParam'

minItems: 1

description: Description of invalid parameters, for a request rejected due to invalid parameters.

InvalidParam:

type: object

properties:

param:

type: string

description: Attribute's name encoded as a JSON Pointer, or header's name.

reason:

type: string

description: A human-readable reason, e.g. "must be a positive integer".

required:

- param

#

# HTTP Responses

#

responses:

'307':

description: Temporary Redirect

headers:

Location:

description: 'An alternative URI of the resource.'

required: true

schema:

type: string

'308':

description: Permanent Redirect

headers:

Location:

description: 'An alternative URI of the resource.'

required: true

schema:

type: string

'400':

description: Bad request

content:

application/problem+json:

schema:

$ref: '#/components/schemas/ProblemDetails'

'401':

description: Unauthorized

content:

application/problem+json:

schema:

$ref: '#/components/schemas/ProblemDetails'

'403':

description: Forbidden

content:

application/problem+json:

schema:

$ref: '#/components/schemas/ProblemDetails'

'404':

description: Not Found

content:

application/problem+json:

schema:

$ref: '#/components/schemas/ProblemDetails'

'406':

description: Not Acceptable

content:

application/problem+json:

schema:

$ref: '#/components/schemas/ProblemDetails'

'409':

description: Conflict

content:

application/problem+json:

schema:

$ref: '#/components/schemas/ProblemDetails'

'411':

description: Length Required

content:

application/problem+json:

schema:

$ref: '#/components/schemas/ProblemDetails'

'412':

description: Precondition Failed

content:

application/problem+json:

schema:

$ref: '#/components/schemas/ProblemDetails'

'413':

description: Payload Too Large

content:

application/problem+json:

schema:

$ref: '#/components/schemas/ProblemDetails'

'414':

description: URI Too Long

content:

application/problem+json:

schema:

$ref: '#/components/schemas/ProblemDetails'

'415':

description: Unsupported Media Type

content:

application/problem+json:

schema:

$ref: '#/components/schemas/ProblemDetails'

'429':

description: Too Many Requests

content:

application/problem+json:

schema:

$ref: '#/components/schemas/ProblemDetails'

'500':

description: Internal Server Error

content:

application/problem+json:

schema:

$ref: '#/components/schemas/ProblemDetails'

'503':

description: Service Unavailable

content:

application/problem+json:

schema:

$ref: '#/components/schemas/ProblemDetails'

default:

description: Generic Error

Annex (informative):
Change History

|  |  |  |
| --- | --- | --- |
| Date | Revision | Description |
| 2023.05.05 | 00.00.01 | Create the skeleton. |
| 2023.10.23 | 00.00.02 | Implemented  [CMCC-2023.07.25-WG3-CR-0002-Y1AP-General contents for clause 4 and 5-v02.docx](https://oranalliance.atlassian.net/wiki/download/attachments/2850881870/CMCC-2023.07.25-WG3-CR-0002-Y1AP-General%20contents%20for%20clause%204%20and%205-v02.docx?api=v2)  [CMCC-2023.09.04-WG3-CR-0003-Y1AP-Y1\_RAI\_Subscription API-v02.docx](https://oranalliance.atlassian.net/wiki/download/attachments/2850881870/CMCC-2023.09.04-WG3-CR-0003-Y1AP-Y1_RAI_Subscription%20API-v02.docx?api=v2)  CMCC-2023.10.07-WG3-CR-0004-Y1AP-Y1\_RAI\_Query API-v01.docx  and editorial changes. |
| 2023.10.31 | 00.00.03 | Implemented  [CUC-2023.10.27-WG3-CR-0001-Correction-Of-RAI-Notify-v01.docx](https://oranalliance.atlassian.net/wiki/download/attachments/2850881870/CUC-2023.10.27-WG3-CR-0001-Correction-Of-RAI-Notify-v01.docx?api=v2) |
| 2023.11.17 | 00.00.04 | Editorial changes according to the review comments during WG3 poll. |
| 2023.11.18 | 01.00 | Version incremented for publication. |
| 2024.07.08 | 01.00.01 | Implemented  [CMCC-2024.05.24-WG3-CR-0005-Y1AP-Editorial corrections for ODR alignment-v01.docx](https://oranalliance.atlassian.net/wiki/download/attachments/2850881870/CMCC-2024.05.24-WG3-CR-0005-Y1AP-Editorial%20corrections%20for%20ODR%20alignment-v01.docx?api=v2)  and editorial changes. |
| 2024.07.22 | 01.00.02 | Editorial changes according to the review comments during WG3 poll. |
| 2024.07.26 | 01.01 | Version incremented for TSC. |
---

- View in [Reader Mode](https://simewu.com/spec-reader/pages/10-WG3/O-RAN.WG3.Y1AP-R004-v01.01.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG3.Y1AP-R004-v01.01.docx).
