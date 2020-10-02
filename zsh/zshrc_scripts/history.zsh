# Author:  Benjamin
# License: MIT

## Become famous. Write history.

# Destination of the history file.
HISTFILE=$ZDOTDIR/.history

# History to keep in RAM.
HISTSIZE=10000

# History to save to file.
SAVEHIST=50000

# Append history to file instead of overwriting.
setopt appendhistory

# Remove older command from the history if a duplicate is to be added.
setopt HIST_IGNORE_ALL_DUPS
