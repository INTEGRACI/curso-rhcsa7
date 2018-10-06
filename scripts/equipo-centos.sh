#!/bin/bash
###############################################################################
# Descripción: Script para instalar los paquetes del curso en un equipo CentOS
# Autor: Jorge Díaz - jorge@integraci.com.mx
# Licencia: GPL Versión 2
###############################################################################

# Detección de usuario, se debe ejecutar como usuario root
if [[ $EUID -ne 0 ]]; then
    echo -ne "\nPor favor ejecuta el script como usuario \"root\".\n"
    exit 1
fi

yum clean metadata
yum -y update

yum -y groupinstall "@Virtualization Hypervisor"

yum -y install virt-manager
yum -y install virt-install
yum -y install virt-viewer

systemctl enable libvirtd
systemctl start libvirtd

yum -y install git
yum -y install vim

curl -sSL https://integraci.github.io/curso-rhcsa7/scripts/crea-bridge.sh | bash
