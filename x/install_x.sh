#!/bin/zsh
# Author: Benjamin Rau
# License: MIT

## Install x config files.

# Link the xinitrc file to the home directory.
create_link $DOTFILE_DIR/x/xinitrc $HOME/.xinitrc

# Load the xresource file.
xrdb $DOTFILE_DIR/x/xresources
