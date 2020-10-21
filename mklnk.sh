#!/bin/bash

# IMPORTANT: Must be in home directory for symbolic links to work properly. 
echo "Make sure this directory is in your home directory, and cd into it. Proceeding in 10 seconds."

# Store this directory in case we need to get back to it
DOTFILEDIR=`pwd`

# Find the relative path of the config directory
RELDIR=`realpath --relative-to=../.config $DOTFILEDIR`
echo $RELDIR

# Prepare to create links
cd ../.config

# NVIM
echo "NVIM"
ln -sv $RELDIR/nvim nvim


