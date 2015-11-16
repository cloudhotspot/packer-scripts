#!/bin/bash
echo "deb http://dl.bintray.com/gocd/gocd-deb/ /" | sudo tee /etc/apt/sources.list.d/gocd.list
wget --quiet -O - "https://bintray.com/user/downloadSubjectPublicKey?username=gocd" | sudo apt-key add -
sudo apt-get update -y
sudo apt-get install make go-server go-agent -y
