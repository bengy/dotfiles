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
# Helper functions for the install scripts.

# Get the directory of the install script.
DIR=$(dirname $(realpath $0))
# Get the directory of the dotfiles.
DOTFILE_DIR=$(dirname $DIR)

# Create a backup dir for old configs.
BACKUP_DIR=$DOTFILE_DIR/backup
if [[ ! -d "$BACKUP_DIR" ]]; then
	mkdir $BACKUP_DIR
	echo "Created backup dir $BACKUP_DIR."
else
	echo "Backup dir $BACKUP_DIR already exists."
fi

# Create a link if not present yet. If file to be linked exists already, give
# the user the option to backup the old one create_link TARGET LINK.
function create_link () {
	TARGET=$1
	LINK=$2
	LINK_DIR=$(dirname $LINK)
	# If the directory where we want to create the link in does not exists yet
	# create it.
	if [ ! -d $LINK_DIR ]; then
		mkdir $LINK_DIR
	fi
	# Check if there is already something where we want to put the link.
	if [[ -f $LINK ]] || [[ -d $LINK ]]; then
	# If there is already something, check if it's the link we want to
	# create.
	if [[ -L $LINK ]] && [ "$(readlink $LINK)" = "$TARGET" ]; then
		echo "Syslink from $LINK to $TARGET already exists."
	else
		echo "$TARGET already exists."
		if ask "Do you wish to replace it?" Y; then
			if ask "Do you want to backup the old $LINK?" Y; then
				mv $LINK $BACKUP_DIR
				echo "Moved $LINK to $BACKUP_DIR."
			else
				rm $LINK
			fi
			ln -s $TARGET $LINK
		fi
	fi
	else
	echo "Creating syslink from $LINK to $TARGET."
	ln -s $TARGET $LINK
	fi
}

# This is a general-purpose function to ask Yes/No questions in Bash, either
# with or without a default answer. It keeps repeating the question until it
# gets a valid answer.
# From https://gist.github.com/davejamesmiller/1965569.

ask() {
	while true; do
		if [ "${2:-}" = "Y" ]; then
		prompt="Y/n"
			default=Y
		elif [ "${2:-}" = "N" ]; then
			prompt="y/N"
			default=N
		else
			prompt="y/n"
			default=
		fi

		# Ask the question - use /dev/tty in case stdin is redirected from somewhere else
		echo "$1 [$prompt] "
		read REPLY </dev/tty

		# Default?
		if [ -z "$REPLY" ]; then
			REPLY=$default
		fi

		# Check if the reply is valid
		case "$REPLY" in
			Y*|y*) return 0 ;;
			N*|n*) return 1 ;;
		esac

	done
}
