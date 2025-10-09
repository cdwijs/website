# Run Helldivers 2 on Arch Linux #

## The problem
Helldivers2 uses playprotect, a kernel level rootkit. On Windows, this rootkit can take over the Windows kernel, and therefore the entire machine.

## The solution
Helldivers 2 runs on Arch Linux. There the rootkit can only infect the emulated kernel, and not the Linux kernel underneath.

## The starting point
We start from a arch Linux machine wrunning Xorg and LXDE.

## The procedure


## The costs
Helldivers 2 takes about 150GB of disk space.

## The result
Helldivers 2 runs.

## Reverting the change
To revert the change, simply uninstall Helldivers 2, Steam, Proton 