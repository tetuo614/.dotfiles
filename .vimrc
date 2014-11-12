"シンタックスハイライトを有効にする
syntax on

"カラースキーマ設定
colorscheme molokai
"let g:molokai_original = 1
"let g:rehash256 = 1
"set background=dark
"set t_Co=256

"カレント行をハイライト
set cursorline

"行番号を表示
set number

"インデントをTabではなくスペース4つで揃える
set tabstop=4
set autoindent
set expandtab
set shiftwidth=4

"マウス操作を有効にする
"set mouse=a
"set ttymouse=xterm2

" pasteを有効にする
set paste

" backspaceを有効にする
set backspace=start,eol,indent

" paste mode切り替え
nnoremap <F10> :set paste!<CR>:set paste?<CR>
