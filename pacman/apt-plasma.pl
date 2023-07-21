#!/bin/perl
use File::Basename;
use File::Spec;
require File::Spec->catfile(dirname(__FILE__), 'apt-gui.pl');
our @pkgs;

push @pkgs, qw(
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
kdialog
kmenuedit5
konsole
kscreen
kwin5
metatheme-breeze-common
okular
partitionmanager
plasma5-systemmonitor
plasma5-session
plasma5-session-wayland
plasma-nm5 
plasma5-pa 
sddm
systemsettings5
upower
vlc
xdg-desktop-portal-kde
);

#push @pkgs, qw(
#accountsservice
#ark
#bluedevil5
#dolphin
#gnome-disk-utility
#gtk2-metatheme-breeze
#gtk3-metatheme-breeze
#gtk4-metatheme-breeze
#gwenview
#keepassxc
#kcm_sddm
#kde-gtk-config
#kde-inotify-survey
#kdialog
#kio-fuse
#kmenuedit5
#konsole
#kscreen
#kwin5
#metatheme-breeze-common
#okular
#partitionmanager
#plasma-nm5
#plasma5-pa
#plasma5-systemmonitor
#plasma5-session-wayland
#sddm
#systemsettings5
#upower
#vlc
#xdg-desktop-portal-kde
#);

#push @pkgs, qw(
#kmail-account-wizard
#falkon
#kmail
#);

push @pkgs, qw(
falkon
);

unless (caller){
    load(@ARGV);
}
