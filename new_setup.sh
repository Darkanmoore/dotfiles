#!/bin/bash
#
# A simple (really simple, written in 1 or 2 minutes) script to automatically set up my Arch Linux <3
# 
#########################################################################
#									#
# DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE 				#
#                    Version 2, December 2004 				#
#									#
# Copyright (C) 2004 Sam Hocevar <sam@hocevar.net> 			#
#									#
# Everyone is permitted to copy and distribute verbatim or modified 	#
# copies of this license document, and changing it is allowed as long 	#
# as the name is changed. 						#
#									#
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE 		#
#   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION 	#
#									#
#  0. You just DO WHAT THE FUCK YOU WANT TO.				#
#									#
#########################################################################

time 

if [[ -f /usr/bin/git ]]; then
	cd $HOME
	git clone https://github.com/smlb/dotfiles.git
else
	echo "git is not installed, installing..."
	pacman -Sy git
fi

cd $HOME/dotfiles

if [[ -f $HOME/.config ]]; then
	mv $HOME/dotfiles/.config/* $HOME/.config
else
	mkdir -p $HOME/.config && mv $HOME/dotfiles/.config $HOME/.config
	rm -r $HOME/dotfiles/.config
	mv $HOME/dotfiles/* $HOME
fi


echo "Now let's setup the startup"
sleep 4; clear

cp /etc/skel/.xinitrc $HOME/.xinitrc
echo "exec openbox-session" >> $HOME/.xinitrc

echo "Some shit will be installed"
sleep 3; clear

echo "[archlinuxfr]" >> /etc/pacman.conf
echo "Server = http://repo.archlinux.fr/$arch" >> /etc/pacman.conf

echo "Updating.."; sleep 3
sudo pacman -Syy
sleep 4; clear

sudo pacman -Sy firefox vlc openbox obconf yaourt networkmanager newtork-manager-applet pcmanfm feh evince gnome-alsamixer vim deluge xscreensaver lxappearance htop 
yaourt -Sy obmenu-generator xfce4-theme-greybird volti termite compton-git psmouse-elantech
clear

su -c '$(echo "w /sys/kernel/debug/vgaswitcheroo/switch - - - - OFF" >> /etc/tmpfiles.d/vgaswitcheroo.conf)'

echo "Enabling daemons --"
sudo systemctl enable NetworkManager
sleep 3; clear

echo "System is going to reboot now, Thanks gor using this shitty script"
sudo reboot
