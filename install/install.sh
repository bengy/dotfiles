#!/bin/zsh
# ██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗
# ██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║
# ██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║
# ██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║
# ██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗
# ╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝
#
# Author:  Benjamin Rau
# License: WTFPL
#
# This script is used to install my dotfiles on a machine.

# Load the helper scripts.
DIR=$(dirname $(realpath $0))
source $DIR/helpers.sh

# Execute the install scripts.
for SCRIPT ($DOTFILE_DIR/**/install_*.sh) {
	CONFIG_NAME=$(basename $(dirname $SCRIPT))
	if ask "Do you want to install config files for $CONFIG_NAME?" N; then
		source $SCRIPT
	fi
}

