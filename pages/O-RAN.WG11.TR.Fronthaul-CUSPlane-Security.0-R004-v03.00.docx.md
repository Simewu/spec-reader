## O-RAN.WG11.TR.Fronthaul-CUSPlane-Security.0-R004-v03.00.docx

- View in [Reader Mode](https://simewu.com/spec-reader/pages/01-WG11/O-RAN.WG11.TR.Fronthaul-CUSPlane-Security.0-R004-v03.00.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG11.TR.Fronthaul-CUSPlane-Security.0-R004-v03.00.docx).

---

![](../assets/images/5fb59d1cc9ef.tiff.png)O-RAN.WG11.TR.Fronthaul-CUSPlane-Security.0-R004-v03.00

Technical Report

Copyright (C) 2025 by the O-RAN ALLIANCE e.V.

The copying or incorporation into any other work of part or all of the material available in this document in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this document for your personal use, or copy the material of this document for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany

Register of Associations, Bonn VR 11238, VAT ID DE321720189

O-RAN Work Group 11 (Security Work Group)

Study on Security for Fronthaul CUS-Plane

Contents

Foreword 4

Modal verbs terminology 5

1. Scope 6

2. References 7

2.1 Informative References 7

3. Definition of terms, symbols, and abbreviations 8

3.1 Terms 8

3.2 Symbols 8

3.3 Abbreviations 8

4. Security for Fronthaul CUS-Plane 10

4.1 Introduction 10

4.2 Security for S-Plane 10

4.2.1 Introduction 10

4.2.2 Key Issues 10

4.2.3 Solutions 15

4.2.4 Evaluation and Conclusions 17

4.3 Security for C-Plane 19

4.3.1 Key Issues 20

4.3.2 Solutions 25

4.3.3 Evaluation and Conclusions 25

4.4 Security for U-Plane 26

4.4.1 Key Issues 26

4.4.2 Solutions 26

4.4.3 Evaluation and Conclusions 27

4.5 Security for Fronthaul Ethernet L1 physical layer interface 27

4.5.1 Key Issues 27

4.5.2 Solutions 28

4.6 Security at Fronthaul Layer 2 using MACsec 29

4.6.1 Introduction 29

4.6.2 MACsec Solution Proposals for Fronthaul Security Protection 29

4.6.3 Deployment consideration for MACsec in Open Fronthaul 36

Annex A (informative): Port-based authentication using 802.1x and 802.1AR Secure Device Identity 48

Annex B (informative): Deployment consideration for encryption of C Plane messages in an Open Fronthaul network 49

5. Change history/Change request (history) 51

**LIST OF FIGURES**

Figure 4.2.2.1.1-1 Possible fake ANNOUNCE message attack scenarios in an LLS-C2 deployment. 12

Figure 4.2.2.1.1-2 Possible fake ANNOUNCE message attack scenarios in an LLS-C3 deployment. 12

Figure 4.2.4.1.1.2-1 Topology Configurations of S-Plane Deployment Scenarios 19

Figure 4.6.2.1-1 MACsec using EDE-CC solution proposal for fronthaul security protection 30

Figure 4.6.3.1.1.1-1 MACsec enabled at O-RU and O-DU 32

Figure 4.6.3.1.1.2-1 MACsec enabled at edge Transport Network Elements 32

Figure 4.6.3.1.1.3-1 MACsec enabled at O-RU and TNE2 33

Figure 4.6.3.1.1.4-1 MACsec enabled at TNE1 and O-DU 33

Figure 4.6.3.1.1.5-1 MACsec enabled at O-DU and O-RU 34

Figure 4.6.3.1.1.6-1 MACsec enabled at O-RU and TNE at the Central Site 34

Figure 4.6.3.1.1.7-1 MACsec enabled at FHM and O-DU at the Central Site 34

Figure 4.6.3.1.1.8-1 MACsec enabled at FHM and O-DU at the Central Site 35

Figure 4.6.3.1.2.1-1 C-Plane and M-Plane protection based on MACsec in LLS-C1 topology 35

Figure 4.6.3.1.2.2-1 C-Plane and M-Plane protection based on MACsec in LLS-C2 topology 36

Figure 4.6.3.1.2.3-1 C-Plane and M-Plane protection based on MACsec in LLS-C3 topology 36

Figure 4.6.3.1.3.1-1 Shared O-RU Concept [i.5] 37

Figure 4.6.3.1.3.2.1-1 MACsec enabled at TNE 38

Figure 4.6.3.1.3.2.2-1 MACsec enabled at the Shared O-RU and the O-DUs 38

Figure 4.6.3.1.3.2.3-1 MACsec enabled at the Shared O-RU and the O-DUs 39

Figure 4.6.3.1.3.2.4-1 MACsec enabled at the Shared O-RU and the O-DUs 39

Figure 4.6.3.1.3.2.5-1 MACsec enabled at TNEs in a non-collocated O-DU scenarios 40

Figure 4.6.3.1.3.2.6-1 MACsec enabled at Shared O-RU and non collocated O-DUs 40

Figure 4.6.3.1.3.2.7-1 MACsec enabled at Shared O-RU directly connected to TNEs in non-collocated O-DUs scenario 41

Figure 4.6.3.1.3.2.8-1 MACsec enabled at the Shared O-RU and the O-DUs for SHARED-ORU-MULTI-OPERATOR Configuration in Hybrid mode. 42

# Foreword

This Technical Report (TR) has been produced by O-RAN Alliance.

# Modal verbs terminology

In the present document "**shall**", "**shall not**", "**should**", "**should not**", "**may**", "**need not**", "**will**", "**will not**", "**can**" and "**cannot**" are to be interpreted as described in clause 3.2 of the O-RAN Drafting Rules (Verbal forms for the expression of provisions).

"**must**" and "**must not**" are **NOT** allowed in O-RAN deliverables except when used in direct citation.

# Scope

The present document studies aspects of securing the C, U and S (CUS) planes on the Open Fronthaul interface between the O-DU and O-RU.

The study details key issues impacting security, threats emanating from the key issues, and determines potential solutions for securing CUS-Plane traffic on Open Fronthaul.

# References

## Informative References

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies. In the case of a reference to a 3GPP document, a non-specific reference implicitly refers to the latest version of that document in Release 18, or the latest 3GPP release prior to Release 18 that includes that document.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long term validity.

The following referenced documents are not necessary for the application of the present document, but they assist the user with regard to a particular subject area.

1. IETF RFC 7384: "Security Requirements of Time Protocols in Packet Switched Networks
2. ITU-T G. 8275.1/Y.1369.1 Precision time protocol telecom profile for phase/time synchronization with full timing support from the network
3. Zero Trust Architecture. NIST Special Publication 800-207. <https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-207.pdf>
4. IEEE Standard for Local and Metropolitan Area Networks--Port-Based Network Access Control, in IEEE Std 802.1X-2020 (Revision of IEEE Std 802.1X-2010 Incorporating IEEE Std 802.1Xbx-2014 and IEEE Std 802.1Xck-2018), vol., no., pp.1-289, 28 Feb. 2020, doi: 10.1109/IEEESTD.2020.9018454
5. O-RAN ALLIANCE TS: "O-RAN Control, User and Synchronization Plane Specification".
6. O-RAN ALLIANCE TS: "O-RAN Management Plane Specification".
7. O-RAN ALLIANCE TS: "O-RAN White Box Hardware Deployment Scenarios and Base Station Classes"
8. VOID
9. IEEE Std 802.1AE-2018, IEEE Standard for Local and metropolitan area networks -- Media Access Control (MAC) Security, IEEE, 2018
10. IEEE Std 1588 - 2019, IEEE Standard for a Precision Clock Synchronization Protocol for Networked Measurement and Control Systems, IEEE, 2019
11. 3GPP TS 33.511: "Security Assurance Specification (SCAS) for the next generation Node B (gNodeB) network product class"
12. O-RAN ALLIANCE TS: "Xhaul Packet Switched Architectures and Solutions"
13. O-RAN ALLIANCE TS: "Synchronization Architecture and Solution Specification."
14. O-RAN ALLIANCE TR: "O-RAN Security Threat Modeling and Risk Assessment"
15. IETF RFC 6407: "The Group Domain of Interpretation"
16. IETF RFC 4082: "Timed Efficient Stream Loss-Tolerant Authentication"
17. 3GPP TS 38.323: "NR; Packet Data Convergence Protocol (PDCP)"
18. ITU-T SG15-LS91: ITU-T Study Group 15 Liaison Statement to O-RAN ALLIANCE
19. ITU-T G8273.2: Timing characteristics of telecom boundary clocks and telecom time synchronous clocks for use with full timing support from the network
20. O-RAN ALLIANCE TS:"O-RAN Security Requirements and Controls Specification"
21. IEEE Std 802E-2020: Privacy Considerations for IEEE 802 Technologies

# Definition of terms, symbols, and abbreviations

## Terms

**T2a\_min\_cp\_ul:** The minimum O-RU data processing delay between receiving real-time up-link control plane message over the fronthaul interface and receiving the first IQ sample at the antenna.

**T2a\_max\_cp\_ul:** The earliest allowable time when a real-time up-link control message is received before the corresponding first IQ sample is received at the antenna.

**Tcp\_adv\_dl:** Corresponding to the time difference (advance) between the reception window for downlink real-time Control messages and reception window for the corresponding IQ data messages.

**Common Port:** An instance of the MAC Internal Sublayer Service (ISS) used by the SecY to provide transmission and reception of frames for both the controlled and uncontrolled ports.

**Controlled Port:** The access point used to provide the secure MAC Service to a client of a MAC Security Entity (SecY).

**MAC Security Entity (SecY):** The entity that operates the MAC Security protocol within a system.

**Uncontrolled Port:** The access point used to provide the insecure MAC Service to a client of a MAC Security Entity (SecY).

**Ethernet Data Encryption device (EDE):** A two-port bridge that transmits and receives frames that are assumed to be unprotected to and from one red-side port, and conditionally relays those frames to and from its other black-side port, protecting and verifying frames transmitted and received on the black-side port using MACsec.

**red-side:** Identifies the Ethernet Data Encryption device (EDE) port that does not use MACsec to protect transmitted frames or verify received frames.

**black-side:** Identifies the Ethernet Data Encryption device (EDE) port that uses MACsec to protect transmitted frames and verify received frames.

## Symbols

## Abbreviations

BTCA Best TimeTransmitter Clock Algorithm

CUS-Plane Control, User and Synchronization Plane

DL Downlink

DoS Denial of Service

eCPRI enhanced Common Public Radio Interface

EDE-CC Ethernet Data Encryption device with red-side recognition of C-TAGs and black-side addition and removal

of C-TAGs

eAxC\_ID eAxC Identifier

FHM Fronthaul Multiplexer

GDOI Group Domain of Interpretation

GM Grandmaster

ISS MAC Internal Sublayer Service

IQ In-phase and Quadrature-phase

MACsec Media Access Control security

M-Plane Management Plane

MitM Man-in-the-Middle

O-DU O-RAN Distributed Unit

O-RU O-RAN Radio Unit

O-CU O-RAN Control Unit

PDCP Packet Data Convergence Protocol

PDV Packet Delay Variation

PRTC Primary Reference Time Clock

PTP Precision Time Protocol

startSymbolId Start Symbol Identifier

SOH Shared Operator Host

SRO Shared Resource Operator

TESLA Timed Efficient Stream Loss-Tolerant Authentication

TNE Transport Network Equipment (an O-RAN term to denote a transport device)

T-BC Telecom Boundary Clock

T-GM Telecom Grandmaster

T-TC Telecom Transparent Clock

T-TSC Telecom Time Synchronous Clock

UL Uplink

VLAN Virtual Local Area Network

# Security for Fronthaul CUS-Plane

## Introduction

The Open Fronthaul interface links the O-DU with the O-RU with a Lower Layer Functional Split-7-2x based architecture as specified in the O-RAN CUS-Plane specification [i.5]. The present document studies the security aspects of the control plane, user plane and synchronization plane protocols used over the Open Fronthaul interface.

## Security for S-Plane

### Introduction

Within a PTP domain, the grandmaster clock is the primary source of time for clock synchronization using Precision Time Protocol (PTP).

The IEEE 1588[i.10] standard specifies the Best timeTransmitter Clock Algorithm (BTCA) for electing the network's grandmaster clock in a distributed fashion. The chosen grandmaster clock is responsible for the synchronization of the PTP timeReceiver nodes.

The BTCA is the basis of PTP functionality. The BTCA specifies how each clock on the network determines the best timeTransmitter clock in its subdomain of clocks, including itself. The BTCA runs on the network continuously and quickly adjusts for changes in network configuration.

ANNOUNCE messages are used by the BTCA in IEEE 1588[i.10] to build a clock hierarchy and select the grandmaster. A clock which considers itself a better timeTransmitter clock will transmit ANNOUNCE message to invoke a change of timeTransmitter clock. Once the current master recognizes the better clock, the current timeTransmitter stops transmitting SYNC messages and associated clock properties (ANNOUNCE messages in the case of IEEE 1588-2008) and the better clock takes over as timeTransmitter. The BTCA only considers the self-declared quality of clocks and does not take network link quality into consideration.

RFC 7384 [i.1] has a detailed threat analysis of several key issues and provides a set of security requirements for PTP. In the following clauses we identify and analyze relevant key issues when PTP is used in Open Fronthaul interface for timing and synchronization.

### Key Issues

#### Key Issue #1: Impersonation of a TimeTransmitter clock(Spoofing) within a PTP network with a fake ANNOUNCE message

##### Introduction

The S-Plane must be protected against an attacker within the PTP network impersonating the timeTransmitter clock's grandmaster Identity value and proposing himself as a grandmaster candidate by sending fake ANNOUNCE messages declaring him to be the best clock in the network. The attacker may be residing either within the attacked network (insider) or on an external network connected to the attacked network.

![](../assets/images/6215453a99f7.png)

Figure 4.2.2.1.1-1 Possible fake ANNOUNCE message attack scenarios in an LLS-C2 deployment.

![A computer screen shot of a computer  Description automatically generated](../assets/images/58adfd93a78d.png)

Figure 4.2.2.1.1-2 Possible fake ANNOUNCE message attack scenarios in an LLS-C3 deployment.

Figures 4.2.2.1.1-1 and 4.2.2.1.1-2 above depict possible fake ANNOUNCE message scenarios in an Open Fronthaul LLS-C2 and LLS-C3 deployments, respectively. In both deployments two possible scenarios are indicated. Scenario 1: An attacker can possibly gain access to the network and inject the fake ANNOUNCE messages. Scenario 2: An attacker can gain control of a network element and inject the fake ANNOUNCE messages.

##### Threats

This attack results in a situation where the attacker clock becomes a GM, PTP is operational, all clocks are synchronized, but the malicious GM provides intentionally inaccurate timing information.

This degradation in the accuracy of time may cause DoS to applications on all the O-RUs, and O-DUs that rely on accurate time, potentially bringing down the cell.

A cell outage caused by misaligned time, may further impact performance in connected neighboring cells.

##### Risk analysis

Impact:

* High - as it can bring down all the cells that the impacted O-RUs are serving.

Likelihood:

* High - Since ANNOUNCE messages can be seen publicly (as it is sent in clear text), unless link is confidentiality protected, it becomes easy for an attacker to spoof an existing timeTransmitter clock and use spoofed identity to declare itself as the timeTransmitter. This could be a bigger risk for a centralized timing network for the Open Fronthaul.

##### Potential Security Requirements

[REQ-1] The security mechanism for PTP shall support authentication of ANNOUNCE messages that allows timeReceivers to authenticate the identity of the timeTransmitters. The authentication mechanism shall also verify that the sender is authorized to be a timeTransmitter.

[REQ-2] The security mechanism for PTP shall provide a means to prevent spoofing of timeTransmitter clocks.

[REQ-3] The security mechanism for PTP shall provide integrity protection for ANNOUNCE messages

[REQ-4] The security mechanism for PTP shall provide replay protection for ANNOUNCE messages, for e.g. using a monotonically increasing packet sequence number.

[REQ-5] The security mechanism for PTP shall harden the clock nodes as per 3GPP TS 33.511 SCAS for gNB [i.11].

[REQ-6] The system may provide confidentiality protection for ANNOUNCE messages.

#### Key Issue #2: A Rogue PTP Instance wanting to be a Grandmaster

##### Introduction

The S-Plane must be protected against an attacker proposing himself as a grandmaster candidate by sending manipulated/malicious ANNOUNCE messages declaring him to be the best clock in the network. The attacker causes other nodes in the network to believe it is a legitimate timeTransmitter. The attacker has access to the PTP network and could launch this attack by either modification of in-flight PTP-stack-defined packets or injecting fake ANNOUNCE messages to the PTP network. It is assumed that the attacker has physical access to a segment of the network or has gained control of one of the nodes in the network.

##### Threats

This attack results in a situation where the PTP is operational, but timeReceivers are being provided intentionally inaccurate timing information.

This degradation in the accuracy of time or false time may cause DoS to applications on all the O-RUs and O-DUs that rely on accurate time, potentially bringing down multiple cells or a part of the network if affecting O-DUs.

A cell outage caused by misaligned time, may further impact performance in connected neighboring cells.

##### Risk analysis

Impact: High

Likelihood: Medium

Since PTP-stack messages can be seen publicly, it becomes easy for an attacker to spoof an existing timeTransmitter clock and use spoofed identity to declare itself as the timeTransmitter or directly interfere with data in PTP messages to reflect an incorrect time.

##### Potential Security Requirements

Same requirements indicated in 4.2.2.1.4

#### Key Issue #3: DoS attack against a timeTransmitter clock

##### Introduction

The S-Plane must be protected against the denial of service (DoS) attack towards a timeTransmitter clock of the timing network used by the Open Fronthaul to maintain the availability and accuracy of the timeTransmitter clock. An attacker can attack a timeTransmitter clock by sending an excessive number of time protocol packets, or can potentially record the packets and replay them at a later time or impersonate a legitimate clock, a timeReceiver, or an intermediate clock, by sending malicious messages to the timeTransmitter, thus degrading the victim's performance.

The attacker may be residing either within the attacked network (insider) or on an external network connected to the attacked network.

##### Threats

This attack results in a situation where the clock service is interrupted completely, or the timing protocol is operational, but timeReceivers are being provided inaccurate timing information due the degraded performance of the timeTransmitter clock, or cause the attacked clock to go back in time[i.1].

This clock service disruption or degradation in the accuracy of time may cause DoS to applications on all the O-RUs and O-DUs that rely on accurate time, potentially bringing down the cell or larger portion of mobile network.

A cell outage caused by misaligned time, may further impact performance in connected neighboring cells.

##### Risk analysis

Impact: High, especially for PTP network with telecom profile for time synchronization with full timing support from the network [i.2].

Likelihood: Medium

Since PTP messages are in clear text, unless link is confidentiality protected and there is no mandate for a timeTransmitter to authenticate its timeReceivers, it becomes easy for an attacker to conduct the network reconnaissance, map out the entire timing network topology and launch the DoS attack against the timeTransmitter clock.

##### Potential Security Requirements

[REQ-1] The security mechanism for PTP could provide a means for a timeTransmitter clock to authenticate its timeReceivers and verify that the sender of a protocol packet is authorized to send a packet of this type.

NOTE: This would require updates to IEEE 1588 specifications.

[REQ-2] The security mechanism for PTP could provide a means (e.g. random session keys for authentication) for protection against PTP replay attack.

NOTE: This would require updates to IEEE 1588 specifications.

[REQ-3] A security mechanism that is external to PTP such as MACsec at layer 2 may provide link layer based security enabling authentication, integrity, and confidentiality (optional, because of the cadence of PTP protocol itself) for the PTP messages, and thus effectively hiding the timing network topology and preventing DoS attack against the timeTransmitter clock or other nodes.

#### Key Issue #4: Selective interception and removal of PTP timing packets

##### Introduction

An attacker can position himself in such way that allows him to intercept and remove valid synchronization packets. This leads to clock synchronization errors of all clocks downstream or makes them go into free-running mode.

Attacks may be launched close to the GM by tapping the egress line and ingress line of an active GM clock. This impacts a larger set of timeReceivers who depend on this GM for timing synchronization.

Attacks may also target one or more timeReceivers. This is done by tapping the ingress or egress line of a particular timeReceiver (s). The impact is confined to the targeted timeReceivers, but is also applicable to T-BC where impact is larger the higher up in hierarchy the attack is.

Alternatively, a MiTM attacker can reside in an intermediate node such as T**-**TCs, T-TC routers and switches to launch this attack. Then the attacker has physical access to a node of the PTP n/w or has gained full control of one device in the network. This requires additional capability to tap the h/w where PTP timing is implemented, if T-BC or T-TC is implemented in SW, compromise the integrity of the service by remote code execution, or influence the local time in the T-TC or T-BC by affecting the T\_OC in the host device of network element.

##### Threats

Selective interception and removal or delay can impact timing packets and cause clock degradation in attacked nodes. Removing all packets or random packets may push the clocks in attacked nodes into free running mode or by careful manipulation adjust time and frequency of O-DU and O-RU impacting network wide operation of cellular service.

This attack results in a situation where the time protocol is operational, but T-TSC in O-DU and O-RU timeReceivers are being provided intentionally inaccurate timing information.

This degradation in the accuracy of time may cause DoS to applications on all the O-RUs that rely on accurate time, potentially bringing down the cell or O-DU impacting multiple O-RUs. Similar if affecting T-BC or T-TC.

A cell outage caused by misaligned time, may further impact performance in connected neighboring cells.

##### Risk Analysis

Impact: High

Likelihood: Low.

Attacker either has to tap into a line or has complete control of an intermediate node to launch this attack. In an operator network, it is expected that physical assets including transmission lines are adequately protected from tampering and sabotage.

##### Potential Security Requirements

There shall be a security mechanism that provides protection against MitM attacks that degrade the clock accuracy due to PTP timing packet removal or packet delay attacks. This type of attack would be mitigated by deploying confidentiality protection on all messages as an attacker would need to delay all packets and not just selectively Sync and delay request, increasing the complexity. As all packets are obfuscated it would not be possible to selectively drop PTP related ones.

NOTE: Cryptographic security protocols cannot protect against packet drops. One suggested mechanism is to have a secure architecture that provides redundant paths between GM and timeReceivers, which then allows the operator to switch to another path between GM and timeReceivers.

#### Key Issue #5: Packet delay manipulation attack

##### Introduction

IEEE 1588 requires symmetric delays between GM and timeReceivers. In packet delay manipulation attacks, the attacker is positioned such a way that allows him to delay the transmission of legitimate time synchronization protocol packets to the intended destination.

An attacker launches this attack by either tapping the transmission network or by taking control of an intermediate nodes such as routers, switches and T-TCs.

##### Threats

This attack results in a situation where the time protocol is operational, but timeReceivers are being provided intentionally inaccurate timing information.

This degradation in the accuracy of time may cause DoS to applications on all the O-RUs, O-DU and T-TSC of the intermediate T-TC or T-BC that rely on accurate time, potentially bringing down the cell or partial or entire mobile network depending on where the attacker is.

A cell outage caused by misaligned time, may further impact performance in connected neighboring cells.

##### Risk Analysis

Impact: High

Likelihood: Low.

Attacker either has to tap into a line or has complete control of an intermediate node to launch this attack. In an operator network, it is expected that physical assets including transmission lines are adequately protected from tampering and sabotage.

##### Potential Security Requirements

Same as 4.2.2.4.4.

### Solutions

#### Solution #1: Hardening of Fronthaul infrastructure

Implementing protection for S-Plane PTP messages is challenging for the following reasons:

- Need hardware support on new devices for timestamping and support for it in existing devices. Vendors would require at least 2yrs to implement this feature in their products. Until then their products will not be O-RAN standards compliant.

- Any e2e security between timeTransmitter and timeReceiver, will disallow use of transparent clocks in the network as it needs to update the correction field.

- Also, this means legacy equipment can never be "O-RAN Compliant". For WG4, this would be considered a non-backward-compatible change to the FH interface.

It is therefore infeasible to realize the solution with the present state of hardware availability in the market.

Security for S-Plane PTP messages would be implicitly achieved by hardening of all the network elements in the Open Fronthaul network including O-RU, intermediary switches, and physically securing all the underlying infrastructure including transmission wires etc.

#### Solution #2: Using Layer-2 MACsec for protecting S-Plane messages

MACsec [i.9] could be a possible solution for protection of S-Plane messages. When MACsec is used, PTP messages are protected at Layer 2.

Evaluation of the impact of using MACsec on S-Plane messages are discussed in clause 4.2.4.1.

#### Solution #3: Authentication and Authorization based on 802.1X Port Based Access Control

In order to prevent an attacker masquerading as a grandmaster or manipulating PTP to degrade synchronization, it is essential to implement authentication and authorization for PTP nodes.

The two most common deployment models for O-DU in O-RAN are:

* O-DU at the cell site deployment model: the O-DU is collocated with the O-RU with a direct connection between the two (LLS-C1) through a cell site gateway router.
* O-DU at the Data Centre deployment model: the O-DU is at a Data Centre. The O-RUs at the cell site connect to the O-DU via a direct connection between O-RU and O-DU (LLS-C1) or intermediary Ethernet switches (LLS-C2 or LLS-C3).

IEEE 802.1X-2020 Port-based Network Access Control [i.4] provides the means to control network access in point-to-point LAN segments within the Open Fronthaul network. It provides a solution for the authentication and authorization of S-Plane PTP nodes within Open Fronthaul point-to-point LAN segments.

Clause 4.5.2.1 provides an e2e solution of protecting the Open FH Interface using Port Based Access Control.

#### Solution #4: Providing redundancy in Open Fronthaul synchronization architecture

In order to protect the S-Plane against MitM attacks that degrade the clock accuracy due to packet delay attacks or selective interception and removal attacks [i.1] it is essential to have redundancy and resiliency in the Open Fronthaul Synchronization architecture.

The following architectural recommendations for security controls build S-Plane redundancy into the Open Fronthaul for increased robustness against security breaches.

- The Open Fronthaul Synchronization architecture supports simultaneous Grandmasters.

- The Open Fronthaul Synchronization architecture supports the assignment of GMs to physically separated PTP ports. Multiple timeTransmitters could be connected to offer topology resilience.

O-RAN Synchronization Architecture and Solution Specification [i.13] Clause 8.2.4 provides additional details on redundancy for the Open Fronthaul Synchronization architecture.

#### Solution #5: Using the PTP integrated security mechanism

* + - * 1. General

To ensure the security of the S-plane in the O-RAN fronthaul, the authentication mechanism defined in IEEE 1588-2019 [i.10], clause 16.14 is considered. This involves using the AUTHENTICATION TLV to provide source authentication, message integrity, and replay attack protection for PTP Announce messages within a PTP domain.

For event messages, care must be taken to make sure that time stamping accuracy is not decreased when updating the AUTHENTICATION TLV. This can be especially demanding for 1-step clocks. Another aspect to consider is that PTP messages are sent in clear text making them at risk of man-in-the-middle attacks delaying PTP event messages in a manner that impacts the timing accuracy. It should also be noted that the PTP integrated security mechanism only addresses PTP security, not any other L2 protocol. This will impact the security posture if the goal is to be consistent with a zero trust architecture (ZTA).

* + - * 1. Key Management Scheme for the PTP integrated security mechanism

For a security key management scheme, the following options can be considered:

* GDOI: GDOI ("Group Domain of Interpretation," [i.15]) is a group key management protocol that provides secure distribution and management of cryptographic keys to multiple entities in a group. It enables efficient and scalable authentication and encryption for large networks.
* TESLA: TESLA ("Timed Efficient Stream Loss-Tolerant Authentication," [i.16]) is a one-way hash chain-based authentication mechanism that provides message authentication, allowing all message receivers to check the integrity and authenticate the source of each message in multicast or broadcast data streams.
* Direct configuration: Direct configuration involves manually configuring the security keys on each network element.

### Evaluation and Conclusions

#### Solution #2: Using Layer-2 MACsec for protecting S-Plane messages

##### Evaluation

###### Implementation challenges in PTP over MACsec

MACsec [i.9] provides security using end-to-end and hop-by-hop modes on Ethernet links. ITU-T Study Group 15 lists the use of MACsec as an option to provide confidentiality and integrity protection for PTP and has shared this list with the O-RAN ALLIANCE via a Liaison Statement ITU-T SG15-LS91 [i.18]. However, PTP over MACsec implementation has its challenge related to timestamping of PTP event messages. There are two types of clock implementation in PTP - one-step clock and two-step clock. Each of these has its challenges in implementing PTP over MACsec. Special care needs to be taken when designing the timestamping mechanism to make sure that PTP Event messages are timestamped without impacting time accuracy. This can be more demanding for 1-step clocks than 2-step clocks. A benefit of using MACsec is that all ethernet frames can be encrypted to provide confidentiality and integrity protection, decreasing risk of MitM attacks.

Implementation of Sync message transmission in one step clock

In one step clock implementation, egress timestamp of Sync message is inserted in Sync message itself. There are at least three possible ways to implement timestamping of PTP Sync messages in the egress (TimeTransmitter) port.

1. Adjusting the ethernet frame including update of MACsec after timestamping without affecting the needed time accuracy
2. Implement the ethernet port so there is a deterministic delay from the timestamping point to the physical connector
3. Pick a timestamp corresponding to a future time and schedule the ethernet frame on the ethernet port when that future time occurs

Transmission of PTP delay request messages needs to be treated similar as sync messages with the exception that there is no need to insert the timestamp into the packet.

Implementation challenge in Sync message transmission in two-step clock

In two step clock, T1 timestamp is carried in a subsequent Follow Up message. Since Sync message does not carry T1 timestamp, this means that no modification of the message after timestamping is needed. This means that both Sync and Delay request messages can be timestamped and handled in the same fashion.

Implementation challenge in PTP event message reception

At reception of PTP messages inside a MACsec tunnel there is a need to do timestamping before decryption. This means that all received messages needs to be timestamped. The timestamp then follows the received messages and once it is decrypted and found to be a PTP event message the timestamp is used.

Another method is to implement the ethernet port so that there is a deterministic delay from the physical connector to the timestamping point.

###### Deployment challenges in PTP over MACsec

There are four S-Plane deployment scenarios for the O-RAN Open Fronthaul described in [i.5] and illustrated in the figure below.

![Diagram  Description automatically generated](../assets/images/86a6d4915c65.png)

Figure 4.2.4.1.1.2-1 Topology Configurations of S-Plane Deployment Scenarios

* Configuration LLS-C1 is based on point-to-point connection between O-DU and O-RU using network timing option. As shown above, it is the simplest topology for network timing option, where O-DU directly synchronizes O-RU.
* Configuration LLS-C2 is similar to LLS-C1 with O-DU acting as grandmaster to distribute network timing toward O-RU. One or more Ethernet switches are allowed between the central site (hosting O-DUs) and the remote sites (hosting O- RUs). All the switches in the synchronization path will need to support PTP with hop-by-hop MACsec for security protection while maintaining the needed ITU-T G8273.2 Class to meet end-to-end synchronization performance.
* Configuration LLS-C3 is similar to LLS-C2 except frequency and time distribution is made by the fronthaul network itself (not by the O-DU). That means that one or more PRTC/T-GM are implemented in the fronthaul network to distribute network timing toward O-DU and O-RU. One or more Ethernet switches are allowed between the central site (hosting O-DUs) and the remote sites (hosting O-RUs). Also, similar to LLS-C2, all the switches in the synchronization path will need to support PTP with hop-by-hop MACsec for security protection while maintaining the needed ITU-T G8273.2 [i.19] Class to meet end-to-end synchronization performance.
* Under configuration of LLS-C4, local or remote PRTC time source option is allowed at O-RU and O-DU respectively, there is no PTP based S-Plane required for the Fronthaul. Therefore, no PTP protection scheme is needed.

##### Conclusion

MACsec is being considered to provide confidentiality and integrity protection on the Open Fronthaul S-Plane. Hop-by-hop MACsec has additional benefits protecting all traffic on the LAN segment, not only S-Plane.

#### Solution #3: Authentication and Authorization based on 802.1X Port Based Access Control

##### Evaluation

The S-Plane should support authentication and authorization of PTP nodes that communicate with other PTP nodes within Configuration LLS-C1, Configuration LLS-C2, or Configuration LLS-C3.

This ensures least privilege access to the S-Plane by ensuring the authenticity of PTP nodes communicating over the Open Fronthaul network.

##### Conclusion

IEEE 802.1X Port-based Network Access Control [i.4] restricts network access to authorized PTP nodes.

#### Solution #4: Providing redundancy in Open Fronthaul Synchronization architecture

##### Evaluation

This clause addresses the Key Issue#4 as defined in clause 4.2.2.4

An architectural recommendation to S-plane security is proposed based on redundancy and resiliency in the Open Fronthaul Synchronization architecture.

##### Conclusion

Implementing redundancy and resiliency synchronization architecture provides timing/sync reliability by avoiding single point failure.

## Security for C-Plane

The O-RAN interface is divided into C-Plane and U-Plane parts.

The C-Plane must be available in order to process the corresponding U-Plane packets.

The main purpose of these messages is to transmit **data-associated control information** required for processing of user data (e.g., scheduling and beamforming commands).

To support coordination of C-Plane and U-Plane timing, the O-RAN interface specifies that C-Plane messages must arrive at the O-RU some amount of time in advance (Tcp\_adv\_dl) of the latest possible time the first corresponding U-Plane messages may arrive.

|  |  |
| --- | --- |
| According to clause 5.2.1 of C-Plane Transport[i.5] either **eCPRI or IEEE 1914.3** is used as an encapsulation mechanism for the control-plane messages.  C-Plane messages are encapsulated using a two-layered header approach.  The first layer consists of an **eCPRI common header** or **IEEE 1914.3 common header**, including corresponding fields used to indicate the message type, while the second layer is an **application layer** including necessary fields for control and synchronization. | Eth L1  Eth L2 + VLAN  IP (optional)  UDP (optional)  eCPRI / RoE |

The control information will not be transmitted via the eCPRI specific protocol.

This information can use protocols (e.g. TCP) over the IP protocol but **any other solution is not precluded**.

The control information flow will be considered as real-time control and utilize a small part of the total bandwidth between O-DU and O-RU entities.

Loss of a C-Plane packet is serious, with the possibility of impacting an entire slot's worth of data. -> A broader impact is also possible with C-Plane packet loss**: if downloaded beamforming weights, beamforming attributes, or channel information is lost** then a beamId may be incorrectly associated with an "old" set of beamforming weights thereby possibly impacting multiple slots. (packet loss can be detected via the sequence number so a recovery action may be taken to re-send messages), but no such action has been mandated yet in [i.5]).

Editor's Note: It is FFS how the sequence number recovery would work in case of injection of higher values.

### Key Issues

#### Key Issue #1: Spoofing of DL C-Plane messages

##### Introduction

As described in [i.5], clause 4.4.3, a DL C-Plane message describing multiple symbols must arrive at O-RU at least Tcp\_adv\_dl before the end of DL U-Plane receive window for symbol startSymbolId (the earliest symbol described by the message).

##### Threats

The lack of authentication could allow an adversary to inject its own DL C-Plane messages that falsely claim to be from the associated O-DU.

As a result, it would block the O-RU from processing the corresponding U-Plane packets, leading to temporary DoS. (dropping the entire DL C-Plane messages would achieve same goal)

##### Risk analysis

Impact: High

Likelihood: Medium

An attacker needs physical access to the network transporting C-Plane messages.

##### Potential Security Requirements

[REQ-1] The security mechanism for C-Plane shall support authentication of <DL C-Plane messages> to allow O-RU to authenticate the O-DU (transport-based endpoint identifiers). The authentication mechanism shall also verify that the O-DU is authorized to serve the O-RU.

#### Key Issue #2: Spoofing of UL C-plane messages

##### Introduction

A UL C-Plane message describing multiple symbols must arrive at O-RU at least t2a\_min\_cp\_ul before the earliest air interface UL signal sample of symbol startSymbolId (the earliest symbol described by the message) arrives at O-RU antenna. UL C-Plane messages from O-RU to O-DU are only defined in case of LAA operations.
(otherwise, there should be no C-Plane messages originated by the O-RU).

##### Threats

The lack of authentication could allow an adversary to inject its own UL C-Plane messages that falsely claim to be from the associated O-DU.

As a result, temporarily limited cell performance (or even DoS) on cells served by the O-RU and in addition a consequential threat to all O-RUs parented to that O-DU might exist. (dropping the entire UL C-Plane messages would achieve same goal)

##### Risk analysis

Impact: High

Likelihood: Medium

An attacker needs physical access to the network transporting C-Plane messages.

##### Potential Security Requirements

[REQ-1] The security mechanism for C-Plane shall support authentication of <UL C-Plane messages> to allow O-RU to authenticate the O-DU (transport-based endpoint identifiers). The authentication mechanism shall also verify that the O-DU is authorized to serve the O-RU as well as that the O-RU is authorized to communicate to the O-DU.

#### Key Issue #3: Loss of Availability of Cell (Sleeping Cell) caused by C-Plane message tampering.

##### Introduction

In mobile communication a sleeping cell is an unlocked cell that is transmitting on the broadcast channel, has no alarms active yet is unable to setup calls.

##### Threats

An attacker may tamper DL C-Plane messages to exploit possible vulnerabilities in the C-Plane protocol or C-Plane endpoint implementation to cause an active cell to become a sleeping cell. As a result, this would result in cell unavailability, leading temporarily to DoS.

##### Risk analysis

Impact: High

Likelihood: Medium; An attacker needs physical access to the network transporting C-Plane messages. Vulnerabilities in the C-Plane protocol or C-Plane endpoint implementation may exist.

##### Potential Security Requirements

[REQ-1] Authenticated integrity protection should protect C-Plane data flows through the fronthaul network, as that would allow the O-RU to detect altered messages and prevent their execution.

Further security measures include:

* **Regular Patching and Updates**: Keeping the C-Plane related software up to date by regularly applying security patches and updates provided by the vendor. This ensures that known vulnerabilities are fixed, reducing the risk of exploitation.
* **Network Segmentation**: Implementing network segmentation to isolate critical systems from the rest of the network. This limits the potential impact of a C-Plane protocol stack vulnerability by containing the attack within a smaller network segment.
* **Intrusion Detection and Prevention Systems** (IDPS): Deploying IDPS solutions to monitor network traffic and detect potential IP stack attacks in real-time. These systems can identify and block malicious activities, providing an additional layer of defense against exploitation.
* **Implementing a ZTA with MACsec e2e or hop-by-hop protecting the C-Plane**.

#### Key Issue #4: C-Plane volumetric DoS attacks.

##### Introduction

Attackers may overwhelm a target system's network bandwidth or computing resources by flooding it with a massive volume of traffic. This is called a volumetric Denial-of-Service (DoS) attack.

##### Threats

Threats of attackers mounting volumetric DoS attacks include

* **Bandwidth Exhaustion**: Attackers generate a large amount of traffic directed at the target's network interfaces, consuming all available bandwidth. This can result in legitimate data flows being unable to access the services or resources provided by the target system.
* **Resource Consumption**: Volumetric DoS attacks consume significant computing resources of the target, such as CPU, memory, or network connections. This can lead to degraded performance or even a complete system failure, rendering the target inaccessible.
* **Network Congestion**: The high volume of malicious traffic overwhelms the network infrastructure between the attacker and the target, causing congestion and potentially impacting other network services or users.

##### Risk analysis

Impact: High

Likelihood: Medium; An attacker needs physical access to the network transporting C-Plane messages and sufficient resources to actually overwhelm the network/target.

##### Potential Security Requirements

[REQ-1] Authenticated integrity protection and anti-replay protection should allow the target to detect all legitimate messages with relatively low processing overhead. This would allow the target to defend against resource consumption.

[REQ-2] As a further security measure Traffic Monitoring and Analysis can be employed, i.e. implementing network traffic monitoring and analysis tools to detect and identify abnormal traffic patterns that may indicate a volumetric DoS attack. Solutions like intrusion detection and prevention systems (IDPS) or traffic anomaly detection systems can assist in real-time detection. Physical security and system Log monitoring can also help mitigate this type of an attack.

#### Key Issue #5: Intentionally causing delay or dropping of C-Plane messages carrying scheduling and beam forming commands

##### Introduction

UL C-Plane message describing multiple symbols must arrive at O-RU at least t2a\_min\_cp\_ul before the earliest air interface UL signal sample of symbol startSymbolId (the earliest symbol described by the message) arrives at O-RU antenna.

DL C-Plane message describing multiple symbols must arrive at O-RU at least Tcp\_adv\_dl before the end of DL U-Plane receive window for symbol startSymbolId (the earliest symbol described by the message).

##### Threats

Any delay in the arrival of these messages would cause the O-RU to drop/discard UL C-Plane and DL C-Plane traffic from O-DU and the UE causing a denial of service for the impacted UEs.

##### Risk analysis

Impact: Medium

Likelihood: Medium

An adversary or insider would need to have direct (physical) access to the network path between O-DU and O-RU, e.g. to routers and switches, to employ active monitoring techniques to intercept messages. The adversary can then store and forward the intercepted messages, inducing an intentional delay in the arrival of the message at the O-RU. This would cause the O-RU to drop /discard UL C-Plane and DL C-Plane traffic resulting in a DoS attack on the O-RU.

##### Potential Security Requirements

None

#### Key Issue #6: Targeted Reconnaissance attack on a user

##### Introduction

When the flow indicator (eAxCID) is carried in clear text, an attacker can look at this information to target a certain user in a certain physical location. User Identity is not revealed, but there could be scenarios where an attack can be pre-meditated on a well-known user based on the available location of the user at a certain point in time.

Combined with a correlation attack on backhaul data may reveal more about the individual or organization, see [i.21]

##### Threats

This attack can be used to launch a reconnaissance attack on the targeted user based on the flow indicator and traffic patterns.

##### Risk analysis

Impact: Medium

Likelihood: Low

Malicious actors can engage in passively monitoring the beamforming information for reconnaissance purposes. However, conducting a successful reconnaissance attack of this nature requires prior knowledge of the targeted user's movement patterns and required infrastructure. The post-processing needed to extract useful user-specific information is a complex and exhaustive process.

##### Potential Security Requirements

[REQ-1] The C-Plane data should be encrypted to prevent an insider from intercepting or gathering sensitive information on a targeted user.

This requirement applies to deployment scenarios where the O-RU and O-DU are in two separate locations connected via a switched fronthaul network. Refer to Annex B for additional information.

NOTE: In scenarios where the O-RU and O-DU are collocated and confined within the secure perimeter of a cell-site location, the need for encryption of C-Plane messages is reduced.

Physical security of a cell site is ensured by security measures like restricted access to the site which means only authorized personal, should be allowed entry and access may be controlled by keycards, biometrics, or other secure mechanisms. Additionally, surveillance systems, and secure enclosures for the O-RAN components, regular audit and inspections are other measures that ensure perimeter security of a cell site.

#### Key Issue #7: Tampering of DL C-Plane messages in a switched fronthaul network

##### Introduction

C-Plane messages may contain control information necessary for the O-RU like resource mapping, beamforming, and DL power control to properly perform its tasks. Switched fronthaul networks are described as LLS-C2, LLS-C3 and LLS-C4 types of fronthaul networks in [i.5], clause 11.2.2.

##### Threats

Depending on the installation topology, the O-DU and O-RU can be in physically separate locations. The network path between the O-DU and O-RU can be publicly accessible and does not require any physical access protections. The network interface is an industry standard interface with publicly available testing and analysis tools.

An attacker may tamper DL C-Plane messages to

* Distort the mapping of the logical flows onto the physical resources.
* Distort the beamforming (the UE does not receive the signal as the beams are modified).
* Modify the commands for DL power, possibly leading to inadequacy between the MCS and the DL power, leading to insufficient SINR or, conversely, PA saturation.
* Issue Network Energy Saving C-Plane commands that turn off the O-RU disrupting all traffic.

As a result, this would result in cell unavailability, leading temporarily to DoS.

##### Risk analysis

This risk analysis expects that no security measures are applied, i.e. the network is set up as a single broadcast region and all messages are unprotected.

Impact: High

Likelihood: Medium - An attacker needs access to the network transporting C-Plane messages. Depending on the installation topology, the network path between the O-DU and O-RU can be publicly accessible.

##### Potential Security Requirements

[REQ-1] Authenticated integrity protection should protect all C-Plane data flows through the fronthaul network, as that would eliminate all options for an attacker of tampering with or injecting C-Plane messages.

[REQ-2] Further security measures include:

* **Network Segmentation**: Implementing network segmentation to isolate critical systems from the rest of the network. This limits the potential impact of a C-Plane protocol stack vulnerability by containing the attack within a smaller network segment.
* **Intrusion Detection and Prevention Systems** (IDPS): Deploying IDPS solutions to monitor network traffic and detect potential IP stack attacks in real-time. These systems can identify and block malicious activities, providing an additional layer of defense against exploitation.
* **Implementing a ZTA with MACsec e2e or hop-by-hop protecting the C-Plane**.

NOTE 1: Authenticated integrity protection does not prevent an attacker from blocking the control messages which could also lead to DoS and cell unavailability.

#### Key Issue #8: C-Plane protocol stack vulnerability attacks in a switched fronthaul network

##### Introduction

Attackers may exploit vulnerabilities in the implementation of the protocol stack termination points on the O-RAN Open Fronthaul C-Plane. Switched fronthaul networks are described as LLS-C2, LLS-C3 and LLS-C4 types of fronthaul networks in [i.5], clause 11.2.2.

##### Threats

Threats of attackers exploiting vulnerabilities include

* **Remote Code Execution**: If an attacker successfully exploits a vulnerability in the C-Plane protocol stack implementation, they can execute arbitrary code on the target system. This can lead to unauthorized access, data breaches, and further compromise of the O-RU or O-DU.
* **Information Disclosure**: Vulnerabilities in the C-Plane protocol stack can lead to unintended information disclosure, such as leaking sensitive data or exposing system configurations. Attackers can exploit these vulnerabilities to gain valuable insights about the targeted system, which can be used for further attacks.
* **Protocol Exploitation**: Exploiting protocol vulnerabilities can lead to unauthorized access, network manipulation, or the injection of malicious packets into the network.

##### Risk analysis

This risk analysis expects that no security measures are applied, i.e. the network is set up as a single broadcast region and all messages are unprotected.

Impact: High

Likelihood: Medium; An attacker needs physical access to the network transporting C-Plane messages.

##### Potential Security Requirements

[REQ-1] Authenticated integrity protection should protect all C-Plane data flows through the fronthaul network, as that would eliminate all options for an attacker of exploiting vulnerabilities in the C-Plane protocol stack.

[REQ-2] Further security measures include:

* **Regular Patching and Updates**: Keeping the C-Plane related software up to date by regularly applying security patches and updates provided by the vendor. This ensures that known vulnerabilities are fixed, reducing the risk of exploitation.
* **Network Segmentation**: Implementing network segmentation to isolate critical systems from the rest of the network. This limits the potential impact of a C-Plane protocol stack vulnerability by containing the attack within a smaller network segment.
* **Intrusion Detection and Prevention Systems** (IDPS): Deploying IDPS solutions to monitor network traffic and detect potential IP stack attacks in real-time. These systems can identify and block malicious activities, providing an additional layer of defense against exploitation.

### Solutions

#### Solution1: Layer-2 MACsec for protecting C-plane messages

The clear text nature of the C-Plane messages over the Ethernet exposes the open-fronthaul to the threats and risks identified in clause 4.3.1.

MACsec [i.9] is a Layer 2 security protocol providing data confidentiality, frame data integrity, and authenticity of data origin including replay protection. It ensures that data transmitted over Ethernet networks is protected from eavesdropping, denial of service, passive monitoring, and tampering, and replay.

The recommendation is to establish MACsec between the O-RU and O-DU in an End-to-End tunnel mode or hop-by-hop mode. With End-to-End mode, the intermediary switches need not be MACsec aware, overcoming deployment challenges faced in hop-by-hop MACsec.

As per the guidelines provided in IEEE 802.1AE-2018[i.9], C-Plane data should be protected using MACsec in scenarios where the O-RU and O-DU are in two separate locations connected via a switched fronthaul network.

In this solution, the functional blocks of controlled port, uncontrolled port, and Ethernet Data Encryption (EDE), as defined in the standard IEEE 802.1AE -2018[i.9] clauses 5.2, 5.3 and 15.6 are used to selectively apply MACsec for C-plane messages.

Clause 4.6.2 provides an End-to-End solution of protecting the Open FH Interface. The C-plane messages are sent on controlled port where MACsec is applied, while S-plane messages are not protected by MACsec.

### Evaluation and Conclusions

#### Evaluation

MACsec is a viable solution for securing C-Plane traffic in the Open Fronthaul network. This solution addresses the key issue#3, #4, #6 in clause 4.3.1.

#### Conclusion

IEEE 802.1AE-2018[i.9] MACsec is recommended as a solution to protect C-plane messages on the Open Fronthaul interface.

MACsec is configured in an End-to-End tunnel mode or Hop-by-Hop mode. Hop-by-Hop mode requires the intermediate nodes to support MACsec. End-to-End mode does not require the intermediate nodes to support MACsec. Due to the additional need for MACsec resources (number of needed SecYs/SCs), networks using End-to-End mode are generally more limited in size (size as number of fully interconnected peers across a PBN) relative to networks using Hop-by-Hop MACsec. Due to the per-hop need for MACsec de- and encryption procedures which processing times draw from the End-to-End latency budget, networks using Hop-by-Hop mode are generally more limited in size (size as the maximum overall path length throughout the PBN) relative to networks using End-to-End MACsec.

## Security for U-Plane

### Key Issues

#### Key Issue #1: Tampering of U-Plane messages.

##### Introduction

U-Plane messages contain information necessary like the I/Q and RACH packets to properly perform its tasks.

##### Threats

An attacker may

* Tamper with I/Q packets OR
* Discard valid I/Q packets and replaces them by fake ones.
* Tamper with RACH messages OR
* Discard valid RACH packets and replaces them by fake ones.

As a result, this would result in cell unavailability.

##### Risk analysis

Impact: High

Likelihood: Medium

An attacker needs access to the network transporting U-Plane messages.

##### Potential Security Requirements

[REQ-1] Authenticated integrity protection should protect all U-Plane data flows through the fronthaul network and would eliminate all option for an attacker of tampering.

### Solutions

#### Solution1: Layer-2 MACsec for protecting U-Plane messages

The U-Plane data packets that carry information related to I/Q samples and PRACH are transported over Open Fronthaul as encapsulated Ethernet packets and are not integrity protected. These messages are susceptible to attacks described in clause 4.4.1.1. Additionally, an adversary can also tamper with the eCPRI and O-RAN headers that remain unprotected.

The Packet Data Convergence Protocol (PDCP) [i.17] provides confidentiality and integrity protection of 5G System Control Plane and User Plane between O-CU-CP and UE, and O-CU-UP and UE, However, the above messages are not protected by PDCP.

MACsec [i.9], Layer 2 security protocol providing data confidentiality, frame data integrity, and authenticity of data origin is considered as a potential solution for protecting U-Plane data. It ensures that data transmitted over Ethernet networks is protected from eavesdropping, denial of service, passive monitoring, and tampering.

One of the concerns for proposing MACsec as potential security solution for U-Plane is the impact on Performance. However, with the MACsec evolving from local-area network (LAN) encryption technology to a much wider area in WAN transport along with Hardware based encryption and decryption enables to meet the performance and latency requirements in an Open Fronthaul network.

The potential solution is to enable MACsec[i.9] in an End-to-End tunnel mode for protecting U-Plane messages[PRACH, PUCCH,SSB, O-RAN Application and eCPRI headers] in the Open FH network. The decision to enable MACsec on the fronthaul network elements depends on the specific deployment scenarios outlined in the Fronthaul CUS Plane Security Analysis Technical Report.With this solution the intermediary switches need not be MACsec aware, and we overcome the deployment challenges faced in hop-by-hop MACsec.

In this solution, the functional blocks of controlled port, uncontrolled port, and Ethernet Data Encryption (EDE), as defined in the standard IEEE 802.1AE -2018[i.9] clauses 5.2, 5.3 and 15.6 are used to selectively apply MACsec for C-Plane and U-Plane messages.

Clause 4.6.2 provides an e2e solution of protecting the Open FH Interface. The C,U-Plane messages are sent on controlled port where MACsec is applied, while S-plane messages are transmitted unprotected on uncontrolled port.

### Evaluation and Conclusions

#### Evaluation

MACsec is a viable solution for securing U-Plane traffic in the Open Fronthaul network. This solution addresses the key issue#1 clause 4.4.1. Based on the topology options described in clause 4.6.3 MACsec can be enabled at various elements constituting the Open Fronthaul network.

#### Conclusion

IEEE 802.1AE-2018[i.9] MACsec is recommended as a solution to protect U-plane messages on the Open Fronthaul interface.

Hop-by-hop mode requires the intermediate nodes to support MACsec. End-to-end mode does not require the intermediate nodes to support MACsec. Due to the additional need for MACsec resources (number of needed SecYs/SCs), networks using end-to-end mode are generally more limited in size (size as number of fully interconnected peers across a PBN) relative to networks using hop-by-hop MACsec. Due to the per-hop need for MACsec de- and encryption procedures which processing times draw from the end-to-end latency budget, networks using hop-by-hop mode are generally more limited in size (size as the maximum overall path length throughout the PBN) relative to networks using end-to-end MACsec.

## Security for Fronthaul Ethernet L1 physical layer interface

### Key Issues

#### Key Issue #1: Unauthorized access to Open Fronthaul Ethernet L1 physical layer interface(s)

##### Introduction

The Open Fronthaul Ethernet L1 physical interface comprises one or more coaxial cables, twisted pairs, or optical fibers. Each end of the Open Fronthaul Ethernet L1 physical interface comprises a physical connection (colloquially known as an Ethernet Port) to physical O-RAN network elements, e.g., O-DU, O-RU, etc., as described in [i.5] and [i.7].

Unauthorized access to the Open Fronthaul Ethernet L1 physical layer interface (cables and connections) provides a means to launch attacks on the availability, integrity, and confidentiality of the Open Fronthaul system.

##### Threats

Potential loss of availability on the Open Fronthaul interface can occur from one or more of the following threats:

* An unauthorized device on the Ethernet L1 Interface can flood the L1 interface with unintended network traffic causing disruption or degradation of authorized network elements on the Open Fronthaul interface.
* An unauthorized device on the Ethernet L1 Interface can send L2 messages to authorized network devices causing disruption, denial, or degradation of the Open Fronthaul interface. This threat enables the attacks described in Key Issue 1, 2, and others.
* An attacker (person) gains access to the Open Fronthaul Ethernet L1 interface(s) and denies the Open Fronthaul services by disabling a physical connection to a network element either by removing an Ethernet port connection or cutting the physical interface (coaxial cable, twisted pair, or optical fibre).

Potential loss of availability, confidentiality, and/or integrity on the Open Fronthaul interface can occur from one or more of the following threats:

o An unauthorized device on the Ethernet L1 Interface has access to U-Plane traffic on the Open Fronthaul Interface.

o An unauthorized device on the Ethernet L1 Interface has access to S-Plane traffic on the Open Fronthaul Interface.

o An unauthorized device on the Ethernet L1 Interface has access to C-Plane traffic on the Open Fronthaul Interface.

o An unauthorized device on the Ethernet L1 Interface has access to M-Plane traffic on the Open Fronthaul Interface.

##### Risk Analysis

Impact: Depends upon effect from carrying out a threat.

Likelihood: High

##### Potential Security Requirements

[REQ-X1] The security mechanism for PTP shall provide a means to authenticate and authorize Ethernet Layer 1 physical connections between O-RAN network elements comprising an Open Fronthaul Interface.

[REQ-X2] The security mechanism for PTP shall provide a means to detect and report when an authorized Ethernet Layer 1 physical connection is made or broken.

### Solutions

#### Solution #1 Port Based Access Control for Open Fronthaul Network

This solution addresses KI #1 in clause 4.5.1.1.

Zero trust principles [i.3] call for least privileged access where the Open Fronthaul network should only allow network access to authorized network elements. IEEE 802.1X-2020 Port-based Network Access Control (NAC) [i.4] may be used to restrict access in point-to-point LAN segments within the Open Fronthaul network.

The scope of these requirements span those relevant to the O-RAN Alliance Open Fronthaul comprising port-based network control between supplicant and authenticator entities described in IEEE 802.1X-2020 and as further described in this section. All other entities and functionality described in IEEE 802.1X are out of scope of this O-RAN Alliance specification.

[REQ1] Operator implementation of IEEE 802.1X-2020 for Open Fronthaul port-based network access control is optional to use for each point-to-point LAN segment.

Supplicants in the Open Fronthaul Network

An Open Fronthaul Network element is an entity in a point-to-point LAN segment. Examples of O-RAN Alliance defined Open Fronthaul network elements include, but are not limited to, O-DU, O-RU, switches, FHM, FHGW, and PRTC-T/GM [i.5][i.6][i.7].

[REQ 2] Open Fronthaul network elements shall support IEEE 802.1X-2020 NAC supplicant functionality for each Port connection in the Open Fronthaul network element.

Authenticators in the Open Fronthaul Network

In IEEE 802.1X-2020 NAC a supplicant mutually authenticates with an authenticator.

[REQ 3] Any Open Fronthaul network element may be an authenticator in the Open Fronthaul network.

[REQ 4] An authenticator in an Open Fronthaul network shall perform port-based access control on each point-to-point LAN segment as defined in IEEE 802.1X-2020 NAC.

[REQ 5] IEEE 802.1X-2020 NAC between a supplicant and authenticator in an Open Fronthaul network shall use EAP -TLS authentication.

O-DU as an Authenticator

Configuration LLS-C1 [i.5] and Cascade Mode in the Shared Cell Concept [i.5] are cases where an O-DU and O-RU are Open Fronthaul network elements in a point-to-point LAN segment.

[REQ 6] In the case of Configuration LLS-C1, the O-DU must support the authenticator functionality as defined in IEEE 802.1X-2020 NAC.

[REQ 7] In the case of Cascade Mode in the Shared Cell Concept, the O-DU must support the authenticator functionality as defined in IEEE 802.1X-2020 NAC.

O-RU as an Authenticator

Cascade Mode in the Shared Cell Concept [i.5] is a case where an O-RU may be in a point-to-point LAN segment with another O-RU.

**Other requirements**

The following requirements are outside the scope of the Open Fronthaul and should be included in an appropriate O-RAN Alliance document.

Certificate Management

[REQ X] Bootstrap process for obtaining an operator X.509 certificate on a network element using CMPv2.

[REQ Y] X.509 certificate renewal for all network elements using CMPv2.

## Security at Fronthaul Layer 2 using MACsec

### Introduction

MACsec defined in the standard IEEE 802.1AE -2018[i.9] is a Layer 2 protocol that provides data confidentiality, frame data integrity, and authenticity of data origin including replay protection for all types of traffic on Ethernet links.

### MACsec Solution Proposals for Fronthaul Security Protection

MACsec can be configured in an End-to-End mode or Hop-by-Hop mode. Hop-by-Hop mode requires the intermediate nodes to support MACsec. End-to-End mode does not require the intermediate nodes to support MACsec.

MACsec configuration can be applied per VLAN or at the base interface level. This clause discusses potential solutions for O-DU and O-RU to establish MACsec using one of the below encryption modes.

1. MACsec using EDE-CC
2. WAN mode MACsec
3. LAN mode MACsec

The MACsec solution proposals 1 and 2 described below allows to apply MACsec per VLAN. The solutions enable selective filtering of traffic requiring encryption (C-Plane, U-Plane) from traffic(S-Plane) that does not require encryption in the Open Fronthaul network.

The MACsec solution proposal 3 applies MACsec at the base interface level and encrypts all traffic planes.

#### Solution 1# MACsec using EDE-CC

MACsec using EDE-CC involves EDE-CC, controlled port, uncontrolled port as functional blocks from IEEE 802.1AE[i.9] . This solution applies to scenarios where MACsec is applied based on VLAN tags and configured at the VLAN interface. This mode allows 802.1Q VLAN tags to be encrypted inside the MACsec header and also sent in clear text, outside the MACsec header. The inner VLAN tag is protected by MACsec while the outer VLAN tag is used for VLAN based switching in a network where some transport network elements may not be MACsec capable. This solution enables MACsec to be configured in an End-to End mode and the intermediate nodes do not need to support MACsec.

To prevent intermediary nodes from consuming MACsec packets, it is recommended to configure the group destination address as specified in IEEE 802.1AE-2018, Table 15.1.

![A computer screen shot of a computer screen  Description automatically generated](../assets/images/830bc34e4b63.png)

Figure 4.6.2.1-1 MACsec using EDE-CC solution proposal for fronthaul security protection

As shown in the Fig 4.6.2.1-1, the concept of controlled port, uncontrolled port, and Ethernet Data Encryption (EDE) from IEEE 802.1AE standard for MACsec [i.9] are used as functional blocks integrated within O-DU or O-RU. While transmitting, O-DU sends PTP messages unprotected whereas all C and U-Plane traffic travel towards the controlled port. This demultiplexing operation can be done based upon checking PTP EtherType for G.8275.1 profile. PTP messages go out from the hardware port and remain unprotected by MACsec. All the other traffic goes through an EDE functional block which protects traffic using MACsec. In the above figure, the EDE-CC, a variant of EDE, adds a cleartext VLAN header before MACsec header, which includes VLAN as well as VLAN PCP bits that are used for VLAN-based switching and identifying QoS profile in the MACsec unaware Fronthaul TNE connected to O-DU. While receiving, O-RU maps PTP messages to uncontrolled port and all the other traffic to an EDE. Again, PTP EtherType can be used for this demultiplexing operation. Through uncontrolled port, PTP messages go to 1588 layer in O-RU functional block. All the other traffic which is received by EDE is validated using MACsec and upon successful validation sent towards O-RU functional block through controlled port. Communication from O-RU towards O-DU happens in a similar manner.

The MACsec solution using EDE-CC can be configured in an End-to-End mode at various points within an Open Fronthaul network, as elucidated in the topology scenarios below. The functional blocks of controlled, uncontrolled port and EDE-CC can be integrated into O-DU, O-RU, TNE, FHM based on the MACsec tunnel endpoints.

#### Solution 2# WAN mode MACsec

This solution applies to scenarios where MACsec is applied based on VLAN tags and configured at the VLAN interface. This mode allows the 802.1Q VLAN tag to be unencrypted and sent in clear text, outside the MACsec header. This enables intermediate switches that are MACsec-unaware to route the packets based on the VLAN tag. To prevent MACsec capable intermediary nodes from consuming MACsec packets, it is recommended to configure the group destination address to allow the intermediary nodes to forward the packets like any other data packet.

In addition to EDEs a similar solution to expose a VLAN header in clear text exists which some products on the market currently support. It is a non-standard, proprietary, addition to the IEEE Std 802.1AE, requiring the 802.1AE header to be inserted after the VLAN header(s). The industry refers to this mode as e.g. 'WAN mode', 'VLAN in the clear' or 'Bypassed Tags'. As support for EDEs at this time is low across the market, this mode can be considered for specification to become optionally supported for backwards compatibility. The only difference to the EDE modes is that the receiver cannot check whether the VLAN header in front of the MACsec header has been altered, but in both cases the VLAN header in the clear is not protected until it reaches the receiver. In EDE, the outer unprotected VLAN is typically not used by the receiving entity and the original VLAN header is protected by MACsec. In WAN mode, the original VLAN header is not protected by MACsec and is open for attacks.

DMAC

SMAC

802.1AE header

802.1Q

ETYPE

Payload

ICV

FCS

Authenticated (Integrity)

Encrypted (Confidentiality)

Figure 4.6.2.2-1 'WAN mode', for fronthaul security protection

#### Solution 3# LAN mode MACsec

This solution requires that the entire Ethernet frame after the MAC address should be encrypted. When MACsec is configured at the interface level (base-interface) of an open fronthaul network element, the Secure TAG of MACsec encompasses both VLAN-tagged and non-VLAN-tagged frames, securing all traffic that travels through the interface.

It may be possible to configure additional policies to bypass MACsec protection based on EtherType, VLAN ID, and destination address. When enabled, this capability allows certain types of Open Fronthaul traffic, such as S-Plane, to remain unencrypted and bypass MACsec protection.

Editor's Note 1: The informative call flow for End-to-End MACsec is still FFS.

Editor's Note 2: The key management for MACsec is still FFS.

### Deployment consideration for MACsec in Open Fronthaul

#### Introduction

The choice of enabling MACsec on Open Fronthaul should be based on deployment aspects that may include network topology, device capabilities, and traffic types to be encrypted. Additionally, the deployment strategy should align with the specific security and performance requirements of the network .

MACsec can be configured in an End-to-End mode or Hop-by-Hop mode using any one of the encryption modes as described in clause 4.6.2.

This clause studies the deployment considerations for enabling MACsec in End-to-End Mode, as well as for PTP traffic and Shared O-RU scenarios.

##### Deployment considerations for End-to-End MACsec

###### Scenario 1: MACsec enabled at O-DU and O-RU

This option explores enabling MACsec at the O-RU and O-DU in an End-to-End mode, offering a secure communication pathway without requiring MACsec awareness in the transport network elements. The communication between the O-RU and O-DU is fortified with encryption, protecting against eavesdropping and unauthorized access.

This scenario is Zero Trust Architecture compliant from the Cell Site O-RU to the O-DU.

![A diagram of a computer network  Description automatically generated](../assets/images/fccb44d8e664.png)

Figure 4.6.3.1.1.1-1 MACsec enabled at O-RU and O-DU

###### Scenario 2: MACsec enabled at the Transport Network elements at the edge of Cell site and Central Site

In this configuration, MACsec is activated on the edge transport network elements located at both the cell site and central site. The O-RU transmits unencrypted C-Plane messages to TNE1, where they are encrypted and subsequently tunneled to TNE2 at the central site.

This scenario is Zero Trust Architecture compliant from the Cell Site TNE1 to the TNE2.

![A diagram of a process  Description automatically generated](../assets/images/0e852e42229a.png)

Figure 4.6.3.1.1.2-1 MACsec enabled at edge Transport Network Elements

###### Scenario 3: MACsec enabled at the O-RU at Cell site and edge TNE at the Central Site

In this scenario, MACsec is activated on the O-RU located at the cell site, which is connected to a TNE. The End-to-End MACsec is established between the O-RU and TNE2 at the central site. The encrypted C-Plane traffic is then tunneled through the MACsec-unaware TNEs within the Open Fronthaul network.

This scenario is Zero Trust Architecture compliant from the Cell Site O-RU to the TNE2.

![A diagram of a computer system  Description automatically generated](../assets/images/ddc64bbc1523.png)

Figure 4.6.3.1.1.3-1 MACsec enabled at O-RU and TNE2

###### Scenario 4: MACsec enabled Cell site TNE and O-DU at the Central Site

In this scenario, MACsec is activated on the TNE1 located at the cell site. The End-to-End MACsec is established between the TNE1 and O-DU at the central site. The encrypted traffic is then tunneled through the MACsec-unaware TNEs within the Open Fronthaul network.

This scenario is Zero Trust Architecture compliant from the Cell Site TNE1 to the O-DU.

NOTE: When DU is hosted on the O-Cloud, MACsec termination will occur at the O-Cloud.

![A diagram of a computer network  Description automatically generated](../assets/images/925e026375dc.png)

Figure 4.6.3.1.1.4-1 MACsec enabled at TNE1 and O-DU

###### Scenario 5: MACsec enabled at O-DU and O-RU

In this configuration, MACsec is activated on the O-RU and O-DU connection that is directly connected to each other with no transport network elements. The communication between the O-RU and O-DU is fortified with encryption, protecting against eavesdropping, and unauthorized access. This scenario is Zero Trust Architecture compliant from the Cell Site O-RU to the O-DU.

NOTE: When DU is hosted on the O-Cloud, MACsec termination will occur at the O-Cloud.

![A diagram of a computer hardware  Description automatically generated](../assets/images/720bbcd8b064.png)

Figure 4.6.3.1.1.5-1 MACsec enabled at O-DU and O-RU

###### Scenario 6: MACsec enabled at O-RU and TNE at the Central Site

In this configuration, MACsec is activated on the O-RU and TNE connection that is directly connected to each other with no transport network elements. The communication between the O-RU and TNE is fortified with encryption, protecting against eavesdropping, and unauthorized access. This scenario is Zero Trust architecture-compliant from the Cell Site O-RU to the TNE.

![A diagram of a function  Description automatically generated](../assets/images/802d8530fb60.png)

Figure 4.6.3.1.1.6-1 MACsec enabled at O-RU and TNE at the Central Site

###### Scenario 7: MACsec enabled at FHM and O-DU at the Central Site

In this configuration of Shared Cell, MACsec is activated on the FHM and O-DU that is directly connected to each other with no transport network elements. The communication between the FHM and O-DU is fortified with encryption, protecting against eavesdropping, and unauthorized access. This scenario is Zero Trust architecture-compliant from the Cell Site FHM to the O-DU.

NOTE: When DU is hosted on the O-Cloud, MACsec termination will occur at the O-Cloud.

![A diagram of a computer network  Description automatically generated](../assets/images/afcb37533938.png)

Figure 4.6.3.1.1.7-1 MACsec enabled at FHM and O-DU at the Central Site

###### Scenario 8: MACsec enabled at TNE at Cell site and O-DU at the Central Site

In this configuration of Shared Cell, MACsec is activated on the TNE at cell-site and O-DU at central site. The End-to-End MACsec is established between the TNE and O-DU at the central site. The encrypted traffic is then tunneled through the MACsec-unaware TNEs within the Open Fronthaul network.

This scenario is Zero Trust Architecture compliant from the Cell Site TNE to the O-DU.

NOTE: When DU is hosted on the O-Cloud, MACsec termination will occur at the O-Cloud.

![A diagram of a computer network  Description automatically generated](../assets/images/d74d7ad626e1.png)

Figure 4.6.3.1.1.8-1 MACsec enabled at FHM and O-DU at the Central Site

##### Deployment consideration for PTP traffic

In the following clause, the focus is on the MACsec option for securing the C-Plane and M-Plane traffic under Open Fronthaul deployment topologies described in [i.5].

###### MACsec in LLS-C1 topology running PTP G.8275.1 profile

![A black background with red and green lines  Description automatically generated](../assets/images/4f91cec21f49.png)

Figure 4.6.3.1.2.1-1 C-Plane and M-Plane protection based on MACsec in LLS-C1 topology

As shown in the above figure, eCPRI/C-Plane and M-Plane traffic is protected by MACsec. It is recommended that PTP remains unprotected due to PTP over MACsec implementation challenges. PTP may use its own integrity security mechanism. However, if synchronization performance is guaranteed by any implementation, then MACsec as a security solution for PTP is not precluded in this topology.

###### MACsec in LLS-C2 topology running PTP G.8275.1 profile

![A black background with red circles and arrows  Description automatically generated](../assets/images/914cbe0f402e.png)

Figure 4.6.3.1.2.2-1 C-Plane and M-Plane protection based on MACsec in LLS-C2 topology

As shown in the above figure, eCPRI/C-Plane and M-Plane traffic is protected by MACsec End-to-End between O-DU and O-RU. Fronthaul Transport Network Equipment (TNE) such as B1 or B2 in the above figure does not participate in MACsec. PTP remains unprotected by MACsec since PTP over MACsec would require MACsec to be hop by hop instead of end to end which can lead to two challenges - MACsec in each TNE in Fronthaul can cause more latency per TNE for any kind of traffic including latency sensitive C/U-Plane traffic and also such hop-by-hop deployment might be difficult. So PTP over MACsec is not recommended. PTP may use its own integrated security mechanism. However, if synchronization performance is guaranteed by any implementation, then MACsec as a security solution for PTP is not precluded in this topology.

###### MACsec in LLS-C3 topology running PTP G.8275.1 profile

![A diagram of a company  Description automatically generated](../assets/images/4978a8be5bd6.png)

Figure 4.6.3.1.2.3-1 C-Plane and M-Plane protection based on MACsec in LLS-C3 topology

In the case of LLS-C3 deployment all the discussions for LLS-C2 would also apply.

##### Deployment Considerations for Shared O-RU

###### Introduction

The Shared O-RU is defined as an O-RU that is configured to support multiple O-DUs, allowing the O-RU to share its resources, such as carriers, among the connected O-DUs. The Shared O-RU supports two configuration modes:

**SHARED-ORU-MULTI-ODU** refers to the configuration where a single O-RU is set up to operate with multiple O-DUs that belong to the same operator.

**SHARED-ORU-MULTI-OPERATOR** refers to the configuration where a single O-RU is set up to operate with one or more O-DUs from one or more Shared Resource Operators (SROs).

Each O-DU and Shared O-RU pair has uniquely configured transport parameters. O-DUs, whether from the same or different operators, shall connect to the Shared O-RU using existing CUS-Plane interface definitions and procedures. Consequently, the same security protection mechanisms that apply to a standard O-RU are also applicable.

![A diagram of a chat  Description automatically generated](../assets/images/370da4346c23.png)

Figure 4.6.3.1.3.1-1 Shared O-RU Concept [i.5]

###### MACsec configuration for Shared O-RU.

For MACsec enabling in a Shared O-RU, the Shared O-RU should support multiple secure connectivity associations to the O-DUs, with each association being independently configurable. This allows for separate management and security of each connection between the O-RU and the O-DUs, regardless of whether they belong to the same operator or different Shared Resource Operators (SROs).

MACsec is essential for securing eCPRI C and U plane messages in a Shared O-RU setup, through encryption, integrity, and authentication. Deployment considerations include scenarios where all O-DUs under the Shared O-RU are collocated, as well as scenarios where the O-DUs are distributed across different data center locations.

NOTE: Shared O-RU supports the M-Plane architecture model of hierarchical and hybrid models. The Shared O-RU Host uses a NETCONF client with "sudo" privileges, as defined in clause 6.5 of the M-Plane Specification[i.6], to configure the shared O-RU. Each Shared Resource Operator uses NETCONF clients with "carrier" privileges that have parallel M-Plane connections with the shared O-RU. The security controls for M-plane are defined in [i.6] and [i.20] and are not in scope within this document.

MACsec enabled at TNE1 at Cell site and TNE2 at the Central Site.

In this configuration, MACsec is activated on the edge transport network elements located at both the cell site and central site. The O-RU sends unencrypted eCPRI (C/U-Plane) messages to TNE1, where they are encrypted and then transmitted over a secure channel to TNE2 at the central site.

The MACsec solution proposal as described in clause 4.6.2 enables selective filtering of traffic requiring encryption in the Open Fronthaul network.

This scenario is Zero Trust Architecture compliant from the Cell Site TNE1 to the central site TNE2.

![A diagram of a computer network  Description automatically generated](../assets/images/d51fe7c8062a.png)

Figure 4.6.3.1.3.2.1-1 MACsec enabled at TNE

MACsec enabled at Shared O-RU and the O-DUs.

This option explores enabling MACsec at the Shared O-RU and O-DUs without requiring MACsec awareness in the transport network elements. The Shared O-RU should support more than one connectivity association and each connectivity association can be independently configured and managed for O-DU#1, O-DU#2.

The MACsec solution proposal as described in clause 4.6.2 enables selective filtering of traffic requiring encryption in the Open Fronthaul network.

This scenario is Zero Trust Architecture compliant from the Shared O-RU to the O-DUs.

![A diagram of a complex structure  Description automatically generated](../assets/images/5507b75b57bb.png)

Figure 4.6.3.1.3.2.2-1 MACsec enabled at the Shared O-RU and the O-DUs

MACsec enabled at Shared O-RU and directly connected O-DUs.

This option explores enabling MACsec at the Shared O-RU which is directly connected to the O-DUs either from single and/or multiple operators.

The MACsec solution in clause 4.6.2 allows selective filtering of encrypted traffic in the Open Fronthaul network. Separate VLANs can be configured, with MACsec enabled on only one, and selective filtering applied at the base interface.

This scenario is Zero Trust Architecture compliant from the Shared O-RU to the directly connected O-DUs.

NOTE: O-RUs with two physical interfaces and each managed by different SROs not yet supported by M-plane specification [i.13].

![A diagram of a diagram of a diagram  Description automatically generated](../assets/images/3a9a974a09f4.png)

Figure 4.6.3.1.3.2.3-1 MACsec enabled at the Shared O-RU and the O-DUs

MACsec enabled at Shared O-RU and directly connected TNE.

This option explores enabling MACsec at the Shared O-RU and TNE at the Central site O-DUs, The Shared O-RU is directly connected to the TNE where the O-DUs are collocated either from single and/or multiple operators.

The MACsec solution proposal as described in clause 4.6.2 enables selective filtering of traffic requiring encryption in the Open Fronthaul network.

This scenario is Zero Trust Architecture compliant from the Shared O-RU to the TNE.

![A diagram of a computer network  Description automatically generated](../assets/images/d98835653f41.png)

Figure 4.6.3.1.3.2.4-1 MACsec enabled at the Shared O-RU and the O-DUs

MACsec enabled at TNEs in a non-collocated O-DUs scenario

This option explores the SHARED-ORU-MULTI-OPERATOR architecture where O-DUs are not collocated. In this configuration, MACsec is activated on the edge transport network elements located at both the cell site and central sites.

The MACsec solution proposal as described in clause 4.6.2 enables selective filtering of traffic requiring encryption in the Open Fronthaul network.

This scenario is Zero Trust Architecture compliant from the TNE1 at Cell Site to the TNE2 and TNE 3 at the Central site.![A diagram of a computer process  Description automatically generated](../assets/images/1e7d189e6c6d.png)

Figure 4.6.3.1.3.2.5-1 MACsec enabled at TNEs in a non-collocated O-DU scenarios

MACsec enabled at Shared O-RU and non-collocated O-DUs

This configuration explores the scenario where this O-DUs are not collocated. In this configuration MACsec is enabled at the Shared O-RU and O-DUs, offering a secure communication pathway without requiring MACsec awareness in the transport network elements and is similar to the clause 4.6.3.1.2.2.2. The Shared O-RU will have two connectivity association towards the O-DUs.

The MACsec solution proposal as described in clause 4.6.2 enables selective filtering of traffic requiring encryption in the Open Fronthaul network.

This scenario is Zero Trust Architecture compliant from the Shared O-RUs at Cell Site to the ODU#1 and ODU#2 at the Central sites.

![A diagram of a complex process  Description automatically generated](../assets/images/fd5ade79e3d1.png)

Figure 4.6.3.1.3.2.6-1 MACsec enabled at Shared O-RU and non collocated O-DUs

MACsec enabled at Shared O-RU directly connected to TNEs in non-collocated O-DUs scenario.

In this configuration the Shared O-RU is directly connected to the TNE's in a non-collocated O-DU scenario. MACsec is enabled at the Shared O-RU and TNE's. The Shared O-RU will have two connectivity association towards the TNEs at the central sites.

The MACsec solution proposal as described in clause 4.6.2 enables selective filtering of traffic requiring encryption in the Open Fronthaul network.

This scenario is Zero Trust Architecture compliant from the Shared O-RUs at Cell Site to the TNE1 and TNE 2 at the Central sites

![A diagram of a complex process  Description automatically generated](../assets/images/e059e084aebd.png)

Figure 4.6.3.1.3.2.7-1 MACsec enabled at Shared O-RU directly connected to TNEs in non-collocated O-DUs scenario

MACsec enabled at the Shared O-RU and the O-DUs for SHARED-ORU-MULTI-OPERATOR Configuration in Hybrid mode

The option explores the Shared O-RU and multiple O-DUs for SHARED-ORU-MULTI-OPERATOR configuration in a hybrid mode. The Shared O-RU Host SMO manages the M-Plane for the Shared O-RU and the security controls for the M-Plane management traffic has been specified in the O-RAN Management Plane Specification [i.6] and Security Requirements and Controls Specification [i.20] and is not in scope in this study. In this configuration MACsec is enabled at the Shared O-RU and ODU's at the central site offering a secured connectivity association between two endpoints.

The MACsec solution proposal as described in clause 4.6.2 enables selective filtering of traffic requiring encryption in the Open Fronthaul network.

This scenario is Zero Trust Architecture compliant from the Shared O-RUs at Cell Site to the O-DUs at the Central site

NOTE: In hybrid mode, the shared O-RU should have a mechanism to trust the MACsec parameters configured by the Shared O-RU host SMO to establish secure connectivity with the SROs .

![A diagram of a computer  Description automatically generated](../assets/images/fe3d04bfe578.png)

Figure 4.6.3.1.3.2.8-1 MACsec enabled at the Shared O-RU and the O-DUs for SHARED-ORU-MULTI-OPERATOR Configuration in Hybrid mode.

Annex A (informative): Port-based authentication using 802.1x and 802.1AR Secure Device Identity

![Timeline  Description automatically generated](../assets/images/8f9a8ba15c55.tiff.png)

Annex B (informative): Deployment consideration for encryption of C Plane messages in an Open Fronthaul network

The O-RAN 7.2x is a split 7 "Low Level Split" (LLS) that runs between the O-RU and the O-DU. In the O-RAN architecture, service providers possess the flexibility to determine the placement of network components. Deployment scenarios may involve collocating O-RUs and O-DUs at the cell site or placing O-RUs and O-DUs in two distinct geographical locations. The deployment scenarios drive the need for encryption of C-Plane over an Open Fronthaul network.

Deployment Scenario 1: Collocated O-RU and O-DU at Cell Site

In this deployment scenario the O-RU and O-DU are collocated at the cell-site in an LLS-C1 or LLS-C2 topology. The fronthaul network's entire infrastructure is confined within the secure perimeter of the cell site, the risks associated with data interception or tampering are substantially reduced as the adversary would need physical access to the cell site location. By considering the network architecture, and maintaining robust cell-site security, stakeholders can create a resilient fronthaul network infrastructure that effectively address external threats.

Although cell-site physical security prevents external threat, but it does not prevent an insider attack. The risk of insider attacks necessitates additional measures, such as the encryption of C-Plane messages, aligned with the principles of Zero Trust Architecture.

The need for encrypting C-Plane messages in this deployment scenario may be based on the operator choice of operational overload and network architecture, cell-site security.

![A diagram of a diagram  Description automatically generated](../assets/images/fc03ca35e13e.png)

Fig B-1: Collocated O-DU and O-RU connected directly at Cell Site.

![A diagram of a network  Description automatically generated](../assets/images/05fbf9143591.png)

Fig 1-2: Collocated O-DU and O-RU connected via TNE at Cell Site.

Deployment Scenario 2: O-RU at Cell site and O-DU and O-CU at the Central site

In this deployment strategy, the O-RU is placed exclusively at the cell site, while the O-DU and O-CU is placed at a centralized location. The traffic from O-RU is transported over a switched fronthaul network.

The Fronthaul network consists of one or more number of switches and routers. The network path between the O-DU and O-RU are prone to threats as defined in clause 2.3.1.

Encryption for C-plane messages is recommended for this deployment scenario.

![A diagram of a television message  Description automatically generated with medium confidence](../assets/images/dd4d7d3d3e84.png)

Fig 2: **O-RU at Cell site O-DU and O-CU at the Central site**

# Annex C: Change history/Change request (history)

|  |  |  |
| --- | --- | --- |
| **Date** | **Revision** | **Description** |
| 2024.11.27 | R004-v03.00 | Published as TR.O-R004-v03.00 |
| 2024.11.27 | R004-v03.00 | Ericsson: Updates to security analysis of C-plane |
| 2024.11.27 | R004-v03.00 | Ericsson: MACsec for Open Fronthaul CUS-Plane |
| 2024.11.27 | R004-v03.00 | Rakuten Symphony: Changes in clause for 4.6 to better align the TR for the Deployment consideration for MACsec clause |
| 2024.11.27 | R004-v03.00 | Rakuten Symphony: MACsec for Shared O-RU configuration |
| 2024.11.27 | R004-v03.00 | Rakuten Symphony: Changes in Introduction clause for 4.6.3 to include the deployment consideration for Shared O-RU |
| 2024.07.25 | R004-v02.00 | Published as TR.O-R004-v02.00 |
| 2024-07-10 | R004-v02.00 | Rakuten Symphony: Clause number update based on the CR0067 |
| 2024-07-10 | R004-v02.00 | Rakuten Symphony: MACsec encryption modes and restructuring of clauses |
| 2024-07-10 | R004-v02.00 | Ericsson: Technical clarifications for Solution #2 |
| 2024-07-10 | R004-v02.00 | Ericsson: Inclusive Language |
| 2024-07-10 | R004-v02.00 | Ericsson: MACsec for Open Fronthaul CUS-Plane |
| 2024-07-10 | R004-v02.00 | NEC and Rakuten Symphony: Correction of a) Potential Security Requirements (Clause 4.2.2.1.4) of Key Issue #1 related to Security for S-Plane, and b) Potential Security Requirements (Clause 4.5.1.1.4) of Key issue #1 related to Security for Fronthaul Ethernet L1 physical layer interface. Addition of Figures to Clause 4.2.2.1.1 to indicate fake ANNOUNCE message attack scenarios. |
| 2024-07-10 | R004-v02.00 | NEC and Rakuten Symphony: Correction of Key Issue of S-Plane security under clause 4.2.2.2, Consistent use of "Grandmaster" |
| 2024-07-10 | R004-v02.00 | Rakuten Symphony and NEC: Correction of Key Issues of S-Plane security under clauses 4.2.2.3 and 4.2.2.4 |
| 2024.03.30 | R004-v01.00 | Published as TR.O-R004-v01.00 |
| 2024-03-30 | R004-v01.00 | Rakuten Symphony and Analog Devices: Deployment considerations for encryption of C-plane messages |
| 2024-03-30 | R004-v01.00 | Rakuten Symphony: Update S-plane security clause in the TR with solutions and evaluations |
| 2024-03-30 | R004-v01.00 | Nokia and Rakuten Symphony: Solution on PTP integrated security mechanism |
| 2024-03-30 | R004-v01.00 | Rakuten Symphony and Analog Devices: Update clause 4.6.4 MACsec solution for Open Fronthaul |
| 2024-03-30 | R004-v01.00 | Rakuten Symphony and Nokia : MACsec as a security solution for protecting U-Plane messages |
| 2024-03-30 | R004-v01.00 | Nokia: WAN mode |
| 2024-03-30 | R004-v01.00 | Nokia and Rakuten Symphony: Solution on PTP integrated security mechanism announce only |
| 2023-10-25 | R003-v01.00 | Nokia and Analog Devices contribution on KI for C-Plane Security, Nokia contribution on KI for U-Plane Security, Rakuten Symphony contribution for KI on C-Plane Security |
| 2021-07-15 | July 15th weekly FHSec meeting | Keysight contribution on MACsec, Altiostar contributions on S-Plane key issues and minor reformatting |
|  |  |  |
---

- View in [Reader Mode](https://simewu.com/spec-reader/pages/01-WG11/O-RAN.WG11.TR.Fronthaul-CUSPlane-Security.0-R004-v03.00.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG11.TR.Fronthaul-CUSPlane-Security.0-R004-v03.00.docx).
