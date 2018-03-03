#!/bin/sh
###############################################
# Elementary 0.4.1 Setup Dev Tools
################################################

########################
# Install Git #
########################

sudo apt install git

########################
# Install VS Code #
########################

curl https://packages.microsoft.com/keys/microsoft.asc | gpg –dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt update
sudo apt install code

########################
# Install NodeJS #
########################

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash –
sudo apt-get install -y nodejs