#!/bin/bash

# Jenkins Installation Script for Ubuntu Jammy/Noble
# This script fixes GPG key issues, installs Java 17, and Jenkins.



set -e # Exit on any error

# Install dirmngr for keyserver communication
sudo apt update
sudo apt install dirmngr -y

# Setup GPG directory for root
sudo mkdir -p /root/.gnupg
sudo chmod 700 /root/.gnupg

# Import Jenkins GPG Key
sudo gpg --no-default-keyring \
--keyring /usr/share/keyrings/jenkins-keyring.gpg \
--keyserver keyserver.ubuntu.com \
--recv-keys 7198F4B714ABFC68

# Key Permissions
sudo chmod 644 /usr/share/keyrings/jenkins-keyring.gpg

# Add Jenkins Repository 
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.gpg] https://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

# Install Java
sudo apt update
sudo apt install openjdk-17-jdk -y

# Install Jenkins
sudo apt install jenkins -y
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo systemctl status jenkins

#verufy 
java --version 
jenkins  --version 
# initial password to be generated
echo "⏳ Waiting for Jenkins to initialize (this may take 30-60 seconds)..."
while [ ! -f /var/lib/jenkins/secrets/initialAdminPassword ]; do
  sleep 2
done
# Admin Password
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
echo "Master setup complete"

