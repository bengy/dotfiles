# Author:  Benjamin
# License: MIT

## Little elves that do stuff.

alias marvinssh='ssh raubn@marvin.informatik.uni-stuttgart.de'

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

function pdfcompile() {
    if [[ $1 = "" ]]; then
        files = (*.tex)
        if [[ "${#files[*]}" -eq 1 ]]; then
            latexmk -pdf -pvc --silent *.tex
        elif [[ "${#files[*]}" -gt 1 ]]; then
            echo "There are multiple tex files. Use: pdfcompile  <filename>"
        else
            echo "There are files maching *.tex"
        fi
    else
        latexmk -pdf -pvc --silent $1
    fi
}

