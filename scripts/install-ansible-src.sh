#!/bin/bash
sudo apt-get install python-pip python-dev -y
wget -P ~ http://releases.ansible.com/ansible/ansible-$ANSIBLE_VERSION.tar.gz
mkdir -p ~/ansible-setup
tar zxvf ~/ansible-$ANSIBLE_VERSION.tar.gz -C ~/ansible-setup --strip 1
cd ~/ansible-setup
sudo pip install markupsafe
sudo pip install .