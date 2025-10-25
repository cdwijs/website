# Install linux Mint #

## The problem
I want to run Linux Mint on my PC but it's ssd is empty.

## The solution
Install Linux Mint on the PC.

## Getting help
Thered are a number of people who are willing to help you with the installation of Windows Mint. you can find them here: https://endof10.org/places/

There's also a forum for people running Linux Mint here:
https://forums.linuxmint.com/

## The starting point
* A PC with an empty SSD. This PC is called the TargetPC. In this guide, a VM is used.
* An empty memory stick. This needs to hold the 2.8GB .iso, so 4GB is enough.
* A second PC running Windows or Linux. This PC is used to download the needed files, and to format the memory stick.


## The preparation
### Download Linux Mint
Download both the Linux Mint iso and sha256sum.txt from here: https://www.linuxmint.com/download.php 

sha256sum.txt can be used to verify the iso file.

This guide uses the Cinnamon edition: linuxmint-22.2-cinnamon-64bit.iso

### Download ventoy
Download Ventoy from here:
https://www.ventoy.net/en/index.html this links to https://sourceforge.net/projects/ventoy/files/ 
* Download ventoy-1.1.07-linux.tar.gz if the hostPC runs Linux
* Download ventoy-1.1.07-windows.zip if the hostPC runs Windows

## The procedure

### Prepare the memory stick
Warning: all information on the memory stick will be erased when ventoy is installed. Updating ventoy should leave all files on the memory stick intact.
* On Linux, extract ventoy-1.1.07-linux.tar.gz
* Run VentoyGUI.x86_64, and give it root permission
* install Ventoy to the memory stick

![](install-linux-mint-pictures/ventoy-before-install.png)

![](install-linux-mint-pictures/ventoy-warning.png)

![](install-linux-mint-pictures/ventoy-second-warning.png)

![](install-linux-mint-pictures/ventoy-installing.png)

![](install-linux-mint-pictures/ventoy-done.png)

![](install-linux-mint-pictures/ventoy-installed.png)




* eject and replug the memory stick (to re-read the changed layout of the stick)
* copy linuxmint-22.2-cinnamon-64bit.iso and sha256sum.txt to the (now empty) memory stick.
* run sync (to make sure all data is synced to the memory stick), and unmount the memory stick
* plug the memory stick back in, and run this command on Linux to verify the .iso file. This will take a while, as the entire .iso has to be read from the memory stick.
``` bash
[cedric@cedric ~]$ cd /run/media/cedric/Ventoy/
[cedric@cedric Ventoy]$ sha256sum -c sha256sum.txt
linuxmint-22.2-cinnamon-64bit.iso: OK
sha256sum: linuxmint-22.2-mate-64bit.iso: No such file or directory
linuxmint-22.2-mate-64bit.iso: FAILED open or read
sha256sum: linuxmint-22.2-xfce-64bit.iso: No such file or directory
linuxmint-22.2-xfce-64bit.iso: FAILED open or read
sha256sum: WARNING: 2 listed files could not be read
```
* linuxmint-22.2-cinnamon-64bit.iso is correctly written to the memory stick. 
* linuxmint-22.2-mate-64bit.iso and linuxmint-22.2-xfce-64bit.iso are not found.


### Boot targetPC from the memory stick
Warning: Make sure only the SSD where Linux mint has to be installed are connected to the target PC. This prevents formatting and installing Linux mint on the wrong drive.

Insert the memory stick in the target PC. Start the target PC. Press a special key on the keyboard repeatedly to enter the BIOS. On my PC this is the delete key. On other PC's this can be another key like F2 or F12. Next locate the boot order menu, and choose the USB stick

Some PC's also have a key to get a boot device menu, without entering the BIOS. On my PC this is F12.

When everything went well, you will be greeted by the Ventoy screen:
![](install-linux-mint-pictures/ventoy-boot.png)

Press Enter to select linuxmint-22.2, and press enter again to choose "Boot in normal mode"
![](install-linux-mint-pictures/ventoy-boot-normal-mode.png)

Next choose "Start Linux Mint"
![](install-linux-mint-pictures/start-linux-mint.png)

### Install Linux Mint
Warning: Make sure only the memory stick containing Ventoy, and the SSD where Linux mint has to be installed are connected to the target PC. This prevents formatting and installing Linux mint on the wrong drive.

After starting Linux Mint, double click "Install Linux Mint" to start the installation
![](install-linux-mint-pictures/linux-mint-directly-after-boot.png)

Choose the language and press continue (this guide uses English)
![](install-linux-mint-pictures/linux-mint-install-language.png)

Choose the Keyboard Layout and press continue (this guide uses English (US))
![](install-linux-mint-pictures/linux-mint-install-keyboard-layout.png)

Enable the checkbox [X] Install Multimedia codex, and press continue
![](install-linux-mint-pictures/linux-mint-install-install-codecs.png)

Warning: This step gives the installer of Linux Mint permission to erase everything thats currently on the ssd.

As the hard drive is completely empty, the Linux Mint installer does't see any other operation system, and doesn't offer the choice to install Linux next to the existing OS. Choose "Erase disk and install Linux Mint", and continue.
![](install-linux-mint-pictures/linux-mint-install-erase-disk.png)

Warning: When the wrong drive is selected, it will be erased in the next step.

Select the correct drive and press "install now." (In this guide, a virtual SSD of 100GB is used):
![](install-linux-mint-pictures/linux-mint-install-select-drive.png)

Warning: When "Continue" is pressed, the selected drive is erased. This cannot be undone.

Check if linux Mint will be installed on the correct drive and press continue
![](install-linux-mint-pictures/linux-mint-install-write-changes-to-disk.png)

Specify what timezone must be used and press continue. (In this guide, Amsterdam is used):
![](install-linux-mint-pictures/linux-mint-install-timezone.png)

Warning: Make sureyou remember your password. if you forget the password, you cannot access your PC.

Enter the computername, your name and the password. and press continue
![](install-linux-mint-pictures/linux-mint-install-password.png)

Now the installer installs Linux Mint on the target SSD
![](install-linux-mint-pictures/linux-mint-install-copy-files.png)

After some time, the installation is complete. Choose Restart Now.
![](install-linux-mint-pictures/linux-mint-install-installation-complete.png)

Finally, remove the memory stick and press enter
![](install-linux-mint-pictures/linux-mint-install-remove-memory-stick.png)

Now the machine reboots, and Linux Mint is started from the SSD
![](install-linux-mint-pictures/install-linux-mint-welcome.png)

## The costs
Freshly installed, Linux Mint uses about 1016 of RAM and less than 12 GB of hard drive space.
![](install-linux-mint-pictures/install-linux-mint-usage.png)

## The result
Linux Mint is installed on the SSD.

