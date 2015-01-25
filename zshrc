# zshrc by Dmitry Nets
# This config is based oh-my-zsh
# Use zsh-setup.sh to install oh-my-zsh and additional plugins

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="gianu"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git common-aliases gitfast git-extras vi-mode wd opp)

# History
HISTFILE="~/.histfile"
HISTSIZE=10000
SAVEHIST=10000

# Use hjkl for completion
zmodload zsh/complist

bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# Enable extended globbing
setopt extended_glob

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

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
# Get files from EX.UA
alias exua="~/scripts/exua.sh"

# git: list tracked files
alias gls="git ls-tree --full-tree -r HEAD"
# git: push origin master
alias gpom="git push origin master"

# Taskwarrior: alias
alias t="task"
# Taskwarrior: sync
alias tws="task sync"
# Taskwarrior: show list
alias tl="task list"
# Taskwarrior: show stats
alias twst="task stats"
# Taskwarrior: show project
alias twp="task project"
# Taskwarrior: add task
alias ta="task add"
# Taskwarrior: show all
alias twa="task all"
# Taskwarrior: show today
alias twt="task today"
# Taskwarrior: show calendar
alias cal="task calendar"
# Taskwarrior: show completed
alias twc="task completed"
# Taskwarrior: show burndown
alias twb="task burndown.weekly"
# Taskwarrior: show graphical history
alias twgh="task ghistory"
# Taskwarrior: show history
alias twh="task history"
# Taskwarrior: show recurring
alias twr="task recurring"
# Taskwarrior: show next
alias twn="task next"
# Disk usage human-readable
alias df="df -h"
# Jot down quick notes
alias idea="vim ~/notes/ideas"
