# Path to oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Name of the theme to load.
ZSH_THEME="ys"

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Stamp shown in the history command output.
HIST_STAMPS="dd.mm.yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
if [[ $(uname) == 'Linux' ]]; then
  plugins=(git archlinux composer ssh-agent wd)
elif [[ $(uname) == 'Darwin' ]]; then
  plugins=(git osx brew composer wd)
fi

# User configuration
export PATH="$HOME/.yarn/bin:$HOME/.composer/vendor/bin:$HOME/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:$PATH"

source $ZSH/oh-my-zsh.sh

# Set language environment
export LANG=de_DE.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='nano'
fi

# Start x session automatically on Linux
if [[ $(uname) == 'Linux' ]] &&  [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx -- vt1 &> /dev/null
fi

# Include aliases
source ”/.zsh/aliases.zsh
