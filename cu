#!/bin/bash

# Change gitconfig.user.* at round robin.

DST=~/.gitconfig.user
#DST=~/hoge

CUR=$(readlink ${DST})
echo "old setting: " ${CUR}

CUR=$(basename ${CUR})

FILE_LIST=(${DST}.*)
SRC=${FILE_LIST[0]}

CNT=0

for file in ${FILE_LIST[@]}; do
    TRG=$(basename ${file})
#    echo "${TRG}"
    if [ "${CUR}" == "${TRG}" ]; then
        CNT=1
    elif [ ${CNT} -eq 1 ]; then
        SRC=${file}
        break
    fi
done

printf "\e[31mnew setting:  ${SRC}\e[m\n"

if [ "$(uname)" == 'Darwin' ]; then
    rm ${DST}
    ln -s ${SRC} ${DST}
elif [ "$(expr substr $(uname -s) 1 5)" == 'MINGW' ]; then
    SRC=$(cygpath -w ${SRC})
    DST=$(cygpath -w ${DST})
    rm ${DST}
    cmd.exe /C "chcp 65001" > /dev/null
    cmd.exe /C "mklink ${DST} ${SRC}" > /dev/null
else
    echo "Your platform ($(uname -a)) is not supported."
fi
