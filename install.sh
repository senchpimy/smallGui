#!/bin/bash

# Iterate through each directory in the current directory
for dir in */; do
    if [ -d "$dir" ]; then
        echo "Installing $dir"
        
        # Change into the directory
        cd "$dir" || exit

        # Run sudo make install
        sudo make install

        # Return to the original directory
        cd ..

        echo "Exited $dir"
    fi
done


echo "exec dwm" >> $HOME/.xinitrc
