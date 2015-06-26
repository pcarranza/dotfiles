[[ -f ~/.zsh_preload ]] && source ~/.zsh_preload

# Uncomment this to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="false"

# Uncomment to change how often before auto-updates occur? (in days)
export UPDATE_ZSH_DAYS=90

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git)

ZSH=$HOME/.oh-my-zsh
ZSH_THEME="sammy"
source $ZSH/oh-my-zsh.sh

[[ -f ~/.zsh_aliases ]] && source ~/.zsh_aliases
[[ -f ~/.zsh_local ]] && source ~/.zsh_local

# Source all the files that live in ~/.zsh.d
[[ -d ~/.zsh.d ]] && for FILE in $(ls ~/.zsh.d); do source ~/.zsh.d/$FILE ; done
