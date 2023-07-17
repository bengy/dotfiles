# Author:  Benjamin
# License: WTFPL

## Alias - short for "at another time or place".

# Reload the config
alias reload="source ${ZDOTDIR}/.zshrc"
alias zshrc="nvim ${ZDOTDIR} && reload"

# true color tmux
alias tmux='TERM=screen-256color tmux'

# Very short aliases for most used commands.
alias n="nvim"
alias t="tmux"
alias o="open"
alias resolve-yarn="git checkout yarn.lock --ours; yarn; git add yarn.lock; git merge --continue"
alias FZF_DEFAULT_COMMAND='command fd -c always -H -E .git -tf'
alias FZF_ALT_C_COMMAND='command fd -c always -H -E .git -td'
