#!/bin/perl
use File::Basename;
use File::Spec;
require File::Spec->catfile(dirname(__FILE__), 'apt-chroot.pl');
our @pkgs;

push @pkgs, qw(
rpm-build
rpmdevtools
);

unless (caller){
    load(@ARGV);
}

