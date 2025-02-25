#!/bin/bash

glib-compile-schemas messagingmenu\@lauinger-clan.de/schemas/

cd messagingmenu\@lauinger-clan.de
gnome-extensions pack --podir=../po/ --out-dir=../ --extra-source=prefs.ui --extra-source=\icons
cd ..
mv messagingmenu@lauinger-clan.de.shell-extension.zip messagingmenu@lauinger-clan.de.zip
gnome-extensions install messagingmenu\@lauinger-clan.de.zip --force
gnome-extensions enable messagingmenu\@lauinger-clan.de
