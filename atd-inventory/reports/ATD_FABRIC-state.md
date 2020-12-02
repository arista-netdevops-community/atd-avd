
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
| 1 | leaf1 | NTP | Synchronised with NTP server | NTP | FAIL | The conditional check 'ntp_status.stdout[0] | regex_search("synchronised to NTP server")' failed. The error was: Unexpected templating type error occurred on ({% if ntp_status.stdout[0] | regex_search("synchronised to NTP server") %} True {% else %} False {% endif %}): expected string or bytes-like object |
| 2 | leaf2 | NTP | Synchronised with NTP server | NTP | FAIL | The conditional check 'ntp_status.stdout[0] | regex_search("synchronised to NTP server")' failed. The error was: Unexpected templating type error occurred on ({% if ntp_status.stdout[0] | regex_search("synchronised to NTP server") %} True {% else %} False {% endif %}): expected string or bytes-like object |
| 3 | leaf3 | NTP | Synchronised with NTP server | NTP | FAIL | The conditional check 'ntp_status.stdout[0] | regex_search("synchronised to NTP server")' failed. The error was: Unexpected templating type error occurred on ({% if ntp_status.stdout[0] | regex_search("synchronised to NTP server") %} True {% else %} False {% endif %}): expected string or bytes-like object |
| 4 | leaf4 | NTP | Synchronised with NTP server | NTP | FAIL | The conditional check 'ntp_status.stdout[0] | regex_search("synchronised to NTP server")' failed. The error was: Unexpected templating type error occurred on ({% if ntp_status.stdout[0] | regex_search("synchronised to NTP server") %} True {% else %} False {% endif %}): expected string or bytes-like object |
| 5 | spine1 | NTP | Synchronised with NTP server | NTP | FAIL | The conditional check 'ntp_status.stdout[0] | regex_search("synchronised to NTP server")' failed. The error was: Unexpected templating type error occurred on ({% if ntp_status.stdout[0] | regex_search("synchronised to NTP server") %} True {% else %} False {% endif %}): expected string or bytes-like object |
| 6 | spine2 | NTP | Synchronised with NTP server | NTP | FAIL | The conditional check 'ntp_status.stdout[0] | regex_search("synchronised to NTP server")' failed. The error was: Unexpected templating type error occurred on ({% if ntp_status.stdout[0] | regex_search("synchronised to NTP server") %} True {% else %} False {% endif %}): expected string or bytes-like object |

## All Test Results

| Test ID | Node | Test Category | Test Description | Test | Test Result | Failure Reason |
| ------- | ---- | ------------- | ---------------- | ---- | ----------- | -------------- |
| 1 | leaf1 | NTP | Synchronised with NTP server | NTP | FAIL | The conditional check 'ntp_status.stdout[0] | regex_search("synchronised to NTP server")' failed. The error was: Unexpected templating type error occurred on ({% if ntp_status.stdout[0] | regex_search("synchronised to NTP server") %} True {% else %} False {% endif %}): expected string or bytes-like object |
| 2 | leaf2 | NTP | Synchronised with NTP server | NTP | FAIL | The conditional check 'ntp_status.stdout[0] | regex_search("synchronised to NTP server")' failed. The error was: Unexpected templating type error occurred on ({% if ntp_status.stdout[0] | regex_search("synchronised to NTP server") %} True {% else %} False {% endif %}): expected string or bytes-like object |
| 3 | leaf3 | NTP | Synchronised with NTP server | NTP | FAIL | The conditional check 'ntp_status.stdout[0] | regex_search("synchronised to NTP server")' failed. The error was: Unexpected templating type error occurred on ({% if ntp_status.stdout[0] | regex_search("synchronised to NTP server") %} True {% else %} False {% endif %}): expected string or bytes-like object |
| 4 | leaf4 | NTP | Synchronised with NTP server | NTP | FAIL | The conditional check 'ntp_status.stdout[0] | regex_search("synchronised to NTP server")' failed. The error was: Unexpected templating type error occurred on ({% if ntp_status.stdout[0] | regex_search("synchronised to NTP server") %} True {% else %} False {% endif %}): expected string or bytes-like object |
| 5 | spine1 | NTP | Synchronised with NTP server | NTP | FAIL | The conditional check 'ntp_status.stdout[0] | regex_search("synchronised to NTP server")' failed. The error was: Unexpected templating type error occurred on ({% if ntp_status.stdout[0] | regex_search("synchronised to NTP server") %} True {% else %} False {% endif %}): expected string or bytes-like object |
| 6 | spine2 | NTP | Synchronised with NTP server | NTP | FAIL | The conditional check 'ntp_status.stdout[0] | regex_search("synchronised to NTP server")' failed. The error was: Unexpected templating type error occurred on ({% if ntp_status.stdout[0] | regex_search("synchronised to NTP server") %} True {% else %} False {% endif %}): expected string or bytes-like object |
| 7 | leaf1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_SPINE1_Ethernet2 | PASS |  |
| 8 | leaf1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_SPINE2_Ethernet2 | PASS |  |
| 9 | leaf1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - MLAG_PEER_leaf2_Ethernet1 | PASS |  |
| 10 | leaf1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - host1_Eth1 | PASS |  |
| 11 | leaf1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - host1_Eth2 | PASS |  |
| 12 | leaf2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_SPINE1_Ethernet3 | PASS |  |
| 13 | leaf2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_SPINE2_Ethernet3 | PASS |  |
| 14 | leaf2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - MLAG_PEER_leaf1_Ethernet1 | PASS |  |
| 15 | leaf2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - host1_Eth3 | PASS |  |
| 16 | leaf2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - host1_Eth4 | PASS |  |
| 17 | leaf3 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_SPINE1_Ethernet4 | PASS |  |
| 18 | leaf3 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_SPINE2_Ethernet4 | PASS |  |
| 19 | leaf3 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - MLAG_PEER_leaf4_Ethernet1 | PASS |  |
| 20 | leaf3 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - host2_Eth1 | PASS |  |
| 21 | leaf3 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - host2_Eth2 | PASS |  |
| 22 | leaf4 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_SPINE1_Ethernet5 | PASS |  |
| 23 | leaf4 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_SPINE2_Ethernet5 | PASS |  |
| 24 | leaf4 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - MLAG_PEER_leaf3_Ethernet1 | PASS |  |
| 25 | leaf4 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - host2_Eth3 | PASS |  |
| 26 | leaf4 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - host2_Eth4 | PASS |  |
| 27 | spine1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_LEAF1_Ethernet2 | PASS |  |
| 28 | spine1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_LEAF2_Ethernet2 | PASS |  |
| 29 | spine1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_LEAF3_Ethernet2 | PASS |  |
| 30 | spine1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - P2P_LINK_TO_LEAF4_Ethernet2 | PASS |  |
| 31 | spine2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_LEAF1_Ethernet3 | PASS |  |
| 32 | spine2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_LEAF2_Ethernet3 | PASS |  |
| 33 | spine2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_LEAF3_Ethernet3 | PASS |  |
| 34 | spine2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - P2P_LINK_TO_LEAF4_Ethernet3 | PASS |  |
| 35 | leaf1 | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel1 - MLAG_PEER_leaf2_Po1 | PASS |  |
| 36 | leaf1 | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel4 - host1_PortChanne1 | PASS |  |
| 37 | leaf2 | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel1 - MLAG_PEER_leaf1_Po1 | PASS |  |
| 38 | leaf2 | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel4 - host1_PortChanne1 | PASS |  |
| 39 | leaf3 | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel1 - MLAG_PEER_leaf4_Po1 | PASS |  |
| 40 | leaf3 | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel4 - host2_PortChanne1 | PASS |  |
| 41 | leaf4 | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel1 - MLAG_PEER_leaf3_Po1 | PASS |  |
| 42 | leaf4 | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel4 - host2_PortChanne1 | PASS |  |
| 43 | leaf1 | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS |  |
| 44 | leaf1 | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS |  |
| 45 | leaf1 | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - Tenant_A_OP_Zone_1 | PASS |  |
| 46 | leaf1 | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3009 - MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone | PASS |  |
| 47 | leaf2 | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS |  |
| 48 | leaf2 | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS |  |
| 49 | leaf2 | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - Tenant_A_OP_Zone_1 | PASS |  |
| 50 | leaf2 | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3009 - MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone | PASS |  |
| 51 | leaf3 | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS |  |
| 52 | leaf3 | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS |  |
| 53 | leaf3 | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - Tenant_A_OP_Zone_1 | PASS |  |
| 54 | leaf3 | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3009 - MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone | PASS |  |
| 55 | leaf4 | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS |  |
| 56 | leaf4 | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS |  |
| 57 | leaf4 | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - Tenant_A_OP_Zone_1 | PASS |  |
| 58 | leaf4 | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3009 - MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone | PASS |  |
| 59 | leaf1 | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS |  |
| 60 | leaf2 | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS |  |
| 61 | leaf3 | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS |  |
| 62 | leaf4 | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS |  |
| 63 | leaf1 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 64 | leaf1 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 65 | leaf1 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | PASS |  |
| 66 | leaf2 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 67 | leaf2 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 68 | leaf2 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | PASS |  |
| 69 | leaf3 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 70 | leaf3 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 71 | leaf3 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | PASS |  |
| 72 | leaf4 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 73 | leaf4 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 74 | leaf4 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | PASS |  |
| 75 | spine1 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 76 | spine2 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 77 | leaf1 | MLAG | MLAG State active & Status connected | MLAG | PASS |  |
| 78 | leaf2 | MLAG | MLAG State active & Status connected | MLAG | PASS |  |
| 79 | leaf3 | MLAG | MLAG State active & Status connected | MLAG | PASS |  |
| 80 | leaf4 | MLAG | MLAG State active & Status connected | MLAG | PASS |  |
| 81 | leaf1 | IP Reachability | ip reachability test p2p links | Source: leaf1_Ethernet2 - Destination: spine1_Ethernet2 | PASS |  |
| 82 | leaf1 | IP Reachability | ip reachability test p2p links | Source: leaf1_Ethernet3 - Destination: spine2_Ethernet2 | PASS |  |
| 83 | leaf2 | IP Reachability | ip reachability test p2p links | Source: leaf2_Ethernet2 - Destination: spine1_Ethernet3 | PASS |  |
| 84 | leaf2 | IP Reachability | ip reachability test p2p links | Source: leaf2_Ethernet3 - Destination: spine2_Ethernet3 | PASS |  |
| 85 | leaf3 | IP Reachability | ip reachability test p2p links | Source: leaf3_Ethernet2 - Destination: spine1_Ethernet4 | PASS |  |
| 86 | leaf3 | IP Reachability | ip reachability test p2p links | Source: leaf3_Ethernet3 - Destination: spine2_Ethernet4 | PASS |  |
| 87 | leaf4 | IP Reachability | ip reachability test p2p links | Source: leaf4_Ethernet2 - Destination: spine1_Ethernet5 | PASS |  |
| 88 | leaf4 | IP Reachability | ip reachability test p2p links | Source: leaf4_Ethernet3 - Destination: spine2_Ethernet5 | PASS |  |
| 89 | spine1 | IP Reachability | ip reachability test p2p links | Source: spine1_Ethernet2 - Destination: leaf1_Ethernet2 | PASS |  |
| 90 | spine1 | IP Reachability | ip reachability test p2p links | Source: spine1_Ethernet3 - Destination: leaf2_Ethernet2 | PASS |  |
| 91 | spine1 | IP Reachability | ip reachability test p2p links | Source: spine1_Ethernet4 - Destination: leaf3_Ethernet2 | PASS |  |
| 92 | spine1 | IP Reachability | ip reachability test p2p links | Source: spine1_Ethernet5 - Destination: leaf4_Ethernet2 | PASS |  |
| 93 | spine2 | IP Reachability | ip reachability test p2p links | Source: spine2_Ethernet2 - Destination: leaf1_Ethernet3 | PASS |  |
| 94 | spine2 | IP Reachability | ip reachability test p2p links | Source: spine2_Ethernet3 - Destination: leaf2_Ethernet3 | PASS |  |
| 95 | spine2 | IP Reachability | ip reachability test p2p links | Source: spine2_Ethernet4 - Destination: leaf3_Ethernet3 | PASS |  |
| 96 | spine2 | IP Reachability | ip reachability test p2p links | Source: spine2_Ethernet5 - Destination: leaf4_Ethernet3 | PASS |  |
| 97 | leaf1 | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 98 | leaf2 | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 99 | leaf3 | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 100 | leaf4 | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 101 | spine1 | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 102 | spine2 | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 103 | leaf1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.0 | PASS |  |
| 104 | leaf1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.2 | PASS |  |
| 105 | leaf1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.251.1 | PASS |  |
| 106 | leaf2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.4 | PASS |  |
| 107 | leaf2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.6 | PASS |  |
| 108 | leaf2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.251.0 | PASS |  |
| 109 | leaf3 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.8 | PASS |  |
| 110 | leaf3 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.10 | PASS |  |
| 111 | leaf3 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.251.5 | PASS |  |
| 112 | leaf4 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.12 | PASS |  |
| 113 | leaf4 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.14 | PASS |  |
| 114 | leaf4 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.251.4 | PASS |  |
| 115 | spine1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.1 | PASS |  |
| 116 | spine1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.5 | PASS |  |
| 117 | spine1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.9 | PASS |  |
| 118 | spine1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.13 | PASS |  |
| 119 | spine2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.3 | PASS |  |
| 120 | spine2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.7 | PASS |  |
| 121 | spine2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.11 | PASS |  |
| 122 | spine2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.15 | PASS |  |
| 123 | leaf1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.0.255.1 | PASS |  |
| 124 | leaf1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.0.255.2 | PASS |  |
| 125 | leaf2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.0.255.1 | PASS |  |
| 126 | leaf2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.0.255.2 | PASS |  |
| 127 | leaf3 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.0.255.1 | PASS |  |
| 128 | leaf3 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.0.255.2 | PASS |  |
| 129 | leaf4 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.0.255.1 | PASS |  |
| 130 | leaf4 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.0.255.2 | PASS |  |
| 131 | spine1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.0.255.3 | PASS |  |
| 132 | spine1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.0.255.4 | PASS |  |
| 133 | spine1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.0.255.5 | PASS |  |
| 134 | spine1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.0.255.6 | PASS |  |
| 135 | spine2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.0.255.3 | PASS |  |
| 136 | spine2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.0.255.4 | PASS |  |
| 137 | spine2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.0.255.5 | PASS |  |
| 138 | spine2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.0.255.6 | PASS |  |