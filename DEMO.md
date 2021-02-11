# Step by Step demo

## 1. Connect to GUI VM

In your ATD interface, click on __Programmability IDE__ and use password listed in your interface (password is auto-generated for each instance)

![](./docs/imgs/atd-interface.png)

Once your VScode interface is ready, open a console and enter command below:

```bash
# Run Script to setup environment
$ curl -fsSL https://get.avd.sh/atd/install.sh | sh
```

Then in your VScode, navigate to `labfiles/arista-ansible/atd-avd` to access to complete lab. All the paths in the next sections will be based from here.

## 2. Configure your inventory

Because password is auto-generated, you have to update password from this inventory to use correct credentials.

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

This playbook prepare tasks on Cloudvision and let you option to validate changes before applying change control. After you executed all pending tasks, your CV should look like the following

![ATD Provisioning](docs/imgs/atd-topo-provisioning.png)

## 4. Apply AVD configuration

While playbook supports build/provision/execute in a row, we will go on a step by step approach.

#### Build devices configuration

```bash
$ ansible-playbook playbooks/atd-fabric-deploy.yml --tags build
```

Output can be reviewed in your VScode instance:

* EOS Configuration: [atd-inventory/intended/configs](atd-inventory/intended/configs)
* Fabric documentation: [atd-inventory/documentation](atd-inventory/documentation)

### Provision CVP

```bash
$ ansible-playbook playbooks/atd-fabric-deploy.yml --tags provision
```

This playbook creates:

* A new containers topology to support AVD devices based on inventory file
* Move devices to their respective container
* Create configlet per device and bind to devices.

Change control remains on user's side as it is a safer approach for production even if we can configure AVD to automatically apply changes for lab purposes.

![Cloudvision Topology for AVD](./docs/imgs/atd-topo-avd.png)

## 5. Update NTP on cloudvision

At some point, you may want to continue to get some configlets managed outside of ansible and directly on Cloudvision. A good example here is NTP configuration which is configured on `ATD-INFRA` configlet applied to __TENANT__ container.

Go to __Provisioning > Configlets__ and edit __`ATD-INFRA`__ to replace NTP configuration with following content:

```eos
!
ntp local-interface vrf MGMT Management1
ntp server vrf MGMT 192.168.0.1 prefer
!
```

Apply changes to all devices and check NTP status

In parallel, you can continue to update configuration on AVD side to add/delete/update tenants and keeping this ntp settings still configured.

## 6. Add a new tenant to the fabric

Edit file __`[atd-inventory/group_vars/ATD_TENANTS_NETWORKS.yml](atd-inventory/group_vars/ATD_TENANTS_NETWORKS.yml)`__ and uncomment `Tenant_B` before running again playbook

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

```
$ ansible-playbook playbooks/atd-fabric-deploy.yml --tags "build, provision"
```
