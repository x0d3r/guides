# Hetzner Guide

## Basics
```
hcloud version

hcloud ssh-key list

hcloud context list

hcloud context create <project>
```

## Networking
```shell
hcloud network list

hcloud network create --name <network_id> --ip-range 10.98.0.0/16

hcloud network add-subnet <network_id> --network-zone eu-central --type server --ip-range 10.98.0.0/16

hcloud network describe <network_id>
```

## VPS
```
hcloud image list

hcloud server-type list

hcloud server create --type cx11 --name <server> --image ubuntu-18.04 --ssh-key <ssh_key_id> --network <network_id>

hcloud server describe <server>

hcloud server list

hcloud server delete <server>

hcloud server ssh <server_id>
```

## Resources
https://community.hetzner.com/tutorials/howto-hcloud-cli
