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
gdm
gnome-control-center
gnome-disk-utility
gnome-menus
gnome-session
gnome-shell-extensions-common
gnome-software
gnome-system-monitor
gnome-terminal
gnome-tweaks
gvfs-backends
gvfs-fuse
polkit-gnome
redshift
thunar
thunar-archive-plugin
thunar-volman
);

push @pkgs, qw(
epiphany
evolution
);

unless (caller){
    load(@ARGV);
}
