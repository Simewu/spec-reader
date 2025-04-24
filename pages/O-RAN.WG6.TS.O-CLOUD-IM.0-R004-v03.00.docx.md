## O-RAN.WG6.TS.O-CLOUD-IM.0-R004-v03.00.docx

- View in [Reader Mode](https://simewu.com/spec-reader/pages/07-WG6/O-RAN.WG6.TS.O-CLOUD-IM.0-R004-v03.00.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG6.TS.O-CLOUD-IM.0-R004-v03.00.docx).

---

![webwxgetmsgimg (7).jpeg](../assets/images/9c69df009b87.jpg)O-RAN.WG6.TS.O-CLOUD-IM.0-R004-v03.00

*Technical Specification*

**O-RAN Work Group 6 (Cloudification and Orchestration Workgroup)**

**O-Cloud Information Model**

Contents

List of figures 3

List of tables 3

Foreword 6

Modal verbs terminology 6

Executive summary 6

Introduction 6

1. Scope 7
2. References 7
   1. Normative references 7
   2. Informative references 8
3. Definition of terms, symbols and abbreviations 8
   1. Terms 8
   2. Symbols 8
   3. Abbreviations 8
4. O-Cloud Information Model 9
   1. Information Modeling Conventions 9
      1. Modeling approach, Unified Modeling Language (UML) 9
      2. Namespaces in the Information Model 9
      3. Namespace Relationships 9
   2. Information Model Definitions 10
      1. Namespace: ORAN.O2ims.Inventory 10
      2. Namespace: ORAN.O2ims.Artifacts 76
      3. Namespace: ORAN.O2ims.Cluster 80
      4. Namespace: ORAN.O2ims.Provisioning 90
      5. Namespace: ORAN.O2ims.Infrastructure 94

Annex (informative): Change History 108

List of figures

Figure 4.1.3-1 Relationship between Namespaces 9

Figure 4.2.1.3.1.2-1 O2ims Inventory Objects Relationship Views 12

Figure 4.2.1.3.1.2-2 O2ims Inventory Event Subscribe/Notify Relationship View 13

Figure 4.2.1.3.1.3.1-1 O2ims Alarm Relationship View 13

Figure 4.2.1.3.1.3.2-1 Performance Monitoring Information Flow 14

Figure 4.2.1.3.1.3.2-2 O2ims Performance Store Relationship View 15

Figure 4.2.1.3.1.3.2-3 O2ims Performance Measurement Job Relationship View 16

Figure 4.2.1.3.1.3.2-4 O2ims Performance Subscription Relationship View 17

Figure 4.2.1.3.1.3.2-5 O2ims Performance Report Relationship View 18

Figure 4.2.1.3.1.4.1-1 illustrates the O-Cloud networking-related Resource relationships between the

Information Object Classes. 20

Figure 4.2.1.3.1.4.2.2-1 illustrates the Hardware Layer View and networking related Information Object Classes 21

Figure 4.2.1.3.1.4.2.3-1 illustrates the Execution Environment Layer View and networking related

Information Object Classes 22

Figure 4.2.1.3.2.1-1 O2ims Inventory Intra-Namespace Inheritance 22

Figure 4.2.1.3.2.1-2 O2ims Inventory Inter-Namespace Inheritance 23

Figure 4.2.1.3.2.2-1 O2ims Alarm Inheritance 23

Figure 4.2.1.3.2.2-1 O2ims Performance Inheritance 23

Figure 4.2.1.4.16.4-1 State & Status Diagram for PerformanceMeasurementJob 50

Figure 4.2.2.3.1.2-1 ORAN.O2ims.Artifacts Intra-Namespace Relationships 77

Figure 4.2.2.3.1.3-1 ORAN.O2ims.Artifacts Inter-Namespace Relationships 77

Figure 4.2.2.3.2.1-1 ORAN.O2ims.Artifacts Inheritance 78

4.2.3.3.1.2-1 ORAN.O2ims.Cluster Intra-Namespace Relationships 82

Figure 4.2.3.3.1.3-1 ORAN.O2ims.Cluster Inter-Namespace Relationships 82

Figure 4.3.2.2.2.1-1 ORAN.O2ims.Cluster Inheritance 83

Figure 4.2.4.3.1.2-1 ORAN.O2ims.Provisioning Intra-Namespace Relationships 91

Figure 4.2.4.3.1.3-1 ORAN.O2ims.Provisioning Inter-Namespace Relationships 91

Figure 4.2.4.3.2.1-1 ORAN.O2ims.Provisioning Inheritance 91

Figure 4.2.5.3.1.2-1 O-Cloud Networking Overview 96

Figure 4.2.5.3.1.2-2 ORAN.O2ims.Infrastructure Intra-Namespace Relationships 97

Figure 4.2.5.3.1.3-1 ORAN.O2ims.Infrastructure Inter-Namespace Relationships 97

Figure 4.2.5.3.2.1-1 ORAN.O2ims.Infrastructure Inheritance 98

List of tables

Table 4.2.1.2.1-1 Imported Entities 10

Table 4.2.1.2.2-1 Associated Entities 10

Table 4.2.1.4.1.2-1 Attributes Properties for OCloud 24

Table 4.2.1.4.2.2-1 Attributes Properties for ResourceType 26

Table 4.2.1.4.3.2-1 Attributes Properties for ResourcePool 28

Table 4.2.1.4.4.2-1 Attributes Properties for Resource 29

Table 4.2.1.4.5.2-1 Attributes Properties for DeploymentManager 31

Table 4.2.1.4.6.2-1 Attributes Properties for InventorySubscription 33

Table 4.2.1.4.8.1-1 InfrastructureInventoryEvent Requirements 35

Table 4.2.1.4.8.2-1 Attributes Properties for InfrastructureInventoryEvent 35

Table 4.2.1.4.9.1-1 OCloudAvailableNotification Requirements 36

Table 4.2.1.4.9.2-1 Attributes Properties for OCloudAvailableNotification 37

Table 4.2.1.4.10.1-1 AlarmEventRecord Requirements 38

Table 4.2.1.4.10.2-1 Attributes Properties for AlarmEventRecord 38

Table 4.2.1.4.11.1-1 AlarmEvent Requirements 40

Table 4.2.1.4.11.2-1 Attributes Properties for AlarmEvent 40

Table 4.2.1.4.12.1-1 Subscription Requirements 41

Table 4.2.1.4.12.2-1 Attributes Properties for AlarmSubscription 41

Table 4.2.1.4.13.1-1 AlarmList Requirements 43

Table 4.2.1.4.13.2-1 Attributes Properties for AlarmList 43

Table 4.2.1.4.14.2-1 Attributes Properties for PerformanceMeasurementStore 44

Table 4.2.1.4.15.2-1 Attributes Properties for PerformanceMeasurementRecord 45

Table 4.2.1.4.16.1-1 PerformanceMeasurementJob Requirements 46

Table 4.2.1.4.16.2-1 Attributes Properties for PerformanceMeasurementJob 46

Table 4.2.1.4.16.3-1 Attributes Constraints for PerformanceMeasurementJob 50

Table 4.2.1.4.17.2-1 Attributes Properties for MeasuredResource 50

Table 4.2.1.4.18.2-1 Attributes Properties for CollectedMeasurement 52

Table 4.2.1.4.19.2-1 Attributes Properties for PerformanceMeasurementJobChangeSubscription 53

Table 4.2.1.4.20.2-1 Attributes Properties for PerformanceMeasurementJobChangeNotification 55

Table 4.2.1.4.21.1-1 PerformanceSubscription Requirements 56

Table 4.2.1.4.21.2-1 Attributes Properties for PerformanceSubscription 56

Table 4.2.1.4.22.2-1 Attributes Properties for PerformanceReportingFrequency 59

Table 4.2.1.4.23.2-1 Attributes Properties for PerformanceSubscriptionCriteria 61

Table 4.2.1.4.24.1-1 PerformanceMeasurementReport Requirements 62

Table 4.2.1.4.24.2-1 Attributes Properties for PerformanceMeasurementReport 62

Table 4.2.1.4.25.2-1 Attributes Properties for JobReport 64

Table 4.2.1.4.26.2-1 Attributes Properties for ResourceReport 65

Table 4.2.1.4.27.2-1 Attributes Properties for MeasurementValue 66

Table 4.2.1.4.28.2-1 Attributes Properties for NotifyFileReady 67

Table 4.2.1.4.29.2-1 Attributes Properties for FileInfo 69

Table 4.2.1.4.30.2-1 Attributes Properties for Location 70

Table 4.2.1.4.31.2-1 Attributes Properties for OCloudSite 72

Table 4.2.1.4.32.2-1 Attributes Properties for LogQuery 73

Table 4.2.1.4.33.2-1 Attributes Properties for DateRange 75

Table 4.2.1.4.33.3-2 Attributes Constraints for DateRange 75

Table 4.2.2.2.1-1 Imported Entities 76

Table 4.2.2.2.2-1 Associated Entities 76

Table 4.2.3.2.1-1 Imported Entities 81

Table 4.2.3.2.2-1 Associated Entities 81

Table 4.2.3.4.1.2-1 Attributes Properties for NodeClusterType 83

Table 4.2.3.4.1.2-1 Attributes Properties for NodeCluster 84

Table 4.2.3.4.3.2-1 Attributes Properties for ClusterResourceType 86

Table 4.2.3.4.4.2-1 Attributes Properties for ClusterResource 87

Table 4.2.3.4.5.2-1 Attributes Properties for ClusterResourceGroup 89

Table 4.2.4.2.1-1 Imported Entities 90

Table 4.2.4.2.2-1 Associated Entities 90

Table 4.2.4.4.1.2-1 Attributes Properties for ProvisioningRequest 92

Table 4.2.4.4.1.3-1 Attributes Constraints for ProvisioningRequest 93

Table 4.2.4.4.2.2-1 Attributes Properties for ProvisioningStatus 94

Table 4.2.5.2.1-1 Imported Entities 95

Table 4.2.5.2.2-1 Associated Entities 95

Table 4.2.5.4.1.2-1 Attributes Properties for InfrastructureResourceType 98

Table 4.2.5.4.1.2-1 Attributes Properties for InfrastructureResource 99

Table 4.2.5.4.3.2-1 Attributes Properties for Gateway 101

Table 4.2.5.4.4.2-1 Attributes Properties for SiteNetwork 102

Table 4.2.5.4.5.2-1 Attributes Properties for AttachmentCircuit 104

Table 4.2.5.4.6.2-1 Attributes Properties for Port 105

Table 4.2.5.4.7.2-1 Attributes Properties for SegmentationElement 106

Table 4.2.5.4.8.2-1 Attributes Properties for NetworkAddress 106

Table 4.2.5.4.8.3-1 Attributes Constraints for EndPoint 107

Foreword

This Technical Specification (TS) has been produced by O-RAN Alliance.

Modal verbs terminology

In the present document "**shall**", "**shall not**", "**should**", "**should not**", "**may**", "**need not**", "**will**", "**will not**", "**can**" and "**cannot**" are to be interpreted as described in clause 3.2 of the O-RAN Drafting Rules (Verbal forms for the expression of provisions).

"**must**" and "**must not**" are **NOT** allowed in O-RAN deliverables except when used in direct citation.

Executive summary

The O-Cloud Information Model provides the logical model of information elements and their relationships. This includes:

* Enumerations which provide a predefined list of choices.
* Information Object Classes intended to convey classes that can become an Information Object
* Data Types which provide structure to the elements of an Information Object Class
* Notifications which is the information conveyed in a message from a service publisher to a service consumer

Introduction

The O2 interface exposes information about the O-Cloud to external clients, presumably the SMO as the primary consumer. There are many relationships between elements of the model which need to be

captured.

The O-Cloud Information Model is based on the 3GPP process defined to document a Network Resouce Model (NRM). The content contains all the salient elements of the NRM but does not follow the strict outline defined in 3GPP TS 32.160 [i.1]. The outline has been modified to align with other WG6 documents and to eliminate duplicative maintenance which leads to discord within the model.

UML provides a rich set of concepts, notations, and model elements to model distributive systems. 3GPP TS

32.156 [1] provides the necessary and sufficient set of UML notations and model elements, including the ones built by the UML extension mechanism <<stereotype>> to model network management systems and their managed nodes. These conventions are applied to the O-Cloud Information Model.

The Information model uses embedded PlantUML for diagraming. The information model relationships are modeled using UML Class diagram conventions.

1. Scope

The contents of the present document are subject to continuing work within O-RAN and may change

following formal O-RAN approval. Should the O-RAN Alliance modify the contents of the present document, it will be re-released by O-RAN with an identifying change of version date and an increase in version

number as follows: version xx.yy.zz where:

xx: the first digit-group is incremented for all changes of substance, i.e. technical enhancements, corrections, updates, etc. (the initial approved document will have xx=01). Always 2 digits with leading zero if needed.

yy: the second digit-group is incremented when editorial only changes have been incorporated in the document. Always 2 digits with leading zero if needed.

zz: the third digit-group included only in working versions of the document indicating incremental changes during the editing process. External versions never include the third digit-group. Always 2 digits with leading zero if needed.

**This document is both a Specification and an Informational Report in that it specifies the Information Model that is foundational for O-RAN's model-driven architecture for the O-Cloud information exposed over the O2 interface.**

**In addition, this document includes information about existing standards and industry work that serve as a basis for work items in O-RAN.**

**Lastly, this document describes the de facto methods and procedures with respect to a "modeling continuum" that aims to establish and evolve an O-Cloud Information Model from which O-RAN Data Models may be generated manually or with a set of tools.**

1. References
   1. Normative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies. In the case of a reference to a

3GPP document (including a GSM document), a non-specific reference implicitly refers to the latest version of that document in 3GPP Release 18.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long term validity.

The following referenced documents are necessary for the application of the present document.

1. 3GPP TS 32.156: Telecommunication management; Fixed Mobile Convergence (FMC)

Model repertoire

1. O-RAN.WG10.Information Model and Data Models.0; O-RAN Information Model and Data Models Specification;
2. O-RAN.WG6.ORCH-USE-CASES, Cloudification and Orchestration Use Cases and Requirements for O-RAN Virtualized RAN;
3. OMG: "Unified Modelling Language Specification, Version 2.5.1". <https://www.omg.org/spec/UML/2.5.1>;
4. IETF RFC 5424 : The Syslog Protocol ; March 2009
   1. Informative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies. In the case of a reference to a

3GPP document (including a GSM document), a non-specific reference implicitly refers to the latest version of that document in 3GPP Release 18.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long term validity.

The following referenced documents are not necessary for the application of the present document but they assist the user with regard to a particular subject area.

[i.1] 3GPP TS 32.160: Management and orchestration; Management service template [i.2] O-RAN.WG6.O2-GA&P, O2 Interface General Aspects and Principles;

[i.3] O-RAN.WG6.CADS, Cloud Architecture and Deployment Scenarios;

1. Definition of terms, symbols and abbreviations
   1. Terms

For the purposes of the present document, the following terms apply:

Generalized Object This is a kind of object whereby specialized objects can be derived from.

Specialized Object This is a kind of object which is derived from one or more Generalized Object(s).

* 1. Symbols

For the purposes of the present document, the following symbols apply:

* 1. Abbreviations

For the purposes of the present document, the [following] abbreviations [given in ... and the following] apply:

AAL Accelerator Abstraction Layer

OIM O-Cloud Information Model

1. O-Cloud Information Model
   1. Information Modeling Conventions
      1. Modeling approach, Unified Modeling Language (UML)

The Information Model within O-Cloud Infrastructure shall use the Unified Modeling Language(TM) (UML(R)) version 2.5.1 [4] from the Object Management Group (OMG).

The O-Cloud Infrastructure Information Model shall follow methodology documented in 3GPP TS 32.160 [i.1] Clause 5.2.

* + 1. Namespaces in the Information Model

A Namespace provides a container for named elements, which are called its members. A Namespace may also import named elements from other specifications, in which case those elements become members of the importing

Namespace.

* + 1. Namespace Relationships

Figure 4.1.3-1 describes the relationship between each namespace defined in this specification.

ORAN.O2ims.Provisioning

O-Cloud Provisioning

* Provisioning Requests with ID
* Object is LCM:ed as long as there is a

Requirement (SLO)

* SMO -> O-Cloud
* Point to a Template
* Include issued Template Parameters
* O-Cloud -> SMO
* Request Creation/Update Status

Fulfilled by

ORAN.O2ims.Cluster

O-Cloud (Managed) Node Clusters

* Have a NodeClusterResourceTypes
* Have Cluster Resources of ClusterResourceTypes
* Use consumable Resources (from Inventory)
* Incur indirect costs based on allocated

ORAN.O2ims.Infrastructure

O-Cloud (Managed) Infrastructure

![](../assets/images/659c72994d90.png)![](../assets/images/453c1d7f2cc5.png)

* Have a InfrastructureResourceTypes
* Have Infrastructure Resources of InfrastructureResourceTypes
* Use consumable Resources (from Inventory)
* Incur indirect costs based on allocated Resources (from Inventory)
* Have status on composed Infrastructure
* Have metrics on composed Infrastructure
  + Point to referenced Cluster and Infrastructure resources

Fulfilled by

Resources (from Inventory)

* Have status on composed Cluster Resources
* Have metrics on composed Cluster Resources
* E.g. NodeClusters, Nodes, NodeGroups,

NodeClusterSiteNWs, DeploymentManagers

* + E.g. O-CloudGWs, SiteNWs and

AttachmentCircuits

O-Cloud provided Managed Infrastructure services.

ased on

O-Cloud provided Managed Cluster services.

Use

ased on

ORAN.O2ims.Inventory

(Exposed) O-Cloud Resources

* + - Consumables (finite availability)
    - Incur some sort of costs
    - Have reality-based status
    - Have reality-based metrics
    - Have a ResourceTypedescriptions
    - E.g. Servers, VMs, Accelerators, Networks, Gateways, Storages

ORAN.O2ims.Artifacts

O-Cloud Artifacts

* Have Artifact Resources of ArtifactResourceTypes
* Not consumable
* Incur no costs
* Don t have status
* Don t have metrics
* E.g. Templates, lueprints, SW, FW, Config bundles, files, images, libraries

) Node Cluster and Infrastructure are based on the Artifacts Template that is pointed out by the

ProvisioningRequest and not

directly from any Node Cluster or Infrastructure attributes/references

**Figure 4.1.3-1 Relationship between Namespaces**

* 1. Information Model Definitions
     1. Namespace: ORAN.O2ims.Inventory
        1. Namespace Overview

The O-RAN O2ims Inventory namespace defines the classes and their attributes which are directly exposed to the consumer (SMO) via its O2 IMS Interface.

This namespace is used for O-Cloud infrastructure Resources. That content is meant only to be internally consumable to the O-Cloud. The O2ims Inventory has status, metrics and types as well as its topologies. These resources can be used to build up the O-Cloud Node Clusters and their compute, networking and storage capabilities.

* + - 1. Imported and associated information entities
         1. Imported information entities and local labels

Information entities imported into the model are also elements of the namespace and therefore shall remain unique within the namespace.

# Table 4.2.1.2.1-1 Imported Entities

|  |  |
| --- | --- |
| **Label reference** | **Local label** |
| TS 28.622 [6], information object class, Top | Top |
|  |  |

* + - * 1. Associated information entities and local labels

Information entities referenced in the model through an association which may be extended and

overloaded with a new entity of the same name within the namespace are listed in the associated entities table.

# Table 4.2.1.2.2-1 Associated Entities

|  |  |
| --- | --- |
| **Label reference** | **Local label** |
| WG10 IM/DM [2], PerformanceMeasureDictionary | PerformanceMeasureDictionary |
| WG10 IM/DM [2], *PerformanceMeasureDefinition\_* | PerformanceMeasureDefinition |
| WG10 IM/DM [2], AlarmDictionary | AlarmDictionary |
| WG10 IM/DM [2], AlarmDefinition | AlarmDefinition |
| WG10 IM/DM [2], ProbableCause | ProbableCause |
| 4.2.2.4.1, ArtifactResourceType | ArtifactResourceType |
| 4.2.2.4.1, ArtifactResource | ArtifactResource |
| 4.2.3.4.1, ClusterResourceType | ClusterResourceType |
| 4.2.3.4.2, ClusterResource | ClusterResource |
| 4.2.3.4.3, NodeClusterType | NodeClusterType |
| 4.2.3.4.4, NodeCluster | NodeCluster |
| 4.2.4.4.1, InfrastructureResourceType | InfrastructureResourceType |
| 4.2.4.4.2, InfrastructureResource | InfrastructureResource |

* + - 1. Class Diagram
         1. Relationships

Description

This clause depicts the set of classes (e.g. IOCs) that encapsulates the information relevant for the O-RAN Cloud (O-Cloud). This clause provides an overview of the relationships between relevant classes in UML. Subsequent clauses provide more detailed specification of various aspects of these classes. The UML Class diagram depicts a view of the namespace maintaining a defined focus so as not to overcrowd a single

diagram trying to depict all relationships within the namespace.

O2ims Inventory Object Relationships

The O2ims services have operations on the following managed service objects that are provided by the O- Cloud:

OCloud,

Location,

OCloudSite,

ResourceType,

ResourcePool,

Resource,

DeploymentManager, and

InventoryChangeSubscription

Figure 4.2.1.3.1.2-1 illustrates the relationships in between the information entities of the

O2ims\_InfrastructureInventory services. Figure 4.2.1.3.1.2-2 illustrates the relationship for the subscribe/notify pattern.

![Generated by PlantUML](../assets/images/69e989f6b713.png)

**Figure 4.2.1.3.1.2-1 O2ims Inventory Objects Relationship Views**

![Generated by PlantUML](../assets/images/75f77af48f15.png)

**Figure 4.2.1.3.1.2-2 O2ims Inventory Event Subscribe/Notify Relationship View**

Infrastructure Monitoring Relationships 4.2.1.3.1.3.1 Infrastructure Fault Relationships

The O2ims\_InfrastructureMonitoring services has operations on the following managed service objects that are provided by the O-Cloud for faults:

AlarmList

AlarmSubscription

LogQuery

Figure 4.2.1.3.1.3.1 -1 illustrates the relationships in between the information entities of the O2ims\_InfrastructureMonitoring fault services.

![Generated by PlantUML](../assets/images/0fb0f1f416f8.png)

**Figure 4.2.1.3.1.3.1-1 O2ims Alarm Relationship View**

4.2.1.3.1.3.2 Infrastructure Performance Relationships

The O2ims\_InfrastructureMonitoring services follow a flow described in the O2 GAP[i.2] clause 3.9.9. This primarily consists of:

1. The Performance Measurement Store - used for storage and configuration of performance measurements.
2. The Performance Measurement Job - used to collect performance measurements and insert them into the Performance Measurement Store.
3. The Performance Subscription - used to identify what PerformanceMeasurementRecord(s) in the PeformanceMeasurementStore are reported, when they are reported, and how the report is to be delivered to the subscriber.
4. The Performance Measurement Report - The notification payload used to convey measurement values identified by a Performance Subscription to the identified subscriber in a format selected by the subscriber.

![](../assets/images/d243cbf4f33c.png)

**Figure 4.2.1.3.1.3.2-1 Performance Monitoring Information Flow**

The O2ims\_InfrastuctureMonitoring information model have sub-components as follows:

* + Performance Store
    - PerformanceMeasurementStore
    - PerformanceMeasurementRecord
  + Performance Jobs
    - PerformanceMeasurementJob
    - MeasuredResource
    - CollectedMeasurement
    - PerformanceMeasurementJobChangeSubscription
    - PerformanceMeasurementJobChangeNotification
  + Performance Subscriptions
    - PerformanceSubscription
    - PerformanceReportingFrequency
    - PerformanceSubscriptionCriteria
  + Performance Reports
    - PerformanceMeasurementReport
    - JobReport
    - ResourceReport
    - MeasurementValue
    - NotifyFileReady
    - FileInfo

Figure 4.2.1.3.1.3.2-2 illustrates the relationships in between the PerformanceMeasurementStore and PerformanceMeasurementRecord and other information entities.

![Generated by PlantUML](../assets/images/0983a380e92a.png)

**Figure 4.2.1.3.1.3.2-2 O2ims Performance Store Relationship View**

Figure 4.2.1.3.1.3.2-3 illustrates the relationships in between the PerformanceMeasurementJob,

MeasuredResource, CollectedMeasurement, PerformanceMeasurementJobChangeSubscription and other information entities.

![Generated by PlantUML](../assets/images/1c06e38c0604.png)

**Figure 4.2.1.3.1.3.2-3 O2ims Performance Measurement Job Relationship View**

Figure 4.2.1.3.1.3.2-4 illustrates the relationships in between the PerformanceSubscription,

PerformanceReportingFrequency, PerformanceSubscriptionCriteria and other information entities.

![Generated by PlantUML](../assets/images/2472803aac7c.png)

**Figure 4.2.1.3.1.3.2-4 O2ims Performance Subscription Relationship View**

Figure 4.2.1.3.1.3.2-5 illustrates the relationships in between the PerformanceMeasurementReport, JobReport, ResourceReport, MeasurementValue, NotifyFileReady, FileInfo and other information entities.

![Generated by PlantUML](../assets/images/cc82fc9b493d.png)

**Figure 4.2.1.3.1.3.2-5 O2ims Performance Report Relationship View**

O-Cloud Networking Relationships 4.2.1.3.1.4.1 O-Cloud Networking Relationships Overview

The O-Cloud Network provides seamless connectivity within an O-Cloud Site and facilitates external connectivity, such as transport network access, to various O-Cloud Resources. Clause 3.4.3 of the O-RAN.WG6.O2-GA&P [i.2] specification,

outlines the fundamental concepts of the O-Cloud provisioning and defines these concepts at different layers. For instance, networking-related concepts such as O-Cloud Site Network Fabric (aka. SiteNWFabric) and O-Cloud Site Gateway (aka. SiteGW) can be defined at the hardware layer, which is related to that layers' consumable constructs, and the networking-related concepts such as O-Cloud Site Network (aka. SiteNW), O-Cloud Gateway, and O-Cloud AttachmentCircuit can be defined at the execution environment layer as described in the O-RAN.WG6.O2-GA&P [i.2] spec. Also, there can be inter-namespace relationships for instance, Networking concept related to an O-Cloud Node Cluster such as, O-Cloud Node Cluster Site Network (aka. NodeClusterSiteNW) defined in ORAN.O2ims.Clusters namespace mapped to a SiteNW object and terminated by an O-Cloud Gateway object defined in ORAN.O2ims.Inventory namespace.

An O-Cloud AttachmentCircuit as defined in O-RAN.WG6.O2-GA&P [i.2], clause 3.4.3.5.10 has two possible associations

-- one with an O-Cloud Gateway and another with the SiteNW. This accommodates the two scenarios where a SiteNW connects to the transport network through an O-Cloud Gateway or where a SiteNW connects directly to the transport network. There can also be the case that SiteNWs are only used for internal connectivity within an O-Cloud Site, in which case, there is no need to associate (neither directly, nor via an O-Cloud Gateway) a SiteNW to an O-Cloud AttachmentCircuit.

Figure 4.2.1.3.1.4-1 illustrates the O-Cloud networking-related Resource relationships between the Information Objects Classes.

![Generated by PlantUML](../assets/images/b3c398cd2605.png)

**Figure 4.2.1.3.1.4.1-1 illustrates the O-Cloud networking-related Resource relationships between the Information Object Classes.**

O-Cloud Networking Relationships View 4.2.1.3.1.4.2.1 Overview

The O-RAN.WG6.O2-GA&P [i.2], clause 3.4.3.3 outlines fundamental concepts of the Resource View. For enabling separation of authority and operations, O-Cloud offers various types of resource views, in the form of different group of actors, some of them deals with hardware or more physical types of O-Cloud Resources whereas, others consume logical set of O-Cloud Resources.

Hardware Layer View

The O-RAN.WG6.O2-GA&P [i.2], clause 3.4.3.4 explains the Hardware Layer concept, which forms the foundation of a cloud, comprising physical computes that are inter-connected through network fabric and routers for external

connectivity. According to O-RAN.WG6.CADS [i.3], a Cloud Site hosts Cloud Infrastructure equipment, abstracting O- Cloud Resources for leasing through the IMS. From the SMO perspective, understanding hardware concepts focuses on O-Cloud Resource locations, capabilities, capacity, availability, and potential disturbances, rather than physical realization.

![Generated by PlantUML](../assets/images/d99d4b31182d.png)

**Figure 4.2.1.3.1.4.2.2-1 illustrates the Hardware Layer View and networking related Information Object Classes**

Execution Environment Layer View

The O-RAN.WG6.O2-GA&P [i.2], clause 3.4.3.5 explains the Execution Environment Layer concept, which transforms hardware layer constructs into consumable O-Cloud Node(s), Site Network(s), Gateway(s), and many more, as abstract O-Cloud Resources available for leasing through the IMS.

![Generated by PlantUML](../assets/images/82f485263c07.png)

**Figure 4.2.1.3.1.4.2.3-1 illustrates the Execution Environment Layer View and networking related Information Object Classes**

* + - * 1. Inheritance

O2ims Inventory Inheritance

This subclause depicts the inheritance relationships of inventory object classes.

This subclause depicts the inheritance relationships.

![Generated by PlantUML](../assets/images/012a5d3e3614.png)

**Figure 4.2.1.3.2.1-1 O2ims Inventory Intra-Namespace Inheritance**

![Generated by PlantUML](../assets/images/ea13d038a4ff.png)

**Figure 4.2.1.3.2.1-2 O2ims Inventory Inter-Namespace Inheritance**

Infrastructure Monitoring Inheritance

This subclause depicts the inheritance relationships of alarm and performance.

![Generated by PlantUML](../assets/images/abc5eb44d31c.png)

**Figure 4.2.1.3.2.2-1 O2ims Alarm Inheritance**

Figure 4.2.1.3.2.2-2 depicts the inheritance relationships of Performance.

![Generated by PlantUML](../assets/images/46a4ab14073a.png)

**Figure 4.2.1.3.2.2-1 O2ims Performance Inheritance**

* + - 1. Class Definitions
         1. OCloud

Definition

The OCloud represents an instance of an O-Cloud. For more information about O-Cloud, refer to the "O-RAN O2 General Aspects and Principles Specification", clause 3.1 [i.2].

Attributes

# Table 4.2.1.4.1.2-1 Attributes Properties for OCloud

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| oCloudId | **Data Type:** string  **Description:** Identifier of the O-Cloud instance. Internally generated within an O-Cloud instance. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: uuid |
| globalCloudId | **Data Type:** string  **Description:** Identifier of the O-Cloud instance assigned by the SMO. This identifier is globally unique across O- Cloud instances known to the SMO. This value was provided by the SMO at cloud genesis and is stored in the O-Cloud IMS Inventory. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: uuid |
| name | **Data Type:** string  **Description:** Human readable name of the O-Cloud as identified by the SMO at cloud genesis. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: False |
| description | **Data Type:** string  **Description:** Human readable description of the O-Cloud as provided by the SMO at cloud genesis. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: False |
| infrastructureManage mentServicesEndPoi nt | **Data Type:** string  **Description:** The URI root to all services provided by the O2ims interface. Inventory is one of these services. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: False |

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| resourceTypes | **Data Type:** array  **Description:** List of Resource types. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: False  x-isOrdered: False  minItems: 1  uniqueItems: True items:  ResourceTyp e |
| oCloudSites | **Data Type:** array  **Description:** List of O-Cloud Sites that are known by the IMS and need to be exposed to the SMO for Homing. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: False  x-isOrdered: True  minItems: 1  uniqueItems: True  items: OCloudSite |
| deploymentManagers | **Data Type:** array  **Description:** List of  Deployment managers. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: False  x-isOrdered: False  minItems: 1  uniqueItems: True items:  DeploymentM anager |
| smoRegistrationServi ce | **Data Type:** string  **Description:** IP address endpoint or the URL of the SMO. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: False  format: uri |
| extensions | **Data Type:** array  **Description:** These are unspecified (not  standardized) properties  (keys) which are tailored by the vendor to extend the information provided about the O-Cloud. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True  x-isOrdered: False  minItems: 0  uniqueItems: True items:  AttributeVa luePair |

Attribute constraints

None*.*

State diagram

None*.*

* + - * 1. ResourceType

Definition

The ResourceType represents a resource type in an O-Cloud.

Resource types provide the categorization of O-Cloud Nodes as described in the O-RAN Cloud Architecture and Deployment Scenarios [i.3] specification. The values for these types are used to build the inventory and enable an authorized consumer to track resource changes over time. The O-Cloud provides a mechanism to discover the resource types with respective operations on resource types.

Attributes

# Table 4.2.1.4.2.2-1 Attributes Properties for ResourceType

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| resourceTypeId | **Data Type:** string  **Description:** Identifier of the resource type. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: uuid |
| name | **Data Type:** string  **Description:** Name of the resource type as identified by the cloud provider. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: False |
| description | **Data Type:** string  **Description:** Human readable description of the resource type. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: False |
| vendor | **Data Type:** string  **Description:** Name of the provider of the resource type. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False |
| model | **Data Type:** string  **Description:** Information about the model of the resource type | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False |
| version | **Data Type:** string  **Description:** Version or  generation of the resource type. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False |
| alarmDictionaryId | **Data Type:** string  **Description:** Identifier of the associated dictionary of alarms | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False  x-stateChangeNotification: False |

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
|  | that can be generated by the resource type. If no alarms are reported against a resource of this resourceType then the  alarmDictionaryId is set to null. | nullable: True  format: uuid |
| performanceDictionary Id | **Data Type:** string  **Description:** Identifier of the associated dictionary of  performance measurements that can be collected for the resource type. If the resource of this resourceType does not provide any measurements then the performanceDictionaryId is set to null. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: True  format: uuid |
| resourceKind | **Data Type:** string  **Description:** A value describing the "physicality" of the resource type. | 1. support-qualifier: M   readOnly: True   * 1. sInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False   enum:   * + - UNDEFINED     - PHYSICAL     - LOGICAL |
| resourceClass | **Data Type:** string  **Description:** A value describing the functional role within the cloud for the resource type.  The list of resource classes is not exhaustive, additional classes will be assessed on a case by case basis. | 1. support-qualifier: M   readOnly: True   * 1. sInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False   enum:   * + - UNDEFINED     - COMPUTE     - NETWORKING     - STORAGE |
| extensions | **Data Type:** array  **Description:** These are  unspecified (not standardized) properties (keys) which are  tailored by the vendor to extend the information provided about the Resource Type. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: True  x-isOrdered: False  minItems: 0  uniqueItems: True items:  AttributeVa luePair |

Attribute constraints

None*.*

State diagram

None*.*

* + - * 1. ResourcePool

Definition

The ResourcePool represents a resource pool instance in an O-Cloud.

The O-Cloud is a distributed cloud with resources placed in different locations. Those resources are organized into resource pools. There can be more than one resource pool for a given O-Cloud at the same physical location. However, each resource pool requires a different identity since the SMO will direct a

deployment based on homing policies to a specific location. This is different than typical cloud deployments as location is key to meeting latency requirements, sometime to elements outside of the O-Cloud.

NOTE 1: The identity of a resource pool cannot be tied to a specific resource within the pool as that resource may be replaced as part of the O-Cloud lifecycle.

NOTE 2: The resource pool is described in the Cloud Architecture and Deployment Secnarios Technical Report [i.3] but may not be needed for exposure through the Information Model and subsequent O2 IMS interface.

Attributes

# Table 4.2.1.4.3.2-1 Attributes Properties for ResourcePool

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| resourcePoolId | **Data Type:** string  **Description:** Identifier of the resource pool. Locally unique within the scope of an O- Cloud instance. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: uuid |
| name | **Data Type:** string  **Description:** Human readable name of the resource pool. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: False |
| oCloudSiteId | **Data Type:** string  **Description:** Identifier of the O-Cloud site the resource pool is a part of. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: uuid |
| description | **Data Type:** string  **Description:** Human readable description of the resource pool. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: False |

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| resources | **Data Type:** array  **Description:** List of resource IDs that are part of the resource pool. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: False  x-isOrdered: False  minItems: 1  uniqueItems: True  items: string |
| extensions | **Data Type:** array  **Description:** These are unspecified (not  standardized) properties  (keys) which are tailored by the vendor to extend the information provided about the Resource Pool. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True  x-isOrdered: False  minItems: 0  uniqueItems: True items:  AttributeVa luePair |

Attribute constraints

None*.*

State diagram

None*.*

* + - * 1. Resource

Definition

The Resource represents an instance of a resource in the O-Cloud.

Resource pools are comprised of resources, wherein a specific instance of a resource can only be part of a single resource pool.

Resources are of a specific resource type. The resource type of a given resource instance does not change over the lifetime of such a resource instance.

The Resource is a Specialized Object that derives from a Generalized Object, the

InfrastructureInventoryObject. The Resource inherits the attributes from the InfrastructureInventoryObject.

Attributes

# Table 4.2.1.4.4.2-1 Attributes Properties for Resource

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| resourceId | **Data Type:** string  **Description:** Identifier of the  resource. Locally unique within the scope of an O- | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False |

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
|  | Cloud instance. | format: uuid |
| description | **Data Type:** string  **Description:** Human readable description of the resource. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: False |
| resourceTypeId | **Data Type:** string  **Description:** Reference to the resource type of the resource. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: uuid |
| globalAssetId | **Data Type:** string  **Description:** Identifier or serial number of the resource, if available. It is  required only if the resource has been identified during its addition to the cloud as a reportable asset in the SMO inventory. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: True |
| resourcePoolId | **Data Type:** string  **Description:** Reference to the resource pool that the resource is part of. | support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: uuid |
| elements | **Data Type:** array  **Description:** The resource might be composed of  smaller resources or other resource instances of a  different type. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: True  x-isOrdered: False  minItems: 0  uniqueItems: True  items: Resource |
| tags | **Data Type:** array  **Description:** Keywords  describing or classifying the resource instance. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True  x-isOrdered: False  minItems: 0  uniqueItems: True  items: string |
| groups | **Data Type:** array  **Description:** Keywords denoting groups a resource belongs to. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True  x-isOrdered: False  minItems: 0  uniqueItems: True |

|  |  |  |  |
| --- | --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** | |
|  |  | items: | string |
| extensions | **Data Type:** array | x-support-qualifier: readOnly:  x-isInvariant:  x-inventoryNotification:  x-stateChangeNotification: nullable:  x-isOrdered: minItems: uniqueItems: items: | M  True False False False True False 0  True  AttributeVa luePair |
|  | **Description:** These are |
|  | unspecified (not |
|  | standardized) properties |
|  | (keys) which are tailored by |
|  | the vendor to extend the |
|  | information provided about |
|  | the Resource. |

Attribute constraints

None*.*

State diagram

None*.*

* + - * 1. DeploymentManager

Definition

The DeploymentManager represents an instance of a DMS in the O-Cloud. This class allows a client to

discover the details about a DMS instance. This class provides a list of supported capabilities, and metrics for total capacity, current allocations, current reservations. For more information about DMS, refer to "O- RAN O2 General Aspects and Principles Specification, clause 1.3.1 "[i2].

The available capacity information supported by a DeploymentManager shall be calculated as Capacity - Allocated - Reserved.

Attributes

# Table 4.2.1.4.5.2-1 Attributes Properties for DeploymentManager

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| deploymentManag erId | **Data Type:** string  **Description:** Identifier of the deployment manager. Locally unique within the scope of an O-Cloud instance. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: uuid |
| name | **Data Type:** string  **Description:** Human readable name of the deployment manager as identified by the cloud provider. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: False |

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| description | **Data Type:** string  **Description:** Human readable description of the  deployment manageras populated by the cloud provider. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: False |
| oCloudId | **Data Type:** string  **Description:** Reference to the O-Cloud associated to the  deployment manager. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: True x-stateChangeNotification: False nullable: False  format: uuid |
| deploymentManag ementServiceEndp oint | **Data Type:** string  **Description:** Endpoint to access the management  services of the deployment manager. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: False  format: uri |
| supportedLocation s | **Data Type:** array  **Description:** List of globalLocationIDs that were assigned to resource pools that resources allocated to the service instance belong to. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: False  x-isOrdered: False  minItems: 1  uniqueItems: True  items: string |
| capabilities | **Data Type:** array  **Description:** Information about the capabilities supported by this set of deployment management services based on the resources allocated to the service instance. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: True  x-isOrdered: False  minItems: 0  uniqueItems: True items:  AttributeVa luePair |
| capacity | **Data Type:** array  **Description:** Information about the available, allocated and reserved O-Cloud resources capacity allocated to the deployment manager. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: True  x-isOrdered: False  minItems: 0  uniqueItems: True items:  AttributeVa luePair |
| extensions | **Data Type:** array | x-support-qualifier: M  readOnly: True |

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
|  | **Description:** These are unspecified (not  standardized) properties  (keys) which are tailored by the vendor to extend the information provided about the Resource Type. | x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True  x-isOrdered: False  minItems: 0  uniqueItems: True items:  AttributeVa luePair |

Attribute constraints

None*.*

State diagram

None*.*

* + - * 1. InventorySubscription

4.3.1.4.6.1 Definition

The InventorySubscription represents an instance of a subscription to infrastructure inventory notifications for when an *InfrastructureInventoryObject\_* within the inventory changes.

Subscriptions are required for a notification to be generated. Information about the change is provided to the consumer when the consumers specified criteria is met. The absence of a filter means all events are sent.

Attributes

# Table 4.2.1.4.6.2-1 Attributes Properties for InventorySubscription

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| subscriptionId | **Data Type:** string  **Description:** Identifier of the subscription. Locally unique within the scope of an O- Cloud instance. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: uuid |
| callback | **Data Type:** string  **Description:** The URL of the callback to which  notifications are delivered to. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: uri |
| consumerSubscript ionId | **Data Type:** string  **Description:** The consumer may provide its identifier for tracking, routing, or  identifying the subscription | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True  format: uuid |

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
|  | used to report the event. |  |
| filter | **Data Type:** string  **Description:** Criteria for events which do not need to be reported or will be filtered by the subscription  notification service.  Therefore, if a filter is not provided then all events are reported. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True |

Attribute constraints

None*.*

State diagram

None*.*

* + - * 1. *InfrastructureInventoryObject\_*

Definition

The *InfrastructureInventoryObject\_* is an abstract class which shall be implemented by one of its specific sub-classes. The *InfrastructureInventoryObject\_* does not have any common attributes.

The *InfrastructureInventoryObject\_* is a Generalized Object for which specializations of this class, Specialized Object classes, can be included in a change notification.

Attributes

This class does not provide any attributes.

Attribute constraints

None*.*

State diagram

None*.*

* + - * 1. InfrastructureInventoryEvent <<notification>>

Definition

The InfrastructureInventoryEvent is sent to consumers with an accepted subscription request and a filter

criterion matching the content of the InfrastructureInventoryEvent attributes. This event can be triggered by

change to an attribute in any subclass of the *InfrastructureInventoryObject\_* in which the property for x- inventoryNotification: or x-stateChangeNotification is "True".

NOTE: It is up to the protocol and data model specification to determine the one or various protocol operations enabling the notification service to invoke the specified callback procedure.

# Table 4.2.1.4.8.1-1 InfrastructureInventoryEvent Requirements

|  |  |  |
| --- | --- | --- |
| **Referenced Specification** | **Requirement** | **Comment** |
| O-RAN.WG6.ORCH-USE-  CASES [3] | REQ-ORC-GEN13 | *Optional clarification* |
| O-RAN.WG6.ORCH-USE-  CASES [3] | REQ-ORC-O2-08 |  |

The information representing InfrastructureInventoryEvent shall follow the provisions indicated in table 4.2.1.4.8.2-1.

Attributes

# Table 4.2.1.4.8.2-1 Attributes Properties for InfrastructureInventoryEvent

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| consumerSubscript ionId | **Data Type:** string  **Description:** The consumer may provide its identifier for tracking, routing, or identifying the subscription used to report the event. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: uuid |
| notificationEventTy pe | **Data Type:** string  **Description:** The type (CREATE, MODIFY, DELETE) of  event being reported | 1. support-qualifier: M   readOnly: True   * 1. sInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: False   format: enum  enum:   * + - CREATE     - MODIFY     - DELETE |
| objectRef | **Data Type:** string  **Description:** The resultant reference to the object on which the action occured. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True  format: url |
| priorObjectState | **Data Type:**  InfrastructureInventoryObjec t  **Description:** If the Event type is 'MODIFY' or 'DELETE' this  this field will be populated  with a copy of the object | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: True |

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
|  | prior to the event. |  |
| postObjectState | **Data Type:**  InfrastructureInventoryObjec t  **Description:** If the Event type | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: True |
|  | is 'CREATE' or 'MODIFY' this |  |
|  | this field will be populated |  |
|  | with a copy of the object |  |
|  | after the event. |  |

Attribute constraints

None*.*

State diagram

None*.*

* + - * 1. OCloudAvailableNotification <<notification>>

Definition

Although the Genesis lifecycle event precedes the existence of the O2ims in the O-Cloud there is a minimal set of data expected to be provided from the SMO to the process. This information is retained in the O- Cloud and is used to register the O-Cloud with the SMO once it becomes usable. Data expected to be included with the callback URI in the genesis data is the globalCloudId, each globalLocationId, and each globalAssetId for infrastructure at those locations. Once enough of the O-Cloud is discovered, provisioned and is available for additional provisioning or workload deployments, the O-Cloud shall send the O- CloudAvailableNotification to the consumer (SMO), thus registering its

InfrastructureManagementServiceEndPoint with the SMO. After receiving the notification, the SMO will interogate the InfrastructureInventory APIs to account for corporate assets and discover the DMS service endpoints to allow workloads to be deployed.

NOTE: It is up to the protocol and data model specification to determine the one or various protocol operations enabling the notification service to invoke the specified callback procedure.

# Table 4.2.1.4.9.1-1 OCloudAvailableNotification Requirements

|  |  |  |
| --- | --- | --- |
| **Referenced Specification** | **Requirement** | **Comment** |
| O-RAN.WG6.ORCH-USE-  CASES [3] | REQ-ORC-GEN5 | *Optional clarification* |

The information representing OCloudAvailableNotification shall follow the provisions indicated in table 4.2.1.4.9.2-1.

Attributes

# Table 4.2.1.4.9.2-1 Attributes Properties for OCloudAvailableNotification

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| globalCloudId | **Data Type:** string  **Description:** Identifier of the O-Cloud instance assigned by the SMO. This identifier is globally unique across O- Cloud instances known to the SMO. This value was provided by the SMO at cloud genesis and is stored in the O-Cloud IMS Inventory. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: uuid |
| oCloudId | **Data Type:** string  **Description:** Identifier of the O-Cloud instance. Unique within an O-Cloud instance. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: uuid |
| IMS\_EP | **Data Type:** string  **Description:** URL to the resource within the O-Cloud for other attributes. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: uri |

Attribute constraints

None*.*

State diagram

None*.*

* + - * 1. AlarmEventRecord <<dataType>>

Definition

The AlarmEventRecord represents a stored instance of an alarm detected within the O-Cloud Resources and stored by the IMS.

The AlarmEventRecord can represent either a current active alarm or one that occurred in the past. Retention of an AlarmEventRecord is dependent on IMS configuration which would be set through an IMS Provisioning service.

# Table 4.2.1.4.10.1-1 AlarmEventRecord Requirements

|  |  |  |
| --- | --- | --- |
| **Referenced Specification** | **Requirement** | **Comment** |
| O-RAN.WG6.ORCH-USE-  CASES [3] | REQ-ORC-O2-17 | *Optional clarification* |
| O-RAN.WG6.ORCH-USE-  CASES [3] | REQ-ORC-O2-73 |  |

Attributes

# Table 4.2.1.4.10.2-1 Attributes Properties for AlarmEventRecord

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| alarmEventRecordId | **Data Type:** string  **Description:** Identifier of an entry in the  AlarmEventRecord. Locally unique within the scope of an O-Cloud instance. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: uuid |
| resourceTypeId | **Data Type:** string  **Description:** A reference to the type of resource which caused the alarm. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: uuid |
| resourceId | **Data Type:** string  **Description:** A reference to the resource instance which caused the alarm. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: uuid |
| alarmDefinitionId | **Data Type:** string  **Description:** A reference to the Alarm Definition record in the Alarm Dictionary associated with the  referenced Resource Type. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False |
| probableCauseId | **Data Type:** string  **Description:** A reference to the ProbableCause of the Alarm. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False |
| alarmRaisedTime | **Data Type:** string  **Description:** This field is populated with a Date/Time stamp value when the  AlarmEventRecord is created. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: date-time |
| alarmChangedTime | **Data Type:** string | x-support-qualifier: M  readOnly: True |

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
|  | **Description:** This field is populated with a Date/Time stamp value when any value of the AlarmEventRecord is modified. | x-isInvariant: False  x-inventoryNotification: True x-stateChangeNotification: False nullable: False  format: date-time |
| alarmClearedTime | **Data Type:** string  **Description:** This field is populated with a Date/Time stamp value when the alarm condition is cleared. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: True nullable: True  format: date-time |
| alarmAcknowledgeTi me | **Data Type:** string  **Description:** This field is populated with a Date/Time stamp value when the alarm condition is acknowledged. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: True nullable: True  format: date-time |
| alarmAcklnowledged | **Data Type:** boolean  **Description:** This is a oolean value defaulted to False.  When a system acknowledges an alarm, it is then set to True. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: True default: False |
| perceivedSeverity | **Data Type:** string  **Description:** This is an enumerated set of values which identify the perceived severity of the alarm. | 1. support-qualifier: M    1. sInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: False   enum:   * + - CRITICAL     - MAJOR     - MINOR     - WARNING     - INDETERMINATE     - CLEARED |
| extensions | **Data Type:** array  **Description:** Unspecified (not standardized) properties  (keys) which are tailored by the vendor or operator to extend the information provided about the O-Cloud Alarm. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True  x-isOrdered: False  minItems: 0  uniqueItems: True items:  AttributeVa luePair |

Attribute constraints

None*.*

State diagram

None*.*

* + - * 1. AlarmEvent <<notification>>

Definition

The AlarmEvent represents a notification of an Alarm sent by the IMS to a registered Subcriber for a fault detected within an O-Cloud Resources.

The AlarmEvent can represent either a new alarm, a change of occurrence, or state change of an existing alarm.

# Table 4.2.1.4.11.1-1 AlarmEvent Requirements

|  |  |  |
| --- | --- | --- |
| **Referenced Specification** | **Requirement** | **Comment** |
| O-RAN.WG6.ORCH-USE-  CASES [3] | REQ-ORC-O2-16 | *Optional clarification* |

Attributes

# Table 4.2.1.4.11.2-1 Attributes Properties for AlarmEvent

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| globalCloudId | **Data Type:** string  **Description:** Identifier of the O-Cloud instance assigned by the SMO. This identifier is globally unique across O- Cloud instances known to the SMO. This value was provided by the SMO at cloud genesis and is stored in the O-Cloud IMS Inventory. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: uuid |
| consumerSubscriptio nID | **Data Type:** string  **Description:** Identifier provided by the subscriber for event to subscription  traceability within the consumer realm. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False |
| alarmNotificationType | **Data Type:** string  **Description:** This is an enumerated set of values which identify the type of notification being sent to the subscriber. | 1. support-qualifier: M   readOnly: True   * 1. sInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False   enum:   * + - NEW     - CHANGE     - CLEAR     - ACKNOWLEDGE |
| objectRef | **Data Type:** string | x-support-qualifier: M  readOnly: True |

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
|  | **Description:** This is a URL entry to the  AlarmEventRecord for this notification within the  AlarmList | x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: url |
| alarmEventRecord | **Data Type:**  AlarmEventRecord  **Description:** This is a copy of the AlarmEventRecord associated with this event preventing the need for the alarm consumer to do a read after the notification is  received. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False |

Attribute constraints

None*.*

State diagram

None*.*

* + - * 1. AlarmSubscription

Definition

The AlarmSubscription represents a consumer wishing to be notified when specified alarm conditions occur. The AlarmSubscription can be filtered by criteria based on the type of notification of fields of the

AlarmEventRecord.

# Table 4.2.1.4.12.1-1 Subscription Requirements

|  |  |  |
| --- | --- | --- |
| **Referenced Specification** | **Requirement** | **Comment** |
| O-RAN.WG6.ORCH-USE-  CASES [3] | REQ-ORC-O2-14 |  |
| O-RAN.WG6.ORCH-USE-  CASES [3] | REQ-ORC-O2-15 |  |

Attributes

# Table 4.2.1.4.12.2-1 Attributes Properties for AlarmSubscription

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| alarmSubscriptionId | **Data Type:** string  **Description:** Identifier of the subscription. Locally unique within the scope of an O- | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: uuid |

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
|  | Cloud instance. |  |
| consumerSubscriptio nID | **Data Type:** string  **Description:** The consumer may provide its identifier for tracking, routing, or identifying the subscription used to report the event if a value was provided in the SubscriptionRequest. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True |
| filter | **Data Type:** string  **Description:** Criteria for events which do not need to be reported or will be filtered by the subscription  notification service.  Therefore, if a filter is not provided then all events are reported. | 1. support-qualifier: M    1. sInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: False   enum:   * + - NEW     - CHANGE     - CLEAR     - ACKNOWLEDGE |
| callback | **Data Type:** string  **Description:** The URI of the callback to which  notifications are delivered to. | x-support-qualifier: M  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: url |

Attribute constraints

None*.*

State diagram

None*.*

* + - * 1. AlarmList

Definition

The AlarmList represents the configuration parameters of the AlarmList and the list of AlarmEventRecords currently maintained in the O-Cloud.

# Table 4.2.1.4.13.1-1 AlarmList Requirements

|  |  |  |
| --- | --- | --- |
| **Referenced Specification** | **Requirement** | **Comment** |
| O-RAN.WG6.ORCH-USE-  CASES [3] | [REQ-ORC-O2-74] |  |
| O-RAN.WG6.ORCH-USE-  CASES [3] | [REQ-ORC-O2-98] |  |

Attributes

# Table 4.2.1.4.13.2-1 Attributes Properties for AlarmList

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| retentionPeriod | **Data Type:** integer  **Description:** Specifies the number of days to retain  cleared/acknowledge alarms in the AlarmList. Entries in  the alarmEventRecords will be at least as long as the retentionPeriod but can be longer depending on the  implementation of the purge feature. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: False  x-units: Days  minimum: 0 |
| alarmEventRecords | **Data Type:** array  **Description:** The  alarmEventRecords provides the storage array for  AlarmEventRecords that are active or have been cleared but not purged according to the implementation of the purge feature. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: True nullable: False  minItems: 0  uniqueItems: True items:  AlarmEventR ecord |
| extensions | **Data Type:** array  **Description:** These are unspecified (not  standardized) properties  (keys) which are tailored by the vendor to extend the information provided about management of the Alarm List. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True  x-isOrdered: False  minItems: 0  uniqueItems: True items:  AttributeVa luePair |

Attribute constraints

None*.*

State diagram

None*.*

* + - * 1. PerformanceMeasurementStore

Definition

The PerformanceMeasurementStore represents the O-Cloud internal store where

PerformanceMeasurementRecord(s) are retained according to the retention policy of the O-Cloud based on the configured retention period.

The information representing the attributes of the PerformanceMeasurementStore follows the provisions indicated in table 4.2.1.4.14.2-1.

Attributes

# Table 4.2.1.4.14.2-1 Attributes Properties for PerformanceMeasurementStore

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| retentionPeriod | **Data Type:** integer  **Description:** The number in days (24 hours) that  measurements will be retained. The exact timing of when measurements are  deleted are implementation dependent. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: uInteger  x-units: days  minimum: 0 |
| measurements | **Data Type:** array  **Description:** List of  PerformanceMeasurementRe cord(s) collected and stored in the performance  measurement store. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False  minItems: 0  uniqueItems: True items:  Performance Measurement Record |

Attribute constraints

None*.*

State diagram

None*.*

* + - * 1. PerformanceMeasurementRecord <<dataType>>

Definition

The PerformanceMeasurementRecord represents a collected measurement in the PerformanceMeasurementStore.

The information representing the attributes of the PerformanceMeasurementRecord follows the provisions indicated in table 4.2.1.4.15.2-1.

Attributes

# Table 4.2.1.4.15.2-1 Attributes Properties for PerformanceMeasurementRecord

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| performanceMeas urementJobId | **Data Type:** string  **Description:** The job  identifier assigned by the O- Cloud when a performance measurement job is created. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: uuid |
| resourceId | **Data Type:** string  **Description:** The resource identifier for the resource for which the collected  measurement is against. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: uuid |
| performanceMeas urementDefinitionI d | **Data Type:** string  **Description:** The  Performance Dictionary definition identifier for the collected measurement. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False |
| timeStamp | **Data Type:** string  **Description:** The date and time in which the  measurement was collected. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: date-time |
| measurementValue | **Data Type:** Any type  **Description:** The value of the measurement collected. The ValueType represents a  variety of types depending on the measurement type. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False |
| isSuspect | **Data Type:** boolean  **Description:** This flag is set to True if anomalous behaviour | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False  x-stateChangeNotification: False |

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
|  | was detected on the resource during the last collection  interval. | nullable: True |

Attribute constraints

None*.*

State diagram

None*.*

* + - * 1. PerformanceMeasurementJob

Definition

The PerformanceMeasurementJob represents a process established to collect measurements and place them in the PerformanceMeasurementStore.

The information representing the attributes of the PerformanceMeasurementJob follows the provisions indicated in table 4.2.1.4.16.2-1.

For attributes with x-inventoryNotification: set to True or x-stateChangeNotification set to True, the notification to be sent will be the PerformanceMeasurementJobChangeNotification.

# Table 4.2.1.4.16.1-1 PerformanceMeasurementJob Requirements

|  |  |  |
| --- | --- | --- |
| **Referenced Specification** | **Requirement** | **Comment** |
| O-RAN.WG6.ORCH-USE-  CASES [3] | REQ-ORC-O2-31 | *Optional clarification* |
| O-RAN.WG6.ORCH-USE-  CASES [3] | REQ-ORC-O2-32 |  |

Attributes

# Table 4.2.1.4.16.2-1 Attributes Properties for PerformanceMeasurementJob

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| performanceMeas urementJobId | **Data Type:** string  **Description:** Identifier of the performance job instance within the IMS. This value is assigned by the IMS when  the job is created | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: uuid |
| consumerPerforma nceJobId | **Data Type:** string  **Description:** Identifier provided by the consumer for its purpose of managing  performance jobs. This value | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True |

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
|  | could be the same across multiple instances of IMS performance job instances. |  |
| state | **Data Type:** string  **Description:** The current state of the  PerformanceMeasurementJo b. | 1. support-qualifier: M    1. sInvariant: False x-inventoryNotification: False x-stateChangeNotification: True nullable: False   enum:   * + - ACTIVE     - SUSPENDED     - DEPRECATED |
| collectionInterval | **Data Type:** integer  **Decription:** The interval at which performance measures will be collected and stored. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: True nullable: False  x-units: Seconds  minimum: 1  default: 300 |
| resourceScopeCrite ria | **Data Type:** array  **Description:** Key value pairs of resource attributes which are used to select resources from which measures are to be collected.  This criterion determines, the value set for the Qualified Resource Types. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: False  x-isOrdered: False  minItems: 0  uniqueItems: True  items: AttributeValuePair  example:  [  {"resourceTypeId","[  "7c491f8f-7207-4c00-9b67-3d2ee8b008f0", "31040dec-8106-44db-83bc-62e1d618ea17"  ]"} ] |
| measurementSelec tionCriteria | **Data Type**: array  **Description**: Key value pairs that identify the distinct set of measurements within the scope of a  PerformanceMeasurementJob. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: False  x-isOrdered: False  minItems: 1  uniqueItems: True  items: AttributeValuePair example:  [  {"measurementGroup","MemoryUsage"},  {"measurementName","cpuAverageUtilization"}  ] |
| status | **Data Type:** string  **Description:** The current status within the state. | 1. support-qualifier: M    1. sInvariant: False x-inventoryNotification: False x-stateChangeNotification: True nullable: False   enum:   * + - RUNNING     - FAILED     - DEGRADED     - IDLE     - PENDING\_DELETE |

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| preinstalledJob | **Data Type:** oolean  **Description:** This is an  indicator if the performance job was created for the IMS (True) or as the result of an IMS consumer request (False) | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False |

|  |  |  |
| --- | --- | --- |
| qualifiedResourceT ypes | **Data Type:** array  **Description:** This list is computed from evaluation of the resourceScopeCriteria. The resulting qualifiedResourceTypes are the distinct set of ResourceTypes among those measuredResources.  This list of resource type UUIDs is used to qualify collectedMeasurements defined in the PM Dictionary of the qualified resource types. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: False  x-isOrdered: False  minItems: 0  uniqueItems: True  items: uuid  example:'[  "7c491f8f-7207-4c00-9b67-3d2ee8b008f0", "31040dec-8106-44db-83bc-62e1d618ea17"  ]' |
| measuredResource s | **Data Type:** array  **Description:** This is the historical list of resources measured by this job.  Resources added and deleted are kept track of for the life of the job. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: False  x-isOrdered: False  minItems: 0  uniqueItems: True  items: MeasuredResource |
| collectedMeasure ments | **Data Type:** array  **Description:** The historical list of measurements that are or have been collected by this job based on its  resourceScopeCriteria and measurementSelectionCriteri a over the life of the job. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: False  x-isOrdered: False  minItems: 0  uniqueItems: True  items: CollectedMeasurement |
| extensions | **Data Type:** array  **Description:** These are unspecified (not  standardized) properties  (key/value) which extend the information about the  Performance Measurement Job. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True  x-isOrdered: False  minItems: 0  uniqueItems: True  items: AttributeValuePair |

Attribute constraints

# Table 4.2.1.4.16.3-1 Attributes Constraints for PerformanceMeasurementJob

|  |  |
| --- | --- |
| **Name** | **Definition** |
| Status is RUNNING, FAILED, or  DEGRADED | Condition: Job is in the ACTIVE state. |
| Status is IDLE | Condition: Job is in the SUSPENDED state. |
| Status is PENDING\_DELETE | Condition: Job is in the DEPRECATED state. |
| WriteableExtensions | Condition: preInstalledJob is False then extensions can be created  and updated. |
| ReadOnlyExtensions | Condition: preInstalledJob is True then extensions, if present are  read only. |

State diagram

![Generated by PlantUML](../assets/images/6e754593d93b.png)

**Figure 4.2.1.4.16.4-1 State & Status Diagram for PerformanceMeasurementJob**

* + - * 1. MeasuredResource <<datatype>>

Definition

The MeasuredResource represents a Resource that is or has been within the scope of a PerformanceMeasurementJob.

The information representing the attributes of the MeasuredResource follows the provisions indicated in table 4.2.1.4.17.2-1.

Attributes

# Table 4.2.1.4.17.2-1 Attributes Properties for MeasuredResource

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| resourceTypeId | **Data Type:** string  **Description:** The resource identifier assigned by the O- Cloud when a performance measurement job is created. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification:False nullable: False  format: uuid |
| resourceId | **Data Type:** string  **Description:** The resource | x-support-qualifier: M  readOnly: True  x-isInvariant: True  x-inventoryNotification: False |

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
|  | identifier for the resource for which the collected  measurement is against. | x-stateChangeNotification: False nullable: False  format: uuid |
| timeAdded | **Data Type:** array  **Description:** List of  timestamps when the resource was added to the job. All resources shall have at least one timeAdded value. It could have multiple if changes caused a deletion and subsequent  reinstatement to occur. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: False  minItems: 1  uniqueItems: True  items: date-time |
| timeDeleted | **Data Type:** array  **Description:** List of  timestamps when the resource was deleted from a job. Multiple values may be present if deletion occurred at different times. The  effective period of the  measurement would be the times between a timeAdded and timeDeleted values. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True  minItems: 0  uniqueItems: True  items: date-time |
| isCurrentlyMeasur ed | **Data Type:** boolean  **Description:** Indicates if the resource is currently being measured by the contained performance job. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: False |

Attribute constraints

None*.*

State diagram

None*.*

* + - * 1. CollectedMeasurement <<datatype>>

Definition

The CollectedMeasurement represents a measurement associated with a specific ResourceType that is or has been within the scope of a PerformanceMeasurementJob.

The information representing the attributes of the CollectedMeasurement follows the provisions indicated in table 4.2.1.4.18.2-1.

Attributes

# Table 4.2.1.4.18.2-1 Attributes Properties for CollectedMeasurement

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| resourceTypeId | **Data Type:** string  **Description:** The resource identifier assigned by the O- Cloud when a performance measurement job is created. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: uuid |
| performanceMeas urementDefinitionI d | **Data Type:** string  **Description:** Identifier of the measurement definition with the PM Dictionary for the  specific device type identified by the resourceTypeId. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: uuid |
| timeAdded | **Data Type:** array  **Description:** List of  timestamps when the resource was added to the job. All measurements shall have at least one timeAdded value. It could have multiple if changes caused a deletion and subsequent  reinstatement to occur. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False  minItems: 1  uniqueItems: True  items: date-time |
| timeDeleted | **Data Type:** array  **Description:** List of  timestamps when the  measurement was deleted from a job. Multiple values may be present if deletion occurred at different times. The effective period of the measurement would be the  times between a timeAdded and timeDeleted values. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True  minItems: 0  uniqueItems: True  items: date-time |
| isCurrentlyMeasur ed | **Data Type:** boolean  **Description:** Indicates if the resource is currently being measured by the contained | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False |

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
|  | performance job. |  |

Attribute constraints

None*.*

State diagram

None*.*

* + - * 1. PerformanceMeasurementJobChangeSubscription

Definition

The PerformanceMeasurementJobChangeSubscription represents a subscription for events to be notified such as when the scope of a PerformanceMeasurementJob changes either due to an update to its criteria or a change in inventory.

The information representing the attributes of the PerformanceJobChangeSubscription follows the provisions indicated in table 4.2.1.4.19.2-1.

Attributes

# Table 4.2.1.4.19.2-1 Attributes Properties for PerformanceMeasurementJobChangeSubscription

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| performanceMeas urementJobChange SubscriptionId | **Data Type:** string  **Description:** Identifier of the PerformanceMeasurementJo bChangeSubscription which will generate this notification. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: uuid |
| consumerPerforma nceMeasurementJ obChangeSubscript ionId | **Data Type:** string  **Description:** The consumer identification value if provided on the  PerformanceMeasurementJo bChangeSubscription which will generate this notification. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True  format: uuid |
| performanceChang esToNotify | **Data Type:** string  **Description:** The enumerated set of values representing the type(s) of changes desired to be notified about (ADD, DELETE, OTH). | 1. support-qualifier: M    1. sInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: False   enum:   * + - ADD     - DELETE     - BOTH |

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| detailsToInclude | **Data Type:** string  **Description:** The enumerated set of values representing how much detail about the change to include in the  notification (NONE, DELTA, COMPLETE). | 1. support-qualifier: M    1. sInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: False   enum:   * + - NONE     - DELTA     - COMPLETE |
| subscriptionJobFilt er | **Data Type:** array  **Description:** A key value set of criteria to select which jobs shall be reported on. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: False  x-isOrdered: True  minItems: 0  uniqueItems: True items:  AttributeVa luePair |
| callback | **Data Type:** string  **Description:** URL to which will be able to receive the  PerformanceMeasurementJo bChangeNotification. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: uri |

Attribute constraints

None*.*

State diagram

None*.*

* + - * 1. PerformanceMeasurementJobChangeNotification <<notification>>

Definition

The PerformanceMeasurementJobChangeNotification notification represents the information about a change that occurred to a PerformanceMeasurementJob due to an update to its criteria or a change in inventory for which there is a PerformanceMeasurementJobChangeSubscription established.

The information representing the attributes of the PerformanceMeasurementJobChangeNotification follows the provisions indicated in table 4.2.1.4.20.2-1.

Attributes

# Table 4.2.1.4.20.2-1 Attributes Properties for PerformanceMeasurementJobChangeNotification

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| performanceMeas urementJobChange SubscriptionId | **Data Type:** string  **Description:** Identifier of the PerformanceMeasurementJo bChangeSubscription. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: uuid |
| consumerPerforma nceJobChangeSubs criptionId | **Data Type:** string  **Description:** The consumer identification value if provided on the  PerformancJobChangeSubscri ption. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: True |
| performanceMeas urementJobId | **Data Type:** string  **Description:** The UUID of the PerformanceMeasurementJo b that incurred a change  either due to a change in  scope criteria or as the result of a change to O-Cloud  Infrastructure Inventory. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: uuid |
| objectRef | **Data Type:** string  **Description:** The URL of the service object which was modified. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: uri |
| typeOfChange | **Data Type:** string  **Description:** The enumerated set of values representing the type(s) of changes desired to be notified about (ADD, DELETE, OTH). | 1. support-qualifier: M   readOnly: True   * 1. sInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: False   enum:   * + - ADD     - DELETE     - BOTH |
| resourceChangeDe tails | **Data Type:** array  **Description:** If the subscription criteria indicates DELTA or COMPLETE  extended information then all relevant added and/or  deleted resources to the job | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True  minItems: 0  uniqueItems: True  x-isOrdered: True items: |

|  |  |  |  |
| --- | --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** | |
|  | are listed. | MeasuredRes ource | |
| measurementChan | **Data Type:** array | x-support-qualifier: readOnly:  x-isInvariant:  x-inventoryNotification:  x-stateChangeNotification: nullable:  minItems: uniqueItems: x-isOrdered: items: | M  True False False False True 0  True True  CollectedMe asurement |
| geDetails | **Description:** If the |
|  | subscription criteria indicates |
|  | DELTA or COMPLETE |
|  | extended information then |
|  | all relevant added and/or |
|  | deleted measurements of the |
|  | performance measurement |
|  | job are listed.. |

Attribute constraints

None*.*

State diagram

None*.*

* + - * 1. PerformanceSubscription

Definition

The PerformanceSubscription represents the information required to establish the criteria by which a PerformanceMeasurementReport notification is to be generated and where to send that notification.

# Table 4.2.1.4.21.1-1 PerformanceSubscription Requirements

|  |  |  |
| --- | --- | --- |
| **Referenced Specification** | **Requirement** | **Comment** |
| O-RAN.WG6.ORCH-USE-  CASES [3] | REQ-ORC-O2-37 | *Optional clarification* |
| O-RAN.WG6.ORCH-USE-  CASES [3] | REQ-ORC-O2-38 |  |

The information representing the attributes of the PerformanceSubscription follows the provisions indicated in table 4.2.1.4.21.2-1.

Attributes

# Table 4.2.1.4.21.2-1 Attributes Properties for PerformanceSubscription

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| performanceSubscr iptionId | **Data Type:** string  **Description:** Identifier of the performance subscription instance within the IMS. This value is assigned by the IMS | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: uuid |

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
|  | when the subscription is created. |  |
| consumerPerforma nceSubscriptionId | **Data Type:** string  **Description:** Identifier optionally provided by the  consumer for its purpose of managing performance data. This value could be the same across multiple instances of IMS subscription instances. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True |
| globalSubscription Criteria | **Data Type:** array  **Description:** This is subscription criteria which will apply to each contained subscription. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: False  x-isOrdered: False  minItems: 0  uniqueItems: True items:  Performance Subscriptio nCriteria |
| reportFormat | **Data Type:** string | 1. support-qualifier: M    1. sInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: False   enum:   * + - NOTIFICATION     - FILE     - STREAM |

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
|  | **Description:** Enumerated set of reporting mechanism for delivery of the data identified by the  PerformanceSubscription which are identified as:  NOTIFICATION: Call the callback with the data at the specified  intervals providing the data, e.g., in JSON  format  FILE: generate a file, e.g., formatted in XML to be collected and call  the callback with the filename whenever one is generated.  STREAM:Session will remain open and  continue to send the data in a streaming format, e.g., Google  Protocol uffers (GP ), at the specified  intervals until the session or subscription is terminated. |  |
| remoteFileLocation | **Data Type:** string  **Description:** When the  reportFormat is FILE this field is populated with the URL to the remote directory where  the service is expected to push the requested performance files to a  remote files system. If the reportFormat is not FILE, the field is empty or not present. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True  Format: uri |
| callback | **Data Type:** string  **Description:** The callback to send responses for modes NOTIFICATION, or the file  notification for FILE. The field | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True  Format: uri |

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
|  | is not required if mode is STREAM. |  |
| measurementRepo rtingFrequencies | **Data Type:** array  **Description:** The frequency that specified measurements are to be reported. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: False  x-isOrdered: False  minItems: 1  uniqueItems: True items:  Performance ReportingFr equency |

Attribute constraints

None*.*

State diagram

None*.*

* + - * 1. PerformanceReportingFrequency <<datatype>>

Definition

The PerformanceReportingFrequency represents the frequency that specified measurements are to be reported.

The information representing the attributes of the PerformanceReportingFrequency follows the provisions indicated in table 4.2.1.4.22.2-1.

Attributes

# Table 4.2.1.4.22.2-1 Attributes Properties for PerformanceReportingFrequency

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| subscriptionCriteri a | **Data Type:**  PerformanceSubscriptionCrit eria  **Description:** This is subscription criteria which  will apply to this subscription. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True |
| subscriptionMode | **Data Type**: string | 1. support-qualifier: M    1. sInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: False   enum:   * + - TARGET\_DEFINED     - ON\_CHANGE     - SAMPLE |

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
|  | **Description**: An enumerated set of values which will identify the mode in which data is reported. The valid values are as follows:  TARGET\_DEFINED:  Producer of the PM data decides if  ON\_CHANGE or  SAMPLE is more optimal.  ON\_CHANGE: Value is reported as soon as the PM Job collects it.  SAMPLE: Value is  reported at the reportInterval period. |  |
| reportInterval | **Data Type:** integer  **Description:** This is the reporting interval for the data, it is an unsigned integer representing the number of milliseconds between  reports. If the reportInterval is lower than the service can provide the subscription shall return an error indicating such. If the value is set to  zero (0) then the service will use its lowest supported value for the reportInterval. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True  minimum: 0  default: 0  x-units: milliseconds |
| supressRedundant | **Data Type:** boolean  **Description:** This flag identifying if SAMPLE values that have not changed shall (False) or shall Not (True) be transmitted. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True  default: False |
| heartbeatInterval | **Data Type:** integer  **Description:** When the suppressRedundant is set to (True), if heartbeatInterval is | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True  minimum: 0  default: 0 |

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
|  | a non-zero value then a  duplicate value will be sent at least once per  heatbeatInterval. The value shall be zero (0) or a value greater than or equal to the reportInterval. | x-units: milliseconds |

Attribute constraints

None*.*

State diagram

None*.*

* + - * 1. PerformanceSubscriptionCriteria <<datatype>>

Definition

The PerformanceSubscriptionCriteria represents the information required to establish which measurements for which resource shall be included in a PerformanceMeasurementReport.

The information representing the attributes of the PerformanceSubscriptionCriteria follows the provisions indicated in table 4.2.1.4.23.2-1.

Attributes

# Table 4.2.1.4.23.2-1 Attributes Properties for PerformanceSubscriptionCriteria

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| jobCriteria | **Data Type:** array  **Description:** Key/Value list of criteria compared to Job data. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification:False nullable: True  minItems: 0  uniqueItems: True items:  AttributeVa luePair |
| resourceTypeCriter ia | **Data Type:** array  **Description:** Key/Value list of criteria compared to Resource Type data. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True  minItems: 0  uniqueItems: True items:  AttributeVa luePair |
| resourceCriteria | **Data Type:** array | x-support-qualifier: M  x-isInvariant: False |

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
|  | **Description:** Key/Value list of criteria compared to Resource data. | x-inventoryNotification: False x-stateChangeNotification: False nullable: True  minItems: 0  uniqueItems: True items: |
|  | AttributeVa luePair |
| measurementCrite ria | **Data Type:** array  **Description:** Key/Value list of criteria compared to  Measurement Definition data. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification:False nullable: True  minItems: 0  uniqueItems: True items: |
|  |  | AttributeVa luePair |

Attribute constraints

None*.*

State diagram

None*.*

* + - * 1. PerformanceMeasurementReport <<notification>>

Definition

The PerformanceMeasurementReport notification represents the information required to define the scope of the JobReports being sent in the notification.

# Table 4.2.1.4.24.1-1 PerformanceMeasurementReport Requirements

|  |  |  |
| --- | --- | --- |
| **Referenced Specification** | **Requirement** | **Comment** |
| O-RAN.WG6.ORCH-USE-  CASES [3] | REQ-ORC-O2-39 | *Optional clarification* |

The information representing the attributes of the PerformanceMeasurementReport follows the provisions indicated in table 4.2.1.4.24.2-1.

Attributes

# Table 4.2.1.4.24.2-1 Attributes Properties for PerformanceMeasurementReport

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| globalCloudId | **Data Type:** string  **Description:** Identifier of the O-Cloud instance assigned by the SMO. This identifier is  globally unique across O- | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: uuid |

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
|  | Cloud instances known to the SMO. This value was provided by the SMO at cloud genesis and is stored in the O-Cloud IMS Inventory. |  |
| notificationTime | **Data Type:** string  **Description:** The date and  time that the notification was sent. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: date-time |
| performanceSubscr iptionId | **Data Type:** string  **Description:** Identifier of the performance subscription instance within the IMS. This value is assigned by the IMS when the job is created. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: uuid |
| consumerPerforma nceSubscriptionId | **Data Type:** string  **Description:** Identifier optionally provided by the  consumer for its purpose of managing performance data. This value could be the same across multiple instances of IMS subscription instances. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True |
| jobReports | **Data Type:** array  **Description:** The list of performance reports by jobId. A single subscription can subscribe to  measurements collected by multiple jobs. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: False  x-isOrdered: False  minItems: 1  uniqueItems: True  items: JobReport |

Attribute constraints

None*.*

State diagram

None*.*

* + - * 1. JobReport <<datatype>>

Definition

The JobReport provides the list of performance reports generated from corresponding

PerformanceMeasurementJobs. A single subscription can be used to subscribe to measurements collected by multiple PerformanceManagementJobs. The data from the PerformanceMeasurementJobs are

aggregated into a single report per PerformanceSubscription.

The information representing the attributes of the JobReport follows the provisions indicated in table 4.2.1.4.25.2-1.

Attributes

# Table 4.2.1.4.25.2-1 Attributes Properties for JobReport

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| performanceJobId | **Data Type:** string  **Description:** The UUID of the PerformanceMeasurementJo b from which collected  measurements are reported. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: uuid |
| consumerJobId | **Data Type:** string  **Description:** Identifier provided by the consumer for its purpose of managing performance jobs. This value could be the same across multiple instances of IMS performance job instances. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: False |
| measuredResource s | **Data Type:** array  **Description:** The list of  collected measurements for each Resource within the  scope of the subscription to be included in this  PerformanceMeasurementRe port. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: False  minItems: 1  items: ResourceReport |

Attribute constraints

None*.*

State diagram

None*.*

* + - * 1. ResourceReport <<datatype>>

Definition

The ResourceReport dataType represents the information required to identify the resource for which a set of measurements are being reported in the notification.

The information representing the attributes of the ResourceReport follows the provisions indicated in table 4.2.1.4.26.2-1.

Attributes

# Table 4.2.1.4.26.2-1 Attributes Properties for ResourceReport

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| resourceId | **Data Type:** string  **Description:** The UUID of the Resource as specified in  Infrastructure Inventory. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: uuid |
| measurementValue s | **Data Type:** array  **Description:** The list of  collected measurements for the Resource within the subscription included in this  PerformanceMeasurementRe port. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: False  minItems: 1  uniqueItems: True  items: MeasurementValue |

Attribute constraints

None*.*

State diagram

None*.*

* + - * 1. MeasurementValue <<datatype>>

Definition

The MeasurementValue dataType represents the information about a collected measurement and its value to be included in a notification.

The information representing the attributes of the MeasurementValue follows the provisions indicated in table 4.2.1.4.27.2-1.

Attributes

# Table 4.2.1.4.27.2-1 Attributes Properties for MeasurementValue

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| performanceMeas urementId | **Data Type:** string  **Description:** ased on  encoding this value can be either a string consisting of the  performanceMeasureName of the  MeasurementDefinition in the Performance Dictionary for the Resource Type or an unsigned integer consisting of the  performanceMeasurementId of the  MeasurementDefinition. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: False |
| measurementColle ctionTime | **Data Type:** string  **Description:** If present, this is the value that is added to the PerformanceMeasurementSt ore. When omitted then the notificationTime is assumed to the time the value was added to the  PerformanceMeasurementSt ore as would be the case if  the subscriptionMode equated to ON\_CHANGE. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True  format: date-time |
| measurementValue | **Data Type:** Any type  **Description:** This is the actual value of the measurement which varies in type from  measurement to measurement. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: False |
| isSuspect | **Data Type:** boolean  **Description:** This flag is set to True if anomalous behavior was detected on the resource between this measurement value and a prior  measurement value. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True  default: False |

Attribute constraints

None*.*

State diagram

None*.*

* + - * 1. NotifyFileReady <<notification>>

Definition

The NotifyFileReady notification represents the information about one (1) or more files to be made

available to a subscriber when the reportFormat of a PerformanceSubscription is FILE or a LogQuery when a callback is supplied. This notification only makes the consumer aware of the file and does not predicate delivery of the file (push or pull).

The information representing the attributes of the NotifyFileReady follows the provisions indicated in table 4.2.1.4.28.2-1.

Attributes

# Table 4.2.1.4.28.2-1 Attributes Properties for NotifyFileReady

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| globalCloudId | **Data Type:** string  **Description:** Identifier of the O-Cloud instance assigned by the SMO. This identifier is globally unique across O- Cloud instances known to the SMO. This value was provided by the SMO at cloud genesis and is stored in the O-Cloud IMS Inventory. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: uuid |
| subscriptionId | **Data Type:** string  **Description:** When the notification is created due to a PerformanceSubscription this attribute will contain the identifier of the  performanceSubscriptionId for this notification. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: True  format: uuid |
| consumerSubscript ionId | **Data Type:** string  **Description:** When the  notification is created due to a PerformanceSubscription | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True |

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
|  | this attribute will contain the identifier provided by the consumer for its purpose of managing performance data and may be included in the PerformanceSubscription.  If the notification is due to a logQuery request this attribute shall provide the consumerLogRequestId when provided on the request to allow the consumer to correlate it to the original request. |  |
| eventTime | **Data Type:** string  **Description:** The date and  time that the notification was issued. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: date-time |
| fileInfoList | **Data Type:** array  **Description:** The list of one or more files included in this notification. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: False  minItems: 1  uniqueItems: True  items: FileInfo |

Attribute constraints

None*.*

State diagram

None*.*

* + - * 1. FileInfo <<datatype>>

Definition

The FileInfo dataType represents the information about one or more generated files to be collected by a subscriber is now available for collection.

The information representing the attributes of the FileInfo follows the provisions indicated in table 4.2.1.4.29.2-1.

Attributes

# Table 4.2.1.4.29.2-1 Attributes Properties for FileInfo

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| fileLocation | **Data Type:** string  **Description:** Location of the file | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: uri |
| fileSize | **Data Type:** integer  **Description:** Size of the file, unit is byte | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: int32  minimum: 0  x-units: bytes |
| fileReadyTime | **Data Type:** string  **Description:** Date and time when the file was last closed and made available by the producer. The file content will not be changed any more | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: date-time |
| fileExpirationTime | **Data Type:** string  **Description:** Date and time after which the file may be deleted. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: date-time |
| fileCompression | **Data Type:** string  **Description**: If compression is applied to the file, the name of the compression algorithm used for compressing the file. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: True |
| fileDataType | **Data Type:** string | 1. support-qualifier: M   readOnly: True   * 1. sInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False   enum:   * + - PERFORMANCE     - ANALYTIC     - LOG |

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
|  | **Description:** An enumerated set of values identifying the type of data contained in the file. The valid set of values  are described as follows:  PERFORMANCE: The  file contains a  PerformanceMeasure mentReport.  ANALYTIC: The file contains analytic data.  LOG: The file contains log entries identified in a logQuery request. |  |

Attribute constraints

None*.*

State diagram

None*.*

* + - * 1. Location

Definition

The Location represents an instance of a Location where an O-Cloud Site may be available.

Attributes

# Table 4.2.1.4.30.2-1 Attributes Properties for Location

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| globalLocationId | **Data Type:** string  **Description:** Identifier of the location provided by the SMO as part of a lifecycle process. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False |
| name | **Data Type:** string  **Description:** Human readable name of the location as identified by the cloud provider. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: False |
| description | **Data Type:** string  **Description:** Human readable | x-support-qualifier: M  readOnly: True  x-isInvariant: False |

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
|  | description of the location as provided by the cloud provider. | x-inventoryNotification: True  x-stateChangeNotification: False nullable: False |
| oCloudId | **Data Type:** string  **Description:** Reference to the O-Cloud available at the location. | support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: uuid |
| coordinate | **Data Type:** string  **Description:** The latitude and longitude of the location  (shall be supplied if a postal address not provided). | support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: True |
| address | **Data Type:** string  **Description:** Postal address of the facility (shall be  supplied if a coordinate is not provided). | support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: True |
| extensions | **Data Type:** array  **Description:** These are unspecified (not  standardized) properties  (keys) which are tailored by the vendor to extend the information provided about the location. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True  x-isOrdered: False  minItems: 0  uniqueItems: True items:  AttributeVa luePair |

Attribute constraints

None*.*

State diagram

None*.*

* + - * 1. OCloudSite

Definition

The OCloudSite represents an O-Cloud Site instance in an O-Cloud, as described in the O-RAN Cloud Architecture and Deployment Scenarios specification [i.3].

Attributes

# Table 4.2.1.4.31.2-1 Attributes Properties for OCloudSite

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| oCloudSiteId | **Data Type:** string  **Description:** Identifier of the O-Cloud site. Locally unique within the scope of an O- Cloud instance. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: uuid |
| location | **Data Type:** Location  **Description:** Location attributes where the O-Cloud site exists. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False |
| name | **Data Type:** string  **Description:** Human readable name of the O-Cloud site as identified by the cloud provider. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: False |
| description | **Data Type:** string  **Description:** Human readable description of the O-Cloud  site as provided by the cloud provider. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: False |
| oCloudId | **Data Type:** string  **Description:** Reference to the O-Cloud of which the O- Cloud site is part. | support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: uuid |
| resourcePools | **Data Type:** array  **Description:** List of resource pools that are part of the O- Cloud site. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: False  x-isOrdered: False  minItems: 1  uniqueItems: True items:  ResourcePoo l |
| extensions | **Data Type:** array  **Description:** These are unspecified (not  standardized) properties  (keys) which are tailored by | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True  x-isOrdered: False  minItems: 0 |

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
|  | the vendor to extend the information provided about the O-Cloud site. | uniqueItems: True items:  AttributeVa luePair |

Attribute constraints

None*.*

State diagram

None*.*

* + - * 1. LogQuery

Definition

The LogQuery represents a request for O-Cloud log files for specific resources or resource of specific ResourceTypes to be collected and made available to the requestor.

Attributes

# Table 4.2.1.4.32.2-1 Attributes Properties for LogQuery

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| logType | **Data Type:** string  **Description:** This identifies the type of log(s) to be  collected. The exact list of valid log types to be  discovered via a log capability discovery. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: False |
| dateRanges | **Data Type:** array  **Description:** list of date ranges that log data is to be extracted and placed into the log file for collection. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: False  minItems: 1  items: DateRange |
| eventTypes | **Data Type:** array  **Description:** List of event  types that are to be extracted and placed in the log file for collection. The exact list of  valid event types are to be  discovered via a log capability discovery. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: True  minItems: 0  items: string |

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| resources | **Data Type:** array  **Description:** list of resource selection criteria to identify which resources are in scope for the query. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True  minItems: 0  items:  AttributeVa luePair |
| resourceTypes | **Data Type:** array  **Description:** list of resourceType selection criteria to identify which resources matching the  resourceTypes are in scope for the query. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True  minItems: 0  items:  AttributeVa luePair |
| logLevels | **Data Type:** array  **Description:** List of logging levels that are to be  extracted and placed in the log file for collection. The log levels specified in Clause  6.2.1, Table 2 of IETF RFC  5424 [5] shall be supported by the O-Cloud instance. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: True  minItems: 0  items: string |
| remoteFileLocation | **Data Type:** string  **Description:** When the  service is expected to push to a remote file system, this field is populated with the URL to the remote directory, otherwise the field is empty or not present. | support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True  format: uri |
| callback | **Data Type:** string  **Description:** The URL of the callback to which  asynchronous notifications are delivered to.  If this attribute is an empty string or is not present, then the request is a synchronous request, and the query result will be supplied in the response. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True  format: uri |

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| consumerLogRequ estId | **Data Type:** string  **Description:** Identifier optionally provided by the  consumer for its purpose of tracking a request for log data. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True |

Attribute constraints

None*.*

State diagram

None*.*

* + - * 1. DateRange <<dataType>>

Definition

The DateRange represent a start and end date and time value to indicate a span of time.

Attributes

# Table 4.2.1.4.33.2-1 Attributes Properties for DateRange

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| startDateTime | **Data Type:** string  **Description:** This identifies the start of a time range. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: date-time |
| endDateTime | **Data Type:** string  **Description:** This identifies the end of a time range. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: date-time |

Attribute constraints

# Table 4.2.1.4.33.3-2 Attributes Constraints for DateRange

|  |  |
| --- | --- |
| **Name** | **Definition** |
| START\_PRECEDES\_END | Condition: startDateTime shall chronologically precede the  endDateTime. |

*.*

State diagram

None*.*

* + 1. Namespace: ORAN.O2ims.Artifacts
       1. Namespace Overview

The O-RAN O2ims Artifacts namespace defines the classes and their attributes which are directly exposed to the consumer (SMO) via its O2 IMS Interface.

This namespace is used for the O-Cloud artifacts e.g. Cluster Templates, Initial Configuration Sets, OS/SW/FW, etc. that e.g. The O-Cloud artifacts can be used for configuring O-Cloud Resources from the Inventory and Cluster namespaces. The artifacts are not consumed when they are used and can be referenced in the Inventory, Cluster and Provisioning structures.

* + - 1. Imported and associated information entities
         1. Imported information entities and local labels

Information entities imported into the model are also elements of the namespace and therefore shall remain unique within the namespace.

# Table 4.2.2.2.1-1 Imported Entities

|  |  |
| --- | --- |
| **Label reference** | **Local label** |
|  |  |
|  |  |

* + - * 1. Associated information entities and local labels

Information entities referenced in the model through an association which may be extended and

overloaded with a new entity of the same name within the namespace are listed in the associated entities table.

# Table 4.2.2.2.2-1 Associated Entities

|  |  |
| --- | --- |
| **Label reference** | **Local label** |
| 4.2.1.2.1 Top | Top |
| 4.2.1.4.7, InfrastructureInventoryObject\_ | InfrastructureInventoryObject\_ |

* + - 1. Class Diagram
         1. Relationships

Description

This clause depicts the set of classes (e.g. IOCs) that encapsulates the information relevant for the O-RAN Cloud (O-Cloud). This clause provides an overview of the relationships between relevant classes in UML. Subsequent clauses provide more detailed specification of various aspects of these classes. The UML Class

diagram depicts a view of the namespace maintaining a defined focus so as not to overcrowd a single diagram trying to depict all relationships within the namespace.

ORAN.O2ims.Artifacts Intra-Namespace Relationships

![Generated by PlantUML](../assets/images/dec2727831f0.png)

**Figure 4.2.2.3.1.2-1 ORAN.O2ims.Artifacts Intra-Namespace Relationships**

ORAN.O2ims.Artifacts Inter-Namespace Relationships

![Generated by PlantUML](../assets/images/687ef7d384be.png)

**Figure 4.2.2.3.1.3-1 ORAN.O2ims.Artifacts Inter-Namespace Relationships**

* + - * 1. Inheritance

ORAN.O2ims.Artifacts Inheritance

![Generated by PlantUML](../assets/images/82fb2ecb8b91.png)

**Figure 4.2.2.3.2.1-1 ORAN.O2ims.Artifacts Inheritance**

* + - 1. Class Definitions
         1. ArtifactResourceType

Definition

The ArtifactResourceType represents a resource type for a stored artifact resource in an O-Cloud.

Artifact resource types provide the categorization of O-Cloud artifacts used as declarative templates or binary images for provisioning or deployment. The values for these types are used to build the inventory with provisioning enablers. The O-Cloud provides a mechanism to discover data about artifacts with respective operations on artifact resource types.

The ArtifactResourceType is a Specialized Object that derives from a Generalized Object, the InfrastructureInventoryObject. The ArtifactResourceType inherits the attributes from the

InfrastructureInventoryObject and allows it and all specializations of this class to be included in a change notification.

Attributes

**Table 4.2.2.4.1.2-1 Attributes Properties for ArtifactResourceType**

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| artifactResourceTypeId | **Data Type:** string  **Description:** Cloud unique identifier for the artifact | x-support-qualifier: M  x-isInvariant: True x-inventoryNotification: True x-stateChangeNotification: False  nullable: False |

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
|  | type. | format: uuid |
| name | **Data Type:** string  **Description:** Human readable name for the artifact type. | x-support-qualifier: M  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False |
| description | **Data Type:** string  **Description:** Description of the artifact type. | x-support-qualifier: M  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False |
| extensions | **Data Type:** array  **Description:** These are unspecified (not  standardized) properties  (keys) which are tailored by the vendor to extend the information provided about the artifact resource type. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True  x-isOrdered: False  minItems: 0  uniqueItems: True items:  Attri buteValuePair |

Attribute constraints

None*.*

State diagram

None*.*

* + - * 1. ArtifactResource

Definition

The ArtifactResource represents a stored artifact resource in an O-Cloud.

ArtifactResource provides the ability to expose information about the artifact that is needed by consumers without the need of parsing the artifact itself by the consumer. The O-Cloud provides a mechanism to

discover new artifacts with respective operations on artifact resources.

The ArtifactResource is a Specialized Object that derives from a Generalized Object, the InfrastructureInventoryObject. The ArtifactResource inherits the attributes from the

InfrastructureInventoryObject and allows it and all specializations of this class to be included in a change notification.

Attributes

**Table 4.2.2.4.2.2-1 Attributes Properties for ArtifactResource**

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| artifactResourceId | **Data Type:** string  **Description:** O-Cloud unique identifier for the artifact. | x-support-qualifier: M  x-isInvariant: True x-inventoryNotification: True x-stateChangeNotification: False nullable: False  format: uuid |
| name | **Data Type:** string  **Description:** Human readable name of the artifact. | x-support-qualifier: M  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False |
| version | **Data Type:** string  **Description:** Version of the artifact. | x-support-qualifier: M  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False |
| description | **Data Type:** string  **Description:** Description of the artifact. | x-support-qualifier: M  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: True |
| parameterSchema | **Data Type:** array  **Description:** Properties (keys) which are tailored by the artifact composition when it is to be used as a  parameterized template. See NOTE. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True  x-isOrdered: False  minItems: 0  uniqueItems: True items:  Attri buteValuePair |
| NOTE: Since the ArtifactResource is generic for any kind of artifact at an information model level, no keys are specified since this would have dependency on the kind of resource to which the artifact applies. | | |

Attribute constraints

None*.*

State diagram

None*.*

* + 1. Namespace: ORAN.O2ims.Cluster
       1. Namespace Overview

The O-RAN O2ims Cluster namespace defines the classes and their attributes which are directly exposed to the consumer (SMO) via its O2 IMS Interface.

This namespace is used for the provisioned O-Cloud Node Clusters with status and metrics as well as its internal topologies. The O-Coud Node Clusters are assembled based on the ORAN.O2ims.Inventory objects and configured through ORAN.O2ims.Artifacts.

* + - 1. Imported and associated information entities
         1. Imported information entities and local labels

Information entities imported into the model are also elements of the namespace and therefore shall remain unique within the namespace.

# Table 4.2.3.2.1-1 Imported Entities

|  |  |
| --- | --- |
| **Label reference** | **Local label** |
|  |  |
|  |  |

* + - * 1. Associated information entities and local labels

Information entities referenced in the model through an association which may be extended and

overloaded with a new entity of the same name within the namespace are listed in the associated entities table.

# Table 4.2.3.2.2-1 Associated Entities

|  |  |
| --- | --- |
| **Label reference** | **Local label** |
| 4.2.1.4.7 *InfrastructureInventoryObject\_* | *InfrastructureInventoryObject\_* |
|  |  |

* + - 1. Class Diagram
         1. Relationships

Description

This clause depicts the set of classes (e.g. IOCs) that encapsulates the information relevant for the O-RAN Cloud (O-Cloud). This clause provides an overview of the relationships between relevant classes in UML. Subsequent clauses provide more detailed specification of various aspects of these classes. The UML Class diagram depicts a view of the namespace maintaining a defined focus so as not to overcrowd a single

diagram trying to depict all relationships within the namespace.

ORAN.O2ims.Cluster Intra-Namespace Relationships

![Generated by PlantUML](../assets/images/da01874e4458.png)

**4.2.3.3.1.2-1 ORAN.O2ims.Cluster Intra-Namespace Relationships**

ORAN.O2ims.Cluster Inter-Namespace Relationships

![Generated by PlantUML](../assets/images/996a4299192c.png)

**Figure 4.2.3.3.1.3-1 ORAN.O2ims.Cluster Inter-Namespace Relationships**

* + - * 1. Inheritance

ORAN.O2ims.Cluster Inheritance

![Generated by PlantUML](../assets/images/ffc771bef6d9.png)

**Figure 4.3.2.2.2.1-1 ORAN.O2ims.Cluster Inheritance**

* + - 1. Class Definitions
         1. NodeClusterType

Definition

The NodeClusterType represents a resource type for a NodeCluster in an O-Cloud.

Node cluster types provide the categorization of O-Cloud resource types used to create a node cluster. The O-Cloud provides a mechanism to discover the node cluster types with respective operations on node cluster types.

The NodeClusterType is a Specialized Object that derives from a Generalized Object, the InfrastructureInventoryObject. The NodeClusterType inherits the attributes from the

InfrastructureInventoryObject and allows it and all specializations of this class to be included in a change notification.

Attributes

# Table 4.2.3.4.1.2-1 Attributes Properties for NodeClusterType

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| NodeClusterTypeId | **Data Type:** string  **Description:** Unique identifier for the  NodeClusterType instance. | x-support-qualifier: M  x-isInvariant: True x-inventoryNotification: True x-stateChangeNotification: False nullable: False  format: uuid |
| name | **Data Type:** string  **Description:** Name of the Node Cluster Type. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: False |

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| description | **Data Type:** string  **Description:** Human readable description of the Node Cluster Type. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: False |
| extensions | **Data Type:** array  **Description:** These are unspecified (not  standardized) properties (keys) which are tailored extend the information provided about the Node Cluster Type. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True  x-isOrdered: False  minItems: 0  uniqueItems: True items:  AttributeVa luePair |

Attribute constraints

None*.*

State diagram

None*.*

* + - * 1. NodeCluster

Definition

The NodeCluster represents a set if resource used to deploy workloads in an O-Cloud.

Node cluster provides inventory of the resources used in a NodeCluster. The O-Cloud provides a mechanism to discover the node cluster with respective operations on node clusters.

The NodeCluster is a Specialized Object that derives from a Generalized Object, the InfrastructureInventoryObject. The NodeCluster inherits the attributes from the

InfrastructureInventoryObject and allows it and all specializations of this class to be included in a change notification.

Attributes

# Table 4.2.3.4.1.2-1 Attributes Properties for NodeCluster

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| nodeClusterId | **Data Type:** string  **Description:** Unique  identifier for the NodeCluster instance assigned by the O- Cloud. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: True x-stateChangeNotification: False nullable: False  format: uuid |
| clientNodeClusterId | **Data Type:** string | x-support-qualifier: M  x-isInvariant: True |

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
|  | **Description:** Unique  identifier for the NodeCluster instance assigned by the consumer who requested its creation. | x-inventoryNotification: True  x-stateChangeNotification: False nullable: False  format: uuid |
| name | **Data Type:** string  **Description:** Name of the NodeCluster. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: False |
| description | **Data Type:** string  **Description:** Human readable description of the NodeCluster. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: False |
| extensions | **Data Type:** array  **Description:** These are unspecified (not  standardized) properties (keys) which are tailored extend the information provided about the NodeCluster. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True  x-isOrdered: False  minItems: 0  uniqueItems: True items:  AttributeVa luePair |
| clusterDistributionDes cription | **Data Type:** string  **Description:** Human readable text identifying the method of distribution of  ClusterResources over O- Cloud Sites. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: False |
| NodeClusterTypeId | **Data Type:** string  **Description:** Identifier for the NodeClusterType that this NodeCluster is. | x-support-qualifier: M  x-isInvariant: True x-inventoryNotification: True x-stateChangeNotification: False nullable: False  format: uuid |
| artifactResourceId | **Data Type:** string  **Description:** Identifier for the template artifact which this NodeCluster is based on. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: True x-stateChangeNotification: False nullable: False  format: uuid |
| clusterResourceIds | **Data Type:** array  **Description:** The list of cluster resource identifiers that are used to construct | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: False  x-isOrdered: False  minItems: 1  uniqueItems: True |

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
|  | this NodeCluster. | items: string  format: uuid |
| clusterResourceGrou ps | **Data Type:** array  **Description:** Optional list node groups that comprise the cluster resources which compose the NodeCluster. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: True  x-isOrdered: False  minItems: 0  uniqueItems: True  items: string  format: uuid |

Attribute constraints

None*.*

State diagram

None*.*

* + - * 1. ClusterResourceType

Definition

The ClusterResourceType represents a resource type for a ClusterResource in an O-Cloud.

Cluster resource types provide the categorization of O-Cloud resource types used to create a node cluster. The O-Cloud provides a mechanism to discover the cluster resource types with respective operations on cluster resource types.

The ClusterResourceType is a Specialized Object that derives from a Generalized Object, the InfrastructureInventoryObject. The ClusterResourceType inherits the attributes from the

InfrastructureInventoryObject and allows it and all specializations of this class to be included in a change notification.

Attributes

# Table 4.2.3.4.3.2-1 Attributes Properties for ClusterResourceType

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| clusterResourceTypeI d | **Data Type:** string  **Description:** Unique identifier for the ClusterResourceType instance. | x-support-qualifier: M  x-isInvariant: True x-inventoryNotification: True x-stateChangeNotification: False nullable: False  format: uuid |
| name | **Data Type:** string  **Description:** Name of the Cluster Resource Type. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: False |
| description | **Data Type:** string | x-support-qualifier: M |

|  |  |  |  |
| --- | --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** | |
|  | **Description:** Human readable description of the Cluster Resource Type. | x-isInvariant:  x-inventoryNotification:  x-stateChangeNotification: nullable: | False True False False |
| extensions | **Data Type:** array | x-support-qualifier: x-isInvariant:  x-inventoryNotification:  x-stateChangeNotification: nullable:  x-isOrdered: minItems: uniqueItems: items: | M  False False False True False 0  True  AttributeVa luePair |
|  | **Description:** These are |
|  | unspecified (not |
|  | standardized) properties |
|  | (keys) which are tailored |
|  | extend the information |
|  | provided about the Cluster |
|  | Resource Type. |

Attribute constraints

None*.*

State diagram

None*.*

* + - * 1. ClusterResource

Definition

The ClusterResource represents a resource used to construct a NodeCluster in an O-Cloud.

Node cluster resource provides inventory of the resources used in a NodeCluster. The O-Cloud provides a mechanism to discover the node cluster resources with respective operations on node cluster resources.

The ClusterResource is a Specialized Object that derives from a Generalized Object, the InfrastructureInventoryObject. The ClusterResource inherits the attributes from the

InfrastructureInventoryObject and allows it and all specializations of this class to be included in a change notification.

Attributes

# Table 4.2.3.4.4.2-1 Attributes Properties for ClusterResource

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| clusterResourceId | **Data Type:** string  **Description:** Unique identifier for the  ClusterResource instance. | x-support-qualifier: M  x-isInvariant: True x-inventoryNotification: True x-stateChangeNotification: False nullable: False  format: uuid |
| name | **Data Type:** string  **Description:** Name of the cluster resource. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: False |

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| description | **Data Type:** string  **Description:** Human readable description of the cluster resource. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: False |
| extensions | **Data Type:** array  **Description:** These are unspecified (not  standardized) properties (keys) which are tailored extend the information  provided about the Cluster Resource. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True  x-isOrdered: False  minItems: 0  uniqueItems: True items:  AttributeVa luePair |
| clusterResourceTypeI d | **Data Type:** string  **Description:** Identifier for the ClusterResourceType for this resource. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: True x-stateChangeNotification: False nullable: False  format: uuid |
| memberOf | **Data Type:** array  **Description:** list of other ClusterResources which are linked together. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True  x-isOrdered: False  minItems: 0  uniqueItems: True  items: string |
| artifactResourceIds | **Data Type:** array  **Description:** Identifiers for the artifact(s) which this resource is based on. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True  x-isOrdered: False  minItems: 0  uniqueItems: True  items: string  format: uuid |
| resourceId | **Data Type:** string  **Description:** Identifier for the inventory resource which this resource is mapped to. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: True x-stateChangeNotification: False nullable: False  format: uuid |

Attribute constraints

None*.*

State diagram

None*.*

* + - * 1. ClusterResourceGroup

Definition

The ClusterResourceGroup represents a collection of ClusterResources as a named set.

Attributes

# Table 4.2.3.4.5.2-1 Attributes Properties for ClusterResourceGroup

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| clusterResourceGrou pId | **Data Type:** string  **Description:** Unique identifier for the ClusterResourceGroup. | x-support-qualifier: M  x-isInvariant: True x-inventoryNotification: True x-stateChangeNotification: False nullable: False  format: uuid |
| name | **Data Type:** string  **Description:** Name of the Node Group. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: False |
| description | **Data Type:** string  **Description:** Human readable description of the  ClusterResourceGroup. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: False |
| extensions | **Data Type:** array  **Description:** These are unspecified (not  standardized) properties (keys) which are tailored extend the information provided about the ClusterResourceGroup. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True  x-isOrdered: False  minItems: 0  uniqueItems: True items:  AttributeVa luePair |
| clusterResources | **Data Type:** array  **Description:** The list of Cluster Resources belonging to this  ClusterResourceGroup. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False x-isOrdered: False  minItems: 1  uniqueItems: True  items: string  format: uuid |

Attribute constraints

None*.*

State diagram

None*.*

* + 1. Namespace: ORAN.O2ims.Provisioning
       1. Namespace Overview

The O-RAN O2ims Provisioning namespace defines the classes and their attributes which are directly exposed to the consumer (SMO) via its O2 IMS Interface.

This namespace is used for provisioning requests and fulfillments, e.g. of O-Cloud Node Clusters, representing the requested and agreed service levels and their current identifiers.

* + - 1. Imported and associated information entities
         1. Imported information entities and local labels

Information entities imported into the model are also elements of the namespace and therefore shall remain unique within the namespace.

# Table 4.2.4.2.1-1 Imported Entities

|  |  |
| --- | --- |
| **Label reference** | **Local label** |
| TS 28.622 [6], information object class, Top | Top |
|  |  |

* + - * 1. Associated information entities and local labels

Information entities referenced in the model through an association which may be extended and

overloaded with a new entity of the same name within the namespace are listed in the associated entities table.

# Table 4.2.4.2.2-1 Associated Entities

|  |  |
| --- | --- |
| **Label reference** | **Local label** |
|  |  |
|  |  |

* + - 1. Class Diagram
         1. Relationships

Description

This clause depicts the set of classes (e.g. IOCs) that encapsulates the information relevant for the O-RAN Cloud (O-Cloud). This clause provides an overview of the relationships between relevant classes in UML. Subsequent clauses provide more detailed specification of various aspects of these classes. The UML Class diagram depicts a view of the namespace maintaining a defined focus so as not to overcrowd a single

diagram trying to depict all relationships within the namespace.

ORAN.O2ims.Provisioning Intra-Namespace Relationships

![Generated by PlantUML](../assets/images/54f79637c1b1.png)

**Figure 4.2.4.3.1.2-1 ORAN.O2ims.Provisioning Intra-Namespace Relationships**

ORAN.O2ims.Provisioning Inter-Namespace Relationships

![Generated by PlantUML](../assets/images/faa3e46a2bf2.png)

**Figure 4.2.4.3.1.3-1 ORAN.O2ims.Provisioning Inter-Namespace Relationships**

* + - * 1. Inheritance

ORAN.O2ims.Provisioning Inheritance

![Generated by PlantUML](../assets/images/79e4e692b9e4.png)

**Figure 4.2.4.3.2.1-1 ORAN.O2ims.Provisioning Inheritance**

* + - 1. Class Definitions
         1. ProvisioningRequest

Definition

The ProvisioningRequest represents a request for item(s) to be provisioned in the O-Cloud. The SMO makes the declarative request to the O-Cloud through the O2ims.

Attributes

# Table 4.2.4.4.1.2-1 Attributes Properties for ProvisioningRequest

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| provisioningRequestI d | **Data Type:** string  **Description:** Identifier of the provisioning request instance assigned by the SMO. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False  format: uuid |
| name | **Data Type:** string  **Description:** Human readable name of the provisioning request instance as assigned by the SMO. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: False |
| description | **Data Type:** string  **Description:** Human readable description of the  provisioning request instance as assigned by the SMO. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True |
| templateName | **Data Type:** string  **Description:** Name of the template to be used as the basis for the declarative model for the provisioning request instance. When combined with the  templateVersion it shall resolve to a templateId. It is provided on the create request but cannot be  modified with a later update request. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: False |
| templateVersion | **Data Type:** string  **Description:** Version of the template used as the basis | x-support-qualifier: M  readOnly: True  x-isInvariant: True  x-inventoryNotification: False x-stateChangeNotification: False |

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
|  | for the declarative model for the provisioning request instance. When combined with the templateName it shall resolve to a templateId. | nullable: False |
| templateParameters | **Data Type:** array  **Description:** List of  variables/value pairs used within the template to tailor the template to this request instance. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True  x-isOrdered: False  minItems: 0  uniqueItems: True  items: AttributeValuePair |
| status | **Data Type:**  ProvisioningStatus  **Description:** The time of the last message and the current ProvisioningPhase of the ProvisioningRequest. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: True nullable: False |
| nodeClusterId | **Data Type:** String  **Description:** If the request is fulfilled by a NodeCluster this field will contain its Id. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: True  format: uuid |
| infrastructureResourc eIds | **Data Type:** array  **Description:** If the request is fulfilled by  InfrastructureResource(s) this list will contain the Id(s) of all resources used to fulfil it. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: True  x-isOrdered: False  minItems: 0  uniqueItems: True  items: string |

Attribute constraints

**Table 4.2.4.4.1.3-3 Attributes Constraints for ProvisioningRequest**

|  |  |
| --- | --- |
| **Name** | **Definition** |
| ReadOnlyAfterCreate | The following attributes are provided by the SMO on the create request but are readOnly aftwards: ProvisioningRequestId,  templateName, templateVersion |

State diagram

None.

* + - * 1. ProvisioningStatus <<dataType>>

Definition

The ProvisioningStatus represents the status of a ProvisioningRequest indicating the time of the last message and the current ProvisioningPhase.

Attributes

# Table 4.2.4.4.2.2-1 Attributes Properties for ProvisioningStatus

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| updateTime | **Data Type:** string  **Description:** The last date and time that the  provisioningPhase attribute was modified. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: True nullable: False  format: date-time |
| message | **Data Type:** string  **Description:** Human readable text about the  provisioningPhase at the last updateTime. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: True nullable: False |
| provisioningPhase | **Data Type:** ProvisioningPhase  **Description:** Current phase of the provisioning request. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: True nullable: False |

Attribute constraints

None.

State diagram

None.

* + 1. Namespace: ORAN.O2ims.Infrastructure
       1. Namespace Overview

The O-RAN O2ims Infrastructure namespace defines the classes and their attributes which are directly exposed to the consumer (SMO) via its O2 IMS Interface.

This namespace is used for fulfillment of provisioning requests which produce configured resources for later provisioning requests.

* + - 1. Imported and associated information entities
         1. Imported information entities and local labels

Information entities imported into the model are also elements of the namespace and therefore shall remain unique within the namespace.

# Table 4.2.5.2.1-1 Imported Entities

|  |  |
| --- | --- |
| **Label reference** | **Local label** |
|  |  |
|  |  |

* + - * 1. Associated information entities and local labels

Information entities referenced in the model through an association which may be extended and

overloaded with a new entity of the same name within the namespace are listed in the associated entities table.

# Table 4.2.5.2.2-1 Associated Entities

|  |  |
| --- | --- |
| **Label reference** | **Local label** |
| 4.2.1.4.7, *InfrastructureInventoryObject\_* | *InfrastructureInventoryObject\_* |
|  |  |

* + - 1. Class Diagram
         1. Relationships

Description

This clause depicts the set of classes (e.g. IOCs) that encapsulates the information relevant for the O-RAN Cloud (O-Cloud). This clause provides an overview of the relationships between relevant classes in UML. Subsequent clauses provide more detailed specification of various aspects of these classes. The UML Class diagram depicts a view of the namespace maintaining a defined focus so as not to overcrowd a single

diagram trying to depict all relationships within the namespace.

ORAN.O2ims.Infrastructure Intra-Namespace Relationships

The O-Cloud Networking consists of both intra- and inter-namespace relationships, which are complex in nature. The overview diagram (Figure 4.2.5.3.1.2-1) which simplifies the relationships has been drawn to help build a high-level understanding of the various object classes and their relationships. For example, a "Node" of type VM, areMetal, and/or IaaS, which is a cluster resource type, terminates one or more site networks, which is an infrastructure resource type. Similarly, a gateway can terminate one or more site

networks, forming an intra-namespace relationship since both the gateway and site networks belong to the infrastructure namespace.

![](../assets/images/71d33d23caa3.png)

**Figure 4.2.5.3.1.2-1 O-Cloud Networking Overview**

These relationships, however, involve various elements and endpoints to support multiplicity, which

introduces several implicit data types such as **Port**, **NetworkAddress**, and **SegmentationElement**. Each of these elements can include multiple endpoints representing a termination or an external connectivity

attachment. These implicit data types and their relationships with O-Cloud Networking objects are captured in Figure 4.2.5.3.1.2-2, which illustrates the intra-namespace relationships between specialized

infrastructure namespace objects.

There is a relationship between "Port" and "AttachmentCircuit" to represent the endpoint connectivity provided by "Port" for O-Cloud Site connectivity, using two possible associations to the transport network described in Clause 4.2.1.3.1.4.1.

Note: This document version represents the relationship with a dotted line, as the O-Cloud Networking Information Model is still in development.

![Generated by PlantUML](../assets/images/c6736aa76973.png)

**Figure 4.2.5.3.1.2-2 ORAN.O2ims.Infrastructure Intra-Namespace Relationships**

ORAN.O2ims.Infrastructure Inter-Namespace Relationships

![Generated by PlantUML](../assets/images/ae6abb867824.png)

**Figure 4.2.5.3.1.3-1 ORAN.O2ims.Infrastructure Inter-Namespace Relationships**

* + - * 1. Inheritance

ORAN.O2ims.Infrastructure Inheritance

![Generated by PlantUML](../assets/images/5a15d7169fc1.png)

**Figure 4.2.5.3.2.1-1 ORAN.O2ims.Infrastructure Inheritance**

* + - 1. Class Definitions
         1. InfrastructureResourceType

Definition

The InfrastructureResourceType represents a resource type in an O-Cloud.

Infrastructure resource types provide the categorization of O-Cloud resources used to connect the O-Cloud resources and to build components of the Cluster namespace. The values for these types are used to build the configured inventory and enable an authorized consumer to track infrastructure resource changes over time. The O-Cloud provides a mechanism to discover the infrastructure resource types with respective

operations on infrastructure resource types.

The InfrastructureResourceType is a Specialized Object that derives from a Generalized Object, the InfrastructureInventoryObject. The InfrastructureResourceType inherits the attributes from the

*InfrastructureInventoryObject\_* and allows it and all specializations of this class to be included in a change notification.

Attributes

# Table 4.2.5.4.1.2-1 Attributes Properties for InfrastructureResourceType

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| infrastructureResourc eTypeId | **Data Type:** string  **Description:** Identifier of the infrastructure resource type. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: True x-stateChangeNotification: False nullable: False  format: uuid |
| name | **Data Type:** string  **Description:** Name of the | x-support-qualifier: M  readOnly: True  x-isInvariant: False |

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
|  | infrastructure resource type as identified by the cloud provider. | x-inventoryNotification: True x-stateChangeNotification: False nullable: False |
| description | **Data Type:** string  **Description:** Human readable description of the  infrastructure resource type. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: False |
| extensions | **Data Type:** array  **Description:** These are unspecified (not  standardized) properties  (keys) which are tailored by the vendor to extend the information provided about the Infrastructure Resource Type. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: False x-stateChangeNotification: False nullable: True  x-isOrdered: False  minItems: 0  uniqueItems: True items:  AttributeVa luePair |

Attribute constraints

None*.*

State diagram

None*.*

* + - * 1. InfrastructureResource

Definition

The InfrastructureResource is a Specialized Object that derives from a Generalized Object, the

*InfrastructureInventoryObject\_.* The InfrastructureResource inherits the attributes from the

*InfrastructureInventoryObject\_* and allows it and all specializations of this class to be included in a change notification.

Attributes

# Table 4.2.5.4.1.2-1 Attributes Properties for InfrastructureResource

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| infrastructureReso urceId | **Data Type:** string  **Description:** Identifier of the resource. Locally unique within the scope of an O- Cloud instance. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: True x-stateChangeNotification: False nullable: False  format: uuid |
| name | **Data Type:** string | x-support-qualifier: M  readOnly: True |

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
|  | **Description:** Human readable name of the infrastructure resource instance. | x-isInvariant: False  x-inventoryNotification: True x-stateChangeNotification: False nullable: False |
| description | **Data Type:** string  **Description:** Human readable description of the resource pool. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: False |
| infrastructureReso urceTypeId | **Data Type:** string  **Description:** Identifier of  infrastructure resource type that this instance is a type of. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: True x-stateChangeNotification: False nullable: False  format: uuid |
| linkedInfrastructur eResourceIds | **Data Type:** array  **Description:** List of  infrastructure resource IDs that are used to realize this infrastructure resource instance. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: True  x-isOrdered: False  minItems: 0  uniqueItems: True  items: string |
| inventoryResourceI ds | **Data Type:** array  **Description:** List of inventory resource IDs that are used to realize this infrastructure resource instance. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: False  x-isOrdered: False  minItems: 1  uniqueItems: True  items: string |
| artifactResourceId | **Data Type:** string  **Description:** Identifier of artifact resource Id that the instance was configured with. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification: True x-stateChangeNotification: False nullable: False  format: uuid |
| extensions | **Data Type:** array  **Description:** These are unspecified (not  standardized) properties  (keys) which are tailored by the vendor to extend the information provided about the Resource Pool. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True  x-isOrdered: False  minItems: 0  uniqueItems: True items:  AttributeVa luePair |

Attribute constraints

None*.*

State diagram

None*.*

* + - * 1. Gateway

Definition

The Gateway infrastructure resource is a specialization of the InfrastructureResource. As such in addition to the attributes below, all attributes of the InfrastructureResource are also a member of this class.

NOTE 1: The present document version does not specify QoS related attributes/classes.

NOTE 2: The present document version does not specify complete L2/L3 related attributes/classes associated to the Gateway.

The Gateway is a Specialized Object that derives from a Generalized Object, the InfrastructureResource. The Gateway inherits the attributes from the InfrastructureResource.

Attributes

# Table 4.2.5.4.3.2-1 Attributes Properties for Gateway

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| tags | **Data Type:** array  **Description:** The list of  tags/labels on the Gateway resource. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: True nullable: True  items:  AttributeVa luePair |
| status | **Data Type:** string  **Description:** The Gateway status. For instance, ACTIVE, DOWN, UILD or ERROR. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: True nullable: False |
| connectedNetworks | **Data Type:** array  **Description:** The list of port(s) to support one or multiple Site Networks  termination. A port is a list of Gateway interfaceIPs e.g.  IPv4 and IPv6 for a Site Network. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: True nullable: True  items: Port |
| realizedBy | **Data Type:** string | x-support-qualifier: M |

|  |  |  |  |
| --- | --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** | |
|  | **Description:** Where this gateway is  implemented/realized (e.g. | readOnly:  x-isInvariant:  x-inventoryNotification:  x-stateChangeNotification:  format: | True True True False  UUID |
| SiteGW). |  |  |
| attachedTo | **Data Type:** array | x-support-qualifier: readOnly:  x-isInvariant:  x-inventoryNotification:  x-stateChangeNotification: nullable:  items: | M  True False False True True Port |
|  | **Description:** The list of |
|  | port(s) to support one or |
|  | multiple Attachment Circuits. |
|  | A port is a list of Gateway |
|  | interfaceIPs e.g. IPv4 and |
|  | IPv6 for an Attachment |
|  | Circuit. |

Attribute constraints

None*.*

State diagram

None*.*

* + - * 1. SiteNetwork

Definition

The SiteNetwork infrastructure resource is a specialization of the InfrastructureResource. As such in addition to the attributes below, all attributes of the InfrastructureResource are also a member of this class.

NOTE: The present document version does not specify QoS related attributes/classes.

The SiteNetwork is a Specialized Object that derives from a Generalized Object, the InfrastructureResource. The SiteNetwork inherits the attributes from the InfrastructureResource.

Attributes

# Table 4.2.5.4.4.2-1 Attributes Properties for SiteNetwork

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| tags | **Data Type:** array  **Description:** The list of tags/labels on the  SiteNetwork resource. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: True  items:  AttributeVa luePair |
| mtu | **Data Type:** integer  **Description:** The maximum transmission unit (MTU) | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: True |

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
|  | value to address  fragmentation. Minimum value is 68 for IPv4, and 1280 for IPv6. | x-stateChangeNotification: False  nullable: True |
| segmentation | **Data Type:** array  **Description:** The list of  segmentationElement(s) to support one or multiple  segments where, a  segmentationElement is a list of segmentationID (e.g. 100, 200) and segmentationType  (e.g. flat, vlan, vxlan, or gre) | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: False  minItems: 1  items:  Segmentatio nElement |
| realized y | **Data Type:** string  **Description:** Where this network/segment is  implemented/realized (e.g. SiteNWFabric). | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: False |
| shared | **Data Type:** oolean  **Description:** Indicates if the network is shared (True). | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: False |
| status | **Data Type:** string  **Description:** The SiteNetwork status. For instance, ACTIVE, DOWN, UILD or ERROR. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: True nullable: False |
| subnets | **Data Type:** array  **Description:** The list of associated subnets. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: False  minItems: 1  items:  KeyValuePai r |
| externalSiteNW | **Data Type:** oolean  **Description:** Indicates if the network is also external (True) or not (False) to the O- Cloud Site. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: True  default: False |

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| attachedTo | **Data Type:** array  **Description:** The list of port(s) to support one or  multiple Attachment Circuits. A port is a list of interfaceIPs  e.g. IPv4 and IPv6 for an Attachment Circuit. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: True nullable: True  items: Port |

Attribute constraints

None*.*

State diagram

None*.*

* + - * 1. AttachmentCircuit

Definition

The AttachmentCircuit infrastructure resource is a specialization of the InfrastructureResource. As such in addition to the attributes below, all attributes of the InfrastructureResource are also a member of this class.

NOTE: The present document version does not specify QoS related attributes/classes. The AttachmentCircuit is a Specialized Object that derives from a Generalized Object, the

InfrastructureResource. The AttachmentCircuit inherits the attributes from the InfrastructureResource.

Attributes

# Table 4.2.5.4.5.2-1 Attributes Properties for AttachmentCircuit

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| tags | **Data Type:** array  **Description:** The list of  tags/labels on the Gateway resource. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: True  items:  AttributeVa luePair |
| segmentation | **Data Type:** array  **Description:** The list of  segmentationElement(s) to support one or multiple  segments where, a  segmentationElement is a list of segmentationID (e.g. 100,  200) and segmentationType | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: False  minItems: 1  items:  Segmentatio nElement |

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
|  | (e.g. flat, vlan, vxlan, or gre) |  |
| bearer | **Data Type:** string  **Description:** A physical or logical link that establishes connectivity between the O-  Cloud Site and external networks. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: False |

Attribute constraints

None*.*

State diagram

None*.*

* + - * 1. Port <<dataType>>

Definition

The Port is a list of network addresses (IPv4, IPv6, or IPv4 and IPv6) which a network device is connected to.

Attributes

# Table 4.2.5.4.6.2-1 Attributes Properties for Port

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| endPoints | **Data Type:** array  **Description:** The list of addresses to support one or multiple network connections. | x-support-qualifier: M  readOnly: True  x-isInvariant: False x-inventoryNotification: True x-stateChangeNotification: False nullable: False  minItems: 1  items:  NetworkAddr ess |

Attribute constraints

None.

State diagram

None.

* + - * 1. SegmentationElement <<dataType>>

Definition

The SegmentationElement represents one segment of a SiteNetwork. A SiteNetwork may have more than one segment.

Attributes

# Table 4.2.5.4.7.2-1 Attributes Properties for SegmentationElement

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| segmentationType | **Data Type:** string  **Description:** The description of the type of segmentation. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: False |
| Segments | **Data Type:** array  **Description:** list of  segmentIds for a given SiteNetwork segment. | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: False  minItems: 1  items: string |

Attribute constraints

None*.*

State diagram

None*.*

* + - * 1. NetworkAddress <<dataType>>

Definition

The NetworkAddress is an IP address (IPv4, IPv6, or IPv4 & IPv6) which identifies a network address.

Attributes

# Table 4.2.5.4.8.2-1 Attributes Properties for NetworkAddress

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| ipv4Addr | **Data Type:** Ipv4Addr  **Description:** IPv4 address as defined in 3GPP TS 28.623 | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True |
| ipv6Addr | **Data Type:** Ipv6Addr  **Description:** IPv6 address as defined in 3GPP TS 28.623 | x-support-qualifier: M  x-isInvariant: False x-inventoryNotification: False x-stateChangeNotification: False nullable: True |

Attribute constraints

# Table 4.2.5.4.8.3-1 Attributes Constraints for EndPoint

|  |  |
| --- | --- |
| **Name** | **Definition** |
| ATLEAST\_ONE\_ADDRESS\_EXISTS | Condition: if ipv4Addr exists then ipv6Addr is optional. Likewise, if  ipv6Addr exists then ipv4Addr is optional. |

State diagram

None*.*

Annex (informative):

Change History

|  |  |  |
| --- | --- | --- |
| **Date** | **Revision** | **Description** |
| 2023.03.21 | 00.01.00 | Create initial O-RAN version, from template with modifications for 3GPP TS 32.160 |
| 2023.04.28 | 00.01.01 | Modified Scope, Introduction, References, and Annex Formatinng CR: ATT-2023.03.15-  WG6-CR-001-O2IM Introduction and Scope Changes - v02. |
| 2023.04.28 | 00.01.02 | Modified Section 4 Outline with examples CR: ATT-2023.04.04-CR-003-02IM Section 4  new Outline-v04. |
| 2023.06.02 | 00.01.03 | Incorporated the following CRs:  ATT-2023.05.02-WG6-CR-004-ORIM Template Cleanup-v01 ATT-2023.05.03-WG6-CR-005-O2IM IMS Diagrams-v03  ATT-2023.05.23-WG6-CR-006-O2IM Imported and Associated Entities-v03  ATT-2023.05.23-WG6-CR-007-O2IM Fault Monitoring-v04 |
| 2023.07.10 | 00.02.00 | Initial internal release based on the current O2IMS Specification.  Incorporated the following CRs:  ATT-2023.05.30-WG6-CR-008-O2IM Infrastructure Inventory-v05 ATT-2023.05.23-WG6-CR-009-O2IM LCM-v03  ATT-2023.05.31-WG6-CR-010-O2IM Performance Store-v03 ATT-2023.05.31-WG6-CR-011-O2IM Performance Job-v04  ATT-2023.06.01-WG6-CR-012-O2IM Performance Subscription-v04  ATT-2023.06.01-WG6-CR-013-O2IM Performance Report-v03 |
| 2024.03.12 | 01.00.00 | Initial release  Incorporated the following CRs:  ATT-2024.03.01-WG6-CR-019-O2IM CR Merge Corrections-v03 DELL.AO-2023.09.26-WG6-CR-0002-O2IM\_Site\_v07  ATT-2024.01.26-WG6-CR-017-O2IM Namespace alignment-V02  ATT-2024.01.26-WG6-CR-018-O2IM Measurement Job Corrections-V04 ATT-2023.09.15-WG6-CR-016-O2IM Deferred Comment Corrections-V04  DELL.AO-2023.02.21-WG6-CR-0001-O2IM Extensions to infrastructure service objects- v03  ATT-2023.08.25-WG6-CR-015-O2IM New PM Use Case Support-v03  ATT-2023.06.01-WG6-CR-014-O2IM New Alarm Use Case Support-v06 Editorial, missing clauses for new section 4.3.3.5.3, 4.3.3.5.4 |
| 2024.07.01 | 01.00.04 | Incorporated the following CRs:  ERI.AO-2024.04.09-WG6-CR-0029-Namespace-Updates-v03  ATT-2024.04.15-WG6-CR-0020-New Namespace Skeletons-v03  ATT-2024.04.23-CR-021-Remove Performance Measurement Subscription-v01 ERI.AO-2023.07.25-WG6-CR-0024-OCloud\_Networking\_Information\_Model-v21 |
| 2024.07.05 | 01.00.05 | Incorporated the following CRs:  ATT-2024.05.28-WG6-CR-0022-Performance Subscription Correction-v02 ATT-2024.05.28-WG6-CR-0023-log Query Enhancements-v05 |
| 2024.07.19 | 02.00.00 | Incorporated Release review Comments |
| 2024.11.12 | 03.00.00 | Incorporated the following CRs:  DELL.AO-2024.08.27-WG6-CR-0010-O2IM\_DictionaryId\_v01  NOK.AO-2024.09.10-WG6-CR0131-GenSpclResource\_Guidelines\_v01.01 ATT-2024.07.30-WG6-CR-0024-Provisioning Relationship Modeling-v06  ATT.AO-2024.07.31-WG6-CR-0025-Networking Infrastructure Attribution-v09 ATT.AO-2024.09.11-WG6-CR-0026-Infrastructure Specialized Classes-v09 ATT-2024.09.11-WG6-CR-0027-PM Job Writeable Extensions-v02  ATT-2024.09.11-WG6-CR-0028-InfrastructureInventoryObject Name Correction-v03 ATT-2024.10.02-WG6-CR-0030-Cluster Classes and Attribution-v05  ATT-2024.10.02-WG6-CR-0031-Artifact Classes and Attribution-v04  ATT-2024.10.02-WG6-CR-0032-Provisioning Classes and Attribution-v08 ATT.AO-2024.10.15-WG6-CR-0033-3GPP Alignment to Release 18-v02  The following Editorial changes were made to make the document cohesive  Boiler plate text required for the Infrastructure Namespace which was not included in ATT-CR-0025 or ATT-CR-0026. This included the clause 4.2.5 itself and clauses  4.2.5.1, 4.2.5.2, and 4.2.5.3 |
---

- View in [Reader Mode](https://simewu.com/spec-reader/pages/07-WG6/O-RAN.WG6.TS.O-CLOUD-IM.0-R004-v03.00.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG6.TS.O-CLOUD-IM.0-R004-v03.00.docx).
