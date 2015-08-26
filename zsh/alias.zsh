# useful alias
alias ls='ls --color=auto'
alias ds_i3='echo "xbindkeys; exec i3;" > ~/.xinitrc; startx --'
alias ls='ls --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias ll='ls -l --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias la='ls -la --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias open='xdg-open'
alias df='df -h'
alias du='du -c -h'
alias chromegl="primusrun chromium --enable-webgl"
alias pdfcompile='latexmk -pdf -pvc --silent '

# studi server
alias marvin='raubn@marvin.informatik.uni-stuttgart.de'
alias marvinftp='sftp raubn@marvin.informatik.uni-stuttgart.de'
alias marvinssh='ssh raubn@marvin.informatik.uni-stuttgart.de'
alias marvinproxy='ssh raubn@marvin.informatik.uni-stuttgart.de -D 8081'

# dirs
alias ...="cd ../.."
alias ....="cd ../../.."
alias back='cd $OLDPWD'
