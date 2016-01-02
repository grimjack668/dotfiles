#
# ~/.bashrc
#

# If not running interactively, don't do anything else
[[ $- != *i* ]] && return

# History {{{
#
# shamelessly ripped from https://github.com/gotbletu/dotfiles
#
export HISTCONTROL=ignoreboth         # Remove Extra Commands
export HISTCONTROL=erasedups          # Erase duplicates across the whole history
HISTCONTROL=ignorespace               # Space follow by a cmd,will not be saved in history
HISTCONTROL=ignoredups                # Rm Dupes, the continuous repeated entry from history 
HISTFILESIZE=3000                     # Bash history size limit
HISTSIZE=1000
export HISTTIMEFORMAT="%d/%m/%y %T "  # History list shows digital time and date

# }}}
# Exports {{{
#
# shamelessly ripped from https://github.com/gotbletu/dotfiles
#

# find alternative apps if it is installed on your system
find_alt() { for i;do which "$i" >/dev/null && { echo "$i"; return 0;};done;return 1; }

# set the default program
# the first program in the array will be chosen as the default
export OPENER=$(find_alt )
export BROWSER=$(find_alt firefox $OPENER )
export BROWSERCLI=$(find_alt lynx w3m $OPENER )
export COMICER=$(find_alt mcomix zathura $OPENER )
export EBOOKER=$(find_alt ebook-viewer $OPENER )
export EDITOR=$(find_alt vim $OPENER )
export FILEMANAGER=$(find_alt ranger dolphin $OPENER )
export MUSICER=$(find_alt mplayer mpg123 cvlc $OPENER )
export PAGER=$(find_alt less more)
export PLAYER=$(find_alt mplayer cvlc $OPENER )
export READER=$(find_alt zathura $OPENER )
export ROOTER=$(find_alt sudo )
# export IMAGEVIEWER=$(find_alt ristretto feh display eog $OPENER )

#}}}
# Configurations {{{
#
# shamelessly ripped from https://github.com/gotbletu/dotfiles
#

cfg-bashrc()         { $EDITOR ~/.bashrc ;}
cfg-bash-aliases()   { $EDITOR ~/.bash_aliases ;}
cfg-bash-colors()    { $EDITOR ~/.bash_colors ;}
cfg-bash-functions() { $EDITOR ~/.bash_functions ;}
cfg-bash-prompt()    { $EDITOR ~/.bash_prompt ;}
cfg-bash-load()      { $EDITOR ~/.bashrc.load ;}
cfg-inputrc()        { $EDITOR ~/.inputrc ;}

# }}}
# Configurations Reload {{{
#
# shamelessly ripped from https://github.com/gotbletu/dotfiles
#

rld-bashrc() { source ~/.bashrc ;}
rld-xresources() { xrdb -load ~/.Xresources ;}

# }}}

export ICAROOT=/opt/Citrix/ICAClient

source "$HOME/.bashrc.load"

source "$HOME/.homesick/repos/homeshick/homeshick.sh"
source "$HOME/.homesick/repos/homeshick/completions/homeshick-completion.bash"

# export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

function _exit()        # function to run upon exit of shell
{
    echo -e "${RED}Hasta la vista, baby${NC}"
}

trap _exit EXIT

