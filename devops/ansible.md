## Ansible Guide

### Install
```shell
add-apt-repository "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main"
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
apt install -y ansible
```
### Config
```shell
# Edit hosts /etc/hosts
<ip> node-1

# Edit ansible hosts /etc/ansible/hosts
[nodes]
127.0.0.1 ansible_connection=local
node-1

# Generate ssh 
ssh-keygen -t rsa -C "admin@example.org"
ssh-copy-id root@hostname
```

### Commands
```shell
ansible --version
ansible --list-hosts all

# test
ansible all -m ping -k -b

ansible-playbook some-play.yml
```
