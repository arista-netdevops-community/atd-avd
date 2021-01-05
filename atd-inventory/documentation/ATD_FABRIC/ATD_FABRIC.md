# ATD_FABRIC

## Table of Contents

- [ATD_FABRIC](#atdfabric )
  - [Fabric Switches and Management IP](#fabric-switches-and-management-ip)
  - [Fabric Topology](#fabric-topology)
  - [Fabric IP Allocation](#fabric-ip-allocation)
    - [Fabric Point-To-Point Links](#fabric-point-to-point-links)
    - [Point-To-Point Links Node Allocation](#point-to-point-links-node-allocation)
    - [Overlay Loopback Interfaces (BGP EVPN Peering)](#overlay-loopback-interfaces-bgp-evpn-peering)
    - [Loopback0 Interfaces Node Allocation](#loopback0-interfaces-node-allocation)
    - [VTEP Loopback VXLAN Tunnel Source Interfaces (Leafs Only)](#vtep-loopback-vxlan-tunnel-source-interfaces-leafs-only)
    - [VTEP Loopback Node allocation](#vtep-loopback-node-allocation)

## Fabric Switches and Management IP

| Node | Management IP | Platform | Provisioned in Cloudvision |
| ---- | ------------- | -------- | -------------------------- |
| spine1 | 192.168.0.10/24 | vEOS-LAB | Provisioned |
| spine2 | 192.168.0.11/24 | vEOS-LAB | Provisioned |
| leaf1 | 192.168.0.12/24 | vEOS-LAB | Provisioned |
| leaf2 | 192.168.0.13/24 | vEOS-LAB | Provisioned |
| leaf3 | 192.168.0.14/24 | vEOS-LAB | Provisioned |
| leaf4 | 192.168.0.15/24 | vEOS-LAB | Provisioned |

> Provision status is based on Ansible inventory declaration and do not represent real status from Cloudvision.

## Fabric Topology

| Type | Leaf Node | Leaf Interface | Peer Node | Peer Interface |
| ---- | --------- | -------------- | --------- | -------------- |
| L3 Leaf | leaf1 | Ethernet2 | spine1 | Ethernet2 |
| L3 Leaf | leaf1 | Ethernet3 | spine2 | Ethernet2 |
| L3 Leaf | leaf2 | Ethernet2 | spine1 | Ethernet3 |
| L3 Leaf | leaf2 | Ethernet3 | spine2 | Ethernet3 |
| L3 Leaf | leaf3 | Ethernet2 | spine1 | Ethernet4 |
| L3 Leaf | leaf3 | Ethernet3 | spine2 | Ethernet4 |
| L3 Leaf | leaf4 | Ethernet2 | spine1 | Ethernet5 |
| L3 Leaf | leaf4 | Ethernet3 | spine2 | Ethernet5 |

## Fabric IP Allocation

### Fabric Point-To-Point Links

| P2P Summary | Available Addresses | Assigned addresses | Assigned Address % |
| ----------- | ------------------- | ------------------ | ------------------ |
| 172.31.255.0/24 | 256 | 16 | 6.25 % |

### Point-To-Point Links Node Allocation

| Leaf Node | Leaf Interface | Leaf IP Address | Spine Node | Spine Interface | Spine IP Address |
| --------- | -------------- | --------------- | ---------- | --------------- | ---------------- |
| leaf1 | Ethernet2 | 172.31.255.1/31 | spine1 | Ethernet2 | 172.31.255.0/31 |
| leaf1 | Ethernet3 | 172.31.255.3/31 | spine2 | Ethernet2 | 172.31.255.2/31 |
| leaf2 | Ethernet2 | 172.31.255.5/31 | spine1 | Ethernet3 | 172.31.255.4/31 |
| leaf2 | Ethernet3 | 172.31.255.7/31 | spine2 | Ethernet3 | 172.31.255.6/31 |
| leaf3 | Ethernet2 | 172.31.255.9/31 | spine1 | Ethernet4 | 172.31.255.8/31 |
| leaf3 | Ethernet3 | 172.31.255.11/31 | spine2 | Ethernet4 | 172.31.255.10/31 |
| leaf4 | Ethernet2 | 172.31.255.13/31 | spine1 | Ethernet5 | 172.31.255.12/31 |
| leaf4 | Ethernet3 | 172.31.255.15/31 | spine2 | Ethernet5 | 172.31.255.14/31 |

### Overlay Loopback Interfaces (BGP EVPN Peering)

| Overlay Loopback Summary | Available Addresses | Assigned addresses | Assigned Address % |
| ------------------------ | ------------------- | ------------------ | ------------------ |
| 192.0.255.0/24 | 256 | 6 | 2.35 % |

### Loopback0 Interfaces Node Allocation

| Node | Loopback0 |
| ---- | --------- |
| spine1 | 192.0.255.1/32 |
| spine2 | 192.0.255.2/32 |
| leaf1 | 192.0.255.3/32 |
| leaf2 | 192.0.255.4/32 |
| leaf3 | 192.0.255.5/32 |
| leaf4 | 192.0.255.6/32 |

### VTEP Loopback VXLAN Tunnel Source Interfaces (Leafs Only)

| VTEP Loopback Summary | Available Addresses | Assigned addresses | Assigned Address % |
| --------------------- | ------------------- | ------------------ | ------------------ |
| 192.0.254.0/24 | 256 | 4 | 1.57 % |

### VTEP Loopback Node allocation

| Node | Loopback1 |
| ---- | --------- |
| leaf1 | 192.0.254.3/32 |
| leaf2 | 192.0.254.3/32 |
| leaf3 | 192.0.254.5/32 |
| leaf4 | 192.0.254.5/32 |
