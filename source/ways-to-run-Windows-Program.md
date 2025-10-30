# Ways to run a Windows program

## On windows (bare metal)
Here the program runs on Windows (Native), directly on the hardware (Bare Metal)

### Advantages
* This is supported by the maker of the Windows program, so the program will probably run correctly.
* Windows has direct access to al hardware including the GPU. This enables full hardware acceleration.
* There are no changes in the enviroment, so the user doesn't need to get used to anything.
 It's possible to run an older version of Windows when the program requires it.

### Disadvantages
* Windows License required
* No other operation systems can run on the PC at the same time.
* The program needs to have support for the Windows version that's being run.
* Older versions of Windows probably don't run on the latest hardware.
* Windows 11 doesn't run on older hardware without a TPM 2 module, or without a compatible CPU.

## On Windown (In a virtual machine)
here the program runs on Windows (Native), while the PC runs virtualized on top of Linux.
### Advantages
* This is supported by the maker of the Windows program, so the program will probably run correctly.
* There are no changes in the enviroment, so the user doesn't need to get used to anything.
* It's possible to run an older version of Windows when the program requires it.
* Older PC's can be emulated, so older versions of Windows can be run.

### Disadvantages
* Windows License required
* The PC has to run two operating systems at the same time, so there's less CPU/RAM/SSD available for Windows and the program.
* The program needs to have support for the Windows version that's being run.
* * Windows has direct access to al hardware including the GPU. This enables full hardware acceleration.

## On Linux (In a compatibility layer)
Here the program runs on a compatibility layer. All the facilities the program uses are translated into Linux equvalents. 
### Advantages
* No Windows License required.
* Everything below the Windows program is open source software.
* Only one OS is running, so all the CPU/RAM/SSD can be used for the program.

### Disadvantages
* This is not supported by the maker of the Windows program, so the maker probably won't help when it doesn't work.

* The PC has to run two operating systems at the same time, so there's less CPU/RAM/SSD available for Windows and the program.
* The program needs to have support for the Windows version that's being run.
* * Windows has direct access to al hardware including the GPU. This enables full hardware acceleration.
* The methos the program is started is changed, so the user has to learn this new method.


## The Linux version on Linux
### Advantages
* This is supported by the maker of the program, so the program will probably run correctly.
* Linux has direct access to al hardware including the GPU. This enables full hardware acceleration.
 Only one OS is running, so all the CPU/RAM/SSD can be used for the program.

### Disadvantages
* A lot of Windows programs are Windows-only, so it's not possible to run it directly run it on Linux.

## An equivalent program with a Linux version.
