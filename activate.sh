#!/bin/bash

if [ ! -f activate.sh ]; then
    echo "This script should be run from the .dotfiles dir"
    exit 1
fi

git submodule init
git submodule update

cd ~
ln -s .dotfiles/gitconfig .gitconfig
ln -s .dotfiles/githelpers .githelpers
ln -s .dotfiles/gitignore .gitignore
ln -s .dotfiles/vim .vim
ln -s .dotfiles/vim.d .vim.d
ln -s .dotfiles/vimrc .vimrc
ln -s .dotfiles/irbrc .irbrc
ln -s .dotfiles/zshrc .zshrc

vim +PluginInstall +qall

ln -s .dotfiles/oh-my-zsh .oh-my-zsh

[[ ! -d ~/.zsh.d ]] && mkdir -p ~/.zsh.d
ZSH_FILES="zsh_aliases zsh_paths zsh_terminal_tweaking zsh_turn_g_into_git zsh_tweaks"
for FILE in $(echo $ZSH_FILES); do 
    TARGET_FILE="~/.zsh.d/$FILE"
    [[ -f $TARGET_FILE ]] && echo File $TARGET_FILE exists, skipping to prevent overriding configuration
    [[ ! -f $TARGET_FILE ]] && cp ~/.dotfiles/zsh.d/$FILE ~/.zsh.d/
done
