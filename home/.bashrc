#
# ~/.bashrc
#

# If not running interactively, don't do anything else
[[ $- != *i* ]] && return

export EDITOR=vim

source "$HOME/.bashrc.load"

source "$HOME/.homesick/repos/homeshick/homeshick.sh"
source "$HOME/.homesick/repos/homeshick/completions/homeshick-completion.bash"

# export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting


