
# Pablo's dotfile

Quite simple project that only intends to aim as one configuration to rule them all

To use just:

```bash
git clone https://github.com/pcarranza/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./activate.sh
```

Pick whatever you want from here.

## Extras

In order to enable zsh extras just create a symlink for it
```bash
ln -s ~/.dotfile/zsh_extras ~/.zsh_extras
```

It will be loaded automatically

Also, you can create a ~/.zsh_local file to add your custom configurations in there. It will be loaded if it is found.
