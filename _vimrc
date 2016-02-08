" vim起動時のみruntimepathにneobundle.vimを追加
if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

" neobundle.vimの初期化 
call neobundle#begin(expand('~/.vim/bundle'))

" NeoBundleを更新するための設定
NeoBundleFetch 'Shougo/neobundle.vim'

" 読み込むプラグインを記載
NeoBundle 'Shougo/unite.vim'
NeoBundle 'itchyny/lightline.vim'

" Markdown関連
NeoBundle 'plasticboy/vim-markdown'
"NeoBundle 'rcmdnk/vim-markdown'
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'
au BufRead,BufNewFile *.md set filetype=markdown
if has('mac')
  let g:previm_open_cmd = 'open -a Google\ Chrome'
else
  let g:previm_open_cmd = 'C:/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe'
endif
let g:vim_markdown_folding_disabled=1

NeoBundle 'h1mesuke/vim-alignta'

" 最近使ったファイル的な
NeoBundle 'yegappan/mru'
:let MRU_Max_Entries=100

NeoBundle 'Shougo/vimfiler'
let g:vimfiler_as_default_explorer = 1
command! Vf VimFiler -buffer-name=explorer -split -simple -winwidth=35 -toggle -no-quit

" 読み込んだプラグインも含め、ファイルタイプの検出、ファイルタイプ別プラグイン/インデントを有効化する
filetype plugin indent on

" インストールのチェック
NeoBundleCheck

call neobundle#end()

