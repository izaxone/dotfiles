#!/bin/bash
echo Setting up Dotfiles
# Dotfile Directory
dfdir="$HOME/Dotfiles"

cd $HOME
# Create directory for the dotfiles
mkdir $dfdir

# MOVE AND MAKE LINKS
mklnkdir () {
    echo "Arguments passed: $@"
    software="$1"
    echo "Software: $1"
    swdirs=( ${@:2} )
    echo "Software: ${@:2}"
    for this in "${swdirs[@]}"
    do
        # MKDIR
        mkdir -p $dfdir/$software/$this

        # MOVE
        # If there are slashes, move to one directory up
        if [[ "$this" == *"/"* ]]; 
        then
            # Set the path as one up
            thispath=$(echo "$this" | sed 's|\(.*\)/.*|\1|')
            mv $HOME/$this $dfdir/$software/$thispath
        # Otherwise, just move the whole thing
        else
            mv $HOME/$this $dfdir/$software/$thispath
        fi
        # Make the symbolic link
        ln -sfn $dfdir/$software/$this $HOME/$this 
    done
}

mklnkfile () {
    echo "Arguments passed: $@"
    software="$1"
    echo "Software: $1"
    swdirs=( ${@:2} )
    echo "Software: ${@:2}"
    for this in "${swdirs[@]}"
    do
        # MKDIR for the software
        mkdir -p $dfdir/$software
        if [[ "$this" == *"/"* ]]; 
        then
            # Set the path as one up
            echo "Has Slashes"
            thispath=$(echo "$this" | sed 's|\(.*\)/.*|\1|')
            mkdir -p $dfdir/$software/$thispath
        else
            thispath=$this
        fi

        # MOVE
        echo $HOME/$this
        mv $HOME/$this $dfdir/$software/$thispath
        # Otherwise, just move the whole thing
        # Make the symbolic link ONLY IF original not exist
        ln -sfn $dfdir/$software/$this $HOME/$this 
    done
}
dconf dump /org/cinnamon > .local/share/cinnamon/cinnamon_dconf
mklnkdir "Cinnamon" ".cinnamon" ".local/share/cinnamon"
mklnkfile "Bash" ".bashrc"
mklnkfile "ZSH" ".zshrc"
mklnkfile "Neovim" ".config/nvim/init.vim"
mklnkdir "i3" ".config/i3" ".config/i3status"
mklnkdir "polybar" ".config/polybar"
