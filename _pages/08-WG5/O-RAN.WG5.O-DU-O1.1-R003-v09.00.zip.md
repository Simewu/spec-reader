---
title: O-RAN.WG5.O-DU-O1.1-R003-v09.00.zip.md
author: O-RAN Alliance
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG5.O-DU-O1.1-R003-v09.00.zip.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG5.O-DU-O1.1-R003-v09.00.zip).

---

* toc
{:toc}

---

Content from the zip file `documents/O-RAN.WG5.O-DU-O1.1-R003-v09.00.zip`:

## File: additional-configuration/o-ran-c-plane-tnl.yang

module o-ran-c-plane-tnl{
  yang-version 1.1;
  namespace "urn:o-ran:c-plane-tnl:1.0";
  prefix "o-ran-c-tnl";

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

  revision "2020-09-25" {
    description
      "version 1.0.0 - first release of O-RAN O1 for O-DU YANG models";

    reference "ORAN-WG5.MP.0-v01.00";
  }

  typedef dscp-marking-value {
    type uint8 {
      range "0..63";
    }
    description "type definition for DSCP marking";
  }

  grouping dscp-marking {
    leaf c-plane-dscp {
      type dscp-marking-value;
      mandatory true;
      description "dscp-marking for F1-C, X2-C, Xn-C, NG-C or E1 traffic";
    }
    description "grouping of DSCP marking";
  }

  grouping sctp-configuration {
    container sctp-configuration {
      leaf association-hbt-interval {
        type uint8 {
          range "0..60";
        }
        default 30;
        description "SCTP association heart-beat interval";
      }
      leaf max-burst {
        type uint8 {
          range "2..8";
        }
        default 4;
        description "SCTP max burst";
      }
      leaf association-max-retries {
        type uint8 {
          range "1..30";
        }
        default 10;
        description "SCTP association max retries";
      }
      leaf rto-initial {
        type uint16 {
          range "10..60000";
        }
        default 3000;
        description "SCTP RTO expiry timer initial value";
      }
      leaf rto-max {
        type uint16 {
          range "10..60000";
        }
        default 60000;
        description "SCTP RTO expiry timer max value";
      }
      leaf rto-min {
        type uint16 {
          range "10..60000";
        }
        default 1000;
        description "SCTP RTO expiry timer min value";
      }
      leaf ack-delay {
        type uint16 {
          range "20..500";
        }
        default 200;
        description "SCTP ACK delay time";
      }
      leaf ack-frequency {
        type uint8 {
          range "1..25";
        }
        default 5;
        description "SCTP ACK frequency";
      }
      leaf cookie-life {
        type uint16 {
          range "1..60000";
        }
        default 60;
        description "SCTP cookie life value";
      }
      leaf path-max-retransmits {
        type uint8 {
          range "1..30";
        }
        default 5;
        description "SCTP path max retransmits value";
      }
      leaf max-init-retransmits {
        type uint8 {
          range "1..30";
        }
        default 8;
        description "SCTP max INIT retransmits";
      }
      description "container for SCTP configuration";
    }
    description "grouping SCTP configurations";
  }

}

## File: additional-configuration/o-ran-du-f1-tnl.yang

module o-ran-du-f1-tnl{
  yang-version 1.1;
  namespace "urn:o-ran:du-f1-tnl:1.0";
  prefix "o-ran-du-f1-tnl";
  import _3gpp-common-managed-element {
    prefix "me3gpp";
  }

  import _3gpp-nr-nrm-gnbdufunction {
    prefix "gnbdu3gpp";
  }

  import _3gpp-nr-nrm-ep {
    prefix "ep3gpp";
    revision-date 2020-03-02;
  }

  import ietf-hardware {
    prefix hw;
  }

  import o-ran-hardware {
    prefix o-ran-hw;
    revision-date "2020-04-17";
  }

  import o-ran-u-plane-tnl {
    prefix "o-ran-u-tnl";
    revision-date "2020-09-25";
  }

  import o-ran-c-plane-tnl {
    prefix "o-ran-c-tnl";
    revision-date "2020-09-25";
  }
  organization
  "O-RAN Alliance";

contact
  "www.o-ran.org";

description
  "This module augments TNL for DU F1 end-point in 3GPP SA5 data models.

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

  revision "2020-09-25" {
    description
      "version 1.0.0 - first release of O-RAN O1 for O-DU YANG models";

    reference "ORAN-WG5.MP.0-v01.00";
  }

  augment "/me3gpp:ManagedElement/gnbdu3gpp:GNBDUFunction/ep3gpp:EP_F1U/ep3gpp:attributes" {
    when "(derived-from-or-self(/hw:hardware/hw:component/hw:class, 'o-ran-hw:O-DU-COMPONENT'))";
    container o-ran-u-plane-tnl-additional-config {
      description "Container for U-plane F1 TNL configuration";
      uses o-ran-u-tnl:gtp-configuration;
      uses o-ran-u-tnl:dscp-marking;
    }
    description "SA5 gNB DU function augmented with additional F1 TNL configuration";
  }

  augment "/me3gpp:ManagedElement/gnbdu3gpp:GNBDUFunction/ep3gpp:EP_F1C/ep3gpp:attributes" {
    when "(derived-from-or-self(/hw:hardware/hw:component/hw:class, 'o-ran-hw:O-DU-COMPONENT'))";
    container o-ran-c-plane-tnl-additional-config {
      description "Container for C-plane F1 TNL configuration";
      uses o-ran-c-tnl:sctp-configuration;
      uses o-ran-c-tnl:dscp-marking;
    }
    description "SA5 gNB DU function augmented with additional F1 TNL configuration";
  }
}

## File: additional-configuration/o-ran-nr-u.yang

module o-ran-nr-u{
  yang-version 1.1;
  namespace "urn:o-ran:nr-u:1.0";
  prefix "o-ran-nr-u";

  import _3gpp-common-managed-element {
    prefix "me3gpp";
  }

  import _3gpp-nr-nrm-gnbdufunction {
    prefix "gnbdu3gpp";
  }

  import _3gpp-nr-nrm-nrcelldu {
    prefix "nrcelldu3gpp";
  }

  import ietf-hardware {
    prefix hw;
  }

  import o-ran-hardware {
    prefix o-ran-hw;
    revision-date "2020-04-17";
  }

  import o-ran_3gpp-nr-nrm-nrcelldu {
    prefix "or-nrcelldu";
  }

  organization
  "O-RAN Alliance";

contact
  "www.o-ran.org";

description
  "This module defines the YANG definitions for NR-U configuration. This is used
   to augment SA5 DU data model.

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

  revision "2020-09-25" {
    description
      "version 1.0.0 - first release of O-RAN O1 for O-DU YANG models";

    reference "ORAN-WG5.MP.0-v01.00";
  }

  grouping nr-u-configuration-group {
    container assistance-information-data-list {
      container radio-quality-assistance-info {
        leaf average-cqi {
          type enumeration {
            enum DISABLE {
              description "Disable";
            }
            enum ENABLE {
              description "Enable";
            }
          }
          mandatory true;
          description
            "Indicates whether gNB-DU shall include Average CQI information
             when sending Assistance Information Data";

        }
        leaf average-harq-failure {
          type enumeration {
            enum DISABLE {
              description "Disable";
            }
            enum ENABLE {
              description "Enable";
            }
          }
          mandatory true;
          description
            "Indicates whether gNB-DU shall include Average HARQ Failure
             information when sending Assistance Information Data ";
        }
        leaf average-harq-retx {
          type enumeration {
            enum DISABLE {
              description "Disable";
            }
            enum ENABLE {
              description "Enable";
            }
          }
          mandatory true;
          description
            "Indicates whether gNB-DU shall include Average HARQ Retransmissions
             information when sending Assistance Information Data";
        }
        leaf dl-radio-quality-index {
          type enumeration {
            enum DISABLE {
              description "Disable";
            }
            enum ENABLE {
              description "Enable";
            }
          }
          mandatory true;
          description
            "Indicates whether gNB-DU shall include DL Radio Quality Index information
             when sending Assistance Information Data";
        }
        leaf ul-radio-quality-index {
          type enumeration {
            enum DISABLE {
              description "Disable";
            }
            enum ENABLE {
              description "Enable";
            }
          }
          mandatory true;
          description
            "Indicates whether gNB-DU shall include UL Radio Quality Index information
             when sending Assistance Information Data";
        }
        leaf power-headroom-report {
          type enumeration {
            enum DISABLE {
              description "Disable";
            }
            enum ENABLE {
              description "Enable";
            }
          }
          mandatory true;
          description
            "Indicates whether gNB-DU shall include Power Headroom Report information
             when sending Assistance Information Data [14].";
        }
        description "container for radio-quality-assistance-info";
      }
      description "assistance-information-data-list";
    }
    description "grouping of NR-U configuration";
  }

  augment "/me3gpp:ManagedElement/gnbdu3gpp:GNBDUFunction/nrcelldu3gpp:NRCellDU/nrcelldu3gpp:attributes/or-nrcelldu:o-ran-configuration" {
    when "(derived-from-or-self(/hw:hardware/hw:component/hw:class, 'o-ran-hw:O-DU-COMPONENT'))";
    uses nr-u-configuration-group;
    description "SA5 gNB DU cell o-ran-container augmented with NR-U configuration";
  }
}

## File: additional-configuration/o-ran-qos.yang

module o-ran-qos{
  yang-version 1.1;
  namespace "urn:o-ran:qos:1.0";
  prefix "o-ran-du-qos";

  import _3gpp-common-managed-element {
    prefix "me3gpp";
  }

  import _3gpp-nr-nrm-gnbdufunction {
    prefix "gnbdu3gpp";
  }

  import ietf-hardware {
    prefix hw;
  }

  import o-ran-hardware {
    prefix o-ran-hw;
    revision-date "2020-04-17";
  }

  organization
  "O-RAN Alliance";

contact
  "www.o-ran.org";

description
  "This module defines the YANG definitions for QoS configuration for O-DU.
   This is used to augment SA5 DU data model.

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

  revision "2020-09-25" {
    description
      "version 1.0.0 - first release of O-RAN O1 for O-DU YANG models";

    reference "ORAN-WG5.MP.0-v01.00";
  }

  grouping qos-config-group {
    list qos-config-group {
      key "qci";
      min-elements 1;
      leaf qci {
        type uint8 {
          range "0..255";
        }
        mandatory true;
        description "QoS Class Identifier defined in TS 23.401";
      }
      leaf qos-group-index {
        type uint8 {
          range "1..32";
        }
        mandatory true;
        description "QoS group index for the QCI";
      }
      description "List of QoS group index to QCI mapping";
    }
    description "grouping for QoS configuration";
  }

  augment "/me3gpp:ManagedElement/gnbdu3gpp:GNBDUFunction/gnbdu3gpp:attributes" {
    when "(derived-from-or-self(/hw:hardware/hw:component/hw:class, 'o-ran-hw:O-DU-COMPONENT'))";
    uses qos-config-group;
    description "SA5 gNB DU function augmented with QoS configuration";
  }
}

## File: additional-configuration/o-ran-rlc.yang

module o-ran-rlc{
  yang-version 1.1;
  namespace "urn:o-ran:rlc:1.0";
  prefix "o-ran-rlc";

  import _3gpp-common-managed-element {
    prefix "me3gpp";
  }

  import _3gpp-nr-nrm-gnbdufunction {
    prefix "gnbdu3gpp";
  }

  import ietf-hardware {
    prefix hw;
  }

  import o-ran-hardware {
    prefix o-ran-hw;
    revision-date "2020-04-17";
  }

  organization
  "O-RAN Alliance";

contact
  "www.o-ran.org";

description
  "This module defines the YANG definitions for O-DU RLC module

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

  revision "2020-09-25" {
    description
      "version 1.0.0 - first release of O-RAN O1 for O-DU YANG models";

    reference "ORAN-WG5.MP.0-v01.00";
  }

  typedef poll-retransmit-time {
    type enumeration {
      enum MS5 {
        description "5 milliseconds";
      }
      enum MS10 {
        description "10 milliseconds";
      }
      enum MS15 {
        description "15 milliseconds";
      }
      enum MS20 {
        description "20 milliseconds";
      }
      enum MS25 {
        description "25 milliseconds";
      }
      enum MS30 {
        description "30 milliseconds";
      }
      enum MS35 {
        description "35 milliseconds";
      }
      enum MS40 {
        description "40 milliseconds";
      }
      enum MS45 {
        description "45 milliseconds";
      }
      enum MS50 {
        description "50 milliseconds";
      }
      enum MS55 {
        description "55 milliseconds";
      }
      enum MS60 {
        description "60 milliseconds";
      }
      enum MS65 {
        description "65 milliseconds";
      }
      enum MS70 {
        description "70 milliseconds";
      }
      enum MS75 {
        description "75 milliseconds";
      }
      enum MS80 {
        description "80 milliseconds";
      }
      enum MS85 {
        description "85 milliseconds";
      }
      enum MS90 {
        description "90 milliseconds";
      }
      enum MS95 {
        description "95 milliseconds";
      }
      enum MS100 {
        description "100 milliseconds";
      }
      enum MS105 {
        description "105 milliseconds";
      }
      enum MS110 {
        description "110 milliseconds";
      }
      enum MS115 {
        description "115 milliseconds";
      }
      enum MS120 {
        description "120 milliseconds";
      }
      enum MS125 {
        description "125 milliseconds";
      }
      enum MS130 {
        description "130 milliseconds";
      }
      enum MS135 {
        description "135 milliseconds";
      }
      enum MS140 {
        description "140 milliseconds";
      }
      enum MS145 {
        description "145 milliseconds";
      }
      enum MS150 {
        description "150 milliseconds";
      }
      enum MS155 {
        description "155 milliseconds";
      }
      enum MS160 {
        description "160 milliseconds";
      }
      enum MS165 {
        description "165 milliseconds";
      }
      enum MS170 {
        description "170 milliseconds";
      }
      enum MS175 {
        description "175 milliseconds";
      }
      enum MS180 {
        description "180 milliseconds";
      }
      enum MS185 {
        description "185 milliseconds";
      }
      enum MS190 {
        description "190 milliseconds";
      }
      enum MS195 {
        description "195 milliseconds";
      }
      enum MS200 {
        description "200 milliseconds";
      }
      enum MS205 {
        description "205 milliseconds";
      }
      enum MS210 {
        description "210 milliseconds";
      }
      enum MS215 {
        description "215 milliseconds";
      }
      enum MS220 {
        description "220 milliseconds";
      }
      enum MS225 {
        description "225 milliseconds";
      }
      enum MS230 {
        description "230 milliseconds";
      }
      enum MS235 {
        description "235 milliseconds";
      }
      enum MS240 {
        description "240 milliseconds";
      }
      enum MS245 {
        description "245 milliseconds";
      }
      enum MS250 {
        description "250 milliseconds";
      }
      enum MS300 {
        description "300 milliseconds";
      }
      enum MS350 {
        description "350 milliseconds";
      }
      enum MS400 {
        description "400 milliseconds";
      }
      enum MS450 {
        description "450 milliseconds";
      }
      enum MS500 {
        description "500 milliseconds";
      }
      enum MS800 {
        description "800 milliseconds";
      }
      enum MS1000 {
        description "1000 milliseconds";
      }
      enum MS2000 {
        description "2000 milliseconds";
      }
      enum MS4000 {
        description "4000 milliseconds";
      }
    }
    description "type definition for RLC poll-retransmit-timer";
  }

  typedef status-prohibit-time {
    type enumeration {
      enum MS0 {
        description "0 milliseconds";
      }
      enum MS5 {
        description "5 milliseconds";
      }
      enum MS10 {
        description "10 milliseconds";
      }
      enum MS15 {
        description "15 milliseconds";
      }
      enum MS20 {
        description "20 milliseconds";
      }
      enum MS25 {
        description "25 milliseconds";
      }
      enum MS30 {
        description "30 milliseconds";
      }
      enum MS35 {
        description "35 milliseconds";
      }
      enum MS40 {
        description "40 milliseconds";
      }
      enum MS45 {
        description "45 milliseconds";
      }
      enum MS50 {
        description "50 milliseconds";
      }
      enum MS55 {
        description "55 milliseconds";
      }
      enum MS60 {
        description "60 milliseconds";
      }
      enum MS65 {
        description "65 milliseconds";
      }
      enum MS70 {
        description "70 milliseconds";
      }
      enum MS75 {
        description "75 milliseconds";
      }
      enum MS80 {
        description "80 milliseconds";
      }
      enum MS85 {
        description "85 milliseconds";
      }
      enum MS90 {
        description "90 milliseconds";
      }
      enum MS95 {
        description "95 milliseconds";
      }
      enum MS100 {
        description "100 milliseconds";
      }
      enum MS105 {
        description "105 milliseconds";
      }
      enum MS110 {
        description "110 milliseconds";
      }
      enum MS115 {
        description "115 milliseconds";
      }
      enum MS120 {
        description "120 milliseconds";
      }
      enum MS125 {
        description "125 milliseconds";
      }
      enum MS130 {
        description "130 milliseconds";
      }
      enum MS135 {
        description "135 milliseconds";
      }
      enum MS140 {
        description "140 milliseconds";
      }
      enum MS145 {
        description "145 milliseconds";
      }
      enum MS150 {
        description "150 milliseconds";
      }
      enum MS155 {
        description "155 milliseconds";
      }
      enum MS160 {
        description "160 milliseconds";
      }
      enum MS165 {
        description "165 milliseconds";
      }
      enum MS170 {
        description "170 milliseconds";
      }
      enum MS175 {
        description "175 milliseconds";
      }
      enum MS180 {
        description "180 milliseconds";
      }
      enum MS185 {
        description "185 milliseconds";
      }
      enum MS190 {
        description "190 milliseconds";
      }
      enum MS195 {
        description "195 milliseconds";
      }
      enum MS200 {
        description "200 milliseconds";
      }
      enum MS205 {
        description "205 milliseconds";
      }
      enum MS210 {
        description "210 milliseconds";
      }
      enum MS215 {
        description "215 milliseconds";
      }
      enum MS220 {
        description "220 milliseconds";
      }
      enum MS225 {
        description "225 milliseconds";
      }
      enum MS230 {
        description "230 milliseconds";
      }
      enum MS235 {
        description "235 milliseconds";
      }
      enum MS240 {
        description "240 milliseconds";
      }
      enum MS245 {
        description "245 milliseconds";
      }
      enum MS250 {
        description "250 milliseconds";
      }
      enum MS300 {
        description "300 milliseconds";
      }
      enum MS350 {
        description "350 milliseconds";
      }
      enum MS400 {
        description "400 milliseconds";
      }
      enum MS450 {
        description "450 milliseconds";
      }
      enum MS500 {
        description "500 milliseconds";
      }
      enum MS800 {
        description "800 milliseconds";
      }
      enum MS1000 {
        description "1000 milliseconds";
      }
      enum MS1200 {
        description "1200 milliseconds";
      }
      enum MS1600 {
        description "1600 milliseconds";
      }
      enum MS2000 {
        description "2000 milliseconds";
      }
      enum MS2400 {
        description "2400 milliseconds";
      }
    }
    description "type definition for RLC status-prohibit-timer";
  }

  typedef reassembly-time {
    type enumeration {
      enum MS0 {
        description "0 milliseconds";
      }
      enum MS5 {
        description "5 milliseconds";
      }
      enum MS10 {
        description "10 milliseconds";
      }
      enum MS15 {
        description "15 milliseconds";
      }
      enum MS20 {
        description "20 milliseconds";
      }
      enum MS25 {
        description "25 milliseconds";
      }
      enum MS30 {
        description "30 milliseconds";
      }
      enum MS35 {
        description "35 milliseconds";
      }
      enum MS40 {
        description "40 milliseconds";
      }
      enum MS45 {
        description "45 milliseconds";
      }
      enum MS50 {
        description "50 milliseconds";
      }
      enum MS55 {
        description "55 milliseconds";
      }
      enum MS60 {
        description "60 milliseconds";
      }
      enum MS65 {
        description "65 milliseconds";
      }
      enum MS70 {
        description "70 milliseconds";
      }
      enum MS75 {
        description "75 milliseconds";
      }
      enum MS80 {
        description "80 milliseconds";
      }
      enum MS85 {
        description "85 milliseconds";
      }
      enum MS90 {
        description "90 milliseconds";
      }
      enum MS95 {
        description "95 milliseconds";
      }
      enum MS100 {
        description "100 milliseconds";
      }
      enum MS110 {
        description "110 milliseconds";
      }
      enum MS120 {
        description "120 milliseconds";
      }
      enum MS130 {
        description "130 milliseconds";
      }
      enum MS140 {
        description "140 milliseconds";
      }
      enum MS150 {
        description "150 milliseconds";
      }
      enum MS160 {
        description "160 milliseconds";
      }
      enum MS170 {
        description "170 milliseconds";
      }
      enum MS180 {
        description "180 milliseconds";
      }
      enum MS190 {
        description "190 milliseconds";
      }
      enum MS200 {
        description "200 milliseconds";
      }
    }
    description "type definition for RLC reassembly-timer";
  }

  typedef num-poll-pdu {
    type enumeration {
      enum P4 {
        description "PDU";
      }
      enum P8 {
        description "8 PDU";
      }
      enum P16 {
        description "16 PDU";
      }
      enum P32 {
        description "32 PDU";
      }
      enum P64 {
        description "64 PDU";
      }
      enum P128 {
        description "128 PDU";
      }
      enum P256 {
        description "256 PDU";
      }
      enum P512 {
        description "512 PDU";
      }
      enum P1024 {
        description "1024 PDU";
      }
      enum P2048 {
        description "2048 PDU";
      }
      enum P4096 {
        description "4096 PDU";
      }
      enum P6144 {
        description "6144 PDU";
      }
      enum P8192 {
        description "8192 PDU";
      }
      enum P12288 {
        description "12288 PDU";
      }
      enum P16384 {
        description "16384 PDU";
      }
      enum P20480 {
        description "20480 PDU";
      }
      enum P24576 {
        description "24576 PDU";
      }
      enum P28672 {
        description "28672 PDU";
      }
      enum P32768 {
        description "32768 PDU";
      }
      enum P40960 {
        description "40960 PDU";
      }
      enum P49152 {
        description "49152 PDU";
      }
      enum P57344 {
        description "57344 PDU";
      }
      enum P65536 {
        description "65536 PDU";
      }
      enum INFINITY {
        description "infinity";
      }
    }
    description "type definition for RLC poll-pdu";
  }
  typedef num-poll-bytes  {
    type enumeration {
      enum KB1 {
        description "1 kByte";
      }
      enum  KB2 {
        description "2 kBytes";
      }
      enum  KB5 {
        description "5 kBytes";
      }
      enum  KB8 {
        description "8 kBytes";
      }
      enum  KB10 {
        description "10 kBytes";
      }
      enum  KB15 {
        description "15 kBytes";
      }
      enum  KB25 {
        description "25 kBytes";
      }
      enum  KB50 {
        description "50 kBytes";
      }
      enum  KB75 {
        description "75 kBytes";
      }
      enum  KB100 {
        description "100 kBytes";
      }
      enum  KB125 {
        description "125 kBytes";
      }
      enum  KB250 {
        description "250 kBytes";
      }
      enum  KB375 {
        description "375 kBytes";
      }
      enum  KB500 {
        description "500 kBytes";
      }
      enum  KB750 {
        description "750 kBytes";
      }
      enum  KB1000 {
        description "1000 kBytes";
      }
      enum  KB1250 {
        description "1250 kBytes";
      }
      enum  KB1500 {
        description "1500 kBytes";
      }
      enum  KB2000 {
        description "2000 kBytes";
      }
      enum  KB3000 {
        description "3000 kBytes";
      }
      enum  KB4000 {
        description "4000 kBytes";
      }
      enum  KB4500 {
        description "4500 kBytes";
      }
      enum  KB5000 {
        description "5000 kBytes";
      }
      enum  KB5500 {
        description "5500 kBytes";
      }
      enum  KB6000 {
        description "6000 kBytes";
      }
      enum  KB6500 {
        description "6500 kBytes";
      }
      enum  KB7000 {
        description "7000 kBytes";
      }
      enum  KB7500 {
        description "7500 kBytes";
      }
      enum  MB8 {
        description "8 mBytes";
      }
      enum  MB9 {
        description "9 mBytes";
      }
      enum  MB10 {
        description "10 mBytes";
      }
      enum  MB11 {
        description "11 mBytes";
      }
      enum  MB12 {
        description "12 mBytes";
      }
      enum  MB13 {
        description "13 mBytes";
      }
      enum  MB14 {
        description "14 mBytes";
      }
      enum  MB15 {
        description "15 mBytes";
      }
      enum  MB16 {
        description "16 mBytes";
      }
      enum  MB17 {
        description "17 mBytes";
      }
      enum  MB18 {
        description "18 mBytes";
      }
      enum  MB20 {
        description "20 mBytes";
      }
      enum  MB25 {
        description "25 mBytes";
      }
      enum  MB30 {
        description "30 mBytes";
      }
      enum  MB40 {
        description "40 mBytes";
      }
      enum  INFINITY {
        description "infinity";
      }
    }
    description "type definition for RLC poll-bytes";
  }

  typedef num-max-retx  {
    type enumeration {
      enum T1 {
        description "1 retransmission";
      }
      enum T2 {
        description "2 retransmissions";
      }
      enum T3 {
        description "3 retransmissions";
      }
      enum T4 {
        description "4 retransmissions";
      }
      enum T6 {
        description "6 retransmissions";
      }
      enum T8 {
        description "8 retransmissions";
      }
      enum T16 {
        description "16 retransmissions";
      }
      enum T32 {
        description "32 retransmissions";
      }
    }
    description "type definition for RLC max-retx";
  }

  typedef am-sn-field-lengths {
    type enumeration {
      enum SIZE12 {
        description "12-bit SN field";
      }
      enum SIZE18 {
        description "18-bit SN field";
      }
    }
    description "type definition for sn-field-length-am";
  }
  typedef um-sn-field-lengths {
    type enumeration {
      enum SIZE6 {
        description "6-bit SN field";
      }
      enum SIZE12 {
        description "12-bit SN field";
      }
    }
    description "type definition for sn-field-length-um";
  }

  grouping rlc-config-param-grouping {
    description "grouping of RLC config parameters";
    leaf t-poll-retransmit {
      type poll-retransmit-time;
      mandatory true;
      description "poll retransmit timer for RLC-AM. TS 38.331";
    }
    leaf poll-pdu {
      type num-poll-pdu;
      mandatory true;
      description "num poll pdu for RLC-AM. TS 38.331";
    }
    leaf poll-byte {
      type num-poll-bytes;
      mandatory true;
      description "num poll bytes for RLC-AM. TS 38.331";
    }
    leaf max-retx-threshold {
      type num-max-retx;
      mandatory true;
      description "num max retx for RLC-AM. TS 38.331";
    }
    leaf t-reassembly {
      type reassembly-time;
      mandatory true;
      description "reassembly timer for RLC-AM. TS 38.331";
    }
    leaf t-status-prohibit {
      type status-prohibit-time;
      mandatory true;
      description "status-prohibit timer for RLC-AM. TS 38.331";
    }
  }

  grouping sn-field-length-grouping {
    description "grouping of AM and UM SN field length parameters";
    leaf sn-field-length-am {
      type am-sn-field-lengths;
      mandatory true;
      description "sn field length for AM";
    }
    leaf sn-field-length-um {
      type um-sn-field-lengths;
      mandatory true;
      description "sn field length for UM";
    }
  }

  grouping ue-config-rlc-param-grouping {
    description "grouping of UE RLC config parameters";
    container ue-config-rlc-param-list {
        description "container for UE RLC config parameters";
        uses rlc-config-param-grouping;
      }
  }
  grouping gnb-du-config-rlc-param-grouping {
    description "grouping of DU RLC config parameters";
    container gnb-du-config-rlc-param-list {
        description "container for DU RLC config parameters";
        uses rlc-config-param-grouping;
      }
  }

 grouping rlc-config-group {
    description "grouping of RLC config parameters";
    container rlc-config {
      description "Container for RLC config parameters";
      container srb-config-list {
        description "container for SRB RLC config parameters";
        uses ue-config-rlc-param-grouping;
        uses gnb-du-config-rlc-param-grouping;
      }
      list qos-group-config-list {
        key "qos-group-index";
          min-elements 1;
          description "list of RLC config per QoS group";
          leaf qos-group-index {
            type uint8 {
              range "1..32";
             }
            description "qos group index";
          }
          container common-config-rlc-param-list {
            description "container for RLC config parameters common for DU and UE";
            container ul-sn-field-lengths {
              description "container for UL SN field lengths";
              uses sn-field-length-grouping;
            }
            container dl-sn-field-lengths {
              description "container for DL SN field lengths";
              uses sn-field-length-grouping;
            }
          }
          uses ue-config-rlc-param-grouping;
          uses gnb-du-config-rlc-param-grouping;
      }
    }
  }

  augment "/me3gpp:ManagedElement/gnbdu3gpp:GNBDUFunction/gnbdu3gpp:attributes" {
    when "(derived-from-or-self(/hw:hardware/hw:component/hw:class, 'o-ran-hw:O-DU-COMPONENT'))";
    uses rlc-config-group;
    description "SA5 gNB DU function augmented with RLC configuration";
  }
}

## File: additional-configuration/o-ran-u-plane-tnl.yang

module o-ran-u-plane-tnl{
  yang-version 1.1;
  namespace "urn:o-ran:u-plane-tnl:1.0";
  prefix "o-ran-u-tnl";

  organization
  "O-RAN Alliance";

contact
  "www.o-ran.org";

description
  "This module defines the YANG definitions for Transport Network Layer (TNL)
   configuration for U-plane end-points at O-DU and O-CU. This module augments
   3GPP SA5 data models.

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

  revision "2020-09-25" {
    description
      "version 1.0.0 - first release of O-RAN O1 for O-DU YANG models";

    reference "ORAN-WG5.MP.0-v01.00";
  }

  typedef dscp-marking-value {
    type uint8 {
      range "0..63";
    }
    description "type definition for DSCP marking";
  }

  grouping dscp-marking {
    container u-plane-dscp-marking {
      leaf gtpu-management-traffic-dscp {
        type dscp-marking-value;
        mandatory true;
        description "DSCP marking for GTP-U management traffic";
      }
      list qos-group-index-list {
        key "qos-group-index";
        min-elements 1;
        leaf qos-group-index {
          type uint8 {
            range "1..32";
          }
          mandatory true;
          description "QoS group index";
        }
        leaf nr-pdcp-dscp {
          type dscp-marking-value;
          mandatory true;
          description "DSCP marking for G-PDU containing NR PDCP PDU, but no DDDS";
        }
        leaf ddds-dscp {
          type dscp-marking-value;
          mandatory true;
          description "DSCP marking for G-PDU including DDDS
         (and possibly also including NR PDCP PDU)";
        }
        description "List of DSCP profiles, indexed by QoS group index";
      }
      description "container for DSCP markings";
    }
    description "grouping of DSCP markings";
  }

  grouping gtp-configuration {
    container gtp-configuration {
      leaf periodic-echo-timer {
        type uint16 {
          range "60..65535";
        }
        mandatory true;
        description "Periodic timer of GTP Echo message, in seconds";
      }
      leaf t3-response-timer-expiry {
        type uint16 {
          range "1..65535";
        }
        mandatory true;
        description "T3-response timer expiry value";
      }
      leaf n3-requests {
        type uint16 {
          range "1..65535";
        }
        mandatory true;
        description "N3-requests count value";
      }
      description "container for GTP configuration";
    }
    description "grouping GTP configurations";
  }

}

## File: additional-configuration/o-ran_3gpp-nr-nrm-gnbdufunction.yang

module o-ran_3gpp-nr-nrm-gnbdufunction {
  yang-version 1.1;
  namespace "urn:o-ran:oran-gnbdufunction";
  prefix "or-gnbdu";

  import _3gpp-common-managed-element {
    prefix "me3gpp";
  }

  import _3gpp-nr-nrm-gnbdufunction {
    prefix "gnbdu3gpp";
  }

  import o-ran-hardware {
    prefix "o-ran-hw";
  }

  import ietf-hardware {
    prefix hw;
  }

   organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the augmentation of the SA5 yang data model (_3gpp-nr-nrm-gnbdufunction.yang) for configuring O-RAN configuration parameters for O-DU. Configuraion Parameters per O-DU are included.

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

  revision "2020-09-25" {
    description
      "version 1.0.0 - first release of O-RAN O1 for O-DU YANG models";

    reference "ORAN-WG5.MP.0-v01.00";
  }

grouping srb-config-group {
  container srb-config {
    container common-configuration-mac-parameter-list {
      leaf priority {
        type uint8 {
          range "1 .. 16";
        }
        mandatory true;
        description "Logical channel priority";
      }
      leaf allowed-serv-cells {
        type enumeration {
          enum spcellonly;
          enum spcell_largescell;
          enum spcell_largescell_mediumscell;
          enum spcell_largescell_mediumscell_smallscell;
        }
        description "Allowed Serving Cells used for this concerned logical channels with this Qosgroup. Size of the Scell refers to the value indicated by CellSize";
      }

      list allowed-scs-list {
        key sub-carrier-spacing;
        leaf sub-carrier-spacing {
          type enumeration {
            enum kHz15;
            enum kHz30;
            enum kHz60;
            enum kHz120;
            enum kHz240;
          }
          mandatory true;
          description "Subcarrier spacing supported in NR. Only the values 15/30/60 KHz (for FR1) and 60/120 KHz (for FR2) are applicable.";
        }
        description "list for allowed-scs";
      }
      description "container for common-configuration-mac-parameter-list";
    }

      container ul-specific-parameters-list {
        leaf max-pusch-duration {
          type enumeration {
            enum ms0p02;
            enum ms0p04;
            enum ms0p0625;
            enum ms0p125;
            enum ms0p25;
            enum ms0p5;
          }
          description "UL MAC SDUs from this logical channel can only be transmitted using uplink grants that result in a PUSCH duration shorter than or equal to the duration indicated by this field.";
        }

        leaf configured-granttype1-allowed {
          type boolean ;
          mandatory true;
          description "UL MAC SDUs from this logical channel can be transmitted on a configured grant type 1.";
        }

        leaf logical-channel-group {
          type uint8 {
            range "0 .. 7";
          }
          description "Logical Channel Group ID (LCGID)";
        }

        leaf scheduling-request-id {
          type uint8 {
            range "0..7";
          }
          description "Scheduling Request ID (SRID) Max 8. NOTE: scheduling Request id to configure SchedulingRequestConfig to SRB3.";
        }

        leaf logical-channel-sr-mask {
          type boolean;
          mandatory true;
          description "Controls SR triggering when a configured uplink grant of type1 or type2 is configured. TRUE indicates that SR masking is configured for this logical channel";
        }

        leaf logical-channel-sr-delay-timer-applied {
          type boolean;
          mandatory true;
          description "Indicates whether to apply the delay timer for SR transmission for this logical channel. Set to FALSE if logicalChannelSR-DelayTimer is not included in BSR-Config.";
        }
        leaf max-ul-harq-tx {
          type uint8 {
            range "1 ..8";
          }
          mandatory true;
          description "Maximum number of UL HARQ transmissions";
        }
        description "container for ul-specific-parameters-list";
      }

      container dl-specific-parameters-list {
        leaf max-pdsch-duration {
          type enumeration {
          enum ms0p02;
          enum ms0p04;
          enum ms0p0625;
          enum ms0p125;
          enum ms0p25;
          enum ms0p5;
          }
          description "DL MAC SDUs from this logical channel can only be transmitted using downlink grants that result in a PDSCH duration shorter than or equal to the duration indicated by this field.";
      }
      leaf max-dl-harq {
        type uint8 {
          range "1 .. 8";
        }
        mandatory true;
        description "Maximum number of DL HARQ transmissions";
      }
      description "container for dl-specific-parameters-list";
    }
        description "container for srb-config";
        }
        description "grouping for srb-config";
      }

grouping qos-group-config-list-group {
  list qos-group-config-list {
  key qos-group-index;
  leaf qos-group-index {
    type uint8 {
      range 1..32;
    }
    mandatory true;
    description "QoS group index specified in section 1.9";
  }
    leaf drx-profile-id {
      type uint8 {
        range 1..8;
      }
      description "Id of the DRX configuration set, if configured to QosGroup.";
    }
    container common-configuration-mac-parameter-list {
      leaf priority {
        type uint8 {
          range "1 .. 16";
        }
        mandatory true;
        description "Logical channel priority.";
      }
      leaf allowed-serv-cells {
        type enumeration {
          enum spcellonly;
          enum spcell_largescell;
          enum spcell_largescell_mediumscell;
          enum spcell_largescell_mediumscell_smallscell;
        }
        description "Allowed Serving Cells used for this concerned logical channels with this Qosgroup. Size of the Scell refers to the value indicated by CellSize.";
      }

      list allowed-scs-list {
        key sub-carrier-spacing;
        leaf sub-carrier-spacing {
          type enumeration {
            enum kHz15;
            enum kHz30;
            enum kHz60;
            enum kHz120;
            enum kHz240;
          }
          mandatory true;
          description "Subcarrier spacing supported in NR. Only the values 15/30/60 KHz (for FR1) and 60/120 KHz (for FR2) are applicable.";
        }
        description "list for allowed-scs";
      }
      container ul-specific-parameters-list {
        leaf prioritised-bitrate {
          type enumeration {
            enum kBps0;
            enum kBps8;
            enum kBps16;
            enum kBps32;
            enum kBps64;
            enum kBps128;
            enum kBps256;
            enum kBps512;
            enum kBps1024;
            enum kBps2048;
            enum kBps4096;
            enum kBps8192;
            enum kBps16384;
            enum kBps32768;
            enum kBps65536;
            enum infinity;
          }
          mandatory true;
          description "Value in kiloBytes/s. Value kBps0 corresponds to 0 kiloBytes/s, value kBps8 corresponds to 8 kiloBytes/s, value kBps16 corresponds to 16 kiloBytes/s, and so on. For SRBs, the value can only be set to infinity.";
          reference "3GPP TS 38.331";
        }

        leaf bucket-size-duration {
          type enumeration {
            enum ms5;
            enum ms10;
            enum ms15;
            enum ms20;
            enum ms50;
            enum ms100;
            enum ms150;
            enum ms300;
            enum ms500;
            enum ms1000;
          }
          mandatory true;
          description "Value in ms. ms5 corresponds to 5 ms, value ms10 corresponds to 10 ms, and so on.";
          reference "3GPP TS 38.331";
        }

        leaf max-pusch-duration {
          type enumeration {
            enum ms0p02;
            enum ms0p04;
            enum ms0p625;
            enum ms0p125;
            enum ms0p25;
            enum ms0p5;
          }
          description "UL MAC SDUs from this logical channel can only be transmitted using uplink grants that result in a PUSCH duration shorter than or equal to the duration indicated by this field. ";
          reference "3GPP TS 38.331";
        }

        leaf configured-grant-type1-allowed {
          type boolean;
          mandatory true;
          description "UL MAC SDUs from this logical channel can be transmitted on a configured grant type 1.";
          reference "3GPP TS 38.321";
        }

        leaf logical-channnel-group {
          type uint8 {
            range 0..7;
          }
          description "Logical Channel Group ID (LCGID)";
          reference "3GPP TS 38.331";
        }

        leaf scheduling-request-id {
          type uint8 {
            range 0..7;
          }
          description "Scheduling Request ID (SRID) Max 8. NOTE: scheduling Request id to configure SchedulingRequestConfig to each QosGroup.";
          reference "3GPP TS 38.331";
        }

        leaf logical-channel-sr-mask {
          type boolean;
          mandatory true;
          description "Controls SR triggering when a configured uplink grant of type1 or type2 is configured. TRUE indicates that SR masking is configured for this logical channel";
          reference "3GPP TS 38.331";
        }

        leaf logical-channel-sr-delay-timer-applied {
          type boolean;
          mandatory true;
          description "Indicates whether to apply the delay timer for SR transmission for this logical channel. Set to FALSE if logicalChannelSR-DelayTimer is not included in BSR-Config.";
          reference "3GPP TS 38.331";
        }

        leaf bitrate-query-prohibit-timer {
          type enumeration {
            enum s0;
            enum s0dot4;
            enum s0dot8;
            enum s1dot6;
            enum s3;
            enum s6;
            enum s12;
            enum s30;
          }
          description "The timer is used for bit rate recommendation query, in seconds.";
          reference "3GPP TS 38.331";
        }

        leaf max-ul-harq-tx {
          type uint8 {
            range 1..8;
          }
          mandatory true;
          description "Maximum number of UL HARQ transmissions";
        }
        description "container for ul-specific-parameters-list";
      }

      container dl-specific-parameters-list {
        leaf max-pdsch-duration {
          type enumeration {
          enum ms0p02;
          enum ms0p04;
          enum ms0p0625;
          enum ms0p125;
          enum ms0p25;
          enum ms0p5;
          }
          description "DL MAC SDUs from this logical channel can only be transmitted using downlink grants that result in a PDSCH duration shorter than or equal to the duration indicated by this field. ";
      }

      leaf max-dl-harq {
        type uint8 {
          range "1 .. 8";
        }
        mandatory true;
        description "Maximum number of DL HARQ transmissions";
      }
      description "dl-specific-parameters-list";
      }
  description "conatiner for common-configuration-mac-parameter-list";
  }
  description "list for qos-group-config";
}
description "grouping for qos-group-config-list";
}

grouping drx-config-group {
  list drx-config {
    key drx-profile-id;
    leaf drx-profile-id {
      type uint8 {
        range 1..32;
      }
      mandatory true;
      description "id for drx-profile";
    }

    choice drx-on-duration-timer {
      case drx-on-duration-timer-submilliseconds {
        leaf drx-on-duration-timer-submilliseconds {
          type uint8 {
            range 1..31;
          }
          mandatory true;
          description "Duration at the beginning of a DRX Cycle in submillisecond ";
        }
      }
      case drx-on-duration-timer-milliseconds {
        leaf drx-on-duration-timer-milliseconds {
          type enumeration {
            enum ms1;
            enum ms2;
            enum ms3;
            enum ms4;
            enum ms5;
            enum ms6;
            enum ms8;
            enum ms10;
            enum ms20;
            enum ms30;
            enum ms40;
            enum ms50;
            enum ms60;
            enum ms80;
            enum ms100;
            enum ms200;
            enum ms300;
            enum ms400;
            enum ms500;
            enum ms600;
            enum ms800;
            enum ms1000;
            enum ms1200;
            enum ms1600;
          }
          mandatory true;
          description "Duration at the beginning of a DRX Cycle in millisecond";
        }
      }
      description "Selection of milliseconds (drx-onDurationTimer_subMilliSedonds or drx-onDurationTimer_milliSeconds)";
    }

    leaf drx-inactivity-timer {
      type enumeration {
        enum ms0;
        enum ms1;
        enum ms2;
        enum ms3;
        enum ms4;
        enum ms5;
        enum ms6;
        enum ms8;
        enum ms10;
        enum ms20;
        enum ms30;
        enum ms40;
        enum ms50;
        enum ms60;
        enum ms80;
        enum ms100;
        enum ms200;
        enum ms300;
        enum ms500;
        enum ms750;
        enum ms1280;
        enum ms1920;
        enum ms2560;
      }
      mandatory true;
      description "Duration after the PDCCH occasion in which a PDCCH indicates an initial UL or DL user data transmission for the MAC entity";
    }

    leaf drx-harq-rtt-timer-dl {
      type uint8 {
        range 0..56;
      }
      mandatory true;
      description "Minimum duration before a DL assignment for HARQ retransmission is expected by the MAC entity";
    }

    leaf drx-harq-rtt-timer-ul {
      type uint8 {
        range 0..56;
      }
      mandatory true;
      description "Minimum duration before a UL HARQ retransmission grant is expected by the MAC entity.";
    }

    leaf drx-retransmission-timer-dl {
      type enumeration {
        enum sl0;
        enum sl1;
        enum sl2;
        enum sl4;
        enum sl6;
        enum sl8;
        enum sl16;
        enum sl24;
        enum sl33;
        enum sl40;
        enum sl64;
        enum sl80;
        enum sl96;
        enum sl112;
        enum sl28;
        enum sl60;
        enum sl320;
      }
      mandatory true;
      description "Maximum duration until a DL retransmission is received";
    }

    leaf drx-retransmission-timer-ul {
      type enumeration {
        enum sl0;
        enum sl1;
        enum sl2;
        enum sl4;
        enum sl6;
        enum sl8;
        enum sl16;
        enum sl24;
        enum sl33;
        enum sl40;
        enum sl64;
        enum sl80;
        enum sl96;
        enum sl112;
        enum sl28;
        enum sl60;
        enum sl320;
      }
      mandatory true;
      description "Maximum duration until a grant for UL retransmission is received";
    }

    leaf drx-long-cycle {
      type enumeration {
        enum ms10;
        enum ms20;
        enum ms32;
        enum ms40;
        enum ms60;
        enum ms64;
        enum ms70;
        enum ms80;
        enum ms128;
        enum ms160;
        enum ms256;
        enum ms320;
        enum ms512;
        enum ms640;
        enum ms1024;
        enum ms1280;
        enum ms2048;
        enum ms2560;
        enum ms5120;
        enum ms10240;
      }
      mandatory true;
      description "This parameter defines the long DRX cycle.";
    }

    container short-drx {

      leaf drx-short-cycle {
        type enumeration {
          enum ms2;
          enum ms3;
          enum ms4;
          enum ms5;
          enum ms6;
          enum ms7;
          enum ms8;
          enum ms10;
          enum ms14;
          enum ms16;
          enum ms20;
          enum ms30;
          enum ms32;
          enum ms35;
          enum ms40;
          enum ms64;
          enum ms80;
          enum ms128;
          enum ms160;
          enum ms256;
          enum ms320;
          enum ms512;
          enum ms640;
        }
        mandatory true;
        description "Short DRX cycle. If configured, the value of drx-LongCycle shall be a multiple of the drx-ShortCycle value. Value in multiples of drx-ShortCycle. A value of 1 corresponds to drx-ShortCycle, a value of 2 corresponds to 2 * drx-ShortCycle and so on";
        }

        leaf drx-short-cycle-timer {
          type uint8 {
            range 1..16;
          }
          mandatory true;
          description "Duration the UE shall follow the Short DRX cycle";
        }
        description "container for short-drx";
      }

        list scheduling-request-config {
          key scheduling-request-id;
          min-elements 1;
          leaf scheduling-request-id {
            type uint8 {
              range 0..7;
            }
            mandatory true;
            description "Scheduling Request ID (SRID)";
          }

            leaf sr-prohibit-timer {
              type enumeration {
                enum ms0;
                enum ms1;
                enum ms2;
                enum ms4;
                enum ms8;
                enum ms16;
                enum ms32;
                enum ms64;
                enum ms128;
              }
              description "Timer for SR transmission on PUCCH";
            }

              leaf sr-trans-max {
                type enumeration {
                  enum n4;
                  enum n8;
                  enum n16;
                  enum n32;
                  enum n64;
                }
                mandatory true;
                description "Maximum number of SR transmissions";
              }
              description "list for scheduling-request-config";
         }
         description "list for drx-config";
    }
    description "grouping for drx-config";
}

grouping bsr-config-group {
  container bsr-config {
    leaf periodicity-bsr-timer {
      type enumeration {
        enum sf1;
        enum sf5;
        enum sf10;
        enum sf16;
        enum sf20;
        enum sf32;
        enum sf40;
        enum sf64;
        enum sf80;
        enum sf128;
        enum sf160;
        enum sf320;
        enum sf640;
        enum sf1280;
        enum sf2560;
        enum infinity;
      }
        mandatory true;
        description "Value in number of subframes. Value sf1 corresponds to 1 subframe, value sf5 corresponds to 5 subframes and so on.";
        reference "3GPP TS 38.331";
      }

      leaf retx-bsr-timer {
        type enumeration {
          enum sf10;
          enum sf20;
          enum sf40;
          enum sf80;
          enum sf160;
          enum sf320;
          enum sf640;
          enum sf1280;
          enum sf2560;
          enum sf5120;
          enum sf10240;
        }
        mandatory true;
        description "Value in number of subframes. Value sf10 corresponds to 10 subframes, value sf20 corresponds to 20 subframes and so on.";
        reference "3GPP TS 38.331";
      }

      leaf logical-channel-sr-delay-timer {
        type enumeration {
          enum sf20;
          enum sf40;
          enum sf64;
          enum sf128;
          enum sf512;
          enum sf1024;
          enum sf2560;
        }
        mandatory true;
        description "Value in number of subframes. Value sf20 corresponds to 20 subframes, sf40 corresponds to 40 subframes, and so on.";
        reference "3GPP TS 38.331";
        }
        description "container for bsr-config";
      }
      description "grouping for bsr-config";
    }

    grouping ta-configuration-group {
      list ta-configuration-list {
        key id;
        min-elements 1;
        leaf id {
          type uint8 {
            range 1..4;
          }
          description "id for ta-configuration-list";
          }

          leaf cell-size {
            type enumeration {
              enum large;
              enum middle;
              enum small;
              enum very-small;
            }
            mandatory true;
            description "Indicates the Cell size of the serving cell";
          }

          leaf time-alignment-timer {
            type enumeration {
              enum ms500;
              enum ms750;
              enum ms1280;
              enum ms1920;
              enum ms2560;
              enum ms5120;
              enum ms10240;
              enum infinity;
            }
              mandatory true;
              description "Value in ms of the timeAlignmentTimer for TAG with ID tag-Id, as specified in TS 38.321 [3].";
          }
          description "list for ta-configuration";
        }
        description "grouping for ta-configuration";
      }

      grouping phr-config-group {
        container phr-config {
          leaf phr-periodic-timer {
            type enumeration {
              enum sf10;
              enum sf20;
              enum sf50;
              enum sf100;
              enum sf200;
              enum sf500;
              enum sf1000;
              enum infinity;
            }
            description "Value in number of subframes for PHR reporting as specified in TS 38.321 [3]. Value sf10 corresponds to 10 subframes, value sf20 corresponds to 20 subframes, and so on.";
            reference "3GPP TS 38.331";
          }

          leaf phr-prohibit-timer {
            type enumeration {
              enum sf0;
              enum sf10;
              enum sf20;
              enum sf50;
              enum sf100;
              enum sf200;
              enum sf500;
              enum sf1000;
            }
            mandatory true;
            description "Value in number of subframes for PHR reporting as specified in TS 38.321 [3]. Value sf0 corresponds to 0 subframe, value sf10 corresponds to 10 subframes, value sf20 corresponds to 20 subframes, and so on.";
            reference "3GPP TS 38.331";
          }

          leaf phr-tx-power-factor-change {
            type enumeration {
              enum db1;
              enum db3;
              enum db6;
              enum infinity;
            }
            mandatory true;
            description "Value in dB for PHR reporting as specified in TS 38.321 [3]. Value dB1 corresponds to 1 dB, dB3 corresponds to 3 dB and so on. The same value applies for each serving cell (although the associated functionality is performed independently for each cell).";
            reference "3GPP TS 38.331";
          }

          leaf phr-type2-othercell {
            type boolean;
            mandatory true;
            description "If set to true, the UE shall report a PHR type 2 for the SpCell of the other MAC entity. See TS 38.321 [3], clause 5.4.6. Network sets this field to false if the UE is not configured with an E-UTRA MAC entity.";
            reference "3GPP TS 38.331";
         }

          leaf phr-mode-other-cg {
            type enumeration {
              enum real;
              enum virtual;
            }
            mandatory true;
            description "Indicates the mode (i.e. real or virtual) used for the PHR of the activated cells that are part of the other Cell Group (i.e. MCG or SCG), when DC is configured. If the UE is configured with only one cell group (no DC), it ignores the field.";
            }
            description "container for phr-config";
          }
          description "grouping for phr-config";
        }

grouping scell-deactivation-timer-list-group {
  list scell-deactivation-timer-list {
    key id;
    min-elements 1;
    leaf id {
      type uint8 {
        range 1..4;
      }
      mandatory true;
      description "id for scell-deactivation-timer-list";
    }

    leaf cell-size {
      type enumeration {
        enum large;
        enum middle;
        enum small;
        enum very-small;
      }
      mandatory true;
      description "Indicate the Cell size";
    }
    leaf scell-deactivation-timer {
      type enumeration {
        enum ms20;
        enum ms40;
        enum ms80;
        enum ms160;
        enum ms200;
        enum ms240;
        enum ms320;
        enum ms400;
        enum ms480;
        enum ms520;
        enum ms640;
        enum ms720;
        enum ms840;
        enum ms1280;
        enum infinity;
      }
      mandatory true;
      description "Scell deactivation timer";
    }
    description "list for scell-deactivation-timer";
  }
  description "grouping for scell-deactivation-timer-list";
  }

grouping mac-configuration-group {

container mac-configuration {
  uses srb-config-group;
  uses qos-group-config-list-group;
  uses drx-config-group;
  uses bsr-config-group;
  uses ta-configuration-group;
  uses phr-config-group;
  uses scell-deactivation-timer-list-group;

    leaf csi-mask {
      type boolean;
      description "If set to true, the UE limits CSI reports to the on-duration period of the DRX cycle";
    }
    description "contaner for mac-configuration";
}
description "grouping for mac-configuration";
}

augment "/me3gpp:ManagedElement/gnbdu3gpp:GNBDUFunction/gnbdu3gpp:attributes" {
  when "(derived-from-or-self(/hw:hardware/hw:component/hw:class, 'o-ran-hw:O-DU-COMPONENT'))";
  container  o-ran-configuration {
    uses mac-configuration-group;
    description "Container for o-ran-configuration. These are configured when O-DU is compliant with O1 interface spec for O-DU. ";
  }
  description "This module augments _3gpp-nr-nrm-gnbdufunction.yang for adding O-RAN original configuration parameters";
}

}

## File: additional-configuration/o-ran_3gpp-nr-nrm-rrmpolicy.yang

module o-ran_3gpp-nr-nrm-rrmpolicy {
  yang-version 1.1;
  namespace "urn:o-ran:oran-rrmpolicy";
  prefix "or-rrmpolicy";

  import _3gpp-nr-nrm-rrmpolicy {
    prefix "nrrrmpolicy3gpp";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the augmentation of the SA5 yang data model
     according to 28.541 to split the resourceType PRB type into two
     types: ul-prb and dl-prb.

     Copyright 2021 the O-RAN Alliance.

     THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
     CONTRIBUTORS 'AS IS' AND ANY EXPRESS OR IMPLIED WARRANTIES,
     INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
     MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
     DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR
     CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
     SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
     BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
     SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
     INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
     WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
     NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
     THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

     Redistribution and use in source and binary forms, with or
     without modification, are permitted provided that the following
     conditions are met:

     * Redistributions of source code must retain the above
       copyright notice, this list of conditions and the above
       disclaimer.
     * Redistributions in binary form must reproduce the above
       copyright notice, this list of conditions and the above
       disclaimer in the documentation and/or other materials
       provided with the distribution.
     * Neither the Members of the O-RAN Alliance nor the names of
       its contributors may be used to endorse or promote products
       derived from this software without specific prior written
       permission.";

  revision 2021-10-31 {
    description
      "Revision that depcrecates the 'direction' leaf.";
    reference
      "O1 for O-DU v03.00 Chapter 10.5.";
  }

  revision 2021-06-24 {
    description
      "Initial version";
    reference
      "ORAN-WG5.MP.O1.0-v01.00";
  }

  augment "/nrrrmpolicy3gpp:RRMPolicyRatio/nrrrmpolicy3gpp:attributes" {
    when "(nrrrmpolicy3gpp:resourceType = 'PRB')";
    container o-ran-rrmpolicy {
      leaf direction {
        type enumeration {
          enum dl {
            description
              "Downlink Physical Resource Blocks.";
          }
          enum ul {
            description
              "Uplink Physical Resource Blocks.";
          }
          enum both {
            description
              "When Physical Resource Blocks (PRB) are allocated for
               both uplink and downlink. This flag makes the model
               backward compatible with existing implementations
               that do not want to split the resources.";
          }
        }
	status deprecated;
	description
	  "Specifies the direction for the PRBs.";
      }
      description
	"Container for RRMPolicy_ IOC attributes.";
    }
    description
      "Augment of the 3GPP RRMPolicy_ IOC.";
  }
}

## File: Common Models/o-ran-dhcp.yang

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
    revision-date 2018-01-30;
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the YANG definitions for managng the DHCP client.

    Copyright 2020 the O-RAN alliance.

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

  revision "2020-09-25" {
    description
      "version 1.0.0 - first release of O-RAN O1 for O-DU YANG models";

    reference "ORAN-WG5.MP.0-v01.00";
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
      leaf optional-port {
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
          enum HTTP;
          enum HTTPS;
        }
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
      "The netconf clients discovered using DHCP, discovered using the IANA
      defined options or O-RAN defined syntax for encoding IP adresses or FQDNs
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
  }

  grouping dhcpv6-option {
    description "DHCPv6 Configuration options";

    container dhcp-server-identifier{
      description "dhcpv6 server identifief";
      uses dhcpv6-type:duid;
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
  }

  grouping dhcp-group {
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
          description "DHCP client identifier";
        }
        uses dhcpv4-option;
      }
      container dhcpv6 {
        description "DHCPv6 information";
        container dhcp-client-identifier{
          description "dhcpv6 client identifief";
          uses dhcpv6-type:duid;
        }
        uses dhcpv6-option;
      }
    }

    container m-plane-dhcp {
      description "leafs covering off DHCP aspects of m-plane operations";
      leaf private-enterprise-number {
        type uint16;
        default 53148;
        description "the private enteprise number allocated to O-RAN Alliance";
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

## File: Common Models/o-ran-wg5-delay-management.yang

module o-ran-wg5-delay-management {
  yang-version 1.1;
  namespace "urn:o-ran:wg5-delay:1.0";
  prefix "o-ran-wg5-delay";

  import o-ran-operations {
    prefix "or-ops";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module is for supporting WG4 Fronthaul delay management support between O-DU and O-RU.

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

  revision "2020-09-25" {
    description
      "version 1.0.0 - first release of O-RAN O1 for O-DU YANG models";

    reference "ORAN-WG5.MP.0-v01.00";
  }

  typedef ru-ref {
    type leafref {
      path "/or-ops:operational-info/or-ops:declarations/or-ops:ru-instance-id";
    }
  description
    "A type defintion for the ru-instance-id. Although the type used in
    o-ran-operations is only a 'string', this leafref is used to indicate
    that the type 'ru-ref' is used to encode ru-instance-id values.

    These will typically have been recovered using the NETCONF client in an
    O-DU which has a NETCONF session with an O-RU which implements the
    o-ran-operations.yang model. ";
  }

typedef bandwidth {
  type uint32 {
<div class="table-wrapper" markdown="block">

    range "200 | 1400 | 3000 | 5000 | 10000 | 15000 | 20000 | 25000 |
          30000 | 40000 | 50000 | 60000 | 70000 | 80000 | 90000 | 100000
          | 200000 | 400000" ;

</div>
  }
  units kilohertz;
  description
    "transmission bandwidth configuration in units of kHz -
    covering NBIoT through to New Radio - see 38.104";
}

grouping bandwidth-configuration {
  description
    "Grouping for bandwidth and scs configuration";

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
    description "subcarrier spacing in Hz";
  }
}

grouping window-determine-method-group {
  container window-determine-method {
    description
      "the container for configuring the window determination method to O-DU";
    leaf method {
      type enumeration {
        enum HARDCODED {
          status deprecated;
          description
          "O-DU transmission/reception window is determined by O-DU
          NOTE: Deprecated as it doesn't match the O-RAN.WG5.O-DU-O1.0-v05.00 specification.";
        }
        enum NOT_CONFIGURED {
          description
          "O-DU transmission/reception window is determined by O-DU";
        }
        enum CONFIGURED {
          description
          "O-DU transmission/reception window is determined by configured value from SMO";
        }
      }
      mandatory true;
      description
      "Method for determination of O-DU transmission/reception";
    }

    leaf configuration-status {
      type leafref {
        path "/wg5-delay-management/window-determine-capability";
        require-instance false;
      }
      mandatory true;
      description
        "Parameter representing status of configuration to be used as validator";
    }

    list pre-configured-transport-delay {
      when "../method = 'NOT_CONFIGURED'";
      key ru-instance-id;
      description
      "a list of pre-configured-transport-delay. This list is configured only in case of NOT_CONFIGURED";

      leaf ru-instance-id {
        type ru-ref;
      }

      leaf t12-min {
        type uint32;
        units nanoseconds;
        mandatory true;
        description
          "the pre-configured minimum measured delay between DU port-ID and O-RU port-ID";
      }
      leaf t12-max {
        type uint32;
        units nanoseconds;
        mandatory true;
        description
          "the pre-configured maximum measured delay between CU port-ID and O-RU port-ID";
      }
      leaf t34-min {
        type uint32;
        units nanoseconds;
        mandatory true;
        description
          "the pre-configured minimum measured delay between O-RU port-ID and CU port-ID";
      }
      leaf t34-max {
        type uint32;
        units nanoseconds;
        mandatory true;
        description
          "the pre-configured maximum measured delay between O-RU port-ID and CU port-ID";
      }
    }
  }
}

  grouping window-determine-information-group {
    leaf window-determine-capability {
      type enumeration {
        enum NOT_CONFIGURED {
          description
          "O-DU transmission/reception window can be determined by O-DU";
        }
        enum CONFIGURED {
          description
          "O-DU transmission/reception window can be determined by configured value from SMO";
        }
        enum BOTH {
          description
          "O-DU has both capability, NOT_CONFIGURED and CONFIGURED";
        }
      }
      config false;
      mandatory true;
      description
        "Capability how O-DU transmission/reception window can be determined";
      }
    uses window-determine-method-group;
  }

  grouping o-du-window-group {
    list o-du-window {
      key "ru-instance-id bandwidth subcarrier-spacing";
      description
      "a list of o-du-window";

      leaf ru-instance-id {
        type ru-ref;
      }
      uses bandwidth-configuration;

    leaf ta4-min {
      type uint32;
      units nanoseconds;
      mandatory true;
      description
      "the earliest possible time which the O-DU can support receiving the
      first uplink user plane IQ data message for a symbol.";
    }
    leaf ta4-max {
      type uint32;
      units nanoseconds;
      mandatory true;
      description
      "the latest possible time which the O-DU can support receiving the
      last uplink user plane IQ data message for a symbol.";
    }
    leaf t1a-min-cp-dl {
      type uint32;
      units nanoseconds;
      mandatory true;
      description
      "the latest possible time which the O-DU can support transmiting
      an control plane prior to transmission of the corresponding IQ
      samples at the antenna";
    }
    leaf t1a-min-cp-ul {
      type uint32;
      units nanoseconds;
      mandatory true;
      description
      "the latest possible time which the O-DU can support transmiting
      an control plane prior to reception of the corresponding IQ
      samples at the antenna";
    }
    leaf t1a-min-up {
      type uint32;
      units nanoseconds;
      mandatory true;
      description
      "the latest possible time which the O-DU can support transmiting
      an IQ data message prior to transmission of the corresponding IQ
      samples at the antenna";
    }
    leaf t1a-max-cp-dl {
      type uint32;
      units nanoseconds;
      mandatory true;
      description
      "the earliest possible time which the O-DU can support transmiting
      an control plane prior to transmission of the corresponding IQ
      samples at the antenna";
    }
    leaf t1a-max-cp-ul {
      type uint32;
      units nanoseconds;
      mandatory true;
      description
      "the earliest possible time which the O-DU can support transmiting
      an control plane prior to reception of the corresponding IQ
      samples at the antenna";
    }
    leaf t1a-max-up {
      type uint32;
      units nanoseconds;
      mandatory true;
      description
      "the earliest possible time which the O-DU can support transmiting
      an IQ data message prior to transmission of the corresponding IQ
      samples at the antenna";
    }
  }
}

  grouping o-ru-window-group {
    list o-ru-window {
      key "ru-instance-id bandwidth subcarrier-spacing";
      description
      "a list of o-ru-window";
      config false;

      leaf ru-instance-id {
        type ru-ref;
        config false;
      }
      uses bandwidth-configuration;

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
    leaf tcp-adv-dl {
      type uint32;
      units nanoseconds;
      mandatory true;
      description
      "the time difference (advance) between the reception window for
      downlink real time Control messages and reception window for the
      corresponding IQ data messages.";
    }
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
    leaf t2a-min-cp-ul {
      type uint32;
      units nanoseconds;
      mandatory true;
      description
      "the minimum O-RU data processing delay between receiving real time
      up-link control plane message over the fronthaul interface and
      recieving the first IQ sample at the antenna";
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
}

  grouping measured-transport-delay-group {
    list measured-transport-delay {
      key ru-instance-id;
      config false;
      description
      "a list of measured-transport-delay";

    leaf ru-instance-id {
      type ru-ref;
      config false;
    }

    leaf t12-min {
      type uint32;
      units nanoseconds;
      mandatory true;
      description
        "the minimum measured delay between DU port-ID and O-RU port-ID";
    }
    leaf t12-max {
      type uint32;
      units nanoseconds;
      mandatory true;
      description
        "the maximum measured delay between CU port-ID and O-RU port-ID";
    }
    leaf t34-min {
      type uint32;
      units nanoseconds;
      mandatory true;
      description
        "the minimum measured delay between O-RU port-ID and CU port-ID";
    }
    leaf t34-max {
      type uint32;
      units nanoseconds;
      mandatory true;
      description
        "the maximum measured delay between O-RU port-ID and CU port-ID";
    }
  }
}

      container wg5-delay-management {
        description
          "top level tree for supporting franthaul delay management";
        uses window-determine-information-group;
        uses o-du-window-group;
        uses o-ru-window-group;
        uses measured-transport-delay-group;
      }
}

## File: Common Models/o-ran-wg5-features.yang

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

## File: CTI/o-ran-cti-common.yang

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

  revision "2023-03-17" {
    description
      "version 4.0.0

      Update to IM as per CTI TMP v4";

    reference "ORAN-WG4.CTI-TMP.0-v04.00";
  }

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
//    RFC 8407 top level container comment is removed
      mandatory true;
      description
        "This value, abbreviated as ctiKa, is the maximum time interval between consecutive
        CTI-Keep-Alive messages between the CTI client and the CTI server. Example value is 30.";
    }
    leaf ctiTo {
      type uint8;
      units 0.1-seconds;
//    RFC 8407 top level container comment is removed
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
//    RFC 8407 top level container comment is removed
      mandatory true;
      description
        "This defines the UDP destination port to use for all CTI messages.";
      }
  }
}

## File: DU Specific Models/o-ran-agg-operations.yang

module o-ran-agg-operations {
  yang-version 1.1;
  namespace "urn:o-ran:agg-ops:1.0";
  prefix "or-agg-ops";

  import o-ran-aggregation-base {
    prefix "agg";
  }

  import ietf-yang-schema-mount {
    prefix "yangmnt";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the augmentation of the base aggregation module to
    include the operational state of the aggregated O-RUs.

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

  revision "2020-09-25" {
    description
      "version 1.0.0 - first release of O-RAN O1 for O-DU YANG models";

    reference "ORAN-WG5.MP.0-v01.00";
  }

  augment "/agg:aggregated-o-ru/agg:aggregation" {
    container operations-model {
      yangmnt:mount-point "ops-root" {
        description
          "Root for o-ran-operations.yang model supported on a per O-RU instance";
      }
    }
  }
}

## File: DU Specific Models/o-ran-agg-performance-management.yang

module o-ran-agg-performance-management {
  yang-version 1.1;
  namespace "urn:o-ran:agg-pm:1.0";
  prefix "or-agg-pm";

  import o-ran-aggregation-base {
    prefix "agg";
  }

  import ietf-yang-schema-mount {
    prefix "yangmnt";
  }

  import _3gpp-common-measurements {
    prefix "meas3gpp";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the augmentation of the base aggregation module
     to include the performance-measurement-objects information of the
     aggregated O-RUs.

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

  revision "2020-09-25" {
    description
      "version 1.0.0 - first release of O-RAN O1 for O-DU YANG models";

    reference "ORAN-WG5.MP.0-v01.00";
  }

  augment "/agg:aggregated-o-ru/agg:aggregation" {
    uses meas3gpp:Measurements;
    container performance-management-model {
      yangmnt:mount-point "pm-root" {
        description
          "Root for performance-measurement-objects in
           o-ran-performance-management.yang model supported per O-RU instance";
      }
    }
  }
}

## File: DU Specific Models/o-ran-agg-software-management.yang

module o-ran-agg-software-management {
  yang-version 1.1;
  namespace "urn:o-ran:agg-swm:1.0";
  prefix "or-agg-swm";

  import o-ran-aggregation-base {
    prefix "agg";
  }

  import ietf-yang-schema-mount {
    prefix "yangmnt";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the augmentation of the base aggregation module to include the software inventory information of the aggregated O-RUs.

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

  revision "2020-09-25" {
    description
      "version 1.0.0 - first release of O-RAN O1 for O-DU YANG models";

    reference "ORAN-WG5.MP.0-v01.00";
  }

  augment "/agg:aggregated-o-ru/agg:aggregation" {
    container software-management-model {
      yangmnt:mount-point "swm-root" {
        description
          "Root for o-ran-software-management.yang model supported per O-RU instance";
      }
    }
  }
}

## File: DU Specific Models/o-ran-aggregation-base.yang

module o-ran-aggregation-base {
  yang-version 1.1;
  namespace "urn:o-ran:agg-base:1.0";
  prefix "or-agg-base";

  import o-ran-operations {
    prefix "or-ops";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the base model used for aggregating WG4 YANG models.

    Individual YANG models are expected to augment this base model with their
    own schema trees to facilitate operations on a per ru-instance-id basis.

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

  revision "2020-09-25" {
    description
      "version 1.0.0 - first release of O-RAN O1 for O-DU YANG models";

    reference "ORAN-WG5.MP.0-v01.00";
  }

  typedef ru-ref {
    type leafref {
      path "/or-ops:operational-info/or-ops:declarations/or-ops:ru-instance-id";
    }
    description
      "A type defintion for the ru-instance-id. Although the type used in
      o-ran-operations is only a 'string', this leafref is used to indicate
      that the type 'ru-ref' is used to encode ru-instance-id values.

      These will typically have been recovered using the NETCONF client in an
      O-DU which has a NETCONF session with an O-RU which implements the
      o-ran-operations.yang model. ";
  }

  grouping ru-grouping {
    list recovered-ru-instance-ids {
      key ru-instance-id;
      config false;
      description
        "a list of O-RU instance IDs that have  been recovered by an O-DU which
        either has:
        i) a NETCONF session with an O-RU using the O-RAN WG4 fronthaul
        defined NETCONF/YANG interface, or
        ii) some vendor proprietary scheme for a managed element that integrates
        both O-DU and O-RU functionality.";

      leaf ru-instance-id {
        type ru-ref;
        config false;
      }
    }
    list aggregation {
      key ru-instance;
      description
        "a list used to aggregate the configuration and operational state of
        multiple O-RUs.";

      leaf ru-instance {
        type leafref {
          path "/aggregated-o-ru/recovered-ru-instance-ids/ru-instance-id";
          require-instance false;
        }
      }
    }
  }

  container aggregated-o-ru {
    description
      "The top level container used to hold all the aggregated information related
      to a set of O-RUs.";

    uses ru-grouping;
  }
}

## File: DU Specific Models/o-ran-du-performance-management.yang

module o-ran-du-performance-management {
  yang-version 1.1;
  namespace "urn:o-ran:du-pm:1.0";
  prefix "or-du-pm";

  import _3gpp-common-managed-element {
    prefix "me3gpp";
  }

  import _3gpp-nr-nrm-gnbdufunction {
    prefix "gnbdu3gpp";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the augmentation of the SA5 yang data model according to 28.623 and 28.541 to include the pm-count-groups information of the O-DU.

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

  revision "2020-09-25" {
    description
      "version 1.0.0 - first release of O-RAN O1 for O-DU YANG models";

    reference "ORAN-WG5.MP.0-v01.00";
  }

  grouping pm-count-groups {

    list pm-count-list-drb {
      key "qci-index";

      leaf qci-index {
        type uint8 {
          range 0..255;
        }
        mandatory true;
        description
          "QoS Class Identifier defined in TS 23.401. Logical range and coding specified in TS 23.203.";
        }

      leaf pm-count-group {
        type uint8 {
          range 0..17;
        }
        mandatory true;
        description
          "Indicates which of the 17 'PmCountGroup' shall be used for this QCI index. Value 0, indicates that this QCI shall NOT be counted. If duplicated several QCI are set to same pm-count-group, they should be counted as same counter.";
      }
    }

    list pm-count-list-srb {
      key "srb-index" ;

      leaf srb-index {
        type uint8 {
          range 1..3;
        }
        description
          "Value 1, 2, 3 indicates SRB1S, SRB2S, SRB3, respectively.";
      }

      leaf pm-count-group {
        type uint8 {
<div class="table-wrapper" markdown="block">

          range 0|18..20;

</div>
        }
        mandatory true;
        description
          "Indicates which of the 3 'PmCountGroup' shall be used for this SRB Index. Value 0, indicates that this SRB Index shall NOT be counted. If duplicated several SRB Index are set to same pm-count-group, they should be counted as same counter.";
      }
    }
  }

  augment "/me3gpp:ManagedElement/gnbdu3gpp:GNBDUFunction/gnbdu3gpp:attributes" {
    container pm-count-groups {
      uses pm-count-groups;
    }
  }

}

## File: DU Specific Models/o-ran-o-du-shared-o-ru.yang

module o-ran-o-du-shared-o-ru {
  yang-version 1.1;
  namespace "urn:o-ran:o-ran-o-du-shared-o-ru";
  prefix "sharedoru";

  import _3gpp-common-managed-element { prefix me3gpp; }
  import _3gpp-common-top { prefix top3gpp; }
  import _3gpp-nr-nrm-gnbdufunction { prefix gnbdu3gpp; }
  import ietf-inet-types { prefix "inet"; }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the augmentation of the SA5 yang data model of GNBDuFunction with Shared O-RU parameters.

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

  revision "2023-03-17" {
    description
      "version 1.0.0 - initial version";

    reference "O-RAN.WG5.O-DU-O1.0-v06.00";
  }

  grouping ConfiguredClientInfoGrp {
    description
      "the NETCONF client information that may be configured by another
      NETCONF client. These clients are reported independently from clients
      manually configured or discovered using DHCP.";

    leaf host {
      type inet:host;
      description "The IPv4 address of configured M-Plane client.";
    }
    leaf portNumber {
      type inet:port-number;
      description
        "The configured call home port number.";
    }
  }

  grouping SecondaryODuInfoGrp {
    description
      "This data type provides fields that are needed to configure O-DUs that perform
      the Shared Resource Operator role from the single O-DU that has the Shared O-RU Host role.";

    leaf oDuIdForSharedORu {
      type string;
      mandatory true;
      description
        "This parameter defines O-DUs own oduidforsharedoru to be used for fronthaul O-DU ID.";
    }

    leaf sharedResourceOperatorId {
      when "not (../../oDuRoleOfSharedORu = 'HOST')";
      type string;
      description
        "This parameter defines Shared Resource Operator ID of O-DUs,
		 which Shared Resource Operator O-DU shall use for the user account of the NETCONF client
         with sro-id configured. When the role of the O-DU is HOST, this attribute is not used.

         Condition: When O-RU supports Multiple operator Shared O-RU configuration
         and O-RU is configured to work in shared O-RU mode, this parameter is mandatory.";
    }

    leaf accessCotrolGroup {
      type string;
      description
        "Defines the Netconf access control group per SRO O-DU, which is then created by the Shared O-RU Host
         in the Shared O-RUs. If the role for a O-DU already exists, then that role
         is updated with the new enum "carrier". When the role of the O-DU is SRO, this attribute is not used.

         Condition: When O-RU supports Multiple operator Shared O-RU configuration
         and O-RU is configured to work in shared O-RU mode, this parameter is mandatory";
    }

    leaf supervisionPerODu {
      type boolean;
      description
        "Operator may activate O-RU supervision per Shared Resource Operator O-DU
         by configuring over O1 supervisionperodu to "true", which triggers Shared O-RU Host
         in Multi OperatorShared O-RU or primary O-DU in Single Operator Shared O-RU
         to configure odu-id parameter in the per-odu-monitoring over Fronthaul M-plane.
         When the role of the O-DU is SRO in Multi Operator Shared O-RU or secondary
         in Single Operator Shared O-RU, this attribute is not used.";
    }

    list callHomeClientInfo {
      key "host portNumber";
      max-elements 1;
      description
        "In Multi Operator Shared O-RU, over O1 is send only to the Shared O-RU Host O-DU callhomeclientinfo,
         which Shared O-RU Host O-DU shall use to configure in each Shared O-RU
         multiple call home addresses towards O-DU.

         In Single Operator Shared O-RU, over O1 is send only to the primary O-DU callhomeclientinfo,
         which primary O-DU shall use to configure in each Shared O-RU multiple call home addresses towards O-DU.";

      uses ConfiguredClientInfoGrp;
    }

    leaf-list sharedORuList {
      type string;
      description
        "In Multi Operator Shared O-RU, list of Shared O-RU identities connected to the Shared O-RU Host O-DU
         and Shared Resource Operator O-DU

         In Single Operator Shared O-RU, list of Shared O-RU identities
         connected to the primary O-DU and secondary O-DU.";
    }
  }

  grouping SharedOruGrp {
    description "Set of attributes needed by O-DU to configure Shared O-RU functionality";
    reference "O-RAN.WG5.O-DU-O1.0-v06.00";

    leaf oDuRoleOfSharedORu {
      type enumeration {
        enum HOST_AND_SRO {
          description
            "O-DU role as Shared O-RU Host and Shared Resource operator at the same time.
             O-DU shall use Netconf access right group "sudo" in fronthaul.";
        }

        enum HOST {
          description
            "O-DU role as Shared O-RU Host. O-DU shall use Netconf access right group "sudo" in fronthaul.";
        }

        enum SRO {
          description
            "O-DU role as Shared Resource Operator. O-DU shall use Netconf access right group "carrier" in fronthaul.";
        }
      }
      description
        "This attribute defines the role of O-DU.
         When O-DU role is set to "HOST_AND_SRO",
         O-DU simultaneously perform the Shared O-RU Host role and the Shared Resource Operator roles.

         Condition: When O-RU supports Multiple Operator Shared O-RU configuration and O-RU
         is configured to work in shared O-RU mode, this parameter is mandatory";
    }

    leaf sharedResourceOperatorId {
      when "not (../oDuRoleOfSharedORu = 'HOST')";
      type string;
      description
        "This parameter defines Shared Resource Operator ID of O-DUs,
		 which Shared Resource Operator O-DU shall use for the user account of the NETCONF client
         with sro-id configured. When the role of the O-DU is HOST, this attribute is not used.

         Condition: When O-RU supports Multiple Operator Shared O-RU configuration
         and O-RU is configured to work in shared O-RU mode, this parameter is mandatory";
    }

    leaf oDuIdForSharedORu {
      when "not (../oDuRoleOfSharedORu = 'HOST')";
      type string;
      description
        "This parameter defines O-DUs own oduidforsharedoru to be used for fronthaul O-DU ID.
         When the role of the O-DU is HOST, this attribute is not used.

         Condition: When O-RU supports Multiple Operator Shared O-RU or Shared O-RU Multi O-DU configuration
         and O-RU is configured to work in shared O-RU mode, this parameter is mandatory";
    }

    list secondaryODuInfoList {
      when "../oDuRoleOfSharedORu = 'HOST' or ../oDuRoleOfSharedORu = 'HOST_AND_SRO'";
      key oDuIdForSharedORu;
      description
        "List containing information about all Secondary O-DUs, which primary O-DU in Single Operator O-RU sharing
         or shared O-RU Host in Multi Operator O-RU sharing O-DU shall use to configure the Shared O-RUs
         included in the sharedORuList field.

         Condition: This parameter is mandatory when oDuRoleOfSharedORu is HOST or HOST_AND_SRO
         in Multi Operator Shared O-RU or primary in Single Operator Shared O-RU.
         When the role of the O-DU is SRO or secondary, this parameter is not used.";

      uses SecondaryODuInfoGrp;
    }
  }

  augment "/me3gpp:ManagedElement/gnbdu3gpp:GNBDUFunction" {
    description
      "Augmentation containing possible configuration for O-DU to act as Shared O-RU host.";

    list SharedOruConfiguration {
      key id;
      description
        "Contains attributes that is needed to configure Shared O-RU functionality";
      reference "O-RAN.WG5.O-DU-O1.0-v06.00";
      uses top3gpp:Top_Grp;
      container attributes {
        description
          "containing attributes for configuration";
        uses SharedOruGrp;
      }
    }
  }
}

## File: DU Specific Models/o-ran-o1-ctiOdu.yang

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

  revision "2023-03-17" {
    description
      "version 04.00

      updated to completed IM in CTI TMP v4
      ";

    reference "ORAN-WG4.CTI-TMP.0-v04.00";
  }

  revision "2022-07-04" {
    description
      "version 3.0.0

      IM/DM updated for O1 and camelcase

      Note: the integration (augmentation) of the CTIConfig IOC
      into the broader O-DU Data Model is subject to further study and
      optimization in a future version of the file.";

    reference "ORAN-WG4.CTI-TMP.0-v3.00";
  }

  //InformationObjectClass CTIFunction attributes
  grouping CTIFunctionGrp {
    description "Root level of configuration of CTI Clients";
    leaf ctiActivateOnOdu {
        type boolean;
        mandatory true;
        description "Activation of CTI functionality on this O-DU";
    }
  }

  //DataType CTIConfig attributes
  grouping CTIConfigGrp {
    description "Attributes of Data Type CTIConfig";
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
      description "Min time in advance for reception of Notification message from TN, optional (if such messages are interpreted in O-DU)";
    }
    uses or-ctic:ctiTimersGrp;
    uses or-ctic:subtypeGrp;
    uses or-ctic:ctiListeningUdpPortGrp;
  }

  //InformationObjectClass CTIClient attributes
  grouping CTIClientGrp {
    description "Attributes of Information Object Class CTIClient";
    leaf ctiClientMacAddr {
      type yang:mac-address;
      description "the CTI client MAC address, if this client has Ethernet connectivity to at least one CTI Server";
    }
    leaf ctiClientInfo {
      type string;
      description "optional information of the CTI client";
    }
    list ctiClientServerStatus {
        key ctiServerRef;
        leaf ctiServerRef {
            type leafref { path "/me3gpp:ManagedElement/gnbdu3gpp:GNBDUFunction/CTIFunction/CTIServer/attributes/ctiServerId"; }
            mandatory true;
            description "Reference to a given CTI Server";
        }
         leaf ctiClientServerActivate {
            type boolean;
            mandatory true;
            description "activate CTI exchange between this client and this Server";
        }
        leaf ctiClientServerConnStatus {
            type boolean;
            config false;
            mandatory true;
            description "reflects whether exchange of CTI keep-alive messages with this server indicate CTI connectivity";
        }
        description "list of CTI servers with which the client communicates, and CTI status of Client-Server pair.";
    }
  }

  //DataType CTISessionGroup attributes
  grouping CTISessionGroupGrp {
    description "Attributes of Data Type CTISessionGroup";
    leaf ctiServerRef{
      type leafref { path "/me3gpp:ManagedElement/gnbdu3gpp:GNBDUFunction/CTIFunction/CTIServer/attributes/ctiServerId"; }
      mandatory true;
      description "Reference to corresponding CTIServer instance.";
    }
    leaf ctiConnProfileRef {
      type leafref { path "/me3gpp:ManagedElement/gnbdu3gpp:GNBDUFunction/CTIFunction/CTIConnProfile/attributes/ctiConnProfileId"; }
      mandatory true;
      description "Reference to corresponding CTIConnProfile instance.";
    }
  }

  //DataType CTISession attributes
  grouping CTISessionGrp {
    description "Attributes of Data Type CTISession";
    leaf ctiSessionId {
        type string;
        mandatory true;
        description "the identity of a CTI session";
      }
    leaf oruId {
        type string;
        description "optional Unique identifier for O-RU, following format: mfg-name_model-name_serial-num";
    }
    leaf oruInterfaceId {
        type string;
        description "optional Unique identifier for O-RU interface, following format: mfg-name_model-name_serial-num_macaddr";
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

  //DataType CTIServer attributes
  grouping CTIServerGrp {
    description "Attributes of Data Type CTIServer";
    leaf ctiServerId {
      type string;
      mandatory true;
      description "Information about the CTI Server";
    }
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

  //DataType CTIFlow attributes
  grouping CTIFlowGrp{
    description "Attributes of Data Type CTIFlow";
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

  //DataType CTIFlowsInUse attributes
  grouping CTIFlowsInUseGrp {
    description "Attributes of Data Type CTIFlowsInUse";
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
      type leafref { path "/me3gpp:ManagedElement/gnbdu3gpp:GNBDUFunction/CTIFunction/CTIServer/CTIFlow/attributes/ctiFlowId"; }
      mandatory true;
      description "Reference to corresponding CTIFlow instance.
        When there is no use of filters or CTI flow differentation, the CTIflow ID used in the CTI messages is set to 0,
        and there is no need to reference to a given CTIflow instance";
    }
  }

  //DataType CTIConnProfile attributes
  grouping CTIConnProfileGrp {
      description "Attributes of Data Type CTIConnProfile";
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

  //DataType CTIPattern attributes
  grouping CTIPatternGrp {
      description "Attributes of Data Type CTIPattern";
      uses or-ctic:ctiPatternGrp;
  }

//Complete IM structure

  augment "/me3gpp:ManagedElement/gnbdu3gpp:GNBDUFunction" {
    if-feature or-features:CTI;
    description "GNBDUFunction is augmented with child CTIFunction and its children elements";

    list CTIFunction {
      key id;
      description "CTIFunction is top level of CTI functionality";
      uses top3gpp:Top_Grp;
      container attributes {
        description "including CTIFunction attributes";
        uses CTIFunctionGrp;
      }
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
        list CTIConfig {
          key id;
          max-elements 1;
          description "CTIConfig is child of TBD";
          uses top3gpp:Top_Grp;
          container attributes {
            description "including CTIConfig attributes";
            uses CTIConfigGrp ;
          }
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
        list CTIFlow {
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

      list CTIPattern {
        key id;
        description "CTIPattern is child of CTIConfig";
        uses top3gpp:Top_Grp;
        container attributes {
          description "including CTIPattern attributes";
          uses CTIPatternGrp ;
        }
      }
    }
  }
}

## File: Provisioning/o-ran-agg-ald-port.yang

module o-ran-agg-ald-port {
  yang-version 1.1;
  namespace "urn:o-ran:agg-ald-port:1.0";
  prefix "or-agg-ald-port";

  import o-ran-aggregation-base {
    prefix "agg";
  }

  import ietf-yang-schema-mount {
    prefix "yangmnt";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the augmentation of the base aggregation module to treat ald-port information of each O-RU under O-DU.

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

  revision "2020-09-25" {
    description
      "version 1.0.0 - first release of O-RAN O1 for O-DU YANG models";

    reference "ORAN-WG5.MP.0-v01.00";
  }

  augment "/agg:aggregated-o-ru/agg:aggregation" {
    container ald-port-model {
      yangmnt:mount-point "ald-port-root" {
        description
          "Root for o-ran-ald-port.yang model supported per O-RU instance";
      }
    }
  }
}

## File: Provisioning/o-ran-agg-ald.yang

module o-ran-agg-ald {
  yang-version 1.1;
  namespace "urn:o-ran:agg-ald:1.0";
  prefix "or-agg-ald";

  import o-ran-aggregation-base {
    prefix "agg";
  }

  import ietf-yang-schema-mount {
    prefix "yangmnt";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the augmentation of the base aggregation module to treat ald information of each O-RU under O-DU.

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

  revision "2020-09-25" {
    description
      "version 1.0.0 - first release of O-RAN O1 for O-DU YANG models";

    reference "ORAN-WG5.MP.0-v01.00";
  }

  augment "/agg:aggregated-o-ru/agg:aggregation" {
    container ald-model {
      yangmnt:mount-point "ald-root" {
        description
          "Root for o-ran-ald.yang model supported per O-RU instance";
      }
    }
  }
}

## File: Provisioning/o-ran-agg-antenna-calibration.yang

module o-ran-agg-antenna-calibration {
  yang-version 1.1;
  namespace "urn:o-ran:agg-antcal:1.0";
  prefix "or-agg-antcal";

  import o-ran-aggregation-base {
    prefix "agg";
  }

  import ietf-yang-schema-mount {
    prefix "yangmnt";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the augmentation of the base aggregation module to treat antenna-calibration information of each O-RU under O-DU.

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

  revision "2020-09-25" {
    description
      "version 1.0.0 - first release of O-RAN O1 for O-DU YANG models";

    reference "ORAN-WG5.MP.0-v01.00";
  }

  augment "/agg:aggregated-o-ru/agg:aggregation" {
    container antcal-model {
      yangmnt:mount-point "antcal-root" {
        description
          "Root for o-ran-antenna-calibration.yang model supported per O-RU instance";
      }
    }
  }
}

## File: Provisioning/o-ran-agg-beamforming.yang

module o-ran-agg-beamforming {
  yang-version 1.1;
  namespace "urn:o-ran:agg-beamforming:1.0";
  prefix "or-agg-bf";

  import o-ran-aggregation-base {
    prefix "agg";
  }

  import ietf-yang-schema-mount {
    prefix "yangmnt";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the augmentation of the base aggregation module to treat beamforming information of each O-RU under O-DU.

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

  revision "2020-09-25" {
    description
      "version 1.0.0 - first release of O-RAN O1 for O-DU YANG models";

    reference "ORAN-WG5.MP.0-v01.00";
  }

  augment "/agg:aggregated-o-ru/agg:aggregation" {
    container beamforming-model {
      yangmnt:mount-point "beamforming-root" {
        description
          "Root for o-ran-beamforming.yang model supported per O-RU instance";
      }
    }
  }
}

## File: Provisioning/o-ran-agg-dhcp.yang

module o-ran-agg-dhcp {
  yang-version 1.1;
  namespace "urn:o-ran:agg-dhcp:1.0";
  prefix "or-agg-dhcp";

  import o-ran-aggregation-base {
    prefix "agg";
  }

  import ietf-yang-schema-mount {
    prefix "yangmnt";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the augmentation of the base aggregation module to treat dhcp information of each O-RU under O-DU.

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

  revision "2020-09-25" {
    description
      "version 1.0.0 - first release of O-RAN O1 for O-DU YANG models";

    reference "ORAN-WG5.MP.0-v01.00";
  }

  augment "/agg:aggregated-o-ru/agg:aggregation" {
    container dhcp-model {
      yangmnt:mount-point "dhcp-root" {
        description
          "Root for o-ran-dhcp.yang model supported per O-RU instance";
      }
    }
  }
}

## File: Provisioning/o-ran-agg-ecpri-delay.yang

module o-ran-agg-ecpri-delay {
  yang-version 1.1;
  namespace "urn:o-ran:agg-message5:1.0";
  prefix "or-agg-msg5";

  import o-ran-aggregation-base {
    prefix "agg";
  }

  import ietf-yang-schema-mount {
    prefix "yangmnt";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the augmentation of the base aggregation module to treat ecpri-delay information of each O-RU under O-DU.

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

  revision "2020-09-25" {
    description
      "version 1.0.0 - first release of O-RAN O1 for O-DU YANG models";

    reference "ORAN-WG5.MP.0-v01.00";
  }

  augment "/agg:aggregated-o-ru/agg:aggregation" {
    container ecpri-delay-model {
      yangmnt:mount-point "ecpri-delay-root" {
        description
          "Root for o-ran-ecpri-delay.yang model supported per O-RU instance";
      }
    }
  }
}

## File: Provisioning/o-ran-agg-ethernet-forwarding.yang

module o-ran-agg-ethernet-forwarding {
  yang-version 1.1;
  namespace "urn:o-ran:ethernet-fwd::1.0";
  prefix "or-agg-eft";

  import o-ran-aggregation-base {
    prefix "agg";
  }

  import ietf-yang-schema-mount {
    prefix "yangmnt";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the augmentation of the base aggregation module to treat ethernet-forwarding information of each O-RU under O-DU.

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

  revision "2020-09-25" {
    description
      "version 1.0.0 - first release of O-RAN O1 for O-DU YANG models";

    reference "ORAN-WG5.MP.0-v01.00";
  }

  augment "/agg:aggregated-o-ru/agg:aggregation" {
    container ethernet-fwd-model {
      yangmnt:mount-point "ethernet-fwd-root" {
        description
          "Root for o-ran-ethernet-forwarding.yang model supported per O-RU instance";
      }
    }
  }
}

## File: Provisioning/o-ran-agg-externalio.yang

module o-ran-agg-externalio {
  yang-version 1.1;
  namespace "urn:o-ran:agg-externalio:1.0";
  prefix "or-agg-io";

  import o-ran-aggregation-base {
    prefix "agg";
  }

  import ietf-yang-schema-mount {
    prefix "yangmnt";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the augmentation of the base aggregation module to treat externalio information of each O-RU under O-DU.

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

  revision "2020-09-25" {
    description
      "version 1.0.0 - first release of O-RAN O1 for O-DU YANG models";

    reference "ORAN-WG5.MP.0-v01.00";
  }

  augment "/agg:aggregated-o-ru/agg:aggregation" {
    container externalio-model {
      yangmnt:mount-point "externalio-root" {
        description
          "Root for o-ran-externalio.yang model supported per O-RU instance";
      }
    }
  }
}

## File: Provisioning/o-ran-agg-fan.yang

module o-ran-agg-fan {
  yang-version 1.1;
  namespace "urn:o-ran:agg-fan:1.0";
  prefix "or-agg-fan";

  import o-ran-aggregation-base {
    prefix "agg";
  }

  import ietf-yang-schema-mount {
    prefix "yangmnt";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the augmentation of the base aggregation module to treat fan information of each O-RU under O-DU.

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

  revision "2020-09-25" {
    description
      "version 1.0.0 - first release of O-RAN O1 for O-DU YANG models";

    reference "ORAN-WG5.MP.0-v01.00";
  }

  augment "/agg:aggregated-o-ru/agg:aggregation" {
    container fan-model {
      yangmnt:mount-point "fan-root" {
        description
          "Root for o-ran-fan.yang model supported per O-RU instance";
      }
    }
  }
}

## File: Provisioning/o-ran-agg-ietf-hardware.yang

module o-ran-agg-ietf-hardware {
  yang-version 1.1;
  namespace "urn:o-ran:agg-ietf-hardware:1.0";
  prefix "or-agg-ietf-hw";

  import o-ran-aggregation-base {
    prefix "agg";
  }

  import ietf-yang-schema-mount {
    prefix "yangmnt";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the augmentation of the base aggregation module to treat ietf-hardware information of each O-RU under O-DU.

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

  revision "2020-09-25" {
    description
      "version 1.0.0 - first release of O-RAN O1 for O-DU YANG models";

    reference "ORAN-WG5.MP.0-v01.00";
  }

  augment "/agg:aggregated-o-ru/agg:aggregation" {
    container ietf-hardware-model {
      yangmnt:mount-point "ietf-hardware-root" {
        description
          "Root for ietf-hardware.yang model supported per O-RU instance";
      }
    }
  }
}

## File: Provisioning/o-ran-agg-ietf-interfaces.yang

module o-ran-agg-ietf-interfaces {
  yang-version 1.1;
  namespace "urn:o-ran:agg-ietf-interfaces:1.0";
  prefix "or-agg-ietf-if";

  import o-ran-aggregation-base {
    prefix "agg";
  }

  import ietf-yang-schema-mount {
    prefix "yangmnt";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the augmentation of the base aggregation module to treat ietf-interfaces information of each O-RU under O-DU.

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

  revision "2020-09-25" {
    description
      "version 1.0.0 - first release of O-RAN O1 for O-DU YANG models";

    reference "ORAN-WG5.MP.0-v01.00";
  }

  augment "/agg:aggregated-o-ru/agg:aggregation" {
    container ietf-interfaces-model {
      yangmnt:mount-point "ietf-interfaces-root" {
        description
          "Root for ietf-interfaces.yang model supported per O-RU instance";
      }
    }
  }
}

## File: Provisioning/o-ran-agg-ietf-ip.yang

module o-ran-agg-ietf-ip {
  yang-version 1.1;
  namespace "urn:o-ran:agg-ietf-ip:1.0";
  prefix "or-agg-ietf-ip";

  import o-ran-aggregation-base {
    prefix "agg";
  }

  import ietf-yang-schema-mount {
    prefix "yangmnt";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the augmentation of the base aggregation module to treat ietf-ip information of each O-RU under O-DU.

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

  revision "2020-09-25" {
    description
      "version 1.0.0 - first release of O-RAN O1 for O-DU YANG models";

    reference "ORAN-WG5.MP.0-v01.00";
  }

  augment "/agg:aggregated-o-ru/agg:aggregation" {
    container ietf-ip-model {
      yangmnt:mount-point "ietf-ip-root" {
        description
          "Root for ietf-ip.yang model supported per O-RU instance";
      }
    }
  }
}

## File: Provisioning/o-ran-agg-ietf-netconf-acm.yang

module o-ran-agg-ietf-netconf-acm {
  yang-version 1.1;
  namespace "urn:o-ran:agg-ietf-netconf-acm:1.0";
  prefix "or-agg-ietf-nacm";

  import o-ran-aggregation-base {
    prefix "agg";
  }

  import ietf-yang-schema-mount {
    prefix "yangmnt";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the augmentation of the base aggregation module to treat ietf-netconf-acm information of each O-RU under O-DU.

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

  revision "2020-09-25" {
    description
      "version 1.0.0 - first release of O-RAN O1 for O-DU YANG models";

    reference "ORAN-WG5.MP.0-v01.00";
  }

  augment "/agg:aggregated-o-ru/agg:aggregation" {
    container ietf-netconf-acm-model {
      yangmnt:mount-point "ietf-netconf-acm-root" {
        description
          "Root for ietf-netconf-acm.yang model supported per O-RU instance";
      }
    }
  }
}

## File: Provisioning/o-ran-agg-interfaces.yang

module o-ran-agg-interfaces {
  yang-version 1.1;
  namespace "urn:o-ran:agg-interfaces:1.0";
  prefix "or-agg-int";

  import o-ran-aggregation-base {
    prefix "agg";
  }

  import ietf-yang-schema-mount {
    prefix "yangmnt";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the augmentation of the base aggregation module to treat interfaces information of each O-RU under O-DU.

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

  revision "2020-09-25" {
    description
      "version 1.0.0 - first release of O-RAN O1 for O-DU YANG models";

    reference "ORAN-WG5.MP.0-v01.00";
  }

  augment "/agg:aggregated-o-ru/agg:aggregation" {
    container interfaces-model {
      yangmnt:mount-point "interfaces-root" {
        description
          "Root for o-ran-interfaces.yang model supported per O-RU instance";
      }
    }
  }
}

## File: Provisioning/o-ran-agg-laa-operations.yang

module o-ran-agg-laa-operations {
  yang-version 1.1;
  namespace "urn:o-ran:agg-laa-operations:1.0";
  prefix "or-agg-laa-operations";

  import o-ran-aggregation-base {
    prefix "agg";
  }

  import ietf-yang-schema-mount {
    prefix "yangmnt";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the augmentation of the base aggregation module to treat laa-operaions information of each O-RU under O-DU.

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

  revision "2020-09-25" {
    description
      "version 1.0.0 - first release of O-RAN O1 for O-DU YANG models";

    reference "ORAN-WG5.MP.0-v01.00";
  }

  augment "/agg:aggregated-o-ru/agg:aggregation" {
    container laa-operations-model {
      yangmnt:mount-point "laa-operations-root" {
        description
          "Root for o-ran-laa-operaions.yang model supported per O-RU instance";
      }
    }
  }
}

## File: Provisioning/o-ran-agg-laa.yang

module o-ran-agg-laa {
  yang-version 1.1;
  namespace "urn:o-ran:agg-laa:1.0";
  prefix "or-agg-laa";

  import o-ran-aggregation-base {
    prefix "agg";
  }

  import ietf-yang-schema-mount {
    prefix "yangmnt";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the augmentation of the base aggregation module to treat laa information of each O-RU under O-DU.

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

  revision "2020-09-25" {
    description
      "version 1.0.0 - first release of O-RAN O1 for O-DU YANG models";

    reference "ORAN-WG5.MP.0-v01.00";
  }

  augment "/agg:aggregated-o-ru/agg:aggregation" {
    container laa-model {
      yangmnt:mount-point "laa-root" {
        description
          "Root for o-ran-laa.yang model supported per O-RU instance";
      }
    }
  }
}

## File: Provisioning/o-ran-agg-lbm.yang

module o-ran-agg-lbm {
  yang-version 1.1;
  namespace "urn:o-ran:agg-lbm:1.0";
  prefix "or-agg-lbm";

  import o-ran-aggregation-base {
    prefix "agg";
  }

  import ietf-yang-schema-mount {
    prefix "yangmnt";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the augmentation of the base aggregation module to treat lbm information of each O-RU under O-DU.

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

  revision "2020-09-25" {
    description
      "version 1.0.0 - first release of O-RAN O1 for O-DU YANG models";

    reference "ORAN-WG5.MP.0-v01.00";
  }

  augment "/agg:aggregated-o-ru/agg:aggregation" {
    container lbm-model {
      yangmnt:mount-point "lbm-root" {
        description
          "Root for o-ran-lbm.yang model supported per O-RU instance";
      }
    }
  }
}

## File: Provisioning/o-ran-agg-module-cap.yang

module o-ran-agg-module-cap {
  yang-version 1.1;
  namespace "urn:o-ran:agg-module-cap:1.0";
  prefix "or-agg-module-cap";

  import o-ran-aggregation-base {
    prefix "agg";
  }

  import ietf-yang-schema-mount {
    prefix "yangmnt";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the augmentation of the base aggregation module to treat module-cap information of each O-RU under O-DU.

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

  revision "2020-09-25" {
    description
      "version 1.0.0 - first release of O-RAN O1 for O-DU YANG models";

    reference "ORAN-WG5.MP.0-v01.00";
  }

  augment "/agg:aggregated-o-ru/agg:aggregation" {
    container module-cap-model {
      yangmnt:mount-point "module-cap-root" {
        description
          "Root for o-ran-module-cap.yang model supported per O-RU instance";
      }
    }
  }
}

## File: Provisioning/o-ran-agg-mplane-int.yang

module o-ran-agg-mplane-int {
  yang-version 1.1;
  namespace "urn:o-ran:agg-mplane-int:1.0";
  prefix "or-agg-mplane-int";

  import o-ran-aggregation-base {
    prefix "agg";
  }

  import ietf-yang-schema-mount {
    prefix "yangmnt";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the augmentation of the base aggregation module to treat mplane-int information of each O-RU under O-DU.

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

  revision "2020-09-25" {
    description
      "version 1.0.0 - first release of O-RAN O1 for O-DU YANG models";

    reference "ORAN-WG5.MP.0-v01.00";
  }

  augment "/agg:aggregated-o-ru/agg:aggregation" {
    container mplane-int-model {
      yangmnt:mount-point "mplane-int-root" {
        description
          "Root for o-ran-mplane-int.yang model supported per O-RU instance";
      }
    }
  }
}

## File: Provisioning/o-ran-agg-operations.yang

module o-ran-agg-operations {
  yang-version 1.1;
  namespace "urn:o-ran:agg-operations:1.0";
  prefix "or-agg-ops";

  import o-ran-aggregation-base {
    prefix "agg";
  }

  import ietf-yang-schema-mount {
    prefix "yangmnt";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the augmentation of the base aggregation module to treat operations information of each O-RU under O-DU.

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

  revision "2020-09-25" {
    description
      "version 1.0.0 - first release of O-RAN O1 for O-DU YANG models";

    reference "ORAN-WG5.MP.0-v01.00";
  }

  augment "/agg:aggregated-o-ru/agg:aggregation" {
    container operations-model {
      yangmnt:mount-point "operations-root" {
        description
          "Root for o-ran-operations.yang model supported per O-RU instance";
      }
    }
  }
}

## File: Provisioning/o-ran-agg-processing-element.yang

module o-ran-agg-processing-element {
  yang-version 1.1;
  namespace "urn:o-ran:agg-processing-element:1.0";
  prefix "or-agg-elements";

  import o-ran-aggregation-base {
    prefix "agg";
  }

  import ietf-yang-schema-mount {
    prefix "yangmnt";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the augmentation of the base aggregation module to treat processing element information of each O-RU under O-DU.

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

  revision "2020-09-25" {
    description
      "version 1.0.0 - first release of O-RAN O1 for O-DU YANG models";

    reference "ORAN-WG5.MP.0-v01.00";
  }

  augment "/agg:aggregated-o-ru/agg:aggregation" {
    container processing-element-model {
      yangmnt:mount-point "processing-element-root" {
        description
          "Root for o-ran-processing-element.yang model supported per O-RU instance";
      }
    }
  }
}

## File: Provisioning/o-ran-agg-shared-cell.yang

module o-ran-agg-shared-cell {
  yang-version 1.1;
  namespace "urn:o-ran:agg-shared-cell:1.0";
  prefix "or-agg-sc";

  import o-ran-aggregation-base {
    prefix "agg";
  }

  import ietf-yang-schema-mount {
    prefix "yangmnt";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the augmentation of the base aggregation module to treat shared-cell information of each O-RU under O-DU.

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

  revision "2020-09-25" {
    description
      "version 1.0.0 - first release of O-RAN O1 for O-DU YANG models";

    reference "ORAN-WG5.MP.0-v01.00";
  }

  augment "/agg:aggregated-o-ru/agg:aggregation" {
    container shared-cell-model {
      yangmnt:mount-point "shared-cell-root" {
        description
          "Root for o-ran-shared-cell.yang model supported per O-RU instance";
      }
    }
  }
}

## File: Provisioning/o-ran-agg-supervision.yang

module o-ran-agg-supervision {
  yang-version 1.1;
  namespace "urn:o-ran:agg-supervision:1.0";
  prefix "or-agg-supervision";

  import o-ran-aggregation-base {
    prefix "agg";
  }

  import ietf-yang-schema-mount {
    prefix "yangmnt";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the augmentation of the base aggregation module to treat supervision notification of each O-RU under O-DU.

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

  revision "2020-09-25" {
    description
      "version 1.0.0 - first release of O-RAN O1 for O-DU YANG models";

    reference "ORAN-WG5.MP.0-v01.00";
  }

  augment "/agg:aggregated-o-ru/agg:aggregation" {
    container supervision-model {
      yangmnt:mount-point "supervision-root" {
        description
          "Root for o-ran-supervision.yang model supported per O-RU instance";
      }
    }
  }
}

## File: Provisioning/o-ran-agg-transceiver.yang

module o-ran-agg-transceiver {
  yang-version 1.1;
  namespace "urn:o-ran:agg-transceiver:1.0";
  prefix "or-agg-transceiver";

  import o-ran-aggregation-base {
    prefix "agg";
  }

  import ietf-yang-schema-mount {
    prefix "yangmnt";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the augmentation of the base aggregation module to treat transceiver information of each O-RU under O-DU.

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

  revision "2020-09-25" {
    description
      "version 1.0.0 - first release of O-RAN O1 for O-DU YANG models";

    reference "ORAN-WG5.MP.0-v01.00";
  }

  augment "/agg:aggregated-o-ru/agg:aggregation" {
    container transceiver-model {
      yangmnt:mount-point "transceiver-root" {
        description
          "Root for o-ran-transceiver.yang model supported per O-RU instance";
      }
    }
  }
}

## File: Provisioning/o-ran-agg-udp-echo.yang

module o-ran-agg-udp-echo {
  yang-version 1.1;
  namespace "urn:o-ran:agg-udpecho:1.0";
  prefix "or-agg-echo";

  import o-ran-aggregation-base {
    prefix "agg";
  }

  import ietf-yang-schema-mount {
    prefix "yangmnt";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the augmentation of the base aggregation module to treat udp-echo information of each O-RU under O-DU.

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

  revision "2020-09-25" {
    description
      "version 1.0.0 - first release of O-RAN O1 for O-DU YANG models";

    reference "ORAN-WG5.MP.0-v01.00";
  }

  augment "/agg:aggregated-o-ru/agg:aggregation" {
    container udp-echo-model {
      yangmnt:mount-point "udp-echo-root" {
        description
          "Root for o-ran-udp-echo.yang model supported per O-RU instance";
      }
    }
  }
}

## File: Provisioning/o-ran-agg-uplane-conf.yang

module o-ran-agg-uplane-conf {
  yang-version 1.1;
  namespace "urn:o-ran:agg-uplane-conf:1.0";
  prefix "or-agg-uplane-conf";

  import o-ran-aggregation-base {
    prefix "agg";
  }

  import ietf-yang-schema-mount {
    prefix "yangmnt";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the augmentation of the base aggregation module to treat uplane-conf information of each O-RU under O-DU.

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

  revision "2020-09-25" {
    description
      "version 1.0.0 - first release of O-RAN O1 for O-DU YANG models";

    reference "ORAN-WG5.MP.0-v01.00";
  }

  augment "/agg:aggregated-o-ru/agg:aggregation" {
    container uplane-conf-model {
      yangmnt:mount-point "uplane-conf-root" {
        description
          "Root for o-ran-uplane-conf.yang model supported per O-RU instance";
      }
    }
  }
}

## File: Provisioning/o-ran-agg-usermgmt.yang

module o-ran-agg-usermgmt {
  yang-version 1.1;
  namespace "urn:o-ran:agg-user-mgmt:1.0";
  prefix "or-agg-usermgmt";

  import o-ran-aggregation-base {
    prefix "agg";
  }

  import ietf-yang-schema-mount {
    prefix "yangmnt";
  }

  organization "O-RAN Alliance";

  contact
    "www.o-ran.org";

  description
    "This module defines the augmentation of the base aggregation module to treat usermgmt information of each O-RU under O-DU.

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

  revision "2020-09-25" {
    description
      "version 1.0.0 - first release of O-RAN O1 for O-DU YANG models";

    reference "ORAN-WG5.MP.0-v01.00";
  }

  augment "/agg:aggregated-o-ru/agg:aggregation" {
    container usermgmt-model {
      yangmnt:mount-point "usermgmt-root" {
        description
          "Root for o-ran-usermgmt.yang model supported per O-RU instance";
      }
    }
  }
}
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG5.O-DU-O1.1-R003-v09.00.zip.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG5.O-DU-O1.1-R003-v09.00.zip).

---

* toc
{:toc}
