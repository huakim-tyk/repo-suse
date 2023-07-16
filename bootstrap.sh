#!/bin/sh
#dhclient

smp="$(realpath $(dirname $0))"
cd "${smp}"
echo $(pwd)
dir="${smp}/bootstrap-$1"
#if ! [ -d "bootstrap" ]; then
#  debootstrap --variant=minbase trixie bootstrap http://deb.debian.org/debian/
#fi
cp -RTfvpu bootstrap "$dir"
cd "$dir"

i(){
 d=$2
 if test -z $d; then
  d=$1
 fi
 mkdir $1 -pv
 mount /$d $1/ --bind
}


i dev
i proc
i sys
#i extra "${smp}"
#chroot . /bin/bash
#chroot . /bin/dpkg --add-architecture i386
#chroot . /bin/bash /extra/pacman/aptat.sh
INSTALLROOT="${dir}" perl "/extra/pacman/apt-$1.pl"
i extra "${smp}"
chroot . /bin/bash /extra/pacman/copy.sh
chroot . /bin/bash /extra/pacman/user.sh
chroot . /bin/bash /extra/pacman/aptdt.sh
umount extra
chroot . /bin/dracut -f
ln -sfTv  ../usr/share/zoneinfo/Etc/GMT-3 "${dir}/etc/localtime"
ln -sfTv  boot/vmlinuz "${dir}/vmlinuz"
ln -sfTv  boot/initrd "${dir}/initrd.img"
chroot . /bin/systemctl enable NetworkManager
umount dev proc sys
