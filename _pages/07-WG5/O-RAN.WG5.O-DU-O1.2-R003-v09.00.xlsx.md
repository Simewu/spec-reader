---
title: O-RAN.WG5.O-DU-O1.2-R003-v09.00.xlsx.md
author: O-RAN Alliance, WG5
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG5.O-DU-O1.2-R003-v09.00.xlsx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG5.O-DU-O1.2-R003-v09.00.xlsx).

---

* toc
{:toc}

---

## Cover
<div class="table-wrapper" markdown="block">

| Unnamed: 0 | Unnamed: 1 | Unnamed: 2 | Unnamed: 3 | Unnamed: 4 | Unnamed: 5 | Unnamed: 6 | Unnamed: 7 | Unnamed: 8 | Unnamed: 9 | Unnamed: 10 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
|  -  | This spread sheet indicates how WG4 instances to be configured |  -  |  -  |  -  |  -  |  -  |  -  |  -  |  -  |  -  |
|  -  |  -  |  -  |  -  |  -  |  -  |  -  |  -  |  -  |  -  |  -  |
|  -  |  -  |  -  |  -  |  -  |  -  |  -  |  -  | Category | Legend | definition |
|  -  | Module Name | Note | SA5 | AGG | INT | Import |  -  | rw | M | Mapping from SA5 parameter |
| Common | iana-hardware |  -  | - | - | - | - |  -  |  -  | I | Creating by O-DU internal logic |
| Common | iana-if-type |  -  | - | - | - | ietf-interfaces |  -  |  -  | A | Configuring by Aggregatin model |
| Common | ietf-inet-types |  -  | - | - | - | - |  -  | ro | M | Mapping to SA5 parameter |
| Common | ietf-hardware |  -  | - | x | x | ietf-inet-types
ietf-yang-types
iana-hardware |  -  |  -  | N | No need to notify to SMO |
| Common | ietf-interfaces |  -  | - | - | x | ietf-yang-types |  -  |  -  | A | Get by Aggregation model |
| Common | ietf-ip |  -  | - | x | - | ietf-interfaces
ietf-inet-types
ietf-yang-types |  -  |  -  |  -  |  -  |
| Common | ietf-yang-types |  -  | - | - | - | - |  -  |  -  |  -  |  -  |
| Common | ietf-dhcpv6-types |  -  | - | - | - | ietf-inet-types
ietf-yang-types |  -  |  -  |  -  |  -  |
| Common | ietf-yang-library |  -  | - | - | - | ietf-yang-types
ietf-inet-types |  -  |  -  |  -  |  -  |
| Common | ietf-netconf-acm |  -  | - | x | x | ietf-yang-types |  -  |  -  |  -  |  -  |
| Common | ietf-netconf-monitoring |  -  | - | - | x | ietf-yang-types
ietf-inet-types |  -  |  -  |  -  |  -  |
| System | o-ran-supervision |  -  | - | x | - | ietf-yang-types |  -  |  -  |  -  |  -  |
| System | o-ran-usermgmt |  -  | - | x | - | ietf-netconf-acm |  -  |  -  |  -  |  -  |
| System | o-ran-hardware |  -  | - | x | - | ietf-hardware
iana-hardware |  -  |  -  |  -  |  -  |
| System | o-ran-fan |  -  | - | x | - | - |  -  |  -  |  -  |  -  |
| System | o-ran-fm | Specified in Fault Management chapter |  -  |  -  |  -  |  -  |  -  |  -  |  -  |  -  |
| System | o-ran-alarm-id | Specified in Fault Management chapter |  -  |  -  |  -  |  -  |  -  |  -  |  -  |  -  |
| System | o-ran-compression-factors |  -  | - | - | - | - |  -  |  -  |  -  |  -  |
| Operations | o-ran-operations |  -  | - | x | - | ietf-yang-types
ietf-netconf-acm
ietf-hardware |  -  |  -  |  -  |  -  |
| Operations | o-ran-file-management | Specified in File Management chapter |  -  |  -  |  -  |  -  |  -  |  -  |  -  |  -  |
| Operations | o-ran-software-management | Specified in Software Management chapter |  -  |  -  |  -  |  -  |  -  |  -  |  -  |  -  |
| Operations | o-ran-lbm |  -  | - | x | - | ietf-yang-types
ietf-interfaces
o-ran-interfaces |  -  |  -  |  -  |  -  |
| Operations | o-ran-udp-echo |  -  | - | x | - | o-ran-interfaces |  -  |  -  |  -  |  -  |
| Operations | o-ran-ecpri-delay |  -  | - | x | - | o-ran-processing-element |  -  |  -  |  -  |  -  |
| Operations | o-ran-performance-management | Specified in Performance Management chapter |  -  |  -  |  -  |  -  |  -  |  -  |  -  |  -  |
| Operations | o-ran-uplane-conf |  -  | x | x | x | o-ran-processing-element
ietf-interfaces
o-ran-module-cap
o-ran-compression-factors |  -  |  -  |  -  |  -  |
| Operations | o-ran-ald | v2 scope |  -  |  -  |  -  |  -  |  -  |  -  |  -  |  -  |
| Operations | o-ran-troubleshoting | Specified in File Management chapter |  -  |  -  |  -  |  -  |  -  |  -  |  -  |  -  |
| Operations | o-ran-laa-operations | v2 scope |  -  |  -  |  -  |  -  |  -  |  -  |  -  |  -  |
| Operations | o-ran-trace | v2 scope |  -  |  -  |  -  |  -  |  -  |  -  |  -  |  -  |
| Interfaces | o-ran-interfaces |  -  | - | x | - | ietf-inet-types
iana-if-type
ietf-interfaces
ietf-ip
ietf-hardware
ietf-yang-types
iana-hardware |  -  |  -  |  -  |  -  |
| Interfaces | o-ran-processing-element |  -  | - | x | - | ietf-yang-types
ietf-inet-types
ietf-interfaces
ietf-ip
o-ran-interfaces |  -  |  -  |  -  |  -  |
| Interfaces | o-ran-transceiver |  -  | - | x | - | o-ran-interfaces
ietf-interfaces |  -  |  -  |  -  |  -  |
| Interfaces | o-ran-mplane-int |  -  | - | x | - | ietf-inet-types
ietf-interfaces
o-ran-interfaces |  -  |  -  |  -  |  -  |
| Interfaces | o-ran-dhcp |  -  | - | - | - | ietf-interfaces
ietf-inet-types
ietf-dhcpv6-types |  -  |  -  |  -  |  -  |
| Interfaces | o-ran-externalio | v2 scope |  -  |  -  |  -  |  -  |  -  |  -  |  -  |  -  |
| Interfaces | o-ran-ald-port | v2 scope |  -  |  -  |  -  |  -  |  -  |  -  |  -  |  -  |
| Interfaces | o-ran-ethernet-forwarding |  -  | - | - | - | ietf-yang-types
o-ran-interfaces
ietf-interfaces |  -  |  -  |  -  |  -  |
| Sync | o-ran-sync | Specified in Sync chapter |  -  |  -  |  -  |  -  |  -  |  -  |  -  |  -  |
| Radio | o-ran-beamforming |  -  | - | x | - | o-ran-uplane-conf
o-ran-module-cap
o-ran-compression-factors |  -  |  -  |  -  |  -  |
| Radio | o-ran-delay-management | Specified in Delay Management chapter |  -  |  -  |  -  |  -  |  -  |  -  |  -  |  -  |
| Radio | o-ran-module-cap |  -  | - | x | - | o-ran-compression-factors |  -  |  -  |  -  |  -  |
| Radio | o-ran-laa | v2 scope |  -  |  -  |  -  |  -  |  -  |  -  |  -  |  -  |
| Radio | o-ran-antenna-calibration |  -  | - | - | x | - |  -  |  -  |  -  |  -  |
| Radio | o-ran-shared-cell |  -  | - | - | x | o-ran-compression-factors
o-ran-processing-element |  -  |  -  |  -  |  -  |

</div>

## Common
<div class="table-wrapper" markdown="block">

| Unnamed: 0 | Category | Note |
| --- | --- | --- |
| module: ietf-hardware |  -  |  -  |
| +--rw hardware |  -  |  -  |
| +--ro last-change? yang:date-and-time | N |  -  |
| +--rw component\* [name] |  -  |  -  |
| +--rw name string | I |  -  |
| +--rw class identityref | I |  -  |
| +--ro physical-index? int32 {entity-mib}? | A |  -  |
| +--ro description? string | A |  -  |
| +--rw parent? -> ../../component/name | I |  -  |
| +--rw parent-rel-pos? int32 | I |  -  |
| +--ro contains-child\* -> ../../component/name | A |  -  |
| +--ro hardware-rev? string | A |  -  |
| +--ro firmware-rev? string | A |  -  |
| +--ro software-rev? string | A |  -  |
| +--ro serial-num? string | A |  -  |
| +--ro mfg-name? string | A |  -  |
| +--ro model-name? string | A |  -  |
| +--rw alias? string | I |  -  |
| +--rw asset-id? string | I |  -  |
| +--ro is-fru? boolean | A |  -  |
| +--ro mfg-date? yang:date-and-time | A |  -  |
| +--rw uri\* inet:uri | A |  -  |
| +--ro uuid? yang:uuid | A |  -  |
| +--rw state {hardware-state}? | A |  -  |
| | +--ro state-last-changed? yang:date-and-time | A |  -  |
| | +--rw admin-state? admin-state | A |  -  |
| | +--ro oper-state? oper-state | A |  -  |
| | +--ro usage-state? usage-state | N |  -  |
| | +--ro alarm-state? alarm-state | N |  -  |
| | +--ro standby-state? standby-state | N |  -  |
| +--ro sensor-data {hardware-sensor}? | N |  -  |
| +--ro value? sensor-value | N |  -  |
| +--ro value-type? sensor-value-type | N |  -  |
| +--ro value-scale? sensor-value-scale | N |  -  |
| +--ro value-precision? sensor-value-precision | N |  -  |
| +--ro oper-status? sensor-status | N |  -  |
| +--ro units-display? string | N |  -  |
| +--ro value-timestamp? yang:date-and-time | N |  -  |
| +--ro value-update-rate? uint32 | N |  -  |
|  -  |  -  |  -  |
| notifications: | A |  -  |
| +---n hardware-state-change | A |  -  |
| +---n hardware-state-oper-enabled {hardware-state}? | A |  -  |
| | +--ro name? -> /hardware/component/name | A |  -  |
| | +--ro admin-state? -> /hardware/component/state/admin-state | A |  -  |
| | +--ro alarm-state? -> /hardware/component/state/alarm-state | A |  -  |
| +---n hardware-state-oper-disabled {hardware-state}? | A |  -  |
| +--ro name? -> /hardware/component/name | A |  -  |
| +--ro admin-state? -> /hardware/component/state/admin-state | A |  -  |
| +--ro alarm-state? -> /hardware/component/state/alarm-state | A |  -  |
|  -  |  -  |  -  |
| module: ietf-interfaces |  -  |  -  |
| +--rw interfaces | I |  -  |
| | +--rw interface\* [name] | I |  -  |
| | +--rw name string | I |  -  |
| | +--rw description? string | I |  -  |
| | +--rw type identityref | I |  -  |
| | +--rw enabled? boolean | I |  -  |
| | +--rw link-up-down-trap-enable? enumeration {if-mib}? | I |  -  |
| | +--ro admin-status enumeration {if-mib}? | I |  -  |
| | +--ro oper-status enumeration | I |  -  |
| | +--ro last-change? yang:date-and-time | I |  -  |
| | +--ro if-index int32 {if-mib}? | I |  -  |
| | +--ro phys-address? yang:phys-address | I |  -  |
| | +--ro higher-layer-if\* interface-ref | I |  -  |
| | +--ro lower-layer-if\* interface-ref | I |  -  |
| | +--ro speed? yang:gauge64 | I |  -  |
| | +--ro statistics | I |  -  |
| | | +--ro discontinuity-time yang:date-and-time | I |  -  |
| | | +--ro in-octets? yang:counter64 | I |  -  |
| | | +--ro in-unicast-pkts? yang:counter64 | I |  -  |
| | | +--ro in-broadcast-pkts? yang:counter64 | I |  -  |
| | | +--ro in-multicast-pkts? yang:counter64 | I |  -  |
| | | +--ro in-discards? yang:counter32 | I |  -  |
| | | +--ro in-errors? yang:counter32 | I |  -  |
| | | +--ro in-unknown-protos? yang:counter32 | I |  -  |
| | | +--ro out-octets? yang:counter64 | I |  -  |
| | | +--ro out-unicast-pkts? yang:counter64 | I |  -  |
| | | +--ro out-broadcast-pkts? yang:counter64 | I |  -  |
| | | +--ro out-multicast-pkts? yang:counter64 | I |  -  |
| | | +--ro out-discards? yang:counter32 | I |  -  |
| | | +--ro out-errors? yang:counter32 | I |  -  |
| | +--rw ip:ipv4! | I |  -  |
| | | +--rw ip:enabled? boolean | I |  -  |
| | | +--rw ip:forwarding? boolean | I |  -  |
| | | +--rw ip:mtu? uint16 | I |  -  |
| | | +--rw ip:address\* [ip] | I |  -  |
| | | | +--rw ip:ip inet:ipv4-address-no-zone | I |  -  |
| | | | +--rw (ip:subnet) | I |  -  |
| | | | | +--:(ip:prefix-length) | I |  -  |
| | | | | | +--rw ip:prefix-length? uint8 | I |  -  |
| | | | | +--:(ip:netmask) | I |  -  |
| | | | | +--rw ip:netmask? yang:dotted-quad {ipv4-non-contiguous-netmasks}? | I |  -  |
| | | | +--ro ip:origin? ip-address-origin | I |  -  |
| | | +--rw ip:neighbor\* [ip] | I |  -  |
| | | +--rw ip:ip inet:ipv4-address-no-zone | I |  -  |
| | | +--rw ip:link-layer-address yang:phys-address | I |  -  |
| | | +--ro ip:origin? neighbor-origin | I |  -  |
| | +--rw ip:ipv6! | I |  -  |
| | +--rw ip:enabled? boolean | I |  -  |
| | +--rw ip:forwarding? boolean | I |  -  |
| | +--rw ip:mtu? uint32 | I |  -  |
| | +--rw ip:address\* [ip] | I |  -  |
| | | +--rw ip:ip inet:ipv6-address-no-zone | I |  -  |
| | | +--rw ip:prefix-length uint8 | I |  -  |
| | | +--ro ip:origin? ip-address-origin | I |  -  |
| | | +--ro ip:status? enumeration | I |  -  |
| | +--rw ip:neighbor\* [ip] | I |  -  |
| | | +--rw ip:ip inet:ipv6-address-no-zone | I |  -  |
| | | +--rw ip:link-layer-address yang:phys-address | I |  -  |
| | | +--ro ip:origin? neighbor-origin | I |  -  |
| | | +--ro ip:is-router? empty | I |  -  |
| | | +--ro ip:state? enumeration | I |  -  |
| | +--rw ip:dup-addr-detect-transmits? uint32 | I |  -  |
| | +--rw ip:autoconf | I |  -  |
| | +--rw ip:create-global-addresses? boolean | I |  -  |
| | +--rw ip:create-temporary-addresses? boolean {ipv6-privacy-autoconf}? | I |  -  |
| | +--rw ip:temporary-valid-lifetime? uint32 {ipv6-privacy-autoconf}? | I |  -  |
| | +--rw ip:temporary-preferred-lifetime? uint32 {ipv6-privacy-autoconf}? | I |  -  |
| x--ro interfaces-state | I |  -  |
| x--ro interface\* [name] | I |  -  |
| x--ro name string | I |  -  |
| x--ro type identityref | I |  -  |
| x--ro admin-status enumeration {if-mib}? | I |  -  |
| x--ro oper-status enumeration | I |  -  |
| x--ro last-change? yang:date-and-time | I |  -  |
| x--ro if-index int32 {if-mib}? | I |  -  |
| x--ro phys-address? yang:phys-address | I |  -  |
| x--ro higher-layer-if\* interface-state-ref | I |  -  |
| x--ro lower-layer-if\* interface-state-ref | I |  -  |
| x--ro speed? yang:gauge64 | I |  -  |
| x--ro statistics | I |  -  |
| | x--ro discontinuity-time yang:date-and-time | I |  -  |
| | x--ro in-octets? yang:counter64 | I |  -  |
| | x--ro in-unicast-pkts? yang:counter64 | I |  -  |
| | x--ro in-broadcast-pkts? yang:counter64 | I |  -  |
| | x--ro in-multicast-pkts? yang:counter64 | I |  -  |
| | x--ro in-discards? yang:counter32 | I |  -  |
| | x--ro in-errors? yang:counter32 | I |  -  |
| | x--ro in-unknown-protos? yang:counter32 | I |  -  |
| | x--ro out-octets? yang:counter64 | I |  -  |
| | x--ro out-unicast-pkts? yang:counter64 | I |  -  |
| | x--ro out-broadcast-pkts? yang:counter64 | I |  -  |
| | x--ro out-multicast-pkts? yang:counter64 | I |  -  |
| | x--ro out-discards? yang:counter32 | I |  -  |
| | x--ro out-errors? yang:counter32 | I |  -  |
| x--ro ip:ipv4! | I |  -  |
| | x--ro ip:forwarding? boolean | I |  -  |
| | x--ro ip:mtu? uint16 | I |  -  |
| | x--ro ip:address\* [ip] | I |  -  |
| | | x--ro ip:ip inet:ipv4-address-no-zone | I |  -  |
| | | x--ro (ip:subnet)? | I |  -  |
| | | | +--:(ip:prefix-length) | I |  -  |
| | | | | x--ro ip:prefix-length? uint8 | I |  -  |
| | | | +--:(ip:netmask) | I |  -  |
| | | | x--ro ip:netmask? yang:dotted-quad {ipv4-non-contiguous-netmasks}? | I |  -  |
| | | x--ro ip:origin? ip-address-origin | I |  -  |
| | x--ro ip:neighbor\* [ip] | I |  -  |
| | x--ro ip:ip inet:ipv4-address-no-zone | I |  -  |
| | x--ro ip:link-layer-address? yang:phys-address | I |  -  |
| | x--ro ip:origin? neighbor-origin | I |  -  |
| x--ro ip:ipv6! | I |  -  |
| x--ro ip:forwarding? boolean | I |  -  |
| x--ro ip:mtu? uint32 | I |  -  |
| x--ro ip:address\* [ip] | I |  -  |
| | x--ro ip:ip inet:ipv6-address-no-zone | I |  -  |
| | x--ro ip:prefix-length uint8 | I |  -  |
| | x--ro ip:origin? ip-address-origin | I |  -  |
| | x--ro ip:status? enumeration | I |  -  |
| x--ro ip:neighbor\* [ip] | I |  -  |
| x--ro ip:ip inet:ipv6-address-no-zone | I |  -  |
| x--ro ip:link-layer-address? yang:phys-address | I |  -  |
| x--ro ip:origin? neighbor-origin | I |  -  |
| x--ro ip:is-router? empty | I |  -  |
| x--ro ip:state? enumeration | I |  -  |
|  -  |  -  |  -  |
| module: ietf-yang-library |  -  |  -  |
| +--ro modules-state | N |  -  |
| +--ro module-set-id string | N |  -  |
| +--ro module\* [name revision] | N |  -  |
| +--ro name yang:yang-identifier | N |  -  |
| +--ro revision union | N |  -  |
| +--ro schema? inet:uri | N |  -  |
| +--ro namespace inet:uri | N |  -  |
| +--ro feature\* yang:yang-identifier | N |  -  |
| +--ro deviation\* [name revision] | N |  -  |
| | +--ro name yang:yang-identifier | N |  -  |
| | +--ro revision union | N |  -  |
| +--ro conformance-type enumeration | N |  -  |
| +--ro submodule\* [name revision] | N |  -  |
| +--ro name yang:yang-identifier | N |  -  |
| +--ro revision union | N |  -  |
| +--ro schema? inet:uri | N |  -  |
|  -  |  -  |  -  |
| notifications: |  -  |  -  |
| +---n yang-library-change |  -  |  -  |
| +--ro module-set-id -> /modules-state/module-set-id | A |  -  |
|  -  |  -  |  -  |
|  -  |  -  |  -  |
| module: ietf-netconf-monitoring |  -  |  -  |
| +--ro netconf-state |  -  |  -  |
| +--ro capabilities | N |  -  |
| | +--ro capability\* inet:uri | N |  -  |
| +--ro datastores | N |  -  |
| | +--ro datastore\* [name] | N |  -  |
| | +--ro name netconf-datastore-type | N |  -  |
| | +--ro locks! | N |  -  |
| | +--ro (lock-type)? | N |  -  |
| | +--:(global-lock) | N |  -  |
| | | +--ro global-lock | N |  -  |
| | | +--ro locked-by-session uint32 | N |  -  |
| | | +--ro locked-time yang:date-and-time | N |  -  |
| | +--:(partial-lock) | N |  -  |
| | +--ro partial-lock\* [lock-id] | N |  -  |
| | +--ro lock-id uint32 | N |  -  |
| | +--ro locked-by-session uint32 | N |  -  |
| | +--ro locked-time yang:date-and-time | N |  -  |
| | +--ro select\* yang:xpath1.0 | N |  -  |
| | +--ro locked-node\* instance-identifier | N |  -  |
| +--ro schemas | N |  -  |
| | +--ro schema\* [identifier version format] | N |  -  |
| | +--ro identifier string | N |  -  |
| | +--ro version string | N |  -  |
| | +--ro format identityref | N |  -  |
| | +--ro namespace inet:uri | N |  -  |
| | +--ro location\* union | N |  -  |
| +--ro sessions | N |  -  |
| | +--ro session\* [session-id] | N |  -  |
| | +--ro session-id uint32 | N |  -  |
| | +--ro transport identityref | N |  -  |
| | +--ro username string | N |  -  |
| | +--ro source-host? inet:host | N |  -  |
| | +--ro login-time yang:date-and-time | N |  -  |
| | +--ro in-rpcs? yang:zero-based-counter32 | N |  -  |
| | +--ro in-bad-rpcs? yang:zero-based-counter32 | N |  -  |
| | +--ro out-rpc-errors? yang:zero-based-counter32 | N |  -  |
| | +--ro out-notifications? yang:zero-based-counter32 | N |  -  |
| +--ro statistics | N |  -  |
| +--ro netconf-start-time? yang:date-and-time | N |  -  |
| +--ro in-bad-hellos? yang:zero-based-counter32 | N |  -  |
| +--ro in-sessions? yang:zero-based-counter32 | N |  -  |
| +--ro dropped-sessions? yang:zero-based-counter32 | N |  -  |
| +--ro in-rpcs? yang:zero-based-counter32 | N |  -  |
| +--ro in-bad-rpcs? yang:zero-based-counter32 | N |  -  |
| +--ro out-rpc-errors? yang:zero-based-counter32 | N |  -  |
| +--ro out-notifications? yang:zero-based-counter32 | N |  -  |
|  -  |  -  |  -  |
| rpcs: |  -  |  -  |
| +---x get-schema | I |  -  |
| +---w input | I |  -  |
| | +---w identifier string | I |  -  |
| | +---w version? string | I |  -  |
| | +---w format? identityref | I |  -  |
| +--ro output | N |  -  |
| +--ro data? | N |  -  |
|  -  |  -  |  -  |
| module: ietf-ip |  -  |  -  |
| augment /if:interfaces/if:interface: |  -  |  -  |
| +--rw ipv4! |  -  |  -  |
| | +--rw enabled?   boolean | A |  -  |
| | +--rw forwarding?  boolean | A |  -  |
| | +--rw mtu?     uint16 | A |  -  |
| | +--rw address\* [ip] | A |  -  |
| | | +--rw ip           inet:ipv4-address-no-zone | A |  -  |
| | | +--rw (subnet) | A |  -  |
| | | | +--:(prefix-length) | A |  -  |
| | | | | +--rw prefix-length?  uint8 | A |  -  |
| | | | +--:(netmask) | A |  -  |
| | | |   +--rw netmask?     yang:dotted-quad {ipv4-non-contiguous-netmasks}? | A |  -  |
| | | +--ro origin?        ip-address-origin | A |  -  |
| | +--rw neighbor\* [ip] | A |  -  |
| |   +--rw ip          inet:ipv4-address-no-zone | A |  -  |
| |   +--rw link-layer-address  yang:phys-address | A |  -  |
| |   +--ro origin?        neighbor-origin | A |  -  |
| +--rw ipv6! | A |  -  |
| +--rw enabled?           boolean | A |  -  |
| +--rw forwarding?         boolean | A |  -  |
| +--rw mtu?             uint32 | A |  -  |
| +--rw address\* [ip] | A |  -  |
| | +--rw ip        inet:ipv6-address-no-zone | A |  -  |
| | +--rw prefix-length  uint8 | A |  -  |
| | +--ro origin?     ip-address-origin | A |  -  |
| | +--ro status?     enumeration | A |  -  |
| +--rw neighbor\* [ip] | A |  -  |
| | +--rw ip          inet:ipv6-address-no-zone | A |  -  |
| | +--rw link-layer-address  yang:phys-address | A |  -  |
| | +--ro origin?        neighbor-origin | A |  -  |
| | +--ro is-router?      empty | N |  -  |
| | +--ro state?        enumeration | A |  -  |
| +--rw dup-addr-detect-transmits?  uint32 | A |  -  |
| +--rw autoconf | A |  -  |
| +--rw create-global-addresses?    boolean | A |  -  |
| +--rw create-temporary-addresses?   boolean {ipv6-privacy-autoconf}? | A |  -  |
| +--rw temporary-valid-lifetime?    uint32 {ipv6-privacy-autoconf}? | A |  -  |
| +--rw temporary-preferred-lifetime?  uint32 {ipv6-privacy-autoconf}? | A |  -  |
| augment /if:interfaces-state/if:interface: |  -  |  -  |
| x--ro ipv4! | N |  -  |
| | x--ro forwarding?  boolean | N |  -  |
| | x--ro mtu?     uint16 | N |  -  |
| | x--ro address\* [ip] | N |  -  |
| | | x--ro ip           inet:ipv4-address-no-zone | N |  -  |
| | | x--ro (subnet)? | N |  -  |
| | | | +--:(prefix-length) | N |  -  |
| | | | | x--ro prefix-length?  uint8 | N |  -  |
| | | | +--:(netmask) | N |  -  |
| | | |   x--ro netmask?     yang:dotted-quad {ipv4-non-contiguous-netmasks}? | N |  -  |
| | | x--ro origin?        ip-address-origin | N |  -  |
| | x--ro neighbor\* [ip] | N |  -  |
| |   x--ro ip          inet:ipv4-address-no-zone | N |  -  |
| |   x--ro link-layer-address?  yang:phys-address | N |  -  |
| |   x--ro origin?        neighbor-origin | N |  -  |
| x--ro ipv6! | N |  -  |
| x--ro forwarding?  boolean | N |  -  |
| x--ro mtu?     uint32 | N |  -  |
| x--ro address\* [ip] | N |  -  |
| | x--ro ip        inet:ipv6-address-no-zone | N |  -  |
| | x--ro prefix-length  uint8 | N |  -  |
| | x--ro origin?     ip-address-origin | N |  -  |
| | x--ro status?     enumeration | N |  -  |
| x--ro neighbor\* [ip] | N |  -  |
| x--ro ip          inet:ipv6-address-no-zone | N |  -  |
| x--ro link-layer-address?  yang:phys-address | N |  -  |
| x--ro origin?        neighbor-origin | N |  -  |
| x--ro is-router?      empty | N |  -  |
| x--ro state?        enumeration | N |  -  |
|  -  |  -  |  -  |
| module: ietf-netconf-acm |  -  |  -  |
| +--rw nacm |  -  |  -  |
| +--rw enable-nacm?       boolean | I |  -  |
| +--rw read-default?       action-type | I |  -  |
| +--rw write-default?      action-type | I |  -  |
| +--rw exec-default?       action-type | I |  -  |
| +--rw enable-external-groups?  boolean | I |  -  |
| +--ro denied-operations     yang:zero-based-counter32 | N |  -  |
| +--ro denied-data-writes    yang:zero-based-counter32 | N |  -  |
| +--ro denied-notifications   yang:zero-based-counter32 | N |  -  |
| +--rw groups | A |  -  |
| | +--rw group\* [name] | A |  -  |
| |   +--rw name     group-name-type | A |  -  |
| |   +--rw user-name\*  user-name-type | A |  -  |
| +--rw rule-list\* [name] | A |  -  |
| +--rw name   string | A |  -  |
| +--rw group\*  union | A |  -  |
| +--rw rule\* [name] | A |  -  |
| +--rw name            string | A |  -  |
| +--rw module-name?        union | A |  -  |
| +--rw (rule-type)? | A |  -  |
| | +--:(protocol-operation) | A |  -  |
| | | +--rw rpc-name?      union | A |  -  |
| | +--:(notification) | A |  -  |
| | | +--rw notification-name?  union | A |  -  |
| | +--:(data-node) | A |  -  |
| |   +--rw path         node-instance-identifier | A |  -  |
| +--rw access-operations?     union | A |  -  |
| +--rw action           action-type | A |  -  |
| +--rw comment?          string | A |  -  |

</div>

## System
<div class="table-wrapper" markdown="block">

| Unnamed: 0 | Category | Note |
| --- | --- | --- |
| module: o-ran-supervision |  -  |  -  |
| +--rw supervision |  -  |  -  |
| +--rw cu-plane-monitoring! | A |  -  |
| +--rw configured-cu-monitoring-interval? uint8 | A |  -  |
|  -  |  -  |  -  |
| rpcs: | - | The objective of the rpc is not configured but for supervision, so define as a new parameters into aggregation model like below at the next version (not as mount).
module: o-ran-aggregation-base
 +--rw aggregated-o-ru
 +--rw aggregation\* [ru-instance]
 +--rw ru-instance -> /aggregated-o-ru/recovered-ru-instance-ids/ru-instance-id
 +--rw or-agg-supervision
 +--rw cu-plane-monitoring!
 | +--rw configured-cu-monitoring-interval? uint8
 +--rw supervision-watchdog-reset
 +--rw supervision-notification-interval? uint16
 +--rw guard-timer-overhead? Uint16
 |
| +---x supervision-watchdog-reset | - |  -  |
| +---w input | - |  -  |
| | +---w supervision-notification-interval? uint16 | - |  -  |
| | +---w guard-timer-overhead? Uint16 | - |  -  |
| +--ro output | N |  -  |
| +--ro next-update-at? yang:date-and-time | N |  -  |
| +--ro error-message? string | N |  -  |
|  -  |  -  |  -  |
| notifications: |  -  |  -  |
| +---n supervision-notification | A |  -  |
|  -  |  -  |  -  |
|  -  |  -  |  -  |
| module: o-ran-usermgmt |  -  |  -  |
| +--rw users | A |  -  |
| +--rw user\* [name] | A |  -  |
| +--rw name nacm:user-name-type | A |  -  |
| +--rw account-type? enumeration | A |  -  |
| +--rw password? password-type | A |  -  |
| +--rw enabled? boolean | A |  -  |
|  -  |  -  |  -  |
| rpcs: |  -  |  -  |
| +---x chg-password | A |  -  |
| +---w input | A |  -  |
| | +---w currentPassword password-type | A |  -  |
| | +---w newPassword password-type | A |  -  |
| | +---w newPasswordConfirm password-type | A |  -  |
| +--ro output | A |  -  |
| +--ro status enumeration | A |  -  |
| +--ro status-message? string | A |  -  |
|  -  |  -  |  -  |
|  -  |  -  |  -  |
| module: o-ran-hardware |  -  |  -  |
| augment /hw:hardware/hw:component: |  -  |  -  |
| +--ro label-content | A |  -  |
| | +--ro model-name? boolean | A |  -  |
| | +--ro serial-number? boolean | A |  -  |
| +--ro product-code string | A |  -  |
| +--rw energy-saving-enabled? boolean {ENERGYSAVING}? | A |  -  |
| +--ro dying-gasp-support? boolean | A |  -  |
| augment /hw:hardware/hw:component: |  -  |  -  |
| +--rw o-ran-name -> /hw:hardware/component/name | A |  -  |
| augment /hw:hardware/hw:component/hw:state: |  -  |  -  |
| +--ro power-state? energysaving-state {ENERGYSAVING}? | A |  -  |
| +--ro availability-state? availability-type | A |  -  |
| augment /hw:hardware-state-oper-enabled: |  -  |  -  |
| +--ro availability-state? -> /hw:hardware/component/state/o-ran-hw:availability-state | A |  -  |
| augment /hw:hardware-state-oper-disabled: |  -  |  -  |
| +--ro availability-state? -> /hw:hardware/component/state/o-ran-hw:availability-state | A |  -  |
|  -  |  -  |  -  |
|  -  |  -  |  -  |
| module: o-ran-fan |  -  |  -  |
| +--ro fan-tray | A |  -  |
| +--ro fan-state\* [name] | A |  -  |
| +--ro name string | A |  -  |
| +--ro fan-location? uint8 | A |  -  |
| +--ro present-and-operating boolean | A |  -  |
| +--ro vendor-code? uint8 | A |  -  |
| +--ro fan-speed? percent | A |  -  |
| +--ro target-speed? uint16 | A |  -  |
|  -  |  -  |  -  |
|  -  |  -  |  -  |
| module: o-ran-fm |  -  | Specified in fault management chapter |
| +--ro active-alarm-list |  -  |  -  |
| +--ro active-alarms\* [] |  -  |  -  |
| +--ro fault-id uint16 |  -  |  -  |
| +--ro fault-source string |  -  |  -  |
| +--ro affected-objects\* [] |  -  |  -  |
| | +--ro name string |  -  |  -  |
| +--ro fault-severity enumeration |  -  |  -  |
| +--ro is-cleared boolean |  -  |  -  |
| +--ro fault-text? string |  -  |  -  |
| +--ro event-time yang:date-and-time |  -  |  -  |
|  -  |  -  |  -  |
| notifications: |  -  |  -  |
| +---n alarm-notif |  -  |  -  |
| +--ro fault-id uint16 |  -  |  -  |
| +--ro fault-source string |  -  |  -  |
| +--ro affected-objects\* [] |  -  |  -  |
| | +--ro name string |  -  |  -  |
| +--ro fault-severity enumeration |  -  |  -  |
| +--ro is-cleared boolean |  -  |  -  |
| +--ro fault-text? string |  -  |  -  |
| +--ro event-time yang:date-and-time |  -  |  -  |

</div>

## Operations
<div class="table-wrapper" markdown="block">

| Unnamed: 0 | Category | Note |
| --- | --- | --- |
| module: o-ran-operations |  -  |  -  |
| +--rw operational-info |  -  |  -  |
| +--ro declarations |  -  |  -  |
| | +--ro ru-instance-id? string | M | /me3gpp:ManagedElement/gnbdu3gpp:GNBDUFunction/gnbdu3gpp:id |
| | +--ro supported-mplane-version? version | A |  -  |
| | +--ro supported-cusplane-version? version | A |  -  |
| | +--ro supported-header-mechanism\* [protocol] | A |  -  |
| | +--ro protocol enumeration | A |  -  |
| | +--ro ecpri-concatenation-support? boolean | A |  -  |
| | +--ro protocol-version? version | A |  -  |
| +--ro operational-state |  -  | 3GPP"operationalState" is not mapped since "restart-cause" and "restart-datetime" is not exist |
| | +--ro restart-cause? enumeration | A |  -  |
| | +--ro restart-datetime? yang:date-and-time | A |  -  |
| +--rw clock |  -  |  -  |
| | +--rw timezone-name? timezone-name | A |  -  |
| | +--rw timezone-utc-offset? int16 | A |  -  |
| +--rw re-call-home-no-ssh-timer? uint16 | A |  -  |
|  -  |  -  |  -  |
| rpcs: |  -  |  -  |
| +---x reset | A |  -  |
|  -  |  -  |  -  |
|  -  |  -  |  -  |
| module: o-ran-file-management |  -  | Specified in file management chapter |
|  -  |  -  |  -  |
| rpcs: |  -  |  -  |
| +---x file-upload |  -  |  -  |
| | +---w input |  -  |  -  |
| | | +---w local-logical-file-path string |  -  |  -  |
| | | +---w remote-file-path string |  -  |  -  |
| | | +---w (credentials)? |  -  |  -  |
| | | +--:(password) |  -  |  -  |
| | | | +---w password! |  -  |  -  |
| | | | | +---w password string |  -  |  -  |
| | | | +---w server |  -  |  -  |
| | | | +---w keys\* [algorithm] |  -  |  -  |
| | | +--:(certificate) |  -  |  -  |
| | | +---w certificate! |  -  |  -  |
| | +--ro output |  -  |  -  |
| | +--ro status? enumeration |  -  |  -  |
| | +--ro reject-reason? string |  -  |  -  |
| +---x retrieve-file-list |  -  |  -  |
| | +---w input |  -  |  -  |
| | | +---w logical-path string |  -  |  -  |
| | | +---w file-name-filter? string |  -  |  -  |
| | +--ro output |  -  |  -  |
| | +--ro status? enumeration |  -  |  -  |
| | +--ro reject-reason? string |  -  |  -  |
| | +--ro file-list\* string |  -  |  -  |
| +---x file-download |  -  |  -  |
| +---w input |  -  |  -  |
| | +---w local-logical-file-path string |  -  |  -  |
| | +---w remote-file-path string |  -  |  -  |
| | +---w (credentials)? |  -  |  -  |
| | +--:(password) |  -  |  -  |
| | | +---w password! |  -  |  -  |
| | | | +---w password string |  -  |  -  |
| | | +---w server |  -  |  -  |
| | | +---w keys\* [algorithm] |  -  |  -  |
| | +--:(certificate) |  -  |  -  |
| | +---w certificate! |  -  |  -  |
| +--ro output |  -  |  -  |
| +--ro status? enumeration |  -  |  -  |
| +--ro reject-reason? string |  -  |  -  |
|  -  |  -  |  -  |
| notifications: |  -  |  -  |
| +---n file-upload-notification |  -  |  -  |
| | +--ro local-logical-file-path string |  -  |  -  |
| | +--ro remote-file-path string |  -  |  -  |
| | +--ro status? enumeration |  -  |  -  |
| | +--ro reject-reason? string |  -  |  -  |
| +---n file-download-event |  -  |  -  |
| +--ro local-logical-file-path string |  -  |  -  |
| +--ro remote-file-path string |  -  |  -  |
| +--ro status? enumeration |  -  |  -  |
| +--ro reject-reason? string |  -  |  -  |
|  -  |  -  |  -  |
|  -  |  -  |  -  |
| module: o-ran-software-management |  -  | Specified in software management chapter |
| +--ro software-inventory |  -  |  -  |
| +--ro software-slot\* [name] |  -  |  -  |
| +--ro name string |  -  |  -  |
| +--ro status enumeration |  -  |  -  |
| +--ro active? boolean |  -  |  -  |
| +--ro running? boolean |  -  |  -  |
| +--ro access? enumeration |  -  |  -  |
| +--ro product-code? -> /hw:hardware/component/o-ran-hw:product-code |  -  |  -  |
| +--ro vendor-code? string |  -  |  -  |
| +--ro build-id? string |  -  |  -  |
| +--ro build-name? string |  -  |  -  |
| +--ro build-version? string |  -  |  -  |
| +--ro files\* [name] |  -  |  -  |
| +--ro name string |  -  |  -  |
| +--ro version? string |  -  |  -  |
| +--ro local-path string |  -  |  -  |
| +--ro integrity? enumeration |  -  |  -  |
|  -  |  -  |  -  |
| rpcs: |  -  |  -  |
| +---x software-download |  -  |  -  |
| | +---w input |  -  |  -  |
| | | +---w remote-file-path inet:uri |  -  |  -  |
| | | +---w (credentials)? |  -  |  -  |
| | | +--:(password) |  -  |  -  |
| | | | +---w password! |  -  |  -  |
| | | | | +---w password string |  -  |  -  |
| | | | +---w server |  -  |  -  |
| | | | +---w keys\* [algorithm] |  -  |  -  |
| | | +--:(certificate) |  -  |  -  |
| | | +---w certificate! |  -  |  -  |
| | +--ro output |  -  |  -  |
| | +--ro status enumeration |  -  |  -  |
| | +--ro error-message? string |  -  |  -  |
| | +--ro notification-timeout? int32 |  -  |  -  |
| +---x software-install |  -  |  -  |
| | +---w input |  -  |  -  |
| | | +---w slot-name -> /software-inventory/software-slot/name |  -  |  -  |
| | | +---w file-names\* string |  -  |  -  |
| | +--ro output |  -  |  -  |
| | +--ro status enumeration |  -  |  -  |
| | +--ro error-message? string |  -  |  -  |
| +---x software-activate |  -  |  -  |
| +---w input |  -  |  -  |
| | +---w slot-name -> /software-inventory/software-slot/name |  -  |  -  |
| +--ro output |  -  |  -  |
| +--ro status enumeration |  -  |  -  |
| +--ro error-message? string |  -  |  -  |
| +--ro notification-timeout? int32 |  -  |  -  |
|  -  |  -  |  -  |
| notifications: |  -  |  -  |
| +---n download-event |  -  |  -  |
| | +--ro file-name string |  -  |  -  |
| | +--ro status? enumeration |  -  |  -  |
| | +--ro error-message? string |  -  |  -  |
| +---n install-event |  -  |  -  |
| | +--ro slot-name? -> /software-inventory/software-slot/name |  -  |  -  |
| | +--ro status? enumeration |  -  |  -  |
| | +--ro error-message? string |  -  |  -  |
| +---n activation-event |  -  |  -  |
| +--ro slot-name? -> /software-inventory/software-slot/name |  -  |  -  |
| +--ro status? enumeration |  -  |  -  |
| +--ro return-code? uint8 |  -  |  -  |
| +--ro error-message? string |  -  |  -  |
|  -  |  -  |  -  |
|  -  |  -  |  -  |
| module: o-ran-lbm |  -  |  -  |
| +--rw md-data-definitions | A |  -  |
| +--rw maintenance-domain\* [id] | A |  -  |
| +--rw id string | A |  -  |
| +--rw name? string | A |  -  |
| +--rw md-level? md-level-type | A |  -  |
| +--rw maintenance-association\* [id] | A |  -  |
| +--rw id string | A |  -  |
| +--rw name? string | A |  -  |
| +--rw component-list\* [component-id] | A |  -  |
| +--rw component-id uint32 | A |  -  |
| +--rw name? string | A |  -  |
| +--rw vid\* -> /if:interfaces/interface/o-ran-int:vlan-id | A |  -  |
| +--rw remote-meps\* mep-id-type | A |  -  |
| +--rw maintenance-association-end-point\* [mep-identifier] | A |  -  |
| +--rw mep-identifier mep-id-type | A |  -  |
| +--rw interface -> /if:interfaces/interface/name | A |  -  |
| +--rw primary-vid -> /if:interfaces/interface/o-ran-int:vlan-id | A |  -  |
| +--rw administrative-state boolean | A |  -  |
| +--ro mac-address? -> /if:interfaces/interface/o-ran-int:mac-address | A |  -  |
| +--ro loopback | A |  -  |
| +--ro replies-transmitted yang:counter32 | A |  -  |
|  -  |  -  |  -  |
|  -  |  -  |  -  |
| module: o-ran-udp-echo | A |  -  |
| +--rw udp-echo {o-ran-int:UDPIP-BASED-CU-PLANE}? +--rw enable-udp-echo? boolean | A |  -  |
| +--rw dscp-config? enumeration | A |  -  |
| +--ro echo-replies-transmitted? uint32 | A |  -  |
|  -  |  -  |  -  |
|  -  |  -  |  -  |
| module: o-ran-ecpri-delay | A |  -  |
| +--rw ecpri-delay-message | A |  -  |
| +--ro ru-compensation | A |  -  |
| | +--ro tcv2? uint32 | A |  -  |
| | +--ro tcv1? uint32 | A |  -  |
| +--rw enable-message5? boolean | A |  -  |
| +--rw message5-sessions | A |  -  |
| +--rw session-parameters\* [session-id] | A |  -  |
| +--rw session-id uint32 | A |  -  |
| +--rw processing-element-name? -> /element:processing-elements/ru-elements/name | A |  -  |
| +--ro flow-state | A |  -  |
| +--ro responses-transmitted? uint32 | A |  -  |
| +--ro requests-transmitted? uint32 | A |  -  |
| +--ro followups-transmitted? uint32 | A |  -  |
|  -  | A |  -  |
|  -  |  -  |  -  |
| module: o-ran-performance-management |  -  | Sepcified in Performance Management Chapter |
| +--rw performance-measurement-objects |  -  |  -  |
| +--ro measurement-capabilitites |  -  |  -  |
| | +--ro transceiver-objects\* [measurement-object] |  -  |  -  |
| | | +--ro measurement-object -> /performance-measurement-objects/transceiver-measurement-objects/measurement-object |  -  |  -  |
| | +--ro rx-window-objects\* [measurement-object] |  -  |  -  |
| | | +--ro measurement-object -> /performance-measurement-objects/rx-window-measurement-objects/measurement-object |  -  |  -  |
| | +--ro tx-stats-objects\* [measurement-object] |  -  |  -  |
| | | +--ro measurement-object -> /performance-measurement-objects/tx-measurement-objects/measurement-object |  -  |  -  |
| | +--ro epe-stats-objects\* [measurement-object] |  -  |  -  |
| | +--ro measurement-object -> /performance-measurement-objects/epe-measurement-objects/measurement-object |  -  |  -  |
| | +--ro component-class\* identityref |  -  |  -  |
| +--rw enable-SFTP-upload? boolean |  -  |  -  |
| +--rw enable-random-file-upload? boolean |  -  |  -  |
| +--rw remote-SFTP-uploads\* [remote-SFTP-upload-path] |  -  |  -  |
| | +--rw remote-SFTP-upload-path inet:uri |  -  |  -  |
| +--rw transceiver-measurement-interval? uint16 |  -  |  -  |
| +--rw rx-window-measurement-interval? uint16 |  -  |  -  |
| +--rw epe-measurement-interval? uint16 |  -  |  -  |
| +--rw tx-measurement-interval? uint16 |  -  |  -  |
| +--rw notification-interval? uint16 |  -  |  -  |
| +--rw file-upload-interval? uint16 |  -  |  -  |
| +--ro max-bin-count uint16 |  -  |  -  |
| +--rw transceiver-measurement-objects\* [measurement-object] |  -  |  -  |
| | +--rw measurement-object enumeration |  -  |  -  |
| | +--rw active? boolean |  -  |  -  |
| | +--rw report-info\* enumeration |  -  |  -  |
| | +--rw object-unit enumeration |  -  |  -  |
| | +--rw function? enumeration |  -  |  -  |
| | +--rw bin-count? uint16 |  -  |  -  |
| | +--rw lower-bound? decimal64 |  -  |  -  |
| | +--rw upper-bound? decimal64 |  -  |  -  |
| | +--ro transceiver-measurement-result\* [object-unit-id] |  -  |  -  |
| | +--ro object-unit-id -> /if:interfaces/interface/o-ran-int:port-reference/port-number |  -  |  -  |
| | +--ro min |  -  |  -  |
| | | +--ro value? decimal64 |  -  |  -  |
| | | +--ro time? yang-types:date-and-time |  -  |  -  |
| | +--ro max |  -  |  -  |
| | | +--ro value? decimal64 |  -  |  -  |
| | | +--ro time? yang-types:date-and-time |  -  |  -  |
| | +--ro first |  -  |  -  |
| | | +--ro value? decimal64 |  -  |  -  |
| | | +--ro time? yang-types:date-and-time |  -  |  -  |
| | +--ro latest |  -  |  -  |
| | | +--ro value? decimal64 |  -  |  -  |
| | | +--ro time? yang-types:date-and-time |  -  |  -  |
| | +--ro frequeny-table\* uint32 |  -  |  -  |
| +--rw rx-window-measurement-objects\* [measurement-object] |  -  |  -  |
| | +--rw measurement-object enumeration |  -  |  -  |
| | +--rw active? boolean |  -  |  -  |
| | +--rw object-unit? enumeration |  -  |  -  |
| | +--rw report-info? enumeration |  -  |  -  |
| | +--ro (object-unit-id)? |  -  |  -  |
| | +--:(RU) |  -  |  -  |
| | | +--ro name? -> /hw:hardware/component/name |  -  |  -  |
| | | +--ro count uint64 |  -  |  -  |
| | +--:(TRANSPORT) |  -  |  -  |
| | | +--ro tr-measured-result\* [] |  -  |  -  |
| | | +--ro name? -> /o-ran-elements:processing-elements/ru-elements/name |  -  |  -  |
| | | +--ro count uint64 |  -  |  -  |
| | +--:(EAXC\_ID) |  -  |  -  |
| | +--ro eaxc-measured-result\* [] |  -  |  -  |
| | +--ro eaxc-id? uint16 |  -  |  -  |
| | +--ro count uint64 |  -  |  -  |
| | +--ro transport-name? -> /o-ran-elements:processing-elements/ru-elements/name |  -  |  -  |
| +--rw tx-measurement-objects\* [measurement-object] |  -  |  -  |
| | +--rw measurement-object enumeration |  -  |  -  |
| | +--rw active? boolean |  -  |  -  |
| | +--rw object-unit? enumeration |  -  |  -  |
| | +--rw report-info? enumeration |  -  |  -  |
| | +--ro (object-unit-id)? |  -  |  -  |
| | +--:(RU) |  -  |  -  |
| | | +--ro name? -> /hw:hardware/component/name |  -  |  -  |
| | | +--ro count uint64 |  -  |  -  |
| | +--:(TRANSPORT) |  -  |  -  |
| | | +--ro tr-measured-result\* [] |  -  |  -  |
| | | +--ro name? -> /o-ran-elements:processing-elements/ru-elements/name |  -  |  -  |
| | | +--ro count uint64 |  -  |  -  |
| | +--:(EAXC\_ID) |  -  |  -  |
| | +--ro eaxc-measured-result\* [] |  -  |  -  |
| | +--ro eaxc-id? uint16 |  -  |  -  |
| | +--ro count uint64 |  -  |  -  |
| | +--ro transport-name? -> /o-ran-elements:processing-elements/ru-elements/name |  -  |  -  |
| +--rw epe-measurement-objects\* [measurement-object] |  -  |  -  |
| +--rw measurement-object enumeration |  -  |  -  |
| +--rw active? boolean |  -  |  -  |
| +--rw report-info\* enumeration |  -  |  -  |
| +--ro epe-measurement-result\* [object-unit-id] |  -  |  -  |
| +--ro object-unit-id -> /hw:hardware/component/class |  -  |  -  |
| +--ro min? decimal64 |  -  |  -  |
| +--ro max? decimal64 |  -  |  -  |
| +--ro average? decimal64 |  -  |  -  |
|  -  |  -  |  -  |
| notifications: |  -  |  -  |
| +---n measurement-result-stats |  -  |  -  |
| +--ro transceiver-stats\* [measurement-object] |  -  |  -  |
| | +--ro measurement-object -> /performance-measurement-objects/transceiver-measurement-objects/measurement-object |  -  |  -  |
| | +--ro start-time? yang-types:date-and-time |  -  |  -  |
| | +--ro end-time? yang-types:date-and-time |  -  |  -  |
| | +--ro transceiver-measurement-result\* [object-unit-id] |  -  |  -  |
| | +--ro object-unit-id -> /if:interfaces/interface/o-ran-int:port-reference/port-number |  -  |  -  |
| | +--ro min |  -  |  -  |
| | | +--ro value? decimal64 |  -  |  -  |
| | | +--ro time? yang-types:date-and-time |  -  |  -  |
| | +--ro max |  -  |  -  |
| | | +--ro value? decimal64 |  -  |  -  |
| | | +--ro time? yang-types:date-and-time |  -  |  -  |
| | +--ro first |  -  |  -  |
| | | +--ro value? decimal64 |  -  |  -  |
| | | +--ro time? yang-types:date-and-time |  -  |  -  |
| | +--ro latest |  -  |  -  |
| | | +--ro value? decimal64 |  -  |  -  |
| | | +--ro time? yang-types:date-and-time |  -  |  -  |
| | +--ro frequeny-table\* uint32 |  -  |  -  |
| +--ro rx-window-stats\* [measurement-object] |  -  |  -  |
| | +--ro measurement-object -> /performance-measurement-objects/rx-window-measurement-objects/measurement-object |  -  |  -  |
| | +--ro start-time? yang-types:date-and-time |  -  |  -  |
| | +--ro end-time? yang-types:date-and-time |  -  |  -  |
| | +--ro (object-unit-id)? |  -  |  -  |
| | +--:(RU) |  -  |  -  |
| | | +--ro name? -> /hw:hardware/component/name |  -  |  -  |
| | | +--ro count uint64 |  -  |  -  |
| | +--:(TRANSPORT) |  -  |  -  |
| | | +--ro tr-measured-result\* [] |  -  |  -  |
| | | +--ro name? -> /o-ran-elements:processing-elements/ru-elements/name |  -  |  -  |
| | | +--ro count uint64 |  -  |  -  |
| | +--:(EAXC\_ID) |  -  |  -  |
| | +--ro eaxc-measured-result\* [] |  -  |  -  |
| | +--ro eaxc-id? uint16 |  -  |  -  |
| | +--ro count uint64 |  -  |  -  |
| | +--ro transport-name? -> /o-ran-elements:processing-elements/ru-elements/name |  -  |  -  |
| +--ro tx-stats\* [measurement-object] |  -  |  -  |
| | +--ro measurement-object -> /performance-measurement-objects/tx-measurement-objects/measurement-object |  -  |  -  |
| | +--ro start-time? yang-types:date-and-time |  -  |  -  |
| | +--ro end-time? yang-types:date-and-time |  -  |  -  |
| | +--ro (object-unit-id)? |  -  |  -  |
| | +--:(RU) |  -  |  -  |
| | | +--ro name? -> /hw:hardware/component/name |  -  |  -  |
| | | +--ro count uint64 |  -  |  -  |
| | +--:(TRANSPORT) |  -  |  -  |
| | | +--ro tr-measured-result\* [] |  -  |  -  |
| | | +--ro name? -> /o-ran-elements:processing-elements/ru-elements/name |  -  |  -  |
| | | +--ro count uint64 |  -  |  -  |
| | +--:(EAXC\_ID) |  -  |  -  |
| | +--ro eaxc-measured-result\* [] |  -  |  -  |
| | +--ro eaxc-id? uint16 |  -  |  -  |
| | +--ro count uint64 |  -  |  -  |
| | +--ro transport-name? -> /o-ran-elements:processing-elements/ru-elements/name |  -  |  -  |
| +--ro epe-stats |  -  |  -  |
| +--ro start-time? yang-types:date-and-time |  -  |  -  |
| +--ro end-time? yang-types:date-and-time |  -  |  -  |
| +--ro epe-measurement-result\* [object-unit-id] |  -  |  -  |
| +--ro object-unit-id -> /hw:hardware/component/class |  -  |  -  |
| +--ro min? decimal64 |  -  |  -  |
| +--ro max? decimal64 |  -  |  -  |
| +--ro average? decimal64 |  -  |  -  |
|  -  |  -  |  -  |
|  -  |  -  |  -  |
| module: o-ran-uplane-conf |  -  |  -  |
| +--rw user-plane-configuration |  -  |  -  |
| +--rw low-level-tx-links\* [name] | A |  -  |
| | +--rw name string | A |  -  |
| | +--rw processing-element -> /o-ran-pe:processing-elements/ru-elements/name | A |  -  |
| | +--rw tx-array-carrier -> /user-plane-configuration/tx-array-carriers/name | A |  -  |
| | +--rw low-level-tx-endpoint -> /user-plane-configuration/low-level-tx-endpoints/name | A |  -  |
| +--rw low-level-rx-links\* [name] | A |  -  |
| | +--rw name string | A |  -  |
| | +--rw processing-element -> /o-ran-pe:processing-elements/ru-elements/name | A |  -  |
| | +--rw rx-array-carrier -> /user-plane-configuration/rx-array-carriers/name | A |  -  |
| | +--rw low-level-rx-endpoint -> /user-plane-configuration/low-level-rx-endpoints/name | A |  -  |
| | +--rw user-plane-uplink-marking? -> /o-ran-pe:processing-elements/enhanced-uplane-mapping/uplane-mapping/up-marking-name | A |  -  |
| +--ro endpoint-types\* [id] | N |  -  |
| | +--ro id uint16 | N |  -  |
| | +--ro supported-section-types\* [section-type] | N |  -  |
| | | +--ro section-type uint8 | N |  -  |
| | | +--ro supported-section-extensions\* uint8 | N |  -  |
| | +--ro supported-frame-structures\* uint8 | N |  -  |
| | +--ro managed-delay-support? enumeration | N |  -  |
| | +--ro multiple-numerology-supported? boolean | N |  -  |
| | +--ro max-numerology-change-duration? uint16 | N |  -  |
| | +--ro max-control-sections-per-data-section? uint8 | N |  -  |
| | +--ro max-sections-per-symbol? uint16 | N |  -  |
| | +--ro max-sections-per-slot? uint16 | N |  -  |
| | +--ro max-remasks-per-section-id? uint8 | N |  -  |
| | +--ro max-beams-per-symbol? uint16 | N |  -  |
| | +--ro max-beams-per-slot? uint16 | N |  -  |
| | +--ro max-prb-per-symbol? uint16 | N |  -  |
| | +--ro prb-capacity-allocation-granularity\* uint16 | N |  -  |
| | +--ro max-numerologies-per-symbol? uint16 | N |  -  |
| +--ro endpoint-capacity-sharing-groups\* [id] | N |  -  |
| | +--ro id uint16 | N |  -  |
| | +--ro max-control-sections-per-data-section? uint8 | N |  -  |
| | +--ro max-sections-per-symbol? uint16 | N |  -  |
| | +--ro max-sections-per-slot? uint16 | N |  -  |
| | +--ro max-remasks-per-section-id? uint8 | N |  -  |
| | +--ro max-beams-per-symbol? uint16 | N |  -  |
| | +--ro max-beams-per-slot? uint16 | N |  -  |
| | +--ro max-prb-per-symbol? uint16 | N |  -  |
| | +--ro max-numerologies-per-symbol? uint16 | N |  -  |
| | +--ro max-endpoints? uint16 | N |  -  |
| | +--ro max-managed-delay-endpoints? uint16 | N |  -  |
| | +--ro max-non-managed-delay-endpoints? uint16 | N |  -  |
| +--ro endpoint-prach-group\* [id] | N |  -  |
| | +--ro id uint16 | N |  -  |
| | +--ro supported-prach-preamble-formats\* prach-preamble-format | N |  -  |
| +--ro static-low-level-tx-endpoints\* [name] | N |  -  |
| | +--ro name string | N |  -  |
| | +--ro restricted-interfaces\* -> /if:interfaces/interface/name | N |  -  |
| | +--ro array -> /user-plane-configuration/tx-arrays/name | N |  -  |
| | +--ro endpoint-type? -> ../../endpoint-types/id | N |  -  |
| | +--ro capacity-sharing-groups\* -> ../../endpoint-capacity-sharing-groups/id | N |  -  |
| +--ro static-low-level-rx-endpoints\* [name] | N |  -  |
| | +--ro name string | N |  -  |
| | +--ro restricted-interfaces\* -> /if:interfaces/interface/name | N |  -  |
| | +--ro array -> /user-plane-configuration/rx-arrays/name | N |  -  |
| | +--ro endpoint-type? -> ../../endpoint-types/id | N |  -  |
| | +--ro capacity-sharing-groups\* -> ../../endpoint-capacity-sharing-groups/id | N |  -  |
| | +--ro prach-group? -> ../../endpoint-prach-group/id | N |  -  |
| +--rw low-level-tx-endpoints\* [name] |  -  |  -  |
| | +--rw name -> /user-plane-configuration/static-low-level-tx-endpoints/name | I |  -  |
| | +--rw compression! |  -  |  -  |
| | | +--rw iq-bitwidth? uint8 | A |  -  |
| | | +--rw compression-type enumeration | A |  -  |
| | | x--rw bitwidth? uint8 | A |  -  |
| | | +--rw (compression-format)? | A |  -  |
| | | +--:(no-compresison) | A |  -  |
| | | +--:(block-floating-point) | A |  -  |
| | | | +--rw exponent? uint8 | A |  -  |
| | | +--:(block-scaling) | A |  -  |
| | | | +--rw block-scalar? uint8 | A |  -  |
| | | +--:(u-law) | A |  -  |
| | | | +--rw comp-bit-width? uint8 | A |  -  |
| | | | +--rw comp-shift? uint8 | A |  -  |
| | | +--:(beam-space-compression) | A |  -  |
| | | | +--rw active-beam-space-coeficient-mask\* uint8 | A |  -  |
| | | | +--rw block-scaler? uint8 | A |  -  |
| | | +--:(modulation-compression) | A |  -  |
| | | +--rw csf? uint8 | A |  -  |
| | | +--rw mod-comp-scaler? uint16 | A |  -  |
| | +--rw frame-structure? uint8 | A |  -  |
| | +--rw cp-type? enumeration | A |  -  |
| | +--rw cp-length uint16 | A |  -  |
| | +--rw cp-length-other uint16 | A |  -  |
| | +--rw offset-to-absolute-frequency-center int32 | A |  -  |
| | +--rw number-of-prb-per-scs\* [scs] | A |  -  |
| | | +--rw scs mcap:scs-config-type | A |  -  |
| | | +--rw number-of-prb uint16 | A |  -  |
| | +--rw e-axcid | I |  -  |
| | +--rw o-du-port-bitmask uint16 | I |  -  |
| | +--rw band-sector-bitmask uint16 | I |  -  |
| | +--rw ccid-bitmask uint16 | I |  -  |
| | +--rw ru-port-bitmask uint16 | I |  -  |
| | +--rw eaxc-id uint16 | I |  -  |
| +--rw low-level-rx-endpoints\* [name] |  -  |  -  |
| | +--rw name -> /user-plane-configuration/static-low-level-rx-endpoints/name |  -  |  -  |
| | +--rw compression | A |  -  |
| | | +--rw iq-bitwidth? uint8 | A |  -  |
| | | +--rw compression-type enumeration | A |  -  |
| | | x--rw bitwidth? uint8 | A |  -  |
| | | +--rw (compression-format)? | A |  -  |
| | | +--:(no-compresison) | A |  -  |
| | | +--:(block-floating-point) | A |  -  |
| | | | +--rw exponent? uint8 | A |  -  |
| | | +--:(block-scaling) | A |  -  |
| | | | +--rw block-scalar? uint8 | A |  -  |
| | | +--:(u-law) | A |  -  |
| | | | +--rw comp-bit-width? uint8 | A |  -  |
| | | | +--rw comp-shift? uint8 | A |  -  |
| | | +--:(beam-space-compression) | A |  -  |
| | | | +--rw active-beam-space-coeficient-mask\* uint8 | A |  -  |
| | | | +--rw block-scaler? uint8 | A |  -  |
| | | +--:(modulation-compression) | A |  -  |
| | | +--rw csf? uint8 | A |  -  |
| | | +--rw mod-comp-scaler? uint16 | A |  -  |
| | +--rw frame-structure? uint8 | A |  -  |
| | +--rw cp-type? enumeration | M | "cyclicPrefix" in BWP |
| | +--rw cp-length uint16 | A |  -  |
| | +--rw cp-length-other uint16 | A |  -  |
| | +--rw offset-to-absolute-frequency-center int32 | A |  -  |
| | +--rw number-of-prb-per-scs\* [scs] | A |  -  |
| | | +--rw scs mcap:scs-config-type | A |  -  |
| | | +--rw number-of-prb uint16 | A |  -  |
| | +--rw ul-fft-sampling-offsets\* [scs] | I |  -  |
| | | +--rw scs mcap:scs-config-type | I |  -  |
| | | +--rw ul-fft-sampling-offset? uint16 | I |  -  |
| | +--rw e-axcid | A |  -  |
| | | +--rw o-du-port-bitmask uint16 | A |  -  |
| | | +--rw band-sector-bitmask uint16 | A |  -  |
| | | +--rw ccid-bitmask uint16 | A |  -  |
| | | +--rw ru-port-bitmask uint16 | A |  -  |
| | | +--rw eaxc-id uint16 | A |  -  |
| | +--rw non-time-managed-delay-enabled? boolean | A |  -  |
| +--rw tx-array-carriers\* [name] |  -  |  -  |
| | +--rw name string | I | O-DU create distinguished name autonomouslly and link with "id" of NRSectorCarrier |
| | +--rw absolute-frequency-center uint32 | M | Set by "arfcnDL" in NRCell DU |
| | +--rw center-of-channel-bandwidth uint64 | A |  -  |
| | +--rw channel-bandwidth uint64 | M | Set by "bSChannelBwDL" in NRCell DU |
| | +--rw active? enumeration | M | See Figure.Y Cell activation procedure |
| | +--ro state enumeration | M | "ManagedNFService/operationalState " in NRSectorCarrier
DISABLED->DISABLED
BUSY->DISABLED
READY->ENABLED |
| | +--rw type? enumeration | A |  -  |
| | +--ro duplex-scheme? enumeration | A |  -  |
| | +--rw rw-duplex-scheme? -> /user-plane-configuration/tx-array-carriers[name=current()/../name]/duplex-scheme | A |  -  |
| | +--rw rw-type? -> /user-plane-configuration/tx-array-carriers[name=current()/../name]/type | A |  -  |
| | +--rw band-number? -> /mcap:module-capability/band-capabilities/band-number {mcap:LAA}? |  -  |  -  |
| | +--rw lte-tdd-frame | I |  -  |
| | | +--rw subframe-assignment enumeration | I |  -  |
| | | +--rw special-subframe-pattern enumeration | I |  -  |
| | +--rw laa-carrier-configuration {mcap:LAA}? | I |  -  |
| | | +--rw ed-threshold-pdsch? int8 | I |  -  |
| | | +--rw ed-threshold-drs? int8 | I |  -  |
| | | +--rw tx-antenna-ports? uint8 | I |  -  |
| | | +--rw transmission-power-for-drs? int8 | I |  -  |
| | | +--rw dmtc-period? enumeration | I |  -  |
| | | +--rw dmtc-offset? uint8 | I |  -  |
| | | +--rw lbt-timer? uint16 | I |  -  |
| | | +--rw max-cw-usage-counter\* [priority] | I |  -  |
| | | +--rw priority enumeration | I |  -  |
| | | +--rw counter-value? uint8 | I |  -  |
| | +--rw gain decimal64 | M | "configuredMaxTxPower " in NRSectorCarrier |
| | +--rw downlink-radio-frame-offset uint32 | A |  -  |
| | +--rw downlink-sfn-offset int16 | A |  -  |
| +--rw rx-array-carriers\* [name] |  -  |  -  |
| | +--rw name string | I | O-DU create distinguished name autonomouslly and link with "id" of NRSectorCarrier |
| | +--rw absolute-frequency-center uint32 | M | Set by "arfcnUL" in NRCell DU |
| | +--rw center-of-channel-bandwidth uint64 | A |  -  |
| | +--rw channel-bandwidth uint64 | M | Set by "bSChannelBwUL" in NRCell DU |
| | +--rw active? enumeration | M | See Figure.Y Cell activation procedure |
| | +--ro state enumeration | M | NRCellDU/operationalState
DISABLED->DISABLED
BUSY->DISABLED
READY->ENABLED |
| | +--rw type? enumeration | A |  -  |
| | +--ro duplex-scheme? enumeration | A |  -  |
| | +--rw downlink-radio-frame-offset uint32 | A |  -  |
| | +--rw downlink-sfn-offset int16 | A |  -  |
| | +--rw gain-correction decimal64 | A |  -  |
| | +--rw n-ta-offset uint32 | A |  -  |
| +--ro tx-arrays\* [name] |  -  |  -  |
| | +--ro name string | N |  -  |
| | +--ro number-of-rows uint16 | N |  -  |
| | +--ro number-of-columns uint16 | N |  -  |
| | +--ro number-of-array-layers uint8 | N |  -  |
| | +--ro horizontal-spacing? decimal64 | N |  -  |
| | +--ro vertical-spacing? decimal64 | N |  -  |
| | +--ro normal-vector-direction | N |  -  |
| | | +--ro azimuth-angle? decimal64 | N |  -  |
| | | +--ro zenith-angle? decimal64 | N |  -  |
| | +--ro leftmost-bottom-array-element-position | N |  -  |
| | | +--ro x? decimal64 | N |  -  |
| | | +--ro y? decimal64 | N |  -  |
| | | +--ro z? decimal64 | N |  -  |
| | +--ro polarisations\* [p] | N |  -  |
| | | +--ro p uint8 | N |  -  |
| | | +--ro polarisation polarisation\_type | N |  -  |
| | +--ro band-number -> /mcap:module-capability/band-capabilities/band-number | N |  -  |
| | +--ro max-gain decimal64 | A |  -  |
| | +--ro independent-power-budget boolean | N |  -  |
| | +--ro capabilities\* [] | N |  -  |
| | +--ro max-supported-frequency-dl? uint64 | N |  -  |
| | +--ro min-supported-frequency-dl? uint64 | N |  -  |
| | +--ro max-supported-bandwidth-dl? uint64 | N |  -  |
| | +--ro max-num-carriers-dl? uint32 | N |  -  |
| | +--ro max-carrier-bandwidth-dl? uint64 | N |  -  |
| | +--ro min-carrier-bandwidth-dl? uint64 | N |  -  |
| | +--ro supported-technology-dl\* enumeration | N |  -  |
| +--ro rx-arrays\* [name] | N |  -  |
| | +--ro name string | N |  -  |
| | +--ro number-of-rows uint16 | N |  -  |
| | +--ro number-of-columns uint16 | N |  -  |
| | +--ro number-of-array-layers uint8 | N |  -  |
| | +--ro horizontal-spacing? decimal64 | N |  -  |
| | +--ro vertical-spacing? decimal64 | N |  -  |
| | +--ro normal-vector-direction | N |  -  |
| | | +--ro azimuth-angle? decimal64 | N |  -  |
| | | +--ro zenith-angle? decimal64 | N |  -  |
| | +--ro leftmost-bottom-array-element-position | N |  -  |
| | | +--ro x? decimal64 | N |  -  |
| | | +--ro y? decimal64 | N |  -  |
| | | +--ro z? decimal64 | N |  -  |
| | +--ro polarisations\* [p] | N |  -  |
| | | +--ro p uint8 | N |  -  |
| | | +--ro polarisation polarisation\_type | N |  -  |
| | +--ro band-number -> /mcap:module-capability/band-capabilities/band-number | N |  -  |
| | +--ro gain-correction-range | A |  -  |
| | | +--ro max decimal64 | A |  -  |
| | | +--ro min decimal64 | A |  -  |
| | +--ro capabilities\* [] | N |  -  |
| | +--ro max-supported-frequency-ul? uint64 | N |  -  |
| | +--ro min-supported-frequency-ul? uint64 | N |  -  |
| | +--ro max-supported-bandwidth-ul? uint64 | N |  -  |
| | +--ro max-num-carriers-ul? uint32 | N |  -  |
| | +--ro max-carrier-bandwidth-ul? uint64 | N |  -  |
| | +--ro min-carrier-bandwidth-ul? uint64 | N |  -  |
| | +--ro supported-technology-ul\* enumeration | N |  -  |
| +--ro relations\* [entity] | N |  -  |
| | +--ro entity uint16 | N |  -  |
| | +--ro array1 | N |  -  |
| | | +--ro (antenna-type)? | N |  -  |
| | | +--:(tx) | N |  -  |
| | | | +--ro tx-array-name? -> /user-plane-configuration/tx-arrays/name | N |  -  |
| | | +--:(rx) | N |  -  |
| | | +--ro rx-array-name? -> /user-plane-configuration/rx-arrays/name | N |  -  |
| | +--ro array2 | N |  -  |
| | | +--ro (antenna-type)? | N |  -  |
| | | +--:(tx) | N |  -  |
| | | | +--ro tx-array-name? -> /user-plane-configuration/tx-arrays/name | N |  -  |
| | | +--:(rx) | N |  -  |
| | | +--ro rx-array-name? -> /user-plane-configuration/rx-arrays/name | N |  -  |
| | +--ro types\* [relation-type] | N |  -  |
| | +--ro relation-type enumeration | N |  -  |
| | +--ro pairs\* [element-array1] | N |  -  |
| | +--ro element-array1 uint16 | N |  -  |
| | +--ro element-array2? uint16 | N |  -  |
| +--rw eaxc-id-group-configuration {mcap:EAXC-ID-GROUP-SUPPORTED}? | I |  -  |
| | +--rw max-num-tx-eaxc-id-groups? -> /mcap:module-capability/ru-capabilities/eaxcid-grouping-capabilities/max-num-tx-eaxc-id-groups | I |  -  |
| | +--rw max-num-tx-eaxc-ids-per-group? -> /mcap:module-capability/ru-capabilities/eaxcid-grouping-capabilities/max-num-tx-eaxc-ids-per-group | I |  -  |
| | +--rw max-num-rx-eaxc-id-groups? -> /mcap:module-capability/ru-capabilities/eaxcid-grouping-capabilities/max-num-rx-eaxc-id-groups | I |  -  |
| | +--rw max-num-rx-eaxc-ids-per-group? -> /mcap:module-capability/ru-capabilities/eaxcid-grouping-capabilities/max-num-rx-eaxc-ids-per-group | I |  -  |
| | +--rw tx-eaxc-id-group\* [representative-tx-eaxc-id] | I |  -  |
| | | +--rw representative-tx-eaxc-id uint16 | I |  -  |
| | | +--rw member-tx-eaxc-id\* uint16 | I |  -  |
| | +--rw rx-eaxc-id-group\* [representative-rx-eaxc-id] | I |  -  |
| | +--rw representative-rx-eaxc-id uint16 | I |  -  |
| | +--rw member-rx-eaxc-id\* uint16 | I |  -  |
| +--rw general-config | I |  -  |
| +--rw regularization-factor-se-configured? boolean | I |  -  |
| +--rw little-endian-byte-order? boolean | I |  -  |
|  -  |  -  |  -  |
| notifications: |  -  |  -  |
| +---n tx-array-carriers-state-change | A |  -  |
| | +--ro tx-array-carriers\* [name] | A |  -  |
| | +--ro name -> /user-plane-configuration/tx-array-carriers/name | A |  -  |
| | +--ro state? -> /user-plane-configuration/tx-array-carriers/state | A |  -  |
| +---n rx-array-carriers-state-change | A |  -  |
| +--ro rx-array-carriers\* [name] | A |  -  |
| +--ro name -> /user-plane-configuration/rx-array-carriers/name | A |  -  |
| +--ro state? -> /user-plane-configuration/rx-array-carriers/state | A |  -  |
|  -  |  -  |  -  |
|  -  |  -  |  -  |
| module: o-ran-ald |  -  |  -  |
| rpcs: |  -  | Skip to v2 since ald is specified in v2 |
| +---x ald-communication |  -  |  -  |
| +---w input |  -  |  -  |
| | +---w port-id -> /ap:ald-ports-io/ald-port/port-id |  -  |  -  |
| | +---w ald-req-msg? binary |  -  |  -  |
| +--ro output |  -  |  -  |
| +--ro port-id -> /ap:ald-ports-io/ald-port/port-id |  -  |  -  |
| +--ro status enumeration |  -  |  -  |
| +--ro error-message? string |  -  |  -  |
| +--ro ald-resp-msg? binary |  -  |  -  |
| +--ro frames-with-wrong-crc? uint32 |  -  |  -  |
| +--ro frames-without-stop-flag? uint32 |  -  |  -  |
| +--ro number-of-received-octets? uint32 |  -  |  -  |
|  -  |  -  |  -  |
|  -  |  -  |  -  |
| module: o-ran-troubleshooting |  -  | Specified in file management chapter |
|  -  |  -  |  -  |
| rpcs: |  -  |  -  |
| +---x start-troubleshooting-logs |  -  |  -  |
| | +--ro output |  -  |  -  |
| | +--ro status? enumeration |  -  |  -  |
| | +--ro failure-reason? string |  -  |  -  |
| +---x stop-troubleshooting-logs |  -  |  -  |
| +--ro output |  -  |  -  |
| +--ro status? enumeration |  -  |  -  |
| +--ro failure-reason? string |  -  |  -  |
|  -  |  -  |  -  |
| notifications: |  -  |  -  |
| +---n troubleshooting-log-generated |  -  |  -  |
| +--ro log-file-name\* string |  -  |  -  |
|  -  |  -  |  -  |
|  -  |  -  |  -  |
| rpcs: | I |  -  |
| rpcs: | I |  -  |
| +---x start-measurements {mcap:LAA}? | I |  -  |
| +---w input | I |  -  |
| | +---w band-config\* [band-number] | I |  -  |
| | | +---w band-number band-num | I |  -  |
| | | +---w channel-center-frequency\* uint16 | I |  -  |
| | +---w duration-per-channel? uint16 | I |  -  |
| | +---w maximum-response-time? uint16 | I |  -  |
| +--ro output | N |  -  |
| +--ro band-config\* [band-number] | N |  -  |
| +--ro band-number band-num | N |  -  |
| +--ro carrier-center-frequency\* uint16 | N |  -  |
| +--ro status? enumeration | N |  -  |
| +--ro error-message? string | N |  -  |
|  -  |  -  |  -  |
| notifications: | A |  -  |
| +---n measurement-result {mcap:LAA}? | A |  -  |
| +--ro band-result\* [band-number] | A |  -  |
| +--ro band-number band-num | A |  -  |
| +--ro measurement-success? boolean | A |  -  |
| +--ro failure-message? enumeration | A |  -  |
| +--ro channel-result\* [measured-channel] | A |  -  |
| +--ro measured-channel uint16 | A |  -  |
| +--ro occupancy-ratio? uint8 | A |  -  |
| +--ro average-rssi? int8 | A |  -  |
|  -  |  -  |  -  |
|  -  |  -  |  -  |
| module: o-ran-trace |  -  | Trace chapter will specify |
|  -  |  -  |  -  |
| rpcs: |  -  |  -  |
| +---x start-trace-logs |  -  |  -  |
| | +--ro output |  -  |  -  |
| | +--ro status? enumeration |  -  |  -  |
| | +--ro failure-reason? string |  -  |  -  |
| +---x stop-trace-logs |  -  |  -  |
| +--ro output |  -  |  -  |
| +--ro status? enumeration |  -  |  -  |
| +--ro failure-reason? string |  -  |  -  |
|  -  |  -  |  -  |
| notifications: |  -  |  -  |
| +---n trace-log-generated |  -  |  -  |
| +--ro log-file-name\* string |  -  |  -  |
| +--ro is-notification-last? Boolean |  -  |  -  |

</div>

## Interfaces
<div class="table-wrapper" markdown="block">

| Unnamed: 0 | Category | Note |
| --- | --- | --- |
| module: o-ran-interfaces |  -  |  -  |
| augment /if:interfaces/if:interface: |  -  |  -  |
| +--rw l2-mtu? uint16 | A |  -  |
| +--rw alias-macs\* yang:mac-address {ALIASMAC-BASED-CU-PLANE}? | A |  -  |
| +--rw vlan-tagging? boolean | A |  -  |
| +--rw class-of-service | A |  -  |
| +--rw u-plane-marking? pcp | A |  -  |
| +--rw c-plane-marking? pcp | A |  -  |
| +--rw m-plane-marking? pcp | A |  -  |
| +--rw s-plane-marking? pcp | A |  -  |
| +--rw other-marking? pcp | A |  -  |
| +--rw enhanced-uplane-markings\* [up-marking-name] | A |  -  |
| +--rw up-marking-name string | A |  -  |
| +--rw enhanced-marking? pcp | A |  -  |
| augment /if:interfaces/if:interface: |  -  |  -  |
| +--rw base-interface? if:interface-ref | A |  -  |
| +--rw vlan-id? uint16 | A |  -  |
| augment /if:interfaces/if:interface: |  -  |  -  |
| +--rw mac-address? yang:mac-address | I |  -  |
| +--rw port-reference | I |  -  |
| | +--rw port-name? -> /hw:hardware/component/name | I |  -  |
| | +--rw port-number? uint8 | I |  -  |
| +--ro last-cleared? yang:date-and-time | I |  -  |
| augment /if:interfaces/if:interface/ip:ipv4: |  -  |  -  |
| +--rw diffserv-markings {UDPIP-BASED-CU-PLANE}? |  -  |  -  |
| +--rw u-plane-marking? inet:dscp | A |  -  |
| +--rw c-plane-marking? inet:dscp | A |  -  |
| +--rw s-plane-marking? inet:dscp | A |  -  |
| +--rw other-marking? inet:dscp | A |  -  |
| +--rw enhanced-uplane-markings\* [up-marking-name] | A |  -  |
| +--rw up-marking-name string | A |  -  |
| +--rw enhanced-marking? inet:dscp | A |  -  |
| augment /if:interfaces/if:interface/ip:ipv6: |  -  |  -  |
| +--rw diffserv-markings {UDPIP-BASED-CU-PLANE}? |  -  |  -  |
| +--rw u-plane-marking? inet:dscp | A |  -  |
| +--rw c-plane-marking? inet:dscp | A |  -  |
| +--rw s-plane-marking? inet:dscp | A |  -  |
| +--rw other-marking? inet:dscp | A |  -  |
| +--rw enhanced-uplane-markings\* [up-marking-name] | A |  -  |
| +--rw up-marking-name string | A |  -  |
| +--rw enhanced-marking? inet:dscp | A |  -  |
| augment /if:interfaces/if:interface/ip:ipv4: |  -  |  -  |
| +--rw m-plane-marking? inet:dscp | A |  -  |
| augment /if:interfaces/if:interface/ip:ipv6: |  -  |  -  |
| +--rw m-plane-marking? inet:dscp | A |  -  |
|  -  |  -  |  -  |
| rpcs: |  -  |  -  |
| +---x reset-interface-counters | A |  -  |
|  -  |  -  |  -  |
|  -  |  -  |  -  |
| module: o-ran-processing-element |  -  |  -  |
| +--rw processing-elements |  -  |  -  |
| +--ro maximum-number-of-transport-flows? uint16 | N |  -  |
| +--rw transport-session-type? enumeration | A |  -  |
| +--rw enhanced-uplane-mapping! | A |  -  |
| | +--rw uplane-mapping\* [up-marking-name] | A |  -  |
| | +--rw up-marking-name string | A |  -  |
| | +--rw (up-markings)? | A |  -  |
| | +--:(ethernet) | A |  -  |
| | | +--rw up-cos-name? -> /if:interfaces/interface/o-ran-int:class-of-service/enhanced-uplane-markings/up-marking-name | A |  -  |
| | +--:(ipv4) | A |  -  |
| | | +--rw upv4-dscp-name? -> /if:interfaces/interface/ip:ipv4/o-ran-int:diffserv-markings/enhanced-uplane-markings/up-marking-name | A |  -  |
| | +--:(ipv6) | A |  -  |
| | +--rw upv6-dscp-name? -> /if:interfaces/interface/ip:ipv6/o-ran-int:diffserv-markings/enhanced-uplane-markings/up-marking-name | A |  -  |
| +--rw ru-elements\* [name] |  -  |  -  |
| +--rw name string | I |  -  |
| +--rw transport-flow |  -  |  -  |
| +--rw interface-name? -> /if:interfaces/interface/name | I |  -  |
| +--rw aliasmac-flow {o-ran-int:ALIASMAC-BASED-CU-PLANE}? | I |  -  |
| | +--rw ru-aliasmac-address -> /if:interfaces/interface[if:name = current()/../../interface-name]/o-ran-int:alias-macs | I |  -  |
| | +--rw vlan-id? -> /if:interfaces/interface[if:name = current()/../../interface-name]/o-ran-int:vlan-id | I |  -  |
| | +--rw o-du-mac-address yang:mac-address | I |  -  |
| +--rw eth-flow | I |  -  |
| | +--rw ru-mac-address -> /if:interfaces/interface[if:name = current()/../../interface-name]/o-ran-int:mac-address | I |  -  |
| | +--rw vlan-id -> /if:interfaces/interface[if:name = current()/../../interface-name]/o-ran-int:vlan-id | I |  -  |
| | +--rw o-du-mac-address yang:mac-address | I |  -  |
| +--rw udpip-flow | I |  -  |
| | +--rw (address) | I |  -  |
| | | +--:(ru-ipv4-address) | I |  -  |
| | | | +--rw ru-ipv4-address? -> /if:interfaces/interface[if:name = current()/../../interface-name]/ip:ipv4/address/ip | I |  -  |
| | | +--:(ru-ipv6-address) | I |  -  |
| | | +--rw ru-ipv6-address? -> /if:interfaces/interface[if:name = current()/../../interface-name]/ip:ipv6/address/ip | I |  -  |
| | +--rw o-du-ip-address inet:ip-address | I |  -  |
| | +--rw ru-ephemeral-udp-port inet:port-number | I |  -  |
| | +--rw o-du-ephemeral-udp-port inet:port-number | I |  -  |
| | +--rw ecpri-destination-udp inet:port-number | I |  -  |
| +--rw north-eth-flow {SHARED\_CELL}? | I |  -  |
| | +--rw ru-mac-address? -> /if:interfaces/interface[if:name = current()/../../interface-name]/o-ran-int:mac-address | I |  -  |
| | +--rw vlan-id? -> /if:interfaces/interface[if:name = current()/../../interface-name]/o-ran-int:vlan-id | I |  -  |
| | +--rw north-node-mac-address? yang:mac-address | I |  -  |
| +--rw south-eth-flow {SHARED\_CELL}? | I |  -  |
| +--rw ru-mac-address? -> /if:interfaces/interface[if:name = current()/../../interface-name]/o-ran-int:mac-address | I |  -  |
| +--rw vlan-id? -> /if:interfaces/interface[if:name = current()/../../interface-name]/o-ran-int:vlan-id | I |  -  |
| +--rw south-node-mac-address? yang:mac-address | I |  -  |
|  -  |  -  |  -  |
|  -  |  -  |  -  |
| module: o-ran-transceiver |  -  |  -  |
| +--rw port-transceivers | A |  -  |
| +--rw port-transceiver-data\* [interface-name port-number] | A |  -  |
| +--rw interface-name -> /if:interfaces/interface/name | A |  -  |
| +--rw port-number -> /if:interfaces/interface[if:name = current()/../interface-name]/o-ran-int:port-reference/port-number | A |  -  |
| +--rw name? string | A |  -  |
| +--ro present boolean | A |  -  |
| +--ro vendor-id? string | A |  -  |
| +--ro vendor-part? string | A |  -  |
| +--ro vendor-rev? string | A |  -  |
| +--ro serial-no? string | A |  -  |
| +--ro SFF8472-compliance-code? enumeration | A |  -  |
| +--ro connector-type? enumeration | A |  -  |
| +--ro identifier? enumeration | A |  -  |
| +--ro nominal-bitrate? uint32 | A |  -  |
| +--ro low-bitrate-margin? uint8 | A |  -  |
| +--ro high-bitrate-margin? uint8 | A |  -  |
| +--ro rx-power-type? enumeration | A |  -  |
| +--ro rx-power? decimal64 | A |  -  |
| +--ro tx-power? decimal64 | A |  -  |
| +--ro tx-bias-current? decimal64 | A |  -  |
| +--ro voltage? decimal64 | A |  -  |
| +--ro temperature? decimal64 | A |  -  |
| +--ro additional-multi-lane-reporting\* [lane] | A |  -  |
| +--ro lane uint8 | A |  -  |
| +--ro rx-power? decimal64 | A |  -  |
| +--ro tx-bias-current? decimal64 | A |  -  |
| +--ro tx-power? decimal64 | A |  -  |
|  -  |  -  |  -  |
|  -  |  -  |  -  |
| module: o-ran-mplane-int |  -  |  -  |
| +--rw mplane-info |  -  |  -  |
| +--rw searchable-mplane-access-vlans-info |  -  |  -  |
| | +--rw searchable-access-vlans\* vlan-id | A |  -  |
| | +--rw vlan-range |  -  |  -  |
| | +--rw lowest-vlan-id? vlan-id | A |  -  |
| | +--rw highest-vlan-id? vlan-id | A |  -  |
| +--rw m-plane-interfaces |  -  |  -  |
| | +--rw m-plane-sub-interfaces\* [interface-name sub-interface] |  -  |  -  |
| | | +--rw interface-name -> /if:interfaces/interface/name | I |  -  |
| | | +--rw sub-interface -> /if:interfaces/interface[if:name = current()/../interface-name]/o-ran-int:vlan-id | I |  -  |
| | | +--ro client-info | N |  -  |
| | | +--ro mplane-ipv4-info\* [mplane-ipv4] | N |  -  |
| | | | +--ro mplane-ipv4 inet:ipv4-address | N |  -  |
| | | | +--ro port? inet:port-number | N |  -  |
| | | +--ro mplane-ipv6-info\* [mplane-ipv6] | N |  -  |
| | | | +--ro mplane-ipv6 inet:ipv6-address | N |  -  |
| | | | +--ro port? inet:port-number | N |  -  |
| | | +--ro mplane-fqdn\* inet:domain-name | N |  -  |
| | +--rw m-plane-ssh-ports |  -  |  -  |
| | +--rw call-home-ssh-port? inet:port-number | A |  -  |
| | +--rw server-ssh-port? inet:port-number | A |  -  |
| +--rw configured-client-info |  -  |  -  |
| +--rw mplane-ipv4-info\* [mplane-ipv4] |  -  |  -  |
| | +--rw mplane-ipv4 inet:ipv4-address | A |  -  |
| | +--rw port? inet:port-number | A |  -  |
| +--rw mplane-ipv6-info\* [mplane-ipv6] |  -  |  -  |
| | +--rw mplane-ipv6 inet:ipv6-address | A |  -  |
| | +--rw port? inet:port-number | A |  -  |
| +--rw mplane-fqdn\* inet:domain-name | A |  -  |
|  -  |  -  |  -  |
|  -  |  -  |  -  |
| module: o-ran-dhcp |  -  |  -  |
| +--ro dhcp |  -  |  -  |
| +--ro interfaces\* [interface] | N |  -  |
| | +--ro interface if:interface-ref | N |  -  |
| | +--ro dhcpv4 | N |  -  |
| | | +--ro client-id? string | N |  -  |
| | | +--ro dhcp-server-identifier? inet:ip-address | N |  -  |
| | | +--ro domain-name? string | N |  -  |
| | | +--ro domain-name-servers\* inet:ip-address | N |  -  |
| | | +--ro interface-mtu? uint32 | N |  -  |
| | | +--ro default-gateways\* inet:ip-address | N |  -  |
| | | +--ro netconf-clients\* [client] | N |  -  |
| | | | +--ro client netconf-client-id | N |  -  |
| | | | +--ro optional-port? inet:port-number | N |  -  |
| | | +--ro ca-ra-servers\* [servers] | N |  -  |
| | | | +--ro servers ca-ra-server-id | N |  -  |
| | | | +--ro port-number? inet:port-number | N |  -  |
| | | | +--ro ca-ra-path? string | N |  -  |
| | | | +--ro subject-name? string | N |  -  |
| | | | +--ro protocol? enumeration | N |  -  |
| | | +--ro segw\* [gateways] | N |  -  |
| | | +--ro gateways segw-id | N |  -  |
| | +--ro dhcpv6 | N |  -  |
| | +--ro dhcp-client-identifier | N |  -  |
| | +--ro dhcp-server-identifier | N |  -  |
| | +--ro domain-name? string | N |  -  |
| | +--ro domain-name-servers\* inet:ip-address | N |  -  |
| | +--ro netconf-clients\* [client] | N |  -  |
| | | +--ro client netconf-client-id | N |  -  |
| | | +--ro optional-port? inet:port-number | N |  -  |
| | +--ro ca-ra-servers\* [servers] | N |  -  |
| | | +--ro servers ca-ra-server-id | N |  -  |
| | | +--ro port-number? inet:port-number | N |  -  |
| | | +--ro ca-ra-path? string | N |  -  |
| | | +--ro subject-name? string | N |  -  |
| | | +--ro protocol? enumeration | N |  -  |
| | +--ro segw\* [gateways] | N |  -  |
| | +--ro gateways segw-id | N |  -  |
| +--ro m-plane-dhcp | N |  -  |
| x--ro private-enterprise-number? uint16 | N |  -  |
| +--ro private-enterprise-num? uint32 | N |  -  |
| +--ro vendor-class-data? String | N |  -  |
|  -  |  -  |  -  |
|  -  |  -  |  -  |
| module: o-ran-externalio |  -  |  -  |
| +--rw external-io |  -  | Skip to v2 since externalio is specified in v2 |
| +--ro input\* [name] |  -  |  -  |
| | +--ro name string |  -  |  -  |
| | +--ro port-in? uint8 |  -  |  -  |
| | +--ro line-in? boolean |  -  |  -  |
| +--ro output\* [name] |  -  |  -  |
| | +--ro name string |  -  |  -  |
| | +--ro port-out uint8 |  -  |  -  |
| +--rw output-setting\* [name] |  -  |  -  |
| +--rw name -> /external-io/output/name |  -  |  -  |
| +--rw line-out? boolean |  -  |  -  |
| notifications: |  -  |  -  |
| +---n external-input-change |  -  |  -  |
| +--ro current-input-notification |  -  |  -  |
| +--ro external-input\* [name] |  -  |  -  |
| +--ro name -> /external-io/input/name |  -  |  -  |
| +--ro io-port? -> /external-io/input/port-in |  -  |  -  |
| +--ro line-in? -> /external-io/input/line-in |  -  |  -  |
|  -  |  -  |  -  |
|  -  |  -  |  -  |
| module: o-ran-ald-port |  -  |  -  |
| +--rw ald-ports-io |  -  | Skip to v2 since ald is specified in v2 |
| +--ro over-current-supported? boolean |  -  |  -  |
| +--ro ald-port\* [name] |  -  |  -  |
| | +--ro name string |  -  |  -  |
| | +--ro port-id uint8 |  -  |  -  |
| | +--ro dc-control-support boolean |  -  |  -  |
| | +--ro dc-enabled-status? boolean |  -  |  -  |
| | +--ro supported-connector enumeration |  -  |  -  |
| +--rw ald-port-dc-control\* [name] |  -  |  -  |
| +--rw name -> /ald-ports-io/ald-port/name |  -  |  -  |
| +--rw dc-enabled? boolean |  -  |  -  |
|  -  |  -  |  -  |
| notifications: |  -  |  -  |
| +---n overcurrent-report {OVERCURRENT-SUPPORTED}? |  -  |  -  |
| | +--ro overload-condition |  -  |  -  |
| | +--ro overloaded-ports\* -> /ald-ports-io/ald-port/name |  -  |  -  |
| +---n dc-enabled-status-change |  -  |  -  |
| +--ro ald-port\* [name] |  -  |  -  |
| +--ro name -> /ald-ports-io/ald-port/name |  -  |  -  |
| +--ro dc-enabled-status? -> /ald-ports-io/ald-port/dc-enabled-status |  -  |  -  |
|  -  |  -  |  -  |
|  -  |  -  |  -  |
| module: o-ran-ethernet-forwarding |  -  |  -  |
| +--rw ethernet-forwarding-table | I |  -  |
| +--rw aging-time? uint32 | I |  -  |
| +--ro filtering-entry\* [address vlan-id] | N |  -  |
| +--ro address yang:mac-address | N |  -  |
| +--ro vlan-id uint16 | N |  -  |
| +--ro port-map\* [port-ref] | N |  -  |
| +--ro port-ref -> /if:interfaces/interface/or-if:port-reference/port-number | N |  -  |

</div>

## Sync
<div class="table-wrapper" markdown="block">

| Unnamed: 0 | Category | Note |
| --- | --- | --- |
| module: o-ran-sync |  -  | Specified in sync management chapter |
| +--rw sync |  -  |  -  |
| +--ro sync-status |  -  |  -  |
| | +--ro sync-state enumeration |  -  |  -  |
| | +--ro supported-reference-types\* [item] |  -  |  -  |
| | +--ro item enumeration |  -  |  -  |
| +--ro sync-capability |  -  |  -  |
| | +--ro sync-t-tsc enumeration |  -  |  -  |
| +--rw ptp-config |  -  |  -  |
| | +--rw domain-number? uint8 |  -  |  -  |
| | +--rw accepted-clock-classes\* [clock-classes] |  -  |  -  |
| | | +--rw clock-classes uint8 |  -  |  -  |
| | +--rw ptp-profile? enumeration |  -  |  -  |
| | +--rw g-8275-1-config |  -  |  -  |
| | | +--rw multicast-mac-address? enumeration |  -  |  -  |
| | | +--rw delay-asymmetry? int16 |  -  |  -  |
| | +--rw g-8275-2-config |  -  |  -  |
| | +--rw local-ip-port? -> /if:interfaces/interface/name |  -  |  -  |
| | +--rw master-ip-configuration\* [local-priority] |  -  |  -  |
| | | +--rw local-priority uint8 |  -  |  -  |
| | | +--rw ip-address? string |  -  |  -  |
| | +--rw log-inter-sync-period? int8 |  -  |  -  |
| | +--rw log-inter-announce-period? int8 |  -  |  -  |
| +--rw ptp-status |  -  |  -  |
| | +--rw reporting-period? uint8 |  -  |  -  |
| | +--ro lock-state? enumeration |  -  |  -  |
| | +--ro clock-class? uint8 |  -  |  -  |
| | +--ro clock-identity? string |  -  |  -  |
| | +--ro partial-timing-supported? boolean |  -  |  -  |
| | +--ro sources\* [local-port-number] |  -  |  -  |
| | +--ro local-port-number -> /if:interfaces/interface/o-ran-int:port-reference/port-number |  -  |  -  |
| | +--ro state? enumeration |  -  |  -  |
| | +--ro two-step-flag? boolean |  -  |  -  |
| | +--ro leap61? boolean |  -  |  -  |
| | +--ro leap59? boolean |  -  |  -  |
| | +--ro current-utc-offset-valid? boolean |  -  |  -  |
| | +--ro ptp-timescale? boolean |  -  |  -  |
| | +--ro time-traceable? boolean |  -  |  -  |
| | +--ro frequency-traceable? boolean |  -  |  -  |
| | +--ro source-clock-identity? string |  -  |  -  |
| | +--ro source-port-number? uint16 |  -  |  -  |
| | +--ro current-utc-offset? int16 |  -  |  -  |
| | +--ro priority1? uint8 |  -  |  -  |
| | +--ro clock-class? uint8 |  -  |  -  |
| | +--ro clock-accuracy? uint8 |  -  |  -  |
| | +--ro offset-scaled-log-variance? uint16 |  -  |  -  |
| | +--ro priority2? uint8 |  -  |  -  |
| | +--ro grandmaster-clock-identity? string |  -  |  -  |
| | +--ro steps-removed? uint16 |  -  |  -  |
| | +--ro time-source? uint8 |  -  |  -  |
| +--rw synce-config |  -  |  -  |
| | +--rw acceptance-list-of-ssm\* enumeration |  -  |  -  |
| | +--rw ssm-timeout? uint16 |  -  |  -  |
| +--rw synce-status |  -  |  -  |
| | +--rw reporting-period? uint8 |  -  |  -  |
| | +--ro lock-state? enumeration |  -  |  -  |
| | +--ro sources\* [local-port-number] |  -  |  -  |
| | +--ro local-port-number -> /if:interfaces/interface/o-ran-int:port-reference/port-number |  -  |  -  |
| | +--ro state? enumeration |  -  |  -  |
| | +--ro quality-level? uint8 |  -  |  -  |
| +--rw gnss-config {GNSS}? |  -  |  -  |
| | +--rw enable? boolean |  -  |  -  |
| | +--rw satellite-constelation-list\* enumeration |  -  |  -  |
| | +--rw polarity? enumeration |  -  |  -  |
| | +--rw cable-delay? uint16 |  -  |  -  |
| | +--rw anti-jam-enable? boolean {ANTI-JAM}? |  -  |  -  |
| +--rw gnss-status {GNSS}? |  -  |  -  |
| +--rw reporting-period? uint8 |  -  |  -  |
| +--ro name? string |  -  |  -  |
| +--ro gnss-sync-status? enumeration |  -  |  -  |
| +--ro gnss-data |  -  |  -  |
| +--ro satellites-tracked? uint8 |  -  |  -  |
| +--ro location |  -  |  -  |
| +--ro altitude? int64 |  -  |  -  |
| +--ro latitude? geographic-coordinate-degree |  -  |  -  |
| +--ro longitude? geographic-coordinate-degree |  -  |  -  |
|  -  |  -  |  -  |
| notifications: |  -  |  -  |
| +---n synchronization-state-change |  -  |  -  |
| | +--ro sync-state? -> /sync/sync-status/sync-state |  -  |  -  |
| +---n ptp-state-change |  -  |  -  |
| | +--ro ptp-state? -> /sync/ptp-status/lock-state |  -  |  -  |
| +---n synce-state-change |  -  |  -  |
| | +--ro synce-state? -> /sync/synce-status/lock-state |  -  |  -  |
| +---n gnss-state-change {GNSS}? |  -  |  -  |
| +--ro gnss-state? -> /sync/gnss-status/gnss-sync-status |  -  |  -  |

</div>

## Radio
<div class="table-wrapper" markdown="block">

| Unnamed: 0 | Category | Note |
| --- | --- | --- |
| module: o-ran-module-cap |  -  |  -  |
| +--rw module-capability | A |  -  |
| +--ro ru-capabilities | A |  -  |
| | +--ro ru-supported-category? enumeration | A |  -  |
| | x--ro number-of-ru-ports? uint8 | A |  -  |
| | +--ro number-of-ru-ports-ul? uint8 | A |  -  |
| | +--ro number-of-ru-ports-dl? uint8 | A |  -  |
| | +--ro number-of-spatial-streams? uint8 | A |  -  |
| | +--ro max-power-per-pa-antenna? decimal64 | A |  -  |
| | +--ro min-power-per-pa-antenna? decimal64 | A |  -  |
| | +--ro fronthaul-split-option? uint8 | A |  -  |
| | +--ro format-of-iq-sample | A |  -  |
| | | +--ro dynamic-compression-supported? boolean | A |  -  |
| | | +--ro realtime-variable-bit-width-supported? boolean | A |  -  |
| | | +--ro compression-method-supported\* [] | A |  -  |
| | | | +--ro iq-bitwidth? uint8 | A |  -  |
| | | | +--ro compression-type enumeration | A |  -  |
| | | | x--ro bitwidth? uint8 | A |  -  |
| | | | +--ro (compression-format)? | A |  -  |
| | | | +--:(no-compresison) | A |  -  |
| | | | +--:(block-floating-point) | A |  -  |
| | | | | +--ro exponent? uint8 | A |  -  |
| | | | +--:(block-scaling) | A |  -  |
| | | | | +--ro block-scalar? uint8 | A |  -  |
| | | | +--:(u-law) | A |  -  |
| | | | | +--ro comp-bit-width? uint8 | A |  -  |
| | | | | +--ro comp-shift? uint8 | A |  -  |
| | | | +--:(beam-space-compression) | A |  -  |
| | | | | +--ro active-beam-space-coeficient-mask\* uint8 | A |  -  |
| | | | | +--ro block-scaler? uint8 | A |  -  |
| | | | +--:(modulation-compression) | A |  -  |
| | | | +--ro csf? uint8 | A |  -  |
| | | | +--ro mod-comp-scaler? uint16 | A |  -  |
| | | +--ro variable-bit-width-per-channel-supported? boolean | A |  -  |
| | | +--ro syminc-supported? boolean | A |  -  |
| | | +--ro regularization-factor-se-supported? boolean | A |  -  |
| | | +--ro little-endian-supported? boolean | A |  -  |
| | +--ro ul-mixed-num-required-guard-rbs\* [scs-a scs-b] | A |  -  |
| | | +--ro scs-a scs-config-type | A |  -  |
| | | +--ro scs-b scs-config-type | A |  -  |
| | | +--ro number-of-guard-rbs-ul? uint8 | A |  -  |
| | +--ro dl-mixed-num-required-guard-rbs\* [scs-a scs-b] | A |  -  |
| | | +--ro scs-a scs-config-type | A |  -  |
| | | +--ro scs-b scs-config-type | A |  -  |
| | | +--ro number-of-guard-rbs-dl? uint8 | A |  -  |
| | +--ro energy-saving-by-transmission-blanks boolean | A |  -  |
| | +--ro eaxcid-grouping-capabilities {o-ran-module-cap:EAXC-ID-GROUP-SUPPORTED}? | A |  -  |
| | | +--ro max-num-tx-eaxc-id-groups? uint8 | A |  -  |
| | | +--ro max-num-tx-eaxc-ids-per-group? uint8 | A |  -  |
| | | +--ro max-num-rx-eaxc-id-groups? uint8 | A |  -  |
| | | +--ro max-num-rx-eaxc-ids-per-group? uint8 | A |  -  |
| | +--ro dynamic-transport-delay-management-supported boolean | A |  -  |
| | +--ro support-only-unique-ecpri-seqid-per-eaxc? boolean | A |  -  |
| +--ro band-capabilities\* [band-number] | A |  -  |
| | +--ro band-number uint16 | A |  -  |
| | +--ro sub-band-info {o-ran-module-cap:LAA}? | A |  -  |
| | | +--ro sub-band-frequency-ranges\* [sub-band] | A |  -  |
| | | | +--ro sub-band sub-band-string | A |  -  |
| | | | +--ro max-supported-frequency-dl? uint64 | A |  -  |
| | | | +--ro min-supported-frequency-dl? uint64 | A |  -  |
| | | +--ro number-of-laa-scarriers? uint8 | A |  -  |
| | | +--ro maximum-laa-buffer-size? uint16 | A |  -  |
| | | +--ro maximum-processing-time? uint16 | A |  -  |
| | | +--ro self-configure? boolean | A |  -  |
| | +--ro max-supported-frequency-dl? uint64 | A |  -  |
| | +--ro min-supported-frequency-dl? uint64 | A |  -  |
| | +--ro max-supported-bandwidth-dl? uint64 | A |  -  |
| | +--ro max-num-carriers-dl? uint32 | A |  -  |
| | +--ro max-carrier-bandwidth-dl? uint64 | A |  -  |
| | +--ro min-carrier-bandwidth-dl? uint64 | A |  -  |
| | +--ro supported-technology-dl\* enumeration | A |  -  |
| | +--ro max-supported-frequency-ul? uint64 | A |  -  |
| | +--ro min-supported-frequency-ul? uint64 | A |  -  |
| | +--ro max-supported-bandwidth-ul? uint64 | A |  -  |
| | +--ro max-num-carriers-ul? uint32 | A |  -  |
| | +--ro max-carrier-bandwidth-ul? uint64 | A |  -  |
| | +--ro min-carrier-bandwidth-ul? uint64 | A |  -  |
| | +--ro supported-technology-ul\* enumeration | A |  -  |
| | +--ro max-num-component-carriers? uint8 | A |  -  |
| | +--ro max-num-bands? uint16 | A |  -  |
| | +--ro max-num-sectors? uint8 | A |  -  |
| | +--ro max-power-per-antenna? decimal64 | A |  -  |
| | +--ro min-power-per-antenna? decimal64 | A |  -  |
| | +--ro codebook-configuration\_ng? uint8 | A |  -  |
| | +--ro codebook-configuration\_n1? uint8 | A |  -  |
| | +--ro codebook-configuration\_n2? uint8 | A |  -  |
| +--rw rw-sub-band-info {o-ran-module-cap:LAA}? | A |  -  |
| +--rw rw-number-of-laa-scarriers? -> /module-capability/band-capabilities/sub-band-info/number-of-laa-scarriers | A |  -  |
| +--rw rw-self-configure? -> /module-capability/band-capabilities/sub-band-info/self-configure | A |  -  |
|  -  |  -  |  -  |
|  -  |  -  |  -  |
| module: o-ran-delay-management |  -  |  -  |
| +--rw delay-management |  -  | Specified in Fronthal delay management support chapter |
| +--rw bandwidth-scs-delay-state\* [bandwidth subcarrier-spacing] |  -  |  -  |
| | +--rw bandwidth bandwidth |  -  |  -  |
| | +--rw subcarrier-spacing uint32 |  -  |  -  |
| | +--ro ru-delay-profile |  -  |  -  |
| | +--ro t2a-min-up uint32 |  -  |  -  |
| | +--ro t2a-max-up uint32 |  -  |  -  |
| | +--ro t2a-min-cp-dl uint32 |  -  |  -  |
| | +--ro t2a-max-cp-dl uint32 |  -  |  -  |
| | +--ro tcp-adv-dl uint32 |  -  |  -  |
| | +--ro ta3-min uint32 |  -  |  -  |
| | +--ro ta3-max uint32 |  -  |  -  |
| | +--ro t2a-min-cp-ul uint32 |  -  |  -  |
| | +--ro t2a-max-cp-ul uint32 |  -  |  -  |
| +--rw adaptive-delay-configuration {ADAPTIVE-RU-PROFILE}? |  -  |  -  |
| +--rw bandwidth-scs-delay-state\* [bandwidth subcarrier-spacing] |  -  |  -  |
| | +--rw bandwidth bandwidth |  -  |  -  |
| | +--rw subcarrier-spacing uint32 |  -  |  -  |
| | +--rw o-du-delay-profile |  -  |  -  |
| | +--rw t1a-max-up? uint32 |  -  |  -  |
| | +--rw tx-max? uint32 |  -  |  -  |
| | +--rw ta4-max? uint32 |  -  |  -  |
| | +--rw rx-max? uint32 |  -  |  -  |
| +--rw transport-delay |  -  |  -  |
| +--rw t12-min? uint32 |  -  |  -  |
| +--rw t12-max? uint32 |  -  |  -  |
| +--rw t34-min? uint32 |  -  |  -  |
| +--rw t34-max? uint32 |  -  |  -  |
|  -  |  -  |  -  |
|  -  |  -  |  -  |
| module: o-ran-beamforming |  -  |  -  |
| +--ro beamforming-config | N |  -  |
| x--ro per-band-config\* [band-number] | N |  -  |
| | +--ro band-number -> /mcap:module-capability/band-capabilities/band-number | N |  -  |
| | +--ro tx-array\* -> /up:user-plane-configuration/tx-arrays/name | N |  -  |
| | +--ro rx-array\* -> /up:user-plane-configuration/rx-arrays/name | N |  -  |
| | +--ro static-properties | N |  -  |
| | | +--ro rt-bf-weights-update-support? boolean | N |  -  |
| | | +--ro (beamforming-type)? | N |  -  |
| | | | +--:(frequency) | N |  -  |
| | | | | +--ro frequency-domain-beams | N |  -  |
| | | | | +--ro max-number-of-beam-ids uint16 | N |  -  |
| | | | | +--ro initial-beam-id uint16 | N |  -  |
| | | | | +--ro iq-bitwidth? uint8 | N |  -  |
| | | | | +--ro compression-type enumeration | N |  -  |
| | | | | x--ro bitwidth? uint8 | N |  -  |
| | | | | +--ro (compression-format)? | N |  -  |
| | | | | | +--:(no-compresison) | N |  -  |
| | | | | | +--:(block-floating-point) | N |  -  |
| | | | | | | +--ro exponent? uint8 | N |  -  |
| | | | | | +--:(block-scaling) | N |  -  |
| | | | | | | +--ro block-scalar? uint8 | N |  -  |
| | | | | | +--:(u-law) | N |  -  |
| | | | | | | +--ro comp-bit-width? uint8 | N |  -  |
| | | | | | | +--ro comp-shift? uint8 | N |  -  |
| | | | | | +--:(beam-space-compression) | N |  -  |
| | | | | | | +--ro active-beam-space-coeficient-mask\* uint8 | N |  -  |
| | | | | | | +--ro block-scaler? uint8 | N |  -  |
| | | | | | +--:(modulation-compression) | N |  -  |
| | | | | | +--ro csf? uint8 | N |  -  |
| | | | | | +--ro mod-comp-scaler? uint16 | N |  -  |
| | | | | +--ro additional-compression-method-supported\* [] | N |  -  |
| | | | | +--ro iq-bitwidth? uint8 | N |  -  |
| | | | | +--ro compression-type enumeration | N |  -  |
| | | | | x--ro bitwidth? uint8 | N |  -  |
| | | | | +--ro (compression-format)? | N |  -  |
| | | | | +--:(no-compresison) | N |  -  |
| | | | | +--:(block-floating-point) | N |  -  |
| | | | | | +--ro exponent? uint8 | N |  -  |
| | | | | +--:(block-scaling) | N |  -  |
| | | | | | +--ro block-scalar? uint8 | N |  -  |
| | | | | +--:(u-law) | N |  -  |
| | | | | | +--ro comp-bit-width? uint8 | N |  -  |
| | | | | | +--ro comp-shift? uint8 | N |  -  |
| | | | | +--:(beam-space-compression) | N |  -  |
| | | | | | +--ro active-beam-space-coeficient-mask\* uint8 | N |  -  |
| | | | | | +--ro block-scaler? uint8 | N |  -  |
| | | | | +--:(modulation-compression) | N |  -  |
| | | | | +--ro csf? uint8 | N |  -  |
| | | | | +--ro mod-comp-scaler? uint16 | N |  -  |
| | | | +--:(time) | N |  -  |
| | | | | +--ro time-domain-beams | N |  -  |
| | | | | +--ro max-number-of-beam-ids uint16 | N |  -  |
| | | | | +--ro initial-beam-id uint16 | N |  -  |
| | | | | +--ro frequency-granularity enumeration | N |  -  |
| | | | | +--ro time-granularity enumeration | N |  -  |
| | | | | +--ro iq-bitwidth? uint8 | N |  -  |
| | | | | +--ro compression-type enumeration | N |  -  |
| | | | | x--ro bitwidth? uint8 | N |  -  |
| | | | | +--ro (compression-format)? | N |  -  |
| | | | | | +--:(no-compresison) | N |  -  |
| | | | | | +--:(block-floating-point) | N |  -  |
| | | | | | | +--ro exponent? uint8 | N |  -  |
| | | | | | +--:(block-scaling) | N |  -  |
| | | | | | | +--ro block-scalar? uint8 | N |  -  |
| | | | | | +--:(u-law) | N |  -  |
| | | | | | | +--ro comp-bit-width? uint8 | N |  -  |
| | | | | | | +--ro comp-shift? uint8 | N |  -  |
| | | | | | +--:(beam-space-compression) | N |  -  |
| | | | | | | +--ro active-beam-space-coeficient-mask\* uint8 | N |  -  |
| | | | | | | +--ro block-scaler? uint8 | N |  -  |
| | | | | | +--:(modulation-compression) | N |  -  |
| | | | | | +--ro csf? uint8 | N |  -  |
| | | | | | +--ro mod-comp-scaler? uint16 | N |  -  |
| | | | | +--ro additional-compression-method-supported\* [] | N |  -  |
| | | | | +--ro iq-bitwidth? uint8 | N |  -  |
| | | | | +--ro compression-type enumeration | N |  -  |
| | | | | x--ro bitwidth? uint8 | N |  -  |
| | | | | +--ro (compression-format)? | N |  -  |
| | | | | +--:(no-compresison) | N |  -  |
| | | | | +--:(block-floating-point) | N |  -  |
| | | | | | +--ro exponent? uint8 | N |  -  |
| | | | | +--:(block-scaling) | N |  -  |
| | | | | | +--ro block-scalar? uint8 | N |  -  |
| | | | | +--:(u-law) | N |  -  |
| | | | | | +--ro comp-bit-width? uint8 | N |  -  |
| | | | | | +--ro comp-shift? uint8 | N |  -  |
| | | | | +--:(beam-space-compression) | N |  -  |
| | | | | | +--ro active-beam-space-coeficient-mask\* uint8 | N |  -  |
| | | | | | +--ro block-scaler? uint8 | N |  -  |
| | | | | +--:(modulation-compression) | N |  -  |
| | | | | +--ro csf? uint8 | N |  -  |
| | | | | +--ro mod-comp-scaler? uint16 | N |  -  |
| | | | +--:(hybrid) | N |  -  |
| | | | +--ro hybrid-beams | N |  -  |
| | | | +--ro max-number-of-beam-ids uint16 | N |  -  |
| | | | +--ro initial-beam-id uint16 | N |  -  |
| | | | +--ro frequency-granularity enumeration | N |  -  |
| | | | +--ro time-granularity enumeration | N |  -  |
| | | | +--ro iq-bitwidth? uint8 | N |  -  |
| | | | +--ro compression-type enumeration | N |  -  |
| | | | x--ro bitwidth? uint8 | N |  -  |
| | | | +--ro (compression-format)? | N |  -  |
| | | | | +--:(no-compresison) | N |  -  |
| | | | | +--:(block-floating-point) | N |  -  |
| | | | | | +--ro exponent? uint8 | N |  -  |
| | | | | +--:(block-scaling) | N |  -  |
| | | | | | +--ro block-scalar? uint8 | N |  -  |
| | | | | +--:(u-law) | N |  -  |
| | | | | | +--ro comp-bit-width? uint8 | N |  -  |
| | | | | | +--ro comp-shift? uint8 | N |  -  |
| | | | | +--:(beam-space-compression) | N |  -  |
| | | | | | +--ro active-beam-space-coeficient-mask\* uint8 | N |  -  |
| | | | | | +--ro block-scaler? uint8 | N |  -  |
| | | | | +--:(modulation-compression) | N |  -  |
| | | | | +--ro csf? uint8 | N |  -  |
| | | | | +--ro mod-comp-scaler? uint16 | N |  -  |
| | | | +--ro additional-compression-method-supported\* [] | N |  -  |
| | | | +--ro iq-bitwidth? uint8 | N |  -  |
| | | | +--ro compression-type enumeration | N |  -  |
| | | | x--ro bitwidth? uint8 | N |  -  |
| | | | +--ro (compression-format)? | N |  -  |
| | | | +--:(no-compresison) | N |  -  |
| | | | +--:(block-floating-point) | N |  -  |
| | | | | +--ro exponent? uint8 | N |  -  |
| | | | +--:(block-scaling) | N |  -  |
| | | | | +--ro block-scalar? uint8 | N |  -  |
| | | | +--:(u-law) | N |  -  |
| | | | | +--ro comp-bit-width? uint8 | N |  -  |
| | | | | +--ro comp-shift? uint8 | N |  -  |
| | | | +--:(beam-space-compression) | N |  -  |
| | | | | +--ro active-beam-space-coeficient-mask\* uint8 | N |  -  |
| | | | | +--ro block-scaler? uint8 | N |  -  |
| | | | +--:(modulation-compression) | N |  -  |
| | | | +--ro csf? uint8 | N |  -  |
| | | | +--ro mod-comp-scaler? uint16 | N |  -  |
| | | +--ro number-of-beams? uint16 | N |  -  |
| | +--ro beam-information | N |  -  |
| | +--ro number-of-beamforming-properties? uint16 | N |  -  |
| | +--ro beamforming-properties\* [beam-id] | N |  -  |
| | +--ro beam-id uint16 | N |  -  |
| | +--ro beamforming-property | N |  -  |
| | +--ro beam-type? enumeration | N |  -  |
| | +--ro beam-group-id? uint16 | N |  -  |
| | x--ro coarse-fine-beam-relation\* beam-reference | N |  -  |
| | x--ro neighbour-beams\* beam-reference | N |  -  |
| | +--ro coarse-fine-beam-capability-based-relation\* beam-capabilities-reference | N |  -  |
| | +--ro neighbour-beams-capability-based\* beam-capabilities-reference | N |  -  |
| +--ro capabilities-groups\* [capabilities-group] | A |  -  |
| | +--ro capabilities-group uint16 | A |  -  |
| | +--ro band-number? -> /mcap:module-capability/band-capabilities/band-number | A |  -  |
| | +--ro tx-array\* -> /up:user-plane-configuration/tx-arrays/name | A |  -  |
| | +--ro rx-array\* -> /up:user-plane-configuration/rx-arrays/name | A |  -  |
| | +--ro static-properties | A |  -  |
| | | +--ro rt-bf-weights-update-support? boolean | A |  -  |
| | | +--ro (beamforming-type)? | A |  -  |
| | | | +--:(frequency) | A |  -  |
| | | | | +--ro frequency-domain-beams | A |  -  |
| | | | | +--ro max-number-of-beam-ids uint16 | A |  -  |
| | | | | +--ro initial-beam-id uint16 | A |  -  |
| | | | | +--ro iq-bitwidth? uint8 | A |  -  |
| | | | | +--ro compression-type enumeration | A |  -  |
| | | | | x--ro bitwidth? uint8 | A |  -  |
| | | | | +--ro (compression-format)? | A |  -  |
| | | | | | +--:(no-compresison) | A |  -  |
| | | | | | +--:(block-floating-point) | A |  -  |
| | | | | | | +--ro exponent? uint8 | A |  -  |
| | | | | | +--:(block-scaling) | A |  -  |
| | | | | | | +--ro block-scalar? uint8 | A |  -  |
| | | | | | +--:(u-law) | A |  -  |
| | | | | | | +--ro comp-bit-width? uint8 | A |  -  |
| | | | | | | +--ro comp-shift? uint8 | A |  -  |
| | | | | | +--:(beam-space-compression) | A |  -  |
| | | | | | | +--ro active-beam-space-coeficient-mask\* uint8 | A |  -  |
| | | | | | | +--ro block-scaler? uint8 | A |  -  |
| | | | | | +--:(modulation-compression) | A |  -  |
| | | | | | +--ro csf? uint8 | A |  -  |
| | | | | | +--ro mod-comp-scaler? uint16 | A |  -  |
| | | | | +--ro additional-compression-method-supported\* [] | A |  -  |
| | | | | +--ro iq-bitwidth? uint8 | A |  -  |
| | | | | +--ro compression-type enumeration | A |  -  |
| | | | | x--ro bitwidth? uint8 | A |  -  |
| | | | | +--ro (compression-format)? | A |  -  |
| | | | | +--:(no-compresison) | A |  -  |
| | | | | +--:(block-floating-point) | A |  -  |
| | | | | | +--ro exponent? uint8 | A |  -  |
| | | | | +--:(block-scaling) | A |  -  |
| | | | | | +--ro block-scalar? uint8 | A |  -  |
| | | | | +--:(u-law) | A |  -  |
| | | | | | +--ro comp-bit-width? uint8 | A |  -  |
| | | | | | +--ro comp-shift? uint8 | A |  -  |
| | | | | +--:(beam-space-compression) | A |  -  |
| | | | | | +--ro active-beam-space-coeficient-mask\* uint8 | A |  -  |
| | | | | | +--ro block-scaler? uint8 | A |  -  |
| | | | | +--:(modulation-compression) | A |  -  |
| | | | | +--ro csf? uint8 | A |  -  |
| | | | | +--ro mod-comp-scaler? uint16 | A |  -  |
| | | | +--:(time) | A |  -  |
| | | | | +--ro time-domain-beams | A |  -  |
| | | | | +--ro max-number-of-beam-ids uint16 | A |  -  |
| | | | | +--ro initial-beam-id uint16 | A |  -  |
| | | | | +--ro frequency-granularity enumeration | A |  -  |
| | | | | +--ro time-granularity enumeration | A |  -  |
| | | | | +--ro iq-bitwidth? uint8 | A |  -  |
| | | | | +--ro compression-type enumeration | A |  -  |
| | | | | x--ro bitwidth? uint8 | A |  -  |
| | | | | +--ro (compression-format)? | A |  -  |
| | | | | | +--:(no-compresison) | A |  -  |
| | | | | | +--:(block-floating-point) | A |  -  |
| | | | | | | +--ro exponent? uint8 | A |  -  |
| | | | | | +--:(block-scaling) | A |  -  |
| | | | | | | +--ro block-scalar? uint8 | A |  -  |
| | | | | | +--:(u-law) | A |  -  |
| | | | | | | +--ro comp-bit-width? uint8 | A |  -  |
| | | | | | | +--ro comp-shift? uint8 | A |  -  |
| | | | | | +--:(beam-space-compression) | A |  -  |
| | | | | | | +--ro active-beam-space-coeficient-mask\* uint8 | A |  -  |
| | | | | | | +--ro block-scaler? uint8 | A |  -  |
| | | | | | +--:(modulation-compression) | A |  -  |
| | | | | | +--ro csf? uint8 | A |  -  |
| | | | | | +--ro mod-comp-scaler? uint16 | A |  -  |
| | | | | +--ro additional-compression-method-supported\* [] | A |  -  |
| | | | | +--ro iq-bitwidth? uint8 | A |  -  |
| | | | | +--ro compression-type enumeration | A |  -  |
| | | | | x--ro bitwidth? uint8 | A |  -  |
| | | | | +--ro (compression-format)? | A |  -  |
| | | | | +--:(no-compresison) | A |  -  |
| | | | | +--:(block-floating-point) | A |  -  |
| | | | | | +--ro exponent? uint8 | A |  -  |
| | | | | +--:(block-scaling) | A |  -  |
| | | | | | +--ro block-scalar? uint8 | A |  -  |
| | | | | +--:(u-law) | A |  -  |
| | | | | | +--ro comp-bit-width? uint8 | A |  -  |
| | | | | | +--ro comp-shift? uint8 | A |  -  |
| | | | | +--:(beam-space-compression) | A |  -  |
| | | | | | +--ro active-beam-space-coeficient-mask\* uint8 | A |  -  |
| | | | | | +--ro block-scaler? uint8 | A |  -  |
| | | | | +--:(modulation-compression) | A |  -  |
| | | | | +--ro csf? uint8 | A |  -  |
| | | | | +--ro mod-comp-scaler? uint16 | A |  -  |
| | | | +--:(hybrid) | A |  -  |
| | | | +--ro hybrid-beams | A |  -  |
| | | | +--ro max-number-of-beam-ids uint16 | A |  -  |
| | | | +--ro initial-beam-id uint16 | A |  -  |
| | | | +--ro frequency-granularity enumeration | A |  -  |
| | | | +--ro time-granularity enumeration | A |  -  |
| | | | +--ro iq-bitwidth? uint8 | A |  -  |
| | | | +--ro compression-type enumeration | A |  -  |
| | | | x--ro bitwidth? uint8 | A |  -  |
| | | | +--ro (compression-format)? | A |  -  |
| | | | | +--:(no-compresison) | A |  -  |
| | | | | +--:(block-floating-point) | A |  -  |
| | | | | | +--ro exponent? uint8 | A |  -  |
| | | | | +--:(block-scaling) | A |  -  |
| | | | | | +--ro block-scalar? uint8 | A |  -  |
| | | | | +--:(u-law) | A |  -  |
| | | | | | +--ro comp-bit-width? uint8 | A |  -  |
| | | | | | +--ro comp-shift? uint8 | A |  -  |
| | | | | +--:(beam-space-compression) | A |  -  |
| | | | | | +--ro active-beam-space-coeficient-mask\* uint8 | A |  -  |
| | | | | | +--ro block-scaler? uint8 | A |  -  |
| | | | | +--:(modulation-compression) | A |  -  |
| | | | | +--ro csf? uint8 | A |  -  |
| | | | | +--ro mod-comp-scaler? uint16 | A |  -  |
| | | | +--ro additional-compression-method-supported\* [] | A |  -  |
| | | | +--ro iq-bitwidth? uint8 | A |  -  |
| | | | +--ro compression-type enumeration | A |  -  |
| | | | x--ro bitwidth? uint8 | A |  -  |
| | | | +--ro (compression-format)? | A |  -  |
| | | | +--:(no-compresison) | A |  -  |
| | | | +--:(block-floating-point) | A |  -  |
| | | | | +--ro exponent? uint8 | A |  -  |
| | | | +--:(block-scaling) | A |  -  |
| | | | | +--ro block-scalar? uint8 | A |  -  |
| | | | +--:(u-law) | A |  -  |
| | | | | +--ro comp-bit-width? uint8 | A |  -  |
| | | | | +--ro comp-shift? uint8 | A |  -  |
| | | | +--:(beam-space-compression) | A |  -  |
| | | | | +--ro active-beam-space-coeficient-mask\* uint8 | A |  -  |
| | | | | +--ro block-scaler? uint8 | A |  -  |
| | | | +--:(modulation-compression) | A |  -  |
| | | | +--ro csf? uint8 | A |  -  |
| | | | +--ro mod-comp-scaler? uint16 | A |  -  |
| | | +--ro number-of-beams? uint16 | A |  -  |
| | +--ro beam-information | A |  -  |
| | +--ro number-of-beamforming-properties? uint16 | A |  -  |
| | +--ro beamforming-properties\* [beam-id] | A |  -  |
| | +--ro beam-id uint16 | A |  -  |
| | +--ro beamforming-property | A |  -  |
| | +--ro beam-type? enumeration | A |  -  |
| | +--ro beam-group-id? uint16 | A |  -  |
| | +--ro coarse-fine-beam-relation\* beam-reference | A |  -  |
| | +--ro neighbour-beams\* beam-reference | A |  -  |
| +--ro ue-specific-beamforming! | N |  -  |
| | +--ro max-number-of-ues? uint8 | N |  -  |
| +--ro operational-properties {MODIFY-BF-CONFIG}? | N |  -  |
| | +--ro number-of-writeable-beamforming-files uint8 | N |  -  |
| | +--ro update-bf-non-delete? boolean | N |  -  |
| | +--ro persistent-bf-files? boolean | N |  -  |
| +--ro beamforming-trough-attributes-supported? boolean | N |  -  |
| +--ro beamforming-trough-ue-channel-info-supported? boolean | N |  -  |
| +--ro beam-tilt {BEAM-TILT}? | N |  -  |
| +--ro predefined-beam-tilt-offset-information\* [band-number] | N |  -  |
| | +--ro band-number -> /mcap:module-capability/band-capabilities/band-number | N |  -  |
| | +--ro elevation-tilt-granularity uint8 | N |  -  |
| | +--ro azimuth-tilt-granularity uint8 | N |  -  |
| | +--ro minimum-supported-elevation-tilt int16 | N |  -  |
| | +--ro maximum-supported-elevation-tilt int16 | N |  -  |
| | +--ro minimum-supported-azimuth-tilt int16 | N |  -  |
| | +--ro maximum-supported-azimuth-tilt int16 | N |  -  |
| | +--ro run-time-tilt-offset-supported boolean | N |  -  |
| +--ro predefined-beam-tilt-state\* [band-number] | N |  -  |
| +--ro band-number -> /mcap:module-capability/band-capabilities/band-number | N |  -  |
| +--ro offset-elevation-tilt-angle int16 | N |  -  |
| +--ro offset-azimuth-tilt-angle int16 | N |  -  |
|  -  |  -  |  -  |
| rpcs: | A |  -  |
| +---x activate-beamforming-config {MODIFY-BF-CONFIG}? | A |  -  |
| | +---w input | A |  -  |
| | | +---w beamforming-config-file string | A |  -  |
| | | +---w band-number? -> /mcap:module-capability/band-capabilities/band-number | A |  -  |
| | +--ro output | A |  -  |
| | +--ro status enumeration | A |  -  |
| | +--ro error-message? string | A |  -  |
| +---x activate-beamforming-config-by-capability-group {MODIFY-BF-CONFIG}? | A |  -  |
| | +---w input | A |  -  |
| | | +---w beamforming-config-file string | A |  -  |
| | | +---w capabilities-group -> /beamforming-config/capabilities-groups/capabilities-group | A |  -  |
| | +--ro output | A |  -  |
| | +--ro status enumeration | A |  -  |
| | +--ro error-message? string | A |  -  |
| +---x modify-predefined-beam-tilt-offset {BEAM-TILT}? | A |  -  |
| +---w input | A |  -  |
| | +---w predefined-beam-tilt-offset\* [band-number] {BEAM-TILT}? | A |  -  |
| | +---w band-number -> /mcap:module-capability/band-capabilities/band-number | A |  -  |
| | +---w offset-elevation-tilt-angle? int16 | M | combeamformfunc3gpp:digitalAzimuth 
Configuration from SMO should be restricted since SA5 can configure per beam, but WG4 cannot configure per beam(configure for all beam at once) |
| | +---w offset-azimuth-tilt-angle? int16 | A |  -  |
| +--ro output | A |  -  |
| +--ro status enumeration | A |  -  |
| +--ro error-message? string | A |  -  |
|  -  |  -  |  -  |
| notifications: |  -  |  -  |
| +---n beamforming-information-update | A |  -  |
| | +--ro band-number? -> /mcap:module-capability/band-capabilities/band-number | A |  -  |
| +---n capability-group-beamforming-information-update | A |  -  |
| | +--ro capabilities-group -> /beamforming-config/capabilities-groups/capabilities-group | A |  -  |
| +---n predefined-beam-tilt-offset-complete {BEAM-TILT}? | A |  -  |
| +--ro predefined-beam-tilt-state\* [band-number] | A |  -  |
| +--ro band-number -> /mcap:module-capability/band-capabilities/band-number | A |  -  |
| +--ro offset-elevation-tilt-angle int16 | A |  -  |
| +--ro offset-azimuth-tilt-angle int16 | A |  -  |
|  -  |  -  |  -  |
|  -  |  -  |  -  |
| module: o-ran-laa |  -  |  -  |
| +--rw laa-config |  -  | Skip to v2 |
| +--rw number-of-laa-scells? uint8 |  -  |  -  |
| +--rw multi-carrier-type? enumeration |  -  |  -  |
| +--rw multi-carrier-tx? boolean |  -  |  -  |
| +--rw multi-carrier-freeze? boolean |  -  |  -  |
| +--rw laa-ending-dwpts-supported? boolean |  -  |  -  |
| +--rw laa-starting-in-second-slot-supported? boolean |  -  |  -  |
|  -  |  -  |  -  |
|  -  |  -  |  -  |
| module: o-ran-antenna-calibration |  -  |  -  |
| +--rw antenna-calibration |  -  |  -  |
| +--ro antenna-calibration-capabilities | N |  -  |
| | +--ro self-calibration-support? boolean | N |  -  |
| | +--ro number-of-calibration-symbols-per-block-dl uint8 | N |  -  |
| | +--ro number-of-calibration-symbols-per-block-ul uint8 | N |  -  |
| | +--ro interval-between-calibration-blocks? uint8 | N |  -  |
| | +--ro number-of-calibration-blocks-per-step-dl uint8 | N |  -  |
| | +--ro number-of-calibration-blocks-per-step-ul uint8 | N |  -  |
| | +--ro interval-between-calibration-steps? uint8 | N |  -  |
| | +--ro number-of-calibration-steps uint8 | N |  -  |
| +--rw self-calibration-policy | I |  -  |
| +--rw self-calibration-allowed? boolean | I |  -  |
|  -  |  -  |  -  |
| rpcs: | I |  -  |
| +---x start-antenna-calibration | I |  -  |
| +---w input | I |  -  |
| | +---w symbol-bitmask-dl string | I |  -  |
| | +---w symbol-bitmask-ul string | I |  -  |
| | +---w slot-bitmask-dl string | I |  -  |
| | +---w slot-bitmask-ul string | I |  -  |
| | +---w frame-bitmask-dl string | I |  -  |
| | +---w frame-bitmask-ul string | I |  -  |
| | +---w calibration-step-size uint8 | I |  -  |
| | +---w calibration-step-number uint8 | I |  -  |
| | +---w start-sfn uint16 | I |  -  |
| +--ro output | I |  -  |
| +--ro status enumeration | I |  -  |
| +--ro error-message? string | I |  -  |
|  -  |  -  |  -  |
| notifications: | A |  -  |
| +---n antenna-calibration-required | A |  -  |
| | +--ro dl-calibration-frequency-chunk\* [] | A |  -  |
| | | +--ro start-calibration-frequency-dl? uint64 | A |  -  |
| | | +--ro end-calibration-frequency-dl? uint64 | A |  -  |
| | +--ro ul-calibration-frequency-chunk\* [] | A |  -  |
| | +--ro start-calibration-frequency-ul? uint64 | A |  -  |
| | +--ro end-calibration-frequency-ul? uint64 | A |  -  |
| +---n antenna-calibration-result | A |  -  |
| +--ro status enumeration | A |  -  |
| +--ro detailed-reason? String | A |  -  |
|  -  |  -  |  -  |
|  -  |  -  |  -  |
| module: o-ran-shared-cell |  -  |  -  |
| +--rw shared-cell |  -  |  -  |
| +--ro shared-cell-module-cap | N |  -  |
| | +--ro t-copy uint32 | N |  -  |
| | +--ro t-combine uint32 | N |  -  |
| | +--ro ta3-prime-max-upper-range uint32 | N |  -  |
| | +--ro max-number-node-copy-and-combine uint8 | N |  -  |
| | +--ro max-number-eaxcid-copy uint8 | N |  -  |
| | +--ro max-number-eaxcid-combine uint8 | N |  -  |
| | +--ro compression-method-supported\* [] {FHM}? | N |  -  |
| | +--ro iq-bitwidth? uint8 | N |  -  |
| | +--ro compression-type enumeration | N |  -  |
| | x--ro bitwidth? uint8 | N |  -  |
| | +--ro (compression-format)? | N |  -  |
| | +--:(no-compresison) | N |  -  |
| | +--:(block-floating-point) | N |  -  |
| | | +--ro exponent? uint8 | N |  -  |
| | +--:(block-scaling) | N |  -  |
| | | +--ro block-scalar? uint8 | N |  -  |
| | +--:(u-law) | N |  -  |
| | | +--ro comp-bit-width? uint8 | N |  -  |
| | | +--ro comp-shift? uint8 | N |  -  |
| | +--:(beam-space-compression) | N |  -  |
| | | +--ro active-beam-space-coeficient-mask\* uint8 | N |  -  |
| | | +--ro block-scaler? uint8 | N |  -  |
| | +--:(modulation-compression) | N |  -  |
| | +--ro csf? uint8 | N |  -  |
| | +--ro mod-comp-scaler? uint16 | N |  -  |
| +--rw shared-cell-config |  -  |  -  |
| +--rw (shared-cell-copy-combine-mode)? |  -  |  -  |
| +--:(COMMON) |  -  |  -  |
| | +--rw shared-cell-copy-entities\* [name] |  -  |  -  |
| | | +--rw name string | I |  -  |
| | | +--rw north-node-processing-element? -> /o-ran-pe:processing-elements/ru-elements/name | I |  -  |
| | | +--rw south-node-processing-elements\* -> /o-ran-pe:processing-elements/ru-elements/name | I |  -  |
| | | +--rw shared-cell-copy-uplane-config {FHM}? | I |  -  |
| | | +--rw tx-eaxc-id\* [eaxc-id] | I |  -  |
| | | | +--rw eaxc-id uint16 | I |  -  |
| | | +--rw rx-eaxc-id\* [eaxc-id] | I |  -  |
| | | | +--rw eaxc-id uint16 | I |  -  |
| | | +--rw downlink-radio-frame-offset uint32 | A |  -  |
| | | +--rw downlink-sfn-offset int16 | A |  -  |
| | +--rw shared-cell-combine-entities\* [name] | I |  -  |
| | +--rw name string | I |  -  |
| | +--rw north-node-processing-element? -> /o-ran-pe:processing-elements/ru-elements/name | I |  -  |
| | +--rw south-node-processing-elements\* -> /o-ran-pe:processing-elements/ru-elements/name | I |  -  |
| | +--rw ta3-prime-max? uint32 | I |  -  |
| | +--rw shared-cell-combine-uplane-config {FHM}? | I |  -  |
| | +--rw rx-eaxc-id\* [eaxc-id] | I |  -  |
| | | +--rw eaxc-id uint16 | I |  -  |
| | | +--rw comression-method | A |  -  |
| | | +--rw iq-bitwidth? uint8 | A |  -  |
| | | +--rw compression-type enumeration | A |  -  |
| | | x--rw bitwidth? uint8 | A |  -  |
| | | +--rw (compression-format)? | A |  -  |
| | | +--:(no-compresison) | A |  -  |
| | | +--:(block-floating-point) | A |  -  |
| | | | +--rw exponent? uint8 | A |  -  |
| | | +--:(block-scaling) | A |  -  |
| | | | +--rw block-scalar? uint8 | A |  -  |
| | | +--:(u-law) | A |  -  |
| | | | +--rw comp-bit-width? uint8 | A |  -  |
| | | | +--rw comp-shift? uint8 | A |  -  |
| | | +--:(beam-space-compression) | A |  -  |
| | | | +--rw active-beam-space-coeficient-mask\* uint8 | A |  -  |
| | | | +--rw block-scaler? uint8 | A |  -  |
| | | +--:(modulation-compression) | A |  -  |
| | | +--rw csf? uint8 | A |  -  |
| | | +--rw mod-comp-scaler? uint16 | A |  -  |
| | +--rw downlink-radio-frame-offset uint32 | A |  -  |
| | +--rw downlink-sfn-offset int16 | A |  -  |
| | +--rw n-ta-offset uint32 | A |  -  |
| | +--rw number-of-prb uint16 | A |  -  |
| +--:(SELECTIVE) |  -  |  -  |

</div>
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG5.O-DU-O1.2-R003-v09.00.xlsx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG5.O-DU-O1.2-R003-v09.00.xlsx).
