## Ansible Guide

### Install 
```shell
# CentOS
yum install epel-release -y
yum update
yum install -y ansible

# Debian
add-apt-repository "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main"
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
apt install -y ansible
```

### Config
```shell
# Create ansible user on Hosts
sudo useradd ansible
sudo usermod -aG sudo ansible
getent group sudo # check the member of sudo group 

echo "$(whoami) ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/$(whoami)

# Edit hosts /etc/hosts on Master
<ip> node-1

# Edit / create /etc/ansible/hosts hosts file

[webserver]
192.157.32.33 ansible_user=root ansible_connection=local
my-remote-vm  ansible_user=root

# Generate ssh key on master
ssh-keygen -t rsa -C "admin@example.org"
ssh-copy-id root@hostname

# Test 
ansible --version
ansible -i hosts --list-hosts all
ansible -i hosts -m ping all 
```

### Commands
```shell
ansible all -m ping -k -b
ansible -i hosts -m shell -a 'whoami' <all|groupName>

ansible -i hosts -b --become-method=sudo -m shell -a 'apt update' webserver
ansible -i hosts -b --become-method=sudo -m shell -a 'apt install -y apache2' webserver
ansible -i hosts -b --become-method=sudo -m shell -a 'curl -sI http://localhost' webserver

# Playbooks
ansible-playbook some-play.yml
```
