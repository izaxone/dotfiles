#!/bin/bash

# IMPORTANT: Must be in home directory for symbolic links to work properly. 
echo "Make sure this directory is in your home directory, and cd into it. Proceeding in 10 seconds."

# Store this directory in case we need to get back to it
DOTFILEDIR=`pwd`

# Prepare to create links
cd ../.config

# NVIM
echo "NVIM"
pwd
ln -sv $DOTFILEDIR/nvim ./nvim

# i3
ln -sv $DOTFILEDIR/i3 ./i3

# ZSH
echo $DOTFILEDIR
ln -sv $DOTFILEDIR/.zshrc ../.zshrc

