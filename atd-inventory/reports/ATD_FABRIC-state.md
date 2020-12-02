
# Validate State Report

**Table of Contents:**

- [Validate State Report](validate-state-report)
  - [Test Results Summary](#test-results-summary)
  - [Failed Test Results Summary](#failed-test-results-summary)
  - [All Test Results](#all-test-results)

## Test Results Summary

### Summary Totals

| Total Tests | Total Tests Passed | Total Tests Failed |
| ----------- | ------------------ | ------------------ |
| 138 | 132 | 6 |

### Summary Totals Devices Under Tests

| DUT | Total Tests | Tests Passed | Tests Failed | Categories Failed |
| --- | ----------- | ------------ | ------------ | ----------------- |
| leaf1 |  25 | 24 | 1 | NTP |
| leaf2 |  25 | 24 | 1 | NTP |
| leaf3 |  25 | 24 | 1 | NTP |
| leaf4 |  25 | 24 | 1 | NTP |
| spine1 |  19 | 18 | 1 | NTP |
| spine2 |  19 | 18 | 1 | NTP |

### Summary Totals Per Category

| Test Category | Total Tests | Tests Passed | Tests Failed |
| ------------- | ----------- | ------------ | ------------ |
| NTP |  6 | 0 | 6 |
| Interface State |  70 | 70 | 0 |
| MLAG |  4 | 4 | 0 |
| IP Reachability |  16 | 16 | 0 |
| BGP |  42 | 42 | 0 |

## Failed Test Results Summary

| Test ID | Node | Test Category | Test Description | Test | Test Result | Failure Reason |
| ------- | ---- | ------------- | ---------------- | ---- | ----------- | -------------- |
| 1 | leaf1 | NTP | Synchronised with NTP server | NTP | :x: | The conditional check 'ntp_status.stdout[0] | regex_search("synchronised to NTP server")' failed. The error was: Unexpected templating type error occurred on ({% if ntp_status.stdout[0] | regex_search("synchronised to NTP server") %} True {% else %} False {% endif %}): expected string or bytes-like object |
| 2 | leaf2 | NTP | Synchronised with NTP server | NTP | :x: | The conditional check 'ntp_status.stdout[0] | regex_search("synchronised to NTP server")' failed. The error was: Unexpected templating type error occurred on ({% if ntp_status.stdout[0] | regex_search("synchronised to NTP server") %} True {% else %} False {% endif %}): expected string or bytes-like object |
| 3 | leaf3 | NTP | Synchronised with NTP server | NTP | :x: | The conditional check 'ntp_status.stdout[0] | regex_search("synchronised to NTP server")' failed. The error was: Unexpected templating type error occurred on ({% if ntp_status.stdout[0] | regex_search("synchronised to NTP server") %} True {% else %} False {% endif %}): expected string or bytes-like object |
| 4 | leaf4 | NTP | Synchronised with NTP server | NTP | :x: | The conditional check 'ntp_status.stdout[0] | regex_search("synchronised to NTP server")' failed. The error was: Unexpected templating type error occurred on ({% if ntp_status.stdout[0] | regex_search("synchronised to NTP server") %} True {% else %} False {% endif %}): expected string or bytes-like object |
| 5 | spine1 | NTP | Synchronised with NTP server | NTP | :x: | The conditional check 'ntp_status.stdout[0] | regex_search("synchronised to NTP server")' failed. The error was: Unexpected templating type error occurred on ({% if ntp_status.stdout[0] | regex_search("synchronised to NTP server") %} True {% else %} False {% endif %}): expected string or bytes-like object |
| 6 | spine2 | NTP | Synchronised with NTP server | NTP | :x: | The conditional check 'ntp_status.stdout[0] | regex_search("synchronised to NTP server")' failed. The error was: Unexpected templating type error occurred on ({% if ntp_status.stdout[0] | regex_search("synchronised to NTP server") %} True {% else %} False {% endif %}): expected string or bytes-like object |

## All Test Results

| Test ID | Node | Test Category | Test Description | Test | Test Result | Failure Reason |
| ------- | ---- | ------------- | ---------------- | ---- | ----------- | -------------- |
| 1 | leaf1 | NTP | Synchronised with NTP server | NTP | :x: | The conditional check 'ntp_status.stdout[0] | regex_search("synchronised to NTP server")' failed. The error was: Unexpected templating type error occurred on ({% if ntp_status.stdout[0] | regex_search("synchronised to NTP server") %} True {% else %} False {% endif %}): expected string or bytes-like object |
| 2 | leaf2 | NTP | Synchronised with NTP server | NTP | :x: | The conditional check 'ntp_status.stdout[0] | regex_search("synchronised to NTP server")' failed. The error was: Unexpected templating type error occurred on ({% if ntp_status.stdout[0] | regex_search("synchronised to NTP server") %} True {% else %} False {% endif %}): expected string or bytes-like object |
| 3 | leaf3 | NTP | Synchronised with NTP server | NTP | :x: | The conditional check 'ntp_status.stdout[0] | regex_search("synchronised to NTP server")' failed. The error was: Unexpected templating type error occurred on ({% if ntp_status.stdout[0] | regex_search("synchronised to NTP server") %} True {% else %} False {% endif %}): expected string or bytes-like object |
| 4 | leaf4 | NTP | Synchronised with NTP server | NTP | :x: | The conditional check 'ntp_status.stdout[0] | regex_search("synchronised to NTP server")' failed. The error was: Unexpected templating type error occurred on ({% if ntp_status.stdout[0] | regex_search("synchronised to NTP server") %} True {% else %} False {% endif %}): expected string or bytes-like object |
| 5 | spine1 | NTP | Synchronised with NTP server | NTP | :x: | The conditional check 'ntp_status.stdout[0] | regex_search("synchronised to NTP server")' failed. The error was: Unexpected templating type error occurred on ({% if ntp_status.stdout[0] | regex_search("synchronised to NTP server") %} True {% else %} False {% endif %}): expected string or bytes-like object |
| 6 | spine2 | NTP | Synchronised with NTP server | NTP | :x: | The conditional check 'ntp_status.stdout[0] | regex_search("synchronised to NTP server")' failed. The error was: Unexpected templating type error occurred on ({% if ntp_status.stdout[0] | regex_search("synchronised to NTP server") %} True {% else %} False {% endif %}): expected string or bytes-like object |
| 7 | leaf1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_SPINE1_Ethernet2 | :white_check_mark: |  |
| 8 | leaf1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_SPINE2_Ethernet2 | :white_check_mark: |  |
| 9 | leaf1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - MLAG_PEER_leaf2_Ethernet1 | :white_check_mark: |  |
| 10 | leaf1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - host1_Eth1 | :white_check_mark: |  |
| 11 | leaf1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - host1_Eth2 | :white_check_mark: |  |
| 12 | leaf2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_SPINE1_Ethernet3 | :white_check_mark: |  |
| 13 | leaf2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_SPINE2_Ethernet3 | :white_check_mark: |  |
| 14 | leaf2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - MLAG_PEER_leaf1_Ethernet1 | :white_check_mark: |  |
| 15 | leaf2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - host1_Eth3 | :white_check_mark: |  |
| 16 | leaf2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - host1_Eth4 | :white_check_mark: |  |
| 17 | leaf3 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_SPINE1_Ethernet4 | :white_check_mark: |  |
| 18 | leaf3 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_SPINE2_Ethernet4 | :white_check_mark: |  |
| 19 | leaf3 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - MLAG_PEER_leaf4_Ethernet1 | :white_check_mark: |  |
| 20 | leaf3 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - host2_Eth1 | :white_check_mark: |  |
| 21 | leaf3 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - host2_Eth2 | :white_check_mark: |  |
| 22 | leaf4 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_SPINE1_Ethernet5 | :white_check_mark: |  |
| 23 | leaf4 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_SPINE2_Ethernet5 | :white_check_mark: |  |
| 24 | leaf4 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - MLAG_PEER_leaf3_Ethernet1 | :white_check_mark: |  |
| 25 | leaf4 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - host2_Eth3 | :white_check_mark: |  |
| 26 | leaf4 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - host2_Eth4 | :white_check_mark: |  |
| 27 | spine1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_LEAF1_Ethernet2 | :white_check_mark: |  |
| 28 | spine1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_LEAF2_Ethernet2 | :white_check_mark: |  |
| 29 | spine1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_LEAF3_Ethernet2 | :white_check_mark: |  |
| 30 | spine1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - P2P_LINK_TO_LEAF4_Ethernet2 | :white_check_mark: |  |
| 31 | spine2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_LEAF1_Ethernet3 | :white_check_mark: |  |
| 32 | spine2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_LEAF2_Ethernet3 | :white_check_mark: |  |
| 33 | spine2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_LEAF3_Ethernet3 | :white_check_mark: |  |
| 34 | spine2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - P2P_LINK_TO_LEAF4_Ethernet3 | :white_check_mark: |  |
| 35 | leaf1 | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel1 - MLAG_PEER_leaf2_Po1 | :white_check_mark: |  |
| 36 | leaf1 | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel4 - host1_PortChanne1 | :white_check_mark: |  |
| 37 | leaf2 | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel1 - MLAG_PEER_leaf1_Po1 | :white_check_mark: |  |
| 38 | leaf2 | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel4 - host1_PortChanne1 | :white_check_mark: |  |
| 39 | leaf3 | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel1 - MLAG_PEER_leaf4_Po1 | :white_check_mark: |  |
| 40 | leaf3 | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel4 - host2_PortChanne1 | :white_check_mark: |  |
| 41 | leaf4 | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel1 - MLAG_PEER_leaf3_Po1 | :white_check_mark: |  |
| 42 | leaf4 | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel4 - host2_PortChanne1 | :white_check_mark: |  |
| 43 | leaf1 | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | :white_check_mark: |  |
| 44 | leaf1 | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | :white_check_mark: |  |
| 45 | leaf1 | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - Tenant_A_OP_Zone_1 | :white_check_mark: |  |
| 46 | leaf1 | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3009 - MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone | :white_check_mark: |  |
| 47 | leaf2 | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | :white_check_mark: |  |
| 48 | leaf2 | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | :white_check_mark: |  |
| 49 | leaf2 | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - Tenant_A_OP_Zone_1 | :white_check_mark: |  |
| 50 | leaf2 | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3009 - MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone | :white_check_mark: |  |
| 51 | leaf3 | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | :white_check_mark: |  |
| 52 | leaf3 | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | :white_check_mark: |  |
| 53 | leaf3 | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - Tenant_A_OP_Zone_1 | :white_check_mark: |  |
| 54 | leaf3 | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3009 - MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone | :white_check_mark: |  |
| 55 | leaf4 | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | :white_check_mark: |  |
| 56 | leaf4 | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | :white_check_mark: |  |
| 57 | leaf4 | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - Tenant_A_OP_Zone_1 | :white_check_mark: |  |
| 58 | leaf4 | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3009 - MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone | :white_check_mark: |  |
| 59 | leaf1 | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | :white_check_mark: |  |
| 60 | leaf2 | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | :white_check_mark: |  |
| 61 | leaf3 | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | :white_check_mark: |  |
| 62 | leaf4 | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | :white_check_mark: |  |
| 63 | leaf1 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | :white_check_mark: |  |
| 64 | leaf1 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | :white_check_mark: |  |
| 65 | leaf1 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | :white_check_mark: |  |
| 66 | leaf2 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | :white_check_mark: |  |
| 67 | leaf2 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | :white_check_mark: |  |
| 68 | leaf2 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | :white_check_mark: |  |
| 69 | leaf3 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | :white_check_mark: |  |
| 70 | leaf3 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | :white_check_mark: |  |
| 71 | leaf3 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | :white_check_mark: |  |
| 72 | leaf4 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | :white_check_mark: |  |
| 73 | leaf4 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | :white_check_mark: |  |
| 74 | leaf4 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | :white_check_mark: |  |
| 75 | spine1 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | :white_check_mark: |  |
| 76 | spine2 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | :white_check_mark: |  |
| 77 | leaf1 | MLAG | MLAG State active & Status connected | MLAG | :white_check_mark: |  |
| 78 | leaf2 | MLAG | MLAG State active & Status connected | MLAG | :white_check_mark: |  |
| 79 | leaf3 | MLAG | MLAG State active & Status connected | MLAG | :white_check_mark: |  |
| 80 | leaf4 | MLAG | MLAG State active & Status connected | MLAG | :white_check_mark: |  |
| 81 | leaf1 | IP Reachability | ip reachability test p2p links | Source: leaf1_Ethernet2 - Destination: spine1_Ethernet2 | :white_check_mark: |  |
| 82 | leaf1 | IP Reachability | ip reachability test p2p links | Source: leaf1_Ethernet3 - Destination: spine2_Ethernet2 | :white_check_mark: |  |
| 83 | leaf2 | IP Reachability | ip reachability test p2p links | Source: leaf2_Ethernet2 - Destination: spine1_Ethernet3 | :white_check_mark: |  |
| 84 | leaf2 | IP Reachability | ip reachability test p2p links | Source: leaf2_Ethernet3 - Destination: spine2_Ethernet3 | :white_check_mark: |  |
| 85 | leaf3 | IP Reachability | ip reachability test p2p links | Source: leaf3_Ethernet2 - Destination: spine1_Ethernet4 | :white_check_mark: |  |
| 86 | leaf3 | IP Reachability | ip reachability test p2p links | Source: leaf3_Ethernet3 - Destination: spine2_Ethernet4 | :white_check_mark: |  |
| 87 | leaf4 | IP Reachability | ip reachability test p2p links | Source: leaf4_Ethernet2 - Destination: spine1_Ethernet5 | :white_check_mark: |  |
| 88 | leaf4 | IP Reachability | ip reachability test p2p links | Source: leaf4_Ethernet3 - Destination: spine2_Ethernet5 | :white_check_mark: |  |
| 89 | spine1 | IP Reachability | ip reachability test p2p links | Source: spine1_Ethernet2 - Destination: leaf1_Ethernet2 | :white_check_mark: |  |
| 90 | spine1 | IP Reachability | ip reachability test p2p links | Source: spine1_Ethernet3 - Destination: leaf2_Ethernet2 | :white_check_mark: |  |
| 91 | spine1 | IP Reachability | ip reachability test p2p links | Source: spine1_Ethernet4 - Destination: leaf3_Ethernet2 | :white_check_mark: |  |
| 92 | spine1 | IP Reachability | ip reachability test p2p links | Source: spine1_Ethernet5 - Destination: leaf4_Ethernet2 | :white_check_mark: |  |
| 93 | spine2 | IP Reachability | ip reachability test p2p links | Source: spine2_Ethernet2 - Destination: leaf1_Ethernet3 | :white_check_mark: |  |
| 94 | spine2 | IP Reachability | ip reachability test p2p links | Source: spine2_Ethernet3 - Destination: leaf2_Ethernet3 | :white_check_mark: |  |
| 95 | spine2 | IP Reachability | ip reachability test p2p links | Source: spine2_Ethernet4 - Destination: leaf3_Ethernet3 | :white_check_mark: |  |
| 96 | spine2 | IP Reachability | ip reachability test p2p links | Source: spine2_Ethernet5 - Destination: leaf4_Ethernet3 | :white_check_mark: |  |
| 97 | leaf1 | BGP | ArBGP is configured and operating | ArBGP | :white_check_mark: |  |
| 98 | leaf2 | BGP | ArBGP is configured and operating | ArBGP | :white_check_mark: |  |
| 99 | leaf3 | BGP | ArBGP is configured and operating | ArBGP | :white_check_mark: |  |
| 100 | leaf4 | BGP | ArBGP is configured and operating | ArBGP | :white_check_mark: |  |
| 101 | spine1 | BGP | ArBGP is configured and operating | ArBGP | :white_check_mark: |  |
| 102 | spine2 | BGP | ArBGP is configured and operating | ArBGP | :white_check_mark: |  |
| 103 | leaf1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.0 | :white_check_mark: |  |
| 104 | leaf1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.2 | :white_check_mark: |  |
| 105 | leaf1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.251.1 | :white_check_mark: |  |
| 106 | leaf2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.4 | :white_check_mark: |  |
| 107 | leaf2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.6 | :white_check_mark: |  |
| 108 | leaf2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.251.0 | :white_check_mark: |  |
| 109 | leaf3 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.8 | :white_check_mark: |  |
| 110 | leaf3 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.10 | :white_check_mark: |  |
| 111 | leaf3 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.251.5 | :white_check_mark: |  |
| 112 | leaf4 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.12 | :white_check_mark: |  |
| 113 | leaf4 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.14 | :white_check_mark: |  |
| 114 | leaf4 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.251.4 | :white_check_mark: |  |
| 115 | spine1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.1 | :white_check_mark: |  |
| 116 | spine1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.5 | :white_check_mark: |  |
| 117 | spine1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.9 | :white_check_mark: |  |
| 118 | spine1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.13 | :white_check_mark: |  |
| 119 | spine2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.3 | :white_check_mark: |  |
| 120 | spine2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.7 | :white_check_mark: |  |
| 121 | spine2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.11 | :white_check_mark: |  |
| 122 | spine2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.15 | :white_check_mark: |  |
| 123 | leaf1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.0.255.1 | :white_check_mark: |  |
| 124 | leaf1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.0.255.2 | :white_check_mark: |  |
| 125 | leaf2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.0.255.1 | :white_check_mark: |  |
| 126 | leaf2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.0.255.2 | :white_check_mark: |  |
| 127 | leaf3 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.0.255.1 | :white_check_mark: |  |
| 128 | leaf3 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.0.255.2 | :white_check_mark: |  |
| 129 | leaf4 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.0.255.1 | :white_check_mark: |  |
| 130 | leaf4 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.0.255.2 | :white_check_mark: |  |
| 131 | spine1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.0.255.3 | :white_check_mark: |  |
| 132 | spine1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.0.255.4 | :white_check_mark: |  |
| 133 | spine1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.0.255.5 | :white_check_mark: |  |
| 134 | spine1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.0.255.6 | :white_check_mark: |  |
| 135 | spine2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.0.255.3 | :white_check_mark: |  |
| 136 | spine2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.0.255.4 | :white_check_mark: |  |
| 137 | spine2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.0.255.5 | :white_check_mark: |  |
| 138 | spine2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.0.255.6 | :white_check_mark: |  |
