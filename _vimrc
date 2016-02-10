colorscheme molokai
set t_Co=256

set fileformats=unix,dos,mac

set guifont=Inconsolata:h12
set enc=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis

set directory=~/.vim/tmp
set backupdir=~/.vim/tmp
set undodir=~/.vim/tmp

autocmd FileType text setlocal textwidth=0

" [space] + [cp] ファイルパスをコピーして表示
function! CopyPath()
    let @*=expand('%:p')
    return @*
endfunction
command! -nargs=0 CopyPath call CopyPath()
nnoremap <Space>cp :echo CopyPath()<CR>

nnoremap <Esc><Esc> :noh<CR>
set showtabline=2

" vim起動時のみruntimepathにneobundle.vimを追加
if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

set winaltkeys=yes
"set guioptions=mM

" [space] + [j] 下スクロール
noremap <Space>j <C-f>
" [space] + [k] 上スクロール
noremap <Space>k <C-b>

" [v][v] カーソル位置の単語をコピー
nnoremap vv vawy

" [Shift] + [h] 左のタブ
nnoremap <S-h> gT
" [Shift] + [l] 右のタブ
nnoremap <S-l> gt

" set enc=utf-8でメニューが文字化けする対応
source $VIMRUNTIME/delmenu.vim
set langmenu=ja_jp.utf-8
source $VIMRUNTIME/menu.vim

set number
set hlsearch
set cursorline

"タブ、空白、改行の可視化
set list
set listchars=tab:>.,trail:_,eol:↲,extends:>,precedes:<,nbsp:%

"全角スペースをハイライト表示
function! ZenkakuSpace()
    highlight ZenkakuSpace cterm=reverse ctermfg=DarkMagenta gui=reverse guifg=DarkMagenta
endfunction
   
if has('syntax')
    augroup ZenkakuSpace
        autocmd!
        autocmd ColorScheme       * call ZenkakuSpace()
        autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
    augroup END
    call ZenkakuSpace()
endif

" Quickfix関連
nnoremap <q :cprevious<CR>   " 前へ
nnoremap >q :cnext<CR>       " 次へ
nnoremap <Q :<C-u>cfirst<CR> " 最初へ
nnoremap >Q :<C-u>clast<CR>  " 最後へ

" very magic
:nnoremap / /\v
:cnoremap %s/ %s/\v

" grep関連
autocmd QuickFixCmdPost *grep* cwindow

" Setting some decent VIM settings for programming

set ai                          " set auto-indenting on for programming
set showmatch                   " automatically show matching brackets. works like it does in bbedit.
set vb                          " turn on the "visual bell" - which is much quieter than the "audio blink"
set ruler                       " show the cursor position all the time
set laststatus=2                " make the last line where the status is two lines deep so you can see status always
set backspace=indent,eol,start  " make that backspace key work the way it should
set nocompatible                " vi compatible is LAME
set background=dark             " Use colours that work well on a dark background (Console is usually black)
set showmode                    " show the current mode
set clipboard=unnamed           " set clipboard to unnamed to access the system clipboard under windows
syntax on                       " turn syntax highlighting on by default

" Show EOL type and last modified timestamp, right after the filename
set statusline=%<%F%h%m%r\ [%{&ff}]\ (%{strftime(\"%H:%M\ %d/%m/%Y\",getftime(expand(\"%:p\")))})%=%l,%c%V\ %P

"------------------------------------------------------------------------------
" Only do this part when compiled with support for autocommands.
if has("autocmd")
    "Set UTF-8 as the default encoding for commit messages
    autocmd BufReadPre COMMIT_EDITMSG,git-rebase-todo setlocal fileencodings=utf-8

    "Remember the positions in files with some git-specific exceptions"
    autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$")
      \           && expand("%") !~ "COMMIT_EDITMSG"
      \           && expand("%") !~ "ADD_EDIT.patch"
      \           && expand("%") !~ "addp-hunk-edit.diff"
      \           && expand("%") !~ "git-rebase-todo" |
      \   exe "normal g`\"" |
      \ endif

      autocmd BufNewFile,BufRead *.patch set filetype=diff
      autocmd BufNewFile,BufRead *.diff set filetype=diff

      autocmd Syntax diff
      \ highlight WhiteSpaceEOL ctermbg=red |
      \ match WhiteSpaceEOL /\(^+.*\)\@<=\s\+$/

      autocmd Syntax gitcommit setlocal textwidth=74
endif " has("autocmd")




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
let MRU_Max_Entries=100
let MRU_Auto_Close=0

NeoBundle 'Shougo/vimfiler'
let g:vimfiler_as_default_explorer = 1
let g:vimfiler_edit_action = 'tabopen'
"command! Vf VimFiler -buffer-name=explorer -split -simple -winwidth=35 -toggle -no-quit
autocmd FileType vimfiler nmap <buffer> <S-h> gT
autocmd FileType vimfiler nmap <buffer> <S-l> gt

" 修正行のハイライト
NeoBundle 'leftouterjoin/changed'
highlight ChangedDefaultHl cterm=bold ctermbg=red ctermfg=white gui=bold guibg=red guifg=white

" 読み込んだプラグインも含め、ファイルタイプの検出、ファイルタイプ別プラグイン/インデントを有効化する
filetype plugin indent on

" インストールのチェック
NeoBundleCheck

call neobundle#end()

