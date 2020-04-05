# LXD Survivor Guide

```shell 
# Adding user to LXD group
newgrp lxd
sudo usermod -a -G lxd $(whoami)
```

## LXD Basics
```shell
lxd init

lxc info
lxc version

lxc storage list 
lxc remote list

lxc image list
lxc image list images:cent

lxc launch images:centos/7 my-vm
lxc exec my-vm bash

lxc list 

lxc [ start | stop | restart | info ] my-vm
lxc config show my-vm
lxc config set my-vm security.nesting true

lxc rename my-vm my-vm1 
lxc copy my-vm my-vm2
lxc delete my-vm 

# Systemd
systemctl [ status | start | stop  ] lxd
systemctl [ start | stop ] lxd.socket

# Troubleshooting
lxc query --wait -X GET /1.0
journalctl -xe
``` 
