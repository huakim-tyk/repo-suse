#!/bin/perl
our @pkgs;
use Data::Dumper;
$Data::Dumper::Terse=1;
$Data::Dumper::Indent=0;

our @pkgs;

push @pkgs, qw(   
zypper
bash
);

our sub load {
  my $SHOWONLY=$ENV{'SHOWONLY'};
  @pkgs=sort @pkgs;
  if ($SHOWONLY) {
     for my $pkg (@pkgs){
         print("$pkg\n");
     }
     goto lab;
  }
  my $INSTALLROOT=$ENV{'INSTALLROOT'};
  my $INTERACTIVE=$ENV{'INTERACTIVE'};
  my $QUIET=$ENV{'QUIET'};
  my $REFRESH=$ENV{'REFRESH'};
  my $RECOMMENDS=$ENV{'RECOMMENDS'};
  my $FORCE=$ENV{'FORCE'};
  my $DOWNLOADONLY=$ENV{'DOWNLOADONLY'};
  
  my @flags=qw(env ZYPP_MEDIANETWORK=1 zypper --gpg-auto-import-keys);
  $INSTALLROOT && push @flags, qw(--installroot), $INSTALLROOT;
  $INTERACTIVE || push @flags, qw(-n);
  $QUIET || push @flags, qw(-v -v -v -v);
  $QUIET && push @flags, qw(-q -q -q -q);
  $REFRESH || push @flags, qw(--no-refresh);
  push @flags, 'install';
  $FORCE && push @flags, qw(--force); 
  $RECOMMENDS || push @flags, qw(--no-recommends); 
  $RECOMMENDS && push @flags, qw(--recommends);
  $DOWNLOADONLY && push @flags, qw(--download-only); 

  push @flags, @_, @pkgs;
  
  print Dumper(\@flags);
  system(@flags);
  lab:
}

unless (caller){
  load @ARGV;
}
