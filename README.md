
# Pablo's dotfile

Quite simple project that only intends to aim as one configuration to rule them all

To use just:

```bash
git clone https://github.com/pcarranza/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./activate.sh
```

Pick whatever you want from here.

## Tools

* git-difference: to be used with Zack Holman's [spark colored version](https://github.com/pcarranza/spark), provides the number of changes per commit as a positive or negative number.
* swap-io-usage: using vmstat returns what percentage of the IO is used for swapping purposes
* swap-usage: must be run as root, provides the size of swapped memory per process
* watch-uninterruptible: watches for processes in uninterruptible state (usually I/O)
* runpipe: creates a fifo pipe and runs a process that will keep reading from it, useful to run tests asynchronously.

## Extras

###  ZSH

To enable zsh extras just create a symlink for it
```bash
ln -s ~/.dotfile/zsh_extras ~/.zsh_extras
```

It will be loaded automatically

## Local configurations

It is possible to add local configurations files for vim and zsh. They will be loaded automatically by both vim and zsh.

Just create ~/.zsh_local or ~/.vimrc.local

## Where to get powerline fonts:

https://github.com/powerline/fonts
