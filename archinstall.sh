#!/bin/bash

clear

echo -ne "

 █████╗ ██████╗  ██████╗██╗  ██╗ ██████╗  █████╗  ██████╗  █████╗ 
██╔══██╗██╔══██╗██╔════╝██║  ██║██╔═══██╗██╔══██╗██╔═══██╗██╔══██╗
███████║██████╔╝██║     ███████║██║   ██║███████║██║   ██║███████║
██╔══██║██╔══██╗██║     ██╔══██║██║▄▄ ██║██╔══██║██║▄▄ ██║██╔══██║
██║  ██║██║  ██║╚██████╗██║  ██║╚██████╔╝██║  ██║╚██████╔╝██║  ██║
╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝ ╚══▀▀═╝ ╚═╝  ╚═╝ ╚══▀▀═╝ ╚═╝  ╚═╝

       ██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     
       ██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     
       ██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     
       ██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     
       ██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗
       ╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝

Welcome to Hanqaqa's preconfigured archinstall. This installation
provides a minimal KDE Desktop, Chromium, Neovim and VLC.

Please fill in:
 - Disk configuration
 - Bootloader
 - Root password
 - User account
 
"

read -p "Press Enter to begin archinstall..."

archinstall --config https://raw.githubusercontent.com/Hanqaqa/Archqaqa/master/archinstall/user_configuration.json
