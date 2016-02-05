# ███████╗███████╗██╗  ██╗██████╗  ██████╗
# ╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝
#   ███╔╝ ███████╗███████║██████╔╝██║
#  ███╔╝  ╚════██║██╔══██║██╔══██╗██║
# ███████╗███████║██║  ██║██║  ██║╚██████╗
# ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝
#
# Author:  Benjamin
# License: WTFPL

## There is an export ban on zshenv enforced by the united nations of bourne-compatible shells.
## (/etc/profile is being sourced after zshenv overriding exports there).

# Add users global npm packages.
export PATH="/home/benjamin/npm/bin:${PATH}"

# Test if EDITOR was set.
if [ -z "$EDITOR" ]; then
    # Set the editor to use for editing all kinds of files.
    export EDITOR="vi"
fi
# Set the editor to use for editing systemd files.
export SYSTEMD_EDITOR=$EDITOR
# Set the editor for the sudoer file.
export SUDO_EDITOR=$EDITOR
