#!/bin/bash

cd ~
unlink ~/.gitconfig
unlink ~/.githelpers
unlink ~/.gitignore
unlink ~/.vim
unlink ~/.vim.d
unlink ~/.vimrc
unlink ~/.irbrc
unlink ~/.zshrc
unlink ~/.zsh.d
unlink ~/.oh-my-zsh

echo <<-EOF
Dotfiles disabled.
EOF
