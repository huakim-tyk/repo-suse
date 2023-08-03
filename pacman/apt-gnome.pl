#!/bin/perl
use File::Basename;
use File::Spec;
require File::Spec->catfile(dirname(__FILE__), 'apt-gui.pl');
our @pkgs;

push @pkgs, qw(
QGnomePlatform-qt5
QGnomePlatform-qt6
Tangram
alacarte
celluloid
dconf-editor
eog
evince
file-roller
gjs
gdm
gnome-color-manager
gnome-control-center
gnome-disk-utility
gnome-extensions
gnome-keyring
gnome-menus
gnome-power-manager
gnome-session
gnome-session-wayland
gnome-shell-extensions-common
gnome-shell-extension-appindicator
gnome-system-monitor
gnome-themes
gnome-tweaks
gparted
gtk2-metatheme-adwaita
gtk3-metatheme-adwaita
gvfs-backends
gvfs-fuse
libgnomesu
pipewire
polkit-gnome
redshift
secrets
thunar
thunar-archive-plugin
thunar-volman
unzip
valent
xdg-desktop-portal-gtk
xfce4-terminal
);
#xfce4-settings
#);

for (qw(good bad base ugly)){
    push @pkgs, "gstreamer-plugins-$_";
}

push @pkgs, qw(
epiphany
evolution
);

unless (caller){
    load(@ARGV);
}
