#!/bin/bash

clear

echo -ne "

       █████╗ ██████╗  ██████╗██╗  ██╗ ██████╗  █████╗  ██████╗  █████╗ 
      ██╔══██╗██╔══██╗██╔════╝██║  ██║██╔═══██╗██╔══██╗██╔═══██╗██╔══██╗ 
      ███████║██████╔╝██║     ███████║██║   ██║███████║██║   ██║███████║
      ██╔══██║██╔══██╗██║     ██╔══██║██║▄▄ ██║██╔══██║██║▄▄ ██║██╔══██║
      ██║  ██║██║  ██║╚██████╗██║  ██║╚██████╔╝██║  ██║╚██████╔╝██║  ██║
      ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝ ╚══▀▀═╝ ╚═╝  ╚═╝ ╚══▀▀═╝ ╚═╝  ╚═╝

██████╗  ██████╗ ███████╗████████╗██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     
██╔══██╗██╔═══██╗██╔════╝╚══██╔══╝██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     
██████╔╝██║   ██║███████╗   ██║   ██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     
██╔═══╝ ██║   ██║╚════██║   ██║   ██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     
██║     ╚██████╔╝███████║   ██║   ██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗
╚═╝      ╚═════╝ ╚══════╝   ╚═╝   ╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝

                                                                  
Welcome to Hanqaqa's post Arch Linux install. This script will now install:

- Step 1: Same everyday software I use:
    - nano
    - neovim
    - vim
    - htop
    - neofetch
    - zip
    - unzip
    - vlc
    - git
    - chromium
    - qemu

- Step 2: Yay with my favourite propietary botnets (Optional):
    - Visual Studio Code
    - Chrome

"

read -p "Press Enter to begin the Postinstall..."

sudo pacman -S --needed nano neovim vim htop neofetch zip unzip vlc git chromium qemu-full --noconfirm

# Installing Yay

install_yay(){
    sudo pacman -S --needed git base-devel --noconfirm
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si
}

while true; do
    read -p "Do you want to install Yay? (Y/n): " choice
    case $choice in
        [Yy]* | "" ) 
            install_yay
            break;;
        [Nn]* ) 
            echo "Exiting..."
            exit;;
        * ) echo "Please answer Y or N.";;
    esac
done

# Installing Visual Studio Code and Chrome

install_vsc_chrome(){
    yay -S google-chrome
    yay -S visual-studio-code-bin
}

while true; do
    read -p "Do you want to install VS Code and Chrome? (Y/n): " choice
    case $choice in
        [Yy]* | "" ) 
            install_vsc_chrome
            break;;
        [Nn]* ) 
            echo "Exiting..."
            exit;;
        * ) echo "Please answer Y or N.";;
    esac
done

