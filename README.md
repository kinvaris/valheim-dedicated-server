# valheim-dedicated-server

## Description

Ansible playbook for valheim dedicated server on CentOS 7

## Prerequisites

- The playbook addresses the host group valheim, so have your hosts in the inventory present
- Firewalld is not used, instead I used ufw as a simplified firewall for this project. The setup of UFW is NOT included in the roles, it only adds the required ports.
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

## It works on my machine!

```
[user@valheim ~]$ cat /etc/os-release 
NAME="CentOS Linux"
VERSION="7 (Core)"
ID="centos"
ID_LIKE="rhel fedora"
VERSION_ID="7"
PRETTY_NAME="CentOS Linux 7 (Core)"
ANSI_COLOR="0;31"
CPE_NAME="cpe:/o:centos:centos:7"
HOME_URL="https://www.centos.org/"
BUG_REPORT_URL="https://bugs.centos.org/"

CENTOS_MANTISBT_PROJECT="CentOS-7"
CENTOS_MANTISBT_PROJECT_VERSION="7"
REDHAT_SUPPORT_PRODUCT="centos"
REDHAT_SUPPORT_PRODUCT_VERSION="7"

[user@valheim ~]$ uname -a
Linux valheim 3.10.0-1160.15.2.el7.x86_64 #1 SMP Wed Feb 3 15:06:38 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux
```
