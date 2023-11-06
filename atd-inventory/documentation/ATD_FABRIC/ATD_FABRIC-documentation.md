# ATD_FABRIC

## Table of Contents

- [Fabric Switches and Management IP](#fabric-switches-and-management-ip)
  - [Fabric Switches with inband Management IP](#fabric-switches-with-inband-management-ip)
- [Fabric Topology](#fabric-topology)
- [Fabric IP Allocation](#fabric-ip-allocation)
  - [Fabric Point-To-Point Links](#fabric-point-to-point-links)
  - [Point-To-Point Links Node Allocation](#point-to-point-links-node-allocation)
  - [Loopback Interfaces (BGP EVPN Peering)](#loopback-interfaces-bgp-evpn-peering)
  - [Loopback0 Interfaces Node Allocation](#loopback0-interfaces-node-allocation)
  - [VTEP Loopback VXLAN Tunnel Source Interfaces (VTEPs Only)](#vtep-loopback-vxlan-tunnel-source-interfaces-vteps-only)
  - [VTEP Loopback Node allocation](#vtep-loopback-node-allocation)

## Fabric Switches and Management IP

| POD | Type | Node | Management IP | Platform | Provisioned in CloudVision | Serial Number |
| --- | ---- | ---- | ------------- | -------- | -------------------------- | ------------- |
| ATD_FABRIC | l3leaf | s1-leaf1 | 192.168.0.12/24 | cEOS | Provisioned | - |
| ATD_FABRIC | l3leaf | s1-leaf2 | 192.168.0.13/24 | cEOS | Provisioned | - |
| ATD_FABRIC | l3leaf | s1-leaf3 | 192.168.0.14/24 | cEOS | Provisioned | - |
| ATD_FABRIC | l3leaf | s1-leaf4 | 192.168.0.15/24 | cEOS | Provisioned | - |
| ATD_FABRIC | spine | s1-spine1 | 192.168.0.10/24 | cEOS | Provisioned | - |
| ATD_FABRIC | spine | s1-spine2 | 192.168.0.11/24 | cEOS | Provisioned | - |

> Provision status is based on Ansible inventory declaration and do not represent real status from CloudVision.

### Fabric Switches with inband Management IP

| POD | Type | Node | Management IP | Inband Interface |
| --- | ---- | ---- | ------------- | ---------------- |

## Fabric Topology

| Type | Node | Node Interface | Peer Type | Peer Node | Peer Interface |
| ---- | ---- | -------------- | --------- | ----------| -------------- |
| l3leaf | s1-leaf1 | Ethernet1 | mlag_peer | s1-leaf2 | Ethernet1 |
| l3leaf | s1-leaf1 | Ethernet2 | spine | s1-spine1 | Ethernet2 |
| l3leaf | s1-leaf1 | Ethernet3 | spine | s1-spine2 | Ethernet2 |
| l3leaf | s1-leaf1 | Ethernet6 | mlag_peer | s1-leaf2 | Ethernet6 |
| l3leaf | s1-leaf2 | Ethernet2 | spine | s1-spine1 | Ethernet3 |
| l3leaf | s1-leaf2 | Ethernet3 | spine | s1-spine2 | Ethernet3 |
| l3leaf | s1-leaf3 | Ethernet1 | mlag_peer | s1-leaf4 | Ethernet1 |
| l3leaf | s1-leaf3 | Ethernet2 | spine | s1-spine1 | Ethernet4 |
| l3leaf | s1-leaf3 | Ethernet3 | spine | s1-spine2 | Ethernet4 |
| l3leaf | s1-leaf3 | Ethernet6 | mlag_peer | s1-leaf4 | Ethernet6 |
| l3leaf | s1-leaf4 | Ethernet2 | spine | s1-spine1 | Ethernet5 |
| l3leaf | s1-leaf4 | Ethernet3 | spine | s1-spine2 | Ethernet5 |

## Fabric IP Allocation

### Fabric Point-To-Point Links

| Uplink IPv4 Pool | Available Addresses | Assigned addresses | Assigned Address % |
| ---------------- | ------------------- | ------------------ | ------------------ |
| 172.30.255.0/24 | 256 | 16 | 6.25 % |

### Point-To-Point Links Node Allocation

| Node | Node Interface | Node IP Address | Peer Node | Peer Interface | Peer IP Address |
| ---- | -------------- | --------------- | --------- | -------------- | --------------- |
| s1-leaf1 | Ethernet2 | 172.30.255.1/31 | s1-spine1 | Ethernet2 | 172.30.255.0/31 |
| s1-leaf1 | Ethernet3 | 172.30.255.3/31 | s1-spine2 | Ethernet2 | 172.30.255.2/31 |
| s1-leaf2 | Ethernet2 | 172.30.255.5/31 | s1-spine1 | Ethernet3 | 172.30.255.4/31 |
| s1-leaf2 | Ethernet3 | 172.30.255.7/31 | s1-spine2 | Ethernet3 | 172.30.255.6/31 |
| s1-leaf3 | Ethernet2 | 172.30.255.9/31 | s1-spine1 | Ethernet4 | 172.30.255.8/31 |
| s1-leaf3 | Ethernet3 | 172.30.255.11/31 | s1-spine2 | Ethernet4 | 172.30.255.10/31 |
| s1-leaf4 | Ethernet2 | 172.30.255.13/31 | s1-spine1 | Ethernet5 | 172.30.255.12/31 |
| s1-leaf4 | Ethernet3 | 172.30.255.15/31 | s1-spine2 | Ethernet5 | 172.30.255.14/31 |

### Loopback Interfaces (BGP EVPN Peering)

| Loopback Pool | Available Addresses | Assigned addresses | Assigned Address % |
| ------------- | ------------------- | ------------------ | ------------------ |
| 192.0.255.0/24 | 256 | 6 | 2.35 % |

### Loopback0 Interfaces Node Allocation

| POD | Node | Loopback0 |
| --- | ---- | --------- |
| ATD_FABRIC | s1-leaf1 | 192.0.255.3/32 |
| ATD_FABRIC | s1-leaf2 | 192.0.255.4/32 |
| ATD_FABRIC | s1-leaf3 | 192.0.255.5/32 |
| ATD_FABRIC | s1-leaf4 | 192.0.255.6/32 |
| ATD_FABRIC | s1-spine1 | 192.0.255.1/32 |
| ATD_FABRIC | s1-spine2 | 192.0.255.2/32 |

### VTEP Loopback VXLAN Tunnel Source Interfaces (VTEPs Only)

| VTEP Loopback Pool | Available Addresses | Assigned addresses | Assigned Address % |
| --------------------- | ------------------- | ------------------ | ------------------ |
| 192.0.254.0/24 | 256 | 4 | 1.57 % |

### VTEP Loopback Node allocation

| POD | Node | Loopback1 |
| --- | ---- | --------- |
| ATD_FABRIC | s1-leaf1 | 192.0.254.3/32 |
| ATD_FABRIC | s1-leaf2 | 192.0.254.3/32 |
| ATD_FABRIC | s1-leaf3 | 192.0.254.5/32 |
| ATD_FABRIC | s1-leaf4 | 192.0.254.5/32 |
