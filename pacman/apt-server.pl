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
systemd
timezone
wget
);

push @pkgs, qw(
kernel-kvmsmall
);

unless (caller){
    load(@ARGV);
}
