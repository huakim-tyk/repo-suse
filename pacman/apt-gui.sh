#!/bin/sh
#unless(caller){
#    use File::Basename;
#    use lib dirname($0);
#    our @pkgs;
#}

dir="$(realpath $(dirname $0))/"

caller=base . "${dir}/apt-base.sh";

pkgs="
$pkgs
dbus-1-x11
geany
gnome-themes-extras
menulibre
pavucontrol
pulseaudio
pulseaudio-module-bluetooth
xorg-x11-server
xorg-x11-server-extra
"
#push @pkgs, "dbus-x11", "geany", "gnome-themes-extras", "menulibre", 
#"ovmf", "libvirt-clients", "pavucontrol", "plymouth-themes", "pulseaudio", 
#"pulseaudio-module-bluetooth", "qemu-system-gui", "qemu-system-x86", 
#"refractainstaller-gui", "refractasnapshot-gui", "xorg", 
#"xserver-xephyr";

if test -z "$caller"; then
    load
fi
