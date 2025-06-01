# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
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
setopt EXTENDED_GLOB#

# Colored prompt
export PS1='%F{cyan}%n@%m %F{yellow}%~ %# %f'

source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

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
