![Arista CVP Automation](https://img.shields.io/badge/Arista-CVP%20Automation-blue) ![Arista EOS Automation](https://img.shields.io/badge/Arista-EOS%20Automation-blue)

# atd-avd - WORK IN PROGRESS

# Arista Test Drive (ATD) - Arista Validated Design (AVD)

## About

This repository is configured to run [`arista.cvp`](https://github.com/aristanetworks/ansible-cvp) & [`arista.avd`](https://github.com/aristanetworks/ansible-avd) ansible collections against the Arista Test Drive (ATD) Topology.

<p align="center">
  <img src='docs/imgs/cv_ansible_logo.png' alt='Arista CloudVision and Ansible'/>
</p>

Arista Test Drive + Ansible AVD Examples

## Lab Topology

The ATD Lab topology consists of 2 Spines, 4 Leafs and 2 Hosts, as shown below.

<img src="docs/imgs/atd-topo.png" alt="ATD Lab Topology" width="600"/>

## ATD Topology Device List

| Device | IP Address   |
| :----- | :----------- |
| spine1 |192.168.0.10 |
| spine2 |192.168.0.11 |
| leaf1  |192.168.0.12 |
| leaf2  |192.168.0.13 |
| leaf3  |192.168.0.14 |
| leaf4  |192.168.0.15 |
| host1  |192.168.0.16 |
| host2  |192.168.0.17 |

## Getting Started

Connect to your ATD Lab environment.  If you need an ATD Lab instance, please contact your local account team.  Once connected to the ATD Lab instance, go the Lab Frontend (Guacamole) and select the ansible-GUI container.  This container is built with all the necessary ansible collections and python modules to run AVD playbooks.

```shell
# Run Script to setup environment
curl -fsSL https://get.avd.sh/atd/install.sh | sh

# Move to directory
cd arista-ansible/atd-avd

# Run Playbook to Prepare CloudVision for AVD
$ ansible-playbook playbooks/atd-prepare-lab.yml

# Execute Tasks in CVP manually

# Run Playbook to Deploy AVD Setup
$ ansible-playbook playbooks/atd-fabric-deploy.yml

# Execute Tasks in CVP manually

```

## Resources

- [Arista Ansible AVD Collection](https://github.com/aristanetworks/ansible-avd)
- [Arista Cloudvision Collection](https://github.com/aristanetworks/ansible-cvp)
- [AVD & CVP Collections demo](https://github.com/arista-netdevops-community/ansible-avd-cloudvision-demo)

## License

Project is published under [Apache License]().