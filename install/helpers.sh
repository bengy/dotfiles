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
    # Check if there is already something where we want to put the link.
    if [[ -f $LINK ]] || [[ -d $LINK ]]; then
	# If there is already something, check if it's the link we want to 
	# create.
	if [[ -L $LINK ]] && [ "$(readlink $LINK)" = "$TARGET" ]; then
	    echo "Syslink from $LINK to $TARGET already exists."
	else
	    echo "$TARGET already exists."
            echo "Do you wish to replace it? [Y/n]"
	    read yn
	    yn=${yn:-Y}
	    case $yn in
		[Yy]* )
		    echo "Do you want to backup the old $LINK? [Y/n]" 
		    read yn
		    yn=${yn:-Y}
		    case $yn in
			[Yy]* )
			    mv $LINK $BACKUP_DIR
			    echo "Moved $LINK to $BACKUP_DIR."
			    ;;
			[Nn]* )
			    rm $LINK
			    ;;
		    esac
		    ln -s $TARGET $LINK
		    ;;
	    esac
	fi
    else
	echo "Creating syslink from $LINK to $TARGET."
	ln -s $TARGET $LINK
    fi
}
