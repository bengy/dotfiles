#!/bin/zsh
# Author: Benjamin Rau
# License: MIT

## Install tmux config files.

# Link the tmux config file to the home directory.
create_link $DOTFILE_DIR/tmux/tmux.conf $HOME/.tmux.conf
