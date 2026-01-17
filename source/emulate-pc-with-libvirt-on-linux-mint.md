# Emulate a complete PC using Qemu/kvm on Linux Mint.

## The problem
I want to install Windows on top of Linux Mint, so I can run that one Windows-only program.

## The solution
Create a virtual machine on Linux Mint, and install a minimal version of Windows 10 on it.

## The starting point
A default installation of Linux Mint.
A ventoy memory stick. (See this manual)

## The procedure

### Enable virtualisation support in the BIOS.

### Check virtualisation compatibility
cat /proc/cpuinfo
Check if the flag ¨vmx¨ or ¨svm¨ are present. In this example, both are not present:
```
$ cat /proc/cpuinfo
model name	: Intel(R) Core(TM)2 Duo CPU     P8600  @ 2.40GHz
flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ht tm pbe syscall nx lm constant_tsc arch_perfmon pebs bts rep_good nopl cpuid aperfmperf pni dtes64 monitor ds_cpl smx est tm2 ssse3 cx16 xtpr pdcm sse4_1 xsave lahf_lm pti dtherm ida

```

Enter the BIOS, and enable the following settings:
*
*
*
Next start linux Mint again, and re-check the CPU flags:
```



```


### Install KVM/Qemu
Start administration -> Software manager
Then install the following packages:
* qemu-system
* virt-manager
Next start Administration -> Virtual Machine Manager
This gives the following error:
```
Unable to connect to libvirt qemu:///system.

Verify that the 'libvirtd' daemon is running.
```

* virt-viewer

* connect a memory stick containing Ventoy
* Start Virtual Machine Manager, and enter the root password
* Choose File -> New Virtual Machine, Manual install, forward.

![](emulate-pc-with-libvirt-on-arch-linux-pictures/new-vm-manual-install.png)

* Choose the operating system: generic Linux 2024 (Linux Mint isn't in the list), forward.

![](emulate-pc-with-libvirt-on-arch-linux-pictures/new-vm-generic-linux.png)

* Choose the amount of RAM and CPU's. Linux mint uses 1GB of ram just after install, so any amount above 2GB is fine. Make sure to leave some RAM for the host system. The number of CPU's can be the same as the amount of PCU of the host system. Forward.

![](emulate-pc-with-libvirt-on-arch-linux-pictures/new-vm-memory-cpus.png)

* [X] Create a disk image for this virtual machine. This disk can be choosen very large, as the host only stores the disk space that's actually used.
* Choose forward.

![](emulate-pc-with-libvirt-on-arch-linux-pictures/new-vm-disk-space.png)

* Choose Finish.

![](emulate-pc-with-libvirt-on-arch-linux-pictures/new-vm-finish.png)

Now the virtual machine starts, and immediately reports "No bootable device". This is expected, as the virtual machine has no data on it's hard drive, and doesn't know about the ventoy memory stick yet.

![](emulate-pc-with-libvirt-on-arch-linux-pictures/boot-no-bootable-device.png)

* Press left-ctrl and left-alt to release your mouse from the VM.

* Choose Virtual machine -> shut down -> force off.

![](emulate-pc-with-libvirt-on-arch-linux-pictures/boot-force-off.png)

* Choose View -> details

![](emulate-pc-with-libvirt-on-arch-linux-pictures/view-details.png)

* Right-click on the list of hardware and choose add hardware -> USB Host Device, and select the memory stick, finish.

![](emulate-pc-with-libvirt-on-arch-linux-pictures/add-USB-host-device.png)

* Choose Boot options on the left, [X] enable USB xxxx:yyyy, and use the up arrow to move it at the top of the list, apply

![](emulate-pc-with-libvirt-on-arch-linux-pictures/boot-order.png)

* Choose view -> console.
* Choose Virtual Machine -> run. Now the virtual PC boots from the memory stick

![](emulate-pc-with-libvirt-on-arch-linux-pictures/boot-from-memory-stick.png)

## The costs
An empty 100GB hard drive image takes 15.8MB

![](emulate-pc-with-libvirt-on-arch-linux-pictures/image-size.png)

## The result
The virtual PC can now boot from a memory stick, and install an OS on it's harddrive.

## Reverting the change
Warning: This procedure will delete a virtual machine. This cannot be undone. Be sure to select the correct VM.

* Open Virtual Machine manager
* Right-click on the VM created above, and choose Delete. Also choose delete on its qcow2 virtual hard drive, and confirm you are sure.

# copyright
(c) Cedric de Wijs 2025

This page is licensed under the Creative Commons Attribution-NonCommercial 4.0 International license. You are free:
* to share – to copy, distribute and transmit the work
* to remix – to adapt the work

Under the following conditions:
* attribution – You must give appropriate credit, provide a link to the license, and indicate if changes were made. You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.
* Non commercial – You may not use the material for commercial purposes.

See the file cc-by-nc-40.txt for details