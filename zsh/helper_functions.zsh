# Useful functions
#print on zarquon, Hauptstudiumspool
function printzarquon ()
{
	if [[ $1 != "" ]]; then
		cat "$1"|marvinssh lpr -P zarquon
	fi
}

#print on duesentrieb, Grundstudiumspool
function printduesen ()
{
	if [[ $1 != "" ]]; then
		cat "$1"|marvinssh lpr -P duesentrieb
	fi
}

# find file and change there
function cdfile (){
    if [[ $1 = "" ]]; then
        echo "Usage: cdf <name>"
    else
        cd "$(find . -iname $1 -exec dirname {} \;)"
    fi
}

# mkdir and enter it immediately thereafter
function mkcd() {
    if [[ $1 = "" ]]; then
        echo "Usage: mkcd <dir>"
    else
        mkdir -p $1
        cd $1
    fi
}

