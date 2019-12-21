# Author:  Benjamin
# License: MIT

## Little elves that do stuff.

# Find a file and cd to the folder where it resides in.
function cdfile () {
    if [[ $1 = "" ]]; then
        echo "Usage: cdfile <name>"
    else
        cd "$(find . -iname $1 -exec dirname {} \;)"
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

# Explain a command
function explain () {
  if [ "$#" -eq 0 ]; then
    while read  -p "Command: " cmd; do
      curl -Gs "https://www.mankier.com/api/explain/?cols="$(tput cols) --data-urlencode "q=$cmd"
    done
    echo "Bye!"
  elif [ "$#" -eq 1 ]; then
    curl -Gs "https://www.mankier.com/api/explain/?cols="$(tput cols) --data-urlencode "q=$1"
  else
    echo "Usage"
    echo "explain                  interactive mode."
    echo "explain 'cmd -o | ...'   one quoted command to explain it."
  fi
}

# function Extract for common file formats
function extract {
 if [ -z "$1" ]; then
  # display usage if no parameters given
  echo "Usage: extract <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
 else
  if [ -f "$1" ] ; then
    NAME=${1%.*}
    #mkdir $NAME && cd $NAME
    case "$1" in
      *.tar.bz2)  tar xvjf ./"$1"   ;;
      *.tar.gz) tar xvzf ./"$1"   ;;
      *.tar.xz) tar xvJf ./"$1"   ;;
      *.lzma)   unlzma ./"$1"   ;;
      *.bz2)    bunzip2 ./"$1"    ;;
      *.rar)    unrar x -ad ./"$1"  ;;
      *.gz)   gunzip ./"$1"   ;;
      *.tar)    tar xvf ./"$1"    ;;
      *.tbz2)   tar xvjf ./"$1"   ;;
      *.tgz)    tar xvzf ./"$1"   ;;
      *.zip)    unzip ./"$1"    ;;
      *.Z)    uncompress ./"$1" ;;
      *.7z)   7z x ./"$1"     ;;
      *.xz)   unxz ./"$1"     ;;
      *.exe)    cabextract ./"$1" ;;
      *)      echo "extract: '$1' - unknown archive method" ;;
    esac
  else
    echo "'$1' - file does not exist"
  fi
fi
}
