# https://unix.stackexchange.com/questions/71253/what-should-shouldnt-go-in-zshenv-zshrc-zlogin-zprofile-zlogout

# Base
export LC_ALL="en_US.UTF-8"
export LANG='en_US.UTF-8'

export TERM="xterm-256color"
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/sbin:$PATH"
export MANPATH="/usr/local/man:$MANPATH"

# Browser
if [[ "$OSTYPE" == darwin* ]]; then
  export BROWSER='open'
fi

# Editors
export PAGER='less'
export EDITOR='vim'
export VISUAL='vim'

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='mvim'
 fi

export PATH="$HOME/.cargo/bin:$PATH"
