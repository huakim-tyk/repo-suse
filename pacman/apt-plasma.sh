#!/bin/sh

#unless(caller){
#    use File::Basename;
#    use lib dirname($0);
#    our @pkgs;
#}
dir="$(realpath $(dirname $0))/"

caller="base" . "${dir}/apt-gui.sh";

pkgs="
$pkgs
accountsservice
ark
bluedevil5
dolphin
gnome-disk-utility
gwenview
kdeconnect-kde
kde-inotify-survey
kde-gtk-config
systemsettings5
kdialog
kio-admin
kio-extras5
kio-fuse
konsole
kscreen
kwayland-integration
kwin5
okular
plasma5-desktop
plasma-nm5
plasma5-pa
plasma5-systemmonitor
plasma-wayland-protocols
plasma5-workspace
sddm
kcm_sddm
upower
vlc
xdg-desktop-portal-kde
"

# plasma-workspace-wayland

#push @pkgs, "accountsservice", "ark", "bluedevil", "dolphin-root", 
#"gnome-disk-utility", "gwenview", "kde-config-gtk-style", 
#"kdeconnect", "kde-config-screenlocker", "kde-config-sddm", "kdialog", 
#"kfind", "kio-admin", "kio-extras", "kio-fuse", "knewstuff-dialog", 
#"konsole", "kscreen", "kwin-x11", "kwin-wayland", "libvirt-clients", 
#"okular", "plasma-desktop", "plasma-nm", "plasma-pa", "plasma-systemmonitor", 
#"plasma-workspace", "plasma-workspace-wayland", "powerdevil", 
#"pulseaudio", "pulseaudio-module-bluetooth", "sddm", "sddm-theme-breeze",
#"systemsettings", "upower", "vlc", "vlc-plugin-access-extra", 
#"xdg-desktop-portal-kde";

pkgs="
$pkgs
kmail-account-wizard
falkon
kmail
"

if test -z "${caller}"; then
    load
fi
