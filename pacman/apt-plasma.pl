#!/bin/perl
use File::Basename;
use File::Spec;
require File::Spec->catfile(dirname(__FILE__), 'apt-gui.pl');
our @pkgs;

push @pkgs, qw(
accountsservice
ark
bluedevil5
dolphin
gnome-disk-utility
gtk2-metatheme-breeze
gtk3-metatheme-breeze
gtk4-metatheme-breeze
gwenview
keepassxc
kcm_sddm
kde-gtk-config
kde-inotify-survey
kdeconnect-kde
kdialog
kio-fuse
kmenuedit5
konsole
kscreen
kwayland-integration
kwin5
metatheme-breeze-common
okular
partitionmanager
plasma-nm5
plasma5-pa
plasma5-session
plasma5-session-wayland
plasma5-systemmonitor
sddm
systemsettings5
upower
vlc
xdg-desktop-portal-kde
);

push @pkgs, qw(
kmail-account-wizard
falkon
kmail
);

unless (caller){
    load(@ARGV);
}
