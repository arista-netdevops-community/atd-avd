# ATD_FABRIC

# Table of Contents
<!-- toc -->

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

<!-- toc -->
# Fabric Switches and Management IP

| POD | Type | Node | Management IP | Platform | Provisioned in CloudVision |
| --- | ---- | ---- | ------------- | -------- | -------------------------- |
| ATD_FABRIC | l3leaf | leaf1 | 192.168.0.12/24 | vEOS-LAB | Provisioned |
| ATD_FABRIC | l3leaf | leaf2 | 192.168.0.13/24 | vEOS-LAB | Provisioned |
| ATD_FABRIC | l3leaf | leaf3 | 192.168.0.14/24 | vEOS-LAB | Provisioned |
| ATD_FABRIC | l3leaf | leaf4 | 192.168.0.15/24 | vEOS-LAB | Provisioned |
| ATD_FABRIC | spine | spine1 | 192.168.0.10/24 | vEOS-LAB | Provisioned |
| ATD_FABRIC | spine | spine2 | 192.168.0.11/24 | vEOS-LAB | Provisioned |

> Provision status is based on Ansible inventory declaration and do not represent real status from CloudVision.

## Fabric Switches with inband Management IP
| POD | Type | Node | Management IP | Inband Interface |
| --- | ---- | ---- | ------------- | ---------------- |

# Fabric Topology

| Type | Node | Node Interface | Peer Type | Peer Node | Peer Interface |
| ---- | ---- | -------------- | --------- | ----------| -------------- |
| l3leaf | leaf1 | Ethernet1 | mlag_peer | leaf2 | Ethernet1 |
| l3leaf | leaf1 | Ethernet2 | spine | spine1 | Ethernet2 |
| l3leaf | leaf1 | Ethernet3 | spine | spine2 | Ethernet2 |
| l3leaf | leaf2 | Ethernet2 | spine | spine1 | Ethernet3 |
| l3leaf | leaf2 | Ethernet3 | spine | spine2 | Ethernet3 |
| l3leaf | leaf3 | Ethernet1 | mlag_peer | leaf4 | Ethernet1 |
| l3leaf | leaf3 | Ethernet2 | spine | spine1 | Ethernet4 |
| l3leaf | leaf3 | Ethernet3 | spine | spine2 | Ethernet4 |
| l3leaf | leaf4 | Ethernet2 | spine | spine1 | Ethernet5 |
| l3leaf | leaf4 | Ethernet3 | spine | spine2 | Ethernet5 |

# Fabric IP Allocation

## Fabric Point-To-Point Links

| Uplink IPv4 Pool | Available Addresses | Assigned addresses | Assigned Address % |
| ---------------- | ------------------- | ------------------ | ------------------ |
| 172.31.255.0/24 | 256 | 16 | 6.25 % |

## Point-To-Point Links Node Allocation

| Node | Node Interface | Node IP Address | Peer Node | Peer Interface | Peer IP Address |
| ---- | -------------- | --------------- | --------- | -------------- | --------------- |
| leaf1 | Ethernet2 | 172.31.255.1/31 | spine1 | Ethernet2 | 172.31.255.0/31 |
| leaf1 | Ethernet3 | 172.31.255.3/31 | spine2 | Ethernet2 | 172.31.255.2/31 |
| leaf2 | Ethernet2 | 172.31.255.5/31 | spine1 | Ethernet3 | 172.31.255.4/31 |
| leaf2 | Ethernet3 | 172.31.255.7/31 | spine2 | Ethernet3 | 172.31.255.6/31 |
| leaf3 | Ethernet2 | 172.31.255.9/31 | spine1 | Ethernet4 | 172.31.255.8/31 |
| leaf3 | Ethernet3 | 172.31.255.11/31 | spine2 | Ethernet4 | 172.31.255.10/31 |
| leaf4 | Ethernet2 | 172.31.255.13/31 | spine1 | Ethernet5 | 172.31.255.12/31 |
| leaf4 | Ethernet3 | 172.31.255.15/31 | spine2 | Ethernet5 | 172.31.255.14/31 |

## Loopback Interfaces (BGP EVPN Peering)

| Loopback Pool | Available Addresses | Assigned addresses | Assigned Address % |
| ------------- | ------------------- | ------------------ | ------------------ |
| 192.0.255.0/24 | 256 | 6 | 2.35 % |

## Loopback0 Interfaces Node Allocation

| POD | Node | Loopback0 |
| --- | ---- | --------- |
| ATD_FABRIC | leaf1 | 192.0.255.3/32 |
| ATD_FABRIC | leaf2 | 192.0.255.4/32 |
| ATD_FABRIC | leaf3 | 192.0.255.5/32 |
| ATD_FABRIC | leaf4 | 192.0.255.6/32 |
| ATD_FABRIC | spine1 | 192.0.255.1/32 |
| ATD_FABRIC | spine2 | 192.0.255.2/32 |

## VTEP Loopback VXLAN Tunnel Source Interfaces (VTEPs Only)

| VTEP Loopback Pool | Available Addresses | Assigned addresses | Assigned Address % |
| --------------------- | ------------------- | ------------------ | ------------------ |
| 192.0.254.0/24 | 256 | 4 | 1.57 % |

## VTEP Loopback Node allocation

| POD | Node | Loopback1 |
| --- | ---- | --------- |
| ATD_FABRIC | leaf1 | 192.0.254.3/32 |
| ATD_FABRIC | leaf2 | 192.0.254.3/32 |
| ATD_FABRIC | leaf3 | 192.0.254.5/32 |
| ATD_FABRIC | leaf4 | 192.0.254.5/32 |
