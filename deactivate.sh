#!/bin/bash

if [ ! -f deactivate.sh ]; then
    echo "This script should be run from the .dotfiles dir"
    exit 1
fi

cd ~
unlink ~/.gitconfig
unlink ~/.githelpers
unlink ~/.gitignore
unlink ~/.vim
unlink ~/.vim.d
unlink ~/.vimrc
unlink ~/.irbrc
unlink ~/.zshrc
unlink ~/.oh-my-zsh
