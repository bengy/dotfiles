# ███████╗███████╗██╗  ██╗██████╗  ██████╗
# ╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝
#   ███╔╝ ███████╗███████║██████╔╝██║
#  ███╔╝  ╚════██║██╔══██║██╔══██╗██║
# ███████╗███████║██║  ██║██║  ██║╚██████╗
# ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝
#
# Author:  Benjamin
# License: WTFPL

## Alias - short for "at another time or place".

# List files.
alias ls='ls --color=auto'
alias ll='ls -l --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias la='ls -la --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'

# Open things with their default app.
alias open='xdg-open'
alias o='xdg-open'

# Show disk usage.
alias df='df -h'
alias du='du -c -h'

# Compile pdfs from latex.
alias pdfcompile='latexmk -pdf -pvc --silent '

# Jumping around directories.
alias ...="cd ../.."
alias ....="cd ../../.."
alias back='cd $OLDPWD'