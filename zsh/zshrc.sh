# Dont save commands history beetwen tabs
unsetopt inc_append_history
unsetopt share_history

# SSH
export SSH_KEY_PATH="~/.ssh/rsa_id"

# oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
export UPDATE_ZSH_DAYS=1
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
# plugins=(git osx colored-man colorize github jira virtualenv pip python brew zsh-syntax-highlighting cabal celery django history jump node pep8 web-search npm z)
source $ZSH/oh-my-zsh.sh

# zplug
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

# plugins/magic-enter
MAGIC_ENTER_OTHER_COMMAND='ls .'

# Docker https://docs.docker.com/compose/completion/#zsh
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i

# Alias
source alias.sh
