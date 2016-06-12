" ==========================================================================
" ■基本設定
" -------------------------------------
" ■■フォント
if has('mac')
  set guifont=Ricty\ Diminished:h18
else
  set guifont=Inconsolata:h14
endif

" ■■et enc=utf-8でメニューが文字化けする対応
source $VIMRUNTIME/delmenu.vim
set langmenu=ja_jp.utf-8
source $VIMRUNTIME/menu.vim

" ■■バックアップ・スワップ設定
" バックアップ取らない
set nobackup
" スワップファイル作らない
set noswapfile

" ■■一次ディレクトリ
set directory=~/.vim/tmp
set backupdir=~/.vim/tmp
set undodir=~/.vim/tmp

" ■■その他
" altキーを有効化
set winaltkeys=yes
"set guioptions=mM
"
" -------------------------------------
" ■■ファイル・ファイルタイプ・エンコード
set fileformats=unix,dos,mac
set enc=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis
autocmd FileType text setlocal textwidth=0

" -------------------------------------
" ■■スタイル
colorscheme molokai
" 表示色数
set t_Co=256
" タブ設定
set showtabline=2
" 行数表示
set number
" 検索ハイライト
set hlsearch
" カーソル行表示
set cursorline
" 一致する括弧を表示
set showmatch
" ビーブを可視化
set vb
" ルーラーを表示
set ruler
" ステータス行を表示
set laststatus=2
" バックスペースを使用可能に
set backspace=indent,eol,start
" 背景色を暗く
set background=dark
" モード表示
set showmode
" シンタックスハイライト
syntax on                       " turn syntax highlighting on by default
" 改行の可視化
set list
" タブ、空白の可視化
set listchars=tab:>.,trail:_,eol:↲,extends:>,precedes:<,nbsp:%
" 全角スペースをハイライト表示
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
" ステータス行表示
set statusline=%<%F%h%m%r\ [%{&ff}]\ (%{strftime(\"%H:%M\ %d/%m/%Y\",getftime(expand(\"%:p\")))})%=%l,%c%V\ %P

" ==========================================================================
" ■編集設定
" -------------------------------------
" ■■カーソル移動・範囲選択
" 行末を超えて矩形選択
set virtualedit+=block
" 行間移動を可能に
set whichwrap=b,s,h,l,<,>,[,]
" クリップボードを共有
set clipboard=unnamed
" 自動インデント
set ai

" -------------------------------------
" ■■検索関連
" grep関連
autocmd QuickFixCmdPost *grep* cwindow

" -------------------------------------
" ■■スクロール関連
" 横スクロール
set sidescroll=1
set nowrap
set guioptions+=b

