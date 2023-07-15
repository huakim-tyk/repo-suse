#!/bin/perl
our @pkgs;
use Data::Dumper;
$Data::Dumper::Terse=1;
$Data::Dumper::Indent=0;

push @pkgs, qw(                   
 ca-certificates                       
 ca-certificates-mozilla
 coreutils                             
 dhcp-client                          
 file 
 glibc                                 
 glibc-locale-base                            
 glibc-i18ndata
 hostname
 inotify-tools                        
 less
 lsof
 net-tools                               
 nano                                  
 NetworkManager                         
 pciutils                              
 psmisc     
 lsb-release                    
 shadow                                
 sudo                                            
 which                                 
 whois                                                                   
 wpa_supplicant                                                       
 zypper                                
 zypper-aptitude
);

our sub load {
  my $INSTALLROOT=$ENV{"INSTALLROOT"};
  my $INTERACTIVE=$ENV{'INTERACTIVE'};
  my $QUIET=$ENV{'QUIET'};
  my $REFRESH=$ENV{'REFRESH'};
  my $RECOMMENDS=$ENV{'RECOMMENDS'};
  my $NEEDED=$ENV{'NEEDED'};
  
  my @flags=qw(env ZYPP_SINGLE_RPMTRANS=1 ZYPP_MEDIANETWORK=1 zypper);
  defined $INSTALLROOT && push @flags, qw(--installroot), $INSTALLROOT;
  defined $INTERACTIVE || push @flags, qw(-n);
  defined $QUIET || push @flags, qw(-v -v -v -v);
  defined $QUIET && push @flags, qw(-q -q -q -q);
  defined $REFRESH || push @flags, qw(--no-refresh);
  push @flags, 'install';
  defined $NEEDED || push @flags, qw(--force); 
  defined $RECOMMENDS || push @flags, qw(--no-recommends); 
  defined $RECOMMENDS && push @flags, qw(--recommends); 

  push @flags, @_, @pkgs;
  
  print Dumper(\@flags);
  system(@flags);
}

unless (caller){
  load @ARGV;
}
