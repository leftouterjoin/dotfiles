alias ls='ls --show-control-chars'
export HISTCONTROL=ignoredups
export HISTSIZE=100000
export HISTTIMEFORMAT='%Y-%m-%d %H:%M:%S '

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

