#!/bin/bash
mkdir -p ~/ansible-tower-setup
wget -P ~ http://releases.ansible.com/ansible-tower/setup/ansible-tower-setup-$ANSIBLE_TOWER_VERSION.tar.gz
tar zxvf ~/ansible-tower-setup-$ANSIBLE_TOWER_VERSION.tar.gz -C /home/ubuntu/ansible-tower-setup --strip 1
sudo ~/ansible-tower-setup/setup.sh
