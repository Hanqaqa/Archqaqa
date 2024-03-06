#!/bin/bash

clear

echo -ne "

 █████╗ ██████╗  ██████╗██╗  ██╗ ██████╗  █████╗  ██████╗  █████╗ 
██╔══██╗██╔══██╗██╔════╝██║  ██║██╔═══██╗██╔══██╗██╔═══██╗██╔══██╗
███████║██████╔╝██║     ███████║██║   ██║███████║██║   ██║███████║
██╔══██║██╔══██╗██║     ██╔══██║██║▄▄ ██║██╔══██║██║▄▄ ██║██╔══██║
██║  ██║██║  ██║╚██████╗██║  ██║╚██████╔╝██║  ██║╚██████╔╝██║  ██║
╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝ ╚══▀▀═╝ ╚═╝  ╚═╝ ╚══▀▀═╝ ╚═╝  ╚═╝

  ██████╗  ██████╗ ████████╗███████╗██╗██╗     ███████╗███████╗
  ██╔══██╗██╔═══██╗╚══██╔══╝██╔════╝██║██║     ██╔════╝██╔════╝
  ██║  ██║██║   ██║   ██║   █████╗  ██║██║     █████╗  ███████╗
  ██║  ██║██║   ██║   ██║   ██╔══╝  ██║██║     ██╔══╝  ╚════██║
  ██████╔╝╚██████╔╝   ██║   ██║     ██║███████╗███████╗███████║
  ╚═════╝  ╚═════╝    ╚═╝   ╚═╝     ╚═╝╚══════╝╚══════╝╚══════╝
                                                                  
Welcome to Hanqaqa's dotfiles copying script. This script will install 
the JetBrainsMonoNerdFont-Regular font, NvChad and set a few more settings
in your KDE desktop.

        IT WILL NOT MAKE A BACKUP. Use at your own discretion
"
read -p "Press Enter to begin archidotfiles..."

# Step 1

# TODO: Change to dark mode, increase DPI to 200%...

# Step 2

install_jetbrains_font(){
  wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip \
  && cd ~/.local/share/fonts \
  && unzip JetBrainsMono.zip JetBrainsMonoNerdFont-Regular.ttf \
  && rm JetBrainsMono.zip \
  && fc-cache -fv
}

install_nvchad(){
  git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
}

while true; do
    read -p "Do you want to install JetBrainsMonoNerdFont and NvChad? (Y/n): " choice
    case $choice in
        [Yy]* | "" ) 
            install_jetbrains_font
            install_nvchad
            break;;
        [Nn]* ) 
            echo "Exiting..."
            exit;;
        * ) echo "Please answer Y or N.";;
    esac
done




