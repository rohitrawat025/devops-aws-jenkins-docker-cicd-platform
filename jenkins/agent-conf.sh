#!/bin/bash

# Jenkins Agent Setup Script for Ubuntu (Jammy/Noble)

set -e

sudo apt update -y

# Added 'ca-certificates' and 'gnupg' for repository management
sudo apt install -y git curl wget unzip software-properties-common ca-certificates gnupg

# Add Docker's official GPG key
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update -y

sudo apt install -y openjdk-17-jdk

# Install the engine and the plugin
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl start docker
sudo systemctl enable docker

# Allow 'ubuntu' user to run docker commands without sudo
sudo usermod -aG docker ubuntu

# Verifying 
git --version 
docker --version 
docker compose version 
java --version 

echo "Agent setup complete"

