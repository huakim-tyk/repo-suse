#!/bin/sh
dir="$(realpath $(dirname $0))/"

export HOME="/etc/skel"
gs='gsettings set'
lT='ln -sfTv'

systemctl enable NetworkManager

localectl set-locale en_US.UTF-8
localectl set-keymap jp106

ds(){
    if [ -f /etc/xdg/autostart/$1.desktop ]; then
        rm -v /etc/xdg/autostart/$1.desktop.disabled
        mv -vT /etc/xdg/autostart/$1.desktop{,.disabled}
    fi
}

ds xfsettingsd
ds org.gnome.Evolution-alarm-notify
ds ca.andyholmes.Valent-autostart

$lT ../usr/share/zoneinfo/Etc/GMT-3 /etc/localtime
$lT boot/vmlinuz /vmlinuz
$lT boot/initrd /initrd.img

v=org.gnome.Epiphany
$gs $v default-search-engine 'Google'
$gs $v.web:/org/gnome/epiphany/web/ enable-webextensions true

desktop=org.gnome.desktop
v=$desktop.background
$gs $v picture-options 'none'
$gs $v primary-color '#000000'

$gs $desktop.input-sources sources "[('xkb', 'jp'), ('xkb', 'jp+rus')]"

v=$desktop.interface
$gs $v clock-show-seconds true
$gs $v color-scheme 'prefer-dark'
$gs $v cursor-theme 'Adwaita'
$gs $v document-font-name 'Ubuntu Medium 11'
$gs $v enable-animations false
$gs $v font-name 'Ubuntu 11'
$gs $v gtk-theme 'Adwaita-dark'
$gs $v icon-theme 'Adwaita'
$gs $v monospace-font-name 'Ubuntu Mono 11'

peripherals=$desktop.peripherals
v=$peripherals.keyboard
$gs $v delay 180
$gs $v repeat true
$gs $v repeat-interval 20

$gs $peripherals.mouse speed 0.8

v=$peripherals.touchpad
$gs $v click-method 'areas'
$gs $v natural-scroll false
$gs $v speed 0.8
$gs $v tap-and-drag true
$gs $v tap-to-click true
$gs $v two-finger-scrolling-enabled true

windowmanager=$desktop.wm
v=$windowmanager.keybindings
$gs $v switch-input-source "['<Shift>Alt_L']"
$gs $v switch-input-source-backward "['<Alt>Shift_L']"

v=$windowmanager.preferences
$gs $v button-layout ":minimize,maximize,close"
$gs $v theme "Adwaita"

$gs org.gnome.mutter attach-modal-dialogs false

v=org.gnome.settings-daemon.plugins.color
$gs $v night-light-enabled true
$gs $v night-light-schedule-automatic false
$gs $v night-light-schedule-from 0
$gs $v night-light-schedule-to 0
$gs org.gnome.shell enabled-extensions "['appindicatorsupport@rgcjonas.gmail.com']"

