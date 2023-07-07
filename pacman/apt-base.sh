#!/bin/sh

pkgs="
$pkgs
NetworkManager
NetworkManager-dns-dnsmasq
NetworkManager-openvpn
NetworkManager-wifi
NetworkManager-wwan
at-spi2-core
bind-utils
btrfsprogs
ca-certificates
dhcp-client
dosfstools
file
grub2-i386-pc
inotify-tools
iputils
kbd
less
lsof
nano
ncurses
net-tools
ntfs-3g
passwdqc
pciutils
psmisc
rfkill
sed
sudo
systemd
systemd-sysvcompat
traceroute
which
whois
"


#dhcp-client
#dnf-plugin-system-upgrade
#dnf-plugins-core
#systemd-sysv

#push @pkgs, "apt-file", "apt-rdepends", "at-spi2-core", "apt-utils", 
#"ca-certificates", "console-setup", "dosfstools", "dpkg", "dpkg-repack", 
#"dpkg-dev", "file", "grub-efi-amd64", "grub-pc-bin", "grub-efi-ia32-bin", 
#"inetutils-ping", "inetutils-traceroute", "inotify-tools", "initramfs-tools", 
#"isc-dhcp-client", "less", "locales", "lsof", "nano", "net-tools", 
#"network-manager", "network-manager-openvpn", "ntfs-3g", "pciutils", 
#"psmisc", "refractainstaller-base", "refractasnapshot-base", "rfkill", 
#"software-properties-common", "systemd", "systemd-resolved", "systemd-sysv", 
#"sudo", "usr-is-merged", "whois", "whiptail", "wpasupplicant";


#pkgs="
#$pkgs
#kernel
#kernel-firmware-nvidia
#kernel-firmware-realtek
#"



#passwd
#realtek-firmware
#intel-compute-runtime
#mesa-dri-drivers
#nvidia-gpu-firmware

#"firmware-misc-nonfree",
#"firmware-realtek",
#"firmware-linux-free",
#"firmware-iwlwifi",
#"linux-image-liquorix-amd64";

load(){
  zypper --non-interactive --verbose --no-refresh install --no-recommends $pkgs "${@}"
}

#our sub load{
#    system("zypper", "install", "--no-refresh", "-v", @pkgs, @_); 
#}

if test -z "$caller"; then
    load
fi
