#!/bin/bash

# Checking if is running in Repo Folder
if [[ "$(basename "$(pwd)" | tr '[:upper:]' '[:lower:]')" =~ ^scripts$ ]]; then
    echo "You are running this in ArchTitus Folder."
    echo "Please use ./archtitus.sh instead"
    exit
fi
export http_proxy='http://192.168.2.1:3128'
export https_proxy='http://192.168.2.1:3128'
# Installing git

echo "Installing git."
pacman -Sy --noconfirm --needed git glibc

echo "Cloning the ArchTitus Project"
git clone https://github.com/christitustech/ArchTitus

echo "Executing ArchTitus Script"

cd $HOME/ArchTitus

exec ./archtitus.sh
