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

alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME' 
alias ls='ls --color=auto'
alias ll='ls -ahl --group-directories-first --color=auto'
alias grep='grep --color=auto'
alias gp='gtrash put' # gtrash put
alias rm="echo -e 'If you want to use rm really, then use \"\\\\rm\" instead.'; false"
PS1='[\u@\h \W]\$ '

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/daniel/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/daniel/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/daniel/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/daniel/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
