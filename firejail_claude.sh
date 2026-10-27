#!/bin/bash

# Create local bin if it does not exist
mkdir -p $HOME/.local/bin
# add it to the PATH variable
echo 'export PATH="$PATH:/home/$USER/.local/bin"'>>~/.bashrc
# add permissions and make it findable under .local/bin
chmod +x firejail_claude_launcher.sh
ln -s "$PWD/firejail_claude_launcher.sh" "$HOME/.local/bin/firejail_claude_launcher.sh"
