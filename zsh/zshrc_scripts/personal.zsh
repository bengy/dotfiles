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
alias marvinssh='ssh raubn@marvin.informatik.uni-stuttgart.de'
alias marvinproxy='ssh raubn@marvin.informatik.uni-stuttgart.de -D 8081'

# Enable prime gpu offloading.
alias offload='xrandr --setprovideroffloadsink nouveau Intel'
