#! /bin/sh
#
# install.sh
# Copyright (C) 2015 benjamin <benjamin@assus>
#
# Distributed under terms of the MIT license.
#

## Install vim config.
# Copy the personal template.
file="./vim/startup/personal.vim"
if [ -f "$file" ]
then
	echo "A personal vim file already exists. Not copying template"
else
	cp ./vim/startup/personal.vim.template ./vim/startup/personal.vim
	echo "Copyied personal vim template"
fi

# Create a syslink to the .vim folder in the home directory.
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
echo "Creating syslink from $HOME/.vim to $DIR/.vim"
ln $DIR/.vim $HOME/.vim 
