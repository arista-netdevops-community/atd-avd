# Step by Step demo

## 1. Connect to GUI VM

In your ATD interface, click on __Programmability IDE__ and use the password listed on your Lab Topology (note: password is auto-generated for each Lab instance)

![](./docs/imgs/atd-interface.png)

Once your VScode interface is ready, we will install the ATD-AVD Repo to your lab instance.  Open a New Terminal console and enter command below.

```bash
# Run Script to setup environment
$ curl -fsSL https://get.avd.sh/atd/install.sh | sh
```

Then in your VScode, navigate to `labfiles/arista-ansible/atd-avd` to complete lab. All the paths in the next sections will be based from here.

```bash
$ cd labfiles/arista-ansible/atd-avd
```


In addition, open CVP by clicking the __CVP__ link.  Login with username 'arista' and the auto-generated password on the Lab Topology screen.
## 2. Configure your inventory

Because password is auto-generated, you must update `ansible_password` in this inventory file to use correct credentials.  Also, ensure the `ansible_host` is updated to static IP below.

```yaml
# edit atd-inventory/inventory.yml
---
all:
  children:
    cv_servers:
      hosts:
        cv_atd1:
          ansible_host: 192.168.0.5
          ansible_user: arista
          ansible_password: < set your password here from your webinterface >
    ATD_LAB:
      vars:
        ansible_user: arista
        ansible_ssh_pass: < set your password here from your webinterface >
```

## 3. Provision ATD

To emulate ZTP environment, we will move all devices from their current containers to a dedicated one named `STAGING` to mimic `undefined` container.

```bash
# Run Playbook to Prepare CloudVision for AVD
$ ansible-playbook playbooks/atd-prepare-lab.yml
```

This playbook creates tasks on CloudVision and gives you the option to validate changes before applying change control.

In CVP, create a Change Control and Execute all the pending tasks the playbook generated.  After tasks are complete, your CVP Network Provisioning screen should look like the following.

![ATD Provisioning](docs/imgs/atd-topo-provisioning.png)

## 4. Apply AVD configuration

While the playbook supports build/provision/execute in a row, we will proceed on a step by step basis.

### Build Device Configurations & Documentation Files

```bash
$ ansible-playbook playbooks/atd-fabric-deploy.yml --tags build
```

This playbook when used with `build` tag creates configuration files and documentation.

Output can be reviewed in your VScode instance:

* EOS Configuration: [atd-inventory/intended/configs](atd-inventory/intended/configs)
* Fabric documentation: [atd-inventory/documentation](atd-inventory/documentation)

### Next...Provision CVP

```bash
$ ansible-playbook playbooks/atd-fabric-deploy.yml --tags provision
```

This playbook when used with the `provision` tag creates:

* A new containers topology to support AVD devices based on inventory file
* Move devices to their respective container
* Create configlet per device and bind to devices.

Change control remains on user's side as it is a safer approach for production even if we can configure AVD to automatically apply changes for lab purposes.

Create the Change Control and Execute all pending tasks.   This will take 5-6 minutes as the management IP address is moved on all nodes from the default to MGMT VRF, and CVP needs to reflect this change.

![CloudVision Topology for AVD](./docs/imgs/atd-topo-avd.png)

## 5. Update NTP on CloudVision

At some point, you may want to continue to get some configlets managed outside of ansible and directly on CloudVision. A good example here is NTP configuration which is configured on `ATD-INFRA` configlet applied to __TENANT__ container.

Go to __Provisioning > Configlets__ and edit __`ATD-INFRA`__ to replace NTP configuration with following content:

### vEOS Settings

```eos
!
ntp local-interface vrf MGMT Management1
ntp server vrf MGMT 192.168.0.1 prefer
!
```

### cEOS Settings

```eos
!
ntp local-interface vrf MGMT Management0
ntp server vrf MGMT 192.168.0.1 prefer
!
```

Apply changes to all devices and check NTP status

In parallel, you can continue to update configuration on AVD side to add/delete/update tenants and keeping this ntp settings still configured.

## 6. Add a new tenant to the fabric

Edit file __[atd-inventory/group_vars/ATD_TENANTS_NETWORKS.yml](atd-inventory/group_vars/ATD_TENANTS_NETWORKS.yml)__ and uncomment `Tenant_B` before running again playbook

* Edit group_vars

```yaml
# edit atd-inventory/group_vars/ATD_TENANTS_NETWORKS.yml
tenants:
  # Tenant A Specific Information - VRFs / VLANs
  Tenant_A:
  ...

  Tenant_B:
    mac_vrf_vni_base: 20000
    vrfs:
      Tenant_B_OP_Zone:
        vrf_vni: 20
        svis:
          210:
            name: Tenant_B_OP_Zone_1
            tags: ['opzone']
            profile: WITH_NO_MTU
            ip_address_virtual: 10.2.10.1/24
          211:
            name: Tenant_B_OP_Zone_2
            tags: ['opzone']
            profile: GENERIC_FULL
            ip_address_virtual: 10.2.11.1/24
```

* Run playbook

```bash
$ ansible-playbook playbooks/atd-fabric-deploy.yml --tags "build, provision"
```

Once more, in CVP, create Change Control and Execute all tasks.
