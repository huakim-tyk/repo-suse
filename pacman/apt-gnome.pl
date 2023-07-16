#!/bin/perl
use File::Basename;
use File::Spec;
require File::Spec->catfile(dirname(__FILE__), 'apt-gui.pl');
our @pkgs;

push @pkgs, qw(
celluloid
eog
evince
file-roller
gparted
gdm
gnome-control-center
gnome-disk-utility
gnome-keyring
gnome-menus
gnome-session
gnome-session-wayland
gnome-shell-extensions-common
gnome-software
gnome-system-monitor
gnome-themes
gnome-tweaks
gvfs-backends
gvfs-fuse
polkit-gnome
redshift
secrets
tilix
thunar
thunar-archive-plugin
thunar-volman
xdg-desktop-portal-gnome
);

push @pkgs, qw(
epiphany
evolution
);

unless (caller){
    load(@ARGV);
}
