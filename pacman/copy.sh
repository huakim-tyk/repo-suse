#!/bin/sh
dir="$(realpath $(dirname $0))/"
dest="${1}/"

. "${dir}copy_func.sh"

parsefile 'copy.list' copy

dracut -f
ln -sfTv  ../usr/share/zoneinfo/Etc/GMT-3 /etc/localtime
ln -sfTv  boot/vmlinuz /vmlinuz
ln -sfTv  boot/initrd /initrd.img
systemctl enable NetworkManager
