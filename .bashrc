#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR=/usr/bin/nvim
export VISUAL=$EDITOR
export PATH=$PATH:~/go/bin:~/.local/bin
export LANG\='en_US.UTF-8'
export LC_ALL\="en_US.UTF-8"
export TERM\=xterm-256color

alias ls='ls --color=auto --group-directories-first'
alias ll='ls -ahl --group-directories-first --color=auto'
alias grep='grep --color=auto'
alias gp='gtrash put' # gtrash put
alias rm="echo -e 'If you want to use rm really, then use \"\\\\rm\" instead.'; false"
PS1='[\u@\h \W]\$ '
