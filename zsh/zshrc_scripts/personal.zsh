# Author:  Benjamin
# License: MIT

## Add shortcuts and commands here that only apply
## to the current machine (not pushing to repo).

# Set the editor to use for editing all kinds of files.
export EDITOR="nvim"
# Set the editor to use for editing systemd files.
export SYSTEMD_EDITOR=$EDITOR
# Set the editor for the sudoer file.
export SUDO_EDITOR=$EDITOR

export GOPATH=$HOME/go

# Add users global npm packages.
export PATH="$HOME/npm/bin:${PATH}"
export PATH="$HOME/.npm-global/bin:${PATH}"
export PATH="$GOPATH/bin:${PATH}"
export CHROME_BIN=chromium

