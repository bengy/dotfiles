# Load antigen as plugin manager.
source ./antigen.zsh

# Git support.
antigen bundle git

antigen bundle command-not-found

# Highlight commands
antigen bundle zsh-users/szh-syntax-highlighting

# Load the theme
antigen theme agnoster

# Tell the plugin manager we are done.
antigen apply
