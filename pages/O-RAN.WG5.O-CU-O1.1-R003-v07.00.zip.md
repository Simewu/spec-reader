## O-RAN.WG5.O-CU-O1.1-R003-v07.00.zip

- View in [Reader Mode](https://simewu.com/spec-reader/pages/08-WG5/O-RAN.WG5.O-CU-O1.1-R003-v07.00.zip).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG5.O-CU-O1.1-R003-v07.00.zip).

---

Content from the zip file `documents/O-RAN.WG5.O-CU-O1.1-R003-v07.00.zip`:

## File: o-ran-cu-security-handling.yang

module o-ran-cu-security-handling{
  yang-version 1.1;
  namespace "urn:o-ran:cu-security-handling:1.0";
  prefix "o-ran-cusec";

  import _3gpp-common-top {
    prefix top3gpp;
  }
  import _3gpp-common-managed-element {
    prefix me3gpp;
  }
  import _3gpp-nr-nrm-gnbcucpfunction {
    prefix gnbcucp3gpp;
  }

  organization
  "O-RAN Alliance";

contact
  "www.o-ran.org";

description
  "This module defines the YANG definitions for Transport Network Layer (TNL)
   configuration for C-plane end-points at O-DU and O-CU. This module is to be
   used to augment 3GPP SA5 data models.

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
   * Neither the Members of the o-RAN Alliance nor the names of its
     contributors may be used to endorse or promote products derived from
     this software without specific prior written permission.";

  revision "2021-07-04" {
    description
      "version 0.0.1 - first release of O-RAN O1 for O-CU YANG models";

    reference "ORAN-WG5.O-CU-O1-v00.00.01.docx";
  }

  typedef CipheringAlgorithmID {
    type enumeration {
      enum NEA0 {
        description "NEA0";
      }
      enum NEA1 {
        description "NEA1";
      }
      enum NEA2 {
        description "NEA2";
      }
      enum NEA3 {
        description "NEA3";
      }
    }
    description "type definition for ciphering algorithms";
  }

  typedef IntegrityAlgorithmID {
    type enumeration {
      enum N1A1 {
        description "NIA1";
      }
      enum N1A2 {
        description "NIA2";
      }
      enum N1A3 {
        description "NIA3";
      }
    }
    description "type definition for integrity protection algorithms";
  }

  grouping SecurityHandlingGrp {
    description
      "represents the CU-CP security handling function";

    leaf-list cipheringAlgoPrio {
      type CipheringAlgorithmID;
      max-elements 4;
      ordered-by user;
      description
        "The attribute provides allowed ciphering algorithms with priority order.
        Minimum length of 1, maximum length of 4. Algorithm in index zero has highest priority.
        Each algorithm written only once in array.";
    }
    leaf-list integrityProtectAlgoPrio {
      type IntegrityAlgorithmID;
      max-elements 3;
      ordered-by user;
      description
        "The attribute provides allowed integrity algorithms with priority order.
         Minimum length of 1, maximum length of 3. Algorithm in index zero has highest priority.
         Each algorithm written only once in array.";
    }
  }

  augment "/me3gpp:ManagedElement/gnbcucp3gpp:GNBCUCPFunction" {

    list SecurityHandling {
      key id;
      description "Represents the O-RAN extension information of the CU-CP security related handling function.";
      reference "3GPP TS 38.331, 3GPP TS 28.541";
      uses top3gpp:Top_Grp;
      container attributes {
        uses SecurityHandlingGrp;
        description "container for attributes";
      }
    }
    description "augmentation of gnbcucpfunction with security handling configuration";
  }

}

## File: o-ran-cucountgroup.yang

module o-ran-cucountgroup{
  yang-version 1.1;
  namespace "urn:o-ran:cucountgroup:1.0";
  prefix "o-ran-cucg";

  import _3gpp-common-managed-element {
    prefix me3gpp;
  }
  import _3gpp-nr-nrm-gnbcucpfunction {
    prefix gnbcucp3gpp;
  }

  organization
  "O-RAN Alliance";

contact
  "www.o-ran.org";

description
  "This module defines the YANG definitions for CuCountGroup.

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
   * Neither the Members of the o-RAN Alliance nor the names of its
     contributors may be used to endorse or promote products derived from
     this software without specific prior written permission.";

  revision "2023-03-17" {
    description
      "version 4.0.0 - first release of this YANG module";

    reference "ORAN-WG5.O-CU-O1-v04.00.docx";
  }

  grouping cu-count-groups {
        description
          "cu-count-groups";
    list cu-count-group {
      key "cu-count-group-index";
        description
          "list of cu-count-groups";
      leaf cu-count-group-index {
        type uint8 {
          range 0..30;
        }
        description
          "The attribute provides Cu Counter Group index.";
        }

      leaf-list drb-id {
        type uint8 {
          range 0..32;
        }
        description
          "The attribute provides DRB ID used for concerned CuCountGroup. Value 0 indicates that this DRB ID is not counted in this CuCountGroup.";
      }

      leaf-list qci {
        type uint8 {
          range 0..255;
        }
        description
          "The attribute provides QoS Class Identifier defined in TS 23.401. Logical range and coding specified in TS 23.203. Value 0 indicates that this QCI shall NOT be counted in the CuCountGroup.";
      }

      leaf-list srb-id {
        type uint8 {
          range 0..3;
        }
        description
          "The attribute provides SRB ID used for concerned CuCountGroup. Value 0 indicates that this SRB ID is not counted in this CuCountGroup.";
      }

      leaf-list fiveQi {
        type uint8 {
          range 0..255;
        }
        description
          "The attribute provides 5QI identifier. Value 0 indicates that this 5QI shall NOT be counted in the CuCountGroup.";
      }

      list s-nssai {
        key "sst sd";
        description
          "S-NSSAI as NW Slice identification defined in TS 23.501. If the values of both SD and SST are 0, this slice is not counted in CuCountGroup.";
      leaf sd {
        type uint32 {
          range 0..16777215;
        }
        mandatory true;
        description
          "This parameter indicates the slice differentiator. Value 16777215 (0xFFFFFF) means no SD value associated with the SST.";
        }
        leaf sst {
        type uint8 {
          range 0..255;
        }
        mandatory true;
        description
          "This parameter indicates the slice service type.";
        }
      }
        leaf-list plmn-id {
        type string;
        description
          "3-octet string, representing PLMN Identity";
      }
        leaf-list arp {
        type uint8 {
          range 0..15;
        }
        description
          "This parameter indicates allocation and retention priority. Value 0 indicates that this ARP is not counted in this CuCountGroup.";
      }
    }
  }

  augment "/me3gpp:ManagedElement/gnbcucp3gpp:GNBCUCPFunction/gnbcucp3gpp:attributes" {
    container cu-count-groups {
      uses cu-count-groups;
          description
      "Container of cu-count-groups";
    }
    description
      "Augment of cu-count-groups";
  }

}

## File: o-ran-pdcp.yang

module o-ran-pdcp{
  yang-version 1.1;
  namespace "urn:o-ran:pdcp:1.0";
  prefix "o-ran-pdcp";

  import _3gpp-common-top {
    prefix top3gpp;
  }
  import _3gpp-common-managed-element {
    prefix me3gpp;
  }
  import _3gpp-nr-nrm-gnbcucpfunction {
    prefix gnbcucp3gpp;
  }

  organization
  "O-RAN Alliance";

contact
  "www.o-ran.org";

description
  "This module defines the YANG definitions for configuring PDCP parameters.
   This module is to be used to augment 3GPP SA5 data models.

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
   * Neither the Members of the o-RAN Alliance nor the names of its
     contributors may be used to endorse or promote products derived from
     this software without specific prior written permission.";

  revision 2023-11-14 {
    description
      "version 1.0.0
       Initial version of PDCP config";

    reference "O-RAN.WG5.O-CU-O1.0-R003-v07.00.docx";
  }

  typedef pdcpSNSize {
    type enumeration {
      enum LEN-12-BITS {
        description "SN length of 12 bits";
      }
      enum LEN-18-BITS {
        description "SN length of 18 bits";
      }
    }
    description " type definition for PDCP SN Length";
  }

  typedef rlcModeType {
    type enumeration {
      enum RLC-TM {
        description "RLC-TM mode";
      }
      enum RLC-AM {
        description "RLC-AM mode";
      }
      enum RLC-UM-BIDIRECTIONAL {
        description "RLC-UMBidirectional mode";
      }
      enum RLC-UM-BIDIRECTIONAL-UL {
        description "RLC-UMUnidirectional-UL mode";
      }
      enum RLC-UM-UNIDIRECTIONAL-DL {
        description "RLC-UMUnidirectional-DL mode";
      }
    }
    description "type definition for RLC mode";
  }

  grouping more-than-one-rlc {
    description "Configuration related to split-bearer. moreThanOneRLC. TS 38.331";
    leaf ul-data-split-threshold {
      type uint32 {
	    range "0 | 100 | 200 | 400 | 800 | 1600 | 3200 | 6400 | 12800 | 25600 | 51200 | 102400 |
		204800 | 409600 | 819200 | 1228800 | 1638400 | 2457600 | 3276800 | 4096000 | 4915200 | 5734400 | 6553600";
	  }
      description "ul-DataSplitThreshold in bytes. PDCP-Config. TS 38.331.If no value set, implies infinity.";
    }
  }

  grouping drb-parameters {
    description "grouping for drb configuration";
    leaf discard-timer {
      type uint16 {
	    range "10 | 20 | 30 | 40 | 50 | 60 | 75 | 100 | 150 | 200 | 250 | 300 | 500 | 750 | 1500";
	  }
      description "discardTimer from PDCP-Config, in milliseconds. TS 38.331. If no value set, implies infinity.";
    }
    leaf pdcp-sn-size-ul {
      type pdcpSNSize;
      description "pdcp-SN-SizeUL, PDCP-Config. TS 38.331";
    }
    leaf pdcp-sn-size-dl {
      type pdcpSNSize;
      description "pdcp-SN-SizeDL, PDCP-Config. TS 38.331";
    }
    leaf t-reordering {
      type uint16 {
	    range "0 | 1 | 2 | 4 | 5 | 8 | 10 | 15 | 20 | 30 | 40 | 50 | 60 |
		80 | 100 | 120 | 140 | 160 | 180 |  200 | 220 | 240 | 260 | 280 | 300 | 500 | 750 |
		1000 | 1250 | 1500 | 1750 | 2000 | 2250 | 2500 | 2750 | 3000";
	  }
      description "t-Reordering, PDCP-Config, in milliseconds. TS 38.331.If no value set, implies infinity.";
    }
    leaf t-reordering-ul {
      type uint16 {
	    range "0 | 1 | 2 | 4 | 5 | 8 | 10 | 15 | 20 | 30 | 40 | 50 | 60 |
		80 | 100 | 120 | 140 | 160 | 180 |  200 | 220 | 240 | 260 | 280 | 300 | 500 | 750 |
		1000 | 1250 | 1500 | 1750 | 2000 | 2250 | 2500 | 2750 | 3000";
	  }
      description "T-Reordering Timer, in milliseconds. Used at CU-UP for Uplink. TS 38.463.If no value set, implies infinity.";
    }
    leaf rlc-mode {
      type rlcModeType;
      description "rlc-mode, PDCP-Configuration. TS 38.463";
    }
    leaf header-compression-enabled {
      type boolean;
      description "specifies whether ROHC should be enabled. PDCP-Config. TS 38.331";
    }
  }

  grouping PDCPConfigGrp {
    description "grouping for PDCP configuration per QoS";
    uses drb-parameters;
    uses more-than-one-rlc;
  }

  grouping qosGrp {
    description "list of QCIs and/or 5QIs for a PDCP configuration";
    leaf-list qci {
      type uint16 {
        range 0..255;
      }
      description "list of QCIs for PDCP configuration";
    }
    leaf-list fiveQI {
      type uint16  {
        range 0..255;
      }
      description "list of 5QIs for PDCP configuration";
    }
  }

  augment "/me3gpp:ManagedElement/gnbcucp3gpp:GNBCUCPFunction" {
    list PDCPConfig {
      key id;
      max-elements 32;
      description "Represents PDCP Configurations";
      reference "3GPP TS 38.331";
      uses top3gpp:Top_Grp;
      container attributes {
        description "attributes of pdcpConfig";
        uses qosGrp;
        uses PDCPConfigGrp;
      }
    }
    description "O-RAN augmentation of GNBCUCPFunction for PDCP configurations";
  }
}
---

- View in [Reader Mode](https://simewu.com/spec-reader/pages/08-WG5/O-RAN.WG5.O-CU-O1.1-R003-v07.00.zip).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG5.O-CU-O1.1-R003-v07.00.zip).
