# Load antigen as plugin manager.
source $HOME/.zsh/antigen.zsh

# Git support.
antigen bundle git

antigen bundle command-not-found

# Highlight commands
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme
antigen theme jeremyFreeAgent/oh-my-zsh-powerline-theme powerline

# Tell the plugin manager we are done.
antigen apply
