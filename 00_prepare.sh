#!/bin/bash

yum -y install vim wget

dnf -y copr enable karmab/kcli ; dnf -y install kcli
dnf -y install httpd

systemctl enable --now httpd

test -f /root/.ssh/id_rsa.pub || ssh-keygen -t rsa -N '' -f /root/.ssh/id_rsa
