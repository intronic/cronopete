# CRONOPETE

A backup utility for Linux.

Cronopete is a backup utility for Linux, modeled after Apple's Time Machine. It aims to simplify the creation of periodic backups.

By default, cronopete does a backup each hour, adding to the new backup only the files that have changed since the last one. This allows to return to a previous backup in an specific instant of time.

It is important to have a generous external disk for backups. It is strongly recommended to use a disk of, at least, twice the size of the data to store. SSD disks aren't recommended, because their speed gain is unnecessary for a backup, and are much more expensive than a mechanical disk. An external, USB3, mechanical disk is an excellent choice for storing your backups.

## BUILDING CRONOPETE

To build Cronopete, you need to install CMake or Meson/Ninja, Vala-0.30 or later, and Gtk 3.10 or later.

For CMake building, type

    mkdir BUILD
    cd BUILD
    cmake ..
    make
    sudo make install

and for Meson/Ninja, type

    mkdir MESON
    cd MESON
    meson
    ninja
    sudo ninja install

This will compile Cronopete and install it systemwide.

There are several dependencies for building it. For Debian/Ubuntu, you can check the file **debian/control**, and install all the packages specified in the lines *Depends* and *Build-Depends*. For Redhat/Fedora, check **rpmbuild/SPECS/cronopete.spec** and install the packages specified in the lines with *Requires* and *BuildRequires*. For Arch Linus, check **pkgbuild** and the packages in *depends* and *makedepends*.

## DBUS INTERFACE

Cronopete offers a DBus interface to allow a remote control. It is at the session bus, at the address **com.rastersoft.cronopete**. The object **com/rastersoft/cronopete** offers the **com.rastersoft.cronopete** interface, which has the follow methods:

* DoPing(Int32) -> Int32 : receives a 32bit integer and returns that integer plus 1. Useful for tests.
* DoBackup() : starts a backup now
* StopBakup() : ends the current backup
* ShowPreferences() : shows the preferences window
* RestoreFiles() : shows the restore interface
* RestoreFilesFromFolder(string folder) : shows the restore interface, setting it to show the specified folder. The folder can be passed as an URI (file:///...). This is useful for integration with file managers.
* UnmountBackupDisk() : tries to unmount the backup disk. If it is not possible (because it is not mounted, or there is a backup in progress) it will return an error
* SetStatus(boolean) : enables or disables the backup process

## CONTACTING THE AUTHOR

Sergio Costas Rodriguez  
rastersoft@gmail.com  
http://www.rastersoft.com  
https://gitlab.com/rastersoft/cronopete.git  
