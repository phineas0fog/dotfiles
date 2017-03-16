clear
tail -50 ~/memo.org

autoload -U zmv
autoload -U compinit && compinit

#EDITOR
export VISUAL="emacsclient -nc"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/phineas/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"
export TERM="xterm-256color"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
#COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(wd sudo zsh-completions z h zsh-autosuggestions colored-man-pages colorize catimg copydir copyfile cp archlinux thefuck web-search extract history )

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
#
#ALISASES :
alias l=" ls"
alias la=" ls --almost-all"
alias ll=" ls -lh"
alias lla=" ls -lAh"
alias vi="vim"
alias ip="ip -c address show"
alias duhs=" du -sh * | sort -rh"
alias vtop="vtop --theme wizard"
#alias emacs="emacsclient -nc"
alias emacsS="emacs"
alias promptreload="source ~/.zshrc"
#alias ls=' ls' #dont put ls in history
alias help='cat ~/.memo.txt'
alias cat="cat -n"
alias chmox="chmod +x"
alias firedev="Softs/firefox/firefox NUL &"
alias meteo=" curl wttr.in/Clermont-Ferrand"

alias view="viewnior"

#GIT
alias gcm="git commit -m"
alias ga="git add"
alias gp="git push origin master"

#SCRIPTS
alias todoADD='~/Scripts/todoAdd.sh'

#PIPES ALIASES :
alias -g H='| head'
alias -g T='| tail'
alias -g G='| grep'
alias -g L="| less"
alias -g M="| most"
alias -g B="&|"
alias -g HL="--help"
alias -g LL="2>&1 | less"
alias -g CA="2>&1 | cat -A"
alias -g NE="2> /dev/null"
alias -g NUL="> /dev/null 2>&1"

#FILES :
alias -s png="viewnior &"
alias -s PNG="viewnior &"
alias -s jpg="viewnior &"
alias -s JPG="viewnior &"
alias -s jpeg="viewnior &"
alias -s JPEG="viewnior &"
alias -s pdf="qpdfview &"

#CODE :
#alias comp="clear && gcc *.c -o COMP && clear && ./COMP"
#alias comp-ne="clear && gcc *.c -o COMP"
alias comp="clear && clang *.c -o COMP && clear && ./COMP"
alias comp-ne="clear && clang *.c -c COMP"


#PROMPT CONFIG : (for POWERLEVEL9K)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

POWERLEVEL9K_DISABLE_RPROMPT=true

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator dir vcs status )

POWERLEVEL9K_ROOT_INDICATOR_FOREGROUND='white'
POWERLEVEL9K_ROOT_INDICATOR_BACKGROUND='160'

POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='white'
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='088'

POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND='white'
POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND='088'

POWERLEVEL9K_DIR_HOME_FOREGROUND='white'
POWERLEVEL9K_DIR_HOME_BACKGROUND='234'

POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='white'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='235'

POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='white'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='234'

POWERLEVEL9K_STATUS_OK_FOREGROUND='070'
POWERLEVEL9K_STATUS_OK_BACKGROUND='237'

POWERLEVEL9K_STATUS_ERROR_FOREGROUND='196'
POWERLEVEL9K_STATUS_ERROR_BACKGROUND='237'

POWERLEVEL9K_VCS_CLEAN_FOREGROUND='white'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='236'

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=
POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX=" ❯ "
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2

#PLUGINS INCLUDES
source /home/phineas/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#FUNCTIONS
zman() {
  PAGER="less -g -s '+/^       "$1"'" man zshall
}

###### convert seconds to minutes, hours, days, and etc.
# inputs a number of seconds, outputs a string like "2 minutes, 1 second"
# $1: number of seconds
#
function displaytime {
  local T=$1
  local D=$((T/60/60/24))
  local H=$((T/60/60%24))
  local M=$((T/60%60))
  local S=$((T%60))
  [[ $D > 0 ]] && printf '%d days ' $D
  [[ $H > 0 ]] && printf '%d hours ' $H
  [[ $M > 0 ]] && printf '%d minutes ' $M
  [[ $D > 0 || $H > 0 || $M > 0 ]] && printf 'and '
  printf '%d seconds\n' $S
}
  
  
#Petit hack pour avoir une notification lorsqu'une longue commande
#est terminée, un peu comme avec undistract-me
#http://www.ihashacks.com/blog/2013/01/19/zsh-ified-undistract-me/
  
# commands to ignore
#
cmdignore=(htop tmux top vim v gst vis ranger mc fish vtop weechat)
  
# end and compare timer, notify-send if needed
function notifyosd-precmd() {
    retval=$?
    if [[ ${cmdignore[(r)$cmd_basename]} == $cmd_basename ]]; then
        return
    else
        if [ ! -z "$cmd" ]; then
            cmd_end=`date +%s`
            ((cmd_time=$cmd_end - $cmd_start))
        fi
        if [ $retval -gt 0 ]; then

            cmdstat="with warning"
            sndstat="/usr/share/sounds/gnome/default/alerts/sonar.ogg"
        else

            cmdstat="successfully"
            sndstat="/usr/share/sounds/gnome/default/alerts/glass.ogg"
        fi
        if [ ! -z "$cmd" -a $cmd_time -gt 10 ]; then
	    if [ -e ~/Scripts/msiNotify.sh ]
	    then
		if [ $retval -gt 0 ]; then
		    ~/Scripts/msiNotify.sh 1;
		else
		    ~/Scripts/msiNotify.sh 0;
		fi
	    fi

	    
            if [ ! -z $SSH_TTY ]
	    then
                #notify-send -i utilities-terminal -u low "$cmd_basename on `hostname` completed $cmdstat" "\"$cmd\" took $cmd_time seconds"; play -q $sndstat
                notify-send -i utilities-terminal -u normal "$cmd_basename on `hostname` completed $cmdstat" "\"$cmd\" took `displaytime $cmd_time` return $retval" -t 3000
            else
                #notify-send -i utilities-terminal -u low "$cmd_basename completed $cmdstat" "\"$cmd\" took $cmd_time seconds"; play -q $sndstat
                notify-send -i utilities-terminal -u normal "$cmd_basename completed $cmdstat" "\"$cmd\" took `displaytime $cmd_time` return $retval" -t 3000
            fi
        fi
        unset cmd
    fi
}
  
# make sure this plays nicely with any existing precmd
precmd_functions+=( notifyosd-precmd )
  
# get command name and start the timer
function notifyosd-preexec() {
    cmd=$1
    cmd_basename=${${cmd:s/sudo //}[(ws: :)1]}
    cmd_start=`date +%s`
}
  
# make sure this plays nicely with any existing preexec
preexec_functions+=( notifyosd-preexec )


function bak(){
    for arg in $*
    do
	mv $arg $arg.bak;
    done
}


function copy(){
    #check if buffer exist and create if not
    if [ -e /tmp/buffer ]
    then
	rm /tmp/buffer;
    fi
    touch /tmp/buffer;

    #copy absolute paths in buffer
    echo $# > /tmp/buffer;
    for arg in $*
    do
	echo $(pwd)"/"$arg >> /tmp/buffer;
    done
}

function glue(){
    #init counter
    i=0;

    #check if buffer exist
    if [ ! -f /tmp/buffer ]
    then
	echo "Nothing to paste...";
	exit 1;
    fi

    #get paths in buffer file and paste in the current repertory
    while [ $i -lt $(head -1 /tmp/buffer) ]
    do
	echo Copying $(sed -n "$(($i+2))"p /tmp/buffer) in $(pwd);
	cp -r $(sed -n "$(($i+2))"p /tmp/buffer) .;
	let i++;
    done

    #delete the now useless buffer file
    rm /tmp/buffer;
}
# List files in zsh with <TAB>
#
# Copyleft 2017 by Ignacio Nunez Hernanz <nacho _a_t_ ownyourbits _d_o_t_ com>
# GPL licensed (see end of file) * Use at your own risk!
#
# Usage:
#   In the middle of the command line:
#     (command being typed)<TAB>(resume typing)
#
#   At the beginning of the command line:
#     <SPACE><TAB>
#     <SPACE><SPACE><TAB>
#
# Notes:
#   This does not affect other completions
#   If you want 'cd ' or './' to be prepended, write in your .zshrc 'export TAB_LIST_FILES_PREFIX'
#   I recommend to complement this with push-line-or edit (bindkey '^q' push-line-or-edit)
function tab_list_files
{
  if [[ $#BUFFER == 0 ]]; then
    BUFFER="ls "
    CURSOR=3
    zle list-choices
    zle backward-kill-word
  elif [[ $BUFFER =~ ^[[:space:]][[:space:]].*$ ]]; then
    BUFFER="./"
    CURSOR=2
    zle list-choices
    [ -z ${TAB_LIST_FILES_PREFIX+x} ] && BUFFER="  " CURSOR=2
  elif [[ $BUFFER =~ ^[[:space:]]*$ ]]; then
    BUFFER="cd "
    CURSOR=3
    zle list-choices
    [ -z ${TAB_LIST_FILES_PREFIX+x} ] && BUFFER=" " CURSOR=1
  else
    BUFFER_=$BUFFER
    CURSOR_=$CURSOR
    zle expand-or-complete || zle expand-or-complete || {
      BUFFER="ls "
      CURSOR=3
      zle list-choices
      BUFFER=$BUFFER_
      CURSOR=$CURSOR_
    }
  fi
}
zle -N tab_list_files
bindkey '^I' tab_list_files

# uncomment the following line to prefix 'cd ' and './' 
# when listing dirs and executables respectively
#export TAB_LIST_FILES_PREFIX

# these two lines are usually included by oh-my-zsh, but just in case
autoload -Uz compinit
compinit

# uncomment the following line to complement tab_list_files with ^q
#bindkey '^q' push-line-or-edit

# License
#
# This script is free software; you can redistribute it and/or modify it
# under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This script is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this script; if not, write to the
# Free Software Foundation, Inc., 59 Temple Place, Suite 330,
# Boston, MA  02111-1307  USA

command_not_found_handler(){
    ~/.mockery.sh;
    return 130;
}
