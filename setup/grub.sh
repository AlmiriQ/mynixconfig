#!/bin/sh
diskID=`cat /etc/fstab | grep "/boot" | awk '{print($1)}'`
umount $diskID
rm -rfv /boot/*
mkdir /boot/efi
mount $diskID /boot/efi
rm -rfv /boot/efi/*
sed -i 's#/boot#/boot/efi#' /etc/nixos/hardware-configuration.nix
