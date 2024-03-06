# Archqaqa

My three command ([Archinstall](#archinstall), [Archpostinstall](#archpostinstall), [Archdotfiles](#archdotfiles)) automated Arch Linux installation for configuring a fresh KDE Arch Linux desktop, installing a few packages and settings.

<p align="center">
    <img src="https://github.com/Hanqaqa/Archqaqa/blob/master/Media/Arch.png" width="70%">
</p>


This guide is intended for both begginers and experienced Arch users who don't want to do a full manual Arch Linux installation. Although if you already have a fresh Arch KDE installation you can start from the [Archpostinstall](#archpostinstall) step to copy my setup. It will override config files and install a few more programs.

---------------------------------------------------------------------

## Archinstall

Insert you Arch ISO into your Virtual Machine or PC and figure out how to get into the boot menu. Check if you already have internet and have a correct keyboard layout, refer to [previous steps](#previous-steps) if you don't know what I am talking about.

Once everything is ready, you can type the one command installer:

```shell
bash <(curl -sL marcovazquez.xyz/archinstall) 
```

This script simply preselects a few fields from the official [Archinstall](https://github.com/archlinux/archinstall) such as Desktop Environment, Audio, Network... The remaining fields for you to fill in are these:

 - Disk configuration -> Use a best-effort default partition layout -> Your disk -> ext4.
 - Bootloader -> Grub or Systemd-Boot. Grub is usually more reliable.
 - Root password
 - User account

And press `install`. Depending on your internet speed it will take around 5-15 minutes to download everything.

Once everything finishes installing. You will be greeted by a black screen that asks you if you would like to chroot into the newly created installation. Select No, type `shutdown now` and remove your installation medium. Then start Arch Linux again and log in into your new Plasma Desktop.

### Previous steps

#### Changing keyboard layout

In case you using a different keyboard layout than the US one, some symbols are in a different place in your keyboard and you won't be tipying what you actually want. You will have to type `localectl list-keymaps` and scroll (pressing Enter and Ctrl C to exit) through all the choices. The funny thing is you will have to guess how to type the `-` with the wrong keyboard layout selected.

Choose the layout that fits your keyboard. In my case I'm using a spanish keyboard. I will type `loadkeys es` and press Enter.

### WiFi connection

You can check if the WiFi is blocked by running `rfkill list`.
If it says **Soft blocked: yes**, then run `rfkill unblock wifi`

After unblocking the WiFi, you can connect to it. Go through these 5 steps:

#1: Run `iwctl`

#2: Run `device list`, and find your device name.

#3: Run `station [device name] scan`

#4: Run `station [device name] get-networks`

#5: Find your network, and run `station [device name] connect [network name]`, enter your password and run `exit`. You can test if you have internet connection by running `ping google.com`, and then Press Ctrl and C to stop the ping test.

---------------------------------------------------------------------

## ArchPostinstall

The one click script to install all my everyday programs: nano, vlc, qemu... It will also install an Aur helper (yay) with my favourite botnets: Visual Studio Code and Chrome. You can skip the Aur helper and chrome/Vscode if you want. 

Simply type this command to begin the installation: 

```shell
bash <(curl -sL marcovazquez.xyz/archpostinstall) 
```

---------------------------------------------------------------------

## Archdotfiles

Now that everything is installed this command will install JetBrainsMonoNerdFont and NvChad and set some configuration files. This will leave you with my simple KDE desktop, NvChad and a few tweaks:

```shell
bash <(curl -sL marcovazquez.xyz/archdotfiles) 
```

---------------------------------------------------------------------

### Credits

Since the last few years, the oficial archinstall has gotten better, some old auto installers have been abandoned. So I decided to mix everything up and make my own quick installer.

-   Official archinstall https://github.com/archlinux/archinstall
-   Chris Titus automated installer https://github.com/ChrisTitusTech/ArchTitus 
-   Classy Giraffe automated installer https://github.com/classy-giraffe/easy-arch 