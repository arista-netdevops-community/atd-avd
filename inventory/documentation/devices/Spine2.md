# Spine2

## Management Interfaces

### Management Interfaces Summary

IPv4

| Management Interface | description | VRF | IP Address | Gateway |
| -------------------- | ----------- | --- | ---------- | ------- |
| Management1 | oob_management | default | 192.168.0.11/24 | 192.168.0.1 |

IPv6

| Management Interface | description | VRF | IPv6 Address | IPv6 Gateway |
| -------------------- | ----------- | --- | ------------ | ------------ |
| Management1 | oob_management | default | ||

### Management Interfaces Device Configuration

```eos
!
interface Management1
   description oob_management
   ip address 192.168.0.11/24
```

## Hardware Counters

No Hardware Counters defined

## Aliases
Aliases not defined

## TerminAttr Daemon

### TerminAttr Daemon Summary

| CV Compression | Ingest gRPC URL | Ingest Authentication Key | Smash Excludes | Ingest Exclude | Ingest VRF |  NTP VRF |
| -------------- | --------------- | ------------------------- | -------------- | -------------- | ---------- | -------- |
| gzip | 192.168.0.5:9910 | atd-lab | ale,flexCounter,hardware,kni,pulse,strata | /Sysdb/cell/1/agent,/Sysdb/cell/2/agent | default | default |

### TerminAttr Daemon Device Configuration

```eos
!
daemon TerminAttr
   exec /usr/bin/TerminAttr -ingestgrpcurl=192.168.0.5:9910 -cvcompression=gzip -ingestauth=key,atd-lab -smashexcludes=ale,flexCounter,hardware,kni,pulse,strata -ingestexclude=/Sysdb/cell/1/agent,/Sysdb/cell/2/agent -taillogs
   no shutdown
```

## IP DHCP Relay

IP DHCP Relay not defined

## Internal VLAN allocation Policy

### Internal VLAN Allocation Policy Summary

| Policy Allocation | Range Beginning | Range Ending |
| ------------------| --------------- | ------------ |
| ascending | 1006 | 1199 |

### Internal VLAN Allocation Policy Configuration

```eos
!
vlan internal order ascending range 1006 1199
```

## IP IGMP Snooping


## Logging

No logging settings defined

## Domain Lookup

DNS domain lookup not defined

## Name Servers

### Name Servers Summary

| Name Server | Source VRF |
| ----------- | ---------- |
| 192.168.0.1 | default |
| 8.8.8.8 | default |

### Name Servers Device Configuration

```eos
ip name-server vrf default 192.168.0.1
ip name-server vrf default 8.8.8.8
```

## DNS Domain

DNS domain not defined

## NTP

### NTP Summary

Local Interface: Management1

VRF: default


| Node | Primary |
| ---- | ------- |
| 192.168.0.1 | true |
| 0.fr.pool.ntp.org | - |
| 1.fr.pool.ntp.org | - |

### NTP Device Configuration

```eos
!
ntp local-interface Management1
ntp server 192.168.0.1 prefer
ntp server 0.fr.pool.ntp.org
ntp server 1.fr.pool.ntp.org
```

## Router L2 VPN

Router L2 VPN not defined

## SFlow

No sFlow defined

## Spanning Tree

### Spanning Tree Summary

Mode: none


### Spanning Tree Device Configuration

```eos
!
spanning-tree mode none
```


TACACS Servers Not Configured


IP TACACS source interfaces not defined


AAA server groups not defined

## AAA Authentication

AAA authentication not defined

## AAA Authorization

AAA authorization not defined

## AAA Accounting

AAA accounting not defined

## Local Users

### Local Users Summary

| User | Privilege | role |
| ---- | --------- | ---- |
| admin | 15 | network-admin |
| arista | 15 | network-admin |

### Local Users Device Configuration

```eos
!
username admin privilege 15 role network-admin secret sha512 $6$4Hh3HEdiGgzbXYGR$WM3lNvPcKmjNfoxeA5fpqoSXpNLkM7D84xMYUME19nqna.4MhvoTQ0SDo3eBSncR8RftDsmxmLX0gCKMtfBhp1
username arista privilege 15 role network-admin secret sha512 $6$O9x7MCScI/Gbkczt$TFyd73bh9QubmKyZqteauUX7C5BMvUK7EI3jnoR5rqN1p5X9GBTHIxa.yZaN4.UG39nYODcCGcuP9Gn1siKe00
```

## VLANs

No VLANs defined

## VRF Instances

### VRF Instances Summary

| VRF Name | IP Routing |
| -------- | ---------- |
| default |  disabled |

### VRF Instances Device Configuration

```eos
```

## Port-Channel Interfaces

No Port-Channels defined

## Ethernet Interfaces

### Ethernet Interfaces Summary

| Interface | Description | MTU | Type | Mode | Allowed VLANs (Trunk) | Trunk Group | VRF | IP Address | Channel-Group ID | Channel-Group Type |
| --------- | ----------- | --- | ---- | ---- | --------------------- | ----------- | --- | ---------- | ---------------- | ------------------ |
| Ethernet2 | P2P_LINK_TO_LEAF1_Ethernet3 | 1500 | routed | access | - | - | - | 172.31.255.2/31 | - | - |
| Ethernet3 | P2P_LINK_TO_LEAF2_Ethernet3 | 1500 | routed | access | - | - | - | 172.31.255.6/31 | - | - |
| Ethernet4 | P2P_LINK_TO_LEAF3_Ethernet3 | 1500 | routed | access | - | - | - | 172.31.255.10/31 | - | - |
| Ethernet5 | P2P_LINK_TO_LEAF4_Ethernet3 | 1500 | routed | access | - | - | - | 172.31.255.14/31 | - | - |

*Inherited from Port-Channel Interface

### Ethernet Interfaces Device Configuration

```eos
!
interface Ethernet2
   description P2P_LINK_TO_LEAF1_Ethernet3
   no switchport
   ip address 172.31.255.2/31
!
interface Ethernet3
   description P2P_LINK_TO_LEAF2_Ethernet3
   no switchport
   ip address 172.31.255.6/31
!
interface Ethernet4
   description P2P_LINK_TO_LEAF3_Ethernet3
   no switchport
   ip address 172.31.255.10/31
!
interface Ethernet5
   description P2P_LINK_TO_LEAF4_Ethernet3
   no switchport
   ip address 172.31.255.14/31
```

## Loopback Interfaces

### Loopback Interfaces Summary

IPv4

| Interface | Description | VRF | IP Address |
| --------- | ----------- | --- | ---------- |
| Loopback0 | EVPN_Overlay_Peering | Global Routing Table | 192.168.255.2/32 |

IPv6

| Interface | Description | VRF | IPv6 Address |
| --------- | ----------- | --- | ------------ |
| Loopback0 | EVPN_Overlay_Peering | Global Routing Table | - |

### Loopback Interfaces Device Configuration

```eos
!
interface Loopback0
   description EVPN_Overlay_Peering
   ip address 192.168.255.2/32
```

## VLAN Interfaces

No VLAN interfaces defined

## VXLAN Interface

No VXLAN interface defined

## Virtual Router MAC Address & Virtual Source NAT


## IPv6 Extended Access-lists

IPv6 Extended Access-lists not defined

## IPv6 Standard Access-lists

IPv6 Standard Access-lists not defined

## Extended Access-lists

Extended Access-lists not defined

## Standard Access-lists

Standard Access-lists not defined

## Static Routes

### Static Routes Summary

| VRF | Destination Prefix | Fowarding Address / Interface |
| --- | ------------------ | ----------------------------- |
| default | 0.0.0.0/0 | 192.168.0.1 |

### Static Routes Device Configuration

```eos
!
ip route 0.0.0.0/0 192.168.0.1
```

## Event Handler

No Event Handler Defined

## IP Routing

### IP Routing Summary

| VRF | Routing Enabled |
| --- | --------------- |
| default | False |

### IP Routing Device Configuration

```eos
!
ip routing
```

## Prefix Lists

### Prefix Lists Summary

**PL-LOOPBACKS-EVPN-OVERLAY:**

| Sequence | Action |
| -------- | ------ |
| 10 | permit 192.168.255.0/24 le 32 |

### Prefix Lists Device Configuration

```eos
!
ip prefix-list PL-LOOPBACKS-EVPN-OVERLAY
   seq 10 permit 192.168.255.0/24 le 32
```

## IPv6 Prefix Lists

IPv6 Prefix lists not defined

## IPv6 Routing

### IPv6 Routing Summary

| VRF | IPv6 Routing Enabled |
| --- | -------------------- |
| default | False |

### IPv6 Routing Device Configuration

```eos
```

## MLAG

MLAG not defined

## Community Lists

Community Lists not defined

## Route Maps

### Route Maps Summary

**RM-CONN-2-BGP:**

| Sequence | Type | Match and/or Set |
| -------- | ---- | ---------------- |
| 10 | permit | match ip address prefix-list PL-LOOPBACKS-EVPN-OVERLAY |

### Route Maps Device Configuration

```eos
!
route-map RM-CONN-2-BGP permit 10
   match ip address prefix-list PL-LOOPBACKS-EVPN-OVERLAY
```

## Peer Filters

### Peer Filters Summary

**LEAF-AS-RANGE:**

| Sequence | Match |
| -------- | ----- |
| 10 | as-range 65101-65132 result accept |

### Peer Filters Device Configuration

```eos
!
peer-filter LEAF-AS-RANGE
   10 match as-range 65101-65132 result accept
```

## Router BFD

### Router BFD Multihop Summary

| Interval | Minimum RX | Multiplier |
| -------- | ---------- | ---------- |
| 1200 | 1200 | 3 |

### Router BFD Multihop Device Configuration

```eos
!
router bfd
   multihop interval 1200 min-rx 1200 multiplier 3
```

## Router BGP

### Router BGP Summary

| BGP AS | Router ID |
| ------ | --------- |
| 65001|  192.168.255.2 |

| BGP Tuning |
| ---------- |
| no bgp default ipv4-unicast |
| distance bgp 20 200 200 |
| graceful-restart restart-time 300 |
| graceful-restart |
| maximum-paths 2 ecmp 2 |

### Router BGP Peer Groups

**EVPN-OVERLAY-PEERS**:

| Settings | Value |
| -------- | ----- |
| Address Family | evpn |
| next-hop unchanged | true |
| source | Loopback0 |
| bfd | true |
| ebgp multihop | 3 |
| send community | true |
| maximum routes | 0 (no limit) |

**IPv4-UNDERLAY-PEERS**:

| Settings | Value |
| -------- | ----- |
| Address Family | ipv4 |
| maximum routes | 12000 |

### BGP Neighbors

| Neighbor | Remote AS |
| -------- | ---------
| 172.31.255.3 | 65101 |
| 172.31.255.7 | 65101 |
| 172.31.255.11 | 65102 |
| 172.31.255.15 | 65102 |
| 192.168.255.3 | 65101 |
| 192.168.255.4 | 65101 |
| 192.168.255.5 | 65102 |
| 192.168.255.6 | 65102 |

### Router BGP EVPN Address Family

#### Router BGP EVPN MAC-VRFs



#### Router BGP EVPN VRFs


### Router BGP Device Configuration

```eos
!
router bgp 65001
   router-id 192.168.255.2
   no bgp default ipv4-unicast
   distance bgp 20 200 200
   graceful-restart restart-time 300
   graceful-restart
   maximum-paths 2 ecmp 2
   neighbor EVPN-OVERLAY-PEERS peer group
   neighbor EVPN-OVERLAY-PEERS next-hop-unchanged
   neighbor EVPN-OVERLAY-PEERS update-source Loopback0
   neighbor EVPN-OVERLAY-PEERS bfd
   neighbor EVPN-OVERLAY-PEERS ebgp-multihop 3
   neighbor EVPN-OVERLAY-PEERS password 7 q+VNViP5i4rVjW1cxFv2wA==
   neighbor EVPN-OVERLAY-PEERS send-community
   neighbor EVPN-OVERLAY-PEERS maximum-routes 0
   neighbor IPv4-UNDERLAY-PEERS peer group
   neighbor IPv4-UNDERLAY-PEERS password 7 AQQvKeimxJu+uGQ/yYvv9w==
   neighbor IPv4-UNDERLAY-PEERS maximum-routes 12000
   neighbor 172.31.255.3 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.255.3 remote-as 65101
   neighbor 172.31.255.7 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.255.7 remote-as 65101
   neighbor 172.31.255.11 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.255.11 remote-as 65102
   neighbor 172.31.255.15 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.255.15 remote-as 65102
   neighbor 192.168.255.3 peer group EVPN-OVERLAY-PEERS
   neighbor 192.168.255.3 remote-as 65101
   neighbor 192.168.255.4 peer group EVPN-OVERLAY-PEERS
   neighbor 192.168.255.4 remote-as 65101
   neighbor 192.168.255.5 peer group EVPN-OVERLAY-PEERS
   neighbor 192.168.255.5 remote-as 65102
   neighbor 192.168.255.6 peer group EVPN-OVERLAY-PEERS
   neighbor 192.168.255.6 remote-as 65102
   redistribute connected route-map RM-CONN-2-BGP
   !
   address-family evpn
      neighbor EVPN-OVERLAY-PEERS activate
      no neighbor IPv4-UNDERLAY-PEERS activate
   !
   address-family ipv4
      no neighbor EVPN-OVERLAY-PEERS activate
      neighbor IPv4-UNDERLAY-PEERS activate
```

## Router Multicast

Routing multicast not defined

## Router PIM Sparse Mode

Router PIM sparse mode not defined

## VM Tracer Sessions

No VM tracer session defined

## Management Security

Management Security not defined

## Platform

No Platform parameters defined

## Router ISIS

Router ISIS not defined
