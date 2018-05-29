#!/bin/bash
rm -f /etc/sudoers.d/g_wheel
#rm /etc/systemd/system/default.target
rm /usr/share/applications/calamares.desktop
rm -f /etc/skel/.config/autostart/calamares.desktop
rm -rf /etc/calamares
rm -rf /usr/lib/calamares
rm -rf /usr/share/backgrounds/xfce
rm -f /etc/polkit-1/rules.d/49-nopasswd_global.rules
rm -r /etc/systemd/system/etc-pacman.d-gnupg.mount
rm /root/{.automated_script.sh,.zlogin}
rm /etc/mkinitcpio-archiso.conf
rm -r /etc/initcpio
sed -i 's/'#autologin-user='/'autologin-user=liveuser'/g' /etc/lightdm/lightdm.conf
sed -i 's/'#autologin-session='/'autologin-session=xfce'/g' /etc/lightdm/lightdm.conf
gsettings set net.launchpad.plank.dock.settings:/net/launchpad/plank/docks/dock1/ position 'left'
gsettings set net.launchpad.plank.dock.settings:/net/launchpad/plank/docks/dock1/ theme 'OSXYosemite'
gsettings set net.launchpad.plank.dock.settings:/net/launchpad/plank/docks/dock1/ zoom-enabled 'true'
gsettings set net.launchpad.plank.dock.settings:/net/launchpad/plank/docks/dock1/ icon-size '36'
rm /usr/bin/cleanup.sh
