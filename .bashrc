#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export LANG\='en_US.UTF-8'
export LC_ALL\="en_US.UTF-8"
export TERM\=xterm-256color

# https://nixos.wiki/wiki/Locales
export LOCALE_ARCHIVE=/usr/lib/locale/locale-archive

export PATH=$PATH:~/.local/bin:~/go/bin
export EDITOR=/usr/bin/nvim
export VISUAL=$EDITOR

# Aliases
alias ls='ls -h --color=auto --group-directories-first'
alias ll='ls -Ahl --group-directories-first --color=auto'
alias grep='grep --color=auto'
alias rm="echo -e 'If you want to use rm really, then use \"\\\\rm\" instead.'; false"
alias tmux='tmux -2'

# Functions
dbe() {
    distrobox enter "$1"
}

# Prompt
PS1="\e[0;34m\u\e[0;33m@\e[0;35m\h\e[0;31m \e[0;36m\w \e[0;37m$ \e[0m"

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# distrobox
[ -e /etc/profile.d/distrobox_profile.sh ] && . /etc/profile.d/distrobox_profile.sh
