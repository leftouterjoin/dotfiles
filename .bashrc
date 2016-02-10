if [ "$(uname)" == 'Darwin' ]; then
    . ~/.bashrc_mac
elif [ "$(expr substr $(uname -s) 1 5)" == 'MINGW' ]; then
    . ~/.bashrc_win
else
    echo "Your platform ($(uname -a)) is not supported."
fi

