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

# Install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ./vim/bundle/Vundle.vim

# Create a syslink to the .vim folder in the home directory.
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
echo "Creating syslink from $HOME/.vim to $DIR/.vim"
ln -s $DIR/vim $HOME/.vim 

# Install all plugins.
vim +PluginInstall +qall

## Install zsh config.
# Copy the personal template.
file="./zsh/personal.zsh"
if [ -f "$file" ]
then
	echo "A personal zsh file already exists. Not copying template"
else
	cp ./zsh/personal.zsh.template ./zsh/personal.vim
	echo "Copyied personal zsh template"
fi