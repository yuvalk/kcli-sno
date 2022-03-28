# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
export KUBECONFIG=/root/.kcli/clusters/{{ cluster }}/auth/kubeconfig
export PATH=/usr/local/bin:/root/bin:$PATH
export LIBVIRT_DEFAULT_URI=qemu+ssh://{{ 'root' if config_user == 'apache' else config_user }}@{{ config_host if config_host != '127.0.0.1' else baremetal_net|local_ip(true) }}/system
