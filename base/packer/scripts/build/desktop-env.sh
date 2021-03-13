#!/usr/bin/env bash

set -exu
export DEBIAN_FRONTEND='noninteractive'

apt-get update

apt-get -y install aufs-tools cgroupfs-mount mate-desktop-environment
# removing because it gets installed by mate-desktop-environment
apt remove --purge --auto-remove -y gdm3 # gnome-shell
# installing seperatly because of weird conflict with gdm3
apt-get -y install lightdm # --no-install-recommends

reboot
