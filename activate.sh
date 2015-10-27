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
ln -s .dotfiles/zsh.d .zsh.d
ln -s .dotfiles/oh-my-zsh .oh-my-zsh

echo <<-EOF
Dotfiles enabled, by default this includes zsh, irb, git and vim personal configurations.

Consider adding a ~/.zsh_local file if you have specific things to configure.

If this host is going to be used regularly, consider changing the prompt to make it identificable.

Fonts are expected to be in $HOME/.dotfiles/vim/bundle/fonts, execute the install.sh script to install them all.

Iterm2 has to be tweaked a bit, configuration instructions can be found in $HOME/.dotfiles/iterm.d/iterm2-configuration
EOF

vim +PluginInstall +qall
