## O-RAN.WG9.XTRP-SYN.1-R004-v06.00_YANG.zip

- View in [Reader Mode](https://simewu.com/spec-reader/pages/03-WG9/O-RAN.WG9.XTRP-SYN.1-R004-v06.00_YANG.zip).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG9.XTRP-SYN.1-R004-v06.00_YANG.zip).

---

Content from the zip file `documents/O-RAN.WG9.XTRP-SYN.1-R004-v06.00_YANG.zip`:

## File: o-ran-e2e-sync-monitoring@2024-11-21.yang

module o-ran-e2e-sync-monitoring {
  yang-version 1.1;
  namespace "urn:o-ran:e2e-sync-monitoring";
  prefix o-ran-e2e-sync-mon;

  import ieee1588-ptp-tt {
    prefix ptp-tt;
    reference
      "IEEE Std 1588e-2024";
  }

  organization
    "O-RAN Alliance";
  contact
    "www.o-ran.org";
  description
    "This module defines a YANG data model for End-to-end Sync Monitoring
     Feature. This module contains new set of attributes which are
     not available in imported modules.

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

  revision 2024-11-21 {
    description
      "Additional attributes for
       End-to-end Sync Performance Monitoring feature.
       value of supportedVersion attribute for this revision is 1.";
    reference
      "O-RAN.WG9.XTRP-SYN.0-R004-v06.00:
       Synchronization Architecture and Solution Specification -
       Annex H: End-to-end (e2e) Sync Monitoring
       using the Centralized Monitoring System.";
  }

  /*
   * Typedef
   */

  typedef message-type {
    type enumeration {
      enum sync {
        value 0;
        description
          "PTP Message type is sync event message.";
        reference
          "IEEE 1588-2019 Table:36 Values of messageType field.";
      }
      enum delay-req {
        value 1;
        description
          "PTP Message type is delay request event message.";
        reference
          "IEEE 1588-2019 Table:36 Values of messageType field.";
      }
    }
    description
      "PTP event messageType: sync or delay request.";
    reference
      "IEEE 1588-2019 Table:36 Values of messageType field.
       O-RAN.WG9.XTRP-SYN.0-R004-v06.00:
       Synchronization Architecture and Solution Specification -
       Annex H: End-to-end (e2e) Sync Monitoring using the
       Centralized Monitoring System - Section H.4.2.1.1";
  }

  typedef ptp-extended-device-type {
    type enumeration {
      enum not-applicable {
        value 0;
        description
          "Node is non O-RAN device.
           Hex value 0x00.";
      }
      enum o-du-time-transmitter {
        value 17;
        description
          "Device type is O-RAN Distributed Unit TimeTransmitter.
           Hex value 0x11.";
      }
      enum o-du-bc {
        value 18;
        description
          "Device type is O-RAN Distributed Unit boundary clock.
           Hex value 0x12.";
      }
      enum o-du-tsc {
        value 19;
        description
          "Device type is O-RAN Distributed Unit time synchronous clock.
           Hex value 0x13.";
      }
      enum o-ru {
        value 20;
        description
          "Device type is O-RAN Radio Unit.
           Hex value 0x14.";
      }
    }
    description
      "ITU-T attribute defaultDs.deviceType does not cover O-RAN clock types.
       These extended device types shall be used to identify
       O-RAN devices/clocks.";
    reference
      "O-RAN.WG9.XTRP-SYN.0-R004-v06.00:
       Synchronization Architecture and Solution Specification -
       Annex H: End-to-end (e2e) Sync Monitoring using the
       Centralized Monitoring System - Section H.4.2.1.5";
  }

  /*
   * Groupings
   */

  grouping ptp-e2e-default-ds {
    description
      "End-to-end Sync Monitoring default-ds additional attributes.";
    reference
      "O-RAN.WG9.XTRP-SYN.0-R004-v06.00:
       Synchronization Architecture and Solution Specification -
       Annex H: End-to-end (e2e) Sync Monitoring using the
       Centralized Monitoring System - Section H.4.2";
    leaf is-supported {
      type boolean;
      description
        "If True; node supports End-to-end Sync Monitoring feature.";
      reference
        "O-RAN.WG9.XTRP-SYN.0-R004-v06.00:
         Synchronization Architecture and Solution Specification -
         Annex H: End-to-end (e2e) Sync Monitoring using the
         Centralized Monitoring System - Section H.4.2.1.3";
    }
    leaf supported-version {
      type uint8;
      description
        "End-to-end Sync Monitoring yang data model version.";
      reference
        "O-RAN.WG9.XTRP-SYN.0-R004-v06.00:
         Synchronization Architecture and Solution Specification -
         Annex H: End-to-end (e2e) Sync Monitoring using the
         Centralized Monitoring System - Section H.4.2.1.4";
    }
    leaf extended-device-type {
      type ptp-extended-device-type;
      description
        "Extended device type to cover O-RAN specific PTP
         clocks/devices.";
      reference
        "O-RAN.WG9.XTRP-SYN.0-R004-v06.00:
         Synchronization Architecture and Solution Specification -
         Annex H: End-to-end (e2e) Sync Monitoring using the
         Centralized Monitoring System - Section H.4.2.1.5";
    }
  }

  grouping ptp-e2e-current-ds {
    description
      "End-to-end Sync Monitoring current-ds additional attributes.";
    reference
      "O-RAN.WG9.XTRP-SYN.0-R004-v06.00:
       Synchronization Architecture and Solution Specification -
       Annex H: End-to-end (e2e) Sync Monitoring using the
       Centralized Monitoring System - Section H.4.2";
    leaf time-since-current-clock-state {
      type uint32;
      units "seconds";
      description
        "Time elapsed in the current clock-state in seconds.";
      reference
        "O-RAN.WG9.XTRP-SYN.0-R004-v06.00:
         Synchronization Architecture and Solution Specification -
         Annex H: End-to-end (e2e) Sync Monitoring using the
         Centralized Monitoring System - Section H.4.2.1.6";
    }
  }

  grouping ptp-timestamp-record-group {
    description
      "Container for PTP timestamp data set.";
    reference
      "O-RAN.WG9.XTRP-SYN.0-R004-v06.00:
       Synchronization Architecture and Solution Specification -
       Annex H: End-to-end (e2e) Sync Monitoring using the
       Centralized Monitoring System - Section H.4.2.1.1.";
    leaf update-frequency {
      type uint8;
      units "seconds";
      description
        "PTP timestamp record collection frequency in seconds.";
      reference
        "O-RAN.WG9.XTRP-SYN.0-R004-v06.00:
         Synchronization Architecture and Solution Specification -
         Annex H: End-to-end (e2e) Sync Monitoring using the
         Centralized Monitoring System - Section H.4.2.1.1";
    }
    leaf number-of-records {
      type uint16;
      description
        "Number of PTP timestamp data set records in
         timestamp-info list.";
      reference
        "O-RAN.WG9.XTRP-SYN.0-R004-v06.00:
         Synchronization Architecture and Solution Specification -
         Annex H: End-to-end (e2e) Sync Monitoring using the
         Centralized Monitoring System - Section H.4.2.1.1";
    }
    list timestamp-info {
      key "index";
      description
        "List of PTP timestamp data records.
         Sync/Delay request message timestamp information.";
      reference
        "O-RAN.WG9.XTRP-SYN.0-R004-v06.00:
         Synchronization Architecture and Solution Specification -
         Annex H: End-to-end (e2e) Sync Monitoring using the
         Centralized Monitoring System - Section H.4.2";
      leaf index {
        type uint16;
        description
          "Unique identifier of each record in the list.
           timestamp-info list shall be indexed using this attribute.";
        reference
          "O-RAN.WG9.XTRP-SYN.0-R004-v06.00:
           Synchronization Architecture and Solution Specification -
           Annex H: End-to-end (e2e) Sync Monitoring using the
           Centralized Monitoring System - Section H.4.2.1.1";
      }
      container timestamp-record {
        description
          "PTP timestamp data records, contains either
           sync or delay request timestamp information.";
        reference
          "O-RAN.WG9.XTRP-SYN.0-R004-v06.00:
           Synchronization Architecture and Solution Specification -
           Annex H: End-to-end (e2e) Sync Monitoring using the
           Centralized Monitoring System - Section H.4.2";
        leaf record-time {
          type uint64;
          units "seconds";
          description
            "System time in seconds at which timestamp record was logged.";
          reference
            "O-RAN.WG9.XTRP-SYN.0-R004-v06.00:
             Synchronization Architecture and Solution Specification -
             Annex H: End-to-end (e2e) Sync Monitoring using the
             Centralized Monitoring System - Section H.4.2.1.1";
        }
        leaf t1-sec {
          type uint64;
          units "seconds";
          description
            "This denotes t1 seconds timestamps in case of sync message.
             and t3 seconds in case of delay request message.";
          reference
            "O-RAN.WG9.XTRP-SYN.0-R004-v06.00:
             Synchronization Architecture and Solution Specification -
             Annex H: End-to-end (e2e) Sync Monitoring using the
             Centralized Monitoring System - Section H.4.2.1.1";
        }
        leaf t1-nsec {
          type uint32;
          units "nanoseconds";
          description
            "This denotes t1 nanoseconds timestamps in case of sync message.
             and t3 nanoseconds in case of delay request message.";
          reference
            "O-RAN.WG9.XTRP-SYN.0-R004-v06.00:
             Synchronization Architecture and Solution Specification -
             Annex H: End-to-end (e2e) Sync Monitoring using the
             Centralized Monitoring System - Section H.4.2.1.1";
        }
        leaf t2-sec {
          type uint64;
          units "seconds";
          description
            "This denotes t2 seconds timestamps in case of sync message.
             and t4 seconds in case of delay request/response message.";
          reference
            "O-RAN.WG9.XTRP-SYN.0-R004-v06.00:
             Synchronization Architecture and Solution Specification -
             Annex H: End-to-end (e2e) Sync Monitoring using the
             Centralized Monitoring System - Section H.4.2.1.1";
        }
        leaf t2-nsec {
          type uint32;
          units "nanoseconds";
          description
            "This denotes t2 nanoseconds timestamps in case of sync message.
             and t4 nanoseconds in case of delay request/response message.";
          reference
            "O-RAN.WG9.XTRP-SYN.0-R004-v06.00:
             Synchronization Architecture and Solution Specification -
             Annex H: End-to-end (e2e) Sync Monitoring using the
             Centralized Monitoring System - Section H.4.2.1.1";
        }
        leaf sequence-id {
          type uint16;
          description
            "Sequence-id: Sequence number used in the
             PTP event (sync or delay request/response) packets.";
          reference
            "O-RAN.WG9.XTRP-SYN.0-R004-v06.00:
             Synchronization Architecture and Solution Specification -
             Annex H: End-to-end (e2e) Sync Monitoring using the
             Centralized Monitoring System - Section H.4.2.1.1";
        }
        leaf cf {
          type int64;
          description
            "Cf: Correction field value in the Message.";
          reference
            "O-RAN.WG9.XTRP-SYN.0-R004-v06.00:
             Synchronization Architecture and Solution Specification -
             Annex H: End-to-end (e2e) Sync Monitoring using the
             Centralized Monitoring System - Section H.4.2.1.1";
        }
        leaf path-delay {
          type int64;
          description
            "Path-delay: Computed PTP Packet Path delay
             (timeTransmitter-to-timeReceiver and
             timeReceiver-to-timeTransmitter based
             on the message type).";
          reference
            "O-RAN.WG9.XTRP-SYN.0-R004-v06.00:
             Synchronization Architecture and Solution Specification -
             Annex H: End-to-end (e2e) Sync Monitoring using the
             Centralized Monitoring System - Section H.4.2.1.1";
        }
        leaf message-type {
          type message-type;
          description
            "Message-type: sync or delay request/response.";
          reference
            "IEEE 1588-2019 Table:36 Values of messageType field.
             O-RAN.WG9.XTRP-SYN.0-R004-v06.00:
             Synchronization Architecture and Solution Specification -
             Annex H: End-to-end (e2e) Sync Monitoring using the
             Centralized Monitoring System - Section H.4.2.1.1";
        }
      }
    }
  }

  grouping all-time-transmitter-group {
    description
      "Container for all remote timeTransmitters' records,
       collected from upstream timeTransmitters via announce
       messages for A/BTCA selection.";
    reference
      "O-RAN.WG9.XTRP-SYN.0-R004-v06.00:
       Synchronization Architecture and Solution Specification -
       Annex H: End-to-end (e2e) Sync Monitoring using the
       Centralized Monitoring System - Section H.4.2";
    list time-transmitter {
      key "index";
      description
        "List of available upstream timeTransmitters.";
      reference
        "O-RAN.WG9.XTRP-SYN.0-R004-v06.00:
         Synchronization Architecture and Solution Specification -
         Annex H: End-to-end (e2e) Sync Monitoring using the
         Centralized Monitoring System - Section H.4.2";
      leaf index {
        type uint16;
        description
          "Unique identifier of each record in the list.
           time-transmitter list shall be indexed using
           this attribute.";
        reference
          "O-RAN.WG9.XTRP-SYN.0-R004-v06.00:
           Synchronization Architecture and Solution Specification -
           Annex H: End-to-end (e2e) Sync Monitoring using the
           Centralized Monitoring System - Section H.4.2.1.2";
      }
      container parent-ds {
        description
          "Provides parent-ds information received from
           upstream timeTransmitter.";
        reference
          "8.2.3 of IEEE Std 1588-2019";
        container parent-port-identity {
          description
            "portIdentity of upstream timeTransmitter.";
          reference
            "8.2.3.2 of IEEE Std 1588-2019";
          uses ptp-tt:port-identity;
        }
        leaf grandmaster-identity {
          type ptp-tt:clock-identity;
          description
            "clockIdentity of the PTP Grandmaster of
             the upstream timeTransmitter.";
          reference
            "8.2.3.6 of IEEE Std 1588-2019";
        }
        container grandmaster-clock-quality {
          description
            "clockQuality of the PTP Grandmaster of
             the upstream timeTransmitter.";
          reference
            "8.2.3.7 of IEEE Std 1588-2019";
          uses ptp-tt:clock-quality;
        }
        leaf grandmaster-priority1 {
          type uint8;
          description
            "priority1 of the PTP Grandmaster of
             the upstream timeTransmitter.";
          reference
            "8.2.3.8 of IEEE Std 1588-2019";
        }
        leaf grandmaster-priority2 {
          type uint8;
          description
            "priority2 of the Grandmaster PTP Instance of
             the upstream timeTransmitter.";
          reference
            "8.2.3.9 of IEEE Std 1588-2019";
        }
        leaf synchronization-uncertain {
          type boolean;
          description
            "This boolean is true when synchronization is
             uncertain in the upstream timeTransmitter's PTP Port.";
          reference
            "8.2.3.11 of IEEE Std 1588-2019";
        }
      }
      container time-properties-ds {
        description
          "Provides time-properties-ds information received from
           upstream timeTransmitter.";
        reference
          "8.2.4 of IEEE Std 1588-2019";
        leaf current-utc-offset {
          when "../current-utc-offset-valid='true'";
          type int16;
          units "seconds";
          description
            "The offset from UTC in seconds.";
          reference
            "7.2.4 of IEEE Std 1588-2019
             8.2.4.2 of IEEE Std 1588-2019";
        }
        leaf current-utc-offset-valid {
          type boolean;
          description
            "The value of current-utc-offset-valid shall be true
             if the values of current-utc-offset, leap59, and leap61
             are known to be correct, otherwise it shall be false.";
          reference
            "8.2.4.3 of IEEE Std 1588-2019";
        }
        leaf leap59 {
          type boolean;
          description
            "If the timescale is PTP, a true value for leap59
             shall indicate that the last minute of the current
             UTC day contains 59 seconds.";
          reference
            "8.2.4.4 of IEEE Std 1588-2019";
        }
        leaf leap61 {
          type boolean;
          description
            "If the timescale is PTP, a true value for leap61
             shall indicate that the last minute of the current
             UTC day contains 61 seconds.";
          reference
            "8.2.4.5 of IEEE Std 1588-2019";
        }
        leaf time-traceable {
          type boolean;
          description
            "The value of time-traceable shall be true if the
             timescale is traceable to a primary reference;
             otherwise, the value shall be false.";
          reference
            "8.2.4.6 of IEEE Std 1588-2019";
        }
        leaf frequency-traceable {
          type boolean;
          description
            "The value of time-traceable shall be true if the
             frequency determining the timescale is traceable
             to a primary reference; otherwise, the value shall
             be false.";
          reference
            "8.2.4.7 of IEEE Std 1588-2019";
        }
        leaf ptp-timescale {
          type boolean;
          description
            "If ptp-timescale is true, the timescale of the
             Grandmaster PTP Instance of upstream timeTransmitter
             is PTP, which is the elapsed time since the
             PTP epoch measured using the second defined by
             International Atomic Time (TAI).";
          reference
            "7.2.1 of IEEE Std 1588-2019
             8.2.4.8 of IEEE Std 1588-2019";
        }
        leaf time-source {
          type identityref {
            base ptp-tt:time-source;
          }
          description
            "The source of time used by the PTP Grandmaster
             of upstream timeTransmitter.";
          reference
            "7.6.2.8 of IEEE Std 1588-2019
             8.2.4.9 of IEEE Std 1588-2019";
        }
      }
      container port-ds {
        description
          "Local PTP port's (PortDS) information associated with
           remote timeTransmitter.";
        reference
          "8.2.15 of IEEE Std 1588-2019";
        container port-identity {
          description
            "The IEEE Std 1588 portIdentity.";
          reference
            "8.2.15.2.1 of IEEE Std 1588-2019";
          uses ptp-tt:port-identity;
        }
      }
    }
  }

  /*
   * Data Nodes
   */

  augment "/ptp-tt:ptp/ptp-tt:instances/ptp-tt:instance/ptp-tt:default-ds" {
    description
      "Augment the DefaultDS of a PTP Instance.";
    container o-ran-e2e-sync-monitoring-ds {
      presence "When present, the End-to-end Sync Monitoring is supported on the
                Instance.";
      config false;
      description
        "Additional default data set attributes for End-to-end
         Sync Monitoring feature.";
      reference
        "O-RAN.WG9.XTRP-SYN.0-R004-v06.00:
         Synchronization Architecture and Solution Specification -
         Annex H: End-to-end (e2e) Sync Monitoring using the
         Centralized Monitoring System - Section H.4.2";
      uses ptp-e2e-default-ds;
    }
  }

  augment "/ptp-tt:ptp/ptp-tt:instances/ptp-tt:instance/ptp-tt:current-ds" {
    description
      "Augment the CurrentDS of a PTP Instance.";
    container o-ran-e2e-sync-monitoring-ds {
      presence "When present, the End-to-end Sync Monitoring is supported on the
                Instance.";
      config false;
      description
        "Additional current data set attributes for End-to-end
         Sync Monitoring feature.";
      reference
        "O-RAN.WG9.XTRP-SYN.0-R004-v06.00:
         Synchronization Architecture and Solution Specification -
         Annex H: End-to-end (e2e) Sync Monitoring using the
         Centralized Monitoring System - Section H.4.2";
      uses ptp-e2e-current-ds;
    }
  }

  augment "/ptp-tt:ptp/ptp-tt:instances/ptp-tt:instance" {
    container o-ran-e2e-sync-monitoring-ds {
      presence "When present, the End-to-end Sync Monitoring is supported on the
                Instance.";
      config false;
      description
        "Additional attributes for End-to-end Sync Monitoring feature.";
      reference
        "O-RAN.WG9.XTRP-SYN.0-R004-v06.00:
         Synchronization Architecture and Solution Specification -
         Annex H: End-to-end (e2e) Sync Monitoring using the
         Centralized Monitoring System - Section H.4.2";
      container ptp-timestamp-records-ds {
        description
          "Container for PTP timestamp data records.";
        reference
          "O-RAN.WG9.XTRP-SYN.0-R004-v06.00:
           Synchronization Architecture and Solution Specification -
           Annex H: End-to-end (e2e) Sync Monitoring using the
           Centralized Monitoring System - Section H.4.2.1.1";
        uses ptp-timestamp-record-group;
      }
      container all-time-transmitter-ds {
        description
          "Container for all remote timeTransmitters' records,
           collected from upstream timeTransmitters via announce
           messages.";
        reference
          "O-RAN.WG9.XTRP-SYN.0-R004-v06.00:
           Synchronization Architecture and Solution Specification -
           Annex H: End-to-end (e2e) Sync Monitoring using the
           Centralized Monitoring System - Section H.4.2.1.2";
        uses all-time-transmitter-group;
      }
    }
  }
}
---

- View in [Reader Mode](https://simewu.com/spec-reader/pages/03-WG9/O-RAN.WG9.XTRP-SYN.1-R004-v06.00_YANG.zip).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG9.XTRP-SYN.1-R004-v06.00_YANG.zip).
