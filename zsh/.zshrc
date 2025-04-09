### Powerlevel10k Instant Prompt ###
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

### Oh My Zsh Setup ###
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
source $ZSH/oh-my-zsh.sh

### Source modular configs ###
[[ -f ~/.zsh_exports ]] && source ~/.zsh_exports
[[ -f ~/.zsh_plugins ]] && source ~/.zsh_plugins
[[ -f ~/.zsh_aliases ]] && source ~/.zsh_aliases
[[ -f ~/.zsh_secrets ]] && source ~/.zsh_secrets

### Shell Options ###
setopt autocd
setopt correct
setopt no_beep
setopt extended_glob
setopt hist_ignore_dups
setopt share_history

### Powerlevel10k Config ###
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

