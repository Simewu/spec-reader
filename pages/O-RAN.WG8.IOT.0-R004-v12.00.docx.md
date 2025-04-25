## O-RAN.WG8.IOT.0-R004-v12.00.docx

- View in [Reader Mode](https://simewu.com/spec-reader/pages/04-WG8/O-RAN.WG8.IOT.0-R004-v12.00.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG8.IOT.0-R004-v12.00.docx).

---

![webwxgetmsgimg (7).jpeg](../assets/images/bea03973c631.jpg) ORAN-WG8.IOT.0-R004-v12.00

Technical Specification

Copyright (C) 2025 by the O-RAN ALLIANCE e.V.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany

O-RAN Working Group 8 (Stack Reference Design)

Stack Interoperability Test Specification

# Contents

Contents 2

List of figures 14

List of tables 15

Foreword 18

Modal verbs terminology 18

1 Scope 18

1.1 High Level Scenarios 19

1.2 Assumptions 19

2 References 20

2.1 Normative references 20

3 Definition of terms, symbols and abbreviations 22

3.1 Terms 22

3.2 Symbols 22

3.3 Abbreviations 22

4 General Test Conditions and Declarations 24

5 Exclusions and Open Points 24

6 Test Summary 25

6.1 Test Case Summary 25

7 Interoperability (IOT) Standard Test Definitions 32

7.1 Interoperability Standard Test Definitions 32

7.1.1 Standard Test Configurations 32

7.1.2 DUT 32

7.1.3 Testing Tools 32

7.1.4 Time Synchronization 33

7.2 ORAN.WG8.IOT.001: Cell Setup 33

7.2.1 Test Purpose 33

7.2.2 Reference Requirements 33

7.2.3 Initial Conditions 33

7.2.4 Test Setup and Configuration 33

7.2.5 Test Procedure 34

7.3 ORAN.WG8.IOT.002: SystemInformation-MIB 36

7.3.1 Test Purpose 36

7.3.2 Reference Requirements 36

7.3.3 Initial Conditions 36

7.3.4 Test Setup and Configuration 37

7.3.5 Test Procedure 37

7.4 ORAN.WG8.IOT.003: Systeminformation-SIB1 38

7.4.1 Test Purpose 38

7.4.2 Reference Requirements 38

7.4.3 Initial Condition 38

7.4.4 Test Setup and Configuration 38

7.4.5 Test Procedure 39

7.5 ORAN.WG8.IOT.004: Systeminformation-SIB2 40

7.5.1 Test Purpose 40

7.5.2 Reference Requirements 40

7.5.3 Initial Conditions 40

7.5.4 Test Setup and Configuration 40

7.5.5 Test Procedure 40

7.6 ORAN.WG8.IOT.005: Systeminformation-SIB3 41

7.6.1 Test Purpose 41

7.6.2 Reference Requirements 41

7.6.3 Initial Conditions 41

7.6.4 Test Setup and Configuration 41

7.6.5 Test Procedure 42

7.7 ORAN.WG8.IOT.006: Random Access Procedure 42

7.7.1 Test Purpose 42

7.7.2 Reference Requirements 42

7.7.3 Initial Conditions 42

7.7.4 Test Setup and Configuration 43

7.7.5 Test Procedure 43

7.8 ORAN.WG8.IOT.007: Registration Procedure 45

7.8.1 Test Purpose 45

7.8.2 Reference Requirements 45

7.8.3 Initial Conditions 45

7.8.4 Test Setup and Configuration 45

7.8.5 Test Procedure 46

7.9 ORAN.WG8.IOT.008: UE Initiated De-Registration Procedure 49

7.9.1 Test Purpose 49

7.9.2 Reference Requirements 49

7.9.3 Initial Conditions 49

7.9.4 Test Setup and Configuration 49

7.9.5 Test Procedure 50

7.10 ORAN.WG8.IOT.009: PDU session establishment procedure 51

7.10.1 Test Purpose 51

7.10.2 Reference Requirements 51

7.10.3 Initial Conditions 51

7.10.4 Test Setup and Configuration 51

7.10.5 Test Procedure 52

7.11 ORAN.WG8.IOT.010: PDU Session Modification with Multiple Flow 53

7.11.1 Test Purpose 53

7.11.2 Reference Requirements 53

7.11.3 Initial Conditions 53

7.11.4 Test Setup and Configuration 53

7.11.5 Test Procedure 54

7.12 ORAN.WG8.IOT.011: Idle Mode Paging and Service Request Procedure 55

7.12.1 Test Purpose 55

7.12.2 Reference Requirements 55

7.12.3 Initial Conditions 55

7.12.4 Test Setup and Configuration 56

7.12.5 Test Procedure 56

7.13 ORAN.WG8.IOT.012: Downlink UDP data transfer 58

7.13.1 Test Purpose 58

7.13.2 Reference Requirements 58

7.13.3 Initial Conditions 58

7.13.4 Test Setup and Configuration 58

7.13.5 Test Procedure 59

7.14 ORAN.WG8.IOT.013: Uplink UDP data transfer 59

7.14.1 Test Purpose 59

7.14.2 Reference Requirements 59

7.14.3 Initial Condition 59

7.14.4 Test Setup and Configuration 60

7.14.5 Test Procedure 60

7.15 ORAN.WG8.IOT.014: Bidirectional UDP data transfer 61

7.15.1 Test Purpose 61

7.15.2 Reference Requirements 61

7.15.3 Initial Condition 61

7.15.4 Test Setup and Configuration 61

7.15.5 Test Procedure 62

7.16 ORAN.WG8.IOT.015: Bidirectional UDP data transfer on Multiple Flow 63

7.16.1 Test Purpose 63

7.16.2 Reference Requirements 63

7.16.3 Initial Conditions 63

7.16.4 Test Setup and Configuration 63

7.16.5 Test Procedure 64

7.17 ORAN.WG8.IOT.016: SMO Discovery and O1 Interface establishment between O-DU and SMO using static configuration on the O-DU. 65

7.17.1 Test Purpose 65

7.17.2 Reference Requirements 66

7.17.3 Initial Conditions 66

7.17.4 Test Setup and Configuration 66

7.17.5 Test Procedure 66

7.18 ORAN.WG8.IOT.017: SMO Discovery and O1 Interface establishment between O-DU and SMO. 67

7.18.1 Test Purpose 67

7.18.2 Reference Requirements 67

7.18.3 Initial Conditions 67

7.18.4 Test Setup and Configuration 68

7.18.5 Test Procedure 68

7.19 ORAN.WG8.IOT.018: Verify the cell activation successful when configuration received from SMO for co-located O-RU and O-DU. 69

7.19.1 Test Purpose 69

7.19.2 Reference Requirements 69

7.19.3 Initial Conditions 69

7.19.4 Test Setup and Configuration 69

7.19.5 Test Procedure 70

7.20 ORAN.WG8.IOT.019: Verify the cell activation successful when configuration received from SMO for non co-located(remote) O-RU and O-DU. 71

7.20.1 Test Purpose 71

7.20.2 Reference Requirements 71

7.20.3 Initial Conditions 71

7.20.4 Test Setup and Configuration 72

7.20.5 Test Procedure 72

7.21 ORAN.WG8.IOT.020: Verify SMO is notified with the alarm when O-DU detects out of sync from O-RU in hierarchical model. 74

7.21.1 Test Purpose 74

7.21.2 Reference Requirements 74

7.21.3 Initial Conditions 74

7.21.4 Test Setup and Configuration 74

7.21.5 Test Procedure 75

7.22 ORAN.WG8.IOT.021: Verify SMO sends subscription to O-RU via O-DU for alarms and handles the alarm notification from O-RU via O-DU. 76

7.22.1 Test Purpose 76

7.22.2 Reference Requirements 77

7.22.3 Initial Conditions 77

7.22.4 Test Setup and Configuration 77

7.22.5 Test Procedure 78

7.23 ORAN.WG8.IOT.022: Verify SMO handles any subscribed measurement counters received from O-DU on O1 interface. 78

7.23.1 Test Purpose 78

7.23.2 Reference Requirements 78

7.23.3 Initial Conditions 78

7.23.4 Test Setup and Configuration 79

7.23.5 Test Procedure 79

7.24 ORAN.WG8.IOT.023: Verify O-DU successfully establish E2 Interface with near RT-RIC. 80

7.24.1 Test Purpose 80

7.24.2 Reference Requirements 80

7.24.3 Initial Conditions 80

7.24.4 Test Setup and Configuration 81

7.24.5 Test Procedure 81

7.25 ORAN.WG8.IOT.024: Verify near RT-RIC server sends subscription request with type as REPORT to O-DU. 82

7.25.1 Test Purpose 82

7.25.2 Reference Requirements 82

7.25.3 Initial Conditions 82

7.25.4 Test Setup and Configuration 82

7.25.5 Test Procedure 83

7.26 ORAN.WG8.IOT.025: Verify O-DU includes the RIC Actions Not Admitted List in subscription response to near RT-RIC server. 83

7.26.1 Test Purpose 83

7.26.2 Reference Requirements 84

7.26.3 Initial Conditions 84

7.26.4 Test Setup and Configuration 84

7.26.5 Test Procedure 85

7.27 ORAN.WG8.IOT.026: Verify O-DU sends periodic report to the subscribed features to near RT-RIC server. 85

7.27.1 Test Purpose 85

7.27.2 Reference Requirements 85

7.27.3 Initial Conditions 85

7.27.4 Test Setup and Configuration 86

7.27.5 Test Procedure 87

7.28 ORAN.WG8.IOT.027: Verify UE attach is successful with the given SSB periodicity and sub-carrier spacing as part of cell configuration structure from SMO to O-DU for FR1 configuration. 87

7.28.1 Test Purpose 87

7.28.2 Reference Requirements 87

7.28.3 Initial Conditions 87

7.28.4 Test Setup and Configuration 88

7.28.5 Test Procedure 88

7.29 ORAN.WG8.IOT.028: Verify UE attach is successful with Transmission periodicity configured to ms2p5 for FR1 configuration. 90

7.29.1 Test Purpose 90

7.29.2 Reference Requirements 90

7.29.3 Initial Conditions 90

7.29.4 Test Setup and Configuration 90

7.29.5 Test Procedure 91

7.30 ORAN.WG8.IOT.029: Verify UE attach is successful with Transmission periodicity configured to ms5 for FR1 configuration. 92

7.30.1 Test Purpose 92

7.30.2 Reference Requirements 92

7.30.3 Initial Conditions 92

7.30.4 Test Setup and Configuration 93

7.30.5 Test Procedure 93

7.31 ORAN.WG8.IOT.030: Verify cell bring up is successful with 100Mhz bandwidth configuration received from SMO for FR1 configuration. 94

7.31.1 Test Purpose 94

7.31.2 Reference Requirements 94

7.31.3 Initial Conditions 94

7.31.4 Test Setup and Configuration 95

7.31.5 Test Procedure 95

7.32 ORAN.WG8.IOT.031: Verify DL and UL scheduling information IE's during an end-to-end UDP FDX data transmission for FR1 configuration. 96

7.32.1 Test Purpose 96

7.32.2 Reference Requirements 96

7.32.3 Initial Condition 97

7.32.4 Test Setup and Configuration 97

7.32.5 Test Procedure 98

7.33 ORAN.WG8.IOT.032: Verify cell bring up is successful with 64 beams and 64 antenna ports configuration received from SMO to O-DU for FR2 configuration. 100

7.33.1 Test Purpose 100

7.33.2 Reference Requirements 100

7.33.3 Initial Condition 100

7.33.4 Test Setup and Configuration 100

7.33.5 Test Procedure 101

7.34 ORAN.WG8.IOT.033: Verify cell bring up is successful with 8 beams and 64 antenna ports configuration received from SMO to O-DU for FR1 configuration. 102

7.34.1 Test Purpose 102

7.34.2 Reference Requirements 102

7.34.3 Initial Condition 103

7.34.4 Test Setup and Configuration 103

7.34.5 Test Procedure 104

7.35 ORAN.WG8.IOT.034: Verify cell bring up is successful and UE attach when the O-DU is configured with 32 punctured SSB beams for FR2 configuration. 105

7.35.1 Test Purpose 105

7.35.2 Reference Requirements 105

7.35.3 Initial Conditions 105

7.35.4 Test Setup and Configuration 105

7.35.5 Test Procedure 106

7.36 ORAN.WG8.IOT.035: Verify cell bring up is successful when the parameter Occasion And CB-Preambles per SSB is configured to 1 by SMO for FR1 configuration. 107

7.36.1 Test Purpose 107

7.36.2 Reference Requirements 107

7.36.3 Initial Conditions 108

7.36.4 Test Setup and Configuration 108

7.36.5 Test Procedure 109

7.37 ORAN.WG8.IOT.036: Verify the successful cell activation when slice specific configuration containing list of slices in the TA per PLMN is sent towards MAC/SCH on the O1 interface. 111

7.37.1 Test Purpose 111

7.37.2 Reference Requirements 111

7.37.3 Initial Conditions 111

7.37.4 Test Setup and Configuration 111

7.37.5 Test Procedure 112

7.38 ORAN.WG8.IOT.037: Verify UE Registration and PDU session establishment procedure with an allowed S-NSSAI. 114

7.38.1 Test Purpose 114

7.38.2 Reference Requirements 114

7.38.3 Initial Conditions 114

7.38.4 Test Setup and Configuration 114

7.38.5 Test Procedure 115

7.39 ORAN.WG8.IOT.038: Verify downlink data prioritization/scheduling on basis of slice differentiation in-case of each UE with single PDU session per slice. 119

7.39.1 Test Purpose 119

7.39.2 Reference Requirements 119

7.39.3 Initial Conditions 120

7.39.4 Test Setup and Configuration 120

7.39.5 Test Procedure 121

7.40 ORAN.WG8.IOT.039: Verify downlink data scheduling on basis of QoS flow prioritization when two PDU sessions have equal slice priority. 121

7.40.1 Test Purpose 121

7.40.2 Reference Requirements 122

7.40.3 Initial Conditions 122

7.40.4 Test Setup and Configuration 122

7.40.5 Test Procedure 122

7.41 ORAN.WG8.IOT.040: Verify key performance metrics with the sub-counters at S-NSSAI level. 123

7.41.1 Test Purpose 123

7.41.2 Reference Requirements 123

7.41.3 Initial Conditions 123

7.41.4 Test Setup and Configuration 124

7.41.5 Test Procedure 124

7.42 ORAN.WG8.IOT.041: Verify successful slice re-configuration when RRM Policy is updated on the O1 interface. 125

7.42.1 Test Purpose 125

7.42.2 Reference Requirements 125

7.42.3 Initial Conditions 125

7.42.4 Test Setup and Configuration 125

7.42.5 Test Procedure 126

7.43 ORAN.WG8.IOT.042: Verify slice reconfiguration failure in-case of incorrect S-NSSAI is updated on the O1 interface. 127

7.43.1 Test Purpose 127

7.43.2 Reference Requirements 127

7.43.3 Initial Conditions 127

7.43.4 Test Setup and Configuration 127

7.43.5 Test Procedure 128

7.44 ORAN.WG8.IOT.043: Verify cell activation when O-DU is receiving synchronization from external timing source and sync-state is locked. 128

7.44.1 Test Purpose 128

7.44.2 Reference Requirements 128

7.44.3 Initial Conditions 129

7.44.4 Test Setup and Configuration 129

7.44.5 Test Procedure 130

7.45 ORAN.WG8.IOT.044: Verify cell activation when O-DU is receiving synchronization from external timing source and sync-state is not locked. 131

7.45.1 Test Purpose 131

7.45.2 Reference Requirements 131

7.45.3 Initial Conditions 131

7.45.4 Test Setup and Configuration 132

7.45.5 Test Procedure 132

7.46 ORAN.WG8.IOT.045: Verify cell activation when O-DU is receiving synchronization from external timing source and sync-state transits from locked to holdover and freerun. 133

7.46.1 Test Purpose 133

7.46.2 Reference Requirements 133

7.46.3 Initial Conditions 133

7.46.4 Test Setup and Configuration 134

7.46.5 Test Procedure 134

7.47 ORAN.WG8.IOT.046: Verify cell activation when O-DU successfully receive synchronization from secondary source when sync fails with the primary source. 136

7.47.1 Test Purpose 136

7.47.2 Reference Requirements 137

7.47.3 Initial Conditions 137

7.47.4 Test Setup and Configuration 137

7.47.5 Test Procedure 138

7.48 ORAN.WG8.IOT.047: Verify O-CU and O-DU provisions HO configuration sent over O1 interface by SMO for inter-O-DU handover within an O-CU 139

7.48.1 Test Purpose 139

7.48.2 Reference Requirement 139

7.48.3 Initial Conditions 140

7.48.4 Test Setup and Configuration 140

7.48.5 Test Procedure 141

7.49 ORAN.WG8.IOT.048: Verify successful Intra frequency measurement based inter-O-DU handover within an O-CU 141

7.49.1 Test Purpose 141

7.49.2 Reference Requirement 141

7.49.3 Initial Conditions 141

7.49.4 Test Setup and Configuration 142

7.49.5 Test Procedure 142

7.50 ORAN.WG8.IOT.049: Verify successful inter-O-DU handover within an O-CU with multiple PDU session (GBR, Non-GBR, Delay critical GBR bearer) and each PDU session having single QFI established 144

7.50.1 Test Purpose 144

7.50.2 Reference Requirement 145

7.50.3 Initial Conditions 145

7.50.4 Test Setup and Configuration 145

7.50.5 Test Procedure 146

7.51 ORAN.WG8.IOT.050: Verify successful inter-O-DU handover within an O-CU with multiple PDU session (GBR, Non-GBR, Delay critical GBR bearer) and each PDU session having multiple QFI established where few PDU sessions are admitted at target DU 148

7.51.1 Test Purpose 148

7.51.2 Reference Requirement 148

7.51.3 Initial Conditions 148

7.51.4 Test Setup and Configuration 148

7.51.5 Test Procedure 149

7.52 ORAN.WG8.IOT.051: Verify successful inter frequency measurement based inter-O-DU handover within an O-CU 151

7.52.1 Test Purpose 151

7.52.2 Reference Requirement 151

7.52.3 Initial Conditions 151

7.52.4 Test Setup and Configuration 152

7.52.5 Test Procedure 152

7.53 ORAN.WG8.IOT.052: Verify HO preparation failure at target O-DU during inter-O-DU handover within an O-CU 154

7.53.1 Test Purpose 154

7.53.2 Reference Requirement 154

7.53.3 Initial Conditions 154

7.53.4 Test Setup and Configuration 155

7.53.5 Test Procedure 155

7.54 ORAN.WG8.IOT.053: Verify RRC Re-establishment received at O-CU when HO execution fails during inter-O-DU handover within an O-CU 157

7.54.1 Test Purpose 157

7.54.2 Reference Requirement 157

7.54.3 Initial Conditions 157

7.54.4 Test Setup and Configuration 157

7.54.5 Test Procedure 158

7.55 ORAN.WG8.IOT.054: Verify beam failure detection and recovery using SSB for detection as well as recovery with DRX disabled and 64 beams for FR2 configuration. 161

7.55.1 Test Purpose 161

7.55.2 Reference Requirements 161

7.55.3 Initial Condition 161

7.55.4 Test Setup and Configuration 161

7.55.5 Test Procedure 162

7.56 ORAN.WG8.IOT.055: Verify beam failure detection and recovery using SSB for detection as well as recovery with DRX disabled and 8 beams for FR1 configuration. 164

7.56.1 Test Purpose 164

7.56.2 Reference Requirements 164

7.56.3 Initial Condition 164

7.56.4 Test Setup and Configuration 164

7.56.5 Test Procedure 165

7.57 ORAN.WG8.IOT.056: Verify beam failure detection and recovery using SSB for detection as well as recovery with DRX enabled and 8 beams for FR1 configuration. 167

7.57.1 Test Purpose 167

7.57.2 Reference Requirements 167

7.57.3 Initial Condition 167

7.57.4 Test Setup and Configuration 168

7.57.5 Test Procedure 168

7.58 ORAN.WG8.IOT.057: Verify beam failure detection and recovery using CSI-RS for detection as well as recovery with DRX disabled and 32 beams for FR2 configuration. 170

7.58.1 Test Purpose 170

7.58.2 Reference Requirements 171

7.58.3 Initial Condition 171

7.58.4 Test Setup and Configuration 171

7.58.5 Test Procedure 172

7.59 ORAN.WG8.IOT.058: Verify prioritized random access during beam failure recovery 173

7.59.1 Test Purpose 173

7.59.2 Reference Requirements 173

7.59.3 Initial Condition 174

7.59.4 Test Setup and Configuration 174

7.59.5 Test Procedure 175

7.60 ORAN.WG8.IOT.059: Verify beam failure detection and recovery when SSB/CSI-RS not configured under radioLinkMonitoringConfig. 177

7.60.1 Test Purpose 177

7.60.2 Reference Requirements 177

7.60.3 Initial Condition 177

7.60.4 Test Setup and Configuration 177

7.60.5 Test Procedure 178

7.61 ORAN.WG8.IOT.060: Verify end-to-end data with different CSI-RS configuration 180

7.61.1 Test Purpose 180

7.61.2 Reference Requirements 180

7.61.3 Initial Condition 180

7.61.4 Test Setup and Configuration 181

7.61.5 Test Procedure 181

7.62 ORAN.WG8.IOT.061: Verify cell bring up is not successful with invalid configuration received from SMO 182

7.62.1 Test Purpose 182

7.62.2 Reference Requirements 182

7.62.3 Initial Condition 182

7.62.4 Test Setup and Configuration 183

7.62.5 Test Procedure 183

7.63 ORAN.WG8.IOT.062: Verify end-to-end data when SRS is enabled and UE is in mobility 184

7.63.1 Test Purpose 184

7.63.2 Reference Requirements 184

7.63.3 Initial Condition 184

7.63.4 Test Setup and Configuration 185

7.63.5 Test Procedure 185

7.64 ORAN.WG8.IOT.063: Verify successful collection and transfer of MAC statistics for MU-MIMO from O-DU-OAM-Agent to SMO. 186

7.64.1 Test Purpose 186

7.64.2 Reference Requirement 186

7.64.3 Initial Conditions 186

7.64.4 Test Setup and Configuration 187

7.64.5 Test Procedure 187

7.65 ORAN.WG8.IOT.064: Verify O-DU-OAM-Agent successfully download the configuration from SMO for beamforming optimization through "file-download request". 189

7.65.1 Test Purpose 189

7.65.2 Reference Requirement 189

7.65.3 Initial Conditions 189

7.65.4 Test Setup and Configuration 190

7.65.5 Test Procedure 190

7.66 ORAN.WG8.IOT.065: Verify successful collection and transfer of L1 measurements along with parameter reconfiguration for AI/ML assisted Beam Selection Optimization on E2 interface. 193

7.66.1 Test Purpose 193

7.66.2 Reference Requirement 193

7.66.3 Initial Conditions 193

7.66.4 Test Setup and Configuration 194

7.66.5 Test Procedure 194

7.67 ORAN.WG8.IOT.066: Verify successful vO-DU and vO-CU deployment on an O-Cloud. 197

7.67.1 Test Purpose 197

7.67.2 Reference Requirement 197

7.67.3 Initial Conditions 197

7.67.4 Test Setup and Configuration 197

7.67.5 Test Procedure 198

7.68 ORAN.WG8.IOT.067: Verify successful addition of vO-DU and vO-CU instance when network demand increases beyond current NF capacity threshold. 200

7.68.1 Test Purpose 200

7.68.2 Reference Requirement 201

7.68.3 Initial Conditions 201

7.68.4 Test Setup and Configuration 201

7.68.5 Test Procedure 202

7.69 ORAN.WG8.IOT.068: Verify successful deletion of vO-DU and vO-CU instance when network demand reduces below NF capacity threshold. 203

7.69.1 Test Purpose 203

7.69.2 Reference Requirement 204

7.69.3 Initial Conditions 204

7.69.4 Test Setup and Configuration 204

7.69.5 Test Procedure 205

7.70 ORAN.WG8.IOT.069: Verify successful software upgrade for vO-DU. 206

7.70.1 Test Purpose 206

7.70.2 Reference Requirement 206

7.70.3 Initial Conditions 206

7.70.4 Test Setup and Configuration 206

7.70.5 Test Procedure 207

7.71 ORAN.WG8.IOT.070: Verify successful reconfiguration for vO-DU. 208

7.71.1 Test Purpose 208

7.71.2 Reference Requirement 208

7.71.3 Initial Conditions 209

7.71.4 Test Setup and Configuration 209

7.71.5 Test Procedure 210

7.72 ORAN.WG8.IOT.071: Verify vO-DU functionality during PTP sync loss and recovery. 211

7.72.1 Test Purpose 211

7.72.2 Reference Requirement 211

7.72.3 Initial Conditions 211

7.72.4 Test Setup and Configuration 212

7.72.5 Test Procedure 212

7.73 ORAN.WG8.IOT.072: Verification of SSH/ TLS version compatibility of secured NETCONF session creation at O1 interface and fronthaul interface. 214

7.73.1 Test Purpose 214

7.73.2 Reference Requirement 214

7.73.3 Initial Conditions 214

7.73.4 Test Setup and Configuration 214

7.73.5 Test Procedure 215

7.74 ORAN.WG8.IOT.073: Verification of successful secured NETCONF session creation over SSH/ TLS channel at the O1 interface and fronthaul interface. 217

7.74.1 Test Purpose 217

7.74.2 Reference Requirement 217

7.74.3 Initial Conditions 217

7.74.4 Test Setup and Configuration 217

7.74.5 Test Procedure 218

7.75 ORAN.WG8.IOT.074: Verification of Access Control Groups defined for NETCONF sessions created at O1 interface and fronthaul interface. 220

7.75.1 Test Purpose 220

7.75.2 Reference Requirement 221

7.75.3 Initial Conditions 221

7.75.4 Test Setup and Configuration 221

7.75.5 Test Procedure 222

7.76 ORAN.WG8.IOT.075: Verify cell bring up using GoB configuration received from SMO is successful. 223

7.76.1 Test Purpose 223

7.76.2 Reference Requirement 224

7.76.3 Initial Conditions 224

7.76.4 Test Setup and Configuration 224

7.76.5 Test Procedure 225

7.77 ORAN.WG8.IOT.076: Verify successful AI/ML-assisted non-GoB beamforming optimization in Near RT RIC. 226

7.77.1 Test Purpose 226

7.77.2 Reference Requirement 226

7.77.3 Initial Conditions 226

7.77.4 Test Setup and Configuration 227

7.77.5 Test Procedure 227

7.78 ORAN.WG8.IOT.077: Verify successful cell bring-up of Shared O-RU in Single operator deployment. 230

7.78.1 Test Purpose 230

7.78.2 Reference Requirement 230

7.78.3 Initial Conditions 230

7.78.4 Test Setup and Configuration 231

7.78.5 Test Procedure 231

7.79 ORAN.WG8.IOT.078: Verify successful detection for supervision failure of Shared O-RU in Single operator deployment. 233

7.79.1 Test Purpose 233

7.79.2 Reference Requirement 233

7.79.3 Initial Conditions 233

7.79.4 Test Setup and Configuration 234

7.79.5 Test Procedure 234

7.80 ORAN.WG8.IOT.079: Verify successful performance management of a Shared O-RU in Single operator deployment. 235

7.80.1 Test Purpose 235

7.80.2 Reference Requirement 235

7.80.3 Initial Conditions 235

7.80.4 Test Setup and Configuration 236

7.80.5 Test Procedure 237

7.81 ORAN.WG8.IOT.080: Verify successful switchover from active to standby O-DU node in Single operator deployment. 238

7.81.1 Test Purpose 238

7.81.2 Reference Requirement 238

7.81.3 Initial Conditions 238

7.81.4 Test Setup and Configuration 239

7.81.5 Test Procedure 240

7.82 ORAN.WG8.IOT.081: Verify successful scale-out operation for a O-DU node by the SMO in Single operator deployment. 241

7.82.1 Test Purpose 241

7.82.2 Reference Requirement 241

7.82.3 Initial Conditions 241

7.82.4 Test Setup and Configuration 242

7.82.5 Test Procedure 242

7.83 ORAN.WG8.IOT.082: Verify successful software upgrade for O-RU triggered by O-DU. 244

7.83.1 Test Purpose 244

7.83.2 Reference Requirement 244

7.83.3 Initial Conditions 244

7.83.4 Test Setup and Configuration 245

7.83.5 Test Procedure 245

7.84 ORAN.WG8.IOT.083: Verify successful configuration and data header compression/de-compression at O-CU when RoHC profile "0x0001" is used for "RTP/UDP/IP". 246

7.84.1 Test Purpose 246

7.84.2 Reference Requirements 246

7.84.3 Initial Conditions 246

7.84.4 Test Setup and Configuration 247

7.84.5 Test Procedure 247

7.85 ORAN.WG8.IOT.084: Verify successful configuration and data header compression/de-compression at O-CU when RoHC profile "0x0002" is used for "UDP/IP". 254

7.85.1 Test Purpose 254

7.85.2 Reference Requirements 254

7.85.3 Initial Conditions 254

7.85.4 Test Setup and Configuration 255

7.85.5 Test Procedure 255

7.86 ORAN.WG8.IOT.085: Verify successful collection and transfer of slice performance reports via E2 interface. 260

7.86.1 Test Purpose 260

7.86.2 Reference Requirement 260

7.86.3 Initial Conditions 260

7.86.4 Test Setup and Configuration 260

7.86.5 Test Procedure 261

7.87 ORAN.WG8.IOT.086: Verify successful policy delivery and execution of slice reconfiguration via E2 interface. 262

7.87.1 Test Purpose 262

7.87.2 Reference Requirement 262

7.87.3 Initial Conditions 262

7.87.4 Test Setup and Configuration 263

7.87.5 Test Procedure 263

7.88 ORAN.WG8.IOT.087: Verify successful UE registration and data transmission in a Shared O-RU multi-vendor slice deployment. 265

7.88.1 Test Purpose 265

7.88.2 Reference Requirement 266

7.88.3 Initial Conditions 266

7.88.4 Test Setup and Configuration 266

7.88.5 Test Procedure 267

7.89 ORAN.WG8.IOT.088: Verify network energy saving functionality in TRX\_CONTROL mode configured with undefined Sleep Period. 269

7.89.1 Test Purpose 269

7.89.2 Reference Requirement 269

7.89.3 Initial Conditions 269

7.89.4 Test Setup and Configuration 270

7.89.5 Test Procedure 270

7.90 ORAN.WG8.IOT.089: Verify network energy saving functionality in TRX\_CONTROL mode configured with defined Sleep Period. 274

7.90.1 Test Purpose 274

7.90.2 Reference Requirement 274

7.90.3 Initial Conditions 274

7.90.4 Test Setup and Configuration 275

7.90.5 Test Procedure 275

Annex A (informative) 278

Test Setup 278

A.1 Test Setup 1: End to End OTA architecture using commercial UE 278

A.2 Test Setup 2: End to End OTA architecture using UE Simulator/Emulator 279

A.3 Test Setup 3: Simulated CU and CN architecture 279

A.4 Test Setup 4: O1 and E2 interface for Remote O-RU connected to O-DU architecture 279

A.5 Test Setup 5: O1 and E2 interface for co-located O-RU and O-DU architecture 280

A.6 Test Setup 6: Setup for inter O-DU HO within an O-CU 280

A.7 Test Setup 7: Setup for O-DU Timing Synchronization 280

A.8 Test Setup 8: Setup for vO-DU and vO-CU Cloudification 281

A.9 Test Setup 9: Setup for Single Operator Solution for Shared O-RU 281

Annex B (informative) 282

Test Profile 1: Throughput Test 282

B.1 FTP Settings 282

B.1.1 UDP Settings 282

B.2 MIB and SSB configuration 282

B.2.1 MIB and SSB for FR1 282

B.2.2 MIB and SSB for FR2 283

B.3 SIB1 Configuration 284

B.4 PUCCH Support- Short PUCCH Format Configuration 284

B.5 Downlink Data Delivery Status Reporting 285

B.6 RACH Configuration 286

B.7 Throughput Configuration 286

B.8 CSI-RS configuration 287

B.9 SRS configuration 287

B.10 IMS Settings 288

Annex C (informative) 289

C.1 Initial Access Flow 289

Revision History 290

# List of figures

Figure 7.1.2-A: DUT configuration 32

Figure A.1- 1: Test Setup 1 - End to End OTA architecture using commercial UE 278

Figure A.2- 1: Test Setup 2 - End to End OTA architecture using UE Simulator/Emulator 279

Figure A.3- 1: Test Setup 3 - Simulated CU and CN architecture 279

Figure A.4- 1: Test Setup 4 - O1 and E2 interface for Remote O-RU connected to O-DU architecture 279

Figure A.5- 1: Test Setup 5 - O1 and E2 interface for co-located O-RU and O-DU architecture 280

Figure A.6- 1: Test Setup 6 - inter O-DU HO within an O-CU 280

Figure A.7- 1: Test Setup 7 - O-DU Timing Synchronization 280

Figure A.8- 1: Test Setup 8 - vO-DU and vO-CU Cloudification 281

# List of tables

Table 6.1-1: Test Summary 25

Table 7.2-1: Cell Setup 34

Table 7.3-1: SystemInformation-MIB 37

Table 7.4-1: SystemInformation-SIB1 39

Table 7.5-1: SystemInformation-SIB2 40

Table 7.6-1: SystemInformation-SIB3 42

Table 7.7-1: Random Access Procedure 43

Table 7.8-1: Registration 46

Table 7.9-1: UE initiated De-registration 50

Table 7.10-1: PDU session establishment 52

Table 7.11-1: PDU session modification 54

Table 7.12-1: Idle mode Paging & Service Request 56

Table 7.13-1: Downlink Continuous Throughput 59

Table 7.14-1: Uplink Continuous Throughput 60

Table 7.15-1: Bidirectional Continuous Throughput 62

Table 7.16-1: Bidirectional UDP data on multiple flow 64

Table 7.17-1: SMO Discovery and O1 Interface establishment between O-DU and SMO using static configuration in O-DU. 66

Table 7.18-1: SMO Discovery and O1 Interface establishment between O-DU and SMO 68

Table 7.19-1: cell activation when configuration received from SMO for co-located O-DU and O-RU 70

Table 7.20-1: Cell activation when configuration received from SMO for non co-located(remote) O-RU and O-DU 72

Table 7.21-1: SMO is notified with the alarm when O-DU detects out of sync from O-RU in hierarchical model 75

Table 7.22-1: SMO sends subscription for alarms to O-RU via O-DU and handles the alarm notification from O-RU via O-DU in hierarchical model 78

Table 7.23-1: SMO handles any subscribed measurement counters received from O-DU on O1 interface 79

Table 7.24-1: O-DU successfully establish E2 Interface with near RT-RIC 81

Table 7.25-1: Near RT-RIC server sends subscription request with IE type as REPORT to O-DU 83

Table 7.26-1: O-DU includes the RIC Actions Not Admitted List in subscription response to near RT-RIC server 85

Table 7.27-1: SMO handles any subscribed measurement counters received from O-DU on O1 interface 87

Table 7.28-1: MIB Periodicity and subcarrier spacing 88

Table 7.29-1: Transmission periodicity configured to ms2p5 91

Table 7.30-1: ms5 Transmission periodicity 93

Table 7.31-1: 100Mhz bandwidth configuration received from SMO 95

Table 7.32-1: DL and UL scheduling information IE's during an end-to-end UDP FDX data transmission 98

Table 7.33-1: 64 beams and 64 antenna ports configuration received from SMO to O-DU 101

Table 7.34-1: 8 beams and 64 antenna ports configuration received from SMO to O-DU 104

Table 7.35-1: O-DU is configured with 32 punctured SSB beams 106

Table 7.36-1: Occasion And CB-Preambles per SSB is configured to 1 by SMO 109

Table 7.37-1: Cell activation when slice specific configuration received from SMO for O-DU on O1 interface 112

Table 7.38-1: Slice Registration & PDU Session establishment 115

Table 7.39-1: Slice level downlink data prioritization 121

Table 7.40-1: Downlink data scheduling on basis of equal slice priority 122

Table 7.41-1: Performance Counters at S-NSSAI level 124

Table 7.42-1: Slice Reconfiguration on O1 interface 126

Table 7.43-1: Slice Reconfiguration on O1 interface 128

Table 7.44-1: Cell activation when receiving synchronization from external timing source 130

Table 7.45-1: Cell activation failure when failed to receive synchronization from external timing source 132

Table 7.46-1: Cell activation failure when fail to receive synchronization from external timing source and sync-state transits from locked to holdover and freerun 134

Table 7.47-1: Cell activation when receiving synchronization from secondary timing source 138

Table 7.48-1: Verify O-CU and O-DU provisions HO configuration sent over O1 interface by SMO for inter-O-DU handover within an O-CU 141

Table 7.49-1: Verify successful intra frequency measurement based inter-O-DU handover within an O-CU 142

Table 7.50-1: Verify successful inter-O-DU handover within an O-CU with multiple PDU session (GBR, Non-GBR, Delay critical GBR bearer) and each PDU session having single QFI established 146

Table 7.51-1: Verify successful inter-O-DU handover within an O-CU with multiple PDU session (GBR, Non-GBR, Delay critical GBR bearer) and each PDU session having multiple QFI established where few PDU sessions are admitted at target DU 149

Table 7.52-1: Verify successful inter frequency measurement based inter-O-DU handover within an O-CU 152

Table 7.53-1: Verify HO preparation failure at target O-DU during inter-O-DU handover within an O-CU 155

Table 7.54-1: Procedure to verify RRC Re-establishment received at O-CU when HO execution fails during inter-O-DU handover within an O-CU 158

Table 7.55-1: Beam failure detection and recovery using SSB for FR2 162

Table 7.56-1: Beam failure detection and recovery using SSB for FR1 165

Table 7.57-1: Beam failure detection and recovery using SSB for FR1 with DRX enabled 168

Table 7.58-1: Beam failure detection and recovery using CSI-RS for FR2 172

Table 7.59-1: Prioritized random access during beam failure recovery 175

Table 7.60-1: Beam failure detection and recovery when SSB/CSI-RS not configured for detection 178

Table 7.61-1: End-to-end data verification with different CSI-RS configuration 181

Table 7.62-1: Procedure to verify unsuccessful cell setup when invalid CSI-RS config is used 183

Table 7.63-1: End-to-end data verification with SRS enabled and UE in mobility 185

Table 7.64-1: Successful collection and transfer of MAC statistics to SMO. 187

Table 7.65-1: O-DU-OAM-Agent successfully downloads the configuration from SMO through "file-download request" 190

Table 7.66-1: Successful collection and transfer of L1 measurements along with parameter reconfiguration on E2 interface. 194

Table 7.67-1: Successful vO-DU and vO-CU deployment. 198

Table 7.68-1: Addition of vO-DU and vO-CU instance. 202

Table 7.69-1: Deletion of additional vO-DU and vO-CU instance. 205

Table 7.70-1: Software upgrade of vO-DU. 207

Table 7.71-1: Successful reconfiguration for an vO-DU over O1 interface 210

Table 7.72-1: PTP sync loss & recovery in vO-DU. 212

Table 7.73-1: SSH/ TLS version compatibility verification during NETCONF session creation at O1 interface and fronthaul interface 215

Table 7.74-1: Verification of secured NETCONF session creation over SSH or TLS channel at O1 interface and fronthaul interface 218

Table 7.75-1: Access control group verification for NETCONF session establishment at O1 interface and fronthaul interface 222

Table 7.76-1: Cell bring up with GoB configuration 225

Table 7.77-1: AI/ML assisted non-GoB beamforming optimization on E2 interface. 227

Table 7.78-1: Cell bring-up in Shared O-RU, Single operator deployment 231

Table 7.79-1: Supervision failure of Shared O-RU, Single operator deployment 234

Table 7.80-1: Performance management of Shared O-RU, Single operator deployment 237

Table 7.81-1: Basic resiliency with shared O-RU, Single operator deployment 240

Table 7.82-1: Scale-out operation for O-DU with shared O-RU, Single operator deployment 242

Table 7.83-1: Software upgrade of O-RU 245

Table 7.84-1: Registration & data transfer when RoHC is enabled 247

Table 7.85-1: Registration & data transfer when RoHC is enabled 255

Table 7.86-1: Slice measurements on E2 interface. 261

Table 7.87-1: Slice reconfiguration on E2 interface. 264

Table 7.88-1: Multi-vendor slice deployment 267

Table 7.89-1: energy saving functionality with TRX\_CONTROL for undefined sleep period. 270

Table 7.90-1: energy saving functionality with TRX\_CONTROL for defined sleep period. 275

# Foreword

This Technical Specification (TS) has been produced by O-RAN Alliance.

# Modal verbs terminology

In the present document "shall", "shall not", "should", "should not", "may", "need not", "will", "will not", "can" and "cannot" are to be interpreted as described in clause 3.2 of the O-RAN Drafting Rules (Verbal forms for the expression of provisions).

"must" and "must not" are NOT allowed in O-RAN deliverables except when used in direct citation.

# 1 Scope

The contents of the present document are subject to continuing work within O-RAN and may change following formal O-RAN approval. Should the O-RAN Alliance modify the contents of the present document, it will be re-released by O-RAN with an identifying change of version date and an increase in version number as follows:

version xx.yy.zz

where:

xx: the first digit-group is incremented for all changes of substance, i.e. technical enhancements, corrections, updates, etc. (the initial approved document will have xx=01). Always 2 digits with leading zero if needed.

yy: the second digit-group is incremented when editorial only changes have been incorporated in the document. Always 2 digits with leading zero if needed.

zz: the third digit-group included only in working versions of the document indicating incremental changes during the editing process. External versions never include the third digit-group. Always 2 digits with leading zero if needed.

This document specifies the requirements, conditions, configurations, profiles, and sequences for interoperability testing of O-RAN O-CU and O-DU deployment scenarios with other O-RAN components in standalone (SA) mode.

This document complies with ORAN Testing and Integration Focus Group (TIFG) recommendation on a uniform documentation approach for interface testing specifications across all ORAN Working Groups (WGs).

The following interfaces (logical or physical) are covered in IOT test cases.

* RLC-MAC
* L1-L2
* RRC-SDAP
* SDAP-PDCP
* RRC-PDCP
* O1 interface
* E2 interface

## High Level Scenarios

Scenarios included in Release 3 of the IOT specification are aligned with ORAN-WG8.AAD [1]. In this release, the focus is on functional behavior and limited performance of O-CU/O-DU under different traffic scenario.

* Cell Setup and activation.
* SystemInformation (MIB, SIB1, SIB2 and SIB3).
* RACH (with PRACH Format 0).
* Registration and De-Registration procedure.
* PDU session establishment and modification.
* Idle mode Paging.
* UDP data transfer (DL/UL).
* O1 and E2 interface
* Beam Management

The following are the performance scenarios:

* Throughput under load condition in UL and DL.
* Static configuration files are used to configure O-CU and O-DU.

## Assumptions

In current release of this test specification, the following assumptions have been made:

* The F1 interfaces are assumed to comply with 3GPP release specifications [2], [15], [16] and [17].
* O-CU and O-DU comply to the same version of the O-RAN Software Architecture specifications [1].

All elements in the interoperability test and the supporting test environment, where 3GPP support is relevant, comply to the same version of the 3GPP specification.

# References

## Normative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following referenced documents are necessary for the application of the present document.

1. [O-RAN.WG8.AAD.0-R004-v13.00](https://oranalliance.atlassian.net/wiki/download/attachments/3427434522/O-RAN.WG8.AAD.0-R004-v13.00.docx?api=v2" \o "Download): "Base Station O-DU and O-CU Software Architecture and APIs"
2. 3GPP TS 38.473: "NG-RAN; F1 Application Protocol (F1AP), (Release 15.13.0)"
3. 3GPP TS 38.321: "Medium Access Control (MAC) protocol specification, (Release [15.12.0](https://www.3gpp.org/ftp/Specs/archive/38_series/38.321/38321-fc0.zip))"
4. 3GPP TS 38.322: "Radio Link Control (RLC) protocol specification, (Release [15.5.0](https://www.3gpp.org/ftp/Specs/archive/38_series/38.322/38322-f50.zip))"
5. 3GPP TS 38.323: "Packet Data Convergence Protocol (PDCP) specification, (Release [15.7.0](https://www.3gpp.org/ftp/Specs/archive/38_series/38.323/38323-f70.zip))"
6. 3GPP TS 37.324 "Service Data Adaptation Protocol (SDAP), (Release [15.1.0](https://www.3gpp.org/ftp/Specs/archive/37_series/37.324/37324-f10.zip))"
7. 3GPP TS 38.300: "NR; NR and NG-RAN Overall Description, (Release [15.12.0](https://www.3gpp.org/ftp/Specs/archive/38_series/38.300/38300-fc0.zip))"
8. 3GPP TS 38.331: "Radio Resource Control (RRC) protocol specification, (Release [15.13.0](https://www.3gpp.org/ftp/Specs/archive/38_series/38.331/38331-fd0.zip))"
9. 3GPP TS 38.300: "NR; NR and NG-RAN Overall Description, (Release [15.12.0](https://www.3gpp.org/ftp/Specs/archive/38_series/38.300/38300-fc0.zip))"
10. 3GPP TS 38.425: "NR user plane protocol, (Release [15.7.0](https://www.3gpp.org/ftp/Specs/archive/38_series/38.425/38425-f70.zip))"
11. 3GPP TS 37.214: "Physical layer procedures for data, (Release [15.3.0](https://www.3gpp.org/ftp/Specs/archive/37_series/37.324/37324-f10.zip))"
12. 222.10.01: "5G FAPI: PHY API Specification"
13. 3GPP TR 21.905: "Vocabulary for 3GPP Specifications, (Release [17.0.0](https://www.3gpp.org/ftp/Specs/archive/21_series/21.905/21905-h00.zip))"
14. 3GPP TR 38.104: "NR; Base Station (BS) radio transmission and reception, (Release [15.13.0](https://www.3gpp.org/ftp/Specs/archive/38_series/38.104/38104-fd0.zip))"
15. 3GPP TS 38.470: "NG-RAN; F1 general aspects and principles, (Release [15.7.0](https://www.3gpp.org/ftp/Specs/archive/38_series/38.470/38470-f70.zip))"
16. 3GPP TS 38.472: "NG-RAN; F1 signaling transport, (Release [15.7.0](https://www.3gpp.org/ftp/Specs/archive/38_series/38.472/38472-f70.zip))".
17. 3GPP TS 38.474: "NG-RAN; F1 data transport, (Release [15.3.0](https://www.3gpp.org/ftp/Specs/archive/38_series/38.474/38474-f30.zip))".
18. 3GPP TS 38.211: "NR; Physical channels and modulation, (Release [15.8.0](https://www.3gpp.org/ftp/Specs/archive/38_series/38.211/38211-f80.zip))".
19. O-RAN.WG5.C.1-v11.00: "NR C-plane profile"
20. 3GPP TS 38.413: "NG-RAN; NG Application Protocol (NGAP), (Release [15.11.0](https://www.3gpp.org/ftp/Specs/archive/38_series/38.413/38413-fb0.zip))"
21. 3GPP TS 24.501: "Non-Access-Stratum (NAS) protocol for 5G System (5GS); Stage 3, (Release [16.8.0](https://www.3gpp.org/ftp/Specs/archive/24_series/24.501/24501-g80.zip))"
22. O-RAN.WG5.O-DU-O1.0-R003-v08.00 : "O1 Interface specification for O-DU"
23. RFC-3736: "Stateless Dynamic Host Configuration Protocol (DHCP) Service for IPv6"
24. O-RAN.WG4.MP.0-R003-v13.00: "Management Plane Specification"
25. 3GPP TS 28.552: "Management and orchestration; 5G performance measurements, (Release [16.10.0](https://www.3gpp.org/ftp/Specs/archive/28_series/28.552/28552-ga0.zip))"
26. O-RAN.WG4.CUS.0-R003-v13.00: Control, User and Synchronization Plane Specification
27. O-RAN.WG5.O-DU-O1.0-R003-v07.00-YANGs: "O1 Interface for O-DU 7.0 - YANG Models"
28. O-RAN.WG10.O1-Interface.0-R003-v11.00 Technical Specification, "O-RAN Operations and Maintenance Interface Specification"
29. O-RAN.WG1.Use-Cases-Analysis-Report-R003-v12.00, "O-RAN Working Group 1 Use Cases Analysis Report"
30. TS 38.133: "Requirements for support of radio resource management, (Release 17.5.0)"
31. O-RAN.WG6.CADS-v05.00Technical Report, "Cloud Architecture and Deployment Scenarios for O-RAN Virtualized RAN"
32. O-RAN.WG6.ORCH-USE-CASES-R003-v08.00 Technical Specification, "Cloudification and Orchestration Use Cases and Requirements for O-RAN Virtualized RAN"
33. O-RAN.WG6.O-Cloud Notification API-v03.00 Technical Specification, "O-Cloud Notification for Event Consumers"
34. O-RAN.WG11.Security-Protocols-Specification.O-R003-v07.00, "Security Protocols Specifications"
35. O-RAN.WG3.UCR-R003-v04.00, "O-RAN Working Group 3 Near-Real-time RAN Intelligent Controller Use Cases and Requirements"
36. O-RAN.WG3.E2SM-KPM-R003-v04.00, "Near-Real-time RAN Intelligent Controller E2 Service Model (E2SM) KPM"
37. O-RAN.WG3.E2SM-RC-R003-v04.00, "Near-Real-time RAN Intelligent Controller E2 Service Model (E2SM), RAN Control"
38. O-RAN.WG1.Use-Cases-Detailed-Specification-R003-v13.00, "Use Cases Detailed Specification"

# Definition of terms, symbols and abbreviations

## Terms

For the purposes of the present document, the following terms apply:

**O-CU:** O-RAN Central Unit is a logical node hosting PDCP, RRC, SDAP, and other control functions.

**O-DU:** O-RAN Distributed Unit is a logical node hosting RLC, MAC, and High-PHY layers based on a lower layer functional split.

**O-RU:** O-RAN Radio Unit is a logical node hosting Low-PHY layer and RF processing based on a lower layer functional split.

**F1 interface:** The interface defined by 3GPP TS [15], 3GPP TS [16], and 3GPP TS [2], to be further interpreted as per O-RAN WG5 specification for interoperability between O-CU and O-DU from different vendors.

## Symbols

For the purposes of the present document, the following symbols apply:

## Abbreviations

For the purposes of the present document, the [following] abbreviations [given in ... and the following] apply:

3GPP Third Generation Partnership Project

5G Fifth-Generation Mobile Communications

AMC Adaptive Modulation and Coding

BWP Bandwidth Part

CA Certificate Authority

CSI Channel State Information

CU Centralized Unit as defined by 3GPP

DCI Downlink Control Information

DHCP Dynamic Host Configuration Protocol

DL Downlink

DU Distributed Unit as defined by 3GPP

DUT Device Under Test

E1AP E1 Application Protocol

F1AP F1 Application Protocol

FAPI Functional Application Platform Interface

FDD Frequency Division Duplex

HARQ Hybrid Automatic Repeat Request

LLS Lower Layer Split

MAC Medium Access Control protocol

MIMO Multiple Input Multiple Output

MT Mobile-Termination

MU-MIMO Multiple User MIMO

NETCONF Network Configuration Protocol

NG-RAN Next Generation Radio Access Network

NR New Radio

O-CU O-RAN Centralized Unit as defined by O-RAN

O-DU O-RAN Distributed Unit as defined by O-RAN

OFH Open Front Haul protocol defined by O-RAN

OFH-C OFH Control plane

OFH-U OFH User plane

O-RU O-RAN Radio Unit as defined by O-RAN

PBCH Physical Broadcast Channel

PDCCH Physical Downlink Control Channel

PHY Physical (L1) access layer of RAN

PRACH Physical Random Access Channel

PUCCH Physical Uplink Control Channel

QAM Quadrature Amplitude Modulation

QoS Quality of Service

QPSK Quadrature (Quaternary) Phase Shift Keying

RA Registration Authority

RAN Radio Access Network

Rel-x Release number: where, x is the actual release number

RF Radio Frequency

RIC RAN Intelligence Controller

RLC Radio Link Control protocol

RRC Radio Resource Control protocol

RT Real Time

RU Radio Unit

Rx Receiver

SCS Sub-Carrier Spacing

SDAP Service Data Adaptation Protocol

SDU Service Data Unit

SLA Slice Level Agreement

SMO Service Management Orchestration

SRS Sounding Reference Signal

SU-MIMO Singer User MIMO

TDD Time Division Duplex

TLS Transport Layer Security

TS Technical Specification

TTI Transmission Time Interval

Tx Transmitter

UE User Equipment

UL Uplink

WG Working Group

# General Test Conditions and Declarations

In this document, scenarios are considered with real HW (see 7.17), as well as in a simulated environment. Parameters are defined for configurations based on ORAN-WG8.AAD [1], the 3GPP document, and validation are done around these parameters. These validations are done on all relevant nodes through internal/specific logs.

# Exclusions and Open Points

This document excludes the following interfaces (if applicable):

* E1

# Test Summary

## Test Case Summary

Test cases covered in this document are derived from O-RAN.WG8.AAD [1].

Table 6.1-1: Test Summary

|  |  |  |  |
| --- | --- | --- | --- |
| **Module Name** | **Test Case** | **Covered in Release** | **Reference** |
| O-CU, O-DU | Cell setup | Release 1 | O-RAN.WG5.C.1 [19],  3GPP TS [2],  ORAN-WG8.AAD [1] |
| O-CU, O-DU | SystemInformation: MIB | Release 1 | 3GPP TS [2],  ORAN-WG8.AAD [1] |
| O-CU, O-DU | SystemInformation: SIB1 | Release 1 | ORAN-WG8.AAD [1] |
| O-CU, O-DU | SystemInformation: SIB2 | Release 1 | ORAN-WG8.AAD [1] |
| O-CU, O-DU | SystemInformation: SIB3 | Release 1 | ORAN-WG8.AAD [1] |
| O-CU, O-DU | Random Access Procedure | Release 1 | ORAN-WG8.AAD [1] |
| O-CU, O-DU | Registration Procedure | Release 1 | ORAN-WG8.AAD [1] |
| O-CU, O-DU | UE Initiated De-Registration | Release 1 | ORAN-WG8.AAD [1] |
| O-CU, O-DU | PDU Establishment Procedure | Release 1 | ORAN-WG8.AAD [1] |
| O-CU, O-DU | PDU Session Modification | Release 1 | ORAN-WG8.AAD [1] |
| O-CU, O-DU | Idle mode Paging | Release 1 | ORAN-WG8.AAD [1] |
| O-CU, O-DU | Downlink Continuous Throughput | Release 1 | ORAN-WG8.AAD [1] |
| O-CU, O-DU | Uplink Continuous Throughput | Release 1 | ORAN-WG8.AAD [1] |
| O-CU, O-DU | Bidirectional Continuous Throughput | Release 1 | ORAN-WG8.AAD [1] |
| O-CU, O-DU | Bidirectional throughput on multiple flow | Release 1 | ORAN-WG8.AAD [1] |
| O1 | SMO Discovery and O1 Interface establishment between O-DU and SMO using static configuration on the O-DU. | Release 2 | ORAN-WG8.AAD [1] |
| O1 | SMO Discovery and O1 Interface establishment between O-DU and SMO. | Release 2 | ORAN-WG8.AAD [1] |
| O1 | Verify the cell activation successful when configuration received from SMO for co-located O-DU and O-RU. | Release 2 | ORAN-WG8.AAD [1] |
| O1 | Verify the cell activation successful when configuration received from SMO for non co-located(remote) O-RU and O-DU. | Release 2 | ORAN-WG8.AAD [1] |
| O1 | Verify SMO is notified with the alarm when O-DU detects out of sync from O-RU in hierarchical model. | Release 2 | ORAN-WG8.AAD [1] |
| O1 | Verify SMO sends subscription to O-RU via O-DU for alarms and handles the alarm notification from O-RU via O-DU. | Release 2 | ORAN-WG8.AAD [1] |
| O1 | Verify SMO handles any subscribed measurement counters received from O-DU on O1 interface. | Release 2 | ORAN-WG8.AAD [1] |
| E2 | Verify O-DU successfully establish E2 Interface with near RT-RIC. | Release 2 | ORAN-WG8.AAD [1] |
| E2 | Verify near RT-RIC server sends subscription request with type as REPORT to O-DU. | Release 2 | ORAN-WG8.AAD [1] |
| E2 | Verify O-DU includes the RIC Actions Not Admitted List in subscription response to near RT-RIC server. | Release 2 | ORAN-WG8.AAD [1] |
| E2 | Verify O-DU sends periodic report to the subscribed features to near RT-RIC server. | Release 2 | ORAN-WG8.AAD [1] |
| O1 | Verify UE attach is successful with the given SSB periodicity and sub-carrier spacing as part of cell configuration structure from SMO to O-DU for FR1 configuration | Release 3 | ORAN-WG8.AAD [1] |
| O1 | Verify UE attach is successful with Transmission periodicity configured to ms2p5 for FR1 configuration | Release 3 | ORAN-WG8.AAD [1] |
| O1 | Verify UE attach is successful with Transmission periodicity configured to ms5 for FR1 configuration | Release 3 | ORAN-WG8.AAD [1] |
| O1 | Verify cell bring up is successful with 100Mhz bandwidth configuration received from SMO for FR1 configuration | Release 3 | ORAN-WG8.AAD [1] |
| O1 | Verify DL and UL scheduling information IE's during an end-to-end UDP FDX data transmission for FR1 configuration | Release 3 | ORAN-WG8.AAD [1] |
| O1 | Verify cell bring up is successful with 64 beams and 64 antenna ports configuration received from SMO to O-DU for FR2 configuration | Release 3 | ORAN-WG8.AAD [1] |
| O1 | Verify cell bring up is successful with 8 beams and 64 antenna ports configuration received from SMO to O-DU for FR1 configuration | Release 3 | ORAN-WG8.AAD [1] |
| O1 | Verify cell bring up is successful and UE attach when the O-DU is configured with 32 punctured SSB beams for FR2 configuration | Release 3 | ORAN-WG8.AAD [1] |
| O1 | Verify cell bring up is successful when the parameter Occasion And CB-Preambles per SSB is configured to 1 by SMO for FR1 configuration | Release 3 | ORAN-WG8.AAD [1] |
| O1 | Verify the successful cell activation when slice specific configuration containing list of slices in the TA per PLMN is sent towards MAC/SCH on the O1 interface. | Release 4 | ORAN-WG8.AAD [1] |
| O-CU, O-DU | Verify UE Registration and PDU session establishment procedure with an allowed S-NSSAI. | Release 4 | ORAN-WG8.AAD [1] |
| O-CU, O-DU | Verify downlink data prioritization/scheduling on basis of slice differentiation in-case of each UE with single PDU session per slice. | Release 4 | ORAN-WG8.AAD [1] |
| O-CU, O-DU | verify downlink data scheduling on basis of QoS flow prioritization when two PDU sessions have equal slice priority. | Release 4 | ORAN-WG8.AAD [1] |
| O1 | Verify key performance metrics with the sub-counters at S-NSSAI level. | Release 4 | ORAN-WG8.AAD [1] |
| O1 | Verify successful slice re-configuration when RRM Policy is updated on the O1 interface. | Release 4 | ORAN-WG8.AAD [1] |
| O1 | Verify slice reconfiguration failure in-case of incorrect S-NSSAI is updated on the O1 interface. | Release 4 | ORAN-WG8.AAD [1] |
| O-CU, O-DU | Verify cell activation when O-DU is receiving synchronization from external timing source and sync-state is locked. | Release 4 | ORAN-WG8.AAD [1] |
| O-CU, O-DU | Verify cell activation when O-DU is receiving synchronization from external timing source and sync-state is not locked. | Release 4 | ORAN-WG8.AAD [1] |
| O-CU, O-DU | Verify cell activation when O-DU is receiving synchronization from external timing source and sync-state transits from locked to holdover and freerun. | Release 4 | ORAN-WG8.AAD [1] |
| O-CU, O-DU | Verify cell activation when O-DU successfully receive synchronization from secondary source when sync fails with the primary source. | Release 4 | ORAN-WG8.AAD [1] |
| O-CU, O-DU | Verify O-CU and O-DU provisions HO configuration sent over O1 interface by SMO during inter-O-DU handover within an O-CU | Release 4 | ORAN-WG8.AAD [1] |
| O-CU, O-DU | Verify successful intra frequency measurement based inter-O-DU handover within an O-CU | Release 4 | ORAN-WG8.AAD [1] |
| O-CU, O-DU | Verify successful inter-O-DU handover within an O-CU with multiple PDU session (GBR, Non-GBR, Delay critical GBR bearer) and each PDU session having single QFI established | Release 4 | ORAN-WG8.AAD [1] |
| O-CU, O-DU | Verify successful inter-O-DU handover within an O-CU with multiple PDU session (GBR, Non-GBR, Delay critical GBR bearer) and each PDU session having multiple QFI established where few PDU sessions are admitted at target DU | Release 4 | ORAN-WG8.AAD [1] |
| O-CU, O-DU | Verify successful inter frequency measurement based inter-O-DU handover within an O-CU | Release 4 | ORAN-WG8.AAD [1] |
| O-CU, O-DU | Verify HO preparation failure at target O-DU during inter-O-DU handover within an O-CU | Release 4 | ORAN-WG8.AAD [1] |
| O-CU, O-DU | Verify RRC Re-establishment received at O-CU when HO execution fails during inter-O-DU handover within an O-CU | Release 4 | ORAN-WG8.AAD [1] |
| O-DU | Verify beam failure detection and recovery using SSB for detection as well as recovery with DRX disabled and 64 beams for FR2 configuration. | Release 5 | ORAN-WG8.AAD [1] |
| O-DU | Verify beam failure detection and recovery using SSB for detection as well as recovery with DRX disabled and 8 beams for FR1 configuration. | Release 5 | ORAN-WG8.AAD [1] |
| O-DU | Verify beam failure detection and recovery using SSB for detection as well as recovery with DRX enabled and 8 beams for FR1 configuration. | Release 5 | ORAN-WG8.AAD [1] |
| O-DU | Verify beam failure detection and recovery using CSI-RS for detection as well as recovery with DRX disabled and 32 beams for FR2 configuration. | Release 5 | ORAN-WG8.AAD [1] |
| O-DU | Verify prioritized random access during beam failure recovery. | Release 5 | ORAN-WG8.AAD [1] |
| O-DU | Verify beam failure detection and recovery when SSB/CSI-RS not configured under radioLinkMonitoringConfig. | Release 5 | ORAN-WG8.AAD [1] |
| O-DU | Verify end-to-end data with different CSI-RS configuration. | Release 5 | ORAN-WG8.AAD [1] |
| O-DU | Verify cell is not up with invalid CSI-RS configuration. | Release 5 | ORAN-WG8.AAD [1] |
| O-DU | Verify end-to-end data when SRS is enabled and UE is moving. | Release 5 | ORAN-WG8.AAD [1] |
| O1 | Verify successful collection and transfer of MAC statistics for MU-MIMO from O-DU-OAM-Agent to SMO. | Release 5 | ORAN-WG8.AAD [1] |
| O1 | Verify O-DU-OAM-Agent successfully download the configuration from SMO for beamforming optimization through "file-download request". | Release 5 | ORAN-WG8.AAD [1] |
| E2 | Verify successful collection and transfer of L1 measurements along with parameter reconfiguration for AI/ML assisted Beam Selection Optimization on E2 interface. | Release 5 | ORAN-WG8.AAD [1] |
| O-Cloud | Verify successful vO-DU and vO-CU deployment on an O-Cloud. | Release 7 | ORAN-WG8.AAD [1] |
| O-Cloud | Verify successful addition of vO-DU and vO-CU instance when network demand increases beyond current NF capacity threshold. | Release 7 | ORAN-WG8.AAD [1] |
| O-Cloud | Verify successful deletion of vO-DU and vO-CU instance when network demand reduces below NF capacity threshold. | Release 7 | ORAN-WG8.AAD [1] |
| O-Cloud | Verify successful software upgrade for vO-DU. | Release 7 | ORAN-WG8.AAD [1] |
| O-Cloud | Verify successful reconfiguration for vO-DU. | Release 7 | ORAN-WG8.AAD [1] |
| O-Cloud | Verify vO-DU functionality during PTP sync loss and recovery. | Release 7 | ORAN-WG8.AAD [1] |
| Security | Verification of SSH/ TLS version compatibility of secured NETCONF session creation at O1 interface and fronthaul interface. | Release 7 | ORAN-WG8.AAD [1] |
| Security | Verification of successful secured NETCONF session creation over SSH/ TLS channel at the O1 interface and fronthaul interface. | Release 7 | ORAN-WG8.AAD [1] |
| Security | Verification of Access Control Groups defined for NETCONF sessions created at O1 interface and fronthaul interface. | Release 7 | ORAN-WG8.AAD [1] |
| O1 | Verify cell bring up using GoB configuration received from SMO is successful. | Release 8 | ORAN-WG8.AAD [1] |
| E2 | Verify successful AI/ML-assisted non-GoB beamforming optimization in Near RT RIC. | Release 8 | ORAN-WG8.AAD [1] |
| O-RU | Verify successful cell bring-up of Shared O-RU in Single operator deployment. | Release 10 | ORAN-WG8.AAD [1] |
| O-RU | Verify successful detection for supervision failure of Shared O-RU in Single operator deployment. | Release 10 | ORAN-WG8.AAD [1] |
| O-RU | Verify successful performance management of a Shared O-RU in Single operator deployment. | Release 10 | ORAN-WG8.AAD [1] |
| O-RU | Verify successful switchover from active to standby O-DU node in Single operator deployment. | Release 10 | ORAN-WG8.AAD [1] |
| O-RU | Verify successful scale-out operation for a O-DU node by the SMO in Single operator deployment. | Release 10 | ORAN-WG8.AAD [1] |
| O-RU | Verify successful software upgrade for O-RU triggered by O-DU. | Release 10 | ORAN-WG8.AAD [1] |
| RoHC | Verify successful configuration and data header compression/de-compression when RoHC profile "0x0001" is used for "RTP/UDP/IP". | Release 11 | ORAN-WG8.AAD [1] |
| RoHC | Verify successful configuration and data header compression/de-compression when RoHC profile "0x0002" is used for "UDP/IP". | Release 11 | ORAN-WG8.AAD [1] |
| RAN Slicing | Verify successful collection and transfer of slice performance reports via E2 interface. | Release 11 | ORAN-WG8.AAD [1] |
| RAN Slicing | Verify successful policy delivery and execution for slice reconfiguration via E2 interface. | Release 11 | ORAN-WG8.AAD [1] |
| RAN Slicing | Verify successful UE registration and data transmission in a Shared O-RU multi-vendor slice deployment. | Release 11 | ORAN-WG8.AAD [1] |
| Network energy Saving | Verify network energy saving functionality in TRX\_CONTROL mode configured with undefined Sleep Period | Release 12 | ORAN-WG8.AAD [1] |
| Network energy Saving | Verify network energy saving functionality in TRX\_CONTROL mode configured with defined Sleep Period | Release 12 | ORAN-WG8.AAD [1] |

The IOT profiles are included in Annex B. Additional profiles are added in the future releases of WG8 Stack Interoperability Test Specification.

# Interoperability (IOT) Standard Test Definitions

## Interoperability Standard Test Definitions

### Standard Test Configurations

Interoperability testing is performed to validate whether the software of O-CU can interact with the software and system components of O-DU. The message flow and IEs are compliant to 3GPP and O-RAN Software Architecture [1]. The focus of this document is to validate interoperability of O-CU and O-DU of same/different vendors.

### DUT

O-DU and O-CU are the physical components considered as DUTs. Other network elements, such as O-RU, may be real hardware or simulated based on the test requirements. In certain test cases, the O-DU or O-CU may be simulated.

For details on the test setup and configuration, see 7.17.

![](../assets/images/b6b7e87e2801.png)

Figure 7.1.2-: DUT configuration

### Testing Tools

In all test cases, O-RU may be real or simulated. In certain test cases, the O-DU or O-CU may be simulated.

* **O-CU or O-CU Emulator:** A separate O-CU or simulated O-CU is used based on the test setup. More details are mentioned in 7.17.
* **O-DU or O-DU Emulator:** A separate O-DU or simulated O-DU is used based on the test setup. More details are mentioned in 7.17.
* **O-RU or O-RU Emulator:** A separate O-RU or simulated O-RU is used based on the test requirement. More details are mentioned in 7.17.
* **Test UE or UE Emulator:** An End-to-end (E2E) test requires a UE. It can be a real UE or simulated one based on the test requirement. More details are mentioned in 7.17.
* **Core or Core Emulator:** An E2E test requires a core network. A real Core Network (CN) or simulated core is used in E2E setup.

### Time Synchronization

The O-DU and O-RU components are required to be synchronized to a common system time and master time source unless otherwise stated.

## ORAN.WG8.IOT.001: Cell Setup

### Test Purpose

The purpose of this test case is to explain the cell setup when O-DU and O-CU started separately.

### Reference Requirements

For detailed requirements, refer to the section 9.2 and 10.1.3 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* NETCONF client is operational.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in O-CU.
* Use the default O-DU configuration files to configure O-DU.
* O-DU is physically installed. It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-DU and O-RU to time synchronize using one of the O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* O-CU and O-DU may be configured with YANG data model or static configuration files.

### Test Setup and Configuration

* **DUTs:** single O-DU and single O-CU.
* **Testing tools:** are required for this test scenario:
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer: used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A.1.
* Test profile 2, refer Annex B Test profile section B.2.1.

### Test Procedure

The following table describes the test procedures for cell setup.

Table 7.2-1: Cell Setup

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | SMO sends Cell Configuration to O-DU. | **O-DU ss SMO** | Verify SMO sends all the mandatory IEs to O-DU as per the data formats supported in Section 12.2 of [22].  Verify the IEs are carried between SMO to O-DU-OAM-Agent (O1 interface) and O-DU-OAM-Agent to MAC.  Verify MAC sends Cell Configuration Request to SCH when it receives configuration to create a new cell as per Section 11.2.4.2.1 of [1]. |
| 2 | O-DU sends cell configurations to O-RU. | **O-RU ss O-DU** | Verify O\_DU sends carrier configuration updates to O-RU using M-plane edit-config model as described from section 9.1.5 of [24].  Verify the state of the O-RU is changed to INACTIVE. |
| 3 | O-DU receives configuration update response from O-RU. | **O-RU a O-DU** | Verify RU applies new carrier configuration and sends carrier state change notification to O-DU set as READY.  Verify the state of O-RU is changed to ACTIVE.  O-RU sends carrier state change notification as per M-plane model described from section 15.3 of [24]. |
| 4 | O-DU retrieves synchronization status from O-RU to confirm it is time synchronized. | **O-RU ss O-DU** | Verify O-DU receives synchronization status from O-RU using the sync-state M-plane model as described from section 13.1 of [24].  If sync-state value is set to FREERUN, O-DU updates the timing architecture to O-RU and retrieves the synchronization status again and expects the O-RU sync-state gets changed to LOCKED.    If sync-state is set to LOCKED, O-DU ensures that O-RU is time synchronized and proceeds with the cell setup. |
| 5 | O-DU sends sync-state information and set the operational state in SMO. | **O-DU a SMO** | Verify SCH sends Cell Configuration Response to MAC as per Section 11.2.4.3.1 of [1]  Verify O-DU sends the sync-state as LOCKED to SMO. Verify O-DU set the operational state to ENABLED state. |
| 6 | SMO sets the administrate state of O-DU. | **O-DU ss SMO** | Verify O-DU sets the administrative state to UNLOCKED state. |
| 7 | O-DU sends an F1 SETUP REQUEST to establish connectivity between the O-DU and O-CU. | **O-DU a O-CU** | Verify O-DU sends F1 SETUP REQUEST message containing all the mandatory IEs mentioned in section 4.1.5.1.2 of ORAN.WG5.C.1 [19] to the O-CU-CP. (Control Unit). |
| 8 | O-CU sends NGAP Setup Request to AMF. | **O-CU a AMF** | Verify the NGAP Setup Request contains all the mandatory IEs mentioned in the section 9.2.6.1 of 3GPP Specification [20]. |
| 9 | O-CU receives NGAP Setup Response from AMF. | **O-CU ss AMF** | Verify AMF sends NGAP Setup Response message containing all the mandatory IEs mentioned in 9.2.6.1 of 3GPP Specification [20]. |
| 10 | O-DU receives F1 SETUP RESPONSE from O-CU. | **O-DU ss O-CU** | Verify O-CU sends F1 SETUP RESPONSE message containing all the mandatory IEs mentioned in section 4.1.5.1.2 of ORAN.WG5.C.1 [19] to the O-DU. |
| 11 | Cell Bring-up is initiated at O-CU | **O-DU ss O-CU** | O-CU sends the F1AP gNB-CU configuration update to O-DU.  F1AP gNB-CU configuration update message contains all the mandatory IEs mentioned in section 4.1.6.1.2.1 of ORAN.WG5.C.1 [19].  O-DU adds the cell information according to IE Served-Cells-To-Add-List. |
| 12 | O-DU sends the gNB-CU CONFIGURATION UPDATE ACKNOWLEDGE message to O-CU. | **O-DU a O-CU** | Verify O-DU sends the gNB-CU CONFIGURATION UPDATEACKNOWLEDGE message to O-CU.  F1AP gNB-CU configuration update Ack message contains all the mandatory IEs mentioned in section 4.1.6.1.2.1 of ORAN.WG5.C.1 [19]. |
| 13 | Activate the cell from the O-DU | **O-DU a O-CU** | O-DU sends the F1AP gNB-DU configuration update to O-CU.  F1AP gNB-DU configuration update message contains all the mandatory IEs mentioned in section 4.1.6.1.2.1 of ORAN.WG5.C.1 [19].  O-DU should activate the cell information according to the service-state IE. |
| 14 | O-CU sends the gNB-DU CONFIGURATION UPDATE ACKNOWLEDGE message to O-DU. | **O-DU ss O-CU** | Verify O-CU sends the gNB-DU CONFIGURATION UPDATE ACKNOWLEDGE message to O-DU.  F1AP gNB-DU configuration update Ack message contains all the mandatory IEs mentioned in section 4.1.6.1.2.1 of ORAN.WG5.C.1 [19]. |
| 15 | Verify the status of the cell. | **O-DU/O-CU** | Verify O-DU sends cell status as ACTIVE to O-RU.  Verify SMO shows O-CU and O-DU operational and newly added cell is up and RF state of O-RU is active. |

## ORAN.WG8.IOT.002: SystemInformation-MIB

### Test Purpose

The purpose of this test case is to verify broadcast of MIB.

### Reference Requirements

For detailed requirements, refer to the section 10.1.3 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* NETCONF client is operational.
* F1AP is established.
* O-DU is physically installed. It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-DU and O-RU to time synchronize using one of the O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].
* Use default SSB configuration defined in O-DU configuration files.

### Test Setup and Configuration

* **DUTs:** Single O-DU and Single O-CU.
* **Testing tools:** are required for this test scenario**.**
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer: used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A.1.
* For details on the MIB and SSB test profiles, refer B.2.1.

### Test Procedure

The following table describes the test procedures for SystemInformation-MIB.

Table 7.3-1: SystemInformation-MIB

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1. | SMO sends Cell Configuration to O-DU. | **O-DU ss SMO** | Verify the following configuration is carried between SMO to O-DU-OAM-Agent (O1 interface) and O-DU-OAM-Agent to MAC:   * Carrier Configuration * Cell Configuration * SSB Configuration |
| 2. | Cell bring-up. | **O-DU/O-RU** | Verify cell bring-up is successful with the configuration that has been received from SMO.  Verify O-DU sends carrier configuration and mandatory cell configuration to O-RU and ensures that O-RU carrier-state is set to ACTIVE and sync-state is set to LOCKED.  O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of [24].  Verify O-DU sets the administrative state to UNLOCKED state. |
| 3 | The UE is switched on. | - | Verify SCH provides the Downlink Broadcast allocation for SSB for a TTI scheduling PBCH with following IEs.   * SSB Index * SSB Information * ssbSubcarrierOffset   Verify O-DU transmits the SS Block and MIB contains:  systemFrameNumber, subCarrierSpacingCommon,  ssb-SubcarrierOffset, dmrs-TypeA-Position and pdcch-ConfigSIB1. |
| 4 | O-DU sends SSB configuration as per define periodicity. | **UE ss O-DU/ O-CU** | Verify UE log (Test Tool) that  O-DU broadcast SS burst blocks in every configured SSB periodicity in a first half frame within SFN. |
| 5 | UE receive BCCH-BCH-Message MIB from O-DU. | **UE ss O-DU/ O-CU** | Verify Does UE receive BCCH-BCH-Message MIB from O-DU and MIB contain IEs as per the section 6.2.2 of 3GPP Specification [8]. Verify this on Test Tool. |

## ORAN.WG8.IOT.003: Systeminformation-SIB1

### Test Purpose

The purpose of this test case is to verify broadcast of SIB1.

### Reference Requirements

For detailed requirements, refer to the section 10.1.3 in ORAN-WG8.AAD [1].

### Initial Condition

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* NETCONF client is operational.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-DU is physically installed. It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* O-DU and O-RU to time synchronize using one of the O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs:** single O-DU and single O-CU.
* **Testing tools:** are required for this test scenario:
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer: used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A.1.
* For details on the MIB and SSB test profiles, refer B.2.1.

### Test Procedure

The following table describes the test procedures for SystemInformation-SIB1.

Table 7.4-1: SystemInformation-SIB1

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1. | SMO sends Cell Configuration to O-DU. | **O-DU ss SMO** | Verify the following configuration is carried between SMO to O-DU-OAM-Agent (O1 interface) and O-DU-OAM-Agent to MAC:   * Carrier Configuration * Cell Configuration * SSB Configuration * CSI-RS Configuration * PRACH Configuration * TDD Configuration |
| 2. | Cell bring-up. | **O-DU/O-RU** | Verify cell bring-up is successful with the configuration that has been received from SMO.  Verify O-DU sends carrier configuration and mandatory cell configuration to O-RU and ensures that O-RU carrier-state is set to ACTIVE and sync-state is set to LOCKED.    O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of [24]].  Verify O-DU sets the administrative state to UNLOCKED state. |
| 3. | O-DU send SIB1. | **UE ss O-DU/ O-CU** | Verify Downlink Broadcast Allocation with following IEs sent by SCH to MAC:   * DL DCIDL SCH * System Information Indicator * SI Content   Verify DL Scheduling Information with following IEs sent by SCH to MAC:   * System Information Indicator * SI Content * SIB1 Transmission Mode   Verify subCarrierSpacingCommon for SIB1 subcarrier spacing and ssb-subcarrierOffset, which indicate SIB1, are present or not.  The UE received SIB1 with configured periodicity and SIB 1 contains IE as per 3GPP Specification [8]. |

## ORAN.WG8.IOT.004: Systeminformation-SIB2

### Test Purpose

The purpose of this test case is to verify broadcast of SIB2 by O-DU.

### Reference Requirements

For detailed requirements, refer to the section 10.1.3 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Cell bring-up is successful with default configuration.
* O-CU sends SIB2, SIB3 in F1 Setup Response and F1 setup is successful.
* O-DU and O-RU are time synchronized. O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of ORAN.WG4.MP [24]).
* Broadcast of MIB and SIB1 is successful.

### Test Setup and Configuration

* **DUTs:** single O-DU and single O-CU.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or Core emulator used to terminate UEs (emulator) NAS protocol, and to support NGAP, HTTP2, PFCP protocols.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A.1.
* For details on the MIB and SSB test profiles, refer B.2.1.
* For details on the SIB1 test profile, see B.3.

### Test Procedure

The following table describes the test procedures for SystemInformation-SIB2.

Table 7.5-1: SystemInformation-SIB2

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1. | O-DU send SIB2. | **UE ss O-DU/ O-CU** | Verify Downlink Broadcast Allocation with following IEs sent by SCH to MAC:   * DL DCIDL SCH * System Information Indicator * SI Content   Verify DL Scheduling Information with following IEs sent by SCH to MAC:   * System Information Indicator * SI Content |
| 2. | UE receives SIB2 broadcast from O-DU. | **UE ss O-DU/ O-CU** | Verify that O-DU broadcasts SIB2 to UE as per the scheduling information decoded from SIB1.    Verify all the mandatory IEs as per section 6.3.1 in 3GPP Specification [8]. |

## ORAN.WG8.IOT.005: Systeminformation-SIB3

### Test Purpose

The purpose of this test case is to verify broadcast of SIB3 by O-DU.

### Reference Requirements

For detailed requirements, refer to the section 10.1.3 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Cell bring-up is successful with default configuration.
* O-CU sends SIB2, SIB3 in F1 Setup Response and F1 setup is successful.
* O-DU and O-RU are time synchronized. O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of ORAN.WG4.MP [24]).
* Broadcast of MIB and SIB1 is successful.

### Test Setup and Configuration

* **DUTs:** single O-DU and single O-CU.
* **Testing tools:** are required for this test scenario:
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or Core emulator used to terminate UEs (emulator) NAS protocol, and to support NGAP, HTTP2, PFCP protocols.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A.1.
* For details on the MIB and SSB test profile, see B.2.1.
* For details on the SIB1 test profile, see B.3.

### Test Procedure

The following table describes the test procedures for SystemInformation-SIB3.

Table 7.6-1: SystemInformation-SIB3

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1. | O-DU send SIB3. | **UE ss O-DU/ O-CU** | Verify Downlink Broadcast Allocation with following IEs sent by SCH to MAC:   * DL DCIDL SCH * System Information Indicator * SI Content   Verify DL Scheduling Information with following IEs sent by SCH to MAC:   * System Information Indicator * SI Content |
| 2. | UE receives SIB3 broadcast from O-DU. | **UE ss O-DU/ O-CU** | Verify that O-DU broadcasts SIB3 to UE as per the scheduling info decoded from SIB1.  Verify all the mandatory IEs as per section 6.3.1 in 3GPP Specification [8]. |

## ORAN.WG8.IOT.006: Random Access Procedure

### Test Purpose

The purpose of this test case is to verify using long/short preamble UE attach procedure. This case describes PRACH transmission after getting the parameter in SIB1.

### Reference Requirements

For detailed requirements, refer to the section Annex A - RACH procedure in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* NETCONF client is operational.
* F1AP is established.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-DU and O-RU to time synchronize using one of the O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs:** single O-DU and single O-CU.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or Core emulator used to terminate UEs (emulator) NAS protocol, and to support NGAP, HTTP2, PFCP protocols.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A.1.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures for random access procedure.

Table 7.7-1: Random Access Procedure

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | SMO sends Cell Configuration to O-DU. | **O-DU ss SMO** | Verify the following configuration is carried between SMO to O-DU-OAM-Agent (O1 interface) and O-DU-OAM-Agent to MAC:   * PRACH Configuration |
| 2 | Cell bring-up | **O-DU/O-RU** | Verify cell bring-up is successful with the configuration that has been received from SMO.  Verify O-DU sends mandatory cell configuration to O-RU and ensures that O-RU carrier-state is set to ACTIVE and sync-state is set to LOCKED.  O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of [24].  Verify O-DU sets the administrative state to UNLOCKED state.   * Verify UE has decoded MIB and SIB1 after switch-on. |
| 3 | The UE transmits a preamble on PRACH. | **UE a O-DU/ O-CU** | Verify the UE transmits a preamble on PRACH using the preamble indicated by ra-PreambleStartIndex defined in SI-RequestConfig in SIB1 in *RACH Configuration*.  O-DU receives the preamble within the specified window as different preamble has specific PRACH Index.  Verify MAC receives RACH Indication with following IEs:   * Cell Index * Timing Information * Slot Index * Symbol Index * Frequency Index * Preamble ID * Timing Advance |
| 4 | O-DU transmits an RAR message. | **UE ss O-DU/ O-CU** | Verify Random Access Response includes to UE RA-RNTI including a MAC subPDU with a matching RAPID only.   * Verify SCH sends RAR Information to MAC with following IEs:Cell Index * Timing Information * RA\_RNTI * Number of Preambles * RAPID * Timing Advance Value * Start RB * Number of RBs * Temporary CRNTI |
| 5 | The UE sends RRCSetupRequest with random ue-identity and establishment cause (refer to the section 5.3.3 in 3GPP 38.331 [8]). | **UE a O-DU/ O-CU** | Verify that O-DU receives the RRC setup Request message from the UE and sends Initial UL RRC message to O-CU with RRC setup request message in RRC container.  Verify all the mandatory IEs of Initial UL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19]. |
| 6 | UE receives RRCsetup message for SRB1 creation. | **UE ss O-DU/ O-CU** | Verify that O-CU sends DL RRC message transfer to O-DU with RRC setup message in the RRC container to establish SRB1.  Verify all the mandatory IEs of DL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-DU sends RRC setup message to UE.  Verify all the mandatory IEs of RRC setup as per section 6.2.2 in 3GPP Specification. [8]. |
| 7 | UE sends RRC setup complete message over SRB1 with Registration Request as NAS payload. | **UE a O-DU/ O-CU** | Verify that O-DU receives the RRC setup complete message with registration request as NAS payload from UE and sends UL RRC message transfer to O-CU with RRC setup complete and Registration Request message in RRC container.  Verify all the mandatory IEs of UL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-CU sends Initial UE Message to AMF with NAS payload as Registration Request.  Verify all the mandatory IEs of Initial UE message as per section 9.2.5.1 of 3GPP Specification [20]. |
| 8 | Attach validation | **UE ssa O-DU/O-CU** | Verify successful UE attach procedure. |

## ORAN.WG8.IOT.007: Registration Procedure

### Test Purpose

The purpose of this test case is to verify the UE registration procedure in an end to end environment. This case illustrates that the UE changes its RRC state from idle to connected.

### Reference Requirements

For detailed requirements, refer to the section Annex A - UE Registration in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Cell bring-up is successful with default configuration.
* F1AP connection is successful between O-CU and O-DU.
* O-DU and O-RU are time synchronized. O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of ORAN.WG4.MP [24]).
* The UE has decoded MIB and SIB1.
* RACH procedure is successful.

### Test Setup and Configuration

* **DUTs:** single O-DU and single O-CU
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or Core emulator used to terminate UEs (emulator) NAS protocol, and to support NGAP, HTTP2, PFCP protocols.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A.1.
* For details on the MIB and SSB test profiles, see B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table below describes the test steps for Registration procedure

Table 7.8-1: Registration

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | The UE sends RRCSetupRequest with random ue-identity and establishment cause (refer to the section 5.3.3 in 3GPP 38.331 [8]). | **UE a O-DU/ O-CU** | Verify that O-DU receives the RRC setup Request message from the UE and sends Initial UL RRC message to O-CU with RRC setup request message in RRC container.  Verify all the mandatory IEs of Initial UL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19]. |
| 2 | UE receives RRCsetup message for SRB1 creation. | **UE ss O-DU/ O-CU** | Verify that O-CU sends DL RRC message transfer to O-DU with RRC setup message in the RRC container to establish SRB1.  Verify all the mandatory IEs of DL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-DU sends RRC setup message to UE.  Verify all the mandatory IEs of RRC setup as per section 6.2.2 in 3GPP Specification. [8]. |
| 3 | UE sends RRC setup complete message over SRB1 with Registration Request as NAS payload. | **UE a O-DU/ O-CU** | Verify that O-DU receives the RRC setup complete message with registration request as NAS payload from UE and sends UL RRC message transfer to O-CU with RRC setup complete and Registration Request message in RRC container.  Verify all the mandatory IEs of UL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-CU sends Initial UE Message to AMF with NAS payload as Registration Request.  Verify all the mandatory IEs of Initial UE message as per section 9.2.5.1 of 3GPP Specification [20]. |
| 4 | UE receives NAS Authentication Request message from AMF with authentication parameters required for successfully authenticating the network. | **UE ss O-DU/ O-CU** | Verify that O-CU receives DL NAS Transport message with Authentication request as NAS payload.    Verify that O-CU sends DL RRC Message Transfer to O-DU with NAS Authentication Request in the RRC container.  Verify all the mandatory IEs of DL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-DU sends DL Information Transfer message to UE with NAS Authentication request message.  Verify all the mandatory IEs of DL information transfer message as per section 6.2.2 in 3GPP Specification [8]. |
| 5 | UE sends NAS Authentication response message after successfully authenticating the network. | **UE a O-DU/ O-CU** | Verify that O-DU receives the UL Information Transfer message from UE with NAS Authentication Response message.  Verify that O-DU sends UL RRC Message Transfer to O-CU with NAS Authentication response in RRC container.  Verify all the mandatory IEs of UL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-CU sends UL NAS Transport message to AMF with Authentication Response as NAS payload.  Verify all the mandatory IEs of UL NAS Transport message as per section 9.2.5.3 in 3GPP Specification [20]. |
| 6 | UE receives NAS Security mode command message for integrity protection and ciphering. | **UE ss O-DU/ O-CU** | Verify that O-CU receives DL NAS Transport message with security mode command as NAS payload.  Verify that O-CU sends DL RRC Message Transfer to O-DU with NAS Security mode command in the RRC container  Verify all the mandatory IEs of DL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-DU sends DL Information Transfer message to UE with NAS Security mode command message.  Verify all the mandatory IEs of DL information transfer message as per section 6.2.2 in 3GPP Specification [8]. |
| 7 | UE sends NAS Security mode complete message. This message is integrity protected and ciphered. | **UE a O-DU/ O-CU** | Verify that O-DU receives the UL Information Transfer message from UE with NAS Security mode complete message.  Verify that O-DU sends UL RRC Message Transfer to O-CU with NAS Security mode complete message in RRC container.  Verify all the mandatory IEs of UL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-CU sends UL NAS Transport message to AMF with Security mode complete as NAS payload.  Verify all the mandatory IEs of UL NAS Transport message as per section 9.2.5.3 in 3GPP Specification [20]. |
| 8 | UE receives AS security mode command message. | **UE ss O-DU/ O-CU** | Verify that O-CU receives Initial context setup request or DL NAS Transport from AMF with Registration accept as NAS payload.  Verify all the mandatory IEs as per the section 9.2.2.1 or 9.2.5.2 in 3GPP Specification [20].  Verify that O-CU sends DL RRC message transfer to O-DU with AS security mode command message in RRC container.  Verify all the mandatory IEs of DL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify the O-DU sends SecurityModeCommand to UE which contains AS integrity and Ciphering Algorithms supported by O-CU.  Verify all the mandatory IEs as per section 6.2.2 in 3GPP Specification [8]. |
| 9 | UE sends AS Security mode complete message. | **UE a O-DU/ O-CU** | Verify in response of previous step, the O-DU receives SecurityModeComplete from UE.  Verify all the mandatory IEs as per section 6.2.2 in 3GPP Specification [8].  Verify that O-DU sends UL RRC message transfer to O-CU which contains AS security mode complete in RRC container.  Verify all the mandatory IEs of UL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19]. |
| 10 | UE receives UE capability Enquiry message. | **UE ss O-DU/ O-CU** | Verify that O-CU receives the UE radio capability check request from AMF to check the compatibility between UE radio capabilities and network configuration.  O-CU can optionally request for the UE capability enquiry to the UE.  Verify that O-CU sends DL RRC message transfer to O-DU which contains UE capability enquiry in RRC container.  Verify all the mandatory IEs of DL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-DU sends UE capability enquiry to UE to check the UE capabilities.  Verify all the mandatory IEs as per section 6.2.2 in 3GPP Specification [8]. |
| 11 | UE sends UE capability information message. | **UE a O-DU/ O-CU** | Verify in response of previous step, the O-DU receives UE capability information from UE.  Verify all the mandatory IEs as per section 6.2.2 in 3GPP Specification [8].  Verify that O-DU sends UL RRC message transfer to O-CU which contains UE capability information in the RRC container.  Verify all the mandatory IEs of UL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-CU sends UE Radio Capability Info Indication message to AMF.  Verify all the mandatory IEs as per section 9.2.13.1 in 3GPP Specification [20]. |
| 12 | UE receives Registration Accept message. | **UE ss O-DU/ O-CU** | Verify that O-CU sends DL RRC message transfer to O-DU which contains Registration Accept in RRC container.  Verify all the mandatory IEs of DL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-DU sends DL Information Transfer message to UE with NAS Registration accept message.  Verify all the mandatory IEs of DL information transfer message as per section 6.2.2 in 3GPP Specification [8]. |
| 13 | UE sends Registration complete message. | **UE a O-DU/ O-CU** | Verify that O-DU receives the UL Information Transfer message from UE with NAS Registration complete message.  Verify that O-DU sends UL RRC Message Transfer to O-CU with NAS Registration complete message in RRC container.  Verify all the mandatory IEs of UL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-CU sends Initial context setup response to AMF.  Verify all the mandatory IEs as per section 9.2.2.2 in 3GPP Specification [20].  Verify that O-CU sends UL NAS Transport message to AMF with Registration complete as NAS payload.  Verify all the mandatory IEs of UL NAS Transport message as per section 9.2.5.3 in 3GPP Specification [20]. |

## ORAN.WG8.IOT.008: UE Initiated De-Registration Procedure

### Test Purpose

The purpose of this test case is to verify the UE Initiated De-registration procedure in an end to end environment. This case illustrates that the UE changes its RRC state from connected to idle.

### Reference Requirements

For detailed requirements, refer to the section Annex A - UE Registration in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Cell bring-up is successful with default configuration.
* O-DU and O-RU are time synchronized. O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of ORAN.WG4.MP [24]).
* The UE has decoded MIB and SIB1.
* RACH procedure is successful.
* RRC setup procedure is successful.
* UE Registration procedure is successful.

### Test Setup and Configuration

* **DUTs:** single O-DU and single O-CU.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or Core emulator used to terminate UEs (emulator) NAS protocol, and to support NGAP, HTTP2, PFCP protocols.
* Protocol Analyzer: used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A.1.
* For details on the MIB and SSB test profiles, see B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table below describes the test steps for De-registration procedure.

Table 7.9-1: UE initiated De-registration

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | The UE sends De-registration request with SUCI or 5G-GUTI (refer to the section 8.2.12.1 in 3GPP Specification [21] ). | **UE a O-DU/ O-CU** | Verify that O-DU receives the UL information transfer message which contains NAS De-registration message.  Verify that O-DU sends UL RRC message transfer to O-CU with De-registration request in RRC container.  Verify all the mandatory IEs of UL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-CU sends Uplink NAS transport with NAS PDU as De-registration request to AMF.  Verify all the mandatory IEs as per section 9.2.5.3 in 3GPP Specification [20]. |
| 2 | UE receives De-registration accept message. | **UE ss O-DU/ O-CU** | Verify that O-CU receives Downlink NAS transport with NAS PDU as De-registration accept from AMF.  Verify all the mandatory IEs as per section 9.2.5.2 in 3GPP Specification [20].  Verify that O-CU sends DL RRC message transfer to O-DU with De-registration accept in RRC container.  Verify all the mandatory IEs of DL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-DU sends DL Information Transfer message to UE with NAS De-registration accept message.  Verify all the mandatory IEs of DL information transfer message as per section 6.2.2 in 3GPP Specification [8].  Verify that O-CU receives the UE context release command from AMF.  Verify all the mandatory IEs as per section 9.2.2.5 in 3GPP Specification [20].  Verify that O-CU sends UE context release command message to O-DU.  Verify all the mandatory IEs as per section 6.2.1.2 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-DU sends UE context release complete to O-CU on F1 interface.  Verify all the mandatory IEs as per section 6.2.1.2 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-CU sends UE context release complete to AMF.  Verify all the mandatory IEs as per section 9.2.2.6 in 3GPP Specification [20]. |
| 3 | UE receives RRC Connection Release. | **UE ss O-DU/ O-CU** | O-CU sends DL RRC message transfer to O-DU.  O-DU sends RRC Connection Release message to UE. |

## ORAN.WG8.IOT.009: PDU session establishment procedure

### Test Purpose

The purpose of this test case is to verify the UE PDU session establishment procedure in an end to end environment. This case illustrates that the UE will be assigned a PDU IP after successful establishment of PDU session.

### Reference Requirements

For detailed requirements, refer to the section Annex A - PDU Session Establishment in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Cell bring-up is successful with default configuration.
* F1AP connection is successful between O-DU and O-CU.
* O-DU and O-RU are time synchronized. O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of ORAN.WG4.MP [24]).
* The UE has decoded MIB and SIB1.
* RACH procedure is successful.
* RRC setup is successful.
* Registration is successful.

### Test Setup and Configuration

* DUTs: single O-DU and single O-CU
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or Core emulator used to terminate UEs (emulator) NAS protocol, and to support NGAP, HTTP2, PFCP protocols.
* Protocol Analyzer: used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A.1.
* For details on the MIB and SSB test profiles, see B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table below describes the test steps for PDU session establishment procedure.

Table 7.10-1: PDU session establishment

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | The UE sends PDU session Establishment Request with PDU session id (refer to the section 8.3.1 in 3GPP Specification [21]). | **UE a O-DU/ O-CU** | Verify that O-DU receives UL information transfer message which contains PDU session establishment request as NAS message.  Verify that O-DU sends UL RRC message transfer to O-CU which contains PDU session establishment request in RRC container.  Verify all the mandatory IEs of UL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-CU sends Uplink NAS transport with NAS PDU as PDU Session Establishment Request to AMF.  Verify all the mandatory IEs as per section 9.2.5.3 in 3GPP Specification [20]. |
| 2 | UE receives RRC reconfiguration and PDU session establishment accept message. | **UE ss O-DU/ O-CU** | Verify that O-CU receives PDU Session Resource Setup Request from AMF with NAS-PDU as PDU session establishment accept.  Verify all the mandatory IEs as per section 9.2.1.1 in 3GPP Specification [20].  Verify that O-CU sends UE context setup request to O-DU for establishing the DRB.  Verify all the mandatory IEs of UE context setup request as per section 6.1.1.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-DU sends UE context setup response to O-CU after successfully establishing the DRB.  Verify all the mandatory IEs of UE context setup response as per section 6.1.1.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-CU sends DL RRC message transfer to O-DU with RRC reconfiguration in RRC container.  Verify all the mandatory IEs of DL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-DU sends RRC reconfiguration message to UE which contains PDU session establishment accept as NAS payload. |
| 3 | UE sends RRC reconfiguration complete. | **UE a O-DU/ O-CU** | Verify that O-DU receives RRC reconfiguration complete from UE.  Verify that O-DU sends UL RRC message transfer to O-CU with RRC reconfiguration complete in RRC container.  Verify all the mandatory IEs of UL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-CU sends PDU Session Resource Setup Response to AMF over NG interface.  Verify all the mandatory IEs as per section 9.2.1.2 in 3GPP Specification [20]. |

## ORAN.WG8.IOT.010: PDU Session Modification with Multiple Flow

### Test Purpose

The purpose of this test case is to verify the network initiated PDU Modification procedure in an end to end environment. This test case illustrates the Network Initiated Modification of PDU Session with by adding one GBR Flow of 5QI 3 and one Non GBR Flow of 5QI 6.

### Reference Requirements

For detailed requirements, refer to the section Annex A - PDU Session Establihsment in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Cell bring-up is successful with default configuration.
* F1AP connection is successful between O-DU and O-CU.
* O-DU and O-RU are time synchronized. O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of ORAN.WG4.MP [24]).
* The UE has decoded MIB and SIB1.
* RACH procedure is successful.
* RRC setup is successful.
* Registration is successful with Follow ON bit as 1.
* UE initiated PDU session establishment procedure is successful.

### Test Setup and Configuration

* **DUTs:** single O-DU and single O-CU.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2, and HTTP messages.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A.1.
* For details on the MIB and SSB test profiles, see B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table below describes the test steps for network initiated PDU Modification procedure

Table 7.11-1: PDU session modification

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | AMF sends NGAP PDU Session Resource Modify Request to O-CU. | **O-CU/O-DU ss AMF** | Verify that O-CU receives sends NGAP PDU Session Resource Modify Request message which contains the Information about the PDU Session and the flow which the 5G CN wants to add.  NGAP PDU Session Resource Modify Request contains all the Mandatory IEs mentioned in the section 9.2.1.5 and 9.3.4.3 of 3GPP Specification [20].  Verify that O-CU sends F1AP UE Context Modification Request message to O-DU.  F1AP UE Context Modification Request message contains all the mandatory IEs mentioned in section 6.3.1.2.1 of ORAN.WG5.C.1 [19].  Verify that O-DU sends F1AP UE Context Modification Response message to O-CU.  F1AP UE Context Modification Response message contains all the mandatory IEs mentioned in section 6.3.1.2.1 of ORAN.WG5.C.1 [19].  Verify that O-CU sends F1AP DL RRC Message Transfer Request with RRC reconfiguration message in RRC container to O-DU and the message contains all the mandatory IEs mentioned in section 6.3.1.2.1 of ORAN.WG5.C.1 [19]. |
| 2 | UE receives RRC reconfiguration and 5G SM: PDU session Modification Command message. | **UE ss O-DU/ O-CU** | Verify that O-DU sends RRC reconfiguration message to UE and the RRC Reconfiguration message contains all the mandatory IEs mentioned in the 3GPP Specification [8]. |
| 3 | UE sends RRC Reconfiguration Complete. | **UE a O-DU/ O-CU** | Verify that O-DU receives the RRC Reconfiguration Complete message and sends F1AP UL RRC message transfer to O-CU which contains RRC Reconfiguration Complete inside RRC container.  Verify all the mandatory IEs of UL RRC message transfer as per section 6.1.1.3 F1-C IE handling in ORAN.WG5.C.1 [19]. |
| 4 | O-CU sends NGAP PDU Session Resource Modify Response message to AMF. | **O-DU/O-CU a AMF** | Verify that AMF receives the NGAP PDU Session Resource Modify Response.  NGAP PDU Session Resource Modify Response contains all the Mandatory IEs mentioned in the section 9.2.1.6 and 9.3.4.3 of 3GPP Specification [20].  Verify that O-CU sends F1AP UE Context Modification Request to O-DU.  F1AP UE Context Modification Request message contains all the mandatory IEs mentioned in section 6.3.1.2.1 of ORAN.WG5.C.1 [19].  Verify that O-DU sends F1AP UE Context Modification Response message to O-CU.  F1AP UE Context Modification Response message contains all the mandatory IEs mentioned in section 6.3.1.2.1 of ORAN.WG5.C.1 [19]. |
| 5 | UE sends UL Information Transfer message containing the NAS message 5GSM: PDU Session Modification Complete. | **UE a O-DU/ O-CU** | Verify that O-DU receives the sends UL Information Transfer message and sends UL RRC message transfer to O-CU.  Verify that O-CU sends NGAP Uplink NAS Transport Message to AMF with NAS payload as 5GSM: PDU Session Modification Complete. |

## ORAN.WG8.IOT.011: Idle Mode Paging and Service Request Procedure

### Test Purpose

The purpose of this test case is to verify the UE idle mode paging and Service Request procedure in an end to end environment. This test case illustrates the UE transition from RRC Idle state to RRC Connected state.

### Reference Requirements

For detailed requirements, refer to the section 4.2 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Cell bring-up is successful with default configuration.
* F1AP connection is successful between O-DU and O-CU.
* O-DU and O-RU are time synchronized. O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of ORAN.WG4.MP [24]).
* The UE has decoded MIB and SIB1.
* RACH procedure is successful.
* RRC setup is successful.
* Registration is successful.
* UE moves to RRC-Idle state.

### Test Setup and Configuration

* **DUTs:** single O-DU and single O-CU.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or Core emulator used to terminate UEs (emulator) NAS protocol, and to support NGAP, HTTP2, PFCP protocols.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A.1.
* For details on the MIB and SSB test profiles, see B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table below describes the test steps for Idle mode paging and Service Request procedure

Table 7.12-1: Idle mode Paging & Service Request

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | The UE moves to RRC-IDLE state and DL data is received at UPF. | **UE ss O-DU/ O-CU** | Verify that O-CU receives Paging message from AMF over NG interface.  Verify all the mandatory IEs as per section 9.2.4 in 3GPP Specification [20]. |
| 2 | UE receives paging message. | **UE ss O-DU/ O-CU** | Verify that O-CU sends Paging message to O-DU over F1 interface.  Verify all the mandatory IEs as per section 9.2.6 in 3GPP Specification [2].  Verify that O-DU sends Paging message to UE.  Verify all the mandatory IEs as per section 6.2.2 in 3GPP Specification [8]. |
| 3 | UE sends RRC setup request with S-TMSI. | **UE a O-DU/ O-CU** | Verify that O-DU receives the RRC setup request message and sends Initial UL RRC message transfer to O-CU which contains RRC setup request message in RRC container.  Verify all the mandatory IEs of Initial UL RRC message transfer as per section 6.1.1.3 F1-C IE handling in ORAN.WG5.C.1 [19]. |
| 4 | UE receives RRC setup message. | **UE ss O-DU/ O-CU** | Verify that O-CU sends DL RRC message transfer to O-DU with RRC setup message in the RRC container to establish SRB1.  Verify all the mandatory IEs of DL RRC message transfer as per section 6.1.1.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-DU sends RRC setup message to UE.  Verify all the mandatory IEs of RRC setup as per section 6.2.2 in 3GPP Specification. [8]. |
| 5 | UE sends RRC setup complete message over SRB1 with Service Request as NAS payload. | **UE a O-DU/ O-CU** | Verify that O-DU receives the RRC setup complete message with Service request as NAS payload from UE and sends UL RRC message transfer to O-CU with RRC setup complete and Service Request message in RRC container.  Verify all the mandatory IEs of UL RRC message transfer as per section 6.1.1.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-CU sends Initial UE Message to AMF with NAS payload as Service Request.  Verify all the mandatory IEs of Initial UE message as per section 9.2.5.1 of 3GPP Specification [20]. |
| 6 | UE receives RRC reconfiguration with Service Accept message as NAS payload. | **UE ss O-DU/ O-CU** | Verify that O-CU receives Initial context setup request message with NAS payload as service accept.  Verify that O-CU sends DL RRC message transfer to O-DU which contains RRC reconfiguration and service accept messages in RRC container.  Verify all the mandatory IEs of DL RRC message transfer as per section 6.1.1.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-DU sends RRC Reconfiguration message which contains Service accept as NAS payload.  Verify all the mandatory IEs of RRC reconfiguration message as per section 6.2.2 in 3GPP Specification [8]. |
| 7 | UE sends RRC reconfiguration complete message. | **UE a O-DU/ O-CU** | Verify that O-DU receives the RRC Reconfiguration complete message and sends UL RRC Message transfer to O-CU which contains RRC reconfiguration complete in RRC container.  Verify all the mandatory IEs of UL RRC message transfer as per section 6.1.1.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-CU sends Initial context setup response message to AMF.  Verify all the mandatory IEs of Initial context setup response message as per section 9.2.2.2 in 3GPP Specification [20]. |

## ORAN.WG8.IOT.012: Downlink UDP data transfer

### Test Purpose

The purpose of this test case is to verify peak and average downlink throughput on the default flow that is 5QI 9 of the PDU Session.

### Reference Requirements

For detailed requirements, refer to the section 4.2 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Cell bring-up is successful with default configuration.
* F1AP connection is successful between O-DU and O-CU.
* O-DU and O-RU are time synchronized. O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of ORAN.WG4.MP [24]).
* The UE has decoded MIB and SIB1.
* RACH procedure is successful.
* RRC setup is successful.
* Registration is successful with Follow ON bit as 1.
* UE PDU session establishment procedure with 5QI 9 is successful.

### Test Setup and Configuration

* **DUTs:** single O-DU and single O-CU.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A.1.
* For details on the RACH test profiles, see B.6.
* For details on the MIB and SSB test profiles, see B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the throughput test profiles, see B.7.

### Test Procedure

The following table describes the test procedures for downlink continuous throughput.

Table 7.13-1: Downlink Continuous Throughput

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | Trigger UDP Data of transfer 712 Mbps in Downlink on the flow of 5QI 9 using any traffic generator tool or IPERF application. | **O-CU/ O-DU ss UPF** | Verify that O-CU receives DL UDP traffic on the desired Flow on the intendant NG-U connection.  O-CU do the mapping of the Flow to the intendant DRB which will be done by the SDAP protocol resides in the O-CU and then forward the UDP traffic towards O-DU.    Verify that O-DU received the UDP traffic without any significant drops in packets. |
| 2 | Measure peak and average throughput on UE. | **UE ss O-DU/ O-CU** | Verify against theoretical values. Refer Annex B.7. |

## ORAN.WG8.IOT.013: Uplink UDP data transfer

### Test Purpose

The purpose of this test case is to verify peak and average uplink throughput on the default flow that is 5QI 9 of the PDU Session.

### Reference Requirements

For detailed requirements, refer to the section 4.2 in ORAN-WG8.AAD [1].

### Initial Condition

Following are the preconditions for this test.

* Cell bring-up is successful with default configuration.
* F1AP connection is successful between O-DU and O-CU.
* O-DU and O-RU are time synchronized. O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of ORAN.WG4.MP [24]).
* The UE has decoded MIB and SIB1.
* RACH procedure is successful.
* RRC setup is successful.
* Registration is successful with Follow ON bit as 1.
* UE PDU session establishment procedure with 5QI 9 is successful.

### Test Setup and Configuration

* **DUTs:** single O-DU and single O-CU.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer: used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A.1 and A.2.
* For details on the RACH test profiles, see B.6.
* For details on the MIB and SSB test profiles, see B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the throughput test profiles, see B.7.

### Test Procedure

The following table describes the test procedures for uplink continuous throughput.

Table 7.14-1: Uplink Continuous Throughput

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | **Expected Output** |
| 1 | Trigger UDP Data transfer of 285 Mbps in Uplink on the flow of 5QI 9 using any traffic generator tool or IPERF application. | **UE a O-DU/ O-CU** | Verify that O-DU receives UL UDP traffic on the desired DRB which is intendant and forwards to O-CU using the GTP-U user plane connection.  O-CU do the mapping of the DRB to Flow mapping which will be done by the SDAP protocol resides in the O-CU and then forward the UDP traffic on the NG-U tunnel towards UPF.  Verify that UPF received the UDP traffic without any significant drops in packets. |
| 2 | Measure peak and average throughput on UE. | **O-DU/ O-CU a UPF** | Verify against theoretical values. Refer Annex B.7. |

## ORAN.WG8.IOT.014: Bidirectional UDP data transfer

### Test Purpose

The purpose of this test case is to verify peak and average uplink and downlink throughput on the default flow that is 5QI 9 of the PDU Session.

### Reference Requirements

For detailed requirements, refer to the section 4.2 in ORAN-WG8.AAD [1].

### Initial Condition

Following are the preconditions for this test.

* Cell bring-up is successful with default configuration.
* F1AP connection is successful between O-DU and O-CU.
* O-DU and O-RU are time synchronized. O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of ORAN.WG4.MP [24]).
* The UE has decoded MIB and SIB1.
* RACH procedure is successful.
* RRC setup is successful.
* Registration is successful with Follow ON bit as 1.
* UE PDU session establishment procedure with 5QI 9 is successful.

### Test Setup and Configuration

* **DUTs:** single O-DU and single O-CU.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A.1 and A.2.
* For details on the RACH test profiles, see B.6.
* For details on the MIB and SSB test profiles, see B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the throughput test profiles, see B.7.

### Test Procedure

The following table describes the test procedures for bidirectional continuous throughput.

Table 7.15-1: Bidirectional Continuous Throughput

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | Trigger UDP Data transfer of 285 Mbps in Uplink on the flow of 5QI 9 using any traffic generator tool or IPERF application. | **UE a O-DU/ O-CU** | Verify that O-DU receives UL UDP traffic on the desired DRB which is intendant and forwards to O-CU using the GTP-U user plane connection.  O-CU do the mapping of the DRB to Flow mapping which will be done by the SDAP protocol resides in the O-CU and then forward the UDP traffic on the NG-U tunnel towards UPF.  Verify that UPF received the UDP traffic without any significant drops in packets. |
| 2 | Verify the peak and average throughput on UPF. | **O-DU/ O-CU a UPF** | Verify against theoretical values. Refer Annex B.7. |
| 3 | Trigger UDP Data of transfer 712 Mbps in Downlink on the flow of 5QI 9 using any traffic generator tool or IPERF application. | **O-CU/ O-DU ss UPF** | Verify that O-CU receives DL UDP traffic on the desired Flow on the intendant NG-U connection.  O-CU do the mapping of the Flow to the intendant DRB which will be done by the SDAP protocol resides in the O-CU and then forward the UDP traffic towards O-DU.    Verify that O-DU received the UDP traffic without any significant drops in packets. |
| 4 | Measure peak and average throughput on UE. | **UE ss O-DU/ O-CU** | Verify against theoretical values. Refer Annex B.7. |

## ORAN.WG8.IOT.015: Bidirectional UDP data transfer on Multiple Flow

### Test Purpose

The purpose of this test case is to verify peak and average downlink and uplink throughput on multiple flows of a PDU Session for two hours.

### Reference Requirements

For detailed requirements, refer to the section 4.2 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Cell bring-up is successful with default configuration.
* F1AP connection is successful between O-DU and O-CU.
* O-DU and O-RU are time synchronized. O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of ORAN.WG4.MP [24]).
* The UE has decoded MIB and SIB1.
* RACH procedure is successful.
* RRC setup is successful.
* Registration is successful with Follow ON bit as 1.
* UE PDU session establishment procedure with 5QI 9 is successful.
* The Network Initiated Modification of PDU Session for adding one GBR Flow of 5QI 3 and one Non GBR Flow of 5QI 6 is successful.

### Test Setup and Configuration

* **DUTs:** single O-DU and single O-CU.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A.1 and A.2.
* For details on the RACH test profiles, see B.6.
* For details on the MIB and SSB test profiles, see B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the test throughput test profiles, see B.7.

### Test Procedure

The following table below describes the test procedures for bidirectional continuous throughput.

Table 7.16-1: Bidirectional UDP data on multiple flow

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | Trigger UDP Data transfer of 100 Mbps in Uplink on the flow of 5QI 9 using any traffic generator tool or IPERF application. | **UE a O-DU/ O-CU** | Verify that O-DU receives UL UDP traffic on the desired DRB which is intendant and forwards to O-CU using the GTP-U user plane connection.  O-CU do the mapping of the DRB to Flow mapping which will be done by the SDAP protocol resides in the O-CU and then forward the UDP traffic on the NG-U tunnel towards UPF.  Verify that UPF received the UDP traffic without any significant drops in packets. |
| 2 | Verify the peak and average throughput on UPF. | **O-DU/ O-CU a UPF** | Verify that the data has been received as pumped from UE. |
| 3 | Trigger UDP Data of transfer 300 Mbps in Downlink on the flow of 5QI 9 using any traffic generator tool or IPERF application. | **O-CU/ O-DU ss UPF** | Verify that O-CU receives DL UDP traffic on the desired Flow on the intendant NG-U connection.  O-CU do the mapping of the Flow to the intendant DRB which will be done by the SDAP protocol resides in the O-CU and then forward the UDP traffic towards O-DU.    Verify that O-DU received the UDP traffic without any significant drops in packets. |
| 4 | Measure peak and average throughput on UE. | **UE ss O-DU/ O-CU** | Verify that the data has been received as pumped from UPF. |
| 5 | Trigger UDP Data transfer of 90 Mbps in Uplink on the flow of 5QI 3 using any traffic generator tool or IPERF application. | **UE a O-DU/ O-CU** | Verify that O-DU receives UL UDP traffic on the desired DRB which is intendant and forwards to O-CU using the GTP-U user plane connection.  O-CU do the mapping of the DRB to Flow mapping which will be done by the SDAP protocol resides in the O-CU and then forward the UDP traffic on the NG-U tunnel towards UPF.  Verify that UPF received the UDP traffic without any significant drops in packets. |
| 6 | Verify the peak and average throughput on UPF. | **O-DU/ O-CU a UPF** | Verify that the data has been received as pumped from UE. |
| 7 | Trigger UDP Data of transfer 200 Mbps in Downlink on the flow of 5QI 3 using any traffic generator tool or IPERF application. | **O-CU/ O-DU ss UPF** | Verify that O-CU receives DL UDP traffic on the desired Flow on the intendant NG-U connection.  O-CU do the mapping of the Flow to the intendant DRB which will be done by the SDAP protocol resides in the O-CU and then forward the UDP traffic towards O-DU.    Verify that O-DU received the UDP traffic without any significant drops in packets. |
| 8 | Measure peak and average throughput on UE. | **UE ss O-DU/ O-CU** | Verify that the data has been received as pumped from UPF. |
| 9 | Trigger UDP Data transfer of 80 Mbps in Uplink on the flow of 5QI 6 using any traffic generator tool or IPERF application. | **UE a O-DU/ O-CU** | Verify that O-DU receives UL UDP traffic on the desired DRB which is intendant and forwards to O-CU using the GTP-U user plane connection.  O-CU do the mapping of the DRB to Flow mapping which will be done by the SDAP protocol resides in the O-CU and then forward the UDP traffic on the NG-U tunnel towards UPF.  Verify that UPF received the UDP traffic without any significant drops in packets. |
| 10 | Verify the peak and average throughput on UPF. | **O-DU/ O-CU a UPF** | Verify that the data has been received as pumped from UE. |
| 11 | Trigger UDP Data of transfer 200 Mbps in Downlink on the flow of 5QI 6 using any traffic generator tool or IPERF application. | **O-CU/ O-DU ss UPF** | Verify that O-CU receives DL UDP traffic on the desired Flow on the intendant NG-U connection.  O-CU do the mapping of the Flow to the intendant DRB which will be done by the SDAP protocol resides in the O-CU and then forward the UDP traffic towards O-DU.    Verify that O-DU received the UDP traffic without any significant drops in packets. |
| 12 | Measure peak and average throughput on UE. | **UE ss O-DU/ O-CU** | Verify that the data has been received as pumped from UPF. |

## ORAN.WG8.IOT.016: SMO Discovery and O1 Interface establishment between O-DU and SMO using static configuration on the O-DU.

### Test Purpose

The purpose of this test case is to verify the successful establishment of link between O-DU and SMO using static configuration in the O-DU and verify the yang capability model exchange between the SMO and O-DU using O1 Interface.

### Reference Requirements

For detailed requirements, refer to the section 6 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Physical interface of CA/RA server, SMO, O-DU and O-RU is connected. (Note: If CA/RA server is not present, O-DU is able to send with the default certificates to SMO for secure connection establishment).
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in
  O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to O-DU.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* NETCONF Client is operational.
* O-DUs are able to get the static IP address during the power ON and O-DU obtains pre-configured SMO IP address using static configuration file on O-DU.

### Test Setup and Configuration

* **DUTs**: single O-DU and single SMO.
* **Testing tools**: Following are required for this test scenario:
* Test UEs or UE emulator which can support NR.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer: used to record and observe F1AP, NGAP, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.4.

### Test Procedure

The following table describes the test procedures for successful establishment of link between O-DU and SMO using static configuration and verify the yang capability model exchange between the SMO and O-DU using O1 Interface.

Table 7.17-1: SMO Discovery and O1 Interface establishment between O-DU and SMO using static configuration in O-DU.

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | Power ON O-DU. | **O-DU** | Verify O-DU obtain the static IP address using factory settings.  Verify O-DU obtain the SMO IP address as per the static configuration file present in O-DU. |
| 2 | O-DU sends Pnfregistration to SMO. | **O-DU a SMO** | Verify O-DU sends Pnfregistration message to SMO IP address mention in the configuration file of O-DU containing all the mandatory IEs. |
| 3 | SMO sends TLS secure connection establishment to O-DU. | **O-DU ss SMO** | Verify the TLS secure connection is established between SMO and O-DU as per [22]. Verify SMO sends the NETCONF capabilities supported to O-DU in hello message. |
| 4 | O-DU sends Netconf capability information to SMO and secured NETCONF session is established between SMO and O-DU. | **O-DU a SMO** | Verify O-DU sends the NETCONF capabilities supported to SMO in hello message. |
| 5 | SMO sends HeartBeat message to O-DU. | **O-DU ss SMO** | Verify SMO sends HeartBeat message to O-DU. |
| 6 | O-DU sends HeartBeat Acknowledgment to SMO. | **O-DU a SMO** | Verify O-DU sends HeartBeat Acknowledgment to SMO. |

## ORAN.WG8.IOT.017: SMO Discovery and O1 Interface establishment between O-DU and SMO.

### Test Purpose

The purpose of this test case is to verify the successful establishment of link between O-DU and SMO and verify the yang capability model exchange between the SMO and O-DU using O1 Interface.

### Reference Requirements

For detailed requirements, refer to the section 6 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in
  O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to O-DU.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* O-DU is physically installed. It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.

### Test Setup and Configuration

* **DUTs**: single O-DU and single SMO.
* **Testing tools**: Following are required for this test scenario:
* Test UEs or UE emulator which can support NR.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer: used to record and observe F1AP, NGAP, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.4.

### Test Procedure

The following table describes the test procedures for successful establishment of link between O-DU and SMO and verify the yang capability model exchange between the SMO and O-DU using O1 Interface.

Table 7.18-1: SMO Discovery and O1 Interface establishment between O-DU and SMO

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | O-DU sends Pnfregistration to SMO. | **O-DU a SMO** | Verify O-DU sends Pnfregistration message containing all the mandatory IEs. |
| 2 | SMO sends TLS secure connection establishment to O-DU. | **O-DU ss SMO** | Verify the TLS secure connection is established between SMO and O-DU as per [22]. Verify SMO sends the NETCONF capabilities supported to O-DU in hello message. |
| 3 | O-DU sends Netconf capability information to SMO and secured NETCONF session is established between SMO and O-DU. | **O-DU a SMO** | Verify O-DU sends the NETCONF capabilities supported to SMO in hello message. |
| 4 | SMO sends HeartBeat message to O-DU. | **O-DU ss SMO** | Verify SMO sends HeartBeat message is send to O-DU. |
| 5 | O-DU sends HeartBeat Acknowledgment to SMO. | **O-DU a SMO** | Verify O-DU sends HeartBeat Acknowledgment to SMO. |

## ORAN.WG8.IOT.018: Verify the cell activation successful when configuration received from SMO for co-located O-RU and O-DU.

### Test Purpose

The purpose of this test case is to verify the successful cell activation when configuration received from SMO for co-located O-RU and O-DU.

### Reference Requirements

For detailed requirements, refer to the section 6 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in
  O-CU.
* O-RU is connected to O-DU. O-RU is co-located with O-DU.
* O-CU is connected to O-DU.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* O-DU is physically installed. It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per test case ORAN.WG8.IOT.017.
* O-DU and O-RU are exchanging the information using O-RU managemental approach.

### Test Setup and Configuration

* **DUTs**: single O-DU and single SMO.
* **Testing tools**: Following are required for this test scenario:
* Test UEs or UE emulator which can support NR.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer: used to record and observe F1AP, NGAP, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.5.

### Test Procedure

The following table describes the test procedures to verify the successful cell activation when configuration received from SMO for co-located O-DU and O-RU.

Table 7.19-1: cell activation when configuration received from SMO for co-located O-DU and O-RU

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | SMO sends Cell Configuration to O-DU. | **O-DU ss SMO** | Verify SMO sends all the mandatory IEs to O-DU as per the data formats supported in Section 12.2 of [22]. |
| 2 | O-DU sends sync-state information and set the operational state in SMO. | **O-DU a SMO** | Verify O-DU sends the sync-state as LOCKED to SMO. Verify O-DU set the operational state to ENABLED state. |
| 3 | SMO sets the administrate state of O-DU. | **O-DU ss SMO** | Verify O-DU sets the administrative state to UNLOCKED state. |
| 4 | O-DU sends an F1 SETUP REQUEST to establish connectivity between the O-DU and O-CU. | **O-DU a O-CU** | Verify O-DU sends F1 SETUP REQUEST message containing all the mandatory IEs mentioned in section 4.1.5.1.2 of ORAN.WG5.C.1 [19] to the O-CU-CP (Control Unit). |
| 5 | O-CU sends NGAP Setup Request to AMF. | **O-CU a AMF** | Verify the NGAP Setup Request contains all the mandatory IEs mentioned in the section 9.2.6.1 of 3GPP Specification [20]. |
| 6 | O-CU receives NGAP Setup Response from AMF. | **O-CU ss AMF** | Verify AMF sends NGAP Setup Response message containing all the mandatory IEs mentioned in 9.2.6.1 of 3GPP Specification [20]. |
| 7 | O-DU receives F1 SETUP RESPONSE from O-CU. | **O-DU ss O-CU** | Verify O-CU sends F1 SETUP RESPONSE message containing all the mandatory IEs mentioned in section 4.1.5.1.2 of ORAN.WG5.C.1 [19] to the O-DU. |
| 8 | Cell Bring-up is initiated at O-CU. | **O-DU ss O-CU** | O-CU sends the F1AP gNB-CU configuration update to O-DU.  F1AP gNB-CU configuration update message contains all the mandatory IEs mentioned in section 4.1.6.1.2.1 of ORAN.WG5.C.1 [19].  O-CU adds the cell information according to IE Served-Cells-To-Add-List. |
| 9 | O-DU sends the gNB-CU CONFIGURATION UPDATE ACKNOWLEDGE message to O-DU. | **O-DU a O-CU** | Verify O-DU sends the gNB-CU CONFIGURATION UPDATE ACKNOWLEDGE message to O-CU.  F1AP gNB-CU configuration update Ack message contains all the mandatory IEs mentioned in section 4.1.6.1.2.1 of ORAN.WG5.C.1 [19]. |
| 10 | Activate the cell from the O-DU. | **O-DU a O-CU** | O-DU sends the F1AP gNB-DU configuration update to O-CU.  F1AP gNB-DU configuration update message contains all the mandatory IEs mentioned in section 4.1.6.1.2.4 of ORAN.WG5.C.1 [19].  O-DU activates the cell information according to the service-state IE. |
| 11 | O-CU sends the gNB-DU CONFIGURATION UPDATE ACKNOWLEDGE message to O-CU. | **O-DU ss O-CU** | Verify O-CU sends the gNB-DU CONFIGURATION UPDATE ACKNOWLEDGE message to O-DU.  F1AP gNB-DU configuration update Ack message contains all the mandatory IEs mentioned in section 4.1.6.1.2.4 of ORAN.WG5.C.1 [19]. |
| 12 | Verify the status of the cell. | **O-DU/O-CU** | Verify SMO shows O-CU and O-DU operational and newly added cell is up and RF state of O-RU is active. |

## ORAN.WG8.IOT.019: Verify the cell activation successful when configuration received from SMO for non co-located(remote) O-RU and O-DU.

### Test Purpose

The purpose of this test case is to verify the successful cell activation when configuration received from SMO for non co-located(remote) O-RU and O-DU.

### Reference Requirements

For detailed requirements, refer to the Section 6 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in
  O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to O-DU.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* O-DU is physically installed. It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per test case ORAN.WG8.IOT.017.
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs**: single O-DU and single SMO.
* **Testing tools**: Following are required for this test scenario:
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer: used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.4.

### Test Procedure

The following table describes the test procedures to verify the successful cell activation when configuration received from SMO for non co-located(remote) O-RU and O-DU.

Table 7.20-1: Cell activation when configuration received from SMO for non co-located(remote) O-RU and O-DU

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | SMO sends Cell Configuration to O-DU. | **SMO a O-DU** | Verify SMO sends all the mandatory IEs to O-DU as per the data formats supported in Section 12.2 of [22]. |
| 2 | O-DU sends the Cell Configuration to O-RU. | **O-DU a O-RU** | Verify O-DU sends all the mandatory IEs to O-RU as per the data formats supported in Section 12.2 of [22].  Verify O-RU updates mandatory cell configuration and changes its carrier-state to ACTIVE. |
| 3 | O-RU sends sync-state information to O-DU. | **O-DU ss O-RU** | Verify O-RU sends the sync-state as LOCKED to O-DU. |
| 4 | O-DU sends sync-state information and set the operational state in SMO. | **O-DU a SMO** | Verify O-DU sends the sync-state as LOCKED to SMO. Verify O-DU set the operational state to ENABLED state. |
| 6 | SMO sets the administrate state of O-DU. | **SMO a O-DU** | O-DU sets the administrative state to UNLOCKED state. |
| 7 | O-DU sends an F1 SETUP REQUEST to establish connectivity between the O-DU and O-CU. | **O-DU a O-CU** | Verify O-DU sends F1 SETUP REQUEST message containing all the mandatory IEs mentioned in section 4.1.5.1.2 of ORAN.WG5.C.1 [19] to the O-CU-CP (Control Unit) |
| 8 | O-CU sends NGAP Setup Request to AMF. | **O-CU a AMF** | Verify the NGAP Setup Request contains all the mandatory IEs mentioned in the section 9.2.6.1 of 3GPP Specification [20]. |
| 9 | O-CU receives NGAP Setup Response from AMF. | **O-CU ss AMF** | Verify AMF sends NGAP Setup Response message containing all the mandatory IEs mentioned in 9.2.6.1 of 3GPP Specification [20]. |
| 10 | O-DU receives F1 SETUP RESPONSE from O-CU. | **O-DU ss O-CU** | Verify O-CU sends F1 SETUP RESPONSE message containing all the mandatory IEs mentioned in section 4.1.5.1.2 of ORAN.WG5.C.1 [19] to the O-DU. |
| 11 | Cell Bring-up is initiated at O-CU. | **O-DU ss O-CU** | O-CU sends the F1AP gNB-CU configuration update to O-DU.  F1AP gNB-CU configuration update message contains all the mandatory IEs mentioned in section 4.1.6.1.2.1 of ORAN.WG5.C.1 [19].  O-CU adds the cell information according to IE Served-Cells-To-Add-List. |
| 12 | O-DU sends the gNB-CU CONFIGURATION UPDATE ACKNOWLEDGE message to O-DU. | **O-DU a O-CU** | Verify O-DU sends the gNB-CU CONFIGURATION UPDATE ACKNOWLEDGE message to O-CU.  F1AP gNB-CU configuration update Ack message contains all the mandatory IEs mentioned in section 4.1.6.1.2.1 of ORAN.WG5.C.1 [19]. |
| 13 | Activate the cell from the O-DU. | **O-DU a O-CU** | O-DU sends the F1AP gNB-DU configuration update to O-CU.  F1AP gNB-DU configuration update message contains all the mandatory IEs mentioned in section 4.1.6.1.2.4 of ORAN.WG5.C.1 [19].  O-DU activates the cell information according to the service-state IE. |
| 14 | O-CU sends the gNB-DU CONFIGURATION UPDATE ACKNOWLEDGE message to O-CU. | **O-DU ss O-CU** | Verify O-CU sends the gNB-DU CONFIGURATION UPDATE ACKNOWLEDGE message to O-DU.  F1AP gNB-DU configuration update Ack message contains all the mandatory IEs mentioned in section 4.1.6.1.2.4 of ORAN.WG5.C.1 [19]. |
| 15 | Verify the status of the cell. | **O-DU/O-CU** | Verify O-DU is UP and O-RU changes its state to RUNNING.  Verify SMO shows O-CU and O-DU operational and newly added cell is up and RF state of O-RU is ACTIVE. |

## ORAN.WG8.IOT.020: Verify SMO is notified with the alarm when O-DU detects out of sync from O-RU in hierarchical model.

### Test Purpose

The purpose of this test case is to verify SMO is notified with the alarm when O-DU detects out of sync from O-RU in hierarchical model.

### Reference Requirements

For detailed requirements, refer to the Section 6 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to O-DU.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* O-DU is physically installed. It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per test case ORAN.WG8.IOT.018.
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs**: single O-DU and single SMO.
* **Testing tools**: Following are required for this test scenario:
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer: used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.4.

### Test Procedure

The following table describes the test procedures to verify SMO is notified with the alarm when O-DU detects out of sync from O-RU in hierarchical model.

Table 7.21-1: SMO is notified with the alarm when O-DU detects out of sync from O-RU in hierarchical model

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | SMO sends Cell Configuration to O-DU. | **SMO a O-DU** | Verify SMO sends all the mandatory IEs to O-DU as per the data formats supported in Section 12.2 of [22]. |
| 2 | O-DU sends the Cell Configuration to O-RU. | **O-DU a O-RU** | Verify O-DU sends all the mandatory IEs to O-RU as per the data formats supported in Section 12.2 of [22]. |
| 3 | O-RU sends sync-state information to O-DU. | **O-DU ss O-RU** | Verify O-RU sends the sync-state as LOCKED to O-DU. |
| 4 | O-DU sends sync-state information to SMO and O-DU sets the operational state. | **O-DU a SMO** | Verify O-DU sends the sync-state as LOCKED to SMO and verify O-DU sets the operational state to ENBALED state. |
| 5 | SMO sets the administrate state to O-DU. | **SMO a O-DU** | O-DU sets the administrative state to UNLOCKED state. |
| 6 | O-DU sends an F1 SETUP REQUEST to establish connectivity between the O-DU and O-CU. | **O-DU a O-CU** | Verify O-DU sends F1 SETUP REQUEST message containing all the mandatory IEs mentioned in section 4.1.5.1.2 of ORAN.WG5.C.1 [19] to the O-CU-CP (Control Unit). |
| 7 | O-CU sends NGAP Setup Request to AMF. | **O-CU a AMF** | Verify the NGAP Setup Request contains all the mandatory IEs mentioned in the section 9.2.6.1 of 3GPP Specification [20]. |
| 8 | O-CU receives NGAP Setup Response from AMF. | **O-CU ss AMF** | Verify AMF sends NGAP Setup Response message containing all the mandatory IEs mentioned in 9.2.6.1 of 3GPP Specification [20]. |
| 9 | O-DU receives F1 SETUP RESPONSE from O-CU. | **O-DU ss O-CU** | Verify O-CU sends F1 SETUP RESPONSE message containing all the mandatory IEs mentioned in section 4.1.5.1.2 of ORAN.WG5.C.1 [19] to the O-DU. |
| 10 | Cell Bring-up is initiated at O-CU. | **O-DU ss O-CU** | O-CU sends the F1AP gNB-CU configuration update to O-DU.  F1AP gNB-CU configuration update message contains all the mandatory IEs mentioned in section 4.1.6.1.2.1 of ORAN.WG5.C.1 [19].  O-CU adds the cell information according to IE Served-Cells-To-Add-List. |
| 11 | O-DU sends the gNB-DU CONFIGURATION UPDATE ACKNOWLEDGE message to O-DU. | **O-DU a O-CU** | Verify O-DU sends the gNB-CU CONFIGURATION UPDATE ACKNOWLEDGE message to O-CU.  F1AP gNB-CU configuration update Ack message contains all the mandatory IEs mentioned in section 4.1.6.1.2.1 of ORAN.WG5.C.1 [19]. |
| 12 | Activate the cell from the O-DU. | **O-DU a O-CU** | O-DU sends the F1AP gNB-DU configuration update to O-CU.  F1AP gNB-DU configuration update message contains all the mandatory IEs mentioned in section 4.1.6.1.2.4 of ORAN.WG5.C.1 [19].  O-DU activates the cell information according to the service-state IE. |
| 13 | O-CU sends the gNB-DU CONFIGURATION UPDATE ACKNOWLEDGE message to O-CU. | **O-DU ss O-CU** | Verify O-CU sends the gNB-DU CONFIGURATION UPDATE ACKNOWLEDGE message to O-DU.  F1AP gNB-DU configuration update Ack message contains all the mandatory IEs mentioned in section 4.1.6.1.2.4 of ORAN.WG5.C.1 [19]. |
| 14 | Verify the status of the cell. | **O-DU** | Verify SMO shows O-CU and O-DU operational and newly cell up and RF state of O-RU is ACTIVE.  O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication. |
| 15 | O-DU detects sync loss with the O-RU. | **O-RUa O-DU** | Verify O-DU sends the alarm notification as per Annex A of [24]. (Example: Fault id:28). |
| 16 | O-DU sets the operational state to correct value. | **O-DU** | Verify O-DU set the operation state to DISABLED. |
| 17 | SMO sets the administrate state to O-DU. | **SMO a O-DU** | O-DU sets the administrative state to LOCKED state. |

## ORAN.WG8.IOT.021: Verify SMO sends subscription to O-RU via O-DU for alarms and handles the alarm notification from O-RU via O-DU.

### Test Purpose

The purpose of this test case is to verify SMO sends subscription for alarms to O-RU via O-DU and handles the alarm notification from O-RU via O-DU in hierarchical model.

### Reference Requirements

For detailed requirements, refer to the Section 6 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in
  O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to O-DU.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* O-DU is physically installed. It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per test case ORAN.WG8.IOT.018.
* O-DU and O-RU are exchanging the information between them.
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].
* O-DU is able to report the Alarm list as per [24] Annex A.

### Test Setup and Configuration

* **DUTs**: single O-DU and single SMO.
* **Testing tools**: Following are required for this test scenario:
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer: used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.5.

### Test Procedure

The following table describes the test procedures to verify SMO sends subscription for alarms to O-RU via O-DU and handles the alarm notification from O-RU via O-DU in hierarchical model.

Table 7.22-1: SMO sends subscription for alarms to O-RU via O-DU and handles the alarm notification from O-RU via O-DU in hierarchical model

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | SMO sends the create-subscription message to O-RU via O-DU for the selected list of alarms supported. | **O-DU ss SMO** | Verify SMO sends the create-subscription message for the selected list of alarms to O-RU via O-DU as per Annex A of [24]. |
| 2 | O-RU reports the alarms notification for the SUBSCRIBED event to O-DU. O-DU forwards the reported alarms notification to SMO. | **O-DU a SMO** | Verify O-RU reports the alarms notification for the SUBSCRIBED event to O-DU and O-DU forwards the SUBSCRIBED event to SMO.  Verify the O-RU clear the notification for the SUBSCRIBED event when the SUBSCRIBED event is not met.  Verify the O-DU sends clear alarm event to SMO and corresponding stats in SMO is cleared.  (Example events: Unit temperature is high, Unit dangerously overheating, etc.). |

## ORAN.WG8.IOT.022: Verify SMO handles any subscribed measurement counters received from O-DU on O1 interface.

### Test Purpose

The purpose of this test case is to verify SMO handles any subscribed measurement counters received from O-DU on O1 interface.

### Reference Requirements

For detailed requirements, refer to the Section 6 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in
  O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to O-DU.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* O-DU is physically installed. It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per Test case ORAN.WG8.IOT.017.
* The cell is in sync and broadcast message is broadcasted as per ORAN.WG8.IOT.018.
* O-DU and O-RU are exchanging the information between them.
* O-DU obtains the alarm list supported by O-RU using get-alarms-list and store in aggregated data model specified.
* SMO obtains the alarm list supported by O-DU (along with O-RU) using get-alarms-list and store in aggregated data model specified.

### Test Setup and Configuration

* **DUTs**: single O-DU and single SMO.
* **Testing tools**: Following are required for this test scenario:
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer: used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.5.

### Test Procedure

The following table describes the test procedures to verify SMO sends subscription to O-RU via O-DU for the alarms in hierarchical model.

Table 7.23-1: SMO handles any subscribed measurement counters received from O-DU on O1 interface

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | SMO sends the SUBSCRITION message to O-RU via O-DU. | **O-DU ss SMO** | Verify SMO sends the SUBSCRITON message to O-RU via O-DU as per the data model mentioned above. |
| 2 | O-DU reports the measurement counters for the SUBSCRIBED counters to SMO using Performance data file. | **O-DU a SMO** | Verify O-DU reports the measurement counters for the SUBSCRIBED counters to SMO as per Annex A of [24]. |

## ORAN.WG8.IOT.023: Verify O-DU successfully establish E2 Interface with near RT-RIC.

### Test Purpose

The purpose of this test case is to verify O-DU successfully establish E2 Interface with near RT-RIC.

### Reference Requirements

For detailed requirements, refer to the Section 8.2 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in
  O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to O-DU.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* O-DU is physically installed. It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].
* O-DU is connected to near RT-RIC.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or Ipv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per Test case ORAN.WG8.IOT.018.
* O-DU and O-RU are exchanging the information between them.
* SMO sends Cell Configuration to O-DU the E2 near RT-RIC server IP address as per the data model.

### Test Setup and Configuration

* **DUTs**: single O-DU and single SMO.
* **Testing tools**: Following are required for this test scenario:
* Test Ues or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer: used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.5.

### Test Procedure

The following table describes the test procedures to verify O-DU successfully establish E2 Interface with near RT-RIC.

Table 7.24-1: O-DU successfully establish E2 Interface with near RT-RIC

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | O-DU sends the E2 Setup request to near RT-RIC server. | **O-DU a near RT-RIC** | Verify O-DU sends the E2 Setup request message to near RT-RIC server with all the mandatory Ies. |
| 2 | near RT-RIC server sends E2 Setup Response to O-DU. | **O-DU ss near RT-RIC** | Verify near RT-RIC sends the E2 setup response to O-DU with all the mandatory Ies. |

## ORAN.WG8.IOT.024: Verify near RT-RIC server sends subscription request with type as REPORT to O-DU.

### Test Purpose

The purpose of this test case is to verify near RT-RIC server sends subscription request with subscription details as REPORT to O-DU.

### Reference Requirements

For detailed requirements, refer to the Section 8.2 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in
  O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to O-DU.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* O-DU is physically installed. It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].
* O-DU is connected to near RT-RIC.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per Test case ORAN.WG8.IOT.018.
* O-DU and O-RU are exchanging the information between them.
* SMO sends Cell Configuration to O-DU the E2 near RT-RIC server IP address as per the data model.

### Test Setup and Configuration

* **DUTs**: single O-DU and single SMO.
* **Testing tools**: Following are required for this test scenario:
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer: used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.5.

### Test Procedure

The following table describes the test procedures to verify near RT-RIC server sends subscription request with subscription details as REPORT to O-DU.

Table 7.25-1: Near RT-RIC server sends subscription request with IE type as REPORT to O-DU

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | O-DU sends the E2 Setup request to near RT-RIC server. | **O-DU a near RT-RIC** | Verify O-DU sends the E2 Setup request message to near RT-RIC server with all the mandatory IEs. |
| 2 | near RT-RIC server sends E2 Setup Response to O-DU. | **O-DU ss near RT-RIC** | Verify near RT-RIC sends the E2 setup response to O-DU with all the mandatory IEs. |
| 3 | near RT-RIC server sends E2 Subscription Request to O-DU. | **O-DU ss near RT-RIC** | Verify near RT-RIC server sends E2 Subscription Request to O-DU with IE type as REPORT and the "RIC Actions Admitted List" mentioned in Section 5 of [25].  Example: RACH. PreambleDedCell, DRB. UEThpDl, etc. |
| 4 | O-DU sends the E2 Subscription Response to near -RT-RIC server. | **O-DU a near RT-RIC** | Verify O-DU sends the E2 Subscription Response to near -RT-RIC server. |

## ORAN.WG8.IOT.025: Verify O-DU includes the RIC Actions Not Admitted List in subscription response to near RT-RIC server.

### Test Purpose

The purpose of this test case is to verify O-DU includes the RIC Actions Not Admitted List in subscription response to near RT-RIC server.

### Reference Requirements

For detailed requirements, refer to the Section 8.2 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in
  O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to O-DU.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* O-DU is physically installed. It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].
* O-DU is connected to near RT-RIC.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or Ipv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per Test case ORAN.WG8.IOT.018.
* O-DU and O-RU are exchanging the information between them.
* SMO sends Cell Configuration to O-DU the E2 near RT-RIC server IP address as per the data model.

### Test Setup and Configuration

* **DUTs**: single O-DU and single SMO.
* **Testing tools**: Following are required for this test scenario:
* Test Ues or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer: used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.4.

### Test Procedure

The following table describes the test procedures to verify O-DU includes the RIC Actions Not Admitted List in subscription response to near RT-RIC server.

Table 7.26-1: O-DU includes the RIC Actions Not Admitted List in subscription response to near RT-RIC server

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | O-DU sends the E2 Setup request to near -RT-RIC server. | **O-DU a near RT-RIC** | Verify O-DU sends the E2 Setup request message to near RT-RIC server with all the mandatory Ies. |
| 2 | near RT-RIC server sends E2 Setup Response to O-DU. | **O-DU ss near RT-RIC** | Verify near RT-RIC sends the E2 setup response to O-DU with all the mandatory Ies. |
| 3 | near RT-RIC server sends E2 Subscription Request to O-DU. | **O-DU ss near RT-RIC** | Verify near RT-RIC server sends E2 Subscription Request to O-DU with the supported list mentioned in Section 5 of [25].  Example: RACH.PreambleDedCell, DRB.UEThpDl, etc. |
| 4 | O-DU sends the E2 Subscription Response to near RT-RIC server with RIC Actions admitted and RIC Actions Not Admitted List items. | **O-DU a near RT-RIC** | Verify O-DU sends the E2 Subscription Response to near-RT-RIC server with "RIC Actions Admitted List" IE filled with O-DU supported list from the SUBSCRIPTION REQUEST and "RIC Actions Not Admitted List" IE filled with O-DU non-supported list. |

## ORAN.WG8.IOT.026: Verify O-DU sends periodic report to the subscribed features to near RT-RIC server.

### Test Purpose

The purpose of this test case is to verify O-DU sends periodic report to the subscribed features to near RT-RIC server.

### Reference Requirements

For detailed requirements, refer to the Section 8.2 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in
  O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to O-DU.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* O-DU is physically installed. It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].
* O-DU is connected to near RT-RIC.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per Test case ORAN.WG8.IOT.018.
* O-DU and O-RU are exchanging the information between them.
* SMO sends Cell Configuration to O-DU the E2 near RT-RIC server IP address as per the data model.

### Test Setup and Configuration

* **DUTs**: single O-DU and single SMO.
* **Testing tools**: Following are required for this test scenario:
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer: used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.4.

### Test Procedure

The following table describes the test procedures to verify O-DU sends periodic report to the subscribed features to near RT-RIC server.

Table 7.27-1: SMO handles any subscribed measurement counters received from O-DU on O1 interface

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | O-DU sends the E2 Setup request to near RT-RIC server. | **O-DU a near RT-RIC** | Verify O-DU sends the E2 Setup request message to near RT-RIC server with all the mandatory IEs. |
| 2 | near RT-RIC server sends E2 Setup Response to O-DU. | **O-DU ss near RT-RIC** | Verify near RT-RIC sends the E2 setup response to O-DU with all the mandatory IEs. |
| 3 | near RT-RIC server sends E2 Subscription Request to O-DU. | **O-DU ss near RT-RIC** | Verify near RT-RIC server sends E2 Subscription Request to O-DU with the supported list mentioned in Section 5 of 3GPP Specification [25].  (Example: DRB.UEThpDl). |
| 4 | O-DU sends the E2 Subscription Response to near -RT-RIC server with supported subscription items and not supported items. | **O-DU a near RT-RIC** | Verify O-DU sends the E2 Subscription Response to near-RT-RIC server with "RIC Actions Admitted List" IE filled with O-DU supported list from the SUBSCRIPTION REQUEST and "RIC Actions Not Admitted List" IE filled with O-DU non-supported list. |
| 5 | O-DU sends the periodic report to the subscribed features to near RT-RIC server through RIC INDICATION message. | **O-DU a near RT-RIC** | Verify O-DU sends the periodic report to the subscribed features as per the REPORT Service Style mentioned in SUBSCRIPTION REQUEST to near RT-RIC server through RIC INDICATION message. |

## ORAN.WG8.IOT.027: Verify UE attach is successful with the given SSB periodicity and sub-carrier spacing as part of cell configuration structure from SMO to O-DU for FR1 configuration.

### Test Purpose

The purpose of this test case is to verify successful UE attach with given SSB periodicity and sub-carrier spacing.

### Reference Requirements

For detailed requirements, refer to the section 11.2.1 in ORAN-WG8.AAD [1].

### Initial Conditions

* Following are the preconditions for this test.
* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to O-DU.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per test case ORAN.WG8.IOT.017.
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs:** SMO, O-DU, O-CU and O-RU
* **Testing tools:** Below toolsare required for this test scenario**.**
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer: used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.4.
* Use SSB Periodicity as 40ms and sub-carrier spacing as 30Khz (FR1).
* For rest of the MIB and SSB test profiles, refer B.2.1.

### Test Procedure

The following table describes the test procedures for verifying MIB periodicity and sub-carrier spacing.

Table 7.28-1: MIB Periodicity and subcarrier spacing

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | Cell configuration received from SMO to O-DU | **O-DU ss SMO** | Verify the following configuration is carried between SMO to O-DU-OAM-Agent (O1 interface) and O-DU-OAM-Agent to MAC:  ssPbchPower   * subcarrier-spacing (30 Khz) * offset-to-carrier * SsbPeriod (40 ms) * SsbSubcarrierOffset * SsbMask[SSB\_MAX\_SIZE] * BeamId * betaPss * bchPayloadFlag * bchPayload * dmrsTypeAPos |
| 2 | Digital beam configuration received from SMO to ODU | **SMOa O-DU** | Verify that O-DU apply Digital beam weight received from SMO in case of Digital beam forming configuration.   * numDigBeams   + beamIdx = (0-8) * numTXRUs = (0-64)   + digBeamWeightRe   + digBeamWeightIm |
| 3 | Cell bring-up | **O-DU/O-RU** | Verify cell bring-up is successful with the configuration that has been received from SMO.  Verify O-DU sends bean configuration and mandatory cell configuration to O-RU and ensures that O-RU carrier-state is set to ACTIVE and sync-state is set to LOCKED.  O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of [24].  Verify O-DU sets the administrative state to UNLOCKED state. |
| 4 | O-DU/O-RU broadcasts SSB configuration as per defined periodicity. | **UE ss O-DU/ O-CU** | Verify that O-DU broadcast SS burst blocks in every configured SSB periodicity(40 ms) in a first half frame within SFN as per 3GPP TS 38.213 sec 4.1. |
| 5 | SSB decoding as per the specified subcarrier spacing | **UE ss O-DU/ O-CU** | Verify that UE able to decode the SSB for the configured sub carrier spacing(30KHz).  Verify UE attach is successful with the above mentioned configuration |
| 6 | End to end data validation | **O-DU/ O-CU a UPF** | Verify end to end data is successful |

## ORAN.WG8.IOT.028: Verify UE attach is successful with Transmission periodicity configured to ms2p5 for FR1 configuration.

### Test Purpose

The purpose of this test case is to verify successful UE attach when O-DU is configured with TDD dl-ul-Transmission periodicity as ms2p5

### Reference Requirements

For detailed requirements, refer to the section 11.2.1.1 in ORAN-WG8.AAD [1].

### Initial Conditions

* Following are the preconditions for this test.
* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to O-DU.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per test case ORAN.WG8.IOT.017.
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs:** SMO, O-DU, O-CU and O-RU
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or Core emulator used to terminate UEs (emulator) NAS protocol, and to support NGAP, HTTP2, PFCP protocols.
* Protocol Analyzer: used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.4.
* Configure TDD slot format to DDDSU and dl-ul-Transmission periodicity to ms2p5 in SMO
* For rest of the MIB and SSB test profiles, refer B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table below describes the test steps for verifying UE attach with dl-ul-transmission-periodicity of ms2p5.

Table 7.29-1: Transmission periodicity configured to ms2p5

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | Cell configuration received from SMO to O-DU | **O-DU ss SMO** | Verify the following configuration is carried between SMO to O-DU-OAM-Agent (O1 interface) and O-DU-OAM-Agent to MAC.   * dl-ul-transmission-periodicity (ms2p5) * nr-of-downlink-slots (3) * nr-of-downlink-symbols (10) * nr-of-uplink-slots (1) * nr-of-uplink-symbols (2) |
| 2 | Digital beam configuration received from SMO to ODU | **O-DU ss SMO** | Verify that O-DU apply Digital beam weight received from SMO in case of Digital beam forming configuration.   * numDigBeams   + beamIdx = (0-8) * numTXRUs = (0-64)   + digBeamWeightRe   + digBeamWeightIm |
| 3 | Cell bring up | **O-DU/O-RU** | Verify cell bring-up is successful with the configuration that has been received from SMO.  Verify O-DU sends beam configuration and mandatory cell configuration to O-RU and ensures that O-RU carrier-state is set to ACTIVE and sync-state is set to LOCKED.O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of [24].  Verify O-DU sets the administrative state to UNLOCKED state. |
| 4 | O-DU sends TDD configuration to O-RU. | **O-RU ss O-DU** | Verify that O-DU sends the dl-ul-transmission-periodicity as ms2p5 and slot format as DDDSU as per 3GPP TS 38.213 sec 11.1. |
| 5 | Attach validation | **UE ssa O-DU/O-CU** | verify successful UE attach with ms2p5 dl-ul-transmission-periodicity. |
| 6 | End to end data validation | **O-DU/ O-CU a UPF** | Verify end to end data is successful |

## ORAN.WG8.IOT.029: Verify UE attach is successful with Transmission periodicity configured to ms5 for FR1 configuration.

### Test Purpose

The purpose of this test case is to verify successful UE attach when O-DU is configured TDD dl-ul-Transmission periodicity as ms5.

### Reference Requirements

For detailed requirements, refer to the section 11.2.1.1 in ORAN-WG8.AAD [1].

### Initial Conditions

* Following are the preconditions for this test.
* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to O-DU.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per test case ORAN.WG8.IOT.017.
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs:** SMO, O-DU, O-CU and O-RU
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or Core emulator used to terminate UEs (emulator) NAS protocol, and to support NGAP, HTTP2, PFCP protocols.
* Protocol Analyzer: used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.4.
* For rest of the MIB and SSB test profiles, refer B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table below describes the test steps for verifying UE attach with dl-ul-transmission-periodicity of ms5

Table 7.30-1: ms5 Transmission periodicity

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | Cell configuration received from SMO to O-DU | **O-DU ss SMO** | Verify the following configuration is carried between SMO to O-DU-OAM-Agent (O1 interface) and O-DU-OAM-Agent to MAC for the TDD slot configuration of DDDDDDDSUU (7D1S2U):   * dl-ul-transmission-periodicity (ms5) * nr-of-downlink-slots (7) * nr-of-downlink-symbols (10) * nr-of-uplink-slots (2) * nr-of-uplink-symbols (2) |
| 2 | Digital beam configuration received from SMO to ODU | **O-DU ss SMO** | Verify that O-DU apply Digital beam weight received from SMO in case of Digital beam forming configuration.   * numDigBeams   + beamIdx = (0-8) * numTXRUs = (0-64)   + digBeamWeightRe   + digBeamWeightIm |
| 3 | Cell bring up | **O-DU/O-RU** | Verify cell bring-up is successful with the configuration that has been received from SMO.  Verify O-DU sends beam configuration and mandatory cell configuration to O-RU and ensures that O-RU carrier-state is set to ACTIVE and sync-state is set to LOCKED.  O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of [24].  Verify O-DU sets the administrative state to UNLOCKED state. |
| 4 | O-DU sends TDD configuration to O-RU. | **O-RU ss O-DU** | Verify that O-DU sends the dl-ul-transmission-periodicity as ms5 as per 3GPP TS 38.213 sec 11.1. |
| 5 | Attach validation | **UE ssa O-DU/O-CU** | verify successful UE attach with ms5 dl-ul-transmission-periodicity. |
| 6 | End to end data validation | **O-DU/ O-CU a UPF** | Verify end to end data is successful |

## ORAN.WG8.IOT.030: Verify cell bring up is successful with 100Mhz bandwidth configuration received from SMO for FR1 configuration.

### Test Purpose

The purpose of this test case is to verify successful UE attach when O-DU is configured with 100 MHz bandwidth.

### Reference Requirements

For detailed requirements, refer to the section 11.2.1.1 in ORAN-WG8.AAD [1].

### Initial Conditions

* Following are the preconditions for this test.
* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to O-DU.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per test case ORAN.WG8.IOT.017.
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs:** **SMO,** O-DU, O-CU and O-RU
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or Core emulator used to terminate UEs (emulator) NAS protocol, and to support NGAP, HTTP2, PFCP protocols.
* Protocol Analyzer: used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.4.
* For rest of the MIB and SSB test profiles, refer B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test steps for cell bring-up verification with 100Mhz bandwidth configuration.

Table 7.31-1: 100Mhz bandwidth configuration received from SMO

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | Cell configuration received from SMO to O-DU | **O-DU ss SMO** | Verify the following configuration is carried between SMO to O-DU-OAM-Agent (O1 interface) and O-DU-OAM-Agent to MAC:   * Carrier Bandwidth (100Mhz) * arfcnDL * bSChannelBwUL * arfcnUL * numTxAnt * numRxAnt |
| 2 | Digital beam configuration received from SMO to ODU | **O-DU ss SMO** | Verify that O-DU apply Digital beam weight received from SMO in case of Digital beam forming configuration.   * numDigBeams   + beamIdx = (0-8) * numTXRUs = (0-64)   + digBeamWeightRe   + digBeamWeightIm |
| 3 | Cell bring up | **O-DU/O-RU** | Verify cell bring-up is successful with the configuration that has been received from SMO.  Verify O-DU sends beam configuration and mandatory cell configuration to O-RU and ensures that O-RU carrier-state is set to ACTIVE and sync-state is set to LOCKED.  O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of [24].  Verify O-DU sets the administrative state to UNLOCKED state. |
| 4 | O-DU sends carrier configuration to O-RU. | **O-RU ss O-DU** | Verify that O-DU sends the Carrier Bandwidth as 100Mhz  as per 3GPP TS 38.213 sec 12. |
| 5 | Attach validation | **UE ssa O-DU/O-CU** | Verify cell is up and radiating with the above configuration also verify successful UE attach with 100 MHz carrier Bandwidth. |
| 6 | End to end data validation | **O-DU/ O-CU a UPF** | Verify end to end data is successful |

## ORAN.WG8.IOT.031: Verify DL and UL scheduling information IE's during an end-to-end UDP FDX data transmission for FR1 configuration.

### Test Purpose

The purpose of this test case is to verify end to end uplink and downlink throughput with mandatory IE's exchanged between SMO and O-DU.

### Reference Requirements

For detailed requirements, refer to the section 4.2 in ORAN-WG8.AAD [1].

### Initial Condition

* Following are the preconditions for this test.
* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to O-DU.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per test case ORAN.WG8.IOT.017.
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs:** SMO, O-DU, O-CU and O-RU.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.4.
* For rest of the MIB and SSB test profiles, refer B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures for bidirectional continuous throughput.

Table 7.32-1: DL and UL scheduling information IE's during an end-to-end UDP FDX data transmission

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | Cell configuration received from SMO to O-DU | **O-DU ss SMO** | Verify below precoding related IE's are exchanged between SMO and O-DU during cell bring up   * numLayers * numAntPorts |
| 2 | Cell configuration with beam formatting information received from SMO to O-DU | **O-DU ss SMO** | Verify below beamforming configuration IE's are exchanged between SMO and O-DU during cell bring-up   * numofBeams * numTXRUs * beamIndex * beamType * beamAzimuth * beamTilt * beamHorizWidth * beamVertWidth * coverageShape * digitalTilt * digitalAzimuth   . |
| 3 | Digital beam configuration received from SMO to ODU | **SMOa O-DU** | Verify that O-DU apply Digital beam weight received from SMO in case of Digital beam forming configuration.   * numDigBeams   + beamIdx = (0-8) * numTXRUs = (0-64)   + digBeamWeightRe   + digBeamWeightIm |
| 4 | Cell bring up | **O-DU/O-RU** | Verify cell bring-up is successful with the configuration that has been received from SMO.  Verify O-DU sends beam configuration and mandatory cell configuration to O-RU and ensures that O-RU carrier-state is set to ACTIVE and sync-state is set to LOCKED.  O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of [24].  Verify O-DU sets the administrative state to UNLOCKED state. |
| 5 | Attach validation | **UE ssa O-DU/O-CU** | Verify cell is up and radiating with the default configuration. |
| 6 | Trigger UDP Data in Downlink. | **UE ss O-CU/ O-DU ss UPF** | Verify that O-CU receives DL UDP traffic on the desired Flow on the intendant NG-U connection.  Verify O-CU does the mapping of the Flow to the intendant DRB which will be done by the SDAP protocol resides in the O-CU and then forward the UDP traffic towards O-DU.    Verify that O-DU received the UDP traffic without any significant drops in packets.  Verify Buffer Occupancy element id transferred from RLC to MAC.  Verify DL scheduling information is sent for each TTI and it contains the below parameters  Timing information  Downlink Broadcast Allocation  Time domain allocation  Frequency domain allocation  PDCCH/CORESET configuration  CoresetPoolIndex  DCI information  BWP information  Verify gNB enables the tci-presentInDCI IE and includes the IE tci-StatePDCCHToAddList IE, as per section 11.2.4.3.8 in ORAN-WG8.AAD [1]  Verify PDSCH scheduling is happening as per dynamic TCI states configured in DCI message.  Verify DL beam-forming configuration between O-DU and O-RU from FAPI logs as per sec 3.4.2 in FAPI specification [12]  Verify coresetPoolIndex-r16 is correctly included within PDCCH/CORESET configuration from UE logs.  Verify successful scheduling of downlink data when CoresetPoolIndex IE is included within PDCCH/CORESET configuration. |
| 7 | Trigger UDP Data transfer in Uplink. | **UE a O-DU/ O-CU a UPF** | Verify that O-DU receives UL UDP traffic on the desired DRB which is intendant and forwards to O-CU using the GTP-U user plane connection.  O-CU do the mapping of the DRB to Flow mapping which will be done by the SDAP protocol resides in the O-CU and then forward the UDP traffic on the NG-U tunnel towards UPF.  Verify that UPF received the UDP traffic without any significant drops in packets.  Verify UL scheduling information is sent for each TTI and it contains parameters below  BeamPUSCHInfo  numPRGs  prgSize  digBFInterfaces  prgInfo  PMIdx  BeamIdx  Verify UL beam-forming configuration between O-DU and O-RU from FAPI logs as per sec 3.4.3 in FAPI specification [12] |
| 8 | End to end data validation | **O-DU/ O-CU a UPF** | Verify end to end data is successful |

## ORAN.WG8.IOT.032: Verify cell bring up is successful with 64 beams and 64 antenna ports configuration received from SMO to O-DU for FR2 configuration.

### Test Purpose

The purpose of this test case is to verify cell bring up is successful with 64 beams and 64 antenna ports configuration received from SMO to O-DU

### Reference Requirements

For detailed requirements, refer to the section 11.2.1 in ORAN-WG8.AAD [1].

### Initial Condition

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to O-DU.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per test case ORAN.WG8.IOT.017.
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs**: SMO, O-DU, O-CU and O-RU
* **Testing tools**: Following are required for this test scenario:
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer: used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.4.
* For rest of the MIB and SSB test profiles, refer B.2.1
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures to verify the successful cell activation when 64 beams and 64 antenna ports configuration received from SMO for non co-located(remote) O-RU and O-DU.

Table 7.33-1: 64 beams and 64 antenna ports configuration received from SMO to O-DU

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | Cell configuration received from SMO to O-DU | **O-DU ss SMO** | Verify the following configuration is carried between SMO to O-DU-OAM-Agent (O1 interface) and O-DU-OAM-Agent to MAC:   * ssb-PositionsInBurst   + groupPresence = 11111111   + inOneGroup =11111111 * ssb-periodicityServingCell * subCarrierSpacingCommon * ssb-SubcarrierOffset (0-11) * numTxAnt * numRxAnt * numofBeams (64) * numTXRUs (64) * beamIndex (64) * numAntPorts (64) |
| 2 | Cell bring-up | **O-DU/O-RU** | Verify cell bring-up is successful with the configuration received from SMO.  Verify O-DU sends beam configuration and mandatory cell configuration to O-RU and ensures that O-RU carrier-state is set to ACTIVE and sync-state is set to LOCKED.  O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of [24].  Verify O-DU sets the administrative state to UNLOCKED state. |
| 3 | O-DU/O-RU broadcast 64 SSB beams as per defined periodicity. | **UE ss O-DU/ O-CU** | Verify the O-RU transmit all the 64 beams with the periodicity of 40ms.  Verify UE selects the strongest SSB beam from 64 beams broadcasted and send RACH request with PRACH config index corresponding to beam selected. |
| 4 | Attach validation | **UE ss O-DU/ O-CU** | Verify that UE able to attach successfully with above mentioned configuration |
| 5 | End to end data validation | **O-DU/ O-CU a UPF** | Verify end to end data is successful. |

## ORAN.WG8.IOT.033: Verify cell bring up is successful with 8 beams and 64 antenna ports configuration received from SMO to O-DU for FR1 configuration.

### Test Purpose

The purpose of this test case is to verify cell bring up is successful with 8 beams and 64 antenna ports configuration received from SMO to O-DU

### Reference Requirements

For detailed requirements, refer to the section 11.2.1 in ORAN-WG8.AAD [1].

### Initial Condition

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to O-DU.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per test case ORAN.WG8.IOT.017.
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs:** SMO, O-DU, O-CU and O-RU.
* **Testing tools:** Following are required for this test scenario:
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer: used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.4.
* For rest of the MIB and SSB test profiles, refer B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures to verify the successful cell activation when 8 beams and 64 antenna ports configuration received from SMO for non-co-located(remote) O-RU and O-DU.

Table 7.34-1: 8 beams and 64 antenna ports configuration received from SMO to O-DU

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | Cell configuration received from SMO to O-DU | **O-DU ss SMO** | Verify the following configuration is carried between SMO to O-DU-OAM-Agent (O1 interface) and O-DU-OAM-Agent to MAC:   * ssb-PositionsInBurst   + inOneGroup =11111111 * ssb-periodicityServingCell * subCarrierSpacingCommon * ssb-SubcarrierOffset (0-15) * numTxAnt * numRxAnt * numofBeams (8) * numTXRUs (64) * beamIndex (8) * numAntPorts (64) |
| 2 | Digital beam configuration received from SMO to ODU | **O-DU ss SMO** | Verify that O-DU apply Digital beam weight received from SMO in case of Digital beam forming configuration.   * numDigBeams   + beamIdx = (0-64) * numTXRUs = (0-64)   + digBeamWeightRe   + digBeamWeightIm |
| 3 | Cell bring-up | **O-DU/O-RU** | Verify cell bring-up is successful with the configuration that has been received from SMO.  Verify O-DU sends beam configuration and mandatory cell configuration to O-RU and ensures that O-RU carrier-state is set to ACTIVE and sync-state is set to LOCKED.O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of [24].  Verify O-DU sets the administrative state to UNLOCKED state. |
| 4 | O-DU/O-RU broadcast SSB beams as per defined periodicity. | **UE ss O-DU/ O-CU** | Verify the O-RU transmit all the 8 beams with a periodicity of 20ms.  Verify UE selects the strongest SSB beam from 8 beams broadcasted and sends RACH request with PRACH config index corresponding to beam selected. |
| 5 | Attach validation | **UE ss O-DU/ O-CU** | Verify that UE able to attach successfully with above mentioned configuration |
| 6 | End to end data validation | **O-DU/ O-CU a UPF** | Verify end to end data is successful. |

## ORAN.WG8.IOT.034: Verify cell bring up is successful and UE attach when the O-DU is configured with 32 punctured SSB beams for FR2 configuration.

### Test Purpose

The purpose of this test case is to verify cell bring up is successful and UE attach when the O-DU is configured with 32 punctured SSB beams.

### Reference Requirements

For detailed requirements, refer to the section 11.2.1 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to O-DU.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per test case ORAN.WG8.IOT.017.
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs**: SMO, O-DU, O-CU and O-RU.
* **Testing tools**: Following are required for this test scenario:
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer: used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.4.
* For rest of the MIB and SSB test profiles, refer B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures to verify the successful cell activation when 32 beams and 64 antenna ports configuration received from SMO for non co-located(remote) O-RU and O-DU.

Table 7.35-1: O-DU is configured with 32 punctured SSB beams

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | Cell configuration received from SMO to O-DU | **O-DU ss SMO** | Verify the following configuration is carried between SMO to O-DU-OAM-Agent (O1 interface) and O-DU-OAM-Agent to MAC:   * ssb-PositionsInBurst   + groupPresence = 11111111   + inOneGroup =10101010 * ssb-periodicityServingCell * subCarrierSpacingCommon * ssb-SubcarrierOffset (0-11) * numTxAnt * numRxAnt * numofBeams (32) * numTXRUs * beamIndex (32) * numAntPorts (64) |
| 2 | Cell bring-up | **O-DU/O-RU** | Verify cell bring-up is successful with the configuration that has been received from SMO.  Verify O-DU sends beam configuration and mandatory cell configuration to O-RU and ensures that O-RU carrier-state is set to ACTIVE and sync-state is set to LOCKED.O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of [24].  Verify O-DU sets the administrative state to UNLOCKED state. |
| 3 | O-DU/O-RU broadcasts SSB beams as per defined periodicity. | **UE ss O-DU/ O-CU** | Verify the O-RU transmit all the 32 beams with a periodicity of 40 ms.  Verify UE selects the strongest SSB beam from 32 beams broadcasted and sends RACH request with PRACH config index corresponding to beam selected. |
| 4 | Attach validation | **UE ss O-DU/ O-CU** | Verify that UE able to attach successfully with above mentioned configuration |
| 5 | End to end data validation | **O-DU/ O-CU a UPF** | Verify end to end data is successful. |

## ORAN.WG8.IOT.035: Verify cell bring up is successful when the parameter Occasion And CB-Preambles per SSB is configured to 1 by SMO for FR1 configuration.

### Test Purpose

The purpose of this test case is to verify cell bring up is successful when the parameter occasion and CB-preambles per SSB is configured to 1 by SMO.

### Reference Requirements

For detailed requirements, refer to the section 11.2.1 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to O-DU.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per test case ORAN.WG8.IOT.017.
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs**: SMO, O-DU, O-CU and O-RU.
* **Testing tools**: Following are required for this test scenario:
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer: used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.4.
* For rest of the MIB and SSB test profiles, refer B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures to verify the successful cell activation when parameter Occasion And CB-Preambles Per SSB is configured to 1 by SMO for non co-located(remote) O-RU and O-DU.

Table 7.36-1: Occasion And CB-Preambles per SSB is configured to 1 by SMO

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | Cell configuration received from SMO to O-DU. | **O-DU ss SMO** | Verify the following configuration is carried between SMO to O-DU-OAM-Agent (O1 interface), O-DU-OAM-Agent to MAC and also containing all the mandatory IEs mentioned in section 11.2.1.1 NR cell configuration, Table 11-6 ,11-7 of ORAN.WG8.AAD [1]   * ssb-PositionsInBurst   + inOneGroup =11111111 * ssb-periodicityServingCell * subCarrierSpacingCommon * ssb-SubcarrierOffset (0-15) * numTxAnt * numRxAnt * numofBeams (8) * numTXRUs (64) * beamIndex (0-8) * numAntPorts (64) * msg1-FDM = one * ssb-perRACH-OccasionAndCB-PreamblesPerSSB = one |
| 2 | Digital beam configuration received from SMO to ODU. | **SMOa O-DU** | Verify that O-DU apply Digital beam weight received from SMO in case of Digital beam forming configuration.   * numDigBeams   + beamIdx = (0-8) * numTXRUs = (0-64)   + digBeamWeightRe   + digBeamWeightIm |
| 3 | Cell bring-up. | **O-DU/O-RU** | Verify cell bring-up is successful with the configuration that has been received from SMO.  Verify O-DU sends beam configuration and mandatory cell configuration to O-RU and ensures that O-RU carrier-state is set to ACTIVE and sync-state is set to LOCKED.O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of [24].  Verify O-DU sets the administrative state to UNLOCKED state. |
| 4 | O-DU/O-RU broadcast SSB beams as per defined periodicity. | **UE ss O-DU/ O-CU** | Verify the O-RU transmit all the 8 beams with a periodicity of 20ms.  Verify UE selects the strongest SSB beam from 8 beams broadcasted and sends RACH request with PRACH config index corresponding to beam selected. |
| 5 | Attach validation | **UE ss O-DU/ O-CU** | Verify that UE able to attach successfully with above mentioned configuration. |
| 6 | End to end data validation | **O-DU/ O-CU a UPF** | Verify end to end data is successful. |

## ORAN.WG8.IOT.036: Verify the successful cell activation when slice specific configuration containing list of slices in the TA per PLMN is sent towards MAC/SCH on the O1 interface.

### Test Purpose

The purpose of this test case is to verify the successful cell activation when slice specific configuration containing list of slices in the TA per PLMN is sent towards MAC/SCH on the O1 interface.

### Reference Requirements

For detailed requirements, refer to the section 11.3 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.[22]
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in
  O-CU.
* O-CU is connected to O-DU.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* O-DU is physically installed. It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per test case ORAN.WG8.IOT.017.
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs**: single O-DU, O-CU and single SMO.
* **Testing tools**: Following are required for this test scenario:
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer: used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.5.

### Test Procedure

The following table describes the test procedures to verify cell activation when slice specific configuration containing list of slices in the TA per PLMN is sent towards MAC/SCH on the O1 interface

Table 7.37-1: Cell activation when slice specific configuration received from SMO for O-DU on O1 interface

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | SMO sends Cell Configuration to O-DU. | **O-DU ss SMO** | Verify the following configuration is carried between SMO to O-DU-OAM-Agent (O1 interface), O-DU-OAM-Agent to MAC and also containing all the mandatory IEs mentioned in section 11.2.1.1, Table 11-2 of [1]   * PLMN Information List   + PLMNid = Valid configured value   + S-NSSAIlist   + 24930   + 24931   + 24932   Verify O-DU sends mandatory cell configuration to O-RU and ensures that O-RU carrier-state is changed to ACTIVE |
| 2 | SMO sends Slice Configuration Request to O-DU | **O-DU ss SMO** | Verify the following configuration is carried between SMO to O-DU-OAM-Agent (O1 interface), O-DU-OAM-Agent to MAC and also containing all the mandatory IEs mentioned in section 11.2.4.2.3, Table 11-22 of [1]   * S-NSSAI = 24930   + RRMPolicyRatio = PRB   + rRMPolicyMaxRatio = 50   + rRMPolicyMinRatio = 30   + rRMPolicyDedicatedRatio = 20 |
| 3 | O-DU sends Slice Configuration Response to SMO | **O-DU a SMO** | Verify O-DU sends response after verifying S-NSSAI should be within slice range and part of slice support list.  Verify O-DU sends the slice configuration response to SMO as per below IEs mentioned in section 11.2.4.3.4 in Section 11.2 of [1]   * Slice Index = 24930 * Response = OK   Slice configuration and prioritization is followed according to the O-RAN specification. |
| 4 | O-DU sends sync-state information and set the operational state in SMO. | **O-DU a SMO** | Verify O-DU shall send the sync-state as LOCKED to SMO. Verify O-DU set the operational state to ENABLED state.  O-DU also ensures that sync-state from O-RU is set to LOCKED. |
| 5 | SMO shall set the administrate state of O-DU. | **O-DU ss SMO** | Verify O-DU shall set the administrative state to UNLOCKED state. |
| 6 | O-DU sends an F1 SETUP REQUEST to establish connectivity between the O-DU and O-CU. | **O-DU a O-CU** | Verify O-DU sends F1 SETUP REQUEST message containing all the mandatory IEs mentioned in section 4.1.5.1.2 of ORAN.WG5.C.1 [19] to the O-CU-CP (Control Unit).  Verify F1 SETUP REQUEST message should contain "TAI Slice Support List" IE for each served PLMNs within "Served Cell Information" as mentioned in section 4.1.5.1.2 of ORAN.WG5.C.1 [19] to the O-CU-CP (Control Unit). |
| 7 | O-CU sends NGAP Setup Request to AMF. | **O-CU a AMF** | Verify the NGAP Setup Request should contain all the mandatory IEs mentioned in the section 9.2.6.1 of 3GPP Specification [20].  Verify NGAP Setup Request message should contain IE "TAI Slice Support List" as mentioned in the section 9.2.6.1 of 3GPP Specification [20]. |
| 8 | O-CU receives NGAP Setup Response from AMF. | **O-CU ss AMF** | Verify AMF sends NGAP Setup Response message containing all the mandatory IEs mentioned in 9.2.6.1 of 3GPP Specification [20].  Verify NGAP Setup Response message should contain "Slice Support List" within "PLMN Support List" as mentioned in 9.2.6.2 of 3GPP Specification [20]. |
| 9 | O-DU receives F1 SETUP RESPONSE from O-CU. | **O-DU ss O-CU** | Verify O-CU sends F1 SETUP RESPONSE message containing all the mandatory IEs mentioned in section 4.1.5.1.2 of ORAN.WG5.C.1 [19] to the O-DU. |
| 10 | Cell Bring-up is initiated at O-CU. | **O-DU ss O-CU** | O-CU sends the F1AP gNB-CU configuration update to O-DU.  F1AP gNB-CU configuration update message should contain all the mandatory IEs mentioned in section 4.1.6.1.2.1 of ORAN.WG5.C.1 [19].  O-CU should add the cell information according to IE Served-Cells-To-Add-List. |
| 11 | O-DU sends the gNB-CU CONFIGURATION UPDATE ACKNOWLEDGE message to O-CU. | **O-DU a O-CU** | Verify O-DU sends the gNB-CU CONFIGURATION UPDATE ACKNOWLEDGE message to O-CU.  F1AP gNB-CU configuration update Ack message should contain all the mandatory IEs mentioned in section 4.1.6.1.2.1 of ORAN.WG5.C.1 [19]. |
| 12 | Activate the cell from the O-DU. | **O-DU a O-CU** | O-DU sends the F1AP gNB-DU configuration update to O-CU.  F1AP gNB-DU configuration update message should contain all the mandatory IEs mentioned in section 4.1.6.1.2.4 of ORAN.WG5.C.1 [19].  F1AP gNB-DU configuration update message should contain "TAI Slice Support List" IE for each served PLMNs within "Served Cell Information" as mentioned in section 4.1.6.1.2.4 of ORAN.WG5.C.1 [19].  O-DU should activate the cell information according to the service-state IE. |
| 13 | O-CU sends the gNB-DU CONFIGURATION UPDATE ACKNOWLEDGE message to O-DU. | **O-DU ss O-CU** | Verify O-CU sends the gNB-DU CONFIGURATION UPDATE ACKNOWLEDGE message to O-DU.  F1AP gNB-DU configuration update Ack message should contain all the mandatory IEs mentioned in section 4.1.6.1.2.4 of ORAN.WG5.C.1 [19]. |
| 14 | Verify the status of the cell. | **O-RU ss O-DU** | Verify O-DU sends cell status as ACTIVE to O-RU.  Verify SMO shows O-CU and O-DU operational and newly added cell is up and RF state of O-RU is active. |

## ORAN.WG8.IOT.037: Verify UE Registration and PDU session establishment procedure with an allowed S-NSSAI.

### Test Purpose

The purpose of this test case is to verify UE Registration and PDU session establishment procedure with an allowed S-NSSAI.

### Reference Requirements

For detailed requirements, refer to the section 11.3 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* The Cell Setup is successful with using configuration received from SMO as per test case ORAN.WG8.IOT.036.
* F1AP connection is successful between O-CU and O-DU.
* The UE has decoded MIB and SIB1.
* RACH procedure is successful.
* The UE has a valid Default Configured S-NSSAI.

### Test Setup and Configuration

* **DUTs:** single O-DU, O-CU and single SMO.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G Core or Core emulator used to terminate UEs (emulator) NAS protocol, and to support NGAP, HTTP2, PFCP protocols.
* Protocol Analyzer is used to record and observe F1AP, NGAP, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.5.
* For details on the MIB and SSB test profiles, see B.2.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table below describes the test steps for Registration procedure with a slice

Table 7.38-1: Slice Registration & PDU Session establishment

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | The UE sends RRCSetupRequest with random ue-identity and establishment cause (refer to the section 5.3.3 in 3GPP 38.331 [8]). | **UE a O-DU/ O-CU** | Verify that O-DU receives the RRC setup Request message from the UE and sends Initial UL RRC message to O-CU with RRC setup request message in RRC container.  Verify all the mandatory IEs of Initial UL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19]. |
| 2 | UE receives RRCsetup message for SRB1 creation. | **UE ss O-DU/ O-CU** | Verify that O-CU sends DL RRC message transfer to O-DU with RRC setup message in the RRC container to establish SRB1.  Verify all the mandatory IEs of DL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-DU sends RRC setup message to UE.  Verify all the mandatory IEs of RRC setup as per section 6.2.2 in 3GPP Specification. [8]. |
| 3 | UE sends RRC setup complete message over SRB1 with Registration Request as NAS payload. | **UE a O-DU/ O-CU** | Verify that O-DU receives the RRC setup complete message with registration request as NAS payload from UE and sends UL RRC message transfer to O-CU with RRC setup complete and Registration Request message in RRC container.  Verify RRCSetupComplete contains s-NSSAI-List for AMF selection.  Verify all the mandatory IEs of UL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-CU sends Initial UE Message to AMF with NAS payload as Registration Request.  Verify that Registration Request message should contain Requested NSSAI IE & Network Slicing Indication IE as per section 8.2.6.1 of 3GPP Specifications. [21]  Verify all the mandatory IEs of Initial UE message as per section 9.2.5.1 of 3GPP Specification [20]. |
| 4 | UE receives NAS Authentication Request message from AMF with authentication parameters required for successfully authenticating the network. | **UE ss O-DU/ O-CU** | Verify that O-CU receives DL NAS Transport message with Authentication request as NAS payload.    Verify that O-CU sends DL RRC Message Transfer to O-DU with NAS Authentication Request in the RRC container.  Verify all the mandatory IEs of DL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-DU sends DL Information Transfer message to UE with NAS Authentication request message.  Verify all the mandatory IEs of DL information transfer message as per section 6.2.2 in 3GPP Specification [8]. |
| 5 | UE sends NAS Authentication response message after successfully authenticating the network. | **UE a O-DU/ O-CU** | Verify that O-DU receives the UL Information Transfer message from UE with NAS Authentication Response message.  Verify that O-DU sends UL RRC Message Transfer to O-CU with NAS Authentication response in RRC container.  Verify all the mandatory IEs of UL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-CU sends UL NAS Transport message to AMF with Authentication Response as NAS payload.  Verify all the mandatory IEs of UL NAS Transport message as per section 9.2.5.3 in 3GPP Specification [20]. |
| 6 | UE receives NAS Security mode command message for integrity protection and ciphering. | **UE ss O-DU/ O-CU** | Verify that O-CU receives DL NAS Transport message with security mode command as NAS payload.  Verify that O-CU sends DL RRC Message Transfer to O-DU with NAS Security mode command in the RRC container  Verify all the mandatory IEs of DL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-DU sends DL Information Transfer message to UE with NAS Security mode command message.  Verify all the mandatory IEs of DL information transfer message as per section 6.2.2 in 3GPP Specification [8]. |
| 7 | UE sends NAS Security mode complete message. This message is integrity protected and ciphered. | **UE a O-DU/ O-CU** | Verify that O-DU receives the UL Information Transfer message from UE with NAS Security mode complete message.  Verify that O-DU sends UL RRC Message Transfer to O-CU with NAS Security mode complete message in RRC container.  Verify all the mandatory IEs of UL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-CU sends UL NAS Transport message to AMF with Security mode complete as NAS payload.  Verify all the mandatory IEs of UL NAS Transport message as per section 9.2.5.3 in 3GPP Specification [20]. |
| 8 | UE receives AS security mode command message. | **UE ss O-DU/ O-CU** | Verify that O-CU receives Initial context setup request or DL NAS Transport from AMF with Registration accept as NAS payload.  Verify all the mandatory IEs as per the section 9.2.2.1 or 9.2.5.2 in 3GPP Specification [20].  Verify Initial Context Setup request mandatorily contains Allowed NSSAI and an S-NSSAI optionally for each PDU Session Resource Setup Request List.  Verify that O-CU sends DL RRC message transfer to O-DU with AS security mode command message in RRC container.  Verify all the mandatory IEs of DL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify the O-DU sends SecurityModeCommand to UE which contains AS integrity and Ciphering Algorithms supported by O-CU.  Verify all the mandatory IEs as per section 6.2.2 in 3GPP Specification [8]. |
| 9 | UE sends AS Security mode complete message. | **UE a O-DU/ O-CU** | Verify in response of previous step, the O-DU receives SecurityModeComplete from UE.  Verify all the mandatory IEs as per section 6.2.2 in 3GPP Specification [8].  Verify that O-DU sends UL RRC message transfer to O-CU which contains AS security mode complete in RRC container.  Verify all the mandatory IEs of UL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19]. |
| 10 | UE receives UE capability Enquiry message. | **UE ss O-DU/ O-CU** | Verify that O-CU receives the UE radio capability check request from AMF to check the compatibility between UE radio capabilities and network configuration.  O-CU can optionally request for the UE capability enquiry to the UE.  Verify that O-CU sends DL RRC message transfer to O-DU which contains UE capability enquiry in RRC container.  Verify all the mandatory IEs of DL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-DU sends UE capability enquiry to UE to check the UE capabilities.  Verify all the mandatory IEs as per section 6.2.2 in 3GPP Specification [8]. |
| 11 | UE sends UE capability information message. | **UE a O-DU/ O-CU** | Verify in response of previous step, the O-DU receives UE capability information from UE.  Verify all the mandatory IEs as per section 6.2.2 in 3GPP Specification [8].  Verify that O-DU sends UL RRC message transfer to O-CU which contains UE capability information in the RRC container.  Verify all the mandatory IEs of UL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-CU sends UE Radio Capability Info Indication message to AMF.  Verify all the mandatory IEs as per section 9.2.13.1 in 3GPP Specification [20]. |
| 12 | UE receives Registration Accept message. | **UE ss O-DU/ O-CU** | Verify that O-CU sends DL RRC message transfer to O-DU which contains Registration Accept in RRC container.  Verify all the mandatory IEs of DL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-DU sends DL Information Transfer message to UE with NAS Registration accept message.  Verify that Registration Accept message should contain Allowed NSSAI IE & Configured NSSAI IE as per section 8.2.7.1 of 3GPP Specifications [21].  Verify all the mandatory IEs of DL information transfer message as per section 6.2.2 in 3GPP Specification [8]. |
| 13 | UE sends Registration complete message. | **UE a O-DU/ O-CU** | Verify that O-DU receives the UL Information Transfer message from UE with NAS Registration complete message.  Verify that O-DU sends UL RRC Message Transfer to O-CU with NAS Registration complete message in RRC container.  Verify all the mandatory IEs of UL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-CU sends Initial context setup response to AMF.  Verify all the mandatory IEs as per section 9.2.2.2 in 3GPP Specification [20].  Verify that O-CU sends UL NAS Transport message to AMF with Registration complete as NAS payload.  Verify all the mandatory IEs of UL NAS Transport message as per section 9.2.5.3 in 3GPP Specification [20]. |
| 14 | The UE sends PDU session Establishment Request with one of the Allowed S-NSSAI received in Registration Accept (refer to the section 8.3.1 in 3GPP Specification [21]). | **UE a O-DU/ O-CU** | Verify that O-DU receives UL information transfer message which contains PDU session establishment request as NAS message.  Verify that O-DU sends UL RRC message transfer to O-CU which contains PDU session establishment request in RRC container.  Verify all the mandatory IEs of UL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].    Verify that O-CU sends Uplink NAS transport with NAS PDU as PDU Session Establishment Request to AMF.  Verify all the mandatory IEs as per section 9.2.5.3 in 3GPP Specification [20].  Verify PDU session establishment request should contain S-NSSAI as per section 8.2.10 of 3GPP Specifications [21]. |
| 15 | UE receives RRC reconfiguration and PDU session establishment accept message. | **UE ss O-DU/ O-CU** | Verify that O-CU receives PDU Session Resource Setup Request from AMF with NAS-PDU as PDU session establishment accept.  Verify all the mandatory IEs as per section 9.2.1.1 in 3GPP Specification [20].  Verify that O-CU sends UE context setup request to O-DU for establishing the DRB.  Verify that UE context setup should contain S-NSSAI within DRB Information as per section 6.1.1.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify all the mandatory IEs of UE context setup request as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-DU sends UE context setup response to O-CU after successfully establishing the DRB.  Verify all the mandatory IEs of UE context setup response as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-CU sends DL RRC message transfer to O-DU with RRC reconfiguration in RRC container.  Verify all the mandatory IEs of DL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-DU sends RRC reconfiguration message to UE which contains PDU session establishment accept as NAS payload. |
| 16 | UE sends RRC reconfiguration complete. | **UE a O-DU/ O-CU** | Verify that O-DU receives RRC reconfiguration complete from UE.  Verify that O-DU sends UL RRC message transfer to O-CU with RRC reconfiguration complete in RRC container.  Verify all the mandatory IEs of UL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-CU sends PDU Session Resource Setup Response to AMF over NG interface.  Verify all the mandatory IEs as per section 9.2.1.2 in 3GPP Specification [20]. |

## ORAN.WG8.IOT.038: Verify downlink data prioritization/scheduling on basis of slice differentiation in-case of each UE with single PDU session per slice.

### Test Purpose

The purpose of this test case is to verify downlink data prioritization/scheduling on basis of slice differentiation as specified by RRM policy to meet the specific Slice Level agreement in-case of each UE with single PDU session per slice.

### Reference Requirements

For detailed requirements, refer to the section 11.3 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Cell Setup is successful with the configuration received from SMO as per test case ORAN.WG8.IOT.036.
* F1AP connection is successful between O-DU and O-CU.
* The UE has decoded MIB and SIB1.
* 2 UEs RACH procedure is successful.
* 2 UEs RRC setup is successful.
* 2 UEs Registration is successful with Allowed S-NSSAIs.
* UE 0 PDU session establishment procedure with Slice #1 is successful.
* UE 1 PDU session establishment procedure with Slice #2 is successful.
* RRM policy successfully configured on Slice #1
* RRMPolicyRatio = PRB
* rRMPolicyMaxRatio = 90
* rRMPolicyMinRatio = 30
* rRMPolicyDedicatedRatio = 30
* RRM policy successfully configured on Slice #2
* RRMPolicyRatio = PRB
* rRMPolicyMaxRatio = 50
* rRMPolicyMinRatio = 40
* rRMPolicyDedicatedRatio = 20
* Slice #2 have higher slice priority than Slice #1. (Implementation specific)

### Test Setup and Configuration

* **DUTs:** single O-DU, O-CU and single SMO.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G Core or Core emulator used to terminate UEs (emulator) NAS protocol, and to support NGAP, HTTP2, PFCP protocols.
* Protocol Analyzer is used to record and observe F1AP, NGAP, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.5.
* For details on the MIB and SSB test profiles, see B.2.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures for downlink data prioritization/scheduling on basis of slice differentiation.

Table 7.39-1: Slice level downlink data prioritization

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | Trigger UDP Data of transfer in Downlink on the 2 UEs with any traffic generator tool or IPERF application. | **O-CU/ O-DU ss UPF** | Verify that O-CU receives DL UDP traffic on the desired Flow on the intended NG-U connection.  O-CU do the mapping of the Flow to the intended DRB which will be done by the SDAP protocol resides in the O-CU and then forward the UDP traffic towards O-DU.    Verify that O-DU applies RRM policies on PRB against each slice.  Verify 30% of PRB is utilized for Slice #1 and resource isolation for Slice #1 is achieved.  Verify 40% of PRB is utilized for Slice #2 and resource isolation for Slice #2 is achieved.  Verify the UE can also achieve max throughput using shared and prioritized resources once dedicated resources are utilized.  Verify the scheduler considers slice priority and schedule the UE on Slice #2 to achieve expected throughput and doesn't follow fair allocation in-case of different slice priorities.  Slice configuration and prioritization is followed according to the O-RAN specification. |
| 2 | Measure throughput on UE. | **UE ss O-DU/ O-CU** | Verify that O-DU received the UDP traffic without any significant drops in packets. |

## ORAN.WG8.IOT.039: Verify downlink data scheduling on basis of QoS flow prioritization when two PDU sessions have equal slice priority.

### Test Purpose

The purpose of this test case is to verify downlink data scheduling on basis of QoS flow prioritization when two PDU sessions have equal slice priority.

### Reference Requirements

For detailed requirements, refer to the section 11.3 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Cell Setup is successful with using configuration received from SMO as per test case ORAN.WG8.IOT.036.
* F1AP connection is successful between O-DU and O-CU.
* The UE has decoded MIB and SIB1.
* RACH procedure is successful.
* RRC setup is successful.
* Registration is successful with Allowed S-NSSAIs.
* PDU session establishment procedure with Slice #1 & Slice #2 is successful.
* RRM policy successfully configured as per test case ORAN.WG8.IOT.038.
* Slice #1 and Slice #2 have equal priority. (Implementation specific)

### Test Setup and Configuration

* **DUTs:** single O-DU, O-CU and single SMO.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G Core or Core emulator used to terminate UEs (emulator) NAS protocol, and to support NGAP, HTTP2, PFCP protocols.
* Protocol Analyzer is used to record and observe F1AP, NGAP, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.5.
* For details on the MIB and SSB test profiles, see B.2.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedure to verify downlink data scheduling on basis of QoS flow prioritization when two PDU sessions have equal slice priority.

Table 7.40-1: Downlink data scheduling on basis of equal slice priority

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | Trigger UDP Data of transfer in Downlink on the 2 QoS Flows with any traffic generator tool or IPERF application. | **O-CU/ O-DU ss UPF** | Verify that O-CU receives DL UDP traffic on the desired Flow on the intended NG-U connection.  O-CU do the mapping of the Flow to the intended DRB which will be done by the SDAP protocol resides in the O-CU and then forward the UDP traffic towards O-DU.    Verify that O-DU applies RRM policies on PRB against each slice.  Verify 30% of PRB is utilized for Slice #1 and resource isolation for Slice #1 is achieved.  Verify 40% of PRB is utilized for Slice #2 and resource isolation for Slice #2 is achieved.  Verify the UE can also achieve max throughput using shared and prioritized resources once dedicated resources are utilized.  Verify as both the slices have equal priority, the scheduler considers QoS level & 5QI level priority associated with the QFI while scheduling the UE.  Slice configuration and prioritization is followed according to the O-RAN specification. |
| 2 | Measure throughput on UE. | **UE ss O-DU/ O-CU** | Verify that O-DU received the UDP traffic without any significant drops in packets. |

## ORAN.WG8.IOT.040: Verify key performance metrics with the sub-counters at S-NSSAI level.

### Test Purpose

The purpose of this test case is to verify key performance metrics with the sub-counters at S-NSSAI level.

### Reference Requirements

For detailed requirements, refer to the section 11.2.7.1 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Cell Setup is successful with using configuration received from SMO as per test case ORAN.WG8.IOT.036.
* F1AP connection is successful between O-DU and O-CU.
* The UE has decoded MIB and SIB1.
* 2 UEs RACH procedure is successful.
* 2 UEs RRC setup is successful.
* 2 UEs Registration is successful with Allowed S-NSSAIs.
* UE 0 PDU session establishment procedure with Slice #1 is successful.
* UE 1 PDU session establishment procedure with Slice #2 is successful.
* RRM policy successfully configured as per test case ORAN.WG8.IOT.038.

### Test Setup and Configuration

* **DUTs:** single O-DU, O-CU and single SMO.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G Core or Core emulator used to terminate UEs (emulator) NAS protocol, and to support NGAP, HTTP2, PFCP protocols.
* Protocol Analyzer is used to record and observe F1AP, NGAP, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.5.
* For details on the MIB and SSB test profiles, see B.2.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures for performance metrics with the sub-counters at S-NSSAI level.

Table 7.41-1: Performance Counters at S-NSSAI level

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | Trigger UDP Data of transfer in Downlink on the 2 UEs with any traffic generator tool or IPERF application. | **O-CU/ O-DU ss UPF** | Verify that O-CU receives DL UDP traffic on the desired Flow on the intended NG-U connection.  O-CU do the mapping of the Flow to the intended DRB which will be done by the SDAP protocol resides in the O-CU and then forward the UDP traffic towards O-DU.    Verify that O-DU applies RRM policies on PRB against each slice.  Verify 30% of PRB is utilized for Slice #1 and resource isolation for Slice #1 is achieved.  Verify 40% of PRB is utilized for Slice #2 and resource isolation for Slice #2 is achieved.  Slice configuration and prioritization is followed according to the O-RAN specification |
| 2 | Measure throughput on UE. | **UE ss O-DU/ O-CU** | Verify that O-DU received the UDP traffic without any significant drops in packets. |
| 3 | O-DU collects the performance counters at slice level and reports it to SMO. | **O-DU a SMO** | Verify the following counters are successfully accumulated per slice and sent towards SMO as mentioned in Annexure A of [19]:  OR.RRU.PrbTotDlDist.BinX.SNSSAI  OR.AveDlCellThroughput.SNSSAI |

## ORAN.WG8.IOT.041: Verify successful slice re-configuration when RRM Policy is updated on the O1 interface.

### Test Purpose

The purpose of this test case is to verify successful slice re-configuration when RRM Policy is updated on the O1 interface for a specific S-NSSAI.

### Reference Requirements

For detailed requirements, refer to the section 11.3 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Cell Setup is successful with using configuration received from SMO as per test case ORAN.WG8.IOT.036.
* F1AP connection is successful between O-DU and O-CU.
* The UE has decoded MIB and SIB1.
* RACH procedure is successful.
* RRC setup is successful.
* Registration is successful with Allowed S-NSSAIs.
* RRM policy successfully configured as per test case ORAN.WG8.IOT.038.

### Test Setup and Configuration

* **DUTs:** single O-DU, O-CU and single SMO.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G Core or Core emulator used to terminate UEs (emulator) NAS protocol, and to support NGAP, HTTP2, PFCP protocols.
* Protocol Analyzer is used to record and observe F1AP, NGAP, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.5.
* For details on the MIB and SSB test profiles, see B.2.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures for successful slice re-configuration when RRM Policy is updated on the O1 interface for a specific S-NSSAI.

Table 7.42-1: Slice Reconfiguration on O1 interface

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | Attach validation | **O-DU** | Verify that UE is able to attach successfully with cell and slice configuration received from SMO |
| 2 | End to end data validation | **O-DU/ O-CU a UPF** | Verify end to end data is successful. |
| 3 | SMO sends Slice Reconfiguration Request to O-DU | **O-DU ss SMO** | Verify SMO reconfigures RRMPolicyRatio attributes when slice SLA is not achieved with the configured dedicated resources.  Verify the following configuration is carried between SMO to O-DU-OAM-Agent (O1 interface), O-DU-OAM-Agent to MAC to reconfigure/update RRMPolicyRatio attributes containing all the mandatory IEs mentioned in section 11.2.4.2.3, Table 11-22 of [1]   * S-NSSAI = 24930   + RMPolicyRatio = PRB   + rRMPolicyMaxRatio = 90   + rRMPolicyMinRatio = 50   + rRMPolicyDedicatedRatio = 20 |
| 4 | O-DU sends Slice Reconfiguration Response to SMO | **O-DU a SMO** | Verify O-DU sends the Slice Reconfiguration Response to SMO as per below IEs supported in Section 11.2 of [1]:   * Slice Index = 24930 * Response = OK |
| 5 | End to end data validation | **UE ssa O-DU/O-CU** | Verify end to end data is successful.  Verify 30% of PRB can now be utilized for Slice #1 as reconfigured by the SMO.  Slice configuration and prioritization is followed according to the O-RAN specification |

## ORAN.WG8.IOT.042: Verify slice reconfiguration failure in-case of incorrect S-NSSAI is updated on the O1 interface.

### Test Purpose

The purpose of this test case is to verify slice reconfiguration failure in-case of incorrect S-NSSAI is updated on the O1 interface.

### Reference Requirements

For detailed requirements, refer to the section 11.3 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Cell Setup is successful with using configuration received from SMO as per test case ORAN.WG8.IOT.036.
* F1AP connection is successful between O-DU and O-CU.
* The UE has decoded MIB and SIB1.
* RACH procedure is successful.
* RRC setup is successful.
* Registration is successful with Allowed S-NSSAIs.
* RRM policy successfully configured as per test case ORAN.WG8.IOT.038.

### Test Setup and Configuration

* **DUTs:** single O-DU, O-CU and single SMO.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G Core or Core emulator used to terminate UEs (emulator) NAS protocol, and to support NGAP, HTTP2, PFCP protocols.
* Protocol Analyzer is used to record and observe F1AP, NGAP, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.5.
* For details on the MIB and SSB test profiles, see B.2.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures for slice reconfiguration failure in-case of incorrect S-NSSAI is updated on the O1 interface.

Table 7.43-1: Slice Reconfiguration on O1 interface

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | Attach validation | **O-DU** | Verify that UE able to attach successfully with cell and slice configuration received from SMO |
| 2 | End to end data validation | **O-DU/ O-CU a UPF** | Verify end to end data is successful. |
| 3 | SMO sends Slice Reconfiguration Request to O-DU | **O-DU ss SMO** | Verify the following configuration is carried between SMO to O-DU-OAM-Agent (O1 interface), O-DU-OAM-Agent to MAC to reconfigure/update RRMPolicyRatio attributes containing all the mandatory IEs mentioned in section 11.2.4.2.3, Table 11-22 of [1]   * S-NSSAI = 17000000 (S-NSSAI invalid)   + RMPolicyRatio = PRB   + rRMPolicyMaxRatio = 50   + rRMPolicyMinRatio = 30   + rRMPolicyDedicatedRatio = 30 |
| 4 | O-DU sends Slice Reconfiguration Response to SMO | **O-DU a SMO** | Verify O-DU sends the Slice Reconfiguration Response to SMO as per below IEs supported in Section 11.2 of [1]   * Slice Index = 24934 * Response = NOK * Error Cause = slice not supported in cell |
| 5 | Verify the status of cell. | **O-DU/O-CU** | Verify SMO shows O-CU and O-DU operational and cell is up and RF state of O-RU is active. |
| 6 | End to end data validation | **O-DU/ O-CU a UPF** | Verify end to end data is successful after slice reconfiguration failure.  Slice configuration and prioritization is followed according to the O-RAN specification |

## ORAN.WG8.IOT.043: Verify cell activation when O-DU is receiving synchronization from external timing source and sync-state is locked.

### Test Purpose

The purpose of this test case is to verify the successful cell activation when O-DU is receiving synchronization from external timing source and O-DU sync-state is locked.

### Reference Requirements

For detailed requirements, refer to the section 7.11 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in
  O-CU.[22]
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to O-DU.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* O-DU is physically installed. It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per test case ORAN.WG8.IOT.017.
* O-DU and O-RU to time synchronize using O-RAN Fronthaul Transport Synchronization profile (LLS-C3) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs**: single O-DU, O-CU and single SMO.
* **Testing tools**: Following are required for this test scenario:
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer: used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Local or remote external time source connected to the O-DU.
* Configuration:
* For details on the test setup refer Annex A - A.7.
* For details on the MIB and SSB test profiles, see B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures to verify the successful cell activation when receiving synchronization from external timing source.

Table 7.44-1: Cell activation when receiving synchronization from external timing source

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | SMO sends O-DU synchronization parameters to be provisioned to the O-DU. | **O-DU ss SMO** | Verify the following parameters are provisioned on O-DU from o-ran-synchronization.yang as given in [27]:  o sync-source = GNSS  o enable = TRUE  o satellite-constellation-list = GPS |
| 2 | O-RU sends sync-status information to O-DU | **O-RU a O-DU** | Verify O-RU is able to achieve time synchronization with GPS.  Verify O-RU shall send the sync-status as LOCKED to O-DU. |
| 3 | O-DU sends sync-state information and set the operational state in SMO. | **O-DU a SMO** | Verify O-DU shall send the sync-state as LOCKED to SMO. Verify O-DU set the operational state to ENABLED state. |
| 4 | SMO shall set the administrate state of O-DU. | **O-DU ss SMO** | Verify O-DU shall set the administrative state to UNLOCKED state. |
| 5 | O-DU sends an F1 SETUP REQUEST to establish connectivity between the O-DU and O-CU. | **O-DU a O-CU** | Verify O-DU sends F1 SETUP REQUEST message containing all the mandatory IEs mentioned in section 4.1.5.1.2 of ORAN.WG5.C.1 [19] to the O-CU-CP (Control Unit). |
| 6 | O-CU sends NGAP Setup Request to AMF. | **O-CU a AMF** | Verify the NGAP Setup Request should contain all the mandatory IEs mentioned in the section 9.2.6.1 of 3GPP Specification [20]. |
| 7 | O-CU receives NGAP Setup Response from AMF. | **O-CU ss AMF** | Verify AMF sends NGAP Setup Response message containing all the mandatory IEs mentioned in 9.2.6.1 of 3GPP Specification [20]. |
| 8 | O-DU receives F1 SETUP RESPONSE from O-CU. | **O-DU ss O-CU** | Verify O-CU sends F1 SETUP RESPONSE message containing all the mandatory IEs mentioned in section 4.1.5.1.2 of ORAN.WG5.C.1 [19] to the O-DU. |
| 9 | Cell Bring-up is initiated at O-CU. | **O-DU ss O-CU** | O-CU sends the F1AP gNB-CU configuration update to O-DU.  F1AP gNB-CU configuration update message should contain all the mandatory IEs mentioned in section 4.1.6.1.2.1 of ORAN.WG5.C.1 [19].  O-CU should add the cell information according to IE Served-Cells-To-Add-List. |
| 10 | O-DU sends the gNB-CU CONFIGURATION UPDATE ACKNOWLEDGE message to O-CU. | **O-DU a O-CU** | Verify O-DU sends the gNB-CU CONFIGURATION UPDATE ACKNOWLEDGE message to O-CU.  F1AP gNB-CU configuration update Ack message should contain all the mandatory IEs mentioned in section 4.1.6.1.2.1 of ORAN.WG5.C.1 [19]. |
| 11 | Activate the cell from the O-DU. | **O-DU a O-CU** | O-DU sends the F1AP gNB-DU configuration update to O-CU.  F1AP gNB-DU configuration update message should contain all the mandatory IEs mentioned in section 4.1.6.1.2.4 of ORAN.WG5.C.1 [19].  O-DU should activate the cell information according to the service-state IE. |
| 12 | O-CU sends the gNB-DU CONFIGURATION UPDATE ACKNOWLEDGE message to O-CU. | **O-DU ss O-CU** | Verify O-CU sends the gNB-DU CONFIGURATION UPDATE ACKNOWLEDGE message to O-DU.  F1AP gNB-DU configuration update Ack message should contain all the mandatory IEs mentioned in section 4.1.6.1.2.4 of ORAN.WG5.C.1 [19]. |
| 13 | Verify the status of the cell. | **O-DU/O-CU** | Verify SMO shows O-CU and O-DU operational and newly added cell is up and RF state of O-RU is ACTIVE.  Verify O-RU sync-state is set to LOCKED state and available for CU-plane communication, |
| 14 | Attach validation | **UE ssa O-DU/O-CU** | Verify that UE able to attach successfully. |
| 15 | End to end data validation | **O-DU/ O-CU ssa UPF** | Verify end to end data is successful. |

## ORAN.WG8.IOT.044: Verify cell activation when O-DU is receiving synchronization from external timing source and sync-state is not locked.

### Test Purpose

The purpose of this test case is to verify gNB-CU Configuration Update procedure when O-DU is receiving synchronization from external timing source and O-DU sync-state is not locked.

### Reference Requirements

For detailed requirements, refer to the section 7.11 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in
  O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* O-DU is physically installed. It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per test case ORAN.WG8.IOT.017.
* O-DU and O-RU to time synchronize using O-RAN Fronthaul Transport Synchronization profile (LLS-C3) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs**: single O-DU, O-CU and single SMO.
* **Testing tools**: Following are required for this test scenario:
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer: used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Local or remote external time source connected to the O-DU.
* Configuration:
* For details on the test setup refer Annex A - A.7.
* For details on the MIB and SSB test profiles, see B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures to verify gNB-DU Configuration Update procedure when O-DU is receiving synchronization from external timing source and O-DU sync-state is not locked.

Table 7.45-1: Cell activation failure when failed to receive synchronization from external timing source

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | SMO provisions O-DU synchronization parameters have been provisioned to the O-DU. | **O-DU ss SMO** | Verify the following parameters are provisioned on O-DU from o-ran-synchronization.yang as given in [27]:  o sync-source = GNSS  o enable = TRUE  o satellite-constellation-list = GPS |
| 2 | Time Synchronization at O-RU is not achieved | **O-RU a O-DU** | Verify O-RU shall send the sync-status as FREERUN to O-DU. |
| 3 | O-DU sends sync-state information and set the operational state in SMO. | **O-DU a SMO** | Verify O-DU shall send the sync-state as FREERUN to SMO. Verify O-DU set the operational state to ENABLED state. |
| 4 | SMO shall set the administrate state of O-DU. | **O-DU ss SMO** | Verify O-DU shall set the administrative state to UNLOCKED state. |
| 5 | O-DU doesn't initiate Cell Bring-up procedure. | **O-DU/O-CU** | Verify O-DU doesn't initiate F1 setup request procedure. |

## ORAN.WG8.IOT.045: Verify cell activation when O-DU is receiving synchronization from external timing source and sync-state transits from locked to holdover and freerun.

### Test Purpose

The purpose of this test case is to verify gNB-DU Configuration Update procedure when O-DU is receiving synchronization from external timing source and O-DU sync-state transits from locked to holdover to freerun.

### Reference Requirements

For detailed requirements, refer to the section 7.11 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in
  O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* O-DU is physically installed. It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per test case ORAN.WG8.IOT.017.
* O-DU and O-RU to time synchronize using O-RAN Fronthaul Transport Synchronization profile (LLS-C3) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs**: single O-DU and single SMO.
* **Testing tools**: Following are required for this test scenario:
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer: used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Local or remote external time source connected to the O-DU.
* Configuration:
* For details on the test setup refer Annex A - A.7.
* For details on the MIB and SSB test profiles, see B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures to verify cell activation when O-DU is receiving synchronization from external timing source and sync-state transits from locked to holdover and freerun.

Table 7.46-1: Cell activation failure when fail to receive synchronization from external timing source and sync-state transits from locked to holdover and freerun

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | SMO provisions O-DU synchronization parameters have been provisioned to the O-DU. | **O-DU ss SMO** | Verify the following parameters are provisioned on O-DU from o-ran-synchronization.yang as given in [27]:  o sync-source = GNSS  o enable = TRUE  o satellite-constellation-list = GPS |
| 2 | O-RU sends sync-status information to O-DU | **O-RU a O-DU** | Verify O-RU is able to achieve time synchronization with GPS.  Verify O-RU shall send the sync-status as LOCKED to O-DU. |
| 3 | O-DU sends sync-state information and set the operational state in SMO. | **O-DU a SMO** | Verify O-DU shall send the sync-state as LOCKED to SMO. Verify O-DU set the operational state to ENABLED state. |
| 4 | SMO shall set the administrate state of O-DU. | **O-DU ss SMO** | Verify O-DU shall set the administrative state to UNLOCKED state. |
| 5 | O-DU sends an F1 SETUP REQUEST to establish connectivity between the O-DU and O-CU. | **O-DU a O-CU** | Verify O-DU sends F1 SETUP REQUEST message containing all the mandatory IEs mentioned in section 4.1.5.1.2 of ORAN.WG5.C.1 [19] to the O-CU-CP (Control Unit). |
| 6 | O-CU sends NGAP Setup Request to AMF. | **O-CU a AMF** | Verify the NGAP Setup Request should contain all the mandatory IEs mentioned in the section 9.2.6.1 of 3GPP Specification [20]. |
| 7 | O-CU receives NGAP Setup Response from AMF. | **O-CU ss AMF** | Verify AMF sends NGAP Setup Response message containing all the mandatory IEs mentioned in 9.2.6.1 of 3GPP Specification [20]. |
| 8 | O-DU receives F1 SETUP RESPONSE from O-CU. | **O-DU ss O-CU** | Verify O-CU sends F1 SETUP RESPONSE message containing all the mandatory IEs mentioned in section 4.1.5.1.2 of ORAN.WG5.C.1 [19] to the O-DU. |
| 9 | Cell Bring-up is initiated at O-CU. | **O-DU ss O-CU** | O-CU sends the F1AP gNB-CU configuration update to O-DU.  F1AP gNB-CU configuration update message should contain all the mandatory IEs mentioned in section 4.1.6.1.2.1 of ORAN.WG5.C.1 [19].  O-CU should add the cell information according to IE Served-Cells-To-Add-List. |
| 10 | O-DU sends the gNB-CU CONFIGURATION UPDATE ACKNOWLEDGE message to O-CU. | **O-DU a O-CU** | Verify O-DU sends the gNB-CU CONFIGURATION UPDATE ACKNOWLEDGE message to O-CU.  F1AP gNB-CU configuration update Ack message should contain all the mandatory IEs mentioned in section 4.1.6.1.2.1 of ORAN.WG5.C.1 [19]. |
| 11 | Activate the cell from the O-DU. | **O-DU a O-CU** | O-DU sends the F1AP gNB-DU configuration update to O-CU.  F1AP gNB-DU configuration update message should contain all the mandatory IEs mentioned in section 4.1.6.1.2.4 of ORAN.WG5.C.1 [19].  O-DU should activate the cell information according to the service-state IE. |
| 12 | O-CU sends the gNB-DU CONFIGURATION UPDATE ACKNOWLEDGE message to O-DU. | **O-DU ss O-CU** | Verify O-CU sends the gNB-DU CONFIGURATION UPDATE ACKNOWLEDGE message to O-DU.  F1AP gNB-DU configuration update Ack message should contain all the mandatory IEs mentioned in section 4.1.6.1.2.4 of ORAN.WG5.C.1 [19]. |
| 13 | Verify the status of the cell. | **O-DU/O-CU** | Verify SMO shows O-CU and O-DU operational and newly added cell is up and RF state of O-RU is ACTIVE.  Verify O-RU sync-state is set to LOCKED state and available for CU-plane communication, |
| 14 | O-DU sends sync-state information to SMO when external time synchronization is lost. | **O-DU a SMO** | Verify O-DU shall send the sync-state as HOLDOVER to SMO. |
| 15 | Verify the status of the cell. | **O-DU/O-CU** | Verify SMO shows O-CU and O-DU operational and newly added cell is up and RF state of O-RU is ACTIVE.  Verify O-RU sync-state is set to LOCKED state and available for CU-plane communication, |
| 16 | Holdover mode expires at O-DU. | **O-DU** | Verify O-DU shall send the sync-state as FREERUN to SMO. |
| 17 | O-DU sends the gNB-DU CONFIGURATION UPDATE message to O-CU | **O-DU a O-CU** | Verify O-DU sends the gNB-CU CONFIGURATION UPDATE ACKNOWLEDGE message to O-CU.  Verify that as O-DU sync state was not locked, it shall not activate any cells from Cells to be Activated List Item IE.  Verify that O-DU shall report back to O-CU Cells failed to be activated list IE.  F1AP gNB-CU configuration update Ack message should contain all the mandatory IEs mentioned in section 4.1.6.1.2.4 of ORAN.WG5.C.1 [19].  O-DU sends the F1AP gNB-DU configuration update to O-CU.  F1AP gNB-DU configuration update message should contain all the mandatory IEs mentioned in section 4.1.6.1.2.4 of ORAN.WG5.C.1 [19].  O-DU should send the cell information according to the service-state IE i.e. Out-Of-Service. |
| 18 | O-CU sends the gNB-DU CONFIGURATION UPDATE ACKNOWLEDGE message to O-DU. | **O-DU ss O-CU** | Verify O-CU sends the gNB-DU CONFIGURATION UPDATE ACKNOWLEDGE message to O-DU.  F1AP gNB-DU configuration update Ack message should contain all the mandatory IEs mentioned in section 4.1.6.1.2.4 of ORAN.WG5.C.1 [19]. |

## ORAN.WG8.IOT.046: Verify cell activation when O-DU successfully receive synchronization from secondary source when sync fails with the primary source.

### Test Purpose

The purpose of this test case is to verify the successful cell activation when O-DU successfully receive synchronization from secondary source when sync fails with the primary source.

### Reference Requirements

For detailed requirements, refer to the section 7.11 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in
  O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* O-DU is physically installed. It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per test case ORAN.WG8.IOT.017.
* O-DU and O-RU to time synchronize using O-RAN Fronthaul Transport Synchronization profile (LLS-C3) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs**: single O-DU and single SMO.
* **Testing tools**: Following are required for this test scenario:
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer: used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Local or remote external time source connected to the O-DU.
* Configuration:
* For details on the test setup refer Annex A - A.7.
* For details on the MIB and SSB test profiles, see B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures to verify cell activation when O-DU is receiving synchronization from secondary timing source when synchronization with primary source fails.

Table 7.47-1: Cell activation when receiving synchronization from secondary timing source

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | SMO provisions O-DU synchronization parameters have been provisioned to the O-DU. | **O-DU ss SMO** | Verify the following parameters are provisioned on O-DU from o-ran-synchronization.yang as given in [27]:   * sync-config * sync-priority-config * sync-source = GNSS * sync-source = PTP * enable = TRUE * satellite-constellation-list = GPS |
| 2 | Time Synchronization with GNSS fails and O-DU retries the time Sync with secondary source PTP | **O-DU / O-RU** | Verify O-RU is able to achieve time synchronization with PTP.  Verify O-DU is able to achieve time synchronization with PTP. |
| 3 | O-RU sends sync-status information to O-DU | **O-RU a O-DU** | Verify O-RU shall send the sync-status as LOCKED to O-DU. |
| 4 | O-DU sends sync-state information and set the operational state in SMO. | **O-DU a SMO** | Verify O-DU shall send the sync-state as LOCKED to SMO. Verify O-DU set the operational state to ENABLED state. |
| 5 | SMO shall set the administrate state of O-DU. | **O-DU ss SMO** | Verify O-DU shall set the administrative state to UNLOCKED state. |
| 6 | O-DU sends an F1 SETUP REQUEST to establish connectivity between the O-DU and O-CU. | **O-DU a O-CU** | Verify O-DU sends F1 SETUP REQUEST message containing all the mandatory IEs mentioned in section 4.1.5.1.2 of ORAN.WG5.C.1 [19] to the O-CU-CP (Control Unit). |
| 7 | O-CU sends NGAP Setup Request to AMF. | **O-CU a AMF** | Verify the NGAP Setup Request should contain all the mandatory IEs mentioned in the section 9.2.6.1 of 3GPP Specification [20]. |
| 8 | O-CU receives NGAP Setup Response from AMF. | **O-CU ss AMF** | Verify AMF sends NGAP Setup Response message containing all the mandatory IEs mentioned in 9.2.6.1 of 3GPP Specification [20]. |
| 9 | O-DU receives F1 SETUP RESPONSE from O-CU. | **O-DU ss O-CU** | Verify O-CU sends F1 SETUP RESPONSE message containing all the mandatory IEs mentioned in section 4.1.5.1.2 of ORAN.WG5.C.1 [19] to the O-DU. |
| 10 | Cell Bring-up is initiated at O-CU. | **O-DU ss O-CU** | O-CU sends the F1AP gNB-CU configuration update to O-DU.  F1AP gNB-CU configuration update message should contain all the mandatory IEs mentioned in section 4.1.6.1.2.1 of ORAN.WG5.C.1 [19].  O-CU should add the cell information according to IE Served-Cells-To-Add-List. |
| 11 | O-DU sends the gNB-CU CONFIGURATION UPDATE ACKNOWLEDGE message to O-CU. | **O-DU a O-CU** | Verify O-DU sends the gNB-CU CONFIGURATION UPDATE ACKNOWLEDGE message to O-CU.  F1AP gNB-CU configuration update Ack message should contain all the mandatory IEs mentioned in section 4.1.6.1.2.1 of ORAN.WG5.C.1 [19]. |
| 12 | Activate the cell from the O-DU. | **O-DU a O-CU** | O-DU sends the F1AP gNB-DU configuration update to O-CU.  F1AP gNB-DU configuration update message should contain all the mandatory IEs mentioned in section 4.1.6.1.2.4 of ORAN.WG5.C.1 [19].  O-DU should activate the cell information according to the service-state IE. |
| 13 | O-CU sends the gNB-DU CONFIGURATION UPDATE ACKNOWLEDGE message to O-CU. | **O-DU ss O-CU** | Verify O-CU sends the gNB-DU CONFIGURATION UPDATE ACKNOWLEDGE message to O-DU.  F1AP gNB-DU configuration update Ack message should contain all the mandatory IEs mentioned in section 4.1.6.1.2.4 of ORAN.WG5.C.1 [19]. |
| 14 | Verify the status of the cell. | **O-DU/O-CU** | Verify SMO shows O-CU and O-DU operational and newly added cell is up and RF state of O-RU is ACTIVE.  Verify O-RU sync-state is set to LOCKED state and available for CU-plane communication, |
| 15 | Attach validation | **UE ss O-DU/ O-CU** | Verify that UE able to attach successfully. |
| 16 | End to end data validation | **O-DU/ O-CU a UPF** | Verify end to end data is successful. |

## ORAN.WG8.IOT.047: Verify O-CU and O-DU provisions HO configuration sent over O1 interface by SMO for inter-O-DU handover within an O-CU

### Test Purpose

The purpose of this test case is to verify O-CU and O-DU provisions HO configuration sent over O1 interface by SMO for inter-O-DU handover within an O-CU

### Reference Requirement

For detailed requirements, refer to the section 10.2.2 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to O-DU's.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per test case ORAN.WG8.IOT.017.
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs:** SMO**,** O-DU's, O-CU and O-RU
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or Core emulator used to terminate UEs (emulator) NAS protocol, and to support NGAP, HTTP2, PFCP protocols.
* Protocol Analyzer: used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.6.
* For details on the MIB and SSB test profiles, see B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures to verify O-CU and O-DU provisions HO configuration sent over O1 interface by SMO for inter-O-DU handover within an O-CU.

Table 7.48-1: Verify O-CU and O-DU provisions HO configuration sent over O1 interface by SMO for inter-O-DU handover within an O-CU

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | SMO sends cell configuration to both O-DU and O-CU | **O-DU ss SMO,**  **O-CU ss SMO** | Verify SMO sends below mandatory configuration configured for handover towards O-CU  cellIndividualOffset  o rsrpOffsetSSB  o rsrqOffsetSSB  o sinrOffsetSSB  o rsrpOffsetCSI-RS  o rsrqOffsetCSI-RS  o sinrOffsetCSI-RS  o isHOAllowed  o nRFreqRelationRef  o adjacentNRCellRef |
| 2 | Verify both O-CU and O-DU provisions HO configuration sent over O1 interface by SMO | **O-DU ss SMO,**  **O-CU ss SMO** | Verify provisioning is successful in both O-CU and O-DU |
| 3 | Verify both O-CU and O-DU comes and cell bring up successful | **O-DU/O-RU/O-CU** | Verify cell bring-up is successful with the configuration that has been received from SMO.  Verify O-DU sends mandatory cell configuration to O-RU and ensures that O-RU carrier-state is set to ACTIVE and sync-state is set to LOCKED.  Verify O-DU sets the administrative state to UNLOCKED state. |

## ORAN.WG8.IOT.048: Verify successful Intra frequency measurement based inter-O-DU handover within an O-CU

### Test Purpose

The purpose of this test case is to verify successful intra frequency measurement based inter-O-DU handover within an O-CU

### Reference Requirement

For detailed requirements, refer to the section 10.2.2 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to O-DU's.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per test case ORAN.WG8.IOT.017.
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs:** SMO**,** O-DU's, O-CU and O-RU
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or Core emulator used to terminate UEs (emulator) NAS protocol, and to support NGAP, HTTP2, PFCP protocols.
* Protocol Analyzer: used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.6.
* For details on the MIB and SSB test profiles, see B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures to verify successful intra frequency measurement based inter-O-DU handover within an O-CU.

Table 7.49-1: Verify successful intra frequency measurement based inter-O-DU handover within an O-CU

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | SMO sends cell configuration to O-DU. | **O-DU ss SMO** | Verify SMO sends below mandatory IEs configured for inter O-DU HO within an O-CU towards O-CU  cellIndividualOffset  o rsrpOffsetSSB  o rsrqOffsetSSB  o sinrOffsetSSB  o rsrpOffsetCSI-RS  o rsrqOffsetCSI-RS  o sinrOffsetCSI-RS  isHOAllowed  nRFreqRelationRef  adjacentNRCellRef |
| 2 | Verify cell bring up successful for both O-DU | **O-DU/O-RU** | Verify cell bring-up is successful with the configuration that has been received from SMO.  Verify each O-DU sends mandatory cell configuration to O-RU and ensures that O-RU carrier-state is set to ACTIVE and sync-state is set to LOCKED.  O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of [24].  Verify O-DU sets the administrative state to UNLOCKED state. |
| 3 | Trigger registration procedure for UE with source O-DU | **UE ssa O-DU/O-CU** | Verify registration procedure is successful.  O-CU allocates MeasConfig containing following in RRC Reconfiguration  . MeasObjectToAddModList  . ReportConfigToAddModList   . MeasIdToAddModList |
| 4 | Trigger UDP/TCP data transfer | **UE ssa O-DU/O-CU** | Verify end to end data transfer is successful |
| 5 | Move UE from source cell towards target cell so that UE triggers Measurement Report when criteria for defined event within ReportConfig met | **UE a O-DU** | Verify UE reports configured event on defined criteria within MeasConfig containing following  . MeasId  . measResultNeighCells  -MeasResultListNR  -physCellId  -measResult |
| 6 | Verify source O-DU forwards received measurement report towards O-CU in UL RRC Message transfer | **O-DU a O-CU** | Verify source O-DU includes received measurement report within RRC Container. O-CU validates received measurement report of neighbor cell and if neighbor cell satisfies defined criteria for triggering HO at O-CU then HO towards target O-DU gets triggered. |
| 7 | Verify O-CU sends UE Context Modification Request towards source O-DU | **O-DU ss O-CU** | Verify O-CU have included IE GNB-DU Configuration Query set to True |
| 8 | Verify source O-DU sends UE Context Modification Response towards O-CU | **O-DU a O-CU** | Verify source O-DU includes IE DU To CU RRC Information, Full Configuration and Full Configuration value set to True |
| 9 | Verify O-CU sends UE Context Setup Request towards target O-DU | **O-DU ss O-CU** | Verify O-CU includes following in UE Context Setup Request  . List of DRB to be setup list   . Handover Preparation Information within   CUtoDURRCInformation |
| 10 | Verify target O-DU sends UE Context Setup Response towards O-CU | **O-DU a O-CU** | Verify target O-DU includes following in UE Context Setup Response  . List of DRB successfully admitted  . DUtoCURRCInformation |
| 11 | Verify O-CU sends UE Context Modification Request towards source O-DU | **O-DU ss O-CU** | Verify O-CU includes following in UE Context Modification Request  . RRC-Container for sending RRC Reconfiguration towards UE  . Transmission Action Indicator set to Stop |
| 12 | Verify source O-DU forwards received RRC Reconfiguration towards UE | **UE a O-DU** | Verify UE received following in RRC Reconfiguration  . ReconfigurationWithSync  - spCellConfigCommon  - newUE-Identity  - t304  - rach-ConfigDedicated |
| 13 | Verify source O-DU sends UE Context Modification Response towards O-CU | **O-DU a O-CU** | Verify O-CU receives UE Context Modification Response successfully |
| 14 | Verify UE triggers CFRA RACH based on configuration received in RRC Reconfiguration towards target O-DU | **UE a O-DU** | Verify CFRA RACH process is successful within defined timer t304 towards target O-DU |
| 15 | Verify UE sends RRC Reconfiguration Complete towards target O-DU | **UE a O-DU** | Verify target O-DU receives RRC Reconfiguration Complete successfully |
| 16 | Verify target O-DU forwards received RRC Reconfiguration Complete in UL RRC Message Transfer towards O-CU | **UE a O-DU** | Verify O-CU receives UL RRC Message transfer over F1 interface successfully from target O-DU |
| 17 | Verify data transfer towards UE successful through target O-DU | **UE ssa O-DU/O-CU** | Verify end to end data transfer is successful |
| 18 | Verify O-CU sends UE Context Release Command towards source O-DU | **O-DU ss O-CU** | Verify UE Context Release command contains cause as below  Cause: radioNetwork  radioNetwork: normal-release |
| s19 | Verify source O-DU sends UE Context Release Complete towards O-CU | **O-DU a O-CU** | Verify O-CU receives UE Context Release Command successfully from source O-DU |

## ORAN.WG8.IOT.049: Verify successful inter-O-DU handover within an O-CU with multiple PDU session (GBR, Non-GBR, Delay critical GBR bearer) and each PDU session having single QFI established

### Test Purpose

The purpose of this test case is to verify successful inter-O-DU handover within an O-CU with multiple PDU session (GBR, Non-GBR, Delay critical GBR bearer) and each PDU session having single QFI established.

### Reference Requirement

For detailed requirements, refer to the section 10.2.2 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to O-DU's.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per test case ORAN.WG8.IOT.017.
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs:** SMO**,** O-DU's, O-CU and O-RU
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or Core emulator used to terminate UEs (emulator) NAS protocol, and to support NGAP, HTTP2, PFCP protocols.
* Protocol Analyzer: used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.6.
* For details on the MIB and SSB test profiles, see B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures to verify successful inter-O-DU handover within an O-CU with multiple PDU session (GBR, Non-GBR, Delay critical GBR bearer) and each PDU session having single QFI established.

Table 7.50-1: Verify successful inter-O-DU handover within an O-CU with multiple PDU session (GBR, Non-GBR, Delay critical GBR bearer) and each PDU session having single QFI established

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | SMO sends cell configuration to O-DU. | **O-DU ss SMO** | Verify SMO sends below mandatory IEs configured for inter O-DU HO within an O-CU towards O-CU  cellIndividualOffset  o rsrpOffsetSSB  o rsrqOffsetSSB  o sinrOffsetSSB  o rsrpOffsetCSI-RS  o rsrqOffsetCSI-RS  o sinrOffsetCSI-RS  isHOAllowed  nRFreqRelationRef  adjacentNRCellRef |
| 2 | Verify cell bring up successful for both O-DU | **O-DU/O-RU** | Verify cell bring-up is successful with the configuration that has been received from SMO.  Verify each O-DU sends mandatory cell configuration to O-RU and ensures that O-RU carrier-state is set to ACTIVE and sync-state is set to LOCKED.  O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of [24].  Verify O-DU sets the administrative state to UNLOCKED state. |
| 3 | Trigger registration procedure for UE with source O-DU and establish multiple PDU session with single QFI | **UE ssa O-DU/O-CU** | Verify registration procedure is successful.  O-CU allocates MeasConfig containing following in RRC Reconfiguration  . MeasObjectToAddModList  . ReportConfigToAddModList  . MeasIdToAddModList Verify multi PDU sessions are established as per requirement for GBR, Non-GBR and Delay critical GBR bearer |
| 4 | Trigger UDP/TCP data transfer | **UE ssa O-DU/O-CU** | Verify end to end data transfer is successful across all PDU session |
| 5 | Move UE from source cell towards target cell so that UE triggers Measurement Report when criteria for defined event within ReportConfig met | **UE a O-DU** | Verify UE reports configured event on defined criteria within MeasConfig containing following  . MeasId  . measResultNeighCells  -MeasResultListNR  -physCellId  -measResult |
| 6 | Verify source O-DU forwards received Measurement Report towards O-CU in UL RRC Message transfer | **O-DU a O-CU** | Verify source O-DU includes received measurement report within RRC Container. O-CU validates received measurement report of neighbor cell and if neighbor cell satisfies defined criteria for triggering HO at O-CU then HO towards target O-DU gets triggered. |
| 7 | Verify O-CU sends UE Context Modification Request towards source O-DU | **O-DU ss O-CU** | Verify O-CU have included IE GNB-DU Configuration Query set to True |
| 8 | Verify source O-DU sends UE Context Modification Response towards O-CU | **O-DU a O-CU** | Verify source O-DU includes IE DU To CU RRC Information, Full Configuration and Full Configuration value set to True |
| 9 | Verify O-CU sends UE Context Setup Request towards target O-DU | **O-DU ss O-CU** | Verify O-CU includes following in UE Context Setup Request  . List of DRB to be setup list   . Handover Preparation Information within   CUtoDURRCInformation |
| 10 | Verify target O-DU sends UE Context Setup Response towards O-CU | **O-DU a O-CU** | Verify target O-DU includes following in UE Context Setup Response  . List of DRB successfully admitted  . DUtoCURRCInformation |
| 11 | Verify O-CU sends UE Context Modification Request towards source O-DU | **O-DU ss O-CU** | Verify O-CU includes following in UE Context Modification Request  . RRC-Container for sending RRC Reconfiguration towards UE  . Transmission Action Indicator set to Stop |
| 12 | Verify source O-DU forwards received RRC Reconfiguration towards UE | **UE a O-DU** | Verify UE received following in RRC Reconfiguration  . ReconfigurationWithSync  - spCellConfigCommon  - newUE-Identity  - t304  - rach-ConfigDedicated |
| 13 | Verify source O-DU sends UE Context Modification Response towards O-CU | **O-DU a O-CU** | Verify O-CU receives UE Context Modification Response successfully |
| 14 | Verify UE triggers CFRA RACH based on configuration received in RRC Reconfiguration RACH towards target O-DU | **UE a O-DU** | Verify CFRA RACH process is successful within defined timer t304 towards target O-DU |
| 15 | Verify UE sends RRC Reconfiguration Complete towards target O-DU | **UE a O-DU** | Verify target O-DU receives RRC Reconfiguration Complete successfully |
| 16 | Verify target O-DU forwards received RRC Reconfiguration Complete in UL RRC Message Transfer towards O-CU | **UE a O-DU** | Verify O-CU receives UL RRC Message transfer over F1 interface successfully from target O-DU |
| 17 | Verify data transfer towards UE successful through target O-DU | **UE ssa O-DU/O-CU** | Verify end to end data transfer is successful across all PDU session in target O-DU |
| 18 | Verify O-CU sends UE Context Release Command towards source O-DU | **O-DU ss O-CU** | Verify UE Context Release command contains cause as below  Cause: radioNetwork  radioNetwork: normal-release |
| 19 | Verify source O-DU sends UE Context Release Complete towards O-CU | **O-DU a O-CU** | Verify O-CU receives UE Context Release Command successfully from source O-DU |

## ORAN.WG8.IOT.050: Verify successful inter-O-DU handover within an O-CU with multiple PDU session (GBR, Non-GBR, Delay critical GBR bearer) and each PDU session having multiple QFI established where few PDU sessions are admitted at target DU

### Test Purpose

The purpose of this test case is to verify successful inter-O-DU handover within an O-CU with multiple PDU session (GBR, Non-GBR, Delay critical GBR bearer) and each PDU session having multiple QFI established where few PDU sessions are admitted at target DU.

### Reference Requirement

For detailed requirements, refer to the section 10.2.2 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to O-DU's.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per test case ORAN.WG8.IOT.017.
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs:** SMO**,** O-DU's, O-CU and O-RU
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or Core emulator used to terminate UEs (emulator) NAS protocol, and to support NGAP, HTTP2, PFCP protocols.
* Protocol Analyzer: used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.6.
* For details on the MIB and SSB test profiles, see B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures to verify successful inter-O-DU handover within an O-CU with multiple PDU session (GBR, Non-GBR, Delay critical GBR bearer) and each PDU session having multiple QFI established where few PDU sessions are admitted at target DU.

Table 7.51-1: Verify successful inter-O-DU handover within an O-CU with multiple PDU session (GBR, Non-GBR, Delay critical GBR bearer) and each PDU session having multiple QFI established where few PDU sessions are admitted at target DU

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | SMO sends cell configuration to O-DU. | **O-DU ss SMO** | Verify SMO sends below mandatory IEs configured for inter O-DU HO within an O-CU towards O-CU  cellIndividualOffset  o rsrpOffsetSSB  o rsrqOffsetSSB  o sinrOffsetSSB  o rsrpOffsetCSI-RS  o rsrqOffsetCSI-RS  o sinrOffsetCSI-RS  isHOAllowed  nRFreqRelationRef  adjacentNRCellRef |
| 2 | Verify cell bring up successful for both O-DU | **O-DU/O-RU** | Verify cell bring-up is successful with the configuration that has been received from SMO.  Verify each O-DU sends mandatory cell configuration to O-RU and ensures that O-RU carrier-state is set to ACTIVE and sync-state is set to LOCKED.  O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of [24].  Verify O-DU sets the administrative state to UNLOCKED state. |
| 3 | Trigger registration procedure for UE with source O-DU and establish multiple PDU session with multiple QFI | **UE ssa O-DU/O-CU** | Verify registration procedure is successful.  O-CU allocates MeasConfig containing following in RRC Reconfiguration  . MeasObjectToAddModList  . ReportConfigToAddModList  . MeasIdToAddModList Verify multi PDU sessions are established as per requirement for GBR, Non-GBR and Delay critical GBR bearer |
| 4 | Trigger UDP/TCP data transfer | **UE ssa O-DU/O-CU** | Verify end to end data transfer is successful across all PDU session |
| 5 | Move UE from source cell towards target cell so that UE triggers Measurement Report when criteria for defined event within ReportConfig met | **UE a O-DU** | Verify UE reports configured event on defined criteria within MeasConfig containing following  . MeasId  . measResultNeighCells  -MeasResultListNR  -physCellId  -measResult |
| 6 | Verify O-DU forwards received Measurement Report towards O-CU in UL RRC Message transfer | **O-DU a O-CU** | Verify source O-DU includes received measurement report within RRC Container. O-CU validates received measurement report of neighbor cell and if neighbor cell satisfies defined criteria for triggering HO at O-CU then HO towards target O-DU gets triggered. |
| 7 | Verify O-CU sends UE Context Modification Request towards source O-DU | **O-DU ss O-CU** | Verify O-CU have included IE GNB-DU Configuration Query set to True |
| 8 | Verify source O-DU sends UE Context Modification Response towards O-CU | **O-DU a O-CU** | Verify source O-DU includes IE DU To CU RRC Information, Full Configuration and Full Configuration value set to True |
| 9 | Verify O-CU sends UE Context Setup Request towards target O-DU | **O-DU ss O-CU** | Verify O-CU includes following in UE Context Setup Request  . List of DRB to be setup list   . Handover Preparation Information within   CUtoDURRCInformation |
| 10 | Verify target O-DU sends UE Context Setup Response towards O-CU | **O-DU a O-CU** | Verify target O-DU includes following in UE Context Setup Response  . List of DRB successfully admit  . List of DRB failed to admit  . DUtoCURRCInformation |
| 11 | Verify O-CU sends UE Context Modification Request towards source O-DU | **O-DU ss O-CU** | Verify O-CU includes following in UE Context Modification Request  . RRC-Container for sending RRC Reconfiguration towards UE  . Transmission Action Indicator set to Stop |
| 12 | Verify source O-DU forwards received RRC Reconfiguration towards UE | **UE a O-DU** | Verify UE received following in RRC Reconfiguration  . ReconfigurationWithSync  - spCellConfigCommon  - newUE-Identity  - t304  - rach-ConfigDedicated |
| 13 | Verify source O-DU sends UE Context Modification Response towards O-CU | **O-DU a O-CU** | Verify O-CU receives UE Context Modification Response successfully |
| 14 | Verify UE triggers CFRA RACH based on configuration received in RRC Reconfiguration RACH towards target O-DU | **UE a O-DU** | Verify CFRA RACH process is successful within defined timer t304 towards target O-DU |
| 15 | Verify UE sends RRC Reconfiguration Complete towards target O-DU | **UE a O-DU** | Verify target O-DU receives RRC Reconfiguration Complete successfully |
| 16 | Verify target O-DU forwards received RRC Reconfiguration Complete in UL RRC Message Transfer towards O-CU | **UE a O-DU** | Verify O-CU receives UL RRC Message transfer over F1 interface successfully from target O-DU |
| 17 | Verify data transfer towards UE successful through target O-DU | **UE ssa O-DU/O-CU** | Verify end to end data transfer is successful for those PDU Session/QFIs which was successfully handed over to target O-DU |
| 18 | Verify O-CU sends UE Context Release Command towards source O-DU | **O-DU ss O-CU** | Verify UE Context Release command contains cause as below  Cause: radioNetwork  radioNetwork: normal-release |
| 19 | Verify source O-DU sends UE Context Release Complete towards O-CU | **O-DU a O-CU** | Verify O-CU receives UE Context Release Command successfully from source O-DU |

## ORAN.WG8.IOT.051: Verify successful inter frequency measurement based inter-O-DU handover within an O-CU

### Test Purpose

The purpose of this test case is to verify successful inter frequency measurement based inter-O-DU handover within an O-CU.

### Reference Requirement

For detailed requirements, refer to the section 10.2.2 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to O-DU's.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per test case ORAN.WG8.IOT.017.
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs:** SMO**,** O-DU's, O-CU and O-RU
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or Core emulator used to terminate UEs (emulator) NAS protocol, and to support NGAP, HTTP2, PFCP protocols.
* Protocol Analyzer: used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.6.
* For details on the MIB and SSB test profiles, see B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures to verify successful inter frequency measurement based inter-O-DU handover within an O-CU.

Table 7.52-1: Verify successful inter frequency measurement based inter-O-DU handover within an O-CU

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | SMO sends cell configuration to O-DU. | **O-DU ss SMO** | Verify SMO sends below mandatory IEs configured for inter O-DU HO within an O-CU towards O-CU  cellIndividualOffset  o rsrpOffsetSSB  o rsrqOffsetSSB  o sinrOffsetSSB  o rsrpOffsetCSI-RS  o rsrqOffsetCSI-RS  o sinrOffsetCSI-RS  isHOAllowed  nRFreqRelationRef  adjacentNRCellRef |
| 2 | Verify cell bring up successful for both O-DU with different frequency | **O-DU/O-RU** | Verify cell bring-up is successful with the configuration that has been received from SMO.  Verify each O-DU sends mandatory cell configuration to O-RU and ensures that O-RU carrier-state is set to ACTIVE and sync-state is set to LOCKED.  O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of [24].  Verify O-DU sets the administrative state to UNLOCKED state. |
| 3 | Trigger registration procedure for UE with source O-DU | **UE ssa O-DU/O-CU** | Verify registration procedure is successful.  O-CU allocates MeasConfig containing following in RRC Reconfiguration  . MeasObjectToAddModList  . ReportConfigToAddModList  . MeasIdToAddModList  . measGapConfig |
| 4 | Trigger UDP/TCP data transfer | **UE ssa O-DU/O-CU** | Verify end to end data transfer is successful |
| 5 | Move UE from source cell towards target cell so that UE triggers Measurement Report when criteria for defined event within ReportConfig met | **UE a O-DU** | Verify UE reports configured event within MeasConfig containing following measured during Measurement gap  . MeasId  . measResultNeighCells  -MeasResultListNR  -physCellId  -measResult |
| 6 | Verify O-DU forwards received Measurement Report towards O-CU in UL RRC Message transfer | **O-DU a O-CU** | Verify source O-DU includes received measurement report within RRC Container. O-CU validates received measurement report of neighbor cell and if neighbor cell satisfies defined criteria for triggering HO at O-CU then HO towards target O-DU gets triggered. |
| 7 | Verify O-CU sends UE Context Modification Request towards source O-DU | **O-DU ss O-CU** | Verify O-CU have included IE GNB-DU Configuration Query set to True |
| 8 | Verify source O-DU sends UE Context Modification Response towards O-CU | **O-DU a O-CU** | Verify source O-DU includes IE DU To CU RRC Information, Full Configuration and Full Configuration value set to True |
| 9 | Verify O-CU sends UE Context Setup Request towards target O-DU | **O-DU ss O-CU** | Verify O-CU includes following in UE Context Setup Request  . List of DRB to be setup list   . Handover Preparation Information within   CUtoDURRCInformation |
| 10 | Verify target O-DU sends UE Context Setup Response towards O-CU | **O-DU a O-CU** | Verify target O-DU includes following in UE Context Setup Response  . List of DRB successfully admitted  . DUtoCURRCInformation |
| 11 | Verify O-CU sends UE Context Modification Request towards source O-DU | **O-DU ss O-CU** | Verify O-CU includes following in UE Context Modification Request  . RRC-Container for sending RRC Reconfiguration towards UE  . Transmission Action Indicator set to Stop |
| 12 | Verify source O-DU forwards received RRC Reconfiguration towards UE | **UE a O-DU** | Verify UE received following in RRC Reconfiguration  . ReconfigurationWithSync  - spCellConfigCommon  - newUE-Identity  - t304  - rach-ConfigDedicated |
| 13 | Verify source O-DU sends UE Context Modification Response towards O-CU | **O-DU a O-CU** | Verify O-CU receives UE Context Modification Response successfully |
| 14 | Verify UE triggers CFRA RACH based on configuration received in RRC Reconfiguration RACH towards target O-DU | **UE a O-DU** | Verify CFRA RACH process is successful within defined timer t304 towards target O-DU |
| 15 | Verify UE sends RRC Reconfiguration Complete towards target O-DU | **UE a O-DU** | Verify target O-DU receives RRC Reconfiguration Complete successfully |
| 16 | Verify target O-DU forwards received RRC Reconfiguration Complete in UL RRC Message Transfer towards O-CU | **UE a O-DU** | Verify O-CU receives UL RRC Message transfer over F1 interface successfully from target O-DU |
| 17 | Verify data transfer towards UE successful through target O-DU | **UE ssa O-DU/O-CU** | Verify end to end data transfer is successful |
| 18 | Verify O-CU sends UE Context Release Command towards source O-DU | **O-DU ss O-CU** | Verify UE Context Release command contains cause as below  Cause: radioNetwork  radioNetwork: normal-release |
| 19 | Verify source O-DU sends UE Context Release Complete towards O-CU | **O-DU a O-CU** | Verify O-CU receives UE Context Release Command successfully from source O-DU |

## ORAN.WG8.IOT.052: Verify HO preparation failure at target O-DU during inter-O-DU handover within an O-CU

### Test Purpose

The purpose of this test case is to verify HO preparation failure at target O-DU during inter-O-DU handover within an O-CU.

### Reference Requirement

For detailed requirements, refer to the section 10.2.2 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to O-DU's.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per test case ORAN.WG8.IOT.017.
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs:** SMO, O-DU's, O-CU and O-RU
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or Core emulator used to terminate UEs (emulator) NAS protocol, and to support NGAP, HTTP2, PFCP protocols.
* Protocol Analyzer: used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.6.
* For details on the MIB and SSB test profiles, see B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures to verify HO preparation failure at target O-DU during inter-O-DU handover within an O-CU.

Table 7.53-1: Verify HO preparation failure at target O-DU during inter-O-DU handover within an O-CU

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | SMO sends cell configuration to O-DU. | **O-DU ss SMO** | Verify SMO sends below mandatory IEs configured for inter O-DU HO within an O-CU towards O-CU  cellIndividualOffset  o rsrpOffsetSSB  o rsrqOffsetSSB  o sinrOffsetSSB  o rsrpOffsetCSI-RS  o rsrqOffsetCSI-RS  o sinrOffsetCSI-RS  isHOAllowed  nRFreqRelationRef  adjacentNRCellRef |
| 2 | Verify cell bring up successful for both O-DU | **O-DU/O-RU** | Verify cell bring-up is successful with the configuration that has been received from SMO.  Verify each O-DU sends mandatory cell configuration to O-RU and ensures that O-RU carrier-state is set to ACTIVE and sync-state is set to LOCKED.  O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of [24].  Verify O-DU sets the administrative state to UNLOCKED state. |
| 3 | Trigger registration procedure for UE with Source O-DU | **UE ssa O-DU/O-CU** | Verify registration procedure is successful  O-CU allocates MeasConfig containing following in RRC Reconfiguration  . MeasObjectToAddModList  . ReportConfigToAddModList  . MeasIdToAddModList |
| 4 | Trigger UDP/TCP data transfer | **UE ssa O-DU/O-CU** | Verify end to end data transfer is successful |
| 5 | Move UE from source cell towards target cell so that UE triggers Measurement Report when criteria for defined event within ReportConfig met | **UE a O-DU** | Verify UE reports configured event on defined criteria within MeasConfig containing following  . MeasId  . measResultNeighCells  -MeasResultListNR  -physCellId  -measResult |
| 6 | Verify O-DU forwards received Measurement Report towards O-CU in UL RRC Message transfer | **O-DU a O-CU** | Verify source O-DU includes received measurement report within RRC Container. O-CU validates received measurement report of neighbor cell and if neighbor cell satisfies defined criteria for triggering HO at O-CU then HO towards target O-DU gets triggered. |
| 7 | Verify O-CU sends UE Context Modification Request towards source O-DU | **O-DU ss O-CU** | Verify O-CU have included IE GNB-DU Configuration Query set to True |
| 8 | Verify source O-DU sends UE Context Modification Response towards O-CU | **O-DU a O-CU** | Verify source O-DU includes IE DU To CU RRC Information, Full Configuration and Full Configuration value set to True |
| 9 | Verify O-CU sends UE Context Setup Request towards target O-DU | **O-DU ss O-CU** | Verify O-CU includes following in UE Context Setup Request  . List of DRB to be setup list   . Handover Preparation Information within   CUtoDURRCInformation |
| 10 | Verify target O-DU sends UE Context Setup Failure towards O-CU as cell is fully loaded | **O-DU a O-CU** | Verify target O-DU includes appropriate cause in UE Context Setup Failure towards O-CU |

## ORAN.WG8.IOT.053: Verify RRC Re-establishment received at O-CU when HO execution fails during inter-O-DU handover within an O-CU

### Test Purpose

The purpose of this test case is to verify RRC Re-establishment received at O-CU when HO execution fails during inter-O-DU handover within an O-CU.

### Reference Requirement

For detailed requirements, refer to the section 10.2.2 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to O-DU's.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per test case ORAN.WG8.IOT.017.
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs:** SMO**,** O-DU's, O-CU and O-RU
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or Core emulator used to terminate UEs (emulator) NAS protocol, and to support NGAP, HTTP2, PFCP protocols.
* Protocol Analyzer: used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.6.
* For details on the MIB and SSB test profiles, see B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures to verify RRC Re-establishment received at O-CU when HO execution fails during inter-O-DU handover within an O-CU.

Table 7.54-1: Procedure to verify RRC Re-establishment received at O-CU when HO execution fails during inter-O-DU handover within an O-CU

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | SMO sends cell configuration to O-DU. | **O-DU ss SMO** | Verify SMO sends below mandatory IEs configured for inter O-DU HO within an O-CU towards O-CU  cellIndividualOffset   * rsrpOffsetSSB * rsrqOffsetSSB * sinrOffsetSSB * rsrpOffsetCSI-RS * rsrqOffsetCSI-RS * sinrOffsetCSI-RS * isHOAllowed * nRFreqRelationRef * adjacentNRCellRef |
| 2 | Verify cell bring up successful for both O-DU | **O-DU/O-RU** | Verify cell bring-up is successful with the configuration that has been received from SMO.  Verify each O-DU sends mandatory cell configuration to O-RU and ensures that O-RU carrier-state is set to ACTIVE and sync-state is set to LOCKED.  O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of [24].  Verify O-DU sets the administrative state to UNLOCKED state. |
| 3 | Trigger registration procedure for UE with source O-DU | **UE ssa O-DU/O-CU** | Verify registration procedure is successful.O-CU allocates MeasConfig containing following within RRC Reconfiguration  . MeasObjectToAddModList  . ReportConfigToAddModList  . MeasIdToAddModList |
| 4 | Trigger UDP/TCP data transfer | **UE ssa O-DU/O-CU** | Verify end to end data transfer is successful |
| 5 | Move UE from source cell towards target cell so that UE triggers Measurement Report when criteria for defined event within ReportConfig met | **UE a O-DU** | Verify UE reports configured event on defined criteria within MeasConfig containing following  . MeasId  . measResultNeighCells  -MeasResultListNR  -physCellId  -measResult |
| 6 | Verify O-DU forwards received Measurement Report towards O-CU in UL RRC Message transfer | **O-DU a O-CU** | Verify source O-DU includes received measurement report within RRC Container. O-CU validates received measurement report of neighbor cell and if neighbor cell satisfies defined criteria for triggering HO at O-CU then HO towards target O-DU gets triggered. |
| 7 | Verify O-CU sends UE Context Modification Request towards source O-DU | **O-DU ss O-CU** | Verify O-CU have included IE GNB-DU Configuration Query set to True |
| 8 | Verify source O-DU sends UE Context Modification Response towards O-CU | **O-DU a O-CU** | Verify source O-DU includes IE DU To CU RRC Information, Full Configuration and Full Configuration value set to True |
| 9 | Verify O-CU sends UE Context Setup Request towards target O-DU | **O-DU ss O-CU** | Verify O-CU includes following in UE Context Setup Request  . List of DRB to be setup list   . Handover preparation Information within   CUtoDURRCInformation |
| 10 | Verify target O-DU sends UE Context Setup Response towards O-CU | **O-DU a O-CU** | Verify target O-DU includes following in UE Context Setup Response  . List of DRB successfully admitted  . DUtoCURRCInformation |
| 11 | Verify O-CU sends UE Context Modification Request towards source O-DU | **O-DU ss O-CU** | Verify O-CU includes following in UE Context Modification Request  . RRC-Container for sending RRC Reconfiguration towards UE  . Transmission Action Indicator set to Stop |
| 12 | Verify source O-DU forwards received RRC Reconfiguration towards UE | **UE a O-DU** | Verify UE received following in RRC Reconfiguration  . ReconfigurationWithSync  - spCellConfigCommon  - newUE-Identity  - t304  - rach-ConfigDedicated |
| 13 | Verify source O-DU sends UE Context Modification Response towards O-CU | **O-DU a O-CU** | Verify O-CU receives UE Context Modification Response successfully |
| 14 | RACH process towards target cell gets failed so UE trigger's RRC Re-establishment Request towards source O-DU due to Handover Failure | **UE a O-DU** | Verify RRC Re-establishment Request contains following   . C-RNTI  . Physical cell id  . MAC-I  . Re-establishment cause |
| 15 | Verify source O-DU forwards received RRC Re-establishment Request towards O-CU in Initial UL RRC Message Transfer | **O-DU a O-CU** | Verify O-CU receives RRC Re-establishment Request successfully |
| 16 | Verify O-CU sends RRC Re-establishment request towards source O-DU in DL RRC Message Transfer | **O-DU ss O-CU** | Verify Source O-DU receives DL RRC Message transfer successfully |
| 17 | Verify source O-DU forwards received RRC Re-establishment towards UE | **UE ss O-DU** | Verify source O-DU sends RRC Re-establishment towards UE |
| 18 | Verify UE sends RRC Re-establishment complete towards O-DU | **UE a O-DU** | Verify O-DU receives RRC Re-establishment complete |
| 19 | Verify source O-DU sends received RRC Re-establishment complete towards O-CU in UL RRC Message transfer | **O-DU a O-CU** | Verify O-CU receives RRC Re-establishment complete successfully from source O-DU |
| 20 | Verify O-CU sends UE Context Modification Request towards source O-DU | **O-DU ss O-CU** | Verify O-CU have included IE GNB-DU Configuration Query set to True |
| 21 | Verify source O-DU sends UE Context Modification Response towards O-CU | **O-DU a O-CU** | Verify source O-DU includes IE DU To CU RRC Information, Full Configuration and Full Configuration value set to True |
| 22 | Verify O-CU sends RRC Reconfiguration towards source O-DU within DL RRC Message transfer | **O-DU ss O-CU** | Verify Source O-DU receives DL RRC Message transfer successfully |
| 23 | Verify source O-DU forwards RRC Reconfiguration towards UE | **UE ss O-DU** | Verify UE Receives RRC Reconfiguration successfully |
| 24 | Verify UE sends RRC Reconfiguration Complete towards source O-DU | **UE a O-DU** | Verify source O-DU receives RRC Reconfiguration Complete successfully |
| 25 | Verify source O-DU sends received RRC Reconfiguration towards O-CU in UL RRC message transfer | **O-DU a O-CU** | Verify O-CU successfully received RRC Reconfiguration Complete |
| 26 | Verify target O-DU triggers UE Context Release Request after timer t304 expiry | **O-DU a O-CU** | As no RACH is received at target O-DU so timer t304 will expire and target O-DU will send UE Context Release Request towards O-CU. Verify O-CU receives UE Context Release Request successfully |
| 27 | Verify O-CU sends UE Context Release Command towards target O-DU | **O-DU ss O-CU** | Verify target O-DU receives UE Context Release Command and clears UE context successfully |
| 28 | Verify target O-DU sends UE Context Release Complete towards O-CU | **O-DU a O-CU** | Verify O-CU receives UE Context Release Complete successfully |

## ORAN.WG8.IOT.054: Verify beam failure detection and recovery using SSB for detection as well as recovery with DRX disabled and 64 beams for FR2 configuration.

### Test Purpose

The purpose of this test case is to verify detection of beam failure using radio link monitoring configuration and recovery of the same using beam failure recovery configuration. Few parameters from both these configurations for beam failure detection and recovery are provided by SMO to O-DU, and these are configured to UE through RRC message.

### Reference Requirements

For detailed requirements, refer to the section 11.2.4.2.5, 11.2.4.2.6 and 11.2.5.1.11 in ORAN-WG8.AAD [1].

### Initial Condition

* Following are the preconditions for this test.
* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to O-DU.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per test case ORAN.WG8.IOT.017.
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs:** SMO, O-DU, O-CU and O-RU.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.4.
* For rest of the MIB and SSB test profiles, refer B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures for beam failure detection and recovery using SSB for FR2 when DRX is disabled.

Table 7.55-1: Beam failure detection and recovery using SSB for FR2

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | Cell configuration with beamforming and beam failure information received from SMO to O-DU | **O-DU ss SMO** | Verify the following configuration is received from SMO to O-DU-OAM-Agent (O1 interface) and O-DU-OAM-Agent to MAC:  Beamforming configuration:   * ssb-PositionsInBurst   + groupPresence = 11111111   + inOneGroup =11111111 * ssb-periodicityServingCell * subCarrierSpacingCommon * ssb-SubcarrierOffset (0-11) * numTxAnt * numRxAnt * numofBeams (64) * numTXRUs (64) * beamIndex (64) * beamType * beamAzimuth * beamTilt * beamHorizWidth * beamVertWidth * coverageShape * digitalTilt * digitalAzimuth * numAntPorts (64) * numLayers   Beam failure configuration:   * beamFailureDetectionTimer * beamFailureInstanceMaxCount * powerControlOffsetSS * rsrp-ThresholdSSB * beamFailureRecoveryTimer * rlmInSyncOutOfSyncThreshold |
| 2 | Cell configuration with beamforming information received from O-DU to O-RU | **O-RU ss O-DU** | Verify O-DU sends the beamforming configuration through file download request.  Verify O-RU downloads the file and applies the configuration and the state of O-RU is changed to INACTIVE. |
| 3 | Cell configuration update response received from O-RU to O-DU | **O-RUa O-DU** | Verify O-RU sends a notification for the result of the download process as successfully downloaded once the download is successful.  Verify once the O-RU applies new configuration, the state of O-RU is changed to ACTIVE. |
| 4 | Cell bring up | **O-DU/O-RU** | Verify cell bring-up is successful with the new configuration received from SMO.  O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of [24].  Verify O-DU sets the administrative state to UNLOCKED state. |
| 5 | Attach validation | **UE ssa O-DU/O-CU** | Verify UE attaches successfully.  Verify RadioLinkMonitoringConfig (detectionResource SSB) and BeamFailureRecoveryConfig (candidateBeamRSList SSB with preamble index) are sent to the UE in RRC message. |
| 6 | End to end data validation | **UE ssa O-DU/ O-CU ssa UPF** | Verify end to end data is successful |
| 7 | Move the UE from Cell Center to Cell Edge | **UE ssa O-DU** | The RF signal gets degraded and BLER level goes beyond rlmInSyncOutOfSyncThreshold (Qout for out of sync) [Table 8.1.1.1 of 38.133 [30]].  Verify UE detects beam failure and it starts beam recovery procedure.  Verify UE selects the beam with highest rsrp-ThresholdSSB from candidateBeamRSList (provided in BeamFailureRecoveryConfig) and sends contention free RACH (or contention based in case the rsrp-ThresholdSSB is not met).  Verify that, beam failure recovery is successful, and end to end data continues after beam recovery. |

## ORAN.WG8.IOT.055: Verify beam failure detection and recovery using SSB for detection as well as recovery with DRX disabled and 8 beams for FR1 configuration.

### Test Purpose

The purpose of this test case is to verify detection of beam failure using radio link monitoring configuration and recovery of the same using beam failure recovery configuration. Few parameters from both these configurations for beam failure detection and recovery are provided by SMO to O-DU, and these are configured to UE through RRC message.

### Reference Requirements

For detailed requirements, refer to the section 11.2.4.2.5, 11.2.4.2.6 and 11.2.5.1.11 in ORAN-WG8.AAD [1].

### Initial Condition

* Following are the preconditions for this test.
* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to O-DU.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per test case ORAN.WG8.IOT.017.
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs:** SMO, O-DU, O-CU and O-RU.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.4.
* For rest of the MIB and SSB test profiles, refer B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures for beam failure detection and recovery using SSB for FR1 when DRX is disabled.

Table 7.56-1: Beam failure detection and recovery using SSB for FR1

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | Cell configuration with beamforming and beam failure information received from SMO to O-DU | **O-DU ss SMO** | Verify the following configuration is received from SMO to O-DU-OAM-Agent (O1 interface) and O-DU-OAM-Agent to MAC:  Beamforming configuration:   * ssb-PositionsInBurst * inOneGroup =11111111 * ssb-periodicityServingCell * subCarrierSpacingCommon * ssb-SubcarrierOffset * numTxAnt * numRxAnt * numofBeams (8) * numTXRUs (8) * beamIndex (8) * beamType * beamAzimuth * beamTilt * beamHorizWidth * beamVertWidth * coverageShape * digitalTilt * digitalAzimuth * numAntPorts (8) * numLayers   Beam failure configuration:   * beamFailureDetectionTimer * beamFailureInstanceMaxCount * powerControlOffsetSS * rsrp-ThresholdSSB * beamFailureRecoveryTimer * rlmInSyncOutOfSyncThreshold |
| 2 | Cell configuration with beamforming information received from O-DU to O-RU | **O-RU ss O-DU** | Verify O-DU sends the beamforming configuration through file download request.  Verify O-RU downloads the file and applies the configuration, and the state of O-RU is changed to INACTIVE. |
| 3 | Cell configuration update Response received from O-RU to O-DU | **O-RUa O-DU** | Verify O-RU sends a notification for the result of the download process as successfully downloaded once the download is successful.  Verify once the O-RU applies new configuration, the state of O-RU is changed to ACTIVE. |
| 4 | Cell bring up | **O-DU/O-RU** | Verify cell bring-up is successful with the configuration received from SMO.  O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of [24].  Verify O-DU sets the administrative state to UNLOCKED state. |
| 5 | Attach validation | **UE ssa O-DU/O-CU** | Verify UE attaches successfully.  Verify RadioLinkMonitoringConfig (detectionResource SSB) and BeamFailureRecoveryConfig (candidateBeamRSList SSB with preamble index) are sent to the UE in RRC message. |
| 6 | End to end data validation | **UE ssa O-DU/ O-CU ssa UPF** | Verify end to end data is successful |
| 7 | Move the UE From Cell Center to Cell Edge | **UE ssa O-DU** | The RF signal gets degraded and BLER level goes beyond rlmInSyncOutOfSyncThreshold (Qout for out of sync) [Table 8.1.1.1 of 38.133 [30]].  Verify UE detects beam failure, and it starts beam recovery procedure.  Verify UE selects the beam with highest rsrp-ThresholdSSB from candidateBeamRSList (provided in BeamFailureRecoveryConfig) and sends contention free RACH (or contention based in case the rsrp-ThresholdSSB is not met).  Verify that, beam failure recovery is successful, and end to end data continues after beam recovery. |

## ORAN.WG8.IOT.056: Verify beam failure detection and recovery using SSB for detection as well as recovery with DRX enabled and 8 beams for FR1 configuration.

### Test Purpose

The purpose of this test case is to verify detection of beam failure using radio link monitoring configuration and recovery of the same using beam failure recovery configuration. Few parameters from both these configurations for beam failure detection and recovery are provided by SMO to O-DU, and these are configured to UE through RRC message.

### Reference Requirements

For detailed requirements, refer to the section 11.2.4.2.5, 11.2.4.2.6 and 11.2.5.1.11 in ORAN-WG8.AAD [1].

### Initial Condition

* Following are the preconditions for this test.
* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to O-DU.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per test case ORAN.WG8.IOT.017.
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs:** SMO, O-DU, O-CU and O-RU.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.4.
* For rest of the MIB and SSB test profiles, refer B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures for beam failure detection and recovery when using SSB for FR1 when DRX is enabled.

Table 7.57-1: Beam failure detection and recovery using SSB for FR1 with DRX enabled

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | Cell configuration with beamforming and beam failure information received from SMO to O-DU | **O-DU ss SMO** | Verify the following configuration is received from SMO to O-DU-OAM-Agent (O1 interface) and O-DU-OAM-Agent to MAC:  Beamformin configuration:   * ssb-PositionsInBurst   + inOneGroup =11111111 * ssb-periodicityServingCell * subCarrierSpacingCommon * ssb-SubcarrierOffset * numTxAnt * numRxAnt * numofBeams (8) * numTXRUs (8) * beamIndex (8) * beamType * beamAzimuth * beamTilt * beamHorizWidth * beamVertWidth * coverageShape * digitalTilt * digitalAzimuth * numAntPorts (8) * numLayers   Beam failure configuration:   * beamFailureDetectionTimer * beamFailureInstanceMaxCount * powerControlOffsetSS * rsrp-ThresholdSSB * beamFailureRecoveryTimer * rlmInSyncOutOfSyncThreshold |
| 2 | Cell configuration with beamforming information received from O-DU to O-RU | **O-RU ss O-DU** | Verify O-DU sends the beamforming configuration through file download request.  Verify O-RU downloads the file and applies the configuration and the state of O-RU is changed to INACTIVE. |
| 3 | Cell configuration update Response is sent from O-RU to O-DU | **O-RUa O-DU** | Verify O-RU sends a notification for the result of the download process as successfully downloaded once the download is successful.  Verify once the O-RU applies new configuration, the state of O-RU is changed to ACTIVE. |
| 4 | Cell configuration with DRX information received from SMO to O-DU | **O-DU ss SMO** | Verify below configuration IE's are received from SMO to O-DU-OAM-Agent (O1 interface) and O-DU-OAM-Agent to MAC:   * drx-on-duration-timer * drx-inactivity-timer * drx-harq-rtt-timer-dl * drx-harq-rtt-timer-ul * drx-retransmission-timer-dl * drx-retransmission-timer-ul * drx-long-cycle * drx-short-cycle * drx-short-cycle-timer * Refer O-RAN WG5 specification(o-ran\_3gpp-nr-nrm-gnbdufunction.yang) [29]. |
| 5 | Cell bring up | **O-DU/O-RU** | Verify cell bring-up is successful with the configuration received from SMO.  O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of [24].  Verify O-DU sets the administrative state to UNLOCKED state. |
| 6 | Attach validation | **UE ssa O-DU/O-CU** | Verify UE attaches successfully.  Verify RadioLinkMonitoringConfig (detectionResource SSB) and BeamFailureRecoveryConfig (candidateBeamRSList SSB with preamble index) are sent to the UE in RRC message.  Verify that drx config is received by UE in RRC message. |
| 7 | End to end data validation | **UE ssa O-DU/ O-CU ssa UPF** | Verify end to end data is successful |
| 8 | Move the UE From Cell Center to Cell Edge | **UE ssa O-DU** | The RF signal gets degraded and BLER level goes beyond rlmInSyncOutOfSyncThreshold (Qout for out of sync) [Table 8.1.1.1 of 38.133 [30]].  Verify UE detects beam failure and it starts beam recovery procedure.  Verify UE selects the beam with power level more than rsrp-ThresholdSSB from candidateBeamRSList (provided in BeamFailureRecoveryConfig) and sends contention free RACH (or contention based in case the rsrp-ThresholdSSB is not met).  Verify that, beam failure recovery is successful, and end to end data continues after beam recovery. |

## ORAN.WG8.IOT.057: Verify beam failure detection and recovery using CSI-RS for detection as well as recovery with DRX disabled and 32 beams for FR2 configuration.

### Test Purpose

The purpose of this test case is to verify detection of beam failure using radio link monitoring configuration and recovery of the same using beam failure recovery configuration. Few parameters from both these configurations for beam failure detection and recovery are provided by SMO to O-DU, and these are configured to UE through RRC message.

### Reference Requirements

For detailed requirements, refer to the section 11.2.4.2.5, 11.2.4.2.6 and 11.2.5.1.11 in ORAN-WG8.AAD [1].

### Initial Condition

* Following are the preconditions for this test.
* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to O-DU.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per test case ORAN.WG8.IOT.017.
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs:** SMO, O-DU, O-CU and O-RU.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.4.
* For rest of the MIB and SSB test profiles, refer B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures for beam failure detection and recovery when using CSI-RS when DRX is disabled and 32 beams are configured.

Table 7.58-1: Beam failure detection and recovery using CSI-RS for FR2

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | Cell configuration with beamforming and beam failure information received from SMO to O-DU | **O-DU ss SMO** | Verify the following configuration is received form SMO to O-DU-OAM-Agent (O1 interface) and O-DU-OAM-Agent to MAC:  Beamforming configuration:   * ssb-PositionsInBurst   + groupPresence = 11111111   + inOneGroup =10101010 * ssb-periodicityServingCell * subCarrierSpacingCommon * ssb-SubcarrierOffset * numTxAnt * numRxAnt * numofBeams (64) * numTXRUs (64) * beamIndex (64) * beamType * beamAzimuth * beamTilt * beamHorizWidth * beamVertWidth * coverageShape * digitalTilt * digitalAzimuth * numAntPorts (64) * numLayers   Beam failure configuration:   * beamFailureDetectionTimer * beamFailureInstanceMaxCount * powerControlOffsetSS * rsrp-ThresholdSSB * beamFailureRecoveryTimer * rlmInSyncOutOfSyncThreshold |
| 2 | Cell configuration with beamforming information received from O-DU to O-RU | **O-RU ss O-DU** | Verify O-DU sends the beamforming configuration through file download request.  Verify O-RU downloads the file and applies the configuration and the state of O-RU is changed to INACTIVE. |
| 3 | Cell configuration update response sent from O-RU to O-DU | **O-RUa O-DU** | Verify O-RU sends a notification for the result of the download process as successfully downloaded once the download is successful.  Verify once the O-RU applies new configuration, the state of O-RU is changed to ACTIVE. |
| 5 | Cell bring up | **O-DU/O-RU** | Verify cell bring-up is successful with the configuration received from SMO.  O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of [24].  Verify O-DU sets the administrative state to UNLOCKED state. |
| 6 | Attach validation | **UE ssa O-DU/O-CU** | Verify UE attaches successfully.  Verify NZP-CSI-RS-Resource is included under the csi-measConfig in RRC message.  Verify RadioLinkMonitoringConfig (detectionResource CSI-RS) and BeamFailureRecoveryConfig (candidateBeamRSList CSI-RS with preamble index) are sent to the UE in RRC message. |
| 7 | End to end data validation | **UE ssa O-DU/ O-CU ssa UPF** | Verify end to end data is successful |
| 8 | Move the UE from Cell Center to Cell Edge | **UE ssa O-DU** | The RF signal gets degraded and BLER level goes beyond rlmInSyncOutOfSyncThreshold (Qout for out of sync) [Table 8.1.1.1 of 38.133 [30]].  Verify UE detects beam failure and it starts beam recovery procedure.  Verify UE selects the beam with power level more than the threshold (rsrp-ThresholdSSB + powerControlOffsetSS) from candidateBeamRSList (provided in BeamFailureRecoveryConfig) and sends contention free RACH (or contention based in case the threshold is not met).  Verify that, beam failure recovery is successful, and end to end data continues after beam recovery. |

## ORAN.WG8.IOT.058: Verify prioritized random access during beam failure recovery

### Test Purpose

The purpose of this test case is to verify beam failure detection and recovery when the backoff indicator (BI) is scaled to a smaller value and preamble power is incremented by a larger value due to initial RACH failure. Few parameters will be provided by SMO to O-DU rest will be assigned by O-DU, and all of these will be configured to UE through RRC message.

### Reference Requirements

For detailed requirements, refer to the section 11.2.4.2.5, 11.2.4.2.6 and 11.2.5.1.11 in ORAN-WG8.AAD [1].

### Initial Condition

* Following are the preconditions for this test.
* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to O-DU.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per test case ORAN.WG8.IOT.017.
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs:** SMO, O-DU, O-CU and O-RU.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.4.
* For rest of the MIB and SSB test profiles, refer B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures for prioritized random access during beam failure recovery.

Table 7.59-1: Prioritized random access during beam failure recovery

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | Cell configuration with beamforming and beam failure information received from SMO to O-DU | **O-DU ss SMO** | Verify the following configuration is received from SMO to O-DU-OAM-Agent (O1 interface) and O-DU-OAM-Agent to MAC:  Beamforming configuration:   * ssb-PositionsInBurst   + groupPresence = 11111111   + inOneGroup =10101010 * ssb-periodicityServingCell * subCarrierSpacingCommon * ssb-SubcarrierOffset * numTxAnt * numRxAnt * numofBeams (64) * numTXRUs (64) * beamIndex (64) * beamType * beamAzimuth * beamTilt * beamHorizWidth * beamVertWidth * coverageShape * digitalTilt * digitalAzimuth * numAntPorts (64) * numLayers   Beam failure configuration:   * beamFailureInstanceMaxCount * beamFailureDetectionTimer * powerControlOffsetSS * rsrp-ThresholdSSB * beamFailureRecoveryTimer * rlmInSyncOutOfSyncThreshold * powerRampingStepHighPriority * scalingFactorBI |
| 2 | Cell configuration with beamforming information sent O-DU to O-RU | **O-RU ss O-DU** | Verify O-DU sends the beamforming configuration through file download request.  Verify O-RU downloads the file and applies the configuration and the state of O-RU is changed to INACTIVE. |
| 3 | Cell configuration update with beamforming information received from O-DU to O-RU | **O-RUa O-DU** | Verify O-RU sends a notification for the result of the download process as successfully downloaded once the download is successful.  Verify once the O-RU applies new configuration, the state of O-RU is changed to ACTIVE. |
| 4 | Cell bring up | **O-DU/O-RU** | Verify cell bring-up is successful with the configuration from SMO.  O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of [24].  Verify O-DU sets the administrative state to UNLOCKED state. |
| 5 | Attach validation | **UE ssa O-DU/O-CU** | Verify that UE attaches successfully.  Verify that NZP-CSI-RS-Resource is included under the csi-measConfig in RRC message.  Verify that RadioLinkMonitoringConfig (detectionResource CSI-RS) and BeamFailureRecoveryConfig (candidateBeamRSList CSI-RS with preamble index) are sent to the UE in RRC message. |
| 6 | End to end data validation | **UE ssa O-DU/ O-CU ssa UPF** | Verify end to end data is successful |
| 7 | Create condition of RACH overload on the O-DU and move the UE from cell center to cell edge | **UE ssa O-DU** | The RF signal gets degraded and BLER level goes beyond rlmInSyncOutOfSyncThreshold (Qout for out of sync) [Table 8.1.1.1 of 38.133 [30]].  Verify UE detects beam failure and starts beam recovery procedure.  Verify UE selects the beam with power level more than threshold (rsrp-ThresholdSSB + powerControlOffsetSS) from candidateBeamRSList (provided in BeamFailureRecoveryConfig) and sends contention free RACH (or contention based in case the threshold is not met).  Verify that due to RACH overload, O-DU transmits RAR with BI.  Verify UE transmits RACH preamble again on priority by applying scalingFactorBI and powerRampingStepHighPriority.  Verify that, beam failure recovery is successful, and end to end data continues after beam recovery. |

## ORAN.WG8.IOT.059: Verify beam failure detection and recovery when SSB/CSI-RS not configured under radioLinkMonitoringConfig.

### Test Purpose

The purpose of this test case is to verify detection of beam failure using PDCCH TCI-State configuration when failureDetectionresources are not included in the radio link monitoring configuration and recovery of the same using beam failure recovery configuration. Few parameters will be provided by SMO to O-DU rest will be assigned by O-DU, and all of these will be configured to UE through RRC message.

### Reference Requirements

For detailed requirements, refer to the section 11.2.4.2.5, 11.2.4.2.6 and 11.2.5.1.11 in ORAN-WG8.AAD [1].

### Initial Condition

* Following are the preconditions for this test.
* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to O-DU.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per test case ORAN.WG8.IOT.017.
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs:** SMO, O-DU, O-CU and O-RU.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.4.
* For rest of the MIB and SSB test profiles, refer B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.
* RadioLinkMonitoringConfig does not contain failureDetectionResources

### Test Procedure

The following table describes the test procedures when SSB/CSI-RS are not configured for beam failure detection.

Table 7.60-1: Beam failure detection and recovery when SSB/CSI-RS not configured for detection

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | Cell configuration with beamforming and beam failure information received from SMO to O-DU | **O-DU ss SMO** | Verify the following configuration is received from SMO to O-DU-OAM-Agent (O1 interface) and O-DU-OAM-Agent to MAC:  Beamofrming configuration:   * ssb-PositionsInBurst   + groupPresence = 11111111   + inOneGroup =11111111 * ssb-periodicityServingCell * subCarrierSpacingCommon * ssb-SubcarrierOffset (0-11) * numTxAnt * numRxAnt * numofBeams (64) * numTXRUs (64) * beamIndex (64) * beamType * beamAzimuth * beamTilt * beamHorizWidth * beamVertWidth * coverageShape * digitalTilt * digitalAzimuth * numAntPorts (64) * numLayers   Beam failure configuration:   * beamFailureDetectionTimer * beamFailureInstanceMaxCount * powerControlOffsetSS * rsrp-ThresholdSSB * beamFailureRecoveryTimer * rlmInSyncOutOfSyncThreshold   . |
| 2 | Cell configuration with beamforming information received from O-DU to O-RU | **O-RU ss O-DU** | Verify O-DU sends the beamforming configuration through file download request.  Verify O-RU downloads the file and applies the configuration and the state of O-RU is changed to INACTIVE. |
| 3 | Cell configuration update response is sent from O-RU to O-DU | **O-RUa O-DU** | Verify O-RU sends a notification for the result of the download process as successfully downloaded once the download is successful.  Verify once the O-RU applies new configuration, the state of O-RU is changed to ACTIVE. |
| 5 | Cell bring up | **O-DU/O-RU** | Verify cell bring-up is successful with the configuration that has been received from SMO.  O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of [24].  Verify O-DU sets the administrative state to UNLOCKED state. |
| 6 | Attach validation | **UE ssa O-DU/O-CU** | Verify that UE attaches successfully.  Verify that tci-StatesPDCCH-ToAddList is received in the controlResourceSet under pdcch.config.  Verify that RadioLinkMonitoringConfig (without failureDetectionResources) and BeamFailureRecoveryConfig (candidateBeamRSList SSB with preamble index) are sent to the UE in RRC message. |
| 7 | End to end data validation | **UE ssa O-DU/ O-CU ssa UPF** | Verify end to end data is successful |
| 8 | Move the UE From Cell center to Cell Edge | **UE ssa O-DU** | Since no reference signals (RS) are provided in RadioLinkMonitoringConfig for beam failure detection, RS configured under tci-StatesPDCCH-ToAddList will be used.  The RF signal gets degraded and BLER level goes beyond rlmInSyncOutOfSyncThreshold for the RS configured under tci-StatesPDCCH-ToAddList (Qout for out of sync) [Table 8.1.1.1 of 38.133 [30]].  Verify UE detects beam failure and it starts beam recovery procedure.  Verify UE selects the beam with power level more than rsrp-ThresholdSSB from candidateBeamRSList (provided in BeamFailureRecoveryConfig) and sends contention free RACH (or contention based in case the rsrp-ThresholdSSB is not met).  Verify that, beam failure recovery is successful, and end to end data continues after beam recovery. |

## ORAN.WG8.IOT.060: Verify end-to-end data with different CSI-RS configuration

### Test Purpose

The purpose of the test case is to verify O-DU configures the CSI-RS configuration received from SMO and O-DU configures the same to UE.

### Reference Requirements

For detailed requirements, refer to the section 11.2.1.1 in ORAN-WG8.AAD [1].

### Initial Condition

* Following are the preconditions for this test.
* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to O-DU.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per test case ORAN.WG8.IOT.017.
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs:** SMO, O-DU, O-CU and O-RU.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.4.
* For rest of the MIB and SSB test profiles, refer B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.
* For details on the CSI-RS test profiles, see B.8 Config 1 and Config 3.

### Test Procedure

The following table describes the test procedures UE attach and data transfer with CSI-RS configuration

Table 7.61-1: End-to-end data verification with different CSI-RS configuration

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | Cell configuration with CSI-RS Config 1 information received from SMO to O-DU | **O-DU ss SMO** | Verify that Config 1 CSI-RS configuration is successfully received from SMO to O-DU-OAM-Agent (O1 interface) and O-DU-OAM-Agent to MAC. |
| 2 | Cell configuration with CSI-RS Config 1 information received from O-DU to O-RU | **O-RU ss O-DU** | Verify that Config 1 CSI-RS configuration is sent to O-RU and updated successfully. |
| 3 | Cell bring up | **O-DU/O-RU** | Verify cell bring-up is successful with the configuration received from SMO.  Verify O-RU carrier-state is set to ACTIVE and sync-state is set to LOCKED. O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of [24].  Verify O-DU sets the administrative state to UNLOCKED state. |
| 4 | Attach validation | **UE ssa O-DU/O-CU** | Verify that UE attaches successfully.  Verify that nzp-CSI-RS-ResourceToAddModList is received by the UE in rrcReconfiguraiton message under the CSI-MeasConfig.  Verify that values of parameters are as per the configuration (see B.8 Config 1). |
| 5 | End to end data validation | **UE ssa O-DU/O-CU ssa UPF** | Verify end to end data is successful |
| 6 | Repeat all steps for CSI-RS Config 3 | **Same as for steps 1-5** | Verify that cell setup and UE attach is successful.  Verify that nzp-CSI-RS-ResourceToAddModList is received by the UE in rrcReconfiguraiton message under the CSI-MeasConfig.  Verify that values of parameters is as per the configuration (see B.8 Config 3): |

## ORAN.WG8.IOT.061: Verify cell bring up is not successful with invalid configuration received from SMO

### Test Purpose

The purpose of the test case is to verify that cell bring up is not successful when invalid CSI-RS configuration is received from SMO.

### Reference Requirements

For detailed requirements, refer to the section 11.2.1.1 in ORAN-WG8.AAD [1].

### Initial Condition

* Following are the preconditions for this test.
* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to O-DU.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per test case ORAN.WG8.IOT.017.
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs:** SMO, O-DU, O-CU and O-RU.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.4.
* For rest of the MIB and SSB test profiles, refer B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.
* For details on the CSI-RS test profiles, see B.8 Config 2.

### Test Procedure

The following table describes the test procedures unsuccessful cell setup when invalid CSI-RS config is used.

Table 7.62-1: Procedure to verify unsuccessful cell setup when invalid CSI-RS config is used

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | Cell configuration with CSI-RS Config 2 information received from SMO to O-DU | **O-DU ss SMO** | Verify that Config 2 CSI-RS configuration is successfully received from SMO to O-DU-OAM-Agent (O1 interface) and O-DU-OAM-Agent to MAC. |
| 2 | Cell configuration with CSI-RS Config 2 information received from O-DU to O-RU | **O-RU ss O-DU** | Verify that Config 2 CSI-RS configuration is successfully received by O-RU and updated successfully. |
| 3 | Cell bring up | **O-DU/O-RU** | Verify cell bring-up is not successful with the configuration that has been received from SMO.  O-DU sends F1SetupRequest to O-CU and O-CU responds with F1SetupResponse.  But DU does not initiate gNBDUConfigurationUpdate to O-CU as noCDM is incorrect cdm-Type for nrOfPorts p2. |

## ORAN.WG8.IOT.062: Verify end-to-end data when SRS is enabled and UE is in mobility

### Test Purpose

The purpose of this test case is to verify O-DU configures the SRS configuration received from SMO and verify the end-to-end throughput based on SRS reported by UE when it is in mobility.

### Reference Requirements

For detailed requirements, refer to the section 11.2.4.3.8 in ORAN-WG8.AAD [1].

### Initial Condition

* Following are the preconditions for this test.
* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to O-DU.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per test case ORAN.WG8.IOT.017.
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs:** SMO, O-DU, O-CU and O-RU.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.4.
* For rest of the MIB and SSB test profiles, refer B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.
* For details on the SRS test profile, see B.9

### Test Procedure

The following table describes the performance with SRS enabled and UE moving.

Table 7.63-1: End-to-end data verification with SRS enabled and UE in mobility

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | Cell configuration information received from SMO to O-DU | **O-DU ss SMO** | Verify that Config 1 SRS configuration is successfully received from SMO to O-DU-OAM-Agent (O1 interface) and O-DU-OAM-Agent to MAC. |
| 2 | Cell bring up | **O-DU/O-RU** | Verify cell bring-up is successful with the configuration received from SMO.  Verify O-RU carrier-state is set to ACTIVE and sync-state is set to LOCKEDO-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of [24].  Verify O-DU sets the administrative state to UNLOCKED state. |
| 3 | Attach validation | **UE ssa O-DU/O-CU** | Verify that UE attaches successfully.  Verify that 2 items under srs-ResourceSetToAddModList and at least 1 item under srs-ResourceToAddModList are received by the UE in rrcReconfiguraiton message under the UL BWP config with configured parameters.  Verify from FAPI logs as per sec 3.4.10 in FAPI specification [12] that SRS is being received periodically by O-DU from O-RU. |
| 4 | End to end data validation | **UE ssa O-DU/ O-CU ssa UPF** | Verify end to end data is successful |
| 5 | Move the UE from cell center to cell edge. | **UE ssa O-DU** | Verify that SRSResourceSetIndicator is sent in DCI 0\_0 indicating which SRSResourceSet is to be used by UE for transmitting SRS.  Verify that SRS reports are continuously received at O-DU.  Verify UL MCS and resource allocation in DCI 0\_0 is as per the SRS feedback received from the UE. |

## ORAN.WG8.IOT.063: Verify successful collection and transfer of MAC statistics for MU-MIMO from O-DU-OAM-Agent to SMO.

### Test Purpose

The purpose of this test case is to verify successful collection and transfer of MAC statistics for MU-MIMO from O-DU-OAM-Agent to SMO.

### Reference Requirement

For detailed requirements, refer to the section 11.2.2 in ORAN-WG8.AAD [1].

### Initial Conditions

* Following are the preconditions for this test.
* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to O-DU.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per test case ORAN.WG8.IOT.017.
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs:** SMO, O-DU, O-CU and O-RU.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.4.
* For rest of the MIB and SSB test profiles, refer B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures to verify successful collection and transfer of MAC statistics for MU-MIMO from O-DU-OAM-Agent to SMO.

Table 7.64-1: Successful collection and transfer of MAC statistics to SMO.

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | Cell configuration with beamforming received from SMO to O-DU. | **O-DU ss SMO** | Verify the following configuration is received from SMO to O-DU-OAM-Agent (O1 interface) and O-DU-OAM-Agent to MAC:  Beamforming configuration:   * ssb-PositionsInBurst   + groupPresence = 11111111   + inOneGroup =11111111 * ssb-periodicityServingCell * subCarrierSpacingCommon * ssb-SubcarrierOffset (0-11) * numTxAnt * numRxAnt * numofBeams (64) * numTXRUs (64) * beamIndex (64) * beamType * beamAzimuth * beamTilt * beamHorizWidth * beamVertWidth * coverageShape * digitalTilt * digitalAzimuth * numAntPorts (64) * numLayers |
| 2 | Cell configuration with beamforming information received from O-DU to O-RU. | **O-RU ss O-DU** | Verify O-DU sends the beamforming configuration through file download request.  Verify O-RU downloads the file and applies the configuration. The state of O-RU is changed to INACTIVE. |
| 3 | Cell configuration update Response received from O-RU to O-DU. | **O-RUa O-DU** | Verify O-RU sends a notification for the result of the download process as successfully downloaded once the download is successful.  Verify once the O-RU applies new configuration, the state of O-RU is changed to ACTIVE. |
| 4 | Cell bring-up | **O-DU/O-RU** | Verify cell bring-up is successful with the configuration that has been received from SMO.  O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of [24].  Verify O-DU sets the administrative state to UNLOCKED state. |
| 5 | O-DU/O-RU broadcast SSB beams as per defined periodicity. | **UE ss O-RU ss O-DU** | Verify the O-RU transmit all the 8 beams with a periodicity of 20ms.  Verify UE selects the strongest SSB beam from 8 beams broadcasted and sends RACH request with PRACH config index corresponding to beam selected. |
| 6 | Attach validation | **UE ss O-DU/ O-CU** | Verify that UE able to attach successfully with above mentioned configuration. |
| 7 | End to end data validation | **O-DU/ O-CU a UPF** | Verify end to end data is successful. |
| 8 | O-DU collects the performance counters from O-RU and reports it to O-DU-OAM-Agent. | **O-RU a O-DU a SMO** | Verify the following APIs are sent from O-RU towards O-DU-OAM-Agent containing the performance counters as mentioned in ORAN-WG8.AAD [1]:   * RSRP/RSRQ/SINR measurements * Measurement for the SSB beam switch * Beam Failure statistics per cell per beam * UL SRS RSRP measurement |
| 9 | PM Data File ready notification | **O-DU a SMO** | Verify O-DU-OAM-Agent sends notifyFileReady notification towards SMO as mentioned in [22] with the correct PM File Content and naming as mentioned in [28].  SMO successfully received the Performance Measurements file.  SMO can use it for parameter optimization and reconfiguration of parameters on O1 interface. |

## ORAN.WG8.IOT.064: Verify O-DU-OAM-Agent successfully download the configuration from SMO for beamforming optimization through "file-download request".

### Test Purpose

The purpose of this test case is to verify O-DU-OAM-Agent successfully download the configuration from SMO for beamforming optimization through "file-download request".

### Reference Requirement

For detailed requirements, refer to the section 11.2.2 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to O-DU.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per test case ORAN.WG8.IOT.017.
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs:** SMO, O-DU, O-CU and O-RU.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.4.
* For rest of the MIB and SSB test profiles, refer B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures to verify O-DU-OAM-Agent successfully download the configuration from SMO for beamforming optimization through "file-download request".

Table 7.65-1: O-DU-OAM-Agent successfully downloads the configuration from SMO through "file-download request"

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | Cell configuration with beamforming received from SMO to O-DU. | **O-DU ss SMO** | Verify the following configuration is received from SMO to O-DU-OAM-Agent (O1 interface) and O-DU-OAM-Agent to MAC:  Beamforming configuration:   * ssb-PositionsInBurst   + groupPresence = 11111111   + inOneGroup =11111111 * ssb-periodicityServingCell * subCarrierSpacingCommon * ssb-SubcarrierOffset (0-11) * numTxAnt * numRxAnt * numofBeams (64) * numTXRUs (64) * beamIndex (64) * beamType * beamAzimuth * beamTilt * beamHorizWidth * beamVertWidth * coverageShape * digitalTilt * digitalAzimuth * numAntPorts (64) * numLayers |
| 2 | Cell configuration with beamforming information received from O-DU to O-RU | **O-RU ss O-DU** | Verify O-DU sends the beamforming configuration through file download request.  Verify O-RU downloads the file and applies the configuration. The state of O-RU is changed to INACTIVE. |
| 3 | Cell configuration update Response received from O-RU to O-DU. | **O-RU a O-DU** | Verify O-RU sends a notification for the result of the download process as successfully downloaded once the download is successful.  Verify once the O-RU applies new configuration, the state of O-RU is changed to ACTIVE. |
| 4 | Cell bring-up. | **O-DU/O-RU** | Verify cell bring-up is successful with the configuration that has been received from SMO.  O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of [24].  Verify O-DU sets the administrative state to UNLOCKED state. |
| 5 | O-DU/O-RU broadcast SSB beams as per defined periodicity. | **UE ss O-DU/ O-CU** | Verify the O-RU transmit all the 8 beams with a periodicity of 20ms.  Verify UE selects the strongest SSB beam from 8 beams broadcasted and sends RACH request with PRACH config index corresponding to beam selected. |
| 6 | Attach validation. | **UE ss O-DU/ O-CU** | Verify that UE able to attach successfully with above mentioned configuration |
| 7 | End to end data validation. | **O-DU/ O-CU a UPF** | Verify end to end data is successful. |
| 8 | O-DU collects the performance counters and reports it to O-DU-OAM-Agent. | **O-DU a SMO** | Verify the following APIs are sent from MAC towards O-DU-OAM-Agent containing the performance counters as mentioned in ORAN-WG8.AAD [1]:   * RSRP/RSRQ/SINR measurements * Measurement for the SSB beam switch * Beam Failure statistics per cell per beam * UL SRS RSRP measurement |
| 9 | PM Data File ready notification by O-DU-OAM-Agent. | **O-DU a SMO** | Verify O-DU-OAM-Agent sends notifyFileReady notification towards SMO as mentioned in [22] with the correct PM File Content and naming as mentioned in [28].  SMO successfully received the Performance Measurements file.  SMO can use it for parameter optimization and reconfiguration of parameters on O1 interface. |
| 10 | Optimal beamforming configuration Ready at SMO. | **O-DU ss SMO** | Verify SMO sends notifyFileReady notification towards O-DU-OAM-Agent as mentioned in section 4.22 of [38] with new beamforming configuration. |
| 11 | File download requested by O-DU-OAM-Agent. | **O-DU a SMO** | Verify O-DU-OAM-Agent sends "file-download-request" to trigger file download to SMO, including the location of the file. |
| 12 | File download accepted by SMO. | **O-DU ss SMO** | Verify SMO replies with its ability to begin the download and status as accepted.  Verify SMO sends a "downloadFile" notification to O-DU-OAM-Agent with current status of the download as download in progress.  Once the download is completed.  Verify SMO sends a "downloadFile" notification to O-DU-OAM-Agent with final status of the download as success. |
| 13 | File download at O-RU. | **O-RU ss O-DU** | Verify O-RU Controller/O-DU sends file-download request to O-RU including the location of the file as mentioned in [24]. |
| 14 | File downloaded at O-RU. | **O-RU a O-DU** | Verify O-RU sends response towards O-RU Controller/O-DU with status of the file-download request as accepted.  Verify O-RU sends a notification for the result of the download process as successfully downloaded once the download is successful. |
| 15 | De-activate tx-array-carriers and rx-array-carriers | **O-RU ss O-DU** | Verify the NETCONF client/O-DU shall deactivate tx-array-carriers and rx-array-carriers in the U-Plane configuration by setting "INACTIVE" for the active parameters if they are ACTIVE. |
| 16 | De-activate the cell from the O-DU. | **O-DU a O-CU** | O-DU sends the F1AP gNB-DU configuration update to O-CU.  F1AP gNB-DU configuration update message should contain all the mandatory IEs mentioned in section 4.1.6.1.2.5 of ORAN.WG5.C.1 [19].  O-DU should de-activate the cell information according to the service-state IE. |
| 17 | Apply new edited beamforming information | **O-RU ss O-DU** | Verify O-DU updated the new edited beamforming config to O-RU as per o-ran-beamforming.yang as mentioned in [24]. |
| 18 | Activate the cell from the O-DU. | **O-DU a O-CU** | O-DU sends the F1AP gNB-DU configuration update to O-CU.  F1AP gNB-DU configuration update message should contain all the mandatory IEs mentioned in section 4.1.6.1.2.5 of ORAN.WG5.C.1 [19].  O-DU should de-activate the cell information according to the service-state IE. |
| 19 | Activate tx-array-carriers and rx-array-carriers with new beamforming configuration | **O-RU ss O-DU** | Verify the NETCONF client/O-DU shall activate tx-array-carriers and rx-array-carriers in the U-Plane configuration by setting "ACTIVE" for the in-active parameters. |
| 20 | Cell bring-up | **O-DU/O-RU** | Verify cell bring-up is successful with the optimized beamforming configuration that has been received from SMO. |
| 21 | Attach validation | **UE ssa O-DU/O-CU** | Verify that UE able to attach successfully. |
| 22 | End to end data validation | **O-DU/ O-CU ssa UPF** | Verify end to end data is successful. |

## ORAN.WG8.IOT.065: Verify successful collection and transfer of L1 measurements along with parameter reconfiguration for AI/ML assisted Beam Selection Optimization on E2 interface.

### Test Purpose

The purpose of this test case is to verify successful collection and transfer of L1 measurements along with parameter reconfiguration for AI/ML assisted Beam Selection Optimization on E2 interface.

### Reference Requirement

For detailed requirements, refer to the section 11.4 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to O-DU.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per test case ORAN.WG8.IOT.017.
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs:** SMO, O-DU, O-CU and O-RU.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.4.
* For rest of the MIB and SSB test profiles, refer B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures to verify successful collection and transfer of L1 measurements along with parameter reconfiguration for AI/ML assisted Beam Selection Optimization by O-DU-OAM-Agent on E2 interface.

Table 7.66-1: Successful collection and transfer of L1 measurements along with parameter reconfiguration on E2 interface.

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | Cell configuration with beamforming received from SMO to O-DU | **O-DU ss SMO** | Verify the following configuration is received from SMO to O-DU-OAM-Agent (O1 interface) and O-DU-OAM-Agent to MAC:  Beamforming configuration:   * ssb-PositionsInBurst   + groupPresence = 11111111   + inOneGroup =11111111 * ssb-periodicityServingCell * subCarrierSpacingCommon * ssb-SubcarrierOffset (0-11) * numTxAnt * numRxAnt * numofBeams (64) * numTXRUs (64) * beamIndex (64) * beamType * beamAzimuth * beamTilt * beamHorizWidth * beamVertWidth * coverageShape * digitalTilt * digitalAzimuth * numAntPorts (64) * numLayers |
| 2 | Cell configuration with beamforming information received from O-DU to O-RU | **O-RU ss O-DU** | Verify O-DU sends the beamforming configuration through file download request.  Verify O-RU downloads the file and applies the configuration. The state of O-RU is changed to INACTIVE. |
| 3 | Cell configuration update Response received from O-RU to O-DU. | **O-RUa O-DU** | Verify O-RU sends a notification for the result of the download process as successfully downloaded once the download is successful.  Verify once the O-RU applies new configuration, the state of O-RU is changed to ACTIVE. |
| 4 | O-DU sends the E2 Setup request to near RT-RIC server. | **O-DU a near RT-RIC** | Verify O-DU sends the E2 Setup request message to near RT-RIC server with all the mandatory IEs. |
| 5 | near RT-RIC server sends E2 Setup Response to O-DU. | **O-DU ss near RT-RIC** | Verify near RT-RIC sends the E2 setup response to O-DU with all the mandatory IEs. |
| 6 | Cell bring-up | **O-DU/O-RU** | Verify cell bring-up is successful with the configuration that has been received from SMO.  O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of [24].  Verify O-DU sets the administrative state to UNLOCKED state. |
| 7 | O-DU/O-RU broadcast SSB beams as per defined periodicity. | **UE ss O-RUss O-DU** | Verify the O-RU transmit all the 8 beams with a periodicity of 20ms.  Verify UE selects the strongest SSB beam from 8 beams broadcasted and sends RACH request with PRACH config index corresponding to beam selected. |
| 8 | Attach validation | **UE ss O-DU/ O-CU** | Verify that UE able to attach successfully with above mentioned configuration |
| 9 | End to end data validation | **O-DU/ O-CU a UPF** | Verify end to end data is successful. |
| 10 | near RT-RIC server sends E2 Subscription Request to O-DU. | **O-DU ss near RT-RIC** | Verify near RT-RIC server sends E2 Subscription Request to O-DU with the below measurements mentioned in RIC Action Definition IE, Section 5 of 3GPP Specification [25]:   * L1-RSRP measurement per UE * L1-SINR measurement per UE * CSI-RS Resource Indicator (CRI) * SS/PBCH Block Resource Indicator (SSBRI) per UE |
| 11 | O-DU sends the E2 Subscription Response to near -RT-RIC server with supported subscription items and not supported items. | **O-DU a near RT-RIC** | Verify O-DU sends the E2 Subscription Response to near-RT-RIC server with "RIC Actions Admitted List" IE filled with O-DU supported list from the SUBSCRIPTION REQUEST and "RIC Actions Not Admitted List" IE filled with O-DU non-supported list. |
| 12 | O-DU sends the periodic report to the subscribed features to near RT-RIC server through RIC INDICATION message. | **O-DU a near RT-RIC** | Verify O-DU sends the periodic report to near RT-RIC server through RIC INDICATION message as per SUBSCRIPTION REQUEST. |
| 13 | Near RT-RIC sends RIC Control Request to O-DU | **O-DU ss near RT-RIC** | Verify Near-RT RIC sends RIC CONTROL REQUEST to an E2 Node to optimize parameters related to beamforming. |
| 14 | O-DU sends RIC Control Acknowledge to Near RT-RIC | **O-DUa near RT-RIC** | Verify O-DU sends RIC CONTROL ACKNOWLEDGE to Near-RT RIC to inform Near RT-RIC that the message was received and to provide information on the outcome of the request.  O-DU configures O-RU based on the optimized parameters received from Near RT-RIC. |
| 15 | Attach validation | **UE ssa O-DU/O-CU** | Verify that UE able to attach successfully. |
| 16 | End to end data validation | **O-DU/ O-CU ssa UPF** | Verify end to end data is successful. |

## ORAN.WG8.IOT.066: Verify successful vO-DU and vO-CU deployment on an O-Cloud.

### Test Purpose

The purpose of this test case is to verify successful instantiation of a cloud-native Network Function as a new deployment on an O-Cloud.

### Reference Requirement

For detailed requirements, refer to the section 8.3 and section 9.4 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* SMO is configured to add an O-Cloud into its inventory prior to the O-Cloud itself being activated.
* O-Cloud ID is generated by the SMO which represents a globally unique identifier for identifying the new O-Cloud instance by the SMO.
* Physical network connectivity exists between the network gateway of O-Cloud and SMO.
* Cloud software installation on O-Cloud and O-Cloud nodes is successful and operational.
* O-RU is implemented as a physical Network Function and deployed remotely. O-RU is managed entirely by vO-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* Use the default vO-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in vO-CU.
* vO-CU is connected to vO-DU.
* vO-CU is connected to 5GC through NG interface and vO-CU is operational.
* Support for PTP is enabled on all the Edge O-Cloud nodes. The Edge O-Cloud will host vO-DU as a service which will be operating as a slave clock.
* vO-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs:** SMO, vO-DU, vO-CU and O-RU.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.4.
* For rest of the MIB and SSB test profiles, refer B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures to verify successful instantiation of a cloud-native Network Function as a new deployment on an O-Cloud.

Table 7.67-1: Successful vO-DU and vO-CU deployment.

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | O-Cloud Operator sends service request to instantiate new vO-DU on O-Cloud to SMO. | **O-Cloud Operator a SMO** | Verify Service Request to SMO for the deployment is received with desired network function type set to vO-DU.  Verify successful allocation of resources to the vO-DU on the O-Cloud.  Verify initial SMO connectivity configuration such as O1 interface address and other security key information are injected into vO-DU.  Verify SMO notifies O-Cloud operator the status of the successful instantiation of the vO-DU deployment. |
| 2 | O-Cloud Operator sends service request to instantiate new vO-CU on O-Cloud to SMO. | **O-Cloud Operator a SMO** | Verify Service Request to SMO for the deployment is received with desired network function type set to vO-CU.  Verify successful allocation of resources to the vO-CU on the O-Cloud.  Verify initial SMO connectivity configuration such as O1 interface address and other security key information are injected into vO-CU.  Verify SMO notifies O-Cloud operator the status of the successful instantiation of the vO-CU deployment. |
| 3 | SMO sends TLS secure connection establishment to vO-DU and vO-CU | **vO-DU ss SMO** | Verify the TLS secure connection is established between SMO, vO-DU and vO-CU as per [22].  SMO sends the NETCONF hello message to vO-DU and vO-CU |
| 4 | vO-DU sends cloudified NF Registration notification to SMO. | **vO-DU a SMO** | Verify vO-DU sends the NETCONF capabilities supported to SMO in hello message.  Verify vO-DU successfully sends o1NotifyCloudNFRegistration notification to SMO over HTTP/TLS after successfully completing instantiation.  Verify vO-DU successfully subscribe to event/status from the O-Cloud. |
| 5 | vO-CU sends cloudified NF Registration notification to SMO. | **vO-CU a SMO** | Verify vO-CU sends the NETCONF capabilities supported to SMO in hello message.  Verify vO-CU successfully sends o1NotifyCloudNFRegistration notification to SMO over HTTP/TLS after successfully completing instantiation. |
| 6 | SMO sends cell configuration to vO-DU. | **vO-DU ss SMO** | Verify the cell configuration is received from SMO to vO-DU (O1 interface). |
| 7 | vO-DU sends Carrier configuration to O-RU to establish C/U-Plane application endpoints. | **O-RU ss vO-DU** | Verify vO-DU sends the carrier configuration through file download request.  Verify O-RU downloads the file and applies the configuration. The state of O-RU is changed to INACTIVE. |
| 8 | O-RU sends Carrier configuration update Response to vO-DU. | **O-RUa vO-DU** | Verify O-RU sends a notification for the result of the download process as successfully downloaded, once the download is successful.  Verify time synchronization using PTP is successful on O-RU and it sends sync-status as LOCKED to vO-DU. |
| 9 | vO-DU sends sync-state information and set the operational state in SMO | **vO-DU a SMO** | Verify vO-DU shall send the sync-state as LOCKED to SMO after receiving the synchronization notification using PTP pull.  Verify vO-DU set the operational state to ENABLED. |
| 10 | SMO shall set the administrate state of vO-DU. | **vO-DU ss SMO** | Verify vO-DU shall set the administrative state to UNLOCKED. |
| 11 | vO-DU sends an F1 SETUP REQUEST to establish connectivity between the vO-DU and vO-CU. | **vO-DU a vO-CU** | Verify vO-DU sends F1 SETUP REQUEST message containing all the mandatory IEs mentioned in section 4.1.5.1.2 of ORAN.WG5.C.1 [19] to the vO-CU-CP (Control Unit) |
| 12 | vO-CU sends NGAP Setup Request to AMF. | **vO-CU a AMF** | Verify the NGAP Setup Request contains all the mandatory IEs mentioned in the section 9.2.6.1 of 3GPP Specification [20]. |
| 13 | vO-CU receives NGAP Setup Response from AMF. | **vO-CU ss AMF** | Verify AMF sends NGAP Setup Response message containing all the mandatory IEs mentioned in 9.2.6.1 of 3GPP Specification [20]. |
| 14 | vO-DU receives F1 SETUP RESPONSE from vO-CU. | **vO-DU ss vO-CU** | Verify vO-CU sends F1 SETUP RESPONSE message containing all the mandatory IEs mentioned in section 4.1.5.1.2 of ORAN.WG5.C.1 [19] to the vO-DU. |
| 15 | Cell Bring-up is initiated at vO-CU. | **vO-DU ss vO-CU** | vO-CU sends the F1AP gNB-CU configuration update to vO-DU.  F1AP gNB-CU configuration update message contains all the mandatory IEs mentioned in section 4.1.6.1.2.1 of ORAN.WG5.C.1 [19].  vO-CU adds the cell information according to IE Served-Cells-To-Add-List. |
| 16 | vO-DU sends the gNB-DU CONFIGURATION UPDATE ACKNOWLEDGE message to vO-DU. | **vO-DU a vO-CU** | Verify vO-DU sends the gNB-CU CONFIGURATION UPDATE ACKNOWLEDGE message to vO-CU.  F1AP gNB-CU configuration update Ack message contains all the mandatory IEs mentioned in section 4.1.6.1.2.1 of ORAN.WG5.C.1 [19]. |
| 17 | Activate the cell from the vO-DU. | **vO-DU a vO-CU** | vO-DU sends the F1AP gNB-DU configuration update to O-CU.  F1AP gNB-DU configuration update message contains all the mandatory IEs mentioned in section 4.1.6.1.2.4 of ORAN.WG5.C.1 [19].  vO-DU activates the cell information according to the service-state IE. |
| 14 | vO-CU sends the gNB-DU CONFIGURATION UPDATE ACKNOWLEDGE message to vO-CU. | **vO-DU ss vO-CU** | Verify vO-CU sends the gNB-DU CONFIGURATION UPDATE ACKNOWLEDGE message to vO-DU.  F1AP gNB-DU configuration update Ack message contains all the mandatory IEs mentioned in section 4.1.6.1.2.4 of ORAN.WG5.C.1 [19]. |
| 15 | Verify the status of the cell. | **vO-DU/vO-CU** | Verify SMO shows vO-CU and vO-DU operational and newly added cell is up and RF state of O-RU is ACTIVE.  Verify O-RU sync-state is set to LOCKED state and available for CU-plane communication.  vO-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of [24]. |
| 16 | Attach validation | **UE ss vO-DU/ vO-CU** | Verify that UE is able to attach successfully in cloudified deployment. |
| 17 | End to end data validation | **vO-DU/ vO-CU ssa UPF** | Verify end to end data is successful. |

## ORAN.WG8.IOT.067: Verify successful addition of vO-DU and vO-CU instance when network demand increases beyond current NF capacity threshold.

### Test Purpose

The purpose of this test case is to verify addition of vO-DU and vO-CU Network function instance when network demand increases beyond current NF capacity threshold.

### Reference Requirement

For detailed requirements, refer to the section 8.3 and section 9.4 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* SMO is configured to add an O-Cloud into its inventory prior to the O-Cloud itself being activated.
* O-Cloud ID is generated by the SMO which represents a globally unique identifier for identifying the new O-Cloud instance by the SMO.
* Physical network connectivity exists between the network gateway of O-Cloud and SMO.
* Cloud software installation on O-Cloud and O-Cloud nodes is successful and operational.
* O-RU is implemented as a physical Network Function and deployed remotely. O-RU is managed entirely by vO-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* Use the default vO-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in vO-CU.
* vO-CU is connected to vO-DU.
* vO-CU is connected to 5GC through NG interface and vO-CU is operational.
* Support for PTP is enabled on all the Edge O-Cloud nodes. The Edge O-Cloud will host vO-DU as a service which will be operating as a slave clock.
* vO-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].
* O-Cloud is available and vO-DU and vO-CU as a network function is successfully deployed.
* SMO has policies related to network function capacity modification (This is vendor specific, and the scale-out algorithms can vary depending on the implementation/design).

### Test Setup and Configuration

* **DUTs:** SMO, vO-DU, vO-CU and O-RU.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.8.
* For rest of the MIB and SSB test profiles, refer B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures to verify addition of vO-DU and vO-CU Network function when network demand increases beyond current NF capacity threshold.

Table 7.68-1: Addition of vO-DU and vO-CU instance.

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | Multiple UE attach and bi-directional data traffic. | **UE ss vO-DU/ vO-CU ssa UPF** | Verify that multiple UEs are attached successfully in cloudified deployment.  Verify end to end data is successful.  Verify network resources are utilized beyond current capacity threshold. |
| 2 | SMO triggers NF capacity modification processing. | **SMO a O-Cloud** | SMO determines that scale out is needed and determines what NF deployment scaling is required to increase vO-DU and vO-CU capacity.  This is vendor specific, and the scale-out algorithm can vary depending on the implementation/design.  Few examples for scale-out:   * Due to high CPU utilization. * Due to high memory utilization. * UE based scaling.   Note: As per section 3.2.2 of [32], scaling is managed by the SMO. Self-management of scaling by the NF is for future study. |
| 3 | SMO sends TLS secure connection establishment to a newly added vO-DU and vO-CU | **vO-DU/ vO-CUss SMO** | Verify the TLS secure connection is established between SMO and vO-DU/vO-CU as per [22].  SMO sends the NETCONF hello message to vO-DU and vO-CU |
| 4 | vO-DU sends cloudified NF Registration notification to SMO. | **vO-DU a SMO** | Verify vO-DU sends the NETCONF capabilities supported to SMO in hello message.  Verify vO-DU successfully sends o1NotifyCloudNFRegistration notification to SMO over HTTP/TLS after successfully completing instantiation.  Verify vO-DU successfully subscribe to event/status from the O-Cloud. |
| 5 | vO-CU sends cloudified NF Registration notification to SMO. | **vO-CU a SMO** | Verify vO-CU sends the NETCONF capabilities supported to SMO in hello message.  Verify vO-CU successfully sends o1NotifyCloudNFRegistration notification to SMO over HTTP/TLS after successfully completing instantiation. |
| 6 | SMO sends cell configuration to vO-DU. | **vO-DU ss SMO** | Verify the cell configuration is received from SMO to vO-DU (O1 interface). |
| 7 | vO-DU sends Carrier configuration to O-RU to establish C/U-Plane application endpoints. | **O-RU ss vO-DU** | Verify vO-DU sends the carrier configuration through file download request.  Verify O-RU downloads the file and applies the configuration. The state of O-RU is changed to INACTIVE. |
| 8 | O-RU sends Carrier configuration update Response to vO-DU. | **O-RUa vO-DU** | Verify O-RU sends a notification for the result of the download process as successfully downloaded once the download is successful.  Verify time synchronization using PTP is successful on O-RU and it sends sync-status as LOCKED to vO-DU. |
| 9 | vO-DU sends sync-state information and set the operational state in SMO | **vO-DU a SMO** | Verify vO-DU shall send the sync-state as LOCKED to SMO after receiving the synchronization notification using PTP pull.  Verify vO-DU set the operational state to ENABLED. |
| 10 | SMO shall set the administrate state of vO-DU. | **vO-DU ss SMO** | Verify vO-DU shall set the administrative state to UNLOCKED. |
| 11 | Cell Bring-up | **vO-DU/vO-CU** | Verify cell bring-up is successful with the configuration that has been received from SMO.  vO-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of [24].  Verify vO-DU sets the administrative state to UNLOCKED state. |
| 12 | Verify the status of the cell. | **vO-DU/vO-CU** | Verify SMO shows vO-CU and vO-DU operational and newly added cell is up and RF state of O-RU is ACTIVE.  Verify O-RU sync-state is set to LOCKED state and available for CU-plane communication. |
| 13 | Attach validation | **UE ss vO-DU/ vO-CU** | Verify that UE is able to attach successfully in cloudified deployment. |
| 14 | End to end data validation | **vO-DU/ vO-CU ssa UPF** | Verify end to end data is successful. |

## ORAN.WG8.IOT.068: Verify successful deletion of vO-DU and vO-CU instance when network demand reduces below NF capacity threshold.

### Test Purpose

The purpose of this test case is to verify deletion of vO-DU and vO-CU Network function instance when network demand reduces below NF capacity threshold.

### Reference Requirement

For detailed requirements, refer to the section 8.3 and section 9.4 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* SMO is configured to add an O-Cloud into its inventory prior to the O-Cloud itself being activated.
* O-Cloud ID is generated by the SMO which represents a globally unique identifier for identifying the new O-Cloud instance by the SMO.
* Physical network connectivity exists between the network gateway of O-Cloud and SMO.
* Cloud software installation on O-Cloud and O-Cloud nodes is successful and operational.
* O-RU is implemented as a physical Network Function and deployed remotely. O-RU is managed entirely by vO-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* Use the default vO-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in vO-CU.
* vO-CU is connected to vO-DU.
* vO-CU is connected to 5GC through NG interface and vO-CU is operational.
* Support for PTP is enabled on all the Edge O-Cloud nodes. The Edge O-Cloud will host vO-DU as a service which will be operating as a slave clock.
* vO-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].
* O-Cloud is available and additional vO-DU as a network function is successfully deployed.
* SMO has policies related to network function capacity modification (This is vendor specific, and the scale-in algorithms can vary depending on the implementation/design).

### Test Setup and Configuration

* **DUTs:** SMO, vO-DU, vO-CU and O-RU.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.8
* For rest of the MIB and SSB test profiles, refer B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures to verify deletion of vO-DU and vO-CU Network function instance when network demand reduces to below NF capacity threshold.

Table 7.69-1: Deletion of additional vO-DU and vO-CU instance.

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | Multiple UE attach and bi-directional data traffic. | **UE ss vO-DU/ vO-CU ssa UPF** | Verify that multiple UEs are attached successfully in cloudified deployment.  Verify end to end data is successful.  Multiple instances of vO-DU and vO-CU are running due to NF scale-out.  Some of the traffic is drained causing network function utilization to reduce below capacity threshold. |
| 2 | SMO triggers NF capacity modification processing. | **SMO a O-Cloud** | SMO determines that scale-in is needed.  SMO prepares the vO-DU and vO-CU for deletion of an additional network function deployment unit from an O-Cloud resource Pool.  This is vendor specific, and the scale-in algorithm can vary depending on the implementation/design.  Note: As per section 3.2.2 of [32], scaling is managed by the SMO. Self-management of scaling by the NF is for future study. |
| 3 | SMO sends requests to vO-DU and vO-CU with Deployment ID to terminate. | **vO-DU/ vO-CUss SMO** | Verify vO-DU and vO-CU gracefully initiates traffic removal and generates traffic drain notification towards SMO.  Verify that vO-DU and vO-CU instance is successfully terminated from the O-Cloud resource pool.  Verify that the existing NF is now able to handle the reduce demand in the network. |
| 4 | Attach validation | **UE ss vO-DU/ vO-CU** | Verify that UE able to attach successfully with the existing NF deployment after scale-in. |
| 5 | End to end data validation | **O-DU/ O-CU ssa UPF** | Verify end to end data is successful. |

## ORAN.WG8.IOT.069: Verify successful software upgrade for vO-DU.

### Test Purpose

The purpose of this test case is to verify successful software upgrade for an vO-DU when a new software image is available and upgrade is initiated by SMO.

### Reference Requirement

For detailed requirements, refer to the section 8.3 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* SMO is configured to add an O-Cloud into its inventory prior to the O-Cloud itself being activated.
* O-Cloud ID is generated by the SMO which represents a globally unique identifier for identifying the new O-Cloud instance by the SMO.
* Physical network connectivity exists between the network gateway of O-Cloud and SMO.
* Cloud software installation on O-Cloud and O-Cloud nodes is successful and operational.
* O-RU is implemented as a physical Network Function and deployed remotely. O-RU is managed entirely by vO-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* Use the default vO-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in vO-CU.
* vO-CU is connected to vO-DU.
* vO-CU is connected to 5GC through NG interface and vO-CU is operational.
* Support for PTP is enabled on all the Edge O-Cloud nodes. The Edge O-Cloud will host vO-DU as a service which will be operating as a slave clock.
* vO-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].
* O-Cloud is available and vO-DU as a network function is successfully deployed.
* New software image is available in O-Cloud software image repository.

### Test Setup and Configuration

* **DUTs:** SMO, vO-DU, vO-CU and O-RU.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.8.
* For rest of the MIB and SSB test profiles, refer B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures to verify successful software upgrade for an vO-DU when a new software image is available and upgrade is initiated by SMO.

Table 7.70-1: Software upgrade of vO-DU.

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | SMO configures new vO-DU instance when a new software version is available. | **SMO a vO-DU** | Verify SMO configures new instance of vO-DU with an upgraded version into the O-Cloud resource pool. |
| 2 | SMO sends TLS secure connection establishment to the new instance of vO-DU. | **vO-DU ss SMO** | Verify the TLS secure connection is established between SMO and the new instance of vO-DU as per [22].  SMO sends the NETCONF hello message to the new instance of vO-DU. |
| 3 | New instance of vO-DU sends cloudified NF Registration notification to SMO. | **vO-DU a SMO** | Verify new instance of vO-DU sends the NETCONF capabilities supported to SMO in hello message.  Verify new instance of vO-DU successfully sends o1NotifyCloudNFRegistration notification to SMO over HTTP/TLS after successfully completing instantiation.  Verify new instance of vO-DU successfully subscribe to event/status from the O-Cloud. |
| 4 | SMO sends cell configuration to new instance of vO-DU. | **vO-DU ss SMO** | Verify the cell configuration is received from SMO to new instance of vO-DU (O1 interface). |
| 5 | New instance of vO-DU sends Carrier configuration to O-RU to establish C/U-Plane application. | **O-RU ss vO-DU** | Verify new instance of vO-DU sends the carrier configuration through file download request.  Verify O-RU downloads the file and applies the configuration. The state of O-RU is changed to INACTIVE. |
| 6 | O-RU sends Carrier configuration update Response to the new instance of vO-DU. | **O-RUa vO-DU** | Verify O-RU sends a notification for the result of the download process as successfully downloaded once the download is successful.  Verify time synchronization using PTP is successful on O-RU and it sends sync-status as LOCKED. |
| 7 | New instance of vO-DU sends sync-state information and set the operational state in SMO | **vO-DU a SMO** | Verify new instance of vO-DU shall send the sync-state as LOCKED to SMO after receiving the synchronization notification using PTP pull.  Verify new instance of vO-DU set the operational state to ENABLED. |
| 8 | SMO shall set the administrate state of new instance of vO-DU. | **vO-DU ss SMO** | Verify new instance of vO-DU shall set the administrative state to UNLOCKED. |
| 9 | Cell Bring-up | **vO-DU/vO-CU** | Verify cell bring-up is successful with the configuration that has been received from SMO.  vO-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of [24].  Verify new instance of vO-DU sets the administrative state to UNLOCKED state. |
| 10 | Verify the status of the cell. | **vO-DU/vO-CU** | Verify SMO shows vO-CU and new instance of vO-DU operational and newly added cell is up and RF state of O-RU is ACTIVE.  Verify O-RU sync-state is set to LOCKED state and available for CU-plane communication. |
| 11 | Attach validation | **UE ss vO-DU/ vO-CU** | Verify that UE able to attach successfully with above mentioned configuration. |
| 12 | End to end data validation | **vO-DU/ vO-CU ssa UPF** | Verify end to end data is successful. |
| 13 | SMO triggers removal of the vO-DU running with older software version. | **SMO a vO-DU** | Verify successful addition of a new instance of vO-DU with upgraded software version is functional.  SMO prepares the vO-DU with older software version for deletion after traffic drain complete notification is received from the NF instance. |
| 14 | SMO sends requests to vO-DU with Deployment ID to terminate. | **vO-DU ss SMO** | Verify that vO-DU with older software version instance is successfully terminated from the O-Cloud resource pool. |

## ORAN.WG8.IOT.070: Verify successful reconfiguration for vO-DU.

### Test Purpose

The purpose of this test case is to verify successful reconfiguration for an vO-DU when SMO performs configuration updates in RAN over O1 interface.

### Reference Requirement

For detailed requirements, refer to the section 8.3 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* SMO is configured to add an O-Cloud into its inventory prior to the O-Cloud itself being activated.
* O-Cloud ID is generated by the SMO which represents a globally unique identifier for identifying the new O-Cloud instance by the SMO.
* Physical network connectivity exists between the network gateway of O-Cloud and SMO.
* Cloud software installation on O-Cloud and O-Cloud nodes is successful and operational.
* O-RU is implemented as a physical Network Function and deployed remotely. O-RU is managed entirely by vO-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* Use the default vO-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in vO-CU.
* vO-CU is connected to vO-DU.
* vO-CU is connected to 5GC through NG interface and vO-CU is operational.
* Support for PTP is enabled on all the Edge O-Cloud nodes. The Edge O-Cloud will host vO-DU as a service which will be operating as a slave clock.
* vO-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].
* O-Cloud is available and vO-DU as a network function is successfully deployed.

### Test Setup and Configuration

* **DUTs:** SMO, O-DU, vO-CU and O-RU.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.8.
* For rest of the MIB and SSB test profiles, refer B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures to verify vO-DU successfully downloads the configuration from SMO.

Table 7.71-1: Successful reconfiguration for an vO-DU over O1 interface

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | Multiple UE attach and bi-directional data traffic. | **UE ss vO-DU/ vO-CU ssa UPF** | Verify that multiple UEs are attached successfully in cloudified deployment.  Verify end to end data is successful. |
| 2 | vO-DU sends PM Data File ready notification to SMO. | **vO-DU a SMO** | Verify vO-DU sends notifyFileReady notification towards SMO as mentioned in [22] with the correct PM File Content and naming as mentioned in [28].  SMO successfully receives the Performance Measurements file.  SMO can use it for parameter optimization and reconfiguration of parameters on O1 interface. |
| 3 | Optimal beamforming configuration Ready at SMO. | **vO-DU ss SMO** | Verify SMO sends notifyFileReady notification towards vO-DU as mentioned in [22] with new beamforming configuration. |
| 4 | File download requested by SMO. | **vO-DU ss SMO** | Verify SMO sends "file-download-request" to trigger file download from server by vO-DU, including the location of the file. |
| 5 | File download accepted by vO-DU. | **vO-DU a SMO** | Verify vO-DU sends a "downloadFile" notification to SMO with final status of the download as success. |
| 6 | File download at O-RU. | **O-RU ss vO-DU** | Verify O-RU Controller/vO-DU sends file-download request to O-RU including the location of the file as mentioned in [24]. |
| 7 | File downloaded at O-RU. | **O-RU a vO-DU** | Verify O-RU sends response towards O-RU Controller/vO-DU with status of the file-download request as accepted.  Verify O-RU sends a notification for the result of the download process as successfully downloaded once the download is successful. |
| 8 | De-activate tx-array-carriers and rx-array-carriers | **O-RU ss vO-DU** | Verify the NETCONF client/vO-DU shall deactivate tx-array-carriers and rx-array-carriers in the U-Plane configuration by setting "INACTIVE" for the active parameters if they are ACTIVE. |
| 9 | De-activate the cell from the vO-DU. | **vO-DU a vO-CU** | vO-DU sends the F1AP gNB-DU configuration update to vO-CU.  F1AP gNB-DU configuration update message should contain all the mandatory IEs mentioned in section 4.1.6.1.2.5 of ORAN.WG5.C.1 [19].  O-DU should de-activate the cell information according to the service-state IE. |
| 10 | Apply new edited beamforming information | **O-RU ss vO-DU** | Verify vO-DU updated the new edited beamforming config to O-RU as per o-ran-beamforming.yang as mentioned in [24]. |
| 11 | Activate the cell from the vO-DU. | **vO-DU a vO-CU** | vO-DU sends the F1AP gNB-DU configuration update to vO-CU.  F1AP gNB-DU configuration update message should contain all the mandatory IEs mentioned in section 4.1.6.1.2.5 of ORAN.WG5.C.1 [19].  O-DU should de-activate the cell information according to the service-state IE. |
| 12 | Activate tx-array-carriers and rx-array-carriers with new beamforming configuration | **O-RU ss vO-DU** | Verify the NETCONF client/vO-DU shall activate tx-array-carriers and rx-array-carriers in the U-Plane configuration by setting "ACTIVE" for the in-active parameters. |
| 13 | Cell bring-up | **vO-DU/O-RU** | Verify cell bring-up is successful with the optimized beamforming configuration that has been received from SMO. |
| 14 | Attach validation | **UE ssa vO-DU/vO-CU** | Verify that UE able to attach successfully. |
| 15 | End to end data validation | **vO-DU/ vO-CU ssa UPF** | Verify end to end data is successful. |

## ORAN.WG8.IOT.071: Verify vO-DU functionality during PTP sync loss and recovery.

### Test Purpose

The purpose of this test case is to verify vO-DU functionality during PTP sync loss and recovery.

### Reference Requirement

For detailed requirements, refer to the section 7.11 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* SMO is configured to add an O-Cloud into its inventory prior to the O-Cloud itself being activated.
* O-Cloud ID is generated by the SMO which represents a globally unique identifier for identifying the new O-Cloud instance by the SMO.
* Physical network connectivity exists between the network gateway of O-Cloud and SMO.
* Cloud software installation on O-Cloud and O-Cloud nodes is successful and operational.
* O-RU is implemented as a physical Network Function and deployed remotely. O-RU is managed entirely by vO-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* Use the default vO-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in vO-CU.
* vO-CU is connected to vO-DU.
* vO-CU is connected to 5GC through NG interface and vO-CU is operational.
* Support for PTP is enabled on all the Edge O-Cloud nodes. The Edge O-Cloud will host vO-DU as a service which will be operating as a slave clock.
* vO-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].
* O-Cloud is available and vO-DU as a network function is successfully deployed.
* vO-DU has successfully subscribed to event/status from the O-Cloud and vO-DU is time synchronized.

### Test Setup and Configuration

* **DUTs:** SMO, vO-DU, vO-CU and O-RU.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.8.
* For rest of the MIB and SSB test profiles, refer B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures to verify vO-DU functionality during PTP sync loss and recovery.

Table 7.72-1: PTP sync loss & recovery in vO-DU.

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | O-Cloud triggers event notification when synchronizing network delivers unacceptable synchronization quality. | **O-Cloud a vO-DU** | Verify vO-DU receives PTP synchronization state notification with value set to "HOLDOVER"  Verify vO-DU transits to the HOLDOVER state.  Verify vO-DU shall send the sync-state as HOLDOVER to SMO. |
| 2 | Verify the status of the cell. | **vO-DU/vO-CU** | Verify SMO shows vO-CU and vO-DU operational and RF state of O-RU is ACTIVE. |
| 3 | Holdover mode expires at O-Cloud. | **O-Cloud a vO-DU** | Verify vO-DU receives PTP synchronization state notification with value set to "FREERUN"  Verify vO-DU transits to the FREERUN state. |
| 4 | Verify the status of the cell. | **vO-DU a SMO** | Verify vO-DU shall send the sync-state as FREERUN to SMO.  vO-DU shall disable RF transmission on all connected O-RUs, and keep it turned off until synchronization is recovered. |
| 5 | vO-DU sends the gNB-DU CONFIGURATION UPDATE message to vO-CU | **vO-DU a vO-CU** | Verify vO-DU sends the gNB-CU CONFIGURATION UPDATE ACKNOWLEDGE message to vO-CU.  Verify that as vO-DU sync state was not locked, it shall not activate any cells from Cells to be Activated List Item IE.  Verify that vO-DU shall report back to vO-CU Cells failed to be activated list IE.  vO-DU should send the cell information according to the service-state IE i.e. Out-Of-Service. |
| 6 | vO-CU sends the gNB-DU CONFIGURATION UPDATE ACKNOWLEDGE message to vO-DU | **vO-DU ss vO-CU** | Verify vO-CU sends the gNB-DU CONFIGURATION UPDATE ACKNOWLEDGE message to vO-DU. |
| 7 | O-Cloud triggers event notification when synchronizing network delivers acceptable synchronization quality. | **O-Cloud a vO-DU** | Verify vO-DU receives PTP synchronization state notification with value set to "LOCKED"  Verify time synchronization using PTP is successful on O-RU and it sends sync-status as LOCKED to vO-DU.  Verify vO-DU shall send the sync-state as LOCKED to SMO. |
| 8 | SMO shall set the administrate state of vO-DU. | **vO-DU ss SMO** | Verify vO-DU shall set the administrative state to UNLOCKED. |
| 10 | Cell Bring-up | **vO-DU/vO-CU** | Verify vO-DU sets the administrative state to UNLOCKED state.  Verify cell bring-up is successful.  vO-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of [24]. |
| 11 | Verify the status of the cell. | **vO-DU/vO-CU** | Verify SMO shows vO-CU and vO-DU operational and RF state of O-RU is ACTIVE.  Verify O-RU sync-state is set to LOCKED state and available for CU-plane communication. |
| 12 | Attach validation. | **UE ss vO-DU/ vO-CU** | Verify that UE able to attach successfully. |
| 13 | End to end data validation. | **vO-DU/ vO-CU ssa UPF** | Verify end to end data is successful. |

## ORAN.WG8.IOT.072: Verification of SSH/ TLS version compatibility of secured NETCONF session creation at O1 interface and fronthaul interface.

### Test Purpose

The purpose of this test case is to verify the version compatibility of SSH or TLS channel during NETCONF sessions establishment between O-DU server and SMO client at O1 interface and O-DU client and O-RU server at fronthaul M-Plane interface.

### Reference Requirement

For detailed requirements, refer to the section 8.4 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU are connected.
* SMO, O-DU client, O-DU server, and O-RU server have obtained their IPv4 addresses by auto-configuration with DHCP IPv4 or IPv6 address allocation.
* Default X.509 certificates are exchanged between SMO and O-DU, O-DU and O-RU by negotiating the key exchange algorithm between the client and server as described in O-RAN WG11 Security Protocol Specification [34] section 4. Public key certificates are used for authentication, secured data encryption and decryption.
* O-DU server has obtained the SMO client IP address, and O-RU server has obtained the O-DU client IP address through DHCP routing information or static routing configuration.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational. Connecting CU-Plane for data and the M-Plane for O-RU configuration updates.
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs:** single O-DU and single O-CU.
* **Testing tools:** are required for this test scenario:
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G-NR SMO.
* 5G Core or Core emulator used to terminate UEs (emulator) NAS protocol, and to support NGAP, HTTP2, PFCP protocols.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.4.

### Test Procedure

The following table describes the test procedure to verify SSH/ TLS version compatibility for the established NETCONF sessions between SMO client and O-DU server at O1 interface and O-DU client to O-RU server at fronthaul M-Plane interface.

Table 7.73-1: SSH/ TLS version compatibility verification during NETCONF session creation at O1 interface and fronthaul interface

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | Bring up O-DU. | **SMO ss O-DU** | Verify O-DU is powered ON and obtains its client and server IP addresses.  Verify O-DU server sends Pnfregistration message to SMO IP address with all the mandatory information elements. |
| 2 | SMO sends TLS connection initiation request to O-DU. | **O-DU ss SMO** | Verify SMO sends TLS client hello message to O-DU with all the mandatory parameters.  O-DU verifies the version information from the client hello message with that of the supported version at the O-DU server. TLS version between client and server supports version 1.2 mandatorily or 1.3 optionally, otherwise the connection is denied as per section 4.2 of [34].  Verify O-DU initiates authentication process and confirms to client about the TLS version compatibility by sending server hello message. |
| 3 | NETCONF session establishment between SMO and O-DU | **SMO / O-DU** | Verify NETCONF hello capability messages are communicated between SMO client and O-DU server to establish successful NETCONF session at O1 interface. |
| 4 | O-DU sends SSH or TLS connection initiation request to O-RU. | **O-DU a O-RU** | Verify O-DU sends SSH connection initiate message or TLS client hello message to O-RU with all the mandatory parameters.  O-RU verifies the version information from the SSH initiate message with that of the supported version at the O-RU server. The SSH version between client and server should support version 2 mandatorily, otherwise the connection is denied, as per section 4.1 of [34].  Alternatively, O-RU verifies the version information from the TLS client hello message with that of the supported version at the O-RU server. The TLS version between client and server should support 1.2 mandatorily or 1.3 optionally, otherwise the connection is denied as per section 4.2 of [34].  Verify O-RU initiates authentication process by confirming to the client about the SSH or TLS version compatibility to establish secured connection. |
| 5 | NETCONF session establishment between O-DU and O-RU | **O-DU / O-RU** | Verify NETCONF hello capability messages are communicated between O-DU client and O-RU server to establish successful NETCONF session at fronthaul interface. |

## ORAN.WG8.IOT.073: Verification of successful secured NETCONF session creation over SSH/ TLS channel at the O1 interface and fronthaul interface.

### Test Purpose

The purpose of this test case is to verify successful secured NETCONF session creation using SSH or TLS channel between O-DU server and SMO client at O1 interface and O-DU client and O-RU server at fronthaul M-Plane interface.

### Reference Requirement

For detailed requirements, refer to the section 8.4 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU are connected.
* SMO, O-DU client, O-DU server and O-RU server have obtained their IPv4 addresses by auto-configuration with DHCP IPv4 or IPv6 address allocation.
* Default X.509 certificates are exchanged between SMO and O-DU, O-DU and O-RU by negotiating the key exchange algorithm as described in O-RAN WG11 Security Protocol Specification [34] section 4. Public key certificates are used for deriving username of client by the server or vice versa, authentication, secured data encryption and decryption.
* O-DU server has obtained SMO IP address, and O-RU server has obtained O-DU client IP address through DHCP routing information or static routing configuration.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational. Connecting CU-Plane for data and the M-Plane for O-RU configuration transfer.
* SMO, O-DU and O-RU supports SSHV2 and TLS 1.2 mandatorily, or TLS 1.3 optionally, for the NETCONF connection, as defined by O-RAN WG11 security protocol specification [34].
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].
* O-DU is connected with M-Plane O-RU with Ethernet cable.

### Test Setup and Configuration

* **DUTs:** single O-DU and single O-CU.
* **Testing tools:** are required for this test scenario:
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G-NR SMO.
* 5G Core or Core emulator used to terminate UEs (emulator) NAS protocol, and to support NGAP, HTTP2, PFCP protocols.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.4.

### Test Procedure

The following table describes the test procedures to verify secured NETCONF session creation over SSH or TLS channel established between SMO and O-DU at O1 interface and O-DU and O-RU at fronthaul M-Plane interface.

Table 7.74-1: Verification of secured NETCONF session creation over SSH or TLS channel at O1 interface and fronthaul interface

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | Bring up O-DU. | **SMO ss O-DU** | Verify O-DU is powered ON and obtains its client and server IP addresses.  Verify O-DU server sends Pnfregistration message to SMO IP address with all the mandatory information elements. |
| 2 | SMO (TLS client) and O-DU (TLS server) authenticate each other to establish TLS secured connection. | **SMO / O-DU** | Verify SMO sends TLS client hello message to O-DU with all the mandatory parameters, once verifying the authentication of the server from the list of known hosts available at the client.  Verify O-DU authenticates SMO using mutual public key-based client and server authentication method using X.509 certificates, as per section 3.4.2 of [22]. |
| 3 | Secured NETCONF session establishment between SMO and O-DU. | **O-DU / SMO** | SMO and O-DU negotiate ciphering algorithm and integrity MACs algorithm using the supported cypher suits, as per section 4.2.2 of [34]. This ensures a secured TLS channel at O1 interface.  Verify NETCONF hello capability messages are communicated between SMO and O-DU to establish successful NETCONF session at O1 interface. |
| 4 | O-RU initiates NETCONF call home procedure with O-DU. | **O-DU ss O-RU** | Verify O-RU sends TCP connection request to O-DU as part of call home procedure to establish NETCONF session. |
| 5 | O-DU (SSH or TLS client) and O-RU (SSH or TLS server) authenticate each other to establish SSH or TLS secured connection. | **O-DU / O-RU** | Verify O-DU sends SSH connection initiate message or TLS client hello message to O-RU with all the mandatory parameters, once verifying the authentication of the server from the list of known hosts available at the client.  O-RU authenticates O-DU using password-based authentication method or public key-based client authentication method using X.509 certificates in case of SSHv2, as per section 6.4.2 of [24].  Alternatively, O-RU authenticates O-DU using mutual public key-based client authentication method using X.509 certificates in case of TLS 1.2 or 1.3, as per section 6.4.2 of [24]. |
| 6 | Secured NETCONF session establishment between O-DU and O-RU. | **O-RU / O-DU** | O-RU and O-DU negotiate ciphering algorithm and integrity MAC generation algorithm using the supported cypher suits, as per section 4.1.2.1 for SSH or 4.2.2 for TLS of [34]. This ensures a secured SSH or TLS channel at fronthaul interface.  Verify NETCONF hello capability messages are communicated between O-DU and O-RU to establish successful NETCONF session at fronthaul interface. |
| 7 | C/U plane transport connectivity verification between O-DU and O-RU. | **O-RU / O-DU** | O-DU sends loopback message to O-RU with MAC address and vlan-id periodically    O-RU sends loopback response to O-DU per received loopback message respectively  Based on the LBM responses received the O-DU shall decide on the connectivity status |
| 8 | Cell Bring-up | **O-DU/O-CU** | Verify cell bring-up is successful with the configuration that has been received from SMO.  O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of [24].  Verify new instance of O-DU sets the administrative state to UNLOCKED state. |
| 9 | Verify the status of the cell. | **O-DU/O-CU** | Verify SMO shows O-CU and new instance of O-DU operational and newly added cell is up and RF state of O-RU is ACTIVE.    Verify O-RU sync-state is set to LOCKED state and available for CU-plane communication. |
| 10 | Attach validation | **UE ss O-DU/ O-CU** | Verify that UE able to attach successfully with above mentioned configuration. |
| 11 | End to end data validation | **O-DU/ O-CU ssa UPF** | Verify end to end data is successful. |

## ORAN.WG8.IOT.074: Verification of Access Control Groups defined for NETCONF sessions created at O1 interface and fronthaul interface.

### Test Purpose

The purpose of this test case is to verify the access control group privileges that are provided for the NETCONF sessions between SMO client and O-DU server at the O1 interface and between O-DU client and O-RU server at the fronthaul M-Plane interface.

### Reference Requirement

For detailed requirements, refer to the section 8.4 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU are connected.
* SMO, O-DU client, O-DU server and O-RU server have obtained their IPv4 addresses by auto-configuration with DHCP IPv4 or IPv6 address allocation.
* Default X.509 certificates are exchanged between SMO and O-DU, O-DU and O-RU by negotiating the key exchange algorithm as described in O-RAN WG11 Security Protocol Specification [34] section 4. Public key certificates are used for deriving username of client by the server or vice versa, authentication, secured data encryption and decryption.
* O-DU server has obtained SMO IP address, and O-RU server has obtained O-DU client IP address through DHCP routing information or static routing configuration.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational. Connecting CU-Plane for data and the M-Plane for O-RU configuration transfer.
* SMO, O-DU and O-RU supports SSHV2 and TLS 1.2 mandatorily, or TLS 1.3 optionally, for the NETCONF connection, as defined by O-RAN WG11 security protocol specification [34].
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs:** single O-DU and single O-CU.
* **Testing tools:** are required for this test scenario:
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G-NR SMO.
* 5G Core or Core emulator used to terminate UEs (emulator) NAS protocol, and to support NGAP, HTTP2, PFCP protocols.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.4.

### Test Procedure

The following table describes the test procedures to verify the access control group privilege configuration that is set during NETCONF session establishment at O1 interface and fronthaul interface.

Table 7.75-1: Access control group verification for NETCONF session establishment at O1 interface and fronthaul interface

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | Bring up O-DU. | **SMO ss O-DU** | Verify O-DU is powered on and obtained its client and server IP address.  Verify O-DU server sends Pnfregistration message to SMO IP address with all the mandatory IEs incorporated. |
| 2 | NETCONF session establishment between SMO and O-DU. | **O-DU / SMO** | Verify NETCONF session is successful to establish O1 interface between SMO client and O-DU server.  If TLS is enabled, O-DU authenticates SMO (TLS client) to establish a secured NETCONF session based on the certificates available at O-DU.  Verify SMO is given "SUDO" privileges to provide full access like read, write and execute options according to the NETCONF access control group configuration as per section 5.5 of [22]. |
| 3 | SMO sends cell configuration to O-DU. | **SMO a O-DU** | Verify SMO sends cell configurations with all the mandatory IEs.  O-DU verifies the NETCONF access control group privilege of the requested SMO using the SMO's username available at O-DU and executes the configuration update based on "SUDO" privileges, as per section 5.5 of [22]. |
| 4 | NETCONF session establishment between O-DU and O-RU | **O-RU / O-DU** | Verify NETCONF session is successful for the fronthaul M-Plane interface between O-DU and O-RU.  Either for SSH or TLS, O-RU authenticates O-DU (SSH/ TLS client) to establish a secured NETCONF session based on the certificates available at O-RU.  Verify O-DU is given "SUDO" privileges to provide full access like read, write and execute options according to the NETCONF access control group configuration as per section 6.5 of [24]. |
| 5 | O-DU sends cell configuration to O-RU. | **SMO a O-DU** | Verify O-DU sends cell configurations with all the mandatory IEs related to low PHY parameters of the cell.  O-RU verifies the NETCONF access group privilege of the requested O-DU using the O-DU's username available at O-RU and executes the configuration update based on "SUDO" privileges, as per section 6.5 of [24]. |

## ORAN.WG8.IOT.075: Verify cell bring up using GoB configuration received from SMO is successful.

### Test Purpose

The purpose of this test case is to verify cell bring up using GoB configuration received from SMO is successful.

### Reference Requirement

For detailed requirements, refer to the section 7.14 and section 13.1 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to O-DU.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per test case ORAN.WG8.IOT.017.
* O-DU supports static or vendor specific GoB configuration.
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs:** SMO, O-DU, O-CU and O-RU.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.4.
* For rest of the MIB and SSB test profiles, refer B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures to verify cell bring up using GoB configuration received from SMO is successful.

Table 7.76-1: Cell bring up with GoB configuration

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | Cell configuration with beamforming received from SMO to O-DU. | **O-DU ss SMO** | Verify the following configuration is received from SMO to O-DU-OAM-Agent (O1 interface) and O-DU-OAM-Agent to MAC:  Beamforming configuration:   * ssb-PositionsInBurst   + groupPresence = 11111111   + inOneGroup =11111111 * ssb-periodicityServingCell * subCarrierSpacingCommon * ssb-SubcarrierOffset * numTxAnt * numRxAnt * numofBeams * numTXRUs * beamIndex * beamType * beamAzimuth * beamTilt * beamHorizWidth * beamVertWidth * coverageShape * digitalTilt * digitalAzimuth * numAntPorts (64) * numLayers |
| 2 | Cell configuration with beamforming information received from O-DU to O-RU | **O-RU ss O-DU** | Verify O-DU sends the beamforming configuration through file download request.  Verify O-RU downloads the file and applies the configuration. The state of O-RU is changed to INACTIVE. |
| 3 | Cell configuration update Response received from O-RU to O-DU. | **O-RU a O-DU** | Verify O-RU sends a notification for the result of the download process as successfully downloaded once the download is successful.  Verify once the O-RU applies new configuration, the state of O-RU is changed to ACTIVE. |
| 4 | Cell bring-up. | **O-DU/O-RU** | Verify cell bring-up is successful with the configuration that has been received from SMO.  O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of [24].  Verify O-DU sets the administrative state to UNLOCKED state. |
| 5 | O-DU/O-RU broadcast SSB beams as per defined periodicity. | **UE ss O-DU/ O-CU** | Verify the O-RU transmit all the 8 beams with a periodicity of 20ms.  Verify UE selects the strongest SSB beam from 8 beams broadcasted and sends RACH request with PRACH config index corresponding to beam selected. |
| 6 | Attach validation. | **UE ss O-DU/ O-CU** | Verify that UE able to attach successfully with above mentioned configuration |
| 7 | End to end data validation. | **O-DU/ O-CU a UPF** | Verify end to end data is successful. |

## ORAN.WG8.IOT.076: Verify successful AI/ML-assisted non-GoB beamforming optimization in Near RT RIC.

### Test Purpose

The purpose of this test case is to verify successful collection of L1 measurements and transfer of AI/ML assisted non-GoB beamforming optimization on E2 interface.

### Reference Requirement

For detailed requirements, refer to the section 7.14 and section 13.1 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to O-DU.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* O-DU supports Non-GoB Beamforming.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per test case ORAN.WG8.IOT.017.
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs:** SMO, O-DU, O-CU and O-RU.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.4.
* For rest of the MIB and SSB test profiles, refer B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures to verify successful collection of L1 measurements and transfer of AI/ML assisted non-GoB beamforming optimization on E2 interface.

Table 7.77-1: AI/ML assisted non-GoB beamforming optimization on E2 interface.

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | Cell configuration with beamforming received from SMO to O-DU. | **O-DU ss SMO** | Verify the following configuration is received from SMO to O-DU-OAM-Agent (O1 interface) and O-DU-OAM-Agent to MAC:  Beamforming configuration:   * ssb-PositionsInBurst   + groupPresence = 11111111   + inOneGroup =11111111 * ssb-periodicityServingCell * subCarrierSpacingCommon * ssb-SubcarrierOffset (0-11) * numTxAnt * numRxAnt * numofBeams (64) * numTXRUs (64) * beamIndex (64) * beamType * beamAzimuth * beamTilt * beamHorizWidth * beamVertWidth * coverageShape * digitalTilt * digitalAzimuth * numAntPorts (64) * numLayers |
| 2 | Cell configuration with beamforming information received from O-DU to O-RU. | **O-RU ss O-DU** | Verify O-DU sends the beamforming configuration through file download request.  Verify O-RU downloads the file and applies the configuration. The state of O-RU is changed to INACTIVE. |
| 3 | Cell configuration update Response received from O-RU to O-DU. | **O-RUa O-DU** | Verify O-RU sends a notification for the result of the download process as successfully downloaded once the download is successful.  Verify once the O-RU applies new configuration, the state of O-RU is changed to ACTIVE. |
| 4 | O-DU sends the E2 Setup request to near RT-RIC server. | **O-DU a near RT-RIC** | Verify O-DU sends the E2 Setup request message to near RT-RIC server with all the mandatory IEs. |
| 5 | near RT-RIC server sends E2 Setup Response to O-DU. | **O-DU ss near RT-RIC** | Verify near RT-RIC sends the E2 setup response to O-DU with all the mandatory IEs. |
| 6 | Cell bring-up | **O-DU/O-RU** | Verify cell bring-up is successful with the configuration that has been received from SMO.  O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of [24].  Verify O-DU sets the administrative state to UNLOCKED state. |
| 7 | O-DU/O-RU broadcast SSB beams as per defined periodicity. | **UE ss O-RUss O-DU** | Verify the O-RU transmit all the 8 beams with a periodicity of 20ms.  Verify UE selects the strongest SSB beam from 8 beams broadcasted and sends RACH request with PRACH config index corresponding to beam selected. |
| 8 | Near RT-RIC sends E2 RIC Query Request to O-DU | **O-DU ss near RT-RIC** | Verify near RT-RIC sends E2 RIC Control Request to O-DU with following IEs:   * Message Type * RIC Request ID * RAN Function ID * RIC Query Header   + RIC Style Type (2 = UE Information Query) * RIC Query Definition   + List of RAN parameters (2)   + RAN Parameter ID   + RAN Parameter Value (Number of supported Non-GoB beamforming modes ) |
| 9 | O-DU sends E2 RIC Query Response to Near RT-RIC | **O-DU a near RT-RIC** | Verify O-DU sends E2 RIC Query Response to Near RT-RIC with following IEs:   * Message Type * RIC Request ID * RAN Function ID * RIC Query Outcome   + UE ID   + List of RAN parameters   + RAN Parameter ID (2)   + RAN Parameter Value   + Non-GoB Beamforming Mode Index (A vendor-specific proprietary Non-GoB BF algorithm) |
| 10 | Attach validation | **UE ss O-DU/ O-CU** | Verify that UE able to attach successfully with above mentioned configuration |
| 11 | End to end data validation | **O-DU/ O-CU a UPF** | Verify end to end data is successful. |
| 12 | near RT-RIC sends E2 Subscription Request to O-DU. | **O-DU ss near RT-RIC** | Verify near RT-RIC server sends E2 Subscription Request to O-DU with the below measurements mentioned in RIC Action Definition IE, Section 5 of 3GPP Specification [25]:   * L1-RSRP measurement per UE * L1-SINR measurement per UE * CSI-RS Resource Indicator (CRI) * SS/PBCH Block Resource Indicator (SSBRI) per UE |
| 13 | O-DU sends the E2 Subscription Response to near-RT RIC server with supported subscription items and not supported items. | **O-DU a near RT-RIC** | Verify O-DU sends the E2 Subscription Response to near-RT-RIC server with "RIC Actions Admitted List" IE filled with O-DU supported list from the SUBSCRIPTION REQUEST and "RIC Actions Not Admitted List" IE filled with O-DU non-supported list. |
| 14 | O-DU sends the periodic report to the subscribed features to near RT-RIC server through RIC INDICATION message. | **O-DU a near RT-RIC** | Verify O-DU sends the periodic report to near RT-RIC server through RIC INDICATION message as per SUBSCRIPTION REQUEST. |
| 15 | Near RT-RIC sends E2 RIC Control Request to O-DU | **O-DU ss near RT-RIC** | Verify near RT-RIC sends E2 RIC Control Request to O-DU with following IEs:   * Message Type * RIC Request ID * RAN Function ID * RIC Control Header   + UE ID   + RIC Style ID (Control)   + Control Action ID (1) * RIC Control Message   + List of RAN parameters (2)   + RAN Parameter ID (1)   + RAN Parameter Value     - MIMO Mode Index (2 = MU-MIMO)   + RAN Parameter ID (2)   + RAN Parameter Value     - Non-GoB Beamforming Mode Index (A vendor-specific proprietary Non-GoB BF algorithm) |
| 16 | O-DU sends RIC Control Acknowledge to Near RT-RIC | **O-DUa near RT-RIC** | Verify O-DU sends RIC CONTROL ACKNOWLEDGE to Near-RT RIC to inform Near RT-RIC that the message was received and to provide information on the outcome of the request.  O-DU configures O-RU based on the optimized parameters received from Near RT-RIC. |
| 17 | Attach validation | **UE ssa O-DU/O-CU** | Verify that UE able to attach successfully. |
| 18 | End to end data validation | **O-DU/ O-CU ssa UPF** | Verify end to end data is successful. |

## ORAN.WG8.IOT.077: Verify successful cell bring-up of Shared O-RU in Single operator deployment.

### Test Purpose

The purpose of this test case is to verify successful cell bring up when shared O-RU is configured with partitioned carrier#1 for O-DU#1 and partitioned carrier#2 for O-DU#2.

### Reference Requirement

For detailed requirements, refer to the section 13.2 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, Shared O-RU Operator SMO, O-DU#1, O-DU#2 and Shared O-RU is connected.
* It is assumed that sharing co-ordinator has successfully configured SMO to partition Shared O-RU between multiple O-DUs.
* It is assumed that SMO configures transport systems with call home identities for O-DUs.
* It is assumed that O-RU supports SHARED-ORU-MULTI-ODU feature.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in O-CU.
* Shared O-RU is managed entirely by primary O-DU#1 using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU#1 is connected to O-DU#1 (Refer Section 4.20.3.1.2 of [38]).
* O-CU#2 is connected to O-DU#2 (Refer Section 4.20.3.1.2 of [38]).
* O-CU#1 and O-CU#2 is connected to 5GC through NG interface and O-CU is operational.
* It is assumed that when Power-ON the O-DUs, the NETCONF Server is started or when the O-DUs are restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU#1 and O-DU#2 have obtained end to end IP connectivity with SMO. The O-DUs shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DUs and SMO as per test case ORAN.WG8.IOT.017 (Refer Section 6.7.2 of [28]).
* O-DUs and Shared O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs:** Shared O-RU Operator SMO, O-DU#1, O-DU#2, O-CU#1, O-CU#2 and Shared O-RU.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.9.
* For rest of the MIB and SSB test profiles, refer B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures to verify cell bring in Shared O-RU, Single MNO deployment.

Table 7.78-1: Cell bring-up in Shared O-RU, Single operator deployment

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | Power-on gNB including O-CUs, O-DUs and Shared O-RU. | **O-DUs ss O-RU** | Verify shared O-RU sends TCP connection request to each O-DU as part of call home procedure to establish NETCONF session. |
| 2 | Secured NETCONF session establishment between O-DUs and shared O-RU. | **O-RU / O-DUs** | Verify NETCONF hello capability messages are communicated between O-DUs and shared O-RU to establish successful NETCONF session at fronthaul interface. |
| 3 | SMO sends cell configuration and partitioned carrier information to O-DUs. | **O-DUs ss SMO** | Verify the cell configuration is received from SMO to O-DUs (O1 interface). |
| 4 | O-DUs sends partitioned carrier configuration to shared O-RU to establish C/U-Plane application endpoints. | **O-RU ss O-DUs** | Verify O-DUs sends the partitioned carrier configuration through file download request.  Verify O-RU downloads the file and applies the configuration. The state of O-RU is changed to INACTIVE. |
| 5 | O-RU sends sync-status information to O-DUs. | **O-RU a O-DUs** | Verify shared O-RU is able to achieve time synchronization with GPS.  Verify shared O-RU shall send the sync-status as LOCKED to O-DUs. |
| 6 | Activate partitioned tx/rx array carriers. | **O-RU ss O-DUs** | Verify O-DUs shall activate tx-array-carriers and rx-array-carriers in the U-Plane configuration by setting the value of the parameter "active" at tx-array-carrier element / rx-array-carrier element to "ACTIVE". |
| 7 | O-DUs sends sync-state information and set the operational state in SMO. | **O-DUs a SMO** | Verify O-DUs shall send the sync-state as LOCKED to SMO.  Verify O-DUs set the operational state to ENABLED state. |
| 8 | SMO shall set the administrate state of O-DUs. | **O-DUs ss SMO** | Verify O-DUs shall set the administrative state to UNLOCKED state. |
| 9 | Cell Bring-up | **O-DUs/O-CU** | Verify cell bring-up is successful with the configuration that has been received from SMO.  O-DUs monitors the synchronization-state-change notification periodically to ensure that shared O-RU is in LOCKED state and available for CUS-plane communication, as described in section 13.1 of [24].  Verify O-DUs sets the administrative state to UNLOCKED state. |
| 10 | Verify the status of the cell. | **O-DUs/O-CU** | Verify SMO shows O-CUs and O-DUs operational and newly added cell is up and RF state of shared O-RU is ACTIVE.  Verify shared O-RU sync-state is set to LOCKED state and available for CU-plane communication.  Verify both cells are operational. |
| 11 | UE#1 Attach validation with O-DU#1 | **UE#1 ss O-DU#1/ O-CU#1** | Verify that UE able to attach successfully with partitioned O-DU#1. |
| 12 | UE#2 Attach validation with O-DU#2 | **UE#2 ss O-DU#2/ O-CU#2** | Verify that UE able to attach successfully with partitioned O-DU#2. |
| 13 | Data is started in both DL and UL for UE#1. | **O-DU#1/ O-CU#1 a UPF** | Verify that the values for "FrequencyDomainAllocation" "StartPRB" and "NoOfPRBs" in DL Scheduling Information (Refer Section 11.2.4.3.8 of [1]) align with the partitioning performed by the coordinator for O-DU#1.  Verify end to end data is successful for UE#1 |
| 14 | Data is started in both DL and UL for UE#2. | **O-DU#2/ O-CU#2 a UPF** | Verify that the values for "FrequencyDomainAllocation" "StartPRB" and "NoOfPRBs" in DL Scheduling Information (Refer Section 11.2.4.3.8 of [1]) align with the partitioning performed by the coordinator for O-DU#2.  Verify end to end data is successful for UE#2 |

## ORAN.WG8.IOT.078: Verify successful detection for supervision failure of Shared O-RU in Single operator deployment.

### Test Purpose

The purpose of this test case is to verify successful detection of supervision failure with an O-DU when watchdog timer expires.

### Reference Requirement

For detailed requirements, refer to the section 13.2 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, Shared O-RU Operator SMO, O-DU#1, O-DU#2 and Shared O-RU is connected.
* It is assumed that sharing co-ordinator has successfully configured SMO to partition Shared O-RU between multiple O-DUs.
* It is assumed that SMO configures transport systems with call home identities for O-DUs.
* It is assumed that O-RU supports SHARED-ORU-MULTI-ODU feature.
* odu-id is pre-provisioned in the o-ran-supervision YANG model for Shared O-RU to identify the O-DU#1 and O-DU#2.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in O-CU.
* Shared O-RU is managed entirely by primary O-DU#1 using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU#1 is connected to O-DU#1 (Refer Section 4.20.3.1.2 of [38]).
* O-CU#2 is connected to O-DU#2 (Refer Section 4.20.3.1.2 of [38]).
* O-CU#1 and O-CU#2 is connected to 5GC through NG interface and O-CU is operational.
* It is assumed that when Power-ON the O-DUs, the NETCONF Server is started or when the O-DUs are restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU#1 and O-DU#2 have obtained end to end IP connectivity with SMO. The O-DUs shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DUs and SMO as per test case ORAN.WG8.IOT.017 (Refer Section 6.7.2 of [28])
* O-DUs are operating control and user plane for their respective partitioned carriers.
* O-DUs and Shared O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs:** Shared O-RU Operator SMO, O-DU#1, O-DU#2, O-CU#1, O-CU#2 and Shared O-RU.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.9.
* For rest of the MIB and SSB test profiles, refer B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures to verify supervision failure of a shared O-RU.

Table 7.79-1: Supervision failure of Shared O-RU, Single operator deployment

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | SMO sends create-subscription message to shared O-RU via O-DUs. | **O-RU ss O-DUs** | Verify SMO sends the create-subscription message to shared O-RU via O-DU using NETCONF session. |
| 2 | SMO sends the create-subscription message to shared O-RU via O-DUs for the selected list of alarms supported. | **O-RU ss O-DUs** | Verify SMO sends the create-subscription message for the selected list of alarms to shared O-RU via O-DUs as per Annex A of [24]. |
| 3 | Shared O-RU sends supervision-notification to O-DUs at the expiry of notification timer | **O-RU a O-DUs** | Verify O-DUs confirms that NETCONF connectivity to the shared O-RU is operational by receiving the notification.  Verify O-DUs send supervision-watchdog-reset notification including odu-id before supervision timer expiry. |
| 4 | Power Off the switch hosting the netconf session for O-DU#2. | **O-RU/O-DU#2** | Verify supervision-watchdog-reset notification from O-DU#2 was not received by the Shared O-RU before supervision timer expiry. |
| 5 | Due to supervision failure tx-array-carriers and rx-array-carriers are disabled. | **O-RU** | Verify the shared O-RU should disable the tx-array-carriers and rx-array-carriers in the U-Plane configuration by setting the value of the parameter "inactive" at tx-array-carrier element / rx-array-carrier element to "INACTIVE" for O-DU#2. |
| 6 | De-activate the cell from the O-DU#2. | **O-DU#2 a O-CU#2** | O-DU#2 sends the F1AP gNB-DU configuration update to O-CU#2.  F1AP gNB-DU configuration update message should contain all the mandatory IEs mentioned in section 4.1.6.1.2.5 of ORAN.WG5.C.1 [19].  O-DU#2 should de-activate the cell information according to the service-state IE. |
| 7 | Shared O-RU reports the alarm (Lost O-DU ID based supervision) for the SUBSCRIBED alarm to O-DU1. O-DU#1 forwards the reported alarms notification to SMO. | **O-DU#1 a SMO** | Verify shared O-RU reports the below alarm notification for the SUBSCRIBED alarm to O-DU#1 and O-DU#1 forwards the SUBSCRIBED alarm to SMO.  #35 "Lost O-DU ID based Supervision " |
| 8 | Periodical call home towards O-DU#2. | **O-RU a O-DU#2** | Verify O-RU remains operational and performs periodical Call Home towards O-DU#2. |
| 9 | Cell Bring-up is successful for recovered supervision session when switch is powered on. | **O-DU#2/O-CU#2** | Verify Alarm ID #35 is cleared on the SMO.  Verify cell bring-up is successful with the configuration that has been received from SMO.  O-DU#2 monitors the synchronization-state-change notification periodically to ensure that shared O-RU is in LOCKED state and available for CUS-plane communication, as described in section 13.1 of [24].  Verify O-DU#2 sets the administrative state to UNLOCKED state. |

## ORAN.WG8.IOT.079: Verify successful performance management of a Shared O-RU in Single operator deployment.

### Test Purpose

The purpose of this test case is to verify that each O-DU has established subscriptions to receive performance management notifications from shared O-RU.

### Reference Requirement

For detailed requirements, refer to the section 13.2 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, Shared O-RU Operator SMO, O-DU#1, O-DU#2 and Shared O-RU is connected.
* It is assumed that sharing co-ordinator has successfully configured SMO to partition Shared O-RU between multiple O-DUs.
* It is assumed that SMO configures transport systems with call home identities for O-DUs.
* It is assumed that O-RU supports SHARED-ORU-MULTI-ODU feature.
* It is assumed that O-DUs are identified by the sro-id (shared resource operator-id) with access privileges as defined in section 19.3.3 [24].
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in O-CU.
* Shared O-RU is managed entirely by primary O-DU#1 using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU#1 is connected to O-DU#1 (Refer Section 4.20.3.1.2 of [38]).
* O-CU#2 is connected to O-DU#2 (Refer Section 4.20.3.1.2 of [38]).
* O-CU#1 and O-CU#2 is connected to 5GC through NG interface and O-CU is operational.
* It is assumed that when Power-ON the O-DUs, the NETCONF Server is started or when the O-DUs are restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU#1 and O-DU#2 have obtained end to end IP connectivity with SMO. The O-DUs shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DUs and SMO as per test case ORAN.WG8.IOT.017 (Refer Section 6.7.2 of [28]).
* O-DUs are operating control and user plane for their respective partitioned carriers.
* O-DUs and Shared O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs:** Shared O-RU Operator SMO, O-DU#1, O-DU#2, O-CU#1, O-CU#2 and Shared O-RU.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.9.
* For rest of the MIB and SSB test profiles, refer B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures to verify performance management of a shared O-RU.

Table 7.80-1: Performance management of Shared O-RU, Single operator deployment

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | Cell Bring-up | **O-DUs/O-CU** | Verify cell bring-up is successful with the configuration that has been received from SMO.  O-DUs monitors the synchronization-state-change notification periodically to ensure that shared O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of [24].  Verify O-DUs sets the administrative state to UNLOCKED state.  Verify both cells are operational. |
| 2 | UE#1 Attach validation with O-DU#1 | **UE#1 ss O-DU#1/ O-CU#1** | Verify that UE able to attach successfully with partitioned O-DU#1. |
| 3 | UE#2 Attach validation with O-DU#2 | **UE#2 ss O-DU#2/ O-CU#2** | Verify that UE able to attach successfully with partitioned O-DU#2. |
| 4 | Data is started in both DL and UL for UE#1. | **O-DU#1/ O-CU#1 a UPF** | Verify that the values for "FrequencyDomainAllocation" "StartPRB" and "NoOfPRBs" in DL Scheduling Information (Refer Section 11.2.4.3.8 of [1]) align with the partitioning performed by the coordinator for O-DU#1.  Verify end to end data is successful for UE#1 |
| 5 | Data is started in both DL and UL for UE#2. | **O-DU#2/ O-CU#2 a UPF** | Verify that the values for "FrequencyDomainAllocation" "StartPRB" and "NoOfPRBs" in DL Scheduling Information (Refer Section 11.2.4.3.8 of [1]) align with the partitioning performed by the coordinator for O-DU#2.  Verify end to end data is successful for UE#2 |
| 6 | O-DU#1 collects the performance counters and reports it to O-DU-OAM-Agent. | **O-DU#1 a SMO** | Verify the following APIs are sent from MAC towards O-DU-OAM-Agent containing the performance counters as mentioned in ORAN-WG8.AAD [1]:   * RSRP/RSRQ/SINR measurements * Measurement for the SSB beam switch * Beam Failure statistics per cell per beam * UL SRS RSRP measurement |
| 7 | PM Data File ready notification by O-DU-OAM-Agent. | **O-DU#1 a SMO** | Verify O-DU-OAM-Agent sends notifyFileReady notification towards SMO as mentioned in [22] with the correct PM File Content and naming as mentioned in [28].  SMO successfully received the Performance Measurements file.  SMO can use it for parameter optimization and reconfiguration of parameters on O1 interface. |
| 8 | O-DU#2 collects the performance counters and reports it to O-DU-OAM-Agent. | **O-DU#2 a SMO** | Verify the following APIs are sent from MAC towards O-DU-OAM-Agent containing the performance counters as mentioned in ORAN-WG8.AAD [1]:   * RSRP/RSRQ/SINR measurements * Measurement for the SSB beam switch * Beam Failure statistics per cell per beam * UL SRS RSRP measurement |
| 9 | PM Data File ready notification by O-DU-OAM-Agent. | **O-DU#2 a SMO** | Verify O-DU-OAM-Agent sends notifyFileReady notification towards SMO as mentioned in [22] with the correct PM File Content and naming as mentioned in [28].  SMO successfully received the Performance Measurements file.  SMO can use it for parameter optimization and reconfiguration of parameters on O1 interface. |

## ORAN.WG8.IOT.080: Verify successful switchover from active to standby O-DU node in Single operator deployment.

### Test Purpose

The purpose of this test case is to verify basic resiliency operation with the shared O-RU.

### Reference Requirement

For detailed requirements, refer to the section 13.2 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, Shared O-RU Operator SMO, O-DU#1, O-DU#2 and Shared O-RU is connected.
* It is assumed that sharing co-ordinator has successfully configured SMO to partition Shared O-RU between multiple O-DUs.
* It is assumed that SMO configures transport systems with call home identities for O-DUs.
* It is assumed that O-RU supports SHARED-ORU-MULTI-ODU feature.
* It is assumed that O-DU#2 has been pre-provisioned with the same carrier configuration as O-DU#1.
* It is assumed that the call home operation is successful with O-DU#2 and it is currently in stand-by mode.
* odu-id is pre-provisioned in the o-ran-supervision YANG model for Shared O-RU to identify the O-DU#1 and O-DU#2.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in O-CU.
* Shared O-RU is managed entirely by primary O-DU#1 using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU#1 is connected to O-DU#1 and standby O-DU#2. (Refer Section 4.20.3.1.2 of [38]).
* O-CU#1 is connected to 5GC through NG interface and O-CU is operational.
* It is assumed that when Power-ON the O-DUs, the NETCONF Server is started or when the O-DUs are restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU#1 and O-DU#2 have obtained end to end IP connectivity with SMO. The O-DUs shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DUs and SMO as per test case ORAN.WG8.IOT.017 (Refer Section 6.7.2 of [28]).
* O-DU#1 is operating CUS plane for its respective partitioned carrier.
* O-DUs have subscribed to alarm notifications successfully.
* There are many possible operations to trigger the resiliency use case, only full failure of a O-DU is considered in this use case.
* O-DUs and Shared O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs:** Shared O-RU Operator SMO, O-DU#1, O-DU#2, O-CU#1 and Shared O-RU.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.9.
* For rest of the MIB and SSB test profiles, refer B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures to verify basic resiliency operation with a shared O-RU.

Table 7.81-1: Basic resiliency with shared O-RU, Single operator deployment

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | Cell Bring-up | **O-DU#1/O-CU#1** | Verify cell bring-up is successful with the configuration that has been received from SMO.  O-DU#1 monitors the synchronization-state-change notification periodically to ensure that shared O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of [24].  Verify O-DUs sets the administrative state to UNLOCKED state. |
| 2 | O-DU#1 fails. (Due to scenarios like power outage or GPS sync loss) | **O-DU#1** | Verify O-DU#1 set the operational state as DISABLED. |
| 3 | Shared O-RU losses communication with O-DU#1. | **O-DU#1 a O-RU** | Verify supervision-watchdog-reset notification from O-DU#1 was not received by the Shared O-RU before supervision timer expiry. |
| 4 | Due to supervision failure tx-array-carriers and rx-array-carriers are disabled. | **O-RU** | Verify the shared O-RU should disable the tx-array-carriers and rx-array-carriers in the U-Plane configuration by setting the value of the parameter "inactive" at tx-array-carrier element / rx-array-carrier element to "INACTIVE" for O-DU#1. |
| 5 | Shared O-RU reports the alarm (Lost O-DU ID based supervision) for the SUBSCRIBED alarm to O-DU#2. O-DU forwards the reported alarms notification to SMO. | **O-DU#2 a SMO** | Verify shared O-RU reports the below alarm notification for the SUBSCRIBED alarm to O-DU#2 and O-DU#2 forwards the SUBSCRIBED alarm to SMO.  #35 "Lost O-DU ID based Supervision " |
| 6 | SMO activates the standby O-DU#2 as active Primary O-DU by setting the administrate state of O-DU#2. | **O-DU#2 ss SMO** | Verify O-DU#2 shall set the operational state as ENABLED.  Verify O-DU#2 shall set the administrative state to UNLOCKED state. |
| 7 | Activate partitioned tx/rx array carriers using the replica configuration of shared O-RU at O-DU#2. | **O-RU ss O-DU#2** | Verify O-DU#2 shall activate tx-array-carriers and rx-array-carriers in the U-Plane configuration by setting the value of the parameter "active" at tx-array-carrier element / rx-array-carrier element to "ACTIVE" for O-DU#2. |
| 8 | Cell Bring-up is successful. | **O-DU#2/O-CU#1** | Verify cell bring-up is successful.  O-DU#2 monitors the synchronization-state-change notification periodically to ensure that shared O-RU is in LOCKED state and available for CUS-plane communication, as described in section 13.1 of [24].  Verify O-DU#2 sets the administrative state to UNLOCKED state. |
| 9 | UE Attach validation with O-DU#2 | **UE ss O-DU#2/ O-CU#1** | Verify that UE able to attach successfully with O-DU#2. |
| 10 | Data is started in both DL and UL for the UE. | **O-DU#2/ O-CU#1 a UPF** | Verify that the values for "FrequencyDomainAllocation" "StartPRB" and "NoOfPRBs" in DL Scheduling Information (Refer Section 11.2.4.3.8 of [1]) align with the partitioning performed by the coordinator for O-DU#2.  Verify end to end data is successful for the UE. |

## ORAN.WG8.IOT.081: Verify successful scale-out operation for a O-DU node by the SMO in Single operator deployment.

### Test Purpose

The purpose of this test case is to verify scale-out operation for an O-DU by the SMO in single operator shared O-RU deployment.

### Reference Requirement

For detailed requirements, refer to the section 13.2 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, Shared O-RU Operator SMO, O-DU#1, O-DU#2 and Shared O-RU is connected.
* It is assumed that sharing co-ordinator has successfully configured SMO to partition Shared O-RU between multiple O-DUs.
* It is assumed that SMO configures transport systems with call home identities for O-DUs.
* It is assumed that O-RU supports SHARED-ORU-MULTI-ODU feature.
* odu-id is pre-provisioned in the o-ran-supervision YANG model for Shared O-RU to identify the O-DU#1 and O-DU#2.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in O-CU.
* Shared O-RU is managed entirely by primary O-DU#1 using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU#1 is connected to O-DU#1 (Refer Section 4.20.3.1.2 of [38]).
* O-CU#2 is connected to O-DU#2 (Refer Section 4.20.3.1.2 of [38]).
* O-CU#1 and O-CU#2 is connected to 5GC through NG interface and O-CU is operational.
* It is assumed that when Power-ON the O-DUs, the NETCONF Server is started or when the O-DUs are restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU#1 and O-DU#2 have obtained end to end IP connectivity with SMO. The O-DUs shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DUs and SMO as per test case ORAN.WG8.IOT.017 (Refer Section 6.7.2 of [28]).
* O-DU#1 is operating CUS plane for its respective partitioned carrier.
* O-DU#1 have subscribed to alarm notifications successfully.
* O-DUs and Shared O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs:** Shared O-RU Operator SMO, O-DU#1, O-DU#2, O-CU#1, O-CU#2 and Shared O-RU.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.9.
* For rest of the MIB and SSB test profiles, refer B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures to verify scale-out operation for an O-DU.

Table 7.82-1: Scale-out operation for O-DU with shared O-RU, Single operator deployment

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | Cell Bring-up | **O-DU#1/O-CU#1** | Verify cell bring-up is successful with the configuration that has been received from SMO.  O-DU#1 monitors the synchronization-state-change notification periodically to ensure that shared O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of [24].  Verify O-DUs sets the administrative state to UNLOCKED state. |
| 2 | SMO triggers capacity modification processing. | **SMO** | SMO determines that scale out is needed and determines what deployment scaling is required to increase shared O-RU capacity.  This is vendor specific, and the scale-out algorithm can vary depending on the implementation/design.  Few examples for scale-out:   * UE based scaling. * Network Energy Saving.   Note: As per section 3.2.2 of [32], scaling is managed by the SMO. Self-management of scaling by the NF is for future study. |
| 3 | Call home towards O-DU#2. | **O-DU#2 ss O-RU** | Verify shared O-RU sends TCP connection request to O-DU#2 as part of call home procedure to establish NETCONF session. |
| 4 | Secured NETCONF session establishment between O-DU#2 and shared O-RU. | **O-RU / O-DU#2** | Verify NETCONF hello capability messages are communicated between O-DU#2 and shared O-RU to establish successful NETCONF session at fronthaul interface. |
| 5 | SMO sends cell configuration and partitioned carrier information to O-DU#2. | **O-DU#2 ss SMO** | Verify the cell configuration is received from SMO to O-DU#2 (O1 interface). |
| 6 | O-DU#2 sends partitioned carrier configuration to shared O-RU to establish C/U-Plane application endpoints. | **O-RU ss O-DU#2** | Verify O-DU#2 sends the partitioned carrier configuration through file download request.  Verify O-RU downloads the file and applies the configuration. The state of O-RU is changed to INACTIVE. |
| 7 | O-RU sends sync-status information to O-DU#2. | **O-RU a O-DU#2** | Verify shared O-RU is able to achieve time synchronization with GPS.  Verify shared O-RU shall send the sync-status as LOCKED to O-DUs. |
| 8 | Activate partitioned tx/rx array carriers. | **O-RU ss O-DU#2** | Verify O-DU#2 shall activate tx-array-carriers and rx-array-carriers in the U-Plane configuration by setting the value of the parameter "active" at tx-array-carrier element / rx-array-carrier element to "ACTIVE". |
| 9 | O-DU#2 sends sync-state information and set the operational state in SMO. | **O-DU#2 a SMO** | Verify O-DU#2 shall send the sync-state as LOCKED to SMO.  Verify O-DU#2 set the operational state to ENABLED state. |
| 10 | SMO shall set the administrate state of O-DU#2. | **O-DU#2 ss SMO** | Verify O-DU#2 shall set the administrative state to UNLOCKED state. |
| 11 | Cell Bring-up | **O-DU#2/O-CU#2** | Verify cell bring-up is successful with the configuration that has been received from SMO.  O-DU#2 monitors the synchronization-state-change notification periodically to ensure that shared O-RU is in LOCKED state and available for CUS-plane communication, as described in section 13.1 of [24].  Verify O-DU#2 sets the administrative state to UNLOCKED state. |
| 12 | Verify the status of the cell. | **O-DU#2/O-CU#2** | Verify SMO shows O-CU#2 and O-DU#2 operational and newly added cell is up and RF state of shared O-RU is ACTIVE.  Verify shared O-RU sync-state is set to LOCKED state and available for CU-plane communication. |
| 13 | UE#1 Attach validation with O-DU#2 | **UE#1 ss O-DU#2/ O-CU#2** | Verify that UE able to attach successfully with partitioned O-DU#2. |
| 14 | Data is started in both DL and UL for UE#1. | **O-DU#2/ O-CU#2 a UPF** | Verify that the values for "FrequencyDomainAllocation" "StartPRB" and "NoOfPRBs" in DL Scheduling Information (Refer Section 11.2.4.3.8 of [1]) align with the partitioning performed by the coordinator for O-DU#2.  Verify end to end data is successful for UE#1. |

## ORAN.WG8.IOT.082: Verify successful software upgrade for O-RU triggered by O-DU.

### Test Purpose

The purpose of this test case is to verify successful software upgrade for an O-RU when a new software image is available and upgrade is initiated by O-DU.

### Reference Requirement

For detailed requirements, refer to the section 13.2 in ORAN-WG8.AAD [1] and Chapter 8 in ORAN-WG4.MP.0-R003-v14.00.

### Initial Conditions

Following are the preconditions for this test.

* O-RU is connected to O-DU.
* O-RU is implemented as a physical Network Function and deployed remotely. O-RU is connected to O-DU using O-RAN WG4 defined hierarchical approach (Refer Chapter 2.3 of [22]), Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-DU provides the software inventory information of connected O-RU to the SMO.
* SMO establishes NETCONF session with O-DU.
* Appropriate software file for O-RU is pre-installed in O-RU and corresponding manifest.xml is located in O-DU.
* O-DU has subscribed to receive **download/install/activation -event** notifications.
* At least one software slot with status **active**::False and **running**::False exists in O-RU.

### Test Setup and Configuration

* **DUTs:** SMO, O-DU, O-CU and O-RU.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup see A.8.
* For rest of the MIB and SSB test profiles, refer B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures to verify successful software upgrade for an O-RU when a new software image is available and upgrade is initiated by O-DU.

Table 7.83-1: Software upgrade of O-RU

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | SMO triggers the software download to O-RU | **O-RU ss O-DU** | SMO sends NETCONF to trigger download of the software to O-DU.  Verify O-DU sends file-download request to O-RU with remote file path to download software file from a file server and should ensure that all the files necessary for the O-RU are transferred from the file server to the O-RU. |
| 2 | O-RU downloads software files | **O-RU a O-DU** | Verify O-RU sends response towards O-DU with status of the file-download request as accepted. Software-download RPC triggers the O-RU to download a file  Verify O-RU sends a notification for the result of the download process as successfully downloaded once the download is successful. |
| 3 | O-DU triggers the installation of the software | **O-RU/O-DU** | Verify O-DU requests installation of the software using software-install RPC, and provides the slot name where the software needs to be installed along with a list of filenames to be installed    Verify O-RU sends a notification about completion of the sw installed. |
| 4 | O-DU triggers the activation of the software | **O-RU/O-DU** | Verify O-DU requests the O-RU to activate the slot that contains the newly installed software using the software-activate rpc.    Verify O-RU sends a notification about completion of the sw activation procedure.    Verify O-DU restarts the O-RU and O-RU comes up with newly installed and activated software. |
| 5 | Cell Bring-up | **O-DU/O-CU** | Verify cell bring-up is successful with the configuration that has been received from SMO.  O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of [24].  Verify new instance of O-DU sets the administrative state to UNLOCKED state. |
| 6 | Verify the status of the cell. | **O-DU/O-CU** | Verify SMO shows O-CU and new instance of O-DU operational and newly added cell is up and RF state of O-RU is ACTIVE.    Verify O-RU sync-state is set to LOCKED state and available for CU-plane communication. |
| 7 | Attach validation | **UE ss O-DU/ O-CU** | Verify that UE able to attach successfully with above mentioned configuration. |
| 8 | End to end data validation | **O-DU#2/ O-CU#2 a UPF** | Verify end to end data is successful. |

## ORAN.WG8.IOT.083: Verify successful configuration and data header compression/de-compression at O-CU when RoHC profile "0x0001" is used for "RTP/UDP/IP".

### Test Purpose

The purpose of this test case is to verify successful configuration and data header compression/de-compression at O-CU when RoHC profile "0x0001" is used for "RTP/UDP/IP".

### Reference Requirements

For detailed requirements, refer to the section 12.6 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Cell bring-up is successful with default configuration.
* F1AP connection is successful between O-CU and O-DU.
* O-DU and O-RU are time synchronized. O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of ORAN.WG4.MP [24]).
* The UE has decoded MIB and SIB1.
* RACH procedure is successful.
* SMO pre-configures RoHC profile "0x0001" for 5QI-1 to be used at O-CU.

### Test Setup and Configuration

* **DUTs:** single O-DU and single O-CU
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or Core emulator used to terminate UEs (emulator) NAS protocol, and to support NGAP, HTTP2, PFCP protocols.
* IMS to provide support for VoNR.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP, SIP protocol content.
* Configuration:
* For details on the test setup refer Annex A.1.
* For details on the MIB and SSB test profiles, see B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.
* For details on the IMS test profiles, see B.10.

### Test Procedure

The following table below describes the test steps to verify RoHC configuration and header compression/de-compression.

Table 7.84-1: Registration & data transfer when RoHC is enabled

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | The UE sends RRCSetupRequest with random ue-identity and establishment cause (refer to the section 5.3.3 in 3GPP 38.331 [8]). | **UE a O-DU/ O-CU** | Verify that O-DU receives the RRC setup Request message from the UE and sends Initial UL RRC message to O-CU with RRC setup request message in RRC container.  Verify all the mandatory IEs of Initial UL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19]. |
| 2 | UE receives RRCsetup message for SRB1 creation. | **UE ss O-DU/ O-CU** | Verify that O-CU sends DL RRC message transfer to O-DU with RRC setup message in the RRC container to establish SRB1.  Verify all the mandatory IEs of DL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-DU sends RRC setup message to UE.  Verify all the mandatory IEs of RRC setup as per section 6.2.2 in 3GPP Specification. [8]. |
| 3 | UE sends RRC setup complete message over SRB1 with Registration Request as NAS payload. | **UE a O-DU/ O-CU** | Verify that O-DU receives the RRC setup complete message with registration request as NAS payload from UE and sends UL RRC message transfer to O-CU with RRC setup complete and Registration Request message in RRC container.  Verify all the mandatory IEs of UL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-CU sends Initial UE Message to AMF with NAS payload as Registration Request.  Verify all the mandatory IEs of Initial UE message as per section 9.2.5.1 of 3GPP Specification [20]. |
| 4 | UE receives NAS Authentication Request message from AMF with authentication parameters required for successfully authenticating the network. | **UE ss O-DU/ O-CU** | Verify that O-CU receives DL NAS Transport message with Authentication request as NAS payload.    Verify that O-CU sends DL RRC Message Transfer to O-DU with NAS Authentication Request in the RRC container.  Verify all the mandatory IEs of DL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-DU sends DL Information Transfer message to UE with NAS Authentication request message.  Verify all the mandatory IEs of DL information transfer message as per section 6.2.2 in 3GPP Specification [8]. |
| 5 | UE sends NAS Authentication response message after successfully authenticating the network. | **UE a O-DU/ O-CU** | Verify that O-DU receives the UL Information Transfer message from UE with NAS Authentication Response message.  Verify that O-DU sends UL RRC Message Transfer to O-CU with NAS Authentication response in RRC container.  Verify all the mandatory IEs of UL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-CU sends UL NAS Transport message to AMF with Authentication Response as NAS payload.  Verify all the mandatory IEs of UL NAS Transport message as per section 9.2.5.3 in 3GPP Specification [20]. |
| 6 | UE receives NAS Security mode command message for integrity protection and ciphering. | **UE ss O-DU/ O-CU** | Verify that O-CU receives DL NAS Transport message with security mode command as NAS payload.  Verify that O-CU sends DL RRC Message Transfer to O-DU with NAS Security mode command in the RRC container  Verify all the mandatory IEs of DL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-DU sends DL Information Transfer message to UE with NAS Security mode command message.  Verify all the mandatory IEs of DL information transfer message as per section 6.2.2 in 3GPP Specification [8]. |
| 7 | UE sends NAS Security mode complete message. This message is integrity protected and ciphered. | **UE a O-DU/ O-CU** | Verify that O-DU receives the UL Information Transfer message from UE with NAS Security mode complete message.  Verify that O-DU sends UL RRC Message Transfer to O-CU with NAS Security mode complete message in RRC container.  Verify all the mandatory IEs of UL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-CU sends UL NAS Transport message to AMF with Security mode complete as NAS payload.  Verify all the mandatory IEs of UL NAS Transport message as per section 9.2.5.3 in 3GPP Specification [20]. |
| 8 | UE receives AS security mode command message. | **UE ss O-DU/ O-CU** | Verify that O-CU receives Initial context setup request or DL NAS Transport from AMF with Registration accept as NAS payload.  Verify all the mandatory IEs as per the section 9.2.2.1 or 9.2.5.2 in 3GPP Specification [20].  Verify that O-CU sends DL RRC message transfer to O-DU with AS security mode command message in RRC container.  Verify all the mandatory IEs of DL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify the O-DU sends SecurityModeCommand to UE which contains AS integrity and Ciphering Algorithms supported by O-CU.  Verify all the mandatory IEs as per section 6.2.2 in 3GPP Specification [8]. |
| 9 | UE sends AS Security mode complete message. | **UE a O-DU/ O-CU** | Verify in response of previous step, the O-DU receives SecurityModeComplete from UE.  Verify all the mandatory IEs as per section 6.2.2 in 3GPP Specification [8].  Verify that O-DU sends UL RRC message transfer to O-CU which contains AS security mode complete in RRC container.  Verify all the mandatory IEs of UL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19]. |
| 10 | UE receives UE capability Enquiry message. | **UE ss O-DU/ O-CU** | Verify that O-CU receives the UE radio capability check request from AMF to check the compatibility between UE radio capabilities and network configuration.  O-CU can optionally request for the UE capability enquiry to the UE.  Verify that O-CU sends DL RRC message transfer to O-DU which contains UE capability enquiry in RRC container.  Verify all the mandatory IEs of DL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-DU sends UE capability enquiry to UE to check the UE capabilities.  Verify all the mandatory IEs as per section 6.2.2 in 3GPP Specification [8]. |
| 11 | UE sends UE capability information message. | **UE a O-DU/ O-CU** | Verify that O-DU receives UE capability information from UE.  Verify all the mandatory IEs as per section 6.2.2 in 3GPP Specification [8].  Verify that O-DU sends UL RRC message transfer to O-CU which contains UE capability information in the RRC container.  Verify all the mandatory IEs of UL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-CU sends UE Radio Capability Info Indication message to AMF.  Verify all the mandatory IEs as per section 9.2.13.1 in 3GPP Specification [20].  Verify PDCP-Parameters within UE-NR-Capability have "supportedROHC-Profiles" with "profile0x0001" is set to true as per 3GPP Specification [8].  Verify that "voiceOverNR" within IMS Parameters is set to supported as per 3GPP Specification [8]. |
| 12 | UE receives Registration Accept message. | **UE ss O-DU/ O-CU** | Verify that O-CU sends DL RRC message transfer to O-DU which contains Registration Accept in RRC container.  Verify all the mandatory IEs of DL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-DU sends DL Information Transfer message to UE with NAS Registration accept message.  Verify all the mandatory IEs of DL information transfer message as per section 6.2.2 in 3GPP Specification [8].  Verify 5GS "IMS voice over PS session supported over 3GPP access" bit is set to 1 within Network Feature Support. |
| 13 | UE sends Registration complete message. | **UE a O-DU/ O-CU** | Verify that O-DU receives the UL Information Transfer message from UE with NAS Registration complete message.  Verify that O-DU sends UL RRC Message Transfer to O-CU with NAS Registration complete message in RRC container.  Verify all the mandatory IEs of UL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-CU sends Initial context setup response to AMF.  Verify all the mandatory IEs as per section 9.2.2.2 in 3GPP Specification [20].  Verify that O-CU sends UL NAS Transport message to AMF with Registration complete as NAS payload.  Verify all the mandatory IEs of UL NAS Transport message as per section 9.2.5.3 in 3GPP Specification [20]. |
| 14 | The UE sends PDU session Establishment Request with PDU session id (refer to the section 8.3.1 in 3GPP Specification [21]) for Internet session establishment. | **UE a O-DU/ O-CU** | Verify PDU session establishment is successful for 5QI 9. |
| 15 | The UE sends PDU session Establishment Request with PDU session id (refer to the section 8.3.1 in 3GPP Specification [21]) for IMS session establishment. | **UE a O-DU/ O-CU** | Verify that O-DU receives UL information transfer message which contains PDU session establishment request as NAS message.  Verify that O-DU sends UL RRC message transfer to O-CU which contains PDU session establishment request in RRC container.  Verify all the mandatory IEs of UL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-CU sends Uplink NAS transport with NAS PDU as PDU Session Establishment Request to AMF.  Verify all the mandatory IEs as per section 9.2.5.3 in 3GPP Specification [20]. |
| 16 | UE receives RRC reconfiguration and PDU session establishment accept message. | **UE ss O-DU/ O-CU** | Verify that O-CU receives PDU Session Resource Setup Request from AMF with NAS-PDU as PDU session establishment accept.  Verify all the mandatory IEs as per section 9.2.1.1 in 3GPP Specification [20].  Verify that O-CU sends UE context setup request to O-DU for establishing the DRB.  Verify all the mandatory IEs of UE context setup request as per section 6.1.1.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-DU sends UE context setup response to O-CU after successfully establishing the DRB.  Verify all the mandatory IEs of UE context setup response as per section 6.1.1.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-CU sends DL RRC message transfer to O-DU with RRC reconfiguration in RRC container.  Verify all the mandatory IEs of DL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-DU sends RRC reconfiguration message to UE which contains PDU session establishment accept as NAS payload. |
| 17 | UE sends RRC reconfiguration complete. | **UE a O-DU/ O-CU** | Verify that O-DU receives RRC reconfiguration complete from UE.  Verify that O-DU sends UL RRC message transfer to O-CU with RRC reconfiguration complete in RRC container.  Verify all the mandatory IEs of UL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-CU sends PDU Session Resource Setup Response to AMF over NG interface.  Verify all the mandatory IEs as per section 9.2.1.2 in 3GPP Specification [20]. |
| 18 | IMS: SIP Registration | **UE a IMS** | Verify SIP Setup before Voice Traffic is successful. |
| 19 | Trigger voice call from UE#1 to UE#2. | **O-CU/O-DU ss AMF** | Verify that O-CU receives NGAP PDU Session Resource Modify Request message which contains the Information about the PDU Session and the flow for establishment of 5QI=1.  NGAP PDU Session Resource Modify Request contains all the Mandatory IEs mentioned in the section 9.2.1.5 and 9.3.4.3 of 3GPP Specification [20].  Verify that O-CU sends F1AP UE Context Modification Request message to O-DU.  F1AP UE Context Modification Request message contains all the mandatory IEs mentioned in section 6.3.1.2.1 of ORAN.WG5.C.1 [19].  Verify that O-DU sends F1AP UE Context Modification Response message to O-CU.  F1AP UE Context Modification Response message contains all the mandatory IEs mentioned in section 6.3.1.2.1 of ORAN.WG5.C.1 [19].  Verify that O-CU sends F1AP DL RRC Message Transfer Request with RRC reconfiguration message in RRC container to O-DU and the message contains all the mandatory IEs mentioned in section 6.3.1.2.1 of ORAN.WG5.C.1 [19]. |
| 20 | UE receives RRC reconfiguration and 5G SM: PDU session Modification Command message. | **UE ss O-DU/ O-CU** | Verify that O-DU sends RRC reconfiguration message to UE and the RRC Reconfiguration message contains all the mandatory IEs mentioned in the 3GPP Specification [8].  Verify that UE receives RRCReconfiguration with drb-ToAddModList, pdu-Session, mappedQoS-FlowToAdd, pdcp-config with headerCompression enabled to setup 5QI 1 in RLC UM mode as per 3GPP Specification [8].   * PDCP-Config   + drb   + headerCompression     - rohc       * maxCID 15       * profiles       * profile0x0001 true       * profile0x0002 false       * profile0x0003 false       * profile0x0004 false       * profile0x0006 false       * profile0x0101 false       * profile0x0102 false       * profile0x0103 false       * profile0x0104 false |
| 21 | UE sends RRC Reconfiguration Complete. | **UE a O-DU/ O-CU** | Verify that O-DU receives the RRC Reconfiguration Complete message and sends F1AP UL RRC message transfer to O-CU which contains RRC Reconfiguration Complete inside RRC container.  Verify all the mandatory IEs of UL RRC message transfer as per section 6.1.1.3 F1-C IE handling in ORAN.WG5.C.1 [19]. |
| 22 | O-CU sends NGAP PDU Session Resource Modify Response message to AMF. | **O-DU/O-CU a AMF** | Verify that AMF receives the NGAP PDU Session Resource Modify Response.  NGAP PDU Session Resource Modify Response contains all the Mandatory IEs mentioned in the section 9.2.1.6 and 9.3.4.3 of 3GPP Specification [20].  Verify that O-CU sends F1AP UE Context Modification Request to O-DU.  F1AP UE Context Modification Request message contains all the mandatory IEs mentioned in section 6.3.1.2.1 of ORAN.WG5.C.1 [19].  Verify that O-DU sends F1AP UE Context Modification Response message to O-CU.  F1AP UE Context Modification Response message contains all the mandatory IEs mentioned in section 6.3.1.2.1 of ORAN.WG5.C.1 [19]. |
| 23 | UE sends UL Information Transfer message containing the NAS message 5GSM: PDU Session Modification Complete. | **UE a O-DU/ O-CU** | Verify that O-DU receives the sends UL Information Transfer message and sends UL RRC message transfer to O-CU.  Verify that O-CU sends NGAP Uplink NAS Transport Message to AMF with NAS payload as 5GSM: PDU Session Modification Complete. |
| 24 | Start RTP voice traffic. | **UE#1 ssa O-DU/O-CU ssa CN/IMS ssa UE#2** | Verify that end-to-end speech packet transfer is successful by ensuring that downlink data header is compressed at the gNB and decompressed at the UE, and that uplink data header is compressed at the UE and decompressed at the gNB.  Verify successful header compression and de-compression from gNB Wireshark and UE logs.  Verify that the end-to-end voice call is successful.  Verify that enabling RoHC does not cause any performance impact.  Note: There might be slight impact on CPU utilization due to additional processing of compression/de-compression of header when RoHC is enabled. |
| 25 | Terminate the voice call from UE#1. | **O-CU/O-DU ss AMF** | Verify that O-CU receives NGAP PDU Session Resource Modify Request message which contains the Information about the PDU Session and the flow for deletion of 5QI=1.  NGAP PDU Session Resource Modify Request contains all the Mandatory IEs mentioned in the section 9.2.1.5 and 9.3.4.3 of 3GPP Specification [20].  Verify that O-CU sends F1AP UE Context Modification Request message to O-DU.  F1AP UE Context Modification Request message contains all the mandatory IEs mentioned in section 6.3.1.2.1 of ORAN.WG5.C.1 [19].  Verify that O-DU sends F1AP UE Context Modification Response message to O-CU.  F1AP UE Context Modification Response message contains all the mandatory IEs mentioned in section 6.3.1.2.1 of ORAN.WG5.C.1 [19].  Verify that O-CU sends F1AP DL RRC Message Transfer Request with RRC reconfiguration message in RRC container to O-DU and the message contains all the mandatory IEs mentioned in section 6.3.1.2.1 of ORAN.WG5.C.1 [19]. |
| 26 | UE receives RRC reconfiguration and 5G SM: PDU session Modification Command message. | **UE ss O-DU/ O-CU** | Verify that O-DU sends RRC reconfiguration message to UE and the RRC Reconfiguration message contains all the mandatory IEs mentioned in the 3GPP Specification [8].  Verify that UE receives RRCReconfiguration with drb-ToReleaseList to release 5QI 1 as per 3GPP Specification [8]. |
| 27 | UE sends RRC Reconfiguration Complete. | **UE a O-DU/ O-CU** | Verify that O-DU receives the RRC Reconfiguration Complete message and sends F1AP UL RRC message transfer to O-CU which contains RRC Reconfiguration Complete inside RRC container.  Verify all the mandatory IEs of UL RRC message transfer as per section 6.1.1.3 F1-C IE handling in ORAN.WG5.C.1 [19]. |
| 28 | O-CU sends NGAP PDU Session Resource Modify Response message to AMF. | **O-DU/O-CU a AMF** | Verify that AMF receives the NGAP PDU Session Resource Modify Response.  NGAP PDU Session Resource Modify Response contains all the Mandatory IEs mentioned in the section 9.2.1.6 and 9.3.4.3 of 3GPP Specification [20].  Verify that O-CU sends F1AP UE Context Modification Request to O-DU.  F1AP UE Context Modification Request message contains all the mandatory IEs mentioned in section 6.3.1.2.1 of ORAN.WG5.C.1 [19].  Verify that O-DU sends F1AP UE Context Modification Response message to O-CU.  F1AP UE Context Modification Response message contains all the mandatory IEs mentioned in section 6.3.1.2.1 of ORAN.WG5.C.1 [19]. |
| 29 | UE sends UL Information Transfer message containing the NAS message 5GSM: PDU Session Modification Complete. | **UE a O-DU/ O-CU** | Verify that O-DU receives the sends UL Information Transfer message and sends UL RRC message transfer to O-CU.  Verify that O-CU sends NGAP Uplink NAS Transport Message to AMF with NAS payload as 5GSM: PDU Session Modification Complete. |

## ORAN.WG8.IOT.084: Verify successful configuration and data header compression/de-compression at O-CU when RoHC profile "0x0002" is used for "UDP/IP".

### Test Purpose

The purpose of this test case is to verify successful configuration and data header compression/de-compression at O-CU when RoHC profile "0x0002" is used for "UDP/IP".

### Reference Requirements

For detailed requirements, refer to the section 12.6 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Cell bring-up is successful with default configuration.
* F1AP connection is successful between O-CU and O-DU.
* O-DU and O-RU are time synchronized. O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of ORAN.WG4.MP [24]).
* The UE has decoded MIB and SIB1.
* RACH procedure is successful.
* SMO pre-configures RoHC profile "0x0002" for 5QI-9 to be used at O-CU.

### Test Setup and Configuration

* **DUTs:** single O-DU and single O-CU
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or Core emulator used to terminate UEs (emulator) NAS protocol, and to support NGAP, HTTP2, PFCP protocols.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP, SIP protocol content.
* Configuration:
* For details on the test setup refer Annex A.1.
* For details on the MIB and SSB test profiles, see B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table below describes the test steps to verify RoHC configuration and header compression/de-compression.

Table 7.85-1: Registration & data transfer when RoHC is enabled

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | The UE sends RRCSetupRequest with random ue-identity and establishment cause (refer to the section 5.3.3 in 3GPP 38.331 [8]). | **UE a O-DU/ O-CU** | Verify that O-DU receives the RRC setup Request message from the UE and sends Initial UL RRC message to O-CU with RRC setup request message in RRC container.  Verify all the mandatory IEs of Initial UL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19]. |
| 2 | UE receives RRCsetup message for SRB1 creation. | **UE ss O-DU/ O-CU** | Verify that O-CU sends DL RRC message transfer to O-DU with RRC setup message in the RRC container to establish SRB1.  Verify all the mandatory IEs of DL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-DU sends RRC setup message to UE.  Verify all the mandatory IEs of RRC setup as per section 6.2.2 in 3GPP Specification. [8]. |
| 3 | UE sends RRC setup complete message over SRB1 with Registration Request as NAS payload. | **UE a O-DU/ O-CU** | Verify that O-DU receives the RRC setup complete message with registration request as NAS payload from UE and sends UL RRC message transfer to O-CU with RRC setup complete and Registration Request message in RRC container.  Verify all the mandatory IEs of UL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-CU sends Initial UE Message to AMF with NAS payload as Registration Request.  Verify all the mandatory IEs of Initial UE message as per section 9.2.5.1 of 3GPP Specification [20]. |
| 4 | UE receives NAS Authentication Request message from AMF with authentication parameters required for successfully authenticating the network. | **UE ss O-DU/ O-CU** | Verify that O-CU receives DL NAS Transport message with Authentication request as NAS payload.    Verify that O-CU sends DL RRC Message Transfer to O-DU with NAS Authentication Request in the RRC container.  Verify all the mandatory IEs of DL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-DU sends DL Information Transfer message to UE with NAS Authentication request message.  Verify all the mandatory IEs of DL information transfer message as per section 6.2.2 in 3GPP Specification [8]. |
| 5 | UE sends NAS Authentication response message after successfully authenticating the network. | **UE a O-DU/ O-CU** | Verify that O-DU receives the UL Information Transfer message from UE with NAS Authentication Response message.  Verify that O-DU sends UL RRC Message Transfer to O-CU with NAS Authentication response in RRC container.  Verify all the mandatory IEs of UL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-CU sends UL NAS Transport message to AMF with Authentication Response as NAS payload.  Verify all the mandatory IEs of UL NAS Transport message as per section 9.2.5.3 in 3GPP Specification [20]. |
| 6 | UE receives NAS Security mode command message for integrity protection and ciphering. | **UE ss O-DU/ O-CU** | Verify that O-CU receives DL NAS Transport message with security mode command as NAS payload.  Verify that O-CU sends DL RRC Message Transfer to O-DU with NAS Security mode command in the RRC container  Verify all the mandatory IEs of DL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-DU sends DL Information Transfer message to UE with NAS Security mode command message.  Verify all the mandatory IEs of DL information transfer message as per section 6.2.2 in 3GPP Specification [8]. |
| 7 | UE sends NAS Security mode complete message. This message is integrity protected and ciphered. | **UE a O-DU/ O-CU** | Verify that O-DU receives the UL Information Transfer message from UE with NAS Security mode complete message.  Verify that O-DU sends UL RRC Message Transfer to O-CU with NAS Security mode complete message in RRC container.  Verify all the mandatory IEs of UL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-CU sends UL NAS Transport message to AMF with Security mode complete as NAS payload.  Verify all the mandatory IEs of UL NAS Transport message as per section 9.2.5.3 in 3GPP Specification [20]. |
| 8 | UE receives AS security mode command message. | **UE ss O-DU/ O-CU** | Verify that O-CU receives Initial context setup request or DL NAS Transport from AMF with Registration accept as NAS payload.  Verify all the mandatory IEs as per the section 9.2.2.1 or 9.2.5.2 in 3GPP Specification [20].  Verify that O-CU sends DL RRC message transfer to O-DU with AS security mode command message in RRC container.  Verify all the mandatory IEs of DL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify the O-DU sends SecurityModeCommand to UE which contains AS integrity and Ciphering Algorithms supported by O-CU.  Verify all the mandatory IEs as per section 6.2.2 in 3GPP Specification [8]. |
| 9 | UE sends AS Security mode complete message. | **UE a O-DU/ O-CU** | Verify in response of previous step, the O-DU receives SecurityModeComplete from UE.  Verify all the mandatory IEs as per section 6.2.2 in 3GPP Specification [8].  Verify that O-DU sends UL RRC message transfer to O-CU which contains AS security mode complete in RRC container.  Verify all the mandatory IEs of UL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19]. |
| 10 | UE receives UE capability Enquiry message. | **UE ss O-DU/ O-CU** | Verify that O-CU receives the UE radio capability check request from AMF to check the compatibility between UE radio capabilities and network configuration.  O-CU can optionally request for the UE capability enquiry to the UE.  Verify that O-CU sends DL RRC message transfer to O-DU which contains UE capability enquiry in RRC container.  Verify all the mandatory IEs of DL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-DU sends UE capability enquiry to UE to check the UE capabilities.  Verify all the mandatory IEs as per section 6.2.2 in 3GPP Specification [8]. |
| 11 | UE sends UE capability information message. | **UE a O-DU/ O-CU** | Verify that O-DU receives UE capability information from UE.  Verify all the mandatory IEs as per section 6.2.2 in 3GPP Specification [8].  Verify that O-DU sends UL RRC message transfer to O-CU which contains UE capability information in the RRC container.  Verify all the mandatory IEs of UL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-CU sends UE Radio Capability Info Indication message to AMF.  Verify all the mandatory IEs as per section 9.2.13.1 in 3GPP Specification [20].  Verify PDCP-Parameters within UE-NR-Capability have "supportedROHC-Profiles" with "profile0x0002" is set to true as per 3GPP Specification [8]. |
| 12 | UE receives Registration Accept message. | **UE ss O-DU/ O-CU** | Verify that O-CU sends DL RRC message transfer to O-DU which contains Registration Accept in RRC container.  Verify all the mandatory IEs of DL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-DU sends DL Information Transfer message to UE with NAS Registration accept message.  Verify all the mandatory IEs of DL information transfer message as per section 6.2.2 in 3GPP Specification [8].  Verify 5GS "IMS voice over PS session supported over 3GPP access" bit is set to 1 within Network Feature Support. |
| 13 | UE sends Registration complete message. | **UE a O-DU/ O-CU** | Verify that O-DU receives the UL Information Transfer message from UE with NAS Registration complete message.  Verify that O-DU sends UL RRC Message Transfer to O-CU with NAS Registration complete message in RRC container.  Verify all the mandatory IEs of UL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-CU sends Initial context setup response to AMF.  Verify all the mandatory IEs as per section 9.2.2.2 in 3GPP Specification [20].  Verify that O-CU sends UL NAS Transport message to AMF with Registration complete as NAS payload.  Verify all the mandatory IEs of UL NAS Transport message as per section 9.2.5.3 in 3GPP Specification [20]. |
| 14 | The UE sends PDU session Establishment Request with PDU session id (refer to the section 8.3.1 in 3GPP Specification [21]). | **UE a O-DU/ O-CU** | Verify that O-DU receives UL information transfer message which contains PDU session establishment request as NAS message.  Verify that O-DU sends UL RRC message transfer to O-CU which contains PDU session establishment request in RRC container.  Verify all the mandatory IEs of UL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-CU sends Uplink NAS transport with NAS PDU as PDU Session Establishment Request to AMF.  Verify all the mandatory IEs as per section 9.2.5.3 in 3GPP Specification [20]. |
| 15 | UE receives RRC reconfiguration and PDU session establishment accept message. | **UE ss O-DU/ O-CU** | Verify that O-CU receives PDU Session Resource Setup Request from AMF with NAS-PDU as PDU session establishment accept.  Verify all the mandatory IEs as per section 9.2.1.1 in 3GPP Specification [20].  Verify that O-CU sends UE context setup request to O-DU for establishing the DRB.  Verify all the mandatory IEs of UE context setup request as per section 6.1.1.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-DU sends UE context setup response to O-CU after successfully establishing the DRB.  Verify all the mandatory IEs of UE context setup response as per section 6.1.1.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-CU sends DL RRC message transfer to O-DU with RRC reconfiguration in RRC container.  Verify all the mandatory IEs of DL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-DU sends RRC reconfiguration message to UE which contains PDU session establishment accept as NAS payload.  Verify that UE receives RRCReconfiguration with drb-ToAddModList, pdu-Session, mappedQoS-FlowToAdd, pdcp-config with headerCompression enabled to setup 5QI 9 as per 3GPP Specification [8].   * PDCP-Config   + drb   + headerCompression     - rohc       * maxCID 15       * profiles       * profile0x0001 false       * profile0x0002 true       * profile0x0003 false       * profile0x0004 false       * profile0x0006 false       * profile0x0101 false       * profile0x0102 false       * profile0x0103 false |
| 16 | UE sends RRC reconfiguration complete. | **UE a O-DU/ O-CU** | Verify that O-DU receives RRC reconfiguration complete from UE.  Verify that O-DU sends UL RRC message transfer to O-CU with RRC reconfiguration complete in RRC container.  Verify all the mandatory IEs of UL RRC message transfer as per section 6.1.2.3 F1-C IE handling in ORAN.WG5.C.1 [19].  Verify that O-CU sends PDU Session Resource Setup Response to AMF over NG interface.  Verify all the mandatory IEs as per section 9.2.1.2 in 3GPP Specification [20]. |
| 17 | Trigger UDP Data transfer in Uplink and downlink on the flow of 5QI 9 using any traffic generator tool or IPERF application. | **UE#1 ssa O-DU/O-CU ssa UPF/IMS ssa UE#2** | Verify that end-to-end data transfer is successful by ensuring that downlink data header is compressed at the gNB and decompressed at the UE, and that uplink data header is compressed at the UE and decompressed at the gNB.  Verify successful header compression and de-compression from gNB Wireshark and UE logs.  Verify that the end-to-end data transfer is successful.  Verify that enabling RoHC does not cause any performance impact.  Note: There might be slight impact on CPU utilization due to additional processing of compression/de-compression of header when RoHC is enabled. |

## ORAN.WG8.IOT.085: Verify successful collection and transfer of slice performance reports via E2 interface.

### Test Purpose

The purpose of this test case is to verify successful collection and transfer of slice measurements reports on E2 interface.

### Reference Requirement

For detailed requirements, refer to the section 13.4 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to O-DU.
* O-DU and O-CU are connected to near RT-RIC.
* SMO is pre-configured with near RT-RIC server IP address as per the data model.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per test case ORAN.WG8.IOT.017.
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs:** SMO, O-DU, O-CU and O-RU.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.4.
* For rest of the MIB and SSB test profiles, refer B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures to verify successful collection and transfer of slice measurements reports on E2 interface.

Table 7.86-1: Slice measurements on E2 interface.

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | SMO sends Cell Configuration to O-DU. | **O-DU ss SMO** | Verify the following configuration is carried between SMO to O-DU-OAM-Agent (O1 interface), O-DU-OAM-Agent to MAC and also containing all the mandatory IEs mentioned in section 11.2.1.1, Table 11-2 of [1]   * PLMN Information List   + PLMNid = Valid configured value   + S-NSSAIlist   + 24930   + 24931   + 24932 |
| 2 | SMO sends Slice Configuration Request to O-DU | **O-DU ss SMO** | Verify the following configuration is carried between SMO to O-DU-OAM-Agent (O1 interface), O-DU-OAM-Agent to MAC and also containing all the mandatory IEs mentioned in section 11.2.4.2.3, Table 11-22 of [1]   * S-NSSAI = 24930   + RRMPolicyRatio = PRB   + rRMPolicyMaxRatio = 50   + rRMPolicyMinRatio = 30   + rRMPolicyDedicatedRatio = 20 |
| 3 | O-DU sends Slice Configuration Response to SMO | **O-DU a SMO** | Verify that the O-DU sends a response after validating that the S-NSSAI is within the slice range and part of slice support list.  Verify O-DU sends the slice configuration response to SMO as per below IEs mentioned in section 11.2.4.3.4 in Section 11.2 of [1]   * Slice Index = 24930 * Response = OK   Slice configuration and prioritization is followed according to the O-RAN specification. |
| 4 | O-DU sends the E2 Setup request to near RT-RIC server. | **O-DU a near RT-RIC** | Verify O-DU sends the E2 Setup request message to near RT-RIC server with all the mandatory IEs. |
| 5 | Near RT-RIC server sends E2 Setup Response to O-DU. | **O-DU ss near RT-RIC** | Verify near RT-RIC sends the E2 setup response to O-DU with all the mandatory IEs. |
| 6 | Cell bring-up | **O-DU/O-RU** | Verify cell bring-up is successful with the configuration that has been received from SMO.  O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of [24].  Verify O-DU sets the administrative state to UNLOCKED state. |
| 7 | Attach validation | **UE ss O-DU/ O-CU** | Verify that UE able to attach successfully with above mentioned configuration |
| 8 | Start end to end data transfer. | **O-DU/ O-CU a UPF** | Verify end to end data is successful. |
| 9 | Near RT-RIC sends E2 Subscription Request to O-DU. | **O-DU ss near RT-RIC** | Verify near RT-RIC server sends E2 Subscription Request to O-DU with the measurements mentioned as per Section 5 of 3GPP Specification [25] in RIC Action Definition IE and Measurement Label set to Slice ID. |
| 10 | O-DU sends the E2 Subscription Response to near-RT RIC server with supported subscription items and not supported items. | **O-DU a near RT-RIC** | Verify O-DU sends the E2 Subscription Response to near-RT-RIC server with "RIC Actions Admitted List" IE filled with O-DU supported list from the SUBSCRIPTION REQUEST and "RIC Actions Not Admitted List" IE filled with O-DU non-supported list. |
| 11 | O-DU sends the periodic report to the subscribed features to near RT-RIC server through RIC INDICATION message. | **O-DU a near RT-RIC** | Verify O-DU sends the periodic report to near RT-RIC server through RIC INDICATION message as per SUBSCRIPTION REQUEST. |

## ORAN.WG8.IOT.086: Verify successful policy delivery and execution of slice reconfiguration via E2 interface.

### Test Purpose

The purpose of this test case is to verify successful policy delivery and execution of slice reconfiguration via E2 interface.

### Reference Requirement

For detailed requirements, refer to the section 13.4 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU is connected to O-DU.
* O-DU and O-CU are connected to near RT-RIC.
* SMO is pre-configured with near RT-RIC server IP address as per the data model.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per test case ORAN.WG8.IOT.017.
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs:** SMO, O-DU, O-CU and O-RU.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.4.
* For rest of the MIB and SSB test profiles, refer B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures to verify successful collection and transfer of slice measurements reports on E2 interface.

Table 7.87-1: Slice reconfiguration on E2 interface.

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | SMO sends Cell Configuration to O-DU. | **O-DU ss SMO** | Verify the following configuration is carried between SMO to O-DU-OAM-Agent (O1 interface), O-DU-OAM-Agent to MAC and also containing all the mandatory IEs mentioned in section 11.2.1.1, Table 11-2 of [1]   * PLMN Information List   + PLMNid = Valid configured value   + S-NSSAIlist   + 24930   + 24931   + 24932 |
| 2 | SMO sends Slice Configuration Request to O-DU | **O-DU ss SMO** | Verify the following configuration is carried between SMO to O-DU-OAM-Agent (O1 interface), O-DU-OAM-Agent to MAC and also containing all the mandatory IEs mentioned in section 11.2.4.2.3, Table 11-22 of [1]   * S-NSSAI = 24930   + RRMPolicyRatio = PRB   + rRMPolicyMaxRatio = 50   + rRMPolicyMinRatio = 30   + rRMPolicyDedicatedRatio = 20 |
| 3 | O-DU sends Slice Configuration Response to SMO | **O-DU a SMO** | Verify that the O-DU sends a response after validating that the S-NSSAI is within the slice range and part of slice support list.  Verify O-DU sends the slice configuration response to SMO as per below IEs mentioned in section 11.2.4.3.4 in Section 11.2 of [1]   * Slice Index = 24930 * Response = OK   Slice configuration and prioritization is followed according to the O-RAN specification. |
| 4 | O-DU sends the E2 Setup request to near RT-RIC server. | **O-DU a near RT-RIC** | Verify O-DU sends the E2 Setup request message to near RT-RIC server with all the mandatory IEs. |
| 5 | near RT-RIC server sends E2 Setup Response to O-DU. | **O-DU ss near RT-RIC** | Verify near RT-RIC sends the E2 setup response to O-DU with all the mandatory IEs. |
| 6 | Cell bring-up. | **O-DU/O-RU** | Verify cell bring-up is successful with the configuration that has been received from SMO.  O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of [24].  Verify O-DU sets the administrative state to UNLOCKED state. |
| 7 | Attach validation. | **UE ss O-DU/ O-CU** | Verify that UE able to attach successfully with above mentioned configuration |
| 8 | Start end to end data transfer. | **O-DU/ O-CU a UPF** | Verify end to end data is successful.  Verify 30% of PRB can now be utilized for Slice #1 as reconfigured by the SMO.  Slice configuration and prioritization is followed according to the O-RAN specification. |
| 9 | near RT-RIC sends E2 Subscription Request to O-DU. | **O-DU ss near RT-RIC** | Verify near RT-RIC server sends E2 Subscription Request to O-DU with the measurements mentioned as per Section 5 of 3GPP Specification [25] in RIC Action Definition IE and Measurement Label set to Slice ID. |
| 10 | O-DU sends the E2 Subscription Response to near-RT RIC server with supported subscription items and not supported items. | **O-DU a near RT-RIC** | Verify O-DU sends the E2 Subscription Response to near-RT-RIC server with "RIC Actions Admitted List" IE filled with O-DU supported list from the SUBSCRIPTION REQUEST and "RIC Actions Not Admitted List" IE filled with O-DU non-supported list. |
| 11 | O-DU sends the periodic report to the subscribed features to near RT-RIC server through RIC INDICATION message. | **O-DU a near RT-RIC** | Verify O-DU sends the periodic report to near RT-RIC server through RIC INDICATION message as per SUBSCRIPTION REQUEST. |
| 14 | Near RT-RIC sends E2 RIC Control Request to O-DU | **O-DU ss near RT-RIC** | Verify near RT-RIC sends E2 RIC Control Request to O-DU with following IEs:   * Message Type * RIC Request ID * RAN Function ID * RIC Control Header   + UE ID   + RIC Style ID (Control)   + Control Action ID (1) * RIC Control Message   + List of RAN parameters (2)   + RAN Parameter ID (11)   + RAN Parameter Value     - Min PRB Policy Ratio = 40   + RAN Parameter ID (12)   + RAN Parameter Value     - Max PRB Policy Ratio = 60 |
| 15 | O-DU sends RIC Control Acknowledge to Near RT-RIC | **O-DUa near RT-RIC** | Verify O-DU sends RIC CONTROL ACKNOWLEDGE to Near-RT RIC to inform Near RT-RIC that the message was received and to provide information on the outcome of the request.  O-DU configures RRMPolicyRatio attributes when slice SLA is not achieved with the SMO configured dedicated resources. |
| 16 | End to end data validation | **UE ssa O-DU/O-CU** | Verify 40% of PRB can now be utilized for Slice #1 as reconfigured by the SMO.  Slice configuration and prioritization is followed according to the O-RAN specification. |

## ORAN.WG8.IOT.087: Verify successful UE registration and data transmission in a Shared O-RU multi-vendor slice deployment.

### Test Purpose

The purpose of this test case is to verify successful UE registration and data transmission when UE#1 registers with slice#1 and UE#2 registers with slice#2 in shared O-RU multi-vendor slice deployment.

### Reference Requirement

For detailed requirements, refer to the section 13.4 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, Shared O-RU Operator SMO, O-DU#1, O-DU#2 and Shared O-RU is connected.
* It is assumed that sharing co-ordinator has successfully configured SMO to partition Shared O-RU between multiple O-DUs.
* It is assumed that SMO configures transport systems with call home identities for O-DUs.
* It is assumed that O-RU supports SHARED-ORU-MULTI-ODU feature.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in O-CU.
* Shared O-RU is managed entirely by primary O-DU#1 using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-CU#1 is connected to O-DU#1 (slice#1) (Refer Section 4.20.3.1.2 of [38]).
* O-CU#2 is connected to O-DU#2 (slice#2) (Refer Section 4.20.3.1.2 of [38]).
* O-CU#1 and O-CU#2 is connected to 5GC through NG interface and O-CU is operational.
* It is assumed that when Power-ON the O-DUs, the NETCONF Server is started or when the O-DUs are restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU#1 and O-DU#2 have obtained end to end IP connectivity with SMO. The O-DUs shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DUs and SMO as per test case ORAN.WG8.IOT.017 (Refer Section 6.7.2 of [28]).
* O-DUs and Shared O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].

### Test Setup and Configuration

* **DUTs:** Shared O-RU Operator SMO, O-DU#1, O-DU#2, O-CU#1, O-CU#2 and Shared O-RU.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.9.
* For rest of the MIB and SSB test profiles, refer B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures to verify successful UE registration and data transmission in Shared O-RU multi-vendor slice deployment.

Table 7.88-1: Multi-vendor slice deployment

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | Power-on gNB including O-CUs, O-DUs and Shared O-RU. | **O-DUs ss O-RU** | Verify shared O-RU sends TCP connection request to each O-DU as part of call home procedure to establish NETCONF session. |
| 2 | Secured NETCONF session establishment between O-DUs and shared O-RU. | **O-RU / O-DUs** | Verify NETCONF hello capability messages are communicated between O-DUs and shared O-RU to establish successful NETCONF session at fronthaul interface. |
| 3 | SMO sends cell configuration and partitioned carrier information to O-DUs. | **O-DUs ss SMO** | Verify the cell configuration is received from SMO to O-DUs (O1 interface).  Verify PRBs are partitioned equally within O-DU#1 and O-DU#2. |
| 4 | SMO sends Slice Configuration Request to O-DU#1. | **O-DU#1 ss SMO** | Verify the following configuration is carried between SMO to O-DU-OAM-Agent (O1 interface), O-DU-OAM-Agent to MAC and also containing all the mandatory IEs mentioned in section 11.2.4.2.3, Table 11-22 of [1]   * S-NSSAI = 24930   + RRMPolicyRatio = PRB   + rRMPolicyMaxRatio = 50   + rRMPolicyMinRatio = 30   + rRMPolicyDedicatedRatio = 20 |
| 5 | SMO sends Slice Configuration Request to O-DU#2. | **O-DU#2 ss SMO** | Verify the following configuration is carried between SMO to O-DU-OAM-Agent (O1 interface), O-DU-OAM-Agent to MAC and also containing all the mandatory IEs mentioned in section 11.2.4.2.3, Table 11-22 of [1]   * S-NSSAI = 34930   + RRMPolicyRatio = PRB   + rRMPolicyMaxRatio = 50   + rRMPolicyMinRatio = 30   + RMPolicyDedicatedRatio = 20 |
| 6 | O-DUs sends Slice Configuration Response to SMO | **O-DUs a SMO** | Verify O-DUs sends response after verifying S-NSSAI should be within slice range and part of slice support list.  Verify O-DUs sends the slice configuration response to SMO as per below IEs mentioned in section 11.2.4.3.4 in Section 11.2 of [1]  Slice configuration and prioritization is followed according to the O-RAN specification. |
| 7 | O-DUs sends partitioned carrier configuration to shared O-RU to establish C/U-Plane application endpoints. | **O-RU ss O-DUs** | Verify O-DUs sends the partitioned carrier configuration through file download request.  Verify O-RU downloads the file and applies the configuration. The state of O-RU is changed to INACTIVE. |
| 8 | O-RU sends sync-status information to O-DUs. | **O-RU a O-DUs** | Verify shared O-RU is able to achieve time synchronization with GPS.  Verify shared O-RU shall send the sync-status as LOCKED to O-DUs. |
| 9 | Activate partitioned tx/rx array carriers. | **O-RU ss O-DUs** | Verify O-DUs shall activate tx-array-carriers and rx-array-carriers in the U-Plane configuration by setting the value of the parameter "active" at tx-array-carrier element / rx-array-carrier element to "ACTIVE". |
| 10 | O-DUs sends sync-state information and set the operational state in SMO. | **O-DUs a SMO** | Verify O-DUs shall send the sync-state as LOCKED to SMO.  Verify O-DUs set the operational state to ENABLED state. |
| 11 | SMO shall set the administrate state of O-DUs. | **O-DUs ss SMO** | Verify O-DUs shall set the administrative state to UNLOCKED state. |
| 12 | Cell Bring-up | **O-DUs/O-CU** | Verify cell bring-up is successful with the configuration that has been received from SMO.  O-DUs monitors the synchronization-state-change notification periodically to ensure that shared O-RU is in LOCKED state and available for CUS-plane communication, as described in section 13.1 of [24].  Verify O-DUs sets the administrative state to UNLOCKED state. |
| 13 | Verify the status of the cell. | **O-DUs/O-CU** | Verify SMO shows O-CUs and O-DUs operational and newly added cell is up and RF state of shared O-RU is ACTIVE.  Verify shared O-RU sync-state is set to LOCKED state and available for CU-plane communication.  Verify both cells are operational. |
| 14 | UE#1 Attach validation with O-DU#1 | **UE#1 ss O-DU#1/ O-CU#1** | Verify that UE able to attach successfully with partitioned O-DU#1 (slice#1). |
| 15 | UE#2 Attach validation with O-DU#2 | **UE#2 ss O-DU#2/ O-CU#2** | Verify that UE able to attach successfully with partitioned O-DU#2 (slice#2). |
| 16 | Data is started in both DL and UL for UE#1. | **O-DU#1/ O-CU#1 a UPF** | Verify that the values for "FrequencyDomainAllocation" "StartPRB" and "NoOfPRBs" in DL Scheduling Information (Refer Section 11.2.4.3.8 of [1]) align with the partitioning performed by the coordinator for O-DU#1.  Verify end to end data is successful for UE#1.  Slice configuration and prioritization is followed according to the O-RAN specification. |
| 17 | Data is started in both DL and UL for UE#2. | **O-DU#2/ O-CU#2 ssa UPF** | Verify that the values for "FrequencyDomainAllocation" "StartPRB" and "NoOfPRBs" in DL Scheduling Information (Refer Section 11.2.4.3.8 of [1]) align with the partitioning performed by the coordinator for O-DU#2.  Verify end to end data is successful for UE#2.  Slice configuration and prioritization is followed according to the O-RAN specification. |

## ORAN.WG8.IOT.088: Verify network energy saving functionality in TRX\_CONTROL mode configured with undefined Sleep Period.

### Test Purpose

The purpose of this test case is to verify Energy Saving functionality for undefined sleep Period in TRX\_CONTROL Mode.

### Reference Requirement

For detailed requirements, refer to the section 7.16 and 13.6 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, Near-RT RIC,O-CU,O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-RU supports O-NES Capability and sent to O-DU through "energy-saving-capability-common-info/trx-control-capability-info" IEs.
* O-DU Connected to Near-RT RIC through E2 interface & it sends O-RU energy saving capabilities to Near-RT RIC.
* SMO is preconfigured with Near-RT RIC server IP address as per data model.
* SMO preconfigured with required AI/ML model based on collected data and share the same policies to near-RT RIC.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per test case ORAN.WG8.IOT.017.
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].
* On "E2" interface, esObjective type for O-NES policy is configured to either targetEc or esPercentage.

### Test Setup and Configuration

* **DUTs:** SMO, O-DU, O-CU and O-RU.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.4.
* For rest of the MIB and SSB test profiles, refer B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures to verify energy saving functionality with TRX\_CONTROL mode for undefined sleep period.

Table 7.89-1: energy saving functionality with TRX\_CONTROL for undefined sleep period.

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | Cell Bring-up | **O-CU/O-DU/O-RU** | Verify cell bring-up is successful as per received Configuration from SMO.  Verify O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of [24]. |
| 2. | Near-RTRIC sends E2 Subscription Request to O-DU for energy saving | **O-DU ss Near-RT RIC** | Verify Near-RT RIC initiate RIC SUBSCRIPTION REQUEST to O-DU for reporting energy saving status as per below structure.  -RIC SUBSCRIPTION REQUEST> Event Trigger Definition >E2SM-CCC Event Trigger Definition Format 2> RAN Configuration Structure Name> O-CESManagementFunction |
| 3 | O-DU sends the E2 Subscription Response to near-RT RIC server with supported subscription items and not supported items. | **O-DU a Near-RT RIC** | Verify O-DU sends the E2 Subscription Response to near-RT-RIC server with "RIC Actions Admitted List" IE filled with O-DU supported list from the SUBSCRIPTION REQUEST and "RIC Actions Not Admitted List" IE filled with O-DU non-supported list. |
| 4 | O-DU sends report to the subscribed features to near RT-RIC server through RIC INDICATION message. | **O-DU a Near-RT RIC** | Verify O-DU send RIC indication to Near-RT RIC as per subscription for "O-CESManagementFunction" along with required parameter as cesSwitch/ energySavingState/ energySavingControl. |
| 5. | Near-RT RIC sends E2 Subscription Request to O-DU for collecting Measurement information | **O-DU ss Near-RT RIC** | Verify Near-RT RIC server sends E2 Subscription Request to O-DU with the measurements mentioned as per Section 5 of 3GPP Specification [25] in RIC Action Definition IE and Measurement Label like UE context & measurement metrics. |
| 6 | O-DU sends the E2 Subscription Response to near-RT RIC server with supported subscription items and not supported items. | **O-DU a Near-RT RIC** | Verify O-DU sends the E2 Subscription Response to near-RT-RIC server with "RIC Actions Admitted List" IE filled with O-DU supported list from the SUBSCRIPTION REQUEST and "RIC Actions Not Admitted List" IE filled with O-DU non-supported list. |
| 7 | O-DU sends report to the subscribed features to near RT-RIC server through RIC INDICATION message. | **O-DU a Near-RT RIC** | Verify O-DU sends the report to near RT-RIC server through RIC INDICATION message as per SUBSCRIPTION REQUEST like UE context & E2 measurement metrics. |
| 8. | Based on the collected measurement AI/ML algorithm & O-RU capability Near-RT RIC send O-NES policy to O-DU to execute energy saving. | **O-DU ss Near-RT RIC** | Verify Near-RT RIC send RIC control towards O-DU with "O-NES Policy as mentioned in above structure along with below parameters-  policyType-TRX\_CONTROL  antennaMaskName -as per O-RU Capability and Near-RT RIC Decision.  antennaMask- as per O-RU Capability and Near-RT RIC Decision.  sleepMode as supported and configured.  dataDir =DL/UL as per algorithm decision  symbolMask- specifies the symbols (mask bit values of 1) during which certain antenna array elements may be put into an energy-saving mode  slotMask- the slot numbers in a frame for which the sleep mode  validDuration - This IE shouldn't include as scenario is for undefined period.  esObjective- as per defined policy. |
| 9. | Based on the collected measurement, AI/ML algorithm and O-RU Capability Near-RT RIC request O-DU to execute energy saving. | **O-DU ss Near-RT RIC** | Verify Near-RT RIC send RIC control message to O-DU with **"**O-CESManagementFunction" as per below structure  RIC control  >E2SM-CCC Control Message Format 2  >RAN Configuration Structure Name  >O-CESManagementFunction  (Where O-CESManagementFunction includes energySavingControl as CONTROL along with attribute set as toBeEnergySaving) |
| 10. | O-DU requests the decision to O-RU to initiate Energy Saving | **O-RU ss O-DUs** | O-DU initiate "NES Operation Control" towards O-RU to enable Energy saving with message type as RF Channel Reconfiguration along with below parameter  Enable-M0 to M3 as per decision.  Activation Start Slot- Frame/sub frame/slot number  Period- 0(as it is for undefined period)  -O-RU configures the antennas and disable certain designated antennas and enter sleep state at sleep start time. |
| 11. | O-DU informs energy Saving status to Near-RT RIC | **O-DU a Near-RT RIC** | Verify O-DU Report RIC indication to Near-RT RIC as per subscription for "O-CESManagementFunction" along with required parameter as cesSwitch/ energySavingState/ energySavingControl.  Where energySavingState as isEnergySaving.  Follow" [37]" section 9.2.1.3 and 9.2.1.4 for reference.  Example:  Structure-  RIC-Indication-Message  >E2SM-CCC-IndicationMessageFormat2  >>ListOfCellsReported>  >>>listOfConfigurationStructures Reported>  >>>> Change Type  >>>> RAN Configuration Structure Name  >>>> Values of Attributes |
| 12 | O-DU Periodically Report RIC Indication to Near-RT RIC | **O-DU a Near-RT RIC** | Verify O-DU Report RIC indication to Near-RT RIC as per subscription like "O-RRMPolicyRatio". |
| 12 | For undefined Sleep Period Scenario, upon monitoring and based on that Near-RT RIC Request O-DU to disable Energy Saving | **O-DU ss Near-RT RIC** | Verify Near-RT RIC send RIC control towards O-DU with **"**O-CESManagementFunction" as per below structure  RIC control>E2SM-CCC Control Message Format 2>RAN Configuration Structure Name>O-CESManagementFunction  (where O-CESManagementFunction includes energySavingControl as CONTROL alongwith attribute set as toBeNotEnergySaving)) follow section |
| 13 | O-DU requests the decision to O-RU to disable Energy Saving | **O-RU ss O-DUs** | O-DU initiate "NES Operation Control" towards O-RU to enable Energy saving with message type as RF Channel Reconfiguration along with below parameter  Disable-M0 to M3 as per decision.  Activation Start Slot- Frame/sub frame/slot number  Acknowledgement-acknackid.  -If sleepMode!=0 ~~a~~nd O-RU Reported "wake-up-duration-guaranteed" as "FALSE" during Capability report then the O-DU shall wait for the number of slots indicated by the wake-up duration for the commanded sleep mode before it sends C-Plane and U-Plane traffic to the woken-up parts of the O-RU, using the correct tx-window for the first awake slot and O-RU would send Ready indication to O-DU after waking up(Step-14)  -If sleepMode=0 and O-RU Reported "wake-up-duration-guaranteed" as" TRUE" during Capability Reporting, then the slot number indicated in the command is available for C-Plane and U-Plane traffic and O-RU shall be ready to process C-Plane and U-Plane commands.  Supported Sleep Modes are below as per spec **"[26] "Table 16.1-1**   |  |  | | --- | --- | |  | TRX\_CONTROL wake-up duration | | sleep mode 0 | TRXC-mode0-wake-up-duration | | sleep mode 1 | TRXC-mode1-wake-up-duration | | sleep mode 2 | TRXC-mode2-wake-up-duration | | sleep mode 3 | TRXC-mode3-wake-up-duration | |
| 14 | O-RU would send Ready indication. | **O-RU a O-DU** | O-RU sent Ready Indication to O-DU after waking up.  O-RU shall send a "ready" message" to the O-DU to indicate termination of sleep. It also includes "ackid info", as acknowledge request is included as per wakeup command. |
| 15 | O-DU informs energy Saving status to Near-RT RIC | **O-DU a Near-RT RIC** | Verify O-DU Report RIC indication to Near-RT RIC as per subscription for "O-CESManagementFunction" along with required parameter as cesSwitch/ energySavingState/ energySavingControl.  Where energySavingState as "isNotEnergySaving". |
| 16 | Initiate UE attach | **UE a O-DU/ O-CU** | Verify that UE able to attach successfully. |

## ORAN.WG8.IOT.089: Verify network energy saving functionality in TRX\_CONTROL mode configured with defined Sleep Period.

### Test Purpose

The purpose of this test case is to verify Energy Saving functionality for defined sleep Period in TRX\_CONTROL Mode.

### Reference Requirement

For detailed requirements, refer to the section 7.16 and 13.6 in ORAN-WG8.AAD [1].

### Initial Conditions

Following are the preconditions for this test.

* Physical interface of DHCP(v4/v6) server, DNS server, CA/RA server, SMO, Near-RT RIC,O-CU,O-DU and O-RU is connected.
* Use the default O-CU configuration files to configure all modules (NR RRC, NR PDCP, and SDAP) in O-CU.
* O-RU is connected to O-DU. O-RU is managed entirely by O-DU using O-RAN WG4 defined hierarchical approach (Refer Section 5.1.2 of [24]). Fronthaul CU-plane data communication is verified and M-plane communication using NETCONF server is operational.
* O-RU supports O-NES Capability and sent to O-DU through "energy-saving-capability-common-info/trx-control-capability-info" IEs.
* O-DU Connected to Near-RT RIC through E2 interface & it sends O-RU energy saving capabilities to Near-RT RIC.
* SMO is preconfigured with Near-RT RIC server IP address as per data model.
* SMO preconfigured with required AI/ML model based on collected data and share the same policies to near-RT RIC.
* O-CU is connected to 5GC through NG interface and O-CU is operational.
* It is assumed that when Power-ON the O-DU, the NETCONF Server is started or when the O-DU is restarted, the NETCONF Server is restarted.
* NETCONF Client is operational.
* The O-DU have obtained end to end IP connectivity between O-DU and SMO. The O-DU shall support either IPv4 or IPv6.
* The PnfRegistration is successful with TLS secure connection is established between O-DU and SMO as per test case ORAN.WG8.IOT.017.
* O-DU and O-RU to time synchronize using one of O-RAN Fronthaul Transport Synchronization profiles (LLS-C1 to LLS-C4) defined by O-RAN WG4 specification [26].
* On "E2" interface, esObjective type for O-NES policy is configured to either targetEc or esPercentage.

### Test Setup and Configuration

* **DUTs:** SMO, O-DU, O-CU and O-RU.
* **Testing tools:** are required for this test scenario.
* Test UEs or UE emulator which can support NR.
* 5G-NR O-RU or O-RU emulator.
* 5G Core or CN emulator used which supports N1, N2 and HTTP messages.
* Protocol Analyzer is used to record and observe F1AP, NGAP, FH-eCPRI, FAPI, NAS, HTTP2, PFCP protocol content.
* Configuration:
* For details on the test setup refer Annex A - A.4.
* For rest of the MIB and SSB test profiles, refer B.2.1.
* For details on the SIB1 test profiles, see B.3.
* For details on the RACH test profiles, see B.6.

### Test Procedure

The following table describes the test procedures to verify energy saving functionality with TRX\_CONTROL mode for defined sleep period.

Table 7.90-1: energy saving functionality with TRX\_CONTROL for defined sleep period.

|  |  |  |  |
| --- | --- | --- | --- |
| St. | Procedure | Msg Flow | Expected Output |
| 1 | Cell Bring-up | **O-CU/O-DU/O-RU** | Verify cell bring-up is successful as per received Configuration from SMO.  Verify O-DU monitors the synchronization-state-change notification periodically to ensure that O-RU is in LOCKED state and available for CU-plane communication, as described in section 13.1 of [24]. |
| 2. | Near RT-RIC sends E2 Subscription Request to O-DU for energy saving | **O-DU ss Near-RT RIC** | Verify Near-RT RIC initiates RIC SUBSCRIPTION REQUEST to O-DU for reporting energy saving status as per below structure.  -RIC SUBSCRIPTION REQUEST> *Event Trigger Definition* >E2SM-CCC Event Trigger Definition Format 2> RAN Configuration Structure Name> O-CESManagementFunction |
| 3 | O-DU sends the E2 Subscription Response to near-RT RIC server with supported subscription items and not supported items. | **O-DU a Near-RT RIC** | Verify O-DU sends the E2 Subscription Response to near-RT-RIC server with "RIC Actions Admitted List" IE filled with O-DU supported list from the SUBSCRIPTION REQUEST and "RIC Actions Not Admitted List" IE filled with O-DU non-supported list. |
| 4 | O-DU sends report to the subscribed features to near RT-RIC server through RIC INDICATION message. | **O-DU a Near-RT RIC** | Verify O-DU send RIC indication to Near-RT RIC as per subscription for "O-CESManagementFunction" along with required parameter as cesSwitch/ energySavingState/ energySavingControl. |
| 5. | near RT-RIC sends E2 Subscription Request to O-DU for collecting Measurement information | **O-DU ss Near-RT RIC** | Verify near RT-RIC server sends E2 Subscription Request to O-DU with the measurements mentioned as per Section 5 of 3GPP Specification [25] in RIC Action Definition IE and Measurement Label. |
| 6 | O-DU sends the E2 Subscription Response to near-RT RIC server with supported subscription items and not supported items. | **O-DU a Near RT RIC** | Verify O-DU sends the E2 Subscription Response to near-RT-RIC server with "RIC Actions Admitted List" IE filled with O-DU supported list from the SUBSCRIPTION REQUEST and "RIC Actions Not Admitted List" IE filled with O-DU non-supported list. |
| 7 | O-DU sends report to the subscribed features to near RT-RIC server through RIC INDICATION message. | **O-DU a Near-RT RIC** | Verify O-DU sends the report to near RT-RIC server through RIC INDICATION message as per SUBSCRIPTION REQUEST. |
| 8 | Based on the collected measurement /AI/ML algorithm & O-RU capability Near-RT RIC send O-NES policy to O-DU to execute energy saving. | **O-DU ss Near-RT RIC** | Verify Near-RT RIC send RIC control towards O-DU with "O-NES Policy as mentioned in above structure along with below parameters-  policyType-TRX\_CONTROL  antennaMaskName -as per O-RU Capability and Near-RT RIC Decision.  antennaMask- as per O-RU Capability and Near-RT RIC Decision.  sleepMode as supported and configured.  dataDir =DL/UL/ as per algorithm decision  symbolMask- specifies the symbols (mask bit values of 1) during which certain antenna array elements may be put into an energy-saving mode  slotMask- the slot numbers in a frame for which the sleep mode  validDuration - time duration in unit of 10ms for which the sleep mode to be valid  esObjective- as per defined policy. |
| 9. | Based on the collected measurement & AI/ML algorithm, Near-RT RIC request O-DU to execute energy saving. | **O-DU ss Near-RT RIC** | Verify Near-RT RIC send RIC control message to O-DU with **"**O-CESManagementFunction" as per below structure  RIC control>E2SM-CCC Control Message Format 2>RAN Configuration Structure Name>O-CESManagementFunction  (Where O-CESManagementFunction includes energySavingControl as CONTROL along with attribute set as toBeEnergySaving) |
| 10. | O-DU request decision to O-RU to initiate Energy Saving | **O-RU ss O-DU** | -O-DU initiate "NES Operation Control" towards O-RU to enable Energy saving with message type as RF Channel Reconfiguration along with below parameter  Enable-M0 to M3 as per decision.  Activation Start Slot- Frame/sub frame/slot number  Period- number of slots for which the command configuration shall be valid  Acknowledgement- acknackid  -O-RU configures the antennas and disable certain designated antennas and enter sleep state at sleep start time.  Supported Sleep Modes are below as per spec "[26] **"Table 16.1-1**   |  |  | | --- | --- | |  | TRX\_CONTROL wake-up duration | | sleep mode 0 | TRXC-mode0-wake-up-duration | | sleep mode 1 | TRXC-mode1-wake-up-duration | | sleep mode 2 | TRXC-mode2-wake-up-duration | | sleep mode 3 | TRXC-mode3-wake-up-duration | |
| 11. | O-DU inform energy Saving status to Near-RT RIC | **O-DU a Near-RT RIC** | Verify O-DU Report RIC indication to Near-RT RIC as per subscription for "O-CESManagementFunction" along with required parameter as cesSwitch/ energySavingState/ energySavingControl.  Where energySavingState as isEnergySaving.  Follow" [37]" section 9.2.1.3 and 9.2.1.4 for reference.  Example:  Structure-  RIC-Indication-Message  >E2SM-CCC-IndicationMessageFormat2  >>ListOfCellsReported>  >>>listOfConfigurationStructures Reported>  >>>> Change Type  >>>> RAN Configuration Structure Name  >>>> Values of Attributes |
| 12 | At expiry of sleep duration, O-RU comes out of energy saving mode | **O-RU** | -If sleepMode!=0 ~~a~~nd O-RU Reported "wake-up-duration-guaranteed" as "FALSE" during Capability report then the O-DU shall wait for the number of slots indicated by the wake-up duration for the commanded sleep mode before it sends C-Plane and U-Plane traffic to the woken-up parts of the O-RU, using the correct tx-window for the first awake slot and O-RU would send Ready indication to O-DU after waking up(Step-13)  -If sleepMode=0 and O-RU Reported "wake-up-duration-guaranteed" as "TRUE" during Capability Reporting then the slot number indicated in the command is available for C-Plane and U-Plane traffic and O-RU shall be ready to process C-Plane and U-Plane commands. |
| 13 | O-RU would sent Ready indication. | **O-RU a O-DU** | O-RU sent Ready Indication to O-DU after waking up. |
| 14 | O-DU inform energy Saving status to Near-RT RIC | **O-DU a Near-RT RIC** | Verify O-DU Report RIC indication to Near-RT RIC as per subscription for "O-CESManagementFunction" along with required parameter as cesSwitch/ energySavingState/ energySavingControl.  Where energySavingState as isNotEnergySaving. |
| 15 | Initiate UE attach | **UE a O-DU/ O-CU** | Verify that UE able to attach successfully. |

1. (informative)

Test Setup

This section covers the test setup architectures and configurations.

## A.1 Test Setup 1: End to End OTA architecture using commercial UE

Figure A.1- : Test Setup 1 - End to End OTA architecture using commercial UE

![](../assets/images/62826e03d629.png)

A.2 Test Setup 2: End to End OTA architecture using UE Simulator/Emulator

Figure A.2- : Test Setup 2 - End to End OTA architecture using UE Simulator/Emulator

![](../assets/images/151ae82b34cf.png)

A.3 Test Setup 3: Simulated CU and CN architecture

Figure A.3- : Test Setup 3 - Simulated CU and CN architecture

![](../assets/images/2b6c2b2b5af7.png)

A.4 Test Setup 4: O1 and E2 interface for Remote O-RU connected to O-DU architecture

Figure A.4- : Test Setup 4 - O1 and E2 interface for Remote O-RU connected to O-DU architecture

![](../assets/images/f1d7cc206cc3.png)

A.5 Test Setup 5: O1 and E2 interface for co-located O-RU and O-DU architecture

Figure A.5- : Test Setup 5 - O1 and E2 interface for co-located O-RU and O-DU architecture

![](../assets/images/4ee3c999ee80.png)

A.6 Test Setup 6: Setup for inter O-DU HO within an O-CU

Figure A.6- : Test Setup 6 - inter O-DU HO within an O-CU

![Diagram  Description automatically generated](../assets/images/99426e4e2f5d.png)

A.7 Test Setup 7: Setup for O-DU Timing Synchronization

Figure A.7- : Test Setup 7 - O-DU Timing Synchronization

![Diagram  Description automatically generated](../assets/images/8595696176fb.png)

A.8 Test Setup 8: Setup for vO-DU and vO-CU Cloudification

Figure A.8- : Test Setup 8 - vO-DU and vO-CU Cloudification![Diagram  Description automatically generated](../assets/images/ba111b2a0120.png)

A.9 Test Setup 9: Setup for Single Operator Solution for Shared O-RU

**Figure A.9- : Test Setup 9 - Single Operator Solution for Shared O-RU**

![](../assets/images/c33546574ef3.png)

1. (informative)

Test Profile 1: Throughput Test

* 1. FTP Settings

TCP data transfer depends on the following parameters:

* TCP window size
* Number of stream (default: 4 streams).
* TCP maximum segment size (MSS). MSS is 1452 bytes (1492-byte MTU).
  + 1. UDP Settings

UDP data transfer depends on the following parameters:

* The length of buffers to read or write. For UDP default is 1470 Bytes
* UDP bandwidth in bits/sec. Default is 1 Mbit/sec.
  1. MIB and SSB configuration
     1. MIB and SSB for FR1

Table B.2-1: MIB and SSB for FR1

|  |  |  |
| --- | --- | --- |
| **MIB** | | |
| **Parameter** | **Possible Values** | **Recommended Values (Phase 1)** |
| subCarrierSpacingCommon | ENUMERATED {scs15or60, scs30or120}, | 1 |
| ssb-SubcarrierOffset | INTEGER (0..15), | 15 |
| dmrs-TypeA-Position | ENUMERATED {pos2, pos3}, | NA |
| pdcch-ConfigSIB1 | INTEGER (0..255), | NA |
| > controlResourceSetZero |  |  |
| > searchSpaceZero |  |  |
| cellBarred | ENUMERATED {barred, notBarred}, | 1 |
| intraFreqReselection | ENUMERATED {allowed, notAllowed}, | 0 |
| Multiplexing | TDD/FDD | FDD |
| **SSB Pattern (time-freq)** | | |
|  |  |  |
| ssb-PositionsInBurst |  | 10000000... |
| ssb-periodicityServingCell- |  | ms20 |
| absoluteFrequencySSB |  | according to bandindicator |

* + 1. MIB and SSB for FR2

Table B.2-2: MIB and SSB for FR2

|  |  |  |
| --- | --- | --- |
| **MIB** | | |
| **Parameter** | **Possible Values** | **Recommended Values (Phase 1)** |
| subCarrierSpacingCommon | ENUMERATED {scs15or60, scs30or120}, | 1 |
| ssb-SubcarrierOffset | INTEGER (0..11), | As per freq domain resources of SSB |
| dmrs-TypeA-Position | ENUMERATED {pos2, pos3}, | NA |
| pdcch-ConfigSIB1 | INTEGER (0..255), | NA |
| > controlResourceSetZero |  |  |
| > searchSpaceZero |  |  |
| cellBarred | ENUMERATED {barred, notBarred}, | 1 |
| intraFreqReselection | ENUMERATED {allowed, notAllowed}, | 0 |
| Multiplexing | TDD | TDD |
| **SSB Pattern (time-freq)** | | |
|  |  |  |
| ssb-PositionsInBurst |  | SSB-PositionInBurst  inOneGroup  11111111  GroupPresence  11111111 |
| ssb-periodicityServingCell |  | ms40 |
| absoluteFrequencySSB |  | according to bandindicator |

* 1. SIB1 Configuration

Table B.3-1: SIB1

|  |  |  |  |
| --- | --- | --- | --- |
|  |  |  | **Default Values (Proposed)** |
| SI-SchedulingInfo |  |  |  |
|  | si-WindowLength | ENUMERATED | s20 |
| SchedulingInfo |  |  |  |
|  | si-Periodicity | ENUMERATED | rf16 |
| SI-RequestConfig::= |  |  |  |
|  | ssb-perRACH-Occasion | ENUMERATED | one |

* 1. PUCCH Support- Short PUCCH Format Configuration

Table B.4-1: PUCCH Support- Short PUCCH Format

|  |  |
| --- | --- |
| **PUCCH Format0** | |
| format | 0 |
| initialCyclicShift | 0,3 |
| nrofSymbols | 1 |
| startingSymbolIndex | 13 |
| **PUCCH Format2** | |
| format | 2 |
| nrofSymbols | 1 |
| startingSymbolIndex | 13 |
| Number of PRB | 3 |

* 1. Downlink Data Delivery Status Reporting

Refer to the DL DATA DELIVERY STATUS frame format defined in section 5.5.2.2 in 3GPP Specification [10] for more details. All parameters are not mandatory. The desired buffer size for the data radio bearer parameter is required to inform to CU.

Table B.5-1: Downlink Data Delivery Status Reporting

|  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Bits | | | | | | | | Number of Octets |
| 7 | 6 | 5 | 4 | 3 | 2 | 1 | 0 |
| PDU Type (=1) | | | | Highest Transmitted NR PDCP SN Ind | Highest Delivered NR PDCP SN Ind | Final Frame Ind. | Lost Packet Report | 1 |
| Spare | | | | Data rate Ind. | Retransmitted NR PDCP SN Ind | Delivered Retransmitted NR PDCP SN Ind | Cause Report | 1 |
| Desired buffer size for the data radio bearer | | | | | | | | 4 |
| Desired Data Rate | | | | | | | | 0 or 4 |
| Number of lost NR-U Sequence Number ranges reported | | | | | | | | 0 or 1 |
| Start of lost NR-U Sequence Number range | | | | | | | | 0 or (6\* Number of reported lost NR-U SN ranges) |
| End of lost NR-U Sequence Number range | | | | | | | |
| Highest successfully delivered NR PDCP Sequence Number | | | | | | | | 0 or 3 |
| Highest transmitted NR PDCP Sequence Number | | | | | | | | 0 or 3 |
| Cause Value | | | | | | | | 0 or 1 |
| Successfully delivered retransmitted NR PDCP Sequence Number | | | | | | | | 0 or 3 |
| Retransmitted NR PDCP Sequence Number | | | | | | | | 0 or 3 |
| Padding | | | | | | | | 0-3 |

* 1. RACH Configuration

Table B.6-1: RACH Configuration

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **RACH IEs (3GPP)** | **RACH IEs (Config file)** | **RACHConfig1 (Format 0)** | **RACHConfig1 (Format C2)** | **RACHConfig2 (Format B4)** |
| RACH-ConfigDedicated | | |  |  |
| RACH-ConfigCommon | | |  |  |
| rach-ConfigGeneric |  |  |  |  |
| > prach-ConfigurationIndex | PrachConfigIndex | 1 | 190 | 160 |
| > msg1-FDM | PrachMsg1Fdm | 1 |  |  |
| > msg1-FrequencyStart | PrachMsg1FreqStartRb | 0 |  |  |
| > zeroCorrelationZoneConfig | ZeroCorrelationZoneConfig | Default |  |  |
| > preambleReceivedTargetPower | preambleReceivedTargetPower | Default |  |  |
| > preambleTransMax | preambleTransMax | Default |  |  |
| > powerRampingStep | powerRampingStep | Default |  |  |
| > ra-ResponseWindow | RaResponseWindow | sl4 |  |  |
| totalNumberOfRA-Preambles | TotalRaPreambles | 63 |  |  |
| ssb-perRACH-OccasionAndCB-PreamblesPerSSB | SsbPerRachOcc | 3 |  |  |
| TotalCbPreamblesPerSsb | 44 |  |  |
| msg1-SubcarrierSpacing | PrachScs | 30KHz |  |  |
| restrictedSetConfig | PrachRestrictSet | unrestrictedSet |  |  |

* 1. Throughput Configuration

Table B.7-1: Throughput Configuration

|  |  |
| --- | --- |
| **TDD-UL-DL-ConfigCommon** | **Default** |
| referenceSubcarrierSpacing SubcarrierSpacing, | 30 KHz |
| pattern1 TDD-UL-DL-Pattern, |  |
| TDD-UL-DL-Pattern ::= |  |
| dl-UL-TransmissionPeriodicity | ms2p5 |
| nrofDownlinkSlots INTEGER (0..maxNrofSlots), | 3 |
| nrofDownlinkSymbols INTEGER (0..maxNrofSymbols-1), | 10 |
| nrofUplinkSlots INTEGER (0..maxNrofSlots), | 1 |
| nrofUplinkSymbols INTEGER (0..maxNrofSymbols-1), | 2 |

Time slot configuration: DDDSU

Bandwidth: 100 MHz

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Downlink** | **Suggested** |  | **Uplink** | **Config** |
| U | 1 |  | U | 1 |
| Max RBs | 275 |  | Max RBs | 275 |
| Number of layers | 2 |  | Number of layers | 2 |
| Code rate for DL (MCS 28) | 5.5547 |  | Code rate for UL (MCS 28) | 5.5547 |
| Number of Subcarriers | 12 |  | Number of Subcarriers | 12 |
| Slot config per sec | 400 |  | Slot config per sec | 400 |
| Lmax | 2 |  | Lmax | 2 |
| PDCCH aggregation level | 4 |  | PUCCH | 1 |
| Number of Res per CCEs | 72 |  | Number of Res per CCEs | 72 |
| SSB (Res) | 48 |  |  |  |
| DMRS (1 sym) | 3300 |  | DMRS (3Sym) | 9900 |
| PDCCH Res | 1152 |  | PUCCH Res | 6600 |
| Over head Res | 4500 |  | Over head Res | 16500 |
| Number of Total REs | 68640 |  | Number of total Res | 42240 |
| Available RBs for DL data transfer | 64140 |  | Available RBs for UL data transfer | 25740 |
| **DL Throughput** | **712.556916** |  | **UL Throughput** | **285.956** |

* 1. CSI-RS configuration

Table B.8-1: CSI-RS configuration

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **CSI-RS IEs** | **Possible values** | **Config 1** | **Config 2** | **Config 3** |
| resourceMapping |  |  |  |  |
| > frequencyDomainAllocation | row1, row2, row4, other | row1 (0001) | other (000001) | other (000001) |
| > nrofPorts | ENUMERATED {p1,p2,p4,p8,p12,p16,p24,p32} | p1 | p2 | p2 |
| > firstOFDMSymbolInTimeDomain | INTEGER (0..13) | 13 | 13 | 13 |
| > cdm-Type | ENUMERATED {noCDM, fd-CDM2, cdm4-FD2-TD2, cdm8-FD2-TD4} | noCDM | noCDM | fd-CDM2 |
| > density | dot5 ENUMERATED {evenPRBs, oddPRBs},  one, three, spare | 3 | 1 | 1 |
| powerControlOffset | INTEGER (-8..15) | 0 | 0 | 0 |
| powerControlOffsetSS | ENUMERATED{db-3, db0, db3, db6} | db0 | db0 | db0 |
| periodicityAndOffset | slots4 INTEGER (0..3),  slots5 INTEGER (0..4),  slots8 INTEGER (0..7),  slots10 INTEGER (0..9),  slots16 INTEGER (0..15),  slots20 INTEGER (0..19),  slots32 INTEGER (0..31),  slots40 INTEGER (0..39),  slots64 INTEGER (0..63),  slots80 INTEGER (0..79),  slots160 INTEGER (0..159),  slots320 INTEGER (0..319),  slots640 INTEGER (0..639) | slot20 | slot40 | Slot80 |

* 1. SRS configuration

Table B.9-1: SRS configuration

|  |  |  |
| --- | --- | --- |
| **CSI-RS IEs** | **Possible values** | **Config 1** |
| freqDomainPosition | INTEGER (0..67) | 10 |
| usage | ENUMERATED {beamManagement, codebook, nonCodebook, antennaSwitching} | nonCodebook |
| startPosition | INTEGER (0..5) | 0 |
| nrofSymbols | ENUMERATED {n1, n2, n4} | n2 |
| nrofSRS-Ports | ENUMERATED {port1, ports2, ports4} | port1 |
| resourceType | aperiodic, semi-persistent, periodic | periodic |
| periodicityAndOffset-p | CHOICE {sl1, sl2, sl4, sl5, sl8, sl10, sl16, sl20, sl32, sl40, sl64, sl80, sl160, sl320, sl640, sl1280, sl2560} | sl10 |

* 1. IMS Settings

VoNR call depends on the following parameters:

* IMS APN: The APN used for IMS services.
* P-CSCF (Proxy Call Session Control Function) Address: The IP address or FQDN of the P-CSCF.
* S-CSCF (Serving Call Session Control Function) Address: The IP address or FQDN of the S-CSCF.
* VoNR Enabled: Flag to enable or disable VoNR services.
* **GBR (Guaranteed Bit Rate):** Bit rate guarantees for specific services.
* SIP Timers: Various timers (e.g., T1, T2, T4) for SIP transactions.
* AMR-WB Codec: Configuration for Adaptive Multi-Rate Wideband codec.
* SIP Proxy Address: The address of the SIP proxy server.
* SIP Registration Expiry: The duration for SIP registration validity.
* SIP Outbound Proxy: Address of the outbound proxy for SIP signalling.

1. (informative)

C.1 Initial Access Flow

Figure C.1-1: Initial Access Flow

![](../assets/images/566df85141aa.emf.png)

# Revision History

|  |  |  |  |
| --- | --- | --- | --- |
| **Date** | **Revision** | **Author** | **Description** |
| 2020.11.09 | 01.00.00 | Venkata Nagesh (Radisys)  Rajat Kumar Pati (Radisys)  Manish Kaushik (Radisys) | First release |
| 2021.07.07 | 02.00.00 | Venkata Nagesh (Radisys)  Manish Kaushik (Radisys)  Veeresh Neginhal (Radisys) | Added O1 and E2 test cases (From ORAN.WG8.IOT.016 to ORAN.WG8.IOT.026) |
| 2021.11.18 | 03.00.00 | Venkata Nagesh (Radisys)  Manish Kaushik (Radisys)  Veeresh Neginhal (Radisys) | Added O1 and Beam Management testcases.  (From ORAN.WG8.IOT.027 to ORAN.WG8.IOT.035)  Updated the document to use LLS-C1 to LLS-C4 profiles for Time Synchronization. |
| 2022.03.22 | 04.00.00 | Venkata Nagesh (Radisys)  Manish Kaushik (Radisys)  Veeresh Neginhal (Radisys) | RAN slicing feature configuration/functionalities.  Inter O-DU Handover within an O-CU.  O-DU Timing Synchronization  (From ORAN.WG8.IOT.036 to ORAN.WG8.IOT.053) |
| 2022.07.27 | 05.00 | Manish Kaushik (Radisys)  Veeresh Neginhal (Radisys)  Uday Parida (Simnovus) | Beam failure detection and recovery  SRS and CSI-RS feature  O1 and E2 interface - collection and transfer of statistics  O1 and E2 interface - parameter reconfiguration  (From ORAN.WG8.IOT.054 to ORAN.WG8.IOT.065) |
| 2022.11.09 | 06.00 | Manish Kaushik (Radisys)  Veeresh Neginhal (Radisys)  Uday Parida (Simnovus) | Updating the TCs to include O1 and FH interface procedures.  (From ORAN.WG8.IOT.001 to ORAN.WG8.IOT.065) |
| 2023.03.12 | 07.00 | Manish Kaushik (Radisys)  Veeresh Neginhal (Radisys)  Uday Parida (Simnovus) | Added new TCs to verify Cloudification, PTP sync loss and security procedures.  (From ORAN.WG8.IOT.066 to ORAN.WG8.IOT.074) |
| 2023.06.29 | 08.00 | Manish Kaushik (Radisys)  Veeresh Neginhal (Radisys) | Updating the TCs to include O-CU cloudification aspects.  (From ORAN.WG8.IOT.066 to ORAN.WG8.IOT.068)  Added two new TCs to verify massive MIMO optimization.  (From ORAN.WG8.IOT.075 to ORAN.WG8.IOT.076) |
| 2023.11.06 | 09.00 | Veeresh Neginhal (Radisys)  Rahul Saxena (Radisys) | Updating the IOT specification to latest version of WG specifications. |
| 2024.03.20 | 10.00 | Veeresh Neginhal (Radisys)  Rahul Saxena (Radisys) | Added new TCs to verify Shared O-RU and M-Plane procedures.  (From ORAN.WG8.IOT.077 to ORAN.WG8.IOT.082)  Updating the TC to include C/U plane transport connectivity validation.  (ORAN.WG8.IOT.073)  Updating section referencing per latest version of AAD specification (O-RAN.WG8.AAD.0-R003-v12.00) |
| 2024.07.11 | 11.00 | Veeresh Neginhal (Radisys)  Rahul Saxena (Radisys) | Added new TCs to verify RoHC and RAN Slicing.  (From ORAN.WG8.IOT.083 to ORAN.WG8.IOT.087) |
| 2024.11.11 | 12.00 | Veeresh Neginhal (Radisys)  Rahul Saxena (Radisys)  Manish Malviya (Radisys) | Added new TCs to verify Network energy saving.  (From ORAN.WG8.IOT.088 to ORAN.WG8.IOT.089) |
---

- View in [Reader Mode](https://simewu.com/spec-reader/pages/04-WG8/O-RAN.WG8.IOT.0-R004-v12.00.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG8.IOT.0-R004-v12.00.docx).
