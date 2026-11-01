#!/bin/bash

echo "i3 config script."
read -p "This script will override config files for i3 and polybar. Do you want to continue? (y/N) " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "Setup aborted."
    exit 1
fi

# Ensure destination directories exist
mkdir -p ~/.config/i3 ~/.config/polybar ~/.local/bin/

# Create base symlinks
ln -sfn ~/dotfiles/config/i3/config ~/.config/i3/config
ln -sfn ~/dotfiles/config/polybar/config.ini ~/.config/polybar/config.ini
ln -sfn ~/dotfiles/bin/* ~/.local/bin/
ln -sfn ~/dotfiles/tmux.conf ~/.tmux.conf

echo "Available specific configs:"
echo "0) Desktop"
echo "1) Laptop"
read -p "Select your profile [0/1]: " choice

# Switch/case statement for handling user input
case "$choice" in
    0)
        ln -sfn ~/dotfiles/config/i3/desktop.conf ~/.config/i3/config.local
        echo "Desktop configuration linked successfully."
        ;;
    1)
        ln -sfn ~/dotfiles/config/i3/laptop.conf ~/.config/i3/config.local
        echo "Laptop configuration linked successfully."
        ;;
    *)
        echo "Invalid choice. Aborted."
        exit 1
        ;;
esac
