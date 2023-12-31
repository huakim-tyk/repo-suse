#!/bin/perl
use File::Basename;
use File::Spec;
require File::Spec->catfile(dirname(__FILE__), 'apt-rootfs.pl');
our @pkgs;

push @pkgs, qw(
at-spi2-core
bind-utils
btrfsprogs
dosfstools
dracut-kiwi-live
efibootmgr
grub2-i386-efi
grub2-i386-pc
grub2-x86_64-efi
multipath-tools
ntfs-3g
ntfsprogs
squashfs
systemd
timezone
wget
);

push @pkgs, qw(
kernel-default
kernel-firmware-realtek
);

unless (caller){
    load(@ARGV);
}
