---
title: O-RAN.WG6.TS.O-CLOUD-INTF-CONF-R004-v04.01.docx.md
author: O-RAN Alliance
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG6.TS.O-CLOUD-INTF-CONF-R004-v04.01.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG6.TS.O-CLOUD-INTF-CONF-R004-v04.01.docx).

---

* toc
{:toc}

---

![]({{site.baseurl}}/assets/images/c903f23cac61.png)O-RAN.WG6.TS.O-CLOUD-INTF-CONF-R004-v04.01

*Technical Specification*

**O-RAN Working Group 6**

**O-Cloud Interface Conformance Test Specification**

Copyright (C) 2025 by the O-RAN ALLIANCE e.V.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany Register of Associations, Bonn VR 11238, VAT ID DE321720189

Contents

List of Figures 4

List of tables 4

Foreword 5

Modal verbs terminology 5

Introduction 5

1. Scope 5
   1. Test Requirement Status 5
2. References 7
   1. Normative references 7
   2. Informative references 8
3. Definition of terms, symbols and abbreviations 8
   1. Terms 8
   2. Abbreviations 9
4. Testing methodology 10
   1. System under test 10
   2. Test method 11
      1. Testing procedure 11
      2. Statistics and analysis of key indicators 11
5. O-Cloud Notification API Test 11
   1. General 11
   2. Test Configuration 11
      1. System Under Test requirements 11
      2. Test Tools and Simulators capabilities 12
   3. Test cases 13
      1. Create a subscription resource 13
      2. Get a list of subscription resources 14
      3. Get Detail of individual subscription resource 14
      4. Delete individual subscription resources 15
      5. Event notification and Notification sanity check 16
      6. Event pull status notification 17
6. AAL API Test 17
7. O2 Interface Test 18
   1. General 18
   2. Test Configuration 18
      1. System Under Test requirements 18
      2. Test Tools capabilities 18
   3. O2 IMS Test 19
      1. O-Cloud succeeds to deliver O-Cloud Available Notification to SMO. 19
      2. SMO succeeds to query inventory with correct token 19
      3. SMO succeeds to subscribe for O2ims inventory changes notification and succeeds to receive notifications 22
      4. SMO succeeds to create alarmSubscription, receive alarm notification, and query alarm list. 23
      5. Verify general aspects of O2ims API 24
      6. SMO gets 405 while sending O2ims APIs with unsupported method 26
      7. SMO gets 400 while issuing O2ims APIs with incorrect data. 27
      8. SMO gets security error response while issuing APIs with incorrect token 29
      9. SMO gets client error response while issuing requests with incorrect APIs 30
      10. SMO succeeds to get O2dms (in Kubernetes native API Profile) access information 30
      11. SMO gets 400 when issuing APIs with junk/unsupported data. 31
      12. SMO gets 404 when issuing APIs with wrong data. 32
   4. O2 DMS Test 33
      1. General 33
      2. O2 DMS ETSI NFV Profile Test 33

Annex A (normative): Checklist for Cases applies to O-Cloud technologies 45

* 1. O-Cloud technologies 45
  2. Cloud Technology Applicability of test cases 45
  3. Case Traceability 50

# List of Figures

Figure 4.1-2: The overview of O-Cloud Interface test 10

Figure 5.2-1: Configuration of O-Cloud Notification API test 12

# List of tables

Table 1.1-1: List of O-RAN O-Cloud Notification API Test Scenarios and Status 6

Table 1.1-2: List of O-RAN O-Cloud O2ims Test Scenarios and Status 6

Table 1.1-3: List of O-RAN O-Cloud O2dms ETSI NFV profile Test Scenarios and Status 7

Table A.2-1: O-Cloud IOT and corresponding Interfaces/APIs, DUTs and SUTs 45

Table A.3-1: O-Cloud IOT and corresponding Interfaces/APIs, DUTs and SUTs 50

# Foreword

This Technical Specification (TS) has been produced by O-RAN Alliance.

# Modal verbs terminology

In the present document "**shall**", "**shall not**", "**should**", "**should not**", "**may**", "**need not**", "**will**", "**will not**", "**can**" and "**cannot**" are to be interpreted as described in clause 3.2 of the O-RAN Drafting Rules (Verbal forms for the expression of provisions).

"**must**" and "**must not**" are **NOT** allowed in O-RAN deliverables except when used in direct citation.

# Introduction

This document specifies the O-Cloud interface test specification to guide O-Cloud products conforming to the O-RAN specifications, including the O-Cloud Notification API, AAL API and O2 interface.

# Scope

The present document specifies a test specification for test and validation of the O-Cloud interfaces/APIs. This document will specify the testing methodology and test cases, for O-Cloud interfaces/APIs including O-Cloud Notification API, AAL API and O2 interface.

## Test Requirement Status

The purpose of section is to clarify which of the test cases provided in this specification shall be passed to verify a particular O-Cloud interfaces or API to comply with the O-Cloud specification.

The following tables list each test in this conformance specification and requirement of the test as MANDATORY or CONDITIONAL MANDATORY. MANDATORY means the

function/feature/capability under test shall be supported in relevant O-Cloud interface specification. OPTIONAL means the function/feature/capability under test may or may not be supported in relevant O-Cloud interface specification. The status of test if conditional (mandatory, optional), if the support of function/feature/capability under test depends on other items defined in relevant O- Cloud interface specification.

Table 1.1-1 lists the test scenarios and requirement regarding the O-Cloud Notification API.

**Table 4.2.1-1: List of O-RAN O-Cloud Notification API Test Scenarios and Status**

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Test Number** | **Test Requirement** | **Test Description** |
| 5.3.1 | CONDITIONAL MANDATORY | Create a subscription for event notifications |
| 5.3.2 | CONDITIONAL MANDATORY | Query the list of subscriptions for event notifications |
| 5.3.3 | CONDITIONAL MANDATORY | Query the detail of a subscription |
| 5.3.4 | CONDITIONAL MANDATORY | Delete a subscription of event notifications |
| 5.3.5 | CONDITIONAL MANDATORY | Send event notification and sanity check |
| 5.3.6 | CONDITIONAL MANDATORY | Pull event information |

</div>

Regarding the O-Cloud Notification API test scenarios, tests 5.3.1, 5.3.2, 5.3.3, 5.3.4 and 5.3.5 are for push mode notification only, while test 5.3.6 is for pull mode. Either mode shall be tested to verify an implementation of the O-Cloud Notification API complies with the O-Cloud specification.

Table 1.1-2 lists the test scenarios and requirements regarding the O-Cloud O2ims.

**Table 4.2.1-2: List of O-RAN O-Cloud O2ims Test Scenarios and Status**

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Test Number** | **Test Requirement** | **Test Description** |
| 7.3.1 | MANDATORY | Available Notification |
| 7.3.2 | MANDATORY | Query inventory with correct token  (positive case) |
| 7.3.3 | MANDATORY | Subscribe and receive O2ims inventory changes notification  (positive case) |
| 7.3.4 | MANDATORY | Create, query alarmSubscription and receive alarm notification  (positive case) |
| 7.3.5 | MANDATORY | Deliver O-Cloud Available notification(general aspects) |
| 7.3.6 | MANDATORY | Requests with unsupported method to O2ims APIs  (negative case) |
| 7.3.7 | MANDATORY | Requests with incorrect data to O2ims APIs  (negative case) |
| 7.3.8 | MANDATORY | Requests with incorrect token to O2ims APIs  (negative case) |
| 7.3.9 | MANDATORY | Requests with incorrect APIs to O2ims APIs  (negative case) |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Test Number** | **Test Requirement** | **Test Description** |
| 7.3.10 | MANDATORY | Get O2dms (in Kubernetes native API Profile) access information  (positive case) |
| 7.3.11 | MANDATORY | Requests with junk/unsupported data to O2ims APIs  (negative case) |
| 7.3.12 | MANDATORY | Requests with wrong data to O2ims APIs  (negative case) |

</div>

Table 1.1-3 lists the test scenarios and requirements regarding the O-Cloud O2dms ETSI NFV profile.

**Table 4.2.1-3: List of O-RAN O-Cloud O2dms ETSI NFV profile Test Scenarios and Status**

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Test Number** | **Test Requirement** | **Test Description** |
| 7.4.2.3 | MANDATORY | Service operations (lifecycle, fault, performance) |
| 7.4.2.4 | MANDATORY | O2dms\_DeploymentLifecycle Service API |
| 7.4.2.5 | MANDATORY | O2dms\_Fault Service API |
| 7.4.2.6 | MANDATORY | Performance Service API |

</div>

NOTE: The present document version does not list the test scenarios and requirements regarding the O-Cloud O2dms Kubernetes profile, as corresponding test descriptions are not available in from the referenced documentation.

# References

## Normative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following referenced documents are necessary for the application of the present document.

1. O-RAN.WG6.ORCH-USE-CASES: "Cloudification and Orchestration Use Cases and Requirements for O- RAN Virtualized RAN".
2. O-RAN.WG6.O-Cloud Notification API-v02.01: "O-Cloud Notification API Specification for Event Consumers".
3. O-RAN. WG4.CUS.0-v08.00: "O-RAN Working Group 4 (Open Fronthaul Interfaces WG) Control, User and Synchronization Plane Specification".
4. O-RAN.WG6.O2DMS-INTERFACE-ETSI-NFV-PROFILE-v08.00: "O-RAN Working Group 6; O2dms

Interface Specification: Profile based on ETSI NFV Protocol and Data Models"

1. ETSI GS NFV-SOL 003 V4.5.1: "Network Functions Virtualisation (NFV) Release 4; Protocols and Data Models; RESTful protocols specification for the Or-Vnfm Reference Point".
2. ETSI GS NFV-TST 010 V4.5.1: "Network Functions Virtualisation (NFV) Release 4; Testing; API Conformance Testing Specification"
3. O-RAN.WG6.O2IMS-INTERFACE: "O-RAN Working Group 6 O2ims Interface Specification"
4. NFV API Conformance Test Specification: [https://forge.etsi.org/rep/nfv/api-tests/-/wikis/NFV-API-](https://forge.etsi.org/rep/nfv/api-tests/-/wikis/NFV-API-Conformance-Test-Specification)

[Conformance-Test-Specification](https://forge.etsi.org/rep/nfv/api-tests/-/wikis/NFV-API-Conformance-Test-Specification)

1. O-RAN.WG1.OAD-R003-v11.00: "O-RAN Work Group 1 (Use Cases and Overall Architecture) O-RAN Architecture Description"

## Informative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following referenced documents are not necessary for the application of the present document, but they assist the user with regard to a particular subject area.

[i.1] 3GPP TR 21.905, Vocabulary for 3GPP Specifications.

[i.2] O-RAN.WG6 CAD: "Cloud Architecture and Deployment Scenarios for O-RAN Virtualized RAN".

# Definition of terms, symbols and abbreviations

## Terms

For the purposes of the present document, the terms and definitions given in 3GPP TR 21.905 [i.1] and the following apply. A term defined in the present document takes precedence over the definition of the same term, if any, in 3GPP TR 21.905 [i.1].

**O-Cloud** This refers to a collection of O-Cloud Resource Pools at one or more location and the software to manage Nodes and Deployments hosted on them. An O- Cloud will include functionality to support both Deployment-plane and Management services. The O-Cloud provides a single logical reference point for all O-Cloud Resource Pools within the O-Cloud boundary.

**O-DU** O-RAN Distributed Unit-a logical node hosting RLC/MAC/High-PHY layers based on a lower layer functional split.

**O-RU** O-RAN Radio Unit-a logical node hosting Low-PHY layer and RF processing based on a lower layer functional split. This is similar to 3GPP's "TRP" or "RRH", but more specific in including the Low-PHY layer (FFT/iFFT, PRACH extraction).

## Abbreviations

For the purposes of this document, the abbreviations given in 3GPP TR 21.905 [i.1] and the following apply.

An abbreviation defined in the present document takes precedence over the definition of the same abbreviation, if any, in 3GPP TR 21.905 [i.1].

3GPP Third Generation Partnership Project

AAL Acceleration Abstraction Layer

API Application Programming Interface

CNF Cloud-Native Network Function

CPU Central Processing Unit

EC Event Producer

EP Event Consumer

FFT Fast Fourier Transform

HW Hardware

IMS Infrastructure Management Services

IRQ Interrupt ReQuest

NF Network Function

O-Cloud O-RAN Cloud Platform

O-CU O-RAN Centralized Unit

O-DU O-RAN Distributed Unit

O-RU O-RAN Radio Unit

OS Operating System

RAN Radio Access Network

RIC RAN Intelligent Controller

SMO Service Management and Orchestration SR-IOV Single Root Input/ Output Virtualization

SUT System Under Test

TS Technical Specification

vCPU Virtual CPU

VM Virtual Machine

VNF Virtualized Network Function

WG Working Group

# Testing methodology

## System under test

SUT refers to 3GPP TR [i.2] and O-RAN.WG1.OAD [9]. The main architecture components and interfaces/APIs for the O-Cloud platform software can be found in Figure 4.1-1.

![]({{site.baseurl}}/assets/images/bd6456c981f9.png)

#### Figure 4.1-1: The overview of O-Cloud Interface test

For the Cloud platform, different technologies may be used by cloud vendors, [i.2] such as:

* VMs only,
* Containers only,
* Containers in VMs,
* both VMs and Containers, OR
* other new technologies

so, the O-Cloud should be tested exactly based on the technology used. Cases applied to each technology are listed in the Annex A.

SUT is identified by an implementation of the function under test producing or consuming the API Under Test (AUT) e.g. in the case of the O2DMS interface the function under test is O-Cloud implementation.

The function is tested in isolation with respect to SMO, O-RAN Network Functions and O-Cloud, to guarantee that the outcomes of the conformance tests are not result of interoperability issues with other components.

## Test method

### Testing procedure

The SUT and the test tool are set up and connected to the device in strict accordance with the preset conditions of each test case in the specification, and the test steps in the test case are performed step by step. Tester should record in detail the important test information during and after the test and compare and analyze with the expected results. Each test case is independent of each other.

### Statistics and analysis of key indicators

The test is performed based on the preset conditions and procedure in the test case. The expected test result is used as the standard to determine whether the test succeeds. If the test result is consistent with the expected result, the test is regarded as passing. Tester may record test result, such as throughput, latency, and device volume.

# O-Cloud Notification API Test

## General

O-Cloud provides a Notification Framework; it acts as the event producer and exposes APIs to event consumers. The APIs enable the consumers to subscribe event notifications, delete subscriptions, get a list of subscriptions and detail of a subscription, notification to event consumers by pull or push mode.

Event consumers can be applications (e.g. O-DU).

Refer to O-RAN.WG6.O-Cloud Notification API [2], this section describes the test cases for O- Cloud Notification APIs.

## Test Configuration

### System Under Test requirements

The SUT for the O-Cloud Notification API is the O-Cloud, which provides an O-Cloud notification event producer(EP). This allows Event consumers (EC, such as O-DU or CNF) to subscribe event notifications, delete subscriptions, get a list of subscriptions or detail of a subscription, and receive events/status from cloud infrastructures. Notification to event consumers by pull or push mode.

The test functions are the tools which simulate the workloads (applications running in the cloud) or other entities out of the cloud interested in the events.

![]({{site.baseurl}}/assets/images/86120c40c5fb.png)

#### Figure 5.2-1: Configuration of O-Cloud Notification API test

### Test Tools and Simulators capabilities

A summary of the recommended testing tools and simulators for functional testing is shown as following.

Postman: Postman is an interface testing tool. Postman is equivalent to a client, which can simulate various HTTP requests initiated by users, send the request data to the server, and obtain the corresponding response results, so as to verify whether the result data in the response matches the expected value. It is mainly used to simulate various HTTP requests (e.g. Get/POST/delete/put).

The difference between Postman and browsers is that some browsers can't output Json format, while Postman is more intuitive about the results returned by the interface. In the following test, Postman act as the event consumer, and it can also be configured to received notification from the event producer.

Curl: Curl is a command-line tool for transferring data specified with URL syntax. It can be used as the event consumer.

HTTPie: HTTPie is a command-line HTTP client with an intuitive interface, support for JSON, syntax highlighting, download functionality (like wGET), plugin support, and more. HTTPie consists of a simple HTTP command that is easy to debug and interact with HTTP servers, RESTful apis, and Web Services. It can be used as the event consumer.

## Test cases

### Create a subscription resource

* + - 1. Test Purpose

The purpose of this test case is to verify the capability to create a subscription for event notifications.

This test case is conditional, if the SUT (O-Cloud) claims to support O-Cloud Notification API, it shall support at least pull mode notification or push mode; for push mode, this case applies.

* + - 1. Test Entrance Criteria

1. The SUT supports the O-Cloud Event Notification Create subscription request.
2. The Test Simulator has the functionality to initiate Create subscription request.
   * + 1. Initial conditions
3. The simulator (acting as a workload) has started.
4. The SUT (O-Cloud) has the Notification service ready and available to receive subscription request from the Test Simulator.
   * + 1. Procedure

Step 1. Send an HTTP2 POST request from Test Simulator to SUT with the correct URI format as specified in O-RAN.WG6.O-Cloud Notification API [2] clause 4.1.2 containing the JSON format Subscriptioninfo as specified in O-RAN.WG6.O-Cloud Notification API [2] clause 7.1.1.1 as the message body. The message shall include an event notification request, endpointUri and ResourceAddress.

Step 2. At the Test Simulator the received HTTP2 response is recorded.

* + - 1. Expected Results

The test is considered passed if

1. The return code is "201 OK", with Response message body content that contains a Subscriptioninfo, when the subscription request is correct and processed by the EP.
2. The return code is "400 Bad request", without message body, when the subscription request is not correct.
3. The return code is "404 Not found", without message body, when the subscription resource is not available.
4. The return code is "409 Conflict", without message body, when the subscription resource already exists.

### Get a list of subscription resources

* + - 1. Test Purpose

The purpose of this test case is to verify the capability to query the list of subscriptions for event notifications from event consumers.

This test case is conditional: if the SUT (O-Cloud) claims to support O-Cloud Notification API, it shall support at least pull mode notification or push mode; for push mode, this case applies.

* + - 1. Test Entrance Criteria

1. The SUT supports the O-Cloud Event Notification subscription resources create and query requests.
2. The Test Simulator has the functionality to initiate Query subscription resources request.
   * + 1. Initial conditions
3. The simulator (acting as a workload has started.
4. The SUT (O-Cloud) has the Notification service ready and available to receive subscription resources query request from the Test Simulator.
   * + 1. Procedure

Step 1. Send an HTTP2 GET request from Test Simulator to SUT with the correct URI format as specified in O-RAN.WG6.O-Cloud Notification API [2] clause 4.1.2.

Step 2. At the Test Simulator the received HTTP2 response is recorded.

* + - 1. Expected Results

The test is considered passed if

1. The return code is "200 OK", with Response message body content containing an array of Subscriptioninfo.
2. The return code is "400 Bad request", without message body, when the query request is not correct.

### Get Detail of individual subscription resource

* + - 1. Test Purpose

The purpose of this test case is to verify the capability to query the detail of a subscription from event consumers.

This test case is conditional: if the SUT (O-Cloud) claims to support O-Cloud Notification API, it shall support at least pull mode notification or push mode; for push mode, this case applies.

* + - 1. Test Entrance Criteria

1. The SUT supports the O-Cloud Event Notification subscription resources create (Chapter 7.3) and query request, and supports query to an individual subscription resource.
2. The Test Simulator has the functionality to initiate subscription query request.
   * + 1. Initial conditions
3. The simulator (acting as a workload) has started.
4. The SUT (O-Cloud) has the Notification service ready and available to receive query request from the Test Simulator.
   * + 1. Procedure

Step 1. Send an HTTP2 POST request from Test Simulator to SUT with the correct URI format as specified in O-RAN.WG6.O-Cloud Notification API [2] clause 4.1.3.

Step 2. At the Test Simulator the received HTTP2 response is recorded.

* + - 1. Expected Results

The test is considered passed if

1. The return code is "200 OK", with Response message body content containing a Subscriptioninfo.
2. The return code is "404 Not found", without message body, when the subscription resource is not available (not created).

### Delete individual subscription resources

* + - 1. Test Purpose

The purpose of this test case is to verify the capability to delete a subscription of event notifications.

This test case is conditional: if the SUT (O-Cloud) claims to support O-Cloud Notification API, it shall support at least pull mode notification or push mode; for push mode, this case applies.

* + - 1. Test Entrance Criteria

1. The SUT supports the O-Cloud Event Notification resources create (Chapter 7.3) and query request, and supports delete an individual subscription resource request.
2. The Test Simulator has the functionality to initiate delete a subscription resource.
   * + 1. Initial conditions
3. The simulator (acting as a workload) has started.
4. The SUT (O-Cloud) has the Notification service ready and available to receive delete request from the Test Simulator.
   * + 1. Procedure

Step 1. Send an HTTP2 DELETE request from Test Simulator to SUT with the correct URI format as specified in O-RAN.WG6.O-Cloud Notification API [2] clause 4.1.3.

Step 2. At the Test Simulator the received HTTP2 response is recorded.

* + - 1. Expected Results

The test is considered passed if

1) The return code is "204 DELETE".

### Event notification and Notification sanity check

* + - 1. Test Purpose

The purpose of this test case is to verify the capability of event notification to an event consumer.

This test case is conditional. If the SUT (O-Cloud) claims to support O-Cloud Notification API, it shall support at least pull mode notification or push mode; for push mode, this case applies.

* + - 1. Test Entrance Criteria

1. The SUT supports the O-Cloud Event Notification subscription and query (Chapter 7.3 and 7.4).
2. The Test Simulator has the functionality to receive the event notification.
   * + 1. Initial conditions
3. The simulator (acting as a workload) has started.
4. The SUT (O-Cloud) has the Notification service ready and has accepted subscription request from the Test Simulator.
5. The resources state change or event can be tracked by SUT(O-Cloud).
   * + 1. Procedure

Step 1. Send an HTTP2 POST request from SUT to the Test Simulator with the EC's URI format as specified in O-RAN.WG6.O-Cloud Notification API [2] clause 5.1.1 containing the JSON format Event as specified in O-RAN.WG6.O-Cloud Notification API [2] clause 7.2 as the message body.

Step 2. At the SUT the received HTTP2 response is recorded.

* + - 1. Expected results

The test is considered passed if

1. The return code is "204 Success".
2. The return code is "400 Bad Request", without message body, when the request is not correct.
3. The return code is "404 Not Found", without message body, when the URI is not available.
4. The return code is "408 Request Timeout", without message body, when the subscription resource is already existing. (Not applicable for sanity check)

### Event pull status notification

* + - 1. Test Purpose

The purpose of this test case is to verify the capability of pulling of the event from an event consumer.

This test case is conditional if the SUT (O-Cloud) claims to support O-Cloud Notification API. it shall support at least pull mode notification or push mode; for pull mode, this case applies.

* + - 1. Test Entrance Criteria

1. The SUT supports the O-Cloud Event Notification subscription and pull request (Chapter 7.3).
2. The Test Simulator has the functionality to initiate pull request to the resource status.
   * + 1. Initial conditions
3. The simulator (acting as a workload) has started.
4. The SUT (O-Cloud) has the Notification service ready and has accept the subscription request from the Test Simulator.
   * + 1. Procedure

Step 1. Send an HTTP2 GET request from Test Simulator to SUT with the correct URI format as specified in O-RAN.WG6.O-Cloud Notification API [2] clause 6.1.1.

Step 2. At the Test Simulator the received HTTP2 response is recorded.

* + - 1. Expected results

The test is considered passed if

1. The return code is "200 OK".
2. The return code is "404 Not Found", when event notification resource is not available on this node.

# AAL API Test

This is FFS.

# O2 Interface Test

## General

The O2 interface test validates that the O-Cloud exposes O2 interfaces which should be fully compliant to latest published O2 Interface Specifications.

## Test Configuration

### System Under Test requirements

The SUT for O2 interface test is an O-Cloud with O2 Services to expose O-RAN O2 interfaces toward SMO.

### Test Tools capabilities

A summary of the tools for functional testing is shown below:

Test Tool: The entity used to simulate SMO to issue O2 API request towards the O-Cloud, e.g., A set of test scripts implemented by [Robot Framework](http://www.robotframework.org/) which execute Test Cases specified in the O2 interface test section.

Robot: Robot Framework is a generic test automation framework for acceptance testing and acceptance test-driven development. It is a keyword-driven testing framework that uses tabular test data syntax.

* + - 1. O2 IMS Test Tools capabilities

Tool simulates SMO to expose API endpoints for O-Clouds to deliver Notifications from O-Cloud to SMO, e.g., An instance of [mock server](https://www.mock-server.com/) with provisions to accept API calls from O-Cloud upon notification delivery. As below example endpoints include:

O-Cloud registration API Endpoint:

${SMO\_ENDPOINT}/mock\_smo/v1/O-cloud\_observer O-Cloud Inventory Changes Notification API Endpoint:

${SMO\_ENDPOINT}/mock\_smo/v1/o2ims\_inventory\_observer O-Cloud Alarm Changes Notification API Endpoint:

${SMO\_ENDPOINT}/mock\_smo/v1/o2ims\_alarm\_observer

* + - 1. O2 DMS Test Tools capabilities

For the test for O2 DMS ETSI NFV Profile [4], it is recommended to use Robot Framework as described in [8].

## O2 IMS Test

### O-Cloud succeeds to deliver O-Cloud Available Notification to SMO.

* + - 1. Test Purpose

The purpose of this test case is to verify O-Cloud can deliver O-Cloud Available Notification to SMO successfully.

* + - 1. Initial conditions

The Test Tool is running and exposing valid endpoint for O-Cloud to deliver O-Cloud Available notification.

* + - 1. Procedure

Step 1. Bring up O-Cloud with O2 IMS service by provisioning valid API endpoint of Test Tool, for example: ${SMO\_ENDPOINT}/mock\_smo/v1/O-cloud\_observer and globalO-cloudId assigned for this O-Cloud;

Step 2. Check if Test Tool received valid O-Cloud Available Notification from O-Cloud via the SMO endpoint.

* + - 1. Expected Results

The test is considered passed if

Step1. O-Cloud with O2 Service finished deployment.

Step2. The Test Tool O-Cloud registration Endpoint receives notification, for example:

${SMO\_ENDPOINT}/mock\_smo/v1/O-cloud\_observer received O-Cloud Available Notification from O2 IMS services with content compliant to [7] section '3.6.5.1.1 O-Cloud Available Notification Description'.

### SMO succeeds to query inventory with correct token

* + - 1. Test Purpose

The purpose of this test case is to verify SMO succeeds to query O-Cloud O2ims inventory resources after O-Cloud succeeds in delivering O-Cloud Available notification to SMO.

* + - 1. Initial conditions

1. The Test Tool received O-Cloud Available Notification from O-Cloud.
2. Test Tool is provided with ${O2ims-endpoint} by extracting it from O-Cloud Available Notification.
3. Test Tool is provided with valid ${O2ims-api-token} (by extracting it from O-Cloud Available Notification or some other way).
   * + 1. Procedure

Step 1. With valid ${O2ims-api-token}, Test Tool queries O-Cloud detail via API: GET ${O2ims- endpoint}/o2ims-infrastructureInventory/v1.

Step 2. With valid ${O2ims-api-token}, Test Tool queries resource type list without filter via API: GET ${O2ims-endpoint}/o2ims-infrastructureInventory/v1/resourceTypes.

Step 3. With valid ${O2ims-api-token}, Test Tool queries resource type list with filter (e.g., filter by resource type with name: pserver) via API:

${O2ims-endpoint}/o2ims-infrastructureInventory/v1/resourceTypes?filter=(eq,name,pserver)

Step 4. With valid ${O2ims-api-token}, Test Tool to query resource type list with selector (e.g., all\_fields) via API:

${O2ims-endpoint}/o2ims-infrastructureInventory/v1/resourceTypes?all\_fields

Step 5. With valid ${O2ims-api-token}, Test Tool queries resource type detail with a valid

${resource\_type\_id} via API:

${O2ims-endpoint}/o2ims-infrastructureInventory/v1/resourceTypes/${resource\_type\_id}

Step 6. With valid ${O2ims-api-token}, Test Tool queries Resource Pool list without filter via API:

${O2ims-endpoint}/o2ims-infrastructureInventory/v1/resourcePools

Step 7. With valid ${O2ims-api-token}, Test Tool queries Resource Pool list with filter (e.g., filter by a valid ${resourcePoolId}) via API:

${O2ims-endpoint}/o2ims- infrastructureInventory/v1/resourcePools?filter=(eq,resourcePoolId,${resourcePoolId})

Step 8. With valid ${O2ims-api-token}, Test Tool queries Resource Pool list with selector via API:

${O2ims-endpoint}/o2ims-infrastructureInventory/v1/resourcePools?all\_fields

Step 9. With valid ${O2ims-api-token}, Test Tool queries Resource Pool detail via API:

${O2ims-endpoint}/o2ims-infrastructureInventory/v1/resourcePools/${resourcePoolId}

Step 10. With valid ${O2ims-api-token}, Test Tool queries Resource list of a Resource Pool without filter via API: GET ${O2ims-endpoint}/o2ims- infrastructureInventory/v1/resourcePools/${resourcePoolId}/resources

Step 11. With valid ${O2ims-api-token}, Test Tool queries Resource list of a Resource Pool with filter via API: GET ${O2ims-endpoint}/o2ims- infrastructureInventory/v1/resourcePools/${resourcePoolId}/resources?filter=(eq,resourceTypeId,$

{resourceTypeId})

Step 12. With valid ${O2ims-api-token}, Test Tool to query Resource list of a Resource Pool with selector via API: GET ${O2ims-endpoint}/o2ims- infrastructureInventory/v1/resourcePools/${resourcePoolId}/resources?all\_fields

Step 13. With valid ${O2ims-api-token}, Test Tool queries Resource detail via API: GET ${O2ims- endpoint}/o2ims- infrastructureInventory/v1/resourcePools/${resourcePoolId}/resources/${resourceId}

* + - 1. Expected Results

The test is considered passed if

1. Step 1 API response status code should be 200, and response data is compliant to [7] section '3.2.6.2.6 Type: CloudInfo'.
2. Step 2 API response status code should be 200, and response data is compliant to [7] section '3.2.6.2.2 Type: ResourceTypeInfo'.
3. Step 3 API response status code should be 200, and response data is compliant to [7] section '3.2.6.2.2 Type: ResourceTypeInfo'.
4. Step 4 API response status code should be 200, and response data is compliant to [7] section '3.2.6.2.2 Type: ResourceTypeInfo'.
5. Step 5 API response status code should be 200, and response data is compliant to [7] section '3.2.6.2.2 Type: ResourceTypeInfo'.
6. Step 6 API response status code should be 200, and response data is compliant to [7] section '3.2.6.2.3 Type: ResourcePoolInfo'.
7. Step 7 API response status code should be 200, and response data is compliant to [7] section '3.2.6.2.3 Type: ResourcePoolInfo'.
8. Step 8 API response status code should be 200, and response data is compliant to [7] section '3.2.6.2.3 Type: ResourcePoolInfo'.
9. Step 9 API response status code should be 200, and response data is compliant to [7] section '3.2.6.2.3 Type: ResourcePoolInfo'.
10. Step 10 API response status code should be 200, and response data is compliant to [7] section '3.2.6.2.4 ResourceInfo'.
11. Step 11 API response status code should be 200, and response data is compliant to [7] section '3.2.6.2.4 ResourceInfo'.
12. Step 12 API response status code should be 200, and response data is compliant to [7] section '3.2.6.2.4 ResourceInfo'.
13. Step 13 API response status code should be 200, and response data is compliant to [7] section '3.2.6.2.4 ResourceInfo'.

### SMO succeeds to subscribe for O2ims inventory changes notification and succeeds to receive notifications.

* + - 1. Test Purpose

The purpose of this test case is to verify that after O-Cloud succeeds to deliver O-Cloud Available Notification to SMO, SMO succeeds to subscribe to O-Cloud O2ims inventory changes notification, and SMO succeeds to receive notification when o2ims inventory changes.

* + - 1. Initial conditions

1. The Test Tool received O-Cloud Available Notification from O-Cloud.
2. Test Tool is provided with ${O2ims-endpoint} by extracting it from O-Cloud Available Notification.
3. Test Tool is provided with valid ${O2ims-api-token} (by extracting it from O-Cloud Available Notification or some other way).
   * + 1. Procedure

Step 1. With valid ${O2ims-api-token}, Test Tool create a subscription via API: POST ${O2ims- endpoint}/o2ims-infrastructureInventory/v1/subscriptions, the call back field as example:

${SMO\_ENDPOINT}/mock\_smo/v1/o2ims\_inventory\_observer

Step 2. With valid ${O2ims-api-token}, Test Tool queries subscription list without filter via API: GET ${O2ims-endpoint}/o2ims-infrastructureInventory/v1/subscriptions

Step 3. With valid ${O2ims-api-token}, Test Tool queries subscription list with filter (e.g., filter by a valid ${subscriptionId}) via API: GET ${O2ims-endpoint}/o2ims- infrastructureInventory/v1/subscriptions?filter=(eq,subscriptionId,${subscriptionId})

Step 4. With valid ${O2ims-api-token}, Test Tool queries a subscription detail via API: GET

${O2ims-endpoint}/o2ims-infrastructureInventory/v1/subscriptions/${subscriptionId}

Step 5. Trigger O2IMS inventory changes from O-Cloud side and observe the Test Tool receiving notification of this O2IMS inventory change.

Step 6. With valid ${O2ims-api-token}, Test Tool delete a subscription via API: DELETE ${O2ims- endpoint}/o2ims-infrastructureInventory/v1/subscriptions/${subscriptionId}

* + - 1. Expected Results

The test is considered passed if

1. Step 1 API response status code should be 201, and response data is compliant to [7] section '3.2.4.11.3.1-2 InventorySubscriptionInfo'.
2. Step 2 API response status code should be 200, and response data is compliant to [7] section '3.2.4.11.3.2 GET'
3. Step 3 API response status code should be 200, and response data is compliant to [7] section '3.2.4.11.3.2 GET'
4. Step 4 API response status code should be 200, and response data is compliant to [7] section '3.2.4.12.2 Resource definition'
5. Step 5 Test Tool O-Cloud Inventory changes Notification API Endpoint, for example:

${SMO\_ENDPOINT}/mock\_smo/v1/o2ims\_inventory\_observer

received the notification upon o2ims inventory change, and response data is compliant to [7] section '3.2.5.1.1 Inventory Change Notification Description'

1. Step6. The API response status should be 200, and the response data is compliant with [7] section '3.2.4.12.3.5 DELETE'.

### SMO succeeds to create alarmSubscription, receive alarm notification, and query alarm list.

* + - 1. Test Purpose

After O-Cloud succeeds deliver O-Cloud Available notification to SMO, SMO succeeds to subscribe for notification of alarm changes notification, and SMO succeeds to query alarm list and detail, and acknowledge alarm.

* + - 1. Initial conditions

1. The Test Tool received O-Cloud Available Notification from O-Cloud.
2. Test Tool is provided with ${O2ims-endpoint} by extracting it from O-Cloud Available Notification.
3. Test Tool is provided with valid ${O2ims-api-token} (by extracting it from O-Cloud Available Notification or some other way).
   * + 1. Procedure

Step 1. With valid ${O2ims-api-token}, Test Tool creates an alarmSubscription for receiving alarm changes notification via API: POST ${O2ims-endpoint}/o2ims- infrastructureMonitoring/v1/alarmSubscriptions, the call back field as example:

${SMO\_ENDPOINT}/mock\_smo/v1/o2ims\_alarm\_observer

Step 2. With valid ${O2ims-api-token}, Test Tool queries alarmSubscription list via API: GET

${O2ims-endpoint}/o2ims-infrastructureMonitoring/v1/alarmSubscriptions

Step 3. With valid ${O2ims-api-token}, Test Tool queries alarmSubscription details with alarmSubscriptionId via API: GET ${O2ims-endpoint}/o2ims- infrastructureMonitoring/v1/alarmSubscriptions/${alarmSubscriptionId}

Step 4. Trigger alarm change on O-Cloud side.

Step 5. With valid ${O2ims-api-token}, Test Tool queries alarm list via API: GET ${O2ims- endpoint}/o2ims-infrastructureMonitoring/v1/alarms

Step 6. With valid ${O2ims-api-token}, Test Tool queries alarm list with filter via API: GET

${O2ims-endpoint}/o2ims- infrastructureMonitoring/v1/alarms?filter=(eq,resourceTypeId,${resourceTypeId})

Step 7. With valid ${O2ims-api-token}, Test Tool queries alarm list with selector via API: GET

${O2ims-endpoint}/o2ims-infrastructureMonitoring/v1/alarms?all\_fields

Step 8. With valid ${O2ims-api-token}, Test Tool queries alarm detail with alarmEventRecordId via API: GET ${O2ims-endpoint}/o2ims-infrastructureMonitoring/v1/alarms/${alarmEventRecordId}

Step 9. With valid ${O2ims-api-token}, Test Tool acknowledge alarm with alarmEventRecordId via API: PATCH ${O2ims-endpoint}/o2ims- infrastructureMonitoring/v1/alarms/${alarmEventRecordId}

Step 10. With valid ${O2ims-api-token}, Test Tool deletes alarmSubscription with alarmSubscriptionId via API: DELETE

${O2ims-endpoint}/o2ims- infrastructureMonitoring/v1/alarmSubscriptions/${alarmSubscriptionId}

Step 11. Trigger alarm change on O-Cloud side.

* + - 1. Expected Results

The test is considered passed if

1. Step 1 API response status code should be 201, and response data is compliant to [7] section '3.3.4.4.3.1 POST'.
2. Step 2 API response status code should be 200, and response data is compliant to [7] section '3.3.4.4.3.2 GET'.
3. Step 3 API response status code should be 200, and response data is compliant to [7] section '3.3.4.4.3.2 GET'.
4. Step 4 Test Tool O-Cloud Alarm Changes Notification API Endpoint, for example:

${SMO\_ENDPOINT}/mock\_smo/v1/o2ims\_alarm\_observer

succeeds receiving alarm change notification, and alarm change notification data is compliant to [7] section '3.3.5.1.1 Alarm Change Notification Description'.

1. Step 5 API response status code should be 200, and response data is compliant to [7] section '3.3.4.2.3.2 GET'.
2. Step 6 API response status code should be 200, and response data is compliant to [7] section '3.3.6.2.2 Type: AlarmEventRecord'.
3. Step 7 API response status code should be 200, and response data is compliant to [7] section '3.3.6.2.2 Type: AlarmEventRecord'.
4. Step 8 API response status code should be 200, and response data is compliant to [7] section '3.3.6.2.2 Type: AlarmEventRecord'.
5. Step 9 API response status code should be 200, and response data is compliant to [7] section '3.3.6.2.4 Type: AlarmEventRecordModifications'.
6. Step 10 API response status code should be 200, and response data is compliant to [7] section '3.3.4.5.3.5 Delete'.
7. Step 11 Observe the Test Tool does not receive alarm change notification anymore.

### Verify general aspects of O2ims API.

* + - 1. Test Purpose

The purpose of this test case is to verify that after O-Cloud succeeds to deliver O-Cloud Available notification to SMO, SMO succeeds to issue API requests complying to '3.1.2 URI structure and supported content formats.

* + - 1. Initial conditions

1. The Test Tool received O-Cloud Available Notification from O-Cloud.
2. Test Tool is provided with ${O2ims-endpoint} by extracting it from O-Cloud Available Notification.
3. Test Tool is provided with valid ${O2ims-api-token} (by extracting it from O-Cloud Available Notification or some other way).
   * + 1. Procedure

Step 1. With valid ${O2ims-api-token}, Test Tool queries ApiVersionInformation of o2ims infrastructureInventory services via API: GET ${O2ims-endpoint}/o2ims- infrastructureInventory/api\_versions

Step 2. With valid ${O2ims-api-token}, Test Tool queries ApiVersionInformation of o2ims infrastructureMonitoring service via API: GET ${O2ims-endpoint}/o2ims- infrastructureMonitoring/api\_versions

Step 3. With valid ${O2ims-api-token}, Test Tool queries Resources with nextpage\_opaque\_marker via API: GET ${O2ims-endpoint}/o2ims- infrastructureInventory/v1/resourcePools/${resourcePoolId}/resources?nextpage\_opaque\_marker=2

Step 4. With valid ${O2ims-api-token}, Test Tool queries resource with filter with below APIs

${O2ims-endpoint}/o2ims- infrastructureInventory/v1/resourcePools/${resourcePoolId}/resources?filter=(eq,resourceId,${reso urceId})

${O2ims-endpoint}/o2ims- infrastructureInventory/v1/resourcePools/${resourcePoolId}/resources?filter=(neq,resourceId,${res ourceId})

${O2ims-endpoint}/o2ims- infrastructureInventory/v1/resourceTypes?filter=(cont,description,Ethernet)

${O2ims-endpoint}/o2ims- infrastructureInventory/v1/resourceTypes?filter=(ncont,description,Ethernet)

${O2ims-endpoint}/o2ims- infrastructureInventory/v1/resourceTypes?filter=(in,name,pserver,pserver\_if,pserver\_mem)

${O2ims-endpoint}/o2ims- infrastructureInventory/v1/resourceTypes?filter=(nin,name,pserver,pserver\_if,pserver\_mem)

Step 5. With valid ${O2ims-api-token}, Test Tool queries resources with attribute selector via API: GET

${O2ims-endpoint}/o2ims-infrastructureInventory/v1/resourceTypes?all\_fields

${O2ims-endpoint}/o2ims-infrastructureInventory/v1/resourceTypes?fields=extensions

${O2ims-endpoint}/o2ims-infrastructureInventory/v1/resourceTypes?exclude\_fields=extensions

${O2ims-endpoint}/o2ims-infrastructureInventory/v1/resourceTypes?exclude\_default

* + - 1. Expected Results

The test is considered passed if

1. Step 1. API response status code should be 200, and response data is compliant to [7] section '3.1.6.1.6 Type: ApiVersionInformation'.
2. Step 2. API response status code should be 200, and response data is compliant to [7] section '3.1.6.1.6 Type: ApiVersionInformation'.
3. Step 3. API response status code should be 200, and response data is compliant to [7] section '3.1.6.2.2 Simple Data Types'.
4. Step 4. API response status code should be 200, and response data is compliant to [7] section '3.1.4.3 Handling of large query results'.
5. Step 5. API response status code should be 200, and response data is compliant to [7] section '3.1.4.3 Handling of large query results'.

### SMO gets 405 while sending O2ims APIs with unsupported method.

* + - 1. Test Purpose

The purpose of this test case is to verify that after O-Cloud succeeds to deliver O-Cloud Available notification to SMO, SMO gets 405 responses while issuing API requests with unsupported method.

* + - 1. Initial conditions

1. The Test Tool received O-Cloud Available Notification from O-Cloud.
2. Test Tool is provided with ${O2ims-endpoint} by extracting it from O-Cloud Available Notification.
3. Test Tool is provided with valid ${O2ims-api-token} (by extracting it from O-Cloud Available Notification or some other way).
   * + 1. Procedure

Step 1. With valid ${O2ims-api-token}, Test Tool issues API request with unsupported method to operate resourceTypes via API: POST ${O2ims-endpoint}/o2ims- infrastructureInventory/v1/resourceTypes

Step 2. With valid ${O2ims-api-token}, Test Tool issues API request with unsupported method to operate resourcePool via API: POST ${O2ims-endpoint}/o2ims- infrastructureInventory/v1/resourcePools

Step 3. With valid ${O2ims-api-token}, Test Tool issues API request with unsupported method to operate resource via API: POST ${O2ims-endpoint}/o2ims- infrastructureInventory/v1/resourcePools/${resourcePoolId}/resources

Step 4. With valid ${O2ims-api-token}, Test Tool issues API request with unsupported method to operate DeploymentManager via API: POST ${O2ims-endpoint}/o2ims- infrastructureInventory/v1/deploymentManagers

Step 5. With valid ${O2ims-api-token}, Test Tool issues API request with unsupported method to operate O-cloud via API: POST ${O2ims-endpoint}/o2ims-infrastructureInventory/v1/

Step 6. With valid ${O2ims-api-token}, Test Tool issues API request with unsupported method to operate Inventory Subscription via API: PATCH ${O2ims-endpoint}/o2ims- infrastructureInventory/v1/subscriptions

Step 7. With valid ${O2ims-api-token}, Test Tool issues API request with unsupported method to operate Alarm via API: POST ${O2ims-endpoint}/o2ims-infrastructureInventory/v1/alarms

Step 8. With valid ${O2ims-api-token}, Test Tool issues API request with unsupported method to operate Alarm Subscription via API: PATCH ${O2ims-endpoint}/o2ims- infrastructureMonitoring/v1/alarmSubscriptions

* + - 1. Expected Results

The test is considered passed if

1. Step 1 API response status code should be 405, and response data is compliant to [7] section '3.2.4.2.3.1, 3.2.4.2.3.3, 3.2.4.2.3.4, 3.2.4.2.3.5.'.
2. Step 2 API response status code should be 405, and response data is compliant to [7] section '3.2.4.3.3.1, 3.2.4.3.3.3, 3.2.4.3.3.4, 3.2.4.3.3.5'.
3. Step 3 API response status code should be 405, and response data is compliant to [7] section '3.2.4.4.3.1, 3.2.4.4.3.3, 3.2.4.4.3.4, 3.2.4.4.3.5'.
4. Step 4 API response status code should be 405, and response data is compliant to [7] section '3.2.4.5.3.1, 3.2.4.5.3.3, 3.2.4.5.3.4, 3.2.4.5.3.5'.
5. Step 5 API response status code should be 405, and response data is compliant to [7] section '3.2.4.6.3.1, 3.2.4.6.3.3, 3.2.4.6.3.4, 3.2.4.6.3.5'.
6. Step 6 API response status code should be 405, and response data is compliant to [7] section '3.2.4.7.3.1, 3.2.4.7.3.3, 3.2.4.7.3.4, 3.2.4.7.3.5'.
7. Step 7 API response status code should be 405, and response data is compliant to [7] section '3.2.4.8.3.1, 3.2.4.8.3.3, 3.2.4.8.3.4, 3.2.4.8.3.5'.
8. Step 8 API response status code should be 405, and response data is compliant to [7] section '3.2.4.9.3.1, 3.2.4.9.3.3, 3.2.4.9.3.4, 3.2.4.9.3.5'.

### SMO gets 400 while issuing O2ims APIs with incorrect data.

* + - 1. Test Purpose

The purpose of this test case is to verify that after O-Cloud succeeds to deliver O-Cloud Available notification to SMO, SMO gets 400 response with Problem Details while issuing o2ims API requests with incorrect data.

* + - 1. Initial conditions

1. The Test Tool received O-Cloud Available Notification from O-Cloud
2. Test Tool is provided with ${O2ims-endpoint} by extracting it from O-Cloud Available Notification.
3. Test Tool is provided with valid ${O2ims-api-token} (by extracting it from O-Cloud Available Notification or some other way).
   * + 1. Procedure

Step 1. With valid ${O2ims-api-token}, Test Tool issues API request with incorrect data to operate resourceTypes via API: GET ${O2ims-endpoint}/o2ims- infrastructureInventory/v1/resourceTypes?filter=(eq,WrongAttrName,anyvalue)

Step 2. With valid ${O2ims-api-token}, Test Tool issues API request with incorrect data to operate resourcePool via API: GETo2ims- infrastructureInventory/v1/resourcePools?filter=(eq,WrongAttrName,anyvalue)

Step 3. With valid ${O2ims-api-token}, Test Tool issues API request with incorrect data to operate resource via API: GET ${O2ims-endpoint}/o2ims- infrastructureInventory/v1/resourcePools/${resourcePoolId}/resources?filter=(eq,WrongAttrName, anyvalue)

Step 4. With valid ${O2ims-api-token}, Test Tool issues API request with incorrect data to operate DeploymentManager via API: GET ${O2ims-endpoint}/o2ims- infrastructureInventory/v1/deploymentManagers?filter=(eq,WrongAttrName,anyvalue)

Step 5. With valid ${O2ims-api-token}, Test Tool issues API request with incorrect data to operate O-cloud via API: GET ${O2ims-endpoint}/o2ims-infrastructureInventory/v1/?fields=(O- cloudId,WrongAttrName)

Step 6. With valid ${O2ims-api-token}, Test Tool issues API request with incorrect data to operate Inventory Subscription via API: GET/o2ims/infrastructureInventory/v1/subscriptions?fields=(SubscriptionId,WrongAttrName)

Step 7. With valid ${O2ims-api-token}, Test Tool issues API request with incorrect data to operate Alarm via API: GET ${O2ims-endpoint}/o2ims- infrastructureMonitoring/v1/alarms?fields=(AlarmId,WrongAttrName)

Step 8. With valid ${O2ims-api-token}, Test Tool issues API request with incorrect data to operate Alarm Subscription via API: GET ${O2ims-endpoint}/o2ims- infrastructureMonitoring/v1/alarmSubscriptions?fields=(AlarmId,WrongAttrName)

* + - 1. Expected Results

The test is considered passed if

1. Step 1 API response status code should be 400, and response data is compliant to [7] section '3.1.5 Error reporting and 3.6.7.2 Protocol errors'.
2. Step 2 API response status code should be 400, and response data is compliant to [7] section '3.1.5 Error reporting and 3.6.7.2 Protocol errors'.
3. Step 3 API response status code should be 400, and response data is compliant to [7] section '3.6.7.3 Application errors'.
4. Step 4 API response status code should be 400, and response data is compliant to [7] section '3.6.7.2 Protocol errors,

3.6.7.3 Application errors'.

1. Step 5 API response status code should be 400, and response data is compliant to [7] section '3.6.7.2 Protocol errors ,3.6.7.3 Application errors'.
2. Step 6 API response status code should be 400, and response data is compliant to [7] section '3.6.7.2 Protocol errors ,3.6.7.3 Application errors'.
3. Step 7 API response status code should be 400, and response data is compliant to [7] section '3.6.7.2 Protocol errors,

3.6.7.3 Application errors'.

1. Step 8 API response status code should be 400, and response data is compliant to [7] section '3.6.7.2 Protocol errors ,3.6.7.3 Application errors'.

### SMO gets security error response while issuing APIs with incorrect token.

* + - 1. Test Purpose

The purpose of this test case is to verify that after O-Cloud succeeds to deliver O-Cloud Available notification to SMO, SMO gets error response while issuing API requests with incorrect token data.

* + - 1. Initial conditions

1. The Test Tool received O-Cloud Available Notification from O-Cloud
2. Test Tool is provided with ${O2ims-endpoint} by extracting it from O-Cloud Available Notification.
3. Test Tool is provided with invalid ${O2ims-api-token}.
   * + 1. Procedure

Step 1. With valid ${O2ims-api-token}, Test Tool issues API request without Authorization Bearer Token Header via API: GET ${O2ims-endpoint}/o2ims-infrastructureInventory/v1/

Step 2. With invalid ${O2ims-api-token}, Test Tool issues API request with Authorization Bearer Token Header and invalid token via API: GET ${O2ims-endpoint}/o2ims- infrastructureInventory/v1/

Step 3. With invalid ${O2ims-api-token}, Test Tool issues API request with Authorization Bearer Token Header and valid token via API: GET ${O2ims-endpoint}/o2ims-infrastructureInventory/v1/

* + - 1. Expected Results

The test is considered passed if

1. Step 1 API response status code should be 401, and response data is compliant to [7] section '3.1.7.1 Introduction'.
2. Step 2 API response status code should be 401, and response data is compliant to [7] section '3.1.7.1 Introduction'.
3. Step 3 API response status code should be 200, and response data is compliant to [7] section '3.1.7.1 Introduction'.

### SMO gets client error response while issuing requests with incorrect APIs

* + - 1. Test Purpose

The purpose of this test case is to verify that after O-Cloud succeeds to deliver O-Cloud Available notification to SMO, SMO gets correct error response while issuing request with incorrect APIs.

* + - 1. Initial conditions

1) The Test Tool has started.

* + - 1. Procedure

Step 1. With valid ${O2ims-api-token}, Test Tool queries API with wrong port via API: GET

${O2ims-endpoint}/o2ims-infrastructureInventory/v1/deploymentManagers

Step 2. With valid ${O2ims-api-token}, Test Tool queries API with wrong URL via API: GET

${O2ims-endpoint}/o2ims-infrastructureInventory/v1/deploymentManagersWrongURL

Step 3. With valid ${O2ims-api-token}, Test Tool queries API with wrong api version via API: GET

${O2ims-endpoint}/o2ims-infrastructureInventory/v2/deploymentManagers

Step 4. With valid ${O2ims-api-token}, Test Tool queries API with wrong deploymentManagerID via API: GET ${O2ims-endpoint}/o2ims-infrastructureInventory/v1/wrongDeploymentManagerID

* + - 1. Expected Results

The test is considered passed if

1. Step 1 With valid ${O2ims-api-token}, Test Tool does not receive API response.
2. Step 2 API response status code should be 404, and response data is compliant to [7] section '3.6.7.1 General,

3.6.7.3 Application errors''.

1. Step 3 API response status code should be 404, and response data is compliant to [7] section '3.6.7.1 General,

3.6.7.3 Application errors''.

1. Step 4 API response status code should be 404, and response data is compliant to [7] section '3.6.7.1 General,

3.6.7.3 Application errors''.

### SMO succeeds to get O2dms (in Kubernetes native API Profile) access information.

* + - 1. Test Purpose

The purpose of this test case is to verify SMO succeeds to query deploymentManager to extract O2dms access information after O-Cloud succeeds to deliver O-Cloud Available notification to SMO.

* + - 1. Initial conditions

1. The Test Tool received O-Cloud Available Notification from O-Cloud
2. Test Tool is provided with ${O2ims-endpoint} by extracting it from O-Cloud Available Notification.
3. Test Tool is provided with valid ${O2ims-api-token} (by extracting it from O-Cloud Available Notification or some other way).
   * + 1. Procedure

Step 1. With valid ${O2ims-api-token}, Test Tool queries deploymentManager list without filter via API: GET ${O2ims-endpoint}/o2ims-infrastructureInventory/v1/deploymentManagers

Step 2. With valid ${O2ims-api-token}, Test Tool queries deploymentManager list with filter (e.g., filter by a valid ${deploymentManagerId}) via API: GET ${O2ims-endpoint}/o2ims- infrastructureInventory/v1/deploymentManagers?filter=(eq, deploymentManagerId,

${deploymentManagerId})

Step 3. With valid ${O2ims-api-token}, Test Tool queries a deploymentManager detail via API: GET ${O2ims-endpoint}/o2ims- infrastructureInventory/v1/deploymentManagers/${deploymentManagerId}

Step 4. Extract ${k8s\_cluster\_api\_endpoint} from response data of step3, Test Tool queries Kubernetes resources with access credentials from a deploymentManager with Kubernetes API: GET ${k8s\_cluster\_api\_endpoint}/api/v1/namespaces

* + - 1. Expected Results

The test is considered passed if:

1. Step 1 API response status code should be 200, and response data is compliant to [7] section '3.2.4.9.2 Resource Definition, 3.2.4.8.3.2 Get, 3.2.4.8.2 DeploymentManagerInfo'.
2. Step 2 API response status code should be 200, and response data is compliant to [7] section '3.2.4.8.3.2 Get and

3.2.4.8.2 DeploymentManagerInfo'.

1. Step 3 API response status code should be 200, and response data is compliant to [7] section '3.2.4.8.3.2 Get and

3.2.6.2.5 DeploymentManagerInfo'.

1. Step 4 API response status code should be 200, and response data contains correct Kubernetes resources information.

### SMO gets 400 when issuing APIs with junk/unsupported data.

* + - 1. Test Purpose

The purpose of this test case is to verify that after O-Cloud succeeds to deliver O-Cloud Available notification to SMO, SMO gets 400 response with Problem Details when issuing o2ims API requests with junk/unsupported data.

* + - 1. Initial conditions

The Test Tool received O-Cloud Available Notification from O-Cloud.

Test Tool is provided with ${O2ims-endpoint} by extracting it from O-Cloud Available Notification.

Test Tool is provided with valid ${O2ims-api-token} (by extracting it from O-Cloud Available Notification or some other way).

* + - 1. Procedure

Step 1. With valid ${O2ims-api-token}, Test Tool issues API request with junk data to create inventory subscription via API: POST ${O2ims-endpoint}/o2ims- infrastructureInventory/v1/subscriptions

Step 2. With valid ${O2ims-api-token}, Test Tool issues API request with unsupported data, such as xml, to create inventory subscription via API: POST ${O2ims-endpoint}/o2ims- infrastructureInventory/v1/subscriptions

Step 3. With valid ${O2ims-api-token}, Test Tool issues API request with junk data to create alarm subscription via API: POST ${O2ims-endpoint}/o2ims- infrastructureMonitoring/v1/alarmSubscriptions

Step 4. With valid ${O2ims-api-token}, Test Tool issues API request with unsupported data, such as xml to create alarm subscription via API: POST ${O2ims-endpoint}/o2ims- infrastructureInventory/v1/alarmSubscriptions

* + - 1. Expected Results

The test is considered passed if:

1. Step 1 API response status code should be 400, and response data is compliant to [7] section '3.1.5 Error reporting and 3.6.7.2 Protocol errors'.
2. Step 2 API response status code should be 400, and response data is compliant to [7] section '3.6.7.2 Protocol errors,

3.6.7.3 Application errors'.

1. Step 3 API response status code should be 400, and response data is compliant to [7] section '3.1.5 Error reporting and 3.6.7.2 Protocol errors'.
2. Step 4 API response status code should be 400, and response data is compliant to [7] section '3.6.7.2 Protocol errors,

3.6.7.3 Application errors'.

### SMO gets 404 when issuing APIs with wrong data.

* + - 1. Test Purpose

The purpose of this test case is to verify that after O-Cloud succeeds to deliver O-Cloud Available notification to SMO, SMO gets 404 response with Problem Details when issuing o2ims API requests with wrong data.

* + - 1. Initial conditions

1. The Test Tool received O-Cloud Available Notification from O-Cloud.
2. Test Tool is provided with ${O2ims-endpoint} by extracting it from O-cloud Available Notification.
3. Test Tool is provided with valid ${O2ims-api-token} (by extracting it from O-Cloud Available Notification or some other way).
   * + 1. Procedure

Step 1. With valid ${O2ims-api-token}, Test Tool issues API request with wrong subscriptionId to delete inventory subscription via API: DELETE ${O2ims-endpoint}/o2ims- infrastructureInventory/v1/subscriptions/${subscriptionId}

Step 2. With valid ${O2ims-api-token}, Test Tool issues API request with wrong alarmSubscriptionId, to delete alarm subscription via API: DELETE ${O2ims-endpoint}/o2ims- infrastructureMonitoring/v1/alarmSubscriptions/${alarmSubscriptionId}

* + - 1. Expected Results

The test is considered passed if:

1. Step 1 API response status code should be 404, and response data is compliant to [7] section '3.1.5 Error reporting and 3.6.7.2 Protocol errors'.
2. Step 2 API response status code should be 404, and response data is compliant to [7] section '3.1.5 Error reporting and 3.6.7.2 Protocol errors'.

## O2 DMS Test

### General

Regarding the O-RAN O2dms interface, the present document version specifies the testing of the following profile specification(s):

* ETSI NFV Protocol specified by O-RAN.WG6.O2DMS-INTERFACE-ETSI-NFV-PROFILE [4].

### O2 DMS ETSI NFV Profile Test

* + - 1. Overview

For the API conformance testing of APIs specified in O-RAN.WG6.O2DMS-INTERFACE-ETSI- NFV-PROFILE [4], the following items shall apply for each test case define in each sub-clause

* The generic test description shall follow the provisions defined in clause 4.5 of ETSI GS NFV-TST 010 [6].
* The test suite for the O2DMS ETSI NFV profile API produced by the O-Cloud DMS as specified in the O- RAN.WG6.O2DMS-INTERFACE-ETSI-NFV-PROFILE [4] shall follow the provisions in Annex E and Annex F of ETSI GS NFV-TST 010 [6].

NOTE: O-RAN.WG6.O2DMS-INTERFACE-ETSI-NFV-PROFILE [4] is a profiling spec of ETSI

GS NFV-SOL 003 [5]. ETSI GS NFV-TST 010 [6] is a test spec for ETSI NFV specifications which includes ETSI GS NFV-SOL 003 [5] as test target.

* + - 1. Test configuration

For the O2 DMS ETSI NFV Profile test, the test configuration of O-Cloud DMS as producer of VNFM-defined APIs, shall follow the provisions specified in clause 4.3.1 and c4.3.3 of ETSI GS NFV-TST 010 [6], and AUT is O-Cloud DMS.

* + - 1. Test case for Service operations
         1. Lifecycle Service operations 7.4.2.3.1.1 Instantiate NF Deployment test case

In order to test Instantiate NF Deployment specified in clause 2.4.2.1 of O-RAN.WG6.O2DMS- INTERFACE-ETSI-NFV-PROFILE [4], following test specified in Annex F.7 of ETSI GS NFV- TST 010 [6] shall be followed:

* Test ID 7.3.1.22.1 "Create VNF Instance workflow"
* Test ID 7.3.1.26.1 "VNF Instantiation workflow"
* Test ID 7.3.1.12.2 "Get Individual VNF LCM Operation occurrences"

Terminate NF Deployment test case

In order to test Terminate NF Deployment specified in clause 2.4.2.2 of O-RAN.WG6.O2DMS- INTERFACE-ETSI-NFV-PROFILE [4], following tests specified in Annex F.7 of ETSI GS NFV- TST 010 [6] shall be followed:

Test ID 7.3.1.33.1 "Terminate a VNF Instance"

Test ID 7.3.1.23.1 "Delete VNF Instance workflow"

Test ID 7.3.1.12.2 "Get Individual VNF LCM Operation occurrences"

Query NF Deployment test case

In order to test Query NF Deployment specified in clause 2.4.2.3 of O-RAN.WG6.O2DMS- INTERFACE-ETSI-NFV-PROFILE [4], following tests specified in Annex F.7 of ETSI GS NFV- TST 010 [6] shall be followed:

Test ID 7.3.1.1.2 "GET information about multiple VNF instances"

Test ID 7.3.1.2.2 "Get Information about an individual VNF Instance"

Heal NF Deployment test case

In order to test Heal NF Deployment specified in clause 2.4.2.4 of O-RAN.WG6.O2DMS- INTERFACE-ETSI-NFV-PROFILE [4], following tests specified in Annex F.7 of ETSI GS NFV- TST 010 [6] shall be followed:

Test ID 7.3.1.8.1 "POST Heal a VNF Instance"

Test ID 7.3.1.12.2 "Get Individual VNF CM Operation occurrences"

Scale NF Deployment test case

In order to test Scale NF Deployment specified in clause 2.4.2.5 of O-RAN.WG6.O2DMS- INTERFACE-ETSI-NFV-PROFILE [4], following tests specified in Annex F.7 of ETSI GS NFV- TST 010 [6] shall be followed:

Test ID 7.3.1.4.1 "POST Scale a VNF Instance"

Test ID 7.3.1.5.1 "POST Scale a VNF Instance to level"

Test ID 7.3.1.12.2 "Get Individual VNF LCM Operation occurrences"

Change external connectivity of an NF Deployment test case

In order to test Change external connectivity of an NF Deployment specified in clause 2.4.2.6 of O- RAN.WG6.O2DMS-INTERFACE-ETSI-NFV-PROFILE [4], following tests specified in Annex F.7 of ETSI GS NFV-TST 010 [6] shall be followed:

Test ID 7.3.1.10.1 "POST Change external VNF connectivity"

Test ID 7.3.1.12.2 "Get Individual VNF LCM Operation occurrences"

Change current NF Deployment package test case

In order to test Change current NF Deployment package specified in clause 2.4.2.7 of O- RAN.WG6.O2DMS-INTERFACE-ETSI-NFV-PROFILE [4], following tests specified in Annex F.7 of ETSI GS NFV-TST 010 [6] shall be followed:

Test ID 7.3.1.12.2 "Get Individual VNF LCM Operation occurrences"

Test ID 7.3.1.37.1 "ChangeCurrentVNFPackageTask"

Change NF Deployment flavour test case

In order to test Change NF Deployment flavour specified in clause 2.4.2.8 of O- RAN.WG6.O2DMS-INTERFACE-ETSI-NFV-PROFILE [4], following tests specified in Annex F.7 of ETSI GS NFV-TST 010 [6] shall be followed:

Test ID 7.3.1.6.1 "POST Change deployment flavour of a vnfInstance"

Test ID 7.3.1.12.2 "Get Individual VNF LCM Operation occurrences"

* + - * 1. Fault Service operations

Get alarm list test case

In order to test Get alarm list specified in clause 2.4.3.1 of O-RAN.WG6.O2DMS-INTERFACE- ETSI-NFV-PROFILE [4], following test specified in Annex F.7 of ETSI GS NFV-TST 010 [6] shall be followed:

Test ID 7.3.5.1.2 "Get information about multiple alarms"

Test ID 7.3.5.2.2 "Get information about an fault management individual alarm"

Notify test case

In order to test Notify specified in clause 2.4.3.2 of O-RAN.WG6.O2DMS-INTERFACE-ETSI- NFV-PROFILE [4], following test specified in Annex F.7 of ETSI GS NFV-TST 010 [6] shall be followed:

Test ID 7.3.5.5.1 "VNF Fault Alarm Notification"

Acknowledge alarm test case

In order to test Acknowledge alarm specified in clause 2.4.3.3 of O-RAN.WG6.O2DMS- INTERFACE-ETSI-NFV-PROFILE [4], following test specified in Annex F.7 of ETSI GS NFV- TST 010 [6] shall be followed:

Test ID 7.3.5.2.4 "PATCH Fault Management Individual Alarm"

* + - * 1. Performance Service operations

Create PM Job test case

In order to test Create PM Job specified in clause 2.4.4.1 of O-RAN.WG6.O2DMS-INTERFACE- ETSI-NFV-PROFILE [4], following test specified in Annex F.7 of ETSI GS NFV-TST 010 [6] shall be followed:

Test ID 7.3.4.1.9 "Create new VNF Performance Monitoring Job"

Query/read PM job information test case

In order to test Query/read PM job information specified in clause 2.4.4.2 of O- RAN.WG6.O2DMS-INTERFACE-ETSI-NFV-PROFILE [4], following test specified in Annex F.7 of ETSI GS NFV-TST 010 [6] shall be followed:

Test ID 7.3.4.1.1 "GET all VNF Performance Monitoring Jobs"

Test ID 7.3.4.2.1 "GET individual VNF Performance Job"

Delete a PM job test case

In order to test Delete a PM job specified in clause 2.4.4.3 of O-RAN.WG6.O2DMS-INTERFACE- ETSI-NFV-PROFILE [4], following test specified in Annex F.7 of ETSI GS NFV-TST 010 [6] shall be followed:

Test ID 7.3.4.2.3 "DELETE Individual VNF Performance Job"

Create a threshold test case

In order to test Create a threshold specified in clause 2.4.4.4 of O-RAN.WG6.O2DMS- INTERFACE-ETSI-NFV-PROFILE [4], following test specified in Annex F.7 of ETSI GS NFV- TST 010 [6] shall be followed:

Test ID 7.3.4.4.5 "Create new Performance Threshold"

Query/read threshold information test case

In order to test Query/read threshold information specified in clause 2.4.4.5 of O- RAN.WG6.O2DMS-INTERFACE-ETSI-NFV-PROFILE [4], following test specified in Annex F.7 of ETSI GS NFV-TST 010 [6] shall be followed:

Test ID 7.3.4.4.1 "GET All Performance Thresholds"

Test ID 7.3.4.5.1 "GET Individual Threshold"

Delete a threshold test case

In order to test Delete a threshold specified in clause 2.4.4.6 of O-RAN.WG6.O2DMS- INTERFACE-ETSI-NFV-PROFILE [4], following test specified in Annex F.7 of ETSI GS NFV- TST 010 [6] shall be followed:

Test ID 7.3.4.5.3 "DELETE Individual Threshold"

Sending performance related notifications test case

In order to test Sending performance related notifications specified in clause 2.4.4.7 of O- RAN.WG6.O2DMS-INTERFACE-ETSI-NFV-PROFILE [4], following test specified in Annex F.7 of ETSI GS NFV-TST 010 [6] shall be followed:

Test ID 7.3.4.8.1 "VNF Performance Information Availability Notification"

Test ID 7.3.4.8.2 "VNF Threshold Crossed Notification"

Obtaining performance reports test case

In order to test Obtaining performance reports specified in clause 2.4.4.8 of O-RAN.WG6.O2DMS- INTERFACE-ETSI-NFV-PROFILE [4], following test specified in Annex F.7 of ETSI GS NFV- TST 010 [6] shall be followed:

Test ID 7.3.4.8.1 "VNF Performance Information Availability Notification"

Test ID 7.3.4.1.1 "GET all VNF Performance Monitoring Jobs"

Test ID 7.3.4.3.1 "Get Individual Performance Report"

* + - 1. Test case for O2dms\_DeploymentLifecycle Service API
         1. VNF instances REST resource test case

In order to test VNF instances REST resource specified in clause 3.2.4.2 of O-RAN.WG6.O2DMS- INTERFACE-ETSI-NFV-PROFILE [4], following test specified in Annex F.7 of ETSI GS NFV- TST 010 [6] shall be followed.

* Test ID 7.3.1.1.1 "POST Create a new vnfInstance"
* Test ID 7.3.1.1.2 "GET information about multiple VNF instances"
* Test ID 7.3.1.1.3 "GET information about multiple VNF instances Bad Request Invalid attribute-based filtering parameters"
* Test ID 7.3.1.1.4 "GET information about multiple VNF instances Bad Request Invalid attribute selector"
* Test ID 7.3.1.1.5 "GET information about multiple VNF instances with "all\_fields" attribute selector"
* Test ID 7.3.1.1.6 "GET information about multiple VNF instances with "exclude\_default" attribute selector"
* Test ID 7.3.1.1.7 "GET information about multiple VNF instances with "fields" attribute selector"
* Test ID 7.3.1.1.8 "GET information about multiple VNF instances with "exclude\_fields" attribute selector"
* Test ID 7.3.1.1.12 "GET information about multiple VNF instances to get Paged Response"
* Test ID 7.3.1.1.12a "GET information about multiple VNF instances as a Paged Response with nextpage\_opauque\_marker parameter"
* Test ID 7.3.1.1.13 "GET information about multiple VNF instances - Bad Request Response too Big"
* Test ID 7.3.1.1.14 "GET information about multiple VNF instances with "exclude\_default" and "fields" attribute selector"
* Test ID 7.3.1.1.15 "POST Create a new vnfInstance - Unprocessible Entity"
* Test ID 7.3.1.1.16 "GET information about multiple VNF instances using Filter"
  + - * 1. Individual VNF instance REST resource test case

In order to test Individual VNF instance REST resource specified in clause 3.2.4.3 of O- RAN.WG6.O2DMS-INTERFACE-ETSI-NFV-PROFILE [4], following test specified in Annex F.7 of ETSI GS NFV-TST 010 [6] shall be followed.

* Test ID 7.3.1.2.2 "Get Information about an individual VNF Instance"
* Test ID 7.3.1.2.4 "PATCH Individual VNFInstance"
* Test ID 7.3.1.2.5 "PATCH Individual VNFInstance Precondition failed"
* Test ID 7.3.1.2.6 "PATCH Individual VNFInstance Conflict"
* Test ID 7.3.1.2.7 "DELETE Individual VNFInstance"
* Test ID 7.3.1.2.8 "The objective is to verify that the deletion cannot be executed currently, due to a conflict with the state of the VNF instance resource."
* Test ID 7.3.1.2.9 "Get Information about an individual VNF Instance - Not Found"
  + - * 1. Instantiate VNF task REST resource test case

In order to test Instantiate VNF task REST resource specified in clause 3.2.4.4 of O- RAN.WG6.O2DMS-INTERFACE-ETSI-NFV-PROFILE [4], following test specified in Annex F.7 of ETSI GS NFV-TST 010 [6] shall be followed.

* Test ID 7.3.1.3.1 "Post Instantiate Individual VNFInstance"
* Test ID 7.3.1.3.2 "Post Instantiate Individual VNFInstance"
  + - * 1. Terminate VNF task REST resource test case

In order to test Terminate VNF task REST resource specified in clause 3.2.4.5 of O- RAN.WG6.O2DMS-INTERFACE-ETSI-NFV-PROFILE [4], following test specified in Annex F.7 of ETSI GS NFV-TST 010 [6] shall be followed.

* Test ID 7.3.1.7.1 "POST Terminate a vnfInstance"
* Test ID 7.3.1.7.2 "POST Terminate a vnfInstance Conflict (Not-Instantiated)"
  + - * 1. Notification test case

In order to test Notifications issued on the O2dms\_DeploymentLifecycle Service API specified in clause 3.2.5 of O-RAN.WG6.O2DMS-INTERFACE-ETSI-NFV-PROFILE [4], following test

specified in Annex F.7 of ETSI GS NFV-TST 010 [6] shall be followed.

* Test ID 7.3.1.34.1 "VNF LCM Operation Occurrence Start Notification"
* Test ID 7.3.1.34.2 "VNF LCM Operation Occurrence Result Notification"
* Test ID 7.3.1.34.3 "VNF Identifier Creation Notification"
* Test ID 7.3.1.34.4 "VNF Identifier Deletion Notification"
  + - * 1. Heal VNF task REST resource test case

In order to test Heal VNF task REST resource specified in clause 3.2.4.6 of O-RAN.WG6.O2DMS- INTERFACE-ETSI-NFV-PROFILE [4], following test specified in Annex F.7 of ETSI GS NFV- TST 010 [6] shall be followed.

* Test ID 7.3.1.8.1 "POST Heal a vnfInstance"
* Test ID 7.3.1.8.2 "POST Heal a vnfInstance Conflict (Not-Instantiated)"
* Test ID 7.3.1.8.3 "POST Heal a vnfInstance Not Found"
  + - * 1. Scale VNF task REST resource test case

In order to test Scale VNF task REST resource specified in clause 3.2.4.11 of O- RAN.WG6.O2DMS-INTERFACE-ETSI-NFV-PROFILE [4], following test specified in Annex F.7 of ETSI GS NFV-TST 010 [6] shall be followed.

* Test ID 7.3.1.4.1 "POST Scale a vnfInstance"
* Test ID 7.3.1.4.2 "POST Scale a vnfInstance Conflict (Not-Instantiated)"
* Test ID 7.3.1.4.3 "POST Scale a vnfInstance Not Found"
  + - * 1. Scale VNF to Level task REST resource test case

In order to test Scale VNF to Level task REST resource specified in clause 3.2.4.12 of O- RAN.WG6.O2DMS-INTERFACE-ETSI-NFV-PROFILE [4], following test specified in Annex F.7 of ETSI GS NFV-TST 010 [6] shall be followed.

* Test ID 7.3.1.5.1 "POST Scale a vnfInstance to level"
* Test ID 7.3.1.5.2 "POST Scale a vnfInstance to level Conflict (Not-Instantiated)"
* Test ID 7.3.1.5.8 "POST Scale a vnfInstance to level with scaleInfo attribute"
  + - * 1. Change external VNF connectivity task REST resource test case

In order to test Change external VNF connectivity task REST resource specified in clause 3.2.4.13 of O-RAN.WG6.O2DMS-INTERFACE-ETSI-NFV-PROFILE [4], following test specified in Annex F.7 of ETSI GS NFV-TST 010 [6] shall be followed.

* Test ID 7.3.1.10.1 "POST Change external VNF connectivity"
  + - * 1. Retry operation task REST resource test case

In order to test Retry operation task REST resource specified in clause 3.2.4.7 of O- RAN.WG6.O2DMS-INTERFACE-ETSI-NFV-PROFILE [4], following test specified in Annex F.7 of ETSI GS NFV-TST 010 [6] shall be followed.

* Test ID 7.3.1.13.1 "Post Retry operation task"
* Test ID 7.3.1.13.2 "Post Retry operation task Conflict (Not-FAILED\_TEMP)"
* Test ID 7.3.1.13.3 "Post Retry operation task Not Found"
  + - * 1. Rollback operation task REST resource test case

In order to test Rollback operation task REST resource specified in clause 3.2.4.8 of O- RAN.WG6.O2DMS-INTERFACE-ETSI-NFV-PROFILE [4], following test specified in Annex F.7 of ETSI GS NFV-TST 010 [6] shall be followed.

* Test ID 7.3.1.14.1 "Post Rollback operation task"
* Test ID 7.3.1.14.2 "POST Rollback operation task Conflict (Not-FAILED\_TEMP)"
* Test ID 7.3.1.14.3 "POST Rollback operation task Not Found"
  + - * 1. Fail operation task REST resource test case

In order to test Fail operation task REST resource specified in clause 3.2.4.9 of O- RAN.WG6.O2DMS-INTERFACE-ETSI-NFV-PROFILE [4], following test specified in Annex F.7 of ETSI GS NFV-TST 010 [6] shall be followed.

* Test ID 7.3.1.15.1 "POST Fail operation task"
* Test ID 7.3.1.15.2 "Post Fail operation task Conflict (Not-FAILED\_TEMP)"
* Test ID 7.3.1.15.3 "Post Fail operation task Not Found"
  + - * 1. Cancel operation task REST resource test case

In order to test Cancel operation task REST resource specified in clause 3.2.4.10 of O- RAN.WG6.O2DMS-INTERFACE-ETSI-NFV-PROFILE [4], following test specified in Annex F.7 of ETSI GS NFV-TST 010 [6] shall be followed.

* Test ID 7.3.1.16.1 "POST Cancel operation task"
* Test ID 7.3.1.16.2 "POST Cancel operation task Conflict"
* Test ID 7.3.1.16.3 "POST Cancel operation task Not Found"
  + - 1. Test case for O2dms\_Fault Service API
         1. Alarms REST resource test case

In order to test Alarms REST resource specified in clause 3.3.4 of O-RAN.WG6.O2DMS- INTERFACE-ETSI-NFV-PROFILE [4], following test specified in Annex F.7 of ETSI GS NFV- TST 010 [6] shall be followed.

* Test ID 7.3.5.1.2 "Get information about multiple alarms"
* Test ID 7.3.5.1.3 "Get information about multiple alarms with filter"
* Test ID 7.3.5.1.4 "Get information about multiple alarms Bad Request Invalid attribute-based filtering parameters"
* Test ID 7.3.5.1.12 "Get information about multiple alarms as a Paged Response"
* Test ID 7.3.5.1.12a "GET information about multiple alarms as a Paged Response with nextpage\_opauque\_marker parameter"
* Test ID 7.3.5.1.13 "Get information about multiple alarms - Bad Request Response too Big"
  + - * 1. Individual alarm REST resource test case

In order to test Individual alarm REST resource specified in clause 3.3.4 of O-RAN.WG6.O2DMS- INTERFACE-ETSI-NFV-PROFILE [4], following test specified in Annex F.7 of ETSI GS NFV- TST 010 [6] shall be followed.

* Test ID 7.3.5.2.2 "Get information about an fault management individual alarm"
* Test ID 7.3.5.2.4 "PATCH Fault Management Individual Alarm"
* Test ID 7.3.5.2.5 "Modify an individual alarm resource - Precondition failed"
* Test ID 7.3.5.2.6 "Modify an individual alarm resource - Conflict"
* Test ID 7.3.5.2.8 "Get information about an fault management individual alarm - Not Found"
  + - * 1. Subscriptions REST resource test case

In order to test Subscriptions REST resource specified in clause 3.3.4 of O-RAN.WG6.O2DMS- INTERFACE-ETSI-NFV-PROFILE [4], following test specified in Annex F.7 of ETSI GS NFV- TST 010 [6] shall be followed.

* Test ID 7.3.5.3.1 "Create a new Fault Management alarm subscription"
* Test ID 7.3.5.3.2 "Create a new alarm subscription - DUPLICATION"
* Test ID 7.3.5.3.3 "Create a new alarm subscription - NO DUPLICATION"
* Test ID 7.3.5.3.4 "Retrieve a list of alarm subscriptions"
* Test ID 7.3.5.3.5 "Retrieve a list of alarm subscriptions with filter"
* Test ID 7.3.5.3.6 "GET subscriptions - Bad Request Invalid attribute-based filtering parameters"
* Test ID 7.3.5.3.7 "GET subscriptions with "all\_fields" attribute selector"
* Test ID 7.3.5.3.8 "GET subscriptions with "exclude\_default" attribute selector"
* Test ID 7.3.5.3.9 "GET subscriptions with "fields" attribute selector"
* Test ID 7.3.5.3.10 "GET subscriptions with "exclude\_fields" attribute selector"
* Test ID 7.3.5.3.14 "Retrieve a list of alarm subscriptions as Paged Response"
* Test ID 7.3.5.3.15 "GET subscriptions - Bad Request Response too Big"
* Test ID 7.3.5.3.16 "GET Subscription with attribute-based filter "id""
* Test ID 7.3.5.3.17 "GET Subscription with attribute-based filter "filter.notificationTypes""
* Test ID 7.3.5.3.18 "GET Subscription with attribute-based filter "filter.faultyResourceTypes""
* Test ID 7.3.5.3.19 "GET Subscription with attribute-based filter "filter.perceivedSeverities""
* Test ID 7.3.5.3.20 "GET Subscription with attribute-based filter "filter.eventTypes""
* Test ID 7.3.5.3.21 "GET Subscription with attribute-based filter "filter.probableCauses""
* Test ID 7.3.5.3.22 "POST Create a new Subscription - Unprocessable Entity"
  + - * 1. Individual subscription REST resource test case

In order to test Individual subscription REST resource specified in clause 3.3.4 of O- RAN.WG6.O2DMS-INTERFACE-ETSI-NFV-PROFILE [4], following test specified in Annex F.7 of ETSI GS NFV-TST 010 [6] shall be followed.

* Test ID 7.3.5.4.2 "Get Information about an individual subscription"
* Test ID 7.3.5.4.5 "DELETE an individual subscription"
* Test ID 7.3.5.4.6 "Get Information about an individual subscription - Not Found"
  + - * 1. Notification endpoint REST resource test case

In order to test Notification endpoint REST resource specified in clause 3.3.4 of O- RAN.WG6.O2DMS-INTERFACE-ETSI-NFV-PROFILE [4], following test specified in Annex F.7 of ETSI GS NFV-TST 010 [6] shall be followed.

* Test ID 7.3.5.5.1 "VNF Fault Alarm Notification"
* Test ID 7.3.5.5.2 "VNF Fault Alarm Cleared Notification"
* Test ID 7.3.5.5.3 "VNF Fault Alarm List Rebuilt Notification"
  + - 1. Performance Service API
         1. PM jobs REST resource test case

In order to test PM jobs REST resource specified in clause 3.4.4 of O-RAN.WG6.O2DMS- INTERFACE-ETSI-NFV-PROFILE [4], following test specified in Annex F.7 of ETSI GS NFV- TST 010 [6] shall be followed.

* Test ID 7.3.4.1.1 "GET all VNF Performance Monitoring Jobs"
* Test ID 7.3.4.1.2 "GET all VNF Performance Monitoring Jobs with attribute-based filter"
* Test ID 7.3.4.1.3 "GET all VNF Performance Monitoring Jobs with all\_fields attribute selector"
* Test ID 7.3.4.1.4 "GET all VNF Performance Monitoring Jobs with exclude\_default attribute selector"
* Test ID 7.3.4.1.5 "GET all VNF Performance Monitoring Jobs with fields attribute selector"
* Test ID 7.3.4.1.6 "GET all VNF Performance Monitoring Jobs with exclude\_fields attribute selector"
* Test ID 7.3.4.1.7 "GET VNF Performance Monitoring Jobs with invalid attribute-based filter"
* Test ID 7.3.4.1.8 "GET VNF Performance Monitoring Jobs with invalid resource endpoint"
* Test ID 7.3.4.1.9 "Create a new VNF Performance Monitoring Job"
* Test ID 7.3.4.1.13 "GET all VNF Performance Monitoring Jobs as Paged Response"
* Test ID 7.3.4.1.13a "GET all VNF Performance Monitoring Jobs as Paged Response with nextpage\_opauque\_marker parameter"
* Test ID 7.3.4.1.14 "GET VNF Performance Monitoring Jobs - Bad Request Response too Big"
* Test ID 7.3.4.1.15 "GET all VNF Performance Monitoring Jobs with fields and exclude\_default attribute selector"
* Test ID 7.3.4.1.16 "POST Create new VNF Performance Monitoring Job - Unprocessable Entity"
  + - * 1. Individual PM job REST resource test case

In order to test Individual PM job REST resource specified in clause 3.4.4 of O-RAN.WG6.O2DMS- INTERFACE-ETSI-NFV-PROFILE [4], following test specified in Annex F.7 of ETSI GS NFV- TST 010 [6] shall be followed.

* Test ID 7.3.4.2.1 "Get individual VNF Performance Job"
* Test ID 7.3.4.2.2 "Get individual VNF Performance Job with invalid resource identifier"
* Test ID 7.3.4.2.3 "Delete Individual VNF Performance Job"
* Test ID 7.3.4.2.4 "Delete individual VNF Performance Job with invalid resource identifier"
* Test ID 7.3.4.2.7 "PATCH Individual VNF Performance Job"
* Test ID 7.3.4.2.8 "PATCH Individual VNF Performance Job - Precondition failed"
* Test ID 7.3.4.2.9 "PATCH Individual VNF Performance Job - Unprocessable Entity"
  + - * 1. Individual performance report REST resource test case

In order to test Individual performance report REST resource specified in clause 3.4.4 of O- RAN.WG6.O2DMS-INTERFACE-ETSI-NFV-PROFILE [4], following test specified in Annex F.7 of ETSI GS NFV-TST 010 [6] shall be followed.

* Test ID 7.3.4.3.1 "Get Individual Performance Report"
* Test ID 7.3.4.3.2 "Get Individual Performance Report with invalid resource endpoint"
  + - * 1. Thresholds REST resource test case

In order to test Thresholds REST resource specified in clause 3.4.4 of O-RAN.WG6.O2DMS- INTERFACE-ETSI-NFV-PROFILE [4], following test specified in Annex F.7 of ETSI GS NFV- TST 010 [6] shall be followed.

* Test ID 7.3.4.4.1 "GET All Performance Thresholds"
* Test ID 7.3.4.4.2 "GET Performance Thresholds with attribute-based filter"
* Test ID 7.3.4.4.3 "GET Performance Thresholds with invalid attribute-based filter"
* Test ID 7.3.4.4.4 "GET Performance Thresholds with invalid resource endpoint"
* Test ID 7.3.4.4.5 "Create new Performance Threshold"
* Test ID 7.3.4.4.9 "GET All Performance Thresholds as Paged Response"
* Test ID 7.3.4.4.10 "GET Performance Thresholds - Bad Request Response too Big"
* Test ID 7.3.4.4.11 "POST create new Performance Threshold - Unprocessable Entity"
  + - * 1. Individual threshold REST resource test case

In order to test Individual threshold REST resource specified in clause 3.4.4 of O-RAN.WG6.O2DMS- INTERFACE-ETSI-NFV-PROFILE [4], following test specified in Annex F.7 of ETSI GS NFV- TST 010 [6] shall be followed.

* Test ID 7.3.4.5.1 "GET Individual Threshold"
* Test ID 7.3.4.5.2 "GET Individual Threshold with invalid resource identifier"
* Test ID 7.3.4.5.3 "DELETE Individual Threshold"
* Test ID 7.3.4.5.4 "DELETE Individual Threshold with invalid resource identifier"
* Test ID 7.3.4.5.7 "PATCH Individual Threshold"
* Test ID 7.3.4.5.8 "PATCH Individual Threshold - Preconition failed"
* Test ID 7.3.4.5.9 "PATCH Individual Threshold - Unprocessible Entity"
  + - * 1. Notification endpoint REST resource test case

In order to test Notification endpoint specified in clause 3.4.4 of O-RAN.WG6.O2DMS-INTERFACE- ETSI-NFV-PROFILE [4], following test specified in Annex F.7 of ETSI GS NFV-TST 010 [6] shall be followed.

* Test ID 7.3.4.8.1 "VNF Performance Information Availability Notification"
* Test ID 7.3.4.8.2 "VNF Threshold Crossed Notification"

Annex A (normative):

Checklist for Cases applies to O-Cloud technologies

This section provides a list of test cases applicable to each O-Cloud technology.

## O-Cloud technologies

This specification covers following O-Cloud technologies:

* + - VMs only
    - Containers only
    - Containers in VMs

## Cloud Technology Applicability of test cases

Cases marked with Y apply to the corresponding cloud technologies should be executed.

#### Table A.2-1: O-Cloud IOT and corresponding Interfaces/APIs, DUTs and SUTs

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Test** | **Case Title** | **VMs only** | **Containers only** | **Containers in VMs** |
| O-Cloud Notification API Test | Create a subscription resource | Y | Y | Y |
| Get a list of subscription resources | Y | Y | Y |
| Get Detail of individual subscription resource | Y | Y | Y |
| Delete individual subscription resources | Y | Y | Y |
| Event notification and Notification sanity check | Y | Y | Y |
| Event pull status notification | Y | Y | Y |
| O2  Interface | O-Cloud succeeds  to deliver O-Cloud |  | Y | Y |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Test: O2 IMS Test | Available notification to SMO via valid endpoint. |  |  |  |
| SMO succeeds to query inventory with O2ims APIs and correct token |  | Y | Y |
| SMO succeeds to subscribe for O2ims inventory changes notification and succeeds to receive notifications. |  | Y | Y |
| SMO succeeds to get O2dms (in Kubernetes native API Profile) access information. |  | Y | Y |
| SMO succeeds to create alarmSubscription, receive alarm notification, and query alarm list. |  | Y | Y |
| Verify general aspects of O2ims API. |  | Y | Y |
| SMO gets 405 when sending O2ims APIs with unsupported method. |  | Y | Y |
| SMO gets 400/405 when issuing O2ims APIs with incorrect data. |  | Y | Y |
| SMO getssecurity  error response |  | Y | Y |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
|  | when issuing APIs with incorrect token. |  |  |  |
| SMO geta client error response when issuing requests with incorrect APIs. |  | Y | Y |
| SMO gets 406/415 when issuing APIs with junk/unsupported data. |  | Y | Y |
| SMO gets 404 when issuing APIs with wrong data. |  | Y | Y |
| O2  Interface Test: O2 DMS ETSI NFV  Profile Test | Instantiate NF Deployment test case | Y | N | Y |
| Terminate NF Deployment test case | Y | N | Y |
| Query NF Deployment test case | Y | N | Y |
| Heal NF Deployment test case | Y | N | Y |
| Scale NF Deployment test case | Y | N | Y |
| Change external connectivity of an NF Deployment test case | Y | N | Y |
|  | Change current NF Deployment package | Y | N | Y |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
|  | Change NF Deployment flavour | Y | N | Y |
|  | Get alarm list test case | Y | N | Y |
| Notify test case | Y | N | Y |
| Acknowledge alarm test case | Y | N | Y |
| Create PM Job test case | Y | N | Y |
| Query/read PM job information test case | Y | N | Y |
| Delete a PM job test case | Y | N | Y |
| Create a threshold test case | Y | N | Y |
| Query/read threshold information test case | Y | N | Y |
| Delete a threshold test case | Y | N | Y |
| Sending performance related notifications test case | Y | N | Y |
| Obtaining performance reports test case | Y | N | Y |
| VNF instances REST resource test case | Y | N | Y |
| Individual VNF instance REST resource test case | Y | N | Y |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
|  | Instantiate VNF task REST resource test case | Y | N | Y |
| Terminate VNF task REST resource test case | Y | N | Y |
| Notification test case | Y | N | Y |
| Heal VNF task REST resource test case | Y | N | Y |
| Scale VNF task REST resource test case | Y | N | Y |
| Scale VNF to Level task REST resource test case | Y | N | Y |
| Change external VNF connectivity task REST resource test case | Y | N | Y |
| Retry operation task REST resource test case | Y | N | Y |
| Rollback operation task REST resource test case | Y | N | Y |
| Fail operation task REST resource test case | Y | N | Y |
| Cancel operation task REST resource test case | Y | N | Y |
| Alarms REST resource test case | Y | N | Y |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
|  | Individual alarm REST resource test case | Y | N | Y |
| Subscriptions REST resource test case | Y | N | Y |
| Individual subscription REST resource test case | Y | N | Y |
| Notification endpoint REST resource test case | Y | N | Y |
| PM jobs REST resource test case | Y | N | Y |
| Individual PM job REST resource test case | Y | N | Y |
| Individual performance report REST resource test case | Y | N | Y |
| Thresholds REST resource test case | Y | N | Y |
| Individual threshold REST resource test case | Y | N | Y |
| Notification endpoint REST resource test case | Y | N | Y |

</div>

## Case Traceability

**Table A.3-1: O-Cloud IOT and corresponding Interfaces/APIs, DUTs and SUTs**

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Test** | **Test case** | **Reference** | **Requirement** |
| O-Cloud Notification API Test | Create a subscription resource | [2] O-RAN.WG6.O-  Cloud Notification API-v03.00 | 4.1.2.1 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
|  | Get a list of subscription resources | [2] O-RAN.WG6.O-  Cloud Notification API-v03.00 | 4.1.2.2 |
| Get Detail of individual subscription resource | [2] O-RAN.WG6.O-  Cloud Notification API-v03.00 | 4.1.3.2 |
| Delete individual subscription resources | [2] O-RAN.WG6.O-  Cloud Notification API-v03.00 | 4.1.3.1 |
| Event notification and Notification sanity check | [2] O-RAN.WG6.O-  Cloud Notification API-v03.00 | 5.1.1 |
| Event pull status notification | [2] O-RAN.WG6.O-  Cloud Notification API-v03.00 | 6.1.1 |
| O2  Interface Test: O2 IMS Test | O-Cloud succeeds to deliver O-Cloud Available notification to SMO via valid endpoint. | [1] O- RAN.WG6.ORCH- USE-CASES-R003- v06.00 | REQ-ORC-GEN6; REQ-ORC- GEN7; REQ-ORC-GEN8; REQ- ORC-GEN9; REQ-ORC-O2-3; REQ- ORC-O2-4;  REQ-ORC-O2-5; REQ-ORC-O2-6 |
| SMO succeeds to query inventory with O2ims APIs and correct token. | [1] O- RAN.WG6.ORCH- USE-CASES-R003- v06.00 | REQ-ORC-GEN10; REQ-ORC- GEN11; REQ-ORC-GEN12; REQ- ORC-GEN13; REQ-ORC-O2-7; REQ-ORC-O2-8 |
| SMO succeeds to subscribe for O2ims inventory changes notification and succeeds to receive notifications. | [1] O- RAN.WG6.ORCH- USE-CASES-R003- v06.00 | REQ-ORC-GEN10; REQ-ORC- GEN11; REQ-ORC-GEN12; REQ- ORC-GEN13; REQ-ORC-O2-7; REQ-ORC-O2-8 |
| SMO succeeds to  get O2dms (in | [1] O-  RAN.WG6.ORCH- | REQ-ORC-GEN6; REQ-ORC-  GEN7; REQ-ORC-GEN8; REQ- |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
|  | Kubernetes native API Profile) access information. | USE-CASES-R003- v06.00 | ORC-GEN9; REQ-ORC-O2-3; REQ- ORC-O2-4; REQ-ORC-O2-5; REQ- ORC-O2-6 |
| SMO succeeds to create alarmSubscription, receive alarm notification, and query alarm list. | [1] O- RAN.WG6.ORCH- USE-CASES-R003- v06.00 | REQ-ORC-O2-21, REQ-ORC-O2- 22, REQ-ORC-O2-16,  REQ-ORC-O2-23, REQ-ORC-O2- 24, REQ-ORC-O2-15 |
| Verify general aspects of O2ims API. | [1] O- RAN.WG6.ORCH- USE-CASES-R003- v06.00 | REQ-ORC-O2-19, REQ-ORC-O2-20 |
| SMO gets 405 when sending O2ims APIs with unsupported method. | [1] O- RAN.WG6.ORCH- USE-CASES-R003- v06.00 | REQ-ORC-O2-50, REQ-ORC-O2-51 |
| SMO gets 400/405 when issuing O2ims APIs with incorrect data. | [1] O- RAN.WG6.ORCH- USE-CASES-R003- v06.00 | REQ-ORC-O2-19, REQ-ORC-O2-20 |
| SMO gets security error response when issuing APIs with incorrect token. | [1] O- RAN.WG6.ORCH- USE-CASES-R003- v06.00 | REQ-ORC-O2-19, REQ-ORC-O2-20 |
| SMO gets client error response when issuing requests with incorrect APIs. | [1] O- RAN.WG6.ORCH- USE-CASES-R003- v06.00 | REQ-ORC-O2-19, REQ-ORC-O2-20 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
|  |  |  |  |
| SMO gets 406/415 when issuing APIs with junk/unsupported data. | [1] O- RAN.WG6.ORCH- USE-CASES-R003- v06.00 | REQ-ORC-GEN6; REQ-ORC- GEN7; REQ-ORC-GEN8; REQ- ORC-GEN9; REQ-ORC-O2-3; REQ- ORC-O2-4;  REQ-ORC-O2-5; REQ-ORC-O2-6 |
| SMO gets 404 when issuing APIs with wrong data. | [1] O- RAN.WG6.ORCH- USE-CASES-R003- v06.00 | REQ-ORC-O2-21, REQ-ORC-O2- 22, REQ-ORC-O2-16,  REQ-ORC-O2-23, REQ-ORC-O2- 24, REQ-ORC-O2-15 |
| O2  Interface Test: O2 DMS ETSI NFV  Profile Test | Instantiate NF Deployment test case | [4] O- RAN.WG6.O2DMS- INTERFACE-ETSI- NFV-PROFILE | 2.4.2.1 |
| Terminate NF Deployment test case | [4] O- RAN.WG6.O2DMS- INTERFACE-ETSI- NFV-PROFILE | 2.4.2.2 |
| Query NF Deployment test case | [4] O- RAN.WG6.O2DMS- INTERFACE-ETSI- NFV-PROFILE | 2.4.2.3 |
| Heal NF Deployment test case | [4] O- RAN.WG6.O2DMS- INTERFACE-ETSI- NFV-PROFILE | 2.4.2.4 |
| Scale NF Deployment test case | [4] O- RAN.WG6.O2DMS- INTERFACE-ETSI- NFV-PROFILE | 2.4.2.5 |
| Change external connectivity of an NF Deployment test case | [4] O- RAN.WG6.O2DMS- INTERFACE-ETSI- NFV-PROFILE | 2.4.2.6 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
|  | Change current NF Deployment package | [4] O- RAN.WG6.O2DMS- INTERFACE-ETSI- NFV-PROFILE | 2.4.2.7 |
|  | Change NF Deployment flavour | [4] O- RAN.WG6.O2DMS- INTERFACE-ETSI- NFV-PROFILE | 2.4.2.8 |
|  | Get alarm list test case | [4] O- RAN.WG6.O2DMS- INTERFACE-ETSI- NFV-PROFILE | 2.4.3.1 |
| Notify test case | [4] O- RAN.WG6.O2DMS- INTERFACE-ETSI- NFV-PROFILE | 2.4.3.2 |
| Acknowledge alarm test case | [4] O- RAN.WG6.O2DMS- INTERFACE-ETSI- NFV-PROFILE | 2.4.3.3 |
| Create PM Job test case | [4] O- RAN.WG6.O2DMS- INTERFACE-ETSI- NFV-PROFILE | 2.4.4.1 |
| Query/read PM job information test case | [4] O- RAN.WG6.O2DMS- INTERFACE-ETSI- NFV-PROFILE | 2.4.4.2 |
| Delete a PM job test case | [4] O- RAN.WG6.O2DMS- INTERFACE-ETSI- NFV-PROFILE | 2.4.4.3 |
| Create a threshold test case | [4] O- RAN.WG6.O2DMS- INTERFACE-ETSI- NFV-PROFILE | 2.4.4.4 |
| Query/read  threshold | [4] O-  RAN.WG6.O2DMS- | 2.4.4.5 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
|  | information test case | INTERFACE-ETSI- NFV-PROFILE |  |
| Delete a threshold test case | [4] O- RAN.WG6.O2DMS- INTERFACE-ETSI- NFV-PROFILE | 2.4.4.6 |
| Sending performance related notifications test case | [4] O- RAN.WG6.O2DMS- INTERFACE-ETSI- NFV-PROFILE | 2.4.4.7 |
| Obtaining performance reports test case | [4] O- RAN.WG6.O2DMS- INTERFACE-ETSI- NFV-PROFILE | 2.4.4.8 |
| VNF instances REST resource test case | [4] O- RAN.WG6.O2DMS- INTERFACE-ETSI- NFV-PROFILE | 3.2.4.2 |
| Individual VNF instance REST resource test case | [4] O- RAN.WG6.O2DMS- INTERFACE-ETSI- NFV-PROFILE | 3.2.4.3 |
| Instantiate VNF task REST resource test case | [4] O- RAN.WG6.O2DMS- INTERFACE-ETSI- NFV-PROFILE | 3.2.4.4 |
| Terminate VNF task REST resource test case | [4] O- RAN.WG6.O2DMS- INTERFACE-ETSI- NFV-PROFILE | 3.2.4.5 |
| Notification test case | [4] O- RAN.WG6.O2DMS- INTERFACE-ETSI- NFV-PROFILE | 3.2.5 |
| Heal VNF task REST resource test case | [4] O- RAN.WG6.O2DMS- | 3.2.4.6 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
|  |  | INTERFACE-ETSI- NFV-PROFILE |  |
| Scale VNF task REST resource test case | [4] O- RAN.WG6.O2DMS- INTERFACE-ETSI- NFV-PROFILE | 3.2.4.11 |
| Scale VNF to Level task REST resource test case | [4] O- RAN.WG6.O2DMS- INTERFACE-ETSI- NFV-PROFILE | 3.2.4.12 |
| Change external VNF connectivity task REST resource test case | [4] O- RAN.WG6.O2DMS- INTERFACE-ETSI- NFV-PROFILE | 3.2.4.13 |
| Retry operation task REST resource test case | [4] O- RAN.WG6.O2DMS- INTERFACE-ETSI- NFV-PROFILE | 3.2.4.7 |
| Rollback operation task REST resource test case | [4] O- RAN.WG6.O2DMS- INTERFACE-ETSI- NFV-PROFILE | 3.2.4.8 |
| Fail operation task REST resource test case | [4] O- RAN.WG6.O2DMS- INTERFACE-ETSI- NFV-PROFILE | 3.2.4.9 |
| Cancel operation task REST resource test case | [4] O- RAN.WG6.O2DMS- INTERFACE-ETSI- NFV-PROFILE | 3.2.4.10 |
| Alarms REST resource test case | [4] O- RAN.WG6.O2DMS- INTERFACE-ETSI- NFV-PROFILE | 3.3.4 |
| Individual alarm REST resource test case | [4] O- RAN.WG6.O2DMS- INTERFACE-ETSI- NFV-PROFILE | 3.3.4 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
|  | Subscriptions REST resource test case | [4] O- RAN.WG6.O2DMS- INTERFACE-ETSI- NFV-PROFILE | 3.3.4 |
| Individual subscription REST resource test case | [4] O- RAN.WG6.O2DMS- INTERFACE-ETSI- NFV-PROFILE | 3.3.4 |
| Notification endpoint REST resource test case | [4] O- RAN.WG6.O2DMS- INTERFACE-ETSI- NFV-PROFILE | 3.3.4 |
| PM jobs REST resource test case | [4] O- RAN.WG6.O2DMS- INTERFACE-ETSI- NFV-PROFILE | 3.4.4 |
| Individual PM job REST resource test case | [4] O- RAN.WG6.O2DMS- INTERFACE-ETSI- NFV-PROFILE | 3.4.4 |
| Individual performance report REST resource test case | [4] O- RAN.WG6.O2DMS- INTERFACE-ETSI- NFV-PROFILE | 3.4.4 |
| Thresholds REST resource test case | [4] O- RAN.WG6.O2DMS- INTERFACE-ETSI- NFV-PROFILE | 3.4.4 |
| Individual threshold REST resource test case | [4] O- RAN.WG6.O2DMS- INTERFACE-ETSI- NFV-PROFILE | 3.4.4 |
| Notification endpoint REST resource test case | [4] O- RAN.WG6.O2DMS- INTERFACE-ETSI- NFV-PROFILE | 3.4.4 |

</div>

# Annex (informative): Change History

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Date** | **Revision** | **Description** |
| 2022.06.20 | 00.00.00 | Create initial version of this specification, with skeleton. |
| 2022.11. | 00.08.00 | Update the skeleton add Notification API test, Incorporate the CRs of:   * WRS-CR-O-RAN.WG6.O-Cloud Synchronization Test |
| 2023.3.13 | 01.00.00 | Incorporate the CRs of:   * DCM-2023.02.17.WG6-O-CLOUD-TEST-O2dms\_ETSI\_NFV\_Test-v03 * WRS-CR-O-RAN.WG6.O-Cloud O2 Test\_v02 |
| 2023.3.20 | 01.00 | Published as Final version 01.00 |
| 2023.5.23 | 01.00.01 | DCM-2023.04.19-O-RAN.WG6-O-CLOUD\_CONF\_TEST-Update\_NFVProfile-v01.00 |
| 2023.8.1 | 01.01 | Published as Final version 01.01 |
| 2023.11.6 | 01.01.01 | Incorporate the CRs of:   * DCM-2023.07.19-O-RAN.WG6-O-CLOUD\_CONF\_TEST-   Add\_testitems\_NFVProfile-v01   * WindRiver-2023.08.07-O-RAN.WG6-O-CLOUD\_CONF\_TEST-   amendment\_O2IMSTest-v03 |
| 2023.11.20 | 02.00 | Resolve comments, Published as Final version 02.00 |
| 2024.3.16 | 02.00.01 | Incorporate the CRs of:   * DCM-2023.12.XX-O-RAN.WG6-O-CLOUD\_CONF\_TEST-   Add\_testitems\_NFVProfile-v01-testitem\_for\_resources\_clarified   * LNV.AO-2023.10.08-WG6-CR-0003-O-Cloud-CONF-Status-v06 * LNV.AO-2024.02.06-WG6-CR-0003\_O-Cloud-Conf-Synchronization-Update-v02 * LNV.AO-2024.02.05-WG6-CR-0003\_O-Cloud-Conf-Notification Update-v02 * LNV.AO-2024.2.26-WG6-CR-0004-O-Cloud-CONF-Certification-Update-v01 |
| 2024.3.24 | 02.00.02 | Resolve approval comments |
| 2024.3.26 | 02.00.03 | Editorial updates to resolve approval comments |
| 2024.4.20 | 03.00 | Resolve comments, Published as Final version 03.00 |
| 2024.7.5 | 03.00.01 | Incorporate the CRs of:   * DCM-2024.4.XX-O-RAN.WG6-O-CLOUD\_CONF\_TEST-   catchup\_with\_latest\_ETSI\_NFV\_v01.01  WRS-2024.5.XX-O-RAN.WG6-O-CLOUD\_CONF\_TEST-  catchup\_with\_latest\_O2\_IMS\_v01.00 |
| 2024.7.18 | 03.00.02 | Resolve comments |
| 2024.7.24 | 03.00.03 | Resolve comments about the Track Changes |
| 2024.7.30 | 04.00 | Resolve comments, Published as Final version 04.00 |
| 2024.10.08 | 04.00.01 | Incorporate the CRs of:   * DCM-2024.8.21-O-RAN.WG6-O-CLOUD\_CONF\_TEST-   catchup\_with\_v8\_of\_ETSI\_NFV\_Profile\_v01.01 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 2024.10.9 | 04.00.02 | Resolve comments |
| 2024.11.6 | 04.00.03 | Resolve comments |
| 2024.11.28 | 04.00.04 | Editorial updates to resolve approval comments |
| 2024.12.3 | 04.00.05 | Editorial updates to resolve approval comments |
| 2024.12.9 | 04.01 | Resolve comments, Published as Final version 04.01 |

</div>
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG6.TS.O-CLOUD-INTF-CONF-R004-v04.01.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG6.TS.O-CLOUD-INTF-CONF-R004-v04.01.docx).

---

* toc
{:toc}
