[[ -f ~/.zsh_preload ]] && source ~/.zsh_preload

# Uncomment this to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="false"

# Uncomment to change how often before auto-updates occur? (in days)
export UPDATE_ZSH_DAYS=90

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Comment if you want to disable ssh agent loading
export SSH_ENV=${HOME}/.ssh_env

# plugins=(git)

ZSH=$HOME/.oh-my-zsh
ZSH_THEME="sammy"
source $ZSH/oh-my-zsh.sh

# Source all the files that live in ~/.zsh.d
[[ -d ~/.zsh.d ]] && for FILE in $(ls ~/.zsh.d); do source ~/.zsh.d/$FILE ; done

[[ -f ~/.zsh_aliases ]] && source ~/.zsh_aliases
[[ -f ~/.zsh_local ]] && source ~/.zsh_local

GIT_PROMPT_COLOR="green"
if [[ ! -z $SOLARIZED_TERM ]] then
  PROMPT_COLOR="black"
else
  PROMPT_COLOR="white"
fi
# PROMPT='%{$fg[$PROMPT_COLOR]%}$PROMPT_HOSTNAME %c%{$fg[$GIT_PROMPT_COLOR]%}$(git_prompt_info)%{$fg[$PROMPT_COLOR]%}$ % %{$reset_color%}'
PROMPT='%{$fg[$PROMPT_COLOR]%}%~%{$fg[$GIT_PROMPT_COLOR]%}$(git_prompt_info)%{$fg[$PROMPT_COLOR]%}$ % %{$reset_color%}'
