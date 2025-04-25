## O-RAN.WG4.TS.MP-YANGs-R004-v17.01.zip

- View in [Reader Mode](https://simewu.com/spec-reader/pages/08-WG4/O-RAN.WG4.TS.MP-YANGs-R004-v17.01.zip).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG4.TS.MP-YANGs-R004-v17.01.zip).

---

Content from the zip file `documents/O-RAN.WG4.TS.MP-YANGs-R004-v17.01.zip`:

## File: Cross-WG Common Models/o-ran-common-yang-types.yang

module o-ran-common-yang-types {
  yang-version 1.1;
  namespace "urn:o-ran:common-yang-types:1.0";
  prefix "o-ran-types";

  import ietf-inet-types {
    prefix inet;
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines ORAN common YANG types.

    Copyright 2023 the O-RAN Alliance.

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

  revision "2023-08-14" {
    description
      "version 2.0.0

      1) New availability status typedef";

    reference "ORAN-WG1.IM.0-v01.00";
  }

  revision "2022-08-15" {
    description
      "version 1.1.0

      1) style guide corrections";

    reference "ORAN-WG1.IM.0-v01.00";
  }

  revision "2020-10-10" {
    description
      "version 1.0.0

       1) Initial creation";

    reference "ORAN-WG1.IM.0-v01.00";
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

  typedef availability-status {
    type union {
      type empty;
      type enumeration {
        enum FAILED {
          description
            "The resource has an internal fault that prevents it from operating.
            The operational state is disabled.";
        }
        enum DEPENDENCY {
          description
            "The resource cannot operate because some other resource on which it
            depends is unavailable. The operational state is disabled.";
        }
      }
    }
    description
      "When the value of this attribute is empty set, this implies that none of
      the status conditions described in the enumerations are present. Only current relevant status for M-plane defined are listed here";
    reference "CCITT Rec. X.731 (1992 E) 8.1.2.3";
  }

}

## File: Cross-WG Common Models/o-ran-common-identity-refs.yang

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

  revision "2022-08-15" {
    description
      "version 1.1.0

      1) style guide corrections";

    reference "ORAN-WG1.IM.0-v01.00";
  }

  revision "2020-11-01" {
    description
      "version 1.0.0

      1) initial verstion.";

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

## File: Imported Models/read.me

O-RAN.WG4.TS.MP.0-R004-v17.00 defines O-RAN YANG models that import the following externally defined YANG models:

YANG Module Name                              Namespace                               Revision Date
iana-crypt-hash               urn:ietf:params:xml:ns:yang:iana-crypt-hash               2014-08-06
iana-hardware                 urn:ietf:params:xml:ns:yang:iana-hardware                 2018-03-13
iana-if-type                  urn:ietf:params:xml:ns:yang:iana-if-type                  2017-01-19
ieee802-dot1x                 urn:ieee:std:802.1X:yang:ieee802-dot1x                    2020-02-18
ieee802-dot1x-types           urn:ieee:std:802.1X:yang:ieee802-dot1x-types              2020-02-18
ieee802-dot1x-eapol           urn:ieee:std:802.1X:yang:ieee802-dot1x-eapol              2022-05-25
ieee802-types                 urn:ieee:std:802.1Q:yang:ieee802-types                    2020-06-04
ietf-crypto-types             urn:ietf:params:xml:ns:yang:ietf-crypto-types             2024-10-10
ietf-datastores               urn:ietf:params:xml:ns:yang:ietf-datastores               2018-02-14
ietf-dhcpv6-common            urn:ietf:params:xml:ns:yang:ietf-dhcpv6-common            2021-01-29
ietf-dhcpv6-types             urn:ietf:params:xml:ns:yang:ietf-dhcpv6-types             2018-09-04
ietf-hardware                 urn:ietf:params:xml:ns:yang:ietf-hardware                 2018-03-13
ietf-inet-types               urn:ietf:params:xml:ns:yang:ietf-inet-types               2013-07-15
ietf-interfaces               urn:ietf:params:xml:ns:yang:ietf-interfaces               2018-02-20
ietf-ip                       urn:ietf:params:xml:ns:yang:ietf-ip                       2018-02-22
ietf-keystore                 urn:ietf:params:xml:ns:yang:ietf-keystore                 2024-10-10
ietf-netconf                  urn:ietf:params:xml:ns:netconf:base:1.0                   2011-06-01
ietf-netconf-acm              urn:ietf:params:xml:ns:yang:ietf-netconf-acm              2018-02-14
ietf-netconf-monitoring       urn:ietf:params:xml:ns:yang:ietf-netconf-monitoring       2010-10-04
ietf-netconf-notifications    urn:ietf:params:xml:ns:yang:ietf-netconf-notifications    2012-02-06
ietf-network-instance         urn:ietf:params:xml:ns:yang:ietf-network-instance         2019-01-21
ietf-restconf                 urn:ietf:params:xml:ns:yang:ietf-restconf                 2017-01-26
ietf-subscribed-notifications urn:ietf:params:xml:ns:yang:ietf-subscribed-notifications 2019-09-09
ietf-system                   urn:ietf:params:xml:ns:yang:ietf-system                   2014-08-06
ietf-truststore               urn:ietf:params:xml:ns:yang:ietf-truststore               2024-10-10
ietf-yang-library             urn:ietf:params:xml:ns:yang:ietf-yang-library             2019-01-04
ietf-yang-schema-mount        urn:ietf:params:xml:ns:yang:ietf-yang-schema-mount        2019-01-14
ietf-yang-types               urn:ietf:params:xml:ns:yang:ietf-yang-types               2013-07-15
ietf-x509-cert-to-name        urn:ietf:params:xml:ns:yang:ietf-x509-cert-to-name        2014-12-10
ieee802-dot1q-cfm             urn:ieee:std:802.1Q:yang:ieee802-dot1q-cfm                2022-01-19
ieee802-dot1q-cfm-types       urn:ieee:std:802.1Q:yang:ieee802-dot1q-cfm-types          2020-06-04
ieee802-dot1q-types           urn:ieee:std:802.1Q:yang:ieee802-dot1q-types              2020-06-04

## File: Common Models/Operations/o-ran-ald.yang

module o-ran-ald {
  yang-version 1.1;
  namespace "urn:o-ran:ald:1.0";
  prefix "o-ran-ald";

  import o-ran-ald-port {
    prefix "ap";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the module for the ALD communication.

    Copyright 2019 the O-RAN Alliance.

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

  revision "2021-12-01" {
    description
      "version 1.2.0

      1) Typographical corrections.";

    reference "ORAN-WG4.M.0-v01.00";
  }

  revision "2019-07-03" {
    description
      "version 1.1.0

      1) backward compatible changes to introduce groupings.";

    reference "ORAN-WG4.M.0-v01.00";
  }

  revision "2019-02-04" {
    description
      "version 1.0.0

      1) imported model from xRAN
      2) changed namespace and reference from xran to o-ran";

    reference "ORAN-WG4.M.0-v01.00";
  }

  grouping ald-input {
    description "a grouping for ald input";
    leaf port-id {
      type leafref {
        path "/ap:ald-ports-io/ap:ald-port/ap:port-id";
      }
      mandatory true;
      description
        "Unique ALD port identifier reported by radio";
    }

    leaf ald-req-msg {
      type binary {
        length "0..1200";
      }

      description
        "Response message to be forwarded to ALD in type of binary-string";
    }
  }

  grouping ald-output {
    description "a grouping for ald output";
    leaf port-id {
      type leafref {
        path "/ap:ald-ports-io/ap:ald-port/ap:port-id";
      }
      mandatory true;
      description
        "Unique ALD port identifier reported by radio";
    }

    leaf status {
      type enumeration {
        enum ACCEPTED {
          description
            "Operation was accepted, message was processed towards ALD and response is provided";
        }
        enum REJECTED {
          description
            "Operation was rejected by O-RU";
        }
      }
      mandatory true;

      description
        "Status of RPC handling seen from equipment perspective";
    }

    leaf error-message {
      when "../status='REJECTED'";
      type string;

      description
        "Detailed error message when the status is rejected. E.g. wrong ALD port identifier was used in RPC received from NETCONF Client";
    }

    leaf ald-resp-msg {
      type binary {
        length "0..1200";
      }

      description
        "Response message forwarded from ALD in type of binary-string";
    }

    leaf frames-with-wrong-crc {
      type uint32;

      description
        "Number of frames with incorrect CRC (FCS) received from ALD - running counter";
    }

    leaf frames-without-stop-flag {
      type uint32;

      description
        "Number of frames without stop flag received from ALD - running counter";
    }

    leaf number-of-received-octets {
      type uint32;

      description
        "Number of octets received from HDLC bus - running counter";
    }
  }
  // rpc-statements
  rpc ald-communication {
    description
      "RPC to support communication between O-DU and Antenna Line Devices";

    input {
      uses ald-input;
    }

    output {
      uses ald-output;
    }
  }
}

## File: Common Models/Operations/o-ran-software-management.yang

module o-ran-software-management {
  yang-version 1.1;
  namespace "urn:o-ran:software-management:1.0";
  prefix o-ran-swm;

  import ietf-inet-types {
    prefix "inet";
  }

  import ietf-hardware {
    prefix "hw";
  }

  import o-ran-hardware {
    prefix "o-ran-hw";
  }

  import o-ran-file-management {
    prefix "o-ran-file-mgmt";
  }

  import o-ran-wg4-features {
    prefix "or-feat";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines operations and configuration for the management of software packages.
    This module is derived out of opencpe-firmware-mgmt@2014-02-06.yang

    Copyright 2024 the O-RAN Alliance.

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

  revision "2024-04-15" {
    description
      "version 11.1.0

      1) remove import by revision date for ietf-inet-types.";

    reference "ORAN-WG4.M.0-v11.00";
  }

  revision "2022-12-05" {
    description
      "version 11.0.0

      1) SW Install timeout
      2) check integrity directly after download";

    reference "ORAN-WG4.M.0-v11.00";
  }

  revision "2022-08-15" {
    description
      "version 9.1.0

      1) clarified description statements
      2) style guide corrections
      3) changed import prefix for o-ran-file-management";

    reference "ORAN-WG4.M.0-v09.00";
  }

  revision "2022-04-18" {
    description
      "version 9.0.0

      1) aded new parameter build-content-download";

    reference "ORAN-WG4.M.0-v09.00";
  }

  revision "2021-12-01" {
    description
      "version 8.0.0

      1) typographical corrections in descriptions
      2) new option to use IANA private enterprise number as vendor-code";

    reference "ORAN-WG4.M.0-v08.00";
  }
  revision "2021-07-26" {
    description
      "version 7.0.0

      1) added FTPES support";

    reference "ORAN-WG4.M.0-v07.00";
  }

  revision "2021-03-22" {
    description
      "version 1.1.0

      1) typographical corrections in descriptions.";

    reference "ORAN-WG4.M.0-v01.00";
  }

  revision "2019-07-03" {
    description
      "version 1.0.2

      1) backward compatible changes to correct sFTP Server Authentication .
      2) simplifying file management and authentication to reuse from o-ran-file-management module
      3) minor fixes according to lack of descriptions
      4) removal of not used grouping
      5) backward compatible changes to introduce groupings.";

    reference "ORAN-WG4.M.0-v01.00";
  }

  revision "2019-02-04" {
    description
      "version 1.0.0

      1) imported model from xRAN
      2) changed namespace and reference from xran to o-ran";

    reference "ORAN-WG4.M.0-v01.00";
  }

  // groupings

  grouping slot-group {
    description
      "Contains information about each software slot and its content.";
    list software-slot {
      key name;
      min-elements 2;

      description
        "Information about available software-slots, their status, state and content.";

      leaf name {
        type string;

        description
          "Name of the software slot. This shall be unique to identify the software-slot.";
      }

      leaf status {
        type enumeration {
          enum VALID {
            description
              "Slot contains software considered as proven valid";
          }
          enum INVALID {
            description
              "Software in the slot is considered by O-RU as invalid (e.g. wrong CRC).
              O-RU prohibits activation of slot with such status.";
          }
          enum EMPTY {
            description
              "Slot does not contain software package. O-RU prohibits activation of slot
              with such status.";
          }
        }
        config false;
        mandatory true;

        description "Indicates the status of the software slot";
      }

      leaf active {
          type boolean;
      must "../status = 'VALID'";
        config false;
          description
            "informs if software stored in particular slot is activated at the moment";
      }

      leaf running {
          type boolean;
      must "../status = 'VALID'";
        config false;
          description
            "Informs if software stored in particular slot is used at the moment";
      }

      leaf access {
        type enumeration {
          enum READ_ONLY {
            description
              "slot intended only for factory software,
              activation of such software slot means getting back to factory defaults";
          }
          enum READ_WRITE {
            description
              "slot used for updating software";
          }
        }
        default READ_WRITE;
        config false;

        description
          "Indicates the writeability of the slot.
          A Read-Only software slot is one which has a factory installed software-slot";
      }

      leaf product-code {
        type leafref {
        path "/hw:hardware/hw:component/o-ran-hw:product-code";
        }
        config false;

        description "product code provided by the vendor, specific to the product. This is derived from manifest file.";
      }

      leaf vendor-code {
        type string {
          length 1..5;
          pattern '(.{1,2})|(\d{1,5})';
        }
        config false;

        description
          "Unique code of the vendor. This is derived from manifest file.

          This may be a 1 or two upper case characters or a 1-5 digit IANA Private Enterprise Number.";
      }

      leaf build-id {
        type string;
        config false;

        description
          "Identity associated with the software. This is derived from manifest file.";
      }

      leaf build-name {
        type string;
        config false;

        description
          "Name of the build. This is derived from manifest file.";
      }

      leaf build-version {
        type string;
        description "The vendor-specific version string of the software build.";
      }

      list files {
        key "name";
        config false;

        description "List of all the files present in the software slot.";

        leaf name {
          type string;

          description
            "Name of the file installed in the slot.";
        }

        leaf version {
          type string;

          description
            "Version of the file installed in the slot";
        }
        leaf local-path {
          type string;
          mandatory true;

          description
            "Complete path of the file stored locally";
        }

        leaf integrity {
          type enumeration {
            enum OK {
              description "OK - indicates that file integrity is correct";
            }
            enum NOK {
              description "NOK - indicates corrupted file";
            }
          }
          config false;

          description
            "Result of the file integrity check (checksum calculation) during installation.";
        }
      }
    }
  }

  grouping download-input {
    description
      "Grouping for SW download RPC input";
    leaf remote-file-path {
      type inet:uri;
      mandatory true;
      description
        "URI of the software image including username.
        The following format is possible:
        When file download is via sftp, the format shall be of the form
        sftp://<username>@<host>[:<port>]/path
        When file transfer is via FTPES, the format shall be of the form
        ftpes://<username>@<host>[:port]/path

        Note, ftpes is not an IANA registered URI scheme, but used here to signal
        that a file transfer should be performed over FTPES.";
    }

    uses o-ran-file-mgmt:credential-information;
  }

  grouping download-output {
    description
      "Grouping for SW download RPC output";
    leaf status {
      type enumeration {
        enum STARTED {
          description
            "Operation has been started without error.";
        }
        enum FAILED {
          description
            "Operation cannot be started because of error, more detailed information can be found in error-message.";
        }
      }
      mandatory true;

      description
        "Status of the software file download";
    }
    leaf error-message {
      when "../status = 'FAILED'";
      type string;

      description
        "Detailed error Message when the status is FAILED.";
    }

    leaf notification-timeout {
      type int32 {range "1..max";}
      units seconds;
      default 30;

      description
        "Notification timeout is the time NETCONF client shall
        wait for a 'download-event' notification from O-RU. If there is no
        'download-event' notification received within notification-timeout,
        NETCONF client shall assume the download timeout/failure, and follow necessary steps.";
    }
  }

  grouping install-input {
    description
      "Grouping for SW installation RPC input";
    leaf slot-name {
      type leafref {
        path "/software-inventory/software-slot/name";
        }
      must "/software-inventory/software-slot[name = current()][active = 'false' and running = 'false']" {
        error-message "software-install may be requested only against active::false and running::false slot!";
      }
      mandatory true;

      description
        "Software slot to which the software shall be installed.";
    }

    leaf-list file-names {
      type string;

      description
        "Names of the files within software package to be installed";
    }
  }

  grouping install-output {
    description
      "Grouping for SW installation RPC output";
    leaf status {
      type enumeration {
        enum STARTED {
          description
            "Operation has been started without error.";
        }
        enum FAILED {
          description
            "Operation cannot be started because of error, more detailed information can be found in error-message.";
        }
      }
      mandatory true;

      description
        "Status of the software package installation to software slot.";
    }
    leaf error-message {
      when "../status = 'FAILED'";
      type string;

      description
        "Detailed error Message when the status is FAILED.";
    }

    leaf sw-install-timeout {
      type int32 {range "1..max";}
      units seconds;

      description
        "Optional timeout indicated by O-RU after which time
        an 'install-event' notification will be sent indicating
        the installation procedure has timed out.";
    }
  }

  grouping activate-input {
    description
      "Grouping for SW activation RPC input";
    leaf slot-name {
      type leafref {
        path "/software-inventory/software-slot/name";
      }
      must "/software-inventory/software-slot[name = current()][status = 'VALID']" {
        error-message "software activation may be requested only on VALID slot!";
      }
      mandatory true;

      description
        "Slot name on which software has to be activated.";
    }
  }

  grouping activate-output {
    description
      "Grouping for SW activation RPC output";
    leaf status {
      type enumeration {
        enum STARTED {
          description
            "Operation has been started without error.";
        }
        enum FAILED {
          description
            "Operation cannot be started because of error, more detailed information can be found in error-message.";
        }
      }
      mandatory true;

      description
        "Status of the software files activation";
    }
    leaf error-message {
      when "../status = 'FAILED'";
      type string;

      description
        "Detailed error Message when the status is FAILED.";
    }

    leaf notification-timeout {
      type int32 {range "1..max";}
      units seconds;
      default 30;

      description
        "Timeout on client waiting for the activate event";
    }
  }

  grouping download-notification {
    description
      "Grouping for notification event structure for download completion";
    leaf file-name {
      type string;
      mandatory true;

      description
        "File name of transferred software file.";
    }

    leaf status {
      type enumeration {
        enum COMPLETED {
          description
            "Operation completed successfully";
        }
        enum AUTHENTICATION_ERROR {
          description "Source available, wrong credentials";
        }
        enum PROTOCOL_ERROR {
          description "SFTP or FTPES errors";
        }
        enum FILE_NOT_FOUND {
          description "Source not available.";
        }
        enum APPLICATION_ERROR {
          description "Application related errors";
        }
        enum TIMEOUT {
          description "Timeout waiting for download";
        }
        enum INTEGRITY_ERROR {
          description "File is corrupted";
        }
      }

      description
        "Status of finished operation execution";
    }
    leaf error-message {
      when "../status != 'COMPLETED'";
      type string;

      description
        "Detailed description of faulty situation";
    }
  }

  grouping install-notification {
    description
      "Grouping for notification event structure for installation completion";
    leaf slot-name {
      type leafref {
        path "/software-inventory/software-slot/name";
      }

      description
        "Name of the slot to which software was installed.";
    }
    leaf status {
      type enumeration {
        enum COMPLETED {
          description
            "Operation completed successfully";
        }
        enum FILE_ERROR {
          description "Operation on the file resulted in in error, disk failure, not enough disk space,
                      incompatible file format";
        }
        enum INTEGRITY_ERROR {
          description "File is corrupted";
        }
        enum APPLICATION_ERROR {
          description "Operation failed due to internal reason";
        }
        enum TIMEOUT {
          description "Install operation timed out";
        }
      }

      description
        "Status of finished operation execution";
    }
    leaf error-message {
      when "../status != 'COMPLETED'";
      type string;

      description
        "Detailed description of faulty situation";
    }
  }

  grouping activation-notification {
    description
      "Grouping for notification event structure for activation completion";
    leaf slot-name {
      type leafref {
        path "/software-inventory/software-slot/name";
      }

      description
        "Name of the slot which was activated";
    }

    leaf status {
      type enumeration {
        enum COMPLETED {
          description
            "Operation completed successfully";
        }
        enum APPLICATION_ERROR {
          description
            "Operation finished with error, more details can by found in error-message";
        }
      }

      description
        "Status of finished operation execution";
    }
    leaf return-code {
      type uint8;

      description
        "Status code return when the software is tried to activate";
    }
    leaf error-message {
      when "../status != 'COMPLETED'";
      type string;

      description
        "Detailed description of faulty situation";
    }
  }

  // top-level container

  container software-inventory {
    config false;
    description
      "Contains information about each software slot and its content as well as information related to
      software processing.";

    uses slot-group;

    leaf build-content-download {
      type empty;
      description
        "An optional leaf used to indicate that the O-RU requires separate download procedures to be
        re-used for downloading individual files in a software build, instead of a single archived package.";
    }

    leaf integrity-check-at-download-enabled {
      if-feature or-feat:INTEGRITY-CHECK-AT-SW-DOWNLOAD;
      type empty;
      description "Presence of this node enables O-RU to perform integrity check at file download.";
    }

  }
    // RPC statements

  rpc software-download {
    description
      "RPC needed to perform software download operation.";

    input {
      uses download-input;
    }
    output {
      uses download-output;
    }
  }

  rpc software-install {
    description
      "Install a previously downloaded software.";

    input {
      uses install-input;
    }
    output {
      uses install-output;
    }
  }

  rpc software-activate {
    description
      "Activate a previously installed software.";
    input {
      uses activate-input;
    }
    output {
      uses activate-output;
    }
  }

    // notification definitions
  notification download-event {
    description "Notification event structure for download completion";
    uses download-notification;

  }

  notification install-event {
    description "Notification event structure for installation completion";
    uses install-notification;
  }

  notification activation-event {
    description "Notification event structure for activation completion";
    uses activation-notification;
  }
}

## File: Common Models/Operations/o-ran-troubleshooting.yang

module o-ran-troubleshooting {
  yang-version 1.1;
  namespace "urn:o-ran:troubleshooting:1.0";
  prefix "o-ran-trblsht";

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the operations for the troubleshooting logs.

    Copyright 2019 the O-RAN Alliance.

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

  revision "2022-08-15" {
    description
      "version 1.2.0

      1) clarified path/folder description.";

    reference "ORAN-WG4.M.0-v01.00";
  }

  revision "2021-12-01" {
    description
      "version 1.1.0

      1) typographical corrections";

    reference "ORAN-WG4.M.0-v01.00";
  }

  revision "2019-02-04" {
    description
      "version 1.0.0

      1) imported model from xRAN
      2) changed namespace and reference from xran to o-ran";

    reference "ORAN-WG4.M.0-v01.00";
  }

  grouping troubleshooting-status-grouping {
    description "grouping used for troubleshooting RPCs";
    leaf status {
      type enumeration {
        enum SUCCESS {
          description "RPC completed correctly";
        }
        enum FAILURE {
          description "RPC failed";
        }
      }
      description "result of RPC operation";
    }
    leaf failure-reason {
      when "../status = 'FAILURE'";
      type string;
      description "free-form text description why error occurred";
    }
  }

  rpc start-troubleshooting-logs {
    description
      "Management plane triggered to start collecting the troubleshooting logs files of O-RU.";
      output {
        uses troubleshooting-status-grouping;
      }
  }

  rpc stop-troubleshooting-logs {
    description
      "Management plane triggered to stop collecting the troubleshooting logs files of O-RU.";
      output {
        uses troubleshooting-status-grouping;
      }
  }

  notification troubleshooting-log-generated {
    description
      "When new log file generated, send this notification.";
    leaf-list log-file-name {
      type string;
      description
        "The list of troubleshooting log file names on the O-RU. Each record in this list is expected to
        contain location of the file (e.g. 'o-ran/log/') and the name of file (e.g.'my_troubleshooting_log_file.zip',
        where 'my_troubleshooting_log_file' is example file name and 'zip' is expected file name extension).
        Example complete expected content of this node is 'o-ran/log/my_troubleshooting_log_file.zip'.";
    }
  }
}

## File: Common Models/Operations/o-ran-trace.yang

module o-ran-trace {
  yang-version 1.1;
  namespace "urn:o-ran:trace:1.0";
  prefix "o-ran-trace";

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the operations for the trace logs.

    Copyright 2019 the O-RAN Alliance.

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

  revision "2022-08-15" {
    description
      "version 1.2.0

      1) clarified path/folder description.";

    reference "ORAN-WG4.M.0-v01.00";
  }

  revision "2021-12-01" {
    description
      "version 1.1.0

      1) Typographical corrections.";

    reference "ORAN-WG4.M.0-v01.00";
  }

  revision "2019-07-03" {
    description
      "version 1.0.0

      1) Initial module definition.";

    reference "ORAN-WG4.M.0-v01.00";
  }

  grouping trace-status-grouping {
    description "grouping used for trace RPCs";
    leaf status {
      type enumeration {
        enum SUCCESS {
          description "RPC completed correctly";
        }
        enum FAILURE {
          description "RPC failed";
        }
      }
      description "result of RPC operation";
    }
    leaf failure-reason {
      when "../status = 'FAILURE'";
      type string;
      description "free-form text description why error occurred";
    }
  }

  rpc start-trace-logs {
    description
      "Management plane triggered to start collecting the trace logs files of O-RU.";
      output {
        uses trace-status-grouping;
      }
  }

  rpc stop-trace-logs {
    description
      "Management plane triggered to stop collecting the trace logs files of O-RU.";
      output {
        uses trace-status-grouping;
      }
  }

  notification trace-log-generated {
    description
      "When new log file generated, send this notification.";
    leaf-list log-file-name {
      type string;
      description
        "The list of trace log file names on the O-RU. Each record in this list is expected to contain
        location of the file (e.g. 'o-ran/log/') and the name of file (e.g.'my_trace_log_file.zip', where
        'my_trace_log_file' is example file name and 'zip' is expected file name extension).
        Example complete expected content of this node is 'o-ran/log/my_trace_log_file.zip'.";
    }

    leaf is-notification-last {
      type boolean;
      default false;
      description
        "Informs if notification is last - the one after receiving stop-trace-logs RPC.";
    }
  }
}

## File: Common Models/Operations/o-ran-file-management.yang

module o-ran-file-management {
  yang-version 1.1;
  namespace "urn:o-ran:file-management:1.0";
  prefix "o-ran-file-mgmt";

  import ietf-netconf-acm {
    prefix nacm;
    reference
      "RFC 8341: Network Configuration Access Control Model";
  }

  import o-ran-wg4-features {
    prefix or-feat;
  }

  // import ietf-inet-type
  import ietf-inet-types {
    prefix "inet";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the configuration and operations for handling upload.

    Copyright 2024 the O-RAN Alliance.

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

  revision 2024-12-23 {
    description
      "version 17.0.0

      1) introduced security logging";

    reference "ORAN-WG4.M.0-v17.00";
  }

  revision "2024-08-12" {
    description
      "version 10.2.0

      1) Improve YANG description enforce typing of IPv6 addresses";

    reference "ORAN-WG4.M.0-v10.00";
  }

  revision "2023-04-10" {
    description
      "version 10.1.0

      1) Remove crypto-types dependency";

    reference "ORAN-WG4.M.0-v10.00";
  }

  revision "2022-08-15" {
    description
      "version 10.0.0

      1) added password for FTPES
      2) clarified path/folder description ";

    reference "ORAN-WG4.M.0-v10.00";
  }

  revision "2021-12-01" {
    description
      "version 7.1.0

      1) typographical corrections";

    reference "ORAN-WG4.M.0-v07.00";
  }

  revision "2021-07-26" {
    description
      "version 7.0.0

      1) added FTPES support";

    reference "ORAN-WG4.M.0-v07.00";
  }

  revision "2019-07-03" {
    description
      "version 1.1.0

      1) backward compatible changes to correct sFTP Server Authentication .
      2) minor fixes according to lack of descriptions
      3) backward compatible changes to introduce groupings";

    reference "ORAN-WG4.M.0-v01.00";
  }

  revision "2019-02-04" {
    description
      "version 1.0.0

      1) imported model from xRAN
      2) changed namespace and reference from xran to o-ran";

    reference "ORAN-WG4.M.0-v01.00";
  }

  /***********************************************/
  /*  Identities for Asymmetric Key Algorithms   */
  /***********************************************/

  identity asymmetric-key-algorithm {
    description
      "Base identity from which all asymmetric key
       encryption Algorithm.";
  }

  identity rsa1024 {
    base asymmetric-key-algorithm;
    description
      "The RSA algorithm using a 1024-bit key.";
    reference
      "RFC 8017:
         PKCS #1: RSA Cryptography Specifications Version 2.2.";
  }

  identity rsa2048 {
    base asymmetric-key-algorithm;
    description
      "The RSA algorithm using a 2048-bit key.";
    reference
      "RFC 8017:
         PKCS #1: RSA Cryptography Specifications Version 2.2.";
  }

  identity rsa3072 {
    base asymmetric-key-algorithm;
    description
      "The RSA algorithm using a 3072-bit key.";
    reference
      "RFC 8017:
         PKCS #1: RSA Cryptography Specifications Version 2.2.";
  }

  identity rsa4096 {
    base asymmetric-key-algorithm;
    description
      "The RSA algorithm using a 4096-bit key.";
    reference
      "RFC 8017:
         PKCS #1: RSA Cryptography Specifications Version 2.2.";
  }

  identity rsa7680 {
    base asymmetric-key-algorithm;
    description
      "The RSA algorithm using a 7680-bit key.";
    reference
      "RFC 8017:
         PKCS #1: RSA Cryptography Specifications Version 2.2.";
  }

  identity rsa15360 {
    base asymmetric-key-algorithm;
    description
      "The RSA algorithm using a 15360-bit key.";
    reference
      "RFC 8017:
         PKCS #1: RSA Cryptography Specifications Version 2.2.";
  }

  identity secp192r1 {
    base asymmetric-key-algorithm;
    description
      "The ECDSA algorithm using a NIST P256 Curve.";
    reference
      "RFC 6090:
         Fundamental Elliptic Curve Cryptography Algorithms.";
  }
  identity secp224r1 {
    base asymmetric-key-algorithm;
    description
      "The ECDSA algorithm using a NIST P256 Curve.";
    reference
      "RFC 6090:
         Fundamental Elliptic Curve Cryptography Algorithms.";
  }

  identity secp256r1 {
    base asymmetric-key-algorithm;
    description
      "The ECDSA algorithm using a NIST P256 Curve.";
    reference
      "RFC 6090:
         Fundamental Elliptic Curve Cryptography Algorithms.";
  }

  identity secp384r1 {
    base asymmetric-key-algorithm;
    description
      "The ECDSA algorithm using a NIST P256 Curve.";
    reference
      "RFC 6090:
         Fundamental Elliptic Curve Cryptography Algorithms.";
  }

  identity secp521r1 {
    base asymmetric-key-algorithm;
    description
      "The ECDSA algorithm using a NIST P256 Curve.";
    reference
      "RFC 6090:
         Fundamental Elliptic Curve Cryptography Algorithms.";
  }

  /**********************************************************/
  /*   Typedefs for identityrefs to above base identities   */
  /**********************************************************/

  typedef asymmetric-key-algorithm-ref {
    type identityref {
      base asymmetric-key-algorithm;
    }
    description
      "This typedef enables importing modules to easily define an
       identityref to the 'asymmetric-key-algorithm'
       base identity.";
  }

  grouping file-path-grouping {
    description "Grouping, that provides local path and remote path for the
    purpose of File Management scenarios.";

    leaf local-logical-file-path {
      type string;
      mandatory true;
      description "URI specifying the complete logical path relative to the root of the logical file system
      structure (the common root for o-ran/log, o-ran/pm, o-ran/transceiver or o-ran/beamforming) of the file
      to upload/download (no wildcard is allowed), including a file name and its extension.
      Example: 'o-ran/log/file_1.abc', where 'o-ran/log/' represents relative path to folder containing log files
      as specified by O-RAN, 'file_1' represents desired filename and 'abc' represents desired filename's extension.
      The content shall conform to RFC3986 'Uniform Resource Identifier (URI): Generic Syntax'";
    }

    leaf remote-file-path {
      type string;
      mandatory true;
      description "URI specifying the remote-file-path on O-DU/SMO or on stand-alone file server.
      The content shall conform to RFC3986 'Uniform Resource Identifier (URI): Generic Syntax'.
      When upload/download is via sftp, the format shall be of the form
      sftp://<username>@<host>[:port]/path
      When upload/download is via ftpes, the format shall be of the form
      ftpes://<username>@<host>[:port]/path
      IPv6 addresses are distinguished by enclosing the IP literal within square brackets ('[' and ']') as defined by RFC3986 e.g., sftp://user@[2001:0:130F::9C0:876A:130B]:22/path.

      Note, ftpes is not an IANA registered URI scheme, but used here to signal
      that a file transfer should be performed over FTPES";
    }
  }

  grouping output-status-grouping {
    description "Status grouping";

    leaf status {
      type enumeration {
        enum SUCCESS {
            description "";}
        enum FAILURE {
            description "";}
      }
      description "Operation status";
      }

    leaf reject-reason {
      when "../status = 'FAILURE'";
      type string;
      description "";
    }
  }

  grouping credential-information {
    description "Type of authentication to use for file upload or download.";
    choice credentials {
      case password {
        container password {
          presence true;
          leaf password {
            type string;
            mandatory true;
            description
              "password used for O-RU authentication to sFTP server for the associated username defined in the remote-file-path.";
          }
          description
            "password for O-RU authentication method in use. This information
            shall be ignored by an O-RU that is using FTPES based file transfer";
        }
        container server {
          list keys {
            key algorithm;
            ordered-by user;
            uses public-key-grouping;
            description
              "List of allowed algorithms with its keys";
          }
          description
            "SSH Key for file server authentication";
        }
      }
      case certificate {
        container certificate {
          presence true;
          description
            "certificate authentication method in use";
        }

      }
     description "";
    }
    container application-layer-credential{

      leaf appl-password {
            type string;
            description
             "The parameter represents the password which may be needed for O-RU application level authentication.
             For example, to perform authenticatation towards an FTPes server which does not allow anonymous account,
             in addition to X.509v3 certificate for TLS authentication, password configured here need to be used together with username defined in the remote-file-path  ";
      }
      description
        "Application layer credential information";
    }
  }

  grouping retrieve-input {
    description "Grouping for information retrieval RPC input";
    leaf logical-path {
      type string;
      mandatory true;
      description "URL specifying the logical path relative to the root of the logical file system
      structure (the common root for o-ran/log, o-ran/pm, o-ran/transceiver or o-ran/beamforming)
      of the files to be listed.";
    }
    leaf file-name-filter {
      type string;
      description "Filter which needs to be applied on the result list of file names (* is allowed as wild-card).";
    }
  }

  grouping retrieve-output {
    description "Grouping for information retrieval RPC output";
    uses output-status-grouping;
    leaf-list file-list {
      when "../status = 'SUCCESS'";
      type string;
      description "List of files in the unit with the filter applied.";
    }
  }

  grouping public-key-grouping {
    description
      "A public key.

       The 'algorithm' and 'public-key' nodes are not
       mandatory because they MAY be defined in <operational>.
       Implementations SHOULD assert that these values are
       either configured or that they exist in <operational>.";
    leaf algorithm {
      nacm:default-deny-write;
      type asymmetric-key-algorithm-ref;
      must '../public-key';
      description
        "Identifies the key's algorithm.  More specifically,
         this leaf specifies how the 'public-key' binary leaf
         is encoded.";
      reference
        "RFC CCCC: Common YANG Data Types for Cryptography";
    }
    leaf public-key {
      nacm:default-deny-write;
      type binary;
      must '../algorithm';
      description
        "A binary that contains the value of the public key.  The
         interpretation of the content is defined by the key
         algorithm.  For example, a DSA key is an integer, an RSA
         key is represented as RSAPublicKey as defined in
         RFC 8017, and an Elliptic Curve Cryptography (ECC) key
         is represented using the 'publicKey' described in
         RFC 5915.";
      reference
        "RFC 8017: Public-Key Cryptography Standards (PKCS) #1:
                   RSA Cryptography Specifications Version 2.2.
         RFC 5915: Elliptic Curve Private Key Structure.";
    }
  }

  grouping security-log-path-group {
    description
      "a grouping that can be reused by configuration and notifications";
    leaf remote-security-log-upload-path {
      type inet:uri;
      description
        "URI specifying the remote location where the security logs
        are to be uploaded.

        When upload is via SFTP, the format shall be of the form
        sftp://<username>@<host>[:port]/path
        When upload is via FTPES, the format shall be of the form
        ftpes://<username>@<host>[:port]/path

        Note, ftpes is not an IANA registered URI scheme, but used here to signal
        that a file transfer should be performed over FTPES";
    }
  }

// Top Level Container

container file-management{
  description
    "a collection of operational and configuration information for file management";

  container security-logging {
    if-feature "or-feat:SECURITY-LOGGING";
    description
      "a collection of operational and configuration information for security logging";

    leaf security-folder-memory-size {
      type uint16;
      units megabytes;
      config false;
      description
        "the cummulative memory size able to be used to store O-RU security logs";
    }

    leaf security-log-max-size {
      type uint16 {
        range "1..max";
      }
      units megabytes;
      description
        "the maximum size of a security log before log data rotation,
        i.e., where the current file is closed and a new file is opened.

        Before an O-RU Controller commits a configuration to the O-RU,
        the O-RU shall set the read value to the current log max size used
        by the O-RU.

        This configured value may be stored in reset persistent memory by
        the O-RU.";
    }

    leaf security-log-max-duration {
      type uint16 {
        range "0 | 300..max";
      }
      units seconds;
      description
        "the maximum duration a security log is open before log data rotation,
        i.e., where the current file is closed and a new file is opened.
        When configured to 0, the O-RU shall disable time based security log
        closing/rotation.

        Before an O-RU Controller commits a configuration to the O-RU,
        the O-RU shall set the read value to the current log max duration
        used by the O-RU.

        This configured value may be stored in reset persistent memory by
        the O-RU.";
    }

    list remote-security-log-uploads {
      key remote-security-log-upload-path;
      description
        "file upload of security logs shall be configured to be
        performed to one or more file servers.

        The committed configuration of an O-RU shall include
        at least one entry in this list.

        The list cannot be made mandatory ('min-elements 1;')
        as this will lead to the config database being
        immediately invalid following a reboot.";

      uses security-log-path-group;
      uses credential-information;
    }
  }
}

// RPCs

  rpc file-upload {
    description "Management plane trigger to upload file from O-RU to file-server";
    input {
      uses file-path-grouping;
      uses credential-information;
    }
    output {
      uses output-status-grouping;
    }
  }

  rpc retrieve-file-list {
    description "List all the files in the logical O-RAN unit (* is allowed as wild-card).";
    input {
      uses retrieve-input;

    }
    output {
      uses retrieve-output;
    }
  }

  rpc file-download {
    description
      "Management plane trigger to download file from file-server to O-RU.";
    input {
      uses file-path-grouping;
      uses credential-information;
    }
    output {
      uses output-status-grouping;
    }
  }

  rpc rotate-security-log {
    if-feature "or-feat:SECURITY-LOGGING";
    description
      "Management plane trigger to rotate the current security log file.";
    output {
      uses output-status-grouping;
    }
  }

  notification file-upload-notification {
    uses file-path-grouping;
    uses output-status-grouping;
    description "";
  }

  notification file-download-event {
    uses file-path-grouping;
    uses output-status-grouping;
    description "";
  }

  notification security-log-upload-notification {
    uses security-log-path-group;
    leaf status {
      type enumeration {
        enum SUCCESS {
            description
              "a successful security log file has been uploaded";}
        enum FAILURE {
            description
              "a security log file failed to be uploaded.

              Failure includes when an O-RU controller has
              failed to configure the remote-security-log-upload-path
              and associated credential. ";
        }
      }
      description "Operation status";
    }

    leaf failure-reason {
      when "../status = 'FAILURE'";
      type string;
      description "The reason the security log was not successfully uploaded";
    }
    description "The notification concerning secrutiy log file upload operations.";
  }
}

## File: Common Models/Operations/o-ran-operations.yang

module o-ran-operations {
  yang-version 1.1;
  namespace "urn:o-ran:operations:1.0";
  prefix "o-ran-ops";

  import ietf-yang-types {
    prefix yang;
  }

  import ietf-netconf-acm {
    prefix nacm;
    reference
      "RFC 8341: Network Configuration Access Control Model";
  }

  import ietf-hardware {
    prefix hw;
  }

  import o-ran-wg4-features {
    prefix or-feat;
  }

  import o-ran-usermgmt {
    prefix "or-user";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the YANG model used for O-RAN operations.

    Copyright 2024 the O-RAN Alliance.

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

  revision 2024-12-23 {
    description
      "version 15.1.0

      1) Clarifying supported-mplane-version";

    reference "ORAN-WG4.M.0-v15.00";
  }

  revision "2024-04-15" {
    description
      "version 15.0.0

      1) Support for M-plane based TRX control for Network Energy Saving.
      2) Support for deep hibernate sleep mode";

    reference "ORAN-WG4.M.0-v15.00";
  }

  revision "2023-08-14" {
    description
      "version 13.0.0

      1) Introduction of restart-call-home RPC
      2) Introduction of emergency-wake-up RPC and Notification";

    reference "ORAN-WG4.M.0-v13.00";
  }

  revision "2023-04-10" {
    description
      "version 10.1.0

      1) Clarify description of max-call-home-attempts";

    reference "ORAN-WG4.M.0-v10.00";
  }

  revision "2022-08-15" {
    description
      "version 10.0.0

      1) added current-datetime leaf";

    reference "ORAN-WG4.M.0-v10.00";
  }

  revision "2021-12-01" {
    description
      "version 8.0.0

      1) typographical corrections in descriptions
      2) new schema node maximum-simultaneous-netconf-sessions";

    reference "ORAN-WG4.M.0-v08.00";
  }

  revision "2021-07-26" {
    description
      "version 7.0.0

      1) new leaf for max-call-home-attempts";

    reference "ORAN-WG4.M.0-v07.00";
  }

  revision "2021-03-22" {
    description
      "version 6.0.0

      1) typographical corrections in descriptions.
      2) new descriptions for NETCONF/TLS call home";

    reference "ORAN-WG4.M.0-v06.00";
  }

  revision "2020-12-10" {
    description
      "version 5.0.0

      1) added pnfRegistration and VES header version fields";

    reference "ORAN-WG4.M.0-v05.00";
  }

  revision "2019-07-03" {
    description
      "version 2.0.0

      1) added timezone-name
      2) added ru-instance-id
      3) backward compatible changes to introduce groupings.";

    reference "ORAN-WG4.M.0-v01.00";
  }

  revision "2019-02-04" {
    description
      "version 1.0.0

      1) imported model from xRAN
      2) changed namespace and reference from xran to o-ran";

    reference "ORAN-WG4.M.0-v01.00";
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

  typedef version {
    type string {
      pattern '[0-9]+(\.[0-9]+){1,2}';
    }
    description
      "this type definition is used to represent the version of the WG4
      fronthaul interface.";
  }

  grouping operational-group {
    description "operational grouping";

// Container used for WG4 specific declarations
    container declarations {
      //FIXME - determine whether it is acceptable to WG4 to change this to a presence
      //container, where the presence indicates the NETCONF server supports WG4
      //defined functionality
      config false;
      description "WG4 Specific Declarations of supported version of standards";

      leaf ru-instance-id {
        type string;
        must "re-match(current(), concat(/hw:hardware/hw:component/hw:mfg-name,
          '_', /hw:hardware/hw:component/hw:model-name, '_',
          /hw:hardware/hw:component/hw:serial-num ))";
        description
          "a unique instance identifier that may be used to identify a
          particular hardware instance, e.g., when used performing hierarchical
          management via the O-DU.";
      }

      leaf supported-mplane-version {
        type version;
        default "1.0.0";
        description "Parameter provides highest version of O-RAN.WG4.MP.0 specification device is compliant with.
        An O-RU declaring compliance to a version shall ensure that when its YANG library contains a YANG model
        listed in Annex E of the corresponding version of the O-RAN.WG4.MP.0 specification,
        that the revision statement date of the YANG model is no earlier than the revision date as listed in Annex E,
        while ensuring backward compatibility.";
      }

      leaf supported-cusplane-version {
        type version;
        default "1.0.0";
        description "Parameter provides highest CUS-Plane specification version device is compliant with.";
      }

      list supported-header-mechanism {
        key protocol;
        description "list provides information regarding type and version of headers.";

        leaf protocol {
          type enumeration {
            enum ECPRI {
              description
                "Indicates that an O-RU supports the eCPRI header format
                for the C/U plane";
            }
            enum IEEE-1914-3 {
              description
                "Indicates that an O-RU supports the 1914.3 header format
                for the C/U plane";
            }
          }
          description "Transport protocol type.";
        }

        leaf ecpri-concatenation-support {
          when "../protocol = 'ECPRI'";
          type boolean;
          default false;
          description
            "This leaf is used to indicate whether the O-RU supports the optional
            eCPRI concatenation capability";
        }

        leaf protocol-version {
          type version;
          default "1.0";
          description "Header protocol version.";
        }
      }
      leaf supported-common-event-header-version {
        if-feature "or-feat:NON-PERSISTENT-MPLANE";
        type version;
        description "Parameter provides highest commonEventheader version device is compliant with.";
      }
      leaf supported-ves-event-listener-version {
        if-feature "or-feat:NON-PERSISTENT-MPLANE";
        type version;
        description "Parameter provides highest vesEventListener version device is compliant with.";
      }
      leaf supported-pnf-registration-fields-version {
        if-feature "or-feat:NON-PERSISTENT-MPLANE";
        type version;
        description "Parameter provides highest pnfRegistrationFields version device is compliant with.";
      }
      leaf maximum-simultaneous-netconf-sessions {
        type uint8 {
          range "2..max";
        }
        default 2;
        description
          "The maximum number of simultaneous NETCONF sessions able to be supported by the O-RU";
      }
    }

    container operational-state {
      config false;
      description
        "Operational state for the O-RAN network element";
      leaf restart-cause {
        type enumeration {
          enum POWER-ON {
            description
              "Equipment restarted because it was powered on";
          }
          enum SUPERVISION-WATCHDOG {
            description
              "Equipment restarted because it's supervision watchdog timer wasn't reset
              by a NETCONF client (inferring loss of NETCONF connectivity)";
          }
          enum MPLANE-TRIGGERED-RESTART {
            description
              "Equipment restarted because of an M-plane issued RPC";
          }
          enum SOFTWARE-FAILURE {
            description
              "Equipment restarted because of software failure";
          }
          enum OTHER-WATCHDOG-TIMER {
            description
              "Equipment restarted because of some other non NETCONF watchdog timer";
          }
          enum DEEP-HIBERNATE-RESTART {
            description
              "Equipment restarted after deep-hibernate timer expiry";
          }
          enum UNKNOWN {
            description
              "The restart reason for the Equipment is unknown";
          }
        }
        description "the cause for the last restart of the O-RAN Network Element";
      }
      leaf restart-datetime {
        type yang:date-and-time;
        description
          "The system date and time when the system last restarted.";
      }
      leaf current-datetime {
        type yang:date-and-time;
        description
          "An optional leaf to enable the O-RU to report its current system date and time.

          O-RUs that support a realtime clock may use it to set its current-datetime.
          O-RUs that support GNSS may use GNSS derived time to set its current-datetime.
          Other O-RUs can set the current-datetime from PTP synchronization.

          An O-RU may omit the leaf if its current-datetime is not set, e.g., using one
          of the examples listed above.";
      }
    }

// Common cross-WG container used for configuring clock and call home timers
    container clock {
      description
        "System date and time properties used by all working groups.";

      leaf timezone-name {
        type timezone-name;
        description
          "An optional TZ database name to use for the system,
           such as 'Europe/Stockholm'

           Time zone name is an informative leaf and is NOT used in the
           managed element to convert local time zone.

           The managed element may include time zone name in measurement or
           fault data.";
      }

      leaf timezone-utc-offset {
        type int16 {
          range "-720 .. 840";
        }
        units "minutes";
        default 0;
        description
          "The number of minutes to add to UTC time to
          identify the time zone for this system.  For example,
          'UTC - 8:00 hours' would be represented as '-480'.";
      }
    }

    leaf re-call-home-no-ssh-timer {
      type uint16;
      units seconds;
      default 60;
      description
        "A common timer used by the O-RAN equipment to trigger the repeated call
        home procedure to all identified call home servers to which the O-RAN
        equipment has not already an established NETCONF connection.

        Irrespective of the name of the leaf, the timer applies equally to
        call home procedures using NETCONF/SSH and those using NETCONF/TLS.

        A value of 0 means that the O-RAN equipment shall disable operation
        of the timer triggered NETCONF call home procedure.";
    }

    leaf max-call-home-attempts {

      type uint8 {
        range "0 .. 20";
      }

      description
        "Maximum number of times for a O-RU to reattempt call home (repeat Call Home procedures) to each O-RU controller.
        Please refer to M-plane clause 6.3 and 14.1.1 for detailed information.
        Note: If this parameter is set with value zero
        O-RU shall not repeat Call Home procedure to any O-RU controller";
    }

  }

// Top level container

  container operational-info{
    description
      "a collection of operational information for the O-RU";
    uses operational-group;

  }

// RPCs

  rpc reset {
    nacm:default-deny-all;
    description
      "Management plane triggered restart of the radio unit.
       A server SHOULD send an rpc reply to the client before
       restarting the system.";

  }

  rpc restart-call-home {
    if-feature "or-feat:CALL-HOME-REACTIVATION-SUPPORTED";
    description
      "This RPC allows any active 'call home O-RU Controller' having necessary permissions to
      instruct O-RU to re-activate call home procedures. By acknowledging this RPC the O-RU
      shall start call home towards all known 'call home O-RU Controllers' who do not have
      active M-Plane session at the moment.
      This RPC should not be rejected nor NACKed by the O-RU that supports feature
      CALL-HOME-REACTIVATION-SUPPORTED";
  }

  rpc emergency-wake-up {
    if-feature "or-feat:TRX-CONTROL or or-feat:ADVANCED-SLEEP-MODE";
    description
      "M-Plane triggered abort of current sleep mode.
      A server shall send a notification to the client after wake-up completion.";

    input {
      leaf-list sro-id {
        if-feature or-feat:SHARED-ORU-MULTI-OPERATOR;
        type leafref {
          path "/or-user:users/or-user:user/or-user:sro-id";
        }
        description
          "An optional shared resource operator identity.
          When present, the wake-up operation is applicable to the resources of each sro-id in the list.
          When absent, the wake-up operation is applicable to the whole O-RU.";
      }
    }
    output {
      list operational-status {
        key index;

        leaf index {
          type uint8;
          description
            "Index to the list.";
        }

        leaf sro-id {
          if-feature or-feat:SHARED-ORU-MULTI-OPERATOR;
          type leafref {
            path "/or-user:users/or-user:user/or-user:sro-id";
          }
          description
            "An optional shared resource operator identity.";
        }

        leaf status {
          type enumeration {
            enum STARTED {
              description
                "Wake-up operation has been started without error.";
            }
            enum FAILED {
              description
                "Wake-up operation cannot be started because of error.";
            }
          }
          description
            "Status of the emergency-wake-up operation.
            When ../sro-id is present, this leaf refers to the status of emergency-wake-up operation for corresponding sro-id's resources.
            When ../sro-id is absent, this leaf refers to the status of emergency-wake-up operation for the whole O-RU.";
        }

        description
          "List of emergency-wake-up operational status";
      }
    }
  }

 rpc deep-hibernate {
    if-feature "or-feat:DEEP-HIBERNATE";
    description
      "M-Plane triggered deep-hibernate sleep mode.";

    input {
      leaf hibernate-time {
        type uint32;
        units minutes;
        mandatory true;
        description
          "Time duration for which the O-RU shall be in deep-hibernation.
          An O-RU shall reject any deep-hibernate RPC where the hibernate-time duration
          exceeds the value of max-hibernate-time-duration advertised by the O-RU.";
      }
    }

    output {
        leaf status {
          type enumeration {
            enum STARTED {
              description
                "Deep-hibernate mode activation has been started without error.";
            }
            enum FAILED {
              description
                "Deep-hibernate mode activation cannot be started because of error.";
            }
          }
          description
            "Status of the deep-hibernate operation.";
        }
        leaf error-message {
          when "../status = 'FAILED'";
          type string;
          description
            "Detailed error Message when the status is FAILED.";
            }
      }
    }

  notification emergency-wake-up-complete {
    if-feature "or-feat:TRX-CONTROL or or-feat:ADVANCED-SLEEP-MODE";
    description
      "M-Plane notification event to notify the completion of emergency wake-up operation.";

    leaf sro-id {
      if-feature or-feat:SHARED-ORU-MULTI-OPERATOR;
      type leafref {
        path "/or-user:users/or-user:user/or-user:sro-id";
      }
      description
        "An optional shared resource operator identity.
          When present, the notification is applicable for a particular sro-id.
          When absent, the notification is applicable for the whole O-RU.";
    }
  }

  notification deep-hibernate-activated {
    if-feature "or-feat:DEEP-HIBERNATE";
    description
      "M-Plane notification event to notify the activation of deep-hibernate sleep mode in O-RU.";
      leaf hibernate-time {
        type uint32;
        units minutes;
        mandatory true;
        description
          "Time duration for which the O-RU shall be in deep-hibernation.";
      }
  }
}

## File: Common Models/System/o-ran-fan.yang

module o-ran-fan {
  yang-version 1.1;
  namespace "urn:o-ran:fan:1.0";
  prefix "o-ran-fan";

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the state of the O-RAN equipment's fans.

    Copyright 2019 the O-RAN Alliance.

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

  revision "2021-12-01" {
    description
      "version 1.2.0

      1) typographical corrections.";

    reference "ORAN-WG4.M.0-v01.00";
  }

  revision "2019-07-03" {
    description
      "version 1.1.0

      1) backward compatible changes to introduce groupings.";

    reference "ORAN-WG4.M.0-v01.00";
  }

  revision "2019-02-04" {
    description
      "version 1.0.0

      1) imported model from xRAN
      2) changed namespace and reference from xran to o-ran";

    reference "ORAN-WG4.M.0-v01.00";
  }

  typedef percent {
   type uint16 {
     range "0 .. 100";
   }
   description "Percentage";
  }

  grouping fan-grouping {
    description "a fan grouping";
    list fan-state {
      key name;
      description "a list of the fans based on their unique names";
      leaf name {
        type string {
          length "1..255";
        }
        description
          "A name that is unique that identifies a fan instance.
          This name may be used in fault management to refer to a fault source
          or affected object";
      }
      leaf fan-location {
        type uint8;
        description "A number indicating the location of the FAN in the fan tray";
      }
      leaf present-and-operating {
        type boolean;
        mandatory true;
        description
          "Indicates if a fan is present and operating in the location";
      }
      leaf vendor-code {
        when "../present-and-operating = 'true'";
        type uint8 {
          range "0..7";
        }
        description
          "Indicates fan vendor code. Fan vendors are detected with ID pins
          using 3 bits digital inputs.

          Optional node included when the NETCONF Server has determined
          the fan vendor code.";
      }
      leaf fan-speed {
        when "../present-and-operating = 'true'";
        type percent;
        description
          "Measured fan speed. Expressed as percentage of max fan speed.

          Optional node included when the fan speed can be measured.";
      }
      leaf target-speed {
        when "../present-and-operating = 'true'";
        type uint16;
        units rpm;
        description "the target speed of the fan";
      }
    }
  }

  container fan-tray {
    config false;
    description "top-level tree covering off operational state of the fans";

    uses fan-grouping;
  }
}

## File: Common Models/System/o-ran-wg4-features.yang

module o-ran-wg4-features {
  yang-version 1.1;
  namespace "urn:o-ran:wg4feat:1.0";
  prefix "o-ran-feat";

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the set of re-usable type definitions for WG4 specific
    features.

    Copyright 2024 the O-RAN Alliance.

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

  revision 2024-12-23 {
    description
      "version 17.0.0
      new features:

      1) SECURITY-LOGGING
      2) ORU-CONTROL-SINR-TIME-RESOLUTION
      3) DYNAMIC-SINR-PER-PRB";

    reference "ORAN-WG4.M.0-v17.00";
  }

  revision "2024-08-12" {
    description
      "version 16.0.0
      new features:

      1) PRG-SIZE-SUPP-SE-21-WITH-ST6
      2) PRG-SIZE-SUPP-SE-21-WITH-ST5
      3) USER-GROUP-OPTIMIZATION
      4) BF-DELAY-PROFILE
      5) DMRS-BF-EQ
      6) DMRS-BF-NEQ
      7) RRM-MEAS-REPORTING
      8) USER-GROUP-SELF-ASSEMBLY
      9) UEID-PERSISTENCE
      10) CONTINUITY-BLOCK-SIZE
      11) SELECTED-BF-METHOD-CONFIGURATION
      12) DMRS-BF-NEQ-UNALTERED-FREQ-OFFSET
      13) DMRS-BF-NEQ-UNALTERED-TAE
      14) SE10-MEMBER-CANDIDATE-LIST
      15) MACSEC-BYPASS-POLICY
      16) SE27-ODU-CONTROLLED-DIMENSIONALITY-REDUCTION
      17) SE20-MULTI-SD-PUNC-PATTERN-SUPPORT
      18) CONFIGURABLE-VSWR-THRESHOLDS
      19) CLIENT-AUTH-SSH-PUBLIC-KEY
      20) POINT-A-OFFSET-TO-ABSOLUTE-FREQUENCY-CENTER";

    reference "ORAN-WG4.M.0-v16.00";
  }

  revision "2024-04-15" {
    description
      "version 15.0.0
      new features:

      1) PRG-SIZE-SUPP-SE-21-WITH-ST6
      2) PRG-SIZE-SUPP-SE-21-WITH-ST5
      3) BF-DELAY-PROFILE
      4) USER-GROUP-OPTIMIZATION
      5) MULTIPLE-BEAMID-TABLES-SUPPORTED
      6) PER-PORT-PTP-CONFIG
      7) PER-PORT-SYNCE-CONFIG
      8) MPLANE-TRX-CONTROL
      9) PER-INT-TCP-MSS
      10) DEEP-HIBERNATE";

    reference "ORAN-WG4.M.0-v15.00";
  }

  revision "2023-12-11" {
    description
      "version 14.0.0
      new features:

      1) SE23-PRB-BLOCK-MODE-SUPPORT
      2) MPLANE-DATA-LAYER-CONTROL
      3) SHARED-CELL-STATS";

    reference "ORAN-WG4.M.0-v14.00";
  }

  revision "2023-08-14" {
    description
      "version 13.0.0
      new features:

      1) CALL-HOME-REACTIVATION-SUPPORTED
      2) SEQ-ID-CHECKING-CONFIGURABLE
      3) TRX-CONTROL
      4) ADVANCED-SLEEP-MODE";

    reference "ORAN-WG4.M.0-v13.00";
  }

  revision "2023-04-10" {
    description
      "version 12.0.0
      new features:

      1) EXTENDED-PRACH-CONFIGURATION
      2) NON-SCHEDULED-UEID
      3) SE11-WITH-CONTINUITY-BIT-SUPPORT
      4) UPLANE-MESSAGE-PROCESSING-LIMITS";

    reference "ORAN-WG4.M.0-v12.00";
  }

  revision "2022-12-05" {
    description
      "version 11.0.0
      new features:

      1) UPLANE-ONLY-DL-MODE
      2) SUPERVISION-WITH-SESSION-ID
      3) INTEGRITY-CHECK-AT-SW-DOWNLOAD
      4) ST4-SLOT-CONFIG-MSG-SUPPORT";

    reference "ORAN-WG4.M.0-v11.00";
  }

  revision "2022-08-15" {
    description
      "version 10.0.0
      new features:
      1) SHARED-ORU-MULTI-ODU
      2) SHARED-ORU-MULTI-OPERATOR";
    reference "ORAN-WG4.M.0-v10.00";
  }

  revision "2021-12-01" {
    description
      "version 8.0.0
      new features:
      1) Typographical corrections in descriptions
      2) Add new features:
         BEAM-UPDATE-CONTENTION-CONTROL
         MULTIPLE-SCS-IN-EAXC
         ENHANCED-T-COMBINE
         CHANNEL-INFORMATION-COMPRESSION
         CHANNEL-INFORMATION-PRB-GROUP
         MULTIPLE-TRANSPORT-SESSION-TYPE";
    reference "ORAN-WG4.M.0-v08.00";
  }

  revision "2021-07-26" {
    description
      "version 7.0.0

      new features:
      1) EXT-ANT-DELAY-CONTRO
      2) CPLANE-MESSAGE-PROCESSING-LIMITS";

    reference "ORAN-WG4.M.0-v07.00";
  }

  revision "2021-03-22" {
    description
      "version 6.0.0

      1) Features added to handle updated transmission window control:
      STATIC-TRANSMISSION-WINDOW-CONTROL
      DYNAMIC-TRANSMISSION-WINDOW-CONTROL
      UNIFORMLY-DISTRIBUTED-TRANSMISSION
      ORDERED-TRANSMISSION
      INDEPENDENT-TRANSMISSION-WINDOW-CONTROL
      ";

    reference "ORAN-WG4.M.0-v06.00";
  }

  revision "2020-12-10" {
    description
      "version 5.0.0

      1) initial version.";

    reference "ORAN-WG4.M.0-v05.00";
  }

  feature NON-PERSISTENT-MPLANE {
    description
      "Indicates that the Radio Unit supports the optional
      capability to improve the operation with a SMO using a non-
      persistent NETCONF session.";
  }

  feature STATIC-TRANSMISSION-WINDOW-CONTROL {
    description
      "O-RU supports U-plane transmission window control (scheduled transmission
       and optionally uniformly distributed transmission) configuration over M-plane";
  }

  feature DYNAMIC-TRANSMISSION-WINDOW-CONTROL {
    description
      "O-RU supports U-plane transmission window control (scheduled transmission
       and optionally uniformly distributed transmission) configuration over C-plane";
  }

  feature UNIFORMLY-DISTRIBUTED-TRANSMISSION {
    if-feature "STATIC-TRANSMISSION-WINDOW-CONTROL or DYNAMIC-TRANSMISSION-WINDOW-CONTROL";
    description
      "O-RU supports transmission of UL U-plane messages distributed uniformly over transmission window.";
  }

  feature ORDERED-TRANSMISSION {
    description
      "O-RU supports ordered transmission";
  }

  feature INDEPENDENT-TRANSMISSION-WINDOW-CONTROL {
    if-feature "STATIC-TRANSMISSION-WINDOW-CONTROL or DYNAMIC-TRANSMISSION-WINDOW-CONTROL";
    description
      "O-RU supports independent U-plane transmission window per endpoint.

       If this feature is not supported then for all endpoints with transmission control enabled
       (see u-plane-transmission-control/transmission-window-control) must be configured for transmission
       window offsets and window sizes that coincide for each symbol.

       If INDEPENDENT-TRANSMISSION-WINDOW-CONTROL feature is not supported then all endpoints with
       transmission control enabled that handle the same carrier type and SCS must be configured
       (via M-plane or C-plane) with parameter values resulting in transmission windows that coincide
       between the endpoints. That is, for every symbol N, the effective transmission window for symbol N
       must be shared (start at the same time and end at the same time) by all the endpoints handling
       same carrier type and SCS. This restriction applies only to endpoints that have transmission
       control enabled.

       If INDEPENDENT-TRANSMISSION-WINDOW-CONTROL feature is supported then restriction described
       above does not apply and a different transmission window (window offset and window size)
       can be used for every endpoint capable of transmission window control.";
  }

  feature EXT-ANT-DELAY-CONTROL {
    description
      "This feature indicates that the O-RU supports external antenna delay control";
  }

  feature CPLANE-MESSAGE-PROCESSING-LIMITS {
    description
      "Feature to indicate O-RU limitation of C-Plane message processing. Refer CUS-Plane specification
      section 'O-RU C-Plane message limits' for more details on this feature.";
  }

  feature CHANNEL-INFORMATION-COMPRESSION {
    description
      "This feature indicates that the O-RU supports channel information compression.";
  }

  feature CHANNEL-INFORMATION-PRB-GROUP {
    description
      "Feature to indicate O-RU supports receiving and processing channel
       information (e.g., ST6) with PRB group size greater than one PRB";
  }

  feature BEAM-UPDATE-CONTENTION-CONTROL {
    description
      "Feature to indicate O-RU requirements for beam weight update for a given beamId, to avoid beam update contentions.
      Refer CUS-Plane specification section 'Weight-based dynamic beamforming' for more details on this feature.";
  }

  feature MULTIPLE-SCS-IN-EAXC {
    description
      "Presence of feature indicates that FHM supports combining for multiple SCS
      or multiple c-plane-types/frameStructure in a single eAxC-id in UL direction.";
  }

  feature MULTIPLE-TRANSPORT-SESSION-TYPE {
    description
      "Feature to indicate O-RU supports to be configured with multiple transport-session-type
      (Ethernet, ALIASMAC, UDP/IP)";
  }

  feature ENHANCED-T-COMBINE {
      description
      "Presence of feature indicates that FHM/Cascade O-RU can support t-combine-net and tx-duration";
  }

  feature SHARED-ORU-MULTI-OPERATOR {
    description
      "Feature to indicate the O-RU supports shared operation with one or more shared
      resource operators (i.e., multiple MNOs) and implements enhanced NACM privileges per shared
      resource operator.

      Note, there is no linkage or dependency between the SHARED-CELL feature and the SHARED-ORU feature.";
  }

  feature SHARED-ORU-MULTI-ODU {
    description
      "Feature to indicate the O-RU supports independent supervision qualified based on odu-id, where
      loss of supervision triggers selective carrier deactivation of carriers associated with odu-id.";
  }

  feature INTEGRITY-CHECK-AT-SW-DOWNLOAD {
   description "Feature indicates that radio unit support performing integrity check at software download";
  }

   feature SUPERVISION-WITH-SESSION-ID {
    description
      "O-RUs supporting this feature reuse the session-id generated for each NETCONF
      session in supervision-notification. The session-id is defined in RFC 6241.
      For these O-RUs, the O-RU controller participating in the NETCONF supervision
      procedure can subscribe to supervision-notification notification events,
      filtering for the supervision-notification/session-id matching
      session-id in the Hello Message received from NETCONF Server earlier.";
  }

  feature UPLANE-ONLY-DL-MODE {
    description
      "Presence of feature indicates that O-RU supports U-Plane-only DL mode.";
  }

  feature ST4-SLOT-CONFIG-MSG-SUPPORT {
    description
    "Feature to indicate O-RU support for Section Type 4 slot configuration message";
  }
  feature NON-SCHEDULED-UEID {
    description
    "Feature to indicate that O-RU supports 'non-scheduled-ueid' to indicate the ports in the section which are not scheduled for a given eAxcid";
  }

  feature EXTENDED-PRACH-CONFIGURATION {
    description
      "Presence of the feature indicates that O-RU supports extended number of PRACH patterns and occasions
      provided by means of static PRACH.";
  }

  feature SE11-WITH-CONTINUITY-BIT-SUPPORT {
    description
    "Feature to indicate O-RU support for handling 'continuity' bit information in Section Extension 11";
  }

  feature UPLANE-MESSAGE-PROCESSING-LIMITS {
    description
    "Feature to indicate O-RU limitation of U-Plane message processing. Refer M-Plane specification
    clause 15.10 for more details on this feature.";
  }

  feature CALL-HOME-REACTIVATION-SUPPORTED {
    description
    "Presence of the feature indicates that O-RU supports re-activation of timed out call home flows.";
  }

  feature SEQ-ID-CHECKING-CONFIGURABLE {
    description
    "Feature to indicate O-RU supports configuration of sequence number checking functionality.";
  }

  feature TRX-CONTROL {
    description
    "Feature to indicate O-RU support for handling RF channel reconfiguration by TRX Control.";
  }

  feature ADVANCED-SLEEP-MODE {
    description
    "Feature to indicate O-RU support for handling Advanced Sleep Modes.";
  }

  feature SE23-PRB-BLOCK-MODE-SUPPORT {
    description
    "Presence of the feature indicates that O-RU supports PRB-BLOCK mode of SE-23 as defined in CUS-Plane
    specification Clause 7.7.23.1.";
  }

  feature MPLANE-DATA-LAYER-CONTROL {
    description
    "Feature to indicate O-RU support for M-Plane based data layer control energy saving feature.";
  }

  feature SHARED-CELL-STATS {
    description
    "Feature to indicate FHM/Cascade O-RU support for shared-cell-stats.";
  }

  feature PER-PORT-PTP-CONFIG {
    description
      "This feature indicates that the equipment supports per-port PTP configuration functionality";
  }

  feature PER-PORT-SYNCE-CONFIG {
    description
      "This feature indicates that the equipment supports per-port SYNCE configuration functionality";
  }

  feature PER-INT-TCP-MSS {
    description
      "This feature indicates that the RU supports a per-interfacece MSS
      configuration for TCP.";
  }

  feature MULTIPLE-BEAMID-TABLES-SUPPORTED {
    description
    "Feature to indicate O-RU support for multiple beamId tables.";
  }

  feature MPLANE-TRX-CONTROL {
    description
    "Feature to indicate O-RU support for M-plane based TRX control for Network Energy Saving.";
  }

  feature DEEP-HIBERNATE {
    description
      "Feature to indicate O-RU support for M-Plane based deep-hibernate energy saving feature.";
  }

  feature PRG-SIZE-SUPP-SE-21-WITH-ST6 {
    description
    "Feature to indicate O-RU support for receiving prgSize information when Section Extension 21 is
    sent with Section Type 6.";
  }

  feature PRG-SIZE-SUPP-SE-21-WITH-ST5 {
    description
    "Feature to indicate O-RU support for receiving prgSize information when Section Extension 21 is
    sent with Section Type 5.";
  }

  feature USER-GROUP-OPTIMIZATION {
    description
      "Feature to indicate O-DU requirement to send all layers for a given user group i.e., UEs with same
      time-frequency allocation using single C-Plane section description.";
  }

  feature BF-DELAY-PROFILE {
    description
    "Feature to indicate O-RU support for beamforming list and delay profiles(s) per endpoint.";
  }

  feature DMRS-BF-EQ {
    description
    "DMRS beamforming with equalization supported. See CUS-plane clause 12.6";
  }

  feature DMRS-BF-NEQ {
    description
    "DMRS beamforming without equalization supported. See CUS-plane clause 12.6";
  }

  feature RRM-MEAS-REPORTING {
    description
    "Reporting of RRM measurmenets supported. See CUS-plane clause 12.6.1.6";
  }

  feature USER-GROUP-SELF-ASSEMBLY {
    description
    "Feature to indicate user group self assembly. See CUS-Plane clause 7.7.24.7.";
  }

  feature UEID-PERSISTENCE {
    description
    "Feature to indicate if ueId persistance over multiple slots is supported. See CUS-Plane clause 7.7.24.10.";
  }

  feature CONTINUITY-BLOCK-SIZE {
    description
    "The O-RUs capability for reporting one or more values of continuity block sizes. See CUS-plane clause 12.6.1.2.1";
  }

  feature SELECTED-BF-METHOD-CONFIGURATION {
    description
    "Feature to indicate O-RU support for configuration of a subset of beamforming methods from an
    endpoint-bf-profile-group that shall be used by a specific endpoint.";
  }

  feature DMRS-BF-NEQ-UNALTERED-FREQ-OFFSET  {
    description
    "Feature to indicate that DMRS-BF-NEQ beamforming performed by the O-RU does not change frequency offset,
    hence it can be measured by the O-DU.";
  }

  feature DMRS-BF-NEQ-UNALTERED-TAE {
    description
    "Feature to indicate that DMRS-BF-NEQ beamforming performed by the O-RU does not change TAE,
    hence TAE can be measured by the O-DU. Refer CUS specification clause 9.2.2.1 for details.";
  }

  feature SE10-MEMBER-CANDIDATE-LIST {
    description
    "Reporting of member-list of endpoints for SE-10 supporting endpoint. See CUS-plane clause 7.7.10.1";
  }

  feature MACSEC-BYPASS-POLICY {
    description
      "O-RU supports MACsec bypass policy";
  }

  feature SE27-ODU-CONTROLLED-DIMENSIONALITY-REDUCTION {
    description
    "Presence of the feature indicates that O-RU supports O-DU controlled dimensionality reduction using SE27 as defined in CUS-Plane
    specification Clause 7.7.27.";
  }

  feature SE20-MULTI-SD-PUNC-PATTERN-SUPPORT {
    description
    "Feature to indicate O-RU support for handling multiple section description puncturing pattern in
    Section Extension 20 per endpoint.";
  }

  feature CONFIGURABLE-VSWR-THRESHOLDS {
    description
    "Feature to indicate O-RU support for configurable VSWR thresholds.";
  }

  feature CLIENT-AUTH-SSH-PUBLIC-KEY {
    description
    "O-RU supports an optional feature to authenticate SSH client via SSHPUBLICKEY method.";
  }

  feature POINT-A-OFFSET-TO-ABSOLUTE-FREQUENCY-CENTER {
    description
    "Feature to indicate if leaf rx-array-carriers/point-a-offset-to-absolute-frequency-center is supported. See CUS-Plane clause 7.7.24.1.";
  }

  feature SECURITY-LOGGING {
    description
    "Feature to indicate O-RU supports O-RAN defined security logging.";
  }

  feature ORU-CONTROL-SINR-TIME-RESOLUTION {
    description
    "Feature to indicate O-RU supports O-RU controlled time resolution for SINR reporting";
  }

  feature DYNAMIC-SINR-PER-PRB {
    description
    "Feature to indicate O-RU supports O-DU controlled frequency resolution for SINR reporting.";
  }
}

## File: Common Models/System/o-ran-ves-subscribed-notifications.yang

module o-ran-ves-subscribed-notifications {
  yang-version 1.1;
  namespace "urn:o-ran:ves-sn:1.0";
  prefix o-ran-vsn;

  import ietf-subscribed-notifications {
    prefix sn;
  }
  import ietf-inet-types {
    prefix inet;
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines augmentations to ietf-subscribed-notifications to
    enable support of configured notifications sent using VNF Event Stream
    notifications.

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

  revision "2020-12-10" {
    description
      "version 5.0.0

      1) initial version";

    reference "ORAN-WG4.M.0-v05.00";
  }

  // identity statements
  identity o-ran-ves-connectionless {
    base sn:transport;
    description
      "A transport type used to indicate that notifications should be sent using an
      ONAP VES Notification using RESTful connectionless transport";
  }

  grouping event-collector {
    description
      "Provides a reusable description of an event-collector.";
    leaf notification-recipient {
      type inet:uri;
      mandatory true;
      description
        "This URI specifies the address of the notification receiver
        HTTPS endpoint. Additional path elements may be added as required by the
        protocol, i. e. it configures the server root.
        E.g. https://myserver.mydomain.com:8443/notifications.";
    }
  }

  augment "/sn:subscriptions/sn:subscription/sn:receivers/sn:receiver" {
    when "(derived-from-or-self(../../sn:transport, 'o-ran-vsn:o-ran-ves-connectionless'))";
    description
      "This augmentation allows VES-specific receiver parameters to be
      configured.";
    uses event-collector;
  }
}

## File: Common Models/System/o-ran-supervision.yang

module o-ran-supervision {
  yang-version 1.1;
  namespace "urn:o-ran:supervision:1.0";
  prefix "o-ran-supervision";

  import ietf-yang-types {
    prefix yang;
  }

  import o-ran-wg4-features {
    prefix or-feat;
  }

  import ietf-inet-types {
    prefix "inet";
  }
  import ietf-netconf-monitoring {
    prefix ncm;
  }

  import o-ran-usermgmt {
    prefix "or-user";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the configuration data and supervision RPCs that are
    used to detect loss M-Plane connectivity.

    Copyright 2021 the O-RAN Alliance.

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

  revision "2022-12-05" {
    description
      "version 11.0.0

      1) NETCONF session supervison with session id";

    reference "ORAN-WG4.M.0-v11.00";
  }

  revision "2022-08-15" {
    description
      "version 10.0.0

      1) introduced SHARED-ORU-MULTI-ODU and SHARED-ORU-MULTI-OPERATOR features.";

    reference "ORAN-WG4.M.0-v10.00";
  }

  revision "2021-12-01" {
    description
      "version 5.2.0

      1) typographical corrections in descriptions.";

    reference "ORAN-WG4.M.0-v05.00";
  }

  revision "2021-03-22" {
    description
      "version 5.1.0

      1) typographical corrections in descriptions.
      2) removed non-ACSII characters.";

    reference "ORAN-WG4.M.0-v05.00";
  }

  revision "2020-12-10" {
    description
      "version 5.0.0

      1) added Event Producer-Collector supervision";

    reference "ORAN-WG4.M.0-v05.00";
  }

  revision "2020-04-17" {
    description
      "version 3.0.0

      1) added output string to enable indication if config modification change has failed
      2) corrected model description
      3) removed erroneous text in notification description";

    reference "ORAN-WG4.M.0-v03.00";
  }

  revision "2019-07-03" {
    description
      "version 2.0.0

      1) added leafs for CU plane monitoring
      2) backward compatible changes to introduce groupings";

    reference "ORAN-WG4.M.0-v01.00";
  }

  revision "2019-02-04" {
    description
      "version 1.0.0

      1) imported model from xRAN
      2) changed namespace and reference from xran to o-ran";

    reference "ORAN-WG4.M.0-v01.00";
  }

  typedef event-collector-id {
    type union {
      type inet:ip-address;
      type inet:uri;
    }
    description "An Event Collector identifier";
  }

  grouping watchdog-input {
    description "a watchdog input grouping";
    leaf supervision-notification-interval {
      type uint16;
      units seconds;
      default 60;
      description
        "The interval in seconds at which supervision notifications are sent.
        If not specified the default value of 60 seconds shall apply.";
    }
    leaf guard-timer-overhead {
      type uint16;
      units seconds;
      default 10;
      description
        "This is overhead added to the supervision timer used to calculate the
         supervision watchdog timer. i.e.,

         supervision timer = notification timer + guard-timer-overhead

         If not specified the default value of 10 seconds shall apply.

         Failure to send this RPC again within the timeout sets the radio into
         'loss of supervision' state.

         NOTE - The supervision timer MUST not be less that the confirmed
         timeout timer (when the feature is supported).

         This type of constraint (using an RPC's input) cannot be formally
         expressed in YANG.";
    }
  }

  grouping watchdog-output {
    description "a watchdog output grouping";
    leaf next-update-at {
      type yang:date-and-time;
      description
        "Indicates the time when the next supervision notification is expected.";
    }

    leaf error-message {
      type string;

      description
        "An optional error message, e.g., used when the RPC input attempts to
        modify a locked running configuration.

        Take note, the supervision-notification-interval and guard-timer-overhead
        have default values and so their values can be modified even when a leaf is
        not included in the RPC input.";
    }
  }

  grouping supervision-notification-data {
    description "a supervision notification data grouping";
    leaf session-id {
      if-feature or-feat:SUPERVISION-WITH-SESSION-ID;
      type leafref {
        path "/ncm:netconf-state/ncm:sessions/ncm:session/ncm:session-id";
      }
      mandatory true;
      description
        "This value uniquely identifies the NETCONF session in an O-RU. The value is conveyed to NETCONF client in hello message.
        the session-id for the netconf session is sent as part of each supervision-notification notification.
        and may be used for create-subscription to filter the relevant
        notifications";
    }
  }

  grouping supervision-group {
    description "a supervision grouping";
    container cu-plane-monitoring {
      presence
        "Indicates O-RU supports timer based cu-plane monitoring interval. If
        this container is NOT present, the operation of the O-RU is undefined.";
      description "container describing operation of CU plane monitoring";

      leaf configured-cu-monitoring-interval {
        type uint8 {
          range "0..160";
        }
        units milliseconds;
        default 160;
        description
          "This value corresponds to the configured value of the timer used by
          the O-RU to monitor the C/U plane connection.

          A value of 0 means that the O-RU's shall disable its CU plane
          monitoring.

          A NETCONF client should configure the value according to the
          configuration of the PHY layer and/or C/U plane section types
          supported and/or any fault tolerant operation. For example,

          i) when operating with an O-DU supporting non-LAA LTE, this value can
          be configured to a value according to the repetition time of
          transmitted reference symbols across the fronthaul interface
          ii) when operating with an O-DU supporting C-Plane Section Type 0,
          this value can configured to a value according to the minimum
          repetition interval of section type 0.
          iii) when operating with an O-DU supporting fault tolerant operation,
          this value can be configured according to the fault tolerant heartbeat
          interval ";
      }
    }
    container event-collector-monitoring {
      if-feature "or-feat:NON-PERSISTENT-MPLANE";
      description "container describing operation of Event Collector monitoring";

      leaf heartbeat-interval {
        type uint8;
        units seconds;
        default 60;
        description "the heartbeat interval";
      }

      leaf-list heartbeat-recipient-id {
        type event-collector-id;
        description
          "A configured Event collector identity, to which the O-RU shall send heartbeat notifications";
      }
    }
    container per-odu-monitoring {
      if-feature "or-feat:SHARED-ORU-MULTI-ODU or or-feat:SHARED-ORU-MULTI-OPERATOR";
      presence
      "Indicates at least one of the O-RU Controllers intends to operate per O-DU supervision.";
      description "container describing per-odu monitoring parameters";

      list odu-ids {
        if-feature or-feat:SHARED-ORU-MULTI-ODU;
        key odu-id;
        description
          "an optional list of o-du identities that an O-RU controller intends to use with per
          O-DU supervision in a single operator envrionment. The odu-id values are used to match
          values received in the supervision-watchdog-reset rpc together with values configured in
          o-ran-uplane-conf based configuration.
          The O-RU does not further interpret the specific value of odu-id.";
        leaf odu-id {
          type string;
          description "an o-du identity ";
        }
      }

      list sro-ids-and-odu-ids {
        if-feature "or-feat:SHARED-ORU-MULTI-ODU and or-feat:SHARED-ORU-MULTI-OPERATOR";
        key "odu-id sro-id";
        description
          "an optional list of sro and o-du identities that an O-RU controller intends to use with per
          O-DU supervision in a multi-operator envrionment. The sro-id and odu-id values are used to match
          values received in the supervision-watchdog-reset rpc together with values configured in
          o-ran-uplane-conf based configuration.
          The O-RU does not further interpret the specific value of sro-id or odu-id.";
        leaf odu-id {
          type string;
          description "an o-du identity ";
        }
        leaf sro-id {
          type string;
          description "an sro identity ";
        }
      }
    }
  }

  container supervision {
    description "top leval supervision container";
    uses supervision-group;
    // other WG specific monitoring containers follow here
  }

  rpc supervision-watchdog-reset {
    description
      "rpc to reset the watchdog timer";
    input {
      uses watchdog-input;

      container context {
        if-feature "or-feat:SHARED-ORU-MULTI-ODU or or-feat:SHARED-ORU-MULTI-OPERATOR";
        description
          "an optional container that defines the context associated with the
          watchdog reset. Context can be used in supervision operations with
          multiple O-DUs";

        leaf odu-id {
          if-feature or-feat:SHARED-ORU-MULTI-ODU;
          type string;
          description
            "an optional o-du identity associated with this
            supervision watchdog operation. If an odu-id received is not configured
            in the list of tx-array-carriers or list of rx-array carriers, this leaf is ignored.
            When it does correspond to an odu-id listed in tx-array-carriers and/or
            rx-array-carriers, the odu-id is used in the operatrion of per O-DU supervision.";
        }

        leaf sro-id {
          if-feature or-feat:SHARED-ORU-MULTI-OPERATOR;
          type leafref {
            path "/or-user:users/or-user:user/or-user:sro-id";
          }
          description
            "The shared resource identity associated with the current NETCONF session.
            A supervision-watchdog-reset RPC received from  NETCONF client
            with user-group privileges of 'carrier' MUST be rejected
            if it is received without a sro-id leaf.
            In other scenarios, this leaf is optional and ignored by the O-RU.";
        }
      }
    }

    output {
      uses watchdog-output;
    }
  }

  notification supervision-notification {
    description
      "Notification to indicate that NETCONF management interface is up.";
      uses supervision-notification-data;

  }
}

## File: Common Models/System/o-ran-fm.yang

module o-ran-fm {
  yang-version 1.1;
  namespace "urn:o-ran:fm:1.0";
  prefix "o-ran-fm";

  import ietf-yang-types {
    prefix yang;
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines alarm reporting mechanism.

    Copyright 2024 the O-RAN Alliance.

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

  revision "2024-08-12" {
    description
      "version 15.1.0

      1) change external alarm source info to external fault source.";

    reference "ORAN-WG4.M.0-v15.00";
  }

  revision "2024-04-15" {
    description
      "version 15.0.0

      1) added new fault-name leaf.
      2) remove import by revision date for ietf-yang-types.";

    reference "ORAN-WG4.M.0-v15.00";
  }

  revision "2022-08-15" {
    description
      "version 10.0.0

      1) removed min-elements 1 from affected-objects list
      2) added identifier to affected-objects list
      3) added new additional-information list";

    reference "ORAN-WG4.M.0-v10.00";
  }

  revision "2022-04-18" {
    description
      "version 9.0.0

      1) added feature HISTORICAL-ALARM-LIST
      2) added corresponding  historical-alarm-list container";

    reference "ORAN-WG4.M.0-v09.00";
  }

  revision "2021-12-01" {
    description
      "version 8.0.0

      1) typographical corrections in descriptions.
      2) add new leafs probable-cause, specific-problem, proposed-repair-actions
         and alarm-type";

    reference "ORAN-WG4.M.0-v08.00";
  }

  revision "2021-03-22" {
    description
      "version 1.1.0

      1) typographical corrections in descriptions.";

    reference "ORAN-WG4.M.0-v01.00";
  }

  revision "2019-02-04" {
    description
      "version 1.0.0

      1) imported model from xRAN
      2) changed namespace and reference from xran to o-ran";

    reference "ORAN-WG4.M.0-v01.00";
  }

  feature HISTORICAL-ALARM-LIST {
    description
      "O-RU supports Historical Alarm List to keep a historical
       record of alarms events over M-plane.";
  }

  grouping alarm {
    description
      "Grouping which can uniquely identify alarm";

    leaf fault-id {
      type uint16;
      mandatory true;

      description
        "Fault specific Id that identifies the fault.";
    }

    leaf fault-source {
      type string {
        length "1..255";
      }
      mandatory true;

      description
        "Represents the Object or source that is suspected to be faulty.
        If the fault source is external and can not be represented by an object in the model, external fault source info should be set as the value.
        If the fault source can be represented by an object in the model, the YANG instance-identifier should be set as the value";
    }

    list affected-objects {

      leaf name {
        type string {
          length "1..255";
        }

       mandatory true;
        description
          "Represents the Object or source that is suspected to be affected by this fault.";
      }

      leaf identifier {
        type yang:xpath1.0;
        description "An optional parameter used to indicate a YANG instance-identifier for the affected
        object. Used when the object or source is represented in the object model.";
      }

      max-elements 100;

      description
        "List of affected-objects";
    }

    leaf fault-severity {
      type enumeration {
        enum CRITICAL {
          description
            "Critical alarm means that this device is not able to perform any further service";
        }
        enum MAJOR {
          description
            "Major alarm appeared on the device";
        }
        enum MINOR {
          description
            "Minor alarm appeared on the device";
        }
        enum WARNING {
          description
            "Warning is being reported by the device";
        }
      }
      mandatory true;

      description
        "Fault severity defines the severity level of the fault. A notification, whose fault severity has the value 'warning',
        is a special type of alarm notification. For these alarm notifications,
        the Master Agent does not expect to receive a clear alarm notification.";
    }

    leaf is-cleared {
      type boolean;
      mandatory true;

      description
        "Fault state determines the type of the event. Not used if faultSeverity is WARNING.";
    }

    leaf fault-text {
      type string {
        length "0..255";
      }

      description
        "Textual description of the fault.";
    }

    leaf probable-cause {
      type string {
        length "0..255";
      }
      description
        "Probable cause of an alarm as defined in ITU-T Rec. X.733.
        It qualifies alarm and provides further information than alarm-type.

        The value of the probable cause strings are not standardized in this YANG model.

        An O-RU shall populate this leaf, if the fault-text string does not indicate
        the probable cause.";
    }

    leaf specific-problem {
      type string {
        length "0..255";
      }
      description
        "An optional leaf providing further qualification on the alarm than probable-cause,
         as defined in ITU-T Recommendation X.733 ";
    }

    leaf proposed-repair-actions {
      type string {
        length "0..255";
      }
      description
        "Optional leaf, used if the cause is known and the O-RU can suggest one or
        more solutions to fix the problem causing the alarm as defined in ITU-T Rec. X. 733";
    }

    leaf event-time {
      type yang:date-and-time;
      mandatory true;

      description
        "Timestamp to indicate the time when the fault is detected/cleared.";
    }

    list additional-information {
         key "identifier";
         description
           "This parameter allows the inclusion of an additional
            information set in the alarm.  It is a series of data
            structures, each of which contains  items of
            information: an identifier,
            and the problem information. Refer to RFC8632.";
         leaf identifier {
           type string;
           description
             "Identifies the data type of the information parameter.";
         }
         leaf information {
           type string;
           description
             "Additional information about the alarm.";
         }
       }

    leaf alarm-type {
      type enumeration {
        enum COMMUNICATIONS-ALARM {
          description
            "See Table 12.2.1.4.4.6-1 in 3GPP 28.532 for description";
        }
        enum PROCESSING-ERROR-ALARM {
          description
            "See Table 12.2.1.4.4.6-1 in 3GPP 28.532 for description";
        }
        enum ENVIRONMENTAL-ALARM {
          description
            "See Table 12.2.1.4.4.6-1 in 3GPP 28.532 for description";
        }
        enum QUALITY-OF-SERVICE-ALARM {
          description
            "See Table 12.2.1.4.4.6-1 in 3GPP 28.532 for description";
        }
        enum EQUIPMENT-ALARM {
          description
            "See Table 12.2.1.4.4.6-1 in 3GPP 28.532 for description";
        }
        enum INTEGRITY-VIOLATION {
          description
            "See Table 12.2.1.4.4.6-1 in 3GPP 28.532 for description";
        }
        enum OPERATIONAL-VIOLATION {
          description
            "See Table 12.2.1.4.4.6-1 in 3GPP 28.532 for description";
        }
        enum PHYSICAL-VIOLATION {
          description
            "See Table 12.2.1.4.4.6-1 in 3GPP 28.532 for description";
        }
        enum SECURITY-SERVICE-OR-MECHANISM-VIOLATION {
          description
            "See Table 12.2.1.4.4.6-1 in 3GPP 28.532 for description";
        }
        enum TIME-DOMAIN-VIOLATION {
          description
            "See Table 12.2.1.4.4.6-1 in 3GPP 28.532 for description";
        }
      }
      description
        "An optional alarm type that can be used with vendor specific alarms.
        See Table 12.2.1.4.4.6-1 in 3GPP 28.532 for definitions.

        WG4 common O-RU alarms have pre-defined alarm types, see Annex A of
        O-RAN.WG4.MP.O";
    }

    leaf fault-name {
      type string {
        length "0..255";
      }

      description
        "Name of the fault.

        The primary use case for this leaf is to provide name of a fault if the fault
        is vendor specific.

        If the leaf is provided for a fault defined in the M-Plane specification,
        then the value of this leaf should be identical with the value defined in the
        column 'Name' of the Table 'Common O-RU Alarms' in the Annex A of the
        M-Plane specification.";
    }
  }

  container active-alarm-list {
    list active-alarms {
      uses alarm;

      description
        "List of currently active alarms";
    }
    config false;

    description
      "List of currently active alarms. An alarm is removed from this table when the state transitions to clear.";
  }

  container historical-alarm-list {
    if-feature HISTORICAL-ALARM-LIST;
    description
      "an optional container to notify the event subscriber of historical alarms information. When the O-RU
       is reset, the alarm entries from historical-alarm-list will be purged. O-RU vendor can make this
       list persistent optionally.";

    list historical-alarms {
      uses alarm;

      config false;
      description
        "List of historical alarm events. This list only captures the alarm events when <is-cleared>=TRUE.";
    }

  }

  notification alarm-notif {
    uses alarm;

    description
      "Notification sent on initial alarm creation, as well as any time the alarm changes state, including clear";
  }
}

## File: Common Models/System/o-ran-hardware.yang

module o-ran-hardware {
  yang-version 1.1;
  namespace "urn:o-ran:hardware:1.0";
  prefix "o-ran-hw";

  import ietf-hardware {
    prefix hw;
  }
  import iana-hardware {
    prefix ianahw;
  }
  import ietf-yang-types {
    prefix yang;
  }
  import o-ran-wg4-features {
    prefix or-feat;
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the YANG definitions for managing the O-RAN hardware.

     Copyright 2024 the O-RAN Alliance.

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

   revision "2024-04-15" {
     description
       "version 15.0.0

       1) Added support for new fan tray component.";

     reference "ORAN-WG4.M.0-v15.00";
   }

  revision "2023-08-14" {
    description
      "version 13.0.0

      1) New connector types for RS485 and external IO";

    reference "ORAN-WG4.M.0-v13.00";
  }

  revision "2022-12-05" {
   description
     "version 10.1.0

     1) Clarifications for Network Energy Saving";

   reference "ORAN-WG4.M.0-v10.00";
  }

  revision "2022-08-15" {
    description
      "version 10.0.0

      1) introduction of O-RU connector functionality.
      2) fixing constraints";

    reference "ORAN-WG4.M.0-v10.00";
  }

  revision "2021-12-01" {
    description
      "version 5.2.0

      1) typographical corrections in descriptions.";

    reference "ORAN-WG4.M.0-v05.00";
  }

  revision "2021-03-22" {
    description
      "version 5.1.0

      1) typographical corrections in descriptions.";

    reference "ORAN-WG4.M.0-v05.00";
  }

  revision "2020-12-10" {
    description
      "version 5.0.0

      1) added date-last-service leaf used in pnfRegistration";

    reference "ORAN-WG4.M.0-v05.00";
  }

  revision "2020-04-17" {
    description
      "version 3.0.0

      1) added new leaf to indicate whether O-RU supports dying gasp
      2) added new identities for PA and FPGA";

    reference "ORAN-WG4.M.0-v03.00";
  }

  revision "2019-07-03" {
    description
      "version 1.1.0

      1) added new identities to accommodate cross working group use of
      o-ran-hardware and associated set of augmentations that are backwards
      compatible to version 1.0.0";

    reference "ORAN-WG4.M.0-v01.00";
  }

  revision "2019-02-04" {
    description
      "version 1.0.0

      1) imported model from xRAN
      2) changed namespace and reference from xran to o-ran";

    reference "ORAN-WG4.M.0-v01.00";
  }

  feature ENERGYSAVING {
    description
      "Indicates that the Radio Unit supports energy saving state.";
  }

  // identity statements
  identity O-RAN-RADIO {
    base ianahw:module;
    description
      "Module used as it represents a self-contained sub-system
      used in /hw:/hardware/hw:component/hw:class to represent
      an O-RAN RU";
  }

  identity O-RAN-HW-COMPONENT {
    base ianahw:module;
    description
      "Module used as it represents a self-contained sub-system
      used in /hw:/hardware/hw:component/hw:class to represent
      any O-RAN hardware component";
  }

  identity O-DU-COMPONENT {
    base O-RAN-HW-COMPONENT;
    description
      "Used in /hw:/hardware/hw:component/hw:class to represent
      any O-RAN defined O-DU hardware component";
  }

  identity O-RAN-FAN-TRAY {
    base O-RAN-HW-COMPONENT;
    description
      "Used in /hw:/hardware/hw:component/hw:class to represent
      any O-RAN defined fan tray hardware component.";
  }

  identity O-RU-COMPONENT {
    base O-RAN-HW-COMPONENT;
    description
      "Used in /hw:/hardware/hw:component/hw:class to represent
      any O-RAN defined O-RU hardware component, including a stand-alone
      O-RU or an O-RU component integrated into a multi-module system.";
  }

  identity O-RU-POWER-AMPLIFIER {
    base O-RU-COMPONENT;
    description
      "Used in /hw:/hardware/hw:component/hw:class to represent
      an O-RU's power amplifier, and may be used for reporting
      measurements on a per class basis";
  }

  identity O-RU-FPGA {
    base O-RU-COMPONENT;
    description
      "Used in /hw:/hardware/hw:component/hw:class to represent
      an FPGA in an O-RU, and may be used for reporting
      measurements on a per class basis";
  }

  identity O-RU-CONNECTOR {
    base ianahw:hardware-class;
    description
      "This identity is applicable if the hardware class is some sort
      of O-RU connector.";
  }

  identity O-RU-ANTENNA-CONNECTOR {
    base O-RU-CONNECTOR;
    description
      "This identity is applicable if the hardware class is some sort
      of connector capable of interfacing between an O-RU and some
      antenna function.";
  }

  identity O-RU-FEEDER {
    base O-RU-ANTENNA-CONNECTOR;
    description
      "This identity is applicable if the hardware class is an
      antenna feeder.";
  }

  identity O-RU-BF-CAL {
    base O-RU-ANTENNA-CONNECTOR;
    description
      "This identity is applicable if the hardware class is for
      beamforming calibration.";
  }

  identity O-RU-RS485 {
    base O-RU-CONNECTOR;
    description
      "This identity is applicable if the hardware class is some sort
      of connector capable of interfacing between an O-RU and Antenna
      Line Devices using RS-485 electrical standard.";
  }

  identity O-RU-EXTIO {
    base O-RU-CONNECTOR;
    description
      "This identity is applicable if the hardware class is some sort
      of connector capable of interfacing between an O-RU external I/O lines.";
  }

  // typedef statements
  typedef energysaving-state {
    type enumeration {
      enum UNKNOWN {
        description
          "The O-RU is unable to report its energy saving state.";
      }
      enum SLEEPING {
        description
          "The O-RU is in energy saving state. In this mode M-Plane connection is active. Depending
          on the O-RU's design - other planes, functions and hardware components which are not needed
          by the O-RU in energy saving state can be disabled or switched off by the O-RU autonomously.";
      }
      enum AWAKE {
        description
          "The O-RU is not in an energy saving state.";
      }
    }
    description
      "New typedef since ietf-hardware only covers power-state
      for redundancy purposes, not to indicate energy saving operations.
      For details please see O-RAN WG4 M-Plane specification, clause 9.1.3 'Modify state'";
  }

  typedef availability-type {
    type enumeration {
      enum UNKNOWN {
        description "The Radio Unit is unable to report its availability state.";
      }
      enum NORMAL {
        description
          "The equipment is functioning correctly.";
      }
      enum DEGRADED {
        description
          "The equipment may be reporting a major alarm or may be reporting a critical
           alarm that is only impacting one or more subcomponent, but where the
           equipment's implementation permit it to continue operation (server traffic)
           in a degraded state.

           Used for example, when the equipment has M identical sub-components and
           when a critical alarm is impacting only N subcomponents, where N<M.";
      }
      enum FAULTY {
        description
          "The (sub-)components impacted by the critical alarm(s) impact the
          ability of the equipment to continue operation (serve traffic).";
      }
    }
    description
      "Equipment's availability-state is derived by matching active faults
       and their impact to module's operation and enables an equipment to indicate
       that even though it may have one or more critical alarms, it can continue
       to serve traffic.";
  }

  // common WG4 and cross-WG augmentations using O-RAN-RADIO identity

  augment "/hw:hardware/hw:component" {
    when "(derived-from-or-self(hw:class, 'o-ran-hw:O-RAN-RADIO')) or
    (derived-from-or-self(hw:class, 'o-ran-hw:O-RAN-HW-COMPONENT'))";
    description "New O-RAN parameters for o-ran hardware";

    container label-content {
      config false;
      description
        "Which set of attributes are printed on the Radio Unit's label";
      leaf model-name {
        type boolean;
        description
          "indicates whether model-name is included on the equipment's label";
      }
      leaf serial-number {
        type boolean;
        description
          "indicates whether serial number is included on the equipment's label";
      }
    }
    leaf product-code {
      type string;
      config false;
      mandatory true;
      description
        "O-RAN term that is distinct from model-name in ietf-hardware.";
    }
    leaf energy-saving-enabled {
      if-feature "ENERGYSAVING";
      type boolean;
      default false;
      description
        "This parameter enables the O-RU to enter into energy saving state if there is no need to keep processing
         paths working.
         TRUE is used to permit the O-RU to enter energy saving state. If there is still need keep any
         processing path, functions or HW components working.
         The O-RU shall keep necessary processing paths working if there is any [tr]x-array-carrier with
         'state' != DISABLED.
         There may be also additional implementation-specific conditions which may require keeping processing paths,
         functions or HW components working.
         FALSE is used to prohibit the O-RU to enter or to stay in energy saving state. This value is also used
         to awake the O-RU from sleeping when the O-RU is already in energy saving state. Setting this value has
         no effect on [tr]x-array-carrier::active.
         When the O-RU enters energy saving state, the O-RU shall reduce its power consumption to the lowest level
         whilst M-plane remains available. Ongoing Netconf session(s) shall not be affected when the O-RU enters
         energy saving state.
         The O-RU uses RO node power-state to inform if the O-RU is in energy saving state.
         NETCONF client should set energy-saving-enabled to FALSE to ensure O-RU is ready to immediately activate a
         carrier.";
    }
    leaf dying-gasp-support {
      type boolean;
      default false;
      config false;
      description
        "indicates whether the O-RU supports the dying gasp
        capability";
    }
    leaf last-service-date {
      if-feature "or-feat:NON-PERSISTENT-MPLANE";
      type yang:date-and-time;
      description
        "Date of last service or repair of hardware component. How this gets
        populated is a vendor specific issue.";
      reference
        "3GPP 32.692";
    }
  }

  augment "/hw:hardware/hw:component" {
    when "(derived-from-or-self(hw:class, 'o-ran-hw:O-RAN-RADIO')) or
    (derived-from-or-self(hw:class, 'ianahw:port')) or
    (derived-from-or-self(hw:class, 'o-ran-hw:O-RAN-HW-COMPONENT'))";
    description "New O-RAN parameters for o-ran naming";
    leaf o-ran-name {
      type leafref {
        path "/hw:hardware/hw:component/hw:name";
      }
      must "re-match(current(),'[a-zA-Z0-9][a-zA-Z0-9\\.\\-_]{0,253}[a-zA-Z0-9]')" {
        error-message "Name must match pattern and length.";
      }
      mandatory true;
      description
        "O-RAN name needed to bind and match with the name of hw element,
        to be compliant with O-RAN naming convention.";
    }
  }

  augment "/hw:hardware/hw:component/hw:state"  {
    when "(derived-from-or-self(../hw:class, 'o-ran-hw:O-RAN-RADIO')) or
    (derived-from-or-self(../hw:class, 'o-ran-hw:O-RAN-HW-COMPONENT'))";
    description
      "new O-RAN defined state";
    leaf power-state {
      if-feature "ENERGYSAVING";
      type energysaving-state;
      config false;
      description
        "The current power saving state for this component.
        Note - hw:/hardware/component/state/standby-state defined in RFC 4268 is
        used for redundancy purposes but not for power saving operations.";
    }
    leaf availability-state {
      type availability-type;
      config false;
      description
        "Equipment's availability-state is derived by matching active faults
         and their impact to module's operation and enables an equipment to indicate
         that even though it may have one or more critical alarms, it can continue
         to serve traffic.";
    }
  }

  augment "/hw:hardware/hw:component" {
    when "(derived-from-or-self(hw:class, 'o-ran-hw:O-RU-ANTENNA-CONNECTOR'))";
    description "New O-RAN parameters for O-RAN Antenna connectors";

    leaf connector-label {
      type string;
      config false;
      description
        "the label used to identify the connector on an O-RU ";
    }
  }

// augmentations to Notifications

  augment "/hw:hardware-state-oper-enabled"  {
    description "new availability state";
    leaf availability-state {
    if-feature hw:hardware-state;
      type leafref {
        path "/hw:hardware/hw:component/hw:state/o-ran-hw:availability-state";
      }
      description
        "The availability-state of the O-RU.";
    }
  }

  augment "/hw:hardware-state-oper-disabled"  {
    description "new availability state";
    leaf availability-state {
     if-feature hw:hardware-state;
      type leafref {
        path "/hw:hardware/hw:component/hw:state/o-ran-hw:availability-state";
      }
      description
        "The availability-state of the O-RU.";
    }
  }
}

## File: Common Models/System/o-ran-usermgmt.yang

module o-ran-usermgmt {
  yang-version 1.1;
  namespace "urn:o-ran:user-mgmt:1.0";
  prefix "o-ran-usermgmt";

  import ietf-netconf-acm {
    prefix nacm;
    reference
      "RFC 8341: Network Configuration Access Control Model";
  }

  import o-ran-wg4-features {
    prefix "feat";
  }

  import ietf-crypto-types {
    prefix ct;
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the user management model for the O-RAN Equipment.

    Copyright 2024 the O-RAN Alliance.

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

  revision "2024-08-12" {
    description
      "version 16.0.0

      1) add SSH Public Key.";

    reference "ORAN-WG4.M.0-v16.00";
  }

  revision "2023-12-11" {
    description
      "version 10.1.0

      1) clarify handling of User-Names.";

    reference "ORAN-WG4.M.0-v10.00";
  }

  revision "2022-08-15" {
    description
      "version 10.0.0

      1) introduced SHARED-ORU-MULTI-OPERATOR feature.";

    reference "ORAN-WG4.M.0-v10.00";
  }

  revision "2021-12-01" {
    description
      "version 1.3.0

      1) typographical corrections in descriptions";

    reference "ORAN-WG4.M.0-v01.00";
  }

  revision "2020-12-10" {
    description
      "version 1.2.0

      1) updated description for enabled leaf";

    reference "ORAN-WG4.M.0-v01.00";
  }

  revision "2019-07-03" {
    description
      "version 1.1.0

      1) change name leaf to type nacm:user-name-type
      2) added account-type to qualify when password is required ";

    reference "ORAN-WG4.M.0-v01.00";
  }

  revision "2019-02-04" {
    description
      "version 1.0.0

      1) imported model from xRAN
      2) changed namespace and reference from xran to o-ran";

    reference "ORAN-WG4.M.0-v01.00";
  }

  typedef password-type {
    type string {
      length "8..128";
      pattern "[a-zA-Z0-9!$%\\^()\\[\\]_\\-~{}.+]*" {
        error-message "Password content does not meet the requirements";
      }
    }
    description
      "The password for this entry.
       The Password must contain at least 2 characters from
       each of the following groups:
       a) Lower case alphabetic (a-z)
       b) Upper case alphabetic (A-Z)
       c) Numeric 0-9
       d) Special characters Allowed !$%^()[]_-~{}.+
       Password must not contain Username.

       When a password is received by a NETCONF server,
       it should be securely stored in the O-RU's configuration datastore.
       How to securely store the password in the datastore is implementation-specific
       and out of scope of WG4 M-Plane specification.";
  }

  grouping user-list {
    description "a user list grouping";
    list user {
      key "name";
      description
        "The list of local users configured on this device.";
      leaf name {
        type nacm:user-name-type;
        description
          "The user name string identifying this entry.

          NOTE: o-ran-usermgmt:user-profile/user/name is
          identical to nacm:nacm/groups/group/user-name
          but the current schema is preserved for backwards
          compatibility.";
      }
      leaf account-type {
        type enumeration {
          enum PASSWORD {
            description "the user-name is for password based authentication";
          }
          enum CERTIFICATE {
            description "the user-name is for certificate based authentication";
          }
          enum SSHPUBLICKEY {
            if-feature feat:CLIENT-AUTH-SSH-PUBLIC-KEY;
            description "the user-name is for public key based authentication";
          }
        }
        default "PASSWORD";
        description "the account type";
      }

      leaf password {
        nacm:default-deny-all;
        type password-type;
        description
          "The password for this entry.

          This field is only valid when account-type is PASSWORD,
          i.e., when account-type is NOT present or present and set to
          PASSWORD.";
      }

      container ssh-public-key {
        nacm:default-deny-all;
        when "../account-type='SSHPUBLICKEY'";
        if-feature feat:CLIENT-AUTH-SSH-PUBLIC-KEY;
        uses ct:public-key-grouping;
        description
          "The SSH pubic key for this entry.

          This field is valid only when account-type is SSHPUBLICKEY.";
      }

      leaf enabled {
        type boolean;
        description
          "Indicates whether an account is enabled or disabled.

           A NETCONF Server shall reject a configuration that attempts to
           enable a Password account for an account where the password leaf
           is not configured.

           This validation statement is included in the YANG description and
           not in a MUST statement to preserve backwards compatibility.";
      }
      leaf-list sro-id {
        if-feature feat:SHARED-ORU-MULTI-OPERATOR;
        type string;
        description
          "An optional list if Shared Resource Operator identities associated with the
          user-account. Used to realize enhanced access privileges in a shared O-RU.
          When an sro-id is configured in the O-RU, the O-RU shall
          implement additional sro-id based NETCONF access control
          as specified in O-RAN.WG4.MP.0-v10.00.
          The O-RU does not further interpret the specific value of sro-id.";
      }
    }
  }

  container users {
    must "user/enabled='true'" {
      error-message "At least one account needs to be enabled.";
    }
    //TAKE NOTE - any configuration with zero enabled users is invalid.
    //This will typically be the case when using a simulated NETCONF Server
    //and so this constraint should be removed when operating in those scenarios

    //The config data base of the O-RAN equipment should ensure that the user
    //default account is enabled on factory restart

    description "list of user accounts";
    uses user-list;
  }

  rpc chg-password {
    description "the RPC used to change a password";
    nacm:default-deny-all;
    input {
      leaf currentPassword {
        type password-type;
        mandatory true;
        description
          "provide the current password";
      }
      leaf newPassword {
        type password-type;
        mandatory true;
        description
          "provide a new password";
      }
      leaf newPasswordConfirm {
        type password-type;
        mandatory true;
        description
          "re-enter the new password ";
      }
    }
    output {
      leaf status {
        type enumeration {
          enum "Successful" {
            value 1;
            description "change password operation is successful";
          }
          enum "Failed" {
            value 2;
            description "change password operation failed";
          }
        }
        mandatory true;
        description
          "Successful or Failed";
      }
      leaf status-message {
        type string;
        description
          "Gives a more detailed reason for success / failure";
      }
    }
  }

  rpc chg-ssh-public-key {
    if-feature feat:CLIENT-AUTH-SSH-PUBLIC-KEY;
    description "the RPC used to change SSH public key";
    nacm:default-deny-all;
    input {
      container current-ssh-public-key {
        uses ct:public-key-grouping;
        description
          "provide the current SSH public algorithm and key";
      }
      container new-ssh-public-key {
        uses ct:public-key-grouping;
        description
          "provide a new SSH public algorithm and key";
      }
      container new-ssh-public-key-confirm {
        uses ct:public-key-grouping;
        description
          "re-enter the new SSH public algorithm and key";
      }
    }
    output {
      leaf status {
        type enumeration {
          enum "Successful" {
            value 1;
            description "change SSH public key operation is successful";
          }
          enum "Failed" {
            value 2;
            description "change SSH public key operation failed";
          }
        }
        mandatory true;
        description
          "Successful or Failed";
      }
      leaf status-message {
        type string;
        description
          "Gives a more detailed reason for success / failure";
      }
    }
  }

}

## File: Common Models/System/o-ran-certificates.yang

module o-ran-certificates {
  yang-version 1.1;
  namespace "urn:o-ran:certificates:1.0";
  prefix "o-ran-cert";

  import ietf-x509-cert-to-name {
    prefix x509c2n;
    reference
      "RFC 7407: A YANG Data Model for SNMP Configuration";
  }

  import ietf-truststore {
    prefix ietf-ts;
  }

  import ietf-keystore {
    prefix ietf-ks;
  }

  import ietf-system {
    prefix ietf-sys;
  }

  import ieee802-dot1x {
    prefix dot1x;
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the certificates model for the O-RAN Equipment authorization.

    Copyright 2024 the O-RAN Alliance.

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

  revision 2024-12-23 {
    description
      "version 17.0.0

      1) enable EAP-TLS with different CAs";

    reference "ORAN-WG4.M.0-v17.00";
  }

  revision "2024-08-12" {
    description
      "version 16.0.0

      1) augmentation of dot1x:pae-system to configure PAE credential.
      2) add certificate lifecycle management";

    reference "ORAN-WG4.M.0-v16.00";
  }

  revision "2022-08-15" {
    description
      "version 10.0.0

      1) initial version";

    reference "ORAN-WG4.M.0-v10.00";
  }

  grouping cert-maps {
    uses x509c2n:cert-to-name;
    description
      "The cert-maps container is used by a TLS-
       based NETCONF server to map the NETCONF
       client's presented X.509 certificate to
       a NETCONF username.  If no matching and
       valid cert-to-name list entry can be found,
       then the NETCONF server MUST close the
       connection, and MUST NOT accept NETCONF
       messages over it.
       Note - when included, the /cert-to-name/name refers to the schema node
       users/user/name in o-ran-usermgmt.yang";
    reference
      "RFC 7407: NETCONF over TLS, Section 7";
  }

  grouping cert-exp-policy {
    description "Configuration related to policies to be applied for certficate expiry";
    leaf cert-lcm-policy {
      type enumeration {
        enum REISSUE_ON_DEMAND {
          description
          "When this policy is set, the O-RU shall:
           a. Generate a public/private key pair whenever the
              O-RU controller invokes <generate-csr> action statement on
              the asymmetric-keys. The key length and algorithm
              to be used are derived from SubjectPublicKeyInfo in
              the csr-info field of the <generate-csr> action.
           b. Initiate certificate signing request towards
              the CA/RA server using CMPv2 whenever the O-RU controller
              invokes the <generate-csr> action statement on
              the asymmetric-keys, and get a reissued certificate";
        }
      }
      description
        "Configuration for the policy to be applied
        for certificate lifecycle management";
    }
  }
  grouping certificate-lcm-group-notif {
    description "Grouping for parameters notified in certificate-lcm notification";
    leaf certificate-name {
      type leafref {
        path "/ietf-ks:keystore/ietf-ks:asymmetric-keys/ietf-ks:asymmetric-key/ietf-ks:certificates/ietf-ks:certificate/ietf-ks:name";
      }
      description
        "Reference to certificate that was re-issued. This should correspond to the certReqId provided in the CMPv2 IR/CR message.";
    }
    leaf cmpv2-procedure {
      type enumeration {
        enum INITIALIZATION_REQUEST {
          description
          "An Intitialization Request/Initialization Response procedure";
        }
        enum CERTIFICATION_REQUEST {
          description
          "A successful Certificate Request/Certificate Response procedure. If certification procedure (cp)
           completes successfully during polling also, this cmpv2-procedure shall be included in the notification.";
        }
        enum POLLING_REQUEST {
          description
          "A Polling Request/Polling Response procedure. This procedure shall be included in the notification
          only if the polling request is responded with a polling reponse having a PKIStatus of 3 (waiting)";
        }
      }
      mandatory true;
      description
        "Identifies the CMPv2 procedure that has been completed";
    }
    leaf pki-status {
      type uint8;
      mandatory true;
      description "The value of the PKIStatus from the CMPv2 response";
    }
    leaf-list pki-failure-info {
      when "../pki-status = '2'";
      type uint8 {
        range "0..26";
      }
      description
        "The failure case information derived from the PKIFailureInfo
        from the CMPv2 response, where the uint8 value corresponds to
        the bit position in PKIFailureInfo, i.e., a value of '0' encodes
        badAlg and a value of '1' encodes badMessageCheck.";
    }
    leaf pki-free-text {
      type string;
      description "The text information returned by the CA/RA server";
    }
  }

  container certificate-parameters {
    description
      "Top Level Container for all certificate related parameters";

    container cert-maps {
      description
        "Container for certificate maps";

      uses cert-maps;
    }

    container cert-expiry-policy {
      description
        "Container for configuration the certificate expiry policy";
      uses cert-exp-policy;
    }

    container advance-cert-expiry-alarms-config {
      description
       "Container for configuration of advance alarms
        for certificate expiry";

      leaf minor-alarm-advance-time {
        type uint16;
        units days;
        default 30;
        description
         "Number of days in advance, a minor alarm for certificate
          about to expire needs to be raised";
      }
      leaf major-alarm-advance-time {
        type uint16;
        units days;
        default 10;
        description
         "Number of days in advance, a major alarm for certificate
          about to expire needs to be raised";
      }
      leaf critical-alarm-advance-time {
        type uint16;
        units days;
        default 2;
        description
         "Number of days in advance, a critical alarm for certificate
          about to expire needs to be raised";
      }
    }
  }

  notification certificate-lcm {
    description
      "Notification sent on successful CMPv2 procedure";
    uses certificate-lcm-group-notif;
  }

  augment "/ietf-sys:system/dot1x:pae-system" {
    if-feature "ietf-ts:certificates";
    description
      "Augment 802.1X PAE System with EAP-TLS credential information.";

    container credential {
      description
        "Contain the credential configuration to be used with the PAE.";

      leaf ca-root {
        type leafref {
          path "/ietf-ts:truststore/ietf-ts:certificate-bags/ietf-ts:certificate-bag/ietf-ts:name";
        }
        description
          "The name of a trust anchor that can be used to authenticate the peer certificate chain
          in the EAP-TLS exchange. This leaf SHALL ALWAYS be configured when EAP-TLS is configured.";
      }
      leaf-list ca-roots {
        type leafref {
          path "/ietf-ts:truststore/ietf-ts:certificate-bags/ietf-ts:certificate-bag/ietf-ts:name";
        }
        description
          "An OPTIONAL list of names of additional certificate bags corresponding
          to trust anchors that may be used in to authenticate the peer certificate
          chain in the EAP-TLS exchange(s) with one or more PAE-Authenticators.

          This list enabling use cases where multiple CAs are used, including where the PAE-Authenticator
          is associated with an independent Shared Resource Operator.";
      }
      leaf client-cert {
        type leafref {
          path "/ietf-ks:keystore/ietf-ks:asymmetric-keys/ietf-ks:asymmetric-key/ietf-ks:certificates/ietf-ks:certificate/ietf-ks:name";
        }
        description
          "The name of the client certificate to be used in the EAP-TLS exchange.";
      }
    }
  }
}

## File: Common Models/Sync/o-ran-sync.yang

module o-ran-sync {
  yang-version 1.1;
  namespace "urn:o-ran:sync:1.0";
  prefix "o-ran-sync";

  import ietf-interfaces {
    prefix "if";
  }

  import o-ran-interfaces {
    prefix "o-ran-int";
  }

  import o-ran-wg4-features {
    prefix or-feat;
  }
  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines synchronization mechanism for the O-RAN Equipment.

    Copyright 2024 the O-RAN Alliance.

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

  revision "2024-04-15" {
    description
      "version 15.0.0

      1) added new sync capability for multi-port O-RU.
      2) added support for extended SSM and QL TLV.";

    reference "ORAN-WG4.M.0-v15.00";
  }

  revision "2022-08-15" {
    description
      "version 8.1.0

      1) clarifiy description of quality-level";

    reference "ORAN-WG4.M.0-v08.00";
  }

  revision "2021-12-01" {
    description
      "version 8.0.0

      1) typographical corrections in descriptions.
      2) add support for boundary clock indication";

    reference "ORAN-WG4.M.0-v08.00";
  }

  revision "2021-03-22" {
    description
      "version 1.4.0

      1) typographical corrections in descriptions.
      2) Description alignment with specification.";

    reference "ORAN-WG4.M.0-v04.00";
  }

  revision "2020-08-10" {
    description
      "version 1.3.0

      1) Update description of ENCHANCED (sic) under container sync-capability leaf sync-t-tsc with
         correct reference to IEEE 802.1CM sections.
      2) Add description that CLASS_B and ENHANCED are as per IEEE802.1CM.
      3) Add freq-error and time-error leafs under container sync-status. This allows an O-DU to
         query the O-RU using NETCONF <get> procedure about the phase and frequency errors at
         any time.
      4) Move delay-asymmetry outside of container g-8275-1-config as the delay asymmetry
         is applicable to G.8275.2 as well
      5) Add gnss-rx-error in gnss-data for LLS-C4 configuration
      6) Correct the description of state enumerations under synce-status. The earlier
         descriptions were copy paste from ptp-status";

    reference "ORAN-WG4.M.0-v04.00";
  }

  revision "2020-04-17" {
    description
      "version 1.2.0

      1) enable O-RU to only support GNSS and not 802.1CM.";

    reference "ORAN-WG4.M.0-v03.00";
  }

  revision "2019-07-03" {
    description
      "version 1.1.0

      1) backward compatible changes to introduce groupings.";

    reference "ORAN-WG4.M.0-v01.00";
  }

  revision "2019-02-04" {
    description
      "version 1.0.0

      1) imported model from xRAN
      2) changed namespace and reference from xran to o-ran";

    reference "ORAN-WG4.M.0-v01.00";
  }

  feature GNSS {
    description
      "This feature indicates that the equipment supports integrated GNSS functionality.";
  }

  feature ANTI-JAM {
    description
      "This feature indicates that the equipment supports Anti-jam functionality";
  }

  typedef ssm-code {
       type enumeration {
          enum PRC {
            description
              "PRC";
          }
          enum PRS {
            description
              "PRS";
          }
          enum SSU_A {
            description
              "SSU_A";
          }
          enum SSU_B {
            description
              "SSU_B";
          }
          enum ST2 {
            description
              "ST2";
          }
          enum ST3 {
            description
              "ST3";
          }
          enum ST3E {
            description
              "ST3E";
          }
          enum EEC1 {
            description
              "EEC1";
          }
          enum EEC2 {
            description
              "EEC2";
          }
          enum DNU {
            description
              "DNU";
          }
          enum PRTC {
            description
              "PRTC can be set by O-RU controller only if extended-ql-tlv-supported is true";
          }
          enum ePRTC {
            description
              "ePRTC can be set by O-RU controller only if extended-ql-tlv-supported is true";
          }
          enum eEEC {
            description
              "eEEC can be set by O-RU controller only if extended-ql-tlv-supported is true";
          }
          enum ePRC {
            description
              "ePRC can be set by O-RU controller only if extended-ql-tlv-supported is true";
          }
          enum NONE {
            description
              "NONE";
          }
        }
        description
           "List of SyncE SSMs quality levels.";
    }

  typedef geographic-coordinate-degree {
           type decimal64 {
             fraction-digits 8;
           }
           description
             "Decimal degree (DD) used to express latitude and longitude
              geographic coordinates.";
       }

  grouping sync-group {
    description "This group represents the state and status of timing and synchronization of the O-RU";
    container sync-status {
      config false;

      description
        "Object of this class provides synchronization state of the module.";

      leaf sync-state {
        type enumeration {
          enum LOCKED {
            description
              "equipment is in the locked mode, as defined in ITU-T G.810";
          }
          enum HOLDOVER {
            description
              "equipment clock is in holdover mode";
          }
          enum FREERUN {
            description
              "equipment clock isn't locked to an input reference, and is not in the holdover mode";
          }
        }
        mandatory true;
        description
          "State of DU synchronization";
      }
      leaf time-error {
        type decimal64 {
          fraction-digits 3;
        }
        units nanoseconds;
        description
          "An optional leaf indicating an estimate of the current time error in the O-RU,
          e.g., derived from a low pass filtering of the residual error of the PLL.
          The definition of the filtering and updating is left to O-RU implementation.";
      }
      leaf frequency-error {
        type decimal64 {
          fraction-digits 3;
        }
        units parts-per-billion;
        description
          "An optional leaf indicating an estimate of the current frequency error in the O-RU,
          e.g., derived from a low pass filtering of the residual error of the PLL.
          The definition of the filtering and updating is left to O-RU implementation.";
      }

      list supported-reference-types {
        key item;
        min-elements 1;
        description
          "Type of a synchronization supported source.";
        leaf item {
          type enumeration {
            enum GNSS {
              description
                "GPS can be taken as a synchronization source";
            }
            enum PTP {
              description
                "Precision Time Protocol can be taken as a synchronization source";
            }
            enum SYNCE {
              description
                "Synchronous Ethernet can be taken as a synchronization source";
            }
          }
          mandatory true;

          description
            "supported reference-type";
        }
      }
    }

    container sync-capability {
      config false;

      description
        "Object of this class provides synchronization capabilities of the module.";

      leaf sync-t-tsc {
        type enumeration {
          enum CLASS_B {
            description
              "Regular accuracy (previously referred to class B) for synchronization
              is supported by the device as per IEEE802.1CM clause 6.4.1, Case 1.1";
          }
          enum ENCHANCED {
            description
              "Enhanced accuracy for synchronization is supported by the device as per
              IEEE802.1CM clause 6.4.1, Case 1.2.

              The typo in the name of the enumeration (ENCHANCED instead of ENHANCED)
              is kept as is for backwards compatibility";
          }
        }
        description
          "When the O-RU supports 802.1CM, this leaf provides information about
          T-TSC capability";

        reference "IEEE 802.1CM";
      }

      leaf boundary-clock-supported {
        type boolean;
        description
          "This parameter indicates whether O-RU supports the T-BC profiles in ITU-T G.8275.1.";
      }
      leaf extended-ql-tlv-supported {
        type boolean;
        description
          "This parameter indicates whether O-RU supports the extended QL TLV as per ITU-T G.8264.";
      }
    }

    container ptp-config {
      description
        "This MO defines configuration of Precise Time Protocol.";
      leaf domain-number {
        type uint8;
        default 24;
        description
          "This parameter indicates Domain Number for PTP announce messages.";
      }

      list accepted-clock-classes {
        key clock-classes;
        leaf clock-classes {
          type uint8;
          description
            "PTP Clock Class accepted by the O-RU";
        }
        description
          "Contains list of PTP acceptable Clock Classes, sorted in the descending order.";
      }

      leaf ptp-profile {
        type enumeration {
          enum G_8275_1 {
            description
              "Usage of multicast over Ethernet";
          }

          enum G_8275_2 {
            description
              "Usage of unicast over IP";
          }
        }
        default "G_8275_1";
        description
          "Type of profile to be used in PTP setting";
      }
      leaf delay-asymmetry {
        type int16 {
          range "-10000..10000";
        }
        default 0;
        description
          "Defines static phase error in the recovered PTP timing signal to be compensated at the O-RU.
          The error is defined in units of nanoseconds in the range +/-10 000 ns.

          If the deprecated delay-asymmetry schema node in the g-8275-1-config container is configured
          together with this schema node, then the O-RU shall use this schema node and ignore the
          value in the g-8275-1-config container.";
      }

      container g-8275-1-config {
        when "../ptp-profile='G_8275_1'";

        description
          "Container allowing for configuration of G8275.1";

        leaf multicast-mac-address {
          type enumeration {
            enum FORWARDABLE {
              description
                "means, that PTP shall use 01-1B-19-00-00-00 destination MAC address";
            }
            enum NONFORWARDABLE {
              description
                "means, that PTP shall use 01-80-C2-00-00-0E destination MAC address";
            }
          }
          default FORWARDABLE;
          description
            "The parameter defines destination MAC address, used by the DU in the egress PTP messages.";
        }

        leaf delay-asymmetry {
          type int16 {
            range -10000..10000;
          }
          default 0;
          status deprecated;
          description
            "Defines static phase error in the recovered PTP timing signal to be compensated at the O-RU.
            The error is defined in units of nanoseconds in the range +/-10 000 ns.";
        }

        list sources {
        if-feature or-feat:PER-PORT-PTP-CONFIG;
        must "(time-transmitter-only = 'true' and not-time-transmitter = 'false') or (time-transmitter-only = 'false' and not-time-transmitter = 'true') or (time-transmitter-only = 'false' and not-time-transmitter = 'false')"{
        error-message
          "Combination of time-transmitter-only and not-time-transmitter not allowed";
          }
          key local-port-number;
          description
            "Per port synchronization PTP sources";

          leaf local-port-number {
            type leafref {
            path "/if:interfaces/if:interface/o-ran-int:port-reference/o-ran-int:port-number";
          }
          description
            "This is reference to portNumber of ExternalEthernetPort to identify the port,
            where the PTP signal is located.";
          }

          leaf time-transmitter-only {
            type boolean;
            default false;
            description
            "This parameter defines if source is time transmitter only.";
          }

          leaf not-time-transmitter {
            type boolean;
            default false;
            description
            "This parameter defines if source is not time transmitter.";
          }

          leaf local-priority {
            type uint8;
            default 128;
            description
              "This parameter defines local priority used in the ITU-T 8275.1 best PTP source selection.";
          }
         }
        }

      container g-8275-2-config {
        when "../ptp-profile='G_8275_2'";

        description
          "Container used for configuration of G8275.2 profile";

        leaf local-ip-port {
          type leafref {
            path "/if:interfaces/if:interface/if:name";
          }
          description
            "Reference to interface name corresponding to IP interface
            used for G.8275.2";
        }

        list master-ip-configuration {
          key local-priority;
          description
            "The parameter defines list of IP configuration of devices acting as PTP signal source.";
          leaf local-priority {
            type uint8;
            description
              "The parameter defines local priority or underlying timeTransmitter IP address.";
          }

          leaf ip-address {
            type string;
            description
              "the parameter defines timeTransmitter IP address.";
          }
        }

        leaf log-inter-sync-period {
          type int8 {
            range "-7..0";
          }

          description
            "The parameter defines number of sync message during 1 second";
        }

        leaf log-inter-announce-period {
          type int8 {
            range "-3..0";
          }

          description
            "The parameter defines number of announce message during 1 second";
        }
      }
    }

    container ptp-status {
      description
        "PTP status container";
      leaf reporting-period {
        type uint8;
        default 10;
        description
          "This parameter defines minimum period in seconds between reports,
          sent by the O-RU, for parameters in this container.";
      }
      leaf lock-state {
        type enumeration {
          enum LOCKED {
            description
              "The integrated ordinary clock is synchronizing to the reference, recovered from PTP flow";
          }
          enum UNLOCKED {
            description
              "The integrated ordinary clock is not synchronizing to the reference, recovered from PTP flow";
          }
        }
        config false;
        description
          "This parameter indicates, whether the integrated ordinary clock is
          synchronizing to the reference, recovered from PTP signal.
          The exact definition when to indicate locked or unlocked is up to specific
          implementation.";
      }

      leaf clock-class {
        type uint8;
        config false;
        description
          "This parameter contains the clock class of the clock, controlled by the O-RU";
      }

      leaf clock-identity {
        type string {
          length 18;
          pattern "0[xX][0-9a-fA-F]{16}";
        }
        config false;
        description
          "This parameter contains identity of the clock,
            according to IEEE 1588-2008 definition, controlled by the O-RU.
          The string shall be formatted as an 8-octet hex value with the '0x' prefix.";
      }

      leaf partial-timing-supported {
        type boolean;
        config false;
        description
          "Provides information wheter G.8275.2 (partial timing support from network) is supported.";
      }

      list sources {
        key local-port-number;
        config false;

        description
          "Synchronization sources";

        leaf local-port-number {
          type leafref {
            path "/if:interfaces/if:interface/o-ran-int:port-reference/o-ran-int:port-number";
          }
          description
            "This is reference to portNumber of ExternalEthernetPort to identify the port,
            where the PTP signal is located.";
        }

        leaf state {
          type enumeration {
            enum PARENT {
              description
                "Indicates that this source is the current timeTransmitter clock, i.e. the clock,
                which the clock, controlled by the NETCONF Server, is synchronized to";
            }
            enum OK {
              description
                "Indicates that this source is an alternate timeTransmitter, which the clock,
                controlled by the NETCONF Server, can potentially synchronize to,
                i.e. clock class and priority, announced by the timeTransmitter clock is lower,
                compared to those of the clock, controlled by the NETCONF Server,
                and and the clock class is accepted";
            }
            enum NOK {
              description
                "Indicates that this source is an alternate timeTransmitter, which the clock,
                controlled by the NETCONF Server, has an operational connection to,
                but the class or priority of the timeTransmitter clock is higher or equal
                to those of the clock, controlled by the NETCONF Server,
                or the clock class is not accepted";
            }
            enum DISABLED {
              description
                "Indicates that this source is an alternate timeTransmitter, which the clock,
                controlled by the NETCONF Server, has no operational connection to.
                This applies to ports not receiving Announce messages i.e.
                ports unused or in time transmitter state.";
            }
          }
          description
            "This parameter indicates status of the PTP source";
        }

        leaf two-step-flag {
          type boolean;
          description
            "This parameter reflects status of the twoStepFlag attribute in Sync messages,
            received from the PTP source.
            Parameter not relevant when ../state = DISABLED.";
        }

        leaf leap61 {
          type boolean;
          description
            "This parameter reflects status of the leap61 flag in Announce messages,
            received from the PTP source.
            When true, the last minute of the current UTC day contains 61 seconds.
            Parameter not relevant when ../state = DISABLED.";
        }

        leaf leap59 {
          type boolean;
          description
            "This parameter reflects status of the leap59 flag in Announce messages,
            received from the PTP source.
            When true, the last minute of the current UTC day contains 59 seconds.
            Parameter not relevant when ../state = DISABLED.";
        }

        leaf current-utc-offset-valid {
          type boolean;
          description
            "This parameter reflects status of the currentUtcOffsetValid flag in
            Announce messages, received from the PTP source.
            When true, the current UTC offset is valid.
            Parameter not relevant when ../state = DISABLED.";
        }

        leaf ptp-timescale {
          type boolean;
          description
            "This parameter reflects status of the ptpTimescale flag in Announce
            messages, received from the PTP source.

            When set, the clock timescale of the grandmaster clock is PTP;
            otherwise, the timescale is ARB (arbitrary).
            Parameter not relevant when ../state = DISABLED.";
        }

        leaf time-traceable {
          type boolean;
          description
            "This parameter reflects status of the timeTraceable flag in Announce
            messages, received from the PTP source.

            When true, the timescale and the currentUtcOffset are traceable to a
            primary reference.
            Parameter not relevant when ../state = DISABLED.";
        }

        leaf frequency-traceable {
          type boolean;
          description
            "This parameter reflects status of the frequencyTraceable flag in
            Announce messages, received from the PTP source.

            When true, the frequency determining the timescale is traceable to a
            primary reference.
            Parameter not relevant when ../state = DISABLED.";
        }

        leaf source-clock-identity {
          type string {
            length 18;
            pattern "0[xX][0-9a-fA-F]{16}";
          }
          description
            "This parameter reflects value of the sourceClockIdentity attribute in
            Announce messages, received from the PTP source.

            The string shall be formatted as an 8-octet hex value with the '0x'
            prefix.
            Parameter not relevant when ../state = DISABLED.";
        }

        leaf source-port-number {
          type uint16;
          description
            "This parameter reflects value of the sourcePortNumber attribute in
            Announce messages, received from the PTP source.
            Parameter not relevant when ../state = DISABLED.";
        }

        leaf current-utc-offset {
          type int16;
          description
            "The offset between TAI and UTC when the epoch of the PTP system is
            the PTP epoch, i.e., when ptp-timescale is TRUE; otherwise, the value
            has no meaning.
            Parameter not relevant when ../state = DISABLED.";
        }

        leaf priority1 {
          type uint8;
          description
            "This parameter reflects value of the priority1 attribute in Announce
            messages, received from the PTP source.
            Parameter not relevant when ../state = DISABLED.";
        }

        leaf clock-class {
          type uint8;
          description
            "This parameter reflects value of the clockClass attribute in
            Announce messages, received from the PTP source.
            Parameter not relevant when ../state = DISABLED.";
        }

        leaf clock-accuracy {
          type uint8;
          description
            "This parameter reflects value of the clockAccuracy attribute in
            Announce messages, received from the PTP source.
            Parameter not relevant when ../state = DISABLED.";
        }

        leaf offset-scaled-log-variance {
          type uint16;
          description
            "This parameter reflects value of the offsetScaledLogVariance
            attribute in Announce messages, received from the PTP source.
            Parameter not relevant when ../state = DISABLED.";
        }

        leaf priority2 {
          type uint8;
          description
            "This parameter reflects value of the priority2 attribute in Announce
            messages, received from the PTP source.
            Parameter not relevant when ../state = DISABLED.";
        }

        leaf grandmaster-clock-identity {
          type string {
            length 18;
            pattern "0[xX][0-9a-fA-F]{16}";
          }
          description
            "This parameter reflects value of the grandmasterClockIdentity
            attribute in Announce messages, received from the PTP source.

            The string shall be formatted as an 8-octet hex value with the '0x'
            prefix.
            Parameter not relevant when ../state = DISABLED.";
        }

        leaf steps-removed {
          type uint16;
          description
            "This parameter reflects value of the stepsRemoved attribute in
            Announce messages, received from the PTP source.

            It indicates the number of communication paths traversed
            between the local clock and the grandmaster clock.
            Parameter not relevant when ../state = DISABLED.";
        }

        leaf time-source {
          type uint8;
          description
            "This parameter reflects value of the timeSource attribute in
            Announce messages, received from the PTP source.
            Parameter not relevant when ../state = DISABLED.";
        }
      }
    }

    container synce-config {
      description
        "This container defines the configuration of SyncE";

      leaf-list acceptance-list-of-ssm {
        type ssm-code;
        default "PRC";
        description
          "The parameter contains the list of SyncE acceptable SSM quality levels.";
      }

      leaf ssm-timeout {
        type uint16;
        description
          "The parameter contains the value of maximum duration in seconds for which the actual SSM value may be different than configured values.";
      }
      list sources {
      if-feature or-feat:PER-PORT-SYNCE-CONFIG;
        key local-port-number;
        description
          "Per port synchronization SYNCE sources";

        leaf local-port-number {
          type leafref {
            path "/if:interfaces/if:interface/o-ran-int:port-reference/o-ran-int:port-number";
          }
          description
            "This is reference to portNumber of ExternalEthernetPort to identify the port,
            where the SyncE signal is located.";
        }

        leaf ssm-send-enable{
          type boolean;
          default true;
          description
            "This parameter defines if ESMC messages with SSM quality level are sent on this port.";
        }

        leaf local-priority {
            type uint8;
            default 0;
            description
              "The parameter defines the priority of the SyncE source as per ITU-T G.781.
               A value 0 configures a port that is not nominated for SyncE source selection.
               The smaller the value (except 0), the higher the priority.";
        }
       }
    }

    container synce-status {
      description
        "SyncE status container";

      leaf reporting-period {
          type uint8;
          default 10;
          description
            "This parameter defines minimum period in seconds between reports,
             sent by the O-RU, for parameters in this container.";
      }

      leaf lock-state {
        type enumeration {
          enum LOCKED {
            description
              "The integrated ordinary clock is synchronizing to the reference, recovered from SyncE signal";
          }
          enum UNLOCKED {
            description
              "The integrated ordinary clock is not synchronizing to the reference, recovered from SyncE signal";
          }
        }
        config false;
        description
          "This parameter indicates, whether the integrated ordinary clock is
          synchronizing to the reference, recovered from SyncE signal.

          The exact definition when to indicate locked or unlocked is up to
          specific implementation.";
      }

      list sources {
        key local-port-number;
        config false;
        leaf local-port-number {
          type leafref {
            path "/if:interfaces/if:interface/o-ran-int:port-reference/o-ran-int:port-number";
          }
          description
            "This is reference to portNumber of ExternalEthernetPort to identify
            the port, where the SyncE signal is located.";
        }

        leaf state {
          type enumeration {
            enum PARENT {
              description
                "Indicates this is the primary SyncE source recovering SyncE signal.";
            }
            enum OK {
              description
                "Indicates that this source is an alternate SyncE source, which the clock,
                controlled by the NETCONF Server, can potentially synchronize to, when the
                clock quality of the primary SyncE signal advertised in ESMC packets is
                lower than the expected or configured clock quality; or when this source
                clock's quality is better than the primary SyncE source clock quality.";
            }
            enum NOK {
              description
                "Indicates that this source is an alternate SyncE source, and the O-RU
                 has an operational connection to this alternate SyncE source, but the
                 clock's quality is not in the configured acceptable range.
                 This includes the case when DNU quality level is received on the port";
            }
            enum DISABLED {
              description
                "Indicates that this source is an alternate SyncE clock, and the O-RU has an
                 operational connection to this alternate SyncE source.
                 This applies to ports not receiving ESMC messages i.e.,
                 ports unused.";
            }
          }
          description
            "This parameter indicates status of the SyncE source";
        }

        leaf quality-level {
          type uint8 {
            range 0..15;
          }
          description
            "This parameter contains the value of the SSM quality level code,
            received in ESMC messages from the SyncE source.
            If multiple clock sources are available, the O-RU can select the
            reference clock source based on the SSM quality level.
            Parameter not relevant when ../state = DISABLED.";
        }

        leaf enhanced-ssm-code {
          when "./../../../sync-capability/extended-ql-tlv-supported = 'true'";
          type uint8;
          description
            "This parameter contains the value of the enhanced SSM quality level code,
            received in ESMC messages from the SyncE source.";
        }

        leaf ssm-quality-level {
          type ssm-code;
          description
            "This parameter contains human readable value of the enhanced SSM quality level,
             received in ESMC messages from the SyncE source.";
        }

        leaf originator-synce-clock-id {
          when "./../../../sync-capability/extended-ql-tlv-supported = 'true'";
          type string {
            length 18;
            pattern "0[xX][0-9a-fA-F]{16}";
          }
          description
            "This parameter reflects the value of sourceClockIdentity attribute in
            Extended QL TLV messages, received from the SyncE source.
            The string shall be formatted as an 8-octet hex value with the '0x'
            prefix.";
        }

        leaf flag0-mixed-eec-eeec {
          when "./../../../sync-capability/extended-ql-tlv-supported = 'true'";
          type boolean;
          description
            "Mixed EEC/eEEC (i.e., TRUE if at least one of the clocks is not an eEEC; FALSE if all clocks are eEEC)";
        }

        leaf flag1-partial-chain {
          when "./../../../sync-capability/extended-ql-tlv-supported = 'true'";
          type boolean;
          description
            "Partial chain (i.e., TRUE if the TLV has been generated in the middle of the chain and the count of the EEC/eEEC is incomplete)";
        }

        leaf number-of-eeec {
          when "./../../../sync-capability/extended-ql-tlv-supported = 'true'";
          type uint8;
          description
            "Number of cascaded eEECs from the nearest SSU/PRC/ePRC";
        }

        leaf number-of-eec {
          when "./../../../sync-capability/extended-ql-tlv-supported = 'true'";
          type uint8;
          description
          "Number of cascaded EECs from the nearest SSU/PRC/ePRC";
        }
        min-elements 1;
        description
          "This parameter contains characteristics of SyncE sources of the clock, controlled by the O-RU.";
      }
    }

    container gnss-config {
      if-feature GNSS;
      description
        "This container defines the configuration of Global Navigation Satellite System (GNSS).";

      leaf enable {
        type boolean;

        description
          "This parameter defines if GNSS receiver shall be enabled or not.";
      }

      leaf-list satellite-constelation-list {
        type enumeration {
          enum GPS {
            description
              "GPS";
          }
          enum GLONASS {
            description
              "GLONASS should not be used alone but always along with GPS or BEIDOU because of missing leap second information";
          }
          enum GALILEO {
            description
              "GALILEO";
          }
          enum BEIDOU {
            description
              "BEIDOU";
          }
        }

        description
          "This parameter defines list of constellations to be used to acquire synchronization.";
      }

      leaf polarity {
        type enumeration {
          enum POSITIVE {
            description
              "POSITIVE";
          }
          enum NEGATIVE {
            description
              "NEGATIVE";
          }
        }
        default POSITIVE;

        description
          "This parameter defines pulse polarity";
      }

      leaf cable-delay {
        type uint16 {
          range "0..1000";
        }
        default 5;

        description
          "This parameter is used to compensate cable delay.";
      }

      leaf anti-jam-enable {
        if-feature ANTI-JAM;
        type boolean;
        default false;
        description
          "This parameter is used to enable or disable anti-jamming.";
      }
    }

    container gnss-status {
      if-feature GNSS;
      description
        "Provides information about state of gps receiver";
      leaf reporting-period {
        type uint8;
        default 10;
        description
          "This parameter defines minimum period in seconds between reports,
          sent by the O-RU, for parameters in this container.";
      }
      leaf name {
        type string {
          length "1..255";
        }
        config false;
        description
        "A name that is unique that identifies a GNSS instance.
        This name may be used in fault management to refer to a
        fault source or affected object";
      }
      leaf gnss-sync-status {
        type enumeration {
          enum SYNCHRONIZED {
            description "GNSS functionality is synchronized";
          }
          enum ACQUIRING-SYNC {
            description "GNSS functionality is acquiring sync";
          }
          enum ANTENNA-DISCONNECTED {
            description "GNSS functionality has its antenna disconnected";
          }
          enum BOOTING {
            description "GNSS functionality is booting";
          }
          enum ANTENNA-SHORT-CIRCUIT {
            description "GNSS functionality has an antenna short circuit";
          }
        }
        config false;
        description "when available, indicates the status of the gnss receiver.";
      }
      container gnss-data {
        when "../gnss-sync-status='SYNCHRONIZED'";
        config false;
        description
          "GPS data contained";
        leaf satellites-tracked {
          type uint8;
          description "Number of satellites tracked";
        }
        container location {
          description
            "Containes information about geo location";
          leaf altitude {
            type int64;
            units millimeter;
            description
              "Distance above the sea level.";
          }
          leaf latitude {
            type geographic-coordinate-degree {
              range "-90..90";
            }
            description
              "Relative position north or south on the Earth's surface.";
          }
          leaf longitude {
            type geographic-coordinate-degree {
              range "-180..180";
            }
            description
              "Angular distance east or west on the Earth's surface.";
          }
        }
        leaf gnss-rx-time-error {
          type decimal64 {
            fraction-digits 3;
          }
          units nanoseconds;
          description
            "An optional leaf, representing the estimate of current GNSS receiver time error ";
        }
      }
    }
  }
  container sync {
    description
      "Main containter for sync related parameters";

    uses sync-group;
  }

  //notification statement
  notification synchronization-state-change {
    description
      "Notification used to inform about synchronization state change";

    leaf sync-state {
      type leafref {
        path "/sync/sync-status/sync-state";
      }
      description
        "State of equipment synchronization is notified at state change";
    }
  }

  notification ptp-state-change {
    description
      "Notification used to inform about PTP synchronization state change";

    leaf ptp-state{
      type leafref{
        path "/sync/ptp-status/lock-state";
      }
      description
        "ptp-state-change notification is signalled from equipment at state change";
    }
  }
  notification synce-state-change {
    description
      "Notification used to inform about syncE synchronization state change";

    leaf synce-state{
      type leafref{
        path "/sync/synce-status/lock-state";
      }
      description
        "synce-state change notification is signalled from equipment at state change";
    }
  }
  notification gnss-state-change {
    if-feature GNSS;
    description
      "Notification used to inform about GNSS synchronization state change";

    leaf gnss-state{
      type leafref{
        path "/sync/gnss-status/gnss-sync-status";
      }
      description
        "gnss-state-change notification is signalled from equipment at state change";
    }
  }

}

## File: Common Models/Interfaces/o-ran-dhcp.yang

module o-ran-dhcp {
  yang-version 1.1;
  namespace "urn:o-ran:dhcp:1.0";
  prefix "o-ran-dhcp";

  import ietf-interfaces {
    prefix "if";
  }

  import ietf-inet-types {
    prefix "inet";
  }

  import ietf-dhcpv6-types {
    prefix dhcpv6-type;
    revision-date 2018-09-04;
  }

  import ietf-dhcpv6-common {
    prefix dhcpv6-type2;
  }

  import o-ran-wg4-features {
    prefix or-feat;
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the YANG definitions for managing the DHCP client.

    Copyright 2024 the O-RAN alliance.

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

  revision "2024-08-12" {
    description
      "version 10.1.0

      1) Remove mandatory statement for leaf ia-type";

    reference "ORAN-WG4.M.0-v10.00";
  }

  revision "2022-08-15" {
    description
      "version 10.0.0

      1) added DUID/IAID support for IPv4.
      2) switched import FROM ietf-dhcpv6-types TO ietf-dhcpv6-common";

    reference "ORAN-WG4.M.0-v10.00";
  }

  revision "2021-12-01" {
    description
      "version 5.2.0

      1) Typographical corrections for british english.";

    reference "ORAN-WG4.M.0-v05.00";
  }

  revision "2021-03-22" {
    description
      "version 5.1.0

      1) typographical corrections in descriptions.";

    reference "ORAN-WG4.M.0-v05.00";
  }

  revision "2020-12-10" {
   description
     "version 5.0.0

     1) added new leafs for reporting discovered event-collectors
     used";

   reference "ORAN-WG4.M.0-v05.00";
  }

  revision "2019-07-03" {
    description
      "version 1.1.0

      1) backward compatible changes to fix pen number which always
      should have been 32 bits
      2) backward compatible changes to introduce reporting of 3GPP
      discovered MV-PnP information, including CA/RA Servers and SeGW
      3) backward compatible changes to introduce groupings";

    reference "ORAN-WG4.M.0-v01.00";
  }

  revision "2019-02-04" {
    description
      "version 1.0.0

      1) imported model from xRAN
      2) changed namespace and reference from xran to o-ran";

    reference "ORAN-WG4.M.0-v01.00";
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

  typedef event-collector-id {
    type union {
      type inet:ip-address;
      type inet:uri;
    }
    description "An event collector identifier";
  }

  grouping ca-ra-servers {
    description
      "The CA/RA servers discovered using DHCP, discovered using the 3GPP
      defined options in 3GPP 32.509 in vendor specific option 43/17";
    list ca-ra-servers {
      key servers;
      description "A list of IP addresses or URIs for CA/RA Servers";

      leaf servers{
        type ca-ra-server-id;
        description "the server identifier";
      }
      leaf port-number {
        type inet:port-number;
        description "an optional (non-default) port";
      }
      leaf ca-ra-path {
        type string;
        description
          "ASCII string representing the path to the CMP server directory.
          A CMP server may be located in an arbitrary path other than root.";
      }
      leaf subject-name {
        type string;
        description
          "ASCII string representing the subject name of the CA/RA. ";
      }
      leaf protocol {
        type enumeration {
          enum HTTP {
            description
                "HTTP used to communicate with CA/RA server";
          }
          enum HTTPS{
            description
                "HTTPS used to communicate with CA/RA server";
          }
        }
        description "the protocol used to communicate with a CA/RA server";
      }
    }
  }

  grouping security-gateways {
    description
      "The security gateways discovered using DHCP, discovered using the 3GPP
      defined options in 3GPP 32.509 in vendor specific option 43/17";
    list segw {
      key gateways;
      description "A list of IP addresses or URIs for SeGW";

      leaf gateways{
        type segw-id;
        description "the SeGW identifier";
      }
    }

  }

  grouping netconf-clients {
    description
      "The NETCONF clients discovered using DHCP, discovered using the IANA
      defined options or O-RAN defined syntax for encoding IP addresses or FQDNs
      in vendor specific option 43/17";
    list netconf-clients{
      key client;
      description "A list of IP addresses or URIs for NETCONF clients";
      leaf client{
        type netconf-client-id;
        description "the client identifier";
      }
      leaf optional-port {
        type inet:port-number;
        description "an optional (non-default) port";
      }
    }
  }

  grouping event-collectors {
    description
      "The event-collectors discovered using DHCP, discovered using the O-RAN
      defined syntax for encoding IP addresses or FQDNs in vendor specific
      option 43/17";
    leaf-list event-collectors{
      if-feature "or-feat:NON-PERSISTENT-MPLANE";
      type event-collector-id;
      max-elements 1;
      description
        "An event-collector discovered using DHCP that can be used by the O-RU to
        send pnfRegistration notification messages.

        The O-RU behaviour when discovering more than one event-collector is not defined.";
    }
    leaf event-collector-format{
      if-feature "or-feat:NON-PERSISTENT-MPLANE";
      type enumeration {
        enum ONAP {
          description "ONAP format is used to signal the event-collector";
        }
      }
      description "the event-collector notification format";
    }
  }

  grouping dhcpv4-option {
    description "DHCPv4 Configuration options";

    leaf dhcp-server-identifier {
      type  inet:ip-address;
      description "DHCP server identifier";
    }
    leaf domain-name {
      type  string;
      description "Name of the domain";
    }
    leaf-list domain-name-servers {
      type  inet:ip-address;
      description "A list of DNS servers";
    }
    leaf interface-mtu {
      type  uint32 {
        range "0..65535";
      }
      description "Minimum Transmission Unit (MTU) of the interface";
    }
    leaf-list default-gateways{
      type inet:ip-address;
      description "the list of default gateways on the O-RUs subnet";
    }
    uses netconf-clients;
    uses ca-ra-servers;
    uses security-gateways;
    uses event-collectors;
  }

  grouping dhcpv6-option {
    description "DHCPv6 Configuration options";

    container dhcp-server-identifier{
      status deprecated;
      description "dhcpv6 server identifier - deprecated as this uses import from ietf-dhcpv6-types and not ietf-dhcpv6-common";
      uses dhcpv6-type:duid;
    }
    container dhcpv6-server-identifier{
      description "dhcpv6 server identifier - replaces container dhcp-server-identifier and uses import from ietf-dhcpv6-common";
      uses dhcpv6-type2:duid;
    }
    leaf domain-name {
      type  string;
      description "Name of the domain";
    }
    leaf-list domain-name-servers {
      type  inet:ip-address;
      description "A list of DNS servers";
    }
    uses netconf-clients;
    uses ca-ra-servers;
    uses security-gateways;
    uses event-collectors;
  }

  grouping dhcp-group {
    description "a dhcp grouping";
    list interfaces {
      key "interface";
      description "Interface configuration";

      leaf interface {
        type if:interface-ref;
        description "Name of the interface";
      }

      container dhcpv4 {
        description "DHCPv4 information";
        leaf client-id {
          type string;
          description "DHCP client identifier - used when the DHCPv4 client in the O-RU does not use DUID/IAID";
        }
        uses dhcpv6-type2:duid;

        container identity-association {
          description "an optional container - used when DHCPv4 client uses DUID/IAID as identifier";

          leaf iaid {
            type uint32;
            description "IAID";
          }
          leaf ia-type {
            type string;
            description "IA type";
          }
        }
        uses dhcpv4-option;
      }
      container dhcpv6 {
        description "DHCPv6 information";
        container dhcp-client-identifier{
          status deprecated;
          description "dhcpv6 client identifier - deprecated as this uses import from ietf-dhcpv6-types and not ietf-dhcpv6-common";
          uses dhcpv6-type:duid;
        }
        container dhcpv6-client-identifier{
          description "dhcpv6 client identifier using ietf-dhcpv6-common import";
          uses dhcpv6-type2:duid;
          container identity-association {
            description "a container describing IAID information";

            leaf iaid {
              type uint32;
              description "IAID";
            }
            leaf ia-type {
              type string;
              description "IA type";
            }
          }
        }
        uses dhcpv6-option;
      }
    }

    container m-plane-dhcp {
      description "leafs covering off DHCP aspects of m-plane operations";
      leaf private-enterprise-number {
        type uint16;
        default 53148;
        status deprecated;
        description "the private enterprise number allocated to O-RAN Alliance";
      }
      leaf private-enterprise-num {
        type uint32;
        default 53148;
        description "the private enterprise number allocated to O-RAN Alliance";
      }
      leaf vendor-class-data {
        type string;
        description
          "The string used in DHCPv4 option 60 or DHCPv4 option 124 and
          DHCPv6 option 16";
      }
    }
  }

  // Top Level Container

  container dhcp {
    config false;
    description
      "DHCP client configuration";

    uses dhcp-group;
  }
}

## File: Common Models/Interfaces/o-ran-mplane-int.yang

module o-ran-mplane-int {
  yang-version 1.1;
  namespace "urn:o-ran:mplane-interfaces:1.0";
  prefix "o-ran-mplane-int";

  import ietf-inet-types {
    prefix "inet";
  }

  import ietf-interfaces {
    prefix "if";
  }

  import o-ran-interfaces {
    prefix "o-ran-int";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the YANG definitions for managing the O-RAN Radio Unit
     management plane interface.

     Copyright 2021 the O-RAN Alliance.

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

   revision 2024-12-23 {
     description
       "version 17.0.0

       1) Add a list of FQDN with fqdn name and port number
       2) Mark the leaf-list of mplane-fqdn as deprecated";

     reference "ORAN-WG4.M.0-v17.00";
   }

   revision "2021-12-01" {
     description
       "version 7.1.0

          1) typographical corrections";

     reference "ORAN-WG4.M.0-v07.00";
   }

  revision "2021-07-26" {
    description
      "version 7.0.0

         1) new leaf for recommended scan interval  ";

    reference "ORAN-WG4.M.0-v07.00";
  }

  revision "2021-03-22" {
        description
          "version 6.0.0

          1) typographical corrections in descriptions.
          2) new functionality to report TLS information ";

        reference "ORAN-WG4.M.0-v06.00";
  }

  revision "2019-07-03" {
       description
         "version 1.1.0

         1) enabling NETCONF clients to be configured.
         2) shifting new container to correct position
         3) backward compatible changes to introduce groupings";

       reference "ORAN-WG4.M.0-v01.00";
  }

  revision "2019-02-04" {
    description
      "version 1.0.0

      1) imported model from xRAN
      2) changed namespace and reference from xran to o-ran";

    reference "ORAN-WG4.M.0-v01.00";
  }

  typedef vlan-id {
    type uint16 {
      range 1..4094;
    }
    description
      "Type definition representing a single-tagged VLAN";
  }

  // Groupings

  grouping mplane-group {
    description "mplane grouping";
    container searchable-mplane-access-vlans-info {
      description
        "These parameters shall be stored by the equipment in reset persistent memory
        to enable it to be re-used to optimize VLAN discovery procedures.";
      leaf-list searchable-access-vlans {
        type vlan-id;
        description
          "A list of access VLANs that may be operational on the transport
          network. Can be used by the equipment to optimize its VLAN searching - for
          M-plane operations.";
      }
      container vlan-range {
        description "the range of VLAN IDs that may be configured for M-Plane";
        leaf lowest-vlan-id {
          type vlan-id;
          description
            "Value of this parameter informs equipment about lowest VID to be used
            in VLAN scan procedure";
        }
        leaf highest-vlan-id {
          type vlan-id;
          description
            "Value of this parameter informs about highest VID to be used
            in VLAN scan procedure";
        }
      }
      leaf scan-interval {
          type uint16;
          units seconds;
          default 60;
          description
            "The O-RU should repeatedly search using untagged frames and previously configured
            VLANs whenever it searches across the full range of VLAN IDs.The O-RU controller is
            able to recommend the maximum interval between repeatedly scanning for M-Plane connectivity
            on the untagged and configured VLANs using this timer schema node.

            The O-RU shall store this schem-node in reset persistent memory.";
      }
    }

    container m-plane-interfaces {
      description "information concerning m-plane interfaces";
      list m-plane-sub-interfaces {
        key "interface-name sub-interface";
        description "list of m-plane information";
        leaf interface-name {
          type leafref {
            path "/if:interfaces/if:interface/if:name";
          }
          description "the name of the interface";
        }
        leaf sub-interface {
          type leafref {
            path "/if:interfaces/if:interface[if:name = current()/../interface-name]/o-ran-int:vlan-id";
          }
          description
            "vlans used to communicate with management plane servers.";
        }
        container client-info {
          config false;
          description
            "the NETCONF client information, discovered by DHCP or manually
             configured during installation.";
          list mplane-ipv4-info {
            key mplane-ipv4;
            description "list of IPv4 NETCONF clients";
            leaf mplane-ipv4 {
              type inet:ipv4-address;
              description "The IPv4 address of M-Plane client discovered by the O-RU
              or manually configured.";
            }
            leaf port {
              type inet:port-number;
              description
                "The call home port number discovered or manually configured.";
            }
          }
          list mplane-ipv6-info {
            key mplane-ipv6;
            description "list of IPv6 NETCONF clients";
            leaf mplane-ipv6 {
              type inet:ipv6-address;
              description "The IPv6 address of M-Plane client discovered by the O-RU
              or manually configured.";
            }
            leaf port {
              type inet:port-number;
              description
                "The call home port number discovered or manually configured.";
            }
          }
          list mplane-fqdn-info {
            key mplane-fqdn;
            description "list of FQDN NETCONF clients";
            leaf mplane-fqdn {
              type inet:domain-name;
              description "the FQDN of M-Plane client discoved by the O-RU or manually configured";
            }
            leaf port {
              type inet:port-number;
              description
                "The call home port number discoved or manually configured.";
            }
          }
          leaf-list mplane-fqdn {
            type inet:domain-name;
            status deprecated;
            description
              "The discovered FQDN(s) of M-Plane client(s).

              This leaf-list is deprecated and replaced with the mplane-fqdn-info
              list that allows configuration of the port number.";
          }
        }
      }

      container m-plane-ssh-ports {
        description "leafs for managing SSH ports";
        leaf call-home-ssh-port {
          type inet:port-number;
          default 4334;
          description "The configured call home server port number";
        }
        leaf server-ssh-port {
          type inet:port-number;
          default 830;
          description "The configured SSH server port number";
        }
      }
      container m-plane-tls-ports {
        description "leafs for managing TLS ports";
        leaf call-home-tls-port {
          type inet:port-number;
          default 4335;
          description "The configured call home server port number";
        }
        leaf server-tls-port {
          type inet:port-number;
          default 6513;
          description "The configured TLS server port number";
        }
      }
    }
    container configured-client-info {
      description
        "the NETCONF client information that may be configured by another
        NETCONF client. These clients are reported independently from clients
        manually configured or discovered using DHCP.";
      list mplane-ipv4-info {
        key mplane-ipv4;
        description "list of IPv4 NETCONF clients";
        leaf mplane-ipv4 {
          type inet:ipv4-address;
          description "The IPv4 address of configured M-Plane client.";
        }
        leaf port {
          type inet:port-number;
          description
            "The configured call home port number.";
        }
      }
      list mplane-ipv6-info {
        key mplane-ipv6;
        description "list of IPv6 NETCONF clients";
        leaf mplane-ipv6 {
          type inet:ipv6-address;
          description "The IPv6 address of configured M-Plane client..";
        }
        leaf port {
          type inet:port-number;
          description
            "The configured call home port number.";
        }
      }
      list mplane-fqdn-info {
        key mplane-fqdn;
        description "list of FQDN NETCONF clients";
        leaf mplane-fqdn {
          type inet:domain-name;
          description "the configured FQDN(s) of M-Plane client(s).";
        }
        leaf port {
          type inet:port-number;
          description
            "The configured call home port number.";
        }
      }
      leaf-list mplane-fqdn {
        type inet:domain-name;
        status deprecated;
        description
          "The configured FQDN(s) of M-Plane client(s).

          This leaf-list is deprecated and replaced with the mplane-fqdn-info
          list that allows configuration of the port number.";
      }
    }
  }

  // Top Level Container

  container mplane-info {
    description "top-level container for management plane information";

    uses mplane-group;
  }
}

## File: Common Models/Interfaces/o-ran-interfaces.yang

module o-ran-interfaces {
  yang-version 1.1;
  namespace "urn:o-ran:interfaces:1.0";
  prefix "o-ran-int";

  import ietf-inet-types {
    prefix "inet";
  }

  import iana-if-type {
    prefix "ianaift";
  }

  import ietf-interfaces {
    prefix "if";
  }

  import ietf-ip {
    prefix "ip";
  }

  import ietf-hardware {
    prefix "hw";
  }

  import ietf-yang-types {
    prefix "yang";
  }

  import iana-hardware {
    prefix "ianahw";
  }

  import o-ran-wg4-features {
    prefix "feat";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the YANG definitions for managing the O-RAN
     interfaces.

    Copyright 2024 the O-RAN Alliance.

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

  revision "2024-08-12" {
    description
      "version 16.0.0

      1) added new MACsec bypass policy.";

    reference "ORAN-WG4.M.0-v16.00";
  }

  revision "2024-04-15" {
    description
      "version 15.0.0

      1) added new config false only leaf for maximum payload size.
      2) new configuration for TCP MSS.";

    reference "ORAN-WG4.M.0-v15.00";
  }

  revision "2021-12-01" {
    description
      "version 5.2.0

      1) typographical corrections in descriptions.";

    reference "ORAN-WG4.M.0-v05.00";
  }

  revision "2021-03-22" {
    description
      "version 5.1.0

      1) typographical corrections in descriptions.";

    reference "ORAN-WG4.M.0-v05.00";
  }

  revision "2020-12-10" {
    description
      "version 5.0.0

      1) new functionality to describe over subscribed resources";

    reference "ORAN-WG4.M.0-v05.00";
  }

  revision "2020-04-17" {
    description
      "version 1.2.0

      1) updated descriptions to clarify operation when vlan-tagging is false";

    reference "ORAN-WG4.M.0-v03.00";
  }
  revision "2019-07-03" {
    description
      "version 1.1.0

      1) increasing max elements for user plane DSCP markings to 64
      2) re-organizing layout to facilitate cross-WG adoption, whilst ensuring
      nodes are syntactically and semantically equivalent";

    reference "ORAN-WG4.M.0-v01.00";
  }

  revision "2019-02-04" {
    description
      "version 1.0.0

      1) imported model from xRAN
      2) changed namespace and reference from xran to o-ran";

    reference "ORAN-WG4.M.0-v01.00";
  }

  feature UDPIP-BASED-CU-PLANE {
    description
      "This feature indicates that the RU supports the UDP/IP based transport
      for the CU plane.";
  }

  feature ALIASMAC-BASED-CU-PLANE {
    description
      "This feature indicates that the RU supports the alias MAC address
       based transport for the CU plane.";
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

  typedef mss {
    type uint16;
    description
      "Type definition for TCP Maximum Segment Size.";
  }

  typedef ethertype-string {
   type string {
     pattern '([0-9A-Fa-f]{2}(:[0-9A-Fa-f]{2}))';
   }
   description
    "A 2 octect hexadecimal string with octets represented as hex digits
     separated by colons.";
  }

  grouping cos-marking {
    description
      "Configuration data for CU Plane ethernet CoS marking.
      This grouping is only applicable to an interface when vlan-tagging is
      set to TRUE for that interface. In other cases, it may be ignored.";
    container class-of-service {
      description
        "CoS Configuration";
      leaf u-plane-marking {
        type pcp;
        default 7;
        description
          "Marking used for default u-plane flows.
          7 represents highest priority for u-plane marking";
      }
      leaf c-plane-marking {
        type pcp;
        default 7;
        description "7 represents highest priority for c-plane marking";
      }
      leaf m-plane-marking {
        type pcp;
        default 2;
        description "2 represents highest excellent effort for m-plane marking";
      }
      leaf s-plane-marking {
        type pcp;
        default 7;
        description "7 represents highest priority for s-plane marking";
      }
      leaf other-marking {
        type pcp;
        default 1;
        description "1 represents best effort for other marking";
      }
      list enhanced-uplane-markings{
        key "up-marking-name";
        max-elements 4;
        description
          "list of mappings for enhanced (non-default) u-plane markings";
        leaf up-marking-name {
          type string;
          description "The name of the marking";
        }
        leaf enhanced-marking {
          type pcp;
          description "the enhanced u-plane marking";
        }
      }
    }
  }

  grouping dscp-marking {
    description
      "Configuration data for CU Plane DSCP marking";
    container diffserv-markings {
      description
        "DSCP Configuration";
      leaf u-plane-marking {
        type inet:dscp;
        default 46;
        description
          "Marking used for default u-plane flows.
          46 represents expedited forwarding";
      }
      leaf c-plane-marking {
        type inet:dscp;
        default 46;
        description "46 represents expedited forwarding";
      }
      leaf s-plane-marking {
        type inet:dscp;
        default 46;
        description "46 represents expedited forwarding";
      }
      leaf other-marking {
        type inet:dscp;
        default 0;
        description "0 represents best effort forwarding";
      }
      list enhanced-uplane-markings{
        key up-marking-name;
        max-elements 64;
        description
          "list of mappings for enhanced (non-default) u-plane markings";
        leaf up-marking-name {
          type string;
          description "The name of the marking";
        }
        leaf enhanced-marking {
          type inet:dscp;
          description "the enhanced u-plane marking";
        }
      }
    }
  }

  grouping tcp-config {
    description "grouping for per-interface tcp configuration";

    container tcp {
      presence "tcp configuration";
      description "per interface TCP configuration";

      leaf mss-adjust {
        type mss;
        description
          "Maximum Segment Size (MSS) used in the MSS Option sent
          in the TCP initial handshake over this interface and
          which specifies an upper bound for the TCP MSS of packets
          that can be received on this interface.

          NOTE, this can be used to reduce the packet size for NETCONF/TLS
          or NETCONF/SSH to reduce head-of-line blocking due to M-Plane
          packets sent over the fronthaul downlink interface";
      }
    }
  }

  grouping macsec-bypass-grouping {
    description "grouping for MACsec bypass policy";

    container macsec-bypass-policy {
      if-feature feat:MACSEC-BYPASS-POLICY;
      description
        "This is a top level container for MACsec policies.
         These policies can only be enforced on the base
         Ethernet interface.

         MAC, EtherType and vlan-id based policies are defined to
         be applied to the base-interface.

         VLAN based policies can additionally be implicitly
         enforced by configuring the SecY on a VLAN interface and
         do not use this container.";

      list policy {
        key "name";
        description
          "Each policy list entry has a matching criteria. Any frame
          matching the criteris will be forwarded via the uncontrolled port.";
        leaf name {
          type string;
            description
              "The name of the MACsec policy.";
        }
        choice policy-type {

          case mac {
            leaf-list destination-mac-address {
              type yang:mac-address;
              description
                "Destination IEEE 802 Media Access Control (MAC)
                address of frames egressing via interface.";
            }
          }
          case ethertype {
            leaf-list ethertype {
              type ethertype-string;
              description
                "list of ethertypes in frames egressing the interface.";
            }
          }
          case vlan-id {
            leaf-list vlan-id {
              type uint16 {
                range "1..4094";
              }
              description
                "list of vlan-ids in frames egressing the interface.";
            }
          }
          description
            "choice of policy types";
        }
      }
    }
  }

  grouping macsec-bypass-capabilities {
    description "grouping for MACsec bypass capabilities";

    container macsec-bypass-capabilities {
      if-feature feat:MACSEC-BYPASS-POLICY;
      config false;
      description
        "This is a container for MACsec bypass capabilities.";

      leaf per-interface-policy-list-max-elements {
        type uint16;
        default 100;
        description
          "the maximum number of list of elements
          for each instance of the list
          /if:interfaces/if:interface/o-ran-int:/macsec-bypass-policy/o-ran-int/policy.";
      }
      leaf cummulative-policy-list-max-elements {
        type uint16;
        default 100;
        description
          "the maximum cummulative number of list entries for
          all instances of the list
          /if:interfaces/if:interface/o-ran-int:/macsec-bypass-policy/o-ran-int/policy";
      }
      leaf-list supported-policy {
        type enumeration {
          enum MAC {
            description
              "O-RU supports MAC address based by-pass policies
              for frames egressing a base-interface.";
          }
          enum ETHERTYPE {
            description
              "O-RU supports ethertype based by-pass policies
              for frames egressing a base-interface.";
          }
          enum VLAN {
            description
              "O-RU supports vlan-id based by-pass policies
              for frames egressing a base-interface.";
          }
        }
        description
          "The type of mac bypass policies supported by the O-RU
          on frames egressing a base-interface.

          An O-RU supporting the MACSEC-BYPASS-POLICY shall include
          at least one of the defined policies in this list.";
      }
    }
  }

  rpc reset-interface-counters {
    description
      "Management plane triggered restart of the interface counters.";
  }

// Cross Working Group Augmentations Follow

// Cross Working Group augmentations for basic Ethernet leafs

  augment "/if:interfaces/if:interface" {
    when "if:type = 'ianaift:ethernetCsmacd'" {
      description "Applies to Ethernet interfaces";
    }
    description
      "Augment the interface model with parameters for
      base Ethernet interface";

    leaf l2-mtu {
      type uint16 {
        range "64 .. 65535";
      }
      units bytes;
      default 1500;
      description
        "The maximum size of layer 2 frames that may be transmitted
        or received on the interface (excluding any FCS overhead).
        For Ethernet interfaces it also excludes the
        4-8 byte overhead of any known (i.e. explicitly matched by
        a child sub-interface) 801.1Q VLAN tags.";
    }

    leaf maximum-ethernet-payload-size {
      type uint16 {
        range "1500 .. 9000";
      }
      units bytes;
      config false;
      description
        "The maximum size of the Ethernet payload that an O-RU can transmit
        or receive on the interface (excluding any frame header,
        maximum frame payload size, frame checksum
        sequence and any 802.1Q tag).

        TAKE NOTE - THE FORMULA IN THIS DESCRIPTION DIFFERS FROM THE
        FORMULA IN THE DESCRIPTION OF THE l2-mtu LEAF.

        THIS LEAF CORRESPONDS TO THE DATA/PAYLOAD **ONLY** AND DOES **NOT**
        INCLUDE ANY OTHER FRAME OVERHEAD LIKE SOURCE/DESTINATION ADDRESSES,
        LENGTH, 802.1Q TAGS OR FCS.";
    }

    leaf vlan-tagging {
      type boolean;
      default true;
      description
        "Indicates if VLAN tagging is used.
        Default true is used to enable equipment to autonomously discover that
        it is connected to a trunk port.

        This may be set to false, for example, when the O-RU is directly
        connected to the O-DU. In such cases, native Ethernet frames may be
        used across the O-RAN interface, i.e., any PCP markings defined
        in the cos-markings grouping are NOT used by the O-RU and any default
        value or configured value using those leafs may be ignored by the O-RAN
        equipment.";
    }
    uses cos-marking;

// interface-grouping insert - begin;

    leaf-list interface-groups-id {
      type leafref {
        path "/if:interfaces/o-ran-int:interface-grouping/o-ran-int:interfaces-groups/o-ran-int:interface-group-id";
      }
      config false;
      description
        "an optional leaf used when the sustained rate able to be supported by an interface
        is less than nominal bit rate indicated by o-ran-transceiver.yang

        Identifies interface grouping particular physical hardware MAC address belongs to.";
    }

// interface-grouping insert - end;
  }

// augmentation for MACsec bypass policies
  augment "/if:interfaces/if:interface" {
    when "if:type = 'ianaift:ethernetCsmacd'" {
      description "Applies to Ethernet interfaces";
    }
    if-feature feat:MACSEC-BYPASS-POLICY;
    description
      "Augment the interface model with bypass parameters for
      base Ethernet interface";

    uses macsec-bypass-grouping;
  }

  augment "/if:interfaces" {
    if-feature feat:MACSEC-BYPASS-POLICY;
    description "augmentation for MACsec bypass capabilitites";

    uses macsec-bypass-capabilities;
  }

// Cross Working Group augmentation for l2vlan interfaces for VLAN definition

  augment "/if:interfaces/if:interface" {
    when "if:type = 'ianaift:l2vlan'";
    description "augments for VLAN definition";
    leaf base-interface {
      type if:interface-ref;
      must "/if:interfaces/if:interface[if:name = current()]"
            + "/o-ran-int:vlan-tagging = 'true'" {
        description
          "The base interface must have VLAN tagging enabled.";
      }
      description
        "The base interface for the VLAN sub-interface.";
    }
    leaf vlan-id {
      type uint16 {
        range "1..4094";
      }
      description
        "The VLAN-ID.";
    }
  }

// Cross Working Group augmentation for both ethernetCsmacd and l2vlan interfaces

  augment "/if:interfaces/if:interface" {
    when "(if:type = 'ianaift:ethernetCsmacd') or
          (if:type = 'ianaift:l2vlan')" {
      description "Applies to ethernetCsmacd and l2vlan interfaces";
    }
    description
      "Augment the interface model with parameters for all
      both ethernetCsmacd and l2vlan interfaces.";
    leaf last-cleared {
      type yang:date-and-time;
      config false;
      description
        "Timestamp of the last time the interface counters were
        cleared.";
    }
  }

// Cross Working Group augmentation to ietf-ip covering DSCP for M-Plane

augment "/if:interfaces/if:interface/ip:ipv4" {
  description "augments for IPv4 based M-Plane transport";
  leaf m-plane-marking {
    type inet:dscp;
    default 18;
    description "18 represents AF21 or 'immediate traffic'";
  }
}
augment "/if:interfaces/if:interface/ip:ipv6" {
  description "augments for IPv6 based M-Plane transport";
  leaf m-plane-marking {
    type inet:dscp;
    default 18;
    description "18 represents AF21 or 'immediate traffic'";
  }
}

// Cross Working Group augmentation to ietf-ip covering TCP MSS for M-Plane

augment "/if:interfaces/if:interface/ip:ipv4" {
  if-feature feat:PER-INT-TCP-MSS;
  description "augments for IPv4 based CUS transport";
  uses tcp-config;
}
augment "/if:interfaces/if:interface/ip:ipv6" {
  if-feature feat:PER-INT-TCP-MSS;
  description "augments for IPv6 based CUS transport";
  uses tcp-config;
}

// WG4 Specific Augmentations Follow

// WG4 Augmentation for basic Ethernet leafs

  augment "/if:interfaces/if:interface" {
    when "if:type = 'ianaift:ethernetCsmacd'" {
      description
        "Applies to WG4 Ethernet interfaces for alias MAC based CU-Plane";
    }
    if-feature ALIASMAC-BASED-CU-PLANE;
    description
      "Augment the interface model with parameters for
      base Ethernet interface";

    leaf-list alias-macs {
      type yang:mac-address;

      description
        "Augments interfaces with range of alias MAC addresses.";
    }

  }

// WG4 Augmentation for both ethernetCsmacd and l2vlan interfaces

  augment "/if:interfaces/if:interface" {
    when "(if:type = 'ianaift:ethernetCsmacd') or
          (if:type = 'ianaift:l2vlan')" {
      description "Applies to ethernetCsmacd and l2vlan interfaces";
    }
    description
      "Augment the interface model with parameters for all
      both ethernetCsmacd and l2vlan interfaces.";
    leaf mac-address {
      type yang:mac-address;

      description
        "The MAC address of the interface.";
    }

    container port-reference {
      description
        "a port reference used by other O-RAN modules";
      leaf port-name {
        type leafref {
          path '/hw:hardware/hw:component/hw:name';
        }
        must "derived-from-or-self(deref(current())/../hw:class, 'ianahw:port')";
// TAKE NOTE - depending on version of pyang, this may generate various
// warnings, e.g., warning: XPath for "port-name" does not exist
        description
          "O-RAN interfaces use a reference to a physical port component.

          In this case, the component name referenced must be of class type
          port, i.e., when /hw:hardware/hw:component/hw:class is derived from
          ianahw:port";
      }
      leaf port-number {
        type uint8;
        description
          "A number allocated by the server which identifies a port.
          Port number value is 0 to N-1 where N is number of ports
          in the device.

          This value is fixed for the lifetime of the equipment, i.e., cannot be
          changed during equipment reboots.";
      }
    }
  }

// WG4 specific augmentation to ietf-ip covering DSCP for CUS Plane

  augment "/if:interfaces/if:interface/ip:ipv4" {
    if-feature UDPIP-BASED-CU-PLANE;
    description "augments for IPv4 based CUS transport";
    uses dscp-marking;
  }
  augment "/if:interfaces/if:interface/ip:ipv6" {
    if-feature UDPIP-BASED-CU-PLANE;
    description "augments for IPv6 based CUS transport";
    uses dscp-marking;
  }

// Other Working Group Specific Augmentations Follow Here

// interface-grouping insert - begin;

  augment "/if:interfaces" {
    description "augments interfaces for groupings of physical hardware addresses that can be used to group Ethernet ports";

    container interface-grouping {

      presence
        "indicates maximum sustained throughput of an O-RU is less than the combined bandwidth of all physical ports";

      config false;

      description
        "A container used by an O-RU where the maximum sustained throughput
        of an O-RU is less than the combined bandwidth of all physical ports";

      list interfaces-groups {
        key interface-group-id;
        description "List of interface groups.";

        leaf interface-group-id {
          type uint8;
          description "interface group identifier.";
        }

        leaf max-sustainable-ingress-bandwidth {
          type uint32;
          units Mbps;
          description
            "Maximum sustainable ingress bandwidth the interface group can handle. The sustainable bandwidth is calculated
            over one radio frame.

            The peak ingress bandwidth may exceed the sustainable bandwidth for periods shorter than a radio frame period.";
        }

        leaf max-sustainable-egress-bandwidth {
          type uint32;
          units Mbps;
          description
            "Maximum sustainable egress bandwidth the interface group can handle. The sustainable bandwidth is calculated
            over one radio frame.";
        }
      }
    }
  }
// interface-grouping insert - end;

}

## File: Common Models/Interfaces/o-ran-transceiver.yang

module o-ran-transceiver {
  yang-version 1.1;
  namespace "urn:o-ran:transceiver:1.0";
  prefix "o-ran-transceiver";

  import o-ran-interfaces {
    prefix "o-ran-int";
  }

  import ietf-interfaces {
    prefix "if";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the operational state data for SFP transceivers used in
    an O-RAN Radio Unit.

    Copyright 2023 the O-RAN Alliance.

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

  revision 2024-12-23 {
    description
      "version 17.0.0

      1) clarifying current temperature leaf
      2) new laser-temperature leaf
      3) new transceiver-not-supported leaf
      4) new thermo-electric cooler (TEC) current leaf";

    reference "ORAN-WG4.M.0-v17.00";
  }

  revision "2023-04-10" {
    description
      "version 11.1.0

      1) Max length of vendor-rev is changed from 2 to 4";

    reference "ORAN-WG4.M.0-v11.00";
  }

  revision "2022-12-05" {
    description
      "version 11.0.0

      1) enable more than one interface to be accessible through a transceiver";

    reference "ORAN-WG4.M.0-v11.00";
  }

  revision "2022-08-15" {
    description
      "version 10.0.0

      1) introduced new SFP compliance codes and updated references";

    reference "ORAN-WG4.M.0-v10.00";
  }

  revision "2021-12-01" {
    description
      "version 2.1.0

      1) typographical corrections in descriptions
      2) clarifying vendor name follows SFF 8472";

    reference "ORAN-WG4.M.0-v02.00";
  }

  revision "2019-07-03" {
    description
      "version 2.0.0

      1) introduction of reporting for QSFP.
      2) backward compatible changes to introduce groupings.";

    reference "ORAN-WG4.M.0-v02.00";
  }

  revision "2019-02-04" {
    description
      "version 1.0.0

      1) imported model from xRAN
      2) changed namespace and reference from xran to o-ran";

    reference "ORAN-WG4.M.0-v01.00";
  }

  // Groupings

  grouping transceiver-group {
    description "a transceiver grouping";
    list port-transceiver-data {
      key "interface-name port-number";
      description
      "Data recovered from port transceivers.
      A single entry in the list is created per transceiver.";
      leaf interface-name {
        type leafref {
          path "/if:interfaces/if:interface/if:name";
        }
        description
        "Name of an interface accessible through the transceiver.

        If operating with a QSFP, then the interface corresponds
        to an interface accessible through the lane/channel 1 of the QSFP.

        If more than one interface is accessible through the transceiver
        or the lane/channel 1 of the QSFP, then O-RU arbitrarily chooses
        the referenced interface instance.";
      }

      leaf port-number {
        type leafref {
          path "/if:interfaces/if:interface[if:name = current()/../interface-name]" + "/o-ran-int:port-reference/o-ran-int:port-number";
        }
        description
        "A number which identifies a port. In case of SFP/SFP+
        port, port number value is 0 to N-1 where N is number of ports
        in the device. Numbers 0 to N-1 are assigned to ports in order
        following order of labels on the device (labels for ports are
        not necessarily numbers starting from zero)";
      }

      leaf-list interface-names {
        type leafref {
          path "/if:interfaces/if:interface/if:name";
        }
        description
        "Names of all interfaces accessible through the transceiver.

        If operating with a QSFP, then the interfaces correspond
        to all interfaces accessible through the lane/channel 1 of the QSFP.

        O-RU provides the values only if more than one interface is
        accessible through the transceiver or the lane/channel 1 of the QSFP.";
      }

      leaf name {
        type string {
          length "1..255";
        }
        description
          "A name that is unique across the O-RU that identifies a transceiver instance.
          This name may be used in fault management to refer to a fault source
          or affected object";
      }

      leaf present {
        type boolean;
        config false;
        mandatory true;
        description
          "Indicates if pluggable transceiver module is present.";
      }

      leaf vendor-id {
        type string {
          length 1..16;
        }
        config false;
        description
          "Name of the transceiver vendor Full name of transceiver vendor,
          that contains ASCII characters, left-aligned with
          any padding on the right with ASCII spaces (20h), or ASCII nul
          (00h) removed, and ASCII less-than (3Ch) replaced with ASCII
          open-brace (7Bh) and ASCII more-than (3Eh) replaced with ASCII
          close-brace (7Dh).

          Optional node included when the NETCONF Server has determined
          the vendor ID. When used, the content of this schema node
          follows the definition of Vendor name field in SFF-8472.";
      }

      leaf vendor-part {
        type string {
          length 1..16;
        }
        config false;
        description
          "Transceiver vendors part number, that contains ASCII characters,
          left-aligned with any padding on the right with ASCII spaces
          (20h), or ASCII nul (00h) removed, and ASCII less-than (3Ch)
          replaced with ASCII open-brace (7Bh) and ASCII more-than (3Eh)
          replaced with ASCII close-brace (7Dh).

          Optional node included when the NETCONF Server has determined
          the vendor part number. When used, the content of this schema node
          follows the definition of Vendor PN field in SFF-8472.";
      }

      leaf vendor-rev {
        type string {
          length 1..4;
        }
        config false;
        description
          "Transceiver vendors revision number. 2-octet (QSFP) or 4-octet (SFP)
          field that contains ASCII characters.

          Optional node included when the NETCONF Server has determined
          the vendor revision number. When used, the content of this schema
          node follows the definition of Vendor Rev field in SFF-8472.";
      }

      leaf serial-no {
        type string {
          length 1..16;
        }
        config false;
        description
          "Transceiver serial number encoded using ASCII characters,
          left-aligned with any padding on the right with ASCII spaces
          (20h), or ASCII nul (00h) removed, and ASCII less-than (3Ch)
          replaced with ASCII open-brace (7Bh) and ASCII more-than (3Eh)
          replaced with ASCII close-brace (7Dh).

          Optional node included when the NETCONF Server has determined
          the serial number.";
      }

      leaf SFF8472-compliance-code {
        type enumeration {
          enum diagnostics-undefined {
            description "undefined compliance code";
          }
          enum rev9.3-diagnostics {
            description "diagnostics published 08-01-02";
          }
          enum rev9.5-diagnostics{
            description "diagnostics published 06-01-04";
          }
          enum rev10.2-diagnostics{
            description "diagnostics published 06-01-07";
          }
          enum rev11.0-diagnostics{
            description "diagnostics published 05-21-10";
          }
          enum rev11.3-diagnostics{
            description "diagnostics published 06-11-13";
          }
          enum rev11.4-diagnostics{
            description "diagnostics published 07-24-14";
          }
          enum rev12.0-diagnostics{
            status deprecated;
            description
              "diagnostics published 08-28-14
               Note: Deprecated as it does not exists in SFF-8472 v12.4";
          }
          enum rev10.4-diagnostics{
            description "diagnostics published 30-01-09";
          }
          enum rev12.3-diagnostics{
            description "diagnostics published 29-07-18";
          }
          enum rev12.4-diagnostics{
            description "diagnostics published 31-03-21";
          }
        }
        config false;
        description
          "Indication of which feature set(s) are
          implemented in the transceiver from Byte 94 of address A0h
          https://members.snia.org/document/dl/25916 v12.4

          Optional node included when the NETCONF Server has determined
          the compliance code.";

        reference "https://members.snia.org/document/dl/25916";
      }

       leaf connector-type {
        type enumeration {
          enum unknown {
            description "encoded as 00h in Table 4-3 of SFF-8024";
          }
          enum subscrber-connector {
            description "encoded as 01h in Table 4-3 of SFF-8024";
          }
          enum fiber-jack {
            description "encoded as 06h in Table 4-3 of SFF-8024";
          }
          enum lucent-connector {
            description "encoded as 07h in Table 4-3 of SFF-8024";
          }
          enum mt-rj {
            description "encoded as 08h in Table 4-3 of SFF-8024";
          }
          enum multiple-optical {
            description "encoded as 09h in Table 4-3 of SFF-8024";
          }
          enum sg {
            description "encoded as 0Ah in Table 4-3 of SFF-8024";
          }
          enum optical-pigtail {
            description "encoded as 0Bh in Table 4-3 of SFF-8024";
          }
          enum multi-fiber-parralel-optic-1x12 {
            description "encoded as 0Ch in Table 4-3 of SFF-8024";
          }
          enum multi-fiber-parralel-optic-2x16 {
            description "encoded as 0Dh in Table 4-3 of SFF-8024";
          }
          enum hssdc_2{
            description "encoded as 20h in Table 4-3 of SFF-8024";
          }
          enum copper-pigtail{
            description "encoded as 21h in Table 4-3 of SFF-8024";
          }
          enum rj45{
            description "encoded as 22h in Table 4-3 of SFF-8024";
          }
          enum no-separable-connector{
            description "encoded as 23h in Table 4-3 of SFF-8024";
          }
          enum mxc-2x16{
            description "encoded as 24h in Table 4-3 of SFF-8024";
          }
        }
        config false;
        // TOCHECK: Remove any enumerations which are not applicable
        description
          "Connector-type indicates the external optical or electrical cable
          connector provided as the media interface as defined in the connector
          types derived from table 4-3 in SFF-8024.

          Optional node included when the NETCONF Server has determined
          the connector type.";
        reference "https://ta.snia.org/higherlogic/ws/public/document?document_id=944";
      }

      leaf identifier {
        type enumeration {
          enum unknown {
            description "encoded as 00h in Table 4-1 of SFF-8024";
          }
          enum gbic {
            description "encoded as 01h in Table 4-1 of SFF-8024";
          }
          enum soldered {
            description "encoded as 02h in Table 4-1 of SFF-8024";
          }
          enum sfp {
            description "encoded as 03h in Table 4-1 of SFF-8024";
          }
          enum xbi {
            description "encoded as 04h in Table 4-1 of SFF-8024";
          }
          enum xenpack {
            description "encoded as 05h in Table 4-1 of SFF-8024";
          }
          enum xfp {
            description "encoded as 06h in Table 4-1 of SFF-8024";
          }
          enum xff {
            description "encoded as 07h in Table 4-1 of SFF-8024";
          }
          enum xfp-e {
            description "encoded as 08h in Table 4-1 of SFF-8024";
          }
          enum xpak {
            description "encoded as 09h in Table 4-1 of SFF-8024";
          }
          enum x2 {
            description "encoded as 0Ah in Table 4-1 of SFF-8024";
          }
          enum dwdm-sfp {
            description "encoded as 0Bh in Table 4-1 of SFF-8024";
          }
          enum qsfp {
            description "encoded as 0Ch in Table 4-1 of SFF-8024";
          }
          enum qsfp+ {
            description "encoded as 0Dh in Table 4-1 of SFF-8024";
          }
        }
        config false;
        description
          "Connector identifier as defined in the identifier
          types derived from table 4-1 in SFF-8024.

          Optional node included when the NETCONF Server has determined
          the identifier type.";
        reference "https://members.snia.org/document/dl/26423";
      }

      leaf nominal-bitrate {
        type uint32;
        config false;
        description
          "Nominal bitrate in Mb/s (10^6 bits per second).
          If needed actual value is rounded to the nearest integer.

          Optional node included when the NETCONF Server has determined
          the nominal bit rate.";
      }

      leaf low-bitrate-margin {
        type uint8;
        config false;
        description
          "Minimum supported bitrate as percentage of nominal bitrate
          below nominal bitrate.

          Optional node included when the NETCONF Server has determined
          the low bit rate margin";
      }

      leaf high-bitrate-margin {
        type uint8;
        config false;
        description
          "Maximum supported bitrate as percentage of nominal bitrate
          above nominal bitrate.

          Optional node included when the NETCONF Server has determined
          the high bitrate margin.";
      }

      leaf rx-power-type {
        type enumeration {
          enum oma {
            description "oma = optical modulation amplitude";
          }
          enum avp{
            description "avp = average power";
          }
        }
        config false;
        description
          "Received power measurement type
          oma = optical modulation amplitude
          avp = average power

          Optional node included when the NETCONF Server has determined
          the rx power type.";
      }

      leaf rx-power {
        type decimal64{
          fraction-digits 4;
        }
        config false;
        description
          "Measured RX input power in mW.

          Optional node included when the NETCONF Server has determined
          the measured RX power.

          If operating with QSFP, this power corresponds to that of
          Lane/Channel 1.";
      }

      leaf tx-power {
        type decimal64{
          fraction-digits 4;
        }
        config false;
        description
          "Measured coupled TX output power in mW.

          Optional node included when the NETCONF Server has determined
          the measured coupled TX power.";
      }

      leaf tx-bias-current {
        type decimal64{
          fraction-digits 4;
        }
        config false;
        description
          "Measured transmitter laser bias current in mA.

          Optional node included when the NETCONF Server has determined
          the tx bias current.

          If operating with QSFP, this bias current corresponds to that of
          Lane/Channel 1.";
      }

      leaf voltage {
        type decimal64{
          fraction-digits 4;
        }
        config false;
        description
          "Internally measured supply voltage in mV.

          Optional node included when the NETCONF Server has determined
          the internally measured voltage.";
      }

      leaf temperature {
        type decimal64 {
          fraction-digits 4;
        }
        config false;
        description
          "Internally measured module temperature in degrees Celsius.

          Optional node included when the NETCONF Server has determined
          the temperature of the module.";
      }

      leaf laser-temperature {
        type decimal64 {
          fraction-digits 4;
        }
        config false;
        description
          "Internally measured laser temperature in degrees Celsius.

          Optional node included when the NETCONF Server has determined
          the temperature of the laser.";
      }

      leaf transceiver-not-supported {
        type empty;
        config false;
        description
          "The transceiver is not supported by O-RU.

           A transceiver reported as not supported may cause degraded or undefined
           operation.";
      }

      leaf tec-current {
        type decimal64 {
          fraction-digits 4;
        }
        config false;
        description
          "Internally measured thermo-electric cooler (TEC) current per transceiver module in mA.
           TEC current is a positive number for cooling
           and a negative number for heating.

           Optional node included when the NETCONF Server and transceiver support
           the parameter and has determined the current value.";
      }

      list additional-multi-lane-reporting {
        when "(../identifier ='qsfp')or(../identifier ='qsfp+')";
        key lane;
        config false;
        description
          "Additional reporting according to SFF8436 which specifies real time
          channel monitoring for each transmit and receive channel and includes
          optical input power and Tx bias current. ";

        leaf lane {
          type uint8 {
            range "2..4";
          }
          description
            "the specific lane/channel associated with the report parameters";
        }
        leaf-list interface-names {
          type leafref {
            path "/if:interfaces/if:interface/if:name";
          }
          description
          "Names of all interfaces accessible through a particular lane/channel.";
        }
        leaf rx-power {
          type decimal64{
            fraction-digits 4;
          }
          config false;
          description
            "Measured RX input power in mW.

            Optional node included when the NETCONF Server has determined
            the measured RX power for a particular lane/channel
            - see tabel 7-10 of SFF-8636.";
        }
        leaf tx-bias-current {
          type decimal64{
            fraction-digits 4;
          }
          config false;
          description
            "Measured transmitter laser bias current in mA.

            Optional node included when the NETCONF Server has determined
            the tx bias current for a particular lane/channel
            - see tabel 7-10 of SFF-8636.";
        }
        leaf tx-power {
          type decimal64{
            fraction-digits 4;
          }
          config false;
          description
            "Measured coupled TX output power in mW.

            Optional node included when the NETCONF Server has determined
            the measured coupled TX power or a particular lane/channel
            - see tabel 7010 of SFF-8636.";
        }
      }
    }

  }

  // Top Level Container

  container port-transceivers {
    description
      "Container for Port transceiver information.
      Leaf nodes providing  parameters status and diagnostic
      information for pluggable transceiver module (like SFP,
      SFP+, SFP28)";

    uses transceiver-group;
  }
}

## File: Common Models/Interfaces/o-ran-ethernet-forwarding.yang

module o-ran-ethernet-forwarding {
  yang-version 1.1;
  namespace "urn:o-ran:ethernet-fwd:1.0";
  prefix "o-ran-eft";

  import ietf-yang-types {
    prefix "yang";
  }

  import o-ran-interfaces {
    prefix "or-if";
  }

  import ietf-interfaces {
    prefix "if";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the Ethernet forwarding table of an O-RU.
    This is an option capability used when supporting 'shared cell' operation.

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

  revision "2021-12-01" {
    description
      "version 3.1.0

      1. Typo corrections for british english";

    reference "ORAN-WG4.M.0-v03.00";
  }

  revision "2020-04-17" {
    description
      "version 3.0.0

      1. Initial version";

    reference "ORAN-WG4.M.0-v03.00";
  }

  grouping ethernet-ft {
    description
      "Ethernet forwarding table.";

    leaf aging-time {
      type uint32 {
        range "10..10000000";
      }
      units "seconds";
      default "300";
      description
        "The timeout period in seconds for ageing out
        dynamically-learned forwarding information.";
    }

    list filtering-entry {
      key "address vlan-id";
      config false;
      description
        "List of the entries within the Ethernet forwarding table.
        This list is keyed by the MAC address and VLAN of the Ethernet frame.";

      leaf address {
        type yang:mac-address;
        description
          "A MAC address (unicast, multicast, broadcast) for
          which the device has forwarding and/or filtering
          information.";
      }

      leaf vlan-id {
        type uint16 {
          range "0..4094";
        }
        description
          "VLAN-ID entry in the forwarding table, used during the
          look-up when receiving an in-coming Ethernet frame to determine
          how to forward.

          A value of 0 indicates that the filtering entry is for an un-tagged
          frame/MAC address";
      }

      list port-map {
        key "port-ref";
        description
          "The list of entries composing the port map.";
        leaf port-ref {
          type leafref {
            path "/if:interfaces/if:interface/or-if:port-reference/or-if:port-number";
            }
          description
            "The interface port reference associated with this map.";
        }
      }
    }
  }

  container ethernet-forwarding-table {
    description "Top level container defining forwarding tables for Ethernet";

    uses ethernet-ft;
  }

}

## File: Common Models/Interfaces/o-ran-externalio.yang

module o-ran-externalio {
  yang-version 1.1;
  namespace "urn:o-ran:external-io:1.0";
  prefix "o-ran-io";

  import o-ran-hardware {
    prefix "or-hw";
  }

  import ietf-hardware {
    prefix "hw";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the input state and output configuration for
    external IO.

    Copyright 2023 the O-RAN Alliance.

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

  revision "2023-08-14" {
    description
      "version 13.0.0

      1) Introduction of O-RU Connectors for external IO.";

    reference "ORAN-WG4.M.0-v13.00";
  }

  revision "2019-07-03" {
    description
      "version 1.1.0

      1) backward compatible changes to introduce groupings.";

    reference "ORAN-WG4.M.0-v01.00";
  }

  revision "2019-02-04" {
    description
      "version 1.0.0

      1) imported model from xRAN
      2) changed namespace and reference from xran to o-ran";

    reference "ORAN-WG4.M.0-v01.00";
  }

  grouping external-io-group {
    description "an external io grouping";
    list input {
      key "name";
      config false;
      description
        "Leaf nodes describing external line inputs";
      leaf name {
        type string {
          length "1..255";
        }
        description
        "A unique name that identifies an input port instance.
        This name may be used in fault management to refer to a fault source
        or affected object";
      }
      leaf port-in {
        type uint8;
        description
          "A number which identifies an external input port.";
      }

      leaf line-in {
        type boolean;
        default true;
        description
          "Value TRUE indicates that circuit is open.
           Value FALSE indicates that circuit is closed.

           Usually when nothing is connected to the line the value is TRUE.
           The details of external line-in implementation are HW specific.";
      }

      leaf related-o-ru-connector {
        type leafref {
          path '/hw:hardware/hw:component/hw:name';
        }
        must "derived-from-or-self(deref(current())/../hw:class, 'or-hw:O-RU-EXTIO')";
        description
          "Referenced name of O-RU connector used by the External IO port - input lines.";
      }
    }

    list output {
      key "name";
      config false;
      description
        "Leaf nodes describing external line outputs";
      leaf name {
        type string {
          length "1..255";
        }
        description
          "A name that is unique that identifies an output port instance.
          This name may be used in fault management to refer to a fault source
          or affected object";
      }
      leaf port-out {
        type uint8;
        mandatory true;
        description
          "A number which identifies an external output port.";
      }

      leaf related-o-ru-connector {
        type leafref {
          path '/hw:hardware/hw:component/hw:name';
        }
        must "derived-from-or-self(deref(current())/../hw:class, 'or-hw:O-RU-EXTIO')";
        description
          "Referenced name of O-RU connector used by the External IO port - output lines.";
      }
    }

    list output-setting {
      key "name";

      description
        "List allowing to set output line state";

      leaf name {
        type leafref {
          path "/external-io/output/name";
          require-instance false;
        }
        mandatory true;

        description
          "Name derived from unmodifiable list external-io";
      }

      leaf line-out {
        type boolean;
        default true;
        description
          "Value TRUE indicates that circuit is in its natural state.
           Value FALSE indicates that circuit is not in its natural state.";
      }
    }
  }

  grouping notification-group {
    description "a notification grouping";
    container current-input-notification {
      description "a container for the state of the input ports";
      list external-input {
        key "name";
        description "a list of the input ports and their state";
        leaf name{
          type leafref{
            path "/external-io/input/name";
          }
          description "the name of the ald-port";
        }
        leaf io-port {
          type leafref{
            path  "/external-io/input/port-in";
          }
          description "the external input port";
        }
        leaf line-in {
          type leafref{
            path  "/external-io/input/line-in";
          }
          description "the state of the external input port";
        }
      }
    }
  }

// Top Level Container

  container external-io {
    description
      "External IO information.";
    uses external-io-group;
  }

  notification external-input-change {
    description
      "Notification used to indicate that external line input has changed state";
    uses notification-group;
  }
}

## File: Common Models/Interfaces/o-ran-ald-port.yang

module o-ran-ald-port {
  yang-version 1.1;
  namespace "urn:o-ran:ald-port:1.0";
  prefix "o-ran-ald-port";

  import o-ran-hardware {
    prefix "or-hw";
  }

  import ietf-hardware {
    prefix "hw";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the input state and output configuration for
    the Antenna Line Device capability.

    Copyright 2024 the O-RAN Alliance.

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

  revision "2024-08-12" {
    description
      "version 13.1.0

      1) Improve description of dc-control-support.";

    reference "ORAN-WG4.M.0-v13.00";
  }

  revision "2023-08-14" {
    description
      "version 13.0.0

      1) Introduction of O-RU Connectors for ALD Port.";

    reference "ORAN-WG4.M.0-v13.00";
  }

  revision "2021-12-01" {
    description
      "version 1.3.0

      1) Typographical corrections for british english.";

    reference "ORAN-WG4.M.0-v01.00";
  }

  revision "2021-03-22" {
    description
      "version 1.2.0

      1) typographical corrections in descriptions.";

    reference "ORAN-WG4.M.0-v01.00";
  }

  revision "2019-07-03" {
    description
      "version 1.1.0

      1) backward compatible changes to introduce groupings.";

    reference "ORAN-WG4.M.0-v01.00";
  }

  revision "2019-02-04" {
    description
      "version 1.0.0

      1) imported model from xRAN
      2) changed namespace and reference from xran to o-ran";

    reference "ORAN-WG4.M.0-v01.00";
  }

  feature OVERCURRENT-SUPPORTED {
    description
      "This feature indicates that the equipment supports the over-current notification
      capability.";
  }

// Groupings

  grouping aldport-group {
    description "a port grouping ";
    leaf over-current-supported {
      type boolean;
      config false;
      description
        "Set to TRUE when the equipment supports over-current notifications";
    }

    list ald-port {
      key "name";

      config false;

      description
        "Leaf nodes describing ALD Port";
      leaf name {
        type string {
          length "1..255";
        }
        description
          "A name that is unique that identifies a ALD port instance.
          This name may be used in fault management to refer to a fault source
          or affected object";
      }

      leaf port-id {
        type uint8;
            config false;
            mandatory true;

            description
          "A number which identifies an ALD Port.
          The number of the Physical ALD port connector in the module.
          If the module supports 2 ALD Port connectors, use 0 and 1.";
      }

      leaf dc-control-support{
        type boolean;
        config false;
            mandatory true;

            description
          "It indicates whether the control of on/off in the DC power supply is possible.
           In case of False, power control is not supported and state of power supply will meet requiremments of ALD,
           i.e. power supply always on for AISG 2.0 equipment.";
      }

      leaf dc-enabled-status {
        when "../dc-control-support = 'true'";
        type boolean;
        default false;
        description
          "Status of DC voltage enabled on antenna line.
          Valid only in case dc-control-support is true.";
      }

      leaf supported-connector{
        type enumeration {
              enum ANTENNA_CONNECTOR {
                description
                    "This ALD port is related to antenna connector";
              }
              enum RS485_PORT {
                description
                    "This ALD port is related to RS485 port";
              }
            }
            config false;
            mandatory true;

            description
            "Informs about the connectors of Module which ALDs are connected to.
            This value is depending on HW design.";
      }

      leaf-list related-o-ru-connectors {
        type leafref {
          path '/hw:hardware/hw:component/hw:name';
        }
        must "derived-from-or-self(deref(current())/../hw:class, 'or-hw:O-RU-ANTENNA-CONNECTOR') or
        derived-from-or-self(deref(current())/../hw:class, 'or-hw:O-RU-RS485')";
        description
          "Referenced name of O-RU connector(s) used by the ALD port. Note: plurality of connectors
           related to single ALD port means, that HDLC stack is common for all of reported connectors.
           When this node exists, value provided in node 'supported-connector' is ignored and leaf-list
           'supported-o-ru-connectors' takes precedence";
      }
    }

    list ald-port-dc-control {
      key "name";

      description
        "Container needed to manage DC on ALD ports";

      leaf name {
        type leafref {
          path "/ald-ports-io/ald-port/name";
          require-instance false;
        }
        mandatory true;

        description
          "Name derived from unmodifiable list ald-port";
      }

      leaf dc-enabled{
        type boolean;

        description
          "If dc-control-support is true case, this leaf is effective.
          If dc-control-support is not true this leaf makes no action
          In case of true, the power supply shall be turned on.";
      }
    }
  }

  grouping overcurrent-group {
    description "overcurrent group";
    container overload-condition {
      description
        "Container used in notification";

      leaf-list overloaded-ports {
        type leafref {
          path "/ald-ports-io/ald-port/name";
        }
        description
          "List of overloaded ports";
      }

      leaf-list related-o-ru-connectors {
        type leafref {
          path '/hw:hardware/hw:component/hw:name';
        }
        must "derived-from-or-self(deref(current())/../hw:class, 'or-hw:O-RU-ANTENNA-CONNECTOR') or
        derived-from-or-self(deref(current())/../hw:class, 'or-hw:O-RU-RS485')";
        description
          "Optional extension to provide exact information about O-RU connector(s)
          affected by overcurrent condition and related to specific ALD port
          overcurrent condition has been reported.";
      }
    }
  }

  grouping dc-enabled-group {
    description "dc enabled group";
    list ald-port {
      key name;
      description
        "list of ald-ports that has its dc-enabled-status changed";
      leaf name{
        type leafref {
          path "/ald-ports-io/ald-port/name";
        }
        description "Name of port which has changed";
      }
      leaf dc-enabled-status{
        type leafref {
          path "/ald-ports-io/ald-port/dc-enabled-status";
        }
        description "New status of dc-enabled-status";
      }
    }
  }

// Top Level Container

  container ald-ports-io {
    description
      "ALD port information.
       ALD port of the equipment that can be used to connect External Equipment (Antenna Line Devices).
       Communication uses AISG over HDLC.
       Physical connection depends on connector type offered by the port (RS-485 or antenna line)
       Note: Single instance of ALD Port can point to more than one antenna line devices.";

    uses aldport-group;
  }

  notification overcurrent-report {
    if-feature OVERCURRENT-SUPPORTED;

    description
      "The equipment is able to report overcurrent condition about Port.
      This function is depending on HW design.
      The notification depend on power consumption which connected ALD devices and module.";

    uses overcurrent-group;
  }

  notification dc-enabled-status-change {
    description
      "The equipment is able to report the change of 'dc-enabled-status' of the ald-port.
      This is applicable when the leaf 'dc-control-support' of the ald-pot is 'TRUE'.";

    uses dc-enabled-group;
  }
}

## File: RU Specific Models/Radio/o-ran-delay-management.yang

module o-ran-delay-management {
  yang-version 1.1;
  namespace "urn:o-ran:delay:1.0";
  prefix "o-ran-delay";

  import o-ran-wg4-features {
    prefix "feat";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module covers off aspects of O-DU to O-RU delay management,
    including configuration data related to O-RU transmission and reception
    windows.

    Copyright 2024 the O-RAN Alliance.

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

  revision "2024-08-12" {
    description
      "version 16.0.0

      1) Removing the range to align bandwidth type to same bandwidth type as
      in uplane-config module and module-cap modules.
      2) Add in Ta3-2g data processing delay";

    reference "ORAN-WG4.M.0-v16.00";
  }

  revision "2024-04-15" {
    description
      "version 15.0.0

      1) add support for for beamforming list and delay profiles(s) per endpoint.";

    reference "ORAN-WG4.M.0-v15.00";
  }

  revision "2022-08-15" {
    description
      "version 10.0.0

      1) introducing new feature for ACK NACK feedback.";

    reference "ORAN-WG4.M.0-v10.00";
  }

  revision "2021-12-01" {
    description
      "version 8.0.0

      1) typographical corrections in descriptions.
      2) add new schema node beam-context-gap-period.";

    reference "ORAN-WG4.M.0-v08.00";
  }

  revision "2020-08-10" {
    description
      "version 4.0.0

      1) introduction of new t1a-max-cp-dl leaf to enable decoupled timing between C- and U-Plane";

    reference "ORAN-WG4.M.0-v04.00";
  }

  revision "2019-07-03" {
    description
      "version 1.1.0

      1) fixing descriptions of ta3-min and ta3-max.
      2) introducing grouping/uses to enable model re-use by WG5";

    reference "ORAN-WG4.M.0-v01.00";
  }

  revision "2019-02-04" {
    description
      "version 1.0.0

      1) imported model from xRAN
      2) changed namespace and reference from xran to o-ran";

    reference "ORAN-WG4.M.0-v01.00";
  }

  feature ADAPTIVE-RU-PROFILE {
    description
      "This feature indicates that the O-RU supports adaptive O-RU delay profile
      based on information provided by the NETCONF client.";
  }

  typedef bandwidth {
    type uint32;
    units kilohertz;
    description
      "transmission bandwidth configuration in units of kHz -
      covering NB-IoT through to New Radio.
      Value shall correspond to a value defined in 38.104.";
  }

  grouping bandwidth-configuration {
    description
      "Grouping for bandwidth and SCS configuration";

    leaf bandwidth {
      type bandwidth;
      description
        "transmission bandwidth configuration in units of kHz -
        covering NBIoT through to New Radio - see 38.104";
    }
    leaf subcarrier-spacing {
      type uint32 {
        range "0 .. 240000 ";
      }
      units Hertz;
      description "sub-carrier spacing in Hz";
    }
  }

  grouping t2a-up {
    description
      "configuration of t2a for uplink";

    leaf t2a-min-up {
      type uint32;
      units nanoseconds;
      mandatory true;
      description
        "the minimum O-RU data processing delay between receiving IQ data
        message over the fronthaul interface and transmitting
        the corresponding first IQ sample at the antenna";
    }
    leaf t2a-max-up {
      type uint32;
      units nanoseconds;
      mandatory true;
      description
        "the earliest allowable time when a data packet is received before
        the corresponding first IQ sample is transmitted at the antenna";
    }
  }

  grouping t2a-cp-dl {
    description
      "Grouping for t2a CP for downlink";

    leaf t2a-min-cp-dl {
      type uint32;
      units nanoseconds;
      mandatory true;
      description
        "the minimum O-RU data processing delay between receiving downlink
        real time control plane message over the fronthaul interface and
        transmitting the corresponding first IQ sample at the antenna";
    }
    leaf t2a-max-cp-dl {
      type uint32;
      units nanoseconds;
      mandatory true;
      description
        "the earliest allowable time when a downlink real time control message
        is received before the corresponding first IQ sample is transmitted at
        the antenna";
    }
  }

  grouping ta3 {
    description
      "Grouping for ta3 configuration";

    leaf ta3-min {
      type uint32;
      units nanoseconds;
      mandatory true;
      description
        "the minimum O-RU data processing delay between receiving an IQ sample
        at the antenna and transmitting the first data sample over the
        fronthaul interface";
    }
    leaf ta3-max {
      type uint32;
      units nanoseconds;
      mandatory true;
      description
        "the maximum O-RU data processing delay between receiving an IQ sample
        at the antenna and transmitting the last data sample over the
        fronthaul interface";
    }
  }

  grouping t2a-cp-ul {
    description
      "Grouping for t2a CP uplink";

    leaf t2a-min-cp-ul {
      type uint32;
      units nanoseconds;
      mandatory true;
      description
        "the minimum O-RU data processing delay between receiving real time
        up-link control plane message over the fronthaul interface and
        receiving the first IQ sample at the antenna";
    }
    leaf t2a-max-cp-ul {
      type uint32;
      units nanoseconds;
      mandatory true;
      description
        "the earliest allowable time when a real time up-link control message
        is received before the corresponding first IQ sample is received  at
        the antenna";
    }
  }

  grouping ta3-ack {
    description
      "Grouping for ta3-ack configuration";
    leaf ta3-min-ack {
      type int32;
      units nanoseconds;
      description
        "the minimum delay between the DL/UL air reference point (tDL=0 or tUL=0) of symbol M
        and the time O-RU sends section type 8 (ACK/NACK feedback) to O-DU.
        This value can be negative, which indicates it is in advance of the air reference point.
        This leaf only exists if section extension 22 (ACK/NACK request) and section type 8 (ACK/NACK feedback)
        are supported by at least one endpoint.";
    }

    leaf ta3-max-ack {
      type int32;
      units nanoseconds;
      description
        "the maximum delay between the DL/UL air reference point (tDL=0 or tUL=0) of symbol M
        and the time O-RU sends section type 8 (ACK/NACK feedback) to O-DU.
        This value can be negative, which indicates it is in advance of the air reference point.
        This leaf only exists if section extension 22 (ACK/NACK request) and section type 8 (ACK/NACK feedback)
        are supported by at least one endpoint.";
    }
  }

  grouping ta3-2g {
    description
      "Grouping for ta3-2g configuration";

    leaf ta3-min-2g {
      if-feature feat:RRM-MEAS-REPORTING;
      type uint32;
      units nanoseconds;
      description
        "The minimum O-RU data processing delay between receiving an IQ sample
        at the antenna and transmitting a C-Plane message carrying RRM measurements
        over the fronthaul interface.

        Please refer to CUS specification clause 4.4.3 for more details.";
    }
    leaf ta3-max-2g {
      if-feature feat:RRM-MEAS-REPORTING;
      type uint32;
      units nanoseconds;
      description
        "The maximum O-RU data processing delay between receiving an IQ sample
        at the antenna and transmitting a C-Plane message carrying RRM measurements
        over the fronthaul interface.

        Please refer to CUS specification clause 4.4.3 for more details.";
    }
  }

  grouping ru-delay-profile {
    description
      "Grouping for RU delay profile";

    uses t2a-up;
    uses t2a-cp-dl;

    leaf tcp-adv-dl {
      type uint32;
      units nanoseconds;
      mandatory true;
      description
        "the time difference (advance) between the reception window for
        downlink real time Control messages and reception window for the
        corresponding IQ data messages.";
    }

    uses ta3;
    uses t2a-cp-ul;
    uses ta3-ack;
    uses ta3-2g;
  }

  grouping o-du-delay-profile {
    description
      "Grouping for O-DU delay profile";

    leaf t1a-max-up {
      type uint32;
      units nanoseconds;
      description
        "the earliest possible time which the O-DU can support transmitting
        an IQ data message prior to transmission of the corresponding IQ
        samples at the antenna";
    }
    leaf tx-max {
      type uint32;
      units nanoseconds;
      description
        "The maximum amount of time which the O-DU requires to transmit
        all downlink user plane IQ data message for a symbol";
    }
    leaf ta4-max {
      type uint32;
      units nanoseconds;
      description
        "the latest possible time which the O-DU can support receiving the
        last uplink user plane IQ data message for a symbol.";
    }
    leaf rx-max {
      type uint32;
      units nanoseconds;
      description
        "The maximum time difference the O-DU can support between
        receiving the first user plane IQ data message for a symbol and
        receiving the last user plane IQ data message for the same symbol";
    }
    leaf t1a-max-cp-dl {
      type uint32;
      units nanoseconds;
      description
        "The earliest possible time which the O-DU can support transmitting the
        downlink real time control message prior to transmission of the
        corresponding IQ samples at the antenna.";
    }
  }

  grouping t12 {
    description
      "Grouping for t12";

    leaf t12-min {
      type uint32;
      units nanoseconds;
      description
        "the minimum measured delay between DU port-ID and O-RU port-ID";
    }
// additional leaf added by Samsung
    leaf t12-max {
      type uint32;
      units nanoseconds;
      description
        "the maximum measured delay between CU port-ID and O-RU port-ID";
    }
  }

  grouping t34 {
    description
      "Grouping for t34";

    leaf t34-min {
      type uint32;
      units nanoseconds;
      description
        "the minimum measured delay between O-RU port-ID and CU port-ID";
    }
// additional leaf added by Samsung
    leaf t34-max {
      type uint32;
      units nanoseconds;
      description
        "the maximum measured delay between O-RU port-ID and CU port-ID";
    }
  }

  grouping non-default-ru-delay-profile {
    description
      "Grouping for O-RU delay profile different from the default value in ru-delay-profile.";
     leaf t2a-min-up {
      type uint32;
      units nanoseconds;
      description
        "the minimum O-RU data processing delay between receiving IQ data
        message over the fronthaul interface and transmitting
        the corresponding first IQ sample at the antenna";
    }
    leaf t2a-max-up {
      type uint32;
      units nanoseconds;
      description
        "the earliest allowable time when a data packet is received before
        the corresponding first IQ sample is transmitted at the antenna";
    }
    leaf t2a-min-cp-dl {
      type uint32;
      units nanoseconds;
      description
        "the minimum O-RU data processing delay between receiving downlink
        real time control plane message over the fronthaul interface and
        transmitting the corresponding first IQ sample at the antenna";
    }
    leaf t2a-max-cp-dl {
      type uint32;
      units nanoseconds;
      description
        "the earliest allowable time when a downlink real time control message
        is received before the corresponding first IQ sample is transmitted at
        the antenna";
    }
    leaf tcp-adv-dl {
      type uint32;
      units nanoseconds;
      description
        "the time difference (advance) between the reception window for
        downlink real time Control messages and reception window for the
        corresponding IQ data messages.";
    }
    leaf ta3-min {
      type uint32;
      units nanoseconds;
      description
        "the minimum O-RU data processing delay between receiving an IQ sample
        at the antenna and transmitting the first data sample over the
        fronthaul interface";
    }
    leaf ta3-max {
      type uint32;
      units nanoseconds;
      description
        "the maximum O-RU data processing delay between receiving an IQ sample
        at the antenna and transmitting the last data sample over the
        fronthaul interface";
    }
    leaf t2a-min-cp-ul {
      type uint32;
      units nanoseconds;
      description
        "the minimum O-RU data processing delay between receiving real time
        up-link control plane message over the fronthaul interface and
        receiving the first IQ sample at the antenna";
    }
    leaf t2a-max-cp-ul {
      type uint32;
      units nanoseconds;
      description
        "the earliest allowable time when a real time up-link control message
        is received before the corresponding first IQ sample is received  at
        the antenna";
    }
    leaf ta3-min-ack {
      type int32;
      units nanoseconds;
      description
        "the minimum delay between the DL/UL air reference point (tDL=0 or tUL=0) of symbol M
        and the time O-RU sends section type 8 (ACK/NACK feedback) to O-DU.
        This value can be negative, which indicates it is in advance of the air reference point.
        This leaf only exists if section extension 22 (ACK/NACK request) and section type 8 (ACK/NACK feedback)
        are supported by at least one endpoint.";
    }
    leaf ta3-max-ack {
      type int32;
      units nanoseconds;
      description
        "the maximum delay between the DL/UL air reference point (tDL=0 or tUL=0) of symbol M
        and the time O-RU sends section type 8 (ACK/NACK feedback) to O-DU.
        This value can be negative, which indicates it is in advance of the air reference point.
        This leaf only exists if section extension 22 (ACK/NACK request) and section type 8 (ACK/NACK feedback)
        are supported by at least one endpoint.";
    }

    uses ta3-2g;
  }

  grouping delay-management-group {
    description "a delay management grouping";
    list bandwidth-scs-delay-state {
      key "bandwidth subcarrier-spacing";
      description
        "Array of structures containing sets of parameters for delay management.";

      uses bandwidth-configuration;

      container ru-delay-profile {
        config false;
        description "container for O-RU delay parameters";

        uses ru-delay-profile;
      }
    }

    list non-default-ru-delay-profile {
      if-feature feat:BF-DELAY-PROFILE;
      key "delay-profile-id";
      description
        "Sets of parameters defined when o-ru supported multiple delay profiles,
        only the parameters that are different from the default delay profile are defined.";
      leaf delay-profile-id {
        type uint16 {
          range "1..max";
        }
        description
          "Used to identify the set of delay profile that are different from the default delay profile.
          Value '0' is reserved to refer to default value";
        }
      list non-default-bandwidth-scs-delay-state {
        key "bandwidth subcarrier-spacing";
        description
          "Array of structures containing sets of parameters for delay management.";
        uses bandwidth-configuration;
        container non-default-ru-delay-profile {
          config false;
          description
            "O-RU delay parameters that are different from the default delay profile.
            If a parameter doesn't exist, this parameter will use the defalt value determined in ru-delay-profile.";
        uses non-default-ru-delay-profile;
        }
      }
    }

    container adaptive-delay-configuration {
      if-feature ADAPTIVE-RU-PROFILE;
      description "container for adaptive delay parameters";
      list bandwidth-scs-delay-state {
        key "bandwidth subcarrier-spacing";
        description
          "Array of structures containing sets of parameters for delay management.";

        uses bandwidth-configuration;

        container o-du-delay-profile {
          description
            "O-DU provided delay profile for adaptive delay configuration";

          uses o-du-delay-profile;
        }
      }

      container transport-delay {
        description
          "O-DU provided transport-delay parameters";
        uses t12;
        uses t34;
      }
    }

    leaf beam-context-gap-period {
      type uint16;
      units microseconds;
      description
        "Time gap between the end of reception window of the C-Plane message(Msg-A) with new beam weights for a given beamId and end of the reception window
        of the C-Plane message(Msg-B) that cites the same beamId without weights in the new context.
        Note: Value of '0' indicates that the end of the Msg-A and Msg-B reception windows are perfectly aligned, which should allow Msg-B to use the new
        beamforming weights with a '0' microsecond beam-context-gap-period. Value of '65535' implies infinite gap, which means a beamId may not be reused
        at all in a different context (applicable only to weight-based dynamic beamforming). If O-DU chooses not to interpret/honor this value, behaviour
        of O-RU is unpredictable if a beamId has new weights loaded in one context and is reused in a different context. Please refer the CUS-Plane spec
        Section 'Weight-based dynamic beamforming' for detailed description";
    }
  }
  container delay-management {
    description "top-level tree covering off O-DU to O-RU delay management";

    uses delay-management-group;
  }
}

## File: RU Specific Models/Radio/o-ran-compression-factors.yang

module o-ran-compression-factors {
  yang-version 1.1;
  namespace "urn:o-ran:compression-factors:1.0";
  prefix "o-ran-compression-factors";

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the module capabilities for
    the O-RAN Radio Unit U-Plane configuration.

    Copyright 2024 the O-RAN Alliance.

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

  revision "2024-08-12" {
    description
      "version 16.0.0

      1) Clarify handling of deprecated leaf compression-format.
      2) Add in SINR compression details";

   reference "ORAN-WG4.M.0-v16.00";
  }

  revision "2023-08-14" {
    description
      "version 13.0.0

      1) New compression methods BFP-SRES-MASK-IN-SEC-HEADER and MOD-SRES-MASK-IN-SEC-HEADER.";

   reference "ORAN-WG4.M.0-v13.00";
  }

  revision "2021-12-01" {
    description
      "version 8.0.0

      1) typographical corrections in descriptions.
      2) Configuration for Beamforming weights were added together with changes
         and updates to compressions.
      3) add new beamspace compression enumeration for BEAMSPACE_TYPEII.";

   reference "ORAN-WG4.M.0-v08.00";
  }

  revision "2021-03-22" {
   description
     "version 4.1.0

     1) typographical corrections in descriptions.";

   reference "ORAN-WG4.M.0-v04.00";
  }

  revision "2020-08-10" {
   description
     "version 4.0.0

     1) supporting compression types per endpoint
     2) adding feature for configurable fs-offset for compression";

   reference "ORAN-WG4.M.0-v04.00";
  }

   revision "2020-04-17" {
    description
      "version 3.0.0

      1) adding selective RE sending compression types";

    reference "ORAN-WG4.M.0-v03.00";
  }

  revision "2019-07-03" {
    description
      "version 1.1.0

      1) changes related to compression bit-width presentation";

    reference "ORAN-WG4.M.0-v01.00";
  }

  revision "2019-02-04" {
    description
      "version 1.0.0

      1) imported model from xRAN
      2) changed namespace and reference from xran to o-ran";

    reference "ORAN-WG4.M.0-v01.00";
  }

  feature CONFIGURABLE-FS-OFFSET {
    description
      "Presence of this feature means that O-RU supports configurable fs-offset for compression.";
  }

  typedef ci-compression-method-def {
    type enumeration {
      enum NO_COMPRESSION {
        description
          "No compression will be used";
      }

      enum BLOCK_FLOATING_POINT {
        description
          "Block floating point compression and decompression will be used";
      }

      enum BLOCK_SCALING {
        description
          "Block scaling compression and decompresion will be used";
      }

      enum U_LAW {
        description
          "u-Law compression and decompresion method will be used";
      }
    }
    description
      "Available compression methods for channel information (e.g., ST6).";
  }

  typedef compression-type-def {
    type enumeration {
      enum STATIC {
        description
          "Indicates that static compression method will be used (both compression and IQ bitwidth)";
      }
      enum DYNAMIC {
        description
          "Indicates that dynamic compression method will be used";
      }
    }
    description
      "Compression type that O-DU wants to be supported";
  }

  typedef bf-compression-method-def {
    type enumeration {
      enum NO_COMPRESSION {
        description
          "No compression will be used";
      }
      enum BLOCK_FLOATING_POINT {
        description
          "Block floating point compression and decompression will be used";
      }

      enum BLOCK_SCALING {
        description
          "Block scaling compression and decompresion will be used";
      }

      enum U_LAW {
        description
          "u-Law compression and decompresion method will be used";
      }

      enum BEAMSPACE {
        description
          "Beamspace compression and decompression will be used";
      }

      enum VOID_1 {
        description
          "Leftover of modulation, not to be used for beamforming weights";
      }

      enum VOID_2 {
        description
          "Leftover of block-floating-point-selective-re-sending, not to be used for beamforming weights";
      }

      enum VOID_3 {
        description
          "Leftover of modulation-compression-selective-re-sending, not to be used for beamforming weights";
      }

      enum BEAMSPACE_TYPEII {
        description
          "Beamspace compression typeII and decompression will be used ";
      }
    }
    description
      "Available compression methods for beamforming weights.";
  }

  typedef compression-method-def {
    type enumeration {
      enum NO_COMPRESSION {
        description
          "No compression";
      }
      enum BLOCK_FLOATING_POINT {
        description
          "Block floating point compression and decompression method";
      }

      enum BLOCK_SCALING {
        description
          "Block scaling compression and decompresion method";
      }

      enum U_LAW {
        description
          "u-Law compression and decompresion method";
      }

      enum VOID_1 {
        description
          "Leftover of beamspace, not to be used for IQ data.";
      }

      enum MODULATION {
        description
          "Modulation compression and decompression method";
      }

      enum BLOCK-FLOATING-POINT-SELECTIVE-RE-SENDING {
        description
          "block floating point with selective re sending
          compression and decompression method";
      }

      enum MODULATION-COMPRESSION-SELECTIVE-RE-SENDING {
        description
          "modulation compression with selective re sending
          compression and decompression method";
      }
      enum BFP-SRES-MASK-IN-SEC-HEADER {
        description
          "block floating point with selective re sending
          compression and decompression method with selective re sending mask in the section header ";
      }

      enum MOD-SRES-MASK-IN-SEC-HEADER {
        description
          "modulation compression with selective re sending
          compression and decompression method with selective re sending mask in the section header";
      }
    }
    description
      "Available compression methods for the data.";
  }

  typedef sinr-compression-method-def {
    type enumeration {
      enum BLOCK_FLOATING_POINT {
        description
          "Block floating point compression and decompression will be used";
      }

      enum NO_COMPRESSION {
        description
          "No compression will be used";
      }
    }
    description
      "Available compression methods for the SINR.";
  }

  grouping compression-method-grouping {
    description
      "Grouping for compression method.";

    leaf iq-bitwidth {
      type uint8;
      description
        "Bit-width to be used in compression";
    }

    leaf compression-method {
      type compression-method-def;
      description
        "Compression method which can be supported by the O-RU";
    }
  }

  grouping compression-details {
    description "";

    leaf iq-bitwidth {
      type uint8;
      description
        "Bitwidth to be used in compression";
    }

    leaf compression-type {
      type compression-type-def;
      mandatory true;
      description
        "Compression type that O-DU wants to be supported";
    }

    leaf bitwidth {
      when "../compression-type = 'STATIC'";
      type uint8;
      status deprecated;
      description
        "Bitwidth to be used in compression.
        This has since been replaced in M-Plane version
        2.0.0 with the iq-bitwidth schema node";
    }

    leaf compression-method {
      type compression-method-def;
      description
        "Compression method which can be supported by the O-RU";
    }

    uses compresion-format-grp {
      status deprecated;
    }
  }

  grouping bf-compression-details {
    description "Compression formats defined for beamforming";

    leaf iq-bitwidth {
      type uint8;
      description
        "Bitwidth to be used in compression";
    }

    leaf compression-type {
      type compression-type-def;
      mandatory true;
      description
        "Compression type that O-DU wants to be supported";
    }

    leaf bitwidth {
      when "../compression-type = 'STATIC'";
      type uint8;
      status deprecated;
      description
        "Bitwidth to be used in compression.
        This has since been replaced in M-Plane version
        2.0.0 with the iq-bitwidth schema node";
    }

    leaf compression-method {
      type bf-compression-method-def;
      description
        "Compression method which can be supported by the beamforming";
    }

    uses compresion-format-grp {
      status deprecated;
    }
  }

  grouping sinr-compression-details {
    description "Compression formats defined for SINR";

    leaf sinr-bitwidth {
      type uint8;
      description
        "Bitwidth to be used in compression";
    }

    leaf sinr-compression-method {
      type sinr-compression-method-def;
      description
        "Compression method which can be supported by the SINR.";
    }

    leaf sinr-block-size {
      type uint8;
      description
        "Block size used for reporting SINR.
        If the parameter is absent, then the SINR values are sent without zero-padding
        i.e., the block size is equal to the number of SINR values

        Please refer to CUS specification clause 7.2.10 for more details.";
    }
  }

// *********** Deprecated ***********

  grouping compression-formats {
    status deprecated;
    description
      "Grouping deicated to list compression formats as choice.";

    uses compresion-format-grp {
      status deprecated;
    }
  }

  grouping compresion-format-grp {
    status deprecated;
    description
      "Grouping to for compression format choice";

    choice compression-format {
      status deprecated;
      description
        "Choice of compression format for particular element.
         Note: This method is deprecated. All should be done as emumeration as details are configured
         by udCompHdr in CU-Plane messaging.
         NOTE: Changing the configuration from any compression format to no compression would require
         a delete-config followed by an edit-config";

      case no-compresison {
        description "Compression for beam weights is not supported.";
      }

      case block-floating-point {
        description "Block floating-point compression and decompression is supported.";

        leaf exponent {
          type uint8 {
            range "4";
          }
          description "Exponent bit width size in number of bits used when encoding in udCompParam.";
        }
      }

      case block-floating-point-selective-re-sending {
        description
          "Block floating-point with selective re sending compression and decompression is supported.";

        leaf sres-exponent {
          type uint8 {
            range "4";
          }
          description "Exponent bit width size in number of bits used when encoding in udCompParam.";
        }
      }

      case block-scaling {
        description "Block scaling compression and decompression is supported.";
        leaf block-scalar {
          type uint8;
            description
              "Common scaler for compressed PRB";
        }
      }

      case u-law {
        description "u-Law compression and decompression method is supported.";
        leaf comp-bit-width {
          type uint8 {
            range "0..15";
          }
          description "Bit with for u-law compression";
        }
        leaf comp-shift {
          type uint8 {
            range "0..15";
          }
          description
            "the shift applied to the entire PRB";
        }
      }

      case beam-space-compression {
        description "Beamspace compression and decompression is supported. Applies to beamforming weights only.";
        leaf-list active-beam-space-coeficient-mask {
          type uint8;
          description
            "active beamspace coefficient indices associated with the compressed beamforming vector";
        }
        leaf block-scaler {
          type uint8;
          description
            "Common scaler for compressed beamforming coefficients";
        }
      }

      case modulation-compression {
        description "Modulation compression and decompression is supported.";
        leaf csf {
          type uint8 {
            range "0..1";
          }
          description "Constellation shift flag";
        }

        leaf mod-comp-scaler {
          type uint16 {
            range "0..32767";
          }
          description "Modulation compression scaler value.";
        }
      }

      case modulation-compression-selective-re-sending {
        description "Modulation compression with selective re sending and decompression is supported.";
        leaf sres-csf {
          type uint8 {
            range "0..1";
          }
          description "Constellation shift flag";
        }

        leaf sres-mod-comp-scaler {
          type uint16 {
            range "0..32767";
          }
          description "Modulation compression scaler value.";
        }
      }

    }
  }

  grouping compression-params {
    status deprecated;
    description
      "Parameters to define compression";

    leaf compression-type {
      type compression-type-def;
      mandatory true;
      description
        "Compression type that O-DU wants to be supported";
    }

    leaf bitwidth {
      when "../compression-type = 'STATIC'";
      type uint8;
      status deprecated;
      description
        "Bit-width to be used in compression.
        This has since been replaced in M-Plane version
        2.0.0 with the iq-bitwidth schema node";
    }

    uses compression-formats {
      status deprecated;
    }
  }

  grouping compression-parameters {
    status deprecated;
    description
      "Parameters used to define description type";

    leaf iq-bitwidth {
      type uint8;
      description
        "Bit-width to be used in compression";
    }

    uses compression-formats {
      status deprecated;
    }
  }

  grouping format-of-iq-sample {
    status deprecated;
    description
      "Indicates module capabilities about IQ samples";

    leaf dynamic-compression-supported {
      type boolean;

      description
        "Informs if radio supports dynamic compression method";
    }

    leaf realtime-variable-bit-width-supported {
      type boolean;

      description
        "Informs if O-RU supports real-time variable bit with";
    }

    list compression-method-supported {
      status deprecated;
      uses compression-parameters {
        status deprecated;
      }

      description
        "List of supported compression methods by O-RU
         Note: if O-RU supports different compression methods per endpoint
               then please refer do endpoints to have information what
               exactly is supported on a particular endpoint";
    }

    leaf syminc-supported {
      type boolean;

      description
        "Informs if symbol number increment command in a C-Plane is
         supported or not";
    }

    leaf regularization-factor-se-supported {
      type boolean;

      description
        "Informs if regularizationFactor in section type 5 is
         supported(true) or not(false)";
    }

    leaf little-endian-supported {
      type boolean;
      default false;

      description
        "All O-RUs support bigendian byte order. This node informs if module supports the
        the optional capability for little endian byte order for C/U plane data flows.

        Note - little endian support does not invalidate bigendian support.";
    }
  }

// *********** Deprecated End ***********

}

## File: RU Specific Models/Radio/o-ran-beamforming.yang

module o-ran-beamforming {
  yang-version 1.1;
  namespace "urn:o-ran:beamforming:1.0";
  prefix "o-ran-bf";

  import o-ran-uplane-conf {
    prefix "up";
  }

  import o-ran-module-cap {
    prefix "mcap";
  }

  import o-ran-compression-factors {
    prefix "cf";
  }

  import o-ran-wg4-features {
    prefix "feat";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the beamforming capabilities of an O-RU.
    Only O-RUs that support beamforming shall support this module.

    Copyright 2024 the O-RAN Alliance.

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

  revision 2024-12-23 {
    description
      "version 17.0.0

      1) Deprecate per-band-config list related RPC and Notification";

    reference "ORAN-WG4.M.0-v17.00";
  }

  revision "2024-08-12" {
    description
      "version 16.0.0

      1) add DMRS-BF capabilities.
      2) add new capability to update beamforming configuration without deactive tx/rx-array-carrier ";

    reference "ORAN-WG4.M.0-v16.00";
  }

  revision "2024-04-15" {
    description
      "version 15.0.0

      1) clarifying descriptions inside capabilities-group.
      2) add support for multiple beamid tables.
      3) remove import by revision date for o-ran-compression-factors. ";

    reference "ORAN-WG4.M.0-v15.00";
  }

  revision "2023-04-10" {
    description
      "version 11.1.0

      1) Added h(k) mapping ";

    reference "ORAN-WG4.M.0-v11.00";
  }

  revision "2022-12-05" {
    description
      "version 11.0.0

      1) introduce p-dash parameter";

    reference "ORAN-WG4.M.0-v11.00";
  }

  revision "2022-08-15" {
    description
      "version 8.1.0

      1) clarified description statements for component carrier
      2) clarified path/folder description";

    reference "ORAN-WG4.M.0-v08.00";
  }

  revision "2021-12-01" {
    description
      "version 8.0.0

      1) typographical corrections in descriptions.
      2) Configuration for Beamforming weights were added together with changes and updates
         to compressions.";

    reference "ORAN-WG4.M.0-v08.00";
  }

  revision "2021-07-26" {
    description
      "version 2.3.0

      1) Ensuring beam-ids can only be 15 bits.
      2) Correcting maximum number of UEs from 8 bit to 15 bit";

    reference "ORAN-WG4.M.0-v02.00";
  }
  revision "2021-03-22" {
    description
      "version 2.2.0

      1) typographical corrections in descriptions.";

    reference "ORAN-WG4.M.0-v02.00";
  }

  revision "2020-04-17" {
    description
      "version 2.1.0

      1) corrected error where typedef refers to deprecated beam-id by
      introducing new typedef and deprecating leafs defining coarse/fine
      relationships that refer to beam-id and replacing with new ones based
      on capability grouping";

    reference "ORAN-WG4.M.0-v02.00";
  }

  revision "2019-07-03" {
    description
      "version 2.0.0

      1) re-designed/switched from per band to per capabilities-group for
      addition flexibility
      2) added in new beam tilt feature
      3) adding possibilities to provide more compression types for beamforming
      4) Adding possibility to configure beamforming per capabilities group
      5) corrected xPATH boolean check from TRUE to true";

    reference "ORAN-WG4.M.0-v02.00";
  }

  revision "2019-02-04" {
    description
      "version 1.0.0

      1) imported model from xRAN
      2) changed namespace and reference from xran to o-ran";

    reference "ORAN-WG4.M.0-v01.00";
  }

  feature MODIFY-BF-CONFIG {
    description
      "This feature indicates that the O-RU supports an optional feature to
      modify beamforming configuration information";
  }

  feature BEAM-TILT {
    description
      "This feature indicates that the O-RU supports an optional feature to
      allows to shift beam characteristic of all predefined-beams in elevation
      and/or azimuth direction (i.e. changing the service area or sector
      coverage) while preserving the beam adjacency among the beams within
      the service area ";
  }

  typedef EQ-SCALING-FUNCTION-TYPE{
    type enumeration {
      enum SCALING-F-1 {
        description
          "For scaling function 1, G = SINR/(1+SINR) ";
      }
      enum SCALING-F-2 {
        description
          "For scaling function 2, G = 1";
      }
    }

    description
      "DMRS-BF-EQ, scaling function type";
  }

  typedef beam-reference {
    type leafref {
      path "/o-ran-bf:beamforming-config/o-ran-bf:per-band-config/o-ran-bf:beam-information/o-ran-bf:beamforming-properties/o-ran-bf:beam-id";
    }
    description
      "This type is used by data models that need to reference a beam.";
  }

  typedef beam-capabilities-reference {
    type leafref {
      path "/o-ran-bf:beamforming-config/o-ran-bf:capabilities-groups/o-ran-bf:beam-information/o-ran-bf:beamforming-properties/o-ran-bf:beam-id";
    }
    description
      "This type is used by data models that need to reference a beam based on capability group.";
  }

  grouping beamforming-parameters {
    leaf max-number-of-beam-ids {
      type uint16 {
        range "min .. 32767";
      }

      mandatory true;
      description
        "Maximum number of supported Beam ID assigned to domain beamforming control";
    }

    leaf initial-beam-id {
      type uint16 {
        range "min .. 32767";
      }
      mandatory true;
      description
        "First Beam ID that can be used for addressing of domain beams";
    }

    description "Group of common beamforming parameters";
  }

  grouping granularity-parameters {
    leaf frequency-granularity {
      type enumeration {
        enum CC {
          description
            "Frequency granularity: per Component Carrier";
        }

        enum BAND {
          description
            "Frequency granularity: per band";
        }
      }
      mandatory true;
      description "Supported time granularity of time-domain beamforming.";
    }

    leaf time-granularity {
      type enumeration {
        enum SLOT {
          description
            "Time granularity: per slot";
        }

        enum SYMBOL {
          description
            "Time granularity: per symbol";
        }
      }
      mandatory true;
      description "Supported time granularity of time-domain beamforming.";
    }
    description "";
  }

  grouping array-lists {
    description
      "Grouping for array lists";

    leaf-list tx-array {
      type leafref {
        path "/up:user-plane-configuration/up:tx-arrays/up:name";
      }
      description "tx arrays belonging to this band number";
    }
    leaf-list rx-array {
      type leafref {
        path "/up:user-plane-configuration/up:rx-arrays/up:name";
      }
      description "rx arrays belonging to this band number";
    }
  }

  grouping static-properties {
    description
      "Defines static properties for real-time beamforming which apply to different beamforming types
      i.e. time, frequency or hybrid beamforming type";

    leaf rt-bf-weights-update-support {
      type boolean;
      description
        "The parameter informs if O-RU supports real time beamforming weights update through C-Plane messaging";
    }

    choice beamforming-type {
      case frequency {
        container frequency-domain-beams {
          when "../rt-bf-weights-update-support = 'true'";
          uses beamforming-parameters;
          uses cf:bf-compression-details;

          list additional-compression-method-supported {
            uses cf:bf-compression-details;

            description
              "List of additional supported compression methods by O-RU";
          }

          list beamforming-params-for-mul-beamId-tables {
           if-feature "feat:MULTIPLE-BEAMID-TABLES-SUPPORTED";
            uses beamforming-parameters;

            description
              "List containing frequency domain beamId ranges for each of the
              beamId table supported for a given capabilities[] list entry. The index
              values to be used for this list shall be restricted by O-RU advertised
              values 'tx-array-beamId-table-indexes/rx-array-beamId-table-indexes'.";
          }

          description "";
        }
        description "Set of parameters valid for O-RU, that supports beamforming in frequency domain.";
      }

      case time {
        container time-domain-beams {
          when "../rt-bf-weights-update-support = 'true'";
          uses beamforming-parameters;
          uses granularity-parameters;
          uses cf:bf-compression-details;

          list additional-compression-method-supported {
            uses cf:bf-compression-details;

            description
              "List of additional supported compression methods by O-RU";
          }

          list beamforming-params-for-mul-beamId-tables {
           if-feature "feat:MULTIPLE-BEAMID-TABLES-SUPPORTED";
            uses beamforming-parameters;

            description
              "List containing time-domain beamId ranges for each of the
              beamId table supported for a given capabilities[] list entry.The index
              values to be used for this list shall be restricted by O-RU advertised
              valuues 'tx-array-beamId-table-indexes/rx-array-beamId-table-indexes'.";
          }

          description "";
        }
        description "Set of parameters valid for O-RU, that supports beamforming in time domain.";
      }

      case hybrid {
        container hybrid-beams {
          when "../rt-bf-weights-update-support = 'true'";
          uses beamforming-parameters;
          uses granularity-parameters;
          uses cf:bf-compression-details;

          list additional-compression-method-supported {
            uses cf:bf-compression-details;

            description
              "List of additional supported compression methods by O-RU";
          }

          list beamforming-params-for-mul-beamId-tables {
           if-feature "feat:MULTIPLE-BEAMID-TABLES-SUPPORTED";
            uses beamforming-parameters;

            description
              "List containing hybrid-domain beamId ranges for each of the
              beamId table supported for a given capabilities[] list entry.The index
              values to be used for this list shall be restricted by O-RU advertised
              values 'tx-array-beamId-table-indexes/rx-array-beamId table-indexes'.";
          }

          list fd-weights-mapping {
            key "fd-weight-number";
            description
              "Mapping of array elements to frequency domain beamforming weight.
              See h(k) in O-RAN CUS-Plane, clause 12.5.3";

            leaf fd-weight-number {
              type uint16;
              description
                "Frequency domain beamforming weight number.
                See k' in O-RAN CUS-Plane, clause 12.5.3";
            }

            leaf-list array-elements {
              type uint16;
              description
                "List of array elements mapped to the frequency domain beamforming weight number.
                See k in O-RAN CUS-Plane, clause 12.5.3";
            }
          }

          description "";
        }
        description "Set of parameters valid for O-RU, that supports hybrid beamforming - in both time and frequency domain.";
      }
      description
        "This value indicates beamforming type supported by O-RU";
    }

    leaf number-of-beams {
      type uint16;
      status deprecated;
      description
        "This value indicates the max number of beam patterns O-RU can generate
        and apply to the signal of each O-RU port (both DL and UL).
        This value is equivalent to the maximum number of used beam IDs within
        a capability group for a specific beamforming type. This value can also
        be interpreted as a difference between 'initial-beam-id' and 'max-number-of-beam-ids'
        for each beamforming-type";
    }

    leaf p-dash {
      type uint16;
      description
        "This parameters specifies the dimesionality of the time-domain beamforming operation. Refer to description of parameter p'
        in clause 12.4.3.4.2 of CUS-Plane specification. This parameter is required to define the size of time-domain beamforming
        vector in case of hybrid/time-domain beamforming is supported by O-RU";
    }
  }

  grouping beamforming-property {
    description
      "Grouping for beamforming property";

    leaf beam-type {
      type enumeration {
        enum COARSE {
          description "the beam-id corresponds to a coarse beam";
        }
        enum FINE {
          description "the beam-id corresponds to a fine beam";
        }
      }
      description
        "This value indicates the beam resolution.";
    }

    leaf beam-group-id {
      type uint16;
      description
        "Beams with same beamGroupsID can be transmitted simultaneously.";
    }

    leaf-list coarse-fine-beam-relation {
      type beam-reference;
      status deprecated;
      description
        "List of related coarse/fine beam.";
    }

    leaf-list neighbour-beams {
      type beam-reference;
      status deprecated;
      description
        "A list of neighbour beams which might restrict co-scheduling due
        to interference.";
    }

    leaf-list coarse-fine-beam-capability-based-relation {
      type beam-capabilities-reference;
      description
        "List of related coarse/fine beam.";
    }

    leaf-list neighbour-beams-capability-based {
      type beam-capabilities-reference;
      description
        "A list of neighbour beams which might restrict co-scheduling due
        to interference.";
    }
  }

  grouping beamforming-properties-element {
    description
      "Grouping for beamforming-properties element";

    leaf beam-id {
      type uint16 {
        range "min .. 32767";
      }
      description
        "This value indicates the beam ID whose beamforming properties are
        described in the container.";
    }

    container beamforming-property {
      description
        "Structure containing single set of beamforming properties.";

      uses beamforming-property;
    }
  }

  grouping band-num {
    description
      "Band information for the beamforming
       related to the band number from module capabilities";

    leaf band-number {
      type leafref {
        path "/mcap:module-capability/mcap:band-capabilities/mcap:band-number";
      }
      description
        "band information for the beamforming information
         related to the band number of module capabilities";
    }
  }

  grouping cap-group {
    description
      "Capabilities group grouping";

    leaf capabilities-group {
      type leafref {
        path "/o-ran-bf:beamforming-config/o-ran-bf:capabilities-groups/o-ran-bf:capabilities-group";
      }
      mandatory true;
      description
        "Capabilities group identification number to which it refers.";
    }

  }

  grouping per-band-config-element {
    description
      "Grouping for per band config element";

    uses band-num;
    uses array-lists;

    container static-properties {
      description
        "the static beamforming related information";

      uses static-properties;
    }

    container beam-information {
      description
        "Beam information which exposes beamforming related O-RU capabilities. Specifies beam properties for
         predefined beamforming as described in clause 'Predefined-beam beamforming' of CUS-Plane specification";

      leaf number-of-beamforming-properties {
        type uint16;
        description
          "This parameter indicates the number of beamFormingProperties entries.";
      }

      list beamforming-properties {
        key beam-id;
        description
          "Array for the beamforming properties at O-RU.
          These parameters can be used by the beamforming control by the NETCONF client.
          'numberOfBeamformingProperties' indicates the size of the array.";

        uses beamforming-properties-element;
      }
    }
  }
  grouping dmrs-bf-gen-capabilities {
    description "Capabilities for DMRS-BF O-RU";
    leaf equalization-data-scaling {
      if-feature feat:DMRS-BF-EQ;
      type EQ-SCALING-FUNCTION-TYPE;
      description "Scaling function supported by this O-RU";
    }
    leaf max-num-ues-supported{
      if-feature "feat:DMRS-BF-EQ or feat:DMRS-BF-NEQ";
      type uint16 {
          range "1 .. 32767";
        }
        description
          "Indicates the maximum number of UE supported by the O-RU using DMRS-BF";
    }
    leaf ueid-max-layer-bits{
      if-feature "feat:DMRS-BF-EQ or feat:DMRS-BF-NEQ";
      type uint8 {
          range "1 .. 4";
        }
        description
          "Indicates the maximum number of bits in ueid to represent the layers of a UE";
    }
    leaf max-num-ueids{
      if-feature "feat:DMRS-BF-EQ or feat:DMRS-BF-NEQ";
      type uint16 {
          range "1 .. 32767";
        }
        description
          "Indicates the maximum number of unique ueId values within the 'ueId' space that
          may be used by the O-DU(s). The 'ueId' space ranges from ueId = 0 to ueId = U-1,
          where U equals the product of the O-RU advertised parameter 'max-num-ues-supported'
          and 2^ueid-layer-bits-configured configured by the O-DU. This limit counts all
          unique ueId values used by the O-DU(s) at any time. Refer to CUS-Plane specification,
          clause 7.5.3.10.";
    }
  }

  grouping operational-properties {
    description
      "Grouping for operational properties";

    leaf number-of-writeable-beamforming-files {
      type uint8  {
        range "1 .. max";
      }
      mandatory true;
      description
        "This leaf indicates the maximum number of writable beamforming files
        containing beamweights and/or attributes that the O-RU can store, taking
        into account the maximum number of beam-IDs as defined by 3GPP
        TS38.214 v15.x.x";
    }

    leaf update-bf-non-delete {
      type boolean;
      default false;
      description
        "When set to TRUE, indicates that an O-RU supports the capability
        to apply the modified beamforming weight information by using RPC
        activate-beamforming-weight without deletion of tx-array-carriers and
        rx-array-carriers in advance, i.e., to a deactivated carrier";
    }

    leaf persistent-bf-files {
      type boolean;
      default false;
      description
        "When set to TRUE, indicates that the O-RU supports the capability
         to store the modified beamforming weight information file in the
         reset persistent memory";
    }

    leaf in-service-bf-update {
      when "../update-bf-non-delete = 'true'";
      type boolean;
      default false;
      description
        "When set to TRUE, indicates that an O-RU supports the capability
        to apply the modified beamforming weight information by using RPC
        activate-beamforming-config or activate-beamforming-config-by-capability-group without deactivating of tx-array-carriers and
        rx-array-carriers.
        when O-RU doesn't support the capability 'update-bf-non-delete',
        the capability in-service-bf-update shall not be supported.";
    }
  }

  grouping beamforming-supported-type {
    description
      "Grouping for type of beamforming supported";

    leaf beamforming-trough-attributes-supported {
      type boolean;
      config false;
      description
        "Informs if beamforming can be controlled providing attributes to O-RU
          (like angles, beamwidth).";
    }

    leaf beamforming-trough-ue-channel-info-supported {
      type boolean;
      config false;
      description
        "Informs if beamforming can be controlled by UE information.";
    }
  }

  grouping beamforming-config {
    description
      "Grouping for beamforming configuration";

    list per-band-config {
      key band-number;
      config false;
      status deprecated;
      description "beamforming information per band";
      uses per-band-config-element;
    }

    list capabilities-groups {
      key capabilities-group;
      description
        "Capabilities groups identification number assigned to be referenced by operations
         and notifications.
         This also help to group particular beamforming capabilities and bind it with arrays";

      leaf capabilities-group {
        type uint16;
        description
          "Capabilities group identification number. Number which is used just for reference in RPC
           and notification";
      }
      uses per-band-config-element;
    }

    container ue-specific-beamforming {
      presence
        "Indicates that the O-RU supports optional Section Type '6' Fields
        (used for sending channel information for a specific UE)";
      config false;
      description
        "Information related to support by the O-RU of Section Type 6 for
        signalling UE-specific channel information to the O-RU";

      leaf max-number-of-ues {
        type uint8;
        status deprecated;
        description
          "Indicates the maximum number of UE -specific channel information
          data sets supported by the O-RU.

          Leaf is deprecated as it only enabled a maximum of 255 UEs to be supported,
          compared with ST5 and ST6 which supports a 15 bit value.

          NETCONF client instead uses max-number-ues-15bit schema node";
      }
      leaf max-number-of-ues-15bit {
        type uint16 {
          range "1 .. 32767";
        }
        description
          "Indicates the maximum number of UE -specific channel information
          data sets supported by the O-RU,
          It is restricted to 15 bits value because of the 15bits ueId field in ST5 and ST6";
      }

      leaf-list channel-information-compression-method-supported {
        if-feature "feat:CHANNEL-INFORMATION-COMPRESSION";
        type cf:ci-compression-method-def;
        description
           "list of channel information compression methods supported by the O-RU";
      }

      leaf dynamic-channel-information-compression-supported {
        if-feature "feat:CHANNEL-INFORMATION-COMPRESSION";
        type boolean;
        description
           "Informs if dynamic channel information compression supported by the O-RU,
            if its value is true, the compression method and IQ bit width can be dynamic in ciCompHdr;
            if its value is false, only static configuration compression configuration is supported, and ciCompHdr
            shall be set to a fixed value corresponding to the static configured compression method and IQ bit width.";
      }
    }
    container operational-properties {
      if-feature MODIFY-BF-CONFIG;
      config false;
      description "properties for dynamic beam weight/attribute support";

      uses operational-properties;
    }
    container dmrs-bf-general-capabilities {
      if-feature "feat:DMRS-BF-EQ or feat:DMRS-BF-NEQ";
      config false;
      description "general DMRS-BF capabilities";

      uses dmrs-bf-gen-capabilities;
    }
 }

  grouping beam-tilt-configuration {
    description "grouping for beam-tilt feature";
    list predefined-beam-tilt-offset {
      if-feature BEAM-TILT;
      key capabilities-group;
      description "Configuration of the predefined-beam-tilt-offset per capabilities-group";
      leaf capabilities-group {
        type leafref {
          path "/o-ran-bf:beamforming-config/o-ran-bf:capabilities-groups/o-ran-bf:capabilities-group";
          require-instance false;
        }
        mandatory true;
        description
          "Capabilities group identification number for which
          the predefined-beam-tilt-offset relates to";
      }
      leaf elevation-tilt-offset-angle {
        type int16 {
          range "-90..90";
        }
        units degrees;
        default 0;
        description
          "Value 0 represents the default service area of the predefined-beams
          in elevation domain, i.e. no tilt offset.

          Values smaller than 0 represents an up-shift of the default service area
          towards the zenith (i.e., corresponding to a decrease in zenith angle) and
          values larger than 0 represent a down-shift of the default service area
          away from the zenith (i.e., corresponding to an increase in zenith angle).

          If the value is greater than the maximum supported angle, then the maximum
          angle is used for configuration.
          If the value is less than the minimum supported angle, then the minimum
          angle is used for configuration.
          The actual angle used is (angle DIV granularity) * granularity.

          Any O-RU which is reset using the o-ran-operations:reset RPC shall reset
          its offset angle to its default value.";
      }
      leaf azimuth-tilt-offset-angle {
        type int16 {
          range "-90..90";
        }
        units degrees;
        default 0;
        description
          "Value 0 represents the default service area of the predefined-beams
          in azimuth domain, i.e., no tile offset.

          Azimuth tilt offset angle, represents counter-clockwise rotation around
          z-axis. I.e., assuming view from the UE (observation of the O-RU
          from the front), value larger than 0 and smaller than 0
          respectively represent right-shifted and left-shifted of the default
          service area in azimuth domain.

          If the value is greater than the maximum supported angle, then the maximum
          angle is used for configuration.
          If the value is less than the minimum supported angle, then the minimum
          angle is used for configuration.
          The actual angle used is (angle DIV granularity) * granularity.

          Any O-RU which is reset using the o-ran-operations:reset RPC shall reset
          its offset angle to its default value.";
      }
    }
  }

  grouping beam-tilt-state {
    description
      "Grouping for beam tilt state";

    list predefined-beam-tilt-offset-information {
      key capabilities-group;
      config false;
      description
        "Information which exposes predefined-beam-tilt-offset related O-RU capabilities.";
      leaf capabilities-group {
        type leafref {
          path "/o-ran-bf:beamforming-config/o-ran-bf:capabilities-groups/o-ran-bf:capabilities-group";
        }
        mandatory true;
        description
          "Capabilities group identification number for which
          the predefined-beam-tilt-offset-information relates to";
      }
      leaf elevation-tilt-offset-granularity {
        type uint8 {
          range "0..30";
        }
        units Degrees;
        mandatory true;
        description
          "Indication of the supported granularity for the
          predefined-beam-tilt-offset in elevation domain.

          Value 0 represents that the O-RU doesn't support
          the predefined-beam-tilt-offset in elevation domain.";
      }
      leaf azimuth-tilt-offset-granularity {
        type uint8 {
          range "0..30";
        }
        units Degrees;
        mandatory true;
        description
          "Indication of the supported granularity for the
          predefined-beam-tilt-offset in azimuth domain.

          Value '0' represents that the O-RU doesn't support
          the predefined-beam-tilt-offset in azimuth domain.";
      }
      leaf minimum-supported-elevation-tilt-offset {
        type int16 {
          range "-90..0";
        }
        units Degrees;
        mandatory true;
        description
          "The minimum value which can be configured for
          'elevation-tilt-offset-angle'.";
      }
      leaf maximum-supported-elevation-tilt-offset {
        type int16 {
          range "0..90";
        }
        units Degrees;
        mandatory true;
        description
          "The maximum value which can be configured for
          'elevation-tilt-offset-angle'.";
      }
      leaf minimum-supported-azimuth-tilt-offset {
        type int16 {
          range "-90..0";
        }
        units Degrees;
        mandatory true;
        description
          "The minimum value which can be configured for
          'azimuth-tilt-offset-angle'.";
      }
      leaf maximum-supported-azimuth-tilt-offset {
        type int16 {
          range "0..90";
        }
        units Degrees;
        mandatory true;
        description
          "The maximum value which can be configured for
          'azimuth-tilt-offset-angle'.";
      }
      leaf run-time-tilt-offset-supported {
        type boolean;
        mandatory true;
        description
          "If 'run-time-tilt-offset-supported' is FALSE, changing the values in
          'predefined-beam-tilt-offset' for a specific band shall be allowed only
          if all 'tx-array-carriers' and 'rx-array-carriers' corresponding
          to the band are INACTIVE.";
      }
    }

  }

  grouping beam-tilt-report {
    description
      "Grouping for beam tilt report";

    list predefined-beam-tilt-state {
      key capabilities-group;
      config false;
      description
        "Information which exposes state of predefined-beam-tilt-offset.";
      leaf capabilities-group {
        type leafref {
          path "/o-ran-bf:beamforming-config/o-ran-bf:capabilities-groups/o-ran-bf:capabilities-group";
        }
        mandatory true;
        description
          "Capabilities group identification number for which
          the predefined-beam-tilt-state relates to";
      }
      leaf elevation-tilt-offset-angle {
        type int16 {
          range "-90..90";
        }
        units Degrees;
        mandatory true;
        description
          "Value 'zero' represents the default service area of the
          predefined-beams in elevation domain.

          Values smaller than 0 represents an up-shift of the default service area
          towards the zenith (i.e., corresponding to a decrease in zenith angle) and
          values larger than 0 represent a down-shift of the default service area
          away from the zenith (i.e., corresponding to an increase in zenith angle).";
      }
      leaf azimuth-tilt-offset-angle {
        type int16 {
          range "-90..90";
        }
        units Degrees;
        mandatory true;
        description
          "Value 'zero' represents the default service area of the
          predefined-beams in azimuth domain.

          Azimuth tilt offset angle, represents counter-clockwise rotation around
          z-axis. I.e., assuming view from the UE (observation of the O-RU from
          the front), value larger than 'zero' and smaller than 'zero'
          respectively represent right-shifted and left-shifted of the default
          service area in azimuth domain.";
      }
    }

  }

  container beamforming-config {
    config false;
    description
      "A set of configuration data for the O-RU's beam forming functionality";

    uses beamforming-config;
    uses beamforming-supported-type;
    container beam-tilt {
      if-feature BEAM-TILT;
      description "container for pre-defined beam tilt feature";
      uses beam-tilt-state;
      uses beam-tilt-report;
    }
  }

  rpc activate-beamforming-config {
    if-feature MODIFY-BF-CONFIG;
    status deprecated;
    description
      "RPC to activate beamforming config information by indicating the file
      stored in the folder o-ran/beamforming in advance.
      This RPC is deprecated due to the deprecation of the list per-band-config.
      The RPC activate-beamforming-config-by-capability-group should be used instead.";
    input {
      leaf beamforming-config-file {
        type string;
        mandatory true;
        description
          "file name stored in o-ran/beamforming folder is indicated";
      }

      uses band-num;
    }
    output {
      leaf status {
        type enumeration {
          enum ACCEPTED {
            description "O-RU has accepted the beamforming weight/attribute file";
          }
          enum REJECTED {
            description
              "O-RU has rejected the beamforming weight/attribute file. The O-RU
              should then use the default beamforming file.";
          }
        }
        mandatory true;
        description "Status of activation of beamforming config information";
      }
      leaf error-message {
        when "../status='REJECTED'";
        type string;
        description
          "Detailed error Message when the status is rejected, e.g.,
           because new beam forming file is attempted to be applied to a
           carrier which is still active, or the beam-id does not exist.";
      }
    }
  }

  rpc activate-beamforming-config-by-capability-group {
    if-feature MODIFY-BF-CONFIG;
    description
      "RPC to activate beamforming config information by indicating the file
      stored in the folder o-ran/beamforming in advance";
    input {
      leaf beamforming-config-file {
        type string;
        mandatory true;
        description
          "file name stored in o-ran/beamforming folder is indicated";
      }

      uses cap-group;
    }
    output {
      leaf status {
        type enumeration {
          enum ACCEPTED {
            description "O-RU has accepted the beamforming weight/attribute file";
          }
          enum REJECTED {
            description
              "O-RU has rejected the beamforming weight/attribute file. The O-RU
              should then use the default beamforming file.";
          }
        }
        mandatory true;
        description "Status of activation of beamforming config information";
      }
      leaf error-message {
        when "../status='REJECTED'";
        type string;
        description
          "Detailed error Message when the status is rejected, e.g.,
           because new beam forming file is attempted to be applied to a
           carrier which is still active, or the beam-id does not exist.";
      }
    }
  }

  rpc modify-predefined-beam-tilt-offset {
    if-feature BEAM-TILT;
    description
      "RPC to trigger the modification of the predefined beam tilt offset";
    input {
      uses beam-tilt-configuration;
    }
    output {
      leaf status {
        type enumeration {
          enum ACCEPTED {
            description "O-RU has accepted the predefind beamtilt offset configuration";
          }
          enum REJECTED {
            description
              "O-RU has rejected the predefind beamtilt offset configuration.";
          }
        }
        mandatory true;
        description "Status of acceptance of pre-defined beamtilt offset configuration";
      }
      leaf error-message {
        when "../status='REJECTED'";
        type string;
        description
          "Detailed error message when the pre-defined beam tilt configuration
          is rejected, e.g., used when 'run-time-tilt-offset-supported' is FALSE and the
          NETCONF client is attempting to modify the beam tilt on a band where
          one or more array-carriers are still ACTIVE.";
      }
    }
  }

  //notification statement
  notification beamforming-information-update {
    status deprecated;
    uses band-num;
    description
      "This notification indicates that the beamforming properties are updated for particular band.
      This notification is deprecated due to the deprecation of the list per-band-config.
      The notification capability-group-beamforming-information-update should be used instead.";
  }

  notification capability-group-beamforming-information-update {
    uses cap-group;
    description
      "this notification indicates that the beamforming properties are updated for particular band
       or capability group";
  }

  notification predefined-beam-tilt-offset-complete {
    if-feature BEAM-TILT;
    uses beam-tilt-report;
    description
      "this notification indicates that the re-generation of the predefined
      beams is completed";
  }
}

## File: RU Specific Models/Radio/o-ran-module-cap.yang

module o-ran-module-cap {
  yang-version 1.1;
  namespace "urn:o-ran:module-cap:1.0";
  prefix "o-ran-module-cap";

  import o-ran-compression-factors {
    prefix "cf";
  }

  import o-ran-wg4-features {
    prefix "or-feat";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the module capabilities for
    the O-RAN Radio Unit.

    Copyright 2024 the O-RAN Alliance.

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

  revision 2024-12-23 {
    description
      "version 15.1.0

      1) clarifying band-number";

    reference "ORAN-WG4.M.0-v15.00";
  }

  revision "2024-04-15" {
    description
      "version 15.0.0

      1) add support for multiple beamid tables.
      2) remove import by revision date for o-ran-compression-factors.
      3) Support for deep hibernate sleep mode.";

    reference "ORAN-WG4.M.0-v15.00";
  }

  revision "2023-12-11" {
    description
      "version 14.0.0

      1) Introduce bundle-offset-in-se11-supported";

    reference "ORAN-WG4.M.0-v14.00";
  }

  revision "2023-08-14" {
    description
      "version 13.0.0

      1) Introduce TRX-control and advanced sleep modes";

    reference "ORAN-WG4.M.0-v13.00";
  }

  revision "2023-04-10" {
    description
      "version 12.0.0

      1) Clarify the parameter number-of-spatial-streams
      2) Introduce NB-IoT";

    reference "ORAN-WG4.M.0-v12.00";
  }

  revision "2022-12-05" {
    description
      "version 11.0.0

      1) Deprecation of power-related capabilities and addition of min-gain
      2) se6 rb bit handling for rbgSize equal to zero";

    reference "ORAN-WG4.M.0-v11.00";
  }

  revision "2022-08-15" {
    description
      "version 10.0.0

      1) clarified description statements for component carrier
      2) style guide corrections
      3) introducing new feature for ACK NACK feedback
      4) deprecation for params in band-capabilities";

    reference "ORAN-WG4.M.0-v10.00";
  }

  revision "2022-04-18" {
    description
      "version 9.0.0

      1) aded new parameter st6-4byte-alignment-required";

    reference "ORAN-WG4.M.0-v09.00";
  }

  revision "2021-12-01" {
    description
      "version 8.0.0

      1) Typographical corrections in descriptions.
      2) deprecation of compression-method-grouping";

    reference "ORAN-WG4.M.0-v08.00";
  }

  revision "2021-07-26" {
    description
      "version 7.0.0

      1) Added support for external antenna delay handling ";

    reference "ORAN-WG4.M.0-v07.00";
  }

  revision "2021-03-22" {
    description
      "version 5.1.0

      1) typographical corrections in descriptions.
      2) removed non-ASCII characters
      3) clarified number-of-ru-ports_dl/ul description ";

    reference "ORAN-WG4.M.0-v05.00";
  }

  revision "2020-12-10" {
    description
      "version 5.0.0

      1) added support for optimising coupling-via-frequency-and-time-with-priorities
      by adding enhancement to existing method through a new leaf node";

    reference "ORAN-WG4.M.0-v05.00";
  }

  revision "2020-08-10" {
    description
      "version 4.0.0

      1) added RO capability to expose O-RU's ability to support udCompLen record in U-Plane section header fields
      2) feature indicating support for static PRACH configuration introduced
      3) feature indicating support for static SRS configuration introduced
      4) feature indicating support for TDD pattern configuration introduced
      5) backward compatible change to introduce new O-RU's features related
      to Section Description Priority to serve for CUS-Plane C";

    reference "ORAN-WG4.M.0-v04.00";
  }

  revision "2020-04-17" {
    description
      "version 3.0.0

      1) Adding optional little endian support
      2) Added support for Dynamic Spectrum Sharing feature
      3) Enable number-of-ru-ports to be different between dl and ul
      4) Enable regularizationFactor to be signalled outside of section type 6
      5) Enable PRACH preamble formats supported to be signalled by O-RU
      6) adding support for selective RE sending
      7) supporting new section extension for grouping multiple ports
      8) signalling to enable O-RU to indicate is requires unique ecpri sequence id
        for eAxC_IDs serving for UL and DL for the same Component Carrier";

    reference "ORAN-WG4.M.0-v03.00";
  }

  revision "2019-07-03" {
    description
      "version 1.1.0

      1) backward compatible change to introduce new RW leafs for use in
      constraints in uplane-config and laa models.
      2) removing unnecessary relations to band 46 in uplink";

    reference "ORAN-WG4.M.0-v01.00";
  }

  revision "2019-02-04" {
    description
      "version 1.0.0

      1) imported model from xRAN
      2) changed namespace and reference from xran to o-ran";

    reference "ORAN-WG4.M.0-v01.00";
  }

  feature LAA {
    description
      "Indicates that the Radio Unit supports LAA.";
  }

  feature EAXC-ID-GROUP-SUPPORTED {
    description
      "indicates that the Radio Unit supports EAXC-ID-GROUP-SUPPORTED.";
  }

  feature TRANSPORT-FRAGMENTATION {
    description
      "This leaf is used to indicate whether the O-RU supports O-RAN Radio Transport Fragmentation";
  }

  feature DSS_LTE_NR {
    description
      "Indicates that the Radio Unit supports Dynamic Spectrum Sharing between LTE and NR.";
  }

  feature PRACH-STATIC-CONFIGURATION-SUPPORTED {
    description
      "This leaf is used to indicate O-RU's support for configuration of PRACH (Physical Random Access Channel) pattern in the static manner, so that PRACH U-Plane traffic can be processed by RU without receiving C-Plane messages conveying the PRACH configuration.";
  }

  feature SRS-STATIC-CONFIGURATION-SUPPORTED {
    description
      "This leaf is used to indicate O-RU's support for configuration of SRS (Sounding Reference Signal Channel) pattern in the static manner, so that SRS U-Plane traffic can be processed by RU without receiving C-Plane messages conveying the SRS configuration.";
  }

  feature CONFIGURABLE-TDD-PATTERN-SUPPORTED {
    description
      "This leaf is used to indicate O-RU's support for configurable TDD pattern.";
  }

  typedef sub-band-string {
    type string {
      pattern [ABCD];
    }
    description "Sub bands definition";
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

  grouping compression-method-grouping {
    status deprecated;
    description
      "Grouping for compression method.
       Note: This grouping is deprecated. Please use the one from o-ran-compression-factors module.";

    leaf compression-method {
      type enumeration {
        enum BLOCK_FLOATING_POINT {
          description
            "Block floating-point compression and decompression will be used";
        }

        enum BLOCK_SCALING {
          description
            "Block scaling compression and decompression will be used";
        }

        enum U_LAW {
          description
            "u-Law compression and decompression method will be used";
        }

        enum BEAMSPACE {
          description
            "Beamspace compression and decompression will be used";
        }

        enum MODULATION {
          description
            "Modulation compression and decompression will be used";
        }

        enum BLOCK-FLOATING-POINT-SELECTIVE-RE-SENDING {
          description
            "block floating-point with selective re sending
            compression and decompression will be used";
        }
        enum MODULATION-COMPRESSION-SELECTIVE-RE-SENDING {
          description
            "modulation compression with selective re sending
            compression and decompression will be used";
        }
      }
      description
        "Compression method which can be supported by the O-RU.
        An O-RU may further refine the applicability of compression
        methods per endpoint using o-ran-uplane-conf.yang model";
    }
  }

  grouping sub-band-max-min-ul-dl-frequency {
    description
    "Grouping for defining max and min supported frequency - DL and UL.";

    leaf max-supported-frequency-dl {
      type uint64;
      description
        "This value indicates Maximum supported downlink frequency in the
        LAA sub-band. Value unit is Hz.";
    }

    leaf min-supported-frequency-dl {
      type uint64;
      description
        "This value indicates Minimum supported downlink frequency in the
        LAA sub-band. Value unit is Hz.";
    }
  }

  grouping format-of-iq-sample {
    description
      "Indicates module capabilities about IQ samples";

    leaf dynamic-compression-supported {
      type boolean;

      description
        "Informs if radio supports dynamic compression method";
    }

    leaf realtime-variable-bit-width-supported {
      type boolean;

      description
        "Informs if O-RU supports real-time variable bit with";
    }

    list compression-method-supported {
      uses cf:compression-details;

      leaf-list fs-offset {
        if-feature cf:CONFIGURABLE-FS-OFFSET;
        type uint8;
        default 0;
        description
          "List of fs offset values supported with this IQ format / compression method;
           fs-offset adjusts FS (full scale) value of IQ format relative to FS derived from unmodified IQ format.
           Please refer to CU-Plane specification for details";
      }

      description
        "List of supported compression methods by O-RU
         Note: if O-RU supports different compression methods per endpoint
               then please refer to endpoints to have information what
               exactly is supported on particular endpoint";
    }

    leaf variable-bit-width-per-channel-supported {
      when "/module-capability/ru-capabilities/format-of-iq-sample/realtime-variable-bit-width-supported = 'true'";
      type boolean;

      description
        "Informs if variable bit width per channel is supported or not";
    }

    leaf syminc-supported {
      type boolean;

      description
        "Informs if symbol number increment command in a C-Plane is
         supported or not";
    }

    leaf regularization-factor-se-supported {
      type boolean;

      description
        "Informs if regularizationFactor in section type 5 is
         supported(true) or not(false)";
    }

    leaf little-endian-supported {
      type boolean;
      default false;

      description
        "All O-RUs support bigendian byte order. This node informs if module supports the
        the optional capability for little endian byte order for C/U plane data flows.

        Note - little endian support does not invalidate bigendian support.";
    }

    leaf st6-4byte-alignment-required {
      type boolean;
      default false;

      description
        "An optional flag indicating whether O-RU requires 4-byte aligned Section Type 6 or not.
        If 4-byte aligned Section Type 6 is required, O-RU shall set this flag to 'true'.
        If the leaf is ommitted or set to 'false', the O-RU operates using 1-byte aligned Section Type 6.
        An O-DU recovering a value of 'true' shall ensure that Section Type 6 shall be
        sent with 4-byte aligned messages, as described in clause 'Elements for the C-Plane Protocol' of
        the CUS-Plane specification.";
    }

    leaf se6-rb-bit-supported {
      type boolean;
      default false;

      description
        "If this leaf node has a value 'true', then O-DU may use the 'rb' bit, in which case
        when the O-DU sets the 'rb' bit to one, it shall also set the value of 'rbgsize' to zero and the
        O-RU shall interpret the value of 'rb' bit as applicable to this data section. Refer 'SE 6: Non-contiguous
        PRB allocation in time and frequency domain' requirement #3 of the CUS-Plane specification.";
    }
  }

  grouping scs-a-b {
    description
      "Grouping for scs-a and scs-b";
    leaf scs-a{
      type scs-config-type;
      description
        "Sub-carrier spacing configuration";
    }
    leaf scs-b{
      type scs-config-type;
      description
        "Sub-carrier spacing configuration";
    }
  }

  grouping ul-mixed-num-required-guard-rbs {
    description
      "Required number of guard resource blocks for the combination of
      sub-carrier spacing values for uplink";
    uses scs-a-b;
    leaf number-of-guard-rbs-ul{
      type uint8;
      description
        "This value indicates the required number of guard resource blocks
         between the mixed numerologies, the RB using scs-a and the RB
         using scs-b. It's number is based on scs-a";
    }
  }

  grouping dl-mixed-num-required-guard-rbs {
    description
      "Required number of guard resource blocks for the combination of
      sub-carrier spacing values for uplink";
    uses scs-a-b;
    leaf number-of-guard-rbs-dl{
      type uint8;
      description
        "This value indicates the required number of guard resource blocks
         between the mixed numerologies, the RB using scs-a and the RB
         using scs-b. It's number is based on scs-a";
    }
  }

  grouping sleep-mode-capability-info {
    description
      "Grouping for sleep mode capabilities supported by the O-RU.";

    list sleep-modes {
      key "sleep-mode-type";
      description
        "List of sleep mode type supported.";

      leaf sleep-mode-type {
        type enumeration {
          enum SLEEP_MODE_0 {
            description "O-RU supports Sleep Mode 0.";
          }
          enum SLEEP_MODE_1 {
            description "O-RU supports Sleep Mode 1.";
          }
          enum SLEEP_MODE_2 {
            description "O-RU supports Sleep Mode 2.";
          }
          enum SLEEP_MODE_3 {
            description "O-RU supports Sleep Mode 3.";
          }
        }
        description
          "Type of sleep mode supported.";
      }

      leaf wake-up-duration {
        type uint32;
        units microseconds;
        description "Wake-up duration for a particular sleep mode.";
      }

      leaf wake-up-duration-guaranteed {
        type boolean;
        description
          "Informs whether the O-RU guarantees the wakeup duration for a particular sleep mode.
           For sleep-mode-type reported as 'SLEEP_MODE_0', the wake-up-duration-guaranteed shall be reported as 'true'";
      }
    }

    leaf defined-duration-sleep-supported {
      type boolean;
      description
        "Informs if the O-RU supports the defined-duration sleep functionality.";
    }

    leaf undefined-duration-sleep-supported {
      type boolean;
      description
        "Informs if the O-RU supports the undefined-duration sleep functionality.";
    }
  }

  grouping trx-control-capability-info {
    description
      "A grouping with parameters for TRX-CONTROL capabilities supported by the O-RU";

    list supported-trx-control-masks {
      key "index";
      description
        "List of supported TRX control masks.";

      leaf index {
        type uint8;
        description
          "Index to the list.";
      }

      leaf mask-name {
        type string;
        description
          "Unique name for each supported TRX control mask.";
      }

      leaf antenna-mask {
        type binary;
        description
          "Supported Antenna Mask.";
      }
    }
    uses  sleep-mode-capability-info;
  }

  grouping asm-capability-info {
    description
      "A grouping with parameters for advanced sleep mode capabilities supported by the O-RU";

    uses  sleep-mode-capability-info;
  }

  grouping ru-capabilities {
    description
      "Structure representing set of capabilities.";

    leaf ru-supported-category {
      type enumeration {
        enum CAT_A {
          description
            "Informs that precoding is not supported in O-RU";
        }
        enum CAT_B {
          description
            "Informs that precoding is supported in O-RU";
        }
      }

      description
        "Informs about which category O-RU supports";
    }

    leaf number-of-ru-ports {
      type uint8;
      status deprecated;
      description
        "Assuming all endpoints support time-managed traffic AND non-time-managed traffic (choice is as per configuration)
         - the number of O-RU ports is the product of number of spatial streams (leaf number-of-spatial-streams) and number of numerologies O-RU supports.
         For example, if the number of spatial streams is 4 then the number of O-RU ports is 8 when PUSCH and PRACH are processed in the different endpoints.
         In case there are specific endpoints that support non-time-managed traffic only
         - the number of O-RU ports calculated with above mentioned equation is extended by number of endpoints supporting only non-time-managed traffic.";
    }
    leaf number-of-ru-ports-ul {
      type uint8;
      description
        "Assuming all endpoints support time-managed traffic AND non-time-managed traffic AND static channel configuration (choice is as per configuration)
         - the upper bound of the number of O-RU ports for uplink which is derived from number of UL spatial streams or layers
         and associated numerology O-RU supports.
         Numerology capability per spatial stream or layer is based on eaxc id description in CUS specification section entitled
         'ecpriRtcid / ecpriPcid (real time control data / IQ data transfer message series identifier)'
         For example, if O-RU supports for each of 'N' spatial streams or layers 'M' numerologies (as it applies to PUSCH and PRACH), number of ports is N * M.
         In case there are specific endpoints that support non-time-managed traffic only
         - the number of O-RU ports calculated is extended by number of endpoints supporting only non-time-managed traffic.
         Additionally, if there are specific endpoints that support static channel configuration only(e.g. static PRACH)
         - the number of O-RU ports calculated above is further extended by number of endpoints supporting static channel configuration only.";
    }
    leaf number-of-ru-ports-dl {
      type uint8;
      description
        "Assuming all endpoints support time-managed traffic AND non-time-managed traffic (choice is as per configuration)
         - the upper bound of the number of O-RU ports for downlink which is derived from number of DL spatial streams or layers
         and associated numerology O-RU supports.
         Numerology capability per spatial stream or layer is based on eaxc id description in CUS specification section entitled
         'ecpriRtcid / ecpriPcid (real time control data / IQ data transfer message series identifier)'
         For example, if O-RU supports for each of 'N' spatial streams or layers 'M' numerologies, number of ports is N * M.
         In case there are specific endpoints that support non-time-managed traffic only.
         - the number of O-RU ports calculated with above mentioned equation is extended by number of endpoints supporting only non-time-managed traffic";
    }

    leaf number-of-spatial-streams {
      type uint8;
      description
        "This value indicates the maximum accumulated number of spatial streams supported by O-RU for DL and UL.
         For definition of spatial stream, please refer to CUS plane specification clause 3.1 for details.";
    }

    leaf number-of-spatial-streams-dl {
      type uint8;
      description
        "The maximum number of DL spatial streams that O-RU supports.
          For definition of spatial stream, please refer to CUS plane specification clause 3.1 for details.";
    }

    leaf number-of-spatial-streams-ul {
      type uint8;
      description
        "The maximum number of UL spatial streams that O-RU supports.
        For definition of spatial stream, please refer to CUS plane specification clause 3.1 for details..";
    }

    leaf max-num-bands {
      type uint16;
      description "maximum number of bands supported by the O-RU";
    }

    leaf max-power-per-pa-antenna {
      type decimal64{
        fraction-digits 4;
      }
      status deprecated;
      description
        "This value indicates Maximum Power per PA per antenna. Value unit is dBm.

        The parameter is deprecated. min-gain and max-gain define constraints related to
        TX power budget, as defined in CUS-Plane, clause 8.1.3.3.";
    }

    leaf min-power-per-pa-antenna {
      type decimal64{
        fraction-digits 4;
      }
      status deprecated;
      description
        "This value indicates Minimum Power per PA per antenna. Value unit is dBm.

        The parameter is deprecated. min-gain and max-gain define constraints related to
        TX power budget, as defined in CUS-Plane, clause 8.1.3.3.";
    }

    leaf fronthaul-split-option {
      type uint8 {
        range "7";
      }
      description
        "This value indicates the Fronthaul Split Option, i.e., 2 or 7 in this release.";
    }

    container format-of-iq-sample {
      description
        "Indicates module capabilities about IQ samples";

      uses format-of-iq-sample;
    }

    list ul-mixed-num-required-guard-rbs {
      key "scs-a scs-b";
      description
        "List of required number of guard resource blocks
        for the combination of sub-carrier spacing values for downlink";

      uses ul-mixed-num-required-guard-rbs;
    }
    list dl-mixed-num-required-guard-rbs {
      key "scs-a scs-b";
      description
        "List of required number of guard resource blocks
        for the combination of sub-carrier spacing values for uplink";

      uses dl-mixed-num-required-guard-rbs;
    }

    leaf energy-saving-by-transmission-blanks {
      type boolean;
      mandatory true;
      description
        "Parameter informs if unit supports energy saving by transmission blanking";
    }
    container eaxcid-grouping-capabilities {
      if-feature o-ran-module-cap:EAXC-ID-GROUP-SUPPORTED;
      description
        "a container with parameters for eaxcid grouping";
      leaf max-num-tx-eaxc-id-groups {
        type uint8;
        description
          "Maximum number of configurable tx-eaxc-id-group supported by O-RU.";
      }
      leaf max-num-tx-eaxc-ids-per-group {
        type uint8;
        description
         "Maximum number of eAxC IDs per tx-eaxc-id-group supported by O-RU, where each group is a union of the 'member-tx-eaxc-id's and a 'representative-tx-eaxc-id'.";
      }
      leaf max-num-rx-eaxc-id-groups {
        type uint8;
        description
          "the maximum number of groups with the eAxC IDs those are assigned to low-level-rx-links.";
      }
      leaf max-num-rx-eaxc-ids-per-group {
        type uint8;
        description
          "Maximum number of eAxC IDs per rx-eaxc-id-group supported by O-RU, where each group is a union of the 'member-rx-eaxc-id's and a 'representative-rx-eaxc-id'.";
      }
    }

    leaf dynamic-transport-delay-management-supported {
      type boolean;
      mandatory true;
      description
        "Parameter informs if unit supports dynamic transport delay management through eCPRI Msg 5";
    }

    leaf support-only-unique-ecpri-seqid-per-eaxc {
      type boolean;
      default false;
      description
        "Parameter informs if O-RU expects unique eCPRI sequence id for eAxC_IDs serving
        for UL and DL for the same Component Carrier.

        Note: If this is set to TRUE, the O-DU can decide to either use different eAxC_IDs for UL and
        DL or can generate unique sequence ID per eAxC_ID.

        TAKE NOTE: This leaf is backwards compatible from an O-RU perspective BUT an O-RU that
        sets this leaf to TRUE may result in incompatibilities when operating with an O-DU
        designed according to the O-RAN CUS-Plane Specification v02.00, e.g., if the O-DU is
        incapable of using different eAxC values between UL and DL";
    }

    container coupling-methods {
      description
        "O-RU's capabilities related to supported C-Plane and U-Plane coupling methods";

      leaf coupling-via-frequency-and-time {
        type boolean;
        description
          "Coupling via frequency and time; see methods of coupling of C-plane and U-plane in CUS-Plane specification";
      }

      leaf coupling-via-frequency-and-time-with-priorities {
        type boolean;
        description
          "Coupling via Frequency and time with priorities; see methods of coupling of C-plane and U-plane in CUS-Plane specification.
          Note: If coupling-via-frequency-and-time-with-priorities is 'true' then coupling-via-frequency-and-time shall also be 'true'.";
      }

      leaf coupling-via-frequency-and-time-with-priorities-optimized {
        type boolean;
        description
          "Coupling via Frequency and time with priorities optimised; see methods of coupling of C-plane and U-plane in CUS-Plane specification.
          Note: If coupling-via-frequency-and-time-with-priorities-optimized is 'true' then coupling-via-frequency-and-time shall also be 'true'.";
      }
    }

    leaf ud-comp-len-supported {
      type boolean;
      description
        "This property informs if O-RU supports optional field udCompLen in U-Plane messages.
         Only in case this leaf is present and its value is TRUE, O-RU supports U-Plane messages
         containing udCompLen field in section header.";
    }

    leaf ext-ant-delay-capability {
      if-feature "or-feat:EXT-ANT-DELAY-CONTROL";
      type enumeration {
         enum PER-ARRAY-CARRIER {
          description
            "Informs that the O-RU supports the configuration of different t-da-offset on different tx-array-carriers,
             and different t-au-offset on different rx-array-carriers";
        }

         enum PER-ARRAY {
          description
            "Informs that the O-RU supports the configuration of different t-da-offset on different tx-array-carriers
             only when those tx-array-carriers belong to different tx-arrays,
             and the O-RU supports the configuration of different t-au-offset on different rx-array-carriers
             only when those rx-array-carriers belong to different rx-arrays";
        }

        enum PER-O-RU {
          description
            "Informs that the O-RU only supports the configuration of a common t-da-offset across all tx-array-carriers,
             and a common t-au-offset across all rx-array-carriers";
        }
      }
      description
        "This property informs what kind of capability the O-RU supports to be configured with external antenna delay.";
    }

    leaf nack-supported {
      type boolean;
      description
        "This value indicates if O-RU supports sending NACK feedback if a section extension for ACK/NACK request is received,
        If O-RU reports supporting section extension for ACK/NACK request (section extension 22) and ACK/NACK feedback (section type 8), ACK feedback shall always be supported,
        while NACK feedback is optionally supported according to 'nack-supported'";
    }

    leaf st8-scs-supported {
      type boolean;
      description
        "Informs if O-RU supports the optional field scs in Section Type 8 messages.";
    }

    container energy-saving-capability-common-info {
      if-feature "or-feat:TRX-CONTROL or or-feat:ADVANCED-SLEEP-MODE";
      description
        "A container with parameters for common energy saving capabilities supported by the O-RU";

      leaf st8-ready-message-supported {
        type boolean;
        description
          "Informs if the O-RU supports Section Type 8 Ready message.";
      }

      leaf sleep-duration-extension-supported {
        type boolean;
        description
          "Informs if the O-RU supports extension of sleep duration.";
      }

      leaf emergency-wake-up-command-supported {
        type boolean;
        description
          "Informs if the O-RU supports emergency wake-up M-Plane command.";
      }
    }

    leaf bundle-offset-in-se11-supported {
      type boolean;
      default false;
      description
        "Informs if O-RU supports receiving non-zero values of bundleOffset in SE11.
        For details, see CUS-Plane Specification, clause 7.7.11.10.";
    }

    leaf max-beamId-tables-supported {
      if-feature "or-feat:MULTIPLE-BEAMID-TABLES-SUPPORTED";
      type uint8;
        description
          "This parameter defines the maximum number of beamId tables supported by the O-RU.";
    }

    leaf min-hibernate-time-duration {
      if-feature "or-feat:DEEP-HIBERNATE";
      type uint32;
      units minutes;
      description
        "Informs about the minimum hibernate-time duration that O-RU
        supports deep-hibernate sleep";
    }

    leaf max-hibernate-time-duration {
      if-feature "or-feat:DEEP-HIBERNATE";
      type uint32;
      units minutes;
      mandatory true;
      description
        "Informs about the maximum hibernate-time duration that O-RU supports deep-hibernate sleep";
    }
  }

  grouping sub-band-info {
    description "container for collection of leafs for LAA sub-band 46";
    list sub-band-frequency-ranges {
      key sub-band;
      description "frequency information on a per sub-band basis";
      leaf sub-band {
        type sub-band-string;
        description "Sub band when band 46";
      }
      uses sub-band-max-min-ul-dl-frequency;
    }
    leaf number-of-laa-scarriers {
      type uint8;
      description
        "This value indicates the number of LAA secondary carriers supported at O-RU.";
    }

    leaf maximum-laa-buffer-size {
      type uint16;
      description
        "Maximum O-RU buffer size in Kilobytes (KB) per CC. This parameter is
         needed at the O-DU to know how much data can be sent in advance
         and stored at the O-RU to address the LBT uncertainty.";
    }

    leaf maximum-processing-time {
      type uint16;
      units microseconds;
      description
        "Maximum O-RU Processing time in microseconds at the O-RU to handle the
         received/transmitted packets from/to the O-DU. This parameter is
         needed at the O-DU to determine the time when it needs to send
         the data to the O-RU.";
    }

    leaf self-configure {
      type boolean;
      description "This value indicates that the O-RU can manage the contention window locally. ";
    }
  }

  grouping supported-filter-pass-bandwidths {
    description
      "Grouping of filter pass bandwidth capabilities";

    list supported-filter-pass-bandwidths {
      key "id";
      config false;

      leaf id {
        type uint32;
        description
          "Identification number for a supported filter pass bandwidth.";
      }

      leaf type {
        type enumeration {
          enum LTE {
            description
              "LTE technology.";
          }
          enum NR {
            description
              "NR technology.";
          }
          enum DSS_LTE_NR {
            if-feature DSS_LTE_NR;
            description
              "DSS of LTE and NR technologies.";
          }
        }
        description
          "Supported carrier type for filter pass bandwidth value.";
      }

      leaf carrier-bandwidth {
        type uint64;
        units Hz;

        description
          "Bandwidth of a carrier for which filter pass bandwidth can be used.";
      }

      leaf filter-pass-bandwidth {
        type uint64;
        units Hz;

        description
          "Filter pass bandwidth of a carrier.";
      }

      description
        "List of supported filter pass bandwidths by carriers.";
    }
  }

  grouping support-for-dl {
    description
      "Grouping for DL specific parameters";

    leaf max-supported-frequency-dl {
      type uint64;
      description
        "This value indicates Maximum supported downlink frequency. Value unit is Hz.";
    }

    leaf min-supported-frequency-dl {
      type uint64;
      description
        "This value indicates Minimum supported downlink frequency. Value unit is Hz.";
    }

    leaf max-supported-bandwidth-dl {
      type uint64;
      description
        "This value indicates Maximum total downlink bandwidth in module. Value unit is Hz.";
    }

    leaf max-num-carriers-dl {
      type uint32;
      description
        "This value indicates Maximum number of downlink carriers in module.";
    }

    leaf max-carrier-bandwidth-dl {
      type uint64;
      description
        "This value indicates Maximum bandwidth per downlink carrier. Value unit is Hz.";
    }

    leaf min-carrier-bandwidth-dl {
      type uint64;
      description
        "This value indicates Minimum bandwidth per downlink carrier. Value unit is Hz.";
    }

    leaf-list supported-technology-dl {
      type enumeration{
        enum LTE {
          description "LTE is supported in DL path.";
        }
        enum NR {
          description "NR is supported in DL path.";
        }
        enum DSS_LTE_NR {
          if-feature DSS_LTE_NR;
          description
            "DSS is supported in the DL, which implicitly means LTE and NR are also
            BOTH supported in the DL.";
        }
      }
      min-elements 1;
      description
        "This list provides information regarding technologies supported in DL path";
    }

    container supported-filter-pass-bandwidths-dl {
      description
        "Filter pass bandwidth capabilities for DL.";
      uses supported-filter-pass-bandwidths;
    }

    leaf-list tx-array-beamId-table-indexes {
      if-feature "or-feat:MULTIPLE-BEAMID-TABLES-SUPPORTED";
      type uint8;
      min-elements 1;
      description
        "When O-RU advertises support for multiple beamId tables, this list shall specify the beamId table indexes
        associated with a given tx-array capabilities list entry. O-DU shall be restricted to choose
        one or multiple entries for a given configured tx-array-carrier from this list.
        Note: tx-array and rx-array may use the same beamId table indexes.";
    }

  }

  grouping support-for-ul {
    description
      "Grouping for UL specific parameters";

    leaf max-supported-frequency-ul {
      type uint64;
      description
        "This value indicates Maximum supported uplink frequency. Value unit is Hz.";
    }

    leaf min-supported-frequency-ul {
      type uint64;
      description
        "This value indicates Minimum supported uplink frequency. Value unit is Hz.";
    }

    leaf max-supported-bandwidth-ul {
      type uint64;
      description
        "This value indicates Maximum total uplink bandwidth in module. Value unit is Hz.";
    }

    leaf max-num-carriers-ul {
      type uint32;
      description
        "This value indicates Maximum number of uplink carriers in module.";
    }

    leaf max-carrier-bandwidth-ul {
      type uint64;
      description
        "This value indicates Maximum bandwidth per uplink carrier. Value unit is Hz.";
    }

    leaf min-carrier-bandwidth-ul {
      type uint64;
      description
        "This value indicates Minimum bandwidth per uplink carrier. Value unit is Hz.";
    }

    leaf-list supported-technology-ul {
      type enumeration{
        enum LTE {
          description "LTE is supported in UL path.";
        }
        enum NR {
          description "NR is supported in UL path.";
        }
        enum DSS_LTE_NR {
          if-feature DSS_LTE_NR;
          description
            "DSS is supported in the UL, which implicitly means LTE and NR are also
            BOTH supported in the UL.";
        }
      }
      min-elements 1;
      description
        "This list provides information regarding technologies supported in UL path";
    }

    container supported-filter-pass-bandwidths-ul {
      description
        "Filter pass bandwidth capabilities for UL.";
      uses supported-filter-pass-bandwidths;
    }

    leaf-list rx-array-beamId-table-indexes {
      if-feature "or-feat:MULTIPLE-BEAMID-TABLES-SUPPORTED";
      type uint8;
      min-elements 1;
      description
        "When O-RU advertises support for multiple beamId tables, this list shall specify the beamId table indexes
        associated with a given rx-array capabilities list entry. O-DU shall be restricted to choose
        one or multiple entries for a given configured rx-array-carrier from this list.
        Note: tx-array and rx-array may use the same beamId table indexes.";
    }
  }

  grouping band-capabilities {
    description
      "Capabilities that are needed to be defined per each band";

    leaf band-number {
      type uint16;
      description
        "Band number - the integer representation of the operating band, as defined in
        3GPP TS 38.104, clause 5.2 and/or 3GPP TS 36.104, clause 5.5. For example, 5G band
        n77 is represented as integer '77'.

        The support of band specific capabilities is further refined by the nested parameters
        (e.g., min/max-supported-frequency-dl or min/max-carrier-bandwidth-dl)";
    }

    container sub-band-info {
      when "../band-number = '46'";
      if-feature "o-ran-module-cap:LAA";
      description "container for collection of leafs for LAA sub-band 46";
      uses sub-band-info;
    }

    uses support-for-dl;
    uses support-for-ul;

    leaf max-num-component-carriers {
      type uint8;
      description "maximum number of component carriers supported by the O-RU. This parameter is the
      cumulative value of 'max-num-carriers-dl' and 'max-num-carriers-ul'";
    }

    leaf max-num-bands {
      type uint16;
      status deprecated;
      description "maximum number of bands supported by the O-RU.
      Parameter moved to ru-capabilities, hence deprecated";
    }

    leaf max-num-sectors {
      type uint8;
      description "maximum number of sectors supported by the O-RU";
    }

    leaf max-power-per-antenna {
      type decimal64{
        fraction-digits 4;
      }
      status deprecated;
      description
        "This value indicates Maximum Power per band per antenna. Value unit is dBm.

        The parameter is deprecated. min-gain and max-gain define constraints related to
        TX power budget, as defined in CUS-Plane, clause 8.1.3.3.";
    }

    leaf min-power-per-antenna {
      type decimal64{
        fraction-digits 4;
      }
      status deprecated;
      description
        "This value indicates Minimum Power per band per antenna. Value unit is dBm.

        The parameter is deprecated. min-gain and max-gain define constraints related to
        TX power budget, as defined in CUS-Plane, clause 8.1.3.3.";
    }

    leaf codebook-configuration_ng {
        type uint8;
        status deprecated;
        description
          "This parameter informs the precoder codebook_ng that are used for precoding.
          Parameter deprecated since antenna topology already specified in [tr]x-array";
      }

    leaf codebook-configuration_n1 {
        type uint8;
        status deprecated;
        description
          "This parameter informs the precoder codebook_n1 that are used for precoding
          Parameter deprecated since antenna topology already specified in [tr]x-array";
      }

    leaf codebook-configuration_n2 {
        type uint8;
        status deprecated;
        description
          "This parameter informs the precoder codebook_n2 that are used for precoding
          Parameter deprecated since antenna topology already specified in [tr]x-array";
    }
  }

  container module-capability {

    description
      "module capability object responsible for providing module capability.";

    container ru-capabilities {
      config false;
      description
        "Structure representing set of capabilities.";

      uses ru-capabilities;
    }

    list band-capabilities {
      key band-number;
      config false;
      description
        "Capabilities that are needed to be defined per each band";

      uses band-capabilities;
    }
    container rw-sub-band-info {
      if-feature "o-ran-module-cap:LAA";
      description "config true leafrefs for use as constraints for config true leafs";
      leaf rw-number-of-laa-scarriers {
        type leafref {
          path "/module-capability/band-capabilities/sub-band-info/number-of-laa-scarriers";
          require-instance false;
        }
        description
          "This value indicates the number of LAA secondary carriers supported at O-RU.";
      }
      leaf rw-self-configure {
        type leafref {
          path "/module-capability/band-capabilities/sub-band-info/self-configure";
          require-instance false;
        }
        description
          "This value indicates that the O-RU can manage the contention window locally.";
      }
    }
    }
}

## File: RU Specific Models/Radio/o-ran-shared-cell.yang

module o-ran-shared-cell {
  yang-version 1.1;
  namespace "urn:o-ran:shared-cell:1.0";
  prefix "o-ran-sc";

  import o-ran-compression-factors {
    prefix "cf";
  }
  import o-ran-processing-element {
    prefix "o-ran-pe";
  }

  import o-ran-common-yang-types {
    prefix "o-ran-cmn";
  }

  import o-ran-wg4-features {
    prefix "feat";
  }

  import o-ran-usermgmt {
    prefix "or-user";
  }

  import ietf-interfaces {
    prefix "if";
  }

  import o-ran-interfaces {
    prefix "o-ran-int";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the YANG definitions for shared cell capable O-RU (Cascade and FHM).

    Copyright 2024 the O-RAN Alliance.

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

  revision 2024-12-23 {
    description
      "version 17.0.0

      1) removing case SELECTIVE option ";

    reference "ORAN-WG4.M.0-v17.00";
  }

  revision "2024-04-15" {
    description
      "version 15.0.0

      1) add copy combine capacity per port.
      2) fix of missed radio timing correction.";

    reference "ORAN-WG4.M.0-v15.00";
  }

  revision "2023-08-14" {
    description
      "version 13.0.0

      1) ability to support copy combine delay per SCS";

    reference "ORAN-WG4.M.0-v13.00";
  }

  revision "2023-04-10" {
    description
      "version 12.0.0

      1) supported SCSes are added as the capability
      2) deprecate downlink-radio-frame-offset in copy entity";

    reference "ORAN-WG4.M.0-v12.00";
  }

  revision "2022-12-05" {
    description
      "version 11.0.0

      1) eaxc-id-group support in shared cell";

    reference "ORAN-WG4.M.0-v11.00";
  }

  revision "2022-08-15" {
    description
      "version 10.0.0

      1) added SHARED-ORU-MULTI-OPERATOR anf SHARED-ORU-MULTI-ODU features";

    reference "ORAN-WG4.M.0-v10.00";
  }
  revision "2021-12-01" {
    description
      "version 8.0.0

      1) typographical corrections in descriptions.
      2) add support for multi-cell in cascade mode.
      3) add SCS info and mapping with eaxc-id into Combine-entity.
      4) add enhanced-t-combine feature Add T_combine-net (capability)
      5) add Tx-duration, enhanced-t-combine-enabled";

    reference "ORAN-WG4.M.0-v08.00";
  }

  revision "2020-12-10" {
    description
      "version 5.0.0

      1) added selective combining using beamId.";

    reference "ORAN-WG4.M.0-v05.00";
  }

  revision "2020-04-17" {
    description
      "version 3.0.0

      1) initial version for shared cell O-RU related yang module.";

    reference "ORAN-WG4.M.0-v03.00";
  }

  feature FHM {
    description
      "Presence of feature indicates that O-RU acts as FHM and doesn't have
       the capability of radio transmission and reception. Absence of feature
       indicates that O-RU does not act as FHM and supports radio transmission
       and reception function.";
  }

  feature SELECTIVE-BEAM-ID {
    description
      "Presence of feature indicates that FHM supports the selective combining
      function by using beamId";
  }

  // radio offsets
  grouping radio-offset {
    description
      "shared cell FHM mode needs the configuration for radio related offset";
    leaf downlink-radio-frame-offset {
      type uint32 {
        range 0..12288000;
      }
      mandatory true;

      description
        "This parameter is used for offsetting the starting position of
         10ms radio frame.
         Note: Unit is 1/1.2288e9 sec.";
    }

    leaf downlink-sfn-offset {
      type int16 {
        range -32768..32767;
      }
      mandatory true;

      description
        "This parameter is used for offsetting SFN value.
        Unit is 10ms.";
    }
  }

  // shared cell capability
  grouping shared-cell-module-capability{
    description
      "shared cell related module capability of O-RU";
    container shared-cell-module-cap {
      config false;
      description
      "indicates shared cell specific module capability";

      leaf t-copy {
        type uint32;
        units nanoseconds;
        mandatory true;
        description
          "Corresponding to the maximum FHM or cascade O-RU processing delay
           between receiving an IQ sample over the fronthaul interface from
           the north-node, coping it and transmitting it over the fronthaul
           interface to the south-node.";
      }

      leaf t-combine {
        type uint32;
        units nanoseconds;
        mandatory true;
        description
          "Corresponding to the maximum FHM or cascade O-RU processing delay
           between receiving an IQ sample over the fronthaul interface from
           the south-node(s), combing them and transmitting it over the
           fronthaul interface to the north-node.

           When enhanced-t-combine-enabled is 'true' by O-DU, FHM/Cascade O-RU supporting
           ENHANCED-T-COMBINE uses t-combine-net and tx-duration instead of this value.";
      }

      leaf t-combine-net {
        type uint32;
        units nanoseconds;
        description
          "Corresponding to the maximum FHM or cascade O-RU processing delay
           between starting time to combine IQ data from received message(s)
           and starting time to transmit them with a message over the fronthaul
           interface to O-DU or the north-node.";
         }

      leaf-list scs-supported {
        if-feature FHM;
        type o-ran-cmn:scs-config-type;
        description
          "List of supported scs by FHM";
      }

      list combine-delay-per-scs {
        key "scs";
        description
          "This is a list of combine delay according to SCS.";

          leaf scs {
            type o-ran-cmn:scs-config-type;
            description
            "sub-carrier spacing of U-Plane messages.";
          }

          leaf t-combine-net {
            type uint32;
            units nanoseconds;
            description
              "t-combine-net value corresponding to SCS.";
          }

          leaf t-combine {
            type uint32;
            units nanoseconds;
            description
              "t-combine value corresponding to SCS.";
          }
      }

      leaf ta3-prime-max-upper-range {
        type uint32;
        units nanoseconds;
        mandatory true;
        description
          "The upper limit for the configurable ta3-prime-max value.
           This is the capability information of O-RU that comes from
           the O-RU internal memory for the combine operation.";
      }

      leaf max-number-node-copy-and-combine {
        type uint8{
          range "1..max";
        }
        mandatory true;
        description
          "Indicates the maximum number of south-node for the copy-and-combine
           functions of cascade O-RU or FHM.
           For cascade mode, this value is one. It means
           O-RU copies the stream of eCPRI messages only once for the connected
           south-node and copied stream are forwarded to the south-node.
           Similarly, the cascade O-RU combines once for the streams of
           eCPRI messages received from the south node and the streams of radio
           reception function.
           For FHM mode, FHM is able to copy the stream of eCPRI messages
           according to this parameter and forward each copied stream
           to each south-node. FHM is able to combine the streams of eCPRI
           messages received from the multiple south-nodes corresponding to
           this parameter at most.";
      }

      leaf max-number-eaxcid-copy {
        type uint8{
          range "1..max";
        }
        mandatory true;
        description
          "Indicates the maximum number of eaxc-ids for the copy functions
           of cascade O-RU or FHM.
           For Cascade O-RU, it is same number of static-low-level-tx-endpoints plus
           static-low-level-rx-endpoints, for which low-level-tx(rx)-endpoints
           are configured with eaxc-id in u-plane configuration.
           For FHM, it is max configurable number of eaxc-ids in
           tx-eaxc-id and rx-eaxc-id in shared-cell-copy-uplane-config.";
      }

      leaf max-number-eaxcid-combine {
        type uint8{
          range "1..max";
        }
        mandatory true;
        description
          "Indicates the maximum number of eaxc-ids for the combine functions
           of cascade O-RU or FHM.
           For Cascade O-RU, it is same number of static-low-level-rx-endpoints,
           for which low-level-rx-endpoints are configured with eaxc-id in
           u-plane configuration.
           For FHM, it is max configurable number of eaxc-ids in rx-eaxc-id
           in shared-cell-combine-uplane-config across all combine-enities.

           When multiple scs or multiple c-plane section types with a single eaxc-id
           are used for FHM supporting MULTIPLE-SCS-IN-EAXC, all eaxc-id instances
           across scs, C-Plane section types and combine entities are counted even
           though they are same eaxc-id. The counted number shall not excced this value.";
      }

      list copy-combine-capacity-per-port {
        key "port-number";
        description
          "Presence of this list indicates that FHM has a different capacity per port in south bound.
          This is a list of copy-combine-capacity per port-number for copy and combining function.
          Absence of this list indicates all ports has the universal capacity described by other RO parameters.";

        leaf port-number {
          type leafref {
            path "/if:interfaces/if:interface/o-ran-int:port-reference/o-ran-int:port-number";
          }
          description
            "port number assigned to interface and its physical port.";
        }

        leaf copy-combine-capacity-type-id {
          type leafref {
            path "../../copy-combine-capacity-type/id";
          }
          description
            "copy-combine-capacity-type assigned to port-number.";
        }
      }

        list copy-combine-capacity-type {
          key "id";
          description
            "Properties of copy-combine-capacity for copy and combine functions.";

          leaf id {
            type uint8;
            description
              "Identifies type of copy-combine-capacity.";
          }

          leaf max-num-of-nodes-combine-in-port {
            type uint8  {
              range "1..max";
            }
              description
                "This parameter indicates how many south-nodes connected to a single port can be supported
                at maximum for combine functions regardless of whether eaxc-ids are same or not.";
          }

          leaf max-num-of-eaxc-id-combine-in-port {
            type uint16  {
              range "1..max";
            }
            description
              "This parameter indicates how many eaxc-ids for combine functions can be supported in a port at maximum.
              Multiple eAxC flows with the same eaxc-id are counted as the corresponding plural value.
              E.g. 8 eAxC flows with eAxC-id=0 are counted as 8.";
          }
        }

      container eaxc-id-group-capabilities {
        if-feature FHM;
        description
          "Presence of this container indicates that FHM can refer to C-Plane in UL direction
          to support combining U-Plane messages commanded by C-Plane with Section Extension 10.";
        leaf max-num-rx-eaxc-id-groups {
          type uint8;
          description
            "Maximum number of configurable rx-eaxc-id-group supported by FHM.";
        }

        leaf max-num-rx-eaxc-ids-per-group {
          type uint8;
          description
            "Maximum number of member-rx-eaxc-id in single rx-eaxc-id-group supported by FHM.";
        }
      }

      list compression-method-supported {
        if-feature FHM;
        description
          "List of supported compression methods for FHM";
        uses cf:compression-details;
      }

      leaf multi-cell-in-cascade-mode-supported {
        type boolean;
        description
          "This parameter indicates whether O-RU supports multi cell
           operation in shared cell cascade mode.
           If multi-cell-in-cascade-mode-supported = false then each shared cell
           O-RU in a physical cascaded chain can only be used for operating
           carriers that correspond to a single cell.
           If multi-cell-in-cascade-mode-supported = true, it means that the O-RU
           may be configured such that the shared-cell carriers can be used to
           support mutiple different cells, where each cell is served by its own
           separate cascade chain. See CUS-Plane Specification for more details.";
      }
    }
  }

  // shared cell mode configuration
  grouping shared-cell-mode{
    description
      "A grouping defining the schema nodes for shared cell configuration";
    choice shared-cell-copy-combine-mode {
      case COMMON {
        description
         "all eCPRI payload are the target for copy and combine functions.
          Common set of eaxc-ids are used in O-RU in the shared cell network.
          For cascade mode, eaxc-ids of low-level-tx(rx)-links in
          o-ran-uplane-configuration that has relation to the
          processing-element are used.
          For FHM mode, eaxc-ids of shared-cell-copy-uplane-config and
          those of shared-cell-combine-config are used.";

          uses shared-cell-copy-configuration;
          uses shared-cell-combine-configuration;
      }
      case SELECTIVE-BEAM-ID {
        if-feature "FHM and SELECTIVE-BEAM-ID";
        description
        "Case that FHM has selective transmission and reception function
         by using beamId";

         uses shared-cell-copy-configuration-for-selective-beam-id;
         uses shared-cell-combine-configuration-for-selective-beam-id;
      }
      description
       "configuration mode can be selected.";
    }
  }

  // processing elements set
  grouping processing-element-set{
    description
      "shared-cell-copy/combine-configuration refers the pair of processing
      element set of a north-node and a south-node.";

    leaf north-node-processing-element{
      type leafref {
        path "/o-ran-pe:processing-elements/o-ran-pe:ru-elements/o-ran-pe:name";
        }
      description
        "north-node processing element indicates the set of
         'north-node-mac-address', 'ru-mac-address' and 'vlan-id' in case
         north-eth-flow is selected for the transport flow.";
    }

    leaf-list south-node-processing-elements{
      type leafref {
        path "/o-ran-pe:processing-elements/o-ran-pe:ru-elements/o-ran-pe:name";
      }
      description
        "south-node processing elements indicate the sets of
         'south-node-mac-address', 'ru-mac-address' and 'vlan-id' in case
          south-eth-flow is selected for the transport flow.";
    }
  } // processing-element-set

  // processing elements set for SELECTIVE-BEAM-ID
  grouping processing-element-set-for-selective-beam-id {
    description
      "shared-cell-copy/combine-configuration refers the pair of processing
      element set of a north-node and a south-node.";

    leaf north-node-processing-element {
      type leafref {
        path "/o-ran-pe:processing-elements/o-ran-pe:ru-elements/o-ran-pe:name";
        }
      description
        "north-node processing element indicates the set of
         'north-node-mac-address', 'ru-mac-address' and 'vlan-id' in case
         north-eth-flow is selected for the transport flow.";
    }

    leaf-list south-node-processing-elements {
      type leafref {
        path "/o-ran-pe:processing-elements/o-ran-pe:ru-elements/o-ran-pe:name";
      }
      description
        "south-node processing elements indicate the sets of
         'south-node-mac-address', 'ru-mac-address' and 'vlan-id' in case
          south-eth-flow is selected for the transport flow.";
    }

    list mapping-table-for-selective-beam-id {
      key "global-beam-id south-node-processing-elements";
      description "the mapping information between global-beam-id and local-beam-id";

      leaf global-beam-id {
        type uint16;
        description
          "This parameter indicates the beam ID to be applied to the U-Plane data
          on O-DU as same as existing beamId. One global beamId can be mapped
          to one or multiple local beamId.
          The mapping information between each global beamId, O-RU(s),
          and local beamId is configured to the FHM during M-Plane start-up procedure.";
      }

      leaf south-node-processing-elements {
        type leafref {
          path "/o-ran-pe:processing-elements/o-ran-pe:ru-elements/o-ran-pe:name";
        }
        description
          "south-node processing elements indicate the sets of
           'south-node-mac-address', 'ru-mac-address' and 'vlan-id' in case
            south-eth-flow is selected for the transport flow.";
      }

      leaf local-beam-id {
        type uint16;
        description
          "This parameter indicates the beam ID to be applied to
          the U-Plane data on O-RU as same as existing beamId.
          In one O-RU, different beams can not map to one global beamId.
          Local beamId shall be unique within O-RU.";
      }
    }
  } // processing-element-set for SELECTIVE-BEAM-ID

  // shared cell copy and combine config
  grouping shared-cell-copy-configuration {
    description
      "shared-cell-copy-configuration";
    list shared-cell-copy-entities {
      key name;
      description
        "copy entity. The north-node is an O-DU or an O-RU.
         The south-nodes are O-RUs.
         The number of south-nodes is at most one for cascade O-RU and
         more than one for FHM";

      leaf name{
        type string;
        description
         "the name of shared-cell-copy-entity.";
      }

      leaf odu-id {
        if-feature feat:SHARED-ORU-MULTI-ODU;
        type string;
        description
          "An optional o-du identity associated with this list entry.
          When present, indicates that the list entry is associated with
          a particular odu-id.";
      }

      leaf sro-id {
        if-feature feat:SHARED-ORU-MULTI-OPERATOR;
        type leafref {
          path "/or-user:users/or-user:user/or-user:sro-id";
        }
        description
          "An optional shared resource identity associated with this list entry.
          When present, indicates that the list entry corresponds to a shared cell copy entity
          associated with a shared resouce operator where the sro-id
          identifies the specific shared resouce operator.

          This schema-node is used to refince NACM privileges for shared
          resource operators";
      }

      uses processing-element-set;

      container shared-cell-copy-uplane-config {
        if-feature FHM;
        description
          "Container consists of uplane-info for copy-configuration for FHM.";

        list tx-eaxc-id {
          key eaxc-id;
          description
            "used for low-level-tx-endpoints to copy";

          leaf eaxc-id {
            type uint16;
            description
              "encoded value of eaxcid to be read by CU-Plane";
          }
        }

        list rx-eaxc-id {
          key eaxc-id;
          description
            "used for low-level-rx-endpoints to copy";

          leaf eaxc-id {
            type uint16;
            description
              "encoded value of eaxcid to be read by CU-Plane";
          }
        }

        leaf downlink-radio-frame-offset {
          type uint32 {
            range 0..12288000;
          }
          status deprecated;

          description
            "This parameter is used for offsetting the starting position of 10ms radio frame.
            Note: Unit is 1/1.2288e9 sec.
            This node is not relevant to copy function and is deprecated.";
        }

        leaf downlink-sfn-offset {
          type int16 {
            range -32768..32767;
          }
          status deprecated;

          description
            "This parameter is used for offsetting SFN value.Unit is 10ms.
            Unit is 10ms.
            This node is not relevant to copy function and is deprecated.";
        }
      }
    } // shared-cell-copy-entities
  } // shared-cell-copy-configuration (groupings)

  grouping shared-cell-copy-configuration-for-selective-beam-id {
    description
      "shared-cell-copy-configuration for selective function by beam id";
    list shared-cell-copy-entities-selective-beam-id {
      key name;
      description
        "copy entity. The north-node is an O-DU or an O-RU.
         The south-nodes are O-RUs.
         The number of south-nodes is at most one for cascade O-RU and
         more than one for FHM";

      leaf name {
        type string;
        description
         "the name of shared-cell-copy-entity.";
      }

      leaf odu-id {
        if-feature feat:SHARED-ORU-MULTI-ODU;
        type string;
        description
          "An optional o-du identity associated with this list entry.
          When present, indicates that the list entry is associated with
          a particular odu-id.";
      }

      leaf sro-id {
        if-feature feat:SHARED-ORU-MULTI-OPERATOR;
        type leafref {
          path "/or-user:users/or-user:user/or-user:sro-id";
        }
        description
          "An optional shared resource identity associated with this list entry.
          When present, indicates that the list entry corresponds to a shared cell copy entity
          with selective bean id associated with a shared resouce operator where the sro-id
          identifies the specific shared resouce operator.

          This schema-node is used to refince NACM privileges for shared
          resource operators";
      }

      uses processing-element-set-for-selective-beam-id;

      container shared-cell-copy-uplane-config {
        if-feature FHM;
        description
          "Container consists of uplane-info for copy-configuration for FHM.";

        list tx-eaxc-id {
          key eaxc-id;
          description
            "used for low-level-tx-endpoints to copy";

          leaf eaxc-id {
            type uint16;
            description
              "encoded value of eaxcid to be read by CU-Plane";
          }
      }
        list rx-eaxc-id {
          key eaxc-id;
          description
            "used for low-level-rx-endpoints to copy";

          leaf eaxc-id {
            type uint16;
            description
              "encoded value of eaxcid to be read by CU-Plane";
          }
        }

        leaf downlink-radio-frame-offset {
          type uint32 {
            range 0..12288000;
          }
          status deprecated;

          description
            "This parameter is used for offsetting the starting position of 10ms radio frame.
            Note: Unit is 1/1.2288e9 sec.
            This node is not relevant to copy function and is deprecated.";
        }

        leaf downlink-sfn-offset {
          type int16 {
            range -32768..32767;
          }
          status deprecated;

          description
            "This parameter is used for offsetting SFN value.Unit is 10ms.
            Unit is 10ms.
            This node is not relevant to copy function and is deprecated.";
        }
      }
    } // shared-cell-copy-entities for SELECTIVE-BEAM-ID
  } // shared-cell-copy-configuration (groupings) for SELECTIVE-BEAM-ID

  grouping shared-cell-combine-configuration {
    description
      "shared-cell-combine-configuration";

    list shared-cell-combine-entities {
      key name;
      description
        "combine configuration. The north-node is O-DU or O-RU.
         The south-nodes are O-RUs.
         The number of south-nodes is at most one for cascade O-RU and
         more than one for FHM";

      leaf name{
        type string;
        description
         "name of shared-cell-combine-entity";
      }

      leaf odu-id {
        if-feature feat:SHARED-ORU-MULTI-ODU;
        type string;
        description
          "An optional o-du identity associated with this list entry.
          When present, indicates that the list entry is associated with
          a particular odu-id.";
      }

      leaf sro-id {
        if-feature feat:SHARED-ORU-MULTI-OPERATOR;
        type leafref {
          path "/or-user:users/or-user:user/or-user:sro-id";
        }
        description
          "An optional shared resource identity associated with this list entry.
          When present, indicates that the list entry corresponds to a shared cell combine entity
          associated with a shared resouce operator where the sro-id
          identifies the specific shared resouce operator.

          This schema-node is used to refince NACM privileges for shared
          resource operators";
      }

      uses processing-element-set;

      leaf scs {
            type o-ran-cmn:scs-config-type;
            description
            "sub-carrier spacing of U-Plane messages belong to combine-entity";
        }

      leaf ta3-prime-max {
        type uint32;
        units nanoseconds;
        description
          "indicates the latest time that FHM or cascade O-RU is allowed to
           send UL U-plane message to north-node relative to reception
           timing at O-RU antenna.";
      }

      leaf tx-duration {
        type uint32;
        units nanoseconds;
        description
          "informs FHM/Cascade O-RU of the maximum duration time of transmission
          over the fronthaul interface to O-DU or north-node for messages
          to be sent within Ta3-prime-max.";
      }

      uses shared-cell-combine-uplane-config;
    }
  }

  grouping shared-cell-combine-configuration-for-selective-beam-id {
    description
      "shared-cell-combine-configuration for selective function by beam id";

    list shared-cell-combine-entities-for-selective-beam-id {
      key name;
      description
        "combine configuration. The north-node is O-DU or O-RU.
         The south-nodes are O-RUs.
         The number of south-nodes is at most one for cascade O-RU and
         more than one for FHM";

      leaf name {
        type string;
        description
         "name of shared-cell-combine-entity";
      }

      leaf odu-id {
        if-feature feat:SHARED-ORU-MULTI-ODU;
        type string;
        description
          "An optional o-du identity associated with this list entry.
          When present, indicates that the list entry is associated with
          a particular odu-id.";
      }

      leaf sro-id {
        if-feature feat:SHARED-ORU-MULTI-OPERATOR;
        type leafref {
          path "/or-user:users/or-user:user/or-user:sro-id";
        }
        description
          "An optional shared resource identity associated with this list entry.
          When present, indicates that the list entry corresponds to a shared cell combine entity
          for selective beam id associated with a shared resouce operator where the sro-id
          identifies the specific shared resouce operator.

          This schema-node is used to refince NACM privileges for shared
          resource operators";
      }

      uses processing-element-set;

      leaf scs {
          type o-ran-cmn:scs-config-type;
          description
            "sub-carrier spacing of U-Plane messages belong to combine-entity";
        }

      leaf ta3-prime-max {
        type uint32;
        units nanoseconds;
        description
          "indicates the latest time that FHM or cascade O-RU is allowed to
           send UL U-plane message to north-node relative to reception
           timing at O-RU antenna.";
      }

      leaf tx-duration {
        type uint32;
        units nanoseconds;
        description
          "informs FHM/Cascade O-RU of the maximum duration time of transmission
          over the fronthaul interface to O-DU or north-node for messages
          to be sent within Ta3-prime-max.";
      }

      uses shared-cell-combine-uplane-config;
    }
  }

  grouping shared-cell-combine-uplane-config {
    description
      "shared cell related uplane configuration applicable to O-RU which
       doesn't have radio transmission capability";
    container shared-cell-combine-uplane-config {
      if-feature FHM;
      description
        "when O-RU doesn't have radio transmission availability for FHM mode,
         the required u-plane configuration for copy and combine function
         are defined, instead of the lists of o-ran-uplane-conf.yang";

      list rx-eaxc-id {
        key eaxc-id;
        description
          "used for low-level-rx-endpoints to combine";
        leaf eaxc-id {
          type uint16;
          description
            "encoded value of eaxc-id to be read by CU-Plane";
        }

      leaf  number-of-prb {
        type uint16;
        description
          "Determines max number of PRBs that can be scheduled in all sections
          per one symbol.
          This value is used when uplink C-plane message indicates that all PRBs
          is indicated in the field of numPrbc or tx-duration is calculated.";
      }

      leaf-list cp-ul-section-type {
         type enumeration {
            enum ST1 {
              description
                "section type 1 is used.";
            }
            enum ST3P{
             description
                "section type 3 is used for PRACH .";
            }
            enum ST3M{
             description
                "section type 3 is used for PUxCH when mixed numeroloy is applied.";
            }
          }
        description
            "indicates what section type is used for a specific eaxc-id with a specfic
            SCS/frameStructure which belongs to this combine-entity.";
       }

        container comression-method {
          description
            "for combine mechanism, compression method per eaxc-id applied in
             south-node is known to FHM ";
          uses cf:compression-details;
        }
      }

      uses radio-offset;

      leaf n-ta-offset {
        type uint32;
        units Tc;
        mandatory true;
        description
          "Value of configurable N-TA offset
          units are Tc=~0.5ns=1/1.96608GHz";
      }

      leaf  number-of-prb {
        type uint16;
        mandatory true;
        status deprecated;
        description
          "Determines max number of PRBs that will be used in all sections
          per one symbol.
          This value is used only when uplink C-plane message indicates that
          all PRB is used in the field of numPrbc

          This node is deprecated and replaced by number-of-prb in the list of rx-eaxc-id.
          This movement is intended to prevent the fragmentation of shared-cell-combine-entities
          according to the different value of number-of-prb.";
      }
    }
  }

// top-level container
  container shared-cell{
    description
      "This container for shared-cell consists of capability information and
       configurable parameters";
    uses shared-cell-module-capability;

    container shared-cell-config {
      description "configuration for shared cell.";
      uses shared-cell-mode;

      leaf max-num-rx-eaxc-ids-per-group {
        if-feature FHM;
        type leafref {
          path "/o-ran-sc:shared-cell/o-ran-sc:shared-cell-module-cap/o-ran-sc:eaxc-id-group-capabilities/o-ran-sc:max-num-rx-eaxc-ids-per-group";
          require-instance false;
        }
        description "RW value of max-num-rx-eaxc-ids-per-group";
      }
      leaf max-num-rx-eaxc-id-groups {
        if-feature FHM;
        type leafref {
          path "/o-ran-sc:shared-cell/o-ran-sc:shared-cell-module-cap/o-ran-sc:eaxc-id-group-capabilities/o-ran-sc:max-num-rx-eaxc-id-groups";
          require-instance false;
        }
        description "RW value of max-num-rx-eaxc-id-groups";
      }

      list rx-eaxc-id-group {
        if-feature FHM;
        must "count(../rx-eaxc-id-group) <= ../max-num-rx-eaxc-id-groups" {
          error-message "too many rx-eaxcid-id groups";
        }
        key "representative-rx-eaxc-id";
        description
          "This is a list of the groups of the eAxC IDs.
          Each group is a union of a 'representative-rx-eaxc-id'and 'member-rx-eaxc-id's.
          When section type 3 C-Plane in UL direction is used with Section Extension 10 in the shared cell,
          this group shall be informed to FHM.";
        leaf representative-rx-eaxc-id {
          type uint16;
          description
            "This parameter contains eAxC_ID that populates content of C-Plane section
            extension 10 to eAxC_IDs configured in the group as 'member-rx-eaxc-id'(s).";
        }
        leaf-list member-rx-eaxc-id {
          type uint16;
          must "count(../member-rx-eaxc-id) <= ../../max-num-rx-eaxc-ids-per-group" {
            error-message "too many rx-eaxcid-id members";
          }
          must "current()!=../representative-rx-eaxc-id" {
            error-message "the representative eaxcid does not need to be a list member";
          }
          description
            "This is a list of member eAxC IDs,which is associated with 'representative-rx-eaxc-id' in a group.";
        }
      }

      leaf enhanced-t-combine-enabled {
        if-feature feat:ENHANCED-T-COMBINE;
        type boolean;
        default false;
           description
             "O-DU informs FHM/Cascade O-RU that t-combine-net and tx-duration
             are used to calculate T-waiting instead of t-combine.";
      }

      leaf multiple-scs-in-eaxc-used {
        if-feature feat:MULTIPLE-SCS-IN-EAXC;
        type boolean;
        default false;
        description
          "O-DU informs FHM/Cascade O-RU that multiple scs or
          multiple section types in a single eAxC id are used.";
      }
    }
  }
}

## File: RU Specific Models/Radio/o-ran-laa.yang

module o-ran-laa {
  yang-version 1.1;
  namespace "urn:o-ran:laa:1.0";
  prefix "o-ran-laa";

  import o-ran-module-cap {
    prefix "mcap";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the configuration for Carrier-selection and dynamic frequency selection (DFS).
    Also this module defines operations for DFS measurement.

    Copyright 2021 the O-RAN Alliance.

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

  revision "2022-08-15" {
    description
      "version 1.2.0

      1) clarified description for laa-ending-dwpts-supported and
         laa-starting-in-second-slot-supported.";

    reference "ORAN-WG4.M.0-v01.00";
  }

  revision "2019-07-03" {
    description
      "version 1.1.0

      1) fixing broken constraints (configuration cannot be dependent on
        operational state). This is a backwards incompatible revision.

        As these constraints only apply when the LAA feature is used, and also
        when considering the limited number of implementation that need to be
        taken into consideration for backwards compatibility, it has been
        agreed to NOT increment the namespace integer.";

    reference "ORAN-WG4.M.0-v01.00";
  }

  revision "2019-02-04" {
    description
      "version 1.0.0

      1) imported model from xRAN
      2) changed namespace and reference from xran to o-ran";

    reference "ORAN-WG4.M.0-v01.00";
  }

  grouping laa-configuration {
    description
      "Grouping for LAA configuration";

    leaf number-of-laa-scarriers {
      type uint8;
      description "Number of LAA secondary carriers to be supported at O-RU.";
    }

    leaf multi-carrier-type {
      type enumeration {
        enum A1 {
          description "multi-carrier type A1";
        }
        enum A2{
          description "multi-carrier type A2";
        }
        enum B1{
          description "multi-carrier type B1";
        }
        enum B2{
          description "multi-carrier type B2";
        }
      }
      description
        "This value indicates the list of multi carrier types which as per the document,
        3GPP TS 36.213 V13.6.0 (2017-06) 15.1.5 Channel access procedure for transmission(s) on multiple carriers.";
    }

    leaf multi-carrier-tx {
      type boolean;
      description
        "This value indicates whether self-deferral is activated or not.";
    }

    leaf multi-carrier-freeze {
      when "../multi-carrier-type='A1'";
      type boolean;
      description "This value indicates if the absence of other technology in the unlicensed band can be guaranteed.";
    }

    leaf laa-ending-dwpts-supported {
      type boolean;
      description
        "This value is configured by NETCONF client(O-DU) and indicates whether LAA ending in DwPTS is supported by O-DU.";
    }

    leaf laa-starting-in-second-slot-supported {
      type boolean;
      description
        "This value is configured by NETCONF client(O-DU) and indicates whether LAA starting in second slot is supported by O-RU";
    }
  }

  container laa-config {
    must "number-of-laa-scarriers <= /mcap:module-capability/mcap:rw-sub-band-info/mcap:rw-number-of-laa-scarriers" {
      error-message "number of laa secondary carriers must be less than supported number of laa scells.";
    }
    presence "indicates LAA configuration";
    description "Container to specify all LAA specific configuration";

    uses laa-configuration;
  }
}

## File: RU Specific Models/Radio/o-ran-laa-operations.yang

module o-ran-laa-operations {
  yang-version 1.1;
  namespace "urn:o-ran:laa-operations:1.0";
  prefix "o-ran-laa-operations";

  import o-ran-module-cap {
    prefix "mcap";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the operations for DFS measurement.

    Copyright 2021 the O-RAN Alliance.

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

  revision "2021-12-01" {
    description
      "version 1.3.0

      1) typographical corrections in descriptions.";

    reference "ORAN-WG4.M.0-v01.00";
  }

  revision "2021-03-22" {
    description
      "version 1.2.0

      1) removing non-ASCII characters from model";

    reference "ORAN-WG4.M.0-v01.00";
  }

  revision "2019-07-03" {
    description
      "version 1.1.0

      1) corrected error in module reference for LAA feature";

    reference "ORAN-WG4.M.0-v01.00";
  }

  revision "2019-02-04" {
    description
      "version 1.0.0

      1) imported model from xRAN
      2) changed namespace and reference from xran to o-ran";

    reference "ORAN-WG4.M.0-v01.00";
  }

  typedef band-num {
    type enumeration {
      enum BAND_46_SUBBAND_A {
        description
          "46a: 5150 MHz - 5250 MHz";
      }
      enum BAND_46_SUBBAND_B {
        description
          "46b: 5250 MHz - 5350 MHz";
      }
      enum BAND_46_SUBBAND_C {
        description
          "46c: 5470 MHz - 5725 MHz";
      }
      enum BAND_46_SUBBAND_D1 {
        description
          "46d1: 5725 MHz - 5850 MHz";
      }
      enum BAND_46_SUBBAND_D2 {
        description
          "46d2: 5850 MHz - 5925 MHz";
      }
    }
    description
      "This value indicates the list of bands supported as per the document,
      3GPP TS 36.104 V14.2.0 (2016-12), 'Section 5.5 Operation bands'.";
  }

  grouping band-configuration {
    description
      "Grouping for band configuration";

    leaf band-number {
      type band-num;
      description
        "This value indicates the list of bands supported as per the document,
        3GPP TS 36.104 V14.2.0 (2016-12), 'Section 5.5 Operation bands'.";
    }
    leaf-list channel-center-frequency {
      type uint16;
      units kilohertz;
      description
        "This value indicates carrier centre frequency in KHz";
    }
  }

  grouping measurement-parameters {
    description
      "Grouping for measurement parameters";

    leaf duration-per-channel {
      type uint16;
      units milliseconds;
      description
        "This value indicates measurement duration per channel in milliseconds.";
    }

    leaf maximum-response-time {
      type uint16;
      units seconds;
      description
        "This value indicates maximum response time (i.e., timer) in seconds.";
    }
  }

  grouping channel-result-element {
    description
      "Grouping for channel result element";

    leaf measured-channel {
      type uint16;
      units kilohertz;
      description
        "This value indicates carrier centre frequency for which the result is computed in KHz.";
    }

    leaf occupancy-ratio {
      type uint8;
      units percent;
      description
        "This value indicates occupancy ratio in percentage.";
    }

    leaf average-rssi {
      type int8;
      units dBm;
      description
        "This value indicates average RSSI in dBm";
    }
  }

  grouping band-result-element {
    description
      "Grouping for band result element";

    leaf band-number {
      type band-num;
      description
        "This value indicates the band for which the result is computed.";
    }

    leaf measurement-success {
      type boolean;
      description
        "This value indicates whether the measurement is successful for the given band.";
    }
    leaf failure-message {
      when "../measurement-success='false'";
      type enumeration {
        enum TIMEOUT {
          description "Timed out waiting for measurement completion.";
        }
      }
      description "This value indicates the detailed error message for failure of the measurement at O-RU.";
    }

    list channel-result {
      when "../measurement-success='true'";
      key "measured-channel";
      description "Results for a particular channel";

      uses channel-result-element;
    }
  }

  //rpc definitions
  rpc start-measurements {
    if-feature mcap:LAA;
    description "Measurements for Carrier-Selection and Dynamic Frequency Selection (DFS)";
    input {
      list band-config {
        key "band-number";
        description "Per band configuration for measurements.";

        uses band-configuration;
      }

      uses measurement-parameters;
    }

    output {
      list band-config {
        key "band-number";
        description "Output list for all the bands requested for measurements.";

        leaf band-number {
          type band-num;
          description
            "This value indicates the list of bands supported as per the document,
            3GPP TS 36.104 V14.2.0 (2016-12), 'Section 5.5 Operation bands'.";
        }
        leaf-list carrier-center-frequency {
          type uint16;
          units kilohertz;
          description
            "This value indicates carrier centre frequency in KHz";
        }
        leaf status {
          type enumeration {
            enum ACCEPTED {
              description "This indicates the measurements for particular sub band is accepted at O-RU.";
            }
            enum REJECTED {
              description "This indicates the measurements for particular sub band is rejected at O-RU.";
            }
          }
          description "This value indicates the status of the measurement acceptance at O-RU.";
        }

        leaf error-message {
          when "../status='REJECTED'";
          type string;
          description
            "This value indicates the detailed error message for the measurement being rejected at O-RU.";
        }
      }
    }
  }

  // notifications
  notification measurement-result {
    if-feature mcap:LAA;
    description "Notification to provide the results of carrier selection and DFS.";
    list band-result {
      key "band-number";
      description "Results for a particular sub band under band 46.";

      uses band-result-element;
    }
  }
}

## File: RU Specific Models/Radio/o-ran-frequency-band-measurement.yang

module o-ran-frequency-band-measurement {
  yang-version 1.1;
  namespace "urn:o-ran:frequency-band-measurement:1.0";
  prefix "o-ran-frequency-band-measurement";

  import o-ran-uplane-conf {
    prefix "up";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the measurements for operation in specific frequency-band measurement.

    Copyright 2024 the O-RAN Alliance.

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

  revision "2024-08-12" {
    description
      "version 16.0.0

      1) initial version";

      reference "ORAN-WG4.M.0-v16.00";
  }

  typedef measurement-bandwidth {
    type enumeration {
      enum 1MHZ {
        description
          "1 MHz measurement bandwidth";
      }
      enum 5MHZ {
        description
          "5 MHz measurement bandwidth";
      }
      enum 10MHZ {
        description
          "10 MHz measurement bandwidth";
      }
      enum 20MHZ {
        description
          "20 MHz measurement bandwidth";
      }
      enum 50MHZ {
        description
          "50 MHz measurement bandwidth";
      }
      enum 100MHZ {
        description
          "100 MHz measurement bandwidth";
      }
    }
    description
      "Measurement unit bandwidths";
  }

  grouping output-status-grouping {
    description "Status grouping";
    leaf status {
      type enumeration {
        enum SUCCEEDED {
          description
            "The operation has been performed without error.";
        }
        enum FAILED {
          description
            "The operation has been failed, detailed information can be found in error-message.";
        }
      }
      mandatory true;
      description
        "This is the result that the operation has been performed.";
    }
    leaf error-message {
      when "../status = 'FAILED'";
      type string;
      description
        "The detailed error message when the operation has been failed.";
    }
  }

  grouping received-measurement-result {
    description
      "This group indicates the result of received power measurements by O-RU.";
    list received-power-measurement {
      key "measurement-frequency";
      description
        "This list indicates the received power measurements result for the given spectrum.";
      leaf measurement-frequency {
        type uint32;
        units "MHz";
        description
          "This is the starting frequency in MHz for which the received power measurement was performed.";
      }
      leaf measurement-bandwidth {
        type measurement-bandwidth;
        mandatory true;
        description
          "This is the measurement unit bandwidth in MHz";
        }
      leaf received-power {
        type decimal64{
          fraction-digits 4;
        }
        units "dBm";

        description
          "This is the average of the scalar values of received power, converted into dBm units.
          The received power is mesured over the frequency range from measure-frequency as the lower bound and
          measure-frequency + measure-bandwidth as the upper bound.
          The received power is calculated according to what is foreseen by the specific shared spectrum service used,
          i.e. for CBRS the Winn Forum definition will have to be used, for other shared band services other calculationmethods might be considered/used.";
      }
    }
  }

  grouping request-spectrum-for-measurement {
    description
      "This group indicates the requested measurements by O-RU.";
    leaf measurement-bandwidth {
      type measurement-bandwidth;
      mandatory true;
      description
        "This is the measurement unit bandwidth in MHz";
    }
    leaf-list measurement-start-frequency {
        type uint32;
        units "MHz";
        description
          "This is the starting frequency bandwidth in MHz to perform the received power measurement.";
    }
  }

  container measurement-capability {
    config false;
    description
      "measurement capability object responsible for providing deatils of O-RU's
      frequency and band measurement capability.";
    list measurement-bands-supported {
      key "measurement-band-num";
        description
          "This is the list of supported band capability for O-RU received power measurement.";
      leaf measurement-band-num {
        type uint8;
        description
          "This is the supported bandnum where O-RU can perform the received power measurement. e.g. band48 for CBRS.";
      }
      list frequencys-range-supported {
        key "lower-frequency";
        description
          "This list indicates the frequecy range for which the measurements are supported in the O-RU.";
        leaf lower-frequency {
          type uint32;
          units "MHz";
          description
            "This is the lower frequency bandwidth in MHz can perform the received power measurement.";
        }
        leaf upper-frequency {
          type uint32;
          units "MHz";
          description
            "This is the upper frequency bandwidth in MHz can perform the received power measurement.";
        }
      }
      leaf-list measurement-bandwidth {
        type measurement-bandwidth;
        description
          "The supported measurement unit bandwidths";
      }
    }
    leaf in-service-measurement {
      type boolean;
      default false;
      description
        "indicates whether O-RU can support measurements
        when tx-array carriers are active in measurement band.";
    }

   leaf in-service-measurement-only-carrier-freq {
       when "../in-service-measurement = 'true'";
       type boolean;
       default false;
       description
          "Indicate an O-RU only support measurement on frequency range as carrier is configured on.";
    }

    leaf-list supported-measurement-points {
      type enumeration {
        enum NO_ARRAY {
          description
            "O-RU supports measurements without the rx-array name provided.";
        }
        enum ONE_ARRAY {
          description
            "O-RU supports measurements with a single rx-array name provided.";
        }
        enum MULTIPLE_ARRAYS {
          description
            "O-RU supports measurements with multiple rx-array names provided.";
        }
     }
     description
       "Indicates which measurement points O-RU supports.
       At least one point shall be provided.";
    }
  }

  //rpc definitions
  rpc received-power-measurement-request {
    description
      "This rpc is to request a received power measurement in O-RU.";
    input {
      uses request-spectrum-for-measurement;

      leaf-list rx-array {
        type leafref {
          path "/up:user-plane-configuration/up:rx-arrays/up:name";
        }
        description
          "Names of arrays on which the measurements are requested.
          Depending on the values reported in supported-measurement-points:
          * if O-RU reports NO_ARRAY, then an empty list can be provided.
          * if O-RU reports ONE_ARRAY, then a single rx-array can be provided.
          * if O-RU reports MULTIPLE_ARRAYS, then multiple rx-arrays can be provided.";
      }
    }
    output {
      uses output-status-grouping;
      leaf wait-time {
        type uint32;
        units "seconds";
        description
          "This is the wait time recommended by O-RU. Requester should wait for mentioned time to get the report if status is SUCCEEDED.
          If the status is FAILED then request should wait for mentioned time before requesting again.";
      }
      leaf measurement-id {
        type uint8;
        description
          "Used to identify a measurement RPC, when andling of multiple RPCs.";
      }
    }
  }

  notification power-measurement-result {
    description "Notification the measurement results for CBRS.";
    uses output-status-grouping;
    uses received-measurement-result;
    leaf measurement-id {
        type uint8;
        description
          "Used to identify a measurement RPC, when andling of multiple RPCs.";
    }
  }
}

## File: RU Specific Models/Radio/o-ran-antenna-calibration.yang

module o-ran-antenna-calibration {
  yang-version 1.1;
  namespace "urn:o-ran:antcal:1.0";
  prefix "o-ran-antcal";

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the configuration required for supporting the optional
    antenna calibration functionality.

     Copyright 2024 the O-RAN Alliance.

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

     * Redistribution of source code must retain the above copyright notice,
     this list of conditions and the above disclaimer.
     * Redistribution in binary form must reproduce the above copyright notice,
     this list of conditions and the above disclaimer in the documentation
     and/or other materials provided with the distribution.
     * Neither the Members of the O-RAN Alliance nor the names of its
     contributors may be used to endorse or promote products derived from
     this software without specific prior written permission.";

   revision 2024-04-15 {
    description
      "version 7.2.0

        1) fixing bug in coordinated-ant-calib-prep-timer.";

    reference "ORAN-WG4.MP-v07.00";
   }

  revision 2021-12-01 {
   description
     "version 7.1.0

       1) typographical corrections in descriptions.";

   reference "ORAN-WG4.MP-v07.00";
  }

  revision 2021-07-26 {
    description
      "version 7.0.0

        1) O-RU-COORDINATED-ANT-CAL-MULTIPLE-TIME-RESOURCE is added as optional feature
        to provide support for multiple antenna calibration time resources configurations.
        2) Flag for O-DU to control if O-RU is allowed to support this feature
        'coordinated-calibration-multiple-time-resources-allowed'
        3) defined grouping 'antenna-calibration-multiple-time-resource' from which list
        for supporting multiple antenna calibration time resource configuration is supported.
        4) created new container 'antenna-calibration-multiple-time-resource' with list
        'antenna-calibration-multiple-time-resource-list' and key to index the list
        'antenna-calibration-time-resource-index'.
        5) added new notification 'antenna-calibration-multiple-time-resource-params' with
        'antenna-calibration-time-resource-index' as a leaf to indicate index of time resource
        6) Added support for configured preparedness timer for co-ordinated calibration";

    reference "ORAN-WG4.MP-v07.00";
  }

   revision 2021-03-22 {
     description
       "version 5.1.0

        1) removing non-ASCII characters in model.";

     reference "ORAN-WG4.MP-v05.00";
   }

  revision 2020-12-10 {
    description
      "version 5.0.0

       1) O-RU-COORDINATED-ANT-CAL is added as optional feature
       to provide the antenna calibration without RPC
       on the condition that coordinated-calibration-support is true
       and coordinated-calibration-allowed is true.";

    reference "ORAN-WG4.MP-v05.00";
  }

  revision 2019-07-03 {
    description
      "version 1.0.0

       1) Newly introduced model for supporting optional
       antenna calibration functionality";

    reference "ORAN-WG4.MP-v02.00";
  }

  feature O-RU-COORDINATED-ANT-CAL {
    description
      "Indicates that the O-RU needs user traffic to be co-ordinated from O-DU for antenna calibration.";
  }

  feature O-RU-COORDINATED-ANT-CAL-MULTIPLE-TIME-RESOURCE {
    description
      "Indicates O-RU support for antenna calibration with multiple timing resource sets. Refer Section
      'Calibration with multiple timing resource sets' of M-Plane specification v7";
  }

  grouping antenna-calibration-capabilities {
    description "container for collection of leafs for antenna calibration";

    leaf self-calibration-support {
      type boolean;
      default false;
      description
        "Indicates whether O-RU supports self-calibration or not.

        When true, indicates O-RU can initiate calibration without receiving an
        RPC and/or impacting simultaneous CU-plane operation";
    }
    leaf coordinated-calibration-support {
      if-feature O-RU-COORDINATED-ANT-CAL;
      type boolean;
      default false;
      description
        "True means the O-RU is able to determine priori the time-frequency
         resources required for self-calibration and indicate those to the O-DU
         in the antenna-calibration-coordinated notification.";
    }
    leaf number-of-calibration-symbols-per-block-dl {
      type uint8 {
        range "1..max";
      }
      units symbols;
      mandatory true;
      description
        "Indicates how many consecutive symbols are required for DL antenna
        calibration operation";
    }
    leaf number-of-calibration-symbols-per-block-ul {
      type uint8 {
        range "1..max";
      }
      units symbols;
      mandatory true;
      description
        "Indicates how many consecutive symbols are required for UL antenna
        calibration operation";
    }
    leaf interval-between-calibration-blocks {
      type uint8;
      units symbols;
      description
        "if time interval is required between consecutive antenna calibration
        operation, defines this time value as unit of symbols.

        A common value is used here for the intervals
        between DL-DL blocks, UL-UL blocks, DL-UL blocks and UL-DL blocks,
        which is the largest minimum interval required between any two adjacent
        calibration blocks.";
    }
    leaf number-of-calibration-blocks-per-step-dl {
      type uint8 {
        range "1..max";
      }
      mandatory true;
      description
        "Indicates how many blocks are required for one step of DL antenna
        calibration operation";
    }
    leaf number-of-calibration-blocks-per-step-ul {
      type uint8 {
        range "1..max";
      }
      mandatory true;
      description
        "Indicates how many blocks are required for one step of UL antenna
        calibration operation";
    }
    leaf interval-between-calibration-steps {
      type uint8;
      units radio-frames;
      description
        "If time interval is required between consecutive step of antenna
        calibration operation, defines this time value as unit of radio frames";
    }
    leaf number-of-calibration-steps {
      type uint8 {
        range "1..max";
      }
      mandatory true;
      description
        "Indicates how many steps are required for whole DL/UL antenna
        calibration operation";
    }
    leaf calibration-period {
       if-feature O-RU-COORDINATED-ANT-CAL;
       type uint16;
       units minutes;
       description "periodical interval between antenna calibrations in the case of support of feature O-RU-COORDINATED-ANT-CAL";
    }
    leaf configured-preparation-timer-supported {
      if-feature O-RU-COORDINATED-ANT-CAL;
      type boolean;
      default false;
      description
        "indicates if the O-RU supports configuration of the preparedness timer
        that controls how far in advance of the co-ordinated self calibration
        procedure the O-RU is required to send the notification of impacted
        resources.";
    }
  }

  grouping antenna-calibration-multiple-time-resource {
    description
      "Grouping for collection of leafs for antenna calibration capability of O-RU supporting
      multiple time resource when feature O-RU-COORDINATED-ANT-CAL-MULTIPLE-TIME-RESOURCE
      is supported in the O-RU";

    leaf number-of-calibration-symbols-per-block-dl {
      type uint8 {
        range "1..max";
      }
      units symbols;
      mandatory true;
      description
        "Indicates how many consecutive symbols are required for DL antenna
        calibration operation";
    }
    leaf number-of-calibration-symbols-per-block-ul {
      type uint8 {
        range "1..max";
      }
      units symbols;
      mandatory true;
      description
        "Indicates how many consecutive symbols are required for UL antenna
        calibration operation";
    }
    leaf interval-between-calibration-blocks {
      type uint8;
      units symbols;
      description
        "if time interval is required between consecutive antenna calibration
        operation, defines this time value as unit of symbols.

        A common value is used here for the intervals
        between DL-DL blocks, UL-UL blocks, DL-UL blocks and UL-DL blocks,
        which is the largest minimum interval required between any two adjacent
        calibration blocks.";
    }
    leaf number-of-calibration-blocks-per-step-dl {
      type uint8 {
        range "1..max";
      }
      mandatory true;
      description
        "Indicates how many blocks are required for one step of DL antenna
        calibration operation";
    }
    leaf number-of-calibration-blocks-per-step-ul {
      type uint8 {
        range "1..max";
      }
      mandatory true;
      description
        "Indicates how many blocks are required for one step of UL antenna
        calibration operation";
    }
    leaf interval-between-calibration-steps {
      type uint8;
      units radio-frames;
      description
        "If time interval is required between consecutive step of antenna
        calibration operation, defines this time value as unit of radio frames";
    }
    leaf number-of-calibration-steps {
      type uint8 {
        range "1..max";
      }
      mandatory true;
      description
        "Indicates how many steps are required for whole DL/UL antenna
        calibration operation";
    }
    leaf calibration-period {
       if-feature O-RU-COORDINATED-ANT-CAL;
       type uint16;
       units minutes;
       description "periodical interval between antenna calibrations in the case of support of feature O-RU-COORDINATED-ANT-CAL";
    }
  }

  grouping antenna-calibration {
    container antenna-calibration-capabilities {
      config false;
      description
        "Describes the antenna calibration capabilities";
        uses antenna-calibration-capabilities;
    }
    container self-calibration-policy {
      leaf self-calibration-allowed {
        type boolean;
        default false;
        description
          "whether the self-calibration is allowed by operator.
          Note, self-calibration-allowed and coordinated-calibration-allowed cannot both be set to true";
      }
      leaf coordinated-calibration-allowed {
        if-feature O-RU-COORDINATED-ANT-CAL;
        type boolean;
        must "../self-calibration-allowed = 'false'";
        default false;
        description
          "whether the coordinated-calibration is allowed by operator.

          True means that O-DU may beneficially use the indicated time-frequency resources
          to adapt its operation during the antenna calibration operation,
          e.g., consider the time-frequency resources as reserved for calibration.
          Both calibrations (self-calibration-allowed and coordinated-calibration-support) disallowed
          or one of them allowed only";
      }
      leaf coordinated-ant-calib-prep-timer {
        when "../coordinated-calibration-allowed = 'true'";
        if-feature O-RU-COORDINATED-ANT-CAL;
        type uint8 {
          range "2..10|60";
        }
        units seconds;
        default 60;
        description
          "minimum time between O-RU sending notification of time-frequeny resources
          for co-ordinated calibration to O-DU and O-RU starting co-ordinated
          self-calibration procedure.

          Note, the default value of 60 seconds is to accommodate earlier versions
          which hard coded that value in the O-RAN.WG4.MP.0 specification.

          An O-RU that has set configured-preparation-timer-supported=false shall
          always use the default value of 60 seconds";
      }
      leaf coordinated-calibration-multiple-time-resources-allowed {
        if-feature "O-RU-COORDINATED-ANT-CAL and O-RU-COORDINATED-ANT-CAL-MULTIPLE-TIME-RESOURCE";
        type boolean;
        default false;
        description
          "TRUE: O-RU is allowed to request for this calibration, FALSE: O-RU is prohibited to use this calibration";
      }
      description
        "Describes the self calibration policies and configuration of the operator";
    }

    container antenna-calibration-multiple-time-resource {
      if-feature "O-RU-COORDINATED-ANT-CAL and O-RU-COORDINATED-ANT-CAL-MULTIPLE-TIME-RESOURCE";
      config false;
      list antenna-calibration-multiple-time-resource-list {
        key "antenna-calibration-time-resource-index";
        uses antenna-calibration-multiple-time-resource;

        leaf antenna-calibration-time-resource-index {
          type uint8;
          description
            "Key for indexing 'antenna-calibration-multiple-time-resource-list'";
        }
        description
          "List of antenna calibration time resource configuration indexed by
          antenna calibration time resource index";
      }
      description
        "Container to support multiple antenna calibration resource sets by defining
        multiple calibration resources sets for different calibration types.";
    }

    description
      "Describe the grouping set of antenna calibration";
  }

  grouping antenna-calibration-data {
     description "information set for the operation of antenna calibration";

     leaf symbol-bitmask-dl {
        type string {
          length "14";
          pattern "[01]*";
        }
        mandatory true;
        description
          "Bit-mask indicating DL calibration symbol within a calibration slot.
           First character in the string indicate first symbol,
           next character in the string indicate second symbol and so on.
           Value 1 indicates that the symbol may be used for calibration
           and 0 means the symbol shall not be used for calibration.";
      }
      leaf symbol-bitmask-ul {
        type string {
          length "14";
          pattern "[01]*";
        }
        mandatory true;
        description
          "Bit-mask indicating UL calibration symbol within a calibration slot.
           First character in the string indicate first symbol,
           next character in the string indicate second symbol and so on.
           Value 1 indicates that the symbol may be used for calibration
           and 0 means the symbol shall not be used for calibration.";
      }
      leaf slot-bitmask-dl {
        type string {
          length "10..255";
          pattern "[01]*";
        }
        mandatory true;
        description
          "Bit-mask indicating DL calibration slot within a calibration frame.
           First character in the string indicate first slot,
           next character in the string indicate second slot and so on.
           Value 1 indicates that the slot may be used for calibration
           and 0 means the slot shall not be used for calibration.";
        }
        leaf slot-bitmask-ul {
          type string {
            length "10..255";
            pattern "[01]*";
          }
          mandatory true;
          description
            "Bit-mask indicating UL calibration slot within a calibration frame.
             First character in the string indicate first slot,
             next character in the string indicate second slot and so on.
             Value 1 indicates that the slot may be used for calibration
             and 0 means the slot shall not be used for calibration.";
        }
        leaf frame-bitmask-dl {
          type string {
            length "1..255";
            pattern "[01]*";
          }
          mandatory true;
          description
            "Bit-mask indicating DL calibration frame within a calibration step.
             First character in the string indicate first radio frame equal to
             the start-SFN, next character in the string indicate the next frame
             and so on.

             Value 1 indicates that the frame may be used for calibration
             and 0 means the frame shall not be used for calibration.";
        }
        leaf frame-bitmask-ul {
          type string {
            length "1..255";
            pattern "[01]*";
          }
          mandatory true;
          description
            "Bit-mask indicating UL calibration frame within a calibration step.
             First character in the string indicate first radio frame equal to
             the start-SFN, next character in the string indicate the next frame
             and so on.

             Value 1 indicates that the frame is may be used for calibration
             and 0 means the frame shall not be used for calibration.";
        }
        leaf calibration-step-size {
          type uint8;
          mandatory true;
          description " Number of frames within a calibration step";
        }
        leaf calibration-step-number {
          type uint8;
          mandatory true;
          description "Number of calibration steps";
        }
        leaf start-sfn {
          type uint16 {
            range "0..1023";
          }
          mandatory true;
          description "start SFN number of the first calibration step";
        }
  }

  container antenna-calibration {
    uses antenna-calibration;
    description
      "Describes the antenna calibration top node";
  }

  rpc start-antenna-calibration {
    description
      "The antenna calibration operation can start when NETCONF client sends a
      calibration start command with resource allocation parameters.
      These parameters indicate how the O-RU can perform the antenna
      calibration operation; at which Symbol, Slot, and Frame.
      This scheduling information can be generated by O-RU itself.
      However, in a dynamic TDD environment, the DL and UL configuration
      is only determined and known by O-DU. Consequently, only O-DU (NETCONF
      client ) can determine and configure the scheduling and resource
      allocation permitted for use by the antenna calibration operation";
    input  {
       uses antenna-calibration-data;
    }
    output  {
      leaf status {
        type enumeration {
          enum ACCEPTED {
            description
              "Status information to indicate that O-RU accepted RPC
              antenna calibration start request";
          }
          enum REJECTED {
            description
              "Status information to indicate that O-RU rejected RPC antenna
              calibration start request";
          }
        }
        mandatory true;
        description
          "Status of whether antenna calibration trigger by RPC is accepted
          by the O-RU";
      }
      leaf error-message {
        when "../status='REJECTED'";
          type string;
          description
            "Detailed error Message when the status is rejected, e.g.,
             because O-RU can not start antenna calibration
             such as already running antenna calibration,
             resource mask mismatch with O-RU antenna calibration capability,
             overlapped DL and UL masks, insufficient memory, O-RU internal reason";
      }
    }
  }

  notification antenna-calibration-required {
    list dl-calibration-frequency-chunk {
      leaf start-calibration-frequency-dl {
        type uint64;
        description
          "lowest frequency value in Hz of the frequency range is required for
           DL antenna calibration operation.";
      }
      leaf end-calibration-frequency-dl {
        type uint64;
        description
          "highest frequency value in Hz of the frequency range is required for
           DL antenna calibration operation.";
      }
      description
         "min/max frequency of DL spectrum chunk affected by calibration process";
    }
    list ul-calibration-frequency-chunk {
      leaf start-calibration-frequency-ul {
        type uint64;
        description
          "lowest frequency value in Hz of the frequency range is required for
           UL antenna calibration operation.";
      }
      leaf end-calibration-frequency-ul {
        type uint64;
        description
          "highest frequency value in Hz of the frequency range is required for
           UL antenna calibration operation.";
      }
      description
        "min/max frequency of UL spectrum chunk affected by calibration process";
    }

    description
      "this notification indicates that the antenna calibration is required in O-RU";
  }

  notification antenna-calibration-coordinated {
    if-feature O-RU-COORDINATED-ANT-CAL;
    list dl-calibration-frequency-chunk {
      leaf start-calibration-frequency-dl {
        type uint64;
        description
          "lowest frequency value in Hz of the frequency range is required for
           DL antenna calibration operation.";
      }
      leaf end-calibration-frequency-dl {
        type uint64;
        description
          "highest frequency value in Hz of the frequency range is required for
           DL antenna calibration operation.";
      }
      description
         "min/max frequency of DL spectrum chunk affected by calibration process";
    }
    list ul-calibration-frequency-chunk {
      leaf start-calibration-frequency-ul {
        type uint64;
        description
          "lowest frequency value in Hz of the frequency range is required for
           UL antenna calibration operation.";
      }
      leaf end-calibration-frequency-ul {
        type uint64;
        description
          "highest frequency value in Hz of the frequency range is required for
           UL antenna calibration operation.";
      }
      description
        "min/max frequency of UL spectrum chunk affected by calibration process";
    }
    uses antenna-calibration-data {
      description
        "In the case of support of feature O-RU-COORDINATED-ANT-CAL,
         time-frequency resource determined by O-RU will be included";
    }

    description
      "this notification indicates that co-ordinated antenna calibration is provided in O-RU.
       It indicates the time-frequency resources will be sent to a subscribed O-DU at least coordinated-ant-calib-prep-timer seconds
       before the operation of the co-ordinated antenna calibration procedure.";
  }

  notification antenna-calibration-result {
    leaf status {
      type enumeration {
        enum SUCCESS {
          description "O-RU has succeeded in calibrating its antenna";
        }
        enum FAILURE {
          description
            "O-RU attemted to calibrate its antenna, but the procedure failed.";
        }
      }
      mandatory true;
      description
        "Status of the antenna calibration procedure which has been triggered
        by accepting an start-antenna-calibration RPC.";
    }
    leaf detailed-reason {
      when "../status='FAILURE'";
      type string;
      description
        "Detailed reason when the status is FAILURE, e.g.,
        O-RU cannot complete the antenna calibration
        because of lack of memory, self-calibration failure, etc";
    }
    description
    "This notification indicates the antenna calibration result";
  }

  notification antenna-calibration-multiple-time-resource-params {
    if-feature "O-RU-COORDINATED-ANT-CAL and O-RU-COORDINATED-ANT-CAL-MULTIPLE-TIME-RESOURCE";
    leaf antenna-calibration-time-resource-index {
      type uint8;
      description
        "Index to use applicable antenna calibration time resources from the
        list 'antenna-calibration-multiple-time-resource-list'";
   }
   list dl-calibration-frequency-chunk {
      leaf start-calibration-frequency-dl {
        type uint64;
        description
          "lowest frequency value in Hz of the frequency range is required for
           DL antenna calibration operation.";
      }
      leaf end-calibration-frequency-dl {
        type uint64;
        description
          "highest frequency value in Hz of the frequency range is required for
           DL antenna calibration operation.";
      }
      description
         "min/max frequency of DL spectrum chunk affected by calibration process";
    }
    list ul-calibration-frequency-chunk {
      leaf start-calibration-frequency-ul {
        type uint64;
        description
          "lowest frequency value in Hz of the frequency range is required for
           UL antenna calibration operation.";
      }
      leaf end-calibration-frequency-ul {
        type uint64;
        description
          "highest frequency value in Hz of the frequency range is required for
           UL antenna calibration operation.";
      }
      description
        "min/max frequency of UL spectrum chunk affected by calibration process";
    }

   description
    "This notification indicates sending parameters related to supporting antenna calibration
    with multiple time resource";
  }
}

## File: RU Specific Models/Operations/o-ran-ieee802-dot1q-cfm.yang

module o-ran-ieee802-dot1q-cfm {
  yang-version 1.1;

  namespace "urn:o-ran:o-ran-ieee802-dot1q-cfm:1.0";
  prefix "o-ran-ieee802-dot1q-cfm";

  import ieee802-dot1q-cfm {
    prefix "dot1q-cfm";
  }

  import ietf-interfaces {
    prefix "if";
  }

  import o-ran-interfaces {
    prefix "o-ran-int";
  }

  organization
    "O-RAN Alliance";
  contact
    "www.o-ran.org";
  description
    "This module defines o-ran augmentations over dot1q.cfm.

    Copyright 2023 the O-RAN Alliance.

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

  revision 2023-04-10 {
    description
      "Version 12.0.0
      1)initial version ";

    reference "ORAN-WG4.M.0-v12.00";

  }

  augment "/dot1q-cfm:cfm/dot1q-cfm:maintenance-group/dot1q-cfm:mep" {
    description "augment mep with vid";
    leaf interface {
      type if:interface-ref;
      description
        "An interface, either a Bridge Port or an aggregated IEEE 802.3 port
        within a Bridge Port, to which the MEP is attached. Each interface in
        the system is uniquely identified by an interface-name. The structure
        and content of the name is outside the scope of this specification.";
      reference "[802.1q] 12.14.7.1.3:b";
    }

    leaf primary-vid {
      type leafref {
        path "/if:interfaces/if:interface/o-ran-int:vlan-id";
      }
      description
        "The Primary VID of the MEP. The value 0 indicates that either the
        Primary VID is that of the MEP's MA or that the MEP's MA is
        associated with no VID";
      reference "[802.1q] 12.14.7.1.3:d";
    }
  }
}

## File: RU Specific Models/Operations/o-ran-uplane-conf.yang

module o-ran-uplane-conf {
  yang-version 1.1;
  namespace "urn:o-ran:uplane-conf:1.0";
  prefix "o-ran-uplane-conf";

  import o-ran-processing-element {
    prefix "o-ran-pe";
  }

  import ietf-interfaces {
    prefix "if";
  }

  import o-ran-module-cap {
    prefix "mcap";
  }

  import o-ran-compression-factors {
    prefix "cf";
  }

  import o-ran-wg4-features {
    prefix "feat";
  }

  import ietf-hardware {
    prefix "hw";
  }

  import o-ran-hardware {
    prefix "or-hw";
  }

  import o-ran-usermgmt {
    prefix "or-user";
  }

  import o-ran-common-yang-types {
    prefix "o-ran-cmn";
  }

  import o-ran-delay-management {
    prefix "or-dm";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the module capabilities for
    the O-RAN Radio Unit U-Plane configuration.

    Copyright 2024 the O-RAN Alliance.

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

  revision 2024-12-23 {
    description
      "version 17.0.0

      1) clarified polarization list with external antennas
      2) add o-ru controlled SINR time resolution
      3) add dynamic SINR
      4) clarify state change notifications";

    reference "ORAN-WG4.M.0-v17.00";
  }

  revision "2024-08-12" {
    description
      "version 16.0.0

      1) add up-link performance improvement functionality, including DMRX-BF-EQ and DMS-BF-NEQ features
      2) Introduction of capabilities and configuration for SE27 O-DU controlled dimensionality reduction
      3) add support for se-20-multi-sd-punc-pattern
      4) add support for VSWR thresholds
      5) add Endpoint beam capacity counter for same or diff beamId values";

    reference "ORAN-WG4.M.0-v16.00";
  }

  revision "2024-04-15" {
    description
      "version 15.0.0

      1) add support for sending prgSize in SE-21 with ST 5 and ST6.
      2) add support for for beamforming list and delay profiles(s) per endpoint.
      3) add support for user-group optimization.
      4) add support for multiple beamid tables.
      5) support pass band for filterindex09 per scs.
      6) support for M-plane based TRX control for Network Energy Saving.
      7) clarified cp-type is not applicable for ST3 or ST0
      8) Changed description of max-beams-per-symbol/slot, so they refer to
         'different beamId values' instead of 'beams'
      9) added new leafs called max-beams-per-symbol-multiple-beamid-tables
         and max-beams-per-slot-multiple-beamid-tables";

    reference "ORAN-WG4.M.0-v15.00";
  }

  revision "2023-12-11" {
    description
      "version 14.0.0

      1) Corrected the configurable-tdd-pattern-supported leafref to point
         to static-low-level-tx-endpoints
      2) Clarify reference for supported-frame-structures
      3) introduce max-prb-blks-per-sec-ext-23 and se-23-prb-block-mode-supported
      4) Introduction of new energy saving sub-use case - Data Layer control";

    reference "ORAN-WG4.M.0-v14.00";
  }

  revision "2023-08-14" {
    description
      "version 13.0.0

      1) clarification for I/Q bitwidth parameter
      2) clarification of ul-fft-sampling-offset parameter
      3) adding availability status to carrier operational data and notifications
      4) ability to disable sequence number checking
      5) Introduction of TRX-Control and Advanced Sleep Mode for network energy savings";

    reference "ORAN-WG4.M.0-v13.00";
  }

  revision "2023-04-10" {
    description
      "version 12.0.0

      1) Typographical corrections
      2) NB-IoT introduction
      3) clarify PRACH repetitions
      4) support for non-scheduled-ueid
      5) continuity bit information in Section Extension 11
      6) U-Plane Processing Limits";

    reference "ORAN-WG4.M.0-v12.00";
  }

  revision "2022-12-05" {
    description
      "version 11.0.0

      1) PRB range limit for SE 12 and HP section
      2) Introduction of PRB ranges
      3) uplane-only-dl-mode-enable
      4) Deprecation of power-related capabilities and addition of min-gain
      5) se 23 max mplane limits
      6) support Section Type 4 and associated commands";

    reference "ORAN-WG4.M.0-v11.00";
  }

  revision "2022-08-15" {
    description
      "version 10.0.0

      1) clarified description statements for representative-t/rx-eaxc-id
      2) clarified description statements for max-num-t/rx-eaxc-ids-per-group
      4) clarified description statements for component carrier
      5) style guide corrections
      6) introduction of O-RU connector functionality
      7) fixing constraints
      8) introducing new feature for ACK NACK feedback
      9) added SHARED-ORU-MULTI-OPERATOR anf SHARED-ORU-MULTI-ODU features";

    reference "ORAN-WG4.M.0-v10.00";
  }

  revision "2022-04-18" {
    description
      "version 9.0.0

      1) Descriptions fixed for max-beam-updates-per-slot / max-beam-updates-per-slot
      2) Added references to CUS-Plane spec for parameters 'frame-structure' and
        'supported-frame-structures'
      3) clarified max-beams-per-symbol, max-beams-per-slot, max-beam-updates-per-slot,
        max-beam-updates-per-symbol parameters
      4) Clarification of cp-length and cp-length-other
      5) deprecation of rw-type and rw-duplex-scheme";

      reference "ORAN-WG4.M.0-v09.00";
  }

  revision "2021-12-01" {
    description
      "version 8.0.0

      1) Various descriptions corrected and/or clarified
      2) Configuration for Beamforming weights were added together with changes and updates to compressions
      3) Added new leaf node 'beam-update-contention-control-limits-required' to 'endpoint-types'
         to indicate endpoint capability to support beam update contention control processing limits.
      4) Added instance of 'beam-update-contention-control-limits' to 'endpoint-types'.
      5) Added new leaf node boolean flag 'beam-update-contention-control-enabled' for O-DU to indicate
         support of feature BEAM-UPDATE-CONTENTION-CONTROL feature.
      6) deprecate 'channel-information-iq-bitwidth' , and define a new parameter
         'channel-information-bitwidth' under the container 'compression'
      7) add capability and configuration for channel information PRB granularity.
      8) Add support for multiple transport-session-type per O-RU.
      9) add capability and configuration for channel information compression.
      10) deprecate 'channel-information-iq-bitwidth' , and define a new parameter
         'channel-information-bitwidth' under the container 'compression'";

      reference "ORAN-WG4.M.0-v08.00";
  }

  revision "2021-07-26" {
    description
      "version 7.0.0

      1) Added new grouping 'per-cplane-message-limits' containing params to limit
         per C-Plane packet processing when CPLANE-MESSAGE-PROCESSING-LIMITS feature is
         supported by O-RU and used by O-DU.
      2) Added new leaf node 'cplane-message-processing-limits-required' to 'endpoint-types'
         to indicate endpoint capability to support C-Plane message processing limits.
      3) Added instances of 'per-cplane-message-limits' to 'endpoint-types' and
         'endpoint-capacity-sharing-groups'.
      4) Added new leaf node to low-level-tx/rx-endpoint 'cplane-message-processing-limits-enabled'
         for O-DU to configure support for C-Plane limits
      5) Added t-da-offset and t-au-offset for external antenna support
      6) Added Channel IQ bitwidth for ST6
      7) Added ordered-by user to leaf-list member-tx-eaxc-id and leaf-list member-rx-eaxc-id
      8) Added new PRACH formats
      9) Ensuring beam-ids can only be 15 bits
      10) Clarify mixed numerology restrictions";

    reference "ORAN-WG4.M.0-v07.00";
  }

  revision "2021-03-22" {
    description
      "version 6.0.0

      1) typographical corrections in descriptions.
      2) Updates to transmission window control.
      3) Introduces to existing grouping 'endpoint-section-capacity' two new leaf nodes 'max-uplane-section-header-per-symbol' and
          'max-uplane-section-header-per-slot' to limit U-Plane data section header addition/parsing.
      4) deprecated parameter 'max-remasks-per-section-id' since it is duplicate of leaf node 'max-control-sections-per-data-section'.
      5) introduces new leaf nodes 'max-beams-updates-per-slot' and ''max-beams-updates-per-symbol'
           to grouping 'endpoint-beam-capacity'
      6) added new SRS features:
        STATIC-TRANSMISSION-WINDOW-CONTROL
        DYNAMIC-TRANSMISSION-WINDOW-CONTROL
        UNIFORMLY-DISTRIBUTED-TRANSMISSION
        ORDERED-TRANSMISSION
        INDEPENDENT-TRANSMISSION-WINDOW-CONTROL";

    reference "ORAN-WG4.M.0-v06.00";
  }

  revision "2020-12-10" {
    description
      "version 5.0.0

      1) introduces new coupling method coupling-via-frequency-and-time-with-priorities-optimized
      2) introduces new max-highest-priority-sections-per-slot parameter";

    reference "ORAN-WG4.M.0-v05.00";
  }

  revision "2020-08-10" {
    description
      "version 4.0.0

      1) parameters allowing for static PRACH configuration introduced
      2) parameters allowing for static SRS configuration introduced
      3) parameters allowing for configuration of TDD pattern introduced
      4) Backward compatible change to introduce new parameter 'coupling-method' related
         to Section Description Priority to serve for CUS-Plane CR";

    reference "ORAN-WG4.M.0-v04.00";
  }

  revision "2020-04-17" {
    description
      "version 3.0.0

      1) Adding optional little endian support
      2) Adding a new capability parameter to indicate that the O-RU
      supports regularizationFactor in section type 5
      3) Added support for Dynamic Spectrum Sharing feature
      4) Clarify the supported number of reMasks in RU side
      5) Section extension for grouping multiple ports
      6) adding PRACH formats to endpoint capabilities";

    reference "ORAN-WG4.M.0-v03.00";
  }

  revision "2019-07-03" {
    description
      "version 1.1.0

      1) added new leaf multiple-numerology-supported to enable O-RU to report
         whether it supports multiple numerologies.

      2) fixing broken constraints (configuration cannot be dependent on
        operational state). This is a backwards incompatible revision.

       As these constraints only apply when the LAA feature is used, and also
       when considering the limited number of implementation that need to be
       taken into consideration for backwards compatibility, it has been
       agreed to NOT increment the namespace integer.

      3) added frequency related capabilities for tx-arrays and rx-array

      4) removed redundant LAA import";

    reference "ORAN-WG4.M.0-v01.00";
  }

  revision "2019-02-04" {
    description
      "version 1.0.0

      1) imported model from xRAN
      2) changed namespace and reference from xran to o-ran";

    reference "ORAN-WG4.M.0-v01.00";
  }

  feature EAXC-GAIN-CORRECTION {
    description
      "Presence of feature indicates that O-RU supports eAxC specific gain correction.";
  }

  feature TX-REFERENCE-LEVEL {
    description
      "Presence of feature indicates that O-RU supports TX gain reference level control";
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

  typedef beamforming-method-type {
    type enumeration {
      enum NOBF {
        description
          "No beamforming.";
      }
      enum PDBF {
        description
          "Predefined-beam beamforming.";
      }
      enum WDBF {
        description
          "Weight-based dynamic beamforming (based on real-time-updated weights).";
      }
      enum ABBF {
        description
          "Attribute-based dynamic beamforming (based on real-time-updated beam attributes).";
      }
      enum CIBF {
        description
          "Channel-information-based beamforming.";
      }
      enum DMRS_BF_EQ {
        description
          "DMRS-based beamforming with equalization.";
      }
      enum DMRS_BF_NEQ {
        description
          "DMRS-based beamforming without equalization.";
      }
    }
    description
      "Type definition for beamforming method.";
  }

  typedef symb-reorder-capability {
    type enumeration {
      enum PER-TX-WIN-SYMB-REORDER-WITH-DMRS-SENDING {
        description
          "per-window symbol reordering when sending of port-reduced DMRS data is enabled,
           please refer to clause 7.7.25.2 of the CUS-Plane Specification.";
      }
      enum PER-TX-WIN-SYMB-REORDER-WITHOUT-DMRS-SENDING {
        description
          "per-window symbol reordering when sending of port-reduced DMRS data is not enabled,
          please refer to clause 7.7.25.2 of the CUS-Plane Specification.";
      }
      enum PER-SECTION-TX-WINDOW-REASSIGNMENT {
        description
          "per-section tx-window reassignment,  please refer to clause 7.7.25.3 of the CUS-Plane
          Specification.";
      }
    }
    description
      "Type definition for symbol reordering method supported.";
  }
  typedef symb-reorder-method {
    type enumeration {
      enum PER-TX-WIN-SYMB-REORDERG {
        description
          "per-window symbol reordering,
          please refer to clause 7.7.25.2 of the CUS-Plane Specification.";
      }
      enum PER-SECTION-TX-WINDOW-REASSIGNMENT {
        description
          "per-section tx-window reassignment,  please refer to clause 7.7.25.3 of the CUS-Plane
          Specification.";
      }
    }
    description
      "Type definition for symbol reordering method configured.";
  }
  typedef up-SymbolId-type {
    type enumeration {
      enum OVER-AIR-SYMBOL-NUMBER {
        description
          "U-plane symbol Id interpretation as on-air symbol number for symbol reordering.";
      }
      enum TRANSMISSION-WINDOW-NUMBER {
        description
          "U-plane symbol Id interpretation as transmission window number for symbol reordering.";
       }
    }
    description
      "Type definition for symbol reordering symbol Id interpretation capability.";
  }

  typedef user-group-self-assembly-mode {
    type enumeration {
      enum SELF-ASSEMBLY-WITH-GROUP-ID {
        description
          "The mode in which the O-RU is capable of assembling user groups using 'usrGroupId' and
          'usrGroupSize' fields in SE-24.";
      }
      enum SELF-ASSEMBLY-WITHOUT-GROUP-ID {
        description
          "The mode in which O-RU is capable of assembling user groups without using 'usrGroupId' and 'usrGroupSize'
          fields in SE-24, but instead relying on PRB ranges of all UE layers overall all section for assembling
          user groups.";
      }
    }
    description
      "Possible values for user group self assembly modes that the O-RU can support.";
  }

  typedef rrm-meas-types {
    type enumeration {
      enum MEAS-UE-TAE {
        value 0;
        description
          "UE timing advance error per UE, per slot";
      }
      enum MEAS-UE-LAYER-POWER {
        value 1;
        description
          "UE layer signal power per layer,per slot";
      }
      enum MEAS-UE-FREQ-OFFSET {
        value 2;
        description
          "UE frequency offset per UE, per slot";
      }
      enum MEAS-IPN-ALLOC {
        value 3;
        description
          "Interference plus Noise for allocated PRBs,per slot or per DMRS symbol group";
      }
      enum MEAS-IPN-UNALLOC {
        value 4;
        description
          "Interference plus Noise for unallocated PRBs, per slot or per set of symbols in a slot";
      }
      enum MEAS-ANT-DMRS-SNR {
        value 5;
        description
          "DMRS Signal to Noise Ratio per antenna, per layer. ";
      }
    }
    description
      "RRM measurement types, refer to CUS spec table 9.2.1-1 for details";
  }

  grouping transmission-buffering-capacity {
    description
      "UL U-plane buffering capacity available for scheduled transmission of UL U-plane messages";

    list transmission-buffering-capacity {
      description
        "Buffering capacity for specific IQ format.
         If the list does not contain an entry for particular IQ format than endpoint
         or group of endpoints then buffering capacity for this IQ format is
         max-buffered-prbs = 0 and max-buffered-symbols = 0.";

      uses cf:compression-details;

      leaf max-buffered-prbs {
        type uint32;
        description
          "Max number of PRBs (for IQ format given in compression-details) that can be buffered by an endpoint
           or buffered collectively by group of endpoints sharing capacity. This is divided between symbols buffered";
      }

      leaf max-buffered-symbols {
        type uint32;
        description
          "Max number of symbols (for IQ format given in compression-details) that can be buffered by an endpoint
          or buffered collectively by group of endpoints sharing capacity";
      }
    }
  }

  grouping mplane-trx-control-supp-antenna-masks {
    description
      "A grouping containing list of antenna masks supported by the O-RU";

    list mplane-supported-trx-control-masks {
      key "index";
      description
        "List of supported M-Plane controlled TRX control masks.";

      leaf index {
        type uint8;
        description
          "Index to the list of antenna masks";
      }

      leaf antenna-mask {
        type binary;
        description
          "M-Plane controlled O-RU supported antenna mask value.";
      }
    }
  }
  grouping array-config-group {
    description
      "This group represents configuration for supported arrays,
      e.g. mplane trx control mask for supported arrayes";

    list tx-array-antenna-mask-config {
      if-feature feat:MPLANE-TRX-CONTROL;
      key array-name;
      description
        "List of mplane configured trx antenna mask for supported arrays";

      leaf array-name {
        type leafref {
          path "/user-plane-configuration/tx-arrays/name";
          require-instance false;
        }
        description
          "Unique name of tx-array. ";
      }
      leaf antenna-bitmask {
        type binary;
        description
          "If mplane-supported-trx-control-masks list is not advertised as part of capability for the referred [tr]x-array,parameter antenna-bitmask may be used for configuration.
          The parameter antenna-bitmask-index shall not be used for configuration.
          The antenna mask contains as many binary values as number of array elements associated
          with respective tx or rx-array. Value of '1' indicates antenna element shall be
          kept active and value of '0' indicates antenna element should be turned inactive.
          Refer clause 20.3.2 of M-Plane specification.";
      }
      leaf antenna-bitmask-index {
        type uint8;
        description
          "If mplane-supported-trx-control-masks list is advertised as part of capability for the referred [tr]x-array,
          the parameter antenna-bitmask-index may be used for configuration to refer to the index of advertised mplane-supported-trx-control-masks.
          The parameter antenna-bitmask shall not be used for configuration.";
      }
    }
    list rx-array-antenna-mask-config {
      if-feature feat:MPLANE-TRX-CONTROL;
      key array-name;
      description
        "List of mplane configured trx antenna mask for supported arrays";
      leaf array-name {
        type leafref {
          path "/user-plane-configuration/rx-arrays/name";
          require-instance false;
        }
        description
          "Unique name of rx-array. ";
      }

      leaf antenna-bitmask {
        type binary;
        description
          "If mplane-supported-trx-control-masks list is not advertised as part of capability for the referred [tr]x-array,parameter antenna-bitmask may be used for configuration.
          The parameter antenna-bitmask-index shall not be used for configuration.
          The antenna mask contains as many binary values as number of array elements associated
          with respective tx or rx-array. Value of '1' indicates antenna element shall be
          kept active and value of '0' indicates antenna element should be turned inactive.
          Refer clause 20.3.2 of M-Plane specification.";
      }
      leaf antenna-bitmask-index {
        type  uint8;
        description
          "If mplane-supported-trx-control-masks list is advertised as part of capability for the referred [tr]x-array,
          the parameter antenna-bitmask-index may be used for configuration to refer to the index of advertised mplane-supported-trx-control-masks.
          The parameter antenna-bitmask shall not be used for configuration.";
      }
    }
  }

  grouping general-config {
    description "a group for general configuration";

    container general-config {
      description "a container for general configuration";

      leaf regularization-factor-se-configured {
        type boolean;
        default false;
        description
          "Informs if regularization factor in section extension is configured(true) or not(false), this
          leaf indicates whether the O-DU will send the regularization factor in section extension.

          If the O-RU does not support regularization-factor-se-supported in o-ran-module-cap.yang,
          this leaf is ignored.";
      }

      leaf little-endian-byte-order {
        type boolean;
        default false;

        description
          "If  little endian byte order for C/U plane data flows is supported by
          the O-RU, indicates if the O-RU should use little endian byte order
          for all UL and DL C/U plane data flows.

          If little endian byte order is NOT supported, this node is ignored
          (and the default big endian byte order used)";
      }

      leaf uplane-only-dl-mode-enable {
        if-feature feat:UPLANE-ONLY-DL-MODE;
        type boolean;
        default false;
        description
          "If set to true, enable IQ data transfer without C-Plane in DL for all
          endpoints as specified in the CUS specification clause 8.2.2.";
      }

      leaf st4-for-time-domain-beamforming-weights-enabled {
        if-feature feat:ST4-SLOT-CONFIG-MSG-SUPPORT;
        type boolean;
        default false;
        description
          "If O-RU indicates support for Section Type 4 command 'TIME_DOMAIN_BEAM_CONFIG' , O-DU may
          configure the O-RU to use Section Type 4 TIME_DOMAIN_BEAM_CONFIG command by setting this
          flag to 'true'. In which case, O-DU shall use only Section Type 4 TIME_DOMAIN_BEAM_CONFIG
          for specifying time-domain beam information. refer to clause 12.4.3.4.4 of CUS-Plane spec.";
      }

      leaf seq-id-checking-disabled {
        if-feature feat:SEQ-ID-CHECKING-CONFIGURABLE;
        type boolean;
        default false;
        description
          "When the parameter has value true, sequence number checking is disabled.";
      }

      leaf multiple-beamId-tables-support-enabled {
        if-feature feat:MULTIPLE-BEAMID-TABLES-SUPPORTED;
         type boolean;
         default false;
         description
           "When the parameter has value true, O-DU will be able to use multiple beamId table capability of O-RU.
           O-DU shall be able to associate specific [tr]x-array-carrier with specific beamId table indexes advertised
           which are advertised in 'tx-array-beamId-table-indexes/rx-array-beamId-table-indexes' as part of tx-array
           and rx-array capabilities.";
      }

      leaf-list energy-sharing-groups-disabled {
        if-feature feat:MPLANE-DATA-LAYER-CONTROL;
        type uint8;
        description
          "A list that indicates which energy sharing groups are currently switched off due to data layer control energy saving.
          By default this list is empty and means that no data layer control energy saving is currently ongoing.
          This value shall be specific values from the list of 'energy-sharing-group-id' advertised by O-RU
          inside respective static-low-level-[tr]x-endpoints.";
      }

      leaf config-symb-reorder-method {
        if-feature "feat:DMRS-BF-EQ or feat:DMRS-BF-NEQ";
        type symb-reorder-method;
        description
          "Indicated which symbol reordering method is used. If it's not configured, O-RU shall
           operate with natural order.";
      }
      leaf config-symb-reorder-upSymbId-type {
        when "../config-symb-reorder-method = 'PER-TX-WIN-SYMB-REORDERG'";
        if-feature "feat:DMRS-BF-EQ or feat:DMRS-BF-NEQ";
        type leafref {
          path "../../endpoint-types/supported-symb-reorder-capabilities/up-symbolId-type-supported";
          require-instance false;
        }
        description
          "Indicated which config-symb-reorder-upSymbId-type intended to be used for symbol reordering,
          i.e. either 'on-air symbol number' or 'transmission window number' to the O-RU.
           When 'per-section tx-window reassignment' method is used,
           the U-Plane symbolId interpretation shall be configured as 'on-air symbol number'
           Please refer to clause 7.7.25 in CUS plane for details.";
      }

      leaf ueid-persistence-enabled {
        if-feature feat:UEID-PERSISTENCE;
        type boolean;
        description
          "Indicates if ueId persistance over multiple slots is enabled.
          See CUS-Plane clause 7.7.24.10.";
      }

      leaf ueid-layer-bits-configured {
        if-feature "feat:DMRS-BF-EQ or feat:DMRS-BF-NEQ";
          type uint8;
          description
            "This parameter specified the number of bits configured by the O-DU for specifying ueid layers.";
      }

      container vswr-thresholds{
        if-feature feat:CONFIGURABLE-VSWR-THRESHOLDS;
        description "VSWR thresholds parameters.";
        container default-vswr-thresholds {
          config false;
          leaf default-vswr-minor-threshold {
            type decimal64 {
              fraction-digits 1;
            }
            description
              "Default VSWR minor threshold.";
          }
          leaf default-vswr-major-threshold {
            type decimal64 {
              fraction-digits 1;
            }
            description
              "Default VSWR major threshold.";
          }
          description
            "Default VSWR thresholds used by this O-RU";
        }
        container vswr-thresholds-range {
          config false;
          leaf min {
            type decimal64 {
              fraction-digits 1;
            }
            description
              "The lowest allowed VSWR threshold";
          }
          leaf max {
            type decimal64 {
              fraction-digits 1;
            }
            description
              "The highest allowed VSWR threshold";
          }
          description
            "VSWR thresholds shall be configured within this range";
        }
        container configurable-vswr-thresholds{
          description "vswr monitoring parameters to be configured by O-RU Controller";
          leaf global-vswr-monitoring-trigger-power {
            type decimal64 {
              fraction-digits 1;
            }
            units dBm;
            description
              "Power threshold for enabling VSWR monitoring.";
          }
          leaf global-vswr-minor-threshold {
            type decimal64 {
              fraction-digits 1;
            }
            description
              "configured VSWR minor threshold which will be used to trigger an alarm.";
          }
          leaf global-vswr-major-threshold {
            type decimal64 {
              fraction-digits 1;
            }
            description
              "configured VSWR major threshold which will be used to trigger an alarm.";
          }
          list vswr-threshold-per-tx-array-element {
            key "tx-array-name array-element";
            description
              "individual vswr-thresholds configuration which will be applied to each tx array element";
            leaf tx-array-name {
              type leafref {
                path "/o-ran-uplane-conf:user-plane-configuration/o-ran-uplane-conf:tx-arrays/o-ran-uplane-conf:name";
                require-instance false;
              }
              description
                "tx-array where the configured vswr thresholds will be applied";
            }
            leaf array-element {
              type uint16;
              description
                "the array-element number of the tx-array if there are multiple array-elements of the tx-array.";
            }
            leaf vswr-minor-threshold {
              type decimal64 {
                fraction-digits 1;
              }
              description
                "configured VSWR minor threshold of the tx-array-element which will be used to trigger an alarm.
                 It shall override the configured global-vswr-minor-tresholds.";
            }
            leaf vswr-major-threshold {
              type decimal64 {
                fraction-digits 1;
              }
              description
                "configured VSWR major threshold of the tx-array-element which will be used to trigger an alarm.
                 It shall override the configured global-vswr-major-tresholds.";
            }
            leaf vswr-monitoring-trigger-power {
              type decimal64 {
                fraction-digits 1;
              }
              units dBm;
              description
                "Power threshold for enabling VSWR monitoring.
                 it shall override the configured global-vswr-monitoring-trigger-power.";
            }
          }
        }
      }
    }
  }

  grouping laa-carrier-config {
    description "Carrier Configuration for support of LAA. ";
    leaf ed-threshold-pdsch {
      type int8;
      units dBm;
      description
        "This value indicates Energy Detection(ED) threshold for LBT for PDSCH and for measurements in dBm.";
    }

    leaf ed-threshold-drs {
      type int8;
      units dBm;
      description
        "This value indicates Energy Detection(ED) threshold for LBT for DRS in dBm.";
    }

    leaf tx-antenna-ports {
      type uint8;
      description
        "This value indicates Tx antenna ports for DRS (1, 2, 4)";
    }

    leaf transmission-power-for-drs {
      type int8;
      units decibels;
      description
        "This value indicates offset of Cell specific reference Signal(CRS) power to reference signal power (dB).
        DRS signal consists of CRS, PSS, SSS, and optionally CSI-RS.";
    }

    leaf dmtc-period {
      type enumeration {
        enum FORTY {
          description
            "40 ms";
        }
        enum EIGHTY {
          description
            "80 ms";
        }
        enum ONE-HUNDRED-SIXTY {
          description
            "160 ms";
        }
      }
      units milliseconds;
      description
        "This value indicates DRS measurement timing configuration (DMTC) period in ms";
    }

    leaf dmtc-offset {
      type uint8;
      units subframes;
      description
        "This value indicates dmtc offset in Subframes.";
    }

    leaf lbt-timer {
      type uint16;
      units milliseconds;
      description
        "This value indicates LBT Timer in milliseconds.";
    }

    list max-cw-usage-counter {
      when "/mcap:module-capability/mcap:rw-sub-band-info/mcap:rw-self-configure = 'true'";
      key "priority";
      description "";
      leaf priority {
        type enumeration {
          enum P1 {
            description "priority 1";
          }
          enum P2 {
            description "priority 2";
          }
          enum P3 {
            description "priority 3";
          }
          enum P4 {
            description "priority 4";
          }
        }
        description "This value provides the priority class traffic for which the counter is calculated.";
      }

        leaf counter-value {
          type uint8 {
            range "1..8";
          }
          description "This value indicates the maximum value of counter
          which shows how many max congestion window value is used for backoff
          number of priority class traffic. This value is defined at 3GPP 36.213
          section 15.1.3 as K.";
        }
      }
  }

  grouping coupling-methods {
    description
      "Grouping for configuration of desired C-Plane / U-Plane coupling methods (if supported)";
    leaf coupling-to {
      type leafref {
        path "/mcap:module-capability/mcap:ru-capabilities/mcap:coupling-methods/mcap:coupling-via-frequency-and-time";
        require-instance false;
      }

      description
        "RW instance of RO parameter.";
    }
    leaf coupling-method {
      when "../coupling-to = 'true'";
      type enumeration{
        enum NORMAL {
          description "Coupling via sectionId value. This value can be used always.";
        }
        enum FREQUENCY_AND_TIME {
          description "Coupling via frequency and time. Can be used when coupling-via-frequency-and-time = true
                      or coupling-via-frequency-and-time-with-priorities = true in o-ran-module-cap.yang";
        }
        enum FREQUENCY_AND_TIME_WITH_PRIORITIES {
          description "Coupling via frequency and time with priorities. Can be used when
                      coupling-via-frequency-and-time-with-priorities = true in o-ran-module-cap.yang";
        }
        enum FREQUENCY_AND_TIME_WITH_PRIORITIES_OPTIMIZED {
          description "Coupling via frequency and time with priorities optimized. Can be used when
                      coupling-via-frequency-and-time-with-priorities-optimized = true in o-ran-module-cap.yang";
        }
      }
      default NORMAL;
      description
        "Method of coupling between C-Plane and U-Plane messages; see methods of coupling
        of C-Plane and U-Plane in CUS-Plane specification. If an O-RU doesn't support the
        necessary capability as defined in o-ran-module-cap.yang, the O-RU shall respond
        with rpc-error including an error-message describing the error condition";
    }
  }

  grouping eaxc {
    description
      "One eAxC identifier (eAxC ID) comprises a band and sector
      identifier (BandSector_ID), a component-carrier identifier (CC_ID) and a
      spatial stream identifier (RU_Port_ID).

      In this version of the specification, one eAxC contains only one spatial
      stream (i.e. one beam per subcarrier) at a time.

      Bit allocation is subdivided as follows:
      *    O_DU_Port_ID: Used to differentiate processing units at O-DU
      *    BandSector_ID: Aggregated cell identifier
      *    CC_ID: distinguishes Component Carriers
      *    RU_Port_ID: Used to differentiate spatial streams or beams on the O-RU

      The bitwidth of each of the above fields is variable this model is supposed to check
        if we are occupying bits continuously, but we do not have to occupy all 16 bits";

    leaf o-du-port-bitmask {
      type uint16;
      mandatory true;
      description
        "mask for eaxc-id bits used to encode O-DU Port ID";
    }

    leaf band-sector-bitmask {
      type uint16;
      mandatory true;
      description
        "mask for eaxc-id bits used to encode the band sector ID";
    }

    leaf ccid-bitmask {
      type uint16;
      mandatory true;
      description
        "mask for eaxc-id bits used to encode the component carrier id";
    }

    leaf ru-port-bitmask {
      type uint16;
      mandatory true;
      description
        "mask for eaxc-id bits used to encode the O-RU Port ID";
    }

    leaf eaxc-id {
      type uint16;
      mandatory true;
      description
        "encoded value of eaxcid to be read by CU-Plane";
    }
  }

  grouping parameters {
    description
      "Grouping of all parameters common between UL and DL";

    leaf name {
      type string;
      mandatory true;
      description "Unique name of array antenna";
    }

    leaf number-of-rows {
      type uint16;
      mandatory true;
      description "Number of rows array elements are shaped into - M";
    }

    leaf number-of-columns {
      type uint16;
      mandatory true;
      description "Number of columns array elements are shaped into - N";
    }

    leaf number-of-array-layers {
      type uint8;
      mandatory true;
      description "Number of array layers array elements are shaped into - Q";
    }

    leaf horizontal-spacing {
      type decimal64 {
            fraction-digits 5;
        }
      units Meter;

      description "Average distance between centres of nearby AE in horizontal direction (in array coordinates system)";
    }

    leaf vertical-spacing{
      type decimal64 {
            fraction-digits 5;
        }
      units Meter;

      description "Average distance between centres of nearby AE in vertical direction (in array coordinates system)";
    }

    container normal-vector-direction {
      description
        "Counter-clockwise rotation around z and y axis.";

      leaf azimuth-angle{
        type decimal64 {
          fraction-digits 4;
          }
        units Degrees;

        description "Azimuth angle, counter-clockwise rotation around z-axis. Value 'zero' points to broad-side, value '90' points to y-axis";
      }
       leaf zenith-angle{
         type decimal64 {
          fraction-digits 4;
          }
        units Degrees;

        description "Zenith angle, counter-clockwise rotation around y-axis. Value 'zero' points to zenith, value '90' points to horizon";
       }
    }

    container leftmost-bottom-array-element-position {
      description "Structure describing position of leftmost, bottom array element.";
      leaf x {
        type decimal64 {
          fraction-digits 4;
          }
        units Meter;

        description "X dimension of position of leftmost, bottom array element";
      }

      leaf y {
        type decimal64 {
          fraction-digits 4;
          }
        units Meter;

        description "Y dimension of position of leftmost, bottom array element";
      }

      leaf z {
        type decimal64 {
          fraction-digits 4;
          }
        units Meter;

        description "Z dimension of position of leftmost, bottom array element";
      }
    }
    list polarisations {
      key "p";
      min-elements 1;
      max-elements 2;

      description
        "List of supported polarisations.For O-RUs that use external antennas,
        the reported external antenna polarisations are expected to follow vendor deployment guidelines.";

      leaf p {
      type uint8;
      mandatory true;
      description
        "Polarisation index. See CUS-plane";
      }

      leaf polarisation {
        type polarisation_type;
        mandatory true;
        description "Type of polarisation supported by array.";
      }
    }
    leaf band-number {
      type leafref {
        path "/mcap:module-capability/mcap:band-capabilities/mcap:band-number";
      }
      mandatory true;
      description
        "This parameter informing which frequency band particular antenna
         array is serving for.
         Intended use is to deal with multiband solutions.";
    }

    list related-o-ru-connectors {
      key name;

      leaf name {
        type leafref {
          path '/hw:hardware/hw:component/hw:name';
        }
        must "derived-from-or-self(deref(current())/../hw:class, 'or-hw:O-RU-ANTENNA-CONNECTOR')";
        description
          "Referenced name of O-RU connector used by the antenna array.";
      }
      leaf-list array-element-id {
        type uint16;
        description
          "Identifiers of array element(s) related to specific O-RU connector. Allowed values and semantic - as per CUS-Plane spec, clause 'Identification and Ordering of Array Elements'";
      }
      description
        "List of unique names that identify instances of O-RU's connectors the external [tr]x-array is reachable through.";
    }
  }

  grouping array-choice {
    choice antenna-type {
      case tx {
        leaf tx-array-name {
          type leafref {
            path "/o-ran-uplane-conf:user-plane-configuration/o-ran-uplane-conf:tx-arrays/o-ran-uplane-conf:name";
          }

          description
            "Leafref to tx array if such is chosen";
        }
      }
      case rx {
        leaf rx-array-name {
          type leafref {
            path "/o-ran-uplane-conf:user-plane-configuration/o-ran-uplane-conf:rx-arrays/o-ran-uplane-conf:name";
          }

          description
            "Leafref to rx array if such is chosen";
        }
      }
      description
        "Choice for antenna type";
    }
    description
      "Elements which groups choice for antenna type";
  }

  grouping scs-config {
    description
      "It groups all parameters related to SCS configuration";

    leaf frame-structure {
      type uint8;

      description
        "This parameter provides value of frame structure. For semantics and allowed values see CUS-Plane Specification, clause 'frameStructure (frame structure)'";
    }

    leaf cp-type {
      type enumeration {
        enum NORMAL {
          description
            "Normal cyclic prefix";
        }

        enum EXTENDED {
          description
            "Extended cyclic prefix";
        }
      }

      description
        "Provides type of CP (cyclic prefix).

        For section type 3 or section type 0, element and the value of this leaf shall be ignored by the O-RU. In such circumstances,
        please refer to clause 7.5.2.14 cpLength (cyclic prefix length) of the CUS-Plane Specification.";
    }

    leaf cp-length {
      type uint16;
      units Ts;
      mandatory true;
      description
        "Provides length of CP used for the first symbol after subframe boundary or half-subframe boundary.
        See CUS-plane

        If a section type 3 is used in C-plane messages addressed to the endpoint, then O-RU takes length of CP from
        C-Plane cpLength Information Element and the value of this leaf shall be ignored by the O-RU. See cpLength (cyclic prefix length)
        in CUS-Plane for details.

        If a static configuration (see static-prach-configurations) is applicable to the endpoint, then O-RU takes
        length of CP from M-Plane cp-length leaf in static-prach-configurations and the value of this leaf shall be ignored by the O-RU.";
    }

    leaf cp-length-other {
      type uint16;
      units Ts;
      mandatory true;
      description
        "Provides length of CP used for symbols other than provided by cp-length.

        If a section type 3 is used in C-plane messages addressed to the endpoint, then O-RU takes length of CP from
        C-Plane cpLength Information Element and the value of this leaf shall be ignored by the O-RU. See cpLength (cyclic prefix length)
        in CUS-Plane for details.

        If a static configuration (see static-prach-configurations) is applicable to the endpoint, then O-RU takes
        length of CP from M-Plane cp-length leaf in static-prach-configurations and the value of this leaf shall be ignored by the O-RU.";
    }

    leaf offset-to-absolute-frequency-center {
      type int32;
      mandatory true;
      description
        "This provides value of freqOffset to be used if section type 3 is not used. See freqOffset in CUS-plane.
         offset-to-absolute-frequency-center defines the relative spacing between the centre of RE#0 of RB#0 to the center-of-channel-bandwidth.
         If offset-to-absolute-frequency-center for NR with SCS=15kHz is odd,
         it implies that 7.5kHz shift as indicated by the 3GPP parameter frequencyShift7p5khz for UL is applied,
         which means enable the NR UL transmission with a 7.5 kHz shift to the LTE raster, as defined in 3GPP TS 38.331.
         When type (in tx/rx-array-carrier) is DSS, 'offset-to-absolute-frequency-center' indicates the 1st RE of 1st RB of NR.";
    }

    list number-of-prb-per-scs {
      key scs;
      description
        "List of configured for each SCS that will be used.";

      leaf scs {
        type mcap:scs-config-type;
        description
          "Value corresponds to SCS values defined for frameStructure in C-plane.
          Note: set of allowed values is restricted by SCS derived from values in supported-frame-structures.";
      }

      leaf number-of-prb {
        type uint16;
        mandatory true;
        description
          "Determines max number of PRBs that will be used in all sections per one symbol.
          This is affecting allocation of resources to endpoint. Value shall not exceed constrains
          defined by max-prb-per-symbol of endpoint type. In addition, sum (over all used endpoints
          within a group of endpoints sharing resources) of number-of-prb rounded up to the
          nearest value from prb-capacity-allocation-granularity shall not exceed max-prb-per-symbol of the group.";
      }
    }
  }

  grouping occupied-bandwidth {
    description
      "Grouping describing occupied bandwidth of a carrier.";

    container occupied-bandwidth {
      description
        "Container describing occupied bandwidth of a carrier.

        Information conveyed in this container can be used to determine minimum filter bandwidth in case
        it cannot be fully determined basing on the carrier bandwidth itself e.g., when NB-IoT carriers
        are allocated in the carrier's guard band.";

      leaf lower-bound {
        type uint64;
        units Hz;

        description
          "Lower bound of the filter pass bandwidth of a carrier.";
      }

      leaf upper-bound {
        type uint64;
        units Hz;

        description
          "Upper bound of the filter pass bandwidth of a carrier.";
      }
    }
  }

  grouping tx-common-array-carrier-elements {
    description
      "This grouping contains all common parameters for tx-array-carriers and rx-array-carriers";

    leaf absolute-frequency-center {
      type uint32;
      status deprecated;
      description
        "deprecated in version 5.0.0 and replaced with offset-to-absolute-frequency-center
        and common FREF translated from absolute-frequency-center (NREF) as defined in 38.104";
    }

    leaf center-of-channel-bandwidth {
      type uint64;
          units Hz;
      mandatory true;
      description
        "Centre frequency of channel bandwidth in Hz. Common for all numerologies.
         center-of-channel-bandwidth is the FREF translated from absolute-frequency-center (NREF) as per 3GPP TS 38.104.
         Refer to Table 5: Centre Bandwidth Calculation in M-plane spec for calculation of this parameter
         for even and odd number of PRBs in LTE, NR and DSS carrier configuration.";
    }

    leaf channel-bandwidth {
      type uint64;
      units Hz;
      mandatory true;

      description
        "Width of carrier given in Hertz";
    }

    leaf active {
      type enumeration {
        enum INACTIVE {
              description
                "carrier does not provide signal - transmission is disabled";
            }
        enum SLEEP{
              description
                "carrier is fully configured and was active but is energy saving mode";
            }
        enum ACTIVE{
              description
                "carrier is fully configured and properly providing the signal";
            }
      }
      default INACTIVE;

      description
        "Indicates if transmission is enabled for this array carriers. Note that NETCONF server uses state parameter
        to indicate actual state of array carriers operation. When array carriers is in sleep status,
        NETCONF server rejects all other operation request to tx-array-carriers object except either request to change from sleep
        to active status or delete MO operation (see 4.8) to the object.";
    }

    leaf state {
      type enumeration {
        enum DISABLED {
          description
            "array carrier is not active - transmission of signal is disabled.";
        }
        enum BUSY {
          description
            "array carrier is processing an operation requested by change of active parameter.
            When array carriers is BUSY the transmission of signal is not guaranteed.";
        }
        enum READY {
          description
            "array carrier had completed activation operation - is active and transmission of signal is ongoing.";
        }
      }
      config false;
      mandatory true;
      description
        "Indicates state of array carriers activation operation";
    }

    leaf-list availability-status {
      type o-ran-cmn:availability-status;
      config false;
      description
        "indicates availability-status of array carrier";
    }

    leaf type {
      type enumeration {
        enum NR {
              description
                "5G technology";
        }
        enum LTE {
              description
                "LTE technology";
        }
        enum DSS_LTE_NR {
          if-feature mcap:DSS_LTE_NR;
              description
                "NR and LTE technologies in Dynamic Spectrum Sharing mode";
        }
      }
      description
        "Type of carrier. Indicates array-carrier technology.";
    }

    leaf duplex-scheme {
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
      config false;

      description
        "Type of duplex scheme O-RU supports.";
    }
    leaf rw-duplex-scheme {
      type leafref {
        path "/user-plane-configuration/tx-array-carriers[name=current()/../name]" + "/duplex-scheme";
        require-instance false;
      }
      status deprecated;
      description
        "Config true type of duplex scheme.
         Status is deprecated because 'lte-tdd-frame' container, where it was used, is also deprecated.
         Additionally duplex-scheme is derived from the band-number.";
    }
    leaf rw-type {
      type leafref {
        path "/user-plane-configuration/tx-array-carriers[name=current()/../name]" + "/type";
        require-instance false;
      }
      status deprecated;
      description
        "Config true type of carrier.
         Status is deprecated because leafref is to a 'config true' schema-node";
    }
    uses occupied-bandwidth;

    leaf configured-tx-beamId-table-index {
    if-feature feat:MULTIPLE-BEAMID-TABLES-SUPPORTED;
      type uint8;
      description
        "The value of beamId table index configured to be used by the O-DU for a given tx-array-carrier.
        The value shall be chosen from the list 'tx-array-beamId-table-indexes' advertised by the O-RU.";
    }
  }

  grouping rx-common-array-carrier-elements {
    description
      "This grouping contains all common parameters for tx-array-carriers and rx-array-carriers";

    leaf absolute-frequency-center {
      type uint32;
      status deprecated;
      description
        "deprecated in version 5.0.0 and replaced with offset-to-absolute-frequency-center
        and common FREF translated from absolute-frequency-center (NREF) as defined in 38.104";
    }

    leaf center-of-channel-bandwidth {
      type uint64;
          units Hz;
      mandatory true;
      description
        "Centre frequency of channel bandwidth in Hz. Common for all numerologies.
         center-of-channel-bandwidth is the FREF translated from absolute-frequency-center (NREF) as per 3GPP TS 38.104.
         Refer to Table 15.2.4-1: Centre Bandwidth Calculation in M-plane spec for calculation of this parameter
         for even and odd number of PRBs in LTE, NR and DSS carrier configuration.";
    }

    leaf channel-bandwidth {
      type uint64;
      units Hz;
      mandatory true;

      description
        "Width of carrier given in Hertz";
    }

    leaf active {
      type enumeration {
        enum INACTIVE {
              description
                "carrier does not provide signal - transmission is disabled";
            }
        enum SLEEP{
              description
                "carrier is fully configured and was active but is energy saving mode";
            }
        enum ACTIVE{
              description
                "carrier is fully configured and properly providing the signal";
            }
      }
      default INACTIVE;

      description
        "Indicates if transmission is enabled for this array carriers. Note that NETCONF server uses state parameter
        to indicate actual state of array carriers operation. When array carriers is in sleep status,
        NETCONF server rejects all other operation request to tx-array-carriers object except either request to change from sleep
        to active status or delete MO operation (see 4.8) to the object.";
    }

    leaf state {
      type enumeration {
        enum DISABLED {
          description
            "array carrier is not active - transmission of signal is disabled.";
        }
        enum BUSY {
          description
            "array carrier is processing an operation requested by change of active parameter.
            When array carriers is BUSY the transmission of signal is not guaranteed.";
        }
        enum READY {
          description
            "array carrier had completed activation operation - is active and transmission of signal is ongoing.";
        }
      }
      config false;
      mandatory true;
      description
        "Indicates state of array carriers activation operation";
    }

    leaf-list availability-status {
      type o-ran-cmn:availability-status;
      config false;
      description
        "indicates availability-status of array carrier";
    }

    leaf type {
      type enumeration {
        enum NR {
              description
                "5G technology";
        }
        enum LTE {
              description
                "LTE technology";
        }
        enum DSS_LTE_NR {
          if-feature mcap:DSS_LTE_NR;
              description
                "NR and LTE technologies in Dynamic Spectrum Sharing mode";
        }
      }
      description
        "Type of carrier. Indicates array-carrier technology.";
    }

    leaf duplex-scheme {
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
      config false;

      description
        "Type of duplex scheme O-RU supports.";
    }
    uses occupied-bandwidth;

    leaf configured-rx-beamId-table-index {
      if-feature feat:MULTIPLE-BEAMID-TABLES-SUPPORTED;
       type uint8;
        description
          "The value of beamId table index configured to be used by the O-DU for a given rx-array-carrier.
          The value shall be chosen from list 'rx-array-beamId-table-indexes' advertised by the O-RU.";
    }
  }

  grouping endpoint-section-capacity {
    leaf max-control-sections-per-data-section {
      type uint8 {
        range "1..12";
      }
      description
        "Max number of C-plane sections (C-plane section is part of C-plane message that carries 'section fields')
        referring to same U-plane section (U-plane section is part of U-plane message that carries
        'section header fields' and 'PRB fields') that is supported by endpoint.
        Note that additional limitations specific for each section type apply on top of this number.";
    }
    leaf max-sections-per-symbol {
      type uint16;
      description
        "Max number of sections within one symbol that can be processed by endpoint
        or processed collectively by group of endpoints sharing capacity";
    }
    leaf max-sections-per-slot {
      type uint16;
      description
        "Max number of sections within one slot that can be processed by endpoint
        or processed collectively by group of endpoints sharing capacity.";
    }
    leaf max-highest-priority-sections-per-slot {
      type uint16;
      must "current() < ../max-sections-per-slot" {
        error-message "the sectionID for the highest priority needs to be less than the max sectionIds per slot";
      }
      description
        "Max number of highest priority sections within one slot that can be processed by endpoint or processed  collectively by
        group of endpoints sharing capacity. This leaf applies only when coupling-via-frequency-and-time-with-priorities-optimized
        is true, in other instances this leaf is ignored by the O-RU. The sectionId for highest priority section descriptions shall
        start from 0 to specified max value and is a subset of max-sections-per-slot and must be less than max-sections-per-slot.";
    }

    leaf max-remasks-per-section-id {
      type uint8 {
        range "1..12";
      }
      default 12;
      status deprecated;
      description
        "maximum number of different reMask values that is applied to a PRB
        within one section id. This value can be processed by endpoint
        or processed collectively by group of endpoints sharing capacity.
        This parameter is duplicated max-control-sections-per-data-section, hence being deprecated.";
    }
    leaf max-uplane-section-header-per-symbol {
      type uint16;
      description
        "Maximum number of U-Plane data section header within one symbol that can be processed by an endpoint or processed collectively by group of
        endpoints sharing capacity. Clarification for multiple U-Plane data section headers per C-Plane section description is specified in sectionId IE
        description in CUS-Plane specification. For the cases where this optional parameter is not populated by O-RU or an older version O-DU does not
        interpret this parameter, O-DU may optionally use max-sections-per-symbol as the default value to limit of U-Plane data  section messages which
        can be processed by the O-RU. If none of the above limitations are supported, O-RU and O-DU may rely on offline negotiation.
        As an example, this parameter can be used to limit O-RU processing while using Section extension type#6 and #12, which are used for non-contiguous
        PRB allocation, and hence results in multiple U-Plane data section headers for a given C-Plane section description.";
    }
    leaf max-uplane-section-header-per-slot {
      type uint16;
      description
        "Maximum number of U-Plane data section headers within one slot that can be processed by an endpoint or processed collectively by group of
        endpoints sharing capacity. Clarification for multiple U-Plane data section headers per C-Plane section description is specified in sectionId IE
        description in CUS-Plane specification. For the cases where this optional parameter is not populated by O-RU or an older version O-DU does not
        interpret this parameter, O-DU may optionally use max-sections-per-slot as the default value to limit of U-Plane data  section messages which can
        be processed by the O-RU. If none of the above limitations are supported, O-RU and O-DU may rely on offline negotiation.
        As an example, this parameter can be used to limit O-RU processing while using Section extension type#6 and #12, which are used for non-contiguous
        PRB allocation, and hence results in multiple U-Plane data section headers for a given C-Plane section description.";
    }

    description
      "Parameters describing section capacity where section is understood as number of different sectionId values. Additionally, max limits for U-Plane data sections
      refer to U-Plane data section headers";
  }

  grouping endpoint-section-extension-limits {
    leaf max-mcscaleremask-per-prb {
      type uint16;
      description
        "This parameter limits the number of sets of {mcScaleReMask, csf, mcScaleOffset} values per symPrbPattern the O-RU can support when SE 23 is used in a
        data section description. Refer to clause 7.7.23.1 of the CUS-Plane specification.";
    }
    leaf max-prb-ranges-per-sec-ext-12 {
      type uint16;
      description
        "Optional parameter reported by O-RU which applies to Section Extension 12 and specifies
        the maximum number of frequency ranges R per section description supported by O-RU.
        If this limit is exceeded by the O-DU, the O-RU may send alarm notification with
        'fault-id = 31' to subscribers following the procedures defined in Clause 11 and
        Table A.1-1 of O-RAN.WG4.MP.0.
        As an example, the O-RU can include the following in the corresponding active-alarm list
        entry and alarm-notification message:
        <fault-text>Error C-Plane message</fault-text>
        <probable-cause>Maximum number of frequency ranges in SE-12 per section description exceeded</probable-cause>
        <proposed-repair-actions>Reduce frequency ranges per section description used in SE-12</proposed-repair-actions>";
    }
    leaf max-freq-hops-per-sec-ext-13 {
      type uint16;
      description
        "Optional parameter reported by O-RU which applies to Section Extension 13 and specifies
        the maximum number of frequency hops R per section description supported by O-RU.
        If this limit is exceeded by the O-DU, the O-RU may send alarm notification with
        'fault-id = 31' to subscribers following the procedures defined in Clause 11 and
        Table A.1-1 of O-RAN.WG4.MP.0.
        As an example, the O-RU can include the following in the corresponding active-alarm list
        entry and alarm-notification message:
        <fault-text>Error C-Plane message</fault-text>
        <probable-cause>Maximum number of frequency hops in SE 13 per section description exceeded</probable-cause>
        <proposed-repair-actions>Reduce frequency hops per section description used in SE-13</proposed-repair-actions>";
    }

    leaf max-prb-blks-per-sec-ext-23 {
      if-feature feat:SE23-PRB-BLOCK-MODE-SUPPORT;
      type uint16;
      description
        "Optional parameter reported by O-RU which applies to Section Extension 23 and specifies
        the maximum number of prb blocks (Refer Clause 7.7.23.1 of CUS-Plane spec prb block) per
        section description supported by O-RU.
        If this limit is exceeded by the O-DU, the O-RU may send alarm notification with 'fault-id = 31'
        to subscribers following the procedures defined in Clause 11 and
        Table A.1-1 of O-RAN.WG4.MP.0.
        As an example, the O-RU can include the following in the corresponding active-alarm list
        entry and alarm-notification message:
        <fault-text>Error C-Plane message</fault-text>
        <probable-cause>Maximum number of prb blocks in SE-23 per section description exceeded</probable-cause>
        <proposed-repair-actions>Reduce prb blocks per section description used in SE-23</proposed-repair-actions>";
    }

    description
      "Parameters describing C-Plane section extension limits/capacities.";
  }

  grouping endpoint-beam-capacity {
    leaf max-beams-per-symbol {
      type uint16 {
        range "min .. 32767";
      }
      description
        "Max number of different beamId values within one symbol that can be processed by endpoint
        or processed collectively by group of endpoints sharing capacity

        If the parameter is absent or if value 0 is reported for the parameter,
        then the endpoint does not support beamforming operation.

        The parameter doesn't apply if multiple-beamId-tables-support-enabled is set to true.
        In such a case, max-beams-per-symbol-multiple-beamid-tables applies.";
    }
    leaf max-beams-per-slot {
      type uint16 {
        range "min .. 32767";
      }
      description
        "Max number of different beamId values within one slot that can be processed by endpoint
        or processed collectively by group of endpoints sharing capacity

        If the parameter is absent or if value 0 is reported for the parameter,
        then the endpoint does not support beamforming operation.

        The parameter doesn't apply if multiple-beamId-tables-support-enabled is set to true.
        In such a case, max-beams-per-slot-multiple-beamid-tables applies.";
    }
    leaf max-total-beamids-per-symbol {
      type uint16 {
        range "min .. 32767";
      }
      description
        "Max number of same or different beamId values within one symbol that can be referred by C-Plane messages
        sent to an endpoint or endpoints in an endpoint-capacity-sharing-group and then processed by the endpoint
        or processed collectively by group of endpoints sharing capacity. Occurrence of same beamId within the same
        C-Plane message and across C-Plane messages within one symbol are counted seperately.

        If the parameter is absent or if value 0 is reported for the parameter,
        then the endpoint does not support beamforming operation.

        The parameter doesn't apply if multiple-beamId-tables-support-enabled is set to true.
        In such a case, max-total-beamids-per-symbol-multiple-beamid-tables applies.";
    }
    leaf max-total-beamids-per-slot {
      type uint16 {
        range "min .. 32767";
      }
      description
        "Max number of same or different beamId values within one slot that can be referred by C-Plane messages
        sent to an endpoint or endpoints in an endpoint-capacity-sharing-group and then processed by the endpoint
        or processed collectively by group of endpoints sharing capacity.Occurrence of same beamId within the same
        C-Plane message and across C-Plane messages within one slot are counted seperately.

        If the parameter is absent or if value 0 is reported for the parameter,
        then the endpoint does not support beamforming operation.

        The parameter doesn't apply if multiple-beamId-tables-support-enabled is set to true.
        In such a case, max-total-beamids-per-slot-multiple-beamid-tables applies.";
    }

    leaf max-beams-per-symbol-multiple-beamid-tables {
      if-feature feat:MULTIPLE-BEAMID-TABLES-SUPPORTED;
      type uint32;
      description
        "Max number of different beamId values within one symbol that can be processed by endpoint
        or processed collectively by group of endpoints sharing capacity.
        beamId values associated with different beamId tables are always considered different.

        This parameter only applies if multiple-beamId-tables-support-enabled is set to true.
        If multiple-beamId-tables-support-enabled is set to false, then max-beams-per-symbol applies.";
    }
    leaf max-beams-per-slot-multiple-beamid-tables {
      if-feature feat:MULTIPLE-BEAMID-TABLES-SUPPORTED;
      type uint32;
      description
        "Max number of different beamId values within one slot that can be processed by endpoint
        or processed collectively by group of endpoints sharing capacity.
        beamId values associated with different beamId tables are always considered different.

        This parameter only applies if multiple-beamId-tables-support-enabled is set to true.
        If multiple-beamId-tables-support-enabled is set to false, then max-beams-per-slot applies.";
    }

    leaf max-total-beamids-per-symbol-multiple-beamid-tables {
      if-feature feat:MULTIPLE-BEAMID-TABLES-SUPPORTED;
      type uint32;
      description
        "Max number of same or different beamId values within one symbol that can be referred by C-Plane messages
        sent to an endpoint or endpoints in an endpoint-capacity-sharing-group and then processed by the endpoint
        or processed collectively by group of endpoints sharing capacity. Occurrence of same beamId within the same
        C-Plane message and across C-Plane messages within one symbol are counted seperately.
        The beamId values associated with different beamId tables are always considered different.

        This parameter only applies if multiple-beamId-tables-support-enabled is set to true.
        If multiple-beamId-tables-support-enabled is set to false, then max-total-beamids-per-symbol applies.";
    }
    leaf max-total-beamids-per-slot-multiple-beamid-tables {
      if-feature feat:MULTIPLE-BEAMID-TABLES-SUPPORTED;
      type uint32;
      description
        "Max number of same or different beamId values within one slot that can be referred by C-Plane messages
        sent to an endpoint or endpoints in an endpoint-capacity-sharing-group and then processed by the endpoint
        or processed collectively by group of endpoints sharing capacity. Occurrence of same beamId within the same
        C-Plane message and across C-Plane messages within one slot are counted seperately.
        The beamId values associated with different beamId tables are always considered different.

        This parameter only applies if multiple-beamId-tables-support-enabled is set to true.
        If multiple-beamId-tables-support-enabled is set to false, then max-total-beamids-per-slot applies.";
    }

    leaf max-beam-updates-per-slot {
      type uint16 {
        range "min .. 32767";
      }
      description
        "Max number of beams within one slot that can be updated by endpoint
        or processed collectively by group of endpoints sharing capacity

        If the parameter is absent or if value 0 is reported for the parameter,
        then the endpoint does not support beamforming operation.";
    }
    leaf max-beam-updates-per-symbol {
      type uint16 {
        range "min .. 32767";
      }
      description
        "Max number of beams within one symbol that can be updated by endpoint
        or processed collectively by group of endpoints sharing capacity

        If the parameter is absent or if value 0 is reported for the parameter,
        then the endpoint does not support beamforming operation.";
    }

    description
      "Parameters describing beam capacity where number of beams is understood as number of different beamId values.
       Parameters defined for beam updates shall be used to put a maximum limit on number of beam/beamIds which can be updated
       every slot/symbol. Note: This parameter does not put any restriction on which beams/beamIds can be updated.

       If the parameters defining beam capacity and beam updates are absent or if value 0 is reported for the parameters
       defining beam capacity and beam updates, then the endpoint does not support beamforming operation.";
  }

  grouping endpoint-prb-capacity {
    leaf max-prb-per-symbol {
      type uint16;
      description
        "Max number of prbs within one symbol that can be processed by endpoint
        or processed collectively by group of endpoints sharing capacity";
    }

    leaf max-prb-ranges-per-symbol {
      type uint32;
      description
        "Optional parameter reported by O-RU which indicates the maximum number of PRB ranges
        that can be processed by single endpoint or processed collectively by group of endpoints
        sharing capacity within one symbol. For details please see O-RAN WG4 CUS-Plane specification,
        Clause 7.8.2.1.2 'Limits of number of PRB ranges'.

        In case CU-Plane traffic generated by the O-DU exceeds the limit, an O-RU is responsible
        for sending alarm notification with 'fault-id = 31' to subscribers following the procedures
        defined in Clause 11 and Table A.1-1 of O-RAN.WG4.MP.0.

        As an example, the O-RU can include the following in the corresponding active-alarm list
        entry and alarm-notif message:
        <fault-text>Error C-Plane message</fault-text>
        <probable-cause>max-prb-ranges-per-symbol exceeded</probable-cause>
        <proposed-repair-actions>Reduce value of  number of PRB ranges used per symbol</proposed-repair-actions>";
    }

    description
      "Attributes presenting processing capacity related to PRB.";
  }

  grouping endpoint-numerology-capacity {
    leaf max-numerologies-per-symbol {
      type uint16;
      description
        "Max number of numerologies within one symbol that can be processed by endpoint
        or processed collectively by group of endpoints sharing capacity";
    }

    description
      "Attributes presenting processing capacity related to numerology.

      This leaf contains valid data only when multiple-numerology-supported
      is set to true.";
  }

  grouping per-cplane-message-limits  {
    leaf max-beams-per-cplane-message {
      type uint16;
      description
        "Maximum number of beams which can be received in one single C-Plane message. Number of beams,
        may include only beamIds, only beam weights or mix of beamIds and beamweights being received by
        an O-RU in a single C-Plane message.
        To avoid application layer fragmentation of C-Plane message across the fronthaul, O-RU should
        avoid setting this to a very low value.
        As a usage scenario, an O-RU may choose to define only a few quantized values e.g. (128, 256).
        If the value is set to 0 by O-RU, the O-DU need not restrict the number of beams it can send
        in single C-Plane message (except limited by MTU size).";
    }

    leaf max-highest-priority-sec-per-cplane-message {
      type uint16;
      description
        "Maximum number of highest priority sections which can be received in one single C-Plane message.
        This leaf applies only when 'coupling-via-frequency-and-time-with-priorities' is true";
    }

    leaf max-beams-per-slot-with-cplane-limits {
      type uint16;
      description
        "Maximum number of beams that are required to be processed by endpoint or processed collectively
        by group of endpoints sharing capacity when O-DU enables C-Plane limits. This value should replace
        'max-beams-per-slot' defined in 'endpoint-beam-capacity'";
    }

    leaf max-highest-priority-sections-per-slot-with-cplane-limits {
      type uint16;
      description
        "Maximum number of highest priority sections that are required to be processed by endpoint or processed
        collectively by group of endpoints sharing capacity when O-DU supports C-Plane limits. This value should
        replace 'max-highest-priority-sections-per-slot' defined in 'endpoint-section-capacity'";
    }

    leaf max-num-se22-per-cplane-message {
      type uint16;
      description
        "This value limits the max number of section extension 22 (ACK/NACK request) included in a C-Plane message as supported
        by the endpoint or collectively by group of endpoints sharing capacity when O-DU enables C-Plane limits
        and when section extension 22 (ACK/NACK request) and section type 8 (ACK/NACK feedback) are supported by the endpoint or endpoint sharing group.";
    }

    leaf max-prb-ranges-per-hp-section-sec-ext-12 {
      type uint16;
      description
        "Optional parameter reported by O-RU which applies to Section Extension 12 and specifies the
        maximum number of frequency ranges R per highest priority section description supported by O-RU.
        If this limit is exceeded by the O-DU, the O-RU is responsible for sending alarm notification
        with 'fault-id = 31' to subscribers following the procedures defined in Clause 11 and
        Table A.1-1 of O-RAN.WG4.MP.0.
        As an example, the O-RU can include the following in the corresponding active-alarm list
        entry and alarm-notification message:
        <fault-text>Error C-Plane message</fault-text>
        <probable-cause>Maximum number of frequency hops per highest priority section description exceeded</probable-cause>
        <proposed-repair-actions>Reduce frequency range per highest section description</proposed-repair-actions>";
    }

    description
      "Attributes limit maximum instances of certain parameters contained in a C-Plane message e.g. beams,
      highest priority sections. This limitation is useful for O-RUs which are packet processing based and are
      dimensioned to handle fixed number of parameters contained in a C-Plane message. In addition, if O-DU supports
      cplane limits, O-RU can operate more efficiently and endpoint capacity for applicable parameters are enhanced.
      as specified by 'max-beams-per-slot-with-cplane-limits' and 'max-highest-priority-sections-per-slot-with-cplane-limits'";
  }

   grouping per-uplane-message-limits  {
    leaf max-section-headers-per-uplane-message {
      if-feature feat:UPLANE-MESSAGE-PROCESSING-LIMITS;
      type uint16;
      description
        "Maximum number of section headers which can be received in one single U-Plane message.";
    }

     description
      "Attributes describe maximum instances of certian parameters contained in a U-Plane mesaage e.g.
      number of section headers. Those limitations are required for O-RUs which are packet processing based and are
      dimensioned to handle limited number of parameters contained in a U-Plane message. ";
  }

  grouping beam-update-contention-control-limits  {
    leaf max-beams-per-symbol-with-beam-contention-control {
      type uint16;
      description
        "Maximum number of beams within one symbol that can be processed by an endpoint or processed collectively
        by group of endpoints sharing capacity when O-DU enables the O-RU feature BEAM-UPDATE-CONTENTION-CONTROL.
        This value should replace 'max-beams-per-symbol' defined in 'endpoint-beam-capacity'";
    }

    leaf max-beams-updates-per-symbol-with-beam-contention-control {
      type uint16;
      description
        "Maximum number of beams within one symbol that can be updated by an endpoint or processed collectively
        by group of endpoints sharing capacity when O-DU enables the O-RU feature BEAM-UPDATE-CONTENTION-CONTROL.
        This value should replace 'max-beam-updates-per-symbol' defined in 'endpoint-beam-capacity'";
    }

    description
      "If O-DU supports BEAM-UPDATE-CONTENTION-CONTROL, O-RU can operate more efficiently and endpoint capacity for applicable
      parameters are enhanced.";
  }

  grouping endpoint-static-config-support {
    leaf static-config-supported {
      type enumeration {
        enum NONE {
          description
            "The endpoint does not support static PRACH / SRS configuration.
             Reception of PRACH / SRS is possible through real time C-Plane messages
             if other endpoint capabilities allow for that.";
        }
        enum PRACH {
          if-feature mcap:PRACH-STATIC-CONFIGURATION-SUPPORTED;
          description
            "The endpoint supports statically configured PRACH reception";
        }
        enum SRS {
          if-feature mcap:SRS-STATIC-CONFIGURATION-SUPPORTED;
          description
            "The endpoint supports statically configured SRS reception";
        }
      }
      default NONE;

      description
        "The parameter informs if endpoint can be statically configured to process PRACH or SRS reception";
    }

    leaf max-prach-patterns {
      when "(/user-plane-configuration/static-low-level-rx-endpoints[name=current()/../name]/static-config-supported = 'PRACH')";
      type uint8;
        description
          "Maximum number of PRACH patterns the endpoint can handle in PRACH configuration.
          Due to limited range of the parameter, an O-DU should use extended-max-prach-patterns parameter.";
    }

    leaf extended-max-prach-patterns {
      when "(/user-plane-configuration/static-low-level-rx-endpoints[name=current()/../name]/static-config-supported = 'PRACH')";
      if-feature feat:EXTENDED-PRACH-CONFIGURATION;
      type uint32;
        description
          "Maximum number of PRACH patterns the endpoint can handle in PRACH configuration if EXTENDED-STATIC-PRACH is supported.";
    }

    leaf max-srs-patterns {
      when "(/user-plane-configuration/static-low-level-rx-endpoints[name=current()/../name]/static-config-supported = 'SRS')";
      type uint8;
        description
          "Maximum number of SRS patterns the endpoint can handle in SRS configuration";
    }

    description
      "Endpoint's capabilities related to static PRACH / SRS configuration.";
  }

  grouping endpoint-tdd-pattern-support {
    leaf configurable-tdd-pattern-supported {
      if-feature mcap:CONFIGURABLE-TDD-PATTERN-SUPPORTED;
      type boolean;
      default false;

      description
        "The parameter informs if endpoint supports configuration for TDD pattern";
    }

    leaf tdd-group {
      type uint8;
      description
        "Parameter is used to group static-low-level-[tr]x-endpoints.
        Note: [tr]x-array-carriers using static-low-level-[tr]x-endpoints
        having the same value of tdd-group, must have the same TDD switching
        points and the same directions to the air interface granted - regardless TDD switching
        is controlled by M-Plane or by C-Plane";
    }

    description
      "This grouping exposes static-low-level-[tr]x-endpoint's capabilities related to its support for configurable
      TDD patterns and limitations regarding common TDD switching per groups of endpoints.";
  }

  grouping u-plane-transmission-control {
    description
      "Configuration for UL U-plane transmission control";

    leaf transmission-window-control {
      if-feature "feat:STATIC-TRANSMISSION-WINDOW-CONTROL or feat:DYNAMIC-TRANSMISSION-WINDOW-CONTROL";
      type enumeration {
        enum NONE {
          description
            "O-RU will use normal transmission type with normal transmission window";
        }
        enum STATIC {
          if-feature feat:STATIC-TRANSMISSION-WINDOW-CONTROL;
          description
            "O-RU will use transmission window offset and size and transmission type as configured over M-plane";
        }
        enum DYNAMIC {
          if-feature feat:DYNAMIC-TRANSMISSION-WINDOW-CONTROL;
          description
            "O-RU will use transmission window offset and size and transmission type as requested over C-plane";
        }
      }
      default NONE;

      description
        "Selects type of UL U-plane transmission window control for the endpoint";
    }

    leaf transmission-window-schedule {
      when "(../transmission-window-control = 'STATIC')";
      if-feature feat:STATIC-TRANSMISSION-WINDOW-CONTROL;
      type union {
        type empty;
        type leafref {
          path "/user-plane-configuration/transmission-window-schedules/id";
        }
      }
      description
        "Identifies U-plane transmission window schedule (which provides a list of symbol-specific offsets)
         to be used by the endpoint.
         Symbol-specific offset values from the schedule are added to endpoint specific offset value
         from transmission-window-offset.
         If this element is not present, the O-RU assumes as all symbol specific offsets are zero.
         For restrictions on values of symbol-specific offsets see description of transmission-window-offset.
         This parameter shall not be set to value other than empty if transmission control is not enabled
         by transmission-window-control.";
    }

    leaf transmission-window-offset {
      when "(../transmission-window-control = 'STATIC')";
      if-feature feat:STATIC-TRANSMISSION-WINDOW-CONTROL;
      type uint16;
      units "number of symbols";
      default 0;
      description
        "Transmission window offset.
         The effective symbol-specific offset is sum of endpoint-specific offset value from transmission-window-offset
         and symbol-specific offset from transmission-window-schedules referenced by transmission-window-schedule.

         If this element is not present then O-RU assumes transmission-window-offset is zero.
         This parameter shall not be set to value other than 0 if transmission control is not enabled
         by transmission-window-control.

         There is no direct upper bound for this parameter (except value range defined by leaf type) but there are
         restrictions on combination of values of transmission-window-offset, transmission-window-offset,
         symbol-specific offset from transmission-window-schedules and transmission-window-size.

         Specifically, if endpoint is set for delay managed operation (non-time-managed-delay-enabled = FALSE)
         then O-RU handles U-Plane transmission as delay managed traffic and combination of values of
         transmission-window-offset, symbol-specific offset from transmission-window-schedules and
         transmission-window-size must not exceed O-RU buffering capacity (transmission-buffering-capacity)
         for the requested reception schedule.

         If endpoint is set for non-delay managed operation (non-time-managed-delay-enabled = TRUE)
         then O-RU handles U-Plane transmission on best effort basis. In this case any combination of values
         of transmission-window-offset, symbol-specific offset from transmission-window-schedules and
         transmission-window-size is permitted. This does not remove restrictions on parameters due to restrictions
         defined for value type or restrictions that depend on INDEPENDENT-TRANSMISSION-WINDOW-CONTROL feature

         Additional restrictions on values (and presence) of transmission-window-schedule, transmission-window-offset
         and transmission-window-size depend on presence of INDEPENDENT-TRANSMISSION-WINDOW-CONTROL feature.

         If INDEPENDENT-TRANSMISSION-WINDOW-CONTROL feature is not supported then all endpoints with
         transmission control enabled that handle the same carrier type and SCS must be configured
         (via M-plane or C-plane) with parameter values resulting in transmission windows that coincide
         between the endpoints. That is, for every symbol N, the effective transmission window for symbol N
         must be shared (start at the same time and end at the same time) by all the endpoints handling
         same carrier type and SCS. This restriction applies only to endpoints that have transmission
         control enabled.

         If INDEPENDENT-TRANSMISSION-WINDOW-CONTROL feature is supported then restriction described
         above does not apply and a different transmission window (window offset and window size)
         can be used for every endpoint capable of transmission window control.";
    }

    leaf transmission-window-size {
      when "(../transmission-window-control = 'STATIC')";
      if-feature feat:STATIC-TRANSMISSION-WINDOW-CONTROL;
      type uint16 {
        range "0..10000";
      }
      units "microsecond";
      default 0;
      description
        "Transmission window size to be used; only values that are compatible with SCS used
         for the endpoint are allowed.
         Minimum supported value is determined by SCS specific transmission window size
         reported by O-RU in ru-delay-profile.

         Client can use special value 0 (zero) instead of the SCS specific transmission window
         size reported by O-RU in ru-delay-profile with the same effect.
         This parameter shall not be set to value other than 0 if transmission control is not enabled
         (transmission-window-control = NONE) or the endpoint is set for non-delay managed operation
         (non-time-managed-delay-enabled = TRUE).

         There is no direct upper bound for this parameter (except value range defined by leaf type) but there are
         restrictions on combination of values of transmission-window-offset, transmission-window-offset,
         symbol-specific offset from transmission-window-schedules and transmission-window-size.
         See description of transmission-window-offset for more details.";
    }

    leaf transmission-type {
      when "(../transmission-window-control = 'STATIC')";
      if-feature "feat:STATIC-TRANSMISSION-WINDOW-CONTROL and feat:UNIFORMLY-DISTRIBUTED-TRANSMISSION";
      type enumeration {
        enum NORMAL {
          description
            "Normal transmission (unspecified within transmission window)";
        }
        enum UNIFORMLY-DISTRIBUTED {
          if-feature feat:UNIFORMLY-DISTRIBUTED-TRANSMISSION;
          description
            "Uniformly distributed over transmission window: each of N messages in the window
             transmitted at random time in a separate subwindow; subwindow size is window size / N ";
        }
      }

      description "Type of delay supported by the endpoint";
    }
  }

  grouping tx-endpoint-compression-grouping {
    description
      "Grouping for endpoint compression";

    container compression {
      presence
        "This container shall exists to avoid misaligned compression
        methods between devices";

      description
        "Container which consists of global configurable parameters for compression";

      uses cf:compression-details;

      leaf fs-offset {
        if-feature cf:CONFIGURABLE-FS-OFFSET;
        type uint8;
        default 0;
        description
          "Adjusts FS (full scale) value of IQ format relative to FS derived from unmodified IQ format.
           Please refer to CU-Plane specification for details";
      }

      list dynamic-compression-configuration {
        when "../compression-type = 'DYNAMIC'";
        key "id";
        unique "compression-method iq-bitwidth fs-offset";
        description
          "List of possible configuration in case dynamic configuration is used
           Note: In case of empty list all available compressions can be chosen dynamically
                 and default fs-offset is taken (0).
                 If the feature CONFIGURABLE-FS-OFFSET is not supported,
                 fs-offset will not be considered as one of the criteria for unique statement.
                 Refer to RFC7950 clause 7.8.3 for details of unique statement";

        leaf id {
          type uint16;
          description
            "Identification number for particular compression";
        }

        uses cf:compression-method-grouping;

        leaf fs-offset {
          if-feature cf:CONFIGURABLE-FS-OFFSET;
          type uint8;
          default 0;
          description
            "Adjusts FS (full scale) value of IQ format relative to FS derived from unmodified IQ format.
             Please refer to CU-Plane specification for details";
        }

        leaf channel-information-iq-bitwidth {
          type uint8{
            range "1..16";
          }
          status deprecated;
          description
            "I/Q bitwidth for channel information in Section Type6.
            Leaf is deprecated as it should be independent of dynamic compression,
            NETCONF client instead uses channel-information-bitwidth schema node";
        }
      }

      leaf channel-information-bitwidth {
        type uint8{
          range "1..16";
        }
        description
          "I/Q bitwidth for channel information in Section Type6.
           Maximum value is limited to 16.
           Value 1,2,..16 indicates I and Q are each 1,2..16 bits wide respectively.
           Note: This parameter shall be used when the NETCONF client does not make use of
           the CHANNEL-INFORMATION-COMPRESSION feature.";
      }

      list channel-information-compressions {
        if-feature "feat:CHANNEL-INFORMATION-COMPRESSION";
        key id;

        leaf id {
          type uint16;
          description
            "Identification number for particular channel information compression";
        }

        leaf channel-information-compression-method {
          type cf:ci-compression-method-def;
          description
            "Channel information compression method";
        }

        leaf iq-bitwidth {
          type uint8{
            range "1..16";
          }
          description
            "Bitwidth to be used in compression, maximum value is limited to 16.
            Value 1,2,..16 indicates I and Q are each 1,2..16 bits wide respectively.

            When this schema node is used in the configuration, the O-RU shall ignore the configuration of the
            /low-level-tx-endpoints/compression/channel-information-bitwidth schema node";
        }

        description
          "List of available compressions, that can be dynamically chosen, for channel information (e.g. ST6) for this endpoint.
           Note1: When only one compression is listed here, it implies that channel information compression
                  is static and mentioned compression is taken into use.
           Note2: O-RU Shall reject configuration with compressions that are not supported";
      }

      list bf-weights-compressions {
        key id;

        leaf id {
          type uint16;
          description
            "Identification number for particular beamforming compression";
        }

        leaf bf-weights-compression {
          type cf:bf-compression-method-def;
          description
            "Beamforming weight compression method";
        }

        leaf iq-bitwidth {
          type uint8 {
            range "1..16";
          }
          description
            "Bitwidth to be used in compression, maximum value is limited to 16.
            Value 1,2,..16 indicates I and Q are each 1,2..16 bits wide respectively";
        }
        description
          "List of available compressions, that can be dynamically chosen, for beamforming weights for this endpoint.
           Note1: When only one compression is listed here, it implies that beamforming weights compression
                  is static and mentioned compression is taken into use.
           Note2: O-RU Shall reject configuration with compressions that are not supported";
      }
    }
  }

  grouping rx-endpoint-compression-grouping {
    description
      "Grouping for endpoint compression";

    container compression {
      presence
        "This container shall exists to avoid misaligned compression
        methods between devices";

      description
        "Container which consists of global configurable parameters for compression";

      uses cf:compression-details;

      leaf fs-offset {
        if-feature cf:CONFIGURABLE-FS-OFFSET;
        type uint8;
        default 0;
        description
          "Adjusts FS (full scale) value of IQ format relative to FS derived from unmodified IQ format.
           Please refer to CU-Plane specification for details";
      }

      list dynamic-compression-configuration {
        when "../compression-type = 'DYNAMIC'";
        key "id";
        unique "compression-method iq-bitwidth fs-offset";
        description
          "List of possible configuration in case dynamic configuration is used
           Note: In case of empty list all available compressions can be chosen dynamically
                 and default fs-offset is taken (0).
                 If the feature CONFIGURABLE-FS-OFFSET is not supported,
                 fs-offset will not be considered as one of the criteria for unique statement.
                 Refer to RFC7950 clause 7.8.3 for details of unique statement";

        leaf id {
          type uint16;
          description
            "Identification number for particular compression";
        }

        uses cf:compression-method-grouping;

        leaf fs-offset {
          if-feature cf:CONFIGURABLE-FS-OFFSET;
          type uint8;
          default 0;
          description
            "Adjusts FS (full scale) value of IQ format relative to FS derived from unmodified IQ format.
             Please refer to CU-Plane specification for details";
        }
      }

      list bf-weights-compressions {
        key id;

        leaf id {
          type uint16;
          description
            "Identification number for particular beamforming compression";
        }

        leaf bf-weights-compression {
          type cf:bf-compression-method-def;
          description
            "Beamforming weight compression method";
        }

        leaf iq-bitwidth {
          type uint8;
          description
            "Bitwidth to be used in compression";
        }

        description
          "List of available compressions, that can be dynamically chosen, for beamforming weights for this endpoint.
           Note1: When only one compression is listed here, it implies that beamforming weights compression
                  is static and mentioned compression is taken into use.
           Note2: O-RU Shall reject configuration with compressions that are not supported";
      }
    }
  }

  grouping supported-section-type4-config {
    description
      "Set of parameters required for section type 4 slot configuration message.";
      list st4-supported-commands {
        key "st4-command-type";

        description
          "This parameter specifies the list of Section Type 4 command types supported by O-RU.";
        leaf st4-command-type {
          type enumeration {
            enum TIME_DOMAIN_BEAM_CONFIG {
              description "O-RU support for receiving time domain beamforming command.";
            }
            enum TDD_CONFIG_PATTERN {
              description "O-RU support for receiving TDD symbol pattern for a given slot.";
            }
            enum TRX_CONTROL {
              if-feature feat:TRX-CONTROL;
              description "O-RU support for receiving TRX CONTROL command in a given slot.";
            }
            enum ASM {
              if-feature feat:ADVANCED-SLEEP-MODE;
              description "O-RU support for receiving ASM command in a given slot.";
            }
          }
          description
            "Section Type 4 command types supported by O-RU.";
        }

        list st4-command-scope-params {
          key "cmd-scope";

          description
            "This list contains parameters which are specific to a given command scope associated with a particular section type 4 command type.";

          leaf cmd-scope {
            type enumeration {
              enum ARRAY-COMMAND {
                description
                  "Command applies to all endpoints assigned to the tx-array(s) and/or rx-array(s).If the O-RU
                  is operating with multiple O-DUs, the scope of an individual O-DU is limited, to the
                  endpoints assigned to the O-DU which was the originator of the command.";
              }
              enum CARRIER-COMMAND {
                description
                  "Command applies to all endpoints assigned to the tx-array-carrier and/or rx-array-carrier.";
              }
              enum O-RU-COMMAND {
                description
                  "O-RU level command, i.e., one that applies to all arrays and carriers. If the O-RU
                  is operating with multiple O-DUs, the scope of an individual O-DU is limited, as
                  specified in CUS-Plane specification, clause 7.5.2.17.";
              }
            }
            description "Command scope for section type 4 commands";
          }

          leaf st4-reception-bitmask {
            type uint16;
            description
              "This parameter specifies the O-RU capability to receive Section Type 4 message with associated commands with a particular command scope
              for the symbols for which the corresponding bit is set to '1' in the bitmask. If the O-RU receives a Section Type 4 message with
              associated command for a symbol whose bit value is set to '0' in this bitmask, the O-RU shall reject the Section Type 4 message";
          }
        }
      }

      list st4-reception-mask {
        key "cmd-scope";
        status deprecated;

        description
          "List of symbol mask per command scope, specifying the O-RU capability to receive Section Type 4 message for a
          given command scope only for symbols for which the corresponding bit is set to '1' in the bitmask. If the O-RU
          receives a Section Type 4 message with associated command for a symbol whose bit value is set to '0' in this
          bitmask, the O-RU shall reject the Section Type 4 message";

        leaf cmd-scope {
          type enumeration {
            enum ARRAY-COMMAND {
              description
                "Command applies to all endpoints assigned to the tx-array(s) and/or rx-array(s).If the O-RU
                is operating with multiple O-DUs, the scope of an individual O-DU is limited, to the
                endpoints assigned to the O-DU which was the originator of the command.";
            }
            enum CARRIER-COMMAND {
              description
                "Command applies to all endpoints assigned to the tx-array-carrier and/or rx-array-carrier.";
            }
            enum O-RU-COMMAND {
              description
                "O-RU level command, i.e., one that applies to all arrays and carriers. If the O-RU
                is operating with multiple O-DUs, the scope of an individual O-DU is limited, as
                specified in CUS-Plane specification, clause 7.5.2.17.";
            }
          }
          description "Command scope for section type 4 commands";
        }

        leaf st4-reception-bitmask {
          type uint16;
            description
             "This parameter specifies the O-RU capability to receive Section Type 4 message with associated commands for the symbols
             for which the corresponding bit is set to '1' in the bitmask. If the O-RU receives a Section Type 4 message with
             associated command for a symbol whose bit value is set to '0' in this bitmask, the O-RU shall reject the Section Type 4 message";
        }
     }
  }

  grouping uplane-conf-group {
    description
      "Grouping for uplane configuration related parameters";

    list low-level-tx-links {
      key name;
      description
        "Object model for low-level-tx-link configuration";

      leaf name {
        type string;
        description
          "Unique name of low-level-tx-link object.";
      }

      leaf sro-id {
        if-feature feat:SHARED-ORU-MULTI-OPERATOR;
        type leafref {
          path "/or-user:users/or-user:user/or-user:sro-id";
        }
        description
          "An optional shared resource operator associated with this list entry.
          When present, indicates that the list entry corresponds to a low-level-tx-link
          associated with a shared resource operator where the sro-id identifies
          a specific shared resource operator.
          This schema-node is used to refine NACM privileges for shared
          resource operators";
      }

      leaf processing-element {
        type leafref {
          path "/o-ran-pe:processing-elements/o-ran-pe:ru-elements/o-ran-pe:name";
        }
        mandatory true;
        description
          "Contains name of processing-element to be used as transport by low-level-tx-link,
           if 'transport-qualified-processing-element' is included in the configuration,
           the O-RU shall use 'transport-qualified-processing-element' instead of this schema node,
           an O-RU Controller shall still configure this schema node with a leafref to a valid ru-element,
           but this shall not be used by the O-RU.";
      }

      leaf transport-session-type {
        if-feature "feat:MULTIPLE-TRANSPORT-SESSION-TYPE";
        type enumeration {
          enum ETH-INTERFACE {
            description "VLAN based CUS Transport ";
          }
          enum UDPIP-INTERFACE {
            description "UDP/IP based CUS Transport ";
          }
          enum ALIASMAC-INTERFACE{
            description "Alias MAC address based CUS Transport ";
          }
        }
        description
          "transport session type used when an O-RU is configured with multiple processing elements of different transport session types,
           in which case it is used for referencing a processing element in 'transport-qualified-processing-element'";
      }

      leaf transport-qualified-processing-element {
        if-feature "feat:MULTIPLE-TRANSPORT-SESSION-TYPE";
        type leafref {
          path "/o-ran-pe:processing-elements/o-ran-pe:additional-transport-session-type-elements[o-ran-pe:transport-session-type = current()/../transport-session-type]/o-ran-pe:ru-elements/o-ran-pe:name";
        }
        description
           "Contains name of processing-element to be used as transport by low-level-tx-link.
           Used when the processing element is configured
           by the list 'additional-transport-session-type-elements'";
      }

      leaf tx-array-carrier {
        type leafref {
          path "/user-plane-configuration/tx-array-carriers/name";
        }
        mandatory true;
        description
          "Contains name of tx-array-carriers MO to be used as transport by low-level-tx-link";
      }

      leaf low-level-tx-endpoint {
        type leafref {
          path "/user-plane-configuration/low-level-tx-endpoints/name";
        }
        mandatory true;
        description
          "Contains name of low-level-tx-endpoints MO to be used as transport by low-level-tx-link";
      }
    }

    list low-level-rx-links {
      key name;
      description
        "Object model for low-level-rx-links configuration";

      leaf name {
        type string;

        description
          "Unique name of low-level-rx-links object.";
      }

      leaf sro-id {
        if-feature feat:SHARED-ORU-MULTI-OPERATOR;
        type leafref {
          path "/or-user:users/or-user:user/or-user:sro-id";
        }
        description
          "An optional shared resource operator associated with this list entry.
          When present, indicates that the list entry corresponds to a low-level-rx-link
          associated with a shared resource operator where the sro-id identifies
          a specific shared resource operator.
          This schema-node is used to refine NACM privileges for shared
          resource operators";
      }

      leaf processing-element {
        type leafref {
          path "/o-ran-pe:processing-elements/o-ran-pe:ru-elements/o-ran-pe:name";
        }
        mandatory true;
        description
          "Contains name of processing-element to be used as transport by low-level-rx-link,
           if 'transport-qualified-processing-element' is included in the configuration,
           the O-RU shall use 'transport-qualified-processing-element' instead of this schema node,
           an O-RU Controller shall still configure this schema node with a leafref to a valid ru-element,
           but this shall not be used by the O-RU.";
      }

      leaf transport-session-type {
        if-feature "feat:MULTIPLE-TRANSPORT-SESSION-TYPE";
        type enumeration {
          enum ETH-INTERFACE {
            description "VLAN based CUS Transport ";
          }
          enum UDPIP-INTERFACE {
            description "UDP/IP based CUS Transport ";
          }
          enum ALIASMAC-INTERFACE{
            description "Alias MAC address based CUS Transport ";
          }
        }
        description
          "transport session type used when an O-RU is configured with multiple processing elements of different transport session types,
           in which case it is used for referencing a processing element in 'transport-qualified-processing-element'";
      }

      leaf transport-qualified-processing-element {
        if-feature "feat:MULTIPLE-TRANSPORT-SESSION-TYPE";
        type leafref {
          path "/o-ran-pe:processing-elements/o-ran-pe:additional-transport-session-type-elements[o-ran-pe:transport-session-type = current()/../transport-session-type]/o-ran-pe:ru-elements/o-ran-pe:name";
        }
        description
           "Contains name of processing-element to be used as transport by low-level-rx-link.
           Used when the processing element is configured
           by the list 'additional-transport-session-type-elements'";
      }

      leaf rx-array-carrier {
        type leafref {
          path "/user-plane-configuration/rx-array-carriers/name";
        }
        mandatory true;

        description
          "Contains name of rx-array-carriers MO to be used as transport by low-level-rx-links";
      }

      leaf low-level-rx-endpoint {
        type leafref {
          path "/user-plane-configuration/low-level-rx-endpoints/name";
        }
        mandatory true;

        description
          "Contains name of low-level-rx-endpoints MO to be used as transport by low-level-rx-links";
      }

      leaf user-plane-uplink-marking {
        type leafref {
          path "/o-ran-pe:processing-elements/o-ran-pe:enhanced-uplane-mapping/o-ran-pe:uplane-mapping/o-ran-pe:up-marking-name";
        }
        description
          "Parameter to set the non-default marking for user-plane";
      }

      leaf enhanced-user-plane-uplink-marking {
        if-feature "feat:MULTIPLE-TRANSPORT-SESSION-TYPE";
        type leafref {
          path "/o-ran-pe:processing-elements/o-ran-pe:additional-transport-session-type-elements[o-ran-pe:transport-session-type = current()/../transport-session-type]/o-ran-pe:enhanced-uplane-mapping/o-ran-pe:uplane-mapping/o-ran-pe:up-marking-name";
        }
        description
           "Parameter to set the non-default marking for user-plane.
            Used when the enhanced-uplane-mapping is configured
            by the list 'additional-transport-session-type-elements'";
      }
    }

    grouping common-se24-dmrs-capabilities-grp {
      description
        "Grouping of common SE23 DMRS BF capabilities.
        Please refer to CUS specification clause 7.7.24 for more details.";

      leaf max-user-groups-per-slot {
        type uint32;
        description
          "Maximum number user groups per slot.";
      }

      leaf max-entries-per-slot {
        type uint32;
        description
          "Maximum number of entries in the table of DMRS configurations per slot.";
      }
    }

    list endpoint-types {
      key "id";
      config false;
      description
        "Properties of endpoint that are common to multiple endpoints if such are identified
         Note: For any endpoint supporting mixed numerology within slot/symbol (multiple-numerology-supported=TRUE)
              * Interval specific (per-slot and per-symbol) capacity constraints instantaneous capacity usage
                (i.e. capacity is shared/distributed between all numerologies used at an instant of time).
              * Instantaneous capacity usage is the sum of capacity usages of all intervals of a specific type (slot/symbol)
                that share the instant of time at which instantaneous capacity usage is evaluated regardless of numerology.
              * Capacity used in an interval is allocated at the start of the interval and is released at the end of the interval
                (e.g. capacity used for symbol #N of numerology #M is unavailable during symbol #N and available for reuse after symbol #N ends).";

      leaf id {
        type uint16;
        description
          "Identifies type of endpoints sharing same properties. Values shall start with 0 and shall be allocated without gaps.";
      }

      list supported-section-types {
        key "section-type";
        description
          "Indicates section types and extensions endpoints of this type support";

        leaf section-type {
          type uint8;

          description
            "This parameter determines the characteristics of U-plane data to be transferred or received from a beam with one pattern id.";
        }

        leaf-list supported-section-extensions {
          type uint8;

          description
            "This parameter provides the extension types supported by the O-RU
            which provides additional parameters specific to the subject data extension";
        }
      }

      uses supported-section-type4-config {
        if-feature feat:ST4-SLOT-CONFIG-MSG-SUPPORT;
      }

      leaf-list supported-frame-structures {
        type uint8;

        description
          "List of supported values of frame structure. For semantic and allowed values see CUS-Plane Specification, clause '7.5.2.13 frameStructure (frame structure)'";
      }

      leaf managed-delay-support {
        type enumeration {
          enum MANAGED {
            description
              "Time managed delays are supported";
          }

          enum NON_MANAGED {
            description
              "Non time managed delays are supported";
          }

          enum BOTH {
            description
              "Both time managed and non time managed delays are supported";
          }
        }

        description
          "Type of delay supported by the endpoint";
      }

      leaf multiple-numerology-supported {
        type boolean;
        default true;
        description
          "Indicates whether the endpoint type supports multiple numerologies";
      }

      leaf max-numerology-change-duration {
        type uint16 {
          range "0..10000";
        }

        units Ts;
        description
          "Maximum gap of endpoint operation that will be caused by changing of
          numerology.

          This time is required for reconfiguration and flushing of pipes.

          This leaf contains valid data only when multiple-numerology-supported
          is set to true.";
      }

      uses endpoint-section-capacity;
      uses endpoint-beam-capacity;
      uses endpoint-prb-capacity;
      uses endpoint-section-extension-limits;

      leaf-list prb-capacity-allocation-granularity {
        type uint16;

        description
          "List of capacity allocation steps. O-RU allocates PRB capacity rounding it up to nearest value N
          from prb-capacity-allocation-granularity such that M >= number-of-prb-per-scs.
          See also number-of-prb-per-scs/number-of-prb.";
      }

      uses endpoint-numerology-capacity;

      leaf static-transmission-window-control-supported {
        if-feature feat:STATIC-TRANSMISSION-WINDOW-CONTROL;
        type boolean;
        description
          "Endpoint supports transmission-window-control = STATIC";
      }

      leaf uniformly-distributed-transmission-supported {
        if-feature "feat:STATIC-TRANSMISSION-WINDOW-CONTROL and feat:UNIFORMLY-DISTRIBUTED-TRANSMISSION";
        type boolean;
        description
          "Endpoint supports transmission-type = UNIFORMLY-DISTRIBUTED";
      }

      leaf ordered-transmission-supported {
        if-feature feat:ORDERED-TRANSMISSION;
        type boolean;
        description
          "Endpoint supports ordered transmission of U-plane messages
           and can be configured with ordered-transmission = TRUE";
      }

      leaf dynamic-transmission-window-control-supported {
        if-feature feat:DYNAMIC-TRANSMISSION-WINDOW-CONTROL;
        type boolean;
        description
          "Endpoint supports U-plane transmission window control via C-plane
           (supports transmission-window-control = DYNAMIC) with independent window offset and size per symbol";
      }

      leaf dynamic-transmission-window-control-per-section-supported {
        when "../dynamic-transmission-window-control-supported = 'true'";
        if-feature feat:DYNAMIC-TRANSMISSION-WINDOW-CONTROL;
        type boolean;
        description
          "Endpoint supports U-plane transmission window control via C-plane
           (supports transmission-window-control = DYNAMIC) with independent window offset and size per section";
      }

      leaf dynamic-uniformly-distributed-transmission-supported {
        if-feature "feat:DYNAMIC-TRANSMISSION-WINDOW-CONTROL and feat:UNIFORMLY-DISTRIBUTED-TRANSMISSION";
        type boolean;
        description
          "Endpoint supports U-plane transmission window control via C-plane
           (supports transmission-window-control = DYNAMIC) with independent transmission type per symbol";
      }

      leaf dynamic-uniformly-distributed-transmission-per-section-supported {
        when "../dynamic-uniformly-distributed-transmission-supported = 'true'";
        type boolean;
        description
          "Endpoint supports U-plane transmission window control via C-plane
           (supports transmission-window-control = DYNAMIC) with independent transmission type per section";
      }

      uses transmission-buffering-capacity {
        when "static-transmission-window-control-supported = 'true' or dynamic-transmission-window-control-supported = 'true'";
        if-feature "feat:STATIC-TRANSMISSION-WINDOW-CONTROL or feat:DYNAMIC-TRANSMISSION-WINDOW-CONTROL";
      }

      leaf cplane-message-processing-limits-required {
         if-feature feat:CPLANE-MESSAGE-PROCESSING-LIMITS;
         type boolean;
         config false;
         description
           "Endpoint requires applying C-Plane message processing limits defined in 'per-cplane-message-limits'.
           and can be configured with cplane-message-processing-limits-enabled = TRUE";
       }

      uses per-cplane-message-limits {
        when "cplane-message-processing-limits-required = 'true'";
        if-feature feat:CPLANE-MESSAGE-PROCESSING-LIMITS;
      }

      leaf uplane-message-processing-limits-required {
         if-feature feat:UPLANE-MESSAGE-PROCESSING-LIMITS;
         type boolean;
         config false;
         description
           "Endpoint has processing limits regarding U-Plane message. Detailed types of limits are defined in 'per-uplane-message-limits'.";
       }

      uses per-uplane-message-limits {
        when "uplane-message-processing-limits-required = 'true'";
        if-feature feat:UPLANE-MESSAGE-PROCESSING-LIMITS;
      }

      leaf beam-update-contention-control-limits-required {
        if-feature feat:BEAM-UPDATE-CONTENTION-CONTROL;
        type boolean;
        config false;
        description
          "Endpoint requires applying beam update contention control limits defined in 'beam-update-contention-control-limits'.
          and can be configured with beam-update-contention-control-enabled = TRUE";
      }

      uses beam-update-contention-control-limits {
        when "beam-update-contention-control-limits-required = 'true'";
        if-feature feat:BEAM-UPDATE-CONTENTION-CONTROL;
      }

      leaf max-ack-nack-per-symbol {
        type uint16;
        description
          "This value indicates the max number of ACK/NACK feedbacks supported by the endpoint in a symbol when
          section extension 22 (ACK/NACK request) and section type 8 (ACK/NACK feedback) are supported by the endpoint.
          The number of ACK/NACK feedbacks in a symbol is defined as the sum of 'numberofACKs' + 'numberofNACKs' in all C-Plane
          messages sent by the endpoints in a symbol";
      }

      leaf non-scheduled-ueid-supported {
        if-feature feat:NON-SCHEDULED-UEID;
        type boolean;
        default false;
        description
          "The parameter informs that the endpoint supports the capability of interpreting that those PRBs in the specified port are not allocated.
          Please refer to CUS specification clause 7.9.13 for more details.";
      }

      leaf se-11-continuity-flag-supported {
        if-feature feat:SE11-WITH-CONTINUITY-BIT-SUPPORT;
        type boolean;
        config false;
        description
          "This flag is applicable for 'static-low-level-tx-endpoints' which support Section Extension 11 (SE 11). The
          O-RU may choose to indicate its support for handling continuity flag as defined in CUS-Plane Clause 7.7.11.9
          by advertising this flag to TRUE/FALSE.
          - Value of the flag advertised as 'TRUE' implies O-RU supports handling of 'continuity' flag in SE 11;
          - Value of the flag advertised to 'FALSE' implies the O-RU does not support handling  of 'continuity' flag in SE 11.";
      }

      leaf se-23-prb-block-mode-supported {
        if-feature feat:SE23-PRB-BLOCK-MODE-SUPPORT;
        type boolean;
        config false;
        description
          "This flag is applicable for 'static-low-level-tx-endpoints' which support Section Extension 23 (SE 23). The
          O-RU may choose to indicate its support for prbMode = PRB-BLOCK mode flag as defined in CUS-Plane Clause 7.7.23.1
          by advertising this flag as TRUE/FALSE.
          - Value of the flag advertised as 'TRUE' implies O-RU supports both prbMode = PRB-BLOCK mode of SE 23
            and prbMode = PRB-MASK which is the default mode when SE-23 is used.
          - Value of the flag advertised as 'FALSE' implies O-RU supports prbMode = PRB-MASK which is the
            default mode when SE-23 is used and the O-RU does not support prbMode = PRB-BLOCK mode.";
      }

      leaf  user-group-optimization-supported {
        if-feature feat:USER-GROUP-OPTIMIZATION;
        type boolean;
        default false;
        description
          "The parameter indicates that if O-RU sets this feature flag to 'TRUE' for a given endpoint, and the O-DU chooses to
          support this feature by setting 'user-group-optimization-enabled-tx' to 'TRUE' for static-low-level-tx-endpoints,
          'user-group-optimization-enabled-rx' to 'TRUE' for static-low-level-rx-endpoints,then the O-DU shall be required
          to send all layers for a given user group UEs i.e., UEs with same time-frequency allocation using single C-Plane
          section description. refer to CUS-Plane specification clause 7.9.14.";
      }

      leaf se-20-multi-sd-punc-pattern-suported  {
        if-feature feat:SE20-MULTI-SD-PUNC-PATTERN-SUPPORT;
        type boolean;
        config false;
        description
          "This flag is applicable for 'static-low-level-[tr]x-endpoints' which support Section Estension 20 (SE-20).
          The flag associated with each puncturing pattern in SE-20. The details of are defined  in CUS-Plane Clause
          7.7.20.1. The O-RU indicates support for this feature by advertising this flag as TRUE/FALSE.
          - Value of the flag advertised as 'TRUE' indicates O-RU supports handling of 'multiSDScope' field in SE-20.
          - Value of the flag advertised as 'FALSE' indicates O-RU does not supports handling of 'multiSDScope' field in SE-20.";
      }

      uses supported-configuration-combinations-grp;

      leaf-list supported-filter-indices {
        type uint32;
        description
          "The list of supported values of filterIndex.
          An empty list means that the set of supported values of filterIndex is not constrained.";
      }

      leaf-list bf-profile-group {
        if-feature feat:BF-DELAY-PROFILE;
        type leafref {
          path "/user-plane-configuration/endpoint-bf-profile-group/bf-profile-id";
          require-instance false;
        }
        description
          "List of beamforming method groups supported by the endpoint, and the related delay profile values.";
      }

      list supported-pass-band-for-filterindex09-per-scs {
        key "scs";
        config false;

        description
          "When filterIndex 0x9 is used, O-RU shall use minimum pass band filter among the reported passband filter sizes
          that can accommodate the numPrbc and startPrbc of all the section descriptions associated with same frameStructure.
          Please refer to CUS specification clause 7.5.2.3 for more details.";

        leaf scs {
          type mcap:scs-config-type;
          description
            "Value corresponds to SCS values defined for frameStructure in C-plane.";
        }

        leaf supported-max-num-msg-for-filterindex0x9-per-scs {
          type uint16;
          description
            "Max number of filters can be actived at a time,
            and this parameter limits the maximum number of ST3 mesaages with filterIndex set to 9 that O-DU can send so that the total number of filters active is below the maximum limit";
        }

        leaf-list filter-bandwidth {
          type uint64;
          units Hz;
          description
            "Bandwidth of a filter given in Hz.
             If the list for the given SCS indicated via frameStructure is not empty,
             O-DU should set filterIndex as 1001b for mixed numerology and other channels except PRACH and NB-IoT as specified in Table 7.5.2.3-1 when ST 3 C-plane message is used.";

        }
      }

      container se24-dmrs-capabilities {
        if-feature "feat:DMRS-BF-EQ or feat:DMRS-BF-NEQ";
        description
          "Container collecting SE24 DMRS BF capabilties.
          Please refer to CUS specification clause 7.7.24 for more details.";

        leaf-list supported-entry-types {
          type uint8;
          description
            "Supported values of entryType.";
        }
        leaf ue-time-partial-overlap-supported {
          type boolean;
          description
            "Indicates if UE time partial overlap is supported.
            See CUS-plane clause 12.6.1.2.1.";
        }
        leaf ue-freq-partial-overlap-supported {
          type boolean;
          description
            "Indicates if UE frequency partial overlap is supported.
            See CUS-plane clause 12.6.1.2.1.";
        }
        leaf max-user-groups-per-ue-in-time {
          type uint16;
          description
            "The maximum supported number of user groups in time-domain per UE.
            See CUS-plane clause 12.6.1.2.1";
        }
        leaf different-transform-precoding-in-user-group-supported {
          type boolean;
          description
            "Indicates if different transform precoding in user group is supported.";
        }
        leaf different-cdm-without-data-in-user-group-supported {
          type boolean;
          description
            "Indicates if different cdm without data in user group is supported.";
        }
        leaf max-dmrs-configs-per-user-group-incl-first-last-prb {
          type uint32;
          description
            "Maximum number of different DMRS configurations (excluding differences in dmrsPortNumber) per user group,
            including first and last PRB.";
        }

        leaf max-dmrs-configs-per-user-group-excl-first-last-prb {
          type uint32;
          description
            "Maximum number of different DMRS configurations (excluding differences in dmrsPortNumber) per user group,
            excluding first and last PRB.";
        }
        uses common-se24-dmrs-capabilities-grp;
        grouping dmr-mask-capability-grp {
          description
            "Grouping of transform-precoding capabilities";

          list dmrs-mask-capability {
            key id;
            description
              "Parameters for DMRS mask capabilities";
            leaf id {
              type uint16;
              description
                "An identifier of an entry in the list.";
            }
            leaf-list dmrs-symbol-mask {
              type uint16;
              description
                "Supported DMRS symbol mask.
                Empty list means all the possible symbol masks are supported.";
            }
            leaf max-dmrs-ant-port-number {
              type uint32;
              description
                "Maximum DMRS antenna port number.";
            }
            leaf max-user-data-layers {
              type uint32;
              description
                "Maximum number of user data layers";
            }
          }
        }
        container transform-precoding-enabled {
          description
            "Parameters for SE24 DMRS BF capabilities with transform precoding enabled";
          uses dmr-mask-capability-grp;
          list low-papr-config {
            key id;
            description
              "Supported Low-PAPR configs";
            leaf id {
              type uint16;
              description
                "An identifier of an entry in the list.";
            }
            leaf low-papr-type {
              type uint16 {
                range "0 .. 3";
              }
              description
                "Supported values of lowPaprType";
            }
            leaf hopping-mode {
              type uint16 {
                range "0 .. 3";
              }
              description
                "Supported values of hoppingMode";
            }
          }
        }
        container transform-precoding-disabled {
          description
            "Parameters for SE24 DMRS BF capabilities with transform precoding disabled";
          uses dmr-mask-capability-grp;
          list dmrs-config {
            key id;
            description
              "Supported DMRS configs";
            leaf id {
              type uint16;
              description
                "An identifier of an entry in the list.";
            }
            leaf d-type {
              type uint16 {
                range "0 .. 1";
              }
              description
                "Supported values of dType.";
            }
            leaf pusch-dmrs-muxing-supported {
              type boolean;
              description
                "Indicates if PUSCH DMRS muxing is supported.";
            }
          }
        }
      }

      leaf sinr-reporting-supported {
        if-feature feat:DMRS-BF-EQ;
        type boolean;
        default false;
        description
          "Indicates if SINR reporting is supported.";
      }
      container sinr-reporting-capabilities {
        when "../sinr-reporting-supported = 'true'";
        if-feature feat:DMRS-BF-EQ;
        description
          "Container collecting parameters related to capabilities of SINR reporting";
        leaf simultaneous-sinr-and-dmrs-sending-supported {
          type boolean;
          description
            "Indicates if simultaneous SINR and DMRS sending is supported.";
        }
        leaf oru-control-sinr-time-resolution-supported {
          if-feature feat:ORU-CONTROL-SINR-TIME-RESOLUTION;
          type boolean;
          description
            "Indicates if oru controlled sinr time reolution is supported.";
        }
        list supported-sinr-resolutions {
          key "id";
          description
            "The list of supported SINR reporting resolutions.
             This entry is applicable if maximum number of data layers in any user group in any slot does not exceed value of max-data-layers.

            Please refer to CUS specification clause 7.2.10 for more details.";
          leaf id {
            type uint16;
            description
            "Identifies a supported SINR reporting resolution.";
          }
          leaf sinr-max-data-layers {
            type uint8;
            description
              "The maximum number of data layers scheduled in any user group in a slot.";
          }
          leaf-list sinr-per-prb {
            type uint8;
            description
              "List of supported values. Indicates number of SINR values per PRB.";
          }
          leaf-list sinr-slot-mask {
            type uint16;
            description
              "List of bitmasks representing supported patterns of SINR reporting in time domain. An emplty list means that the set of supported SINR reporting is unrestricted.";
          }
        }
        container supported-sinr-reference-level {
          description
            "Supported range of SINR reference levels values.

             See CUS specification clause 7.2.10 for more details";
          leaf sinr-reference-level-min {
            type decimal64 {
              fraction-digits 4;
            }
            units dB;
            description
              "Minimum supported SINR reference level.";
          }
          leaf sinr-reference-level-max {
            type decimal64 {
              fraction-digits 4;
            }
            units dB;
            description
              "Maximum supported SINR reference level.";
          }
        }
        list supported-sinr-compression-methods {
          key "id";
          description
            "The list of supported SINR compression methods.";
          leaf id {
            type uint16;
            description
            "Identifies a supported SINR compression method.";
          }
          uses cf:sinr-compression-details;
        }

       leaf dynamic-sinr-per-prb-supported {
        if-feature feat:DYNAMIC-SINR-PER-PRB;
        type boolean;
        default false;
        description
          "Indicates whether O-DU controlled frequency resolution for SINR reporting is supported by the O-RU.
          Please refer to CUS specification clause 7.7.28 for more details.";
       }

       leaf diff-freq-resolutions-supported {
        when "../dynamic-sinr-per-prb-supported = 'true'";
        if-feature feat:DYNAMIC-SINR-PER-PRB;
        type boolean;
        default false;
        description
          "Indicates whether different frequency resolution values for SINR reporting are supported for different users in a user group.
          Please refer to CUS specification clause 7.7.28 for more details.";
        }
      }
      container supported-symb-reorder-capabilities {
        if-feature "feat:DMRS-BF-EQ or feat:DMRS-BF-NEQ";
        description
          "List of capabilities related to symbol reordering.";
        uses supported-symb-reorder-capability;
      }
      leaf-list supported-user-group-self-assembly-modes {
        if-feature feat:USER-GROUP-SELF-ASSEMBLY;
        type user-group-self-assembly-mode ;
        description
          "List of user group self assembly mode(s) supported by an endpoint. The O-RU may support SELF-ASSEMBLY-WITH-GROUP-ID and/or SELF-ASSEMBLY-WITHOUT-GROUP-ID.";
      }
      leaf-list continuity-block-sizes-supported {
        if-feature "(feat:DMRS-BF-EQ or feat:DMRS-BF-NEQ) and feat:CONTINUITY-BLOCK-SIZE";
        type uint16;
        description
          "List of continuity bock sizes supported by the O-RU.";
      }
      leaf eq-scale-offset-min {
        if-feature feat:DMRS-BF-EQ;
        type decimal64 {
          fraction-digits 4;
        }
        units dB;
        description
          "Refer to cus specification 8.3.1.4, max value 0 dB";
      }
      leaf eq-scale-offset-max {
        if-feature feat:DMRS-BF-EQ;
        type decimal64 {
          fraction-digits 4;
        }
        units dB;
        description
          "Refer to cus specification 8.3.1.4, max value 0 dB";
      }
      leaf-list rrm-meas-supported {
        if-feature feat:RRM-MEAS-REPORTING;
        type rrm-meas-types;
        description
          "List of rrm types supported by the endpoint type";
      }
      leaf max-ipn-unalloc-reports-supported {
        when "../rrm-meas-supported = 'MEAS-IPN-UNALLOC'";
        if-feature feat:RRM-MEAS-REPORTING;
        type uint16;
        description
          "This value indicates the maximum number of ipn unallocated measurement reports per PRB (PRB range) and slot";
      }
      leaf max-ipn-unalloc-symbols-supported {
        when "../rrm-meas-supported = 'MEAS-IPN-UNALLOC'";
        if-feature feat:RRM-MEAS-REPORTING;
        type uint16;
        description
          "This parameter indicates maximum number of measured symbols of all measurement reports for a PRB (PRB range) in the slot ";
      }
      leaf max-ipn-alloc-reports-supported {
        when "../rrm-meas-supported = 'MEAS-IPN-ALLOC'";
        if-feature feat:RRM-MEAS-REPORTING;
        type uint16;
        description
          "This value indicates the maximum number of ipn alloc measurement reports per PRB per slot. Relationship between this value and alloc-ipn-per-sym-supported can be found in CUS plan specification clause 9.2.2.4";
      }
      leaf-list alloc-ipn-per-dmrs-sym-grp-supported {
        when "../rrm-meas-supported = 'MEAS-IPN-ALLOC'";
        if-feature feat:RRM-MEAS-REPORTING;
        type uint8 {
          range "0 .. 1";
        }
        description
          "This parameter indicates alloc-ipn measurement type(s) supported by the O-RU.
          Refer to CUS specification clause 9.2.2.4 for details";
       }
       leaf se-10-bgt-11b-supported {
         type boolean;
         default false;
         description
           "The parameter is applicable for static-low-level-[tr]x-endpoints supporting Section Extension 10. This flag
           if set to TRUE indicates that the O-RU advertised endpoint, supporting Section Extension 10 supports beamGroupType = 11b.
           It is mandatory for endpoints supporting DMRS-BF-EQ/DMRS-BF-NEQ beamforming methods to support beamGroupType = 11b.
           refer to CUS-Plane specification clause 7.7.10.1";
        }

        leaf-list se-27-odu-controlled-dimensionality-reduction-supported {
          if-feature feat:SE27-ODU-CONTROLLED-DIMENSIONALITY-REDUCTION;
          type enumeration {
            enum STATIC {
              description
              "Static O-DU controlled dimnesionality reduction enabled.";
            }
            enum DYNAMIC {
              description
              "Dynamic O-DU controlled dimnesionality reduction enabled.";
            }
          }
          description
            "Supported type O-DU controlled dimensionality reduction using SE27.
            Please refer to CUS specification clause 7.7.27 for more details.";
        }
        leaf se-27-omission-when-enabled-supported {
          when "(../se-27-odu-controlled-dimensionality-reduction-supported = 'STATIC')
            or (../se-27-odu-controlled-dimensionality-reduction-supported = 'DYNAMIC')";
          if-feature feat:SE27-ODU-CONTROLLED-DIMENSIONALITY-REDUCTION;
          type boolean;
          description
            "Indicates if O-RU supports omission of SE27 when O-DU controlled dimensionality reduction using SE27 is enabled.
            Please refer to CUS specification clause 7.7.27 for more details.";
        }
        list supported-se-27-configurations {
          when "(../se-27-odu-controlled-dimensionality-reduction-supported = 'STATIC')
            or (../se-27-odu-controlled-dimensionality-reduction-supported = 'DYNAMIC')";
          if-feature feat:SE27-ODU-CONTROLLED-DIMENSIONALITY-REDUCTION;
          key number-of-ue-data-layers;
          description
            "List of supported values of numElements parameter per number of UE
            data layers scheduled in user group.
            Please refer to CUS specification clause 7.7.27 for more details.";
          leaf number-of-ue-data-layers {
            type uint16;
            description
              "Number of UE data layers scheduled in user group.";
          }
          leaf-list supported-se-27-num-elements {
            type uint16;
            description
              "Supported values of numElements in SE27 for the provided number of UE data layers.";
          }
        }
     }

     list transmission-window-schedules {
      if-feature feat:STATIC-TRANSMISSION-WINDOW-CONTROL;
      key id;
      description
        "Parameters for scheduled UL U-plane message transmission (static transmission window control)";
      leaf id {
        type uint16;
        description
          "Identifies a UL U-plane message transmission schedule";
      }
      list schedule {
        key symbol;
        description
          "Defines transmission window offset for given symbol.
           If no entry is present for a symbol then O-RU assumes offset=0 for that symbol.
           Entries with offset=0 shall be omitted.";
        leaf symbol {
          type uint16;
          description
            "Number of a symbol within a frame for which transmission offset is given.";
        }
        leaf offset {
          type uint16;
          description
            "Transmission window offset; expressed as number of symbols the transmission window start is delayed by.
             This value is added to u-plane-transmission-control/transmission-window-offset.
             For restrictions on value of offset see description of transmission-window-offset.";
        }
      }
    }

    list endpoint-capacity-sharing-groups {
      key "id";
      config false;
      description
        "Represents groups of endpoints that share capacity. Depending on O-RU implementation,
        processing resources that handle CU-plane (e.g. memory to keep sections and beams)
        could be allocated per endpoint or shared between several endpoints.
        To address this O-RU shall report own capability per endpoint (see endpoint-types)
        and per group of endpoints sharing capacity.
        If endpoint is in multiple groups then resulting constraint is minimum over all groups.
        Note: values of parameters representing capacity that is not shared between endpoints in a group
              shall be set to max value of specific parameter; this effectively removes related constraint.
        Note: For any endpoint supporting mixed numerology within slot/symbol (multiple-numerology-supported=TRUE)
              * Interval specific (per-slot and per-symbol) capacity constraints instantaneous capacity usage
                (i.e. capacity is shared/distributed between all numerologies used at an instant of time).
              * Instantaneous capacity usage is the sum of capacity usages of all intervals of a specific type (slot/symbol)
                that share the instant of time at which instantaneous capacity usage is evaluated regardless of numerology.
              * Capacity used in an interval is allocated at the start of the interval and is released at the end of the interval
                (e.g. capacity used for symbol #N of numerology #M is unavailable during symbol #N and available for reuse after symbol #N ends).";

      leaf id {
        type uint16;
        description
          "Identifies group of endpoints sharing resources.
          Values shall start with 0 and shall be allocated without gaps.";
      }
      uses endpoint-section-capacity;
      uses endpoint-beam-capacity;
      uses endpoint-prb-capacity;
      uses endpoint-numerology-capacity;
      uses endpoint-section-extension-limits;

      leaf max-endpoints {
        type uint16;
        description
          "Indicates how many endpoints in the group can be used4 simultaneously";
      }
      leaf max-managed-delay-endpoints {
        type uint16;
        description
          "Number of endpoints supporting managed delay that can be used (configured for use) at a time";
      }
      leaf max-non-managed-delay-endpoints {
        type uint16;
        description
          "Number of endpoints supporting non-managed delay that can be used (configured for use) at a time";
      }
      uses transmission-buffering-capacity {
        if-feature "feat:STATIC-TRANSMISSION-WINDOW-CONTROL or feat:DYNAMIC-TRANSMISSION-WINDOW-CONTROL";
      }

      uses per-cplane-message-limits {
        if-feature feat:CPLANE-MESSAGE-PROCESSING-LIMITS;
      }
      leaf max-ack-nack-per-symbol {
        type uint16;
        description
          "This value indicates the max number of ACK/NACK feedbacks supported by the endpoint sharing group in a symbol when
           section extension 22 (ACK/NACK request) and section type 8 (ACK/NACK feedback) are supported by the endpoint sharing group.
           The number of ACK/NACK feedbacks in a symbol is defined as the sum of 'numberofACKs' + 'numberofNACKs' in all C-Plane
           messages sent by the endpoints in group in a symbol";
      }
      uses supported-configuration-combinations-grp;

      container se24-dmrs-capabilities {
        if-feature "feat:DMRS-BF-EQ or feat:DMRS-BF-NEQ";
        description
          "Container collecting SE24 DMRS BF capabilties.
          Please refer to CUS specification clause 7.7.24 for more details.";

        uses common-se24-dmrs-capabilities-grp;
      }
    }

    list endpoint-prach-group  {
      key "id";
      config false;
      description
        "Represents group of a series of PRACH preamble formats";

      leaf id {
        type uint16;
        description
          "Identifies group of PRACH preamble formats.";
      }

      leaf-list supported-prach-preamble-formats {
        type prach-preamble-format;
        min-elements 1;
        description
          "the list of PRACH preamble formats supported by the endpoint-type that is
          applicable to static-low-level-rx-endpoints in the O-RU";
      }

    }

    list supported-compression-method-sets {
      key "id";
      config false;
      description
        "List of available compression methods supported by device";

      leaf id {
        type uint16;
        description
          "Identification number for compression method set";
      }

      list compression-method-supported {
        uses cf:compression-method-grouping;
        uses cf:compresion-format-grp {
          status deprecated;
        }

        leaf-list fs-offset {
          if-feature cf:CONFIGURABLE-FS-OFFSET;
          type uint8;
          default 0;
          description
            "Adjusts FS (full scale) value of IQ format relative to FS derived from unmodified IQ format.
             Please refer to CU-Plane specification for details";

        }
        description
          "List of supported compression methods by O-RU
           Note: if O-RU supports different compression methods per endpoint
                 then please refer to endpoints to have information what
                 exactly is supported on particular endpoint";
      }
    }

    grouping supported-configuration-combinations-grp {
      description
        "Grouping of supported freqOffset & PRB range combinations.";

      list supported-configuration-combinations {
        key "combination-id";
        config false;

        leaf combination-id {
          type uint32;
          description
            "Identification number for a combination.";
        }

        list set {
          key "set-id";

          leaf set-id {
            type uint32;
            description
              "Identification number for a set.";
          }

          leaf max-overlapping-instances {
            type uint32;
            description
            "Max number of configs of the set that can be used at the same time.";
          }

          list config {
            key "config-id";

            leaf config-id {
              type uint32;
              description
                "Identification number for a config.";
            }

            leaf-list scs {
              type mcap:scs-config-type;
              description
              "Value corresponds to SCS values defined for frameStructure in C-plane.";
            }

            leaf-list carrier-types {
                type enumeration {
                enum NR {
                description
                "5G technology";
                }
                enum LTE {
                description
                "LTE technology";
                }
                enum DSS_LTE_NR {
                if-feature mcap:DSS_LTE_NR;
                description
                "NR and LTE technologies in Dynamic Spectrum Sharing mode";
                }
              }
              description
              "Type of carrier. Indicates array-carrier technology.";
            }

            leaf filter-pass-bandwidth {
              type uint64;
              units Hz;

              description
                "Width of a filter given in Hz.
                The filter center frequency is given in center-of-channel-bandwidth of an array carrier.
                When filterIndex 0x9 is used, O-RU shall report all the passband filter bandwidth per scs using the list supported-pass-band-for-filterindex09-per-scs.";
            }

            leaf max-prb-range {
              type uint32;

              description
                "Maximum frequency range of PRBs that may be requested per frequency offset. Either contiguously or non-contiguously.
                Total number of PRBs requested per config shall not exceed this value.";
            }

            leaf center-from-freqoffset {
              type boolean;
              description
              "This node allows to distinguish between combinations valid when
              center-from-freqoffset-enabled is set to TRUE and combinations
              valid when center-from-freqoffset-enabled is set to FALSE";
            }

            leaf-list supported-filter-indices {
              type uint32;
              description
                "The list of supported values of filterIndex.
                An empty list means that the set of supported values of filterIndex is constrained by the supported-filter-indices
                provided in the endpoint type.";
            }

            description
             "Supported freqOffset & PRB range configuration.
             Configuration is an instance of processing output equivalent to single FFT operation.";
          }
          description
            "Set of freqOffset & PRB range configurations that require same resource allocation.";
        }
        description
          "List of supported combinations of freqOffset & PRB range configurations.
           If a leaf is not present in a list element it implies there is no constraint on that particular
           parameter for the configuration in question.";
      }
      leaf center-from-freqoffset-supported {
        type boolean;
        description
          "Endpoint's support for autonomous center frequency (k0) calculation based on frequency offset.
          This capability applies only to RX endpoints.";
      }
    }

    grouping supported-symb-reorder-capability {
      description
        "List of capabilities related to symbol reordering.";
      leaf-list supported-symb-reorder-capability {
        type symb-reorder-capability;
        description
          "List of supported symbol reordering methods.";
      }
      leaf max-num-symbol-reordering-pattern-per-slot {
        when "../supported-symb-reorder-capability = 'PER-SECTION-TX-WINDOW-REASSIGNMENT'";
        type uint16;
        description
          "This parameter defines the maximum number of unique symbol reassignment patterns supported
           per slot per rx-array-carrier, where a 'symbol reassignment pattern' comprises 14 symbol
           numbers specifying an altered symbol order (using txWinForOnAirSymbol0~13). The maximum
           value applies over all SE25 invocations, including when an SE25 invocation includes
           multiple symbol reassignment patterns. Repeated invocations of a single symbol reassignment
           pattern shall count as a single unique instance. When endpoints of different endpoint-types
           with different values of this parameter are associated with an rx-array-carrier, then the
           smallest of the values shall apply.";
      }
      leaf-list up-symbolId-type-supported {
        type up-SymbolId-type;
        description
          "List of supported symbol reordering symbolId interpretation capability.";
      }
    }

    list static-low-level-tx-endpoints {
      key name;
      config false;
      description
        "Object model for static-low-level-tx-endpoints configuration";

      leaf name {
        type string;

        description
          "Unique name of static-low-level-tx-endpoints object.";
      }

      leaf-list restricted-interfaces {
        type leafref {
          path "/if:interfaces/if:interface/if:name";
        }
        description
          "Optionally used to indicate that a low-level link is constrained to operate only via a subset of the available interfaces.";
      }

      leaf array {
        type leafref {
          path "/user-plane-configuration/tx-arrays/name";
        }
        mandatory true;
        description
          "Contains distname of tx-arrays, particular low-level-tx-endpoints is in hardware dependency with.
          Note: single instance of tx-arrays can be referenced by many instances of low-level-tx-endpoints
          (e.g. to allow DU to handle multiple fronthauls and multiple component carriers).";
      }

      leaf endpoint-type {
        type leafref {
          path "../../endpoint-types/id";
        }

        description
          "Reference to endpoint type capabilities list element supported by this endpoint";
      }

      leaf-list capacity-sharing-groups {
        type leafref {
          path "../../endpoint-capacity-sharing-groups/id";
        }

        description
          "Reference to capacities of sharing-groups supported by this endpoint";
      }

      list supported-reference-level {
        if-feature TX-REFERENCE-LEVEL;
        key "id";
        description
          "Informs about supported ranges for gain reference level.";

        leaf id {
          type uint16;
          description
            "Identification number for particular range";
        }

        leaf min {
          type decimal64 {
            fraction-digits 4;
          }
          units dB;
          mandatory true;
          description
            "Minimum of supported gain reference level";
        }

        leaf max {
          type decimal64 {
            fraction-digits 4;
          }
          units dB;
          mandatory true;
          description
            "Maximum of supported gain reference level";
        }
      }

      container compression {
        description
          "Container collecting compression related parameters.";

        leaf dynamic-compression-supported {
          type boolean;

          description
            "Informs if endpoint supports dynamic compression method";
        }

        leaf realtime-variable-bit-width-supported {
          type boolean;

          description
            "Informs if endpoint supports real-time variable bit with";
        }

        leaf supported-compression-set-id {
          type leafref {
            path "../../../supported-compression-method-sets/id";
          }

          description
            "Id of supported compression set for this endpoint";
        }
      }

      uses endpoint-tdd-pattern-support;

      leaf-list energy-sharing-group-id {
        if-feature feat:MPLANE-DATA-LAYER-CONTROL;
        type uint8;
        description
          "This value indicates a group of common underlying HW that can be used for energy savings.";
      }
      leaf se10-member-candidate-list {
        if-feature feat:SE10-MEMBER-CANDIDATE-LIST;
        type leafref {
          path "/user-plane-configuration/se10-member-candidate-tx-lists/id";
          require-instance false;
        }
        description
          "This parameter is a pointer to a given member-candidate list entry in 'se10-member-candidate-tx-lists'.
          This parameter shall be applicable for endpoints supporting Section Extension 10";
      }
    }

    list static-low-level-rx-endpoints {
      key name;
      config false;
      description
        "Object model for static-low-level-rx-endpoints configuration";

      leaf name {
        type string;

        description
          "Unique name of static-low-level-rx-endpoints object.";
      }

      leaf-list restricted-interfaces {
        type leafref {
          path "/if:interfaces/if:interface/if:name";
        }
        description
          "Optionally used to indicate that a low-level link is constrained to operate only via a subset of the available interfaces.";
      }

      leaf array {
        type leafref {
          path "/user-plane-configuration/rx-arrays/name";
        }
        mandatory true;
        description
          "Contains distname of rx-arrays, particular low-level-rx-endpoints is in hardware dependency with.
          Note: single instance of rx-arrays can be referenced by many instances of low-level-rx-endpoints
          (e.g. to allow DU to handle multiple fronthauls and multiple component carriers).";
      }

      leaf endpoint-type {
        type leafref {
          path "../../endpoint-types/id";
        }

        description
          "Reference to endpoint type capabilities list element supported by this endpoint";
      }

      leaf-list capacity-sharing-groups {
        type leafref {
          path "../../endpoint-capacity-sharing-groups/id";
        }

        description
          "Reference to capacities of sharing-groups supported by this endpoint";
      }

      leaf prach-group {
        type leafref {
          path "../../endpoint-prach-group/id";
          require-instance false;
        }
        description
          "An optional leaf used for those rx endpoints that support PRACH, indicating
          the group id describing the set of of PRACH preambles supported";
      }

      container compression {
        description
          "Container collecting compression related parameters.";

        leaf dynamic-compression-supported {
          type boolean;

          description
            "Informs if endpoint supports dynamic compression method";
        }

        leaf realtime-variable-bit-width-supported {
          type boolean;

          description
            "Informs if endpoint supports real-time variable bit with";
        }

        leaf supported-compression-set-id {
          type leafref {
            path "../../../supported-compression-method-sets/id";
          }

          description
            "Id of supported compression set for this endpoint";
        }
      }

      uses endpoint-static-config-support;

      uses endpoint-tdd-pattern-support;

      leaf transmission-order {
        when "(/user-plane-configuration/endpoint-types[id=current()/../endpoint-type]/ordered-transmission-supported = 'true')";
        if-feature feat:ORDERED-TRANSMISSION;
        type uint32;
        description
          "The value indicates relative order of sending U-plane messages specific to same symbol
           and transmission window by two endpoints with ordered-transmission = TRUE
           belonging to the same transmission-order-group;
           multiple endpoints may report the same value if their relative sending order is not guaranteed";
      }

      leaf transmission-order-group {
        when "(/user-plane-configuration/endpoint-types[id=current()/../endpoint-type]/ordered-transmission-supported = 'true')";
        if-feature feat:ORDERED-TRANSMISSION;
        type uint32;
        description
          "The value indicates a group of endpoints that preserve relative ordering of message sending;
           message sending between endpoints in different groups is not guaranteed";
      }

      leaf-list energy-sharing-group-id {
        if-feature feat:MPLANE-DATA-LAYER-CONTROL;
        type uint8;
        description
          "This value indicates a group of common underlying HW that can be used for energy savings.";
      }
      leaf se10-member-candidate-list {
        if-feature feat:SE10-MEMBER-CANDIDATE-LIST;
        type leafref {
          path "/user-plane-configuration/se10-member-candidate-rx-lists/id";
          require-instance false;
        }
        description
          "This parameter is a pointer to a given member-candidate list entry in 'se10-member-candidate-rx-lists'.
          This parameter shall be applicable for endpoints supporting Section Extension 10";
      }
    }

    list low-level-tx-endpoints {
      key "name";

      description
        "Object model for low-level-tx-endpoints configuration - augmented static-low-level-tx-endpoints by local-address
        which cannot be added to static low-level-tx-endpoints as we cannot have modifiable element in static object";

      leaf name {
        type leafref {
          path "/user-plane-configuration/static-low-level-tx-endpoints/name";
          require-instance false;
        }
        mandatory true;

        description
          "Unique name of low-level-tx-endpoint object. Reference to static object";
      }

      leaf sro-id {
        if-feature feat:SHARED-ORU-MULTI-OPERATOR;
        type leafref {
          path "/or-user:users/or-user:user/or-user:sro-id";
        }
        description
          "An optional shared resource operator associated with this list entry.
          When present, indicates that the list entry corresponds to a low-level-tx-endpoint
          associated with a shared resource operator where the sro-id identifies
          a specific shared resource operator.
          This schema-node is used to refine NACM privileges for shared
          resource operators";
      }

      uses tx-endpoint-compression-grouping;
      uses scs-config;

      container e-axcid {
        uses eaxc;

        description
          "Contains local address of low level TX endpoint offered by NETCONF server.";
      }

      uses coupling-methods;

      leaf configurable-tdd-pattern-supported {
        if-feature mcap:CONFIGURABLE-TDD-PATTERN-SUPPORTED;
        type leafref {
          path "/user-plane-configuration/static-low-level-tx-endpoints[name=current()/../name]/configurable-tdd-pattern-supported";
          require-instance false;
        }
        description "RO to RW parameter mapping - needed for conditional under tx-array-carrier";
      }

      leaf cplane-message-processing-limits-enabled {
        if-feature feat:CPLANE-MESSAGE-PROCESSING-LIMITS;
        type boolean;
        default false;
        description
          "TRUE: O-DU shall support the C-Plane message processing limits and has selected to adhere to the C-Plane limits defined in 'per-cplane-message-limits'.
          FALSE: O-DU shall not support C-Plane message processing limits and endpoint limits defined in 'per-cplane-message-limits' shall not apply";
      }

      leaf uplane-message-section-header-limit-enabled {
        if-feature feat:UPLANE-MESSAGE-PROCESSING-LIMITS;
        type boolean;
        default false;
        description
          "O-DU declares to obey the limit exposed via the leaf max-section-headers-per-uplane-message by setting this parameter to 'true'.
          For details of this parameter's usage, please refer to M-plane spec clause 15.10";
      }

      leaf beam-update-contention-control-enabled {
        if-feature feat:BEAM-UPDATE-CONTENTION-CONTROL;
        type boolean;
        default false;
        description
          "TRUE: O-DU shall support beam update contention control feature of O-RU.Thus requiring O-DU to comply with beam
          updates restrictions defined in CUS-Plane Spec Section 'Weight-based dynamic beamforming'. In this case applicable
          beam limits defined in 'beam-update-contention-control-limits' shall apply.
          FALSE: O-DU shall not support beam update contention control feature of O-RU. Applicable beam limits defined in
          'endpoint-beam-capacity' shall apply";
      }

      container channel-information-prb-group-configuration {
        if-feature feat:CHANNEL-INFORMATION-PRB-GROUP;
        description
          "Container for configurable parameters for channel information prb group";

        leaf enable-ci-prb-group {
          type boolean;
          description
            "Informs whether or not to enable channel information PRB group in the O-RU,
            if its value is set to true, the O-RU shall receive and process channel
            information (e.g., ST6) with PRB group size of configured ci-prb-group-size.";
        }

        leaf ci-prb-group-size {
          type uint8 {
            range "2..254";
          }
          description
            "The configured channel information PRB group size.
            If enable-ci-prb-group is configured as TRUE, and the IE ciPrbGroupSize doesn't exist in a section description for channel information,
            the parameter ci-prb-group-size shall be used for this section description.
            If the IE ciPrbGroupSize exists in a section description for channel information,
            no matter whether enable-ci-prb-group is configured as TRUE, the IE ciPrbGroupSize shall be used for this section description.";
        }
      }

      leaf non-scheduled-ueid-enabled{
        if-feature feat:NON-SCHEDULED-UEID;
        type boolean;
        default false;
        description
          "If O-DU configures 'non-scheduled-ueid-enabled' = TRUE,
          and Section Extension 10 is applied to Section Types 5 and beamGroupType = 10b,
          and the O-DU set ueId of a port in Section Extension 10 to 0x7FFF,
          the endpoint shall interpret that the PRBs in the section description are not scheduled for this port.
          The endpoint only interprets this leaf if non-scheduled-ueid-supported = true is reported in the related static endpoint, in other cases this leaf is ignored.
          Please refer to CUS specification clause 7.9.13 for more details.";
      }

      leaf se-11-continuity-flag-enabled {
        if-feature feat:SE11-WITH-CONTINUITY-BIT-SUPPORT;
        type boolean;
        default false;
        description
          "By setting the value of this leaf node to TRUE, the O-DU declares it will provide 'continuity' flag information in SE 11.
          In this case the O-DU shall provide PRB region 'continuity' information in every SE 11 sent to the applicable low-level-tx-endpoint(s)
          (static-low-level-tx-endpoit(s) which indicated support of this feature by setting 'se-11-continuity-flag-supported' flag to TRUE).
          In case
          - O-DU is running SW conformant to older O_RAN release and does not interpret the flag 'se11-continuity-bit-enabled' or
          - the O-DU sets 'se11-continuity-flag-enabled' =  FALSE,
          no information regarding PRB region continuity is sent to the O-RU. In such case the O-RU shall process the PRB bundles as
          it would have in the absence of the 'continuity' flag in SE11.
          This behavior shall be same as when O-RU receives message with 'reserved' field value set to '0b'.";
      }

      leaf prg-size-supp-se-21-with-st6-enabled {
        if-feature feat:PRG-SIZE-SUPP-SE-21-WITH-ST6;
        type boolean;
        default false;
        description
          "TRUE: O-DU shall send prgSize information from the O-DU to the O-RU as described in Clause 7.7.2.3.1 of the CUS-Plane spec.
          FALSE:prgSize information cannot be sent from the O-DU to the O-RU using Section Type 6.";
      }

      leaf prg-size-supp-se-21-with-st5-enabled {
        if-feature feat:PRG-SIZE-SUPP-SE-21-WITH-ST5;
        type boolean;
        default false;
        description
          "TRUE: O-DU shall send prgSize information from the O-DU to the O-RU as described in Clause 7.7.2.3.2 of the CUS-Plane spec.
          FALSE:prgSize information cannot be sent from the O-DU to the O-RU using Section Type 5.";
      }

      leaf user-group-optimization-enabled-tx {
        if-feature feat:USER-GROUP-OPTIMIZATION;
        type boolean;
        default false;
        description
          "The parameter indicates that if the O-RU advertises the feature flag to 'user-group-optimization-supported' set to
          TRUE for associated static-level-tx-endpoint, the O-DU may choose to set this flag to 'TRUE' or 'FALSE'.
          - If set to 'TRUE', the O-DU shall be required to send all layers for a given user group UEs i.e., UEs with same
          time-frequency allocation using single C-Plane section description.
          - If set to 'FALSE', the O-DU restriction to send all layers for a given user group UEs shall not apply.";
      }

      leaf se-20-multi-sd-punc-pattern-enabled-tx {
        if-feature feat:SE20-MULTI-SD-PUNC-PATTERN-SUPPORT;
        if-feature feat:USER-GROUP-OPTIMIZATION;
        type boolean;
        default false;
        description
          "This flag is applicable for O-RU adevertised static-level-tx-endpoint advertises for which
          'se-20-multi-sd-punc-pattern-suported' = TRUE. The flag is configured by the O-DU to TRUE/FALSE.
          - Value of the flag set to 'TRUE' indicates O-DU shall set the value 'multiSDScope' in SE-20 to TRUE/FALSE.
          - Value of the flag set to 'FALSE' indicates O-DU shall not set the value 'multiSDScope' in SE-20. The corresponding
          fields shall be interpretted as reserved field by the O-RU.";
      }

      container combination-configuration {
        leaf endpoint-type {
          type leafref {
            path "/user-plane-configuration/static-low-level-tx-endpoints[name=current()/../../name]/endpoint-type";
            require-instance false;
          }
          description
            "Leafref to the endpoint-type of the endpoint.";
        }

        leaf combination-id {
          type leafref {
            path "/user-plane-configuration/endpoint-types[id = current()/../endpoint-type]/supported-configuration-combinations/combination-id";
            require-instance false;
          }
          description
            "A parameter describing which configuration combination will be used by the endpoint.";
        }

        list configurations {
          key id;

          leaf id {
            type uint32;
            description
              "Identifier of an entry in the list";
          }

          leaf set-id {
            type leafref {
              path "/user-plane-configuration/endpoint-types[id = current()/../../endpoint-type]/supported-configuration-combinations[combination-id = current()/../../combination-id]/set/set-id";
              require-instance false;
            }
            description
              "A parameter describing which set will be used by the endpoint.";
          }

          leaf config-id {
            type leafref {
              path "/user-plane-configuration/endpoint-types[id = current()/../../endpoint-type]/supported-configuration-combinations[combination-id = current()/../../combination-id]/set[set-id = current()/../set-id]/config/config-id";
              require-instance false;
            }
            description
              "A parameter describing which config will be used by the endpoint.";
          }

          description
            "An optional list describing which configurations will be used by the endpoint.
            The list can be provided by an O-DU, so that an O-RU can optimize the processing in the endpoint.
            If the list is empty, then O-DU intends to use every capability within combination identified by combination-id.";
        }

        description
          "An optional container describing which configuration combination will be used by the endpoint.
          The container can be provided by an O-DU, so that an O-RU can optimize the processing in the endpoint.";
      }

      leaf configured-bf-profile-id {
        if-feature feat:BF-DELAY-PROFILE;
        type leafref {
          path "/user-plane-configuration/endpoint-types/bf-profile-group";
          require-instance false;
          }
        description
          "Configure the beamforming method list and related delay profiles will be used by the endpoint.
          The configured-bf-profile-id must be one of the supported bf-profile-id(s) reported by the endpiont-type related to the endpoint.
          If O-DU does not set configured-bf-profile-id, the O-RU shall not support the feature.";
      }

      leaf-list bf-methods {
        if-feature "feat:SELECTED-BF-METHOD-CONFIGURATION and feat:BF-DELAY-PROFILE";
        type beamforming-method-type;
        description
          "Beamforming method(s) configured on the endpoint.

          If the value of configured-bf-profile-id is set, then beamforming method(s) configured on the endpoint shall
          be selected from the set of supported beamforming methods of the selected endpoint-bf-profile-group
          Otherwise, the beamforming method(s) configured on the endpoint shall be selected from the set of supported
          beamforming methods reported in the related endpoint-bf-profile-group(s).";
      }
    }

    list low-level-rx-endpoints {
      key name;

      description
        "Object model for low-level-rx-endpoint configuration - augmented static-low-level-rx-endpoints by local-address
        which cannot be added to static low-level-rx-endpoints as we cannot have modifiable element in static object";

      leaf name {
        type leafref {
          path "/user-plane-configuration/static-low-level-rx-endpoints/name";
          require-instance false;
        }
        mandatory true;

        description
          "Unique name of low-level-rx-endpoint object. Reference to static object";
      }

      leaf sro-id {
        if-feature feat:SHARED-ORU-MULTI-OPERATOR;
        type leafref {
          path "/or-user:users/or-user:user/or-user:sro-id";
        }
        description
          "An optional shared resource operator associated with this list entry.
          When present, indicates that the list entry corresponds to a low-level-rx-endpoint
          associated with a shared resource operator where the sro-id identifies
          a specific shared resource operator.
          This schema-node is used to refine NACM privileges for shared
          resource operators";
      }

      uses rx-endpoint-compression-grouping;
      uses scs-config;

      list ul-fft-sampling-offsets {
        key scs;
        description
          "List of FFT sampling offsets configured for each SCS that will be used.
          Client shall configure one element for each SCS that will be used.";

        leaf scs {
          type mcap:scs-config-type;
          description
            "Value corresponds to SCS values defined for frameStructure in C-plane
            Note: set of allowed values is restricted by SCS derived from values in supported-frame-structures.";
        }

        leaf ul-fft-sampling-offset {
          type uint16;

          units Ts;
          description
            "Determines time advance of capture window for FFT.
            Value represents time advance of capture window start in relation to the end of CP. Unit is Ts.
            The value of this parameter shall not be larger than the duration of the cyclic prefix; in case of
            variability of the cyclic prefix duration, the limit is the shortest duration of the cyclic prefix in use.
            Note: value of this parameter is usually set to '0' (zero) for PRACH channels.
            Any phase offset resulting from the non-zero value of this parameter is handled in O-DU.
            Please refer to the O-RAN CUS-Plane, clause 4.4.3 for more details on the intended usage and value restrictions.";
        }
      }

      container e-axcid {
        uses eaxc;

        description
          "Contains local address of low level RX endpoint offered by NETCONF server.";
      }

      leaf eaxc-gain-correction {
        if-feature EAXC-GAIN-CORRECTION;
        type decimal64 {
          fraction-digits 4;
        }
        units dB;
        default 0;
        description
          "eAxC specific part of overall gain_correction.
           gain_correction = common array-carrier gain-correction + eAxC-gain-correction.";
      }

      leaf non-time-managed-delay-enabled {
        type boolean;
        default false;
        description
          "Tells if non time managed delay shall be enabled";
      }

      uses coupling-methods;

      leaf static-config-supported {
        type leafref {
          path "/user-plane-configuration/static-low-level-rx-endpoints[name=current()/../name]/static-config-supported";
          require-instance false;
        }
        description "RO to RW parameter mapping - for further conditionals";
      }

      leaf static-prach-configuration {
        when "(/user-plane-configuration/low-level-rx-endpoints[name=current()/../name]/static-config-supported = 'PRACH')";
        if-feature mcap:PRACH-STATIC-CONFIGURATION-SUPPORTED;
        type leafref {
          path "/user-plane-configuration/static-prach-configurations/static-prach-config-id";
        }
        description
          "This parameter creates reference to static PRACH configuration applicable for particular endpoint";
      }

      leaf static-srs-configuration {
        when "(/user-plane-configuration/low-level-rx-endpoints[name=current()/../name]/static-config-supported = 'SRS')";
        if-feature mcap:SRS-STATIC-CONFIGURATION-SUPPORTED;
        type leafref {
          path "/user-plane-configuration/static-srs-configurations/static-srs-config-id";
        }
        description
          "This parameter creates reference to static SRS configuration applicable for particular endpoint";
      }

      leaf configurable-tdd-pattern-supported {
        if-feature mcap:CONFIGURABLE-TDD-PATTERN-SUPPORTED;
        type leafref {
          path "/user-plane-configuration/static-low-level-rx-endpoints[name=current()/../name]/configurable-tdd-pattern-supported";
          require-instance false;
        }
        description "RO to RW parameter mapping - needed for conditional under rx-array-carrier";
      }

      uses u-plane-transmission-control;

      leaf ordered-transmission {
        if-feature feat:ORDERED-TRANSMISSION;
        type boolean;
        default false;
        description
          "Commands O-RU to order UL U-plane message transmission between endpoints
           Meaningless when ordered transmission is not supported for particular endpoint.";
      }

      leaf cplane-message-processing-limits-enabled {
        if-feature feat:CPLANE-MESSAGE-PROCESSING-LIMITS;
        type boolean;
        default false;
        description
          "TRUE: O-DU shall support C-Plane message processing limits and has selected to adhere
          to the C-Plane limits defined in 'per-cplane-message-limits'.
          FALSE: O-DU shall not support C-Plane message processing limits and hence C-Plane and
          endpoint limits defined in 'per-cplane-message-limits' shall not apply";
      }

      leaf beam-update-contention-control-enabled {
        if-feature feat:BEAM-UPDATE-CONTENTION-CONTROL;
        type boolean;
        default false;
        description
          "TRUE: O-DU shall support beam update contention control feature of O-RU.Thus requiring O-DU to comply with beam
          updates restrictions defined in CUS-Plane Spec Section 'Weight-based dynamic beamforming'. In this case applicable
          beam limits defined in 'beam-update-contention-control-limits' shall apply.
          FALSE: O-DU shall not support beam update contention control feature of O-RU. Applicable beam limits defined in
          'endpoint-beam-capacity' shall apply";
      }

      leaf non-scheduled-ueid-enabled{
        if-feature feat:NON-SCHEDULED-UEID;
        type boolean;
        default false;
        description
          "If O-DU configures 'non-scheduled-ueid-enabled' = TRUE,
          and Section Extension 10 is applied to Section Types 5 and beamGroupType = 10b,
          and the O-DU set ueId of a port in Section Extension 10 to 0x7FFF,
          the endpoint shall interpret that the PRBs in the section description are not scheduled for this port.
          The endpoint only interprets this leaf if non-scheduled-ueid-supported = true is reported in the related static endpoint, in other cases this leaf is ignored.
          Please refer to CUS specification clause 7.9.13 for more details.";
      }

      leaf center-from-freqoffset-enabled {
        type boolean;
        default false;
        description
          "Endpoint is enabled / prohibited to autonomously calculate center frequency based on frequency offset.";
      }

      leaf user-group-optimization-enabled-rx{
        if-feature feat:USER-GROUP-OPTIMIZATION;
        type boolean;
        default false;
        description
          "The parameter indicates that if the O-RU advertises the feature flag to 'user-group-optimization-supported' set to
          TRUE for associated static-level-rx-endpoint, the O-DU may choose to set this flag to 'TRUE' or 'FALSE'.
          - If set to 'TRUE', the O-DU shall be required to send all layers for a given user group UEs i.e.,
          UEs with same time-frequency allocation using single C-Plane section description.
          - If set to 'FALSE', the O-DU restriction to send all layers for a given user group UEs shall not apply.";
      }

      leaf se-20-multi-sd-punc-pattern-enabled-rx {
        if-feature feat:SE20-MULTI-SD-PUNC-PATTERN-SUPPORT;
        if-feature feat:USER-GROUP-OPTIMIZATION;
        type boolean;
        default false;
        description
          "This flag is applicable for O-RU adevertised static-level-rx-endpoint advertises for which
          'se-20-multi-sd-punc-pattern-suported' = TRUE. The flag is configured by the O-DU to TRUE/FALSE.
          - Value of the flag set to 'TRUE' indicates O-DU shall set the value 'multiSDScope' in SE-20 to TRUE/FALSE.
          - Value of the flag set to 'FALSE' indicates O-DU shall not set the value 'multiSDScope' in SE-20. The corresponding
          fields shall be interpretted as reserved field by the O-RU.";
      }

      container combination-configuration {
        leaf endpoint-type {
          type leafref {
            path "/user-plane-configuration/static-low-level-rx-endpoints[name=current()/../../name]/endpoint-type";
            require-instance false;
          }
          description
            "Leafref to the endpoint-type of the endpoint.";
        }

        leaf combination-id {
          type leafref {
            path "/user-plane-configuration/endpoint-types[id = current()/../endpoint-type]/supported-configuration-combinations/combination-id";
            require-instance false;
          }
          description
            "A parameter describing which configuration combination will be used by the endpoint.";
        }

        list configurations {
          key id;

          leaf id {
            type uint32;
            description
              "Identifier of an entry in the list";
          }

          leaf set-id {
            type leafref {
              path "/user-plane-configuration/endpoint-types[id = current()/../../endpoint-type]/supported-configuration-combinations[combination-id = current()/../../combination-id]/set/set-id";
              require-instance false;
            }
            description
              "A parameter describing which set will be used by the endpoint.";
          }

          leaf config-id {
            type leafref {
              path "/user-plane-configuration/endpoint-types[id = current()/../../endpoint-type]/supported-configuration-combinations[combination-id = current()/../../combination-id]/set[set-id = current()/../set-id]/config/config-id";
              require-instance false;
            }
            description
              "A parameter describing which config will be used by the endpoint.";
          }

          description
            "An optional list describing which configurations will be used by the endpoint.
            The list can be provided by an O-DU, so that an O-RU can optimize the processing in the endpoint.";

        }

        description
          "An optional container describing which configuration combination will be used by the endpoint.
          The container can be provided by an O-DU, so that an O-RU can optimize the processing in the endpoint.";
      }

      leaf configured-bf-profile-id {
        if-feature feat:BF-DELAY-PROFILE;
        type leafref {
          path "/user-plane-configuration/endpoint-types/bf-profile-group";
          require-instance false;
          }
        description
          "Configure which beamforming method list and related delay profile will be used by the endpoint.
          The configured-bf-profile-id must be one of the supported bf-profile-id(s) reported by the endpiont-type related to the endpoint.
           If O-DU does not set configured-bf-profile-id, the O-RU shall not support the feature.";
      }

      leaf sinr-reporting-enabled {
        if-feature feat:DMRS-BF-EQ;
        type boolean;
        default false;
        description
          "Enables SINR reporting for the endpoint.";
      }

      leaf oru-control-sinr-time-resolution-enabled {
        when "../sinr-reporting-enabled = 'true'";
        if-feature feat:ORU-CONTROL-SINR-TIME-RESOLUTION;
        type boolean;
        default false;
        description
          "Enables O-RU controlled SINR time resolution for the endpoint.";
      }

      container sinr-reporting-configuration {
        when "../sinr-reporting-enabled = 'true'";
        if-feature feat:DMRS-BF-EQ;
        description
          "Container collecting parameters related to configuration of SINR reporting";

        container sinr-resolution {
          description
            "Container collecting parameters related to configuration of SINR reporting
            resolution.
            Supported values are constrained by the values reported in endpoint-types/supported-sinr-resolutions.

            Please refer to CUS specification clause 7.2.10 for more details.";
          leaf sinr-per-prb {
            type uint8;
            description
              "Number of SINR values per PRB.";
          }
          leaf sinr-slot-mask {
            type uint16;
            description
              "Pattern of SINR reports represented as a bitmask.
               When oru-control-sinr-time-resolution-enabled is true, list sinr-slot-masks will be used instead this leaf";
          }
          list sinr-slot-masks{
            when "../../../oru-control-sinr-time-resolution-enabled = 'true'";
            if-feature feat:ORU-CONTROL-SINR-TIME-RESOLUTION;
            key sinr-slot-mask-id;
            leaf sinr-slot-mask-id {
              type uint8{
                range 1..31;
              }
              description
                "The sinr-slot-mask-id value equals to n for the nth sinr-slot-mask in the list. For example, sinr-slot-mask-id = 1 for the first sinr-slot-mask in the list. ";
            }
            leaf sinr-slot-mask{
              type uint16;
              description
                "Pattern of SINR reports represented as a bitmask.";
             }
            description "List of bitmasks representing a list of sinr-slot-mask values that the O-RU can dynamically use in SINR reporting,
            when the O-DU configures to use O-RU controlled dynamic SINR report in time.
            Any sinr-slot-mask value in this list shall be one of the values listed in the list supported-sinr-resolutions.
            When oru-control-sinr-time-resolution-enabled is true, this list will be used for configuration instead of parameter sinr-slot-mask";
          }
        }

        container sinr-compression {
          description
            "Configuration of SINR compression.";
          uses cf:sinr-compression-details;
          leaf sinr-reference-level-config {
            type decimal64 {
              fraction-digits 4;
            }
            units dB;
            description
              "SINR reference level.";
          }

          leaf sinr-reference-level-used {
            type decimal64 {
              fraction-digits 4;
            }
            units dB;
            config false;
            description
              "SINR reference level used. This parameter shall be the O-RU's best approximation of the sinr-reference-level-config.";
          }
        }
      }

      leaf dynamic-sinr-per-prb-enabled {
        when "../sinr-reporting-enabled = 'true'";
        if-feature feat:DYNAMIC-SINR-PER-PRB;
        type boolean;
        default false;
        description
          "Enables O-DU controlled frequency resolution for SINR reporting.
          Please refer to CUS spec clause 7.7.28 for more details.";
      }

      leaf se26-usage-enabled {
        type boolean;
        default false;
        description
          "When se26-usage-enabled = FALSE, O-DU shall not use SE 26 and shall not convey UE frequency offset information.
          When se26-usage-enabled = TRUE, O-DU may convey UE frequency offset information via SE 26.";
      }

      leaf-list bf-methods {
        if-feature "feat:SELECTED-BF-METHOD-CONFIGURATION and feat:BF-DELAY-PROFILE";
        type beamforming-method-type;
        description
          "Beamforming method(s) configured on the endpoint.

          If the value of configured-bf-profile-id is set, then beamforming method(s) configured on the endpoint shall
          be selected from the set of supported beamforming methods of the selected endpoint-bf-profile-group
          Otherwise, the beamforming method(s) configured on the endpoint shall be selected from the set of supported
          beamforming methods reported in the related endpoint-bf-profile-group(s).";
      }
      leaf eq-scale-offset-config {
        if-feature "feat:DMRS-BF-EQ";
        type decimal64 {
          fraction-digits 4;
        }
        units dB;
        description
          "scale offset is configured by the O-DU to avoid overflow when encoding data for the fronthaul interface.Refer to cus specification clause 8.1.3.4 for details.";
      }
      leaf eq-scale-offset-used {
        if-feature "feat:DMRS-BF-EQ";
        type decimal64 {
          fraction-digits 4;
        }
        units dB;
        config false;
        description
          "scale offset is used by the O-RU to avoid overflow when encoding data for the fronthaul interface.Refer to cus specification clause 8.1.3.4 for details.";
      }
      leaf-list rrm-meas-enabled {
        if-feature feat:RRM-MEAS-REPORTING;
        type rrm-meas-types;
        description
          "This parameter indicates which rrm measurements are enabled for this low level endpoint";
      }

      leaf se-27-odu-controlled-dimensionality-reduction-enabled {
        if-feature feat:SE27-ODU-CONTROLLED-DIMENSIONALITY-REDUCTION;
        type enumeration {
          enum DISABLED {
            description
            "O-DU controlled dimnesionality reduction disabled.";
          }
          enum STATIC {
            description
            "Static O-DU controlled dimnesionality reduction enabled.";
          }
          enum DYNAMIC {
            description
            "Dynamic O-DU controlled dimnesionality reduction enabled.";
          }
        }
        default DISABLED;
        description
          "Parameter indicating if O-DU controlled dimnesionality reduction is enabled.
          Please refer to CUS specification clause 7.7.27 for more details.";
      }
      leaf se-27-num-elements {
        when "../se-27-odu-controlled-dimensionality-reduction-enabled = 'STATIC'";
        if-feature feat:SE27-ODU-CONTROLLED-DIMENSIONALITY-REDUCTION;
        type uint16;
        description
          "Configured value of numElements in SE27.
          Please refer to CUS specification clause 7.7.27 for more details.";
      }
    }

    list tx-array-carriers {
      key name;
      description
        "Object model for tx-array-carriers configuration";

      leaf name {
        type string;
        description
          "Unique name of tx-array-carriers object.";
      }
      list odu-ids {
        if-feature feat:SHARED-ORU-MULTI-ODU;
        key odu-id;
        description
          "An optional list of o-du identities associated with this list entry.
          When present, indicates that the list entry corresponds to a tx-array-carrier
          associated with one or more particular odu-id(s).

          This list is used to enable enhanced watchdog operation when operating
          in a single operator environment, where watchdog supervision is performed
          on a per odu-id basis and supervision failure only results in a sub-set
          of carriers being de-activated.";

        leaf odu-id {
          type string;
          description "an o-du identity ";
        }
      }

      list sro-ids-and-odu-ids {
        if-feature "feat:SHARED-ORU-MULTI-ODU and feat:SHARED-ORU-MULTI-OPERATOR";
        key "odu-id sro-id";
        description
          "An optional list of sro and o-du identities associated with this list entry.
          When present, indicates that the list entry corresponds to a tx-array-carrier
          associated with one or more particular odu-id(s) operated by a particular sro-id.

          This list is used to enable enhanced watchdog operation when operating
          in a multi operator environment, where watchdog supervision is performed on
          a per odu-id basis and supervision failure only results in a sub-set of
          carriers being de-activated.";
        leaf odu-id {
          type string;
          description "an o-du identity ";
        }
        leaf sro-id {
          type string;
          description "an sro identity ";
        }
      }

      uses tx-common-array-carrier-elements;

      leaf band-number {
        if-feature mcap:LAA;
        type leafref {
          path "/mcap:module-capability/mcap:band-capabilities/mcap:band-number";
          require-instance false;
        }
        description
          "This parameter informing which frequency band particular antenna
           array is serving for.
           Intended use is to deal with multi-band solutions.";
      }

      container lte-tdd-frame {
        when "(/user-plane-configuration/tx-array-carriers/rw-type = 'LTE') and  (/user-plane-configuration/tx-array-carriers/rw-duplex-scheme = 'TDD')";
        status deprecated;
        description
          "Container which consists of global configurable parameters for tdd Frame.
          This contained is deprecated due to introduction of TDD pattern configuration
          applicable in a common way for LTE and NR.";

        leaf subframe-assignment {
          type enumeration {
            enum SAO {
              description "subframe assignment configuration 0";
            }
            enum SA1 {
              description "subframe assignment configuration 1";
            }
            enum SA2 {
              description "subframe assignment configuration 2";
            }
            enum SA3 {
              description "subframe assignment configuration 3";
            }
            enum SA4 {
              description "subframe assignment configuration 4";
            }
            enum SA5 {
              description "subframe assignment configuration 5";
            }
              enum SA6 {
                description "subframe assignment configuration 6";
            }
          }
          mandatory true;
          description
            "Indicates DL/UL subframe configuration as specified in
            3GPP TS 36.211 [v15.3.0, table 4.2-2]";
        }
        leaf special-subframe-pattern {
          type enumeration {
            enum SPP0 {
              description "special subframe pattern configuration 0";
            }
            enum SPP1 {
              description "special subframe pattern configuration 1";
            }
            enum SPP2 {
              description "special subframe pattern configuration 2";
            }
            enum SPP3 {
              description "special subframe pattern configuration 3";
            }
            enum SPP4 {
              description "special subframe pattern configuration 4";
            }
            enum SPP5 {
              description "special subframe pattern configuration 5";
            }
            enum SPP6 {
              description "special subframe pattern configuration 6";
            }
            enum SPP7 {
              description "special subframe pattern configuration 7";
            }
            enum SPP8 {
              description "special subframe pattern configuration 8";
            }
            enum SPP9 {
              description "special subframe pattern configuration 9";
            }
            enum SPP10 {
              description "special subframe pattern configuration 10";
            }
          }
          mandatory true;
          description
            "Indicates TDD special subframe configuration as in TS 36.211
             [v15.3.0, table 4.2-1] ";
        }
      }

      container laa-carrier-configuration {
        when "../band-number = 46";
        if-feature mcap:LAA;
        description "Container to specify LAA feature related carrier configuration.";
        uses laa-carrier-config;
      }

      leaf gain {
        type decimal64 {
          fraction-digits 4;
        }
        units dB;
        mandatory true;

        description
          "Transmission gain in dB. Value applicable to each array element carrier belonging to array carrier.

          The value of transmission gain shall meet the constraints defined in CUS-Plane, clause 8.1.3.3.";
      }

      leaf downlink-radio-frame-offset {
        type uint32 {
          range 0..12288000;
        }
        mandatory true;

        description
          "This parameter is used for offsetting the starting position of 10ms radio frame.
          Note: The value should have same value within DU to all tx-array-carriers that have same frequency and bandwidth.
          Note2: Unit is 1/1.2288e9 s. Then, its range is calculated 0..12288000.";
      }

      leaf downlink-sfn-offset {
        type int16 {
          range -32768..32767;
        }
        mandatory true;

        description
          "This parameter is used for offsetting SFN value.
          Unit is in 10ms.
          Note: The value should have same value within DU to all tx-array-carriers that have same frequency and bandwidth.";
      }

      leaf t-da-offset {
        if-feature "feat:EXT-ANT-DELAY-CONTROL";
        type uint32;
        units Tc;
        default 0;
        description
          "the time difference between the output of DL signal at the
           antenna connector of O-RU and the transmission over the air.
           units are Tc=~0.5ns=1/1.96608GHz.
           An O-RU with 'ext-ant-delay-capability' = 'PER-O-RU' shall reject any configuration
           where different values of t-da-offset are configured on tx-array-carriers;
           An O-RU with 'ext-ant-delay-capability' = 'PER-ARRAY' shall reject any configuration
           where different values of t-da-offset are configured on tx-array-carriers associated with the same tx-array.";
      }

      leaf reference-level {
        if-feature TX-REFERENCE-LEVEL;
        type decimal64 {
          fraction-digits 4;
        }
        units dB;
        default 0;
        description
          "Allows to adjust reference level for sum of IQ signal power over eAxCs in this array-carrier.";
      }

      leaf configurable-tdd-pattern {
        when "not(/user-plane-configuration/low-level-tx-endpoints[name = string(/user-plane-configuration/low-level-tx-links[tx-array-carrier = current()/../name]/tx-array-carrier)]/configurable-tdd-pattern-supported = 'false')";
        if-feature mcap:CONFIGURABLE-TDD-PATTERN-SUPPORTED;
        type leafref {
          path "/user-plane-configuration/configurable-tdd-patterns/tdd-pattern-id";
        }
        description
          "This parameter creates reference to configuration for TDD pattern applicable for particular tx-array-carrier.
          The leaf may exist under tx-array-carrier only in case O-RU supports feature 'CONFIGURABLE-TDD-PATTERN-SUPPORTED'
          AND all low-level-tx-endpoints linked to this tx-array-carrier have configurable-tdd-pattern-supported = 'true'";
      }

      leaf crb-to-prb-grid-offset {
        if-feature "feat:PRG-SIZE-SUPP-SE-21-WITH-ST6 or feat:PRG-SIZE-SUPP-SE-21-WITH-ST5";
        type uint16 {
          range 0..2199;
        }
        default 0;
        description
          "This parameter specifies the value of 'offsetToCarier' parameter as specified in the 3GPP Specification TS 38.331.
          This value is the offset in frequency domain, between lowest subcarrier of common RB 0, which is the start of
          carrier resource Block(CRB grid) and the lowest usable subcarrier on this array-carrier, which is (RE0 of PRB0),
          in units of number of PRBs (using the SCS defined for associated array-carrier). This parameter shall be used with
          'prgSize' in Section Extension 21 by the O-RU to correctly derive Channel Information Based Beamforming weights.
          Value of this parameter is not interpretted by the O-RU, if either 'prg-size-supp-se-21-with-st6-enabled'
          or 'prg-size-supp-se-21-with-st5-enabled' parameter is not set to TRUE by the O-DU.";
      }
    }

    list rx-array-carriers {
      key name;
      description
        "Object model for rx-array-carriers configuration";

          leaf name {
            type string;
            description
            "Unique name of rx-array-carriers object.";
      }

      list odu-ids {
        if-feature feat:SHARED-ORU-MULTI-ODU;
        key odu-id;
        description
          "An optional list of o-du identities associated with this list entry.
          When present, indicates that the list entry corresponds to a rx-array-carrier
          associated with one or more particular odu-id(s).

          This list is used to enable enhanced watchdog operation when operating
          in a single operator environment, where watchdog supervision is performed
          on a per odu-id basis and supervision failure only results in a sub-set
          of carriers beign de-activated.";

        leaf odu-id {
          type string;
          description "an o-du identity ";
        }
      }

      list sro-ids-and-odu-ids {
        if-feature "feat:SHARED-ORU-MULTI-ODU and feat:SHARED-ORU-MULTI-OPERATOR";
        key "odu-id sro-id";
        description
          "An optional list of sro and o-du identities associated with this list entry.
          When present, indicates that the list entry corresponds to a rx-array-carrier
          associated with one or more particular odu-id(s) operated by a particular sro-id.

          This list is used to enable enhanced watchdog operation when operating
          in a multi operator environment, where watchdog supervision is performed on
          a per odu-id basis and supervision failure only results in a sub-set of
          carriers beign de-activated.";
        leaf odu-id {
          type string;
          description "an o-du identity ";
        }
        leaf sro-id {
          type string;
          description "an sro identity ";
        }
      }

      uses rx-common-array-carrier-elements;

      leaf downlink-radio-frame-offset {
        type uint32 {
          range 0..12288000;
        }
        mandatory true;

        description
          "This parameter is used for offsetting the starting position of 10ms radio frame.
          Note: The value should have same value within DU to all tx-array-carriers that have same frequency and bandwidth.
          Note2: Unit is 1/1.2288e9 s. Then, its range is calculated 0..12288000.";
      }

      leaf downlink-sfn-offset {
        type int16 {
          range -32768..32767;
        }
        mandatory true;

        description
          "This parameter is used for offsetting SFN value.
          Unit is in 10ms.
          Note: The value should have same value within DU to all tx-array-carriers that have same frequency and bandwidth.";
      }

      leaf gain-correction {
        type decimal64 {
          fraction-digits 4;

        }
        units dB;
        mandatory true;
        description
          "Gain correction of RF path linked with array element or array layers.
           Common part of overall gain_correction.
           gain_correction = common array-carrier gain-correction + eAxC gain correction.";
      }

      leaf n-ta-offset {
        type uint32;
        units Tc;
        mandatory true;
        description
          "Value of configurable N-TA offset
          units are Tc=~0.5ns=1/1.96608GHz";
      }

      leaf t-au-offset {
        if-feature "feat:EXT-ANT-DELAY-CONTROL";
        type uint32;
        units Tc;
        default 0;
        description
          "the time difference between the reception over the air and
           the input of UL signal at the antenna connector of O-RU.
           units are Tc=~0.5ns=1/1.96608GHz.
           An O-RU with 'ext-ant-delay-capability' = 'PER-O-RU' shall reject any configuration
           where different values of t-au-offset are configured on rx-array-carriers;
           An O-RU with 'ext-ant-delay-capability' = 'PER-ARRAY' shall reject any configuration
           where different values of t-au-offset are configured on rx-array-carriers associated with the same rx-array.";
      }

      leaf configurable-tdd-pattern {
        when "not(/user-plane-configuration/low-level-rx-endpoints[name = string(/user-plane-configuration/low-level-rx-links[rx-array-carrier = current()/../name]/rx-array-carrier)]/configurable-tdd-pattern-supported = 'false')";
        if-feature mcap:CONFIGURABLE-TDD-PATTERN-SUPPORTED;
        type leafref {
          path "/user-plane-configuration/configurable-tdd-patterns/tdd-pattern-id";
        }
        description
          "This parameter creates reference to configuration for TDD pattern applicable for particular rx-array-carrier.
           The leaf may exist under rx-array-carrier only in case O-RU supports feature 'CONFIGURABLE-TDD-PATTERN-SUPPORTED'
          AND all low-level-rx-endpoints linked to this rx-array-carrier have configurable-tdd-pattern-supported = 'true'";
      }

      leaf user-group-mode {
        if-feature "feat:USER-GROUP-SELF-ASSEMBLY";
        type enumeration {
            enum NO-SELF-ASSEMBLY {
              description "No user group self assembly";
            }
            enum SELF-ASSEMBLY-WITH-GROUP-ID {
              description "User group self assembly with group id.";
            }
            enum SELF-ASSEMBLY-WITHOUT-GROUP-ID {
              description "User group self assembly without group id.";
            }
          }
          default NO-SELF-ASSEMBLY;
          description
            "Configuration of user group self assembly.";
      }

      leaf point-a-offset-to-absolute-frequency-center {
        if-feature "(feat:DMRS-BF-EQ or feat:DMRS-BF-NEQ) and feat:POINT-A-OFFSET-TO-ABSOLUTE-FREQUENCY-CENTER";
        type int32;
        description
          "An offset between center-of-channel-bandwidth and Point A.
          If the value is not provided, then Point A coincides with RE#0 of PRB#0 indicated by offset-to-absolute-frequency-center.
          The unit of this parameter is 1/2 of reference SCS, where reference SCS is 15 kHz for FR1 and 60 kHz for FR2.

          Please refer to CUS specification clause 7.7.24 for more details.";
      }

      leaf continuity-block-size-configured {
        if-feature "(feat:DMRS-BF-EQ or feat:DMRS-BF-NEQ) and feat:CONTINUITY-BLOCK-SIZE";
        type uint8;
        description
           "This parameter specified the O-DU configured value of continuity block size per rx-array-carrier.
           The O-DU shall pick one of the values advertised by the O-RU in 'continuity-block-size-list'";
      }

      leaf port-reduced-dmrs-data-sending-enabled {
        if-feature "feat:DMRS-BF-EQ or feat:DMRS-BF-NEQ";
        type boolean;
        description
           "This parameter value if set to TRUE indicates O-DU request to O-RU for sending port reduced DMRS
           sending from O-RU. If the flag is set to FALSE indicates O-RU shall not send port reduced DMRS
           from O-RU to O-DU.";
      }

    }

    list tx-arrays {
      key "name";
      config false;
      description
        "Structure describing TX array parameters";

      uses parameters;

      leaf min-gain {
        type decimal64 {
          fraction-digits 4;

        }
        units dB;
        description
          "Min gain of RF path linked with array element (maximum over elements of array) or array layers";
      }

      leaf max-gain {
        type decimal64 {
          fraction-digits 4;

        }
        units dB;
        mandatory true;
        description
          "Max gain of RF path linked with array element (minimum over elements of array) or array layers";
      }

      leaf independent-power-budget {
        type boolean;
        mandatory true;
        description
          "If true then every element of array has own, power budget independent from power budget of other elements.
          Else all elements of array that are at same row and column and have same polarisation share power budget";
      }

      list capabilities {
        description
          "List of capabilities related to this tx-array";
        uses mcap:support-for-dl;

        container supported-energy-saving-capabilities-dl {
          description
            "Network energy saving capabilities supported in DL path";

          container trx-control-capability-info {
            if-feature feat:TRX-CONTROL;
            description
              "A container with parameters for TRX-CONTROL capabilities supported by the O-RU.";
            uses mcap:trx-control-capability-info;
          }

          container asm-capability-info {
            if-feature feat:ADVANCED-SLEEP-MODE;
            description
              "A container with parameters for advanced sleep mode capabilities supported by the O-RU.";
            uses mcap:asm-capability-info;
          }
      }
    }
      container mplane-trx-control-txarr-capability-info {
        if-feature feat:MPLANE-TRX-CONTROL;
          description
          "A container with parameters for MPLANE-TRX-CONTROL feature supported by the O-RU.";
        uses mplane-trx-control-supp-antenna-masks;
      }
    }

    list rx-arrays {
      key "name";
      config false;
      description "Structure describing RX array parameters";

      uses parameters;
      container gain-correction-range {
        leaf max {
          type decimal64 {
            fraction-digits 4;
          }
          units dB;
          mandatory true;
          description "Array gain correction factor - maximum allowed value";
          }
        leaf min {
          type decimal64 {
            fraction-digits 4;
          }
          units dB;
          mandatory true;
          description "Array gain correction factor - minimum allowed value";
        }

        description
          "Array gain correction factor";
      }

      list capabilities {
        description
          "List of capabilities related to this rx-array";
        uses mcap:support-for-ul;

        container supported-energy-saving-capabilities-ul {
          description
            "Network energy saving capabilities supported in UL path";

          container trx-control-capability-info {
            if-feature feat:TRX-CONTROL;
            description
              "A container with parameters for TRX-CONTROL capabilities supported by the O-RU";
            uses mcap:trx-control-capability-info;
          }

          container asm-capability-info {
            if-feature feat:ADVANCED-SLEEP-MODE;
            description
              "A container with parameters for advanced sleep mode capabilities supported by the O-RU";
            uses mcap:asm-capability-info;
          }
        }
      }
      container mplane-trx-control-rxarr-capability-info {
        if-feature feat:MPLANE-TRX-CONTROL;
        description
          "A container with parameters for MPLANE-TRX-CONTROL feature supported by the O-RU.";

        uses mplane-trx-control-supp-antenna-masks;
      }
    }

    list relations {
      key "entity";
      config false;
      description "Structure describing relations between array elements";

      leaf entity {
        type uint16;

        description
          "Relation entity. Used as a key for list of relations.";
      }

      container array1 {
        uses array-choice;

        description
          "Defines name for first array";
      }
      container array2 {
        uses array-choice;

        description
          "Defines name for second array";
      }
      list types {
        key "relation-type";
        description
          "Defines relation type and pairs for array elements for given arrays";

        leaf relation-type {
          type enumeration {
            enum SHARED {
              description "SHARED";
            }
            enum COALOCATED {
              description "COALOCATED";
            }
          }
          description "Type of relation between array elements";
        }
        list pairs {
          key "element-array1";
          description
            "defines related array elements";

          leaf element-array1 {
            type uint16;

            description
              "Tells about id of element from array1";
          }
          leaf element-array2 {
            type uint16;

            description
              "Tells about id of element from array2";
          }
        }
      }
    }

    container eaxc-id-group-configuration {
      if-feature mcap:EAXC-ID-GROUP-SUPPORTED;
      description
        "This is the container for eAxC ID group configuration.";
      leaf max-num-tx-eaxc-id-groups {
        type leafref {
          path "/mcap:module-capability/mcap:ru-capabilities/mcap:eaxcid-grouping-capabilities/mcap:max-num-tx-eaxc-id-groups";
          require-instance false;
        }
        description "eaxc-id-group-configuration";
      }
      leaf max-num-tx-eaxc-ids-per-group {
        type leafref {
          path "/mcap:module-capability/mcap:ru-capabilities/mcap:eaxcid-grouping-capabilities/mcap:max-num-tx-eaxc-ids-per-group";
          require-instance false;
        }
        description "max-num-tx-eaxc-ids-per-group";
      }
      leaf max-num-rx-eaxc-id-groups {
        type leafref {
          path "/mcap:module-capability/mcap:ru-capabilities/mcap:eaxcid-grouping-capabilities/mcap:max-num-rx-eaxc-id-groups";
          require-instance false;
        }
        description "max-num-rx-eaxc-id-groups";
      }
      leaf max-num-rx-eaxc-ids-per-group {
        type leafref {
          path "/mcap:module-capability/mcap:ru-capabilities/mcap:eaxcid-grouping-capabilities/mcap:max-num-rx-eaxc-ids-per-group";
          require-instance false;
        }
        description "max-num-rx-eaxc-ids-per-group";
      }

      list tx-eaxc-id-group {
        must "count(../tx-eaxc-id-group) <= ../max-num-tx-eaxc-id-groups" {
          error-message "too many tx-eaxcid-id groups";
        }
        key "representative-tx-eaxc-id";
        description
          "This is a list of the groups of the eAxC IDs assigned to low-level-tx-endpoints.
          Each group is a union of the 'member-tx-eaxc-id's and a 'representative-tx-eaxc-id'.
          The low-level-tx-endpoint associated to 'representative-tx-eaxc-id' is able to
          process the DL C-plane information for all the low-level-tx-endpoints associated
          to 'member-tx-eaxc-id's.

          Take Note: This list should only contain eAxC IDs assigned to a tx-endpoint.";

        leaf representative-tx-eaxc-id {
          type uint16;
          description
            "This parameter contains eAxC_ID that populates content of C-Plane section
            extension 10 to eAxC_IDs configured in the group as 'member-tx-eaxc-id'(s).";
        }
        leaf-list member-tx-eaxc-id {
          type uint16;
          must "count(../member-tx-eaxc-id) <= ../../max-num-tx-eaxc-ids-per-group" {
            error-message "too many tx-eaxcid-id members";
          }
          must "current()!=../representative-tx-eaxc-id" {
            error-message "the representative eaxcid does not need to be a list member";
          }
          ordered-by user;
          description
            "This is a list of member eAxC IDs, which together with the representative-tx-eaxc-id,
            are assigned to low-level-tx-endpoints in the group.
            This list is defined as 'ordered-by user', because the order of the eaxc-id list should be maintained,
            and the parameters in the SE10 are applied to the eaxc-ids based on the order of eaxc-ids in the list
            when the section extension conveys unique parameters (beamId/ueId) per eaxc-id.";
        }
      }

      list rx-eaxc-id-group {
        must "count(../rx-eaxc-id-group) <= ../max-num-rx-eaxc-id-groups" {
          error-message "too many rx-eaxcid-id groups";
        }
        key "representative-rx-eaxc-id";
        description
          "This is a list of the groups of the eAxC IDs assigned to low-level-rx-endpoints.
          Each group is a union of 'member-rx-eaxc-id's and a 'representative-rx-eaxc-id'.
          The low-level-rx-endpoint associated to 'representative-rx-eaxc-id' is able to
          process the UL C-plane information for all the low-level-rx-endpoints associated
          to 'member-rx-eaxc-id's.

          Take Note: This list should only contain eAxC IDs assigned to a rx-endpoint.";

        leaf representative-rx-eaxc-id {
          type uint16;
          description
            "This parameter contains eAxC_ID that populates content of C-Plane section
            extension 10 to eAxC_IDs configured in the group as 'member-rx-eaxc-id'(s).";
        }

        leaf-list member-rx-eaxc-id {
          type uint16;
          must "count(../member-rx-eaxc-id) <= ../../max-num-rx-eaxc-ids-per-group" {
            error-message "too many rx-eaxcid-id members";
          }
          must "current()!=../representative-rx-eaxc-id" {
            error-message "the representative eaxc-id does not need to be a list member";
          }
          ordered-by user;
          description
            "This is a list of member eAxC IDs assigned to low-level-rx-endpoints in the group.
            This list is defined as 'ordered-by user', because the order of the eaxc-id list should be maintained,
            and the parameters in the SE10 are applied to the eaxc-ids based on the order of eaxc-ids in the list
            when the section extension conveys unique parameters (beamId/ueId) per eaxc-id.";
        }
      }
    }

    list static-prach-configurations {
      if-feature mcap:PRACH-STATIC-CONFIGURATION-SUPPORTED;
      key static-prach-config-id;
      description
        "List of static PRACH configurations. An O-RU shall reject any configuration
        modification which exceed the maximum permitted configurations supported by
        the O-RU";

      leaf static-prach-config-id {
        type uint8;
        description
          "Supplementary parameter acting as key in list of static PRACH configurations.";
      }

      uses static-prach-configuration;
    }

    grouping static-prach-configuration {
      description
        "Set of parameters related to static PRACH configuration";

        leaf sfn-offset {
          type uint32;

          description
            "This parameter is used for offsetting SFN value.
            The SFN that results from the offset is used as the reference for the start of pattern periods.
            If the value is not set, then pattern periods follow the reference set in a related rx-array-carrier.
            The value is primarily used for cases in which pattern-period is not a power of 2.
            Unit is in 10ms.";
        }

      leaf pattern-period {
        type uint16 {
          range 1..1024;
        }
        mandatory true;
        description
          "Period after which static PRACH patterns are repeated. Unit: number of frames.";
      }

      leaf guard-tone-low-re {
        type uint32;
        mandatory true;
        description
          "Number of REs occupied by the low guard tones.";
      }

      leaf num-prach-re {
        type uint32;
        mandatory true;
        description
          "Number of contiguous PRBs per data section description";
      }

      leaf guard-tone-high-re {
        type uint32;
        mandatory true;
        description
          "Number of REs occupied by the high guard tones.";
      }

      leaf sequence-duration {
        type uint32 {
          range 256..24576;
        }
        units Ts;
        mandatory true;
        description
          "Duration of single PRACH Symbol. Refer to definition of PRACH Symbol in CUS specification clause 3.1.";
      }

      list prach-patterns {
        key prach-pattern-id;
        min-elements 1;
        description
          "Provides a PRACH pattern. Each record in the list represents a single PRACH occasion. Number of list entries cannot
          exceed max-prach-patterns or extended-max-prach-patterns if EXTENDED-PRACH-CONFIGURATION is supported.";

        leaf prach-pattern-id {
          type uint32;
          mandatory true;
          description
            "Supplementary parameter acting as key for prach-pattern list.
            NETCONF client shall limit its maximum value to 65535 when configuring
            any O-RU that does not support the EXTENDED-PRACH-CONFIGURATION feature.";
        }

        leaf number-of-repetitions {
          type uint8{
            range 1..14;
          }
          mandatory true;
          description
             "This parameter defines number of PRACH PRACH Symbol repetitions in PRACH occasion,
             to which the section control is applicable. Refer to definition of PRACH Symbol in CUS specification clause 3.1.";
        }

        leaf number-of-occasions {
          type uint32;
          mandatory true;
          description
            "This parameter informs how many consecutive PRACH occasions is described by the PRACH pattern.
            NETCONF client shall limit its maximum value to 255 when configuring any O-RU that does not
            support the EXTENDED-PRACH-CONFIGURATION feature.";
        }

        leaf re-offset {
          type uint32;
          mandatory true;
          description
            "Offset between the start of lowest-frequency RE of lowest-frequency PRB
             and the start of lowest-frequency RE belonging to the PRACH occasion.
             The re-offset is configured as number of PRACH REs.";
        }

        list occasion-parameters {
          key occasion-id;
          min-elements 1;
          description
            "This is list of cp-lengths, gp-lengths and beam-ids applicable
             per each PRACH occasion in PRACH pattern.
             Note: the number of records in this list MUST be equal
                   to value of parameter number-of-occasions.";

          leaf occasion-id {
            type uint32;
            mandatory true;
            description
              "Supplementary parameter acting as key in 'occasion-parameters' list.
              The value is limited to 255 if EXTENDED-PRACH-CONFIGURATION is unsupported.";
          }

          leaf cp-length {
            type uint16;
            units Ts;
            mandatory true;
            description
          "Cyclic prefix length. See CUS-plane specification for detailed description.";
          }

          leaf gp-length {
            type uint16;
            units Ts;
            description
              "Guard period length.";
          }

          leaf beam-id {
            type uint16 {
              range "min .. 32767";
            }
            mandatory true;
            description
              "This parameter defines the beam pattern to be applied to the U-Plane data.
               beamId = 0 means no beamforming operation will be performed.";
          }
        }

        leaf frame-number {
          type uint16{
            range 0..1023;
          }
          mandatory true;
          description
            "This parameter is an index inside the pattern-length, such that
             PRACH occasion is happening for SFN which fulfills following equation:
             [SFN mod pattern-length = frame-id]";
        }

        leaf sub-frame-id {
          type uint16;
          mandatory true;
          description
            "Identifier of sub-frame of the PRACH occasion. Value is interpreted in the same way
             as subframeId field in a section description of a C-Plane message.";
        }

        leaf time-offset {
          type uint16;
          units Ts;
          mandatory true;
          description
            "This parameter defines the time-offset from the start of the sub-frame
             to the start of the first Cyclic Prefix of PRACH pattern";
        }
      }
    }

    grouping static-srs-configuration {
      description
        "Set of parameters related to static PRACH configuration";

      leaf pattern-period {
        type uint16 {
          range 1..1024;
        }
        mandatory true;
        description
          "Period after which static SRS patterns are repeated. Unit: number of frames.";
      }

      list srs-patterns {
        key srs-pattern-id;
        min-elements 1;
        description
          "Provides a SRS pattern. Each record in the list represents a single PRACH occasion. Number of list entries cannot exceed max-srs-patterns.";

        leaf srs-pattern-id {
          type uint16;
          mandatory true;
          description
            "Supplementary parameter acting as key for srs-pattern list.";
        }

        leaf sub-frame-id {
          type uint16;
          mandatory true;
          description
            "Identifier of sub-frame of the Raw SRS occasion. Value is interpreted in the same way
             as subframeId field in a section description of a C-Plane message.";
        }

        leaf slot-id {
          type uint16;
          mandatory true;
          description
            "Identifier of slot of the Raw SRS occasion. Value is interpreted in the same way
             as slotId field in a section description of a C-Plane message.";
        }

        leaf start-symbol-id {
          type uint16;
          mandatory true;
          description
            "Identifier of first symbol of the Raw SRS occasion. Value is interpreted in the same way
             as startSymbolId field in a section description of a C-Plane message.";
        }

        leaf beam-id {
          type uint16 {
            range "min .. 32767";
          }
          mandatory true;
          description
            "This parameter defines the beam pattern to be applied to the U-Plane data.
             beamId = 0 means no beamforming operation will be performed.";
        }

        leaf num-symbol {
          type uint16;
          mandatory true;
          description
            "This parameter defines number of consecutive symbols covered by specific srs-pattern.
             Single srs-pattern may address at least one symbol. However, possible optimisations
             could allow for several (up to 14) symbols.";
        }

        leaf start-prbc {
          type uint16 {
            range 0..1023;
          }
          mandatory true;
          description
            "Identifier of first PRB of the Raw SRS occasion. Value is interpreted in the same way
             as startPrbc field in a section description of a C-Plane message.";
        }

        leaf num-prbc {
          type uint16;
          mandatory true;
          description
            "Number of PRBs of the Raw SRS occasion. Value is interpreted in the same way
             as numPrbc field in a section description of a C-Plane message.";
        }
      }
    }

    grouping configurable-tdd-pattern {
      description
        "Set of parameters related to configurable TDD pattern.
        Note: configurable-tdd-pattern shall not be used in case the usage would collide with
        deprecated 'lte-tdd-pattern'.";

      list switching-points {
        key switching-point-id;
        description
          "List of switching points within frame, related to configurable TDD pattern.
          An O-RU shall reject any configuration modification which exceeds the maximum
          number of switching-points supported by the O-RU";

        leaf switching-point-id {
          type uint16;
          description
            "Supplementary parameter acting as key for switching-points list.";
          }

        leaf direction {
          type enumeration {
            enum UL {
            description "Uplink";
            }
            enum DL {
            description "Downlink";
            }
            enum GP {
            description "Guard period";
            }
          }
          mandatory true;
          description
            "Parameter provides information regarding desired signal direction at the moment switching point occurs.";
        }

        leaf frame-offset {
          type uint32;
          mandatory true;
          description
            "Offset from DL air frame boundary transmitted at RF connector to the point in time that is characteristic to the operation on RF switches. Unit is 1/1.2288e9 s.";
        }
      }
    }

    list static-srs-configurations {
      if-feature mcap:SRS-STATIC-CONFIGURATION-SUPPORTED;
      key static-srs-config-id;
      description
        "List of static SRS configurations";

      leaf static-srs-config-id {
        type uint8;
        description
          "Supplementary parameter acting as key in the list of static SRS configurations.";
      }

      uses static-srs-configuration;
    }

    list configurable-tdd-patterns {
      if-feature mcap:CONFIGURABLE-TDD-PATTERN-SUPPORTED;
      key tdd-pattern-id;
      description
        "List of configured TDD patterns";

      leaf tdd-pattern-id {
        type uint8;
        description
          "Supplementary parameter acting as key in the list of configured TDD patterns.";
      }

      uses configurable-tdd-pattern;
    }

    list endpoint-bf-profile-group {
      if-feature feat:BF-DELAY-PROFILE;
      key "bf-profile-id";
      config false;
      description
        "An optional list of list(s) containing beamforming methods supported by the O-RU with the associated delay-profile-id
        per each beamforming method list";
      leaf bf-profile-id {
        type uint16;
        description
          "Identifies the beamforming method list.";
      }
      leaf-list supported-bf-methods {
        type beamforming-method-type;
        min-elements 1;
        description
          "Beamforming methods can be supported simultaneously.";
      }
      leaf supported-delay-profile {
        type leafref {
          path "/or-dm:delay-management/or-dm:non-default-ru-delay-profile/or-dm:delay-profile-id";
          require-instance false;
        }
        description
          "The delay-profile-id associated with the supported beamforming method list.
           If not configured or the value is set to 0, all delay parameters shall be equivalent to the default value.";
      }
    }
    list se10-member-candidate-tx-lists {
      if-feature feat:SE10-MEMBER-CANDIDATE-LIST;
      key "id";
      config false;
      description
        "List of leaf-lists, where each leaf-list is a member-candidate list comprising of endpoints
        which can be associated to one or more static-low-level-tx-endpoint(s).";
      leaf id {
        type uint8;
        description
          "Index into the list se10-member-candidate-tx-lists.";
      }
      leaf-list member-candidates {
        type leafref {
          path "/user-plane-configuration/static-low-level-tx-endpoints/name";
          require-instance false;
        }
        description
          "Each leaf-list comprises one or more static-low-elevel-tx-endpoint(s). Endpoints in this list can
          be representative endpoint or member endpoint.";
      }
    }
    list se10-member-candidate-rx-lists {
      if-feature feat:SE10-MEMBER-CANDIDATE-LIST;
      key "id";
      config false;
      description
        "List of leaf-lists, where each leaf-list is a member-candidate list comprising of endpoints
         which can be associated to one or more static-low-level-rx-endpoint(s).";
      leaf id {
        type uint8;
        description
          "Index into the list se10-member-candidate-rx-lists.";
      }
      leaf-list member-candidates {
        type leafref {
          path "/user-plane-configuration/static-low-level-rx-endpoints/name";
          require-instance false;
        }
        description
          "Each leaf-list comprises one or more static-low-elevel-rx-endpoint(s). Endpoints in this list can
          be representative endpoint or member endpoint.";
      }
    }
  }

  grouping tx-array-notification-group {
    description
      "Grouping for tx-array for notification";

    list tx-array-carriers{
      key name;
      description "notification of state and/or availability-status change for tx-array-carriers";

      leaf name{
        type leafref{
          path "/user-plane-configuration/tx-array-carriers/name";
        }
        description
          "name of tx-array-carriers is notified at state change";
      }
      leaf state{
        type leafref{
          path "/user-plane-configuration/tx-array-carriers/state";
        }
        description
          "state of tx-array-carriers is notified at state change";
      }
      leaf availability-status{
        type leafref{
          path "/user-plane-configuration/tx-array-carriers/availability-status";
        }
        description
          "availability-status of tx-array-carriers is notified at availability-status change";
      }
    }
  }

  grouping rx-array-notification-group {
    description
      "Grouping for rx-array for notification";

    list rx-array-carriers{
      key name;
      description
        "Notification used to inform about state and/or availability-status change of rx-array-carriers";
      leaf name{
        type leafref{
          path "/user-plane-configuration/rx-array-carriers/name";
        }
        description
          "name of rx-array-carriers is notified at state change";
      }
      leaf state{
        type leafref{
          path "/user-plane-configuration/rx-array-carriers/state";
        }
        description
          "state of rx-array-carriers is notified at state change";
      }
      leaf availability-status{
        type leafref{
          path "/user-plane-configuration/rx-array-carriers/availability-status";
        }
        description
          "availability-status of rx-array-carriers is notified at availability-status change";
      }
    }
  }

  // top level container
  container user-plane-configuration {
    description "top level container for user plane configuration";

    uses uplane-conf-group;
    uses general-config;
    uses array-config-group;
  }

  //notification statement
  notification tx-array-carriers-state-change {
    description
      "Notification used to inform about state and/or availability-status change of tx-array-carriers";
    uses tx-array-notification-group;
  }
  notification rx-array-carriers-state-change {
    description
    "Notification used to inform about state and/or availability-status change of tx-array-carriers";

    uses rx-array-notification-group;
  }

  notification data-layer-control-wakeup-notification {
    if-feature feat:MPLANE-DATA-LAYER-CONTROL;
    description
      "Notification used to inform about wake-up completion after M-Plane based data layer control sleep is terminated";
    leaf-list energy-sharing-group {
      type uint8;
      description
        "Notification for wake-up completion of underlying HW components corresponding to energy sharing group.
        This value shall be specific values from the list of 'energy-sharing-group-id' inside static-low-level-[tr]x-endpoints.";
    }
  }
    notification mplane-trx-control-ant-mask-update {
    if-feature feat:MPLANE-TRX-CONTROL;

    leaf array-name {
      type union {
        type leafref {
          path "/user-plane-configuration/rx-arrays/name";
        }
        type leafref {
          path "/user-plane-configuration/tx-arrays/name";
        }
      }
      description
        "The array name for which antenna mask has been updated using
        MPLANE-TRX-CONTROL feature.";
    }
    leaf array-type {
       type enumeration {
         enum TX-ARRAY {
           description
            "this array is of type TX array";
         }
         enum RX-ARRAY {
           description
          "this array is of type RX array";
         }
     }
      description
        "The type of array for which antenna mask has been updated using
        MPLANE-TRX-CONTROL feature.";
    }
    leaf updated-antenna-mask {
      type binary;
      description
        "The updated antenna mask value after processing M-Plane based TRX control command at the O-RU.
        If mplane-supported-trx-control-masks list is not advertised as part of capability for the referred [tr]x-array,
        the parameter antenna-bitmask shall be used for notification.
        The parameter antenna-bitmask-index shall not be used for notification.";
    }
    leaf updated-antenna-mask-index {
      type uint8;
      description
        "The parameter indicates updated antenna mask index value after processing M-Plane based TRX control command at the O-RU.
        If mplane-supported-trx-control-masks list is advertised as part of capability for the referred [tr]x-array,
            the parameter antenna-bitmask-index shall be used for notification to refer to the index of advertised mplane-supported-trx-control-masks.
            The parameter antenna-bitmask shall not be used for notification.";
    }
    description
      "M-Plane notification event to notify that the commanded mask has been activated via M-plane. This notification
      is required to be sent for either tx-array or rx-array for which the antenna mask was
      commanded to be changed by the O-DU.";
  }
}

## File: RU Specific Models/Operations/o-ran-performance-management.yang

module o-ran-performance-management {
  yang-version 1.1;
  namespace "urn:o-ran:performance-management:1.0";
  prefix "o-ran-pm";

  import ietf-yang-types {
    prefix "yang-types";
  }

  // import identifier for O-RU
  import ietf-hardware {
    prefix "hw";
  }

  // import ietf-interface
  import ietf-interfaces {
    prefix "if";
  }

  // import iana-tf-type
  import iana-if-type {
    prefix "ianaift";
  }

  // import ietf-inet-type
  import ietf-inet-types {
    prefix "inet";
  }

  // import port-number
  import o-ran-interfaces {
    prefix "o-ran-int";
  }

  // import ru-mac-address, o-du-mac-address and vlan-id
  import o-ran-processing-element {
    prefix "o-ran-elements";
  }

  import o-ran-file-management {
    prefix "o-ran-file-mgmt";
  }

  import iana-hardware {
    prefix ianahw;
  }

  import o-ran-uplane-conf {
    prefix "up";
  }

  import o-ran-wg4-features {
     prefix "feat";
  }

  import o-ran-hardware {
    prefix "or-hw";
  }

  import o-ran-module-cap {
    prefix "mcap";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the configuration for performance measurement for
    transceiver and rx-window measurement objects.

    NOTE, whereas this YANG model may define support of schema nodes associated
    with O-RU measurements as optional, the CU-Plane specification may further
    specify whether, according to a particular version of the CU plane
    specification, which specific measurements are mandatory to support
    from an O-RU perspective. In such a situation, the definition of mandatory
    performance counters in sub-section 9.1 of the CU-plane specification shall
    take precedence.

    Copyright 2024 the O-RAN Alliance.

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

  revision 2024-12-23 {
    description
      "version 17.0.0

      1) add Tx output power measurement
      2) add thermo-electric cooler (TEC) current measurement
      3) add Ethernet counters";

    reference "ORAN-WG4.M.0-v17.00";
  }

  revision 2024-08-12 {
    description
      "version 16.0.0

       1) add TSSI measurements.
       2) add RSSI measurements.";

    reference "ORAN-WG4.M.0-v16.00";
  }

  revision 2024-04-15 {
    description
      "version 15.0.0

       1) add fequency bin as optional report for EPE statistics.
       2) added new VSWR measurments.
       3) new report-info capabilities.
       4) remove import by revision date for ietf-yang-types.";

    reference "ORAN-WG4.M.0-v15.00";
  }

  revision 2023-12-11 {
    description
      "version 14.0.0

       1) Make the leafref refering a measurement-object optional using
          statement 'require-instance false'.
       2) Align YANG model descriptions with schema.
       3) Added shared cell performance counters";

    reference "ORAN-WG4.M.0-v14.00";
  }

  revision 2023-08-14 {
    description
      "version 8.2.0

       1) EPE measurement report correction.";

    reference "ORAN-WG4.M.0-v07.00";
  }

  revision 2022-08-15 {
    description
      "version 8.1.0

       1) style guide corrections.
       2) changed import prefix for o-ran-file-management.";

    reference "ORAN-WG4.M.0-v07.00";
  }

  revision 2021-12-01 {
    description
      "version 8.0.0

       1) typographical corrections in descriptions.
       2) deprecating leaf-list frequency-table and replacing with frequency-bin-table
       3) Add support for multiple transport-session-type per O-RU";

    reference "ORAN-WG4.M.0-v07.00";
  }

  revision 2021-07-26 {
    description
      "version 7.0.0

       1) added new EPE measurements - VOLTAGE and CURRENT
       2) added data-direction to rx-window measurements
       3) added ability to report multiple measurements in notifications
       4) added new symbol TD-RSSI measurements
       5) added FTPES file upload support ";

    reference "ORAN-WG4.M.0-v07.00";
  }

  revision 2021-03-22 {
    description
      "version 5.1.0

       1) typographical corrections in descriptions";

    reference "ORAN-WG4.M.0-v05.00";
  }

  revision 2020-12-10 {
    description
      "version 5.0.0

       1) container epe-stats is changed deprecated
       2) New list epe-statistics and measurement-object is added as key
       3) bug fix by pyang --lint";

    reference "ORAN-WG4.M.0-v05.00";
  }

  revision "2020-04-17" {
    description
      "version 3.0.0

      1) updated top-level model description concerning optionality of measurements
      2) added new rx window counters
      3) added new TX stats measurements
      4) added new EPE measurements
      5) fixed typo in enumeration - TX_POPWER
      6) introduced config false data indicating which type of measurements are supported";

    reference "ORAN-WG4.M.0-v03.00";
  }

  revision "2019-07-03" {
    description
      "version 2.0.0

      1) added new measurement objects for QSFP
      2) backward compatible changes to correct sFTP Server Authentication.
      3) simplifying file management and authentication to reuse from o-ran-file-management module
      4) minor fixes according to lack of descriptions and reference
      5) added to descriptions to indicate applicability of leafs and Containers
      to separate O-RAN use cases
      6) backward compatible changes to introduce groupings.";

    reference "ORAN-WG4.M.0-v02.00";
  }

  revision "2019-02-04" {
    description
      "version 1.0.0

      1) imported model from xRAN
      2) changed namespace and reference from xran to o-ran";

    reference "ORAN-WG4.M.0-v01.00";
  }

  feature GRANULARITY-TRANSPORT-MEASUREMENT {
    description
      "This feature indicates that the O-RU supports an optional object-unit TRANSPORT in rx-window-measurement.";
  }

  feature GRANULARITY-EAXC-ID-MEASUREMENT {
    description
      "This feature indicates that the O-RU supports an optional object-unit EAXC_ID in rx-window-measurement.";
  }

  typedef transceiver-report-info {
    type enumeration {
      enum MAXIMUM {
        description
          "to report maximum value and its recorded time within the
           measurement-interval for the measurement-object.";
      }
      enum MINIMUM {
        description
          "to report minimum value and its recorded time within the
           measurement-interval for the measurement-object.";
      }
      enum FIRST {
        description
          "to report first value and its recorded time within the
           measurement-interval for the measurement-object.";
      }
      enum LATEST {
        description
          "to report latest value and its recorded time within the
           measurement-interval for the measurement-object.";
      }
      enum FREQUENCY_TABLE {
        description
          "to report frequency bin table within the
           measurement-interval for the measurement-object.";
      }
    }
    description
      "The reporting info that might be supported/configured for
      transceiver measurement object.";
  }

  typedef transceiver-function {
    type enumeration {
      enum RAW {
        description
          "the value is expressed by real value.";
      }
      enum LOG_10 {
        description
          "the value is expressed by logarithm with base 10.";
      }
    }

    description
      "The function that might be supported/configured for
      transceiver measurement object.";
  }

  typedef epe-report-info {
    type enumeration {
      enum MAXIMUM {
        description
          "to report maximum value within the
           measurement-interval for the measurement-object.";
      }
      enum MINIMUM {
        description
          "to report minimum value within the
           measurement-interval for the measurement-object.";
      }
      enum AVERAGE {
        description
          "to report average value within the
           measurement-interval for the measurement-object.";
      }
      enum FREQUENCY_TABLE {
        description
          "to report frequency bin table within the
          measurement-interval for the measurement-object.";
      }
    }
    description
      "The reporting info that might be supported/configured for
      EPE measurement object.";
  }

  typedef symbol-rssi-report-info {
    type enumeration {
      enum MAXIMUM {
        description
          "to report maximum value within the
           measurement-interval for the measurement-object.";
      }
      enum MINIMUM {
        description
          "to report minimum value within the
           measurement-interval for the measurement-object.";
      }
      enum AVERAGE {
        description
          "to report average value within the
           measurement-interval for the measurement-object.";
      }
      enum FREQUENCY_TABLE {
        description
          "to report frequency bin table within the
           measurement-interval for the measurement-object.";
      }
    }
    description
      "The reporting info that might be supported/configured for
      symbol RSSI measurement object.";
  }

  typedef tssi-report-info {
    type enumeration {
      enum MAXIMUM {
        description
          "to report maximum value within the
           measurement-interval for the measurement-object.";
      }
      enum MINIMUM {
        description
          "to report minimum value within the
           measurement-interval for the measurement-object.";
      }
      enum AVERAGE {
        description
          "to report average value within the
           measurement-interval for the measurement-object.";
      }
    }
    description
      "The reporting info that might be supported/configured for
      TSSI measurement object.";
  }

  typedef rssi-report-info {
    type enumeration {
      enum MAXIMUM {
        description
          "to report maximum value within the
           measurement-interval for the measurement-object.";
      }
      enum MINIMUM {
        description
          "to report minimum value within the
           measurement-interval for the measurement-object.";
      }
      enum AVERAGE {
        description
          "to report average value within the
           measurement-interval for the measurement-object.";
      }
    }
    description
      "The reporting info that might be supported/configured for
      RSSI measurement object.";
  }

  typedef tx-antenna-report-info {
    type enumeration {
      enum AVERAGE {
        description
          "To report average value within the measurement-interval
          for the measurement-object.";
      }
      enum STD_DEVIATION {
        description
          "To report standard deviation value within the measurement-interval
          for the measurement-object.";
      }
      enum MAXIMUM {
        description
          "To report maximum value within the
           measurement-interval for the measurement-object.";
      }
      enum MAXIMUM_AND_TIME {
        description
          "To report maximum value and its recorded time within the
           measurement-interval for the measurement-object.";
      }
      enum MINIMUM {
        description
          "To report minimum value within the
           measurement-interval for the measurement-object.";
      }
      enum MINIMUM_AND_TIME {
        description
          "To report minimum value and its recorded time within the
           measurement-interval for the measurement-object.";
      }
      enum FIRST {
        description
          "To report first value within the
           measurement-interval for the measurement-object.";
      }
      enum FIRST_AND_TIME {
        description
          "To report first value and its recorded time within the
           measurement-interval for the measurement-object.";
      }
      enum LATEST {
        description
          "To report latest value within the
           measurement-interval for the measurement-object.";
      }
      enum LATEST_AND_TIME {
        description
          "To report latest value and its recorded time within the
           measurement-interval for the measurement-object.";
      }
      enum FREQUENCY_TABLE {
        description
          "To report frequency bin table within the
           measurement-interval for the measurement-object.";
      }
    }
    description "The reporting info that might be supported/configured for
      tx antenna measurement object.";
  }

  typedef tx-output-power-report-info {
    type enumeration {
      enum MAXIMUM {
        description
          "to report maximum value within the
           measurement-interval for the measurement-object.";
      }
      enum MINIMUM {
        description
          "to report minimum value within the
           measurement-interval for the measurement-object.";
      }
      enum AVERAGE {
        description
          "to report average value within the
           measurement-interval for the measurement-object.";
      }
    }
    description
      "The reporting info that might be supported/configured for
      tx output power measurement object.";
  }

  typedef tx-antenna-object-unit {
    type enumeration {
      enum ARRAY_ELEMENT {
        description
          "Unit to measure the performance per object-id - array element";
      }
      enum CONNECTOR_BAND {
        description
          "Unit to measure the performance per object-id - connector and band";
      }
    }
    description "The object units that might be supported/configured for
      tx antenna measurement object.";
  }

  typedef tx-output-power-object-unit {
    type enumeration {
      enum TX-ARRAY-CARRIER {
        description
          "unit to measure the performance per object-id - tx-array-carrier";
      }
      enum TX-ARRAY-ELEMENT {
        description
          "unit to measure the performance per object-id - tx-array element";

      }
      enum ARRAY-CARRIER-ELEMENT {
        description
          "unit to measure the performance per object-id
           - per tx-array-carrier per tx-array element";

      }
      enum CONNECTOR {
        description
          "unit to measure the performance per object-id - connector";

      }
      enum ARRAY-CARRIER-CONNECTOR {
        description
          "unit to measure the performance per object-id - per tx-array-carrier per connector";

      }
    }
    description "The object units that might be supported/configured for
      tx antenna measurement object.";
  }

  typedef ethernet-report-info {
    type enumeration {
      enum COUNT {
        description
          "Unit to measure the number of events related to Ethernet.";
      }
    }
    description "The object units that might be supported/configured for
      Ethernet measurement object.";
  }

  grouping start-and-end-time {
    description
      "Definition for start and end time for an event";

    leaf start-time {
      type yang-types:date-and-time;
      description
        "Start time for measurement of object stats";
    }
    leaf end-time {
      type yang-types:date-and-time;
      description
        "End time for measurement of object stats";
    }
  }

  grouping epe-measurement-result-grouping {
    description
      "energy, power and environmental measurement-result are listed for O-RU";

    list epe-measurement-result {
      key "object-unit-id";
      config false;
      status deprecated;
      description
        "energy power and environmental measurement results

        this list is deprecated as the leaf object-unit-id actually
        refers to an object-unit. It is replaced with
        the new list epe-measurement-resultv2";
      leaf object-unit-id {
        type leafref {
          path "/hw:hardware/hw:component/hw:class";
        }

        description
          "the hardware component type is used for the object-unit-id for the
           EPE measurements. For example, the object-unit-id will be set to
           or-hw:O-RAN-RADIO if the measurement applies to the complete O-RU
           self-contained sub-system.

           Other hardware-classes include: or-hw:O-RU-POWER-AMPLIFIER,
           ianahw:power-supply, ianahw:fan, ianahw:cpu";
      }
      leaf min {
        type decimal64 {
          fraction-digits 4;
        }

        description
          "minimum value for the measurement-object";
      }
      leaf max {
        type decimal64 {
          fraction-digits 4;
        }
        description
          "maximum value for the measurement-object";
      }
      leaf average {
        type decimal64 {
          fraction-digits 4;
        }
        description
          "average value of the measurement-object";
      }
    }

    list epe-measurement-resultv2 {
      key "object-unit-id";

      config false;
      description
        "energy power and environmental measurement results

        this list replaces the deprecated list epe-measurement-result";
      leaf object-unit-id {
        type leafref {
          path "/hw:hardware/hw:component/hw:name";
        }

        description
          "the hardware component name is used for the object-unit-id for the
           EPE measurements. For example, the object-unit-id will be set to
           the name of the component with class or-hw:O-RU-POWER-AMPLIFIER
           to refer to a particular power amplifer instance.";
      }
      leaf min {
        type decimal64 {
          fraction-digits 4;
        }

        description
          "minimum value for the measurement-object";
      }
      leaf max {
        type decimal64 {
          fraction-digits 4;
        }
        description
          "maximum value for the measurement-object";
      }
      leaf average {
        type decimal64 {
          fraction-digits 4;
        }
        description
          "average value of the measurement-object";
      }
      list frequency-bin-table {
        key bin-id;
        leaf bin-id {
           type uint32;
           description "Sequence number of the bin";
        }
        leaf value {
           type uint32;
           description "count corresponding to the bin";
         }
        description
          "frequency-table for the measurement-object are included per bin.
           The configuration parameters for this frequency-table are defined
           by bin-count, lower-bound and upper-bound";
      }
    }

  }

  grouping transceiver-measurement-result-grouping {
    description
      "transceiver-measurement-result are listed per port-number";

    list transceiver-measurement-result {
      key "object-unit-id";
      config false;
      leaf object-unit-id {
        type leafref {
          path "/if:interfaces/if:interface/o-ran-int:port-reference/o-ran-int:port-number";
        }

        description
          "port-number is used for the object-unit-id for the
           transceiver-measurement-result, for which object-unit is
           PORT_NUMBER only";
      }
      container min {
        description
          "minimum value with recorded time are included for the
           measurement-object";

        leaf value {
          type decimal64 {
            fraction-digits 4;
          }

          description
            "minimum value for the measurement-object";
        }
        leaf time {
          type yang-types:date-and-time;

          description
            "recorded time for the minimum value";
        }
      }
      container max {
        description
        "maximum value with recorded time are included for the
         measurement-object";

        leaf value {
          type decimal64 {
            fraction-digits 4;
          }

          description
            "maximum value for the measurement-object";
        }
        leaf time {
          type yang-types:date-and-time;

          description
            "recorded time for the maximum value";
        }
      }
      container first {
        description
          "first value with the recorded time are included for the
           measurement-object";

        leaf value {
          type decimal64 {
            fraction-digits 4;
          }

          description
            "first value of the measurement-object";
        }
        leaf time {
          type yang-types:date-and-time;

          description
            "recorded time for the first value";
        }
      }
      container latest {
        description
          "latest value with the recorded time are included for the
           measurement-object";

        leaf value {
          type decimal64 {
            fraction-digits 4;
          }

          description
            "latest value of the measurement-object";
        }
        leaf time {
          type yang-types:date-and-time;

          description
            "recorded time for the latest value";
        }
      }
      leaf-list frequeny-table {
        type uint32;
        status deprecated;
        description
          "frequency-table for the measurement-object are included per bin.
           The configuration parameters for this frequency-table are defined
           by bin-count, lower-bound and upper-bound";
      }
      list frequency-bin-table {
        key bin-id;
        leaf bin-id {
           type uint32;
           description "Sequence number of the bin";
        }
        leaf value {
           type uint32;
           description "count corresponding to the bin";
         }
        description
          "frequency-table for the measurement-object are included per bin.
           The configuration parameters for this frequency-table are defined
           by bin-count, lower-bound and upper-bound";
      }
      description
        "List of transceiver measurement results";
    }
  }

  grouping rx-window-measurement-result-grouping{
    description
      "Group of measurement results for rx window measurements";

    choice object-unit-id {
      config false;
      case RU {
        leaf name{
          type leafref {
            path "/hw:hardware/hw:component/hw:name";
          }

          description
            "the name of O-RU module or one of its child ports
            in ietf-hardware/component is used when O-RU is selected as
            object-unit for the reception window stats.";
        }
        leaf count {
          type uint64;
          mandatory true;

          description
            "the number of data packet are counted for the reception
             window stats per O-RU.";
        }
      }

      case TRANSPORT {
        list tr-measured-result{
          leaf name{
            type leafref{
              path "/o-ran-elements:processing-elements/o-ran-elements:ru-elements/o-ran-elements:name";
            }

            description
              "the name of ru-elements in o-ran-processing-elements
               when TRANSPORT is selected as object-unit for the reception
               window stats.";
          }

          leaf transport-session-type {
            if-feature "feat:MULTIPLE-TRANSPORT-SESSION-TYPE";
            type enumeration {
              enum ETH-INTERFACE {
                description "VLAN based CUS Transport ";
              }
              enum UDPIP-INTERFACE {
                description "UDP/IP based CUS Transport ";
              }
              enum ALIASMAC-INTERFACE{
                description "Alias MAC address based CUS Transport ";
              }
            }
            description
              "transport session type used when an O-RU is configured with multiple processing elements of different transport session types,
               in which case it is used for referencing a processing element in 'transport-qualified-name'";
          }

          leaf transport-qualified-name {
            if-feature "feat:MULTIPLE-TRANSPORT-SESSION-TYPE";
            type leafref {
              path "/o-ran-elements:processing-elements/o-ran-elements:additional-transport-session-type-elements[o-ran-elements:transport-session-type = current()/../transport-session-type]/o-ran-elements:ru-elements/o-ran-elements:name";
            }
            description
               "the name of ru-elements in o-ran-processing-elements
               when TRANSPORT is selected as object-unit for the reception
               window stats. Used when the processing element is configured
               by the list 'additional-transport-session-type-elements'";
          }

          leaf count {
            type uint64;
            mandatory true;

            description
              "the number of data packet are counted for the reception
               window stats.";
          }

          description
            "the number of data packet are counted for the reception
             window stats per TRANSPORT.";
        }
      }

      case EAXC_ID {
        list eaxc-measured-result {
          leaf eaxc-id{
            type uint16;

            description
              "eaxc-id is used
               when EAXC_ID is selected as object-unit for the reception
               window stats.
               EAXC_ID consists of DU-Port-Id, Band-Selector, CC-id and
               RU-Port-Id to be used in header of C/U-plane data packet.";
          }
          leaf count {
            type uint64;
            mandatory true;

            description
              "the number of data packet are counted for the reception
               window stats.";
          }
          leaf data-direction {
            type enumeration {
              enum DL {
                description
                  "reported measurement refers to control plane messages with dataDirection bit = 1.";
              }
              enum UL {
                description
                  "reported measurement refers to control plane messages with dataDirection bit = 0.";
              }
              enum DLUL {
                description
                  "reported measurement refers to control plane messages irrespective of dataDirection bit setting.";
              }
            }
            description
              "An optional leaf used when reporting rx window measurement associated with
              control plane messages. See CUS-Plane Specification for more details of the dataDirection bit.

              When not present and reporting rx window measurement associated with control plane messages,
              the receiving entity can assume that the reported control plane rx window measurement refers
              to control plane messages irrespective of dataDirection bit setting.

              Can be ignored when received in rx window measurements not corresponding to control plane messages.";
          }
          leaf transport-name {
            type leafref{
              path "/o-ran-elements:processing-elements/o-ran-elements:ru-elements/o-ran-elements:name";
            }

            description
              "the name of ru-elements in o-ran-processing-elements for the
               transport information corresponding to this eaxc-id";
          }

          leaf transport-session-type {
            if-feature "feat:MULTIPLE-TRANSPORT-SESSION-TYPE";
            type enumeration {
              enum ETH-INTERFACE {
                description "VLAN based CUS Transport ";
              }
              enum UDPIP-INTERFACE {
                description "UDP/IP based CUS Transport ";
              }
              enum ALIASMAC-INTERFACE{
                description "Alias MAC address based CUS Transport ";
              }
            }
            description
              "transport session type used when an O-RU is configured with multiple processing elements of different transport session types,
               in which case it is used for referencing a processing element in 'transport-qualified-name'";
          }

          leaf transport-qualified-name {
          if-feature "feat:MULTIPLE-TRANSPORT-SESSION-TYPE";
            type leafref {
              path "/o-ran-elements:processing-elements/o-ran-elements:additional-transport-session-type-elements[o-ran-elements:transport-session-type = current()/../transport-session-type]/o-ran-elements:ru-elements/o-ran-elements:name";
            }
            description
               "the name of ru-elements in o-ran-processing-elements for the
               transport information corresponding to this eaxc-id.
               Used when the processing element is configured
               by the list 'additional-transport-session-type-elements'";
          }

          description
            "the number of data packet are counted for the reception
             window stats per EAXC-ID.";
        }
      }

      description
        "measurement-result for the reception window stats depends on the
         configured object-unit, RU, TRANSPORT or EAXC_ID";
    }
  }

  grouping tx-measurement-result-grouping{
    description
      "Group of measurement results for tx stats";

    choice object-unit-id {
      config false;
      case RU {
        leaf name{
          type leafref {
            path "/hw:hardware/hw:component/hw:name";
          }

          description
            "the name of O-RU module or one of its child ports
            in ietf-hardware/component is used when O-RU is selected as
            object-unit for the reception window stats.";
        }
        leaf count {
          type uint64;
          mandatory true;

          description
            "the number of data packet are counted for the tx stats per O-RU.";
        }
      }

      case TRANSPORT {
        list tr-measured-result{
          leaf name{
            type leafref{
              path "/o-ran-elements:processing-elements/o-ran-elements:ru-elements/o-ran-elements:name";
            }

            description
              "the name of ru-elements in o-ran-processing-elements
               when TRANSPORT is selected as object-unit for the tx stats.";
          }

          leaf transport-session-type {
            if-feature "feat:MULTIPLE-TRANSPORT-SESSION-TYPE";
            type enumeration {
              enum ETH-INTERFACE {
                description "VLAN based CUS Transport ";
              }
              enum UDPIP-INTERFACE {
                description "UDP/IP based CUS Transport ";
              }
              enum ALIASMAC-INTERFACE{
                description "Alias MAC address based CUS Transport ";
              }
            }
            description
              "transport session type used when an O-RU is configured with multiple processing elements of different transport session types,
               in which case it is used for referencing a processing element in 'transport-qualified-name'";
          }

          leaf transport-qualified-name {
            if-feature "feat:MULTIPLE-TRANSPORT-SESSION-TYPE";
            type leafref {
              path "/o-ran-elements:processing-elements/o-ran-elements:additional-transport-session-type-elements[o-ran-elements:transport-session-type = current()/../transport-session-type]/o-ran-elements:ru-elements/o-ran-elements:name";
            }
            description
               "the name of ru-elements in o-ran-processing-elements
               when TRANSPORT is selected as object-unit for the tx stats.
               Used when the processing element is configured
               by the list 'additional-transport-session-type-elements'";
          }

          leaf count {
            type uint64;
            mandatory true;

            description
              "the number of data packet are counted for the tx stats.";
          }

          description
            "the number of data packet are counted for the tx stats per TRANSPORT.";
        }
      }

      case EAXC_ID {
        list eaxc-measured-result {
          leaf eaxc-id{
            type uint16;

            description
              "eaxc-id is used
               when EAXC_ID is selected as object-unit for the tx stats.
               EAXC_ID consists of DU-Port-Id, Band-Selector, CC-id and
               RU-Port-Id to be used in header of C/U-plane data packet.";
          }
          leaf count {
            type uint64;
            mandatory true;

            description
              "the number of data packet are counted for the tx stats.";
          }
          leaf transport-name {
            type leafref{
              path "/o-ran-elements:processing-elements/o-ran-elements:ru-elements/o-ran-elements:name";
            }

            description
              "the name of ru-elements in o-ran-processing-elements for the
               transport information corresponding to this eaxc-id";
          }

          leaf transport-session-type {
            if-feature "feat:MULTIPLE-TRANSPORT-SESSION-TYPE";
            type enumeration {
              enum ETH-INTERFACE {
                description "VLAN based CUS Transport ";
              }
              enum UDPIP-INTERFACE {
                description "UDP/IP based CUS Transport ";
              }
              enum ALIASMAC-INTERFACE{
                description "Alias MAC address based CUS Transport ";
              }
            }
            description
              "transport session type used when an O-RU is configured with multiple processing elements of different transport session types,
               in which case it is used for referencing a processing element in 'transport-qualified-name'";
          }

          leaf transport-qualified-name {
            if-feature "feat:MULTIPLE-TRANSPORT-SESSION-TYPE";
            type leafref {
              path "/o-ran-elements:processing-elements/o-ran-elements:additional-transport-session-type-elements[o-ran-elements:transport-session-type = current()/../transport-session-type]/o-ran-elements:ru-elements/o-ran-elements:name";
            }
            description
               "the name of ru-elements in o-ran-processing-elements for the
               transport information corresponding to this eaxc-id.
               Used when the processing element is configured
               by the list 'additional-transport-session-type-elements'";
          }

          description
            "the number of data packet are counted for the tx stats per EAXC-ID.";
        }
      }

      description
        "measurement-result for the tx stats depends on the
         configured object-unit, RU, TRANSPORT or EAXC_ID";
    }
  }

  grouping shared-cell-measurement-result-grouping {
    description
      "Group of measurement results for shared-cell measurements";

    choice object-unit-id {
      config false;
      case TRANSPORT{
        list pe-measured-result {
          key "processing-elements";
            description
              "the measurement results are counted per processing-element.";
           leaf processing-elements {
                type leafref {
                    path "/o-ran-elements:processing-elements/o-ran-elements:ru-elements/o-ran-elements:name";
                  }
                description
                  "Procesing elements are used to count for shared-cell stats,
                  where the processing element name refers to a list entry
                  containing a south-eth-flow container.";
            }
            leaf count {
              type uint64;
              mandatory true;
              description
                "the number of packets are counted for shared-cell stats.";
            }
        }
          description
            "the number of packets are counted for shared-cell stats per TRANSPORT.";
      }
        description
          "measurement-result for shared-cell stats depnds on the configured object-unit,
          TRANSPORT or other one for the future purpose.";
    }
  }

  grouping symbol-rssi-measurement-result-grouping {

    description
      "symbol-rssi-measurement-result is the time domain RSSI per symbol,
      the reference point for the TD-RSSI shall be the antenna connector of the O-RU.
      The value of Received Signal Strength Indicator(RSSI) per rx-array-carrier per configured OFDM symbol is measured.
      the RSSI shall be calculated as the linear average of the total received power observed in the configured
      OFDM symbol in the measurement bandwidth from all sources including co-channel serving and non-serving cells,
      adjacent channel interference, thermal noise etc., over the total number of antenna elements of the array.
      The unit of the reported RSSI is dBm.
      If analogue or hybrid beamforming is enabled, the beamId used for RSSI measurement is:
        - When there is allocation of a beamId in this symbol, O-RU use that beamId for RSSI measurement;
        - When there is no allocation of a beamId in this symbol, it is up to O-RU implementation, for example,
          the O-RU can choose to use a common beamId or use a previous allocated beamId";

    list symbol-rssi-measurement-result {
      key "object-unit-id";
      config false;
      leaf object-unit-id {
        type leafref {
          path "/up:user-plane-configuration/up:rx-array-carriers/up:name";
        }

        description
          "rx-array-carrier is used for the object-unit-id for the
           symbol-rssi-measurement-result, for which object-unit is RX-ARRAY-CARRIER only.
           this measurement is only supported by the rx-array-carriers which are configured with single numerology.
           an O-RU shall reject any configuration for an object-unit-id that references a mixed numerology array carrier.";
      }

      list per-symbol-index-result {
        key "symbol-index";
        description
          "the symbol index for the measurement result";

        leaf symbol-index{
          type uint16;

          description
            "symbol-index is the symbol indexes within a configured 'period', These symbols include
               - all UL symbols within a configured number of slots if measurement-object is ALL-UL-SYMBOLS,
                 and the UL symbols are decided by 'configurable-tdd-pattern', 'static-srs-configuration', 'static-prach-configuration',
                 and 'dataDirection' in the C-plane messages.
               - configured symbols by 'symbol-index' within a configured 'period' if measurement-object is CONFIGURED-SYMBOLS,
                 If a c-plane message indicates a symbol within the 'symbol-index' list to be a DL symbol,
                 O-RU shall not measure RSSI on this symbol";
        }

        container min {
          description
            "minimum value for the
            measurement-object";

          leaf value {
            type decimal64 {
              fraction-digits 1;
            }
            units dBm;
            description
              "minimum value for the TD-RSSI measurement in dBm";
          }
        }

        container max {
          description
          "maximum value for the
           measurement-object";

          leaf value {
            type decimal64 {
              fraction-digits 1;
            }
            units dBm;
            description
              "maximum value for the TD-RSSI measurement in dBm";
          }
        }

        container avg {
          description
          "average value for the
           measurement-object";

          leaf value {
            type decimal64 {
              fraction-digits 1;
            }
            units dBm;
            description
              "the dBm value of the linear average of TD-RSSI [Watt] value across the symbols with same symbol-index
               if same symbol-index occurs multiple times within a given measurement interval.";
          }
        }

        leaf-list frequency-table {
          type uint32;
          status deprecated;
          description
          "frequency-table for the measurment-object are included per bin.
           The configuration parameters for this frequency-table are defined
           by bin-count, lower-bound and upper-bound";
        }

        list frequency-bin-table {
          key bin-id;
          leaf bin-id {
             type uint32;
             description "Sequence number of the bin";
          }
          leaf value {
             type uint32;
             description "count corresponding to the bin";
           }
          description
            "frequency-table for the measurement-object are included per bin.
             The configuration parameters for this frequency-table are defined
             by bin-count, lower-bound and upper-bound";
        }
      }
      description
         "measurement-result for the symbol-wise TD-RSSI depends on the
          configured object-unit, RX-ARRAY-CARRIER";
    }
  }

  grouping tssi-measurement-result-grouping {
    description
      "The status information are listed for each O-RU's Tx array carrier";
    list tssi-measurement-result {
      key "object-unit-id";
      config false;
      description
        "Measurement result of tssi per measurement-object";

    leaf object-unit-id {
        type leafref {
          path "/up:user-plane-configuration/up:tx-array-carriers/up:name";
        }
        description
          "tx-array-carrier is used for the object-unit-id for the tssi-measurement-result.";
     }

     list per-tx-array-element-index-result {
        key "tx-array tx-array-element";
        description
          "This list indicates the status information related to the Tx array element supported by the O-RU array carrier.";

        leaf tx-array {
          type leafref {
              path "/up:user-plane-configuration/up:tx-arrays/up:name";
            }
            description "Name of tx-array; part of the measurement object identifier.";
        }

        leaf tx-array-element {
          type uint32;
          description
            "This leaf indicates the identifier of the configured Tx array element in tx-array.";
        }

        container avg {
          description
            "average value for the measurement-object";
          leaf value {
            type decimal64 {
              fraction-digits 2;
            }
            units dBFS;
            description
              "the dBFS value of the linear average of the measured Transmission Signal Strength Indicator (TSSI) during DL symbol
              as the digital IQ power level of the Tx array carrier on the specific array element";
          }
        }

       container min {
         description
            "minimum value for the measurement-object";

          leaf value {
            type decimal64 {
              fraction-digits 2;
            }
            units dBFS;
            description
              "Min value of the measured Transmission Signal Strength Indicator (TSSI) during DL symbol
              as the digital IQ power level of the Tx array carrier on the specific array element.";
          }
        }

        container max {
          description
          "maximum value for the measurement-object";
          leaf value {
            type decimal64 {
              fraction-digits 2;
            }
            units dBFS;
            description
              "Max value of the measured Transmission Signal Strength Indicator (TSSI) during DL symbol
              as the digital IQ power level of the Tx array carrier on the specific array element.";
          }
       }
     }
    }
  }

  grouping rssi-measurement-result-grouping {
    description
      "The status information are listed for each O-RU's Rx array carrier";
    list rssi-measurement-result {
      key "object-unit-id";
      config false;
      description
        "Measurement result of rssi per measurement-object";
      leaf object-unit-id {
        type leafref {
          path "/up:user-plane-configuration/up:rx-array-carriers/up:name";
        }
        description
          "rx-array-carrier is used for the object-unit-id for the rssi-measurement-result.";
     }
     list per-rx-array-element-index-result {
        key "rx-array rx-array-element";
        description
          "This list indicates the status information related to the Rx carriers supported by the O-RU array element.";
        leaf rx-array {
          type leafref {
              path "/up:user-plane-configuration/up:rx-arrays/up:name";
            }
            description "Name of rx-array; part of the measurement object identifier.";
        }
        leaf rx-array-element {
          type uint32;
          description
            "This leaf indicates the identifier of the configured Rx array element.";
        }
        container avg {
          description
            "average value for the measurement-object";
          leaf value {
            type decimal64 {
              fraction-digits 1;
            }
            units dBm;
            description
              "This leaf indicates the measured RSSI (Received Signal Strength Indicator) of the Rx array carrier on the speific antenna path in decibel-milliwatts (dBm).";
          }
        }
       container min {
         description
            "minimum value for the measurement-object";
          leaf value {
            type decimal64 {
              fraction-digits 1;
            }
            units dBm;
            description
              "This leaf indicates the measured RSSI (Received Signal Strength Indicator) of the Rx array carrier on the speific antenna path in decibel-milliwatts (dBm).";
          }
        }
        container max {
          description
          "maximum value for the measurement-object";
          leaf value {
            type decimal64 {
              fraction-digits 1;
            }
            units dBm;
            description
              "This leaf indicates the measured RSSI (Received Signal Strength Indicator) of the Rx array carrier on the speific antenna path in decibel-milliwatts (dBm).";
          }
       }
     }
    }
  }

  grouping tx-antenna-measurement-result-grouping {
    description
      "tx-antenna-measurement-result listed per array element or connector and band.";

    grouping tx-antenna-measurement-values-grouping {
    description
      "The grouping of tx antenna measurement values";

      container avg {
        description
          "Average value is included for the measurement-object.";

        leaf value {
          type decimal64 {
            fraction-digits 4;
          }

          description
            "Latest value of the measurement-object.";
        }
      }
      container std-deviation {
        description
          "Standard deviation value is included for the measurement-object.";

        leaf value {
          type decimal64 {
            fraction-digits 4;
          }

          description
            "Standard deviation value of the measurement-object.";
        }
      }
      container min {
        description
          "Minimum value with optionally recorded time are included for the
           measurement-object.";

        leaf value {
          type decimal64 {
            fraction-digits 4;
          }

          description
            "Minimum value for the measurement-object is provided
            if MINIMUM or MINIMUM_AND_TIME report-info is selected.";
        }

        leaf time {
          type yang-types:date-and-time;

          description
            "Recorded time for the minimum value is provided
            if MINIMUM_AND_TIME report-info is selected.";
        }
      }
      container max {
        description
        "Maximum value with optionally recorded time are included for the
         measurement-object.";

        leaf value {
          type decimal64 {
            fraction-digits 4;
          }

          description
            "Maximum value for the measurement-object is provided
            if MAXIMUM or MAXIMUM_AND_TIME report-info is selected.";
        }

        leaf time {
          type yang-types:date-and-time;

          description
            "Recorded time for the maximum value is provided
            if MAXIMUM_AND_TIME report-info is selected.";
        }
      }
      container first {
        description
          "First value with optinally the recorded time are included for the
           measurement-object.";

        leaf value {
          type decimal64 {
            fraction-digits 4;
          }

          description
            "First value of the measurement-object is provided
            if FIRST or FIRST_AND_TIME report-info is selected.";
        }

        leaf time {
          type yang-types:date-and-time;

          description
            "Recorded time for the first value is provided
            if FIRST_AND_TIME report-info is selected.";
        }
      }
      container latest {
        description
          "Latest value with optionally the recorded time are included for the
           measurement-object.";

        leaf value {
          type decimal64 {
            fraction-digits 4;
          }

          description
            "Latest value of the measurement-object is provided
            if LATEST or LATEST_AND_TIME report-info is selected.";
        }

        leaf time {
          type yang-types:date-and-time;

          description
            "Recorded time for the latest value is provided
            if LATEST_AND_TIME report-info is selected.";
        }
      }

      list frequency-bin-table {
        key bin-id;
        leaf bin-id {
           type uint32;
           description "Sequence number of the bin";
        }
        leaf value {
           type uint32;
           description "count corresponding to the bin";
         }
        description
          "Frequency-table for the measurement-object are included per bin.
           The configuration parameters for this frequency-table are defined
           by bin-count, lower-bound and upper-bound.";
      }
    }

    choice object-unit-id {
      config false;
      case ARRAY_ELEMENT {
        list tx-antenna-measurement-result-array-element {
          key "tx-array tx-array-element";
          config false;
          leaf tx-array {
            type leafref {
                path "/up:user-plane-configuration/up:tx-arrays/up:name";
              }
              description "Name of tx-array; part of the measurement object identifier.";
          }

          leaf tx-array-element {
            type uint32;

            description
              "Array element number within the tx-array identified by object-unit-id-array; part of the measurement object identifier.
              Allowed values and semantic - as per CUS-Plane spec, clause 'Identification and Ordering of Array Elements'.";
          }

          uses tx-antenna-measurement-values-grouping;

          description
            "List of tx antenna measurement results";
        }
      }
      case CONNECTOR_BAND {
        list tx-antenna-measurement-result-connector-band {
          key "related-o-ru-connector band-number";
          config false;

          leaf related-o-ru-connector {
            type leafref {
              path '/hw:hardware/hw:component/hw:name';
            }
            must "derived-from-or-self(deref(current())/../hw:class, 'or-hw:O-RU-FEEDER')";
            description
              "Provides information about O-RU connector related to the measurement.";
          }

          leaf band-number {
            type leafref {
              path "/mcap:module-capability/mcap:band-capabilities/mcap:band-number";
            }
            description
              "Provides information about frequency band related to the measurement.";
          }
          uses tx-antenna-measurement-values-grouping;

          description
            "List of tx antenna measurement results";
        }
      }
      description
        "measurement-result for tx-antenna stats depends on the configured object-unit,
        ARRAY_ELEMENT or CONNECTOR_BAND.";
    }
  }

  grouping tx-output-power-measurement-result-grouping {
    description
      "tx-output-power-stats-object per tx-array-carrier, tx-array-element, connector,
       carrier-array-element or array-carrier-connector.
       The unit of the reported tx output power is dbm.";

    grouping tx-output-power-measurement-values-grouping {
      description "The grouping of tx output power measurement values";
      container avg {
        description
          "average value for the measurement-object";
        leaf value {
          type decimal64 {
            fraction-digits 2;
          }
          units dBm;
          description
            "the dBm value of the linear average of tx output power [Watt]value.";
        }
      }
      container min {
        description
          "minimum value for the measurement-object";
        leaf value {
          type decimal64 {
            fraction-digits 2;
          }
          units dBm;
          description
            "This indicates the mininum tx output power value.";
          }
      }
      container max {
        description
        "maximum value for the measurement-object";
        leaf value {
          type decimal64 {
            fraction-digits 2;
          }
          units dBm;
          description
            "This indicates maxium tx output power value.";
        }
      }
    }
    choice object-unit-id {
      config false;
      case TX-ARRAY-CARRIER {
        list tx-output-power-measurement-result-tx-array-carrier {
          key "tx-array-carrier";
          leaf tx-array-carrier {
            type leafref {
              path "/up:user-plane-configuration/up:tx-array-carriers/up:name";
            }
            description
              "tx-array-carrier is used for the object-unit-id for the tx-output-power-measurement-result.";
          }
          uses tx-output-power-measurement-values-grouping;
          description "list of tx output power per tx-array-carrier.";
        }
        description "the tx output power per tx-array-carrier.";
      }
      case TX-ARRAY-ELEMENT {
        list tx-output-power-measurement-result-tx-array-element {
          key "tx-array";
          leaf tx-array {
            type leafref {
                path "/up:user-plane-configuration/up:tx-arrays/up:name";
              }
              description "Name of tx-array; part of the measurement object identifier.";
          }
          list per-tx-array-element-index-result {
            key "tx-array-element";
            leaf tx-array-element {
                type uint32;
                description
                  "This leaf indicates the identifier of the configured Tx array element.";
            }
            uses tx-output-power-measurement-values-grouping;
            description "list of tx-array elements";
          }
          description "list of tx output power per tx-array element";
        }
        description "the tx output power per tx-array element";
      }
      case CONNECTOR {
        list tx-output-power-measurement-result-connector {
          key "related-o-ru-connector";
          leaf related-o-ru-connector {
            type leafref {
              path '/hw:hardware/hw:component/hw:name';
            }
            must "derived-from-or-self(deref(current())/../hw:class, 'or-hw:O-RU-FEEDER')";
            description
              "Provides information about O-RU connector related to the measurement.";
          }
          uses tx-output-power-measurement-values-grouping;
          description "list of tx output power per connector";
        }
        description "the tx output power per each connector";
      }
      case CARRIER-ARRAY-ELEMENT {
        list tx-output-power-measurement-result-carrier-array-element {
          key "tx-array-carrier";
          config false;
          leaf tx-array-carrier {
            type leafref {
              path "/up:user-plane-configuration/up:tx-array-carriers/up:name";
            }
            description
              "tx-array-carrier is used for the object-unit-id for the tx-output-power-measurement-result.";
          }
          list per-tx-array-element-index-result {
            key "tx-array tx-array-element";
            description
              "This list indicates the status information related to the Tx array element supported by the O-RU array carrier.";

            leaf tx-array {
              type leafref {
                  path "/up:user-plane-configuration/up:tx-arrays/up:name";
                }
                description "Name of tx-array, part of the measurement object identifier.";
            }

            leaf tx-array-element {
              type uint32;
              description
                "This leaf indicates the identifier of the configured Tx array element.";
            }
            uses tx-output-power-measurement-values-grouping;
          }
          description "list of tx output power per tx-array carrier per tx-array element";
        }
        description "The tx output power per tx array element per tx-array-carrier is estimated,
          may be based on the power per tx-array element. If mulitiple tx-array-carriers are configured
          to the tx array element, then the power per tx-array element may be derived,
          may be based on the gain of the tx-array-carrier configured via Mplane and tx input IQ power level
          of each tx-array-carrier on the tx array element.";
      }
      case ARRAY-CARRIER-CONNECTOR {
        list tx-output-power-measurement-result-carrier-connector {
          key "tx-array-carrier";
          config false;
          leaf tx-array-carrier {
            type leafref {
              path "/up:user-plane-configuration/up:tx-array-carriers/up:name";
            }
            description
              "tx-array-carrier is used for the object-unit-id for the tx-output-power-measurement-result.";
          }
          list per-tx-array-connector-index-result {
            key "related-o-ru-connector";
            leaf related-o-ru-connector {
              type leafref {
                path '/hw:hardware/hw:component/hw:name';
              }
              must "derived-from-or-self(deref(current())/../hw:class, 'or-hw:O-RU-FEEDER')";
              description
                "Provides information about O-RU connector related to the measurement.";
            }
            uses tx-output-power-measurement-values-grouping;
            description "the list of connectors that are associated to the tx-array-carrier";
          }
          description "The tx output power per tx-array-carrier per connector is estimated,
            may be based on power per connector. If mulitiple tx-array-carriers are configured to
            the connector, then the output power per connector may be derived, may be based on the
            gain of the tx-array-carrier configured via Mplane and tx input IQ power level of each
            tx-array-carrier on the tx array element whose tx-array associated to the connector.";
        }
      }
      description
        "the tx output power for different object-unit-id.";
    }
  }

  grouping ethernet-measurement-result-grouping {
    description
      "ethernet-measurement-result listed per port-number of Ethernet type.";
    list ethernet-measurement-result {
      key "object-unit-id";
      config false;
      leaf object-unit-id {
        type leafref {
          path "/if:interfaces/if:interface/if:name";
        }
        must "derived-from-or-self(deref(current())/../if:type, 'ianaift:ethernetCsmacd')";

        description
          "interface name is used for the object-unit-id for the
           ethernet-measurement-result, for which object-unit is ETH_INTERFACE";
      }
      leaf count {
        type uint64;
        description
          "the number of events are counted for the Ethernet stats.";
      }
      description
        "List of Ethernet measurement results";
    }
  }

  grouping measurement-group {
    description
      "Group of measurement results";

    uses measurement-capabilities;
    leaf enable-SFTP-upload {
      type boolean;
      default false;
      status deprecated;
      description
        "Flag to enable upload of performance measurement result files.";
    }

    leaf enable-file-upload {
      type boolean;
      default false;
      description
        "Flag to enable upload of performance measurement result files.
        A single schema node is used to enable/disable file uploads
        over either SFTP or FTPES with the format of the upload
        path being used to signal which protocol to use.

        An O-RU receiving this schema node should ignore the deprecated
        enable-SFTP-upload schema node, if received.";
    }

    leaf enable-random-file-upload {
      type boolean;
      default false;
      description
        "Flag to enable upload of performance measurement result files at
         random within file-upload-interval.";
    }

    list remote-SFTP-uploads {
      key remote-SFTP-upload-path;
      status deprecated;
      description
        "SFTP upload can be done to one or more than one SFTP servers";

      leaf remote-SFTP-upload-path {
        type inet:uri;
        description
          "URI specifying the remote location where the files are to be uploaded.
          The following format is possible:
          sftp://<username>@<host>[:<port>]/path";
      }

      uses o-ran-file-mgmt:credential-information;
    }

    list remote-file-uploads {
      key remote-file-upload-path;
      description
        "file upload can be done to one or more than one file servers

        An O-RU receiving this list should ignore the deprecated
        remote-SFTP-uploads list, if received";

      leaf remote-file-upload-path {
        type inet:uri;
        description
          "URI specifying the remote location where the files are to be uploaded.

          When upload is via SFTP, the format shall be of the form
          sftp://<username>@<host>[:port]/path
          When upload is via FTPES, the format shall be of the form
          ftpes://<username>@<host>[:port]/path

          Note, ftpes is not an IANA registered URI scheme, but used here to signal
          that a file transfer should be performed over FTPES";
      }

      uses o-ran-file-mgmt:credential-information;
    }

// transceiver measurements applicable to all O-RAN HW functions

    leaf transceiver-measurement-interval {
      type uint16;
      units seconds;
      description
        "measurement interval to measure the performance of transceiver
         measurement objects periodically.";
    }

// EPE measurements applicable to all O-RAN HW functions

    leaf epe-measurement-interval {
      type uint16;
      units seconds;
      description
        "measurement interval to measure the energy, power and environmental
         measurement objects periodically.";
    }

// RX Window measurements applicable to O-RAN WG4 defined functions

    leaf rx-window-measurement-interval {
      type uint16;
      units seconds;
      description
        "measurement interval to measure the performance of reception
         window measurement objects periodically.";
    }

    leaf tx-measurement-interval {
      type uint16;
      units seconds;
      description
        "measurement interval to measure the tx (outbound)
         window measurement objects periodically.";
    }

    leaf shared-cell-measurement-interval {
      if-feature feat:SHARED-CELL-STATS;
      type uint16;
      units seconds;
      description
        "measurement interval to measure the shared-cell measurement objects periodically.";
    }

    leaf symbol-rssi-measurement-interval {
      type uint16;
      units seconds;
      description
        "measurement interval to measure the symbol-wise TD-RSSI measurement objects periodically.";
    }

    leaf tssi-measurement-interval {
      type uint16;
      units seconds;
      description
        "Measurement interval to measure the tx TSSI measurement objects periodically.";
    }

    leaf rssi-measurement-interval {
      type uint16;
      units seconds;
      description
        "Measurement interval to measure the RSSI measurement objects periodically.";
    }

    leaf tx-antenna-measurement-interval {
      type uint16;
      units seconds;
      description
        "Measurement interval to measure the tx antenna measurement objects periodically.";
    }

    leaf tx-output-power-measurement-interval {
      type uint16;
      units seconds;
      description
        "measurement interval to measure the tx output power measurement objects periodically.";
    }

    leaf ethernet-measurement-interval {
      type uint16;
      units seconds;
      description
        "Measurement interval to measure the Ethernet measurement objects periodically.";
    }

    leaf notification-interval {
      type uint16;
      units seconds;
      description
        "notification interval for the measurement result to be notified
         periodically.";
    }

    leaf file-upload-interval {
      type uint16;
      units seconds;
      description
        "file upload interval for the measurement result file to be
         uploaded periodically.";
    }

    leaf max-bin-count{
      type uint16;
      config false;
      status deprecated;
      description
        "indicates the maximum value of configurable bin-count for frequency
         table in transceiver-measurement-objects as one of module
         capabilities.

         This leaf is deprecated and replaced with the max-bin-count in the
         transceiver-objects list.";
    }

    list transceiver-measurement-objects {
      key "measurement-object";
      description
        "optional list used to report transceiver measurements
        applicable to any O-RAN defined hardware function";
      leaf measurement-object {
        type enumeration {
          enum RX_POWER {
            description
              "Measured Rx input power in mW for SFP or lane 1 of QSFP";
          }
          enum RX_POWER_LANE_2 {
            description
              "Measured Rx input power in mW for lane 2 of QSFP";
          }
          enum RX_POWER_LANE_3 {
            description
              "Measured Rx input power in mW for lane 3 of QSFP";
          }
          enum RX_POWER_LANE_4 {
            description
              "Measured Rx input power in mW for lane 4 of QSFP";
          }
          enum TX_POPWER {
            status deprecated;
            description
              "Measured Tx input power in mW.";
          }
          enum TX_POWER {
            description
              "Measured Tx input power in mW.";
          }
          enum TX_POWER_LANE_2 {
            description
              "Measured Tx input power in mW for lane 2 of QSFP";
          }
          enum TX_POWER_LANE_3 {
            description
              "Measured Tx input power in mW for lane 3 of QSFP";
          }
          enum TX_POWER_LANE_4 {
            description
              "Measured Tx input power in mW for lane 4 of QSFP";
          }
          enum TX_BIAS_COUNT {
            description
              "Internally measured Tx Bias Current in mA for SFP or lane 1 of QSFP";
          }
          enum TX_BIAS_COUNT_LANE_2 {
            description
              "Internally measured Tx Bias Current in mA for lane 2 of QSFP";
          }
          enum TX_BIAS_COUNT_LANE_3 {
            description
              "Internally measured Tx Bias Current in mA for lane 3 of QSFP";
          }
          enum TX_BIAS_COUNT_LANE_4 {
            description
              "Internally measured Tx Bias Current in mA for lane 4 of QSFP";
          }
          enum VOLTAGE {
            description
              "Internally measured transceiver supply voltage in mV";
          }
          enum TEMPERATURE {
            description
              "Internally measured optional module temperature in degrees Celsius.";
          }
          enum LASER_TEMPERATURE {
            description
              "Internally measured optional laser temperature in degrees Celsius.";
          }
          enum TEC_CURRENT {
            description
              "Internally measured thermo-electric cooler (TEC) current per transceiver module in mA.
               TEC current is a positive number for cooling and a negative number for heating.";
          }
        }
        description "Target metric to measure the performance";
      }

      leaf active {
        type boolean;
        default false;
        description
          "Enable/disable the performance measurement per Object";
      }

      leaf-list report-info {
        type transceiver-report-info;
        description "The reporting info to the measurement object.";
      }

      leaf object-unit {
        type enumeration {
          enum PORT_NUMBER {
            description
              "unit to measure the performance per object-id";
          }
        }
        mandatory true;
        description "unit to measure the performance per object-id.";
      }

      leaf function {
        type transceiver-function;

        description
          "the value to be recorded for transceiver-measurement
           by real value or log 10.";
      }

      leaf bin-count {
        type uint16;

        description
          "the number of bin for the frequency table.
           This value shall be less than max-bin-count";
      }

      leaf lower-bound {
        type decimal64 {
          fraction-digits 4;
        }

        description
          "the lower value of the first bin of frequency table.";
      }

      leaf upper-bound {
        type decimal64 {
          fraction-digits 4;
        }

        description
          "the upper value of the last bin of frequency table.";
      }
      uses transceiver-measurement-result-grouping;
// configuration and measurement result for the transceiver-measurement

    }

    list rx-window-measurement-objects {
      key "measurement-object";
      description
        "optional list used to report RX Window measurements
        applicable to O-RAN WG4 define O-RU functions";
      leaf measurement-object {
        type enumeration {
          enum RX_ON_TIME {
            description
              "the number of data packets, received on time within
               the reception window.";
          }
          enum RX_EARLY {
            description
              "the number of data packets, received before
               the reception window.";
          }
          enum RX_LATE {
            description
              "the number of data packets, received after
               the reception window.";
          }
          enum RX_CORRUPT {
            description
              "the number of data packets, which are corrupt or whose header
               is incorrect.";
          }
          enum RX_DUPL {
            status deprecated;
            description
              "the number of data packets, which is duplicated with other packets,
               received within the measurement period.";
          }
          enum RX_TOTAL {
            description
              "the total number of received packets (data and control) within the measurement period.";
          }
          enum RX_ON_TIME_C {
            description
              "the number of control packets, received on time within
               the reception window.";
          }
          enum RX_EARLY_C {
            description
              "the number of control packets, received before
               the reception window.";
          }
          enum RX_LATE_C {
            description
              "the number of control packets, received after
               the reception window.";
          }
          enum RX_SEQID_ERR {
            description
              "the number of data packets, received with an erroneous sequence ID.";
          }
          enum RX_SEQID_ERR_C {
            description
              "the number of control packets, received with an erroneous sequence ID.";
          }
          enum RX_ERR_DROP {
            description
              "The total number of inbound messages which are discarded by the receiving
              O-RAN entity for any reason.";
          }
        }
        description
          "target reception window metric to measure the performance.";
      }

      leaf active {
        type boolean;
        default false;
        description
          "Enable/disable the performance measurement per reception window
           measurement object.";
      }

      leaf object-unit {
        type enumeration {
          enum RU {
            description
              "the reception window stats are counted per hardware component.
              This may be the parent 'module' or child 'port' component.";
          }
          enum TRANSPORT {
            if-feature GRANULARITY-TRANSPORT-MEASUREMENT;
            description
              "the reception window stats are counted per transport flow.
              When there are multiple transport flows between O-DU and O-RU,
               e.g. multiple sets of o-du-mac-address, ru-mac-address and
                    vlan-id, the reception window stats per transport flow
                    are counted in this case.
              This configuration is allowed only when O-RU supports
              a feature GRANULARITY-TRANSPORT-MEASUREMENT.";
          }
          enum EAXC_ID {
            if-feature GRANULARITY-EAXC-ID-MEASUREMENT;

            description
              "the reception window stats are counted per eAxC ID, which is
               used in the header of received data packet.
              This configuration is allowed only when O-RU supports
              a feature GRANULARITY-EAXC-ID-MEASUREMENT.";
          }
        }
        description
          "unit to measure the performance per object-id.";
      }

      leaf report-info {
        type enumeration {
          enum COUNT {
            description
              "the number of data packet are counted for the reception
               window stats.";
          }
        }
        description
          "The reporting info to the measurement object.";
      }

      uses rx-window-measurement-result-grouping;
// configuration and measurement result for the reception window stats
    }

    list tx-measurement-objects {
      key "measurement-object";
      description
        "optional list used to report TX measurements
        applicable to O-RAN WG4 define O-RU functions";
      leaf measurement-object {
        type enumeration {
          enum TX_TOTAL {
            description
              "the number of outbound packets (data and control), transmitted within
               the measurement period";
          }
          enum TX_TOTAL_C {
            description
              "the number of outbound control packets, transmitted within
               the measurement period.
               This counter is required only if RU supports LAA/LBT capabilities.";
          }
        }
        description
          "CU-plane transmission counters";
      }

      leaf active {
        type boolean;
        default false;
        description
          "Enable/disable the measurement per measurement object.";
      }

      leaf object-unit {
        type enumeration {
          enum RU {
            description
              "the transmission stats are counted per hardware component.
              This may be the parent 'module' or child 'port' component.";
          }
          enum TRANSPORT {
            if-feature GRANULARITY-TRANSPORT-MEASUREMENT;
            description
              "the transmission stats are counted per transport flow.
              When there are multiple transport flows between O-DU and O-RU,
               e.g. multiple sets of o-du-mac-address, ru-mac-address and
                    vlan-id, the transmission stats per transport flow
                    are counted in this case.
              This configuration is allowed only when O-RU supports
              a feature GRANULARITY-TRANSPORT-MEASUREMENT.";
          }
          enum EAXC_ID {
            if-feature GRANULARITY-EAXC-ID-MEASUREMENT;

            description
              "the transmission stats are counted per eAxC ID, which is
               used in the header of received data packet.
              This configuration is allowed only when O-RU supports
              a feature GRANULARITY-EAXC-ID-MEASUREMENT.";
          }
        }
        description
          "unit to measure the performance per object-id.";
      }

      leaf report-info {
        type enumeration {
          enum COUNT {
            description
              "the number of data packet are counted for the reception
               window stats.";
          }
        }
        description
          "The reporting info to the measurement object.";
      }

      uses tx-measurement-result-grouping;
    // configuration and measurement result for the tx stats
    }

    list shared-cell-measurement-objects {
      if-feature feat:SHARED-CELL-STATS;
      key "measurement-object";
      description
        "optional list used to report shared-cell measurements.";
      leaf measurement-object {
        type enumeration {
          enum RX_UP_UL {
            description
              "the number of received U-Plane data packets in UL direction, corresponds to shared-cell-combine-entity.
              Refer to WG4 CUS secification clause 9.1.";
          }
          enum RX_UP_UL_COMBINED {
            description
              "the number of U-Plane data packets, which is processed by combine functional block.
              Refer to WG4 CUS secification clause 9.1.";
          }
         }
        description
          "target metric to measure shared-cell operation.";
      }
      leaf active {
        type boolean;
        default false;
        description
          "Enable/disable the performance measurement per port
           measurement object.";
      }
      leaf object-unit {
        type enumeration {
          enum TRANSPORT {
            description
              "unit to measure the performance per object-id,
               the shared-cell stats are counted per TRANSPORT.";
          }
        }
        description "unit to measure the performance per object-id.";
      }
      leaf report-info {
        type enumeration {
          enum COUNT {
            description
              "the number of data packet are counted for shared-cell stats.";
          }
        }
        description
          "The reporting info to the measurement object.";
      }
      uses  shared-cell-measurement-result-grouping;
// configuration and measurement result for the shared-cell stats
    }

    list epe-measurement-objects {
      key "measurement-object";
      description
        "optional list used to report energy, power and environmental
        measurements applicable to any O-RAN defined hardware function";
      leaf measurement-object {
        type enumeration {
          enum TEMPERATURE {
            description
              "Measured temperature in degrees Celsius";
          }
          enum POWER  {
            description
              "Measured power consumed, in watts (W)";
          }
          enum VOLTAGE  {
            description
              "Measured voltage, in volts (V)";
          }
          enum CURRENT  {
            description
              "Measured current consumption, in amperes (A)";
          }
        }
        description "Target metric to measure the performance";
      }

      leaf active {
        type boolean;
        default false;
        description
          "Enable/disable the performance measurement per Object";
      }

      leaf object-unit {
        type leafref {
          path "/hw:hardware/hw:component/hw:class";
        }
        description
          "the hardware component type is used for the object-unit for the
           EPE measurements. For example, the object-unit will be set to
           or-hw:O-RU-POWER-AMPLIFIER if the measurement relates to
           O-RU power amplifiers.

           Other hardware-classes include:
           ianahw:power-supply, ianahw:fan, ianahw:cpu";
      }

      leaf-list report-info {
        type epe-report-info;
        description "The reporting info to the measurement object.";
      }

      leaf bin-count {
        type uint16;
        description
          "the number of bin for the frequency table.
          This value shall be less than max-bin-count";
      }
      leaf lower-bound {
        type decimal64 {
          fraction-digits 4;
        }
        description
          "the lower value of the first bin of frequency table.";
      }
      leaf upper-bound {
        type decimal64 {
          fraction-digits 4;
        }
        description
          "the upper value of the last bin of frequency table.";
      }
      uses epe-measurement-result-grouping;
    // configuration and measurement result for the epe-measurement
    }

    list symbol-rssi-measurement-objects {
      key "measurement-object";
      description
        "optional list used to measure and report symbol-wise time domain RSSI for all UL symbols or configured symbols";

      leaf measurement-object {
        type enumeration {
          enum ALL-UL-SYMBOLS {
            description
              "Measure and report symbol-rssi separately for all UL symbols in every configured number of slots (as defined by 'period' in 'symbol-rssi-measurement-objects'.
               And the UL symbols are decided by 'configurable-tdd-pattern', 'static-srs-configuration', 'static-prach-configuration',
               and 'dataDirection' in the C-plane messages.
               This option is recommended for static TDD case. If this option is used in dynamic TDD case, then O-RU measures
               only the allocates UL symbols because O-RU may not know 'candidate UL symbols' which are not allocated. ";
          }

          enum CONFIGURED-SYMBOLS {
            description
              "Measure and report symbol-rssi separately for all configured symbols as defined by the leaf-list 'symbol-index',
              This can be used for non-dynamic TDD as well as dynamic TDD cases,
              the O-RU should measure all configured symbols, irrespective of whether the UL symbol is allocated or not,
              If a c-plane message indicates a symbol within this 'symbol-index' list to be a DL symbol,
              O-RU shall not measure RSSI on this symbol.";
          }
        }
        description "Target metric to measure the symbol-rssi";
      }

      leaf object-unit {
        type enumeration {
          enum RX-ARRAY-CARRIER {
            description
              "unit to measure the performance per object-id,
               only the rx-array-carriers which are not configured with mixed numerology will be measured";
          }
        }
        mandatory true;
        description "unit to measure the performance per object-id.";
      }

      list per-rx-array-carrier-configuration {
        key "rx-array-carrier";
        description
          "measurement configuration per rx-array-carrier to accommodate different Subcarrier Spacing
           and TDD pattern per rx-array-carrier, and only the symbol-wise TD-RSSI of the rx-array-carriers
           included in per-rx-array-carrier-configuration will be measured and reported";

        leaf rx-array-carrier {
          type leafref {
            path "/up:user-plane-configuration/up:rx-array-carriers/up:name";
          }
          description "reference to the name of rx-array-carriers";
        }

        leaf period  {
          type uint16;

          description
            "the number of slots that correspond to the period of a TDD-Configuration,
             and the start point of the 1st period is subframe#0, slot#0 of the 1st even number radio frame after this configuration is received,
             here even number radio frame is used because according to 3GPP TS 38.213, A UE expects that P1 + P2 divides 20 msec";
        }

        leaf-list symbol-index  {
          type uint16;

          description
            "the index of the symbols within 'period'. The first symbol within the 'period is symbol-index=0, next symbol is symbol-index =1 etc.
             This symbol-index is different from how symbolId is defined in CUS plane spec.
             These symbols are configured for O-RU to measure and report symbol-wise rssi,
             used only when 'measurement-object' = 'CONFIGURED-SYMBOLS'.
             If a c-plane message indicates a symbol within this 'symbol-index' list to be a DL symbol,
             O-RU shall not measure rssi on this symbol";
        }

        leaf active {
          type boolean;
          default false;
          description
            "Enable/disable the symbol-rssi measurement per Object";
        }

        leaf-list report-info {
          type symbol-rssi-report-info;
          description "The reporting info to the measurement object.";
        }

        leaf bin-count {
          type uint16;

          description
            "the number of bin for the frequency table.
             This value shall be less than max-bin-count";
        }

        leaf lower-bound {
          type int16;
          units dBm;
          description
            "the lower value of the first bin of frequency table.";
        }

        leaf upper-bound {
          type int16;
          units dBm;
          description
            "the upper value of the last bin of frequency table.";
        }
      }
      uses symbol-rssi-measurement-result-grouping;
      // configuration and measurement result for the symbol-rssi-measurement
    }

    list tssi-measurement-objects {
      key "measurement-object";
      description
        "optional list used to measure and report time domain TSSI for per tx-array-carrier on specific tx-array-element.";
      leaf measurement-object {
        type enumeration {
          enum TSSI-IQ-POWER-LEVEL {
            description
              "Measured TSSI (Transmit Signal Strength Indicator) digital IQ Power level for each Tx array carrier on the specific array element";
          }
        }
        description "Target metric to measure the tssi";
      }

      leaf active {
        type boolean;
        default false;
        description
          "Enable/disable the TSSI measurement per object";
      }

      leaf object-unit {
        type enumeration {
          enum CARRIER_ARRAY_ELEMENT {
            description
              "Unit to measure the performance per object-id.";
          }
        }
        mandatory true;
        description "unit to measure the performance per object-id.";
      }

      leaf-list report-info {
        type tssi-report-info;
        description "The reporting info to the measurement object.";
       }
      uses tssi-measurement-result-grouping;
      // configuration and measurement result for the tssi-measurement
    }

    list rssi-measurement-objects {
      key "measurement-object";
      description
        "optional list used to measure and report time domain RSSI for per rx-array-carrier on specific rx-array-element.";
      leaf measurement-object {
        type enumeration {
          enum RSSI {
            description
              "Measured RSSI (Received Signal Strength Indicator) for each Rx array carrier on the specific array element in dbm";
          }
        }
        description "Target metric to measure the rssi";
      }
      leaf active {
        type boolean;
        default false;
        description
          "Enable/disable the RSSI measurement per object";
      }
      leaf object-unit {
        type enumeration {
          enum CARRIER_ARRAY_ELEMENT {
            description
              "Unit to measure the performance per object-id.";
          }
        }
        mandatory true;
        description "unit to measure the performance per object-id.";
      }
      leaf-list report-info {
        type rssi-report-info;
        description "The reporting info to the measurement object.";
      }
      uses rssi-measurement-result-grouping;
      // configuration and measurement result for the rssi-measurement
    }

    list tx-antenna-measurement-objects {
      key "measurement-object";
      description
        "Optional list used to report tx-antenna measurements.";
      leaf measurement-object {
        type enumeration {
          enum VSWR {
            description
              "Measure and report values of VSWR.";
          }
        }
        description "Target metric to measure the tx-antenna measurements.";
      }

      leaf active {
        type boolean;
        default false;
        description
          "Enable/disable the performance measurement per Object";
      }

      leaf-list report-info {
        type tx-antenna-report-info;
        description "The reporting info to the measurement object.";
      }

      leaf object-unit {
        type tx-antenna-object-unit;
        mandatory true;
        description "Unit to measure the performance per object-id.";
      }

      leaf bin-count {
        type uint16;

        description
          "The number of bin for the frequency table.
           This value shall be less than max-bin-count";
      }

      leaf lower-bound {
        type decimal64 {
          fraction-digits 4;
        }

        description
          "The lower value of the first bin of frequency table.";
      }

      leaf upper-bound {
        type decimal64 {
          fraction-digits 4;
        }

        description
          "The upper value of the last bin of frequency table.";
      }
      uses tx-antenna-measurement-result-grouping;
      // configuration and measurement result for the tx-antenna-measurement
    }

    list tx-output-power-measurement-objects {
      key "measurement-object";
      description
        "Optional list used to report tx output power measurement";

      leaf measurement-object {
        type enumeration {
          enum TX-OUTPUT-POWER {
            description
              "Measured or estimated tx output power for different object units.";
          }
        }
        description "Target metric to measure the Tx output power";
      }
      leaf active {
        type boolean;
        default false;
        description
          "Enable/disable the tx output power measurement per object";
      }
      leaf object-unit {
        type tx-output-power-object-unit;
        mandatory true;
        description "unit to measure the performance per object-id.";
      }

      leaf-list report-info {
        type tx-output-power-report-info;
        description "The reporting info to the measurement object.";
      }

      uses tx-output-power-measurement-result-grouping;
      // configuration and measurement result for the tx-output-power-measurement
    }

    list ethernet-measurement-objects {
      key "measurement-object";
      description
        "Optional list used to report Ethernet measurements.";
      leaf measurement-object {
        type enumeration {
          enum IN-OCTETS {
            description
              "The total number of octets received on the interface,
               including framing characters.";
            reference
              "RFC 2863: The Interfaces Group MIB - ifHCInOctets";
          }
          enum IN_UNICAST-PKTS {
            description
              "The number of packets, delivered by this sub-layer to a
               higher (sub-)layer, that were not addressed to a
               multicast or broadcast address at this sub-layer.";
            reference
              "RFC 2863: The Interfaces Group MIB - ifHCInUcastPkts";
          }
          enum IN-BROADCAST-PKTS {
            description
              "The number of packets, delivered by this sub-layer to a
               higher (sub-)layer, that were addressed to a broadcast
               address at this sub-layer.";
            reference
              "RFC 2863: The Interfaces Group MIB - ifHCInBroadcastPkts";
          }
          enum IN-MULTICAST-PKTS {
            description
              "The number of packets, delivered by this sub-layer to a
               higher (sub-)layer, that were addressed to a multicast
               address at this sub-layer. For a MAC-layer protocol,
               this includes both Group and Functional addresses.";
            reference
              "RFC 2863: The Interfaces Group MIB - ifHCInMulticastPkts";
          }
          enum IN-DISCARDS {
            description
              "The number of inbound packets that were chosen to be
               discarded even though no errors had been detected to
               prevent their being deliverable to a higher-layer
               protocol.";
            reference
              "RFC 2863: The Interfaces Group MIB - ifInDiscards";
          }
          enum IN-ERRORS {
            description
              "For packet-oriented interfaces, the number of inbound
               packets that contained errors preventing them from being
               deliverable to a higher-layer protocol.";
            reference
              "RFC 2863: The Interfaces Group MIB - ifInErrors";
          }
          enum IN-UNKNOWN-PROTOS {
            description
              "For packet-oriented interfaces, the number of packets
               received via the interface that were discarded because
               of an unknown or unsupported protocol.";
            reference
              "RFC 2863: The Interfaces Group MIB - ifInUnknownProtos";
          }
          enum IN-CRC-ERRORS {
            description
              "the number of received frames with CRC errors.";
          }
          enum IN-FEC-CORRECTABLE-BLOCKS {
            description
              "the number of received erroneous blocks
               which were corrected with application
               of Forward Error Correction (FEC).";
            reference
              "IEEE 802.3 - aFECCorrectableBlocks";
          }
          enum IN-FEC-UNCORRECTABLE-BLOCKS {
            description
              "the number of received erroneous blocks
               which could not be corrected with application
               of Forward Error Correction (FEC).";
            reference
              "IEEE 802.3 - aFECUncorrectableBlocks";
          }
          enum IN-PCS-STATUS-CHANGE-COUNT {
            description
              "the number of times PCS (Physical Coding Layer)
               of the receiver lost its operational state.

               PCS operational state is defined in IEEE 802.3-2022, clause 49.";
          }
          enum OUT-OCTETS {
            description
              "The total number of octets transmitted out of the
               interface, including framing characters.";
            reference
              "RFC 2863: The Interfaces Group MIB - ifHCOutOctets";
          }
          enum OUT-UNICAST-PKTS {
            description
              "The total number of packets that higher-level protocols
               requested be transmitted and that were not addressed
               to a multicast or broadcast address at this sub-layer,
               including those that were discarded or not sent.";
            reference
              "RFC 2863: The Interfaces Group MIB - ifHCOutUcastPkts";
          }
          enum OUT-BROADCAST-PKTS {
            description
              "The total number of packets that higher-level protocols
               requested be transmitted and that were addressed to a
               broadcast address at this sub-layer, including those
               that were discarded or not sent.";
            reference
              "RFC 2863: The Interfaces Group MIB - ifHCOutBroadcastPkts";
          }
          enum OUT-MULTICAST-PKTS {
            description
              "The total number of packets that higher-level protocols
               requested be transmitted and that were addressed to a
               multicast address at this sub-layer, including those
               that were discarded or not sent.  For a MAC-layer
               protocol, this includes both Group and Functional
               addresses.";
            reference
              "RFC 2863: The Interfaces Group MIB - ifHCOutMulticastPkts";
          }
          enum OUT-DISCARDS {
            description
              "The number of outbound packets that were chosen to be
               discarded even though no errors had been detected to
               prevent their being transmitted.  One possible reason
               for discarding such a packet could be to free up buffer
               space.";
            reference
              "RFC 2863: The Interfaces Group MIB - ifOutDiscards";
          }
          enum OUT-ERRORS {
            description
              "For packet-oriented interfaces, the number of outbound
               packets that could not be transmitted because of errors.";
            reference
              "RFC 2863: The Interfaces Group MIB - ifOutErrors";
          }
        }
        description "Target Ethernet metric to measure the performance";
      }

      leaf active {
        type boolean;
        default false;
        description
          "Enable/disable the performance measurement per object";
      }

      leaf-list report-info {
        type ethernet-report-info;
        description "The reporting info to the measurement object.";
      }

      leaf object-unit {
        type enumeration {
          enum ETH_INTERFACE {
            description
              "unit to measure the performance per object-id,
               the Ethernet stats are counted per ETH_INTERFACE.";
          }
        }
        mandatory true;
        description "unit to measure the performance per object-id.";
      }
      uses ethernet-measurement-result-grouping;
    }
  }

  grouping measurement-capabilities {
    description "a measurement capabilities grouping";
    container measurement-capabilitites {
      config false;
      description "the type of measurement objects supported by the O-RU";

      list transceiver-objects {
        key measurement-object;
        description "list of transceiver objects";
        leaf measurement-object {
          type leafref {
            path "/performance-measurement-objects/transceiver-measurement-objects/measurement-object";
            require-instance false;
          }
          description "a measurement object";
        }
        leaf-list report-info {
          type transceiver-report-info;
          description "The reporting info supported by this measurement object.";
        }
        leaf-list function {
          type transceiver-function;
          description "The function supported by this measurement object.";
        }
        leaf max-bin-count{
          type uint16;
          config false;
          description
            "when O-RU supports FREQUENCY_TABLE, indicates the maximum value of
            configurable bin-count for frequency table in transceiver-measurement-objects.";
        }
      }
      list rx-window-objects {
        key measurement-object;
        description "list of rx window objects";
        leaf measurement-object {
          type leafref {
            path "/performance-measurement-objects/rx-window-measurement-objects/measurement-object";
            require-instance false;
          }
          description "a measurement object";
        }
      }
      list tx-stats-objects {
        key measurement-object;
        description "list of tx stats objects";
        leaf measurement-object {
          type leafref {
            path "/performance-measurement-objects/tx-measurement-objects/measurement-object";
            require-instance false;
          }
          description "a measurement object";
        }
      }
      list shared-cell-stats-objects {
        if-feature feat:SHARED-CELL-STATS;
        key measurement-object;
          description "list of shared-cell stats objects";
        leaf measurement-object {
          type leafref {
            path "/performance-measurement-objects/shared-cell-measurement-objects/measurement-object";
            require-instance false;
          }
          description "a measurement object";
        }
      }
      list epe-stats-objects {
        key "measurement-object";
        description
          "An optional list describing the energy, power and environmental measurements supported
          by the O-RU. Measurements are defined per hardware component.";
        leaf measurement-object {
          type leafref {
            path "/performance-measurement-objects/epe-measurement-objects/measurement-object";
            require-instance false;
          }
          description "a measurement object";
        }
        leaf-list component-class {
          type identityref {
            base ianahw:hardware-class;
          }
          description
            "An indication of the general hardware type of the
             component for which EPE measurements are supported.";

        }
        leaf-list report-info {
          type epe-report-info;
          description "The reporting info supported of this measurement object.";
        }
        leaf max-bin-count{
          type uint16;
          config false;
          description
            "when O-RU supports FREQUENCY_TABLE, indicates the maximum value of
            configurable bin-count for frequency table in epe-measurement-objects.";
        }
      }

      list symbol-rssi-stats-objects {
        key measurement-object;
        description "list of symbol-wise TD-RSSI stats objects";
        leaf measurement-object {
          type leafref {
            path "/performance-measurement-objects/symbol-rssi-measurement-objects/measurement-object";
            require-instance false;
          }
          description "a measurement object";
        }
        leaf-list report-info {
          type symbol-rssi-report-info;
          description "The reporting info supported for thise measurement object.";
        }
        leaf max-bin-count{
          type uint16;
          config false;
          description
            "when O-RU supports FREQUENCY_TABLE, indicates the maximum value of
            configurable bin-count for frequency table in symbol-rssi-stats-objects.";
        }
      }

      list tssi-stats-objects {
        key measurement-object;
        description "list of TSSI stats objects";
        leaf measurement-object {
          type leafref {
            path "/performance-measurement-objects/tssi-measurement-objects/measurement-object";
          }
          description "a measurement object";
        }
        leaf-list report-info {
          type tssi-report-info;
          description "The reporting info supported for thise measurement object.";
        }
      }

      list rssi-stats-objects {
        key measurement-object;
        description "list of RSSI stats objects";
        leaf measurement-object {
          type leafref {
            path "/performance-measurement-objects/rssi-measurement-objects/measurement-object";
          }
          description "a measurement object";
        }
        leaf-list report-info {
          type rssi-report-info;
          description "The reporting info supported for thise measurement object.";
        }
      }

      list tx-antenna-stats-objects {
        key measurement-object;
        description "list of tx antenna objects";
        leaf measurement-object {
          type leafref {
            path "/performance-measurement-objects/tx-antenna-measurement-objects/measurement-object";
            require-instance false;
          }
          description "a measurement object";
        }

        leaf-list object-unit {
          type tx-antenna-object-unit;
          description "The object units supported for this measurement object.";
        }

        leaf-list report-info {
          type tx-antenna-report-info;
          description "The reporting info supported for this measurement object.";
        }

        leaf max-bin-count{
          type uint16;
          config false;
          description
            "when O-RU supports FREQUENCY_TABLE, indicates the maximum value of
            configurable bin-count for frequency table in tx-antenna-stats-objects.";
        }
      }
      list tx-output-power-stats-objects {
        key measurement-object;
        description "list of Tx output power stats objects";
        leaf measurement-object {
          type leafref {
            path "/performance-measurement-objects/tx-output-power-measurement-objects/measurement-object";
            require-instance false;
          }
          description "a measurement object";
        }
        leaf-list report-info {
          type tx-output-power-report-info;
          description "The reporting info supported of this measurement object.";
        }
      }

      list ethernet-objects {
        key measurement-object;
        description "list of ethernet objects";
        leaf measurement-object {
          type leafref {
            path "/performance-measurement-objects/ethernet-measurement-objects/measurement-object";
            require-instance false;
          }
          description "a measurement object";
        }
      }
    }
  }

  grouping measurement-notification {

    description
      "notification may contain measurement result for transceiver-stats
       and/or rx-window-stats and/or tx-stats and/or epe-stats";
    list transceiver-stats {
      key "measurement-object";

      description
        "measurement result of transceiver-measurement per measurement-object";
      leaf measurement-object {
        type leafref {
          path "/performance-measurement-objects/transceiver-measurement-objects/measurement-object";
        }

        description
          "measurement-object for the transceiver-measurement";
      }

      uses start-and-end-time;
      uses transceiver-measurement-result-grouping;

      list multiple-transceiver-measurement-result {
        config false;
        description
          "Multiple measurement results of transceiver-measurement.

          The O-RU shall use this list to report one or more measurements per measurement-object in a single notification.

          In addition, the O-RU shall always use the

          measurement-result-stats/transceiver-stats[measurement-object]/transceiver-measurement-result

          schema-node to report a single transceiver measurement-object. The O-RU should report its latest
          transceiver measurements available. This ensures O-DUs supporting earlier versions
          of this specification can recover the measurement.";

        uses start-and-end-time;
        uses transceiver-measurement-result-grouping;
      }

    }

    list rx-window-stats {
      key "measurement-object";

      description
        "measurement result for the reception window measurement per
         measurement-object";
      leaf measurement-object {
        type leafref {
          path "/performance-measurement-objects/rx-window-measurement-objects/measurement-object";
        }

        description
          "measurement-object for the reception window measurement";
      }
      uses start-and-end-time;
      uses rx-window-measurement-result-grouping;

      list multiple-rx-window-measurement-result {
        config false;
        description
          "Multiple measurement results of rx-window-measurement.

          The O-RU shall use this list to report one or more measurements per measurement-object in a single notification.

          In addition, the O-RU shall always use one of the

          measurement-result-stats/rx-window-stats[measurement-object]/count or
          measurement-result-stats/rx-window-stats[measurement-object]/tr-measured-result/count or
          measurement-result-stats/rx-window-stats[measurement-object]/eaxc-measured-result/count

          schema-nodes to report a single rx-window measurement-object. The O-RU should report its latest
          rx-window measurement available. This ensures O-DUs supporting earlier versions
          of this specification can recover the measurement.";

        uses start-and-end-time;
        uses rx-window-measurement-result-grouping;
      }

    }

    list tx-stats {
      key "measurement-object";

      description
        "measurement result for the tx stats measurement per
         measurement-object";
      leaf measurement-object {
        type leafref {
          path "/performance-measurement-objects/tx-measurement-objects/measurement-object";
        }

        description
          "measurement-object for the tx stats measurement";
      }
      uses start-and-end-time;
      uses tx-measurement-result-grouping;

      list multiple-tx-measurement-result {
        config false;
        description
          "Multiple measurement results of tx-measurement.

          The O-RU shall use this list to report one or more measurements per measurement-object in a single notification.

          In addition, the O-RU shall always use one of the

          measurement-result-stats/tx-stats[measurement-object]/count or
          measurement-result-stats/tx-stats[measurement-object]/tr-measured-result/count or
          measurement-result-stats/tx-stats[measurement-object]/eaxc-measured-result/count

          schema-nodes to report a single tx-measurement. The O-RU should report its latest
          tx-measurement available. This ensures O-DUs supporting earlier versions
          of this specification can recover the measurement.";

        uses start-and-end-time;
        uses tx-measurement-result-grouping;
      }

    }

    list shared-cell-stats {
        if-feature feat:SHARED-CELL-STATS;
        key "measurement-object";

        description
          "measurement result for the shared-cell measurement per measurement-object";
        leaf measurement-object {
          type leafref {
            path "/performance-measurement-objects/shared-cell-measurement-objects/measurement-object";
          }
          description
            "measurement-object for the shared-cell measurement";
        }

        list multiple-shared-cell-measurement-result {
          config false;
          description
            "Multiple measurement results of shared-cell-measurement.";

          uses start-and-end-time;
          uses shared-cell-measurement-result-grouping;

        }
      }

    container epe-stats {
      status deprecated;
      description
        "container for the EPE stats measurement - deprecated because measurement object
        isn't included";

      uses start-and-end-time;
      uses epe-measurement-result-grouping;

    }

    list epe-statistics {
      key "measurement-object";

      description
        "measurement result for the EPE stats measurement per
         measurement-object";
      leaf measurement-object {
        type leafref {
          path "/performance-measurement-objects/epe-measurement-objects/measurement-object";
        }

        description
          "measurement-object for the EPE stats measurement";
      }
      uses start-and-end-time;
      uses epe-measurement-result-grouping;

      list multiple-epe-measurement-result {
        config false;
        description
          "Multiple measurement results of epe-measurement.

          The O-RU shall use this list to report one or more measurements per measurement-object in a single notification.

          In addition, the O-RU shall use the

          measurement-result-stats/epe-statistics[measurement-object]/epe-measurement-resultv2/

          schema-nodes to report a single epe-measurement for a measurement-object. The O-RU
          should report its latest epe-measurement available. This ensures O-DUs supporting earlier
          versions of this specification can recover the measurement.";

        uses start-and-end-time;
        uses epe-measurement-result-grouping;
      }

    }

    list symbol-rssi-stats {
      key "measurement-object";

      description
        "measurement result of symbol-rssi-measurement per measurement-object";
      leaf measurement-object {
        type leafref {
          path "/performance-measurement-objects/symbol-rssi-measurement-objects/measurement-object";
        }

        description
          "measurement-object for the symbol-rssi-measurement";
      }

      uses start-and-end-time;
      uses symbol-rssi-measurement-result-grouping;

      list multiple-symbol-rssi-measurement-result {
        config false;
        description
          "Multiple measurement results of symbol-rssi-measurement.

          The O-RU shall use this list to report one or more measurements per measurement-object in a single notification.

          In addition, the O-RU shall always use one of the

          measurement-result-stats/symbol-rssi-stats[measurement-object]/

          schema-nodes to report a single symbol-rssi measurement for a measurement-object.
          The O-RU should report its latest symbol-rssi measurement available.";

         uses start-and-end-time;
         uses symbol-rssi-measurement-result-grouping;
      }
    }

    list tssi-stats {
      key "measurement-object";
      description
        "Measurement result of tssi per measurement-object";
      leaf measurement-object {
        type leafref {
          path "/performance-measurement-objects/tssi-measurement-objects/measurement-object";
        }
        description
          "measurement-object for the tx-array-carriers";
      }

      list tssi-measurement-result {
        config false;
        description
          "Multiple measurement results of tssi-measurement.
          The O-RU shall use this list to report one or more measurements per measurement-object in a single notification.";
        uses start-and-end-time;
        uses tssi-measurement-result-grouping;
      }
    }

    list rssi-stats {
      key "measurement-object";
      description
        "Measurement result of rssi per measurement-object";
      leaf measurement-object {
        type leafref {
          path "/performance-measurement-objects/rssi-measurement-objects/measurement-object";
        }
        description
          "measurement-object for the rx-array-carrier";
      }
      list rssi-measurement-result {
        config false;
        description
          "Multiple measurement results of rssi-measurement.
          The O-RU shall use this list to report one or more measurements per measurement-object in a single notification.";
        uses start-and-end-time;
        uses rssi-measurement-result-grouping;
      }
    }

    list tx-antenna-stats {
      key "measurement-object";

      description
        "Measurement result of tx-antenna-measurement per measurement-object";
      leaf measurement-object {
        type leafref {
          path "/performance-measurement-objects/tx-antenna-measurement-objects/measurement-object";
        }

        description
          "measurement-object for the tx-antenna-measurement";
      }

      list tx-antenna-measurement-result {
        config false;
        description
          "Multiple measurement results of tx-antenna-measurement.

          The O-RU shall use this list to report one or more measurements per measurement-object in a single notification.";

        uses start-and-end-time;
        uses tx-antenna-measurement-result-grouping;
      }
    }

    list tx-output-power-stats {
      key "measurement-object";
      description
        "measurement result of tx-output-power-measurement per measurement-object";
      leaf measurement-object {
        type leafref {
          path "/performance-measurement-objects/tx-output-power-measurement-objects/measurement-object";
        }

        description
          "measurement-object for the tx-output-power-measurement";
      }

      list tx-output-power-measurement-result {
        config false;
        description
          "Measurement results of tx-output-power-measurement.

          The O-RU shall use this list to report one or more measurements per measurement-object in a single notification.";

        uses start-and-end-time;
        uses tx-output-power-measurement-result-grouping;
      }
    }

    list ethernet-stats {
      key "measurement-object";
      description
        "measurement result of ethernet-measurement per measurement-object";
      leaf measurement-object {
        type leafref {
          path "/performance-measurement-objects/ethernet-measurement-objects/measurement-object";
          require-instance false;
        }
        description
          "measurement-object for the ethernet-measurement";
      }

      list ethernet-measurement-results {
        config false;
        description
          "Multiple measurement results of ethernet-measurement.

          The O-RU shall use this list to report one or more measurements per measurement-object in a single notification.";
        uses start-and-end-time;
        uses ethernet-measurement-result-grouping;
      }
    }
  }

  // Top level container
  container performance-measurement-objects {
    description
      "configuration for performance management and measurement-result are
       included";
    uses measurement-group;
  }

// Notifications
  notification measurement-result-stats {
    description
      "Notification may contain measurement results for transceiver-stats
       and/or rx-window-stats";
    uses measurement-notification;
  }
}

## File: RU Specific Models/Operations/o-ran-udp-echo.yang

module o-ran-udp-echo {
  yang-version 1.1;
  namespace "urn:o-ran:udpecho:1.0";
  prefix "o-ran-echo";

  import o-ran-interfaces {
    prefix "o-ran-int";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module covers off aspects of interface transport
    verification for UDP/IP based C/U plane connections based on UDP Echo.

    Copyright 2019 the O-RAN Alliance.

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

  revision "2019-02-04" {
    description
      "version 1.0.0

      1) imported model from xRAN
      2) changed namespace and reference from xran to o-ran";

    reference "ORAN-WG4.M.0-v01.00";
  }

// groupings

  grouping udp-echo-group {
    description "a udp echo grouping";
    leaf enable-udp-echo {
      type boolean;
      default false;
      description
        "whether O-RU's UDP ech server is enabled";
    }

    leaf dscp-config {
      type enumeration {
        enum REFLECTIVE {
          description
            "DSCP in echoed datagrams is copied from received datagram";
        }
        enum EF {
          description
            "DSCP in echoed datagrams is always be set to expeditied
            forwarding Per Hop Behaviour.";
        }
      }
      default EF;
      description "configuration of UDP echo DSCP";
    }

    leaf echo-replies-transmitted {
      type uint32;
      config false;
      description
        "The total number of UDP echo replies transmitted by the O-RU.";
    }
  }

  container udp-echo {
    if-feature o-ran-int:UDPIP-BASED-CU-PLANE;
    description "container for udp echo";

    uses udp-echo-group;
  }
}

## File: RU Specific Models/Operations/o-ran-ecpri-delay.yang

module o-ran-ecpri-delay {
  yang-version 1.1;
  namespace "urn:o-ran:message5:1.0";
  prefix "o-ran-msg5";

  import o-ran-processing-element {
    prefix "element";
  }

  import o-ran-wg4-features {
     prefix "feat";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module is an optional module for supporting eCPRI message 5 handling
    used for eCPRI based delay measurements.

    Copyright 2023 the O-RAN Alliance.

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

  revision "2023-12-23" {
    description
      "version 17.0.0

      1) deprecating tcv1 and tcv2.";

    reference "ORAN-WG4.M.0-v17.00";
  }

  revision "2023-08-14" {
    description
      "version 8.1.0

      1) Clarifying T12 support.";

    reference "ORAN-WG4.M.0-v08.00";
  }

  revision "2021-12-01" {
    description
      "version 8.0.0

      1) typographical corrections in descriptions.
      2) Add support for multiple transport-session-type per O-RU.";

    reference "ORAN-WG4.M.0-v08.00";
  }

  revision "2021-07-26" {
    description
      "version 7.0.0

      1) add support for optional reporting of one or two-step measurements";

    reference "ORAN-WG4.M.0-v07.00";
  }

  revision "2019-02-04" {
    description
      "version 1.0.0

      1) imported model from xRAN
      2) changed namespace and reference from xran to o-ran";

    reference "ORAN-WG4.M.0-v01.00";
  }

// groupings

  grouping msg5-group {
    description "an eCPRI message 5 grouping";

    container ru-compensation {
      config false;
      status deprecated;
      description
        "leafs for ru timing compensation based on message 5 handling.
        The use of this container is deprecated as the values of tcv1 and tcv2
        are present in:
        i) Request/Resp messages in 1-Step method of delay measurement, and
        ii) Follow-up REQ/Resp message in 2-step delay measurement.";
      leaf tcv2 {
        type uint32;
        units nanoseconds;
        description
          "a compensation value to account for expected delay from packet
          receipt at R2 to timestamping in the O-RU";
      }
      leaf tcv1 {
        type uint32;
        units nanoseconds;
        description
          "a compensation value to account for expected processing time from
          timestamping in the O-RU until actual packet transmission at R3";
      }
    }

    leaf enable-message5 {
      type boolean;
      default false;
      description
        "whether O-RU's eCPRI message 5 handling is enabled.";
    }

    leaf one-step-t34-supported {
      type boolean;
      config false;
      description
        "Indicates whether O-RU supports eCPRI message 5 one-step procedure for
        T34 measurements.
        An O-RU supporting this YANG module shall at least set one of
        one-step-t34-supported or two-step-t34-supported to true.

        Note, an O-RU supporting this YANG module follows the rules of T12 support
        as defined in O-RAN CUS-Plane, Table 10.2-1.";
    }

    leaf two-step-t34-supported {
      type boolean;
      config false;
      description
        "Indicates whether O-RU supports eCPRI message 5 two-step procedure for
        T34 measurements.
        An O-RU supporting this YANG module shall at least set one of
        one-step-t34-supported or two-step-t34-supported to true

        Note, an O-RU supporting this YANG module follows the rules of T12 support
        as defined in O-RAN CUS-Plane, Table 10.2-1";
    }

    container message5-sessions {
      description "session information for eCPRI message 5";

      list session-parameters {
        key "session-id";
        description "list of MSG5 session information";
        leaf session-id {
          type uint32;
          description "Session ID for MSG5 responder";
        }
        leaf processing-element-name {
          type leafref {
            path "/element:processing-elements/element:ru-elements/element:name";
          }
          description "the name of the processing element used for MSG5";
        }

        leaf transport-session-type {
          if-feature "feat:MULTIPLE-TRANSPORT-SESSION-TYPE";
          type enumeration {
            enum ETH-INTERFACE {
              description "VLAN based CUS Transport ";
            }
            enum UDPIP-INTERFACE {
              description "UDP/IP based CUS Transport ";
            }
            enum ALIASMAC-INTERFACE{
              description "Alias MAC address based CUS Transport ";
            }
          }
          description
            "transport session type used when an O-RU is configured with multiple processing elements of different transport session types,
             in which case it is used for referencing a processing element in 'transport-qualified-processing-element-name'";
        }

        leaf transport-qualified-processing-element-name {
          if-feature "feat:MULTIPLE-TRANSPORT-SESSION-TYPE";
          type leafref {
            path "/element:processing-elements/element:additional-transport-session-type-elements[element:transport-session-type = current()/../transport-session-type]/element:ru-elements/element:name";
          }
          description
              "the name of the processing element used for MSG5, used when the processing element
               is configured by the list 'additional-transport-session-type-elements'";
        }

        container flow-state {
          config false;
          description "MSG5 flow state";
          leaf responses-transmitted {
            type uint32;
            description
              "The total number of eCPRI message 5 response messages transmitted by
              the O-RU.";
          }
          leaf requests-transmitted {
            type uint32;
            description
              "The total number of eCPRI message 5 request messages transmitted by
              the O-RU.";
          }
          leaf followups-transmitted {
            type uint32;
            description
              "The total number of eCPRI message 5 follow up messages transmitted by
              the O-RU.";
          }
        }
      }
    }
  }

// top level container

  container ecpri-delay-message {
    description "top-level tree covering off O-DU to O-RU msg5 delay measurement";

    uses msg5-group;
  }
}

## File: RU Specific Models/Operations/o-ran-lbm.yang

module o-ran-lbm {
  yang-version 1.1;
  namespace "urn:o-ran:lbm:1.0";
  prefix "o-ran-lbm";

  import ietf-yang-types {
    prefix yang;
  }

  import ietf-interfaces {
    prefix if;
  }

  import o-ran-interfaces {
    prefix "o-ran-int";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the module capabilities for
    the O-RAN Radio loop-back protocol (IEEE 802.1ag).
    It is derived from MEF-38 (Service OAM Fault Management YANG Modules, April 2012)

    Copyright 2024 the O-RAN Alliance.

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

  revision "2024-08-12" {
    description
      "version 1.4.0

      1) allow 0 to be included in primary-vid.";

    reference "ORAN-WG4.M.0-v01.00";
  }

  revision "2024-04-15" {
    description
      "version 1.3.0

      1) remove import by revision date for ietf-yang-types.";

    reference "ORAN-WG4.M.0-v01.00";
  }

  revision "2021-12-01" {
    description
      "version 1.2.0

      1) typographical corrections in descriptions.";

    reference "ORAN-WG4.M.0-v01.00";
  }

  revision "2021-03-22" {
    description
      "version 1.1.0

      1) typographical corrections in descriptions.";

    reference "ORAN-WG4.M.0-v01.00";
  }

  revision "2019-02-04" {
    description
      "version 1.0.0

      1) imported model from xRAN
      2) changed namespace and reference from xran to o-ran";

    reference "ORAN-WG4.M.0-v01.00";
  }

  typedef priority-type {
    type uint32 {
      range "0..7";
    }
    description
      "A 3 bit priority value to be used in the VLAN tag, if present
       in the transmitted frame.";
    reference "[802.1q] 12.14.7.3.2:e";
  }

  typedef mep-id-type {
    type uint16 {
      range "1..8191";
    }
    description
      "Maintenance association End Point Identifier (MEPID): A small integer,
       unique over a given Maintenance Association, identifying a
       specific MEP.";
    reference "[802.1q] 3.19 and 19.2.1";
  }

  typedef vlan-id-type {
    type uint16 {
      range "1..4094";
    }
    description
      "The VLAN-ID that uniquely identifies a VLAN.  This is the 12-bit VLAN-ID
       used in the VLAN Tag header.";
    reference "[802.1q] 9.6";
  }

  typedef md-level-type {
    type int32 {
      range "0..7";
    }
    description
      "Maintenance Domain Level (MD Level) identifier.  Higher numbers
       correspond to higher Maintenance Domains, those with the greatest
       physical reach, with the highest values for customers' CFM PDUs.
       Lower numbers correspond to lower Maintenance Domains, those with
       more limited physical reach, with the lowest values for CFM PDUs
       protecting single bridges or physical links.";
    reference "[802.1q] 18.3, 21.4.1, IEEE8021-CFM-MIB.Dot1agCfmMDLevel";
  }

  typedef lbm-transaction-id-type {
    type uint32;
    description
      "A loopback transaction identifier";
    reference "[802.1q] 21.7.3";
  }

// grouping

  grouping md-group {
    description "the maintenance domain grouping";
    list maintenance-domain {
      key "id";
      description
        "A Maintenance Domain managed object is required in order to create an MA
         with a MAID that includes that Maintenance Domain's Name. From
         this Maintenance Domain managed object, all Maintenance
         Association managed objects associated with that Maintenance
         Domain managed object can be accessed, and thus controlled.";
      reference "[802.1q] 12.14.5";

      leaf id {
        type string;
        description
          "A unique identifier of a Maintenance Domain";
        reference "[802.1q] 12.14.5";
      }

      leaf name {
        type string;
        description
          "The value for the Maintenance Domain Name. Only the name-type
          'character-string' is supported";
        reference "[802.1q] 21.6.5.1 (Table 21-19), 12.14.5.3.2:a";
      }

      leaf md-level {
        type md-level-type;
        default 0;
        description
          "Integer identifying the Maintenance Domain Level (MD Level).  Higher
           numbers correspond to higher Maintenance Domains, those with the
           greatest physical reach, with the highest values for customers'
           CFM PDUs.  Lower numbers correspond to lower Maintenance
           Domains, those with more limited physical reach, with the lowest
           values for CFM PDUs protecting single bridges or physical links.";
        reference "[802.1q] 12.14.5.1.3:b";
      }

      list maintenance-association {
        key "id";
        description
          "This list represents Maintenance Entity Groups (Y.1731) or
           Maintenance Associations (802.1ag). MEGs/MAs are sets of
           MEPs, each configured to the same service inside a common
           OAM domain.";
        leaf id {
          type string;
          description
            "A unique identifier of a Maintenance Association";
          reference "[802.1q] 12.14.6";
        }
        leaf name {
          type string;

          description
            "The value for the Maintenance Association Name. Only the name-type
            'character-string' is supported";
          reference "[802.1q] 12.14.5.3.2:b, Table 21-20";
        }

        list component-list {
          key "component-id";
          description
            "A list of components each of which can be managed in a manner
             essentially equivalent to an 802.1Q bridge.";
          reference "[802.1q] IEEE8021-CFM-V2-MIB.ieee8021CfmMaCompTable";

          leaf component-id {
            type uint32;
            description
              "The bridge component within the system to which the information
               in this maintenance-association applies";
            reference "[802.1q] IEEE8021-CFM-V2-MIB.ieee8021CfmMaComponentId";
          }

          leaf name {
            type string;

            description
              "The value for the Maintenance Association Name. Only the name-type
              'character-string' is supported";
            reference "[802.1q] 12.14.5.3.2:b, Table 21-20";
          }

          leaf-list vid {
            type leafref {
              path "/if:interfaces/if:interface/o-ran-int:vlan-id";
            }
            min-elements 1;
            ordered-by user;
            description
              "The VID(s) monitored by this MA, or 0, if the MA is not attached to any
               VID. The first VID returned is the MA's Primary VID";
            reference "[802.1q] 12.14.5.3.2:b";
          }

          leaf-list remote-meps {
            type mep-id-type;
            description
              "A list of the MEPIDs of the MEPs in the MA.";
            reference "[802.1q] 12.14.6.1.3:g";
          }

          list maintenance-association-end-point {
            key "mep-identifier";
            description
              "The list of Maintenance association End Points in a specific Maintenance
              Association.";

            leaf mep-identifier {
              type mep-id-type;
              description
                "Integer that is unique among all the MEPs in the same MA. Other
                definition is: a small integer, unique over a given
                Maintenance Association, identifying a specific Maintenance
                association End Point.";
              reference "[802.1q] 12.14.6.3.2:b";
            }

            leaf interface {
              type leafref {
                path "/if:interfaces/if:interface/if:name";
              }
              mandatory true;
              description
              "An interface, either a Bridge Port or an aggregated IEEE 802.3 port
               within a Bridge Port, to which the MEP is attached. Each interface in
               the system is uniquely identified by an interface-name. The structure
               and content of the name is outside the scope of this specification.";
              reference "[802.1q] 12.14.7.1.3:b";
            }

            leaf primary-vid {
              type union {
                type leafref {
                  path "/if:interfaces/if:interface/o-ran-int:vlan-id";
                }
                type uint16 {
                  range "0";
                }
              }
              mandatory true;
              description
              "The Primary VID of the MEP. The value 0 indicates that either the
               Primary VID is that of the MEP's MA or that the MEP's MA is
               associated with no VID";
              reference "[802.1q] 12.14.7.1.3:d";
            }

            leaf administrative-state {
              type boolean;
              mandatory true;
              description
                "The administrative state of the MEP";
              reference "[802.1q] 12.14.7.1.3:e";
            }

            leaf mac-address {
              type leafref {
                path "/if:interfaces/if:interface/o-ran-int:mac-address";
              }
              config false;
              description
                "The MAC address of the MEP";
              reference "[802.1q] 12.14.7.1.3:i";
            }

            container loopback {
              config false;
              description
                "Data definitions related to the Loopback function.";
              leaf replies-transmitted {
                type yang:counter32;
                config false;
                mandatory true;
                description
                  "The total number of LBRs transmitted.";
                reference "[802.1q] 12.14.7.1.3:ad";
              }
            }
          }
        }
      }
    }
  }

// top level container
  container md-data-definitions {
    description
      "Data definitions related to the maintenance domains used for supporting
      Ethernet loopback connectivity checks";
    uses md-group;
  }
}

## File: RU Specific Models/Interfaces/o-ran-processing-element.yang

module o-ran-processing-element {
  yang-version 1.1;
  namespace "urn:o-ran:processing-element:1.0";
  prefix "o-ran-elements";

  import ietf-yang-types {
    prefix yang;
  }

  import ietf-inet-types {
    prefix "inet";
  }

  import ietf-interfaces {
    prefix "if";
  }

  import ietf-ip {
    prefix "ip";
  }

  import o-ran-interfaces {
    prefix "o-ran-int";
  }

  import o-ran-wg4-features {
    prefix "feat";
  }

  import o-ran-usermgmt {
    prefix "or-user";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the YANG definitions for mapping of transport flows to
    processing elements. Three options are supported:
    i) virtual MAC based mapping
    ii) MAC address + VLAN-ID based mapping
    iii) UDP/IP based mapping

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

  revision 2024-12-23 {
    description
      "version 10.1.0

      1) Alignment with C/U-Plane abbreviation in CUS specification";

    reference "ORAN-WG4.M.0-v10.00";
  }

  revision "2022-08-15" {
    description
      "version 10.0.0

      1) introducing SHARED-ORU-MULTI-OPERATOR feature
      2) fixing constraints";

    reference "ORAN-WG4.M.0-v10.00";
  }

  revision "2021-12-01" {
    description
      "version 8.0.0

      1) typographical corrections in descriptions.
      2) Add support for multiple transport-session-type per O-RU";

    reference "ORAN-WG4.M.0-v08.00";
  }

  revision "2020-04-17" {
    description
      "version 3.0.0

      1) added new enum SHARED-CELL-ETH-INTERFACE in
         transport-session-type and new containers north-eth-flow and
         south-eth-flow to enable Shared cell scenario.";

    reference "ORAN-WG4.M.0-v03.00";
  }

  revision "2019-07-03" {
    description
      "version 1.1.0

      1) added new leaf to enable O-RU to report the maximum number of
      transport flows it can support, e.g., due to restrictions on number
      of VLAN-IDs when Ethernet type transport is used.";

    reference "ORAN-WG4.M.0-v01.00";
  }
  revision "2019-02-04" {
    description
      "version 1.0.0

      1) imported model from xRAN
      2) changed namespace and reference from xran to o-ran";

    reference "ORAN-WG4.M.0-v01.00";
  }

  feature SHARED_CELL {
    description
      "Presence of feature indicates that this O-RU is capable to support
       shared cell.";
  }
// groupings

  grouping non-shared-cell-flow-group {
    description "a grouping for non-shared cell O-RU flows";

    container aliasmac-flow {
      when "../../../transport-session-type = 'ALIASMAC-INTERFACE'";
      if-feature o-ran-int:ALIASMAC-BASED-CU-PLANE;
      description "leafs for virtual mac type data flows";
      leaf ru-aliasmac-address {
        type leafref {
          path "/if:interfaces/if:interface[if:name = current()/../../interface-name]/o-ran-int:alias-macs";
        }
        mandatory true;
        description
          "O-RU's alias MAC address used for alias MAC based flow";
      }
      leaf vlan-id {
        type leafref {
          path "/if:interfaces/if:interface[if:name = current()/../../interface-name]/o-ran-int:vlan-id";
        }
        description
          "O-RU's VLAN-ID used for alias MAC based flow";
      }
      leaf o-du-mac-address {
        type yang:mac-address;
        mandatory true;
        description
          "O-DU's MAC address used for alias MAC based flow";
      }
    }
    container eth-flow {
      when "../../../transport-session-type = 'ETH-INTERFACE'";
      description "leafs for mac + vlan-id type data flows";
      leaf ru-mac-address {
        type leafref {
          path "/if:interfaces/if:interface[if:name = current()/../../interface-name]/o-ran-int:mac-address";
        }
        mandatory true;
        description
          "O-RU's MAC address used for Ethernet based flow";
      }
      leaf vlan-id {
        type leafref {
          path "/if:interfaces/if:interface[if:name = current()/../../interface-name]/o-ran-int:vlan-id";
        }
        mandatory true;
        description
          "O-RU's VLAN-ID used for Ethernet based flow";
      }
      leaf o-du-mac-address {
        type yang:mac-address;
        mandatory true;
        description
          "O-DU's MAC address used for Ethernet based flow";
      }
    }
    container udpip-flow {
      when "../../../transport-session-type = 'UDPIP-INTERFACE'";
      description "leafs for UDP/IP type data flows";
      choice address {
        leaf ru-ipv4-address {
          type leafref {
            path "/if:interfaces/if:interface[if:name = current()/../../interface-name]/ip:ipv4/ip:address/ip:ip";
          }
          description "O-RU's IPv4 address";
        }
        leaf ru-ipv6-address {
          type leafref {
            path "/if:interfaces/if:interface[if:name = current()/../../interface-name]/ip:ipv6/ip:address/ip:ip";
          }
          description "O-RU's IPv6 address";
        }
        mandatory true;
        description "choice of O-RU IPv4 or IPv6 address";
      }
      leaf o-du-ip-address {
        type inet:ip-address;
        mandatory true;
        description "O-DU's IP address";
      }
      leaf ru-ephemeral-udp-port {
        type inet:port-number;
        mandatory true;
        description
          "ephemeral port used by O-RU";
      }
      leaf o-du-ephemeral-udp-port {
        type inet:port-number;
        mandatory true;
        description
          "ephemeral port used by O-DU";
      }
      leaf ecpri-destination-udp {
        type inet:port-number;
        mandatory true;
        description "the well-known UDP port number used by eCPRI";
        // fixme - add in a default when allocated by IANA
      }
    }
  }

  grouping shared-cell-flow-group {
    description "a grouping for shared cell O-RU flows";

    container north-eth-flow {
      when "../../../transport-session-type = 'SHARED-CELL-ETH-INTERFACE'";
      if-feature "SHARED_CELL";
      description "leafs for mac + vlan-id type data flows";
      leaf ru-mac-address {
        type leafref {
          path "/if:interfaces/if:interface[if:name = current()/../../interface-name]/o-ran-int:mac-address";
        }
        description
          "O-RU's MAC address used for Ethernet based flow";
      }
      leaf vlan-id {
        type leafref {
          path "/if:interfaces/if:interface[if:name = current()/../../interface-name]/o-ran-int:vlan-id";
        }
        description
          "O-RU's VLAN-ID used for Ethernet based flow";
      }
      leaf north-node-mac-address {
        type yang:mac-address;
        description
          "North-node's MAC address used for Ethernet based flow";
      }
    }
    container south-eth-flow {
      when "../../../transport-session-type = 'SHARED-CELL-ETH-INTERFACE'";
      if-feature "SHARED_CELL";
      description "leafs for mac + vlan-id type data flows";
      leaf ru-mac-address {
        type leafref {
          path "/if:interfaces/if:interface[if:name = current()/../../interface-name]/o-ran-int:mac-address";
        }
        description
          "O-RU's MAC address used for Ethernet based flow";
      }
      leaf vlan-id {
        type leafref {
          path "/if:interfaces/if:interface[if:name = current()/../../interface-name]/o-ran-int:vlan-id";
        }
        description
          "O-RU's VLAN-ID used for Ethernet based flow";
      }
      leaf south-node-mac-address {
        type yang:mac-address;
        description
          "south-node's MAC address used for Ethernet based flow";
      }
    }
  }

  grouping session-and-markings-group {
    description "a grouping with transport session type and enhanced uplane markings";

    leaf transport-session-type {
      type enumeration {
        enum ETH-INTERFACE {
          description "VLAN based C/U-Plane Transport ";
        }
        enum UDPIP-INTERFACE {
          description "UDP/IP based C/U-Plane Transport ";
        }
        enum ALIASMAC-INTERFACE{
          description "Alias MAC address based C/U-Plane Transport ";
        }
        enum SHARED-CELL-ETH-INTERFACE {
          if-feature "SHARED_CELL";
          description "VLAN based C/U-Plane Transport used for Shared Cell scenario";
        }
      }
      default ETH-INTERFACE;
      description
        "the type of transport session used for identifying different processing
        elements";
    }
    container enhanced-uplane-mapping {
      presence "indicates that enhanced uplane mapping is used";
      description "a mapping table for enhanced user plane marking";
      list uplane-mapping {
        key "up-marking-name";
        description
          "a mapping between up-link name and o-ran-interfaces:up-marking-name";
        leaf up-marking-name {
          type string;
          description "a unique up marking name that is used for enhanced up marking";
        }
        choice up-markings {
          description
            "U-Plane markings";
          case ethernet {
            when "(../../transport-session-type = 'ALIASMAC-INTERFACE') or
            (../../transport-session-type = 'ETH-INTERFACE') or
            (../../transport-session-type = 'SHARED-CELL-ETH-INTERFACE')";
            leaf up-cos-name {
              type leafref {
                path "/if:interfaces/if:interface/o-ran-int:class-of-service/o-ran-int:enhanced-uplane-markings/o-ran-int:up-marking-name";
              }
              description "the Ethernet U-plane transport marking as defined in o-ran-interfaces";
            }
          }
          case ipv4 {
            when "(../../transport-session-type = 'UDPIP-INTERFACE')";
            leaf upv4-dscp-name {
             if-feature o-ran-int:UDPIP-BASED-CU-PLANE;
              type leafref {
                path "/if:interfaces/if:interface/ip:ipv4/o-ran-int:diffserv-markings/o-ran-int:enhanced-uplane-markings/o-ran-int:up-marking-name";
              }
              description "the IPv4 U-plane transport marking as defined in o-ran-interfaces";
            }
          }
          case ipv6 {
            when "(../../transport-session-type = 'UDPIP-INTERFACE')";
            leaf upv6-dscp-name {
             if-feature o-ran-int:UDPIP-BASED-CU-PLANE;
              type leafref {
                path "/if:interfaces/if:interface/ip:ipv6/o-ran-int:diffserv-markings/o-ran-int:enhanced-uplane-markings/o-ran-int:up-marking-name";
              }
              description "the IPv6 U-plane transport marking as defined in o-ran-interfaces";
            }
          }
        }
      }
    }
  }

  grouping pe-group {
    description "a grouping of processing elements";
    leaf maximum-number-of-transport-flows {
      type uint16 {
        range "1..4094";
      }
      default 4094;
      config false;
      description
        "The maximum number of transport flows that can be supported by an O-RU";
    }
    uses session-and-markings-group;

    list ru-elements {
      key "name";
      description
        "the list of transport definitions for each processing element";
      leaf name {
        type string {
          length "1..255";
        }
        description
          "A name that is unique across the O-RU that identifies a processing
          element instance.

          This name may be used in fault management to refer to a fault source
          or affected object";
      }
      leaf sro-id {
        if-feature feat:SHARED-ORU-MULTI-OPERATOR;
        type leafref {
          path "/or-user:users/or-user:user/or-user:sro-id";
        }
        description
          "The identity of a shared resource operator. When present,
          indicates that the list entry corresponds to a processing element
          associated with a shared resource operator where the sro-id identifies
          the specific shared resource operator";
      }
      container transport-flow {
        description
          "container for the transport-flow used for C/U-Plane";
        leaf interface-name {
          type leafref {
            path "/if:interfaces/if:interface/if:name";
          }
          description "the interface name ";
        }
        uses non-shared-cell-flow-group;
        uses shared-cell-flow-group;

      }
    }
    list additional-transport-session-type-elements {
      if-feature "feat:MULTIPLE-TRANSPORT-SESSION-TYPE";
      key transport-session-type;

      description
        "Added to support multiple transport-session-type per O-RU,
         it is always assumed that /processing-elements/ru-elements/ is configured with the first type of transport,
         and /processing-element/additional-transport-session-elements/ru-elements/ is configured with the other types of transport.
         If the O-RU is configured for shared-cell, this list will not be used. An O-RU shall reject any configuration
         with a list entry with transport-session-type set to SHARED-CELL-ETH-INTERFACE";

      uses session-and-markings-group;

      list ru-elements {
        key "name";
        description
          "the list of transport definitions for each processing element";
        leaf name {
          type string {
            length "1..255";
          }
          description
            "A name that is unique across the O-RU that identifies a processing
            element instance.

            This name may be used in fault management to refer to a fault source
            or affected object";
        }
        leaf sro-id {
          if-feature feat:SHARED-ORU-MULTI-OPERATOR;
          type leafref {
            path "/or-user:users/or-user:user/or-user:sro-id";
          }
          description
            "The identity of a shared resource operator. When present,
            indicates that the list entry corresponds to a processing element
            associated with a shared resource operator where the sro-id identifies
            the specific shared resource operator";
        }
        container transport-flow {
          description
            "container for the transport-flow used for C/U-Plane";
          leaf interface-name {
            type leafref {
              path "/if:interfaces/if:interface/if:name";
            }
            description "the interface name ";
          }
          uses non-shared-cell-flow-group;
        }
      }
    }
  }

// top-level container

  container processing-elements {
    description
      "a model defining the mapping between transport flows and arbitrary
      O-RAN processing elements. A processing element may be then defined for
      handling connectivity or delay procedures, or defined with a corresponding
      eaxcid for C/U-Plane operations";
    uses pe-group;
  }
}
---

- View in [Reader Mode](https://simewu.com/spec-reader/pages/08-WG4/O-RAN.WG4.TS.MP-YANGs-R004-v17.01.zip).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG4.TS.MP-YANGs-R004-v17.01.zip).
