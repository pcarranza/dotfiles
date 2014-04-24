#!/bin/bash

cd ~
ln -s .dotfiles/gitconfig .gitconfig  
ln -s .dotfiles/githelpers .githelpers 
ln -s .dotfiles/gitignore .gitignore  
ln -s .dotfiles/gitmodules .gitmodules 
ln -s .dotfiles/vim .vim        
ln -s .dotfiles/vimrc .vimrc        
ln -s .dotfiles/irbrc .irbrc        
ln -s .dotfiles/zshrc .zshrc
ln -s .dotfiles/zsh_aliases .zsh_aliases  

git submodule init
git submodule update
vim +PluginInstall +qall

ln -s .dotfiles/oh-my-zsh .oh-my-zsh
