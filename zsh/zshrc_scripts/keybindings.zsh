# Author:  Benjamin
# License: MIT

## One keyfile to bind them all.
# Use cat to see key event.

# Use vim keybindings
bindkey -v

# Set keytimeout to 0.1s for faster switching between insert/command mode.
export KEYTIMEOUT=1

# Allow backward search (with patterns like mv * /dir).
bindkey '^R' history-incremental-pattern-search-backward

# Ctrl+F will start the search command.
bindkey -s '^F' 'find . -name '

# Alt+C clears the output.
bindkey '^[c' clear-screen
