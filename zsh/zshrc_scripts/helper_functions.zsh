# ███████╗███████╗██╗  ██╗██████╗  ██████╗
# ╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝
#   ███╔╝ ███████╗███████║██████╔╝██║
#  ███╔╝  ╚════██║██╔══██║██╔══██╗██║
# ███████╗███████║██║  ██║██║  ██║╚██████╗
# ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝
#
# Author:  Benjamin
# License: WTFPL

## Little elves that do stuff.

# Print on zarquon (Hauptstudiumspool).
function printzarquon () {
	if [[ $1 != "" ]]; then
		cat "$1" | marvinssh lpr -P zarquon
	fi
}

# Print on duesentrieb (Grundstudiumspool).
function printduesen () {
	if [[ $1 != "" ]]; then
		cat "$1"|marvinssh lpr -P duesentrieb
	fi
}

# Find a file and cd to the folder where it resides in.
function cdfile () {
    if [[ $1 = "" ]]; then
        echo "Usage: cdfile <name>"
    else
        cd "$(find . -iname $1 -exec dirname {} \;)"
    fi
}

# Create a directory and enter it immediately thereafter.
function mkcd() {
    if [[ $1 = "" ]]; then
        echo "Usage: mkcd <dir>"
    else
        mkdir -p $1
        cd $1
    fi
}

