---
title: O-RAN.WG7.IPC-TEST.0-v01.docx.md
author: O-RAN Alliance, WG7
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG7.IPC-TEST.0-v01.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG7.IPC-TEST.0-v01.docx).

---

* toc
{:toc}

---

<div class="table-wrapper" markdown="block">

|  |
| --- |
| ![webwxgetmsgimg (7).jpeg]({{site.baseurl}}/assets/images/bea03973c631.jpg) |

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
| O-RAN Work Group 7 White-box Hardware  Test Guidelines for Indoor Pico Cell |

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

3 Definition of terms, symbols and abbreviations 6

3.1 Terms 6

3.2 Symbols 6

3.3 Abbreviations 6

4 Test methodology and configuration 7

4.1 Hardware architecture 7

4.2 Test equipment and tools 8

4.3 Test configuration 8

5 O-CU and O-DU Tests 9

5.1 GNSS synchronization accuracy 9

5.2 IEEE 1588v2 synchronization accuracy 10

5.3 Clock hold-over ability 11

5.4 Power supply method 11

5.5 Dimension and volume 12

5.6 Cell capacity 13

5.7 Power consumption 14

6 O-RU Hardware Tests 14

6.1 Operating frequency band, bandwidth and carrier configuration 14

6.2 TX power and RF power configuration 15

6.3 Number of RF channels 16

6.4 Weight, dimensions, and volume 16

6.5 Power supply capability 17

6.6 Power consumption 17

7 O-RU RF Tests 18

7.1 Tx Power accuracy 18

7.2 EVM 18

7.3 ACLR 19

7.4 Spurious emission 19

7.5 Reference sensitivity 20

7.6 ACS 21

7.7 ICS 22

7.8 Anti-blocking 23

# List of figures

Figure 4.1-1: Indoor pico cell based on Option 7-2x(O-RU utilizing optical fiber with integrated power cable) 7

Figure 4.1-2: Indoor pico cell based on Option 8(O-RU utilizing CAT-6A cable) 8

# List of tables

Table 4.2-1: Test Tools 8

# Foreword

This Technical Specification (TS) has been produced by WG7 of the O-RAN Alliance.

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

The present document specifies the test methods for Indoor Pico Cell. It determines whether a WG7 White box hardware reference design conforms with its requirements as specified in its Hardware Architecture and Requirement specification (HAR).

In the main body of this specification (in any "chapter") the information contained therein is informative.

It is noted that additional test cases may be required for a comprehensive testing, which will be considered in the future version of this document.

# 2 References

## 2.1 Normative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following referenced documents are necessary for the application of the present document.

[1] O-RAN WG1: O-RAN Architecture Description, v12.0, June 2024.

[2] 3GPP TS 38.104, "NR; Base Station (BS) radio transmission and reception".

[3] 3GPP TS 38.113, "NR: Base Station (BS) Electromagnetic Compatibility (EMC)".

[4] 3GPP TS 38.141-1, "NR; Base Station (BS) conformance testing Part 1: Conducted conformance testing".

[5] O-RAN WG7: Deployment Scenarios and Base Station Classes, v4.0, October 2022.

[6] O-RAN WG7: O-RAN Indoor Picocell Hardware Architecture and Requirement (FR1 Only) Specification, v2.0, February 2024.

[7] O-RAN WG7: Hardware Reference Design Specification for Indoor Picocell (FR1) with Split Architecture Option 7-2, v3.0, October 2021.

## 2.2 Informative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following referenced documents are not necessary for the application of the present document, but they assist the user with regard to a particular subject area.

[i.1] 3GPP TR 21.905: "Vocabulary for 3GPP Specifications".

# 3 Definition of terms, symbols and abbreviations

## 3.1 Terms

For the purposes of the present document, the terms [given in [i.1] and the following] apply:

**Carrier Frequency**: Center frequency of the cell.

**F1 interface**: The open interface between O-CU and O-DU defined by 3GPP TS 38.473.

**Frequency Band**: A designated frequency range for the operation of the base station and the UE radios. 5G NR frequency bands are divided into two different frequency ranges: Frequency Range 1 (FR1) that mainly includes sub-6GHz frequency bands, some of which are bands traditionally used by previous standards but has been extended to cover potential new spectrum offerings from 410MHz to 7125MHz; Frequency Range 2 (FR2) that includes frequency bands from 24.25 GHz to 52.6 GHz. Bands in this millimeter wave range have shorter range but higher available bandwidth than bands in the FR1.

**Frequency Range**: It refers to bandwidth defined by the frequency range within which the Base Station can be operated, defined by the band-pass filter of the BS; e.g., 3.4 - 3.8 GHz (400 MHz).

**Occupied Bandwidth (OBW)**: It refers to the bandwidth occupied by the base station when operated, defined by the sum of the active bandwidths of the band allocation(s) operated. As defined by 3GPP TS 34.121 section 5.8, occupied bandwidth is the bandwidth containing 99% of the total integrated power of the transmitted spectrum, centered on the assigned channel frequency. The bandwidth between the 0.5% power frequency points is the occupied bandwidth.

**Instantaneous Bandwidth (IBW)**: It refers to the bandwidth in which all frequency components can be simultaneously analyzed. It is defined by the frequency boundaries of the operating band(s).

**Fronthaul Gateway (FHGW)**: A fronthaul gateway is a physical entity that is located between a distributed unit and one or more radio units where it distributes, aggregates, and/or converts fronthaul protocols between the distributed unit and multiple radio units.

**gNB**: A RAN node providing NR user plane and control plane protocol terminations towards the UE, and connected via the NG interface to the 5GC

## 3.2 Symbols

Void

## 3.3 Abbreviations

For the purposes of the present document, the abbreviations [given in [i.1] and the following] apply:

ACLR Adjacent Channel Leakage Ratio

ACS Adjacent Channel Selectivity

EVM Error Vector Magnitude

FHGW Fronthaul Gateway

GNSS Global Navigation Satellite System

GPS Global Positioning System

ICS In-channel Selectivity

IEEE Institute of Electrical and Electronics Engineers

NR New Radio

O-CU O-RAN Centralized Unit as defined by O-RAN

O-DU O-RAN Distributed Unit as defined by O-RAN

O-RU O-RAN Radio Unit as defined by O-RAN

PPS Pulse per Second

QAM Quadrature Amplitude Modulation

RF Radio Frequency

RX Receiver

TX Transmitter

# 4 Test methodology and configuration

## 4.1 Hardware architecture

Indoor picocell based on Option 7-2x and Option 8 consists of O-RU, O-DU, and FHGW.

![]({{site.baseurl}}/assets/images/04aaaaa7da22.emf.png)

Figure 4.1-1: Indoor pico cell based on Option 7-2x(O-RU utilizing optical fiber with integrated power cable)

![]({{site.baseurl}}/assets/images/df3bee3c6536.emf.png)

Figure 4.1-2: Indoor pico cell based on Option 8(O-RU utilizing CAT-6A cable)

## 4.2 Test equipment and tools

Table 4.2-1 listed the main test tools.

Table 4.2-: Test Tools

<div class="table-wrapper" markdown="block">

| **Item** | **Functions** | **Basic configurations** |
| --- | --- | --- |
| Oscilloscope | Measure clock synchronization accuracy | Bandwidth: >=300MHz  Sampling rate: >=2.5GS/s |
| Vector signal generator | Test GNSS automatic switching, RF performance and calibration | NR signals can be configured according to RF test requirements, and white noise signals can be emitted |
| Spectrum analyzer | Test clock synchronization accuracy, RF performance and calibration | NR signals can be demodulated according to RF test requirements |
| Power supply | Power the device under test |  |
| Test UE | NR traffic test | Antenna configuration: Supports downlink MIMO  NR carrier frequency: Supports the test configuration |
| Oscilloscopes and current probes | Power consumption and power supply mode test | Current accuracy: within +-2%. |
| Voltmeter | Power consumption and power supply mode test | Voltage test accuracy: within +-3%.  DC voltage range: 100V  AC voltage range: 500V |

</div>

## 4.3 Test configuration

Configure A: Band n41

NR signal: channel bandwidth 100MHz, subcarrier spacing 30kHz, total RB 273

The NR uses a 5ms frame structure (DDDDDDDSUU) with a special sub-frame ratio of 6:4:4

Configure B: Band n78

NR signal: channel bandwidth 100MHz, subcarrier spacing 30kHz, total RB 273

The NR uses a 5ms frame structure (DDDSUDDSUU) with a special sub-frame ratio of 10:2:2

# 5 O-CU and O-DU Tests

## 5.1 GNSS synchronization accuracy

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Reference networking | ![]({{site.baseurl}}/assets/images/fbbf2de28018.emf.png) |
| Purpose of the test | Verify that the O-DU supports GPS/Beidou dual-mode synchronization, and has an automatic switching function. |
| Test conditions | 1. The GPS/Beidou dual-mode antenna is connected to the O-DU; 2. The GPS/Beidou dual-mode antenna is connected to the atomic clock; 3. Both the O-DU and GPS/Beidou receivers work normally after powering on. |
| Test steps | 1. The GPS/Beidou receiver is set as the clock source of the O-DU through the operation and maintenance station; 2. Power on the O-DU, and keep all devices powered on for 60 minutes; 3. The 1PPS signal output by the atomic clock (which can be replaced by another O-DU) and the 1PPS output by the O-DU are introduced into the oscilloscope, the 1PPS signal channel of the atomic clock is set as the trigger channel. Observe the phase error between the 1PPS output by the O-DU and the 1PPS signal output by the atomic clock. 4. The 10MHz clock output by the atomic clock and the 10MHz clock output by the O-DU were introduced into the frequency meter, and the 10MHz clock output by the atomic clock was used as the standard frequency to observe the frequency error between the 10MHz clock output by the O-DU and the 10MHz clock output by the atomic clock. 5. Set the interference source to the same frequency point signal as the GPS, drown the GPS signal by adding noise, and repeat steps 3 and 4. 6. Set the interference source to the same frequency signal as the Beidou, drown the Beidou signal by adding noise, and repeat steps 3 and 4. |
| Expected results | When GPS/Beidou dual-mode are working at the same time, and when either synchronization source disappears, the synchronization accuracy is compliant to O-RAN.WG7.IPC-HAR.0-v03.00. |

</div>

## 5.2 IEEE 1588v2 synchronization accuracy

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Reference networking | ![]({{site.baseurl}}/assets/images/4511706e0bcf.emf.png) |
| Purpose of the test | Verify that the O-DU supports IEEE 1588v2 in-band synchronization. |
| Test conditions | 1. Build a transport network; 2. Connect the O-DU to the transport network via Ethernet; 3. The O-DU works normally after powering on. |
| Test steps | 1. The 1588 clock is set as the clock source of the O-DU through the operation and maintenance station, and the in-band mode (synchronous signal is transmitted through the GE transmission interface) is used to build the test environment according to the in-band test block diagram; 2. Power on the O-DU, and keep all devices powered on for 60 minutes; 3. Introduce the 1PPS signal output by the atomic clock (which can be replaced by another O-DU) and the 1PPS output by the O-DU into the oscilloscope, set the 1PPS signal channel output by the atomic clock as the trigger channel, and observe the phase error between the 1PPS output by the O-DU and the 1PPS signal output by the atomic clock. 4. The 10MHz clock output of the atomic clock and the 10MHz clock output of the O-DU were introduced into the frequency meter, and the frequency error between the 10MHz clock output of the O-DU and the 10MHz clock output by the atomic clock was observed by using the 10MHz clock output of the atomic clock as the standard frequency. |
| Expected results | The synchronization accuracy is compliant to O-RAN.WG7.IPC-HAR.0-v03.00. |

</div>

## 5.3 Clock hold-over ability

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Reference networking | ![]({{site.baseurl}}/assets/images/f455447559f6.emf.png) |
| Purpose of the test | Verify whether the O-DU master clock can meet the requirement that the synchronization retention time is not less than 24 hours after the synchronization source is lost. |
| Test conditions | 1. Build a test environment according to the network diagram; 2. The O-DU under test is powered on and enters the GPS synchronization state for more than 4 hours. |
| Test steps | 1. The frame synchronization output of the reference O-DU (which needs to ensure that the reference O-DU remains GPS locked during the test) is used as the reference signal, and the frame synchronization signal (1PPS or 10ms) output by the O-DU under test is observed with an oscilloscope; 2. Unplug the input of the synchronization source (including GPS and IEEE 1588v2) of the O-DU under test and enter the master clock hold mode of the base station. Observe and record the time deviation between the synchronization signals of the two frames of the observation at this moment; 3. The O-DU under test operates for 24 hours in master clock hold mode, and the time deviation between the two frame synchronization signals is observed and recorded. |
| Expected results | After the synchronization source of the base station is lost, within 24 hours of the self-timing of the master clock, the temperature drift of the frame synchronization signal of the O-DU under test is less than 3us. |

</div>

## 5.4 Power supply method

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Reference networking | ![]({{site.baseurl}}/assets/images/b5ed704ea6af.emf.png) |
| Purpose of the test | 1. Verify that the O-DU supports DC -48 VDC (-40V~-57V) power supply; 2. Verify that the O-DU supports AC 220 VAC (140V~300V) and 50Hz (45Hz~65Hz) power supply modes. |
| Test conditions | 1. The NR channel bandwidth is set to 100 MHz. 2. The uplink and downlink services are UDP full buffer services. |
| Test steps | 1. The O-DU, FHGW, and O-RU all work normally after powering on. 2. For single-mode O-DUs, establish 1 NR 100MHz cell; 3. The O-RU is connected to a 5G test UE to confirm that the uplink and downlink rates of a single user can reach 90% of the peak rate of both uplink 2 streams and downlink 2 streams at the same time. 4. The power supply voltage is pulled down to the minimum working voltage specified in the technical requirements, and the operation of the O-DU is observed through the test terminal, and the uplink and downlink rates of a single user can reach 90% of the peak rate of the uplink 2 streams and the downlink 2 streams required by the technical requirements at the same time. 5. Pull the power supply voltage up to the highest working voltage specified in the technical requirements, observe the operation of the O-DU through the test UE, and confirm that the uplink and downlink rate of a single user can reach 90% of the peak rate of the uplink 2 streams and the downlink 2 streams required by the technical requirements. |
| Expected results | 1. O-DU supports DC -48 VDC (-40v ~ -57v) or AC 220V power supply, voltage range of 140V~ 300v, frequency range of 45Hz ~ 65Hz. 2. The uplink and downlink rate of a single user can reach 90% of the peak rate. |

</div>

## 5.5 Dimension and volume

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Reference networking | O-DU  Height  Depth  (including connectors)  Width |
| Purpose of the test | Confirm the dimension and the volume of the O-DU. |
| Test conditions | Confirm that the board configuration of the O-DU is the same as that of the O-DU during the capacity test. |
| Test steps | 1. Use a tape measure or vernier caliper to measure the length, width and height of the O-DU and record them. 2. Calculate the O-DU volume. |
| Expected results | O-DU has a standard 19" rack and can be built into any standard rack or placed independently. The height does not exceed 2U, the depth (including the connector) must be less than 450mm. |

</div>

## 5.6 Cell capacity

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Reference networking | ![]({{site.baseurl}}/assets/images/7e97361b785b.emf.png) |
| Purpose of the test | Verify the maximum capability of the 100MHz NR cell that the O-DU is capable of supporting. |
| Test conditions | 1. Referring to the network block diagram, the O-DU is tested according to the maximum capacity; 2. The NR channel bandwidth is set to 100MHz. 3. Working mode 1: UDP full buffer service is used for uplink and downlink. 4. Working mode 2: Upstream FTP service test (file provided by tester). |
| Test steps | 1. The device is powered on and works normally, and the O-DU antenna mode is configured as 2 antennas. 2. In the working mode 1, check the uplink and downlink rate of the cell (the UE side and the server side are monitored separately for the peak rate), when the uplink and downlink peak rate of the cell reaches 90% of the technical requirements at the same time and is stable for 10 seconds, the rate is considered valid, the number of NR cells supported by the O-DU is recorded, and the uplink and downlink rate of each UE is recorded. And use the digital display power supply to record the voltage and current of the O-DU; 3. In the working mode 2: On the basis of working mode 1, the tester randomly designates an NR cell to perform an uplink FTP test, checks whether the uplink rate of the cell (the UE side and the server side are monitored for the peak rate) is the same as the uplink rate in step 2, and checks the uploaded file and voltage and current on the server side. |
| Expected results | The cell capacity is compliant to O-RAN.WG7.IPC-HAR.0-v03.00. |

</div>

## 5.7 Power consumption

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Reference networking | ![]({{site.baseurl}}/assets/images/7e97361b785b.emf.png) |
| Purpose of the test | Verify the power consumption capability of the O-DU. |
| Test conditions | 1. The O-DU is tested according to 4 100MHz NR cells; The NR channel bandwidth is set to 100MHz. 2. The uplink and downlink use UDP full buffer service. 3. The O-DU is powered by a program-controlled power supply. |
| Test steps | 1. The device is powered on and works normally, and the O-DU antenna mode is configured as 2 antennas. 2. When the uplink and downlink peak rate of the cell reaches 90% of the technical requirements and is stably maintained for 10 seconds, the rate is considered valid, the number of NR cells supported by the O-DU is recorded, and the uplink and downlink rate of each UE is recorded. 3. Record the voltage and current of the O-DU monitored by the program-controlled power supply. |
| Expected results | The power consumption and the peak rate meets the requirements in O-RAN.WG7.IPC-HAR.0-v03.00. |

</div>

# 6 O-RU Hardware Tests

## 6.1 Operating frequency band, bandwidth and carrier configuration

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Reference networking | ![]({{site.baseurl}}/assets/images/7c136eab69e0.emf.png) |
| Purpose of the test | Confirm the O-RU's ability to support the requirements of the frequency band, bandwidth and carrier configuration. |
| Test conditions | There are 1 types of carrier configuration schemes for RF units with 100M NR bandwidth:  Carrier configuration 1: 100M NR;   1. The uplink and downlink use UDP full buffer services; 2. O-RU full power transmission; 3. The O-DU is powered by a program-controlled power supply. |
| Test steps | 1. Refer to the network diagram to build the test environment; 2. The O-DU is connected to no less than 1 O-RU, and both the O-DU and the O-RU work normally after powering on; 3. Each cell is tested for the uplink and downlink peak rate; 4. Observe the number of carriers and the bandwidth of each carrier, observe the uplink and downlink rate of each carrier (UE side), record the number of carriers supported by the radio unit, the cell frequency and bandwidth, and the uplink and downlink rate of each carrier; 5. During the above test, the voltage and current of the program-controlled power supply are recorded; 6. Record the number and rate of optical modules. |
| Expected results | For 100M devices, it can support carrier configuration 1 and the frequency point is correct.  If carrier configuration 1 can be established, and the uplink and downlink peak rates of the NR cell are not less than 90% of the technical requirements, the device supports this carrier configuration. |

</div>

## 6.2 TX power and RF power configuration

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Reference networking | ![]({{site.baseurl}}/assets/images/6a34f3c8af0e.emf.png) |
| Purpose of the test | 1. Confirm that the O-RU supports RF power configuration; 2. Confirm the transmit power of the O-RU. |
| Test conditions | 1. 1 O-DU cascade 1 FHGW, 1 FHGW cascade 1 O-RU; 2. The NR standard configured as 100MHz signal bandwidth. |
| Test steps | Transmit power:   1. Start the transmitter, the NR working mode is NR-FR1-TM3.1a, and the power of each carrier is distributed according to the principle of maximum power and equal power spectral density. 2. For each carrier, the integrated power of all downlink subframes in the channel bandwidth for 20ms is measured and recorded; 3. Traverse all RF channels and repeat steps 1~2 to record separately.   Channel power independent configuration:   1. Start the transmitter, the NR working mode is NR-FR1-TM3.1a, and the power of each carrier is distributed according to the principle of maximum power and equal power spectral density. 2. Adjusted the power of each channel separately, and the integrated power of all downlink subframes in the channel bandwidth for 20ms is measured and recorded. |
| Expected results | Principle of Transmitting Power Judgment:  The total transmit power meets the requirements in O-RAN.WG7.IPC-HAR.0-v03.00;  Principle of channel power configuration:  Support channel independent power adjustment (error does not exceed +-1dB). |

</div>

## 6.3 Number of RF channels

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Purpose of the test | Confirm the number of RF channels supported by the O-RU; |
| Test conditions | Preparation of O-RU. |
| Test steps | 1. For the built-in antenna version, the number of RF channels of 5G NR is counted after the antenna oscillator is removed; 2. For the external antenna version, count the number of output RF ports; |
| Expected results | RF channel determination principle for 2-channel equipment:   1. For the built-in antenna version, the number of 5G NR RF channels should be two; 2. For the external antenna version, the number of output RF ports should be two.   RF channel determination principle for 4-channel equipment:   1. For the built-in antenna version, the number of 5G NR RF channels should be four; 2. For the external antenna version, the number of output RF ports should be four. |

</div>

## 6.4 Weight, dimensions, and volume

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Purpose of the test | Confirm the weight and dimensions of the O-RU; |
| Test conditions | Open the O-RU chassis and confirm that the internal hardware modules are complete. |
| Test steps | 1. Place the O-RU on the scale and read out the weight of the O-RU; 2. The maximum length, width and height of the main structure of the O-RU are directly measured with a tape measure (excluding the size of the O-RU joints and handles) to calculate the volume of the O-RU; |
| Expected results | The weight, dimension and volume of the O-RU meet the requirements in O-RAN.WG7.IPC-HAR.0-v03.00. |

</div>

## 6.5 Power supply capability

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Reference networking |  |
| Purpose of the test | Confirm the power supply requirements and transmission distance of the O-RU. |
| Test conditions | 1. When the O-RU uses PoE power supply mode, the distance should not be less than 100m (the network cable must have a clear length indication); 2. When the O-RU uses the power supply mode of the optical fiber with integrated power cable, the distance shall not be less than 200m (the optical fiber with integrated power cable must have a clear length indication); |
| Test steps | 1. According to the requirements of the test conditions, the test system is built, 1 O-DU is cascaded with 1 FHGW, 1 FHGW is cascaded with 1 O-RU; 2. For devices with a 100 MHz signal bandwidth, two 5G NR UEs are connected to the O-RU; 3. Through the spectrum analyzer, each carrier is observed to be established normally, and each carrier is tested according to the maximum power transmission, and the uplink and downlink peak rate are tested. 4. During the test, the distance between the O-RU and the FHGW is recorded; 5. During the test, observe whether the O-RU can be powered by PoE or optical fiber with integrated power cable. |
| Expected results | 1. FHGW has the ability to provide PoE or optical fiber with integrated power cable power supply to O-RU equipment; 2. If the O-RU uses PoE power supply mode, the distance from FHGW to O-RU is not less than 100m; 3. If the O-RU uses the power supply mode of optical fiber with integrated power cable, the distance from FHGW to O-RU is not less than 200m. |

</div>

## 6.6 Power consumption

The O-RU power consumption test is completed using the RF test environment.

For the O-RU device under test that is powered by PoE or optical fiber with integrated power cable, the network cable or composite cable with the power supply lead stripped out should be prepared in advance, and the actual supply voltage should be read through the voltmeter at the power supply socket of the O-RU, and the actual supply current should be read through the oscilloscope current probe. The accuracy of voltmeters and current probes needs to be verified by a tester.

Full load power consumption test method: During the test process of each RF performance case, the supply voltage and current of the O-RU are recorded, and the average power consumption of each test case is regarded as the full load power consumption. For multi-band devices, all bands must transmit at rated power.

# 7 O-RU RF Tests

## 7.1 Tx Power accuracy

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Reference networking | ![]({{site.baseurl}}/assets/images/24bc46411308.emf.png) |
| Purpose of the test | Verify that the rated transmit power and stability of the device under test meet the requirements. |
| Test conditions | 1. Set up the test environment according to the reference network and calibrate the path loss, which must be added to the measuring equipment; 2. The measuring equipment is set to be synchronized and frame-triggered by an external reference signal, and data acquisition is performed only in the downstream time slot. |
| Test steps | 1. The configuration is completed according to the frequency band and the number of carriers supported by the device; 2. Start the transmitter, the NR working mode is NR-FR1-TM3.1a, and transmit at rated power; 3. Using a spectrum analyzer, the integrated power of all downlink subframes in the channel bandwidth for 20ms is measured separately for each carrier; 4. Traverse all low and high frequencies of all RF channels and record them separately. |
| Expected results | The maximum transmit power per carrier per channel is within +-2dB of its rated power. |

</div>

## 7.2 EVM

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Reference networking | ![]({{site.baseurl}}/assets/images/24bc46411308.emf.png) |
| Purpose of the test | Verify that the EVM of the device under test meets the requirements. |
| Test conditions | 1. Set up the test environment according to the reference network and calibrate the path loss, which must be added to the measuring equipment; 2. The measuring equipment is set to be synchronized and frame-triggered by an external reference signal, and data acquisition is performed only in the downstream time slot. |
| Test steps | 1. The configuration is completed according to the frequency band and the number of carriers supported by the device; 2. Start the transmitter, the NR working mode is NR-FR1-TM3.1a, transmit at rated power, and measure the EVM of the PDSCH channel of each NR carrier under 256QAM modulation; 3. Traverse all low and high frequencies of all RF channels and record them separately. |
| Expected results | All test results meet the following technical requirements:   1. The EVM under 64QAM modulation is not higher than 5%; 2. The EVM under 256QAM modulation is no higher than 3.5%. |

</div>

## 7.3 ACLR

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Reference networking | ![]({{site.baseurl}}/assets/images/24bc46411308.emf.png) |
| Purpose of the test | Verify that the ACLR of the device under test meets the requirements. |
| Test conditions | 1. Set up the test environment according to the reference network and calibrate the path loss, which must be added to the measuring equipment; 2. The measuring equipment is set to be synchronized and frame-triggered by an external reference signal, and data acquisition is performed only in the downstream time slot. |
| Test steps | 1. The configuration is completed according to the frequency band and the number of carriers supported by the device; 2. Start the transmitter, the NR working mode is NR-FR1-TM3.1a, and transmit at rated power; 3. Using a spectrum analyzer, for each carrier, the ACLR of the two-sided adjacent channel is measured separately (in the case of dual carriers, only the single-sided adjacent channel is measured), and the detection mode is true RMS voltage or true average power; 4. Traverse all low and high frequencies of all RF channels and record them separately. |
| Expected results | The ACLR of the NR signal is no higher than -45dBc on each channel. |

</div>

## 7.4 Spurious emission

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Reference networking | ![]({{site.baseurl}}/assets/images/24bc46411308.emf.png) |
| Purpose of the test | Verify that the spurious emissions of the device under test meet the requirements. |
| Test conditions | 1. Set up the test environment according to the reference network and calibrate the path loss, which must be added to the measuring equipment; 2. The measuring equipment is set to be synchronized and frame-triggered by an external reference signal, and data acquisition is performed only in the downstream time slot. |
| Test steps | 1. The configuration is completed according to the frequency band and the number of carriers supported by the device; 2. Start the transmitter, the NR working mode is NR-FR1-TM3.1a, and transmit at rated power; 3. According to the definition of spurious emission, the spectrum analyzer is set to RBW to 100kHz or 1MHz, Detector to RMS or Average, Trace to Max-hold, and Sweep Count to 10 times. 4. Set the start frequency and end frequency according to the spurious frequency band, and after the Sweep Count reaches the pre-set value, find the peak value in the frequency band and record it as the spurious value in the frequency band, and save the instrument screenshot; 5. Traverse all low and high frequencies of all RF channels and record them separately. |
| Expected results | The spurious emission of the device is compliant to O-RAN.WG7.IPC-HAR.0-v03.00. |

</div>

## 7.5 Reference sensitivity

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Reference networking | ![]({{site.baseurl}}/assets/images/a085ad869aa1.emf.png) |
| Purpose of the test | Verify that the reference sensitivity of the device under test meets the requirements. |
| Test conditions | 1. Set up the test environment according to the reference network and calibrate the path loss, which must be added to the measuring equipment; 2. Set the measuring equipment to be synchronized and triggered by external reference signals; 3. If the device supports more than one frequency band, all frequency bands must maintain the power rating for transmission. |
| Test steps | 1. The configuration is completed according to the frequency band and the number of carriers supported by the equipment, and all cells are established, and all supported frequency bands transmit downlink signals at rated power; 2. Set up a vector signal generator and output an uplink reference measurement signal as required; 3. For each carrier, at least 10,000 subframes of data are received to calculate throughput using the throughput statistics or bit error rate statistics tools of the base station maintenance station. 4. Adjust the output power value of the vector signal generator so that the throughput statistical value is slightly greater than 95%, and the power value is recorded as the reference sensitivity; 5. Traversal test of carriers of all NR formats; 6. Traverse all low and high frequencies of all RF channels and record them separately. |
| Expected results | NR reference sensitivity is not higher than -94dBm. |

</div>

## 7.6 ACS

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Reference networking | ![]({{site.baseurl}}/assets/images/50360df59982.emf.png) |
| Purpose of the test | Verify that the ACS of the device under test meets the requirements. |
| Test conditions | 1. Set up the test environment according to the reference network and calibrate the path loss, which must be added to the measuring equipment; 2. Set the measuring equipment to be synchronized and triggered by external reference signals; 3. If the device supports more than one frequency band, all frequency bands must maintain the power rating for transmission. |
| Test steps | 1. The configuration is completed according to the frequency band and the number of carriers supported by the equipment, and all cells are established, and all supported frequency bands transmit downlink signals at rated power; 2. Set the vector signal generator, output the upstream reference measurement signal and the ACS interference signal as required, and note that the interference signal should have an ACLR of at least -49dBc to exclude the influence of the adjacent channel leakage of the interference signal on this test case; 3. For each carrier, at least 10,000 subframes of data are received to calculate throughput using the throughput statistics or bit error rate statistics tools of the base station maintenance station. 4. According to the power requirements, fix the useful signal, adjust the interference signal, make the throughput statistical value slightly greater than 95%, and record the interference signal power value; 5. According to the power requirements, fix the interference signal, adjust the useful signal, make the throughput statistical value slightly greater than 95%, and record the useful signal power value; 6. Traversal test of carriers of all NR formats; 7. Traverse all low and high frequencies of all RF channels and record them separately. |
| Expected results | NR system, the useful signal is not higher than -88dBm, and the interference signal is not less than -44dBm. |

</div>

## 7.7 ICS

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Reference networking | ![]({{site.baseurl}}/assets/images/50360df59982.emf.png) |
| Purpose of the test | Verify that the ICS of the device under test meets the requirements. |
| Test conditions | 1. Set up the test environment according to the reference network and calibrate the path loss, which must be added to the measuring equipment; 2. Set the measuring equipment to be synchronized and triggered by external reference signals; 3. If the device supports more than one frequency band, all frequency bands must maintain the power rating for transmission. |
| Test steps | 1. The configuration is completed according to the frequency band and the number of carriers supported by the equipment, and all cells are established, and all supported frequency bands transmit downlink signals at rated power; 2. Set up a vector signal generator, output the upstream reference measurement signal and ICS interference signal as required, and note that the interference signal should have an ACLR of at least -49dBc to eliminate the influence of adjacent channel leakage of the interference signal on this test case; 3. For each carrier, at least 10,000 subframes of data are received to calculate throughput using the throughput statistics or bit error rate statistics tools of the base station maintenance station. 4. According to the power requirements, fix the useful signal, adjust the interference signal, make the throughput statistical value slightly greater than 95%, and record the interference signal power value; 5. According to the power requirements, fix the interference signal, adjust the useful signal, make the throughput statistical value slightly greater than 95%, and record the useful signal power value; 6. Traversal test of carriers of all NR formats; 7. Traverse all low and high frequencies of all RF channels and record them separately. |
| Expected results | NR system, the useful signal is not higher than -91dBm, and the interference signal is not less than -63.4dBm. |

</div>

## 7.8 Anti-blocking

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Reference networking | ![]({{site.baseurl}}/assets/images/50360df59982.emf.png) |
| Purpose of the test | Verify that the anti-blocking performance of the device under test meets the requirements. |
| Test conditions | 1. Set up the test environment according to the reference network and calibrate the path loss, which must be added to the measuring equipment; 2. Set the measuring equipment to be synchronized and triggered by external reference signals; 3. If the device supports more than one frequency band, all frequency bands must maintain the power rating for transmission. |
| Test steps | 1. The configuration is completed according to the frequency band and the number of carriers supported by the equipment, and all cells are established, and all supported frequency bands transmit downlink signals at rated power; 2. Set up a vector signal generator, and output the uplink reference measurement signal and the blocking interference signal as required; 3. For each carrier, at least 10,000 subframes of data are received to calculate throughput using the throughput statistics or bit error rate statistics tools of the base station maintenance station. 4. According to the power requirements, fix the useful signal, adjust the interference signal, make the throughput statistical value slightly greater than 95%, and record the interference signal power value; 5. According to the power requirements, fix the interference signal, adjust the useful signal, make the throughput statistical value slightly greater than 95%, and record the useful signal power value; 6. Traversal test of carriers of all NR formats; 7. Traverse all low and high frequencies of all RF channels and record them separately. |
| Expected results | The anti-blocking performance of the device is compliant to O-RAN.WG7.IPC-HAR.0-v03.00. |

</div>

Annex (informative):
Change history

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Date | Revision | Description |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |

</div>
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG7.IPC-TEST.0-v01.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG7.IPC-TEST.0-v01.docx).
