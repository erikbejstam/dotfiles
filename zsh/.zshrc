# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
GISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/erikbejstam/.zshrc'

autoload -Uz compinit
compinit

# End of lines added by compinstall

# Enable command auto-correction (fix typos automatically)
setopt CORRECT

# Share command history between all running shells immediately
setopt SHARE_HISTORY

# Append to history file, don't overwrite it
setopt APPEND_HISTORY

# Ignore duplicate commands in history
setopt HIST_IGNORE_DUPS

# Case-insensitive completion (helpful when tab completing)
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Enable extended globbing (more powerful pattern matching)
setopt EXTENDED_GLOB

# compinit for smarter autocomplete
autoload -Uz compinit
compinit

# Aliases
alias ll="ls -lah"
alias gs='git status'
alias ..='cd ..'
alias ...='cd ../..'

gac() {
	git add .
	git commit -m "$*" 
}

# Syntax highlighting
source ~/dotfiles/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Add powerlevel10k theme (the one used in ohmyzsh)
source ~/dotfiles/zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
