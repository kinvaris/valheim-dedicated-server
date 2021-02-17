# valheim-dedicated-server

## Description

Ansible playbook for valheim dedicated server on CentOS

## Prerequisites

- The playbook addresses the host group valheim, so have your hosts in the inventory present
- Firewalld is not used, instead I used ufw as a simplified firewall for this project. This is NOT included in the roles.
- Required host parameters:
```
valheim_server_name: name of the server
valheim_server_port: port of the server, I took 2456 as the default specified in the how-to
valheim_world_name: a unique world name
valheim_server_pass: a overcomplex supersecret password
valheim_world_seed: a world seed
```


## Running the playbook

```
ansible-playbook valheim.yaml
```

