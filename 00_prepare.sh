#!/bin/bash

sudo yum -y install vim wget

sudo yum -y install libvirt libvirt-daemon-driver-qemu qemu-kvm
sudo usermod -aG qemu,libvirt $(id -un)
newgrp libvirt
systemctl enable --now libvirtd

dnf -y copr enable karmab/kcli ; dnf -y install kcli
dnf -y install httpd

echo """[racadm]
name=Racadm
baseurl=http://linux.dell.com/repo/hardware/dsu/os_dependent/RHEL8_64
enabled=1
gpgcheck=0""" > /etc/yum.repos.d/racadm.repo
dnf -y install openssl-devel srvadmin-idracadm7

systemctl enable --now httpd
kcli create host kvm -H 127.0.0.1 local
kcli create pool -p /var/www/html default
