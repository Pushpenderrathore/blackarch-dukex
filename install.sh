#!/bin/bash

sudo rm /var/lib/pacman/db.lck
sudo rm -r /etc/pacman.d/gnupg
sudo pacman-key --init
sudo pacman-key --populate archlinux blackarch

