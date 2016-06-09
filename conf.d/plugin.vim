" ==========================================================================
" ■プラグインの基本設定
" -------------------------------------
" ■■読み込み・初期化関連
" vim起動時のみruntimepathにneobundle.vimを追加
if has('vim_starting')
"  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif
" neobundle.vimの初期化 
call neobundle#begin(expand('~/.vim/bundle'))
" NeoBundleを更新するための設定
NeoBundleFetch 'Shougo/neobundle.vim'
" 読み込むプラグインを記載
NeoBundle 'Shougo/unite.vim'
NeoBundle 'itchyny/lightline.vim'

" -------------------------------------
" ■■Markdown関連
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'
au BufRead,BufNewFile *.md set filetype=markdown
if has('mac')
  let g:previm_open_cmd = 'open -a Google\ Chrome'
else
  let g:previm_open_cmd = 'C:/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe'
endif
let g:vim_markdown_folding_disabled=1
" 表の整形
NeoBundle 'h1mesuke/vim-alignta'

" -------------------------------------
" ■■最近使ったファイル
NeoBundle 'yegappan/mru'
let MRU_Max_Entries=100
let MRU_Auto_Close=0

" -------------------------------------
" ■■ファイラ
NeoBundle 'Shougo/vimfiler'
let g:vimfiler_as_default_explorer = 1
let g:vimfiler_edit_action = 'tabopen'
"command! Vf VimFiler -buffer-name=explorer -split -simple -winwidth=35 -toggle -no-quit
autocmd FileType vimfiler nmap <buffer> <S-h> gT
autocmd FileType vimfiler nmap <buffer> <S-l> gt

" -------------------------------------
" ■■修正行のハイライト
NeoBundle 'leftouterjoin/changed'
highlight ChangedDefaultHl cterm=bold ctermbg=red ctermfg=white gui=bold guibg=red guifg=white

" -------------------------------------
" ■■自動補完
NeoBundle 'Shougo/neocomplete'
let g:neocomplete#enable_at_startup = 1

" -------------------------------------
" ■■高速Grep
NeoBundle 'rking/ag.vim'
nnoremap <silent> ,g :<C-u>Unite grep:. -buffer-name=search-buffer<CR>
if executable('pt')
  if has('mac')
    let g:ag_prg = 'pt --column --nogroup'
  else
    let g:ag_prg = 'C:/Windows/system32/pt.exe --column --nogroup'
  endif
  let g:unite_source_grep_command = 'pt'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
  let g:unite_source_grep_recursive_opt = ''
endif

" 読み込んだプラグインも含め、ファイルタイプの検出、ファイルタイプ別プラグインを有効化する
filetype plugin on

" インストールのチェック
NeoBundleCheck

call neobundle#end()

