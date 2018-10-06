#!/bin/bash

###############################################################################
# Script para la instalación de un equipo con Fedora Linux.                   #
# Autor: Jorge Díaz - jorge@integraci.com.mx                                  #
# Licencia: GPL Versión 3                                                     #
###############################################################################

dnf clean metadata

dnf -y install --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

dnf -y update

dnf -y groupinstall "Development Tools"
dnf -y groupinstall "Development Libraries"
dnf -y groupinstall "Engineering and Scientific"
dnf -y groupinstall --with-optional Virtualization

dnf -y install lm_sensors

dnf -y install dkms
dnf -y install cdbs
dnf -y install devscripts
dnf -y install dh-make
dnf -y install fakeroot
dnf -y install sshfs

dnf -y install unace
dnf -y install unrar
dnf -y install p7zip
dnf -y install sharutils
dnf -y install uudeview
dnf -y install arj

dnf -y install cabextract
dnf -y install wine

dnf -y install jortho-dictionary-es
dnf -y install hunspell-es
dnf -y install man-pages-es
dnf -y install man-pages-es-extra
dnf -y install system-config-language

dnf -y install gparted
dnf -y install nautilus-open-terminal
dnf -y install clamtk

dnf -y install vim
dnf -y install blender
dnf -y install gimp
dnf -y install gimp-data-extras
dnf -y install inkscape
dnf -y install ImageMagick
dnf -y install dia
dnf -y install freemind
dnf -y install scribus
dnf -y install xchm
dnf -y install calibre

dnf -y install transmission
dnf -y install filezilla

dnf -y install xchat
dnf -y install pidgin

dnf -y install gstreamer-*
dnf -y install gstreamer1-*

dnf -y install vlc
dnf -y install vlc-extras
dnf -y install mplayer
dnf -y install gtk-recordmydesktop
dnf -y install vokoscreen
dnf -y install audacity
dnf -y install kdenlive
dnf -y install flowblade
dnf -y install brasero

dnf -y install android-tools
dnf -y install arduino
dnf -y install fritzing

dnf -y install nmap
dnf -y install wireshark

dnf -y install bleachbit

dnf -y install qemu
dnf -y install virt-manager
dnf -y install virt-install
dnf -y install virt-viewer
dnf -y install VirtualBox

dnf -y install ansible

reboot
