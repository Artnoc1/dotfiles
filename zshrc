# zshrc by Dmitry Nets
# This config is based oh-my-zsh
# Use zsh-setup.sh to install oh-my-zsh and additional plugins

# Set default user to prevent user@hostname from displaying in
# prompt while on home machine
DEFAULT_USER="$USER"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
#ZSH_THEME="gyanu"
#ZSH_THEME="gallois"
ZSH_THEME="wezm"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git common-aliases gitfast git-extras vi-mode wd opp history)

# Use hjkl for completion
zmodload zsh/complist

bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/usr/local/share/npm/bin:$PATH
export PATH=/home/dnets/.gem/ruby/2.2.0/bin:$PATH
export EDITOR="vim"
export NO_AT_BRIDGE=1
# export MANPATH="/usr/local/man:$MANPATH#"

source $ZSH/oh-my-zsh.sh

# Enable extended globbing
setopt extended_glob

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# rm: remove recursive interactive verbose w/ directories
alias rmr="rm -rdvI"

# ls: list directories
alias lsd="ls -d .*/ */"

# Pacman: search packages
alias pms="sudo pacman -Ss"
# Pacman: install package
alias pmi="sudo pacman -S"
# Pacman: remove single package
alias pmr="sudo pacman -R"
# Pacman: remove package and orphaned dependencies
alias pmrd="sudo pacman -Rs"
# Pacman: update all packages
alias pmu="sudo pacman -Syu"
# Pacman: clear db.lck
alias pmcdb="sudo rm /var/lib/pacman/db.lck"
# Pacman: show package files paths
alias pmw="pacman -Qlk"

# yaourt
alias y="yaourt"
# yaourt: update
alias yu="yaourt -Syua"

# tmux
alias tmux="tmux -2"

#
alias LS="| xargs -r ls -lah"

# Get files from EX.UA
alias exua="~/scripts/exua.sh"

# mkdir
alias md="mkdir -pv"

# git: checkout
alias gcb="git checkout -b"
# git: list tracked files
alias gls="git ls-tree --full-tree -r HEAD"
# git: push origin master
alias gpom="git push origin master"

# Disk usage human-readable
alias df="df -h"

# du: list directories sorted by size
alias duds="du -sh * | sort -h"

# Jot down quick notes
alias idea="vim ~/notes/ideas"

export NPM_PACKAGES="/home/dnets/.npm-packages"
export NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
export PATH="$NPM_PACKAGES/bin:$PATH"
# Unset manpath so we can inherit from /etc/manpath via the `manpath`
# command
unset MANPATH  # delete if you already modified MANPATH elsewhere in your config
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

export NPM_PACKAGES="/home/dnets/.npm-packages"
export NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
export PATH="$NPM_PACKAGES/bin:$PATH"
# Unset manpath so we can inherit from /etc/manpath via the `manpath`
# command
unset MANPATH  # delete if you already modified MANPATH elsewhere in your config
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"
