#!/bin/zsh
# Author: Benjamin Rau
# License: MIT

## Install sway wm config files.

# Link the xinitrc file to the home directory.
create_link $DOTFILE_DIR/sway/config $HOME/.config/sway/config
