![Arista CVP Automation](https://img.shields.io/badge/Arista-CVP%20Automation-blue) ![Arista EOS Automation](https://img.shields.io/badge/Arista-EOS%20Automation-blue)

# AVD Arista Validated Design for Arista Test Drive

## About

This repository is configured to run [`arista.cvp`](https://github.com/aristanetworks/ansible-cvp) & [`arista.avd`](https://github.com/aristanetworks/ansible-avd) ansible collections against the Arista Test Drive (ATD) Topology.

<p align="center">
  <img src='docs/imgs/cv_ansible_logo.png' alt='Arista CloudVision and Ansible'/>
</p>

To access an Arista Test Drive topology, please contact your Arista representative.

## Lab Topology

The ATD Lab topology consists of 2 Spines, 4 Leafs and 2 Hosts, as shown below.

<p align="center">
  <img src="docs/imgs/atd-topo.png" alt="ATD Lab Topology" width="600"/>
</p>

## ATD Topology Device List

| Device | IP Address   |
| ------ | ------------ |
| spine1 |192.168.0.10 |
| spine2 |192.168.0.11 |
| leaf1  |192.168.0.12 |
| leaf2  |192.168.0.13 |
| leaf3  |192.168.0.14 |
| leaf4  |192.168.0.15 |
| host1  |192.168.0.16 |
| host2  |192.168.0.17 |

> Current repository is built with cEOS management interface (`Management0`). If you run a vEOS topology, please update `mgmt_interface` field to `Management1` in [inventory](./atd-inventory/group_vars/ATD_LAB.yml)

## Getting Started

Connect to your ATD Lab environment.  If you need an ATD Lab instance, please contact your local account team.  Once connected to the ATD Lab instance, select the Programmability IDE.  This container is built with all the necessary requirements and python modules to run AVD playbooks.


```shell
# Setup your git global config (optional)
git config --global user.email "you@example.com"
git config --global user.name "Your Name"

# Run Script to setup environment
curl -fsSL https://get.avd.sh/atd/install.sh | sh

# Move to directory
cd labfiles/arista-ansible/atd-avd

# Update Inventory with Lab Credentials
edit credentials in vscode: atd-avd/atd-inventory/inventory.yml

# Run Playbook to Prepare CloudVision for AVD
$ ansible-playbook playbooks/atd-prepare-lab.yml

# Execute Tasks in CVP manually

# Run Playbook to Deploy AVD Setup
$ ansible-playbook playbooks/atd-fabric-deploy.yml

# Execute Tasks in CVP manually

# Run audit playbook to validate Fabric states
$ ansible-playbook playbooks/atd-validate-states.yml

# Execute EOS_SNAPSHOT role to collect show commands
$ ansible-playbook playbooks/atd-snapshot.yml
```

## Step by Step walkthrough

A complete [step-by-step guide](./DEMO.md) is available

## Resources

- [Arista Ansible AVD Collection](https://github.com/aristanetworks/ansible-avd)
- [Arista Cloudvision Collection](https://github.com/aristanetworks/ansible-cvp)
- [Arista AVD public documentation](https://www.avd.sh)

## License

Project is published under [Apache License]().
