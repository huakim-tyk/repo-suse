#!/bin/sh
dir="$(realpath $(dirname $0))/"

export HOME="/etc/skel"
gs='gsettings set'
lT='ln -sfTv'

dracut -f --kver=$(ls /lib/modules)
systemctl enable NetworkManager

$lT ../usr/share/zoneinfo/Etc/GMT-3 /etc/localtime
$lT boot/vmlinuz /vmlinuz
$lT boot/initrd /initrd.img

$gs org.gnome.Epiphany default-search-engine 'Google'
$gs org.gnome.Epiphany.web:/org/gnome/epiphany/web/ enable-webextensions true
$gs org.gnome.desktop.background picture-options 'none'
$gs org.gnome.desktop.background primary-color '#000000'
$gs org.gnome.desktop.input-sources sources "[('xkb', 'jp'), ('xkb', 'jp+rus')]"
$gs org.gnome.desktop.interface clock-show-seconds true
$gs org.gnome.desktop.interface color-scheme 'prefer-dark'
$gs org.gnome.desktop.interface cursor-theme 'Adwaita'
$gs org.gnome.desktop.interface document-font-name 'Ubuntu Medium 11'
$gs org.gnome.desktop.interface enable-animations false
$gs org.gnome.desktop.interface font-name 'Ubuntu 11'
$gs org.gnome.desktop.interface gtk-theme 'Adwaita'
$gs org.gnome.desktop.interface icon-theme 'Adwaita'
$gs org.gnome.desktop.interface monospace-font-name 'Ubuntu Mono 11'
$gs org.gnome.desktop.peripherals.keyboard delay 180
$gs org.gnome.desktop.peripherals.keyboard repeat true
$gs org.gnome.desktop.peripherals.keyboard repeat-interval 20
$gs org.gnome.desktop.peripherals.mouse speed 0.8
$gs org.gnome.desktop.peripherals.touchpad click-method 'areas'
$gs org.gnome.desktop.peripherals.touchpad natural-scroll false
$gs org.gnome.desktop.peripherals.touchpad speed 0.8
$gs org.gnome.desktop.peripherals.touchpad tap-and-drag true
$gs org.gnome.desktop.peripherals.touchpad tap-to-click true
$gs org.gnome.desktop.peripherals.touchpad two-finger-scrolling-enabled true
$gs org.gnome.desktop.wm.keybindings switch-input-source "['<Shift>Alt_L']"
$gs org.gnome.desktop.wm.keybindings switch-input-source-backward "['<Alt>Shift_L']"
$gs org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close"
$gs org.gnome.desktop.wm.preferences theme "Adwaita"
$gs org.gnome.mutter attach-modal-dialogs false
$gs org.gnome.settings-daemon.plugins.color night-light-enabled true
$gs org.gnome.shell enabled-extensions "['appindicatorsupport@rgcjonas.gmail.com']"
