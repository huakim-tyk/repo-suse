#!/bin/perl
use File::Basename;
use File::Spec;
require File::Spec->catfile(dirname(__FILE__), 'apt-chroot.pl');
our @pkgs;

push @pkgs, qw(                   
NetworkManager
branding-upstream
ca-certificates
ca-certificates-mozilla
coreutils
dhcp-client
file
glibc
glibc-i18ndata
glibc-locale-base
hostname
inotify-tools
less
lsb-release
lsof
nano
net-tools
pciutils
psmisc
sed
shadow
sudo
which
whois
wpa_supplicant
zypper-aptitude
);

unless (caller){
    load(@ARGV);
}

