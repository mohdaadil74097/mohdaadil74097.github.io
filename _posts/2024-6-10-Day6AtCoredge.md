---
 layout: post
 title: Day 6 At Coredge as a linux admin trainee
 date: 2024-6-10
---

**It's day six as a Linux Admin Trainee at Coredge and it is a great day!**

**Here is my today's tasks to do research on Linux Foundation Course**

**Booting process in Linux**

Linux booting process is the procedure for initializing  or starting the system.

It is having all the details from when the computer power on until the user interface.

**Steps in the Booting process of Linux**
 - Power on (Giving the power to the server)
 - BIOS (It initializes the hardware of the system or we can say it checks the hardware)
 - MBR (It loads the boot loader,Basically it locates the operating system,contains 512bytes) 
 - GRUB (It loads the kernel)
 - Kernel (Initializes and loads initrd/initramfs)
 - Systemd (Starts system services and sets run level)
 - User Login

**Linux File System**

File system is like a library where we can find a sequential  setup of books.

For managing a lot of files Operating system needs a system whic is called file system.

Operating system store and manage data on disk or partitions using a structure called filesystem.

File system include files,directories and its related permissions.

EXAMPLE OF FILE SYSTEM ->

 - ext3
 - ext4
 - xfs
 - fat ,etc.

Note-> File system is a method of storing files on hard disk.

**lsblk -f** is used to check by default filesystem of an Operating system.

**Structure of FileSystem**

**/boot** -> It is having files used by boot loader (eg-> grub).
**/dev** -> It is having device files (/dev/sda,/dev/nvme,etc).
**/etc** -> It is having all the configuration files.
**/usr/bin** -> It is having all the binaries.
**/usr/sbin** -> It is having system binaries of the root directory.
**/proc** -> It is having all the files related to running processes.
**/usr/lib** -> It is having C program library files.
**/tmp** -> It is having temporary files which removes when the system boots.
**/home** -> It is having all the user's home directory.
**/root** -> It is a home directory for root user.
**/var** -> It is having all the system logs.
**/run** -> It is having system daemons that starts very early.
**/mnt** -> To mount external filesystem,etc.

