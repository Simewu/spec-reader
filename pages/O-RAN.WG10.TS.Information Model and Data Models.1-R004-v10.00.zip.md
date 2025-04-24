## O-RAN.WG10.TS.Information Model and Data Models.1-R004-v10.00.zip

- View in [Reader Mode](https://simewu.com/spec-reader/pages/03-WG10/O-RAN.WG10.TS.Information%20Model%20and%20Data%20Models.1-R004-v10.00.zip).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG10.TS.Information Model and Data Models.1-R004-v10.00.zip).

---

Content from the zip file `documents/O-RAN.WG10.TS.Information Model and Data Models.1-R004-v10.00.zip`:

## File: IMDM v10 Nov 2024/data-model/Types Identites Features/o-ran-common-identity-refs.yang

module o-ran-common-identity-refs {
  yang-version 1.1;
  namespace "urn:o-ran:wg1identityref:1.0";
  prefix "o-ran-iref";

  import iana-hardware {
    prefix ianahw;
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines a set of re-usable identity references, that can be
    re-used across O-RAN working groups.

    Copyright 2020 the O-RAN Alliance.

    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS 'AS IS'
    AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
    IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
    ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
    LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
    CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
    SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
    INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
    CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
    ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
    POSSIBILITY OF SUCH DAMAGE.

    Redistribution and use in source and binary forms, with or without
    modification, are permitted provided that the following conditions are met:

    * Redistributions of source code must retain the above copyright notice,
    this list of conditions and the above disclaimer.
    * Redistributions in binary form must reproduce the above copyright notice,
    this list of conditions and the above disclaimer in the documentation
    and/or other materials provided with the distribution.
    * Neither the Members of the O-RAN Alliance nor the names of its
    contributors may be used to endorse or promote products derived from
    this software without specific prior written permission.";

  revision "2020-11-01" {
    description
      "version 1.0.0

      1) initial version.";

    reference "ORAN-WG1.IM.0-v01.00";
  }

  // O-RAN functional identity types

  identity o-ran-function-base {
    description
      "Base identity from which all O-RAN defined functions are derived.

      This identity is abstract and MUST NOT be used as a value.";
  }

  identity o-ru-function {
    base "o-ran-function-base";
    description
      "an identity corresponding to an O-RAN O-RU Function.

      This identity is abstract and MUST NOT be used as a value.";
  }

  identity o-du-function {
    base "o-ran-function-base";
    description
      "an identity corresponding to all O-RAN O-DU Functions.

      This identity is abstract and MUST NOT be used as a value.";
  }

  identity o-cu-function {
    base "o-ran-function-base";
    description
      "an identity corresponding to all O-RAN O-CU Functions.

      This identity is abstract and MUST NOT be used as a value.";
  }

  identity o-cu-up-function {
    base "o-cu-function";
    description
      "an identity corresponding to an O-RAN O-CU UP Function.

      This identity is abstract and MUST NOT be used as a value.";
  }

  identity o-cu-cp-function {
    base "o-cu-function";
    description
      "an identity corresponding to an O-RAN O-CU CP Function.

      This identity is abstract and MUST NOT be used as a value.";
  }

  // O-RAN radio technology identity types

  identity o-ran-radio-technology-base {
    description
      "Base identity for O-RAN defined radio technology types.

      This identity is abstract and MUST NOT be used as a value.";
  }

  identity new-radio-technology {
    base "o-ran-radio-technology-base";
    description
      "An identity corresponding to new radio technology.

      This identity is abstract and MUST NOT be used as a value.";
  }

  identity lte-technology {
    base "o-ran-radio-technology-base";
    description
      "An identity corresponding to lte technology.

      This identity is abstract and MUST NOT be used as a value.";
  }

  identity nb-iot {
    base "lte-technology";
    description
      "An identity corresponding to nb-iot technology.

      This identity is abstract and MUST NOT be used as a value.";
  }

  // O-RAN Transport technology identity types

  identity o-ran-transport-technology-base {
    description
      "Base identity from which all O-RAN defined transport technology identities are derived.

      This identity is abstract and MUST NOT be used as a value.";
  }

  // O-RAN Fronthaul transport identity types

  identity o-ran-fronthaul-transport-base {
    description
      "Base identity from which all O-RAN defined fronthaul transports are derived.

      This identity is abstract and MUST NOT be used as a value.";
  }

  identity ethernet-fronthaul-transport {
    base "o-ran-fronthaul-transport-base";
    description
      "an identity corresponding to fronthaul transport using ethernet based flows.

      This identity is abstract and MUST NOT be used as a value.";
  }

  // Hardware component identity types

  identity o-ran-module {
    base ianahw:module;
    description
      "Any O-RAN module that represents a self-contained sub-system.

      This identity is abstract and MUST NOT be used as a value.";
  }

  identity o-ran-hardware-class {
    base ianahw:hardware-class;
    description
      "This identity corresponding to a generic O-RAN hardware class.

      This identity is abstract and MUST NOT be used as a value.";
  }

  identity fpga {
    base o-ran-hardware-class;
    description
      "Represent an FPGA.

      This identity is abstract and MUST NOT be used as a value.";
  }

}

## File: IMDM v10 Nov 2024/data-model/Types Identites Features/o-ran-common-yang-types.yang

module o-ran-common-yang-types {
  yang-version 1.1;
  namespace "urn:o-ran:common-yang-types:1.0";
  prefix "o-ran-types";

  import ietf-inet-types {
    prefix inet;
  }

  import ietf-yang-types {
    prefix ietftypes;
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines ORAN common YANG types.

    Copyright 2020 the O-RAN Alliance.

    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS 'AS IS'
    AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
    IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
    ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
    LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
    CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
    SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
    INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
    CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
    ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
    POSSIBILITY OF SUCH DAMAGE.

    Redistribution and use in source and binary forms, with or without
    modification, are permitted provided that the following conditions are met:

    * Redistributions of source code must retain the above copyright notice,
    this list of conditions and the above disclaimer.
    * Redistributions in binary form must reproduce the above copyright notice,
    this list of conditions and the above disclaimer in the documentation
    and/or other materials provided with the distribution.
    * Neither the Members of the O-RAN Alliance nor the names of its
    contributors may be used to endorse or promote products derived from
    this software without specific prior written permission.";

  revision "2021-03-05" {
    description
      "version 1.0.0

       1) Initial creation";

    reference "ORAN-WG1.IM.0-v02.00";
  }

  typedef version {
    type string {
      pattern '[0-9]+(\.[0-9]+){1,2}';
    }
    description
      "Definition used to represent a version of an interface.";
  }

  typedef timezone-name {
    type string;
    description
      "A time zone name as used by the Time Zone Database,
      sometimes referred to as the 'Olson Database'.

      The complete set of valid values is defined in
      https://www.iana.org/time-zones.

      The exact set of supported values is an
      implementation-specific matter.";

    reference
      "RFC 6557: Procedures for Maintaining the Time Zone Database
      IANA Time Zone Database https://www.iana.org/time-zones ";
  }

  typedef protocol {
    type enumeration {
      enum ECPRI {
        description
          "Indicates that an O-RU supports the ecpri header format
           for the C/U plane";
      }
      enum IEEE-1914-3 {
        description
          "Indicates that an O-RU supports the 1914.3 header format
           for the C/U plane";
      }
    }
    description "the type of C/U plane protocol";
  }

  typedef duplex-scheme {
    type enumeration {
      enum TDD {
        description
          "TDD scheme";
      }
      enum FDD {
        description
          "FDD scheme";
      }
    }
    description
     "Type of duplex scheme O-RU supports.";
  }

  typedef active {
    type enumeration {
      enum INACTIVE {
        description
           "Carrier does not provide signal - transmission is disabled";
      }
      enum SLEEP{
        description
           "Carrier is fully configured and was active but is energy saving mode";
      }
      enum ACTIVE{
        description
           "Carrier is fully configured and properly providing the signal";
      }
    }
    description "the active status of a carrier";
  }

  typedef state {
    type enumeration {
      enum DISABLED {
          description
            "Array carrier is not active - transmission of signal is disabled.";
      }
      enum BUSY {
          description
            "Array carrier is processing an operation requested by change of active parameter.
            When array carriers is BUSY the transmission of signal is not guaranteed.";
      }
      enum READY {
          description
            "Array carrier had completed activation operation - is active and transmission of signal is ongoing.";
      }
    }
    description "the state on an array carrier";
  }

  typedef transport-session {
    type enumeration {
      enum ETHERNET {
          description "VLAN based CUS Transport ";
      }
      enum UDP_IP {
//          if-feature o-ran-int:UDPIP-BASED-CU-PLANE; How to handle enum value constrained by feature defined in o-ran-interface.yang?
          description "UDP/IP based CUS Transport ";
      }
      enum ALIAS_MAC{
//          if-feature o-ran-int:ALIASMAC-BASED-CU-PLANE; How to handle enum value constrained by feature defined in o-ran-interface.yang?
          description "Alias MAC address based CUS Transport ";
      }
      enum SHARED_CELL {
//          if-feature o-ran-elements:SHARED_CELL; How to handle enum value constrained by feature defined in o-ran-processing-element.yang?
          description "VLAN based CUS Transport used for Shared Cell scenario";
      }
    }
    description "the transport session type";
  }

  typedef netconf-client-id {
    type union {
      type inet:ip-address;
      type inet:uri;
    }
    description "A NETCONF client identifier";
  }

  typedef ca-ra-server-id {
    type union {
      type inet:ip-address;
      type inet:uri;
    }
    description "A CA/RA Server identifier";
  }

  typedef segw-id {
    type union {
      type inet:ip-address;
      type inet:uri;
    }
    description "A SeGW identifier";
  }

  typedef pcp {
    type uint8 {
      range "0..7";
    }
    description
      "Priority Code Point. PCP is a 3-bit field that refers to the
      class of service applied to a VLAN tagged frame.  The
      field specifies a priority value between 0 and 7, these values
      can be used by quality of service (QoS) to prioritize
      different classes of traffic.";
    reference
     "IEEE 802.1Q-2014: Virtual Bridged Local Area Networks";
  }

  typedef vlan-id {
    type uint16 {
      range "1..4094";
    }
    description
      "The VLAN-ID that uniquely identifies a VLAN.  This is the 12-bit VLAN-ID
       used in the VLAN Tag header.";
    reference "[802.1q] 9.6";
  }

  typedef geographic-coordinate-degree {
    type decimal64 {
      fraction-digits 8;
    }
    description
      "Decimal degree (DD) used to express latitude and longitude
      geographic coordinates.";
  }

  typedef prach-preamble-format {
    type enumeration {
      enum LTE-0 {
        description
          "LTE PRACH Preamble format 0";
      }
      enum LTE-1 {
        description
          "LTE PRACH Preamble format 1";
      }
      enum LTE-2 {
        description
          "LTE PRACH Preamble format 2";
      }
      enum LTE-3 {
        description
          "LTE PRACH Preamble format 3";
      }
      enum LTE-4 {
        description
          "LTE PRACH Preamble format 4";
      }
      enum LTE-NB0 {
        description
          "LTE Narrowband PRACH format 0";
      }
      enum LTE-NB1 {
        description
          "LTE Narrowband PRACH format 1";
      }
      enum NR-0 {
        description
          "5GNR PRACH Preamble format 0";
      }
      enum NR-1 {
        description
          "5GNR PRACH Preamble format 1";
      }
      enum NR-2 {
        description
          "5GNR PRACH Preamble format 2";
      }
      enum NR-3 {
        description
          "5GNR PRACH Preamble format 3";
      }
      enum NR-A1 {
        description
          "5GNR PRACH Preamble format A1";
      }
      enum NR-A2 {
        description
          "5GNR PRACH Preamble format A2";
      }
      enum NR-A3 {
        description
          "5GNR PRACH Preamble format A3";
      }
      enum NR-B1 {
        description
          "5GNR PRACH Preamble format B1";
      }
      enum NR-B2 {
        description
          "5GNR PRACH Preamble format B2";
      }
      enum NR-B3 {
        description
          "5GNR PRACH Preamble format B3";
      }
      enum NR-B4 {
        description
          "5GNR PRACH Preamble format B4";
      }
      enum NR-C0 {
        description
          "5GNR PRACH Preamble format C0";
      }
      enum NR-C2 {
        description
          "5GNR PRACH Preamble format C2";
      }
      enum LTE-NB0-a {
        description
          "LTE Narrowband PRACH format 0-a";
      }
      enum LTE-NB1-a {
        description
          "LTE Narrowband PRACH format 1-a";
      }
      enum LTE-NB2 {
        description
          "LTE Narrowband PRACH format 2";
      }
    }

    description
      "PRACH preamble format definition";
  }

  typedef polarisation_type {
    type enumeration {
      enum MINUS_45 {
        description "MINUS_45";
      }
      enum ZERO {
        description "ZERO";
      }
      enum PLUS_45 {
        description "PLUS_45";
      }
      enum PLUS_90 {
        description "PLUS_90";
      }
    }
    description "Type definition for polarisations";
  }

  typedef bandwidth {
    type uint32 {
      range "200 | 1400 | 3000 | 5000 | 10000 | 15000 | 20000 | 25000 |
            30000 | 40000 | 50000 | 60000 | 70000 | 80000 | 90000 | 100000
            | 200000 | 400000" ;
    }
    units kilohertz;
    description
      "transmission bandwidth configuration in units of kHz -
      covering NBIoT through to New Radio - see 38.104";
  }

  typedef scs-config-type {
    type enumeration {
      enum KHZ_15 {
        value 0;
        description
          "15kHz sub carrier spacing";
      }
      enum KHZ_30 {
        value 1;
        description
          "30kHz sub carrier spacing";
      }
      enum KHZ_60 {
        value 2;
        description
          "60kHz sub carrier spacing";
      }
      enum KHZ_120 {
        value 3;
        description
          "120kHz sub carrier spacing";
      }
      enum KHZ_240 {
        value 4;
        description
          "240kHz sub carrier spacing";
      }
      enum KHZ_1_25 {
        value 12;
        description
          "1,25kHz sub carrier spacing";
      }
      enum KHZ_3_75 {
        value 13;
        description
          "3.75kHz sub carrier spacing";
      }
      enum KHZ_5 {
        value 14;
        description
          "5kHz sub carrier spacing";
      }
      enum KHZ_7_5 {
        value 15;
        description
          "7.5kHz sub carrier spacing";
      }
    }

    description
      "Scs configuration type definition";
  }

  grouping TimeWindow {
    description "Grouping of Time Window definition";
    reference "3GPP TS 28.622";
    leaf startTime {
      type ietftypes:date-and-time;
      description "It specifies the start of Time Window";
    }
    leaf endTime {
      type ietftypes:date-and-time;
      description "It specifies the end of Time Window";
    }
  }

  typedef NESPolicyType {
    type enumeration {
      enum TRX_CONTROL {
        description "the policy is for TRx Control (RF Channel Reconfiguration) based energy saving";
      }
      enum ASM {
        description "the policy is for Advanced Sleep Mode based energy saving";
      }
    }
    description
      "Network Energy Savings policy type definition";
  }
}
---

- View in [Reader Mode](https://simewu.com/spec-reader/pages/03-WG10/O-RAN.WG10.TS.Information%20Model%20and%20Data%20Models.1-R004-v10.00.zip).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG10.TS.Information Model and Data Models.1-R004-v10.00.zip).
