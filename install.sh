#!/bin/bash 
# Fix pacman keyring and install XFCE on BlackArch with full pacman conflict resolution 

echo "🔧 Resetting pacman keyring..." 
sudo rm -r /etc/pacman.d/gnupg 
sudo pacman-key --init 
sudo pacman-key --populate archlinux blackarch 

echo "🔧 Disabling [community] repo..." 
sudo sed -i '/\[community\]/,+1 s/^/#/' /etc/pacman.conf 

echo "⚠️ Removing conflicting packages..." 
# Remove all packages that were causing update conflicts 
sudo pacman -Rdd --noconfirm \   python-typing-extensions \   python-keras-applications \   python-keras-preprocessing \   python-gast03 \   jre11-openjdk \   jre11-openjdk-headless 

echo "🔄 Resyncing package databases and updating system..." 
sudo pacman -Syyu --noconfirm 

echo "💻 Installing XFCE desktop and LightDM..." 
sudo pacman -S --noconfirm xfce4 xfce4-goodies lightdm lightdm-gtk-greeter network-manager-applet 

echo "🔌 Enabling display and network manager services..." 
sudo systemctl enable lightdm 
sudo systemctl enable NetworkManager 

echo " ✅ Done. Rebooting into XFCE..." 
sleep 3 
sudo reboot 
