# AVD Arista Validated Design for Arista Test Drive

![Arista CloudVision Automation](https://img.shields.io/badge/Arista-CVP%20Automation-blue) ![Arista EOS Automation](https://img.shields.io/badge/Arista-EOS%20Automation-blue)

## About

This repository is configured to run [`arista.cvp`](https://github.com/aristanetworks/ansible-cvp) & [`arista.avd`](https://github.com/aristanetworks/ansible-avd) Ansible collections against the Arista Test Drive (ATD) single data center topology.

<p align="center">
  <img src='docs/imgs/cv_ansible_logo.png' alt='Arista CloudVision and Ansible'/>
</p>

To access an ATD topology, please get in touch with your Arista representative.

## Lab topology

The diagram below shows that the ATD lab topology consists of two Spines, four Leafs, and two Hosts.

<p align="center">
  <img src="docs/imgs/atd-topo.png" alt="ATD Lab Topology" width="600"/>
</p>

## ATD topology device list

| Device | IP Address |
| ------ | ------------ |
| spine1 |192.168.0.10 |
| spine2 |192.168.0.11 |
| leaf1  |192.168.0.12 |
| leaf2  |192.168.0.13 |
| leaf3  |192.168.0.14 |
| leaf4  |192.168.0.15 |
| host1  |192.168.0.16 |
| host2  |192.168.0.17 |

> Current repository is built with vEOS management interface (`Management1`). If you run a cEOS topology, please update `mgmt_interface` field to `Management0` in the [ATD_LAB](./atd-inventory/group_vars/ATD_LAB.yml) `group_vars`.

## Getting Started

### Connect to your ATD lab environment

- Don't hesitate to contact your local account team if you need an ATD Lab instance.
- Once connected to the ATD lab instance, select the Programmability IDE.
- This container is built with all the requirements and Python modules to run AVD playbooks.

1. Next (optional), set up a Git user and email for the ATD lab environment

    - Open a terminal window in VS Code View -> Terminal from the menu, and run the following commands:

    ```shell
    # Setup your git global config (optional)
    git config --global user.email "you@example.com"
    git config --global user.name "Your Name"
    ```

2. Run the install script to clone the required repositories and install any dependencies

    ```shell
    curl -fsSL https://get.avd.sh/atd/install.sh | sh
    ```

3. Update the inventory file with new lab credentials

    - Open file in VS Code: `atd-avd/atd-inventory/inventory.yml`

    - Set credentials in the `inventory.yml` file to the credentials provided on the ATD landing page.

      ```yaml
      ---
      all:
        children:
          cv_servers:
            hosts:
              cv_atd1:
                ansible_host: 192.168.0.5
                cv_collection: v3
      ...
      vars:
        ansible_user: arista
        ansible_password: # Update password with lab credentials
      ...
      ```

4. Run the playbook to prepare CloudVision for AVD

    - Execute the following command:

      ```shell
      ansible-playbook playbooks/atd-prepare-lab.yml
      ```

    - Check that tasks in CloudVision have been automatically completed

5. Run playbook to deploy AVD setup

    - Execute the following command:

      ```shell
      ansible-playbook playbooks/atd-fabric-deploy.yml
      ```

    - Execute pending tasks in CloudVision Portal manually.

6. Run validation and snapshot playbooks

    - Execute the following commands:

      ```shell
      # Run audit playbook to validate the fabric state
      ansible-playbook playbooks/atd-validate-states.yml

      # Execute the atd-snapshot playbook to collect show commands
      ansible-playbook playbooks/atd-snapshot.yml
      ```

    - Review generated output.

## Step-by-step walkthrough

A complete [step-by-step guide](./DEMO.md) is available.

## Resources

- [Arista Ansible AVD Collection](https://github.com/aristanetworks/ansible-avd)
- [Arista CloudVision Collection](https://github.com/aristanetworks/ansible-cvp)
- [Arista AVD documentation](https://www.avd.sh)

## License

This Project is published under Apache License.
