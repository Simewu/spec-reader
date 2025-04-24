---
title: O-RAN.WG6.AAL-MUMIMO-BF-Calc-Profile-R004-v01.01.docx.md
author: O-RAN Alliance
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG6.AAL-MUMIMO-BF-Calc-Profile-R004-v01.01.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG6.AAL-MUMIMO-BF-Calc-Profile-R004-v01.01.docx).

---

* toc
{:toc}

---

![webwxgetmsgimg (7).jpeg]({{site.baseurl}}/assets/images/9c69df009b87.jpg)O-RAN.WG6.AAL-MIMO BF Calc Profile

R004-v01.01

*Technical Specification*

**O-RAN Work Group 6 (Cloudification and Orchestration Workgroup)**

**Acceleration Abstraction Layer MUMIMO Precoder/BeamFormer Calculation Profile**

Copyright (C) 2024 by the O-RAN ALLIANCE e.V.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany Register of Associations, Bonn VR 11238, VAT ID DE321720189

Contents

List of tables 3

Foreword 4

Modal verbs terminology 4

Executive summary 4

Introduction 4

1. Scope 5
2. References 5
   1. Normative references 5
   2. Informative references 5
3. Definition of terms, symbols and abbreviations 5
   1. Terms 5
   2. Symbols 6
   3. Abbreviations 6
4. Overview 6
   1. Purpose 6
   2. Document Structure 6
5. AAL Configuration and Management 6
6. AAL Profile Specifications 7
   1. Introduction 7
   2. Naming Coventions 7
   3. MUMIMO Precoder/BeamFormer Calculation Profile Specification 7
      1. Introduction 7
      2. Profile Operation 7
      3. MUMIMO Precoder/BeamFormer Calculation Profile Capabilities and Configurations 7
      4. AAL Profile Specific Interface 8

Annex (informative): Change History 9

# List of tables

Table 6.3.4-1: AAL Profile Parameters for Weight Calculation 7

# Foreword

This Technical Specification (TS) has been produced by WG6 of the O-RAN Alliance.

The content of the present document is subject to continuing work within O-RAN and may change following formal O-RAN approval. Should the O-RAN Alliance modify the contents of the present document, it will be re-released by O-RAN with an identifying change of version date and an increase in version number as follows:

version xx.yy.zz where:

xx: the first digit-group is incremented for all changes of substance, i.e. technical enhancements, corrections, updates, etc. (the initial approved document will have xx=01). Always 2 digits with leading zero if needed.

yy: the second digit-group is incremented when editorial only changes have been incorporated in the document. Always 2 digits with leading zero if needed.

zz: the third digit-group included only in working versions of the document indicating incremental changes during the editing process. External versions never include the third digit-group. Always 2 digits with leading zero if needed.

# Modal verbs terminology

In the present document "**shall**", "**shall not**", "**should**", "**should not**", "**may**", "**need not**", "**will**", "**will not**", "**can**" and "**cannot**" are to be interpreted as described in clause 3.2 of the O-RAN Drafting Rules (Verbal forms for the expression of provisions).

"**must**" and "**must not**" are **NOT** allowed in O-RAN deliverables except when used in direct citation.

# Executive summary

This document provides the description of the requirements and stage-2 information models to implement an Acceleration Abstraction Layer (AAL) for the MUMIMO Precoder/BeamFormer Calculation functionality hosted by an AAL-LPU that is associated with an O-RAN Network Function.

# Introduction

This document specifies how to accelerate the functionality of an O-RAN network function where the MUMIMO Precoder/BeamFormer Calculation Acceleration Function (AF) is hosted on an AAL-LPU that is assigned to the AAL Application that is part of the O-RAN network function. This document also specifies a set of AAL Profiles and procedures for utilizing the AALI Common Management (AALI-C-Mgmt) and Application (AALI-C-App) interfaces to convey the information elements specified by the AAL Profiles.

# Scope

The present document specifies the requirements and stage-2 information models for the MUMIMO Precoder/BeamFormer Calculation Profiles.

# References

## Normative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following referenced documents are necessary for the application of the present document.

1. Void
2. Void
3. Void
4. Void
5. Void
6. Void
7. O-RAN WG6 Acceleration Abstraction Layer General Aspects and Principles
8. O-RAN Acceleration Abstraction Layer High-PHY Profiles

## Informative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following referenced documents are not necessary for the application of the present document, but they assist the user with regard to a particular subject area.

[i.1] 3GPP TR 21.905: "Vocabulary for 3GPP Specifications".

# Definition of terms, symbols and abbreviations

## Terms

Void

## Symbols

Void

## Abbreviations

For the purposes of the present document, the abbreviations [given in [1] and the following] apply: AAL Acceleration Abstraction Layer

AALI Acceleration Abstraction Layer interface

AAL-LPU Acceleration Abstraction Layer Logical Processing Unit BF Beam Forming

CNF Containerized Network Function

HWA Hardware Accelator

NF Network Function

O-CU O-RAN Centralized Unit

O-DU O-RAN Distributed Unit

O-RU O-RAN Radio Unit

OS Operating System

# Overview

## Purpose

The AAL General Aspects and Principles is described in [7] including a high-level architecture of the AAL and definition of the AAL profiles. This document details the AAL specification consisting of the description of the interface, information models, and requirements to implement an AALI for AAL\_MUMIMO\_PRECODER\_WEIGHTS\_CAL profile [7]

The purpose of the AAL\_MUMIMO\_PRECODER\_WEIGHTS\_CAL profile is to support look-aside acceleration of beamforming (precoding) weight calculation by the Application. This profile compliments the High-PHY profiles specified in [8].

## Document Structure

This present document is structured as follows: Chapter 4 presents the overview and main purpose of this specification. Chapter 5 presents the high level AALI configuration and management principles for the AAL\_MU MIMO\_PRECODER\_WEIGHTS\_CAL profile. Chapter 6 presents the Profile Overview for the profile, sample capabilities, inputs, and outputs as well as HWA parameters for the profile.

# AAL Configuration and Management

The AALI configuration and management APIs are the APIs that an Application (O-DU) executes to configure and manage the AAL-LPU(s) that have been allocated to the Application by the O-Cloud. The high-level Configuration and Management Principles are presented in [7].

# AAL Profile Specifications

## Introduction

Void

## Naming Coventions

Void

## MUMIMO Precoder/BeamFormer Calculation Profile Specification

### Introduction

The AAL\_MU MIMO\_PRECODER\_WEIGHTS\_CALC is used to support look-aside acceleration of beamforming (precoding) weight calculation by the Application

### Profile Operation

The Application provides HWA (aka AF in [8]) with all the information required to calculate precoding weights, as shown in Table 6.3.4-1. HWA computes MU-MIMO precoding weights according to an implementation-specific method, one exemplary method being block diagonalization.

HWA returns to the Application a handle\* (optional) to the precoding weights for the layers of the selected UEs together with precoding weights themselves. The precoding weights can be used by the Application to compute SINR per UE and per layer to assist with MCS selection.

Application sends the precoding weights (optional) or handle (optional) to AF [8] via AAL\_DOWNLINK\_High-PHY Profile [8].

\*Handle represents an index to "Beamforming (precoding) weights per PRG for the layers of the selected UEs" uniquely. This is an optional parameter. It is introduced to enable following example implementation option:

After precoding weights calculation, HWA stores the precoding weights locally together with the associated handle. HWA returns to Application the handle to the precoding weights as well as the precoding weights for the layers of the selected UEs. This provides option to Application to send just the handle to AF [8] in AAL\_DOWNLINK\_High-PHY Profile [8]. In this case, AF can use the handle to retrieve precoding weights stored locally.

NOTE: This is applicable only for the sencario in which same HWA is used for "high Phy function" and "precoding weights calculation function".

### MUMIMO Precoder/BeamFormer Calculation Profile Capabilities and Configurations

#### Summary of Capabilities

Void

#### Summary of Configurations

Void

### AAL Profile Specific Interface

##### Table 6.3.4-2 AAL Profile Parameters for Weight Calculation

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Parameters** | **Summary** | **HWA Role** |
| Application ? HWA | | |
| UEs | Ordered list of UEs selected for scheduling |  |
| Number of layers, per UE | Number of layers scheduled per UE |  |
| Channel Estimation Abstraction | A representation of SRS-based channel observations, as documented in [7] (e.g. SVD, raw channel). Sent for each PRG and for each UE  scheduled in the PRG. | Compute beamforming weights for the selected UEs and layers, e.g. based on block diagonalization based precoding. |
| HWA ? Application | | |
| Beamforming (precoding) weights | Beamforming (precoding) weights per PRG for the layers of the selected UEs. | Compute precoding weights for the selected UEs and layers, e.g. based on the representation of SRS-based  channel observations |
| Handle  **(OPTIONAL)** | Index to Beamforming (precoding) weights per PRG for the layers of the  selected UEs. |  |

</div>

Annex (informative):

Change History

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Date** | **Revision** | **Description** |
| 2022.02.28 | 01.00.00 | AAL Profile specification to offload "MU-MIMO precoder/beamformer weights calculation"  compute to Hardware Accelerator (HWA) in a look-aside manner. |
| 2024.07.15 | 01.00.01 | Delete unused citation from References section as per CR TEJA-2024.03.10-  ORAN.WG6-D-CR-0001 |
| 2024.07.18 | 01.00.02 | Migrate the document to new O-RAN AAL-Profile template |
| 2024.07.31 | 01.01.00 | Final version for July '24 train, upgraded document revision to R004 |

</div>
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG6.AAL-MUMIMO-BF-Calc-Profile-R004-v01.01.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG6.AAL-MUMIMO-BF-Calc-Profile-R004-v01.01.docx).

---

* toc
{:toc}
