#!/bin/zsh
# Author: Benjamin Rau
# License: MIT

## Install {n}vim config files.

# Get the folder where nvim config should be put.
if [ -z $XDG_CONFIG_HOME ]; then
    # Default to ~/.config/nvim
    CONFIG_DIR=$HOME/.config/nvim
else
    CONFIG_DIR=$XDG_CONFIG_HOME/nvim
fi

# If the config directory does not exists yet create it.
if [ ! -d $CONFIG_DIR ]; then
    mkdir $CONFIG_DIR
fi

# Link the vim directory to the config directory.
create_link $DOTFILE_DIR/vim/init.vim $CONFIG_DIR/init.vim

# Link the vim directory to the config directory.
create_link $DOTFILE_DIR/vim/init.vim $HOME/.vimrc

# Create the personal.vim file from the template if not already there.
if [ -f $DOTFILE_DIR/vim/config/personal.vim.template ]; then
	cp $DOTFILE_DIR/vim/config/personal.vim.template $DOTFILE_DIR/vim/config/personal.vim
fi
