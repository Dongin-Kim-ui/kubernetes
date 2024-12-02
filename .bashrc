# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
 
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias c='clear'
#
# Sfecific configuration
#
export PS1='\[\e[31;1m\][\u@\h\[\e[33;1m\] \w]\$ \[\e[m\]'
alias vi='/usr/bin/vim'

#########################################
# Kubernetes Configuration
#########################################
source <(kubectl completion bash)
source <(kubeadm completion bash)
alias k=kubectl
complete -o default -F __start_kubectl k

#nerdctl CMD
alias docker='nerdctl'

#kubectx and kubens
export PATH=~/.kubectx:$PATH
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
alias kubens='kubectl ns'
alias kubectx='kubectl ctx'

alias grep='grep --color=auto -i' 
alias findapi='kubectl api-resources | head -1 ; kubectl api-resources | grep '

alias k='kubectl'
alias rmpod='kubectl delete pods --all'
