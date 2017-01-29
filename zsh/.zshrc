# Path to oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Name of the theme to load.
ZSH_THEME="ys"

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Stamp shown in the history command output.
HIST_STAMPS="dd.mm.yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git archlinux composer tmuxinator wd ssh-agent)

# User configuration
export PATH="$HOME/.composer/vendor/bin:$HOME/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:$PATH"

source $ZSH/oh-my-zsh.sh

# Set language environment
export LANG=de_DE.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='nano'
fi

# Start x session automatically
if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx
fi

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Alias for easier clipborad pasting
alias xclip="xclip -selection c"

# Tmuxinator alias
alias mux="tmuxinator"

# Scrap all changes
alias nah="git reset --hard;git clean -df;"

# Laravel aliases
alias art="php artisan"
alias tinker="php artisan tinker"

# Can not remember that name...
alias music="ncmpcpp"

# Mopidy Iris http client
alias spotify="chromium --app=http://localhost:6680/iris"

function tmw {
    tmux split-window -dh "$*"
}
