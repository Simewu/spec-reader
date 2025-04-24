---
title: O-RAN.WG4.CTI-TMP-YANG-v03.00.zip.md
author: O-RAN Alliance
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG4.CTI-TMP-YANG-v03.00.zip.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG4.CTI-TMP-YANG-v03.00.zip).

---

* toc
{:toc}

---

Content from the zip file `documents/O-RAN.WG4.CTI-TMP-YANG-v03.00.zip`:

## File: o-ran-cti-common.yang

module o-ran-cti-common {
  yang-version 1.1;
  namespace "urn:o-ran:cti-common:2.0";
  prefix "or-ctic";

  import ietf-yang-types {
    prefix yang;
  }

  import ietf-inet-types {
    prefix inet;
  }

  import ietf-ip {
    prefix ip;
  }

  import ietf-interfaces {
    prefix if;
  }

  import o-ran-common-yang-types {
    prefix or-types;
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the common groupings used by configuration management
    model for the O-RAN WG4 Cooperative Transport Interface.

    Note - this module comprises a number of re-usable groupings.
    It has been designed to be agnostic to model specific 'style-guides' used by
    the 'importing models', enabling the groupings to be incorporated into models
    defined externally to O-RAN Alliance (e.g., BBF and CableLabs) as well as
    incorporated into O-RAN alliance defined models.

    Copyright 2022 the O-RAN Alliance.

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

  revision "2022-04-15" {
    description
      "version 3.0.0

      1) non-backward compatible changes to switch to camelCase";

    reference "ORAN-WG4.CTI-TMP.0-v03.00";
  }

  typedef ethertype {
    type uint16;
    description
      "An ethertype value";
  }

  typedef ctiVersion {
    type uint8 {
      range "0..15";
    }
    description
      "The version of CTI TC-Plane or TM-Plane.";
  }

  typedef localIpv4OrIpv6 {
    type union {
      type leafref {
        path "/if:interfaces/if:interface/ip:ipv4/ip:address/ip:ip";
      }
      type leafref {
        path "/if:interfaces/if:interface/ip:ipv6/ip:address/ip:ip";
      }
    }
    description "Local IPv4 or IPv6 address for CTI Server";
  }

  grouping ctiTimersGrp {
    description "a grouping for CTI timers";
    leaf ctiKa {
      type uint8;
      units 0.1-seconds;
//    this appears at the top level container
//    as per RFC 8407:
//    Top-level database data definitions MUST NOT be mandatory.  If a
//    mandatory node appears at the top level, it will immediately cause
//    the database to be invalid.  This can occur when the server boots or
//    when a module is loaded dynamically at runtime.
      mandatory true;
      description
        "This value, abbreviated as ctiKa, is the maximum time interval between consecutive
        CTI-Keep-Alive messages between the CTI client and the CTI server. Example value is 30.";
    }
    leaf ctiTo {
      type uint8;
      units 0.1-seconds;
//    this appears at the top level container
//    as per RFC 8407:
//    Top-level database data definitions MUST NOT be mandatory.  If a
//    mandatory node appears at the top level, it will immediately cause
//    the database to be invalid.  This can occur when the server boots or
//    when a module is loaded dynamically at runtime.
      mandatory true;
      description
        "This value, abbreviated as ctiTo, is the timeout value that a CTI-Beacon-Ack message
        needs to be received by the CTI client (O-DU) or the CTI server (transport system)
        before that respective system suspends CTI operations and returns to its CTI configuration
        state. Example value is 100.";
    }
  }

  grouping ctiPatternGrp {
    description "a grouping for CTI pattern";
    leaf patternId {
      type uint32 {
        range "0..16777215";
      }
      mandatory true;
      description
        "An integer representing a 24 bit value that uniquely identifies a CTI pattern.
        A pattern-id of 0 means all data is spread equally in time, see spec for details";
    }
    leaf patternDuration {
      type uint8;
      units 125-microseconds;
      mandatory true;
      description "The length of a single mobile slot time, in units of 125 micorseconds";
    }
    leaf patternEvents {
      type uint8;
      mandatory true;
      description
        "This is the number of events per pattern. An event is typically a symbol or a
        group of symbols within a slot. For example, if a slot contained 14 symbols,
        there could be 14 events with each being one symbol or 7 events with each
        being 2 symbols";
    }
    leaf patternEventMultiplier {
      type uint8;
      mandatory true;
      description
        "The number of sequential events that have the same byte count. The multipler
        variable and the byte count variable are repeated as a pair to describe an event";
    }
    leaf patternEventBytes {
      type uint16;
      mandatory true;
      description
        "This is the number of bytes per event. A byte count is allowed to be 0 bytes.
        A reserved value of 0xFFFF (65535) indicates a residual average, where:
          Residual average
        = [ CTI byte count - sum(explicit bytes described) ] /sum(events without explicit bytes described)";
    }
    leaf patternNormalization {
      type boolean;
      mandatory true;
      description
        "Whether or not to normalize the values of pattern-event-bytes
		    so that their sum per reported interval is always the same fixed value";
    }
  }

  grouping layer2FilterGrp {
    description "a grouping for a layer 2 CTI flow filters identifying fronthaul traffic";
    leaf sourceMac {
      type yang:mac-address;
      description "an optional source MAC address filter ";
    }
    leaf destinationMac {
      type yang:mac-address;
      description "an optional desination MAC address filter";
    }
    leaf ethertype {
      type ethertype;
      description "an optional ethertype filter";
    }
    leaf pcp {
      type or-types:pcp;
      description "an optional PCP filter";
    }
    leaf vlanId {
      type or-types:vlan-id;
      description "an optional vlan id filter";
    }
  }

  grouping layer3and4FilterGrp {
    description "a grouping for L3 and L4 CTI flow filters identifying fronthaul traffic";
    leaf sourceAddress {
      type inet:ip-address;
      description "an optional source IPv4 or IPv6 address filter";
    }
    leaf sourcePrefix {
      type inet:ip-prefix;
      description "an optional source IPv4 or IPv6 prefix filter - note not mask as in the word doc";
    }
    leaf destinationAddress {
      type inet:ip-address;
      description "an optional destination IPv4 or IPv6 address filter";
    }
    leaf destinationPrefix {
      type inet:ip-prefix;
      description "an optional destination IPv4 or IPv6 prefix filter - note not mask as in the word doc";
    }
    leaf dscp {
      type inet:dscp;
      description "an optional DSCP value filter, for IPv4 or IPv6";
    }
    leaf sourcePortStart {
      type inet:port-number;
      description
        "This defines the UDP source port to use on a CTI flow.
        This can help with classification uniqueness.";
    }
    leaf sourcePortEnd {
      type inet:port-number;
      must "current()>=../sourcePortStart";
        description
        "This defines the UDP source port to use on a CTI flow.
        This can help with classification uniqueness.";
    }
    leaf destinationPortStart {
      type inet:port-number;
      description
        "This defines the UDP destination port to use on a CTI flow.
        This can help with classification uniqueness.";
    }
    leaf destinationPortEnd {
      type inet:port-number;
      must "current()>=../destinationPortStart";
        description
        "This defines the UDP destination port to use on a CTI flow.
        This can help with classification uniqueness.";
    }
    leaf ipv4Protocol {
      type uint8;
      description
        "This defines the IPv4 protocol field to use on a CTI flow.
        This can help with classification uniqueness.";
    }
    leaf ipv6TrafficClass {
      type uint8;
      description
        "This defines the IPv6 Traffic Class field to use on a CTI flow.
        This can help with classification uniqueness.";
    }
    leaf ipv6Flow {
      type inet:ipv6-flow-label;
      description
        "This defines the IPv6 flow label to use on a CTI flow.
        This can help with classification uniqueness.";
    }
    leaf ipv6NextHeader {
      type uint8;
      description
        "This defines the IPv6 next header field to use on a CTI flow.
        This can help with classification uniqueness.";
    }
  }

  grouping subtypeGrp {
    description "Grouping for Ethernet Subtype";
    leaf protocolSubtype {
      type uint16;
      default 1;
      description
        "the 16-bit sub-type to be used with the standardized O-RAN allocated
        Ethertype value 0x9433. The default value to be used is 0x1. If another
        value is needed it can be configured.";
    }
  }

  grouping ctiListeningUdpPortGrp {
    description "Grouping for UDP listening port";
    leaf ctiListeningUdpPort {
  	  type inet:port-number;
//    this appears at the top level container
//    as per RFC 8407:
//    Top-level database data definitions MUST NOT be mandatory.  If a
//    mandatory node appears at the top level, it will immediately cause
//    the database to be invalid.  This can occur when the server boots or
//    when a module is loaded dynamically at runtime.
      mandatory true;
      description
        "This defines the UDP destination port to use for all CTI messages.";
	  }
  }
}

## File: o-ran-cti-tn-docsis.yang

module o-ran-cti-tn-docsis {
  yang-version 1.1;
  namespace "urn:o-ran:cti-tn-docsis:2.0";
  prefix "or-cti-docsis";

  import o-ran-cti-common {
    prefix or-ctic;
  }

  import o-ran-cti-tn-generic {
    prefix or-ctig;
  }

  import ietf-yang-types {
    prefix yang;
  }

  import o-ran-common-yang-types {
    prefix or-types;
  }

  import o-ran-common-identity-refs {
    prefix or-refs;
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the configuration of for the CTI transport
     node that for DOCSIS defined transport nodes that implement the
     O-RAN WG4 Cooperative transport Interface.

    Copyright 2022 the O-RAN Alliance.

    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
    'AS IS' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
    LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
    FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
    COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT,
    INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
    DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
    GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
    INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
    WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
    NEGLIGENCE OR OTHERWISE)ARISING IN ANY WAY OUT OF THE USE OF
    THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

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

  revision "2022-04-15" {
    description
      "version 3.0.0

      1) non-backward compatible changes to switch to camelCase";

    reference "ORAN-WG4.CTI-TMP.0-v03.00";
  }

  identity docsis-transport {
    base "or-refs:o-ran-transport-technology-base";
    description
      "an identity corresponding to DOCSIS transport";
  }

  grouping docsisSessionConfigDataGrp {
    description
      "A grouping of DOCSIS specific CTI session info.";

    leaf cmMacAddress {
      type yang:mac-address;
      description "a MAC address on the DOCSIS equipment connected to O-RU";
    }
  }

  grouping docsisFlowConfigDataGrp {
    description
      "A grouping for DOCSIS specific flow in use info";

    leaf associatedScn {
      type string { length "1..15"; }
      description
        "This key indicates the Service Class Name associated with
        this CTI flow. DOCSIS specifies that the maximum
        size is 16 ASCII characters including a terminating zero.";
      reference "Information Model Mapping: CM-SP-CCAP-OSSIv4.0
        ServiceClass::Name";
    }
    choice filterType {
      description "the filter type";
      case ethernet {
        container l2Flow {
          must "(sourceMac)or(destinationMac)or(ethertype)or(pcp)or(vlanId)";
          description "the layer 2 flow";
          uses or-ctic:layer2FilterGrp;
        }
      }
      case udpip {
        container udpipFlow {
          must "(sourceAddress)or(sourcePrefix)or(destinationAddress)or(destinationPrefix)"
          + "or(dscp)or((sourcePortStart)and(sourcePortEnd))or((destinationPortStart)and(destinationPortEnd))"
          + "or(ipv4Protocol)or(ipv6TrafficClass)or(ipv6Flow)or(ipv6NextHeader)";
          description "the udpip flow container";
          uses or-ctic:layer3and4FilterGrp;
        }
      }
    }
  }

  grouping docsisCtiConnectivityProfileGrp {
    description
      "Configuration data for CTI conectivity.";

    container l4CtiIf {
      description
        "A container for a l4 cti interface";

      leaf ctiServerIpInterfaceRef {
        type or-ctic:localIpv4OrIpv6;
          description "a local IP address on the TN (CMTS) for the CTI Server";
      }

      leaf vlanId {
        type or-types:vlan-id;
        description "an optional vlan id associated with this IP/host CTI connection";
      }
    }
  }

  augment "/or-ctig:ctiTn/or-ctig:ctiSession/or-ctig:technologySpecificSessionInfo" {
    when "(derived-from-or-self(../../transportType,"
      +  "'docsis-transport'))";
    description "augmentation for session data";
    uses docsisSessionConfigDataGrp;
  }

  augment "/or-ctig:ctiTn/or-ctig:ctiSession/or-ctig:ctiFlows/or-ctig:technologySpecificFlowInfo" {
    when "(derived-from-or-self(../../../transportType,"
      + "'docsis-transport'))";
    description "augmentation for flow data";
    uses docsisFlowConfigDataGrp;
  }

  augment "/or-ctig:ctiTn/or-ctig:ctiTnServer/or-ctig:serverClientPair" {
    when "(derived-from-or-self(../../transportType, 'docsis-transport'))";
    description "augmentation for cti profile";
    uses docsisCtiConnectivityProfileGrp;
  }
}

## File: o-ran-cti-tn-generic.yang

module o-ran-cti-tn-generic {
  yang-version 1.1;
  namespace "urn:o-ran:cti-tn-generic:2.0";
  prefix "or-cti-tn";

  import o-ran-cti-common {
    prefix or-ctic;
  }

  import ietf-yang-types {
    prefix yang;
  }

  import ietf-inet-types {
    prefix inet;
  }

  import o-ran-common-identity-refs {
    prefix or-refs;
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the configuration of for a generic CTI transport node
    that implements the O-RAN WG4 Cooperative transport Interface. It is intended
    that transport technology specific augmentations will be used to completely define
    the configuration of a fully functional CTI Transport Node.

    Copyright 2022 the O-RAN Alliance.

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

  revision "2022-04-15" {
      description
        "version 3.0.0

        1) non-backward compatible changes to switch to camelCase";

      reference "ORAN-WG4.CTI-TMP.0-v03.00";
    }
  revision "2020-10-26" {
    description
      "version 1.0.0

      1) initial version";

    reference "ORAN-WG4.CTI-TMP.0-v01.00";
  }

  grouping tnCtiCharacteristics {
    description "a grouping for tn characteristics";

    leaf tnCtiMessageTimingPerformance {
      type uint8;
      units 20-microseconds;
      config false;
      mandatory true;
      description
        "The minimal spacing needed between the arrival time of the CTI message
        and the start boundary at Ra of the mobile slot N being reported in the message";
    }
    leaf ctiReportRateCategory {
      type uint8 {
        range "1..5";
      }
      config false;
      mandatory true;
      description "the supported message interval, where 1 = 5ms, 2 = 2ms, 3 = 1 ms
      4 = 0.5ms, 5 = 0.25 ms";
      reference "O-RAN.WG4.CTI-TCP: Table CTI Message Rate Categories for O-DU or TN";
    }
	  leaf-list supportedVersions {
		  type or-ctic:ctiVersion;
      config false;
      min-elements 1;
      description "the list of versions of CTI TC-Plane that are supported by the CTI client";
    }
  }

  grouping clientListGrp {
    description "a grouping of a CTI client list";

    list ctiClient {
      key name;
      description "a list of CTI clients";

      leaf name {
        type string;
        description "the unique name of a CTI client";
      }
      leaf ctiEnable {
        type boolean;
        mandatory true;
        description "whether the client is enabled for CTI";
      }
      leaf-list version {
        type or-ctic:ctiVersion;
        min-elements 1;
        description "the list of version of CTI TC-Plane that can be used with the client";
      }

      choice connectivityType {
        description "the connectivity type";
        case ethernet {
          leaf ctiClientMacAddr {
            type yang:mac-address;
            description "the destination address used for CTI messages to the server";
          }
	      }
	      case udpip {
          leaf ctiClientHost {
            type inet:host;
            description "host (remote IP address or FQDN) for the CTI client";
          }
		    }
	    }

      container technologySpecificClientInfo {
        description
          "a container to be augmented by technology specific models that is used to configure
          technology specific parameters for interaction with this client";
      }
      list patterns {
        key patternId;
        min-elements 1;
        description "a list of patterns";

        uses or-ctic:ctiPatternGrp;
      }
    }
  }

  grouping ctiFlowsInUseGrp {
    description "the cti flow in use group";
    list ctiFlows {
      key ctiFlowId;
      description "a list of CTI flows";

      leaf ctiFlowId {
        type uint8;
        description "a CTI flow-id";
      }
      leaf maxPortionT34Latency {
        type uint16;
        units 5-microseconds;
        description
          "The portion of the maximum T34 latency allocated to TN-TU segment - used to optimize the operation of the TN node";
      }
      container technologySpecificFlowInfo {
        description
          "a container to be augmented by technology specific models that is used to configure
          the technology specific transport parameters associated with the cti-flow-ID in the context of the given cti-session-id";
      }
    }
  }

  grouping ctiSessionIdGrp {
    description "the cti-session-id group";
    list ctiSession {
      key id;
      description "a CTI session";

      leaf id {
        type string;
        description "the identity of a cti session";
      }
      leaf ctiClient {
        type leafref {
          path "/ctiTn/ctiClient/name";
        }
        mandatory true;
        description "";
      }

     leaf ctiTnServer {
        type leafref {
          path "/ctiTn/ctiTnServer/name";
        }
        mandatory true;
        description "";
      }

      leaf ctiNominalReportMsgInterval {
        type uint8;
        units 0.25-milliseconds;
        mandatory true;
        description "the nominal CTI reporting messsage interval";
      }

      uses ctiFlowsInUseGrp;

	    container technologySpecificSessionInfo {
        description
          "a container to augmented by technology specific models";
      }
    }
  }

  grouping ctiTnServerGrp {
    description "the cti tn server grouping";
    list ctiTnServer {
      key name;
      description "list of cti tn servers";

      leaf name {
        type string;
        description "a unique name/identity for a cti-tn-server";
      }
      leaf ctiEnable {
        type boolean;
        default false;
        description "whether the cti server is enabled";
      }
      leaf-list ctiSessionIds {
        type leafref {
          path "/ctiTn/ctiSession/id";
        }
        config false;
        description "read-only list of CTI session IDs handled by this CTI server";
      }

	    list serverClientPair {
        key clientName;
        description "a list of a CTI clients in contact with this CTI server, to be augmented by technology-specific connectivity parameters";

		    leaf clientName {
			    type leafref {
			      path "/ctiTn/ctiClient/name";
			    }
			    description "the name of the CTI client";
		    }
	    }
	  }
  }

  container ctiTn {
    description
      "the top level container for CTI TN generic, i.e., transport
      technology agnostic, configuration and operational data";

    leaf transportType {
      type identityref {
        base or-refs:o-ran-transport-technology-base;
      }
      description "a identity ref used in conditional augmentation";
    }
    container ctiTransport {
      presence "Enable CTI Transport";
      description
        "container for transport parameters";
      uses or-ctic:subtypeGrp;
      uses or-ctic:ctiListeningUdpPortGrp;
    }
    container ctiTimers {
      presence "Enable CTI Timers";
      description
        "container for mandatory CTI Timers";
      uses or-ctic:ctiTimersGrp;
    }
    uses tnCtiCharacteristics;
    uses clientListGrp;
    uses ctiTnServerGrp;
    uses ctiSessionIdGrp;
  }

}

## File: o-ran-cti-tn-pon.yang

module o-ran-cti-tn-pon {
  yang-version 1.1;
  namespace "urn:o-ran:cti-tn-pon:1.0";
  prefix "or-cti-pon";

  import o-ran-cti-common {
    prefix or-ctic;
  }

  import o-ran-cti-tn-generic {
    prefix or-ctig;
  }

  import o-ran-common-identity-refs {
	prefix or-refs;
  }

  import ietf-interfaces {
    prefix if;
  }

  import ietf-yang-types {
    prefix yang;
  }

  import ietf-inet-types {
    prefix inet;
  }

  import bbf-xpon-if-type {
    prefix bbf-xponift;
  }

  import bbf-if-type {
    prefix bbfift;
  }

  import bbf-xpongemtcont {
    prefix bbf-xpongemtcont;
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the configuration of for the CTI transport node that for
    PON defined transport nodes that implement the O-RAN WG4 Cooperative transport Interface.

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

  revision "2022-06-28" {
    description
      "version 3.0.0
      1) non-backward compatible changes to switch to camelCase";

    reference "ORAN-WG4.CTI-TCP.0-v03.00";
  }

  identity ponTransport {
    base "or-refs:o-ran-transport-technology-base";
    description
      "an identity corresponding to PON transport";
  }

  grouping ponSessionConfigDataGrp {
    description
      "A grouping of PON specific info reflecting the ingress point in the PON system the O-RU (interface) corresponding to a given CTI session ID: OLT Channel Termination, ONU, ONU UNI";

    leaf oltChannelTerminationRef {
      type if:interface-ref;
      must "derived-from-or-self(/if:interfaces"
         + "/if:interface[if:name=current()]/if:type,"
         + "'bbf-xponift:channel-termination')"
      {
        error-message
          "Must reference a channel termination.";
      }
      description "Reference to a PON OLT Channel Termination";
	}

    leaf ctiSessionIdIngress {
      type if:interface-ref;
      must "derived-from-or-self(/if:interfaces"
         + "/if:interface[if:name=current()]/if:type,"
         + "'bbf-xponift:olt-v-enet') or
           derived-from-or-self(/if:interfaces"
         + "/if:interface[if:name=current()]/if:type,"
         + "'bbf-xponift:olt-v-ani')"
      {
        error-message
          "Must either reference an OLT vENET interface which is the
           local representation in the OLT of an ONU UNI
           interface, or reference an OLT vANI interface wich is the
           local representation in the OLT of an ONU";
      }
      description "Reference to an ONU or ONU UNI.";
    }
  }

  grouping ponFlowConfigDataGrp {
    description
      "A T-CONT being used for carrying upstream traffic pertaining to a CTI Session ID + Flow ID";

    leaf associatedTcont {
      type leafref {
        path '/bbf-xpongemtcont:xpongemtcont/bbf-xpongemtcont:'
           + 'tconts/bbf-xpongemtcont:tcont/bbf-xpongemtcont:'
           + 'name';
      }
      description
        "Reference to a T-CONT.";
    }

  }

  grouping ponRangingInfoGrp {
    description "a grouping for PON ranging info";

    leaf ponUseNotifications {
      type boolean;
      mandatory true;
      description "whether PON notifications are used to this CTI client";
    }
    leaf ponMinNotificationTa {
      when "../ponUseNotifications ='true'";
      type uint16;
      units milliseconds;
      description "the minimum notification timing advance";
    }
  }

  grouping ponFlowInfoGrp {
    description "a grouping for the PON specific flow information";
    choice filterType {
      description "the filter type for this flow";
      case ethernet {
        container l2Flow {
          must "(sourceMac)or(destinationMac)or(ethertype)or(pcp)or(vlanId)";
          description "field(s) for L2 filter";
          uses or-ctic:layer2FilterGrp;
        }
      }
      case udpip {
        container udpipFlow {
          must "(sourceAddress)or(sourcePrefix)or(destinationAddress)or(destinationPrefix)or(dscp)or((sourcePortStart)and(sourcePortEnd))";
          description "field(s) for UDP/IP filter";
          uses or-ctic:layer3and4FilterGrp;
        }
      }
    }
  }

  grouping ponCtiEgressIfGrp {
      description "Configuration of the egress interface on OLT for CTI towards CTI client in O-DU";

      leaf ctiL2Interface {
      type if:interface-ref;
      must "derived-from-or-self(/if:interfaces"
         + "/if:interface[if:name=current()]/if:type,"
         + "'bbfift:vlan-sub-interface') or "
         + "derived-from-or-self(/if:interfaces"
         + "/if:interface[if:name=current()]/if:type,"
         + "'bbfift:l2-termination')"  {
                error-message
            "Must reference a vlan-sub-interface or a
            l2-termination interface.";
         }
      description "Reference to a L2 interface.";
      }
      leaf ctiUseOfIp {
        type boolean;
        description "Use IP transport capabilities (RFC 8344) of the L2 interface (if available) for CTI.";
      }
  }

  augment "/or-ctig:ctiTn/or-ctig:ctiSession/or-ctig:technologySpecificSessionInfo" {
    when "(derived-from-or-self(../../transportType," + "'ponTransport'))";
	description "augmentation for session data";
    uses ponSessionConfigDataGrp;
  }

  augment "/or-ctig:ctiTn/or-ctig:ctiSession/or-ctig:ctiFlows/or-ctig:technologySpecificFlowInfo" {
    when "(derived-from-or-self(../../../transportType," + "'ponTransport'))";
    description "augmentation for flow configuration data";
    uses ponFlowConfigDataGrp;
  }

  augment "/or-ctig:ctiTn/or-ctig:ctiSession/or-ctig:ctiFlows/or-ctig:technologySpecificFlowInfo" {
    when "(derived-from-or-self(../../../transportType," + "'ponTransport'))";
    description "augmentation for flow configuration data";
    uses ponFlowInfoGrp;
  }

  augment "/or-ctig:ctiTn/or-ctig:ctiTnServer/or-ctig:serverClientPair" {
    when "(derived-from-or-self(../../transportType," + "'ponTransport'))";
    description "augmentation for CTI interface";
    uses ponCtiEgressIfGrp;
  }

  augment "/or-ctig:ctiTn/or-ctig:ctiClient/or-ctig:technologySpecificClientInfo" {
    when "(derived-from-or-self(../../transportType," + "'ponTransport'))";
    description "augmentation for PON ranging info";
    uses ponRangingInfoGrp;
  }

}

## File: o-ran-o1-ctiOdu.yang

module o-ran-o1-ctiOdu {
  yang-version 1.1;
  namespace "urn:o-ran:o1:o-ran-o1-ctiodu:1.0";
  prefix o-ran-o1-ctiodu;

  import _3gpp-common-managed-element { prefix me3gpp; }
  import _3gpp-common-top { prefix top3gpp; }
  import _3gpp-common-yang-types { prefix types3gpp; }
  import o-ran-cti-common { prefix or-ctic; }
  import _3gpp-nr-nrm-gnbdufunction {
    prefix "gnbdu3gpp";
  }

  import ietf-yang-types {
    prefix yang;
  }

  import ietf-inet-types {
    prefix inet;
  }

  import o-ran-common-yang-types {
    prefix or-types;
  }

  import o-ran-wg5-features {
    prefix or-features;
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the configuration of for an O-DU that implements
    the O-RAN WG4 Cooperative transport Interface. If transport specific
    configuration is required, it is expected that this will be achieved using
    a technology specific augmentation.

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

  revision "2022-07-04" {
    description
      "version 3.0.0

      IM/DM updated for O1 and camelcase

      Note: the integration (augmentation) of the CTIConfig IOC
      into the broader O-DU Data Model is subject to further study and
      optimization in a future version of the file.";

    reference "ORAN-WG4.CTI-TMP.0-v3.00";
  }

  //Class CTIConfig attributes
  grouping CTIConfigGrp {
    description "Attributes of Information Object Class CTIConfig";
    leaf ctiReportRateCategory {
     type uint8 {
        range "1..5";
      }
      config false;
      mandatory true;
      description "the supported message interval, where 1 = 5ms, 2 = 2ms, 3 = 1 ms
      4 = 0.5ms, 5 = 0.25 ms";
      reference "O-RAN.WG4.CTI-TCP: Table CTI Message Rate Categories for O-DU or TN";
    }
    leaf ctiMessageTimingPerformance {
      type uint8;
      units 20-microseconds;
      config false;
      mandatory true;
      description
        "The minimal spacing needed between the arrival time of the CTI message
        and the start boundary at Ra of the mobile slot N being reported in the message";
    }
    leaf-list supportedCtiVersions {
      type or-ctic:ctiVersion;
      config false;
      min-elements 1;
      max-elements 15;
      description "the list of versions of CTI TC-Plane that are supported by the CTI client";
    }
    leaf minNotificationAdvanceTime {
      type uint16;
      units milliseconds;
      config false;
      description "Min time in advance for reception of Notification message from TN";
    }
    uses or-ctic:ctiTimersGrp;
    uses or-ctic:subtypeGrp;
    uses or-ctic:ctiListeningUdpPortGrp;
  }

  //Class CTIClient attributes
  grouping CTIClientGrp {
    description "Attributes of Information Object Class CTIClient";
    leaf ctiClientMacAddr {
      type yang:mac-address;
      description "the CTI client MAC address";
    }
    leaf ctiEnable {
      type boolean;
      mandatory true;
      description "whether the CTI client is enabled or not";
    }
    leaf ctiClientInfo {
      type string;
      description "information of the CTI client";
    }
  }

  //Class CTISessionGroup attributes
  grouping CTISessionGroupGrp {
    description "Attributes of Information Object Class CTISessionGroup";
    leaf ctiServerRef{
      type types3gpp:DistinguishedName;
      mandatory true;
      description "Reference to corresponding CTIServer instance.";
    }
    leaf ctiConnProfileRef {
      type types3gpp:DistinguishedName;
      mandatory true;
      description "Reference to corresponding CTIConnProfile instance.";
    }
  }

  //Class CTISession attributes
  grouping CTISessionGrp {
    description "Attributes of Information Object Class CTISession";
    leaf ctiSessionId {
        type string;
        mandatory true;
        description "the identity of a CTI session";
      }
      leaf oruId {
        type string;
        description "Unique identifier for O-RU, following format: mfg-name_model-name_serial-num";
      }
      leaf oruInterfaceId {
        type string;
        description "Unique identifier for O-RU interface, following format: mfg-name_model-name_serial-num_macaddr";
      }
      leaf ctiNominalReportMsgInterval {
        type uint8;
        units 0.25-milliseconds;
        mandatory true;
        description "the nominal CTI reporting message interval";
      }
      leaf ctiReportMessagingUseOfType1Ext {
        type boolean;
        mandatory true;
        description "choice of including CTI Type 1 extension row in the CTI report messages";
      }
  }

  //Class CTIServer attributes
  grouping CTIServerGrp {
    description "Attributes of Information Object Class CTIServer";
    leaf ctiServerInfo {
      type string;
      description "Optional information about the CTI Server";
    }
    leaf connectivityType {
      type enumeration {
        enum Ethernet {
          description "Ethernet connectivity (no IP)";
        }
        enum UDPIP {
          description "UDP/IP connectivity";
        }
      }
      mandatory true;
      description "Type of connectivity to be used with this CTI server";
    }

    leaf ctiServerMacAddr {
      when "../connectivityType='Ethernet'";
      type yang:mac-address;
      mandatory true;
      description "the destination address used for CTI messages to the server";
    }
    leaf ctiServerHost {
      when "../connectivityType='UDPIP'";
      type inet:host;
      mandatory true;
      description "host (remote IP address or FQDN) for the CTI Server";
    }
    leaf ctiEnable {
      type boolean;
      mandatory true;
      description "whether the CTI server is enabled";
    }
    leaf-list supportedCtiVersions {
      type or-ctic:ctiVersion;
      min-elements 1;
      max-elements 15;
      description "the list of versions of CTI TC-Plane that are supported by the CTI server. At least 1 must be supported.";
    }
    leaf ctiReportMessagingUseOfType2 {
      type boolean;
      mandatory true;
      description "choice of including CTI Type 2 row in the CTI report messages";
    }
    leaf ponServerInfoUseNotificationsFromThisServer {
      type boolean;
      default false;
      description "use notification from this CTI server";
    }
    leaf docsisServerInfo {
      type string;
      description "placeholder for DOCSIS specific server information";
    }
  }

  //Class CTIFlow attributes
  grouping CTIFlowGrp{
    description "Attributes of Information Object Class CTIFlow";
    leaf ctiFlowId {
      type uint8;
      mandatory true;
      description "the identity of a flow";
    }
    leaf filterType {
       type enumeration {
         enum Ethernet {
           description "filter is based on L2 parameters";
         }
         enum UDPIP {
           description "filter is based on L3 and/or L4 parameters";
         }
       }
       mandatory true;
       description "indication whether CTI Flow corresponds to L2 filter or L3andL4 filter in the TN";
    }
    list layer2Filter {
      when "../filterType='Ethernet'";
      key idx;
      leaf idx { type uint32; description "dummy id"; }
      uses or-ctic:layer2FilterGrp;
      max-elements 1;  // 1 flow is associated with 1 filter
      description "List of Layer 2 filters in TN for differentiating CTI flows";
    }
    list layer3and4Filter {
      when "../filterType='UDPIP'";
      key idx;
      leaf idx { type uint32; description "dummy id"; }
      uses or-ctic:layer3and4FilterGrp;
      max-elements 1;  // 1 flow is associated with 1 filter
      description "List of Layer 3 / Layer 4 filters in TN for differentiating CTI flows";
    }
  }

  //Class CTIFlowsInUse attributes
  grouping CTIFlowsInUseGrp {
    description "Attributes of Information Object Class CTIFlowsInUse";
    leaf timeIntervalPerReport {
      type uint8;
		  units 0.25-milliseconds;
      mandatory true;
      description "Rate of reporting for given Flow ID in given CTI session ID, in units of 0.25ms";
    }
    leaf maxT34Latency {
      type uint16;
      units 5-microseconds;
      mandatory true;
      description
      "The maximum T34 latency allocated between O-RU and O-DU, in multiples of 5 microseconds";
    }
    leaf minLoad {
      type uint8;
      units Mbps;
      default 0;
      description
        "The minimum load (in Mbit/s) to be used in reported Bytes field of CTI reports,
		    to be converted in amount of Bytes for the reported time interval.";
    }
    leaf extraLoadCplane {
      type uint8;
      units Mbps;
      default 0;
      description
        "The extra load for uplink C-plane traffic (in Mbit/s) to be added in reported Bytes field of CTI reports,
		    to be converted in amount of Bytes for the reported time interval.";
    }
    leaf ctiFlowRef {
      type types3gpp:DistinguishedName;
      description "Reference to corresponding CTIFlow instance.
        When there is no use of filters or CTI flow differentation, the CTIflow ID used in the CTI messages is set to 0,
        and there is no need to reference to a given CTIflow instance";
    }
  }

  //Class CTIConnProfile attributes
  grouping CTIConnProfileGrp {
      description "Attributes of Information Object Class CTIConnProfile";
      leaf ctiConnProfileId {
        type string;
        mandatory true;
        description "Unique (in O-DU) identifier for the profile";
      }
      leaf connectivityType {
        type enumeration {
          enum Ethernet {
            description "Ethernet connectivity (no IP)";
          }
          enum UDPIP {
            description "UDP/IP connectivity";
          }
        }
        mandatory true;
        description "Type of connectivity associated with this Connectivity Profile";
      }
      leaf vlanTagForL2 {
        when "../connectivityType='Ethernet'";
        type or-types:vlan-id;            // type is only used for the value, not for pointing to an interface itself
        description "the VLAN tag to be used for CTI messages with the CTI server in case of Ethernet connectivity";
      }
      leaf vlanTagForL3and4 {
        when "../connectivityType='UDPIP'";
        type or-types:vlan-id;            // type is only used for the value, not for pointing to an interface itself
        description "the VLAN tag to be used for CTI messages with the CTI server in case of UDP/IP connectivity";
      }
      leaf ctiClientHost {
        when "../connectivityType='UDPIP'";
        type inet:host;    // modified from local ip to host. type is only used for the value, not for pointing to an interface itself
        description "a host on the O-DU to be used for CTI messages with the CTI server in case of UDP/IP connectivity";
      }
  }

  //Class CTIPattern attributes
  grouping CTIPatternGrp {
      description "Attributes of Information Object Class CTIPattern";
      uses or-ctic:ctiPatternGrp;
  }

/*

// CTIConfig IOC is temporarily included as comment.
// Its proper inclusion as augmentation is for further
// study and this will be updated in a future version of this file.
// By that time "augment TBD" will be changed to express anchor of CTIConfig.

	augment TBD {    // to be determined, for further study
    if-feature or-features:CTI;
    description "TBD is augmented with child CTIConfig and its children elements";
    list CTIConfig {
      key id;
      max-elements 1;
      description "CTIConfig is child of TBD";
      uses top3gpp:Top_Grp;
      container attributes {
        description "including CTIConfig attributes";
        uses CTIConfigGrp ;
      }
      list CTIPattern {
        key id;
        description "CTIPattern is child of CTIConfig";
        uses top3gpp:Top_Grp;
        container attributes {
          description "including CTIPattern attributes";
          uses CTIPatternGrp ;
        }
      }
      list CTIServer {
        key id;  // usually named 'id'
        description "CTIServer is child of CTIConfig";
        uses top3gpp:Top_Grp;
        container attributes {
          description "including CTIServer attributes";
          uses CTIServerGrp ;
        }
        list CTIFlow{
          key id;
          description "CTIFlow is child of CTIServer";
          uses top3gpp:Top_Grp;
          container attributes {
            description "including CTIFlow attributes";
            uses CTIFlowGrp;
          }
        }
      }
      list CTIConnProfile {
        key id;  // usually named 'id'
        description "CTIConnProfile is child of CTIConfig";
        uses top3gpp:Top_Grp;
        container attributes {
          description "including CTIConnProfile attributes";
          uses CTIConnProfileGrp ;
        }
      }
    }
  }
*/

  augment "/me3gpp:ManagedElement/gnbdu3gpp:GNBDUFunction" {
    if-feature or-features:CTI;
    description "GNBDUFunction is augmented with child CTIClient and its children elements";
    list CTIClient {
      key id;
      description "CTIClient is child of GNBDUFunction";
      uses top3gpp:Top_Grp;
      container attributes {
        description "including CTIClient attributes";
        uses CTIClientGrp ;
      }
      list CTISessionGroup {
        key id;
        description "CTISessionGroup is child of CTIClient";
        uses top3gpp:Top_Grp;
        container attributes {
          description "including CTISessionGroup attributes";
          uses CTISessionGroupGrp ;
        }
        list CTISession {
          key id;
          description "CTISession is child of CTISessionGroup";
          uses top3gpp:Top_Grp;
          container attributes {
            description "including CTISession attributes";
            uses CTISessionGrp ;
          }
          list CTIFlowsInUse {
            key id;
            description "CTIFlowsInUse is child of CTISession";
            uses top3gpp:Top_Grp;
            container attributes {
              description "including CTIFlowsInUse attributes";
              uses CTIFlowsInUseGrp ;
            }
          }
        }
      }
    }
  }
}

## File: o-ran-wg5-features.yang

module o-ran-wg5-features {
  yang-version 1.1;
  namespace "urn:o-ran:wg5feat:1.0";
  prefix "or-wg5feat";

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the set of re-usable type definitions for WG5 specific
    features.

    Copyright 2022 the O-RAN Alliance.

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

  revision "2022-03-14" {
    description
      "version 4.0.0

      1) initial version.";

    reference "ORAN-WG5.O-DU-O1.0-v04.00";
  }

  feature CTI {
    description
      "This feature indicates that the device supports CTI";
    reference "TC and TM specs";
  }
}
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG4.CTI-TMP-YANG-v03.00.zip.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG4.CTI-TMP-YANG-v03.00.zip).

---

* toc
{:toc}
