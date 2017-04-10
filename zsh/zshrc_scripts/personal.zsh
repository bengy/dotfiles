# ███████╗███████╗██╗  ██╗██████╗  ██████╗
# ╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝
#   ███╔╝ ███████╗███████║██████╔╝██║
#  ███╔╝  ╚════██║██╔══██║██╔══██╗██║
# ███████╗███████║██║  ██║██║  ██║╚██████╗
# ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝
#
# Author:  Benjamin
# License: WTFPL

## Add shortcuts and commands here that only apply
## to the current machine (not pushing to repo).

# Set the editor to use for editing all kinds of files.
export EDITOR="nvim"
# Set the editor to use for editing systemd files.
export SYSTEMD_EDITOR=$EDITOR
# Set the editor for the sudoer file.
export SUDO_EDITOR=$EDITOR

# SSH shorts for ssh access to university servers.
alias marvin='raubn@marvin.informatik.uni-stuttgart.de'
alias marvinftp='sftp raubn@marvin.informatik.uni-stuttgart.de'
alias marvinproxy='ssh raubn@marvin.informatik.uni-stuttgart.de -D 8081'

# Enable prime gpu offloading.
alias offload='xrandr --setprovideroffloadsink nouveau Intel'

alias dance='cd $HOME/projects/dance/frontend; zsh dance.sh'
alias flick='cd $HOME/projects/flickstuff-android; android-studio'
alias dotfiles='cd $HOME/.dotfiles; zsh dotfiles.sh'
alias pcvc='cd $HOME/studium/pcvc/OGL4Core/Plugins/PCVC'
alias gma='cd $HOME/studium/gma'
alias migration='cd $HOME/projects/migration-demo; zsh migration.sh'
alias master='cd $HOME/studium/master/code/comparison'
