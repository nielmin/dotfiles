#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR=/usr/bin/nvim
export VISUAL=$EDITOR
export PATH=$PATH:~/go/bin

alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME' 
alias ls='ls --color=auto'
alias ll='ls -ahl --group-directories-first --color=auto'
alias grep='grep --color=auto'
alias mkcd='mkdir -p $1 && cd $1'
alias rm='trash'
PS1='[\u@\h \W]\$ '

if [ -x "$(command -v tmux)" ] && [ -n "${DISPLAY}" ] && [ -z "${TMUX}" ]; then
    exec tmux new-session -A -s ${USER} >/dev/null 2>&1
fi
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
