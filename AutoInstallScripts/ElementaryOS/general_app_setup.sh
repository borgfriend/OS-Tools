#!/bin/sh
###############################################
# Elementary 0.4.1 AutoSetup Tools
################################################

########################
# Dual Boot Time Fix
########################
timedatectl set-local-rtc 1


########################
# Add Additional Repositories #
########################

sudo apt install -y software-properties-common 
sudo add-apt-repository ppa:philip.scott/elementary-tweaks
sudo add-apt-repository ppa:shutter/ppa

sudo apt-get update

########################
# General Tools #
########################

sudo apt install -y software-properties-gtk

sudo apt install -y ttf-mscorefonts-installer
sudo apt install -y elementary-tweaks
sudo apt install -y ubuntu-restricted-extras ffmpeg

########################
# Install Applications #
########################

sudo apt install -y chromium-browser
sudo apt remove epiphany-browser -y

sudo apt install -y shutter
sudo apt remove screenshot-tool

sudo apt install -y vlc
sudo apt remove audience -y

sudo apt install -y libreoffice
sudo apt install -y gimp inkscape

########################
# Remove Applications #
########################
sudo apt remove pantheon-mail -y
sudo apt remove maya-calendar -y
sudo apt autoremove



