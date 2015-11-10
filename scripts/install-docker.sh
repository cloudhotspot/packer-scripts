#!/bin/bash

# Docker Engine
sudo apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" | sudo tee /etc/apt/sources.list.d/docker.list
sudo apt-get update -y
sudo apt-get purge lxc-docker* -y
sudo apt-get install docker-engine curl -y

# Docker Compose
sudo curl -L https://github.com/docker/compose/releases/download/1.5.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Configure Docker
sudo grep -q '^GRUB_CMDLINE_LINUX=' /etc/default/grub && sudo sed -i 's/^GRUB_CMDLINE_LINUX=.*$/GRUB_CMDLINE_LINUX="cgroup_enable=memory swapaccount=1"/g' /etc/default/grub || sudo sed '$ a\GRUB_CMDLINE_LINUX="cgroup_enable=memory swapaccount=1"' -i /etc/default/grub
sudo update-grub
