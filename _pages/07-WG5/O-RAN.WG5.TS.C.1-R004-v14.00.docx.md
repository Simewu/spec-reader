---
title: O-RAN.WG5.TS.C.1-R004-v14.00.docx.md
author: O-RAN Alliance, WG5
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG5.TS.C.1-R004-v14.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG5.TS.C.1-R004-v14.00.docx).

---

* toc
{:toc}

---

<div class="table-wrapper" markdown="block">

|  |
| --- |
| ![webwxgetmsgimg (7).jpeg]({{site.baseurl}}/assets/images/bea03973c631.jpg)O-RAN.WG5.TS.C.1-R004-v14.00 |

</div>

Technical Specification

O-RAN Open F1/W1/E1/X2/Xn Interfaces Working Group

NR C-plane profile

Copyright (C) 2024 by the O-RAN ALLIANCE e.V.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany

Register of Associations, Bonn VR 11238, VAT ID DE321720189

(C) 2024 by the O-RAN ALLIANCE e.V. Your use is subject to the copyright statement on the cover page of this specification. 1

Contents

1 Scope 5

1.1 UE connectivity options used in this document 6

1.1.1 NR Non-Standalone (NSA) 6

1.1.2 NR Standalone (SA) 7

1.2 UE connectivity options via IAB Node 8

1.3 IAB Node connectivity options 8

1.3.1 IAB Node connectivity in Standalone mode 8

2 References 10

3 Definitions and abbreviations 10

3.1 Definitions 10

3.2 Abbreviations 10

4 Non-UE associated procedures 11

4.1 X2-C and F1-C for EN-DC 11

4.1.1 EN-DC X2 Setup 11

4.1.2 Reset 12

4.1.3 EN-DC Configuration Update 14

4.1.4 Partial Reset 15

4.1.5 F1 Setup 17

4.1.6 gNB-DU Configuration Update 18

4.1.7 gNB-CU Configuration Update 20

4.1.8 Mobility Load Balancing 21

4.2 Xn-C and F1-C for NR Stand-Alone 22

4.2.1 Xn Setup 22

4.2.2 Reset 23

4.2.3 F1 Setup 24

4.2.4 gNB-DU configuration update 25

4.2.5 gNB-CU configuration update 26

4.2.6 Paging (CN-initiated) 27

4.2.7 Write-Replace Warning 28

4.2.8 NG-RAN Node Configuration Update 28

4.2.9 Mobility Load Balancing 30

5 EN-DC procedures 32

5.1 Secondary Node Addition 32

5.1.1 Secondary Node Addition (Option 3x) 32

5.1.2 Secondary Node Addition (Option 3a) 34

5.2 Secondary Node Release 36

5.2.1 Secondary Node Release (MN initiated, Option 3x or SN terminated MCG bearer) 36

5.2.2 Secondary Node Release (SN initiated, Option 3x or SN terminated MCG bearer) 38

5.2.3 Secondary Node Release (MN initiated, Option 3a) 40

5.2.4 Secondary Node Release (SN initiated, Option 3a) 42

5.3 Secondary Node Change 45

5.3.1 Secondary Node Change (MN initiated, Option 3x, SN term. MCG bearer) 45

5.3.2 Secondary Node Change (SN initiated, Option 3x) 47

5.4 Inter-Master Node Handover 48

5.4.1 Inter-Master Node Handover (without SN Change, Option 3x) 48

5.4.2 Inter-Master Node Handover (with SN Change, Option 3x) 51

5.5 Master Node to eNB/gNB Change 53

5.5.1 Master Node to eNB Change 53

5.6 Secondary Node Modification 55

5.6.1 PCell change (Intra MN) (MN initiated) 55

5.6.2 Allowed Band Combination list update (MN initiated) 57

5.6.3 Configured Band Combination update by PSCell/SCell change (SN initiated) 58

5.6.4 SCG config query (MN initiated) 59

5.6.5 Security Key Change Procedure (MN initiated) 60

5.6.6 Measurement Gap Coordination Procedure (MN initiated) 61

5.6.7 Measurement Gap Coordination for per FR1 or per UE gap Procedure (SN initiated) 63

5.6.8 Measurement Gap Coordination for per FR2 gap (with MN involvement) Procedure (SN initiated) 64

5.6.8a Measurement Gap Coordination for per FR2 gap (without MN involvement) Procedure (SN initiated) 66

5.6.9 UL Configuration Update Procedure (SN initiated) 66

5.6.10 Addition of SN terminated split bearer (MN initiated) 68

5.6.11 Removal of SN terminated split bearer (MN initiated) 69

5.6.12 Bearer type change from SN terminated split bearer to SN terminated MCG bearer (MN initiated) 71

5.6.13 Bearer type change from SN terminated MCG bearer to SN terminated split bearer (MN initiated) 73

5.6.14 Bearer type change from SN terminated split bearer to SN terminated MCG bearer (SN initiated) 74

5.6.15 PSCell Change using SRB1 for RRC Reconfiguration - full configuration option 76

5.6.16 PSCell Change using SRB1 for RRC Reconfiguration - delta configuration option 78

5.6.17 Intra gNB-DU PSCell Change using SRB1 for RRC Reconfiguration 80

5.6.18 Inter gNB-DU PSCell Change using SRB3 for RRC Reconfiguration 82

5.6.19 Intra gNB-DU PSCell Change using SRB3 for RRC Reconfiguration 83

5.6.20 gNB-DU configuration query 84

5.6.21 DRB ID change/Security Key Change (SN initiated) 84

5.6.22 Full Reconfiguration (SN initiated) 85

5.6.23 Change of QCI (MN initiated) 87

5.6.24 Measurement ID Coordination (MN initiated) 88

5.6.25 Measurement ID Coordination (SN initiated) 89

5.7 RRC Transfer 91

5.7.1 UE measurement transfer 91

5.8 E-UTRA - NR Cell Resource Coordination 91

5.8.1 E-UTRA - NR Cell Resource Coordination (MN initiated, Option 3x/3a) 91

5.8.2 E-UTRA - NR Cell Resource Coordination (SN initiated, Option 3x/3a) 92

6 NR procedures 94

6.1 UE Initial Access and Registration Procedures 94

6.1.1 UE context creation (service request) 94

6.1.2 UE context creation (registration request) 95

6.1.3 Registration Update 96

6.2 UE Context Release 97

6.2.1 gNB-DU initiated UE Context Release 97

6.2.2 gNB-CU initiated UE Context Release 98

6.3 UE Context Modification 99

6.3.1 gNB-CU initiated UE Context Modification 99

6.3.2 gNB-DU initiated UE Context Modification 102

6.3.3 QoS and QFI management 103

6.4 Inter gNB-Handover 106

6.4.1 Inter gNB HO 106

6.5 Intra gNB-Handover 108

6.5.1 Intra gNB-DU, Intra Cell Handover 108

6.5.2 Intra gNB-DU, Inter Cell Handover 110

6.5.3 Inter gNB-DU Handover 112

6.5.4 Intra gNB-DU Handover with L1/L2 Triggered Mobility (LTM) 113

6.6 <void> 114

6.7 <void> 114

6.8 Inter RAT Handover 114

6.8.1 Inter RAT HO to LTE 114

6.8.2 Inter RAT HO to NR 115

6.9 RRC state transition 116

6.9.1 RRC connected to RRC inactive 116

6.9.2 RRC inactive to RRC connected (Intra gNB-CU) 116

6.9.3 RRC inactive to RRC connected (Inter gNB-CU) 117

6.10 RRC Connection Re-establishment 118

6.10.1 RRC Connection Re-establishment (Intra gNB-DU) 118

6.10.2 RRC Connection Re-establishment (Inter gNB-DU) 119

6.10.3 RRC Connection Re-establishment reject with RRC Setup 120

6.10.4 RRC Connection Re-establishment (Inter gNB-CU) 120

6.11 System Information Procedures 122

6.11.1 System Information Delivery 122

6.12 PDU session establishment after signalling-only connection 122

6.12.1 Message Flow for F1 123

6.12.2 F1-C IE handling 123

7 NR-DC procedures 124

7.1 S-NG-RAN NODE ADDITION 124

7.1.1 S-NG-RAN Node Addition 124

7.2 S-NG-RAN NODE MODIFICATION 126

7.2.1 M-NG-RAN node initiated SN modification 126

7.2.2 S-NG-RAN node initiated SN modification with MN involvement 138

7.2.3 S-NG-RAN node initiated SN modification without MN involvement 148

7.3 S-NG-RAN NODE RELEASE 151

7.3.1 M-NG-RAN node initiated S-NG-RAN Node Release without keeping UE 151

7.3.2 M-NG-RAN node initiated S-NG-RAN Node Release with keeping UE 153

7.3.3 S-NG-RAN node initiated S-NG-RAN Node Release 155

7.4 NG-RAN NODE CONFIGURATION UPDATE 158

7.5 RRC TRANSFER 158

7.5.1 UE measurement transfer 158

7.6 Master Node to gNB Change 159

7.6.1 Master Node to gNB Change 159

7.7 Inter-Master Node handover 160

7.7.1 Inter-Master Node handover without Secondary Node change 160

7.7.2 Inter-Master Node handover with Secondary Node change 162

7.8 S-NG-RAN NODE CHANGE 164

7.8.1 SN Initiated SN Change 164

7.8.2 MN Initiated SN Change 166

7.9 ACTIVITY NOTIFICATION 168

7.9.1 SN initiated Activity Notification 168

8 Integrated Access and Backhaul (IAB) Procedures 170

8.1 IAB procedures in Standalone mode 170

8.1.1 IAB Donor DU Setup 170

8.1.2 IAB Node1 integration 170

Annex A (informative): Description of functions 175

A.1 Multiple PLMN-IDs used in a RAN 175

A.1.1 Multiple PLMN-IDs for non-UE associated procedures 175

A.1.2 Multiple PLMN-IDs for UE associated procedures 175

A.2 Location Information Reporting at SN 176

A.2.1 X2-C for EN-DC 176

A.2.2 Xn-C for NR-DC 177

A.3 Measurement Gap Coordination 177

A.3.1 X2-C for EN-DC 177

A.3.2 Xn-C for NR-DC 177

Annex (informative): Change History 178

# 1 Scope

The present document provides profiles for C-plane procedures and functions to achieve interoperability among different vendors. The profile specifies the expected behavior of each node, e.g., message flow of each use case, definitions of IEs, etc. which is not specified in 3GPP specifications. The profile specification provided in this document does not violate 3GPP specifications.

The use cases in this specification cover selected 3GPP functionalities.
In the IE tables:

* If optional IEs are essential for a use case to work, they are categorized 'included' in the IE tables.
* If optional IEs are used under certain conditions applicable for this use case, they are categorized 'optionally included'.
* If optional IEs are not essential for the use case, they are set to 'not included'.

One or more use cases described in this document can be initiated in a single procedure if this is allowed by 3GPP specifications. In these cases, the IE tables need to be augmented and the 'included' IEs of the procedure are the combination of 'included' IEs of the individual use cases, unless otherwise specified in 3GPP.

In addition, it is also possible to combine the initiation of one or multiple use cases of this document with other functions of the 3GPP procedure as defined in the relevant 3GPP specifications.

The use cases are described based on following two architectures defined by 3GPP for 5G.

* For a description of the overall architecture in E-UTRA NR Dual Connectivity (EN-DC) also known as NR Non-Standalone (NSA) as depicted in Figure 1-1 see TS 37.340 [1].

![]({{site.baseurl}}/assets/images/4c3504f3131a.emf.png)

Figure 1-1: EN-DC Overall Architecture

* The overall architecture of NG-RAN as shown in Figure 1-2 is described in TS 38.300 [6].

![]({{site.baseurl}}/assets/images/c8de226106ad.emf.png)

Figure 1-2: NG-RAN Overall Architecture

## 1.1 UE connectivity options used in this document

The 3GPP architecture provides different options in the way a UE can connect to the network. Throughout this document the configuration options as explained in the following chapters are used. Note that these chapters focus on explaining the connectivity for the profiled use case. There might be additional bearers such as MCG or default bearers that are not shown in the figures.

In addition to the mandatory SRB (ie. SRB0, SRB1, SRB2) depicted in the below figures, some few selected use cases in this specification assume an optional SRB (ie. SRB3) between the SN and the UE. Split SRBs are not applicable for any connectivity option.

### 1.1.1 NR Non-Standalone (NSA)

In the NSA architecture the UE relies on LTE access to attach to EPC network and uses NR as secondary RAT for increased throughput using dual connectivity. In this version of the specification EN-DC is used with different options to establish the UP bearer(s).

#### 1.1.1.1 SN terminated SCG bearer ('Option 3a')

First UE connectivity option is typically referred to as 'Option 3a'. The PDCP and S1-U terminate in en-gNB acting as Secondary Node (SN). From there SCG bearers are used to convey UP data to/from the UE ('SN terminated SCG bearer').

![]({{site.baseurl}}/assets/images/e56921bbee72.emf.png)

Figure 1.1.1.1-1: SN terminated SCG bearer ('Option 3a')
Note: The SRB between the UE and the SN is optional

#### 1.1.1.2 SN terminated split bearer ('Option 3x')

This UE connectivity option also terminates UP PDCP in SN en-gNB, but the SN en-gNB splits the UP bearer in two legs utilizing X2-U and, if applicable F1-U, to send / receive UP data to/from the UE via bearer using RLC in both, MCG and SCG. This UE connectivity option is referred to as 'Option 3x' or 'SN terminated split bearer'.

![]({{site.baseurl}}/assets/images/6c070324387d.emf.png)

Figure 1.1.1.2-1: SN terminated split bearer ('Option 3x')
Note: The SRB between the UE and the SN is optional

#### 1.1.1.3 SN terminated MCG bearer

This UE connectivity option terminates the UP PDCP and S1-U in the SN en-gNB. The SN en-gNB establishes a UP bearer leg utilizing X2-U to send and receive UP data to and from the UE via bearers using RLC in the MCG. This UE connectivity option is referred to as 'SN terminated MCG bearer'.

![]({{site.baseurl}}/assets/images/c34a4dbad175.emf.png)

Figure 1.1.1.3-1: SN terminated MCG bearer

### 1.1.2 NR Standalone (SA)

In NR SA, also referred to as 'Option 2', the NG-RAN based on gNB RAN nodes only is connected to 5GC, i.e. no EPC is involved and ng-eNBs are not considered to be part of NG-RAN.

#### 1.1.2.1 NR-DC with SN terminated Split bearer

In case a UE connects with option 2 and uses NR-NR dual connectivity (NR-DC) this specification in its current version is profiling cases where MN and SN are gNBs. 3GPP shows options to terminate NG-U on MN, SN or both. Current version of this specification considers use cases with PDCP terminated on SN. SN splits the UP bearer in a leg via Xn-U and, if applicable F1-U, to convey UP data via bearer using RLC in both, MCG and SCG ('SN terminated split bearer').

When profiling the NR SA SN terminated split bearer cases it was further assumed that MN is serving FR1 cells with a larger coverage area than FR2 cells served by SN. By that the amount of unwanted mobility inter MN mobility events is reduced.

![]({{site.baseurl}}/assets/images/d7c73d2b790f.emf.png)

Figure 1.1.2.1-1: NR-DC with SN terminated split bearer
Note: The SRB between the UE and the SN is optional

## 1.2 UE connectivity options via IAB Node

The presence of IAB Nodes in the network is transparent to the UE. UE connectivity options remain the same as described in Section 1.1. There are no procedural changes to the UE.

## 1.3 IAB Node connectivity options

### 1.3.1 IAB Node connectivity in Standalone mode

This section describes control plane procedures for IAB (Integrated Access and Backhaul) in SA mode as defined in [7].

IAB SA mode means that IAB-node's MT operates as UE using UE connectivity option NR SA. UEs (Access UEs) accessing the network over cells served by IAB nodes can be served using NSA and SA UE connectivity option.

The SA IAB architecture supported in this version of the specification is illustrated in Figure 1.3.1-1.

![]({{site.baseurl}}/assets/images/0693c731adcf.emf.png)

Figure 1.3.1-1: IAB Node connectivity in Standalone mode

# 2 References

The following documents contain provisions which, through reference in this text, constitute provisions of the present document.

- References are either specific (identified by date of publication, edition number, version number, etc.) or non-specific

- For a specific reference, subsequent revisions do not apply

- For a non-specific reference, the latest version applies

[1] 3GPP TS 37.340 V16.9.0: "Evolved Universal Terrestrial Radio Access (E-UTRA) and NR; Multi-connectivity; Stage 2"

[2] 3GPP TS 36.423 V16.9.0: "Evolved Universal Terrestrial Radio Access Network (E-UTRAN); X2 Application Protocol (X2AP)"

[3] 3GPP TS 38.473 V16.9.0: "NG-RAN; F1 Application Protocol (F1AP)"

[4] 3GPP TS 38.331 V16.8.0: "NR; Radio Resource Control (RRC) Protocol Specification"

[5] 3GPP TS 38.423 V16.9.0: "NG-RAN; Xn application protocol (XnAP)"

[6] 3GPP TS 38.300 V16.8.0: "NR; NR and NG-RAN Overall Description; Stage 2"

[7] 3GPP TS 38.401 V16.9.0: "NG-RAN Architecture description"

[8] 3GPP TS 38.473 V18.2.0: "NG-RAN; F1 Application Protocol (F1AP)"

[9] 3GPP TS 38.331 V18.2.0: "NR; Radio Resource Control (RRC) Protocol Specification"

[10] 3GPP TS 38.300 V18.2.0: "NR; NR and NG-RAN Overall Description; Stage 2"

[11] 3GPP TS 38.401 V18.2.0: "NG-RAN Architecture description"

# 3 Definitions and abbreviations

## 3.1 Definitions

Definitions used in this specification refer to the ones defined in the referenced 3GPP specifications.

## 3.2 Abbreviations

Abbreviations used in this specification refer to the ones defined in the referenced 3GPP specifications.

# 4 Non-UE associated procedures

## 4.1 X2-C and F1-C for EN-DC

This section provides the relevant profiling information to achieve interoperability for non-UE associated procedures as defined in TS 36.423 [2] and TS 38.473 [3]. In this version of the profile, the following procedures are defined:

* EN-DC X2 Setup
* Reset (for X2 and F1)
* EN-DC Configuration Update
* Partial Reset
* F1 Setup
* gNB-DU Configuration Update
* gNB-CU Configuration Update
* Mobility Load Balancing

### 4.1.1 EN-DC X2 Setup

#### 4.1.1.1 EN-DC X2 Setup (eNB initiated)

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| eNB ID | Only Macro eNB ID is used. |
| SUL Information | Not used |
| NR Neighbour Information indicated by eNB | Optionally used for UC1 |
| NR Neighbour Information indicated by en-gNB | Optionally used for UC2 |
| Protected E-UTRA Resource Indication IE | Optionally included in case Dynamic Spectrum Sharing is used |

</div>

NR neighbour information IE can optionally be used for:

UC1: eNB sending NR neighbour cell information per E-UTRAN cell to en-gNB for inter-en-gNB mobility

UC2: en-gNBs sending NR neighbour cell information per NR cell to eNB for building NR neighbour relations

##### 4.1.1.1.1 Message flow for X2

![]({{site.baseurl}}/assets/images/555ae7fda7d8.emf.png)

Figure 4.1.1.1.1-1: eNB Initiated EN-DC X2 Setup, successful operation

##### 4.1.1.1.2 X2-C IE handling

![]({{site.baseurl}}/assets/images/2712f99de0df.emf.png)

#### 4.1.1.2 EN-DC X2 Setup (en-gNB initiated)

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| eNB ID | Only Macro eNB ID is used |
| SUL Information | Not used |
| NR Neighbour Information indicated by eNB | Optionally used for UC1 |
| NR Neighbour Information indicated by en-gNB | Optionally used for UC2 |
| Protected E-UTRA Resource Indication IE | Optionally included in case Dynamic Spectrum Sharing is used |

</div>

NR neighbour information IE can optionally be used for:

UC1: eNB sending NR neighbour cell information per E-UTRAN cell to en-gNB for inter-en-gNB mobility

UC2: en-gNBs sending NR neighbour cell information per NR cell to eNB for building NR neighbour relations

##### 4.1.1.2.1 Message flow for X2

![]({{site.baseurl}}/assets/images/7c7fc9c27266.emf.png)

Figure 4.1.1.2.1-1: en-gNB Initiated EN-DC X2 Setup, successful operation

##### 4.1.1.2.2 X2-C IE handling

![]({{site.baseurl}}/assets/images/ee0e366d0994.emf.png)

### 4.1.2 Reset

#### 4.1.2.1 Reset (eNB initiated)

##### 4.1.2.1.1 Message flow for X2

![]({{site.baseurl}}/assets/images/09c7ed621eab.emf.png)

Figure 4.1.2.1.1-1: eNB initiated Reset, successful operation

##### 4.1.2.1.2 X2-C IE handling

![]({{site.baseurl}}/assets/images/232631fb6999.emf.png)

#### 4.1.2.2 Reset (en-gNB initiated)

##### 4.1.2.2.1 Message flow for X2

![]({{site.baseurl}}/assets/images/51227de16fde.emf.png)

Figure 4.1.2.2.1-1: en-gNB initiated Reset, successful operation

##### 4.1.2.2.2 X2-C IE handling

![]({{site.baseurl}}/assets/images/b42eef3aa112.emf.png)

#### 4.1.2.3 Reset (gNB-DU initiated)

##### 4.1.2.3.1 Message flow for X2 and F1

![]({{site.baseurl}}/assets/images/76491221e9d8.emf.png)

Figure 4.1.2.3.1-1: gNB-DU initiated (Whole) Reset, successful operation

NOTE1: If part of UE associations over the X2 interface are affected by F1 Reset procedure, then PARTIAL RESET REQUIRED message is sent from the gNB-CU and PARTIAL RESET CONFIRM message is sent from the MeNB.

NOTE2: If all of UE associations over the X2 interface are affected by F1 Reset procedure, then up to implementation, either PARTIAL RESET REQUIRED message or RESET REQUEST message is sent from the gNB-CU. PARTIAL RESET CONFIRM message or RESET RESPONSE message is sent from the MeNB/eNB accordingly.

##### 4.1.2.3.2 F1-C IE handling

![]({{site.baseurl}}/assets/images/c8d4854fe508.emf.png)

#### 4.1.2.4 Reset (gNB-CU initiated)

##### 4.1.2.4.1 Message flow for X2 and F1

![]({{site.baseurl}}/assets/images/c3c879b2c507.emf.png)Figure 4.1.2.4.1-1: gNB-CU initiated (Whole) Reset, successful operation

NOTE1: The timing of sending the Step 1a RESET message is an example, it may be sent e.g. after step 2 and it is up to implementation.

##### 4.1.2.4.2 F1-C IE handling

![]({{site.baseurl}}/assets/images/536d45e694d8.emf.png)

### 4.1.3 EN-DC Configuration Update

#### 4.1.3.1 Served NR cell information Update (en-gNB initiated)

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| SUL Information | Not used |
| Served NR Cells to Add/Modify/Delete | Used |
| NR Deactivation Indication | Optionally used in case of Cell deactivation. Otherwise not used |
| NR Neighbour Information indicated by en-gNB | Optionally used for UC2 |

</div>

NR neighbour information IE can optionally be used for:

UC2: en-gNBs sending NR neighbour cell information per NR cell to eNB for building NR neighbour relations

##### 4.1.3.1.1 Message flow for X2

![]({{site.baseurl}}/assets/images/9ead6bdcb982.emf.png)

Figure 4.1.3.1.1-1: en-gNB Initiated EN-DC Configuration Update, successful operation

##### 4.1.3.1.2 X2-C IE handling

![]({{site.baseurl}}/assets/images/eb47986944c7.emf.png)

#### 4.1.3.2 Served LTE cell information Update (eNB initiated)

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| SUL Information | Not used |
| Served E-UTRA Cells to Add/Modify/Delete | Used |
| NR Neighbour Information indicated by eNB | Optionally used for UC1 |
| NR Neighbour Information indicated by en-gNB | Optionally used for UC2 |
| Protected E-UTRA Resource Indication IE | Optionally included in case Dynamic Spectrum Sharing is used |

</div>

NR neighbour information IE can optionally be used for:

UC1: eNB sending NR neighbour cell information per E-UTRAN cell to en-gNB for inter-en-gNB mobility

UC2: en-gNBs sending NR neighbour cell information per NR cell to eNB for building NR neighbour relations

##### 4.1.3.2.1 Message flow for X2

![]({{site.baseurl}}/assets/images/4701414d3669.emf.png)

Figure 4.1.3.2.1-1: eNB Initiated EN-DC Configuration Update, successful operation

##### 4.1.3.2.2 X2-C IE handling

![]({{site.baseurl}}/assets/images/6eb4a06f0871.emf.png)

### 4.1.4 Partial Reset

#### 4.1.4.1 Partial Reset (MeNB initiated)

##### 4.1.4.1.1 Message flow for X2

![]({{site.baseurl}}/assets/images/e8bf7bf07971.emf.png)

Figure 4.1.4.1.1-1: MeNB initiated Partial Reset of EN-DC, successful operation.

##### 4.1.4.1.2 X2-C IE handling

![]({{site.baseurl}}/assets/images/b1a517b19b9b.emf.png)

##### 4.1.4.1.3 Message flow for X2 and F1

![]({{site.baseurl}}/assets/images/d6748403c7c9.emf.png)Figure 4.1.4.1.3-1: MeNB initiated Partial Reset, successful operation

NOTE1: If multiple gNB-DUs are configured and a certain gNB-DU has allocated one or more UE contexts, the gNB-CU performs OPT.

NOTE2: The timing of sending the Step 1a RESET message is an example, it may be sent e.g. before step 2 and it is up to implementation.

NOTE3: The timing of sending the Step 2 PARTIAL RESET CONFIRM message is an example, it may be sent e.g. after step 1a or step 1b and it is up to implementation.

##### 4.1.4.1.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/d4a307b389d2.emf.png)

#### 4.1.4.2 Partial Reset (en-gNB initiated)

##### 4.1.4.2.1 Message flow for X2

**![]({{site.baseurl}}/assets/images/2c17d0676072.emf.png)**

Figure 4.1.4.2.1-1: en-gNB initiated Partial Reset of EN-DC, successful operation.

##### 4.1.4.2.2 X2-C IE handling

![]({{site.baseurl}}/assets/images/a4742e94763f.emf.png)

#### 4.1.4.3 Partial Reset (gNB-DU initiated)

##### 4.1.4.3.1 Message flow for X2 and F1

![]({{site.baseurl}}/assets/images/87bbf90387d1.emf.png)

Figure 4.1.4.3.1-1: gNB-DU initiated Partial Reset, successful operation

##### 4.1.4.3.2 F1-C IE handling

![]({{site.baseurl}}/assets/images/f72759ffadd9.emf.png)

#### 4.1.4.4 Partial Reset (gNB-CU initiated)

##### 4.1.4.4.1 Message flow for X2 and F1

![]({{site.baseurl}}/assets/images/de55f275093a.emf.png)

Figure 4.1.4.4.1-1: gNB-CU initiated Partial Reset, successful operation

NOTE1: If multiple gNB-DUs are configured and a certain gNB-DU has allocated one or more UE contexts, the gNB-CU performs OPT.

NOTE2: The timing of sending the Step 1a RESET message is an example, it may be sent e.g. after step 2 and it is up to implementation.

##### 4.1.4.4.2 F1-C IE handling

![]({{site.baseurl}}/assets/images/1c789aebcb46.emf.png)

### 4.1.5 F1 Setup

#### 4.1.5.1 F1 Setup

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| TAI Slice Support List | Not used |
| SUL Information | Not used |
| RANAC | Not used |
| gNB-DU System Information | Not used |
| gNB-CU System Information | Not used |

</div>

##### 4.1.5.1.1 Message flow for X2 and F1

![]({{site.baseurl}}/assets/images/150808a12112.emf.png)

Figure 4.1.5.1.1-1: F1 Setup, successful operation

NOTE1: If the gNB-CU requests the gNB-DU to activate cells via F1 SETUP RESPONSE message, then the gNB-DU will initiate gNB-DU Configuration Update procedure for cell activation use case, i.e. to indicate *Service Status* for activated cells (OPT1).

NOTE2: If the gNB-CU requests the gNB-DU to activate cells which have been reported by F1 SETUP REQUEST message some time after it sends F1 SETUP RESPONSE message, then it initiates gNB-CU Configuration Update procedure for cell activation use case (OPT2).

NOTE3: If the F1 SETUP REQUEST message does not contain *gNB-DU Served Cells List*, then neither OPT1 nor OPT2 will be conducted.

##### 4.1.5.1.2 F1-C IE handling

![]({{site.baseurl}}/assets/images/9500cb72629f.emf.png)

### 4.1.6 gNB-DU Configuration Update

#### 4.1.6.1 gNB-DU Configuration Update

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| TAI Slice Support List | Not used |
| SUL Information | Not used |
| RANAC | Not used |
| gNB-DU System Information | Not used |
| Dedicated SI Delivery Needed UE List | Not used |
| gNB-CU System Information | Not used |

</div>

##### 4.1.6.1.1 Message flow for X2 and F1

![]({{site.baseurl}}/assets/images/1e93457ee9e2.emf.png)

Figure 4.1.6.1.1-1: gNB-DU Configuration Update, successful operation

NOTE1: If the gNB-CU requests the gNB-DU to activate cells via GNB-DU CONFIGURATION UPDATE ACKNOWLEDGE message in step 2, then the gNB-DU will trigger additional GNB-DU CONFIGURATION UPDATE procedure to inform the *Service Status* for activated cells (OPT1).

NOTE2: If the gNB-DU uses this procedure to add, delete or modify cells, and if the X2 interface has been established between the gNB-CU and the eNB, then the addition, deletion or modification of the cells will be propagated over the X2 interface as described in Chapter 4.1.3.1.

NOTE3: If the gNB-DU uses this procedure to inform the *Service Status* for activated cells, and if the X2 interface has been established between the gNB-CU and the eNB, the change of *Service Status* will not be propagated over the X2 interface.

##### 4.1.6.1.2 F1-C IE handling

###### 4.1.6.1.2.1 Cell addition

![]({{site.baseurl}}/assets/images/cc5f2cc24c3b.emf.png)

###### 4.1.6.1.2.2 Cell deletion

![]({{site.baseurl}}/assets/images/7c42073969a3.emf.png)

###### 4.1.6.1.2.3 Cell modification

![]({{site.baseurl}}/assets/images/dae84b57acd7.emf.png)

###### 4.1.6.1.2.4 Cell activation

Cell activation can be achieved by including *Cells to be Activated List IE* in GNB-DU CONFIGURATION UPDATE ACKNOWLEDGE message of any of the use cases Cell addition (chapter 4.1.6.1.2.1), Cell deletion (chapter 4.1.6.1.2.2), Cell modification (chapter 4.1.6.1.2.3) or Service Status change (chapter 4.1.6.1.2.6).

###### 4.1.6.1.2.5 Cell deactivation

Cell deactivation can be achieved by including *Cells to be Deactivated List IE* in GNB-DU CONFIGURATION UPDATE ACKNOWLEDGE message of any of the use cases Cell addition (chapter 4.1.6.1.2.1), Cell deletion (chapter 4.1.6.1.2.2), Cell modification (chapter 4.1.6.1.2.3) or Service Status change (chapter 4.1.6.1.2.6).

###### 4.1.6.1.2.6 Service Status change

![]({{site.baseurl}}/assets/images/929dfbf6698b.emf.png)

### 4.1.7 gNB-CU Configuration Update

#### 4.1.7.1 gNB-CU Configuration Update

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| gNB-CU System Information | Not used |
| TNL Association Transport Layer Information | Optionally used |
| Dedicated SI Delivery Needed UE List | Not used |
| SUL Information | Not used |
| Protected E-UTRA Resource Indication IE | Optionally included in case Dynamic Spectrum Sharing is used. |

</div>

##### 4.1.7.1.1 Message flow for X2 and F1

![]({{site.baseurl}}/assets/images/5c33646d4895.emf.png)

Figure 4.1.7.1.1-1: gNB-CU Configuration Update, successful operation

NOTE1: In case of cell activation, the gNB-DU will initiate the gNB-DU Configuration Update procedure towards the gNB-CU to report the *Service Status* for activated cells (step 3).

NOTE2: In case of TNL association, the gNB-DU will establish the TNL associations with the gNB-CU. The gNB-CU may add or modify or delete additional TNL Endpoint(s) to be used for F1-C signaling between the gNB-CU and the gNB-DU pair using the gNB-CU Configuration Update procedure.

##### 4.1.7.1.2 F1-C IE handling

###### 4.1.7.1.2.1 Cell activation

![]({{site.baseurl}}/assets/images/c04a27156e48.emf.png)

###### 4.1.7.1.2.2 Cell deactivation

![]({{site.baseurl}}/assets/images/ae600a4644ee.emf.png)

###### 4.1.7.1.2.3 TNL association addition

![]({{site.baseurl}}/assets/images/a14f93241db8.emf.png)

###### 4.1.7.1.2.4 TNL association deletion

![]({{site.baseurl}}/assets/images/db1cd1300eb6.emf.png)

###### 4.1.7.1.2.5 TNL association modification

![]({{site.baseurl}}/assets/images/8fad88ec7cf3.emf.png)

### 4.1.8 Mobility Load Balancing

#### 4.1.8.1 EN-DC Resource Status Reporting Initiation

The purpose is to request the reporting of load measurements to the en-gNB/eNB by the eNB/en-gNB.

##### 4.1.8.1.1 Message flow for X2

![]({{site.baseurl}}/assets/images/6fbee0432914.emf.png)

Figure 4.1.8.1.1-1: EN-DC Resource Status Reporting Initiation - eNB initiated - X2 message flow

![]({{site.baseurl}}/assets/images/99604cd0e359.emf.png)

Figure 4.1.8.1.1-2: EN-DC Resource Status Reporting Initiation - en-gNB initiated - X2 message flow

##### 4.1.8.1.2 X2-C IE handling

![]({{site.baseurl}}/assets/images/1687480cdd95.emf.png)

![]({{site.baseurl}}/assets/images/b496f797b9fd.emf.png)

#### 4.1.8.2 EN-DC Resource Status Reporting

The purpose is to report the result of load measurements admitted by the en-gNB/eNB following a successful EN-DC Resource Status Reporting Initiation procedure.

##### 4.1.8.2.1 Message flow for X2

![]({{site.baseurl}}/assets/images/61ceeea97a6f.emf.png)

Figure 4.1.8.2.1-1: Resource Status Reporting - en-gNB initiated - X2 message flow

![]({{site.baseurl}}/assets/images/9bc01e4478d3.emf.png)

Figure 4.2.8.2.1-2: Resource Status Reporting - eNB initiated - X2 message flow

##### 4.1.8.2.2 X2-C IE handling

![]({{site.baseurl}}/assets/images/60284fd7e754.emf.png)

![]({{site.baseurl}}/assets/images/d187eafba61a.emf.png)

## 4.2 Xn-C and F1-C for NR Stand-Alone

This section provides the relevant profiling information to achieve interoperability for non-UE associated procedures as defined in TS 38.423 [5] and TS 38.473 [3]. The following use cases are profiled for NR Stand-Alone (SA):

* Xn Setup
* Reset
* F1-Setup
* gNB-DU configuration update
* gNB-CU configuration update
* Paging
* Write-Replace-Warning
* NG-RAN Node Configuration Update
* Mobility Load Balancing

### 4.2.1 Xn Setup

The purpose of the Xn Setup procedure is to exchange application level configuration data needed for two NG-RAN nodes to interoperate correctly over the Xn-C interface.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| SUL Information | Not used |
| Neighbour Information E-UTRA | Not used |

</div>

#### 4.2.1.1 Xn message flow

![]({{site.baseurl}}/assets/images/6c1722ae51ba.emf.png)

Figure 4.2.1.1-1: Xn Setup message flow

#### 4.2.1.2 Xn-C IE handling

![]({{site.baseurl}}/assets/images/490defe20f5a.emf.png)

### 4.2.2 Reset

Purpose of the Xn Reset procedure is to align resources in gNB1 and gNB2 in the event of an abnormal failure. The procedure either resets the complete Xn interface or selected UE contexts depending on the *Reset Request TypeInfo* IE. The procedure does not affect the application level configuration data exchanged during e.g. an Xn Setup procedure.

#### 4.2.2.1 Message flow on Xn

![]({{site.baseurl}}/assets/images/c944af0e0d63.emf.png)

Figure 4.2.2.1-1: Reset message flow on Xn

#### 4.2.2.2 Xn-C IE handling

##### 4.2.2.2.1 Reset

![]({{site.baseurl}}/assets/images/9c48e02c3930.emf.png)

##### 4.2.2.2.2 Partial Reset

![]({{site.baseurl}}/assets/images/dc3474f6142f.emf.png)

#### 4.2.2.3 Reset (gNB-CU initiated)

##### 4.2.2.3.1 Message flow on Xn and F1

![]({{site.baseurl}}/assets/images/e6d29e04fd4f.emf.png)

Figure 4.2.2.3.1-1: Reset message flow on Xn and F1 (gNB-CU initiated)

NOTE: Step 1 and 2 is only applicable if the Xn interface is configured, these messages are defined in section 4.2.2.2 above

##### 4.2.2.3.2 F1-C IE handling

###### 4.2.2.3.2.1 Reset

![]({{site.baseurl}}/assets/images/52cbf9509bcd.emf.png)

###### 4.2.2.3.2.2 Partial reset

![]({{site.baseurl}}/assets/images/573bdb7ab001.emf.png)

#### 4.2.2.4 Reset (gNB-DU initiated)

##### 4.2.2.4.1 Message flow on Xn and F1

![]({{site.baseurl}}/assets/images/c4850659c05d.emf.png)

Figure 4.2.2.4-1: Reset message flow on Xn and F1 (gNB-DU initiated)

NOTE1: Step 1 and 2 is only applicable if the Xn interface is configured, these messages are defined in section 4.2.2.2 above

NOTE2: The order of sending message 2a is an example, it may be sent e.g. after step 1 or 2 and is up to implementation

##### 4.2.2.4.2 F1-C IE handling

###### 4.2.2.4.2.1 Reset

Message IE content is same as in 4.2.2.3.2.1 .

###### 4.2.2.4.2.2 Partial reset

Message IE content is same as in 4.2.2.3.2.2 .

### 4.2.3 F1 Setup

#### 4.2.3.1 F1 Setup

The purpose of the F1 Setup procedure is to exchange application level data needed for the gNB-DU and the gNB-CU to correctly interoperate on the F1 interface.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| SUL Information | Not used |

</div>

##### 4.2.3.1.1 Message flow for F1

![]({{site.baseurl}}/assets/images/c6ff53670f45.emf.png)

Figure 4.2.3.1.1-1: F1 Setup, successful operation

NOTE1: If the gNB-CU requests the gNB-DU to activate cells via F1 SETUP RESPONSE message, then the gNB-DU will initiate gNB-DU Configuration Update procedure for cell activation use case, i.e. to indicate *Service Status* for activated cells (OPT1).

NOTE2: If the gNB-CU requests the gNB-DU to activate cells which have been reported by F1 SETUP REQUEST message some time after it sends F1 SETUP RESPONSE message, then it initiates gNB-CU Configuration Update procedure for cell activation use case (OPT2).

##### 4.2.3.1.2 F1-C IE handling

![]({{site.baseurl}}/assets/images/bb3e7b9fc34e.emf.png)

### 4.2.4 gNB-DU configuration update

#### 4.2.4.1 gNB-DU Configuration Update

The purpose of the gNB-DU Configuration Update procedure is to update application level configuration data needed for the gNB-DU and the gNB-CU to interoperate correctly on the F1 interface.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| SUL Information | Not used |
| Dedicated SI Delivery Needed UE List | Not used |
| gNB-DU TNL Association To Remove List | Not used |

</div>

##### 4.2.4.1.1 Message flow for F1

![]({{site.baseurl}}/assets/images/3e399de2e9ab.emf.png)

Figure 4.2.4.1.1-1: gNB-DU Configuration Update, successful operation

NOTE1: If the gNB-CU requests the gNB-DU to activate cells via GNB-DU CONFIGURATION UPDATE ACKNOWLEDGE message in step 2, then the gNB-DU will trigger additional GNB-DU CONFIGURATION UPDATE procedure to inform the Service Status for activated cells. (OPT1)

##### 4.2.4.1.2 F1-C IE handling

###### 4.2.4.1.2.1 Cell addition

![]({{site.baseurl}}/assets/images/b47720b950c2.emf.png)

###### 4.2.4.1.2.2 Cell deletion

![]({{site.baseurl}}/assets/images/27433d3f720f.emf.png)

###### 4.2.4.1.2.3 Service Status change

![]({{site.baseurl}}/assets/images/6d671fc8cedc.emf.png)

###### 4.2.4.1.2.4 Cell modification

![]({{site.baseurl}}/assets/images/a931b2fb930f.emf.png)

### 4.2.5 gNB-CU configuration update

#### 4.2.5.1 gNB-CU Configuration Update

The purpose of the gNB-CU Configuration Update procedure is to update application level configuration data needed for the gNB-DU and gNB-CU to interoperate correctly on the F1 interface.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| TNL Association Transport Layer Information | Not used |
| Dedicated SI Delivery Needed UE List | Not used |
| SUL Information | Not used |
| Protected E-UTRA Resource List | Not used |

</div>

##### 4.2.5.1.1 Message flow for F1

![]({{site.baseurl}}/assets/images/5112253faf9d.emf.png)

Figure 4.2.5.1.1-1: gNB-CU Configuration Update, successful operation

NOTE1: In case of cell activation, the gNB-DU will initiate the gNB-DU Configuration Update procedure towards the gNB-CU to report the *Service Status* for activated cells (step 3).

##### 4.2.5.1.2 F1-C IE handling

###### 4.2.5.1.2.1 Cell activation

![]({{site.baseurl}}/assets/images/6f6f7e65e309.emf.png)

###### 4.2.5.1.2.2 Cell deactivation

![]({{site.baseurl}}/assets/images/939729fff98d.emf.png)

###### 4.2.5.1.2.3 Cell modification - update of gNB-CU generated SIB information

![]({{site.baseurl}}/assets/images/17bdea27764f.emf.png)

###### 4.2.5.1.2.4 Cell barring

![]({{site.baseurl}}/assets/images/15c05785d504.emf.png)

### 4.2.6 Paging (CN-initiated)

The purpose of the Paging procedure is to enable the gNB to page a UE in RRC\_IDLE state.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 2 (NR stand alone) |

</div>

#### 4.2.6.1 Message flow for F1

![]({{site.baseurl}}/assets/images/8a4bc60c0b7c.emf.png)Figure 4.2.6.1-1: Paging

#### 4.2.6.2 F1-C IE handling

![]({{site.baseurl}}/assets/images/0ba661227c72.emf.png)

### 4.2.7 Write-Replace Warning

4.2.7.1 Public Warning Initiation

The purpose of Write-Replace Warning procedure is to start or overwrite the broadcasting of warning messages.

##### 4.2.7.1.1 Message flow for F1

![]({{site.baseurl}}/assets/images/120da4252b09.emf.png)

Figure 4.2.7.1.1-1: Write-Replace Warning - Public Warning Initiation

NOTE1: In step 2, if the Cell to be Broadcast List IE is not included in the WRITE-REPLACE WARNING REQUEST message, the gNB-DU shall broadcast the indicated message in all the served cells.

##### 4.2.7.1.2 F1-C IE handling

![]({{site.baseurl}}/assets/images/ace76e1d3845.emf.png)

### 4.2.8 NG-RAN Node Configuration Update

The purpose of the NG-RAN node Configuration Update procedure is to update application level configuration data needed for two NG-RAN nodes to interoperate correctly over the Xn-C interface.

#### 4.2.8.1 Served Cell information update

The purpose is to update the Served Cell Information between gNBs.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| SUL Information | Not used |

</div>

##### 4.2.8.1.1 Message flow for Xn

![]({{site.baseurl}}/assets/images/e29257aeef9a.emf.png)

Figure 4.2.8.1.1-1: NG-RAN Node Configuration Update - Served Cell information update - Xn message flow

##### 4.2.8.1.2 Xn-C IE handling

![]({{site.baseurl}}/assets/images/eca2cc3243c5.emf.png)

##### 4.2.8.1.3 Message flow for Xn and F1

![]({{site.baseurl}}/assets/images/237c0327a8d9.emf.png)

Figure 4.2.8.1.3-1: NG-RAN Node Configuration Update - Served Cell information update - Xn and F1 message flow

NOTE1: If the gNB1 DU requests to add, modify or delete cells via GNB-DU CONFIGURATION UPDATE message, the step1a and step 1b (OPT1) will be performed. The gNB1 CU may deactivate cells via GNB-DU CONFIGURATION UPDATE ACKNOWLEDGE message in the step 1b (OPT1).

NOTE2: If the gNB1 CU requests the gNB1 DU to activate cells via GNB-DU CONFIGURATION UPDATE ACKNOWLEDGE message in step 1b (OPT1), then the gNB1 DU will trigger additional GNB-DU CONFIGURATION UPDATE procedure to inform the *Service Status* for activated cells (OPT2, chapter 4.2.4.1.2.3).

NOTE3: If the gNB1 CU requests the gNB1 DU to activate or deactivate cells via GNB-CU CONFIGURATION UPDATE message, steps 1c and 1d (OPT3) will be performed with the IE handling as described in section 4.2.5.1.2.

##### 4.2.8.1.4 F1-C IE handling

###### 4.2.8.1.4.1 Cell addition

![]({{site.baseurl}}/assets/images/0dc0439858e1.emf.png)

###### 4.2.8.1.4.2 Cell modification

![]({{site.baseurl}}/assets/images/db28260f802a.emf.png)

###### 4.2.8.1.4.3 Cell deletion

The cell deletion is achieved by including *Served Cells To Delete List* *IE* in GNB-DU CONFIGURATION UPDATE ACKNOWLEDGE message of use case Cell Deletion (chapter 4.2.4.1.2.2).

###### 4.2.8.1.4.4 Cell deactivation

The cell deactivation may be achieved by including *Cells to be Deactivated List IE* in GNB-DU CONFIGURATION UPDATE ACKNOWLEDGE message of any of the use cases Cell addition (chapter 7.4.1.4.1), Cell modification (chapter 7.4.1.4.2) Cell deletion (chapter 4.2.4.1.2.2), or Service Status change (chapter 4.2.4.1.2.3).

The cell deactivation may be achieved by including *Cells to be Deactivated List IE* in GNB-CU CONFIGURATION UPDATE message from the gNB-CU of use case Cell deactivation (chapter 4.2.5.1.2.2).

### 4.2.9 Mobility Load Balancing

#### 4.2.9.1 Resource Status Reporting Initiation

The purpose is to request the reporting of load measurements to the target node by the source node.

##### 4.2.9.1.1 Message flow for Xn

![]({{site.baseurl}}/assets/images/e68a168d7d28.emf.png)

Figure 4.2.9.1.1-1: Resource Status Reporting Initiation - Xn message flow

##### 4.2.9.1.2 Xn-C IE handling

![]({{site.baseurl}}/assets/images/4be23bd5b1af.emf.png)

##### 4.2.9.1.3 Message flow for F1

![]({{site.baseurl}}/assets/images/9556c2d66c1e.emf.png)

Figure 4.2.9.1.3-1: Resource Status Reporting Initiation - F1 message flow

##### 4.2.9.1.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/c4d18d7f9ecc.emf.png)

#### 4.2.9.2 Resource Status Reporting

The purpose is to report the result of load measurements admitted by the target node following a successful Resource Status Reporting Initiation procedure.

##### 4.2.9.2.1 Message flow for Xn

![]({{site.baseurl}}/assets/images/c279472cef17.emf.png)

Figure 4.2.9.2.1-1: Resource Status Reporting - Xn message flow

##### 4.2.9.2.2 Xn-C IE handling

![]({{site.baseurl}}/assets/images/a9b45dc091ad.emf.png)

##### 4.2.9.2.3 Message flow for F1

![]({{site.baseurl}}/assets/images/dc1711326495.emf.png)

Figure 4.2.9.2.3-1: Resource Status Reporting - F1 message flow

##### 4.2.9.2.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/76e3293fcfa9.emf.png)

# 5 EN-DC procedures

This section provides the control plane profile to achieve interoperability for UE associated procedures as defined in TS 36.423 [2], TS 38.473 [3] and TS 38.331 [4]. In this version of the profile, the following procedures are defined:

* Secondary Node Addition
* Secondary Node Release
* Secondary Node Change
* Inter-Master Node Handover
* Master Node to eNB/gNB Change
* Secondary Node Modification
* RRC Transfer
* E-UTRA-NR Cell Resource Coordination

## 5.1 Secondary Node Addition

### 5.1.1 Secondary Node Addition (Option 3x)

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 3x (i.e. SN terminated split bearer) |
| Signalling radio bearer | SRB1 (SRB3 optionally used) |
| Bearer type | Non-GBR bearer |
| Split SRB | Not used |
| PDCP SN Length | MeNB: 12bit PDCP SN or 18bit PDCP SN  SgNB: 18bit PDCP SN |
| DL data forwarding | Used |
| UL data forwarding | Optionally Used |

</div>

#### 5.1.1.1 Message flow for X2

![]({{site.baseurl}}/assets/images/4bb2b55f79eb.emf.png)

Figure 5.1.1.1-1: Secondary Node Addition procedure (option 3x) - X2 message flow

NOTE1: SN Status Transfer is executed in step 7 for the bearers using RLC AM

NOTE2: UL Data forwarding handling is executed optionally in step 8

NOTE3: This is a clarification of Step1, CG-ConfigInfo>configRestrictInfo. The list of band combinations sent by MN shall not restrict SN's selection process for suitable SCG bands provided by UE. Any down-selection by MN shall only be applied on PCell band.

NOTE4: This is a clarification of Step1, CG-ConfigInfo>configRestrictInfo. MN sorts Allowed BC (bandCombinationIndex, FeatureSetEntryIndex) in order of MN recommendation and transmits to SN. And SN decides on its own priorities. In case there are multiple matches with same priorities for SN only then the MN preference takes effect by fetching the one that is matching SN preference AND is highest on MN preference.

NOTE5: This use case also supports MN initiated measurement Id coordination.

#### 5.1.1.2 X2-C IE handling

![]({{site.baseurl}}/assets/images/368c5a9a3f21.emf.png)

#### 5.1.1.3 Message flow for X2 and F1

![]({{site.baseurl}}/assets/images/37b73448102f.emf.png)

Figure 5.1.1.3-1: Secondary Node Addition procedure (option 3x) - X2 and F1 message flow

NOTE1: SN Status Transfer is executed in step 7 for the bearers using RLC AM

NOTE2: UL Data forwarding handling is executed optionally in step 8

NOTE3: This is a clarification of Step1, CG-ConfigInfo>configRestrictInfo. The list of band combinations sent by MeNB shall not restrict gNB-DU's selection process for suitable SCG bands provided by UE. Any down-selection by MeNB shall only be applied on PCell band.

NOTE4: This is a clarification of Step1, CG-ConfigInfo>configRestrictInfo. MeNB sorts Allowed BC (bandCombinationIndex, FeatureSetEntryIndex) in order of MeNB recommendation and transmits to gNB-CU. And gNB-DU decides on its own priorities. In case there are multiple matches with same priorities for gNB-DU only then the MeNB preference takes effect by fetching the one that is matching gNB-DU preference AND is highest on MeNB preference.

#### 5.1.1.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/10748135c412.emf.png)

### 5.1.2 Secondary Node Addition (Option 3a)

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 3a (i.e. SN terminated SCG bearer) |
| Signalling radio bearer | SRB1 (SRB3 optionally used) |
| Bearer type | Non-GBR bearer |
| Split SRB | Not used |
| PDCP SN Length | 18bit PDCP SN |
| DL data forwarding | Used |
| UL data forwarding | Optionally Used |

</div>

#### 5.1.2.1 Message flow for X2

![]({{site.baseurl}}/assets/images/45afa1c7667c.emf.png)

Figure 5.1.2.1-1: Secondary Node Addition procedure (option 3a) - X2 message flow

NOTE1: SN Status Transfer is executed in step 7 for the bearers using RLC AM

NOTE2: UL Data forwarding handling is executed optionally in step 8

NOTE3: This is a clarification of Step1, CG-ConfigInfo>configRestrictInfo. The list of band combinations sent by MN shall not restrict SN's selection process for suitable SCG bands provided by UE. Any down-selection by MN shall only be applied on PCell band.

NOTE4: This is a clarification of Step1, CG-ConfigInfo>configRestrictInfo. MN sorts Allowed BC (bandCombinationIndex, FeatureSetEntryIndex) in order of MN recommendation and transmits to SN. And SN decides on its own priorities. In case there are multiple matches with same priorities for SN only then the MN preference takes effect by fetching the one that is matching SN preference AND is highest on MN preference.

NOTE5: This use case also supports MN initiated measurement Id coordination

#### 5.1.2.2 X2-C IE handling

![]({{site.baseurl}}/assets/images/91058cdcadc2.emf.png)

#### 5.1.2.3 Message flow for X2 and F1

![]({{site.baseurl}}/assets/images/c9e6fa2d57b4.emf.png)

Figure 5.1.2.3-1: Secondary Node Addition procedure (option 3a) - X2 and F1 message flow

NOTE1: SN Status Transfer is executed in step 7 for the bearers using RLC AM

NOTE2: UL Data forwarding handling is executed optionally in step 8

NOTE3: This is a clarification of Step1, CG-ConfigInfo>configRestrictInfo. The list of band combinations sent by MeNB shall not restrict gNB-DU's selection process for suitable SCG bands provided by UE. Any down-selection by MeNB shall only be applied on PCell band.

NOTE4: This is a clarification of Step1, CG-ConfigInfo>configRestrictInfo. MeNB sorts Allowed BC (bandCombinationIndex, FeatureSetEntryIndex) in order of MeNB recommendation and transmits to gNB-CU. And gNB-DU decides on its own priorities. In case there are multiple matches with same priorities for gNB-DU only then the MeNB preference takes effect by fetching the one that is matching gNB-DU preference AND is highest on MeNB preference.

#### 5.1.2.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/ab32ca70e8d6.emf.png)

## 5.2 Secondary Node Release

### 5.2.1 Secondary Node Release (MN initiated, Option 3x or SN terminated MCG bearer)

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 3x (i.e. SN terminated split bearer) or SN terminated MCG bearer |
| PDCP SN Length | 18bit PDCP SN |
| DL data forwarding | Used |
| UL data forwarding | Optionally Used |

</div>

#### 5.2.1.1 Message flow for X2

![]({{site.baseurl}}/assets/images/fd4db60aff81.emf.png)

Figure 5.2.1.1-1: SN Release procedure - MN initiated (option 3x or SN terminated MCG bearer) - X2 message flow

NOTE1: It does not necessarily need to involve signalling towards the UE in step 3 and 4, e.g., in case of the RRC connection re-establishment due to Radio Link Failure in MN.

NOTE2: SN Status Transfer is executed in step 5 for the bearers using RLC AM

NOTE3: UL Data forwarding handling is executed optionally in step 6

NOTE4: UL Data forwarding handling won't be done in step 6, if UE connection is released by MME.

NOTE5: Secondary RAT Data Usage Report is executed optionally in step 7, if SN supports this procedure.

NOTE6: If data forwarding is applied, step 7 can take place before step 6. The SN does not need to wait for the end of data forwarding to send the Secondary RAT Data Usage Report.

#### 5.2.1.2 X2-C IE handling

![]({{site.baseurl}}/assets/images/3ee6f009c9d3.emf.png)

#### 5.2.1.3 Message flow for X2 and F1

![]({{site.baseurl}}/assets/images/db0a2eaa559a.emf.png)

Figure 5.2.1.3-1: SN Release procedure - MN initiated (option 3x or SN terminated MCG bearer) - X2 and F1 message flow

NOTE1: If the gNB has SN terminated split bearer (i.e. option 3x), the gNB-CU performs UE Context Modification procedure to the gNB-DU in order to stop the data transmission for the UE in step 2a/2b. It is up to gNB-DU implementation when to stop the UE scheduling.

NOTE2: It does not necessarily need to involve signalling towards the UE in step 3 and 4, e.g., in case of the RRC connection re-establishment due to Radio Link Failure in MN.

NOTE3: SN Status Transfer is executed in step 5 for the bearers using RLC AM

NOTE4: UL Data forwarding handling is executed optionally in step 6.

NOTE5: Secondary RAT Data Usage Report is executed optionally in step 7, if SN supports this procedure.

NOTE6: If data forwarding is applied, step 7 can take place before step 6. The SN does not need to wait for the end of data forwarding to send the Secondary RAT Data Usage Report.

NOTE7: If the gNB has SN terminated split bearer (i.e. option 3x), the gNB-CU performs UE Context Release procedure in step 9a/9b.

#### 5.2.1.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/8d8589b9a1d8.emf.png)

### 5.2.2 Secondary Node Release (SN initiated, Option 3x or SN terminated MCG bearer)

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 3x (i.e. SN terminated split bearer) or SN terminated MCG bearer |
| PDCP SN Length | 18bit PDCP SN |
| DL data forwarding | Used |
| UL data forwarding | Optionally Used |

</div>

#### 5.2.2.1 Message flow for X2

![]({{site.baseurl}}/assets/images/ad71be2ddaa5.emf.png)

Figure 5.2.2.1-1: SN Release procedure - SN initiated (option 3x or SN terminated MCG bearer) - X2 message flow

NOTE1: It does not necessarily need to involve signalling towards the UE in step 3 and 4, e.g., in case of the RRC connection re-establishment due to Radio Link Failure in MN.

NOTE2: SN Status Transfer is executed in step 5 for the bearers using RLC AM

NOTE3: UL Data forwarding handling is executed optionally in step 6

NOTE4: Secondary RAT Data Usage Report is executed optionally in step 7, if SN supports this procedure.

NOTE5: If data forwarding is applied, step 7 can take place before step 6. The SN does not need to wait for the end of data forwarding to send the Secondary RAT Data Usage Report.

#### 5.2.2.2 X2-C IE handling

![]({{site.baseurl}}/assets/images/5af6ed3b2c37.emf.png)

#### 5.2.2.3 Message flow for X2 and F1

![]({{site.baseurl}}/assets/images/0df356d5877c.emf.png)

Figure 5.2.2.3-1: SN Release procedure - SN initiated (option 3x or SN terminated MCG bearer) - X2 and F1 message flow

NOTE1: In case of gNB-DU initiated use case, the gNB-DU may send UE Context Release Request message to the gNB-CU in step 1a.

NOTE2: If the gNB has SN terminated split bearer (i.e. option 3x), the gNB-CU performs UE Context Modification procedure to the gNB-DU in order to stop the data transmission for the UE in step 2a/2b. It is up to gNB-DU implementation when to stop the UE scheduling.

NOTE3: It does not necessarily need to involve signalling towards the UE in step 3 and 4, e.g., in case of the RRC connection re-establishment due to Radio Link Failure in MN.

NOTE4: SN Status Transfer is executed in step 5 for the bearers using RLC AM

NOTE5: UL Data forwarding handling is executed optionally in step 6

NOTE6: Secondary RAT Data Usage Report is executed optionally in step 7, if SN supports this procedure.

NOTE7: If data forwarding is applied, step 7 can take place before step 6. The SN does not need to wait for the end of data forwarding to send the Secondary RAT Data Usage Report.

NOTE8: If the gNB has SN terminated split bearer (i.e. option 3x), the gNB-CU performs UE Context Release procedure in step 9a/9b.

#### 5.2.2.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/0489c087036e.emf.png)

### 5.2.3 Secondary Node Release (MN initiated, Option 3a)

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 3a (i.e. SN terminated SCG bearer) |
| PDCP SN Length | 18bit PDCP SN |
| DL data forwarding | Used |
| UL data forwarding | Optionally Used |

</div>

#### 5.2.3.1 Message flow for X2

![]({{site.baseurl}}/assets/images/0ffbdd3f9493.emf.png)

Figure 5.2.3.1-1: SN Release procedure - MN initiated (option 3a) - X2 message flow

NOTE1: It does not necessarily need to involve signalling towards the UE in step 3 and 4, e.g., in case of the RRC connection re-establishment due to Radio Link Failure in MN.

NOTE2: SN Status Transfer is executed in step 5 for the bearers using RLC AM.

NOTE3: UL Data forwarding handling is executed optionally in step 6

NOTE4: Data forwarding handling won't be done in step 6, if UE connection is released by MME.

NOTE5: Secondary RAT Data Usage Report is executed optionally in step 7, if SN supports this procedure.

NOTE6: If data forwarding is applied, step 7 can take place before step 6. The SN does not need to wait for the end of data forwarding to send the Secondary RAT Data Usage Report.

#### 5.2.3.2 X2-C IE handling

![]({{site.baseurl}}/assets/images/f3f30159abdc.emf.png)

#### 5.2.3.3 Message flow for X2 and F1

![]({{site.baseurl}}/assets/images/6fee17f82c65.emf.png)

Figure 5.2.3.3-1: SN Release procedure - MN initiated (option 3a) - X2 and F1 message flow

NOTE1: If the gNB has SN terminated SCG bearer (i.e. option 3a), the gNB-CU performs UE Context Modification procedure to the gNB-DU in order to stop the data transmission for the UE in step 2a/2b. It is up to gNB-DU implementation when to stop the UE scheduling.

NOTE2: It does not necessarily need to involve signalling towards the UE in step 3 and 4, e.g., in case of the RRC connection re-establishment due to Radio Link Failure in MN.

NOTE3: SN Status Transfer is executed in step 5 for the bearers using RLC AM

NOTE4: UL Data forwarding handling is executed optionally in step 6

NOTE5: Secondary RAT Data Usage Report is executed optionally in step 7, if SN supports this procedure.

NOTE6: If data forwarding is applied, step 7 can take place before step 6. The SN does not need to wait for the end of data forwarding to send the Secondary RAT Data Usage Report.

#### 5.2.3.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/fa37f0bd8490.emf.png)

### 5.2.4 Secondary Node Release (SN initiated, Option 3a)

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 3a (i.e. SN terminated SCG bearer) |
| PDCP SN Length | 18bit PDCP SN |
| DL data forwarding | Used |
| UL data forwarding | Optionally Used |

</div>

#### 5.2.4.1 Message flow for X2

![]({{site.baseurl}}/assets/images/75b8020ddacc.emf.png)

Figure 5.2.4.1-1: SN Release procedure - SN initiated (option 3a) - X2 message flow

NOTE1: It does not necessarily need to involve signalling towards the UE in step 3 and 4, e.g., in case of the RRC connection re-establishment due to Radio Link Failure in MN.

NOTE2: SN Status Transfer is executed in step 5 for the bearers using RLC AM

NOTE3: UL Data forwarding handling is executed optionally in step 6

NOTE4: Secondary RAT Data Usage Report is executed optionally in step 7, if SN supports this procedure.

NOTE5: If data forwarding is applied, step 7 can take place before step 6. The SN does not need to wait for the end of data forwarding to send the Secondary RAT Data Usage Report.

#### 5.2.4.2 X2-C IE handling

![]({{site.baseurl}}/assets/images/21ec0b7c3a95.emf.png)

#### 5.2.4.3 Message flow for X2 and F1

![]({{site.baseurl}}/assets/images/6d39a270c495.emf.png)

Figure 5.2.4.3-1: SN Release procedure - SN initiated (option 3a) - X2 and F1 message flow

NOTE1: In case of gNB-DU initiated use case, the gNB-DU may send UE Context Release Request message to the gNB-CU in step 1a.

NOTE2: If the gNB has SN terminated SCG bearer (i.e. option 3a), the gNB-CU performs UE Context Modification procedure to the gNB-DU in order to stop the data transmission for the UE in step 2a/2b. It is up to gNB-DU implementation when to stop the UE scheduling.

NOTE3: It does not necessarily need to involve signalling towards the UE in step 3 and 4, e.g., in case of the RRC connection re-establishment due to Radio Link Failure in MN.

NOTE4: SN Status Transfer is executed in step 5 for the bearers using RLC AM

NOTE5: UL Data forwarding handling is executed optionally in step 6

NOTE6: Secondary RAT Data Usage Report is executed optionally in step 7, if SN supports this procedure.

NOTE7: If data forwarding is applied, step 7 can take place before step 6. The SN does not need to wait for the end of data forwarding to send the Secondary RAT Data Usage Report.

#### 5.2.4.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/6f99b0d97abd.emf.png)

## 5.3 Secondary Node Change

### 5.3.1 Secondary Node Change (MN initiated, Option 3x, SN term. MCG bearer)

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 3x (i.e. SN terminated split bearer) , Option "SN terminated MCG bearer". |
| Signalling radio bearer | SRB1 (SRB3 optionally used) |
| Bearer type | Non-GBR bearer |
| Split SRB | Not used |
| PDCP SN Length | 18bit PDCP SN |
| DL data forwarding | Used |
| UL data forwarding | Optionally Used |

</div>

#### 5.3.1.1 Message flow for X2

![]({{site.baseurl}}/assets/images/62c6f447b5cb.emf.png)

Figure 5.3.1.1-1: SN Change procedure - MN initiated (option 3x)

NOTE1: Step 10 is optional

NOTE2: This is a clarification of Step1, CG-ConfigInfo>configRestrictInfo. However, this clarification is only applicable in case of transition from SN terminated MCG bearer to SN terminated split bearer. The list of band combinations sent by MN shall not restrict T-SN's selection process for suitable SCG bands provided by UE. Any down-selection by MN shall only be applied on PCell band.

NOTE3: This is a clarification of Step1, CG-ConfigInfo>configRestrictInfo. However, this clarification is only applicable in case of transition from SN terminated MCG bearer to SN terminated split bearer. MN sorts Allowed BC (bandCombinationIndex, FeatureSetEntryIndex) in order of MN recommendation and transmits to T-SN. And T-SN decides on its own priorities. In case there are multiple matches with same priorities for T-SN only then the MN preference takes effect by fetching the one that is matching T-SN preference AND is highest on MN preference.

#### 5.3.1.2 X2-C IE handling

![]({{site.baseurl}}/assets/images/1eae376c549c.emf.png)

#### 5.3.1.3 Message flow for X2 and F1

![]({{site.baseurl}}/assets/images/250c4ebc7268.emf.png)

Figure 5.3.1.3-1: SN Change procedure - MN initiated (option 3x)

NOTE1: In case SN terminated MCG bearer, MN may decide to continue to keep E-RABs as SN terminated MCG bearers in new target SN, when steps 1a/b are not needed.

NOTE2: In case of SN change is triggered when E-RABs are in SN terminated MCG bearer, Steps 3a/b and 17a/b are not needed.

NOTE3: This is a clarification of Step1, CG-ConfigInfo>configRestrictInfo. However, this clarification is only applicable in case of transition from SN terminated MCG bearer to SN terminated split bearer. The list of band combinations sent by MN shall not restrict T-SN-DU's selection process for suitable SCG bands provided by UE. Any down-selection by MN shall only be applied on PCell band.

NOTE4: This is a clarification of Step1, CG-ConfigInfo>configRestrictInfo. However, this clarification is only applicable in case of transition from SN terminated MCG bearer to SN terminated split bearer. MN sorts Allowed BC (bandCombinationIndex, FeatureSetEntryIndex) in order of MN recommendation and transmits to T-SN-CU. And T-SN-DU decides on its own priorities. In case there are multiple matches with same priorities for T-SN-DU only then the MN preference takes effect by fetching the one that is matching T-SN-DU preference AND is highest on MN preference.

#### 5.3.1.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/dd2190b9ad3e.emf.png)

### 5.3.2 Secondary Node Change (SN initiated, Option 3x)

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 3x (i.e. SN terminated split bearer) |
| Signalling radio bearer | SRB1 (SRB3 optionally used) |
| Bearer type | Non-GBR bearer |
| Split SRB | Not used |
| PDCP SN Length | 18bit PDCP SN |
| DL data forwarding | Used |
| UL data forwarding | Optionally Used |

</div>

#### 5.3.2.1 Message flow for X2

![]({{site.baseurl}}/assets/images/a0ceb0a87390.emf.png)

Figure 5.3.2.1-1: SN Change procedure - SN initiated (option 3x)

NOTE1: Step 11 is optional

NOTE2: This use case also supports SN initiated measurement Id coordination

#### 5.3.2.2 X2-C IE handling

![]({{site.baseurl}}/assets/images/1efac8fb6df8.emf.png)

#### 5.3.2.3 Message flow for X2 and F1

![]({{site.baseurl}}/assets/images/061bea95def9.emf.png)

Figure 5.3.2.3-1: SN Change procedure - SN initiated (option 3x)

#### 5.3.2.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/edd52ba99e18.emf.png)

## 5.4 Inter-Master Node Handover

### 5.4.1 Inter-Master Node Handover (without SN Change, Option 3x)

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 3x (i.e. SN terminated split bearer) |
| Signalling radio bearer | SRB1 (SRB3 optionally used) |
| Bearer type | Non-GBR bearer |
| Split SRB | Not used |
| PDCP SN Length | 18bit PDCP SN |
| DL data forwarding | Used |
| UL data forwarding | Optionally Used |

</div>

#### 5.4.1.1 Message flow for X2

![]({{site.baseurl}}/assets/images/7d0b1fe4aeb4.emf.png)

Figure 5.4.1.1-1: Inter-Master Node Handover (without SN change, option 3x)

#### 5.4.1.2 X2-C IE Handling

![]({{site.baseurl}}/assets/images/2e8e60dd2f6e.emf.png)

#### 5.4.1.3 Message flow for X2 and F1- Inter DU PSCell change

![]({{site.baseurl}}/assets/images/392a09655354.emf.png)

Figure 5.4.1.3-1: Inter-Master Node Handover without SN change - Inter DU PSCell change

#### 5.4.1.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/d96f48c9e497.emf.png)

#### 5.4.1.5 Message flow for X2 and F1 - Intra DU PSCell change or Security key change only

![]({{site.baseurl}}/assets/images/31385591b1ab.emf.png)

Figure 5.4.1.5-1: Inter-Master Node Handover without SN change - Intra DU PSCell change or Security key change only

NOTE: gNB-DU configuration query is not necessarily needed for the Intra-DU PSCell changes, but it is implementation specific if used or not.

#### 5.4.1.6 F1-C IE handling

![]({{site.baseurl}}/assets/images/cd43b8b5d8fe.emf.png)

### 5.4.2 Inter-Master Node Handover (with SN Change, Option 3x)

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 3x (i.e. SN terminated split bearer) |
| Signalling radio bearer | SRB1 (SRB3 optionally used) |
| Bearer type | Non-GBR bearer |
| Split SRB | Not used |
| PDCP SN Length | 18bit PDCP SN |
| DL data forwarding | Used |
| UL data forwarding | Optionally Used |

</div>

#### 5.4.2.1 Message flow for X2

![]({{site.baseurl}}/assets/images/176af58126a4.emf.png)

Figure 5.4.2.1-1: Inter-Master Node Handover (with SN change, option 3x)

NOTE1: SN Status Transfer is executed in the steps 12, 13 and 14 for the bearers using RLC AM

NOTE2: UL Data forwarding handling is executed optionally in step 15

NOTE3: This procedure can also be used for intra-MN handover procedures

NOTE4: The SCG configuration query (MN initiated) procedure is described in more detail in section 5.6.4 SCG config query (MN initiated)

#### 5.4.2.2 X2-C IE Handling

![]({{site.baseurl}}/assets/images/2669e518a329.emf.png)

#### 5.4.2.3 Message flow for X2 and F1- Inter DU PSCell change

![]({{site.baseurl}}/assets/images/d11234499417.emf.png)

Figure 5.4.2.3-1: Inter-Master Node Handover with SN change - Inter DU PSCell change

NOTE1: SN Status Transfer is executed in the steps 12, 13 and 14 for the bearers using RLC AM

NOTE2: UL Data forwarding handling is executed optionally in step 15

NOTE3: This procedure can also be used for intra-MN handover procedures

NOTE4: The SCG configuration query (MN initiated) and the gNB-DU-configuration query procedures are described in more detail in section 5.6.4 SCG config query (MN initiated).

#### 5.4.2.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/b0354d23c1ec.emf.png)

## 5.5 Master Node to eNB/gNB Change

### 5.5.1 Master Node to eNB Change

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 3x (i.e. SN terminated split bearer) |
| Bearer type | Non-GBR bearer |
| Split SRB | Not used |
| PDCP SN Length | 18bit PDCP SN |
| DL data forwarding | Used |
| UL data forwarding | Optionally Used |

</div>

#### 5.5.1.1 Message flow for X2

![]({{site.baseurl}}/assets/images/58d564c3abf6.emf.png)

Figure 5.5.1.1-1: Master Node to eNB change

NOTE: The steps 10a and 10b are optional

#### 5.5.1.2 X2-C IE Handling

![]({{site.baseurl}}/assets/images/7abe6f4899cb.emf.png)

#### 5.5.1.3 Message flow for X2 and F1

![]({{site.baseurl}}/assets/images/d4786d932420.emf.png)

Figure 5.5.1.3-1: Master Node to eNB change

#### 5.5.1.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/e171913900fa.emf.png)

## 5.6 Secondary Node Modification

### 5.6.1 PCell change (Intra MN) (MN initiated)

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 3x (i.e. SN terminated split bearer) or SN terminated MCG bearer |
| Split SRB | Not used |

</div>

#### 5.6.1.1 Message flow for X2

![]({{site.baseurl}}/assets/images/0d767be28358.emf.png)

Figure 5.6.1.1-1: PCell change (Intra MN) (MN initiated)

NOTE1: In case of SN terminated MCG bearer, Random Access Procedure isn't performed in step 9

#### 5.6.1.2 X2-C IE handling

![]({{site.baseurl}}/assets/images/c0b73adb8e2b.emf.png)

#### 5.6.1.3 Message flow for X2 and F1

![]({{site.baseurl}}/assets/images/0b53e0a77258.emf.png)

Figure 5.6.1.3-1: PCell change (Intra MN) (MN initiated)

NOTE1: In case of SN terminated MCG bearer, steps 3a/b, 8a/b and 9 are not performed.

#### 5.6.1.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/6cacd2e64227.emf.png)

### 5.6.2 Allowed Band Combination list update (MN initiated)

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Used for Option 3x (i.e. SN terminated split bearer) or optionally used for SN terminated MCG bearer |
| Split SRB | Not used |

</div>

#### 5.6.2.1 Message flow for X2

![]({{site.baseurl}}/assets/images/a76884171908.emf.png)

Figure 5.6.2.1-1: Allowed Band Combination list update (MN initiated)

NOTE1: In step 1, Allowed Band Combination list update may be triggered by e.g., at PCell or SCell change or when removing an LTE-SCell.

NOTE2: In case of SN terminated MCG bearer, steps 4-6 are not performed.

NOTE3: In steps 4-6, if the UE Connectivity option is SN terminated split bearer (i.e. option 3x) and MN received NR RRCReconfiguration from SN, MN shall send X2AP: SgNB Reconfiguration Complete message to SN after receiving RRC: RRCConnectionReconfigurationComplete message.

#### 5.6.2.2 X2-C IE handling

![]({{site.baseurl}}/assets/images/f3784ee77f4b.emf.png)

#### 5.6.2.3 Message flow for X2 and F1

![]({{site.baseurl}}/assets/images/cbc835d861f6.emf.png)

Figure 5.6.2.3-1: Allowed Band Combination list update (MN initiated)

NOTE1: In step 1, Allowed Band Combination list update may be triggered by e.g., at PCell or SCell change or when removing an LTE-SCell.

NOTE2: In case of SN terminated MCG bearer, steps 2a/b and 4-6b are not performed.

NOTE3: In steps 4-6b, if the UE Connectivity option is SN terminated split bearer (i.e. option 3x) and MN-CU received NR RRCReconfiguration from SN-CU, MN-CU shall send X2AP: SgNB Reconfiguration Complete message to SN-CU after receiving RRC: RRCConnectionReconfigurationComplete message.

#### 5.6.2.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/2a277257f66d.emf.png)

### 5.6.3 Configured Band Combination update by PSCell/SCell change (SN initiated)

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 3x (i.e. SN terminated split bearer) |
| Signalling radio bearer | SRB1 (SRB3 optionally used) |
| Split SRB | Not used |

</div>

#### 5.6.3.1 Message flow for X2

![]({{site.baseurl}}/assets/images/27b441cc24da.emf.png)

Figure 5.6.3.1-1: Configured Band Combination update by PSCell/SCell change (SN initiated)

NOTE1: If PSCell and/or SCell Change procedure using SRB3 for RRC Reconfiguration is successfully completed and selectedBandCombination is updated, SgNB initiates this procedure.

#### 5.6.3.2 X2-C IE handling

![]({{site.baseurl}}/assets/images/27510e1967f9.emf.png)

### 5.6.4 SCG config query (MN initiated)

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 3x (i.e. SN terminated split bearer) or SN terminated MCG bearer |
| Split SRB | Not used |

</div>

#### 5.6.4.1 Message flow for X2

![]({{site.baseurl}}/assets/images/d83b30a39d75.emf.png)

Figure 5.6.4.1-1: SCG config query (MN initiated)

#### 5.6.4.2 X2-C IE handling

![]({{site.baseurl}}/assets/images/848995f2aeb6.emf.png)

#### 5.6.4.3 Message flow for X2 and F1

![]({{site.baseurl}}/assets/images/63c1e2216973.emf.png)

Figure 5.6.4.3-1: SCG config query (MN initiated)

NOTE: In case of SN terminated MCG bearer gNB-DU configuration query is not done.

#### 5.6.4.4 F1-C IE handling

See 5.6.20.2

### 5.6.5 Security Key Change Procedure (MN initiated)

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 3x (i.e. SN terminated split bearer) or SN terminated MCG bearer |
| Split SRB | Not used |

</div>

#### 5.6.5.1 Message flow for X2

![]({{site.baseurl}}/assets/images/06c6957654c1.emf.png)

Figure 5.6.5.1-1: Security Key Change (MN initiated) - X2 message flow

NOTE1: In case of S-KgNB update scenario, Random Access Procedure in step 4 isn't performed

NOTE2: In step 7, Random Access Procedure isn't performed in case of SN terminated MCG bearer

#### 5.6.5.2 X2-C IE handling

![]({{site.baseurl}}/assets/images/b330a158e7f3.emf.png)

#### 5.6.5.3 Message flow for X2 and F1

![]({{site.baseurl}}/assets/images/0818496b59d1.emf.png)

Figure 5.6.5.3-1: Security Key Change (MN initiated) - X2 and F1 message flow

NOTE1: In case of S-KgNB update scenario, Random Access Procedure in step 4 isn't performed.

NOTE2: Steps 1a/1b and steps 6a/6b aren't performed in case of SN terminated MCG bearer.

NOTE3: In step 7, Random Access Procedure isn't performed in case of SN terminated MCG bearer.

#### 5.6.5.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/93538d348045.emf.png)

### 5.6.6 Measurement Gap Coordination Procedure (MN initiated)

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 3x (i.e. SN terminated split bearer) |
| Split SRB | Not used |

</div>

#### 5.6.6.1 Message flow for X2

![]({{site.baseurl}}/assets/images/b0ee13814f64.emf.png) Figure 5.6.6.1-1: Measurement Gap Coordination (MN initiated) - X2 message flow

NOTE: In step 2, SN should include *scg-CellGroupConfig* IE in X2AP: SgNB Modification Request Acknowledge message to receive X2AP: SgNB Reconfiguration Complete message in step 5.

#### 5.6.6.2 X2-C IE handling

![]({{site.baseurl}}/assets/images/63652566ce97.emf.png)

#### 5.6.6.3 Message flow for X2 and F1

![]({{site.baseurl}}/assets/images/5d24739ce6e2.emf.png)

Figure 5.6.6.3-1: Measurement Gap Coordination (MN initiated) - X2 and F1 message flow

NOTE: In step 2, SN should include *scg-CellGroupConfig* IE in X2AP: SgNB Modification Request Acknowledge message to receive X2AP: SgNB Reconfiguration Complete message in step 5.

#### 5.6.6.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/5968abca9231.emf.png)

### 5.6.7 Measurement Gap Coordination for per FR1 or per UE gap Procedure (SN initiated)

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 3x (i.e. SN terminated split bearer) |
| Split SRB | Not used |

</div>

#### 5.6.7.1 Message flow for X2

![]({{site.baseurl}}/assets/images/dab57fb31a55.emf.png) Figure 5.6.7.1-1: Measurement Gap Coordination FR1/UE gap (SN initiated) - X2 message flow

NOTE1: MN ignores the 1st *scg-CellGroupConfig* IE received in SgNB Modification Required message in step 1 if it receives a 2nd *scg-CellGroupConfig* IE in SgNB Modification Request Acknowledge message in step 3.

NOTE2: Step 6 uses X2AP: SgNB Modification Confirm message because SN initiated SN modification procedure is handled as the exception scenario described in TS 37.340 [1]

#### 5.6.7.2 X2-C IE handling

![]({{site.baseurl}}/assets/images/3224975ef90a.emf.png)

#### 5.6.7.3 Message flow for X2 and F1

![]({{site.baseurl}}/assets/images/f6b95e08b668.emf.png)

Figure 5.6.7.3-1: Measurement Gap Coordination FR1/UE gap (SN initiated) - X2 and F1 message flow

NOTE1: MN ignores the 1st *scg-CellGroupConfig* IE received in SgNB Modification Required message in step 1 if it receives a 2nd *scg-CellGroupConfig* IE in SgNB Modification Request Acknowledge message in step 3.

NOTE2: Step 6 uses X2AP: SgNB Modification Confirm message because SN initiated SN modification procedure is handled as the exception scenario described in TS 37.340 [1].

#### 5.6.7.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/902d13101892.emf.png)

### 5.6.8 Measurement Gap Coordination for per FR2 gap (with MN involvement) Procedure (SN initiated)

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 3x (i.e. SN terminated split bearer) |
| Split SRB | Not used |

</div>

#### 5.6.8.1 Message flow for X2

![]({{site.baseurl}}/assets/images/69f409aa1b75.emf.png) Figure 5.6.8.1-1: Measurement Gap Coordination FR2 (SN Initiated) - X2 message flow

#### 5.6.8.2 X2-C IE handling

![]({{site.baseurl}}/assets/images/67e06d016cd6.emf.png)

#### 5.6.8.3 Message flow for X2 and F1

![]({{site.baseurl}}/assets/images/bb29f3cac977.emf.png)

Figure 5.6.8.3-1: Measurement Gap Coordination FR2 (SN Initiated) - X2 and F1 message flow

#### 5.6.8.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/bafb73697707.emf.png)

### 5.6.8a Measurement Gap Coordination for per FR2 gap (without MN involvement) Procedure (SN initiated)

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| Signalling radio bearer | SRB3 used |

</div>

#### 5.6.8a.1 Message flow for F1

![]({{site.baseurl}}/assets/images/5aa851f5e5d9.emf.png)

Figure 5.6.8a.1-1: Measurement Gap Coordination FR2 (SN Initiated) - without MN involvement

#### 5.6.8a.2 F1-C IE handling

![]({{site.baseurl}}/assets/images/fc15aea28204.emf.png)

### 5.6.9 UL Configuration Update Procedure (SN initiated)

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 3x (i.e. SN terminated split bearer) |
| Split SRB | Not used |

</div>

#### 5.6.9.1 Message flow for X2

![]({{site.baseurl}}/assets/images/bb72d60e4b61.emf.png)Figure 5.6.9.1-1: UL Configuration Update (SN initiated) - X2 message flow

#### 5.6.9.2 X2-C IE handling

![]({{site.baseurl}}/assets/images/2918e2bb2100.emf.png)

#### 5.6.9.3 Message flow for X2 and F1

![]({{site.baseurl}}/assets/images/c4ccfea07e43.emf.png)

Figure 5.6.9.3-1: UL Configuration Update (SN initiated) - X2 and F1 message flow

#### 5.6.9.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/34027702b931.emf.png)

### 5.6.10 Addition of SN terminated split bearer (MN initiated)

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 3x (i.e. SN terminated split bearer) |
| Bearer type | Non-GBR bearer |
| Split SRB | Not used |
| PDCP SN Length | 18bit PDCP SN |
| DL data forwarding | Optionally needed |
| UL data forwarding | Optionally needed |

</div>

#### 5.6.10.1 Message flow for X2

![]({{site.baseurl}}/assets/images/08336c531fd6.emf.png) Figure 5.6.10.1-1: Addition of SN terminated split bearer (MN initiated)

#### 5.6.10.2 X2-C IE handling

![]({{site.baseurl}}/assets/images/ec6b71e2b446.emf.png)

#### 5.6.10.3 Message flow for X2 and F1

![]({{site.baseurl}}/assets/images/02469771d44c.emf.png)Figure 5.6.10.3-1: Addition of SN terminated split bearer (MN initiated)

#### 5.6.10.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/e5fe25936aa8.emf.png)

### 5.6.11 Removal of SN terminated split bearer (MN initiated)

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 3x (i.e. SN terminated split bearer) |
| Split SRB | Not used |
| PDCP SN Length | 18bit PDCP SN |
| DL data forwarding | Optionally Used |
| UL data forwarding | Optionally Used |

</div>

#### 5.6.11.1 Message flow for X2

![]({{site.baseurl}}/assets/images/3bc59916eb9c.emf.png)

Figure 5.6.11.1-1: Removal of SN terminated split bearer (MN initiated)

NOTE: Step 8 is optional

#### 5.6.11.2 X2-C IE handling

![]({{site.baseurl}}/assets/images/d1c0f263372c.emf.png)

#### 5.6.11.3 Message flow for X2 and F1

![]({{site.baseurl}}/assets/images/f89c0eecfb51.emf.png)

Figure 5.6.11.3-1: Removal of SN terminated split bearer (MN initiated)

#### 5.6.11.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/50fe00e4aabf.emf.png)

### 5.6.12 Bearer type change from SN terminated split bearer to SN terminated MCG bearer (MN initiated)

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | From option 3x (i.e. SN terminated split bearer) to SN terminated MCG bearer |
| Split SRB | Not used |

</div>

#### 5.6.12.1 Message flow for X2

![]({{site.baseurl}}/assets/images/f6af929b413d.emf.png)

Figure 5.6.12.1-1: Bearer type change from SN terminated split bearer to SN terminated MCG bearer (MN initiated)

#### 5.6.12.2 X2-C IE handling

![]({{site.baseurl}}/assets/images/4e7dd561b49b.emf.png)

#### 5.6.12.3 Message flow for X2 and F1

![]({{site.baseurl}}/assets/images/d8cd117a6140.emf.png)

Figure 5.6.12.3-1: Bearer type change from SN terminated split bearer to SN terminated MCG bearer (MN initiated)

NOTE1: This version of the specification assumes all SN terminated split bearers of the UE are changed to SN terminated MCG bearer

NOTE2: It is possible that all SN terminated split bearers are not changed at a same time to SN terminated MCG bearer. In that case UE Context Modification Request/Response is used to remove Bearer context from gNB-DU, allowing UE context to be kept in gNB-DU. This option is not part of this version of specification.

#### 5.6.12.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/c09b6dda7d49.emf.png)

### 5.6.13 Bearer type change from SN terminated MCG bearer to SN terminated split bearer (MN initiated)

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | From SN terminated MCG bearer to Option 3x (i.e. SN terminated split bearer) |
| Signalling radio bearer | SRB1 (SRB3 optionally used) |
| Bearer type | Non-GBR bearer |
| Split SRB | Not used |
| PDCP SN Length | 18bit PDCP SN |

</div>

#### 5.6.13.1 Message flow for X2

![]({{site.baseurl}}/assets/images/7b1e10d6c09d.emf.png)

Figure 5.6.13.1-1: Bearer type change from SN terminated MCG bearer to SN terminated split bearer (MN initiated)

NOTE1: Step 6. RA procedure is not needed in case of UE has already another existing 3x bearer. This option is not part of this version of the specification.

NOTE2: This is a clarification of Step1, CG-ConfigInfo>configRestrictInfo. The list of band combinations sent by MeNB shall not restrict SgNB's selection process for suitable SCG bands provided by UE. Any down-selection by MeNB shall only be applied on PCell band.

NOTE3: This is a clarification of Step1, CG-ConfigInfo>configRestrictInfo. MeNB sorts Allowed BC (bandCombinationIndex, FeatureSetEntryIndex) in order of MeNB recommendation and transmits to SgNB. And SgNB decides on its own priorities. In case there are multiple matches with same priorities for SgNB only then the MeNB preference takes effect by fetching the one that is matching SgNB preference AND is highest on MeNB preference.

#### 5.6.13.2 X2-C IE handling

![]({{site.baseurl}}/assets/images/61d738452f55.emf.png)

#### 5.6.13.3 Message flow for X2 and F1

![]({{site.baseurl}}/assets/images/9141dea43360.emf.png)

Figure 5.6.13.3-1: Bearer type change from SN terminated MCG bearer to SN terminated split bearer (MN initiated)

NOTE1: This version of the specification assumes all SN terminated MCG bearers of the UE are changed to SN terminated split bearers

NOTE2: It is possible that all SN terminated MGG bearers are not changed at a same time to SN terminated split bearer. In that case, if UE has already SN terminated split bearer, RA procedure is not needed, and UE Context Modification Request/Response is used to add Bearer context to gNB-DU. This option is not part of this version of specification.

NOTE3: This is a clarification of Step1, CG-ConfigInfo>configRestrictInfo. The list of band combinations sent by MeNB shall not restrict gNB-DU's selection process for suitable SCG bands provided by UE. Any down-selection by MeNB shall only be applied on PCell band.

NOTE4: This is a clarification of Step1, CG-ConfigInfo>configRestrictInfo. MeNB sorts Allowed BC (bandCombinationIndex, FeatureSetEntryIndex) in order of MeNB recommendation and transmits to gNB-CU. And gNB-DU decides on its own priorities. In case there are multiple matches with same priorities for gNB-DU only then the MeNB preference takes effect by fetching the one that is matching gNB-DU preference AND is highest on MeNB preference.

#### 5.6.13.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/0a11bc43de5a.emf.png)

### 5.6.14 Bearer type change from SN terminated split bearer to SN terminated MCG bearer (SN initiated)

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | From option 3x (i.e. SN terminated split bearer) to SN terminated MCG bearer |
| Split SRB | Not used |

</div>

#### 5.6.14.1 Message flow for X2

![]({{site.baseurl}}/assets/images/e99eb4b4ca75.emf.png)

Figure 5.6.14.1-1: Bearer type change from SN terminated split bearer to SN terminated MCG bearer (SN initiated)

#### 5.6.14.2 X2-C IE handling

![]({{site.baseurl}}/assets/images/34fc52c65d8b.emf.png)

#### 5.6.14.3 Message flow for X2 and F1

![]({{site.baseurl}}/assets/images/bd2957b9dc7e.emf.png)

Figure 5.6.14.3-1: Bearer type change from SN terminated split bearer to SN terminated MCG bearer (SN initiated)

NOTE1: This version of the specification assumes all SN terminated split bearers of the UE are changed to SN terminated MCG bearer.

NOTE2: It is possible that all SN terminated split bearers are not changed at a same time to SN terminated MCG bearer. In that case UE Context Modification Request/Response is used to remove Bearer context from gNB-DU, allowing UE context to be kept in gNB-DU. This option is not part of this version of specification.

#### 5.6.14.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/e769c3747a94.emf.png)

### 5.6.15 PSCell Change using SRB1 for RRC Reconfiguration - full configuration option

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 3x (i.e. SN terminated split bearer) |
| Bearer type | Non-GBR bearer |
| Split SRB | Not used |
| RRC config indication | "full config" |

</div>

#### 5.6.15.1 Message flow for X2

![]({{site.baseurl}}/assets/images/1cf7309df1c4.emf.png)

Figure 5.6.15.1-1: PSCell change using SRB1 for RRC Reconfiguration - full configuration option

#### 5.6.15.2 X2-C IE Handling

![]({{site.baseurl}}/assets/images/3d8963552e5a.emf.png)

#### 5.6.15.3 Message flow for X2 and F1 - Inter gNB-DU scenario

![]({{site.baseurl}}/assets/images/d00bfbe88fb8.emf.png)

Figure 5.6.15.3-1: Inter gNB-DU PSCell change using SRB1 for RRC Reconfiguration - full configuration option

![]({{site.baseurl}}/assets/images/8db6148fa9e5.emf.png)

Figure 5.6.15.3-2: Inter gNB-DU PSCell change using SRB1 for RRC Reconfiguration - full configuration option

NOTE1: If MeNB sends MeNB Resource Coordination Information IE in step 7, step 7a is done to send Resource Coordination Transfer Container IE to gNB-DU.

#### 5.6.15.4 F1-C IE Handling

![]({{site.baseurl}}/assets/images/229e6f387ea9.emf.png)

### 5.6.16 PSCell Change using SRB1 for RRC Reconfiguration - delta configuration option

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 3x (i.e. SN terminated split bearer) |
| Bearer type | Non-GBR bearer |
| Split SRB | Not used |
| RRC config indication | "delta config" |

</div>

#### 5.6.16.1 Message flow for X2

![]({{site.baseurl}}/assets/images/4975d8f6c68e.emf.png)

Figure 5.6.16.1-1: PSCell change using SRB1 for RRC Reconfiguration - delta configuration option

NOTE1: It is optional to change security key during PSCell change using delta configuration. This option is not used in this version of the specification and the message flow does not show the corresponding signalling.

#### 5.6.16.2 X2-C IE Handling

![]({{site.baseurl}}/assets/images/29ccb8f6ecaf.emf.png)

#### 5.6.16.3 Message flow for X2 and F1 - Inter gNB-DU scenario

![]({{site.baseurl}}/assets/images/28befd51cb9c.emf.png)

Figure 5.6.16.3-1: Inter gNB-DU PSCell change using SRB1 for RRC Reconfiguration - delta configuration option

NOTE1: It is optional to change security key during PSCell change using delta config. This option is not used in this version of the specification and the message flow does not show the corresponding signalling.

NOTE2: If MeNB sends MeNB Resource Coordination Information IE in step 5, step 5a is done to send Resource Coordination Transfer Container IE to gNB-DU.

NOTE3: If the gNB-DU decides to perform full configuration after receiving the source cell group configuration in step2c, "PSCell Change using SRB1 for RRC Reconfiguration - full configuration option (Inter gNB-DU scenario)" described from step 2d in the section 5.6.15 is applied.

#### 5.6.16.4 F1-C IE Handling

![]({{site.baseurl}}/assets/images/9cc32e9f78a8.emf.png)

### 5.6.17 Intra gNB-DU PSCell Change using SRB1 for RRC Reconfiguration

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 3x (i.e. SN terminated split bearer) |
| Bearer type | Non-GBR bearer |
| Split SRB | Not used |

</div>

#### 5.6.17.1 Message flow for X2 and F1 - Intra gNB-DU scenario

![]({{site.baseurl}}/assets/images/170ecc37aed2.emf.png)

Figure 5.6.17.1-1: Intra gNB-DU PSCell change using SRB1 for RRC Reconfiguration

NOTE: It is optional to change security key during intra gNB-DU PSCell change. This option is not used in this version of the specification and the message flow does not show the corresponding signalling.

#### 5.6.17.2 X2-C IE Handling

![]({{site.baseurl}}/assets/images/387a602379e8.emf.png)

#### 5.6.17.3 F1-C IE Handling

![]({{site.baseurl}}/assets/images/44c6be7e9c5c.emf.png)

### 5.6.18 Inter gNB-DU PSCell Change using SRB3 for RRC Reconfiguration

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 3x (i.e. SN terminated split bearer) |
| Bearer type | Non-GBR bearer |
| Split SRB | Not used |
| Full Configuration in Target gNB-DU | delta |

</div>

#### 5.6.18.1 Message flow for F1 - Inter gNB-DU scenario

![]({{site.baseurl}}/assets/images/a87ebba86f2f.emf.png)

Figure 5.6.18.1-1: Inter gNB-DU PSCell change using SRB3 for RRC Reconfiguration

NOTE1: In step 6, if the target gNB-DU doesn't support the delta configuration option, the gNB-DU includes *Full Configuration* IE in this message. In this case, "PSCell Change using SRB1 for RRC Reconfiguration - full configuration option (Inter gNB-DU scenario)" described in section 5.6.15.1 is applied.

NOTE2: If gNB-DU sends Resource Coordination Transfer Container IE to gNB-CU in step 6, the procedure described in section 5.6.15 or section 5.6.16 is used to send SgNB Resource Coordination Information IE to MeNB.

#### 5.6.18.2 F1-C IE Handling

![]({{site.baseurl}}/assets/images/88af44139eba.emf.png)

### 5.6.19 Intra gNB-DU PSCell Change using SRB3 for RRC Reconfiguration

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 3x (i.e. SN terminated split bearer) |
| Bearer type | Non-GBR bearer |
| Split SRB | Not used |

</div>

#### 5.6.19.1 Message flow for F1 - Intra gNB-DU scenario

![]({{site.baseurl}}/assets/images/4237354ba75b.emf.png)

Figure 5.6.19.1-1: Intra gNB-DU PSCell change using SRB3 for RRC Reconfiguration

NOTE: If gNB-DU sends Resource Coordination Transfer Container IE to gNB-CU in step 1c, the procedure described in section 5.6.15 or section 5.6.16 is used to send SgNB Resource Coordination Information IE to MeNB.

#### 5.6.19.2 F1-C IE Handling

![]({{site.baseurl}}/assets/images/a894f0c8ae74.emf.png)

### 5.6.20 gNB-DU configuration query

#### 5.6.20.1 Message flow for F1 - gNB-DU configuration query

![]({{site.baseurl}}/assets/images/2def95927e1f.emf.png)

Figure 5.6.20.1-1: gNB-DU configuration query

#### 5.6.20.2 F1-C IE handling

![]({{site.baseurl}}/assets/images/7b1c91f9fb43.emf.png)

### 5.6.21 DRB ID change/Security Key Change (SN initiated)

Purpose of the DRB ID change procedure is to allow SgNB to request new DRB ID from MeNB in EN-DC for an already established SN terminated bearer in case of PDCP Count wrap around. Alternatively, Security Key change can be used also with this scenario, also to avoid PDCP Count wrap around for any of DRBs or SRBs.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 3x (i.e. SN terminated split bearer) |
| Bearer type | Non-GBR bearer |
| Split SRB | Not used |
| PDCP SN Length | 18bit PDCP SN |

</div>

#### 5.6.21.1 Message flow for X2

![]({{site.baseurl}}/assets/images/4081538a7133.emf.png)

Figure 5.6.21.1-1: DRB-ID change (SN initiated) on X2

#### 5.6.21.2 X2-C IE handling

![]({{site.baseurl}}/assets/images/1033ed8ce5e9.emf.png)

#### 5.6.21.3 Message flow for X2 and F1

![]({{site.baseurl}}/assets/images/7b597fa3eb19.emf.png)

Figure 5.6.21.1-3: DRB-ID change (SN initiated) on X2 and F1

#### 5.6.21.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/68a15f0d96f7.emf.png)

### 5.6.22 Full Reconfiguration (SN initiated)

The purpose of the full reconfiguration procedure (SN initiated) is to reset PDCP COUNT using full reconfiguration option in case of PDCP Count wrap around.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 3x (i.e. SN terminated split bearer) |
| Bearer type | Non-GBR bearer |
| Split SRB | Not used |
| RRC config indication | "full config" |

</div>

#### 5.6.22.1 Message Flow for X2

![]({{site.baseurl}}/assets/images/0a7785aa07d2.emf.png)

Figure 5.6.22.1-1: Full Reconfiguration (SN initiated)

NOTE: In step 1, SgNB needs to set PDCP Change Indication IE to update S-KgNB.

#### 5.6.22.2 X2-C IE Handling

![]({{site.baseurl}}/assets/images/b151c603854b.emf.png)

#### 5.6.22.3 Message Flow for X2 and F1

![]({{site.baseurl}}/assets/images/d596075a0e91.emf.png)

Figure 5.6.22.3-1: Full Reconfiguration (SN initiated)

NOTE1: In step 1a/1b, gNB-CU needs to get the full configuration information from gNB-DU.

NOTE2: In step 1, SgNB needs to set PDCP Change Indication IE to update S-KgNB.

#### 5.6.22.4 F1-C IE Handling

![]({{site.baseurl}}/assets/images/a80991363048.emf.png)

### 5.6.23 Change of QCI (MN initiated)

Purpose of the Change of QCI procedure (MN initiated) is to modify QCI (and/or ARP) of the SN terminated split bearer. Modification is limited inside of non-GBR bearer. Trigger for the QCI change is always coming from MME.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 3x (i.e. SN terminated split bearer) |
| Bearer type | Non-GBR bearer |
| Split SRB | Not used |

</div>

#### 5.6.23.1 Message Flow for X2

![]({{site.baseurl}}/assets/images/6dd1745343d4.emf.png)

Figure 5.6.23.1-1: Change of QCI (MN initiated)

#### 5.6.23.2 X2-C IE Handling

![]({{site.baseurl}}/assets/images/337906d64594.emf.png)

#### 5.6.23.3 Message Flow for X2 and F1

![]({{site.baseurl}}/assets/images/2022ba224b09.emf.png)

Figure 5.6.23.3-1: Change of QCI (MN initiated)

#### 5.6.23.4 F1-C IE Handling

![]({{site.baseurl}}/assets/images/4467079e521f.emf.png)

### 5.6.24 Measurement ID Coordination (MN initiated)

The purpose of the measurement Id coordination performed between MN and SN is to ensure that configured measurements do not exceed the UE capabilities. In MN initiated measurement Id coordination, MN sends the maximum number of measurement identities of intra-frequency measurement to SN.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 3x (i.e. SN terminated split bearer) |
| Split SRB | Not used |

</div>

#### 5.6.24.1 Message flow for X2

![]({{site.baseurl}}/assets/images/aff00ac158a8.emf.png)

**Figure 5.6.24.1-1: Measurement ID Coordination - X2 message flow**

NOTE1: Steps 3-5 are optional and performed if there is conflict in measurement Id coordination. In this case, MN receives NR RRCReconfiguration from SN, and MN sends X2AP: SgNB Reconfiguration Complete message to SN after receiving RRC: RRCConnectionReconfigurationComplete message.

#### 5.6.24.2 X2-C IE Handling

![]({{site.baseurl}}/assets/images/b6b06771be6b.emf.png)

#### 5.6.24.3 Message flow for X2 and F1![]({{site.baseurl}}/assets/images/a08d09c36f6e.emf.png)

Figure 5.6.24.3-1: Measurement ID Coordination - X2 and F1 message flow

NOTE1: Steps 3-5 (including 5a and 5b) are optional and performed if there is conflict in measurement Id coordination. In this case, MN receives NR RRCReconfiguration from SN-CU, and MN sends X2AP: SgNB Reconfiguration Complete message to SN-CU after receiving RRC: RRCConnectionReconfigurationComplete message.

#### 5.6.24.4 F1-C IE Handling

![]({{site.baseurl}}/assets/images/2e8507ae3a13.emf.png)

### 5.6.25 Measurement ID Coordination (SN initiated)

The purpose of the measurement Id coordination performed between MN and SN is to ensure that configured measurements do not exceed the UE capabilities. In SN initiated measurement Id coordination, SN requests MN for new maximum values of the number of measurement identities that it can configure for intra-frequency measurement on each serving frequency. MN responds with the maximum number of measurement identities to SN.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 3x (i.e. SN terminated split bearer) |
| Split SRB | Not used |

</div>

#### 5.6.25.1 Message flow for X2

![]({{site.baseurl}}/assets/images/4911dff0accc.emf.png)

**Figure 5.6.25.1-1: Measurement ID Coordination (SN initiated) - X2 message flow**

NOTE1: Steps 4-6 are optional and performed if there is conflict in measurement Id coordination. In this case, MN receives NR RRCReconfiguration from SN, and MN sends X2AP: SgNB Modification Confirm message to SN after receiving RRC: RRCConnectionReconfigurationComplete message.

#### 5.6.25.2 X2-C IE Handling

![]({{site.baseurl}}/assets/images/412a820518a4.emf.png)

#### 5.6.25.3 Message flow for X2 and F1

![]({{site.baseurl}}/assets/images/29b3e0aa7783.emf.png)

**Figure 5.6.25.3-1: Measurement ID Coordination (SN initiated) - X2 and F1 message flow**

NOTE1: Steps 4-6 (including 6a and 6b) are optional and performed if there is conflict in measurement Id coordination. In this case, MN receives NR RRCReconfiguration from SN-CU, and MN sends X2AP: SgNB Modification Confirm message to SN-CU after receiving RRC: RRCConnectionReconfigurationComplete message.

#### 5.6.25.4 F1-C IE Handling

![]({{site.baseurl}}/assets/images/8135b9fcb57c.emf.png)

## 5.7 RRC Transfer

### 5.7.1 UE measurement transfer

The purpose of this procedure is to enable transfer of the NR RRC message container with the NR measurements or NR failure information from the MeNB to the en-gNB, when received from the UE.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 3x (i.e. SN terminated split bearer) |
| Split SRB | Not used |

</div>

#### 5.7.1.1 Message flow for X2

![]({{site.baseurl}}/assets/images/b00b251d6b4b.emf.png)

Figure 5.7.1.1-1: UE measurement transfer on X2

#### 5.7.1.2 X2-C IE handling

![]({{site.baseurl}}/assets/images/683bc7cb7e6f.emf.png)

## 5.8 E-UTRA - NR Cell Resource Coordination

This section provides the relevant profiling information to achieve Dynamic Spectrum Sharing (DSS) interoperability for non-UE associated procedures as defined in TS 36.423 [2] and TS 38.473 [3]. In this version of the profile, the following procedures are defined:

* E-UTRA - NR Cell Resource Coordination Request (MN initiated, Option 3x/3a)
* E-UTRA - NR Cell Resource Coordination Request (SN initiated, Option 3x/3a)

### 5.8.1 E-UTRA - NR Cell Resource Coordination (MN initiated, Option 3x/3a)

The purpose of the procedure is to exchange DSS information between MN and SN, procedure is initiated by MN.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 3x (i.e. SN terminated split bearer) (or) Option 3a (i.e. SN terminated SCG bearer) |

</div>

#### 5.8.1.1 Message flow for X2

![]({{site.baseurl}}/assets/images/0b71951e3965.emf.png)

Figure 5.8.1.1-1: E-UTRA - NR CELL RESOURCE COORDINATION REQUEST (MN Initiated) procedure

#### 5.8.1.2 X2-C IE handling

![]({{site.baseurl}}/assets/images/8098403883cb.emf.png)

#### 5.8.1.3 Message flow for X2 and F1

![]({{site.baseurl}}/assets/images/014ebd406c46.emf.png)

Figure 5.8.1.3-1: GNB-DU RESOURCE COORDINATION REQUEST procedure

#### 5.8.1.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/ac2153a47ed2.emf.png)

### 5.8.2 E-UTRA - NR Cell Resource Coordination (SN initiated, Option 3x/3a)

The purpose of the procedure is to exchange DSS information between MN and SN, procedure is initiated by SN.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 3x (i.e. SN terminated split bearer) (or)  Option 3a (i.e. SN terminated SCG bearer) |

</div>

#### 5.8.2.1 Message flow for X2

![]({{site.baseurl}}/assets/images/2877061efad4.emf.png)

Figure 5.8.2.1-1: E-UTRA - NR CELL RESOURCE COORDINATION REQUEST (SN Initiated) procedure

#### 5.8.2.2 X2-C IE handling

![]({{site.baseurl}}/assets/images/27b07b866c21.emf.png)

#### 5.8.2.3 Message flow for X2 and F1

![]({{site.baseurl}}/assets/images/9018ae27d714.emf.png)

Figure 5.8.2.3-1: GNB-DU RESOURCE COORDINATION REQUEST procedure

#### 5.8.2.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/1c21b3626187.emf.png)

# 6 NR procedures

This section provides description of control plane procedures to achieve interoperability for UE associated procedures as defined in 3GPP TS 38.401. In this version of the profile, the following procedures are defined:

* UE Initial Access and Registration Procedures
* UE Context Release
* UE Context Modification
* Inter gNB-Handover
* Intra gNB-Handover
* Inter gNB-DU Handover
* Inter RAT Handover
* RRC state transition
* RRC Connection Re-establishment
* System Information Procedures

## 6.1 UE Initial Access and Registration Procedures

This section provides description for an Initial UE Context setup request procedure and Registration Procedures.

### 6.1.1 UE context creation (service request)

Purpose of the Attach/Service Request procedure is to register a new UE in the network i.e., create a new UE context in NG-RAN. In this use case the UE context creation includes setup of DRB.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 2 (NR stand alone) |
| SUL Access Indication | Not used |
| Signalling radio bearer | SRB0 - for *RRCSetupRequest* and *RRCSetup* SRB1 and SRB2 - after *RRCSettupComplete* |
| QoS Characteristics | Non-dynamic 5QI |
| PDU session setup requested | Yes, *PDU Session Resource Setup Request List* is included in INITIAL CONTEXT SETUP REQUEST message |
| *UEAssistanceInformation* reporting by UE | Not used |
| Bearer type | Non-GBR bearer & GBR bearer |

</div>

#### 6.1.1.1 Message Flow

In case optional F1 interface is not used the use-case description collapses to Uu and NG interface which are both outside scope of this specification. Hence no further details are provided here, however the message sequences can be easily derived from the flow on the following section.

#### 6.1.1.2 Message Flow over F1

![]({{site.baseurl}}/assets/images/d6c60f824d2a.emf.png)

Figure 6.1.1.2-1: Initial access - UE context creation

NOTE1: In case UE Capabilities are not provided by AMF in message 8. INITIAL UE CONTEXT SETUP REQUEST the message sequence as shown in the options box apply with additional UE CapabilityEnquiry procedure and related RRC Transfer messages.

NOTE2: Messages 10. and 11 are send only once - depending on the need for UE capability Enquiry procedure.

NOTE3: According to Ref [4] chapter 5.3.1.1 messages 11 and 12 (UE CapabilityEnquiry) or 17 and 18 (RRC Reconfiguration) can be initiated by gNB-CU after having activated AS security before receiving message 10 and 6 (SecurityModeComplete).

#### 6.1.1.3 F1-C IE handling

![]({{site.baseurl}}/assets/images/3b2215824032.emf.png)

### 6.1.2 UE context creation (registration request)

Purpose of the procedure is to perform an initial registration of a UE in the network i.e., create a new UE context in NG- RAN for signaling only connection.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Category** | **Condition** |
| UE Connectivity option | Option 2 (NR stand alone) |
| SUL Access Indication | Not used |
| Signalling radio bearer | SRB0 - for *RRCSetupRequest* and *RRCSetup* SRB1 - after *RRCSetupComplete* |
| QoS Characteristics | Not applicable |
| PDU session setup requested | No |

</div>

#### 6.1.2.1 Message Flow

In case optional F1 interface is not used the use-case description collapses to Uu and NG interface which are both outside scope of this specification. Hence no further details are provided here, however the message sequences can be easily derived from the flow in the following section.

#### 6.1.2.2 Message Flow over F1

![]({{site.baseurl}}/assets/images/c644d449994c.emf.png)

Figure 6.1.2.2-1: Initial access - UE context creation for initial registration

NOTE1: In case UE Capabilities are not provided by AMF in message 8. INITIAL CONTEXT SETUP REQUEST the message sequence as shown in the options box applies with additional UE CapabilityEnquiry procedure and related DL and UL RRC Transfer messages

NOTE2: According to Ref [4] chapter 5.3.1.1 messages 11 / 16 can be initiated by gNB-CU after having activated ASsecurity before receiving message 10

NOTE3: It is AMF decision to include NAS message Registration Accept either in message 8 or send separate optional message 15. The illustration here is used as example and outside scope of this specification

NOTE4: NAS Authentication and Security depend on the AMF. It is outside the scope of this specification.

#### 6.1.2.3 F1-C IE handling

![]({{site.baseurl}}/assets/images/b33fd5af8778.emf.png)

### 6.1.3 Registration Update

#### 6.1.3.1 Registration Update with Follow-on request

The purpose is to perform a registration update with Follow-on request in the network.

The parameter conditions, the F1 message flow and the F1-C IE handling from section 6.1.2 apply.

#### 6.1.3.2 Registration Update without Follow-on request

The purpose is to perform a registration update without Follow-on request in the network.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Category** | **Condition** |
| UE Connectivity option | Option 2 (NR stand alone) |
| SUL Access Indication | Not used |
| Signalling radio bearer | SRB0 - for *RRCSetupRequest* and *RRCSetup* SRB1 - after *RRCSetupComplete* |
| QoS Characteristics | Not applicable |
| PDU Session setup requested | No |

</div>

##### 6.1.3.2.1 Message flow for F1

![]({{site.baseurl}}/assets/images/aa5e75f08d0d.emf.png)

Figure 6.1.3.2.1-1: Registration Update without Follow-on request

NOTE: NAS Authentication and Security depend on the AMF. It is outside the scope of this specification.

##### 6.1.3.2.2 F1-C IE handling

![]({{site.baseurl}}/assets/images/0de07586e412.emf.png)

## 6.2 UE Context Release

This section provides description for a UE Context Release procedure.

### 6.2.1 gNB-DU initiated UE Context Release

The purpose of the UE Context Release procedure is to release the logical NG-AP signaling connection and the associated User Plane connections, and RRC signaling and resources.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 2 (NR stand alone) |
| Signalling radio bearer | SRB1 |

</div>

#### 6.2.1.1 Message flow for F1

![]({{site.baseurl}}/assets/images/e82bc794e9bc.emf.png)

Figure 6.2.1.1-1: gNB-DU initiated UE Context Release

NOTE1: In case of the gNB-DU initiated UE Context Release procedure, the gNB-DU will send the UE Context Release Request message to the gNB-CU in step 1

NOTE2: In case of the NG-RAN (gNB-CU/gNB-DU) initiated UE Context Release procedure, the gNB-CU will send the UE Context Release Request message to the AMF in step 2

NOTE3: In step 4, the gNB-CU may not include the RRC-Container IE to avoid sending the RRCRelease message if it detects the disconnection from the UE.

#### 6.2.1.2 F1-C IE handling

![]({{site.baseurl}}/assets/images/89b99395850e.emf.png)

### 6.2.2 gNB-CU initiated UE Context Release

The purpose of the UE Context Release procedure is to release the logical NG-AP signaling connection and the associated User Plane connections, and RRC signaling and resources.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 2 (NR Stand Alone) |
| Signalling radio bearer | SRB1,SRB2 |

</div>

#### 6.2.2.1 Message flow for F1

There are more than one trigger to perform gNB-CU initiated UE Context Release procedure for UE state as RRC connected, for example, EPS fallback for IMS emergency call by UE Context Modification Request/Response, or EPS fallback for IMS voice call by PDU Session Resource Modify Request/Response. Both examples are depicted in the figure below with OPT1 and OPT2, respectively. OPT 3 represents the measurement based redirection procedure which is implementation specific and optionally needed for the gNB-CU initiated UE Context Release.

![]({{site.baseurl}}/assets/images/e0fbc99eb8e9.emf.png)

Figure 6.2.2.1-1: gNB-CU initiated UE Context Release

NOTE 1: NGAP message UE Context Modification Request in step 1a is received with Emergency Fallback Request Indicator for IMS emergency call

NOTE 2: NGAP message PDU Session Resource Modify Request in step 1c is received containing a request to add a "QoS Flow for 5QI=1 triggering EPS Fallback" for IMS voice call

NOTE 3: NGAP message UE Context Release Request contains UE release cause as "Redirection" for both IMS voice and IMS emergency call

#### 6.2.2.2 F1-C IE handling

![]({{site.baseurl}}/assets/images/1f61cc6266a7.emf.png)

## 6.3 UE Context Modification

This section provides a description for a UE Context Modification procedure.

### 6.3.1 gNB-CU initiated UE Context Modification

![]({{site.baseurl}}/assets/images/a76a0f89a388.emf.png)

Figure 6.3.1-1: gNB-CU initiated UE Context Modification

#### 6.3.1.1 SCell to be setup/removed

Purpose of this procedure is to setup or remove SCell(s) for a UE.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Category** | **Condition** |
| UE Connectivity option | Option 2 (NR stand alone) |

</div>

##### 6.3.1.1.1 F1-C IE handling

![]({{site.baseurl}}/assets/images/7e41f6788230.emf.png)

#### 6.3.1.2 DRB to be setup

Purpose of this procedure is to setup DRB(s) for a UE.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Category** | **Condition** |
| UE Connectivity option | Option 2 (NR stand alone) |
| Bearer type | Non-GBR bearer & GBR bearer |
| PDCP SN Length | 18bit PDCP SN |
| PDCP Duplication | Optionally used for DRBs with NR-CA based PDCP duplication with the logical channels belong to a common MAC entity. NR-CA is between Intra or Inter band carriers that are supporting Intra DU CA with common MAC entity. Duplication in UL and DL. |

</div>

NOTE1: There are more than one trigger to setup DRBs, for example, addition of QoS Flows by PDU Session Resource Setup/ Modification Request, or based on internal decision by gNB-CU

##### 6.3.1.2.1 F1-C IE handling

![]({{site.baseurl}}/assets/images/8feaf93afaf4.emf.png)

#### 6.3.1.3 DRB to be released

Purpose of this procedure is to release DRB(s) for a UE.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Category** | **Condition** |
| UE Connectivity option | Option 2 (NR stand alone) |

</div>

NOTE1: There are more than one trigger to release DRBs, for example, release of QoS Flows by PDU Session Resource Release/ Modification Request, or based on internal decision by gNB-CU.

##### 6.3.1.3.1 F1-C IE handling

![]({{site.baseurl}}/assets/images/0a5af0a7fdb1.emf.png)

#### 6.3.1.4 DRX cycle activation/deactivation

Purpose of this procedure is to activate or deactivate DRX cycle for a UE.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Category** | **Condition** |
| UE Connectivity option | Option 2 (NR stand alone) |

</div>

##### 6.3.1.4.1 F1-C IE handling

![]({{site.baseurl}}/assets/images/6adf3f4f7d32.emf.png)

#### 6.3.1.5 SRB to be released

Void

#### 6.3.1.6 DRB to be modified

Purpose of this procedure is to modify DRB(s) for a UE.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Category** | **Condition** |
| UE Connectivity option | Option 2 (NR stand alone) |
| Bearer type | Non-GBR bearer & GBR bearer |
| PDCP SN Length | 18bit PDCP SN |
| PDCP Duplication | Optionally used for DRBs with NR-CA based PDCP duplication with the logical channels belong to a common MAC entity. NR-CA is between Intra or Inter band carriers that are supporting Intra DU CA with common MAC entity. Duplication in UL and DL. |
| E-UTRAN QoS | Not used |

</div>

NOTE1: There are more than one trigger to modify DRBs, for example, modification of QoS Flows by PDU Session Resource Modify Request, or based on internal decision by gNB-CU.

##### 6.3.1.6.1 F1-C IE handling

![]({{site.baseurl}}/assets/images/b2a026335b22.emf.png)

#### 6.3.1.7 UE AMBR (for UL) modification

Purpose of this procedure is to modify the UE AMBR for UL.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Category** | **Condition** |
| UE Connectivity option | Option 2 (NR stand alone) |

</div>

NOTE1: In this use case, only the UE Context Modification procedure in Step 1-2 is performed.

NOTE2: Trigger for this use case can be a new UE AMBR received from AMF.6.3.1.7.1 F1-C IE handling

##### 6.3.1.7.1 F1-C IE handling

![]({{site.baseurl}}/assets/images/97ed41ef1d80.emf.png)

### 6.3.2 gNB-DU initiated UE Context Modification

The gNB-DU initiated UE Context Modification procedure has two variants which are supported by 3GPP. The first variant uses an explicit indication of the RRC Reconfiguration completion procedure by using the UE CONTEXT MODIFICATION REQUEST/RESPONSE message sequence. The second variant uses an implicit indication sent with the UE CONTEXT MODIFICATION CONFIRM message. Both variants are depicted in the figure below with OPT1 and OPT2, respectively.

![]({{site.baseurl}}/assets/images/08d095851873.png)

![]({{site.baseurl}}/assets/images/84beb91c3182.emf.png)

Figure 6.3.2-1: gNB-DU initiated UE Context Modification

NOTE1: The message sequence depicted as OPT 1 represents the explicit RRC reconfiguration completed indication variant

NOTE2: The message sequence depicted as OPT2 represent the implicit RRC reconfiguration completed indication variant

#### 6.3.2.1 DRB to be released

Purpose of this procedure is to release DRB(s) for a UE. For this procedure both flow variants as described in section 6.3.2 apply.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Category** | **Condition** |
| UE Connectivity option | Option 2 (NR stand alone) |

</div>

NOTE1: The trigger to release DRBs is based on internal decision by the gNB-DU.

##### 6.3.2.1.1 F1-C IE handling

![]({{site.baseurl}}/assets/images/0c99ae690c23.emf.png)

#### 6.3.2.2 DRB to be Modified

Purpose of this procedure is to modify DRB(s) for a UE. For this procedure both flow variants as described in section 6.3.2 apply.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Category** | **Condition** |
| UE Connectivity option | Option 2 (NR stand alone) |
| PDCP Duplication | Optionally used for DRBs with NR-CA based PDCP duplication with the logical channels belong to a common MAC entity. NR-CA is between Intra or Inter band carriers that are supporting Intra DU CA with common MAC entity. Duplication in UL and DL. |

</div>

NOTE1: The trigger to modify DRBs is based on internal decision by the gNB-DU. One possible trigger for this use case is PDCP CA duplication.

##### 6.3.2.2.1 F1-C IE handling

![]({{site.baseurl}}/assets/images/6e2e041e104c.emf.png)

#### 6.3.2.3 CellGroupConfig change

The purpose of this procedure is to to change CellGroupConfig. For this procedure both flow variants as described in section 6.3.2 apply.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Category** | **Condition** |
| UE Connectivity option | Option 2 (NR stand alone) |

</div>

NOTE1: The trigger to initiate the context modification is based on an internal decision by the gNB-DU or by node parameter configuration.

##### 6.3.2.3.1 F1-C IE handling

![]({{site.baseurl}}/assets/images/3a2f724b0aeb.emf.png)

### 6.3.3 QoS and QFI management

#### 6.3.3.1 PDU session establishment

The purpose of the PDU session establishment procedure is to create either the first PDU session after a UE has successfully registered with the network or an additional PDU session when one or more PDU sessions were established after registration. This procedure may include the setup of additional DRBs.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 2 (NR stand alone) |
| QoS Characteristics | Non-dynamic 5QI |
| PDCP SN Length | 18bit PDCP SN |

</div>

##### 6.3.3.1.1 Message Flow

The message flow includes the F1 interface with messages applicable to this use case. The messages 1, 2 and 12 are included to depict the context of this use case. They are not part of the F1 use cases profile specified in section 6.3.3.1.2.

![]({{site.baseurl}}/assets/images/fccc6ff3aebd.emf.png)

Figure 6.3.3.1-1: PDU session establishment

NOTE1: During the *QFI mapping decision* the gNB-CU, in addition to establishing one or more DRBs, decides if existing DRBs used by already established PDU sessions are to be modified or released due to gNB-CU internal decisions. In this case, the F1-C profiles specified in section 6.3.1.6 and 6.3.1.3 apply.

##### 6.3.3.1.2 F1-C IE handling

F1-C profile specified in section 6.3.1.2 applies. In detail, steps 4 - 11 in this use case refer to steps 1 - 8 in section 6.3.1.2.

#### 6.3.3.2 New QoS Flow with Explicit NAS Signalling

The purpose of this use case is to add a New QoS flow with explicit NAS signalling when the gNB-CU receives a new QoS flow establishment request from CN. This procedure sets up a new DRB.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Category** | **Condition** |
| UE Connectivity option | Option 2 (NR stand alone) |
| Bearer type | Non-GBR bearer & GBR bearer |
| QoS Characteristics | Non-dynamic 5QI |
| PDCP SN Length | 18bit PDCP SN |

</div>

##### 6.3.3.2.1 Message flow for F1

![]({{site.baseurl}}/assets/images/db0662b94a22.emf.png)

Figure 6.3.3.2-1: New QoS Flow with Explicit NAS Signalling

NOTE1: In step 2, the gNB-CU receives a PDU SESSION RESOURCE MODIFY REQUEST message from AMF for a new QoS flow.

NOTE2: During the *QFI mapping decision*, the gNB-CU may decide to reuse an existing DRB, or it may decide to establish a new DRB for the new QoS flow. In the case of reusing an existing DRB, the F1-C profile specified in section 6.3.1.6 applies.

##### 6.3.3.2.2 F1-C IE handling

The F1-C profile specified in section 6.3.1.2 applies. In detail, steps 4 - 11 in this use case refer to steps 1 - 8 in section 6.3.1.2.

#### 6.3.3.3 Release of QoS Flow with Explicit Signalling

The purpose is to release of QoS flow with explicit signalling when the gNB-CU receives a request to release QoS flow from CN.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Category** | **Condition** |
| UE Connectivity option | Option 2 (NR stand alone) |
| Bearer type | Non-GBR bearer & GBR bearer |
| QoS Characteristics | Non-dynamic 5QI |
| PDCP SN Length | 18bit PDCP SN |

</div>

##### 6.3.3.3.1 Message flow for F1

![]({{site.baseurl}}/assets/images/2a1d4829226e.emf.png)

Figure 6.3.3.3-1: Release of QoS Flow with Explicit Signalling

NOTE1: AMF initiates the PDU SESSION RESOURCE MODIFY REQUEST message to release a QoS flow.

NOTE2: The gNB-CU decides to release corresponding the QFI to DRB mapping rule. If the DRB carries other QoS flows, the DRB is not released.

##### 6.3.3.3.2 F1-C IE handling

![]({{site.baseurl}}/assets/images/50f05453a00e.emf.png)

## 6.4 Inter gNB-Handover

### 6.4.1 Inter gNB HO

The purpose of the Inter gNB HO is to move UE to the cell of another gNB.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 2 (NR stand alone) |
| SUL Information | Not used |
| QoS Characteristics | Non-dynamic 5QI is assumed used by AMF |
| PDCP duplication | Optionally used for DRBs with NR-CA based PDCP duplication with the logical channels belong to a common MAC entity. NR-CA is between Intra or Inter band carriers that are supporting Intra DU CA with common MAC entity. Duplication in UL and DL. |
| DL data forwarding | Used |
| UL data forwarding | Optionally Used |
| Bearer type | Non-GBR bearer & GBR bearer |

</div>

#### 6.4.1.1 Inter gNB Handover message flow for Xn

![]({{site.baseurl}}/assets/images/9fc18dd6a1df.emf.png)

Figure 6.4.1.1-1: Inter gNB Handover message flow for Xn according to [6]

#### 6.4.1.2 Xn-C IE handling

![]({{site.baseurl}}/assets/images/a3059960f441.emf.png)

#### 6.4.1.3 Inter gNB Handover message flow for Xn and F1

![]({{site.baseurl}}/assets/images/38782c33c168.emf.png)

Figure 6.4.1.3-1: Inter gNB Handover message flow for Xn and F1 according to [7]

NOTE: It is implementation specific if or when step 0 gNB-DU Configuration Query is needed for the source gNB-CU to obtain source cell configuration, in order to enable delta configuration to be used during Handover

#### 6.4.1.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/dd70086a6711.emf.png)

#### 6.4.1.5 Inter gNB Handover message flow without Xn for F1

![]({{site.baseurl}}/assets/images/e5d9ba190079.emf.png)

Figure 6.4.1.5-1: Inter gNB Handover message flow for Xn according to [8]

Note: NG messages replacing the Xn messages in 6.4.1.1 and 6.4.1.3 are presented with same numbers in steps 1, 2, and 4.

#### 6.4.1.6 F1-C IE handling

See section 6.4.1.4 .

## 6.5 Intra gNB-Handover

### 6.5.1 Intra gNB-DU, Intra Cell Handover

The purpose of the procedure is to provide Intra Cell HO e.g., in case of Security Key Change, DRBid change (PDCP Count wrap around) or Full Reconfiguration (PDCP Count wrap around) during NR operation.

In alternative 1, the gNB-CU sends the Transmission Action Indicator in UE Context Modification Request (Step 1) and the RRCReconfiguration in DL RRC Message Transfer (Step 3) to the gNB-DU.

In alternative 2, the gNB-CU sends the Transmission Action Indicator and RRCReconfiguration in UE Context Modification Request (Step 3) to the gNB-DU and the gNB-DU sends UE Context Modification Response in Step 5, in response to Step 3, to the gNB-CU.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 2 (NR stand alone) |
| Bearer type | Non-GBR bearer |
| PDCP SN Length | 18bit PDCP SN |
| SUL Access Indication | Not used |
| QoS Characteristics | Non-dynamic 5QI |

</div>

#### 6.5.1.1 Intra gNB-DU, Intra Cell Handover message flow, Alternative 1

![]({{site.baseurl}}/assets/images/19c09345d2e8.emf.png)

Figure 6.5.1.1-1: Intra gNB-DU, Intra Cell Handover according to [7]

NOTE: It is up to gNB-CU implementation whether to start sending DL User Data to gNB-DU before or after reception of the Downlink Data Delivery Status.

#### 6.5.1.2 F1-C IE handling

![]({{site.baseurl}}/assets/images/81dde81fcfeb.emf.png)

#### 6.5.1.3 Intra gNB-DU, Intra Cell Handover message flow, Alternative 2

![]({{site.baseurl}}/assets/images/3a010f54013c.emf.png)

Figure 6.5.1.3-1: Intra gNB-DU, Intra Cell Handover according to [7]

NOTE: It is up to the gNB-CU implementation whether to start sending DL User Data to gNB-DU before or after reception of the 2nd Downlink Data Delivery Status

#### 6.5.1.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/424d5408efc2.emf.png)

### 6.5.2 Intra gNB-DU, Inter Cell Handover

The purpose of the procedure is to provide UE connected mode mobility between cells of the same gNB-DU during NR operation.

In alternative 1, the gNB-CU includes the Transmission Action Indicator in UE Context Modification Request (Step 3) and includes the RRCReconfiguration in DL RRC Message Transfer (Step 5) to the gNB-DU.

In alternative 2, the gNB-CU includes Transmission Action Indicator and RRCReconfiguration in UE Context Modification Request (Step 5) to the gNB-DU and the gNB-DU sends UE Context Modification Response in Step 7, in response to Step 5, to the gNB-CU.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 2 (NR stand alone) |
| Bearer type | Non-GBR bearer |
| PDCP SN Length | 18bit PDCP SN |
| PDCP Duplication | Optionally used for DRBs with NR-CA based PDCP duplication with the logical channels belong to a common MAC entity. NR-CA is between Intra or Inter band carriers that are supporting Intra DU CA with common MAC entity. Duplication in UL and DL. |
| SUL Access Indication | Not used |

</div>

#### 6.5.2.1 Intra gNB-DU, Inter Cell Handover message flow, Alternative 1

![]({{site.baseurl}}/assets/images/04793da7a94b.emf.png)

Figure 6.5.2.1-1: Intra gNB-DU, Inter Cell Handover according to [7].

NOTE: It is up to gNB-CU implementation whether to start sending DL User Data to gNB-DU before or after reception of the Downlink Data Delivery Status

#### 6.5.2.2 F1-C IE handling

![]({{site.baseurl}}/assets/images/5b56460b22fa.emf.png)

#### 6.5.2.3 Intra gNB-DU, Inter Cell Handover message flow, Alternative 2

![]({{site.baseurl}}/assets/images/a77811778710.emf.png)

Figure 6.5.2.3-1: Intra gNB-DU, Inter Cell Handover according to [7]

NOTE: It is up to gNB-CU implementation whether to start sending DL User Data to gNB-DU before or after reception of the 2nd Downlink Data Delivery Status

#### 6.5.2.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/351bbc13655d.emf.png)

### 6.5.3 Inter gNB-DU Handover

Purpose of the procedure is to provide UE connected mode mobility within the same gNB-CU by moving to another gNB-DU during NR operation.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 2 (NR stand alone) |
| Bearer type | Non-GBR bearer |
| PDCP SN Length | 18bit PDCP SN |
| PDCP Duplication | Optionally used for DRBs with NR-CA based PDCP duplication with the logical channels belong to a common MAC entity. NR-CA is between Intra or Inter band carriers that are supporting Intra DU CA with common MAC entity. Duplication in UL and DL. |
| SUL Access Indication | Not used |
| QoS Characteristics | Non-dynamic 5QI is assumed used by AMF |

</div>

#### 6.5.3.1 Inter gNB-DU Handover message flow

![]({{site.baseurl}}/assets/images/5c8950ddf750.emf.png)

Figure 6.5.3.1-1: Inter gNB-DU Handover according to [7]

NOTE1: It is implementation specific if or when step 3. gNB-DU Configuration Query is needed for gNB-CU to obtain source cell configuration, in order to enable delta configuration to be used during Handover

NOTE2: It is up to gNB-CU implementation whether to start sending DL User Data to gNB-DU before or after reception of the Downlink Data Delivery Status.

#### 6.5.3.2 F1-C IE handling

![]({{site.baseurl}}/assets/images/69afc2316696.emf.png)

### 6.5.4 Intra gNB-DU Handover with L1/L2 Triggered Mobility (LTM)

This procedure is used for handover cases when the UE moves between cells of the same gNB-DU. The gNB-CU applies LTM and defers the actual handover decision to the gNB-DU to reduce mobility latency.

The following parameter conditions are applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 2 (NR stand alone) |
| Bearer type | Non-GBR bearer |
| PDCP SN Length | 18bit PDCP SN |
| SUL Access Indication | Not used |
| QoS Characteristics | Non-dynamic 5QI is assumed used by AMF |

</div>

#### 6.5.4.1 Intra gNB-DU Handover with L1/L2 Triggered Mobility (LTM) message flow

![]({{site.baseurl}}/assets/images/43da7daa51db.emf.png)

Figure 6.5.4.1-1: Intra gNB-DU Handover with LTM

NOTE1: After step 2 the gNB-CU decides whether to apply LTM or not. This decision is implementation specific.

NOTE2: The steps 3 and 4 are repeated if the gNB-CU prepares multiple LTM candidate cells

NOTE3: Early synchronization procedure of the UE for DL and UL on the candidate cell is in the scope of this specification

NOTE4: The steps 17 and 18 are optional and apply if the gNB-CU decides to release candidate cells for LTM, which were defined in the steps 3 and 4

#### 6.5.4.2 F1-C IE handling

![]({{site.baseurl}}/assets/images/ac2c9d8ab3ab.emf.png)

## 6.6 <void>

## 6.7 <void>

## 6.8 Inter RAT Handover

### 6.8.1 Inter RAT HO to LTE

The purpose of the Inter RAT HO to LTE is to move UE from the NR cell to the LTE cell.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 2 (NR stand alone) |
| DL data forwarding | Optionally Used |
| UL data forwarding | Not Used |

</div>

#### 6.8.1.1 Inter RAT Handover to LTE message flow

![]({{site.baseurl}}/assets/images/a94924d347bb.emf.png)

Figure 6.8.1.1-1: Inter RAT Handover to LTE message flow

#### 6.8.1.2 F1-C IE handling

![]({{site.baseurl}}/assets/images/5769b9e628af.emf.png)

### 6.8.2 Inter RAT HO to NR

The purpose of the Inter RAT HO to NR is to move UE from the LTE cell to NR cell.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 2 (NR stand alone) |
| DL data forwarding | Optionally Used |
| UL data forwarding | Not Used |
| Bearer type | Non-GBR and GBR. |

</div>

#### 6.8.2.1 Inter RAT Handover to NR message flow

![]({{site.baseurl}}/assets/images/8cadd3fc45bd.emf.png)

Figure 6.8.2.1-1: Inter RAT Handover to NR message flow

Note: gNB-CU may receive Data forwarding also optionally "directly" from eNB instead of via UPF

#### 6.8.2.2 F1-C IE handling

![]({{site.baseurl}}/assets/images/279181858554.emf.png)

## 6.9 RRC state transition

### 6.9.1 RRC connected to RRC inactive

This use case profiles F1 procedures for the RRC state transition of a UE from RRC connected to RRC inactive. The use case is specified in [7] chapter 8.6.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 2 (NR stand alone) |

</div>

#### 6.9.1.1 RRC connected to RRC inactive message flow

![]({{site.baseurl}}/assets/images/531105bc99cd.emf.png)

Figure 6.9.1.1-1: RRC connected to RRC inactive message flow

#### 6.9.1.2 F1-C IE handling

![]({{site.baseurl}}/assets/images/748eb018740e.emf.png)

### 6.9.2 RRC inactive to RRC connected (Intra gNB-CU)

This use case describes the F1 procedures use during UE transition from RRC inactive to RRC connected state with UP data exchange option.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 2 (NR stand alone) |

</div>

#### 6.9.2.1 RRC inactive to RRC connected message flow

![]({{site.baseurl}}/assets/images/e786fabc605b.emf.png)

Figure 6.9.2.1-1: RRC inactive to RRC connected message flow

NOTE1: Optionally in case of DL data or DL signaling arrival paging procedure as shown in step 1 is triggered by gNB-CU

#### 6.9.2.2 F1-C IE handling

![]({{site.baseurl}}/assets/images/8e84fa94d70c.emf.png)

### 6.9.3 RRC inactive to RRC connected (Inter gNB-CU)

This use case describes the procedures during UE transition from RRC inactive to RRC connected state.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 2 (NR stand alone) |
| DL data forwarding | Optionally used |
| UL data forwarding | Not used |

</div>

#### 6.9.3.1 RRC inactive to RRC connected message flow for Xn

![]({{site.baseurl}}/assets/images/ed72b5aeb1ee.emf.png)

Figure 6.9.3.1-1: RRC inactive to RRC connected message flow

NOTE1: The UE resumes from RRC\_INACTIVE due to a network triggered transition, i.e. a RAN paging event occurs (due to e.g., incoming DL User plane traffic or DL signalling from 5GC) or due to a UE triggered transition.

NOTE2: The Receiving gNB may trigger the Xn-U Address Indication procedure (step 6) with forwarding addresses to prevent loss of DL user data buffered in the last serving gNB.

#### 6.9.3.2 Xn-C IE handling

![]({{site.baseurl}}/assets/images/b657f217a0fe.emf.png)

#### 6.9.3.3 RRC inactive to RRC connected message flow for Xn and F1

![]({{site.baseurl}}/assets/images/65ada40d576c.emf.png)

Figure 6.9.3.3-1: RRC Connection Re-establishment (Inter gNB-CU) - Xn and F1 message flow

NOTE1: The UE resumes from RRC\_INACTIVE due to a network triggered transition, i.e. a RAN paging event occurs (due to e.g., incoming DL User plane traffic or DL signalling from 5GC) or due to a UE triggered transition.

NOTE2: The Receiving gNB may trigger the Xn-U Address Indication procedure (step 6) with forwarding addresses to prevent loss of DL user data buffered in the last serving gNB

#### 6.9.3.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/a1077de7a9b4.emf.png)

## 6.10 RRC Connection Re-establishment

### 6.10.1 RRC Connection Re-establishment (Intra gNB-DU)

Purpose of the RRC Connection Re-establishment (Intra gNB-DU) procedure is to reestablish the RRC connection to the same gNB-DU that was serving the UE prior to the failure.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 2 (NR stand alone) |
| Signalling radio bearer | SRB0, SRB1 |

</div>

#### 6.10.1.1 Message flow for F1

![]({{site.baseurl}}/assets/images/6887c4acda6b.emf.png)

Figure 6.10.1.1-1: RRC Connection Re-establishment (Intra gNB-DU)

#### 6.10.1.2 F1-C IE handling

![]({{site.baseurl}}/assets/images/2e68113fb881.emf.png)

### 6.10.2 RRC Connection Re-establishment (Inter gNB-DU)

Purpose of the RRC Connection Re-establishment (Inter gNB-DU) procedure is to reestablish the RRC connection to the new gNB-DU other than the gNB-DU that was serving the UE prior to the failure.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 2 (NR stand alone) |
| Signalling radio bearer | SRB0, SRB1 |

</div>

#### 6.10.2.1 Message flow for F1

![]({{site.baseurl}}/assets/images/4702dc095137.emf.png)

Figure 6.10.2.1-1: RRC Connection Re-establishment (Inter gNB-DU)

NOTE1: It is implementation specific if or when gNB-DU Configuration Query procedure is needed for the gNB-CU to obtain source cell configuration in order to enable delta configuration to be used during re-establishment

#### 6.10.2.2 F1-C IE handling

![]({{site.baseurl}}/assets/images/a57f1ced6b1a.emf.png)

### 6.10.3 RRC Connection Re-establishment reject with RRC Setup

Void

### 6.10.4 RRC Connection Re-establishment (Inter gNB-CU)

The purpose of the RRC Connection Re-establishment (Inter gNB-CU) procedure is to reestablish the RRC connection to a new (target) gNB-CU and gNB-DU other than the source gNB-CU and gNB-DU that served the UE prior to the failure.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | Option 2 (NR stand alone) |
| Signalling radio bearer | SRB0, SRB1 |
| DL data forwarding | Optionally Used |
| UL data forwarding | Optionally Used |

</div>

#### 6.10.4.1 Message flow for Xn

![]({{site.baseurl}}/assets/images/a509db3da0f9.emf.png)

Figure 6.10.4.1-1: RRC Connection Re-establishment (Inter gNB-CU) - Xn message flow

#### 6.10.4.2 Xn-C IE handling

![]({{site.baseurl}}/assets/images/4883d31457e6.emf.png)

#### 6.10.4.3 Message flow for Xn and F1

![]({{site.baseurl}}/assets/images/0e764386c22d.emf.png)

Figure 6.10.4.3-1: RRC Connection Re-establishment (Inter gNB-CU) - Xn and F1 message flow

#### 6.10.4.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/163270c81e9d.emf.png)

## 6.11 System Information Procedures

### 6.11.1 System Information Delivery

The purpose of the System Information Delivery procedure is to command the gNB-DU to broadcast the requested
Other SI. The procedure uses non-UE associated signalling.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | NR stand alone |

</div>

#### 6.11.1.1 Message flow for F1

![]({{site.baseurl}}/assets/images/8fa04c53b2a8.emf.png)

Figure 6.11.1.1-1: System Information Delivery (NR stand alone) - F1 message flow

NOTE1: The gNB-DU Configuration Update procedure may be performed in OPT1 to indicate for UEs that are unable to receive system information from broadcast. The gNB-CU shall inform the UEs with the updated system information via the dedicated RRC message, these procedures are outside scope of this version of the specification.

#### 6.11.1.2 F1-C IE handling

![]({{site.baseurl}}/assets/images/1a91879caa57.emf.png)

## 6.12 PDU session establishment after signalling-only connection

The purpose of the PDU session establishment after signalling-only connection procedure is to create a PDU session before establishment of SRB2 and DRB.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Category** | **Condition** |
| UE Connectivity option | Option 2 (NR stand alone) |
| Signalling radio bearer | SRB0, SRB1 |
| QoS Characteristics | Non-dynamic 5QI |
| Bearer type | Non-GBR bearer & GBR bearer |

</div>

### 6.12.1 Message Flow for F1

![]({{site.baseurl}}/assets/images/42e2c28ae870.emf.png)

Figure 6.12.1-1: PDU session establishment after signalling-only connection

NOTE1: For step 1 the F1-C profile specified in section 6.1.2 apply

### 6.12.2 F1-C IE handling

![]({{site.baseurl}}/assets/images/64a126162355.emf.png)

# 7 NR-DC procedures

This section provides description of control plane procedures to achieve interoperability for NR-DC procedures as defined in Ref [1]. In this version of the profile, the following procedures are defined:

* S-NG-RAN node addition
* S-NG-RAN node modification
* S-NG-RAN node release
* NG-RAN node configuration update
* RRC Transfer
* Master Node to gNB Change
* Inter-Master Node Handover
* S-NG-RAN Node Change

## 7.1 S-NG-RAN NODE ADDITION

This section provides description of S-NG-RAN node addition procedure. Purpose is to establish a UE context at the SN in order to provide resources from the SN to the UE.

### 7.1.1 S-NG-RAN Node Addition

Purpose of the S-NG-RAN Node Addition procedure is to establish the UE context and relevant resources at the S-NG-RAN node.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | NR-DC stand alone, SN terminated split bearer option |
| Signalling radio bearer | SRB1 (SRB3 optionally used) |
| Bearer type | Non-GBR bearer |
| Split SRB | Not used |
| QoS Characteristics | Non-dynamic 5QI |
| PDCP duplication | Optionally used for DRBs; duplication in UL and DL, but limited to 1 RLC per gNB-DU |
| PDU Session split at UPF | Not supported |
| SUL Information | Not used |
| DL data forwarding | Used |
| UL data forwarding | Optionally Used |

</div>

#### 7.1.1.1 Message flow for Xn

![]({{site.baseurl}}/assets/images/b210f08da86d.emf.png)

Figure 7.1.1.1-1: S-NG-RAN Node Addition procedure - Xn message flow

NOTE1: UL Data Forwarding is executed optionally in step 9

NOTE2: This is a clarification of Step1, CG-ConfigInfo>configRestrictInfo. The list of band combinations sent by MN shall not restrict SN's selection process for suitable SCG bands provided by UE. Any down-selection by MN shall only be applied on PCell band.

NOTE3: This is a clarification of Step1, CG-ConfigInfo>configRestrictInfo. MN sorts Allowed BC (bandCombinationIndex, FeatureSetEntryIndex) in order of MN recommendation and transmits to SN. And SN decides on its own priorities. In case there are multiple matches with same priorities for SN only then the MN preference takes effect by fetching the one that is matching SN preference AND is highest on MN preference.

#### 7.1.1.2 Xn-C IE handling

![]({{site.baseurl}}/assets/images/f43e4ad29c36.emf.png)

#### 7.1.1.3 Message flow for Xn and F1

![]({{site.baseurl}}/assets/images/359d42d74c27.emf.png)

Figure 7.1.1.3-1: S-NG-RAN Node Addition procedure - Xn and F1 message flow

NOTE1: UL Data Forwarding is executed optionally in step 9

NOTE2: This is a clarification of Step1, CG-ConfigInfo>configRestrictInfo. The list of band combinations sent by MN-CU shall not restrict SN-DU's selection process for suitable SCG bands provided by UE. Any down-selection by MN-CU shall only be applied on PCell band.

NOTE3: This is a clarification of Step1, CG-ConfigInfo>configRestrictInfo. MN-DU sorts Allowed BC (bandCombinationIndex, FeatureSetEntryIndex) in order of MN-DU recommendation and MN-CU transmits to SN-CU. And SN-DU decides on its own priorities. In case there are multiple matches with same priorities for SN-DU only then the MN-DU preference takes effect by fetching the one that is matching SN-DU preference AND is highest on MN-DU preference.

#### 7.1.1.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/8572146fa3a2.emf.png)

## 7.2 S-NG-RAN NODE MODIFICATION

This section provides description of S-NG-RAN node modification. It can be initiated either by the MN or by the SN and be used to modify the current user plane resource configuration or to modify other properties of the UE context within the same SN.

### 7.2.1 M-NG-RAN node initiated SN modification

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | NR-DC stand alone, SN terminated split bearer option. |
| Bearer type | Non-GBR bearer |
| Split SRB | Not used |
| Signaling radio bearer | SRB1 |
| SUL Information | Not used |
| QoS Characteristics | Non-dynamic 5QI |
| PDCP duplication | Optionally used for DRBs; duplication in UL and DL, but limited to 1 RLC per gNB-DU |
| PDU Session split at UPF | Not supported |

</div>

#### 7.2.1.1 PDU Session addition

Purpose of the PDU Session Addition is to setup new PDU Session as SN terminated split bearer. PDU Session Addition will always result new DRB addition in SN.

##### 7.2.1.1.1 Message flow for Xn

![]({{site.baseurl}}/assets/images/1df6a36101c3.emf.png)

Figure 7.2.1.1.1-1: MN initiated SN Modification - PDU Session addition

NOTE1: If SN terminated split bearer is added directly from new PDU Session Setup from AMF(blind addition), without PDU Session in MN terminated MCG bearer on MN side, step 7 and step 8 are not needed.

##### 7.2.1.1.2 Xn-C IE handling

![]({{site.baseurl}}/assets/images/be6d6f55a4bf.emf.png)

##### 7.2.1.1.3 Message flow for Xn and F1

![]({{site.baseurl}}/assets/images/4a144837635c.emf.png)

Figure 7.2.1.1.3-1: MN initiated SN Modification - PDU Session addition

NOTE1: If SN terminated split bearer is added directly from new PDU Session Setup from AMF (blind addition), without PDU Session in MN terminated MCG bearer on MN side, step 7 and step 8 are not needed and the *DRB to Be Setup List* IE of step 2a and *DRB Setup List* IE of step 2b are used as the 7.1.1.4 F1-C IE handling.

##### 7.2.1.1.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/fc448dfc6607.emf.png)

#### 7.2.1.2 PDU Session Release

The purpose of the MN initiated PDU Session release is to release all Qos flows of the PDU Session(s) from the UE and UE will keep at least one PDU Session after the completion of the PDU Session Release procedure. PDU Session Release will always result in at least one DRB release also.

##### 7.2.1.2.1 Message flow for Xn

![]({{site.baseurl}}/assets/images/afa2fa2de05a.emf.png)

Figure 7.2.1.2.1-1: MN initiated SN Modification - PDU Session Release

NOTE1: Steps 3, 7 and step 8 are needed when PDCP termination point is moved from SN to MN with data forwarding of the released DRB/PDU session is requested by SN and MN accepted.

NOTE2: Step 9 is optional

##### 7.2.1.2.2 Xn-C IE handling

![]({{site.baseurl}}/assets/images/4f1739821522.emf.png)

##### 7.2.1.2.3 Message flow for Xn and F1

![]({{site.baseurl}}/assets/images/180e004e210a.emf.png)

Figure 7.2.1.2.3-1: MN initiated SN Modification - PDU Session Release

NOTE: In Step 2a, DRB(s) modification is done in case of PDU Session is kept in MN and PDCP termination point moved from SN to MN. DRB(s) Release is done when PDU Session is released also from MN.

##### 7.2.1.2.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/54a231cdc312.emf.png)

#### 7.2.1.3 PDU Session Modification

##### 7.2.1.3.1 PDU Session Modification with QoS flow addition

Purpose of the PDU Session Modification with QoS flow addition is to add QoS Flow to existing PDU Session. Since PDU Session split at UPF, is not supported, the QoS flow will be added always directly as SN terminated split bearer without data forwarding/QoS flow offloading needed from MN. QoSs flow addition may cause DRB addition or DRB modification for DRB which has already QoSs flow(s) from same PDU Session.

###### 7.2.1.3.1.1 Message flow for Xn

![]({{site.baseurl}}/assets/images/3b854a66fa08.emf.png)

Figure 7.2.1.3.1-1: MN initiated SN Modification - PDU Session modification, QoS flow Add

NOTE1: Step 3 is needed only in case of DRB is added

###### 7.2.1.3.1.2 Xn-C IE handling

![]({{site.baseurl}}/assets/images/a9d4dc2b1794.emf.png)

###### 7.2.1.3.1.3 Message flow for Xn and F1

![]({{site.baseurl}}/assets/images/d1945d3e2217.emf.png)

Figure 7.2.1.3.3-1: MN initiated SN Modification - PDU Session modification, QoS flow Add

###### 7.2.1.3.1.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/4b581ba7dc11.emf.png)

##### 7.2.1.3.2 PDU Session Modification with QoS flow release

The purpose of the PDU Session Modification with QoS flow release is to release a QoS flow from existing PDU Session without releasing the compete PDU Session. Since PDU Session split at UPF, is not supported, data forwarding/QoS flow offloading cannot be supported. QoS flow release may cause DRB release or DRB modification with removing QoS flow from DRB containing QoS flow(s) from same PDU Session.

###### 7.2.1.3.2.1 Message flow for Xn

![]({{site.baseurl}}/assets/images/cce367dfe5fd.emf.png)

Figure 7.2.1.3.2.1-1: MN initiated SN Modification - PDU Session modification, QoS flow Rel

NOTE: The secondary RAT data volume reporting function is performed optionally in Step 6

###### 7.2.1.3.2.2 Xn-C IE handling

![]({{site.baseurl}}/assets/images/4455702a816b.emf.png)

###### 7.2.1.3.2.3 Message flow for Xn and F1

![]({{site.baseurl}}/assets/images/fe6696285f88.emf.png)

Figure 7.2.1.3.2.3-1: MN initiated SN Modification - PDU Session modification, QoS flow Rel

###### 7.2.1.3.2.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/c11959a0254f.emf.png)

##### 7.2.1.3.3 PDU Session Modification with 5QI change

The purpose of the PDU Session Modification with 5QI change is to modify a 5QI (and/or ARP) of the SN terminated split QoS flow from an existing PDU Session. A 5QI change is always triggered by an AMF.

###### 7.2.1.3.3.1 Message flow for Xn

![]({{site.baseurl}}/assets/images/9fb4345dc857.emf.png)

Figure 7.2.1.3.3.1-1: MN initiated SN Modification - PDU Session modification, 5QI change

###### 7.2.1.3.3.2 Xn-C IE handling

![]({{site.baseurl}}/assets/images/4ccfd70a08d0.emf.png)

###### 7.2.1.3.3.3 Message flow for Xn and F1

![]({{site.baseurl}}/assets/images/479ea404bc32.emf.png)

Figure 7.2.1.3.3.3-1: MN initiated SN Modification - PDU Session modification, 5QI change

Note: Steps 2a/b can be also before Step 1, depending on the MN decision when DL UP tunneling end points of the split bearer on MN side is located in MN-DU.

###### 7.2.1.3.3.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/915d0501cfde.emf.png)

#### 7.2.1.4 Security Key change

##### 7.2.1.4.1 Message flow for Xn

![]({{site.baseurl}}/assets/images/492d75688cd0.emf.png)

Figure 7.2.1.4.1-1: MN initiated SN Modification - Security Key Change

##### 7.2.1.4.2 Xn-C IE handling

![]({{site.baseurl}}/assets/images/db2b39d37a52.emf.png)

##### 7.2.1.4.3 Message flow for Xn and F1

![]({{site.baseurl}}/assets/images/d452f48f0585.emf.png)

Figure 7.2.1.4.3-1: MN initiated SN Modification - Security Key Change

##### 7.2.1.4.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/3a7df371c90a.emf.png)

#### 7.2.1.5 SCG Configuration Query

The MN uses the procedure to query the current SCG configuration, e.g. when delta configuration is applied in an MN initiated SN change.

##### 7.2.1.5.1 Message flow for Xn

![]({{site.baseurl}}/assets/images/92d7f9a8aead.emf.png)

Figure 7.2.1.5.1-1: MN initiated SN Modification - SCG Config Query

##### 7.2.1.5.2 Xn-C IE handling

![]({{site.baseurl}}/assets/images/20af302be15a.emf.png)

##### 7.2.1.5.3 Message flow for Xn and F1

![]({{site.baseurl}}/assets/images/687fae314914.emf.png)

Figure 7.2.1.5.3-1: MN initiated SN Modification - SCG Config Query + DU Config Query

##### 7.2.1.5.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/188a6f3816e8.emf.png)

#### 7.2.1.6 Allowed Band Combination list update

The purpose of this section is to describe how the MN updates the Allowed Band Combination list previously notified to the SN to the current Allowed Band Combinations.

##### 7.2.1.6.1 Message flow for Xn

![]({{site.baseurl}}/assets/images/152fa484e560.emf.png)

Figure 7.2.1.6.1-1: MN initiated SN Modification - Allowed Band Combination list update

NOTE1: In step 1, Allowed Band Combination list update may be triggered by e.g. at PCell or SCell change or when removing an NR-SCell.

NOTE2: In steps 4-6, if MN received NR RRCReconfiguration from SN, MN shall send XnAP: S-Node Reconfiguration Complete message to SN after receiving RRC: RRCReconfigurationComplete message.

##### 7.2.1.6.2 Xn-C IE handling

![]({{site.baseurl}}/assets/images/6b14f9226be2.emf.png)

##### 7.2.1.6.3 Message flow for Xn and F1

![]({{site.baseurl}}/assets/images/f1e3a9ac1364.emf.png)

Figure 7.2.1.6.3-1: MN initiated SN Modification - Allowed Band Combination list update

NOTE1: In step 1, Allowed Band Combination list update may be triggered by e.g. at PCell or SCell change or when removing an NR-SCell.

NOTE2: In steps 3a-6b, if MN-CU received NR RRCReconfiguration from SN-CU, MN-CU shall send XnAP: S-Node Reconfiguration Complete message to SN-CU after receiving RRC: RRCReconfigurationComplete message.

##### 7.2.1.6.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/28585fb23698.emf.png)

#### 7.2.1.7 PCell Change (Intra-MN)

Purpose of the PCell Change (Intra MN) (MN initiated) procedure is to update the SCG configuration in the S-NG-RAN node, as a result of the PCell Change procedure being performed in the M-NG-RAN node.

##### 7.2.1.7.1 Message flow for Xn

![]({{site.baseurl}}/assets/images/ba53c27c8f27.emf.png)Figure 7.2.1.7.1-1: MN initiated SN Modification - PCell Change (Intra-MN)

NOTE1: If the PCell Change that requires an SN security key change is performed at the MN, step 2 (OPT) shall be performed.

##### 7.2.1.7.2 Xn-C IE handling

![]({{site.baseurl}}/assets/images/f4ccb007808f.emf.png)

##### 7.2.1.7.3 Message flow for Xn and F1

![]({{site.baseurl}}/assets/images/a092f2e79405.emf.png)Figure 7.2.1.7.3-1: MN initiated SN Modification - PCell Change (Intra-MN)

NOTE1: If the PCell Change that requires an SN security key change is performed at the MN, step 2 (OPT) shall be performed.

##### 7.2.1.7.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/8b4b3039b545.emf.png)

#### 7.2.1.8 Measurement Gap Coordination Procedure (MN initiated)

The purpose of the measurement gap coordination is to update the measurement configuration in the SN, when a measurement report is received by the MN from the UE or triggered by configuration data in the MN.

##### 7.2.1.8.1 Message flow for Xn

![]({{site.baseurl}}/assets/images/a55ae4620b29.emf.png)

**Figure 7.2.1.8.1-1: Measurement Gap Coordination (MN initiated) - Xn message flow**

##### 7.2.1.8.2 Xn-C IE Handling

![]({{site.baseurl}}/assets/images/93b3f14ad049.emf.png)

##### 7.2.1.8.3 Message flow for Xn and F1

![]({{site.baseurl}}/assets/images/76c58df3a8c3.emf.png)

**Figure 7.2.1.8.3-1: Measurement Gap Coordination (MN-initiated) - Xn and F1 message flow**

NOTE1: Steps 5a and 5b are optional, executed if SCG CellGroupConfig was changed

##### 7.2.1.8.4 F1-C IE Handling

![]({{site.baseurl}}/assets/images/6d40f3e34eab.emf.png)

### 7.2.2 S-NG-RAN node initiated SN modification with MN involvement

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | NR-DC stand alone, SN terminated split bearer option. |
| Bearer type | Non-GBR bearer |
| Split SRB | Not used |
| SUL Information | Not used |
| QoS Characteristics | Non-dynamic 5QI |
| PDCP duplication | Optionally used for DRBs; duplication in UL and DL, but limited to 1 RLC per gNB-DU |
| PDU Session split at UPF | Not supported |

</div>

#### 7.2.2.1 PDU Session Modification

Void

#### 7.2.2.2 PDU Session Release

The purpose of the procedure is for SN initiate PDU Session release with releasing all Qos flows of the PDU Session(s) from the UE and UE will keep at least one PDU Session after the completion of the PDU Session Release procedure. The procedure will result always in at least one DRB release.

##### 7.2.2.2.1 Message flow for Xn

![]({{site.baseurl}}/assets/images/5fa6241dd0f8.emf.png)

Figure 7.2.2.2.1-1: SN initiated SN Modification with MN involvement - PDU Session Release

NOTE1: The steps 5 and 6 are needed when PDU session is kept in MN and related SN terminated split bearers moved to MN terminated MCG bearers with forwarding supported

NOTE2: Step 7 is optional

##### 7.2.2.2.2 Xn-C IE handling

![]({{site.baseurl}}/assets/images/97e9778ee871.emf.png)

##### 7.2.2.2.3 Message flow for Xn and F1

![]({{site.baseurl}}/assets/images/ce4f5c5ca121.emf.png)

Figure 7.2.2.2.3-1: SN initiated SN Modification with MN involvement - PDU Session Release

##### 7.2.2.2.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/f0eb3e27feea.emf.png)

#### 7.2.2.3 Security Key Change

Purpose of the Security Key Change procedure is for SN to initiate Security Key Change in both SN and MN and inform it to the UE.

##### 7.2.2.3.1 Message flow for Xn

![]({{site.baseurl}}/assets/images/bd2db1f238fc.emf.png)

Figure 7.2.2.3.1-1: SN initiated SN Modification with MN involvement - Security Key Change

NOTE: Since only SN security key is provided in step 2, the MN does not need to wait for the reception of step 3 to initiate the RRC connection reconfiguration procedure.

##### 7.2.2.3.2 Xn-C IE handling

##### ![]({{site.baseurl}}/assets/images/951ac324a127.emf.png)7.2.2.3.3 Message flow for Xn and F1

![]({{site.baseurl}}/assets/images/04eb1d5a5989.emf.png)

Figure 7.2.2.3.3-1: SN initiated SN Modification with MN involvement - Security Key Change

##### 7.2.2.3.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/0b7593995ec4.emf.png)

#### 7.2.2.4 PSCell change, Intra gNB-DU

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | NR-DC stand alone, SN terminated split bearer option |
| Bearer type | Non-GBR bearer |
| Conditinal PSCell change | Not used |
| Split SRB | Not used |
| Signaling radio bearer | SRB1 |
| RRC config indication | "delta config" or "full config" |

</div>

##### 7.2.2.4.1 Message flow for Xn

![]({{site.baseurl}}/assets/images/97051af0828d.emf.png)

**Figure 7.2.2.4-1:** **SN initiated SN Modification with MN involvement - PSCell Change**

NOTE1: Above message flow represents the case where RRC Measurement Report (section 7.5.1) is handled via SRB1

NOTE2: The step 9 message *SN Status Transfer* is sent when RRC full configuration is not used

NOTE3: The step 10 message *Secondary RAT Data Usage Report* is optionally sent

##### 7.2.2.4.2 Xn-C IE Handling

![]({{site.baseurl}}/assets/images/bf2c1e0f281e.emf.png)

##### 7.2.2.4.3 Message flow for Xn and F1

![]({{site.baseurl}}/assets/images/3acb9301e23f.emf.png)

**Figure 7.2.2.4-2: SN initiated SN Modification with MN involvement - PSCell Change**

##### 7.2.2.4.4 F1-C IE Handling

![]({{site.baseurl}}/assets/images/967dd43998fa.emf.png)

#### 7.2.2.5 PSCell change, Inter gNB-DU

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | NR-DC stand alone, SN terminated split bearer option |
| Bearer type | Non-GBR bearer |
| Conditional PSCell change | Not used |
| Split SRB | Not used |
| Signaling radio bearer | SRB1 |
| RRC config indication | "delta config" or "full config" |

</div>

##### 7.2.2.5.1 Message flow for Xn

![]({{site.baseurl}}/assets/images/514a24ea8737.emf.png)

**Figure 7.2.2.5-1: SN initiated SN Modification with MN involvement - PSCell Change, Inter-DU**

NOTE1: Above message flow represents the case where RRC Measurement Report (section 7.5.1) is handled via SRB1

NOTE2: The step 9 message *SN Status Transfer* is sent when RRC full configuration is not used

NOTE3: The step 10 message *Secondary RAT Data Usage Report* is optionally sent

##### 7.2.2.5.2 Xn-C IE Handling

![]({{site.baseurl}}/assets/images/cda2ec263155.emf.png)

##### 7.2.2.5.3 Message flow for Xn and F1

![]({{site.baseurl}}/assets/images/773dcb72f116.emf.png)

**Figure 7.2.2.5-2: SN initiated SN Modification with MN involvement - PSCell Change, Inter-DU**

NOTE1: The step 1a and 1b is not needed when the SN-CU determines the RRC full configuration information

NOTE2: If the CU to DU RRC Information IE does not include source cell group configuration in the step 1c, the gNB-DU shall generate the cell group configuration using full configuration. Otherwise, delta configuration is allowed.

##### 7.2.2.5.4 F1-C IE Handling

![]({{site.baseurl}}/assets/images/59d3ab6a9c19.emf.png)

#### 7.2.2.6 UL Configuration Update

The purpose of the UL Configuration Update (SN initiated) procedure is to update the UL PDCP configuration for the S-NG-RAN node and indicate it to the M-NG-RAN node.

##### 7.2.2.6.1 Message flow for Xn

![]({{site.baseurl}}/assets/images/dff3b924add9.emf.png)

Figure 7.2.2.6.1-1: SN initiated SN Modification with MN involvement - UL Configuration Update

##### 7.2.2.6.2 Xn-C IE handling

![]({{site.baseurl}}/assets/images/4c3bc513d41e.emf.png)

##### 7.2.2.6.3 Message flow for Xn and F1

![]({{site.baseurl}}/assets/images/a31f7194f95c.emf.png)

**Figure 7.2.2.6.3-1: SN initiated SN Modification with MN involvement - UL Configuration Update**

NOTE1: If the MN-CU decides to update the MCG UL Configuration, steps 2a and 2b shall be performed in order to indicate to the MN-DU that the UL Configuration is to be updated.

##### 7.2.2.6.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/25f9ec3ca1ee.emf.png)

#### 7.2.2.7 Measurement Gap Coordination Procedure (SN initiated)

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | NR-DC stand alone, SN terminated split bearer option |
| Bearer type | Non-GBR bearer |
| Split SRB | Not used |
| Signaling radio bearer | SRB1 |

</div>

##### 7.2.2.7.1 Message flow for Xn

![]({{site.baseurl}}/assets/images/2ea46a80180a.emf.png)

**Figure 7.2.2.7.1-1: Measurement Gap Coordination (SN initiated) - Xn message flow**

NOTE1: MN ignores the 1st *scg-CellGroupConfig* IE received in S-Node Modification Required message in step 1 if it receives a 2nd *scg-CellGroupConfig* IE in S-Node Modification Request Acknowledge message in step 3.

##### 7.2.2.7.2 Xn-C IE Handling

![]({{site.baseurl}}/assets/images/daa253185b76.emf.png)

##### 7.2.2.7.3 Message flow for Xn and F1

**![]({{site.baseurl}}/assets/images/a8f712e208a7.emf.png)**

**Figure 7.2.2.7.3-1: Measurement Gap Coordination (SN initiated) - Xn and F1 message flow**

##### 7.2.2.7.4 F1-C IE Handling

![]({{site.baseurl}}/assets/images/db0c5134cc9c.emf.png)

#### 7.2.2.8 CellGroupConfig change (SN-DU initiated)

The following parameter condition is applied for this procedure. The purpose of this procedure is to change the CellGroupConfig.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | NR-DC stand alone, SN terminated split bearer option |
| Bearer type | Non-GBR bearer |
| Split SRB | Not used |
| Signaling radio bearer | SRB1 |

</div>

NOTE1: The trigger to initiate the context modification is based on an internal decision by the gNB-DU or by node parameter configuration.

##### 7.2.2.8.1 Message flow for Xn

![]({{site.baseurl}}/assets/images/22391e12f70a.emf.png)

**Figure: 7.2.2.8.1-1: CellGroupConfig change (SN-DU initiated) - Xn message flow**

##### 7.2.2.8.2 Xn-C IE Handling

![]({{site.baseurl}}/assets/images/375b4361e60c.emf.png)

##### 7.2.2.8.3 Message flow for Xn and F1

**![]({{site.baseurl}}/assets/images/9b7dc73f1a6c.emf.png)**

**Figure 7.2.2.8.3-1: CellGroupConfig change (SN-DU initiated) - Xn and F1 message flow**

##### 7.2.2.8.4 F1-C IE Handling

![]({{site.baseurl}}/assets/images/098edb67cbc9.emf.png)

### 7.2.3 S-NG-RAN node initiated SN modification without MN involvement

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | NR-DC stand alone, SN terminated split bearer option. |
| Bearer type | Non-GBR bearer |
| Split SRB | Not used |
| SUL Information | Not used |
| QoS Characteristics | Non-dynamic 5QI |
| PDCP duplication | Optionally used for DRBs; duplication in UL and DL, but limited to 1 RLC per gNB-DU |
| PDU Session split at UPF | Not supported |

</div>

#### 7.2.3.1 SRB3 not supported

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| Signalling radio bearer | SRB3 not used. |

</div>

##### 7.2.3.1.1 SN Modification - Scell(s) Addition / Release

Purpose of the SN Modification is to add or release SCell(s) to SN without MN involvement. Since SRB3 is not supported, RRC messages used to configure UE are sent via MN, but MN is not involved in other way in procedure.

###### 7.2.3.1.1.1 Message flow for Xn

![]({{site.baseurl}}/assets/images/7ec29b7ba3f1.emf.png)

Figure 7.2.3.1.1.1-1: SN initiated SN Modification without MN involvement - Scell(s) Addition/Release

###### 7.2.3.1.1.2 Xn-C IE handling

![]({{site.baseurl}}/assets/images/74f754387239.emf.png)

###### 7.2.3.1.1.3 Message flow for Xn and F1

![]({{site.baseurl}}/assets/images/f459328b0d55.emf.png)

Figure 7.2.3.1.1.3-1: SN initiated SN Modification without MN involvement - Scell(s) Addition/Release

###### 7.2.3.1.1.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/454072213474.emf.png)

#### 7.2.3.2 SRB3 supported

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| Signalling radio bearer | SRB3 used |

</div>

##### 7.2.3.2.1 Intra gNB-DU PSCell Change using SRB3

The purpose of the procedure is to provide Intra gNB-DU PSCell Change using SRB3.

###### 7.2.3.2.1.1 Message flow for Xn

![]({{site.baseurl}}/assets/images/093d1138275e.emf.png)

Figure 7.2.3.2.1.1-1: SN initiated SN Modification without MN involvement - Intra gNB-DU PSCell Change using SRB3

###### 7.2.3.2.1.2 Xn-C IE handling

![]({{site.baseurl}}/assets/images/f75ff94d9689.emf.png)

###### 7.2.3.2.1.3 Message flow for Xn and F1

![]({{site.baseurl}}/assets/images/5fe7a73adfc0.emf.png)Figure 7.2.3.2.1.3-1: SN initiated SN Modification without MN involvement - Intra gNB-DU PSCell Change using SRB3

###### 7.2.3.2.1.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/9c327bde0e2e.emf.png)

##### 7.2.3.2.2 Inter gNB-DU PSCell Change using SRB3

The purpose of the procedure is to provide Inter gNB-DU PSCell Change using SRB3.

###### 7.2.3.2.2.1 Message flow for Xn

![]({{site.baseurl}}/assets/images/093d1138275e.emf.png)

Figure 7.2.3.2.2.1-1: SN initiated SN Modification without MN involvement - Inter gNB-DU PSCell Change using SRB3

###### 7.2.3.2.2.2 Xn-C IE handling

![]({{site.baseurl}}/assets/images/b9c4e02f33da.emf.png)

###### 7.2.3.2.2.3 Message flow for Xn and F1

![]({{site.baseurl}}/assets/images/82fba3fec905.emf.png)

Figure 7.2.3.2.2.3-1: SN initiated SN Modification without MN involvement - Inter gNB-DU PSCell Change using SRB3

NOTE1: Step 1b is optional and the handling is described in section 5.6.20. It is used when the SN-CU doesn't apply RRC full configuration information.

###### 7.2.3.2.2.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/9b1bf870c8ff.emf.png)

## 7.3 S-NG-RAN NODE RELEASE

This section provides description of S-NG-RAN node release procedure. It can be initiated either by the MN or by the SN and is used to initiate the release of the UE context at the SN.

### 7.3.1 M-NG-RAN node initiated S-NG-RAN Node Release without keeping UE

Purpose of the M-NG-RAN node initiated S-NG-RAN Node Release without keeping UE is to release the UE context and relevant resources at both the M-NG-RAN node and the S-NG-RAN node.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | NR-DC stand alone, SN terminated split bearer option |
| Signalling radio bearer | SRB1 |
| DL data forwarding | Not used |
| UL data forwarding | Not used |

</div>

#### 7.3.1.1 Message flow for Xn

**![]({{site.baseurl}}/assets/images/3f0665f41b15.emf.png)**

Figure 7.3.1.1-1: M-NG-RAN node initiated S-NG-RAN Node Release without keeping UE

NOTE1: If the M-NG-RAN node receives the UE Context Release Command message from the AMF in step 1, it shall initiate this procedure.

NOTE2: The secondary RAT data volume reporting function is performed optionally in step 4

#### 7.3.1.2 Xn-C IE handling

![]({{site.baseurl}}/assets/images/6b7fd396385d.emf.png)

#### 7.3.1.3 Message flow for Xn and F1

![]({{site.baseurl}}/assets/images/923ffde3412b.emf.png)

Figure 7.3.1.3-1: M-NG-RAN node initiated S-NG-RAN Node Release without keeping UE

NOTE1: If the M-NG-RAN node receives the UE Context Release Command message from the AMF in step 1, it shall initiate this procedure.

NOTE2: Step 2a may apply to the case that the gNB-DU triggers the M-NG-RAN node initiated S-NG-RAN Node Release.

NOTE3: The secondary RAT data volume reporting function is performed optionally in step 4

#### 7.3.1.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/4c37b127636f.emf.png)

### 7.3.2 M-NG-RAN node initiated S-NG-RAN Node Release with keeping UE

Purpose of the M-NG-RAN node initiated S-NG-RAN Node Release with keeping UE is to release the UE context and relevant resources at the S-NG-RAN node, and to keep the UE context and relevant resources at the M-N-RAN node.

At the M-NG-RAN node, the UE context is kept and the M-NG-RAN node decides to either change bearer type and keep the relevant PDU session resources or to release them.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | NR-DC stand alone, SN terminated split bearer option |
| Signalling radio bearer | SRB1 |
| DL data forwarding | Used |
| UL data forwarding | Optionally used |

</div>

#### 7.3.2.1 Message flow for Xn

**![]({{site.baseurl}}/assets/images/88b66ca6e330.emf.png)**

Figure 7.3.2.1-1: M-NG-RAN node initiated S-NG-RAN Node Release with keeping UE

NOTE1: Step 3, 6 and 7 shall be performed in case the M-NG-RAN node decides to change the bearer type.

NOTE2: The secondary RAT data volume reporting function is performed optionally in Step 8

NOTE3: Steps 6-8 may take place any time after step 3

NOTE4: In step 9, when the M-NG-RAN node decides to change the bearer type, PDU Session Path Update procedure shall be executed, but when it decides to release the PDU sessions released from the S-NG-RAN node, PDU Session Path Release procedure shall be executed.

#### 7.3.2.2 Xn-C IE handling

![]({{site.baseurl}}/assets/images/b15debcb9ed8.emf.png)

#### 7.3.2.3 Message flow for Xn and F1

![]({{site.baseurl}}/assets/images/064ba7a44c2e.emf.png)

Figure 7.3.2.3-1: M-NG-RAN node initiated S-NG-RAN Node Release with keeping UE

NOTE1: Step 3, 6 and 7 shall be performed in case the MN-CU decides to change the bearer type.

NOTE2: The secondary RAT data volume reporting function is performed optionally in Step 8

NOTE3: Steps 6-8 may take place any time after step 4b

NOTE4: In step 9, when the MN-CU decides to change the bearer type, PDU Session Path Update procedure shall be executed, but when it decides to release the PDU sessions released from the S-NG-RAN node, PDU Session Path Release procedure shall be executed.

#### 7.3.2.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/1ed48c1594ee.emf.png)

### 7.3.3 S-NG-RAN node initiated S-NG-RAN Node Release

Purpose of the S-NG-RAN node initiated S-NG-RAN Node Release procedure is to release the UE context and relevant resources at the S-NG-RAN node.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | NR-DC stand alone, SN terminated split bearer option |
| Signalling radio bearer | SRB1 |
| DL data forwarding | OPT1: Used OPT2: Not used |
| UL data forwarding | OPT1: Optionally used OPT2: Not used |

</div>

#### 7.3.3.1 Message flow for Xn

![]({{site.baseurl}}/assets/images/a430ceb5269c.emf.png)

Figure 7.3.3.1-1: S-NG-RAN node initiated S-NG-RAN Node Release

NOTE1: Steps 5 and 6 shall be performed in case the M-NG-RAN node decides to change the bearer type.

NOTE2: In step 5, if the PDCP termination point is changed, the S-NG-RAN node sends the SN Status Transfer message.

NOTE3: When the S-NG-RAN node proposes data forwarding, step 6 is performed if the M-NG-RAN node accepts the proposed forwarding.

NOTE4: UL data Forwarding is performed optionally in step 6

NOTE5: The secondary RAT data volume reporting function is performed optionally in Step 7

NOTE6: Steps 5-7 may take place any time after step 2

NOTE7: When the M-NG-RAN node decides to change the bearer type, PDU Session Path Update procedure shall be executed, but when it decides to release the PDU sessions released from the S-NG-RAN node and the M-NG-RAN node, PDU Session Path Release procedure shall be executed.

NOTE8: In case of the S-NG-RAN node initiated S-NG-RAN Node Release with keeping the UE in the MN side, the MN shall perform the RRC reconfiguration procedure to modify the RRC connection and execute the PDU Session Path Update or PDU Session Path Release procedure to 5GC (OPT1).

NOTE9: In case of the S-NG-RAN node initiated S-NG-RAN Node Release without keeping the UE in the MN side, the MN shall perform the RRC connection release procedure to release the RRC connection and UE Context Release procedure towards AMF. Steps 10 and 11 may be executed in any order (OPT2).

#### 7.3.3.2 Xn-C IE handling

![]({{site.baseurl}}/assets/images/d9ef17dfecfa.emf.png)

#### 7.3.3.3 Message flow for Xn and F1

![]({{site.baseurl}}/assets/images/6573fa7bca90.emf.png)

Figure 7.3.3.3-1: S-NG-RAN node initiated S-NG-RAN Node Release

NOTE1: Step 1a may apply to the case that the SN-DU triggers the S-NG-RAN node initiated S-NG-RAN Node Release

NOTE2: Steps 5 and 6 shall be performed in case the MN-CU decides to change the bearer type

NOTE3: In step 5, if the PDCP termination point is changed, the S-NG-RAN node sends the SN Status Transfer message.

NOTE4: When the S-NG-RAN node proposes data forwarding, step 6 is performed in case the M-NG-RAN node accepts the proposed forwarding.

NOTE5: UL data Forwarding is performed optionally in step 6

NOTE6: The secondary RAT data volume reporting function is performed optionally in Step 7

NOTE7: Steps 5-7 may take place any time after step 2

NOTE8: When the MN-CU decides to change the bearer type, PDU Session Path Update procedure shall be executed, but when it decides to release the PDU sessions released from the S-NG-RAN node and the M-NG-RAN node, PDU Session Path Release procedure shall be executed.

NOTE9: In case of the S-NG-RAN node initiated S-NG-RAN Node Release with keeping the UE in the MN side, the MN-CU shall perform the UE Context Modification procedure to indicate the Bearer Type Change IE in the UE Context Modification Request message and execute the PDU Session Path Update procedure to 5GC, or it shall perform the UE Context Modification procedure to indicate the DRB to Be Released List IE in the UE Context Modification Request message and execute the PDU Session Path Release procedure to 5GC(OPT1).

NOTE10: In case of the S-NG-RAN node initiated S-NG-RAN Node Release without keeping the UE in the MN side, the MN-CU shall perform the UE Context Release procedure to release whole UE context and UE Context Release procedure towards AMF. Steps 10 and 11 may be executed in any order (OPT2).

#### 7.3.3.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/dfa70423f1b8.emf.png)

## 7.4 NG-RAN NODE CONFIGURATION UPDATE

The purpose of the NG-RAN node Configuration Update procedure is to update application level configuration data
needed for two NG-RAN nodes to interoperate correctly over the Xn-C interface

NOTE: This procedure is moved to Chapter 4.2.8

## 7.5 RRC TRANSFER

### 7.5.1 UE measurement transfer

The purpose of this procedure is to enable transfer of the NR RRC message container with the NR measurements information from the MN to the SN, when received from the UE.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | NR-DC stand alone, SN terminated split bearer option. |
| Signalling radio bearer | SRB1 |

</div>

#### 7.5.1.1 Message flow for Xn

![]({{site.baseurl}}/assets/images/f838b4609c17.emf.png)

Figure 7.5.1.1-1: UE measurement transfer on Xn

#### 7.5.1.2 Xn-C IE handling

![]({{site.baseurl}}/assets/images/e990295f296c.emf.png)

## 7.6 Master Node to gNB Change

### 7.6.1 Master Node to gNB Change

The purpose of the MN to gNB procedure is to transfer UE context data from a source MN to a target gNB.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | NR-DC stand alone, SN terminated split bearer option |
| Signalling radio bearer | SRB1 |
| PDCP duplication | Optionally used for DRBs; duplication in UL and DL, but limited to 1 RLC per gNB-DU |
| PDCP SN Length | 18bit PDCP SN |
| DL data forwarding | Used |
| UL data forwarding | Optionally Used |
| Bearer Type | Non-GBR bearer |
| QoS Characteristics | Non-dynamic 5QI |

</div>

#### 7.6.1.1 Message flow for Xn

![]({{site.baseurl}}/assets/images/e7fa7217dde4.emf.png)

Figure 7.6.1.1-1: Master Node to gNB Change - Xn message flow

NOTE 1: If PDCP termination point is changed for bearers using RLC AM, the SN sends the SN Status Transfer, which the source MN sends then to the target gNB.

NOTE 2: The order the SN sends the Secondary RAT Data Usage Report message and performs data forwarding with MN is not defined. The SN may send the report when the transmission of the related QoS flow is stopped.

#### 7.6.1.2 Xn-C IE handling

![]({{site.baseurl}}/assets/images/8b14620d024a.emf.png)

#### 7.6.1.3 Message flow for Xn and F1

![]({{site.baseurl}}/assets/images/7015538ff5e0.emf.png)

Figure 7.6.1.3-1: Master Node to gNB Change - Xn and F1 message flow

#### 7.6.1.4 F1-C IE handling

**![]({{site.baseurl}}/assets/images/ff0bbeaaac8a.emf.png)**

## 7.7 Inter-Master Node handover

### 7.7.1 Inter-Master Node handover without Secondary Node change

The purpose of the Inter-Master Node handover without Secondary Node change is to transfer UE context data from a source MN to a target MN while the UE context at the SN is kept.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | NR-DC stand alone, SN terminated split bearer option |
| Signalling radio bearer | SRB1 (SRB3 Optionally Used) |
| PDCP duplication | Optionally used for DRBs; duplication in UL and DL, but limited to 1 RLC per gNB-DU |
| DL data forwarding | Used |
| UL data forwarding | Optionally Used |
| Bearer Type | Non-GBR bearer |
| QoS Characteristics | Non-dynamic 5QI |

</div>

#### 7.7.1.1 Message flow for Xn

![]({{site.baseurl}}/assets/images/eed2f8b75552.emf.png)

Figure 7.7.1.1-1: Inter-Master Node handover without Secondary Node change - Xn message flow

NOTE 1: The source MN may trigger the MN-initiated SN Modification procedure to retrieve the current SCG configuration and to allow provision of data forwarding related information before step 1.

NOTE 2: The order the UE performs Random Access towards the MN (step 10) and performs the Random Access procedure towards the SN (step 12) is not defined.

NOTE 3: The order the SN sends the *Secondary RAT Data Usage Report* message and performs data forwarding with MN is not defined. The SN may send the report when the transmission of the related Qos is stopped.

#### 7.7.1.2 Xn-C IE handling

![]({{site.baseurl}}/assets/images/ebf43adc0a87.emf.png)

#### 7.7.1.3 Message flow for Xn and F1

![]({{site.baseurl}}/assets/images/6f9966a9578d.emf.png)

Figure 7.7.1.3-1: Inter-Master Node handover without Secondary Node change - Xn and F1 message flow

#### 7.7.1.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/ab7b70db4242.emf.png)

### 7.7.2 Inter-Master Node handover with Secondary Node change

The purpose of the Inter-Master Node handover with Secondary Node change is to transfer UE context data from a source MN to a target MN while the UE context at the SN is moved to another SN.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | NR-DC stand alone, SN terminated split bearer option |
| Signalling radio bearer | SRB1 |
| PDCP duplication | Optionally used for DRBs; duplication in UL and DL, but limited to 1 RLC per gNB-DU |
| DL data forwarding | Used |
| UL data forwarding | Optionally Used |
| Bearer Type | Non-GBR bearer |
| QoS Characteristics | Non-dynamic 5QI |

</div>

#### 7.7.2.1 Message flow for Xn

![]({{site.baseurl}}/assets/images/353629feb204.emf.png)

Figure 7.7.2.1-1: Inter-Master Node handover with Secondary Node change - Xn message flow

NOTE 1: The source MN may trigger the MN-initiated SN Modification procedure to retrieve the current SCG configuration and to allow provision of data forwarding related information before step 1

NOTE 2: The order the UE performs Random Access towards the MN (step 10) and performs the Random Access procedure towards the SN (step 12) is not defined

NOTE 3: The order the SN sends the *Secondary RAT Data Usage Report* messages and performs data forwarding with MN is not defined. The SN may send the report when the transmission of the related QoS is stopped.

#### 7.7.2.2 Xn-C IE handling

![]({{site.baseurl}}/assets/images/1733208bd9e3.emf.png)

#### 7.7.2.3 Message flow for Xn and F1

![]({{site.baseurl}}/assets/images/09b6f581f863.emf.png)

Figure 7.7.2.3-1: Inter-Master Node handover with Secondary Node change - Xn and F1 message flow

#### 7.7.2.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/d114a9f5fc41.emf.png)

## 7.8 S-NG-RAN NODE CHANGE

### 7.8.1 SN Initiated SN Change

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | NR-DC stand alone, SN terminated split bearer option |
| Signalling radio bearer | SRB1 (SRB3 Optionally Used) |
| Bearer type | Non-GBR bearer |
| Split SRB | Not used |
| DL data forwarding | Used |
| UL data forwarding | Optionally used |

</div>

#### 7.8.1.1 Message flow for Xn

![]({{site.baseurl}}/assets/images/fa5ddfe99270.emf.png)

Figure 7.8.1.1-1: S-NG-RAN Node Change procedure - Xn message flow

NOTE 1: The order the SN sends the *Secondary RAT Data Usage Report* message and performs data forwarding with MN/target SN is not defined. The SN may send the report when the transmission of the related QoS flow is stopped.

#### 7.8.1.2 Xn-C IE handling

![]({{site.baseurl}}/assets/images/be05882199b9.emf.png)

#### 7.8.1.3 Message flow for Xn and F1

![]({{site.baseurl}}/assets/images/c99dae8c4884.emf.png)

Figure 7.8.1.3-1: S-NG-RAN Node Change procedure - Xn and F1 message flow

![]({{site.baseurl}}/assets/images/f99bc2bdfa8a.emf.png)

Figure 7.8.1.3-2: S-NG-RAN Node Change procedure - Xn and F1 message flow

#### 7.8.1.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/d38ec7775fdf.emf.png)

### 7.8.2 MN Initiated SN Change

The purpose of the MN initiated SN change is to transfer a UE context from the source SN to a target SN and to change the SCG configuration in UE from one SN to another.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | NR-DC stand alone, SN terminated split bearer option |
| Signalling radio bearer | SRB1 (SRB3 is Optionally Used) |
| PDCP duplication | Optionally used for DRBs; duplication in UL and DL, but limited to 1 RLC per gNB-DU |
| DL data forwarding | Used |
| UL data forwarding | Optionally Used |
| Bearer Type | Non-GBR bearer |
| QoS Characteristics | Non-dynamic 5QI |
| Split SRB | Not Used |
| PDU Session split at UPF | Not Supported |

</div>

#### 7.8.2.1 Message flow for Xn

![]({{site.baseurl}}/assets/images/8e83c38b0ace.emf.png)

Figure 7.8.2.1-1: MN Initiated SN Change - Xn message flow

NOTE 1: The SCG Configuration Query (via a M-NG-RAN node initiated S-NG-RAN node Modification procedure) is optionally performed before this procedure.

NOTE 2: If PDCP termination point is changed for bearers using RLC AM, the source SN sends the *SN Status Transfer* message, which the MN sends then to the target SN, if needed.

NOTE 3: The order the SN sends the *Secondary RAT Data Usage Report* message and performs data forwarding with MN is not defined. The SN may send the report when the transmission of the related Qos flow is stopped.

#### 7.8.2.2 Xn-C IE handling

![]({{site.baseurl}}/assets/images/aadbcc730b25.emf.png)

#### 7.8.2.3 Message flow for Xn and F1

![]({{site.baseurl}}/assets/images/560b34fac337.emf.png)

Figure 7.8.2.3-1: MN Initiated SN Change - Xn and F1 message flow

#### 7.8.2.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/a8abc97067ae.emf.png)

## 7.9 ACTIVITY NOTIFICATION

### 7.9.1 SN initiated Activity Notification

The purpose of this procedure is to send a notification to M-NG-RAN node by S-NG-RAN node with user plane traffic activity report of already established QoS flows or PDU sessions or the UE.

Upon reception of the Activity Notification the M-NG-RAN node may take no action or may trigger the SN Modification Procedure to either release or suspend the lower layer MCG and SCG resources for the UE in RRC\_INACTIVE state or reactivate the SN terminated bearers for the UE. The M-NG-RAN node may also decide to initiate the SN release procedure.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE Connectivity option | NR-DC stand alone, SN terminated split bearer option |
| Bearer type | Non-GBR bearer |

</div>

##### 7.9.1.1 Message flow for Xn

**![]({{site.baseurl}}/assets/images/e8bc6e63ceeb.emf.png)**

Figure 7.9.1.1-1: SN initiated Activity Notification - Xn message flow

##### 7.9.1.2 Xn-C IE handling

![]({{site.baseurl}}/assets/images/b0f4ac1f3476.emf.png)

# 8 Integrated Access and Backhaul (IAB) Procedures

## 8.1 IAB procedures in Standalone mode

In this version of the profile, the following procedures based on [7] are defined for successful integration of IAB into the network:

* IAB Donor DU Setup
* IAB-MT Setup
* BH RLC Channel Setup
* Routing Update
* IAB -DU Setup

The access UEs gaining services via cells supported by an IAB-Node may be served in both NSA and SA modes as described in section 1.1.

### 8.1.1 IAB Donor DU Setup

This section describes IAB Donor DU Setup. The purpose of this procedure is to exchange application-level data needed for IAB Donor DU and IAB Donor CU to interoperate over the F1 interface. This procedure also allocates a BAP address to the IAB Donor DU during F1 Setup/Cell activation procedures by the IAB Donor CU.

Note: As captured in section 8.2.3 of [3], it is implementation specific how an O-CU would determine if an O-DU is an IAB Donor DU.

#### 8.1.1.1 IAB Donor DU Setup message flow

Please refer to chapters 4.2.3, 4.2.4 and 4.2.5.

For the purposes of the IAB Donor DU setup procedural flow, the gNB-DU and gNB-CU identified in sections 4.2.3, 4.2.4 and 4.2.5 shall be considered an IAB Donor DU and IAB Donor CU respectively.

#### 8.1.1.2 F1-C IE handling

Please refer to sections 4.2.3.1.2, 4.2.4.1.2 and 4.2.5.1.2.

### 8.1.2 IAB Node1 integration

This section describes how IAB Node1 is integrated into the IAB Network. IAB Node1 shall be interpreted as any 1st hop IAB Node downstream of a Donor DU, for example, as shown in Figure 6.1.4-1 of [7].

#### 8.1.2.1 IAB-MT Setup and BH RLC channel Setup

IAB-MT of the new IAB-Node connects to the network in the same way as a 5G UE, by performing RRC connection setup procedure with IAB Donor CU and authentication with the 5G core network.

The IAB-Node can select the parent node for access based on an over-the-air indication from potential parent node IAB-DU. The potential parent node indicates IAB support capability in system information (transmitted in SIB1).

##### 8.1.2.1.1 IAB-MT and BH RLC Channel Setup message flow for F1

The following parameter conditions are applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| UE connectivity option used by IAB-MT | Option 2 (NR SA) |
| IAB node indication | IE *iab-NodeIndication* in *RRCSetupComplete* |
| PDU session setup requested | No |

</div>

Figure 8.1.2.1.1-1 shows the flow for IAB-MT setup in SA mode.

![]({{site.baseurl}}/assets/images/de37229aea69.emf.png)

Figure 8.1.2.1.1-1: IAB-MT and BH RLC Channel setup in SA mode

##### 8.1.2.1.2 F1-C IE handling

![]({{site.baseurl}}/assets/images/2ddd02aafc07.emf.png)

#### 8.1.2.2 Routing Update

In this phase, IAB-MT requests TNL addresses for the collocated IAB-DU and secondly the BAP sublayer of the IAB Donor DU is updated with configuration to support routing between the new IAB-node and the IAB Donor DU.

As per section 8.12.1 of [7], TNL address request by IAB-MT can be support at *any time* after successful RRC Connection establishment. In that case, *RRCReconfiguration* in Step 5 of Figure 8.1.2.2.1-1 can be combined into the *RRCReconfiguration* in Step 18 of Figure 8.1.2.1.1-1.

The normative procedures in section 8.12.1 of [7] discusses TNL Address request as part of Phase 2-2: "Routing Update".

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| IAB-MT connectivity option | Option 2 (NR SA) |

</div>

##### 8.1.2.2.1 TNL Address Request message flow for F1

Figure 8.1.2.2.1-1 shows the flow whereby the IAB-MT requests one or more TNL Addresses for the collocated IAB-DU.

![]({{site.baseurl}}/assets/images/2b4ecb8ff8ac.emf.png)

Figure 8.1.2.2.1-1: TNL Address Request procedure by IAB-MT for collocated IAB-DU

##### 8.1.2.2.2 F1-C IE handling

![]({{site.baseurl}}/assets/images/45fa097163af.emf.png)

##### 8.1.2.2.3 Routing Update message flow for F1

Figure 8.1.2.2.3-1 shows the flow for configuring BAP Routing information at a Donor DU. In a 1-hop IAB network, this procedure is only applied at the Donor DU.

![]({{site.baseurl}}/assets/images/c6a11de36963.emf.png)

Figure 8.1.2.2.3-1: Routing Update message flow on Donor DU

##### 8.1.2.2.4 F1-C IE handling

![]({{site.baseurl}}/assets/images/2d7516bbf91c.emf.png)

#### 8.1.2.3 IAB-DU Setup

This section describes the setup of an IAB-DU. The purpose of this procedure is to exchange application-level data needed for IAB-DU and IAB Donor CU to interoperate over the F1 interface.

The following parameter condition is applied for this procedure.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Condition |
| SUL Information | Not used |

</div>

##### 8.1.2.3.1 IAB-DU message flow for F1

Please refer to chapters 4.2.3, 4.2.4 and 4.2.5.

For the purposes of the IAB-DU setup procedural flow, the gNB-DU and gNB-CU identified in sections 4.2.3, 4.2.4 and 4.2.5 shall be considered an IAB-DU and Donor CU respectively.

##### 8.1.2.3.2 F1-C IE handling

Please refer to sections 4.2.3.1.2, 4.2.4.1.2 and 4.2.5.1.2.

#### 8.1.2.4 gNB-DU Resource Configuration

This section describes the resource configuration procedure initiated by the Donor CU in order to configure resource usage at the Donor DU and at the IAB-DU.

##### 8.1.2.4.1 gNB-DU Resource configuration message flow for F1

Figure 8.1.2.4.1-1 shows the message flow whereby the Donor CU provides resource configuration to the Donor DU and at the IAB-DU.

![]({{site.baseurl}}/assets/images/3f88fbaf5a82.emf.png)

Figure 8.1.2.4.1-1: gNB-DU Resource configuration

##### 8.1.2.4.2 F1-C IE handling

![]({{site.baseurl}}/assets/images/e8bc873a7778.emf.png)

#### 8.1.2.5 Additional BH RLC Setup and Routing update

##### 8.1.2.5.1 UE Accessing in SA mode

This section describes the user-plane traffic mapping to BH RLC channel configuration procedure initiated by the Donor CU for the integration of SA Access UEs. In this procedure, additional BH RLC channels are added, in addition to default BH RLC channels, if they have not been added already in section 8.1.2.1.

Figure 8.1.2.5.1-1 shows the message flow for additional BH RLC channels and routing update configuration at the Donor DU and the configuration of UL UP traffic mapping to BH RLC channel configuration at IAB Node.

![]({{site.baseurl}}/assets/images/a904a7bcc7a1.emf.png)

Figure 8.1.2.5.1-1: Uplink User-plane mapping for Access UE in SA mode

###### 8.1.2.5.1.1 F1-C IE handling

For messages in steps 1 to 8 and in step 15 detailed in Figure 8.1.2.5.1-1, please refer to F1-C IE handling in section 6.1.1.3 with corresponding message names and message number.

For the remaining messages in steps 9 to 14 detailed in Figure 8.1.2.5.1-1, please refer to F1-C IE handling below.

![]({{site.baseurl}}/assets/images/c43c148c6921.emf.png)

##### 8.1.2.5.2 UE accessing in EN-DC mode

This section describes the user-plane traffic mapping to BH RLC channel configuration procedure initiated by the Donor CU for the integration of EN-DC Access UEs. Figure 8.1.2.5.2-1 shows the message flow whereby the Donor CU providing additional BH RLC channels and routing update configuration for Donor DU and UL UP traffic mapping to BH RLC channel configuration for IAB DU.

![]({{site.baseurl}}/assets/images/8f4ca36a626e.emf.png)

Figure 8.1.2.5.2-1: Uplink User-plane mapping for Access UE in EN-DC mode

###### 8.1.2.5.2.1 F1-C IE handling

For messages in steps 9 to 15 detailed in Figure 8.1.2.5.2-1, please refer to F1-C IE handling in section 8.1.2.5.1.1.

# Annex A (informative): Description of functions

## A.1 Multiple PLMN-IDs used in a RAN

### A.1.1 Multiple PLMN-IDs for non-UE associated procedures

#### A.1.1.1 X2-C and F1-C for EN-DC

In case multiple PLMN IDs are configured in a RAN, the following IE is included in the message for the effected use cases in section 4.1.

- Broadcast PLMNs IE in Served E-UTRA Cell Information IE or Served PLMNs IE and/or Additional PLMNs IE in Served NR Cell Information IE are included in EN-DC X2 SETUP REQUEST message for X2.

- Broadcast PLMNs IE in Served E-UTRA Cell Information IE or Served PLMNs IE and/or Additional PLMNs IE in Served NR Cell Information IE are included in EN-DC X2 SETUP RESPONSE message for X2.

- Broadcast PLMNs IE in Served E-UTRA Cell Information IE or Served PLMNs IE and/or Additional PLMNs IE in Served NR Cell Information IE are included in EN-DC CONFIGURATION UPDATE message for X2.

- Served PLMNs IE and/or Additional PLMNs IE in Served NR Cell Information IE are included in EN-DC CONFIGURATION UPDATE ACKNOWLEDGE message for X2.

- Served PLMNs IE and/or Extended Served PLMNs List IE are included in F1 SETUP REQUEST message for F1.

- Served PLMNs IE and/or Extended Served PLMNs List IE are included in GNB-DU CONFIGURATION UPDATE message for F1.

#### A.1.1.2 Xn-C and F1-C for NR Stand-Alone

In case multiple PLMN IDs are configured in a RAN, the following IE is included in the message for the effected use cases in section 4.2.

- Broadcast PLMNs IE in Served Cell Information NR IE is included in XN SETUP REQUEST message for Xn.

- Broadcast PLMNs IE in Served Cell Information NR IE is included in XN SETUP RESPONSE message for Xn.

- Broadcast PLMNs IE in Served Cell Information NR IE is included in NG-RAN NODE CONFIGURATION UPDATE message for Xn.

- Broadcast PLMNs IE in Served Cell Information NR IE is included in NG-RAN NODE CONFIGURATION UPDATE ACKNOWLEDGE message for Xn.

- Served PLMNs IE and/or Extended Served PLMNs List IE are included in F1 SETUP REQUEST message for F1.

- Served PLMNs IE and/or Extended Served PLMNs List IE are included in GNB-DU CONFIGURATION UPDATE message for F1.

### A.1.2 Multiple PLMN-IDs for UE associated procedures

#### A.1.2.1 Multiple PLMN-IDs for EN-DC

In case multiple PLMN IDs are configured in a RAN, the following IE is included in the message for the effected use cases in section 5.

- Serving PLMN IE is included in UE CONTEXT SETUP REQUEST message for F1.

- Selected PLMN IE is included in SGNB ADDITION REQUEST message for X2.

- Serving PLMN IE for Handover Restriction List IE is included in HANDOVER REQUEST message for X2.

- Selected PLMN IE is included in SGNB MODIFICATION REQUEST message for X2.

Note: The inclusion of the Handover Restriction List IE depends on implementation and is received from AMF.

The applicability of the Selected PLMN IE in the SGNB MODIFICATION REQUEST message and the Serving PLMN IE in the UE CONTEXT SETUP REQUEST message is shown as an example for the procedure 'Bearer type change from SN terminated MCG bearer to SN terminated split bearer (MN initiated)', as specified for X2-C IE handling and F1-C IE handling in the sections 5.6.13.2 and 5.6.13.4.

#### A.1.2.2 Multiple PLMN-IDs for NR

In case multiple PLMN IDs are configured in a RAN, the following IE is included in the message for the effected use cases in section 6.

- Serving PLMN IE is included in UE CONTEXT SETUP REQUEST message for F1.

- Serving PLMN IE for Mobility Restriction List IE is included in HANDOVER REQUEST message for Xn.

- Serving PLMN IE for Mobility Restriction List IE is included in RETRIEVE UE CONTEXT RESPONSE for Xn.

Note: The inclusion of the Mobility Restriction List IE depends on implementation and is received from AMF.

The applicability of the Serving PLMN IE in the UE CONTEXT SETUP REQUEST message is shown as an example for the procedure 'UE context creation (service request)', as specified for F1-C IE handling in the section 6.1.1.3.

#### A.1.2.3 Multiple PLMN-IDs for NR-DC

In case multiple PLMN IDs are configured in a RAN, the following IE is included in the message for the effected use cases in section 7.

- Serving PLMN IE is included in UE CONTEXT SETUP REQUEST message for F1.

- Selected PLMN IE is included in S-NODE ADDITION REQUEST message for Xn.

- Serving PLMN IE for Mobility Restriction List IE is included in HANDOVER REQUEST message for Xn.

Note: The inclusion of the Mobility Restriction List IE depends on implementation and is received from AMF.

The applicability of the Selected PLMN IE in the S-NODE ADDITION REQUEST message and the Serving PLMN IE in UE CONTEXT SETUP REQUEST message is shown as an example for the procedure 'S-NG-RAN Node Addition', as specified for Xn-C IE handling and F1-C IE handling in the sections 7.1.1.2 and 7.1.1.4.

## A.2 Location Information Reporting at SN

### A.2.1 X2-C for EN-DC

In case of location information reporting at SgNB, the following IE is included in the message for the effected use cases in section 5.1, 5.3, 5.4 and 5.6.

- Location Information at SgNB reporting IE is included in SGNB ADDITION REQUEST message.

- Location Information at SgNB IE is included in SGNB ADDITION REQUEST ACKNOWLEDGE message.

- Location Information at SgNB IE is included in SGNB MODIFICATION REQUIRED message.

### A.2.2 Xn-C for NR-DC

In case of location information reporting at S-Node, the following IE is included in the message for the effected use cases in section 7.1, 7.2, 7.7 and 7.8.

- Location Information at S-NODE reporting IE is included in S-NODE ADDITION REQUEST message.

- Location Information at S-NODE IE is included in S-NODE ADDITION REQUEST ACKNOWLEDGE message.

- Location Information at S-NODE IE is included in S-NODE MODIFICATION REQUIRED message.

## A.3 Measurement Gap Coordination

### A.3.1 X2-C for EN-DC

In case the SN required per UE/FR1 gap measurement is ongoing, the following IE is included in the message for the affected use cases in section 5.6.

- The measConfigSN IE in CG-Config is included in the following messages:

* SGNB MODIFICATION REQUIRED
* SGNB MODIFICATION REQUEST ACKNOWLEDGE

For ongoing gap measurements as an example, the following Use Case applies the measConfigSN IE in the SGNB MODIFICATION REQUIRED message:

- 5.6.9 UL Configuration Update Procedure (SN initiated)

### A.3.2 Xn-C for NR-DC

In case the SN required per UE/FR1/FR2 gap measurement is ongoing, the following IE is included in the message for the affected use cases in section 7.2.

- The measConfigSN IE in the CG-Config is included in the following messages:

* S-NODE MODIFICATION REQUIRED
* S-NODE MODIFICATION REQUEST ACKNOWLEDGE

For ongoing gap measurements as an example, the following Use Case applies the measConfigSN IE in the S-NODE MODIFICATION REQUEST ACKNOWLEDGE message:

- 7.2.1.1 M-NG-RAN node initiated SN modification: PDU Session Addition

# Annex (informative): Change History

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Date** | **Revision** | **Description** |
| 2019.04.08 | 1.00 | First published version 1.00 |
| 2019.09.26 | 2.00 | This version of the specification contains updates to the EN-DC use cases including F1 signalling and handling of RRC containers |
| 2020.07.09 | 3.00 | This version of the specification contains new and updated EN-DC use cases as well as new NR-SA use cases |
| 2021.03.12 | 4.00 | This version of the specification contains fault corrections plus new and updated use cases with focus on NR-DC |
| 2021.07.02 | 5.00 | This version of the specification contains fault corrections plus new use cases |
| 2021.11.17 | 6.00 | This version of the specification adds: - uplift of 3GPP baseline to Rel-16 - several new use cases - corrections |
| 2022.03.21 | 7.00 | This version of the specification adds the optional use of dual connectivity-based PDCP duplication to NR-DC use cases. It also contains a number of corrections. |
| 2022.07.29 | 8.00 | This version of the specification adds:  - several new use cases  - removal of Annex ZZZ  - corrections |
| 2022.11.18 | 9.00 | This version of the specification adds:  - several new use cases  - corrections |
| 2023.03.03 | 10.00.01 | This version of the specification adds:  - replaced v09.00 with v10.00  - replaced 2022 with 2023 for the copyright text including the excel sheets  - The following CRs:  ERI-0091-Correction of UC MN to gNB change procedure  FJT-0062-CR for new NR-DC scenario (PCell Change (Intra-MN))  FJT-0063-Correction of errors in the description of IE handling  FJT-0066-CR for new NR-DC scenario (UL Configuration Update)  FJT-0067-Correction on Allowed Band Combination list update for NR-DC  NEC-0053-Addition of scenarios heading under section 4 and 7 in C-plane Spec  NEC-0054-Representation of SGNB modification procedure as optional for inter-DU PSCell change (delta-config) NR-DC scenario  NEC-0055-Multiple TNL association(s) using gNB-CU Configuration Update for EN-DC  NEC-0060-Correction CR for UE Context Release procedure in NR procedures of C-Plane specification  NEC-0062-Intra gNB-DU PSCell Change using SRB1 for RRC Reconfiguration - full configuration option  NEC-0063-Inter gNB-DU PSCell Change using SRB1 for RRC Reconfiguration - full configuration option  NOK-048-IE corrections for Removal of SN terminated split bearer (MN initiated)  NOK-0049- IE corrections for DRB ID change/Security Key Change (SN initiated)  SAM-0022-Correct on UL Configuration Update Procedure (SN initiated)  ZTE-0020-SN Change procedure (MN initiated)  ZTE-0021-Correction on Inter-Master Node without Secondary Node change procedure |
| 2023.03.14 | 10.00.02 | This version of the specification modifies:  - 4.1.8 Editorial comments - 7.2.1.6.4 Table from v02 of the CR inserted (editorial) - 7.2.1.7.1 Figure texzt updated according to editorial comment - 7.2.2.3.2 Editorial comment from Nokia  Also NEC has a comment for the IE sheet of section 7.2.2.3.2, Note is missing in cell AA345 of tab 1 (SN MOD REQD). - 7.2.2.5 Table is updated according to CR NEC-0063 -7.2.2.5-1 Inserted figure from the CR NEC-0063 - 7.2.2.6.3 Editorial change of a note - 7.3 Spelling mistake - All Excel sheets have been updated to the year 2023 - Some formatting of Sections headers |
| 2023.03.16 | 10.00.03 | This version of the specification modifies:  - 7.2.2.5 In the table "full config" was removed for "Conditional PSCell Change" because this change is not mentioned in the CR NEC-CR63. |
| 2023.03.16 | 10.00.04 | This version of the specification modifies:  - All comments have been removed in the wordfile  - All changes have been accepted in the word file  - All Excel sheets have been modified, e.g the strikeouts have been removed, the color of the letters is black and the tab colors are removed |
| 2023.03.21 | 10.00.05 | This version of the specification modifies:  - 5.6.11.2 Editorial changes in the Excel sheets "1.SGNB\_MOD\_REQ" and "2.SGNB\_MOD\_REQ\_ACK"  - 5.6.11.4 Editorial changes in all the Excel sheets for the old 3gpp version V16.6.0 and in the Excel sheets "1a. UE\_CON\_MOD\_REQ" and "Tab 5a. UE\_CON\_MOD\_REQ"  - 7.2.1.6.2 Editorial changes in the Excel sheets "2. CG-CONFIGINFO" and "3. CG-CONFIG"  - 7.2.1.7.2 Editorial changes in the Excel sheets "3. SN MOD REQ", "3. CG-CONFIGINFO"and "4. CG-CONFIG"  - 7.2.2.5.4. Editorial changes in the Excel table (tab 1d "UE CTXT SETUP RESP".)  - 7.2.2.6.2 Editorial changes in the Excel sheets SN MOD REQD"and "2. CG-CONFIG"  - Editorial changes e.g., took away strikeouts, 2022, red letters in the tables: 4.2.9.1.2, 4.2.9.1.4, 4.2.9.2.2, 4.2.9.2.4, 5.2.2.4, 5.6.21.2, 6.3.2.2.1, 7.2.2.3.4, 7.2.2.4.2, 7.2.2.4.4, 7.6.1.2, 7.6.1.4, 7.7.1.4 |
| 2023.03.22 | 10.00.06 | This version of the specification modifies:  - 5.6.21.4 Changes in the Excel sheets.  In the tab "2a. UE\_CON\_MOD\_REQ" the lines 216-220 and 378-381" were removed. On row 442 the value in the presence column changed from "OM" to "M".  In the tab "6a. UE\_CON\_MOD\_REQ" the lines 215-219 and 377-380" were removed.  - 7.2.2.3.2 Changes in the Excel sheets.  In the tab "1. SN MOD REQD" the text in the notes column on row 345 changed to "Includes CG-Config. Details in 1.". |
| 2023.07.04 | 11.00.01 | This version of the specification adds:  - replaced version 10.00 with 11.00  - The following CRs:  DCM-0059  DCM-0060  DCM-0067  ERI-0096  ERI-0105  ERI-0106 NEC-0066  NEC-0074  NOK-040  NOK-041  NOK-053 NOK-0056  NOK-0057 SAM-0023  SAM-0024  SAM-0025  SAM-0026  SAM-0027 |
| 2023.07.11 | 11.00.02 | This version corrected the following parts:   * 5.1.2.4 F1-C IE Handling * 5.3.1.4 F1-C IE handling * 5.3.2.4 F1-C IE handling * 5.4.1.2 X2-C IE Handling * 5.4.1.4 F1-C IE Handling * 5.4.1.6 F1-C IE Handling * 5.4.2.4 X2-C IE Handling * 5.6.15.2 X2-C IE Handling * 5.6.15.3 Message flow for X2 and F1 - Inter gNB-DU scenario * 5.6.15.4 F1-C IE Handling * 5.6.21.2 X2-C IE Handling * 5.6.22.4 F1-C IE Handling * 6.9.2.2 F1-C IE handling * 6.10.4.2 * 6.10.4.3 Message flow for F1 * 7.1.1 * 7.2.1.2.4 * New chapter 7.2.1.8, moved from 7.2.4 * 7.2.2.3.2 * 7.2.3.2 * 7.6.1.2 Xn-C IE handling * 7.7.1 * 7.7.1.2 Xn-C IE handling * 7.7.2.2 Xn-C IE handling * Figure 7.7.2.3-1 * 7.8.1.4 * 7.8.2 |
| 2023.07.13 | 11.00.03 | This version corrected the following parts:   * 5.1.2.4 * 5.3.1.4 * 5.4.1.2 * 5.6.23.2 * 5.6.23.4 * 6.4.1.4 * 6.10.4.2 * 7.2.1.3.3.2 * 7.2.1.3.3.4 * 7.2.2.5.3 Message flow for Xn+F1 * 7.6.1.2 Xn-C IE handling * 7.7.1.2 Xn-C IE handling * 7.8.1.4 F1-C IE handling * 7.8.2 MN Initiated SN Change * 7.8.2.2 Xn-C IE handling * 7.8.2.4 F1-C IE handling |
| 2023.07.13 | 11.00.04 | This version has the same content as the version 11.00.03 with the difference that this version has no comments, the track changes information is rermoved and the revision history is added. |
| 2024.03.09 | 12.00.01 | This version of the specification adds:  - replaced version 11.00 with 12.00  - The following CRs:  DCM-0066  DCM-0090  ERI-0109  ERI-0111  ERI-0114  ERI-0117  FJT-0073  FJT-0090  FJT-0091  NEC-0075  NEC-0076  NEC-0088  NOK-0054  NOK-0058  NOK-0059  NOK-0060  NOK-0061  SAM-0030  SAM-0032  SAM-0033  ZTE-0022  ZTE-0023  ZTE-0024 |
| 2024.03.14 | 12.00.02 | The following changes were introduced:   * Removed the CR FJT-0090 from the revision information for 12.00.01 * Removed old Excel sheets in the sections 7.2.1.2.2, 7.2.1.3.3.2, 7.2.1.4.2, 7.2.1.7.2, 5.3.1.2 and 5.6.14.2. * Removed red marks in the Excel sheet in section 7.7.1.2 * Updated the following section header for 7.2.1.3.3.2 to Xn-C IE handling and for 7.2.1.3.3.4 to F1-C IE * Updated the table of content |
| 2024.03.19 | 12.00.03 | The following changes were introduced:  Functional   * Some outdated Excel sheets were deleted where there are new ones * Inserted the IE sheet 4.1.3.2.2 from the CR NOK-054 * Inserter the IE sheet 6.1.2.3 from the CR ERI-0111 * Changed the IE sheet 7.3.2.4 4c due to the CR NOK-060   Editorials   * Many editorial changes in the Excel sheets e.g., faulty revision of 3GPP specifications, formatting, Coypright statements etc. * Many minor editorial changes in the Word part * The headings for F1 and X2 or Xn message flow now state "Message flow for Xn and f1" or "Message flow for X2 and f1" * Revision history was corrected |
| 2024.03.21 | 12.00.04 | The following changes were introduced:   * Editorial changes to the Excel sheet 5.4.1.2 * The Figure 7.7.2.3-1 now also cover the T-SN-CU |
| 2024.03.21 | 12.00.05 | The following changes were introduced:   * All comment were removed * Track changes has been turned off |
| 2024.03.29 | 12.00 | This version of the specification adds:  - several new use cases  - corrections |
| 2024.04.25 | 12.01 | This version of the specification only removes the comments from the document version 12.00. The technical content is identical to the version 12.00 |
| 2024.04.26 | 12.02 | This version of the specification only changes the document name to "O-RAN.WG5.C.1-R003-v12.02" from "O-RAN.WG5.C.1-v12" from the document version 12.01. The technical content is identical to the version 12.00 and 12.01. |
| 2024.06.26 | 13.00.01 | This version of the specification adds:  - replaced version 12.02 with 13.00  - The following CRs:  DCM-0094  DCM-0097  DELL-0001  ERI-0121  FJT-0098  FJT-0099  NEC-0086  NEC-0087  NOK-0066  NOK-0067  SAM-0034 |
| 2024.07.01 | 13.00.02 | This version of the specification:  -4.2.2.3.1, page 27 rows 7 and 8 - Reference corrected  -4.2.2.4.1, page 27 rows 18 and 19 - Reference corrected  -5.1.1.2 - reflect the changes from the CR NOK-0067 for this section  -6.1.3, page 103, rows 20 and 21 - Section reference corrected to 6.1.2 -6.3.1.4.1 F1-C IE handling - 1. UE CTXT MOD REQ, rows 339 to 341; "SRB To Be Released List" IE should be "Not included"  -6.3.1.5.1 F1-C IE handling - Remove section because it is "void"  - 6.12.1, Message Flow for F1, please include AMF node in step 1 in the figure. It shall be from UE <-> AMF.  -Section A.1.2.1 and A.1.2.3 - Editorial. introduce space in "SelectedPLMN" and "ServingPLMN |
| 2024.07.04 | 13.00.03 | This version of the specification:  -6.1.2.2 - Inserted a note to the figure "NOTE: NAS Authentication and Security depend on the AMF. It is outside the scope of this specification." due to the CR DCM-0094  -6.1.3.2 - Editorial space between SRB1 and "-"  -6.5.1.3- Message flow of 6.5.1.3: The DDDS between "6. RA Procedure" and "7.RRCReconfigurationComplete" changed to a one-way arrow from gNB-DU to gNB-C  -7.2.1.8.2 - Comment Tag for the CR changed to NOK-0067 |
| 2024.07.09 | 13.00.04 | For this version of the specification the following changes were introduced:  -All comments were removed  -All changes compared to 13.00 have been accepted and track changes has been turned off |
| 2024.07.10 | 13.00.05 | -This document is now labelled R004 instead of R003. This is because MVP-C and OCOP informed that all specifications going to the July 2024 approval train should be labelled R004 |
| 2024.11.15 | 14.00.01 | This version of the specification:  - replaced version 13.00 with 14.00  - implemented the following CRs:  DCM-0101  DCM-0102  ERI-0125  ERI-0126  ERI-0127  FJT-0103  FJT-0104  FJT-0105  MAV-0001  MAV-0002  NOK-0068  NOK-0070 |
| 2024.11.25 | 14.00.02 | This version of the specification:  - 6.5.4 changes the sentence: "The following parameter conditions ~~is~~are applied for this procedure" and in 6.5.4.2: F1-C IE handling the order of the tabs is corrected.  - The title is changed to "O-RAN.WG5.**TS.**C.1-R004-v14" to comply with WORKPROC v04.00 |
| 2024.11.25 | 14.00.03 | This version contains no comments and all changes have been accepted and track changes has been turned off |

</div>
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG5.TS.C.1-R004-v14.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG5.TS.C.1-R004-v14.00.docx).
