# Author:  Benjamin
# License: MIT

## One keyfile to bind them all.
# Use cat to see key event.

# Use vim keybindings
bindkey -v

# Use vim cli mode
bindkey '^P' up-history
bindkey '^N' down-history

# backspace and ^h working even after
# returning from command mode
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char

# ctrl-w removed word backwards
bindkey '^w' backward-kill-word

# Edit the command line using your usual editor.
# Binding this to '!' in the vi command mode map,
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd '!' edit-command-line
bindkey -M vicmd '^e' edit-command-line

# Set keytimeout to 0.1s for faster switching between insert/command mode.
export KEYTIMEOUT=1
