# Kernel Modules

```shell
# list kernel modules
lsmod
lsmod | grep overl

# info kenel module
modinfo btrfs

# modprobe info
modprobe --verbose

find /sbin modprobe
find /usr/sbin modprobe

# load module
modprobe btrfs
modprobe overlay
modprobe br_netfilter

# remove module
modprobe -r btrfs
```
