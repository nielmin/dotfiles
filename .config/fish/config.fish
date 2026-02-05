if status is-interactive
    # Commands to run in interactive sessions can go here
end

bind ctrl-right forward-word
bind ctrl-left backward-word
bind alt-right nextd-or-forward-word
bind alt-left prevd-or-backward-word
bind alt-backspace backward-kill-word 
bind ctrl-alt-h backward-kill-word 
bind ctrl-backspace backward-kill-token 
bind alt-delete kill-word 
bind ctrl-delete kill-token
