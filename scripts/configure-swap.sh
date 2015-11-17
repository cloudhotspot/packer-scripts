#!/bin/bash
sudo dd if=/dev/zero of=/var/myswap bs=1M count=2048
sudo mkswap /var/myswap
echo '/var/myswap   swap   swap   defaults  0 0' | sudo tee -a /etc/fstab