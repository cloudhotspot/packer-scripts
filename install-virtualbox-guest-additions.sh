#!/bin/bash

# Mount tools image
sudo mount -o loop ~/VBoxGuestAdditions.iso /media/cdrom

# Install tools
sudo sh /media/cdrom/VBoxLinuxAdditions.run

# Cleanup
sudo umount /media/cdrom
rm ~/VBoxGuestAdditions.iso