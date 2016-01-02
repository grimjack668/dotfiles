#
#  .bash_aliases
#

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias -- -="cd -"

# Other
alias ap='/usr/bin/ansible-playbook'
alias cda='cd /etc/ansible'
alias eb='/usr/bin/vim ~/.bashrc; source ~/.bashrc'
alias ls='ls --color=auto'
alias sd='/usr/bin/sudo su -'
alias tma='/usr/bin/tmux attach'
alias tms='/usr/bin/tmux list-sessions'
alias v-='amixer -q set Master 5- unmute'
alias v+='amixer -q set Master 5+ unmute'
alias vi='/usr/bin/vim'
alias yss='yaourt -Ss'
alias yssq='yaourt -Ssq'

