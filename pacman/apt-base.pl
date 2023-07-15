#!/bin/perl
use File::Basename;
use File::Spec;
require File::Spec->catfile(dirname(__FILE__), 'apt-rootfs.pl');
our @pkgs;

push @pkgs, qw(
 at-spi2-core                          
 bind-utils                            
 btrfsprogs                         
 dracut-kiwi-live                     
 dosfstools
 efibootmgr  
 grub2-i386-efi                        
 grub2-i386-pc                         
 grub2-x86_64-efi                     
 multipath-tools     
 NetworkManager-openvpn                
 ntfs-3g        
 ntfsprogs                       
 squashfs
);

push @pkgs, qw(
kernel-liquorix
kernel-firmware-realtek
);

unless (caller){
    load(@ARGV);
}
