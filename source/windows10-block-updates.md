# Block Windows update #

## The problem
Windows automatically updates itself. As part of the update Windows reboots itself.

## The solution
A firewall can block all communication between Windows and the Microsoft servers. This prevents the update from being downloaded, so it cannot be installed, and the machine doesn't reboot.

## The starting point
We start from a freshly installed Windows 10 machine with a local account.

## The procedure
### install tinywall
Note: this cannot be done remotely, as Tinywall will block all connections by default.

## The costs
Tinywall uses about 50MB of memory
Windows doesn't gets updated, that can be a problem.

## The result
Windows has not updated itself, and it has never rebooted.

## Reverting the change
To revert the change, simply uninstall Tinywall.