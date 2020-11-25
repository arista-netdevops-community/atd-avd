# leaf4

## Management Interfaces

### Management Interfaces Summary

IPv4

| Management Interface | description | VRF | IP Address | Gateway |
| -------------------- | ----------- | --- | ---------- | ------- |
| Management1 | oob_management | MGMT | 192.168.0.15/24 | 10.255.0.1 |

IPv6

| Management Interface | description | VRF | IPv6 Address | IPv6 Gateway |
| -------------------- | ----------- | --- | ------------ | ------------ |
| Management1 | oob_management | MGMT | ||

### Management Interfaces Device Configuration

```eos
!
interface Management1
   description oob_management
   vrf MGMT
   ip address 192.168.0.15/24
```

## Hardware Counters

No Hardware Counters defined

## Aliases
Aliases not defined

## TerminAttr Daemon

### TerminAttr Daemon Summary

| CV Compression | Ingest gRPC URL | Ingest Authentication Key | Smash Excludes | Ingest Exclude | Ingest VRF |  NTP VRF |
| -------------- | --------------- | ------------------------- | -------------- | -------------- | ---------- | -------- |
| gzip | 192.168.0.5:9910 | atd-lab | ale,flexCounter,hardware,kni,pulse,strata | /Sysdb/cell/1/agent,/Sysdb/cell/2/agent | MGMT | MGMT |

### TerminAttr Daemon Device Configuration

```eos
!
daemon TerminAttr
   exec /usr/bin/TerminAttr -ingestgrpcurl=192.168.0.5:9910 -cvcompression=gzip -ingestauth=key,atd-lab -smashexcludes=ale,flexCounter,hardware,kni,pulse,strata -ingestexclude=/Sysdb/cell/1/agent,/Sysdb/cell/2/agent -ingestvrf=MGMT -taillogs
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
| 192.168.2.1 | MGMT |
| 8.8.8.7 | MGMT |

### Name Servers Device Configuration

```eos
ip name-server vrf MGMT 192.168.2.1
ip name-server vrf MGMT 8.8.8.7
```

## DNS Domain

DNS domain not defined

## NTP

No NTP servers defined

## Router L2 VPN

Router L2 VPN not defined

## SFlow

No sFlow defined

## Spanning Tree

### Spanning Tree Summary

Mode: mstp

**MSTP Instance and Priority**:

| Instance | Priority |
| -------- | -------- |
| 0 | 4096 |

### Spanning Tree Device Configuration

```eos
!
spanning-tree mode mstp
no spanning-tree vlan-id 4094
spanning-tree mst 0 priority 4096
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
| ansible | 15 | network-admin |

### Local Users Device Configuration

```eos
!
username ansible privilege 15 role network-admin secret sha512 $6$Dzu11L7yp9j3nCM9$FSptxMPyIL555OMO.ldnjDXgwZmrfMYwHSr0uznE5Qoqvd9a6UdjiFcJUhGLtvXVZR1r.A/iF5aAt50hf/EK4/
```

## VLANs

### VLANs Summary

| VLAN ID | Name | Trunk Groups |
| ------- | ---- | ------------ |
| 110 | Tenant_A_OP_Zone_1 | none  |
| 160 | Tenant_A_VMOTION | none  |
| 3009 | MLAG_iBGP_Tenant_A_OP_Zone | LEAF_PEER_L3  |
| 4093 | LEAF_PEER_L3 | LEAF_PEER_L3  |
| 4094 | MLAG_PEER | MLAG  |

### VLANs Device Configuration

```eos
!
vlan 110
   name Tenant_A_OP_Zone_1
!
vlan 160
   name Tenant_A_VMOTION
!
vlan 3009
   name MLAG_iBGP_Tenant_A_OP_Zone
   trunk group LEAF_PEER_L3
!
vlan 4093
   name LEAF_PEER_L3
   trunk group LEAF_PEER_L3
!
vlan 4094
   name MLAG_PEER
   trunk group MLAG
```

## VRF Instances

### VRF Instances Summary

| VRF Name | IP Routing |
| -------- | ---------- |
| MGMT |  disabled |
| Tenant_A_OP_Zone |  enabled |

### VRF Instances Device Configuration

```eos
!
vrf instance MGMT
!
vrf instance Tenant_A_OP_Zone
```

## Port-Channel Interfaces

### Port-Channel Interfaces Summary

| Interface | Description | MTU | Type | Mode | Allowed VLANs (trunk) | Trunk Group | MLAG ID | EVPN ESI | VRF | IP Address | IPv6 Address |
| --------- | ----------- | --- | ---- | ---- | --------------------- | ----------- | ------- | -------- | --- | ---------- | ------------ |
| Port-Channel1 | MLAG_PEER_leaf3_Po1 | 1500 | switched | trunk | 2-4094 | LEAF_PEER_L3<br> MLAG | - | - | - | - | - |
| Port-Channel4 | host2_PortChanne1 | 1500 | switched | access | 110 | - | 4 | - | - | - | - |

### Port-Channel Interfaces Device Configuration

```eos
!
interface Port-Channel1
   description MLAG_PEER_leaf3_Po1
   switchport trunk allowed vlan 2-4094
   switchport mode trunk
   switchport trunk group LEAF_PEER_L3
   switchport trunk group MLAG
!
interface Port-Channel4
   description host2_PortChanne1
   switchport access vlan 110
   mlag 4
```

## Ethernet Interfaces

### Ethernet Interfaces Summary

| Interface | Description | MTU | Type | Mode | Allowed VLANs (Trunk) | Trunk Group | VRF | IP Address | Channel-Group ID | Channel-Group Type |
| --------- | ----------- | --- | ---- | ---- | --------------------- | ----------- | --- | ---------- | ---------------- | ------------------ |
| Ethernet1 | MLAG_PEER_leaf3_Ethernet1 | *1500 | *switched | *trunk | *2-4094 | *LEAF_PEER_L3<br> *MLAG | - | - | 1 | active |
| Ethernet2 | P2P_LINK_TO_SPINE1_Ethernet5 | 1500 | routed | access | - | - | - | 172.30.255.13/31 | - | - |
| Ethernet3 | P2P_LINK_TO_SPINE2_Ethernet5 | 1500 | routed | access | - | - | - | 172.30.255.15/31 | - | - |
| Ethernet4 | host2_Eth3 | *1500 | *switched | *access | *110 | - | - | - | 4 | active |
| Ethernet5 | host2_Eth4 | *1500 | *switched | *access | *110 | - | - | - | 4 | active |

*Inherited from Port-Channel Interface

### Ethernet Interfaces Device Configuration

```eos
!
interface Ethernet1
   description MLAG_PEER_leaf3_Ethernet1
   channel-group 1 mode active
!
interface Ethernet2
   description P2P_LINK_TO_SPINE1_Ethernet5
   no switchport
   ip address 172.30.255.13/31
!
interface Ethernet3
   description P2P_LINK_TO_SPINE2_Ethernet5
   no switchport
   ip address 172.30.255.15/31
!
interface Ethernet4
   description host2_Eth3
   channel-group 4 mode active
!
interface Ethernet5
   description host2_Eth4
   channel-group 4 mode active
```

## Loopback Interfaces

### Loopback Interfaces Summary

IPv4

| Interface | Description | VRF | IP Address |
| --------- | ----------- | --- | ---------- |
| Loopback0 | EVPN_Overlay_Peering | Global Routing Table | 192.0.255.6/32 |
| Loopback1 | VTEP_VXLAN_Tunnel_Source | Global Routing Table | 192.0.254.5/32 |
| Loopback100 | Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | Tenant_A_OP_Zone | 10.255.1.6/32 |

IPv6

| Interface | Description | VRF | IPv6 Address |
| --------- | ----------- | --- | ------------ |
| Loopback0 | EVPN_Overlay_Peering | Global Routing Table | - |
| Loopback1 | VTEP_VXLAN_Tunnel_Source | Global Routing Table | - |
| Loopback100 | Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | Tenant_A_OP_Zone | - |

### Loopback Interfaces Device Configuration

```eos
!
interface Loopback0
   description EVPN_Overlay_Peering
   ip address 192.0.255.6/32
!
interface Loopback1
   description VTEP_VXLAN_Tunnel_Source
   ip address 192.0.254.5/32
!
interface Loopback100
   description Tenant_A_OP_Zone_VTEP_DIAGNOSTICS
   vrf Tenant_A_OP_Zone
   ip address 10.255.1.6/32
```

## VLAN Interfaces

### VLAN Interfaces Summary

| Interface | Description | VRF | IP Address | IP Address Virtual | IP Router Virtual Address (vARP) |
| --------- | ----------- | --- | ---------- | ------------------ | -------------------------------- |
| Vlan110 | Tenant_A_OP_Zone_1 | Tenant_A_OP_Zone | - | 10.1.10.1/24 | - |
| Vlan3009 | MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone | Tenant_A_OP_Zone | 10.255.251.5/31 | - | - |
| Vlan4093 | MLAG_PEER_L3_PEERING | Global Routing Table | 10.255.251.5/31 | - | - |
| Vlan4094 | MLAG_PEER | Global Routing Table | 10.255.252.5/31 | - | - |

### VLAN Interfaces Device Configuration

```eos
!
interface Vlan110
   description Tenant_A_OP_Zone_1
   vrf Tenant_A_OP_Zone
   ip address virtual 10.1.10.1/24
!
interface Vlan3009
   description MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone
   vrf Tenant_A_OP_Zone
   ip address 10.255.251.5/31
!
interface Vlan4093
   description MLAG_PEER_L3_PEERING
   ip address 10.255.251.5/31
!
interface Vlan4094
   description MLAG_PEER
   no autostate
   ip address 10.255.252.5/31
```

## VXLAN Interface

### VXLAN Interface Summary

**Source Interface:** Loopback1
**UDP port:** 4789

**VLAN to VNI Mappings:**

| VLAN | VNI |
| ---- | --- |
| 110 | 10110 |
| 160 | 55160 |

**VRF to VNI Mappings:**

| VLAN | VNI |
| ---- | --- |
| Tenant_A_OP_Zone | 10 |

### VXLAN Interface Device Configuration

```eos
!
interface Vxlan1
   vxlan source-interface Loopback1
   vxlan virtual-router encapsulation mac-address mlag-system-id
   vxlan udp-port 4789
   vxlan vlan 110 vni 10110
   vxlan vlan 160 vni 55160
   vxlan vrf Tenant_A_OP_Zone vni 10
```

## Virtual Router MAC Address & Virtual Source NAT

### Virtual Router MAC Address and Virtual Source NAT Summary

**Virtual Router MAC Address:** 00:1c:73:00:dc:01
### Virtual Source NAT Summary

| Source NAT VRF | Source NAT IP Address |
| -------------- | --------------------- |
| Tenant_A_OP_Zone | 10.255.1.6 |

### Virtual Router MAC Address Device and Virtual Source NAT Configuration

```eos
!
ip virtual-router mac-address 00:1c:73:00:dc:01
ip address virtual source-nat vrf Tenant_A_OP_Zone address 10.255.1.6
```

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
| MGMT | 0.0.0.0/0 | 10.255.0.1 |

### Static Routes Device Configuration

```eos
!
ip route vrf MGMT 0.0.0.0/0 10.255.0.1
```

## Event Handler

No Event Handler Defined

## IP Routing

### IP Routing Summary

| VRF | Routing Enabled |
| --- | --------------- |
| MGMT | False |
| Tenant_A_OP_Zone | True |

### IP Routing Device Configuration

```eos
!
ip routing
no ip routing vrf MGMT
ip routing vrf Tenant_A_OP_Zone
```

## Prefix Lists

### Prefix Lists Summary

**PL-LOOPBACKS-EVPN-OVERLAY:**

| Sequence | Action |
| -------- | ------ |
| 10 | permit 192.0.255.0/24 eq 32 |
| 20 | permit 192.0.254.0/24 eq 32 |

**PL-P2P-UNDERLAY:**

| Sequence | Action |
| -------- | ------ |
| 10 | permit 172.30.255.0/24 le 31 |
| 20 | permit 10.255.251.0/24 le 31 |

### Prefix Lists Device Configuration

```eos
!
ip prefix-list PL-LOOPBACKS-EVPN-OVERLAY
   seq 10 permit 192.0.255.0/24 eq 32
   seq 20 permit 192.0.254.0/24 eq 32
!
ip prefix-list PL-P2P-UNDERLAY
   seq 10 permit 172.30.255.0/24 le 31
   seq 20 permit 10.255.251.0/24 le 31
```

## IPv6 Prefix Lists

IPv6 Prefix lists not defined

## IPv6 Routing

### IPv6 Routing Summary

| VRF | IPv6 Routing Enabled |
| --- | -------------------- |
| MGMT | False |
| Tenant_A_OP_Zone | False |

### IPv6 Routing Device Configuration

```eos
```

## MLAG

### MLAG Summary

| domain-id | local-interface | peer-address | peer-link |
| --------- | --------------- | ------------ | --------- |
| pod2 | Vlan4094 | 10.255.252.4 | Port-Channel1 |

Dual primary detection is enabled. The detection delay is 5 seconds.

### MLAG Device Configuration

```eos
!
mlag configuration
   domain-id pod2
   local-interface Vlan4094
   peer-address 10.255.252.4
   peer-address heartbeat 192.168.0.14 vrf MGMT
   peer-link Port-Channel1
   dual-primary detection delay 5 action errdisable all-interfaces
   reload-delay mlag 300
   reload-delay non-mlag 330
```

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

No Peer Filters defined

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
| 65110|  192.0.255.6 |

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
| remote_as | 65001 |
| source | Loopback0 |
| bfd | true |
| ebgp multihop | 3 |
| send community | true |
| maximum routes | 0 (no limit) |

**IPv4-UNDERLAY-PEERS**:

| Settings | Value |
| -------- | ----- |
| Address Family | ipv4 |
| remote_as | 65001 |
| send community | true |
| maximum routes | 12000 |

**MLAG-IPv4-UNDERLAY-PEER**:

| Settings | Value |
| -------- | ----- |
| Address Family | ipv4 |
| remote_as | 65110 |
| next-hop self | true |
| send community | true |
| maximum routes | 12000 |

### BGP Neighbors

| Neighbor | Remote AS |
| -------- | ---------
| 10.255.251.4 | Inherited from peer group MLAG-IPv4-UNDERLAY-PEER |
| 172.30.255.12 | Inherited from peer group IPv4-UNDERLAY-PEERS |
| 172.30.255.14 | Inherited from peer group IPv4-UNDERLAY-PEERS |
| 192.0.255.1 | Inherited from peer group EVPN-OVERLAY-PEERS |
| 192.0.255.2 | Inherited from peer group EVPN-OVERLAY-PEERS |

### Router BGP EVPN Address Family

#### Router BGP EVPN MAC-VRFs

**VLAN aware bundles:**

| VLAN Aware Bundle | Route-Distinguisher | Both Route-Target | Import Route Target | Export Route-Target | Redistribute | VLANs |
| ----------------- | ------------------- | ----------------- | ------------------- | ------------------- | ------------ | ----- |
| Tenant_A_OP_Zone | 192.0.255.6:10 |  10:10  |  |  | learned | 110 |
| Tenant_A_VMOTION | 192.0.255.6:55160 |  55160:55160  |  |  | learned | 160 |


#### Router BGP EVPN VRFs

| VRF | Route-Distinguisher | Redistribute |
| --- | ------------------- | ------------ |
| Tenant_A_OP_Zone | 192.0.255.6:10 | connected  |

### Router BGP Device Configuration

```eos
!
router bgp 65110
   router-id 192.0.255.6
   no bgp default ipv4-unicast
   distance bgp 20 200 200
   graceful-restart restart-time 300
   graceful-restart
   maximum-paths 2 ecmp 2
   neighbor EVPN-OVERLAY-PEERS peer group
   neighbor EVPN-OVERLAY-PEERS remote-as 65001
   neighbor EVPN-OVERLAY-PEERS update-source Loopback0
   neighbor EVPN-OVERLAY-PEERS bfd
   neighbor EVPN-OVERLAY-PEERS ebgp-multihop 3
   neighbor EVPN-OVERLAY-PEERS password 7 q+VNViP5i4rVjW1cxFv2wA==
   neighbor EVPN-OVERLAY-PEERS send-community
   neighbor EVPN-OVERLAY-PEERS maximum-routes 0
   neighbor IPv4-UNDERLAY-PEERS peer group
   neighbor IPv4-UNDERLAY-PEERS remote-as 65001
   neighbor IPv4-UNDERLAY-PEERS password 7 AQQvKeimxJu+uGQ/yYvv9w==
   neighbor IPv4-UNDERLAY-PEERS send-community
   neighbor IPv4-UNDERLAY-PEERS maximum-routes 12000
   neighbor MLAG-IPv4-UNDERLAY-PEER peer group
   neighbor MLAG-IPv4-UNDERLAY-PEER remote-as 65110
   neighbor MLAG-IPv4-UNDERLAY-PEER next-hop-self
   neighbor MLAG-IPv4-UNDERLAY-PEER password 7 vnEaG8gMeQf3d3cN6PktXQ==
   neighbor MLAG-IPv4-UNDERLAY-PEER send-community
   neighbor MLAG-IPv4-UNDERLAY-PEER maximum-routes 12000
   neighbor 10.255.251.4 peer group MLAG-IPv4-UNDERLAY-PEER
   neighbor 172.30.255.12 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.30.255.14 peer group IPv4-UNDERLAY-PEERS
   neighbor 192.0.255.1 peer group EVPN-OVERLAY-PEERS
   neighbor 192.0.255.2 peer group EVPN-OVERLAY-PEERS
   redistribute connected route-map RM-CONN-2-BGP
   !
   vlan-aware-bundle Tenant_A_OP_Zone
      rd 192.0.255.6:10
      route-target both 10:10
      redistribute learned
      vlan 110
   !
   vlan-aware-bundle Tenant_A_VMOTION
      rd 192.0.255.6:55160
      route-target both 55160:55160
      redistribute learned
      vlan 160
   !
   address-family evpn
      neighbor EVPN-OVERLAY-PEERS activate
      no neighbor IPv4-UNDERLAY-PEERS activate
      no neighbor MLAG-IPv4-UNDERLAY-PEER activate
   !
   address-family ipv4
      no neighbor EVPN-OVERLAY-PEERS activate
      neighbor IPv4-UNDERLAY-PEERS activate
      neighbor MLAG-IPv4-UNDERLAY-PEER activate
   !
   vrf Tenant_A_OP_Zone
      rd 192.0.255.6:10
      route-target import evpn 10:10
      route-target export evpn 10:10
      router-id 192.0.255.6
      neighbor 10.255.251.4 peer group MLAG-IPv4-UNDERLAY-PEER
      redistribute connected
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
