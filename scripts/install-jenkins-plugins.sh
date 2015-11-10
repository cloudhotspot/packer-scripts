#!/bin/bash

# Assumes plugins.txt is available in /tmp
sudo -u jenkins sh -c "mv /tmp/plugins.txt /usr/share/jenkins/plugins.txt"
sudo -u jenkins sh -c "/usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt"