# Author:  Benjamin
# License: MIT

## There is an export ban on zshenv enforced by the united nations of bourne-compatible shells.
## (/etc/profile is being sourced after zshenv overriding exports there).


# Test if EDITOR was set.
if [ -z "$EDITOR" ]; then
    # Set the editor to use for editing all kinds of files.
    export EDITOR="vi"
fi
if [ -z "$VISUAL" ]; then
    # Set the editor to use for editing all kinds of files.
    export VISUAL="nvim"
fi

# Set the editor to use for editing systemd files.
export SYSTEMD_EDITOR=$EDITOR
# Set the editor for the sudoer file.
export SUDO_EDITOR=$EDITOR
export DEFAULT_USER=benjamin
