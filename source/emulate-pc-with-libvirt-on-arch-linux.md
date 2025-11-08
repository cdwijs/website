# Emulate a complete PC using Qemu/kvm on Arch Linux

## The problem
I want to test and document the install procedure for Linux Mint, but I don't want to reboot my Arch Linux machine.

## The solution
Create a virtual machine on Arch Linux, that can boot from a real USB stick. This can then be used to demonstrate the install procedure for Linux Mint.

## The starting point
Arch Linux, and Xorg. Qemu and Kvm are already installed, and are capable of creating and running VM's


## The procedure
* connect a memory stick containing Ventoy

## The costs


## The result


## Reverting the change
Warning: This procedure will delete a virtual machine. This cannot be undone. Be sure to select the correct VM.

* Open Virtual Machine manager
* Right-click on the VM created above, and choose Delete. Also choose delete on its qcow2 virtual hard drive, and confirm you are sure.