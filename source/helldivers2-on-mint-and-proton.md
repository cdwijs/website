
# Play Helldivers2 on Linux Mint.

## The problem
Helldivers2 has kernel level anti-cheat. I'm not going to let a game install a rootkit on my PC, so running Helldivers2 on Windows is not an option.

## The solution
Helldivers 2 can run on Proton. Proton is a compatibility layer that accepts Windows requests from Helldivers2, and translates them into their Linux equivalents. This compatibility layer runs as a normal user, so any kernel level anti cheat rootkits can't infect the Linux system underneath.

## The starting point
A freshly installed Linux Mint system. See this article for that procedure: install-linux-mint.md

## Requirements
* A steam account with Helldivers2
* A PC with 150GB free disk space
* A decent internet connection (Helldivers2 downloads about 35GB during install).

## The preparation
Make sure Linux Mint has been updated.

## The procedure
### Install steam
* Start software manager and install steam.
* Launch steam and allow it to install in your home directory

### Install Helldivers2
* Sign into steam with you username and password (and probably a code that is send to your e-mail account)
* In Steam, locate Helldivers2, press install, and accept the EULA. Now about 35GB is downloaded.
* In steam, start Helldivers2. Now the Vulkan shaders are processed. This takes a lot of time. Next the games starts.

## The costs
Linux mint now uses 154GB of disk space

## The result
Helldivers2 is now playable on Linux Mint.