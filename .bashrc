export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
alias vim='$EDITOR "$@"'
alias gvim='function _gvim() if [ $# -eq 0 ]; then $EDITOR -g "$@"; else $EDITOR -g --remote-tab-silent "$@"; fi; _gvim "$@"'
alias vi=vim

. /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh
. /Library/Developer/CommandLineTools/usr/share/git-core/git-completion.bash
. /Applications/SourceTree.app/Contents/Resources/git_local/contrib/completion/git-prompt.sh
. /Applications/SourceTree.app/Contents/Resources/git_local/contrib/completion/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\h\[\033[00m\]:\W\[\033[31m\]$(__git_ps1 [%s])\[\033[00m\]\$ '

