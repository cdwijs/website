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

# copyright
(c) Cedric de Wijs 2025

This page is licensed under the Creative Commons Attribution-NonCommercial 4.0 International license. You are free:
* to share – to copy, distribute and transmit the work
* to remix – to adapt the work

Under the following conditions:
* attribution – You must give appropriate credit, provide a link to the license, and indicate if changes were made. You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.
* Non commercial – You may not use the material for commercial purposes.

See the file cc-by-nc-40.txt for details