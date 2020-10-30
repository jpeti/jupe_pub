#!/bin/sh
# This is a base docker installer script for ubuntu x64  based on docs.docker.com

# remove docker if installed
sudo apt-get remove docker docker-engine docker.io containerd runc

# install packages to use https repositories
sudo apt-get update
sudo apt-get install \
     apt-transport-https \
     ca-certificates \
     curl \
     gnupg-agent \
     software-properties-common

# add docker's official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# verify fingerprint
sudo apt-key fingerprint 0EBFCD88

# add stable repo
sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# update repo and install docker
sudo apt-get update
sudo apt-get install \
    docker-ce docker-ce-cli containerd.io
