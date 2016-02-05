# ███████╗███████╗██╗  ██╗██████╗  ██████╗
# ╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝
#   ███╔╝ ███████╗███████║██████╔╝██║
#  ███╔╝  ╚════██║██╔══██║██╔══██╗██║
# ███████╗███████║██║  ██║██║  ██║╚██████╗
# ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝
#
# Author:  Benjamin
# License: WTFPL

## Become famous. Write history.

# Destination of the history file.
HISTFILE=$ZDOTDIR/.history

# History to keep in RAM.
HISTSIZE=10000

# History to save to file.
SAVEHIST=5000

# Append history to file instead of overwriting.
setopt appendhistory
