---
title: O-RAN.WG6.ASD-R003-v01.00.docx.md
author: O-RAN Alliance, WG6
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG6.ASD-R003-v01.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG6.ASD-R003-v01.00.docx).

---

* toc
{:toc}

---

<div class="table-wrapper" markdown="block">

|  |
| --- |
| ![webwxgetmsgimg (7).jpeg]({{site.baseurl}}/assets/images/bea03973c631.jpg)O-RAN.WG6.ASD-R003-v01.00 |

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
| O-RAN Work Group 6  Application Service Descriptor specification |

</div>

<div class="table-wrapper" markdown="block">

|  |
| --- |
|  |
| Copyright (C) 2024 by the O-RAN ALLIANCE e.V.  The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.  O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany  Register of Associations, Bonn VR 11238, VAT ID DE321720189 |

</div>

Contents

List of figures 3

List of tables 3

Foreword 4

Modal verbs terminology 4

1 Scope 5

2 References 5

2.1 Normative references 5

2.2 Informative references 5

3 Definition of terms, symbols and abbreviations 5

3.1 Terms 5

3.2 Symbols 6

3.3 Abbreviations 6

4 Objective 6

5 Conventions 6

6 Application Service Descriptor information elements 7

6.1 Overview 7

6.2 Application Service Descriptor Information Element 8

6.3 Deployment Item (DeploymentItem) Information Element 9

6.4 External connection point (ExtCpd) Information Element 10

6.5 NetworkInterfaceRealizationRequirements Information Element 10

6.6 ExtCpdParamMappings Information Element 13

6.7 EnhancedClusterCapabilities Information Element 14

Annex (informative): Change History 16

# List of figures

Figure 6.1-1: DeploymentDescriptor with ASD representation 8

# List of tables

Table 6.2-1: ASD Information Model 8

Table 6.3-1: DeploymentItem IE 9

Table 6.4-1: ExtCpd IE 10

Table 6.5-1 NetworkInterfaceRealizationRequirements IE 10

Table 6.6-1: ExtCpdParamMappings IE 13

Table 6.7-1: EnhancedClusterCapabilities IE 14

# Foreword

This Technical Specification (TS) has been produced by WG6 of the O-RAN Alliance.

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

The present document specifies the structure and format of the Application Service Descriptor (ASD).

# 2 References

## 2.1 Normative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following referenced documents are necessary for the application of the present document.

[1] Kubernetes label key-value-nomenclature <https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/>

[2] O-RAN-WG6.ORCH-USE-CASES-R003: "Cloudification and Orchestration Use Cases and Requirements for O-RAN Virtualized RAN".

## 2.2 Informative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following referenced documents are not necessary for the application of the present document, but they assist the user with regard to a particular subject area.

[i.1] O-RAN.WG6.AppLCM-Deployment-R003-v01.00: "Application Life Cycle Management (LCM) for Deployment Technical Recommendation".

[i.2] O-RAN.WG10.OAM-Architecture-R003: "O-RAN Operations and Maintenance Architecture".

[i.3] Kubernetes node features <https://kubernetes-sigs.github.io/node-feature-discovery/stable/get-started/index.html>

# 3 Definition of terms, symbols and abbreviations

## 3.1 Terms

For the purposes of the present document, the terms given in [2] apply.

## 3.2 Symbols

Void.

## 3.3 Abbreviations

For the purposes of the present document, the following abbreviations apply:

ASD Application Service Descriptor

CNI Container Network Interface

DC Data Center

DPDK Data Plane Development Kit

GARP Gratuitous ARP (Address Resolution Protocol)

GPU Graphics Processing Unit

IPAM IP Address Management

K8s Kubernetes

LAG Link Aggregation Group

LI Lawful Interception

MAC Media Access Control

NAD Network Attachment Definition

NF Network Function

NW Network

OAM Operations, Administration and Management

O-RAN Open Radio Access Network

OVS Open vSwitch

PCIe Peripheral Component Interconnect Express

PF Physical Function

SMO Service Management and Orchestration

SR-IOV Single Root I/O Virtualization

URI Uniform Resource Identifier

UUID Universally Unique Identifier

VLAN Virtual Local Area Network

VF Virtual Function

vNIC virtual Network Interface Card

VPN Virtual Private Network

VPP Vector Packet Processing

# 4 Objective

The present document delivers a specification of the information elements and attributes applicable to the ASD.

# 5 Conventions

The attributes of the ASD information elements are described in the tables provided in section 6.2. Each table has 5 columns, with the following significance:

* The "Attribute" column provides the attribute name.
* The "Qualifier" column indicates whether the support of the attribute is mandatory, optional or conditional from the SMO perspective.
* The "Cardinality" column contains the minimum and maximum cardinality of this information element (e.g., 1, 0 ... N, 1 ... N). A cardinality range starting with 0 indicates that the attribute need not always be included and 1 indicates that the attribute needs to be always included.
* The "Type" column provides information on the type of the attribute values. It can be the name of an Information Element. If a cell in the "Type" is marked as "Not specified", which indicates that the specification of the type is left to the data model.
* The "Description" provides a brief explanatory description, additional constraints, and examples.

# 6 Application Service Descriptor information elements

## 6.1 Overview

The Application Service Descriptor (ASD) contains data that describes an application and that is used by the SMO as input for the deployment of the application workload.

The ASD is a complementary descriptor to the cloud-native deployment artifacts. Hence, it contains design-time information provided by the application vendor that is not described/available in the cloud native artifacts. Such complementary information in the ASD can include specific infrastructure capabilities requirements for the deployment of the application software workload, constraints on the Kernel type needed, additional networking requirements needed beyond primary connectivity described in the cloud native artifacts, any special CNI (Container Network Interfaces), etc [i.1].

ASD can support an application workload deployment on OS container infrastructures, and it is applicable to O-RAN NF Deployments, xApps, and rApps.

Figure 6.1-1 illustrates the representation of O-RAN OAM Application Packaging Model as depicted in version 10.00 of [i.2] and shows how the Application Service Descriptor is positioned within the Application Package Model.

Helm Chart (CloudNative DescriptorFile)

DockerImage (ExecutableImage)

**ASD DeploymentItem**

**(DeploymentItem)**

has

Deployment related artifacts

**ASD (DeploymentDescriptor)**

![]({{site.baseurl}}/assets/images/76588cb87c3c.png)

has

May have

Figure 6.1-1: DeploymentDescriptor with ASD representation

## 6.2 Application Service Descriptor Information Element

For the O-RAN NF Deployments the Application Service Descriptor (ASD) is a main top level descriptor template which consists of the attributes described in Table 6.2-1 below.

Table 6.2-1: ASD Information Model

<div class="table-wrapper" markdown="block">

| **Attribute** | **Qualifier** | **Cardinality** | **Type** | **Description** |
| --- | --- | --- | --- | --- |
| asdId | M | 1 | String | Identifier of this ASD information element. This attribute shall be globally unique. The format will be defined in the data model specification phase. |
| asdVersion | M | 1 | String | Identifies the version of the ASD |
| asdSchemaVersion | M | 1 | String | Specifies the version of the ASD's schema. See note 1. |
| asdProvider | M | 1 | String | Provider of the application and of the ASD. |
| asdApplicationName | M | 1 | String | Name to identify the application. Invariant for the application lifetime. |
| asdApplicationVersion | M | 1 | String | Specifies the version of the application. See note 2. |
| asdApplicationInfoName | M | 0..1 | String | Human readable name for the application. Can change during the ASD lifetime. |
| asdInfoDescription | M | 0..1 | String | Human readable description of the application. Can change during the ASD lifetime. |
| asdExtCpd | M | 0..N | ExtCpd | Describes the externally exposed connection points of the application. |
| enhancedClusterCapabilities | M | 0..1 | EnhancedClusterCapabilities | A list of expected capabilities of the target deployment cluster to aid placement of the application on a suitable cluster. |
| deploymentItem | M | 1..N | DeploymentItem | Cloud native deployment artifacts associated with the application. |
| asdInvariantId | M | 1 | String | Identifier of this descriptor in a version independent manner. This attribute is invariant across versions of ASD. It is in UUID format as specified in RFC 4122 |
| NOTE 1: Version changes when a change is made to any one of the ASD attributes.  NOTE 2: Version changes when software or ASD values changes | | | | |

</div>

## 6.3 Deployment Item (DeploymentItem) Information Element

The deploymentItem defined in O-RAN Operations and Maintenance Architecture [i.2] is realized by the DeploymentItem IE which has the DeploymentItem structure described in Table 6.3-1 below.

The DeploymentItem IE describes the type of cloud native artifact, its order of deployment in case multiple cloud native artifacts are employed with the same ASD, and the list of parameters that can be parameterized in this cloud native deployment artifact at deployment time.

Table 6.3-1: DeploymentItem IE

<div class="table-wrapper" markdown="block">

| **Attribute** | **Qualifier** | **Cardinality** | **Type** | **Description** |
| --- | --- | --- | --- | --- |
| deploymentItemId | M | 1 | String | The identifier of this deployment item |
| artifactType | M | 1 | String | Specifies the artifact type. One of following values can be chosen: "helm\_chart", "helmfile", "crd", "terraform". |
| artifactId | M | 1 | String | Unique reference to a deployment item (cloud native deployment artifact). It can be a URI or file path. |
| deploymentOrder | M | 0..1 | Integer | Specifies the deployment order of the deployment item. A lower value specifies that the deployment item belongs to an earlier deployment stage, i.e., needs to be installed prior to a deployment item with higher deploymentOrder values. If not specified, the deployment of the deployment itemt can be done in arbitrary order and decided by the SMO. |
| lifecycleParameter | M | 0..N | String | The list of parameters that can be overridden at deployment time (e.g., the list of parameters in the values.yaml which can be overridden at deployment time) |

</div>

## 6.4 External connection point (ExtCpd) Information Element

The ExtCpd IE describes endpoints exposed by the application to enable orchestrators to string together or optimally place linked applications.

Table 6.4-1: ExtCpd IE

<div class="table-wrapper" markdown="block">

| **Attribute** | **Qualifier** | **Cardinality** | **Content** | **Description** |
| --- | --- | --- | --- | --- |
| id | M | 1 | String | The identifier of this ExtCpdData |
| description | M | 1 | String | Describes the service exposed. |
| virtualLinkRequirement | M | 1 | String | Refers in an abstract way to the network that the ExtCpd shall be exposed for (for example, OAM, EndUser, backhaul, LI, etc). The intent is to enable a network operator to identify which extCpd was designed to be connected to which VPN. |
| networkInterfaceRealizationRequirements | M | 0..1 | NetworkInterfaceRealizationRequirements | Details container implementation specific requirements on the NetworkAttachmentDefinition. See notes 1 and 2. |
| inputParamMappings | M | 0..1 | ExtCpd.ParamMappings | Information on what parameters are required to be provided to the deployment tools for the asdExtCpd instance. |
| resourceMapping | M | 0..1 | String | Resource name for the cloud native resource manifest, as specified in the cloud native descriptor declaring the network interface (e.g., in the helm chart, for the: service, ingress or pod resource). Enables, together with knowledge on namespace, the SMO to lookup the runtime data related to the extCpd. |
| NOTE 1: Applies only for ExtCpd representing secondary network interfaces in a POD.  NOTE 2: Several ExtCpd may refer to same additional network interface requirements. | | | | |

</div>

## 6.5 NetworkInterfaceRealizationRequirements Information Element

The NetworkInterfaceRealizationRequirements IE describes details related to secondary networks that attach the OS containers to the logical or physical networks.

Table 6.5-1 NetworkInterfaceRealizationRequirements IE

<div class="table-wrapper" markdown="block">

| **Attribute** | **Qualifier** | **Cardinality** | **Content** | **Description** |
| --- | --- | --- | --- | --- |
| trunkMode | M | 0..1 | Boolean | Specifies whether the interface is capable of carrying traffic for multiple VLANs.  If not present or set to false: this interface shall connect to single network.  If set to true: the network interface shall be a trunk interface (connects to multiple VLANs). |
| ipam | M | 0..1 | Enum | Specifies which mode is used for the IP address assignment.  Values:   * "infraProvided": the CNI specifies how IPAM is done and assigns the IP address to the pod interface. * "orchestrated": the IP address to be assigned to the pod interface is expected from the orchestration function as input parameter to the deployment request. * "userManaged": the IP address is provided directly to the application via an external management entity.   Default value is "infraProvided". |
| interfaceType | M | 0..1 | Enum | Specifies the type of network interface. Different types of interfaces are supported by different CNIs.  Values:   * "kernel.netdev": Linux kernel or vSwitch based. It is supported by CNIsTM like: OVS, MACVLAN, IPVLAN, BRIDGE, PTP, etc. * "direct.userspace": Provides direct access to network PCIe, typically an SR-IOV VF, but could also be a PF. Uses application specific driver contained in the image. The device is bound to a driver by the cloud provider which supports user space control by the application (e.g. vfio\_pci, igb\_uio). It is supported by the following CNIsTM: SRIOV, HOST-DEVICE. * "direct.kerneldriver": Similar to direct.userspace but device is bound to a kernel driver by the cloud provider and can be consumed in the same way as a kernel netdev. It is supported by the following CNIsTM: SRIOV, HOST-DEVICE. * "direct.bond": Based on the BOND CNITM. Requires the existence of a mated pair of direct kernel network attachments prior to the creation of the bond. Thus, when this interface type is indicated, three attachments definitions to the secondary container cluster network are expected: two providing the direct kerneldriver  functionality and one with the BOND CNITM * "userspace": Based on the userspace CNITM. requires infrastructure to support a DPDK-OVS or VPP based vSwitch.   Default value is "kernel.netdev". |
| interfaceOption | M | 0..N | Enum | vNIC configurations the network interface is verified to work with.  This attribute is applicable for interfaces of type "userspace".  Values:   * "virtio" * "memif" |
| interfaceRedundancy | M | 0..1 | Enum | Method required from the infrastructure to provide redundancy for the interface.  Values: "infraProvided", "left", "right", "activeActiveBond", "activePassiveBond", "activePassivel3"   * "infraProvided": The application sees one vNIC, but the infrastructure provides redundant access to the network via both switch planes. For interface of type kernel.netdev the redundancy is provided by the vSwitch or Linux bonding. For interfaces of type direct, it requires that the physical NIC is connected to both switch planes (a.k.a. smartNIC). Thus, it imposes hardware requirements on the infrastructure. For interface of type userspace redundancy handled by a DPDK-OVS or VPP vSwitch * "left" and "right": indicates a vNIC connected non-redundantly to the network via one specific (left or right) switchplane. Redundancy is implemented by having two external connection points, indicating different values (left/right) in the descriptor.   For the the following values, the infrastructure provides for a single external connection point  a mated vNIC pair in the Pod, one connecting to the network via left switchplane and the other connecting to the network via the right switchplane, and with the application using them together as a redundant network interface using a particular redundancy method that need to be accomodated in the node infrastructure:   * "activeActiveBond": Requires a static multi-chassis LAG in active-active mode from the infrastructure. Typically corresponds to bonding mode-2 "balance-xor" * "activePassiveBond": The interfaces are bonded in active-passive mode in the application with move of bond MAC address. No specific requirements on DC fabric. Typically corresponds to bonding mode-1 "active-backup" * "activePassivel3": Application moves its IP address by attaching it to one of the two MACs by use of GARP messages. |

</div>

## 6.6 ExtCpdParamMappings Information Element

The ExtCpdParamMappings IE describes required information on what parameters to be provided to the deployment tools for the ExtCpd instance.

Table 6.6-1: ExtCpdParamMappings IE

<div class="table-wrapper" markdown="block">

| **Attribute** | **Qualifier** | **Cardinality** | **Content** | **Description** |
| --- | --- | --- | --- | --- |
| loadbalancerIP | M | 0..1 | String | When present, this attribute specifies the name of the deployment artifact input parameter through which the SMO can configure the loadbalancerIP parameter of the K8s service or ingress controller that the ExtCpd represents. See note 2. |
| externalIPs | M | 0..1 | String | When present, this attribute specifies the name of the deployment artifact input parameter through which the SMO can configure the externalIPs parameter of the K8s service or ingress controller, or the pod network interface annotation, that the ExtCpd represents. The param name and provided IP address(es) value will be passed to the deployment tool when deploying the DeploymentArtifacts*.*See note 2. |
| nadName | M | 0..N | String | These attributes specify, for an ExtCpd representing a secondary network interface, the name(s) of the deployment artifact input parameter(s) through which the SMO can provide the names of the network attachment definitions (NADs) the SMO has created as base for the network interface the ExtCpd represents. It is expected that the NADs themselves have been created prior to the deployment of the deployment artifacts. See notes 1, 2, and 3. |
| nadNamespace | M | 0..1 | String | Specifies, for an ExtCpd representing a secondary network interface, the name of the deployment artifact input parameter through which the SMO can provide the namespace where the NADs are located. Attribute may be omitted if the namespace is same as the application namespace. See note 2. |
| NOTE 1: When the ExtCpd represent a networkRedundant/mated pair of sriov interfaces, there are references to 2 or 3 related NADs needed to be passed, while for other interface types only one NAD reference is needed to be passed.  NOTE 2: The format of the Content strings is specific for each different orchestration templating technology used (Helm, Teraform, etc.). Currently only a format for use with Helm charts is suggested: "<helmchartname>:[<subchartname>.] 0 ... N[<parentparamname>.] 0 ... N<paramname>". Whether the optional parts of the format are present depends on how the parameter is declared in the helm chart. An example is: "chartName:subChart1.subChart2.subChart3.Parent1.Parent2.Parent3.parameter".  NOTE 3: A direct attached (passthrough) network interface, such as an sriov interface, attaches to a network via only one of the two switch planes in the infrastructure.  When using a direct attached network interface one therefore commonly in a pod uses a mated pair of sriov network attachments, where each interface attaches same network but via different switchplane.  The application uses the mated pair of network interfaces as a single logical "swith-path-redundant" network interface - and this is represented by a single ExtCpd.  Also, there is a case where a third "bond" attachment interface is used in the pod, bonding the two direct interfaces so that the application does not need to handle the redundancy issues - application just uses the bond interface.  In this case all three attachments are together making up a logical "switch-path-redundant" network interface represented by a single ExtCpd. When three NADs are used in the ExtCpd the NAD implementing the bond attachment interface is provided through the parameter indicated in the third place in the nadNames attribute. | | | | |

</div>

## 6.7 EnhancedClusterCapabilities Information Element

The EnhancedClusterCapabilities IE describes information which is used to aid placement of the application service on a suitable cluster.

Table 6.7-1: EnhancedClusterCapabilities IE

<div class="table-wrapper" markdown="block">

| **Attribute** | **Qualifier** | **Cardinality** | **Content** | **Description** |
| --- | --- | --- | --- | --- |
| minKernelVersion | M | 1 | String | Describes the minimal required Kernel version, e.g., 4.15.0. Coded as displayed by linux command uname -r |
| requiredKernelModule | M | 0..N | String | Required kernel modules are coded as listed by linux lsmod command, e.g., ip6\_tables, cryptd, nf\_nat etc. |
| conflictingKernelModule | M | 0..N | String | Kernel modules, which shall not be present in the target environment. The kernel modules are coded as listed by linux lsmod command, e.g., ip6\_tables, cryptd, nf\_nat etc. Example: Linux kernel SCTP module, which may conflict with use of proprietary user space SCTP stack provided by the application. |
| requiredCustomResource | M | 0..N | Structure (inlined) | List of the required custom resource types in the target environment, identifying each by the "kind" and "apiVersion" field in the K8S resource manifests and in the application. The list shall include those custom resource types which are not delivered with the application.  Example: requiredCustomResources:  -{kind: "Redis", apiVersion: "[kubedb.com/v1alpha1](http://kubedb.com/v1alpha1)"} |
| >kind | M | 1 | String | Kind of the custom resource |
| >apiVersion | M | 0..1 | String | apiVersion of the custom resource. If not indicated, any apiVersion of the custom resource is valid. |
| clusterLabel | M | 0..N | String | This attribute indicates the required O-Cloud Node Cluster capabilities.  These can indicate special infrastructure capabilities (e.g., NW acceleration, GPU compute, etc.). The intent of these O-Cloud Node Cluster capabilities is to serve as a set of values that can support the SMO in application placement decisions. See note 1.  clusterLabel follow the Kubernetes label key-value-nomenclature [1] .  This attribute should use the standardized values for the O-RAN O-Cloud Node Cluster capabilities, the existing values for node features [i.3], and any new capabilities identified in O-RAN specifications. The attribute supports also extensions for non standardized values. See note 2. |
| requiredPlugin | M | 0..N | Structure (inlined) | A list of the names and versions of the required K8s plugin (e.g., multus v3.8) |
| >requiredPluginName | M | 1 | String | The names of the required K8s plugin (e.g., multus) |
| >requiredPluginVersion | M | 0..1 | String | The version of the required plugin (e.g., 3.8). If not indicated, any version of the plugin is valid. |
| NOTE 1: The SMO uses the set of standardized capabilities to identify O-Cloud Node cluster capabilities required in the DeploymentDescriptors and to match them to the capabilities available in the O-Cloud.  NOTE 2: References to standandardized values for the O-RAN O-Cloud Node Cluster capabilities and/or new capabilities identified in O-RAN specifications will be added in future versions of the present document. | | | | |

</div>

Annex (informative):
Change History

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Date | Revision | Description |
| 2023.04.17 | 00.00.01 | Initial TS skeleton |
|  | 00.00.02 | Editor's notes with references to clauses in O-RAN.WG6.AppLCM-Deployment-R003-v01.00 for content, and informative document reference added. |
| 2023.08.23 | 00.00.03 | Implemented CRs:  NOK-2023.06.07-WG6-CR-ASD\_conventions (NOK-0054 rev 1)  NOK-2023.06.07-WG6-CR-ASD\_overview-02 (NOK-0055 rev 2) |
| 2023.09.07 | 00.00.04 | Implemented CRs:  NOK-2023.06.07-WG6-CR-ASD\_application\_service\_descriptor\_clauses-v05 (NOK-0056 rev 5)  ERI-2023.06.14-WG6-CR-0015-NetworkInterfaceRealizationRequirements-v03 (ERI-0015 rev 3) |
| 2023.10.27 | 00.00.05 | Implemented CRs:  ERI-2023.09.26-WG6-CR-0019-ASD-corrections-v04  ERI-2023.10.04-WG6-CR-0020-ASD-empty-clauses-and-cleanup-v02 |
| 2023.11.07 | 00.00.06 | Copyright changed to 2024 |
| 2023.11.15 | 00.00.07 | Addresses comments from Thinh at  [November 2023 WG Approval Comment Wiki - Cloudification and Orchestration Workgroup - Confluence (atlassian.net)](https://oranalliance.atlassian.net/wiki/spaces/COWG/pages/3009282058/November%2B2023%2BWG%2BApproval%2BComment%2BWiki#Application-Services-Descriptor-TS)  Implements three changes from ERI-2023.09.26-WG6-CR-0019-ASD-corrections-v04  that were missed when implementing the CR in v.00.00.05. |
| 2023.11.21 | 00.00.08 | Addresses comments from Joan at  [November 2023 WG Approval Comment Wiki - Cloudification and Orchestration Workgroup - Confluence (atlassian.net)](https://oranalliance.atlassian.net/wiki/spaces/COWG/pages/3009282058/November%2B2023%2BWG%2BApproval%2BComment%2BWiki#Application-Services-Descriptor-TS) |
| 2023.11.21 | 00.00.09 | Final resolution of Joan's comments according to agreement in WG6 meeting on 2023.11.21.  [November 2023 WG Approval Comment Wiki - Cloudification and Orchestration Workgroup - Confluence (atlassian.net)](https://oranalliance.atlassian.net/wiki/spaces/COWG/pages/3009282058/November%2B2023%2BWG%2BApproval%2BComment%2BWiki#Application-Services-Descriptor-TS) |
|  | 01.00 | Final version 01.00 |
|  |  |  |

</div>
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG6.ASD-R003-v01.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG6.ASD-R003-v01.00.docx).
