if status is-interactive
    # Commands to run in interactive sessions can go here
end

direnv hook fish | source

bind alt-backspace backward-kill-word 
bind ctrl-alt-h backward-kill-word 
bind ctrl-backspace backward-kill-token 
bind alt-delete kill-word 
bind ctrl-delete kill-token
