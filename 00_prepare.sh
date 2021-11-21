#!/bin/bash

yum -y install vim wget

dnf -y copr enable karmab/kcli ; dnf -y install kcli
dnf -y install httpd

echo """[racadm]
name=Racadm
baseurl=http://linux.dell.com/repo/hardware/dsu/os_dependent/RHEL8_64
enabled=1
gpgcheck=0""" > /etc/yum.repos.d/racadm.repo
dnf -y install openssl-devel srvadmin-idracadm7

systemctl enable --now httpd

test -f /root/.ssh/id_rsa.pub || ssh-keygen -t rsa -N '' -f /root/.ssh/id_rsa
