#!/bin/zsh
# Author: Benjamin Rau
# License: WTFPL

## Install zsh config.

# Copy the personal template.
ZSHRC_DIR=$DOTFILE_DIR/zsh/zshrc_scripts
file="$ZSHRC_DIR/personal.zsh"
if [ -f "$file" ]
then
	echo "A personal zsh file already exists. Not copying template"
else
	cp $ZSHRC_DIR/personal.zsh.template $ZSHRC_/personal.zsh
	echo "Copyied personal zsh template"
fi

# Link the zshenv file to the home directory. No other files
# needed to be linked because ZDOTDIR is set to this directory.
create_link $DOTFILE_DIR/zsh/zshenv $HOME/.zshenv

# Instead of putting more files in the home directory, we are linking
# them in this folder.
create_link $DOTFILE_DIR/zsh/zlogin $DOTFILE_DIR/zsh/.zlogin
create_link $DOTFILE_DIR/zsh/zshrc $DOTFILE_DIR/zsh/.zshrc
