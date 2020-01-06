
Debian
====================
This directory contains files used to package gemd/gem-qt
for Debian-based Linux systems. If you compile gemd/gem-qt yourself, there are some useful files here.

## gem: URI support ##


gem-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install gem-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your gem-qt binary to `/usr/bin`
and the `../../share/pixmaps/gem128.png` to `/usr/share/pixmaps`

gem-qt.protocol (KDE)

