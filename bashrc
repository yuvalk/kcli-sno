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
