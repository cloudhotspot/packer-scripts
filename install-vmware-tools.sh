#!/bin/bash
 
 # Mount tools image
sudo mount -o loop ~/linux.iso /media/cdrom
sudo cp /media/cdrom/VMwareTools*.tar.gz ~/
tar xfz VMwareTools*.tar.gz
cd ~/vmware-tools-distrib

# Install tools
sudo ./vmware-install.pl -d

# Cleanup
sudo umount /media/cdrom
cd ~
rm -rf vmware-tools-distrib
rm -f VMwareTools*.tar.gz
rm linux.iso