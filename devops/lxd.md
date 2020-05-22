# LXD Survivor Guide

```shell 
# Adding user to LXD group
newgrp lxd
sudo usermod -a -G lxd $(whoami)
```
## LXD Config 
```shell
lxd init

lxc info
lxc version

lxc profile list
lxc profile show default
```
## LXD Basics
```shell

lxc storage list 
lxc remote list

lxc image list
lxc image list images:cent

lxc launch images:centos/7 my-vm
lxc launch ubuntu:14.04 my-vm \
    -c security.privileged=true \
    -c security.nesting=true \
    -c linux.kernel_modules=ip_tables,ip6_tables,netlink_diag,nf_nat,overlay

lxc exec my-vm bash

lxc list 

lxc [ start | stop | restart | info ] my-vm
lxc config show my-vm
lxc config set my-vm security.nesting true
lxc config set my-vm security.privileged true
lxc config set my-vm linux.kernel_modules overlay
lxc config edit my-vm
 
lxc rename my-vm my-vm1 
lxc delete my-vm 
```
## LXD Cloning
```shell
# Copying
lxc copy my-vm my-vm2
lxc move my-vm2 my-vm3

# Snapshots
lxc snapshot my-vm snap0

lxc info my-vm
lxc restore my-vm/snap0 

lxc move my-vm/snap0 my-vm/snap1
lxc copy my-vm/snap0 my-vm2
lxc delete my-vm/snap0
```
## LXD Managing Images
```shell
# Exporting
lxc publish my-vm --force --alias my-image-`date -I`

lxc snapshot my-vm snap0
lxc publish my-vm/snap0 --alias my-image

lxc image list
lxc image export my-image-`date -I`
lxc image delete my-image

# Importing
lxc image import xxxx.tar.gz --alias=test1
lxc launch test1 my-vm
```
## LXD Files
```shell
lxc file pull included-bass/root/test.sh /media/x0d3r/k8s/
lxc file push /media/x0d3r/k8s/unrar.sh included-bass/root/
lxc exec included-bass -- cat unrar.sh
```
## LXD Devices
```shell
lxc config device set ubuntu18 eth0 ipv4.address 10.10.10.50
```
## Systemd
systemctl [ status | start | stop  ] lxd
systemctl [ start | stop ] lxd.socket

## Troubleshooting
```shell
lxc query --wait -X GET /1.0
systemctl unmask service_name
journalctl -xe
``` 

## Resources
https://lxd.readthedocs.io/en/latest/

https://wiki.gentoo.org/wiki/LXD

http://bluebliss.co.za/?p=19

https://blog.simos.info/running-x11-software-in-lxd-containers/

https://medium.com/@tcij1013/lxc-lxd-cheetsheet-effb5389922d
