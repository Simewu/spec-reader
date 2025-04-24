## O-RAN.WG2.TS.R1GAP-R004-v10.00.docx

- View in [Reader Mode](https://simewu.com/spec-reader/pages/11-WG2/O-RAN.WG2.TS.R1GAP-R004-v10.00.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG2.TS.R1GAP-R004-v10.00.docx).

---

Technical Specification

R1 interface: General Aspects and Principles

Copyright (C) 2025 by the O-RAN ALLIANCE e.V.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany

Register of Associations, Bonn VR 11238, VAT ID DE321720189

![webwxgetmsgimg (7).jpeg](../assets/images/bea03973c631.jpg) O-RAN.WG2.TS.R1GAP-R004-v010.00

|  |
| --- |
|  |

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

4 General Aspects of R1 Interface and R1 Services 9

4.1 Introduction 9

4.2 General principles 9

4.3 Specification objectives 9

4.4 Capabilities 9

5 R1 Services 10

5.1 Service management and exposure services 10

5.1.1 General 10

5.1.2 Bootstrap service 10

5.1.3 Service registration service 11

5.1.4 Service discovery service 11

5.1.5 Heartbeat service 12

5.1.6 Authentication and authorization 13

5.1.7 rApp registration service 13

5.2 Data management and exposure services 14

5.2.1 General 14

5.2.2 Data registration service 15

5.2.3 Data discovery service 16

5.2.4 Data request service 16

5.2.5 Data subscription service 17

5.2.6 Data delivery services 18

5.2.7 Data offer service 19

5.3 A1-related Services 19

5.3.1 General 19

5.3.2 A1 policy management services 20

5.3.3 A1 enrichment information related services 21

5.3.4 A1 ML model management services 22

5.4 RAN OAM-related Services 22

5.4.1 General 22

5.4.2 Network Information service 22

5.4.3 Fault management (FM) service 23

5.4.4 Performance management (PM) service 23

5.4.5 Configuration management (CM) service 23

5.5 O2-related Services 24

5.5.1 General 24

5.5.2 O2 Infrastructure management service 25

5.5.3 O2 Deployment management service 25

5.6 AI/ML Workflow Services 26

5.6.1 General 26

5.6.2 AI/ML model registration service 27

5.6.3 AI/ML model storage service 28

5.6.4 AI/ML model discovery services 28

5.6.5 AI/ML model change subscription service 29

5.6.6 AI/ML model training capability registration service 29

5.6.7 AI/ML Model deployment request service 30

5.6.8 AI/ML model training services 30

5.6.9 AI/ML model performance monitoring service 30

5.6.10 AI/ML model inference service 31

5.6.11 AI/ML model training capability query services 32

6 R1 Interface Protocol Structure 32

# Foreword

This Technical Specification (TS) has been produced by WG2 of the O-RAN Alliance.

The content of the present document is subject to continuing work within O-RAN and may change following formal O-RAN approval. Should the O-RAN Alliance modify the contents of the present document, it will be re-released by O-RAN with an identifying change of version date and an increase in version number as follows:

version xx.yy.zz

where:

xx: the first digit-group is incremented for all changes of substance, i.e., technical enhancements, corrections, updates, etc. (the initial approved document will have xx=01). Always 2 digits with leading zero if needed.

yy: the second digit-group is incremented when editorial only changes have been incorporated in the document. Always 2 digits with leading zero if needed.

zz: the third digit-group included only in working versions of the document indicating incremental changes during the editing process. External versions never include the third digit-group. Always 2 digits with leading zero if needed.

# Modal verbs terminology

In the present document "**shall**", "**shall not**", "**should**", "**should not**", "**may**", "**need not**", "**will**", "**will not**", "**can**" and "**cannot**" are to be interpreted as described in clause 3.2 of the O-RAN Drafting Rules (Verbal forms for the expression of provisions).

"**must**" and "**must not**" are **NOT** allowed in O-RAN deliverables except when used in direct citation.

# 1 Scope

The present document specifies the general aspects and principles of the R1 interface. It is part of a TS-family covering the R1 interface specifications.

# 2 References

## 2.1 Normative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long term validity.

The following referenced documents are necessary for the application of the present document.

[1] O-RAN TS: "A1 Interface: Application Protocol" ("A1AP").

[2] O-RAN TS: "Non-RT RIC & A1/R1 Interface: Use Cases and Requirements" ("UCR").

[3] O-RAN TS: " Non-RT RIC: Architecture".

[4] O-RAN TS: "Security Protocols Specifications" ("SPS").

[5] O-RAN TS: "Transport protocols for R1 Services" ("R1TP").

[6] O-RAN TS: "O2IMS-Interface Specifications" ("O2IMS").

[7] O-RAN TS: "O2dms Interface Specification: Profile based on ETSI NFV Protocol and Data Models " ("O2DMS").

[8] O-RAN TS: "O2 Interface General Aspects and Principles" ("O2GAP").

[9] O-RAN TS: "Security Requirements and Controls Specification" ("SRS ").

[10] O-RAN TS: "Operations and Maintenance Architecture" ("OAM architecture").

## 2.2 Informative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long term validity.

The following referenced documents are not necessary for the application of the present document, but they assist the user with regard to a particular subject area.

[i.1] 3GPP TR 21.905: "3rd Generation Partnership Project; Technical Specification Group Services and System Aspects; Vocabulary for 3GPP Specifications".

# 3 Definition of terms, symbols and abbreviations

## 3.1 Terms

For the purposes of the present document, the following terms apply:

**AI/ML model:** An algorithm that applies AI/ML techniques to produce model output data based on model input data.

**AI/ML model training:** A process to train an AI/ML model by learning the input/output relationship in a data driven manner and obtain a trained AI/ML model that can be used for inference.

**Data job**: An entity that provides data related to a DME type.

**Data instance**: The set of data which resulted from a data job.

**DME type**: Data type managed and exposed by the DME services and identified by a DME type identifier.

**Non-RT RIC:** O-RAN non-real-time RAN Intelligent Controller: a logical function in the SMO framework that enables non-real-time control and optimization of RAN elements and resources, AI/ML workflow including model training and updates, and policy-based guidance of applications/features in Near-RT RIC. The Non-RT RIC is comprised of the Non-RT RIC framework and Non-RT RIC applications (rApps).

**Non-RT RIC framework**: Functionality internal to the SMO framework that logically terminates the A1 interface and provides the R1 services to rApps through the R1 interface.

**rApp**: Non-RT RIC application: an application designed to consume and/or produce R1 Services.

NOTE: rApps can leverage the functionality provided by the SMO/Non-RT RIC framework to deliver value added services related to intelligent RAN optimization and operation.

**R1 Interface**: Interface between rApps and Non-RT RIC framework via which R1 Services can be produced and consumed.

**R1 Services**: A collection of services including, but not limited to, service registration and discovery services, authentication and authorization services, AI/ML workflow services, RAN OAM-related services as well as A1and O2 related services.

**rApp instance:** An individual occurrence of a Non-RT RIC application running in the Non-RT RIC runtime environment.

**rApp instance identifier:** A unique identifier for each rApp instance, assigned by the SMO/Non-RT RIC framework during rApp registration.

## 3.2 Symbols

Void

## 3.3 Abbreviations

For the purposes of the present document, the following abbreviations apply.

AI Artificial Intelligence

EI Enrichment Information

FQDN Fully Qualified Domain Name

FM Fault Management

ML Machine Learning

PM Performance Management

RAN Radio Access Network

RBAC Role Based Access Control

RIC RAN Intelligent Controller

RT Real-time

rAppId rApp Instance Identifier

SMO Service Management and Orchestration

TBAC Target Based Access Control

# 4 General Aspects of R1 Interface and R1 Services

## 4.1 Introduction

The following clauses cover the general aspects for R1 interface.

## 4.2 General principles

The general principles for the specification of the R1 interface are as follows:

* The R1 interface is an open logical interface within the O-RAN architecture between the rApps and the Non-RT RIC framework.
* The R1 interface supports the exchange of control signalling information and the collection and delivery of data between endpoints.
* The R1 interface enables multi-vendor rApps to consume or produce the R1 services and is independent of specific implementations of the SMO and Non-RT RIC framework.
* The R1 interface is defined in an extensible way that enables new services and data types to be added without needing to change the protocols or the procedures.

## 4.3 Specification objectives

The R1 interface specifications shall:

* Facilitate inter-connection between rApps and Non-RT RIC framework supplied by different vendors.
* Provide a level of abstraction between rApps and SMO/Non-RT RIC framework that can be the consumers and or producers of R1 services.

## 4.4 Capabilities

As described in UCR [2] the R1 interface shall support:

* Registration and Deregistration of R1 services,
* Authentication of rApps,
* Authorization of requests to access R1 services,
* Facilitation of service discovery and service notifications for the registered R1 Services,
* Registration and Deregistration of DME types,
* Subscription and Unsubscription for registered DME types and collection and delivery of data for subscribed DME types,
* Functionalities related to A1 and O2 interfaces, RAN OAM and AI/ML workflow.

# 5 R1 Services

## 5.1 Service management and exposure services

### 5.1.1 General

As described in the Non-RT RIC Architecture specification [3], the Service management and exposure services provided by the SMO/Non-RT RIC framework enable:

* rApp registration,
* Registration of services,
* Discovery of services,
* Authentication and authorization,
* Communication support,
* Bootstrap (optional),
* Heartbeat (optional).

Additionally, if the Bootstrap service is provided by the SMO/Non-RT RIC framework, an rApp can use it to discover the endpoints of the Service management and exposure services.

If the Heartbeat service is provided by the SMO/Non-RT RIC framework, an rApp can use it to maintain its R1 service registration status with the Service management and exposure services Producer.

The Service management and exposure services handle R1 services that are produced and/or consumed by rApps, as well as R1 services that are produced by functions in the SMO/Non-RT RIC framework and consumed by rApps. Additionally, the information related to the registered services is stored and the status of the service registrations is kept updated.

The Service management and exposure services also handle the authorization of Service Consumers. When an R1 service is registered, it is available for discovery and invocation, by authorized Service Consumers.

In the following, the term "Service Producer" refers to the role of an rApp to register and produce a service, and the term "Service Consumer" refers to the role of an rApp to discover and consume a service, using the Service management and exposure service. The term "Service management and exposure services Producer" refers to the logical R1 Service management and exposure functions in the SMO/Non-RT RIC framework acting as Service Producers of one or more of the Service management and exposure services.

NOTE: An rApp can discover services produced by other functions than rApps via the R1 interface, while services registered by rApps cannot be discovered by other functions than rApps via the R1 interface. The R1 interface only specifies how rApp interacts using the Service management and exposure services in the roles of Service Producer and Service Consumer.

### 5.1.2 Bootstrap service

#### 5.1.2.1 Overview

If the Bootstrap service is provided by the SMO/Non-RT RIC framework, an rApp can use it to discover the endpoints of the Service management and exposure services.

#### 5.1.2.2 Bootstrap

The endpoint on which the Bootstrap service can be reached shall be version independent. It can be provisioned to the rApp or can be obtained e.g. from a fixed well-known address or FQDN.

The following procedure is defined:

**Discover bootstrap:** This procedure enables determination of the endpoints of the other Service management and exposure services.

### 5.1.3 Service registration service

#### 5.1.3.1 Overview

This service allows Service Producers to register information about the R1 services they produce.

#### 5.1.3.2 Registration of services

Register service is a procedure where a Service Producer declares its produced services to the Service management and exposure services Producer. Upon successful registration of a service, the information about the services is stored. Deregister service is a procedure where a Service Producer declares which services are no longer provided. The Service Producer can also update the registered information related to a service.

When registering a service, the Service Producer provides the information about the service, and may provide information on, but not limited to, the following:

* profile of the service,
* information on how to access the service,
* information on the API,
* limitations/capabilities of the Service Producer.

The following procedures are defined:

**Register service**: A Service Producer uses this procedure to register an R1 service that it produces with the capabilities that are being exposed. On receiving the request, the Service management and exposure services Producer determines whether the Service Producer is authorized to produce the service, and whether there are any conflicts. In the response, the Service management and exposure services Producer informs the Service Producer on the capabilities that they are allowed to expose.

**Deregister service**: A Service Producer can use this procedure to deregister an R1 service that it is registered to provide.

**Update service registration**: A Service Producer can use this procedure to update the registration of an R1 service that it provides.

**Partially update service registration**: A Service Producer can use this procedure to Partially update the registration of an R1 service that it provides.

**Query registered services:** A Service Producer can use this procedure to retrieve information about the registered services.

### 5.1.4 Service discovery service

#### 5.1.4.1 Overview

This service allows Service Consumers to discover R1 services they intend to consume.

#### 5.1.4.2 Discovery of services

For service discovery, a set of procedures enables a Service Consumer to retrieve information on available services based on selection criteria.

NOTE: Available services either have been registered by service-producing rApps using the Service registration service (in case these are produced by rApps) or have been made known to the Service discovery service Producer by other means (in case they are produced by Service Producers inside the SMO/Non-RT RIC framework).

Upon receiving the request to discover services, the Service management and exposure services Producer verifies the identity of the Service Consumer (see clause 5.1.6). The Service management and exposure services Producer retrieves the stored service information, applies the authorization policy, and performs filtering of service information based on the selection criteria provided in the request.

The following procedures are defined:

**Discover services:** A Service Consumer uses this procedure to discover registered services. The Service Consumer can provide selection criteria to inquire about the registered services. The response contains a filtered list of available services based on which services the consumer is authorized to access.

**Subscribe service availability**: A Service Consumer can subscribe to notifications regarding changes in service(s) that are available and thereby receive a notification when a service has been registered, updated, or deregistered by a Service Producer. The subscription is created for the Service Consumer based on the services and capabilities that it is authorized to access, i.e., the Service Consumer only gets notified about changes in registration status of services that it is authorized to access. Upon subscription, the Service Consumer can pass selection criteria in order to control the set of services about which it wishes to be notified.

**Update service availability subscription**: A Service Consumer can update each of its own subscriptions for notifications regarding changes in the available services.

**Unsubscribe service availability**: A Service Consumer can unsubscribe from notifications regarding changes in the available services.

**Notify service availability changes**: The Service management and exposure services Producer can use this procedure to notify a subscribed Service Consumer about changes in the set of registered services that the Service Consumer is authorized to access.

### 5.1.5 Heartbeat service

#### 5.1.5.1 Overview

A Service Producer can use the Heartbeat service to maintain its R1 service registration status with the Service management and exposure services Producer if this service is provided.

#### 5.1.5.2 Heartbeat

The Service Producer sends a heartbeat message periodically, where the period may be specified in the response of the Register service procedure. On receiving the heartbeat message, the Service management and exposure services Producer validates it and sends a response to the Service Producer which may include information modifying the heartbeat message period. If a valid request is not received for a specified duration from a particular Service Producer, the Service management and exposure services Producer marks the Service Producer as no longer active, which may impact the state or discoverability of the produced services. The Service management and exposure services Producer will record the changes of the state or discoverability of the services related to the Service Producer that is no longer active and notify the Service Consumers subscribed to receive notifications of status changes via Notify service availability changes procedure.

The following procedure is defined:

**Heartbeat:** A Service Producer can use this procedure to maintain its R1 service registrations.

### 5.1.6 Authentication and authorization

#### 5.1.6.1 Overview

Authentication and authorization are realized as a combination of procedures and services that allow asserting the identity of Service Producers and Service Consumers and ensure that only authorized consumers can access the R1 services.

#### 5.1.6.2 Authentication

Authentication will be performed to authenticate the Service Consumers and Service Producers to allow them to provide or access R1 Services. Service Consumers and Service Producers can initiate secure communication for R1 services after the authentication information is validated.

Authentication procedures shall comply to the requirements specified in clause 5.2.6 in the O-RAN TS SRS [9].

#### 5.1.6.3 Authorization

Authorization procedures are used to grant Service Consumers access to registered R1 services and to allow Service Producers to produce R1 services.

Authorization can be based on a mechanism to enforce authorization by policies, where exposed R1 services are further subject to authorization policies before granting access to registered services. Authorization policies refer to the attributes that are associated to the Service Consumer. For example, authorization policy can be RBAC or TBAC and the additional details are supplied in the policy attributes.

Authorization procedures shall comply to the requirements specified in clause 5.2.6 in the O-RAN TS SRS [9].

The following procedures are defined:

**Access token request**: A Service Consumer can use the Access token request procedure to request access to the services as specified in clause 4.7.3.2 in the O-RAN TS SPS [4]. A token is granted for subsequent use of the requested R1 services that require authorization as specified in clause 4.7.3.3 in O-RAN TS SPS [4].

**Revoke access:** A Service Consumer with appropriate privileges (administrator) can use the Revoke access procedure to revoke the access to exposed R1 services.

NOTE: The details of the Revoke access procedure are not defined in this version of the specification.

### 5.1.7 rApp registration service

#### 5.1.7.1 Overview

The rApp consumes this service to register with the Service management and exposure services Producer.

#### 5.1.7.2 rApp registration management

The rApp consumes this service to register with the Service management and exposure services Producer and may provide the following information such as rApp name, vendor, software version, certificates, role of the rApp (Service Producer and / or Service Consumer), and security credentials. On successful registration, the Service management and exposure services Producer responds with an rApp identifier (rAppId).

NOTE: The procedure for provisioning the security credentials by an rApp with the Service management and exposure services Producer is not defined in the present document.

The following procedure are defined:

**Registration:** An rApp can use this procedure to register with Service management and exposure services Producer.

**Update registration:** An rApp can use this procedure to update its registration with Service management and exposure services Producer.

**Deregistration:** An rApp can use this procedure to deregister with Service management and exposure services Producer.

## 5.2 Data management and exposure services

### 5.2.1 General

As described in the Non-RT RIC Architecture specification [3], the Data management and exposure services enable:

* Registration of DME types,
* Discovery of DME types,
* Request for data,
* Subscription to data,
* Collection of data from Data Producers and consumption of data by Data Consumers,
* Access to optional data processing in the SMO/Non-RT RIC framework.

The Data management and exposure services use DME types as descriptions of certain types of data that are available. A DME type is defined by a DME type identifier and the syntax of the DME type is given by an associated schema. A DME type is defined by one schema while a schema may be associated with one or multiple DME types.

A Data Producer registers its production capabilities related to a DME type. The production capabilities information includes DME type information and producer constraints~~.~~ When one or more production capabilities related to a DME type have been registered, it is available for discovery, and request for / subscription to data, by authorized Data Consumers. A Data Consumer uses the discovered information about the DME type for requesting or subscribing to data instances. Further, the data instances for a DME type may be stored, or the actual data production may be triggered by the SMO/Non-RT RIC framework on the need for data collection, including based on a request for data by a Data Consumer or a data offer from a Data Producer.

Data Consumer refers to an rApp that can consume data for a DME type and Data Producer refers to an rApp that can produce data for a DME type.

Based on DME type information, to trigger data collection or data consumption, data instances can be requested or subscribed to. While a data request causes the delivery of a data instance as a one-time response, a data subscription potentially causes multiple data delivery actions. Data consumption refers to a Data Consumer requesting for or subscribing to a data instance. Data collection refers to the SMO/Non-RT RIC framework requesting for or subscribing to a data instance.

When initiating a data request or data subscription, the data instance to obtain is defined by the DME type information and by additional characteristics as listed below.

NOTE: DME type information can be made available to Data Consumers using the Discover DME types procedure (see clause 5.2.3.2 ) or from configuration. DME type information can be made available by Data Producers to the Data management and exposure functions using the Register DME types procedure (see clause 5.2.2.2 ).

This information that defines a data instance may contain, but is not limited to, the following parameters:

* DME type identifier,
* time interval for the data instance (start and end of the interval during which the data have been or will be collected),
* granularity of collection (how often data are to be collected),
* periodicity of delivery (how often data are to be delivered),
* scope (i.e., filter on the data),
* target (i.e., filter on the managed objects that the data is associated with).

The collection of data from the Data Producers can for instance be started based on a trigger from a Data Consumer that requests/subscribes to specified data that needs to be generated and collected, at the discretion of functions in the SMO/Non-RT RIC framework or based on a data offer from a Data Producer. If an additional Data Consumer request for / subscribes to a data instance of a certain DME type and scope that is already being collected by the Data Management and Exposure functions, no additional data collection will be started with the Data Producer if the collected data meets the criteria of additional request. Once the data production is initiated, Data Consumer can query the status of production of data instances, or the Data Consumer can be notified if there are any changes in data production as part of subscribe data.

Data management and exposure services include services that are produced by the Data management and exposure functions, as well as services to be produced by the Data Producers or Data Consumers and consumed by the Data management and exposure functions.

NOTE: In the Non-RT RIC Architecture specification [3], it is described that the Data management and exposure services can enable an rApp to discover and consume DME types produced by functions other than rApps, and that DME types produced by rApps can be consumed by functions other than rApps. The R1 interface only specifies how rApps interact with the Data management and exposure service in the roles of Data Producer and Data Consumer.

### 5.2.2 Data registration service

#### 5.2.2.1 Overview

Data Producers consume this service to register DME types. The Data management and exposure functions in the SMO/Non-RT RIC framework produce this service.

#### 5.2.2.2 Registration of DME types

Register DME type is a procedure where a Data Producer registers its production capabilities related to a DME type. Query DME type registration is a procedure where a Data Producer queries its production capabilities related to a DME type that it has previously registered. Update DME type registration is a procedure where a Data Producer updates its production capabilities related to a DME type that it has previously registered with the Data registration and discovery service Producer. Deregister DME type is a procedure where a Data Producer deregister its production capabilities related to a DME type.

As part of the Register DME type procedure, the Data Producer provides the data type identifier and further information about its production capabilities related to the DME type, such as if it is stored e.g., in an object store or can be continuously produced and delivered and may provide information on, including but not limited to, the following:

* DME type information which includes:
  + information on how to deliver the data, e.g., via push, pull or streaming,
  + periodicity of the data, in case it is generated periodically,
  + information on the data syntax (schema),
  + the supported data delivery methods (i.e., push and pull) by the Data Producer,
* Producer constraints of the Data Producer to filter the data (e.g., to provide only certain types of events if requested so by the Data Consumers),
* information whether the Data Producer supports data request or data subscription or both.

The following procedures are defined:

**Register DME type**: A Data Producer uses this procedure to register its production capabilities related to a DME type. On receiving the request, the Data registration service Producer determines whether the Data Producer is authorized to produce the DME type. In the response, the Data registration service Producer informs the Data Producer if it is allowed to produce the DME type.

**Query DME type registration**: A Data Producer uses this procedure to retrieve information about a its registration of production capabilities related to a DME type that it has previously registered.

**Update DME type registration**: A Data Producer uses this procedure to update its registration of production capabilities related to a DME type that it has previously registered.

**Deregister DME type:** A Data Producer can use this procedure to deregister its production capabilities related to a DME type that it has previously registered for which it is no longer able to produce data instances.

### 5.2.3 Data discovery service

#### 5.2.3.1 Overview

Data Consumers consume this service to discover available DME types. The Data management and exposure functions in the SMO/Non-RT RIC framework produce this service.

#### 5.2.3.2 Discovery of DME types

This set of procedures enables a Data Consumer to retrieve information on the registered DME types.

Discovery of a DME type does not imply availability of data instances of that DME type. It is just an indication that Data Consumers can request or subscribe to data for that DME type. It can happen that the actual data production is only triggered by the request or subscription actions of the Data Consumers.

The following procedures are defined:

**Discover DME types**: A Data Consumer can discover the DME types that are available. For each DME type, a DME type identifier and additional metadata are provided.

**Query DME type information**: A Data Consumer can retrieve information on a specific DME type identified by a DME type identifier. Such information enables the Data Consumer to formulate a request or subscription for data instances of that DME type.

**Subscribe DME types changes:** A Data Consumer can subscribe to notifications regarding changes in the set of available DME types and thereby receive notifications when DME types have been registered or deregistered. The subscription is created for the Data Consumer based on the DME types that it is authorized to access, i.e., the Data Consumer can only subscribe to get notified about changes in availability status of DME types that it is authorized to access.

**Unsubscribe DME types changes:** A Data Consumer can unsubscribe from notifications regarding changes in the set of available DME types.

**Notify DME types changes:** The Data registration and discovery service Producer uses this procedure to notify a subscribed Data Consumer about changes in the set of available DME types.

### 5.2.4 Data request service

#### 5.2.4.1 Overview

For data consumption, Data Consumers consume this service to request data instances, and the Data management and exposure functions in the SMO/Non-RT RIC framework produce this service.

For data collection, the Data management and exposure functions in the SMO/Non-RT RIC framework consume this service to request data instances, and Data Producers produce this service.

#### 5.2.4.2 Requesting data.

This set of procedures allows a Data request service Consumer to specify a data instance (for a registered DME type) to be delivered to it. The data instance is defined by information specified in clause 5.2.1

Data request is a one-time request and is performed via Request data procedure.

A data request can be stopped using the Cancel data request procedure. Data request service Consumer can query the status of the production of the data.

The following procedures are defined:

**Request data:** The Service Consumer provides, to the Data request service Producer, information on the data it requests based on the DME type information.

**Cancel data request:** The Service Consumer cancels a data request.

**Query data request status:** The Service Consumer queries the status of production of the data.

### 5.2.5 Data subscription service

#### 5.2.5.1 Overview

For data consumption, Data Consumers consume this service to subscribe to data instances, and the Data management and exposure functions in the SMO/Non-RT RIC framework produce this service.

For data collection, the Data management and exposure functions in the SMO/Non-RT RIC framework consume this service to subscribe to data instances, and Data Producers produce this service.

#### 5.2.5.2 Subscribing to data.

This set of procedures allows a Data subscription service Consumer to specify a data instance (for a registered DME type) to be delivered to it, and to choose the delivery service to use (e.g., push or pull). The data instance is defined by information specified in clause 5.2.1.

Subscribe data is a procedure that initiates the delivery of a data instance in potentially multiple chunks of data. A data subscription can be stopped using the Unsubscribe data procedure. A data subscription can be updated using Update data subscription procedure and a data subscription can be queried using Query data subscription.

The following procedures are defined:

**Subscribe data:** The Service Consumer provides, to the Data subscription service Producer, information on the data it wants to subscribe to be based on the DME type information retrieved using the Discover DME types procedure.

**Notify data availability:** The Service Consumer is provided information on the availability and retrieval scheme of the subscribed data instance. As a precondition, the Service Consumer must have used the Subscribe data procedure to create a subscription.

**Update data subscription:** The Service Consumer updates a data subscription.

**Query data subscription:** The Service Consumer queries a data subscription including the status of the subscription.

**Unsubscribe data:** The Service Consumer cancels a data subscription.

**Notify change of data subscription status:** The Service Consumer is provided information on the changes in the status of the data subscription. Data production is handled as part of data subscription and whenever there are changes in the data production it will be notified as part of the data subscription status change.

The procedures for delivery of data instances are described in clause 5.2.6.

### 5.2.6 Data delivery services

#### 5.2.6.1 Overview

Data delivery is handled through a set of services as defined below which deliver data as requested using the Request data procedure (see clause5.2.4.2 ) or the Subscribe data procedure (see clause5.2.5.2 ) or indicated using the Create data offer procedure (see clause 5.2.6).

Data delivery messages relate to a particular data request, data subscription or data offer. The data can be delivered in different ways, e.g.:

from a REST endpoint, via a message bus or from an object store location.

The means where and how the data can be retrieved can be made known to the recipient of the data by different means as part of the Request data, Subscribe data, Notify data availability, or Create data offer procedure.

NOTE: Additional procedures for data delivery can be added in later releases.

#### 5.2.6.2 Pull data service.

The pull data service allows the Service Consumer to obtain data via a pull mechanism from the Service Producer. Retrieval of data can occur once or multiple times (polling).

For data consumption, Data Consumers consume this service and the Data management and exposure functions in the SMO/Non-RT RIC framework produce this service.

For data collection, the Data management and exposure functions in the SMO/Non-RT RIC framework consume this service and Data Producers produce this service.

The following procedure is defined:

**Retrieve data:** The Service Consumer retrieves, from the Service Producer, data instances about whose existence the Service Consumer has been informed as part of the Request data, Notify data availability, or Create data offer procedure, using a pull communication mechanism.

#### 5.2.6.3 Push data service

The push data service allows the Service Consumer to push data to the Service Producer,

For data consumption, the Data management and exposure functions in the SMO/Non-RT RIC framework consume this service and Data Consumers produce this service.

For data collection, Data Producers consume this service and the Data management and exposure functions in the SMO/Non-RT RIC framework produces this service.

The following procedure is defined:

**Push data:** The Service Consumer provides, to the Service Producer a data instance using a push communication mechanism as arranged as part of the Request data, Subscribe data, or Create data offer procedure.

#### 5.2.6.4 Point to multipoint data streaming service

This service allows each Data Producer to deliver data to multiple Data Consumers using a message bus. It can be used as a delivery mechanism for data subscription or data offer.

For data subscription, the Data management and exposure functions in the SMO/Non-RT RIC framework inform the Data Producer which data stream to use to send data. Further, they inform the Data Consumer which data stream to use to fetch data.

For data offer, the Data management and exposure functions in the SMO/Non-RT RIC framework inform the Data Producer which data stream to use to send data.

The following procedures are defined:

**Send data to data stream:** The Data Producer sends data to a stream that is distributed by the message bus.

**Fetch data from data stream:** The Data Consumer fetches data from a stream that is distributed by the message bus.

### 5.2.7 Data offer service

#### 5.2.7.1 Overview

Data Producers consume this service to request producing data to the Data offer service Producer for immediate collection and storage. The Data management and exposure functions in the SMO/Non-RT RIC framework produce this service.

#### 5.2.7.2 Managing a data offer.

This service allows a Data Producer to declare to the Data offer service Producer that it intends to produce data instances for immediate collection and storage by the latter. Prior to creating a data offer, the Data Producer has registered the related DME type.

The Data Producer provides information on the data that it intends to provide based on the DME type information it has provided during data registration (see clause 5.2.2.2 ) and specifies additional characteristics of the data instance it intends to provide, similar to the information passed in the data request or data subscription (see clause 5.2.4.2 and 5.2.5.2).

The Data Producer can further indicate that it no longer intends to produce data for a data offer by deleting the offer.

The Data offer service Producer can indicate to the Data Producer that it does no longer wishes to receive data related to the offer by sending a data offer termination notification to the Data Producer, subsequently stopping collecting data related to the offer and terminating the offer.

The following procedures are defined:

**Create data offer:** A Data Producer provides, to the Data offer service Producer, information on the data it intends to deliver based on the DME type information passed during the Register DME type procedure. In case the push data service is intended to be used for data delivery, the Data offer service Producer provides to the Service Consumer information regarding the endpoint on which to receive the pushed data. In case the pull data service is intended to be used for data delivery, the Data offer service Producer provides to the Service Consumer information regarding the endpoint on which to receive the data availability notifications.

**Terminate data offer:** A Data Producer terminates a data offer it has created.

**Notify data offer termination:** The Data offer service Producer provides, to the Data Producer, a notification that it intends to stop collecting data from the data offer and terminating the offer. Following the reception of such notification, the Data Producer shall not deliver further data related to the data offer. The procedures for the delivery of data instances are described in clause 5.2.6.

## 5.3 A1-related Services

### 5.3.1 General

As described in the Non-RT RIC Architecture specification [3], the A1-related services produced by the SMO/Non-RT RIC framework enable the following functionalities related to the management of A1 policies and A1 enrichment information:

* Creation, modification, deletion, and query of A1 policies,
* Discovery of supported A1 policy types,
* Querying the status of A1 policies,
* Subscribe to event notifications related to A1 policies,
* Registration and deregistration of EI types.

### 5.3.2 A1 policy management services

#### 5.3.2.1 Overview

The A1 Policy management service is an R1 service that enables an rApp (the consumer of that service) to

* discover available A1 policy types and subscribe to notifications on added or removed A1 policy types,
* query for details of A1 policy types and details of A1 policy and enforcement status,
* create, update, and delete an A1 policy,
* subscribe to A1 policy enforcement status changes.

The term "A1 policy management service Producer" refers to the A1-related functions in the SMO/Non-RT RIC framework acting as Service Producer of the A1 policy management service. The term "A1 policy management service Consumer" refers to an rApp acting as Service Consumer of the A1 policy management service.

NOTE 1: Another name for this service that does not depend on southbound interface naming is not defined in the present document.

NOTE 2: The terms A1 policy type, A1 policy type identifier, A1 policy and A1 policy identifier refer to definitions made for the A1-P service over the A1 interface, see A1AP [1], and are used unchanged in the procedures of the A1 policy management service over the R1 interface.

#### 5.3.2.2 A1 Policy management

The following procedures are defined:

**Query A1 policy type identifiers**: An A1 policy management service Consumer can use this procedure to query for the available A1 policy types. The A1 policy management service Producer will respond with the list of identifiers for all the available A1 policy types.

**Subscribe to policy type availability changes:** An A1 policy management service Consumer can use this procedure to subscribe to notifications on policy type availability changes, i.e., when an A1 policy type becomes available or when an A1 policy type becomes unavailable.

**Query A1 policy type:** An A1 policy management service Consumer can use this procedure to query the details of an A1 policy type by providing the A1 policy type identifier. The A1 policy management service Producer will respond with information about the A1 policy type.

**Query A1 policy identifiers:** An A1 policy management service Consumer can use this procedure to query for the A1 policies, or a subset of the A1 policies by providing query parameters such as A1 policy type identifier or Near-RT RIC identifier. The A1 policy management service Producer will return the list of A1 policy identifiers that matches with the query criteria.

**Query A1 policy:** An A1 policy management service Consumer can use this procedure to query for the details of an A1 policy by providing the A1 policy identifier. The A1 policy management service Producer will respond with information about the A1 policy.

**Create A1 policy**: An A1 policy management service Consumer can use this procedure to create an A1 policy by providing the below parameters:

* Information about the A1 policy,
* A1 policy type identifier,
* Near-RT RIC identifier.

On receiving the request, the A1 policy management service Producer determines whether the A1 policy type is supported by the Near-RT RIC, assigns an A1 policy identifier for the new A1 policy, and informs the A1 policy management service Consumer on the outcome of the A1 policy creation.

**Update A1 Policy**: An A1 policy management service Consumer can use this procedure to update an A1 policy by providing the below parameters:

* information about the A1 policy,
* A1 policy identifier.

On receiving the request, the A1 policy management service Producer determines whether the A1 policy is available in the Near-RT RIC and informs the A1 policy management service Consumer on the outcome of the A1 policy update.

**Query A1 policy status**: An A1 policy management service Consumer can use this procedure to query the enforcementstatus of a single A1 policy by providing the A1 policy identifier. The A1 policy management service Producer will respond with the enforcementstatus of the A1 policy.

**Subscribe A1 policy status:** An A1 policy management service Consumer can use this procedure to subscribe to status changes of A1 policies by providing either a list of A1 policies or a list of Near-RT RIC identifiers or a list of policy type identifiers. i.e., when A1 policies status becomes enforced or not enforced.

**Query A1 policy status subscription:** An A1 policy management service Consumer can use this procedure to query an A1 policy status subscription.

**Update A1 policy status subscription:** An A1 policy management service Consumer can use this procedure to update an A1 policy status subscription.

**Unsubscribe A1 policy status:** An A1 policy management service Consumer can use this procedure to unsubscribe from status changes of A1 policies.

**Notify A1 policy status changes:** An A1 policy management service Consumer is provided information on the status change of an A1 policy (i.e., when status changes from enforced or not enforced).

**Delete A1 policy**: An A1 policy management service Consumer can use this procedure to delete an existing A1 policy. The A1 policy management service Producer will respond with the outcome of the A1 policy deletion.

NOTE: In the responses of the above procedures, the A1 policy management service Producer can either use stored information that has already been received via the A1 interface (e.g., information on available A1 policy types), or information directly resulting from an A1 procedure performed due to the R1 procedure (e.g., creation of an A1 policy).

### 5.3.3 A1 enrichment information related services

#### 5.3.3.1 Overview

A1 enrichment information related services enable rApp to register and deregister of EI types of which data it can produce as the source for the EI job results delivered over the A1 interface.

#### 5.3.3.2 A1 enrichment information

The following procedures are defined:

**Register EI type:** An rApp uses this procedure to register an EI type that it can produce as the source for the EI job results delivered over the A1 interface to the A1 enrichment information functions. In the registration request, the rApp includes the EI source data type registered in the DME functions. On receiving the request, the A1 enrichment information functions can subscribe EI source data from DME functions using the EI source data type. In the response, the A1 enrichment information functions inform the rApp on the EI type capabilities that it is registered to provide.

**Deregister EI type:** An rApp can use this procedure to deregister EI types that it has previously registered, but that it is no longer able to produce.

### 5.3.4 A1 ML model management services

#### 5.3.4.1 Overview

The availability of AI/ML model training capabilities over A1 is indicated in the AI/ML model training capability registration as specified in Clause 5.6.6 .

## 5.4 RAN OAM-related Services

### 5.4.1 General

As described in the Non-RT RIC Architecture specification [3], the RAN OAM-related services produced by the SMO/Non-RT RIC framework provide access to OAM functionality that enables the Service Consumer:

* To obtain information about alarms.
* To change their acknowledgment status.
* To obtain performance information related to the network.
* To obtain the current configuration of the network.
* To provision changes of the configuration of the network.
* To obtain additional information related to the network.

### 5.4.2 Network Information service

#### 5.4.2.1 Overview

The Network Information service provides to the Service Consumer information related to the network, in particular the RAN, that has been aggregated from multiple information sources that the SMO has access to, e.g., configuration, topology, network element state, geolocation, inventory, etc.

#### 5.4.2.2 Queries related to information about cells.

The Network Information service supports various information queries that give the rApps access to information aggregated from multiple sources.

The following procedure is defined:

**Query cells-related information:** This service operation allows to query aggregated information related to RAN cells.

NOTE: How to query the information, and how this relates to the Data management and exposure services, is not defined in the present document.

### 5.4.3 Fault management (FM) service

#### 5.4.3.1 Overview

The Fault management service allows the Service Consumer to obtain information about alarms.

The RAN OAM-related functions in the SMO/Non-RT RIC framework produce this service.

#### 5.4.3.2 Querying alarm information

The FM service shall allow the Service Consumer to query alarm information.

The following procedure is defined:

**Query alarms:** This procedure allows the Service Consumer to query the alarm list to obtain the whole list, a subset of the alarms in the list, or an individual alarm. The Service Consumer may specify a set of filtering criteria to control what is returned as result.

#### 5.4.3.3 Changing the alarm acknowledgement state.

The FM service shall allow the Service Consumer to change the acknowledgement state of individual alarms (i.e., to acknowledge or unacknowledge them).

The following procedure is defined:

**Change alarm acknowledgement state:** This procedure allows the Service Consumer to change the acknowledgement state of an alarm (i.e., to acknowledge or unacknowledge it).

### 5.4.4 Performance management (PM) service

#### 5.4.4.1 Overview

The performance management service allows the Service Consumer to access performance information that was collected from the network elements by the Service Producer.

The RAN OAM-related functions in the SMO/Non-RT RIC framework produce this service.

#### 5.4.4.2 Querying performance information

The PM service shall allow to query performance information using a set of filtering criteria.

The following procedure is defined:

**Query performance information:** This procedure allows to query performance information that has been collected from the network elements. The Service Consumer specifies a set of filtering criteria to determine the set of information returned.

NOTE: How to query the information, and how this relates to the Data management and exposure services, is not defined in the present document.

### 5.4.5 Configuration management (CM) service

#### 5.4.5.1 Overview

In the following, the term "Service Consumer" refers to the role of an rApp that consumes the Configuration management (CM) service. The term "Configuration management service Producer" refers to the role of the logical RAN OAM-related functions in the SMO/Non-RT RIC framework producing the CM service.

The CM service allows the Service Consumer to access configuration information pertaining to the managed entities, as obtained by the CM service Producer. The CM service further allows the Service Consumer to request configuration changes related to the managed entities.

NOTE: As a preliminary definition in the context of R1, the term "managed entities" represents (i) the RAN nodes and RAN functions managed by the SMO via O1 or M-plane interfaces, and (ii) the group of these known as RAN-specific network slice subnets. The exact definition of the term "managed entity" is not defined in the present document.

The following capabilities are provided by the CM service Producer over the R1 interface:

* Retrieving configuration schemas
* Reading configuration data
* Writing configuration changes

#### 5.4.5.2 Retrieving configuration schemas.

The CM service allows the Service Consumer to retrieve information pertaining to the configuration schemas of one or more managed entities.

The following procedure is defined:

**Get schemas:** A Service Consumer can use this procedure to retrieve configuration schemas for the managed entities. The CM service Producer will respond with the requested schemas. The schemas provide information about which configuration attributes are supported by the managed entities.

#### 5.4.5.3 Reading configuration data

The CM service allows the Service Consumer to read the configuration data, related to one or more managed entities.

The following procedure is defined:

**Read Configuration:** This procedure enables the Service Consumer to obtain configuration data (including the configuration attributes) related to one or more managed entities from the CM service Producer, subject to optional filtering criteria. The CM service Producer responds to the Service Consumer by providing the requested configuration data or indicates a failure with an appropriate cause.

#### 5.4.5.4 Writing configuration changes

The CM service allows the Service Consumer to write configuration changes, related to one or more managed entities.

The following procedure is defined:

**Write Configuration:** This procedure enables the Service Consumer to request the CM service Producer for writing configuration changes related to one or more managed entities. The CM service Producer responds to the Service Consumer with the status of the write operation for the configuration changes requested by the Service Consumer or indicates a failure with an appropriate cause.

## 5.5 O2-related Services

### 5.5.1 General

As described in the Non-RT RIC Architecture specification [3], the O2-related services produced by the SMO/Non-RT RIC framework provide access to O-Cloud management functionality that enables the Service Consumer:

* To obtain information related to O-Cloud infrastructure management such as,
* Infrastructure Inventory,
* Infrastructure Monitoring,
* Infrastructure Provisioning,
* Infrastructure Lifecycle Management,
* Infrastructure Software Management.
* To obtain information related to O-Cloud deployment management such as,
* Deployment Inventory,
* Deployment Monitoring,
* Deployment Lifecycle Management,
* To provision changes of the configuration of the O-Cloud,
* To obtain additional information related to the O-Cloud.

NOTE: Details about O-Cloud deployment management services, provision of configuration changes, additional information related to the O-Cloud is not defined in the present document.

### 5.5.2 O2 Infrastructure management service

#### 5.5.2.1 Overview

O2 Infrastructure management service allows the Service Consumer to obtain information related to O-Cloud infrastructure management services.

O2 related functions in the SMO/Non-RT RIC framework produce this service as specified in O2IMS [6].

#### 5.5.2.2 Query O2-IMS Information

O2 Infrastructure management service shall support various information queries that give the rApps access to information related O-Cloud infrastructure management services.

The following procedures are defined:

**Query O2ims\_Infrastructure Inventory related information**: This service procedure allows to query information related to infrastructure resource inventory and event notification service of O-Cloud.

**Query O2ims\_InfrastructureMonitoring related information**: This service procedure allows to query information related to telemetry reporting.

**Query O2ims\_InfrastructureProvisioning information**: This service procedure allows to query information related to O-Cloud provisioning services.

**Query O2ims\_InfrastructureLifecycleManagement information**: This service procedure allows to query information related to support of procedures for the automation of O-Clouds lifecycle events.

### 5.5.3 O2 Deployment management service

#### 5.5.3.1 Overview

O2 deployment management service allows the Service Consumer to obtain information related to O-Cloud deployment management services.

O2 related functions in the SMO/Non-RT RIC framework produce this service as specified in O2DMS [7] and O2GAP [8] .

#### 5.5.3.2 Query O2-DMS Information

O2 deployment management service shall support various information queries that give the rApps access to information related O-Cloud deployment management services.

The following procedures is defined:

**Query O2dms\_ Deployment** **Monitoring related information**: This service procedure allows to query information related to telemetry reporting.

## 5.6 AI/ML Workflow Services

### 5.6.1 General

As described in the Non-RT RIC Architecture specification [3], the AI/ML workflow services enable:

* Training of an AI/ML model
* Registration of an AI/ML model,
* Discovery of an AI/ML model,
* Subscription to change of an AI/ML model,
* Registration of capability to train an AI/ML model (optional),
* Query of AI/ML model training capability (optional),
* Storage of an AI/ML model,
* Monitoring the performance of a deployed AI/ML model,
* Retrieving the model location details of an AI/ML model.
* Requesting the deployment of an AI/ML model.
* Querying AI/ML model inference capabilities.
* Requesting inference of an AI/ML model.

The AI/ML workflow services include AI/ML model management and exposure services, which are produced by the AI/ML workflow functions. An AI/ML model is identified by a model identifier, which includes model name, model version and artifact version. Model identifier and model-related information can be registered, discovered and de-registered.

The model identifier can be used by an rApp in the AI/ML workflow procedures.

The cloud native application developer assigns the model name and the model version as part of an rApp package for model onboarding, see clause 6 in OAM architecture [10]. The model name and model version are not changed after onboarding or after rApp deployment with the AI/ML model, or after training by an AI/ML model training service Producer. If the AI/ML model needs to be upgraded, the cloud native application developer updates the model version, and the upgraded model is onboarded as part of a new rApp package.

The onboarded AI/ML model comes pre-trained, or is specialized during onboarding, and this is reflected in the initial value of the artifact version of the AI/ML model. After the registered AI/ML model has been trained by an AI/ML model training service Producer, the artifact version is updated.

AI/ML model Producer refers to an rApp that can register an AI/ML model and provides model-related information. When an AI/ML Model has been registered, it can be trained by authorized AI/ML Model Trainers and is available for discovery and deployment, by authorized AI/ML Model Consumers.

NOTE: The AI/ML model Producer acting in the run-time process is related to the rApp provided for onboarding, with an AI/ML model in the rApp package, by the cloud native application developer acting in the design-time process.

AI/ML model Trainer refers to an rApp that can train an AI/ML model, store a new AI/ML model artifact version, and provides training-related information. model training can be initiated via the AI/ML Model training service. Model storage and deletion can be initiated via the AI/ML model storage service.

AI/ML model Consumer refers to an rApp that can discover and request deployment or inference of AI/ML model artifact versions of an AI/ML model. AI/ML model discovery allows an AI/ML model Consumer to discover AI/ML model identifiers and AI/ML model metadata based on registered AI/ML models and provided selection criteria. AI/ML model change notifications allows AI/ML model Consumer to be notified about changes of the subscribed AI/ML models.

NOTE: Deployment of an rApp with an AI/ML model, e.g., after AI/ML model discovery, is not specified in the present document.

AI/ML model performance monitoring allows authorized AI/ML model performance monitoring service consumers to monitor the performance of deployed AI/ML models and receive periodical or event based performance related information.

AI/ML inference service allows authorized AI/ML model Consumers to request the inference of an AI/ML model. AI/ML inference service Producer provides model performance information via the AI/ML model performance monitoring service.

### 5.6.2 AI/ML model registration service

#### 5.6.2.1 Overview

AI/ML model Producers consume this service to register, query, update and delete an AI/ML model registration.

The AI/ML workflow functions in the SMO/Non-RT RIC framework produce this service.

#### 5.6.2.2 Registration of AI/ML model

This set of procedures enable AI/ML model Producer to register, and manage the registration of, an AI/ML model.

As part of the Register AI/ML model procedure, the AI/ML model Producer provides the producer identifier, model identifier and model-related information.

The following procedures are defined:

**Register AI/ML model**: An AI/ML model Producer uses this procedure to register an AI/ML model. On receiving the request, the AI/ML model management and exposure service Producer determines whether the AI/ML model Producer is authorized to register the AI/ML model. In the response, the AI/ML model management and exposure service Producer informs the AI/ML model Producer of the AI/ML model registration details.

**Query AI/ML model registration:** An AI/ML model Producer can use this procedure to retrieve information about model registrations it has previously made.

**Update AI/ML model registration:** An AI/ML model Producer can use this procedure to update an AI/ML model registration it has previously made.

**Deregister AI/ML model:** An AI/ML model Producer can use this procedure to deregister an AI/ML model it has previously registered.

### 5.6.3 AI/ML model storage service

#### 5.6.3.1 Overview

AI/ML model storage service Consumers consume this service to store and delete an AI/ML model or the location of the AI/ML model. The AI/ML workflow functions in the SMO/Non-RT RIC framework produce this service.

#### 5.6.3.2 Storage of AI/ML model

This set of procedures enable AI/ML model storage service Consumer to store and delete the AI/ML models and their locations.

The following procedures are defined:

**Store AI/ML model**: An AI/ML model storage service Consumer uses this procedure to store an AI/ML model. On receiving the request, the AI/ML model storage service Producer determines whether the AI/ML model storage service Consumer is authorized to store the AI/ML model. In the response, the AI/ML model storage service Producer informs the AI/ML model storage service Consumer if the AI/ML model is stored and about the location of the stored AI/ML model if stored.

**Store location of AI/ML model:** An AI/ML model storage service Consumer uses this procedure to store the location of an AI/ML model. On receiving the request, the AI/ML model storage service Producer determines whether the AI/ML model storage service Consumer is authorized to store location of the AI/ML model. In the response, the AI/ML model storage service Producer informs the AI/ML model storage service Consumer if the location of the AI/ML model is stored.

**Delete AI/ML model**: An AI/ML model storage service Consumer can use this procedure to delete an AI/ML model previously stored. On receiving the request, the AI/ML model storage service Producer determines whether the AI/ML model storage service Consumer is authorized to delete the AI/ML model. the AI/ML model storage service Producer informs the AI/ML model storage service Consumer that the AI/ML model is deleted.

**Delete location of AI/ML model**: An AI/ML model storage service Consumer can use this procedure to delete the AI/ML model location previously stored. On receiving the request, the AI/ML model storage service Producer determines whether the AI/ML model storage service Consumer is authorized to delete the AI/ML model file location. In the response, the AI/ML model storage service Producer informs the AI/ML model storage service Consumer that the location of the AI/ML model is deleted.

### 5.6.4 AI/ML model discovery services

#### 5.6.4.1 Overview

AI/ML model Consumers consume this service to discover registered AI/ML Models and their related information. The AI/ML workflow functions in the SMO/Non-RT RIC framework produce this service.

#### 5.6.4.2 Discovery of AI/ML model

This procedure enables an AI/ML model Consumer to discover registered AI/ML models and to retrieve information on the registered AI/ML models.

The following procedure is defined:

**Discover AI/ML model**: An AI/ML model Consumer can discover the AI/ML models that are registered based on provided selection criteria. For each registered AI/ML model, model identifiers and model metadata are provided as a response. The AI/ML model Consumer can only discover AI/ML models that it is authorized to access.

### 5.6.5 AI/ML model change subscription service

#### 5.6.5.1 Overview

AI/ML model Consumers consume this service to subscribe to change notifications for registered AI/ML models and to receive notifications about AI/ML model changes. The AI/ML workflow functions in the SMO/Non-RT RIC framework produce this service.

#### 5.6.5.2 Subscribing to AI/ML model changes.

This set of procedures enable AI/ML model Consumer to subscribe to change notifications for registered AI/ML models.

The following procedures are defined:

**Subscribe AI/ML models changes:** An AI/ML model Consumer can use this procedure to subscribe to notifications regarding changes related to registered AI/ML models and thereby receive notifications when AI/ML models have been registered or deregistered, when information has been updated, and when new model versions and/or artifact versions have been stored or deleted. The subscription is created for the Model Consumer based on the AI/ML models that it is authorized to access, i.e., the AI/ML model Consumer can only subscribe to get notified about model changes of AI/ML models that it is authorized to access.

**Unsubscribe AI/ML models changes:** An AI/ML model Consumer can unsubscribe from notifications regarding changes related to registered AI/ML models.

**Notify AI/ML models changes:** The AI/ML model management and exposure service Producer uses this procedure to notify a subscribed AI/ML model Consumer about changes related to registered AI/ML models.

### 5.6.6 AI/ML model training capability registration service

#### 5.6.6.1 Overview

AI/ML model Trainers consume this service to register, query, update and deregister its AI/ML model training capability. The AI/ML workflow functions in the SMO/Non-RT RIC framework produce this service.

AI/ML model training service Producer consumes this service to register its AI/ML model training capability. Register AI/ML model training capability is a procedure where an AI/ML model Trainer registers its capability to train AI/ML models to the AI/ML model management and exposure service Producer. Deregister AI/ML model training capability is a procedure where an AI/ML model Trainer declares the training capability is no longer available.

#### 5.6.6.2 Registration of AI/ML training capability

This set of procedures enable AI/ML model Trainer to register, and manage the registration of, its training capabilities.

As part of the Register AI/ML model training capability procedure, the AI/ML model Trainer provides the rApp identifier and further information about the training capability, it may provide information on, including but not limited to, the following:

* Information on the training platform that can be provided, e.g., framework and library,
* Information on available training resources.

The following procedures are defined:

**Register AI/ML model training capability**: An AI/ML model Trainer uses this procedure to register the capability to train AI/ML models. On receiving the request, the AI/ML model management and exposure service Producer determines whether the AI/ML model Trainer is authorized to register the AI/ML model training capability. In the response, the AI/ML model management and exposure service Producer informs the AI/ML model Trainer if the AI/ML model training capability is registered.

**Query AI/ML model training capability**: An AI/ML model Trainer uses this procedure to query an AI/ML model training capability registration it has previously made.

**Update AI/ML model training capability**: An AI/ML model Trainer uses this procedure to update an AI/ML model training capability registration it has previously made.

**Deregister AI/ML model training capability:** An AI/ML model Trainer can use this procedure to deregister an AI/ML model training capability that it has previously registered.

### 5.6.7 AI/ML Model deployment request service

This procedure enables an AI/ML model deployment Service Consumer to request the deployment of a registered AI/ML model. The AI/ML workflow functions in the SMO/Non-RT RIC framework produce this service.

The following procedure is defined:

**Request AI/ML model deployment**: An AI/ML model deployment Service Consumer requests the deployment of a registered AI/ML model. The model identifier and target deployment location of the registered AI/ML model is provided in the request. The AI/ML model deployment Service Consumer can only request the deployment of registered AI/ML models that it is authorized to access. The AI/ML model deployment Service Consumer is notified of the outcome of the model deployment request.

### 5.6.8 AI/ML model training services

#### 5.6.8.1 Overview

AI/ML model training service Consumers consume this service to request AI/ML model training, query AI/ML model training job status, cancel AI/ML model training, and receive notification about AI/ML model training job status change. AI/ML model Trainers or the AI/ML workflow functions in the SMO/Non-RT RIC framework produce this service.

#### 5.6.8.2 AI/ML model training

This set of procedures enable AI/ML model training service Consumer to request and manage the AI/ML model training of an AI/ML model.

The following procedures are defined:

**Request AI/ML model training**: An AI/ML model training service Consumer uses this procedure to request training of an AI/ML model by providing the information for training. The AI/ML training service Producer determines whether the AI/ML model training Consumer is authorized to request training of the AI/ML model. The AI/ML training service Producer creates the AI/ML model training job and responds to the AI/ML model training service Consumer with the training job identifier.

**Query AI/ML model training job status:** An AI/ML model training service Consumer uses this procedure to query AI/ML model training job status by providing the training job identifier that it has previously received.

**Cancel AI/ML model training:** An AI/ML model training service Consumer uses this procedure to request to cancel the training of an AI/ML model by providing the training job identifier that it has previously received.

**Notify AI/ML model training job status change:** An AI/ML training service Producer uses this procedure to notify an AI/ML model training service Consumer about a status change of an AI/ML model training job.

### 5.6.9 AI/ML model performance monitoring service

#### 5.6.9.1 Overview

The AI/ML model performance monitoring service is produced by the AI/ML model Consumer rApp. Authorized AI/ML model performance Consumers consume this service to subscribe to, and receive, performance information related to a deployed AI/ML model. During AI/ML model registration, supported AI/ML model performance related information is provided as part of the registration information.

#### 5.6.9.2 Monitoring the performance of a deployed AI/ML model.

This set of procedures enables the AI/ML model performance monitoring service Consumers to subscribe to, and receive, regular performance information related to a deployed AI/ML model. As part of the Subscribe AI/ML model performance procedure, the AI/ML model performance monitoring service Consumers provide the AI/ML model identifier, information for the AI/ML model performance monitoring, and optionally a notification URI to receive regular performance related information of the specified deployed AI/ML model.

The following procedures are defined:

**Subscribe AI/ML model performance:** AI/ML performance monitoring service Consumers can use this procedure to subscribe to specific or all performance related information of a deployed AI/ML model. Supported AI/ML model performance related information is provided as part of the AI/ML model registration information. In the request, AI/ML model performance monitoring service Consumers can specify whether to be periodically notified or only notified in the occurrence of a specific event (e.g., if the performance of a deployed AI/ML model drops below a certain threshold). On receiving the subscription request, the AI/ML model performance monitoring service Producer creates the subscription and informs the AI/ML model performance monitoring service Consumer of the subscription ID.

**Notify AI/ML model performance:** An AI/ML model performance monitoring service Producer can use this procedure to notify the AI/ML model performance monitoring service Consumers about performance information related to a deployed AI/ML model.

### 5.6.10 AI/ML model inference service

#### 5.6.10.1 Overview

AI/ML model Consumer consumes this service to query the inference capabilities and initiate the inference of an AI/ML model. The AI/ML model Producer or the AI/ML workflow functions in the SMO/Non-RT RIC framework produce this service.

#### 5.6.10.2 Inference of AI/ML model

The below set of procedures enable AI/ML model Consumer to query inference capabilities and request inference of an AI/ML model.

The following procedures are defined:

**Query AI/ML model inference capabilities:** An AI/ML model Consumer uses this procedure to retrieve the inference capability information such as model identifier, input data and output data. On receiving the request, the AI/ML inference service Producer determines whether the AI/ML model Consumer is authorized to retrieve the inference capability information. In the response, the AI/ML inference service Producer informs the AI/ML model Consumer regarding the AI/ML model inference capabilityinformation**.**

**Request AI/ML model inference:** An AI/ML model Consumer uses this procedure to request inference for an AI/ML model by providing the model identifier and input data. On receiving the request, the AI/ML inference service Producer determines whether the AI/ML model Consumer is authorized to request the inference of the AI/ML model. In the response, the AI/ML inference service Producer informs the AI/ML model Consumer of the model inference job identifier.

**Cancel AI/ML model inference:** An AI/ML model Consumer uses this procedure to request to cancel the inference by providing the inference job identifier that it has previously received.

### 5.6.11 AI/ML model training capability query services

#### 5.6.11.1 Overview

The AI/ML model training capability query service allows the Service Consumers to query all the available registered AI/ML model training capability. The AI/ML workflow functions in the SMO/Non-RT RIC framework produce this service.

#### 5.6.11.2 Query of AI/ML model training capability

This procedure enables a Service Consumer to query registered AI/ML model training capability.

The following procedure is defined:

**Query AI/ML model training capability:** A Service Consumer uses this procedure to retrieve the registered AI/ML model training capability information based on provided selection criteria. The Service Consumer can only query the AI/ML model training capability information of the AI/ML models that it is authorized to access. In the response, the Service Producer informs the Service Consumer AI/ML model Trainer rAppIds and the registered AI/ML model training capability information.

# 6 R1 Interface Protocol Structure

The "R1TP" [5] defines the R1 transport protocol stack.

Annex (informative):
Change History

|  |  |  |
| --- | --- | --- |
| Date | Revision | Description |
| 2024-11-21 | 10.00 | Published as final version by adding the A1 ML model management services, procedure to query of AI/Ml model training capabilities , procedure to retrieve the status of the data request and data subscription and updated the existing procedures for service registration and authorization service. |
| 2024-07-11 | 09.00 | Published final version by adding production capability related to DME type, added AI/ML model inference service, updated query procedure for subscription data and updated subscription procedures for SME. |
| 2024-03-18 | 08.00 | Published final version by adding AI/ML performance monitoring procedures and aligning the terms Producer and Consumer. |
| 2023-11-20 | 07.00 | Published final version by adding the AI/ML related service procedures and updated the data types to DME types and added the data streaming service in DME service. |
| 2023-07-27 | 06.00 | Published as Final version 06.00. |
| 2023-03-24 | 05.00 | Published as Final version 05.00. |
| 2022-11-18 | 04.00 | Published as Final version 04.00. |
| 2022-07-27 | 03.00 | Published as Final version 03.00. |
| 2022-03-31 | 02.00 | Published as Final version 02.00. |
| 2021-11-23 | 01.00 | Published as Final version 01.00. |
---

- View in [Reader Mode](https://simewu.com/spec-reader/pages/11-WG2/O-RAN.WG2.TS.R1GAP-R004-v10.00.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG2.TS.R1GAP-R004-v10.00.docx).
