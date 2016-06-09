" ==========================================================================
" ■ノーマルモード
" -------------------------------------
" ■■カーソル移動
" 高速カーソル
noremap <C-k> 5k
noremap <C-j> 5j
noremap <C-h> b
noremap <C-l> w
" スクロール
noremap <Space>j <C-d>
noremap <Space>k <C-u>

" -------------------------------------
" ■■タブ・ウィンドウ移動
" タブ切り替え
nnoremap <S-h> gT
nnoremap <S-l> gt

" -------------------------------------
" ■■編集関連
" 単語コピー
nnoremap vv vawy
" ヤンクする削除
nnoremap <S-x> x
nnoremap <S-d><S-d> dd
" ヤンクしない削除
nnoremap x "_x
nnoremap D "_D
nnoremap dd "_dd
nnoremap cc "_cc
" -------------------------------------
" ■■検索関連
" very magic
:nnoremap / /\v

" -------------------------------------
" ■■Quickfix関連
nnoremap <q :cprevious<CR>   " 前へ
nnoremap >q :cnext<CR>       " 次へ
nnoremap <Q :<C-u>cfirst<CR> " 最初へ
nnoremap >Q :<C-u>clast<CR>  " 最後へ

" -------------------------------------
" ■■汎用
" ファイルのディレクトリに移動
nnoremap <Space>cd :execute 'lcd' expand('%:p:h') \| :pwd<CR>
" ファイルパスをコピーして表示
function! CopyPath()
    let @*=expand('%:p')
    return @*
endfunction
command! -nargs=0 CopyPath call CopyPath()
nnoremap <Space>cp :echo CopyPath()<CR>
" ハイライトオフ
nnoremap <Esc><Esc> :noh<CR>

" ==========================================================================
" ■挿入モード
" -------------------------------------
" ■■カーソル移動
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-a> <Home>
inoremap <C-e> <End>
" -------------------------------------
" ■■編集
" 削除
inoremap <C-x> <Delete>
" 貼付け
inoremap <C-v> <Esc>"*pa

" ==========================================================================
" ■ビジュアルモード
" -------------------------------------
" ■■編集
" ヤンクする削除
vnoremap <S-x> x
" ヤンクしない削除
vnoremap c "_c
vnoremap x "_x

" ==========================================================================
" ■コマンドモード
" -------------------------------------
" ■■カーソル移動
" コマンドラインモードのカーソル移動
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-h> <Left>
cnoremap <C-l> <Right>
cnoremap <C-x> <Delete>
" very magic
:cnoremap %s/ %s/\v

