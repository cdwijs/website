# Escape Windows #
Welcome to Escape Windows. Here you will find a complete guide to migrate from Windows to Linux. 


## Target audience #
This guide is for people who want to install Linux Mint either next to, or instead of Windows.

## Steps #

### Create a backup #
During the installation of Linux, there are a number of steps that can erase all the data from the SSD. Do make sure you have a backup of all (important) files.

### Create a bootable USB stick #
Windows can't be used to install Linux, so we need to create a bootable USB stick. This stick can then be used to start the Linux Mint installer, or GParted. GParted is used to make space for Linux.

See [Ventoy](ventoy.html) for details.

### Check if the hardware is correctly detected #
before changing anything on the SSD, boot Linux Mint to see if all the hardware (sound, wifi, printers, screen, touchpad and so on) are correctly detected.

See [Install Linux Mint](install-Linux-mind.html) for details. 

### Make room for Linux #
Boot into Windows, and make room. An empty install of Linux Mint requires 11GB, so try to create at least 25GB of space on the SSD, so there's room for extra programs and documents.

### Shrink the Windows partition #
Boot into Gparted, and resize the Windows partition, so Linux Mint can use the free space.

See [Gparted](Gparted.html) for details.

## Install Linux Mint #
Boot into Linux Mint, and run the installer. 

See [Install Linux Mint](install-linux-mint.html) for details

## Run games via Steam/Proton #

See [](.html) for details, and See [](.html) for a breakdown what games do and don't work.

## Run Windows programs via Wine #

## Run Windows programs in Windows on top of Linux #
Some Windows programs can't be run via compatibility layers like Wine or Proton. For these program's we create a virtual machine, install windows on the virtual machine, and run the program there.

See [](.html) for details



# Obstacles along he way #

## Not all Windows programs have a Linux version. #
Not all Windows programs have a Linux version. Those will be run under a compatibility layer, or on Windows in a virtual machine




# Downsides of Linux #
## Linux is not Windows #
Linux works different than Windows. Most of the tricks that work on Windows don't work on Linux and vice versa.




## Less people run Linux #
Therefore there are less people who can help you when something doesn't work.



The decision nhas been made: I don't want Windows anymore. What are my options?

You go from Windows user, to a Linux system administrator

Your cpomputer, your rules.

Your computer, your problem.

Get help here

Linux Mint. Not because it's the best, just because the repair cafe's are working with it

All guides assume nothing. They all are build from an empty hard drive.

For who is this page?
-> For people coming to the repair cafe, willing to install it pon their own POC's

-> For people wanting a step-by-step guide to escape WIndows

-> Keep that one program that keeps you on Windows


What about that one program kepping me on Windows?
-> 

What about the programs I now run?

Is linux moint the best option? No, but it is the one that you can start with, and most people can help you with. Repair cafe's use it, endof10 use it.

Can I move back to windows?

Can I move to another Linux ditribution?

Linux downsites:
-> It doesn't come preinstalled on your PC
-> It's not yet on your PC
-> I can't run any Windows programs



I'm convinced. What are the steps?

## [create a bootable stick with ventoy](srhgysrybdryb)

-> Bootable stick

-> Make room

-> install Linux Mint next to Windows

-> Install a VM on top of Linux

-> Install Windows on top of Linux

-> Install the stubborn programs in Windows on the VM.

Pre's and cons on dual boot
(you can return to the system you know)
When one of the systems is broken, you can use the other one.
