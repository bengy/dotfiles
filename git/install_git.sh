#!/bin/zsh
# Author: Benjamin Rau
# License: MIT

## Install git config files.

# Link the xinitrc file to the home directory.
create_link $DOTFILE_DIR/git/gitconfig $HOME/.gitconfig
