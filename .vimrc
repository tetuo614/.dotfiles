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

"折り返し表示しない
set nowrap

"インデントをTabではなくスペース4つで揃える
set tabstop=4
set autoindent
set expandtab
set shiftwidth=4

" backspaceを有効にする
set backspace=start,eol,indent

" mode切り替えショートカットキー
" vimrc reload
nnoremap <F5>  :<C-u>source $MYVIMRC<CR>
" wrap mode on/off
nnoremap <F6>  :set wrap!<CR>:set wrap?<CR>
" number mode on/off
nnoremap <F7>  :set number!<CR>:set number?<CR>
" paste mode on/off
nnoremap <F8>  :set paste!<CR>:set paste?<CR>
" Obsessuib on/off
nnoremap <F10> :Obsession<CR>

" for .hql files
au BufNewFile,BufRead *.hql set filetype=hive expandtab

" for .q files
au BufNewFile,BufRead *.q set filetype=hive expandtab

" neobundle
if has('vim_starting')
  set nocompatible               " Be iMproved
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
call neobundle#end()

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

"NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/unite.vim'

" NeoSnippets
NeoBundle 'Shougo/neocomplete'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'

" NERDtree
NeoBundle 'scrooloose/nerdtree'

" Added For Ruby Programming
NeoBundle 'AndrewRadev/switch.vim'
NeoBundle 'tpope/vim-endwise'

" Added For Tmux Session
NeoBundle 'tpope/vim-obsession'

" Syntax
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'taichouchou2/html5.vim'

filetype plugin indent on     " Required!
NeoBundleCheck



" neosnippet "{{{
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)
let g:neosnippet#snippets_directory='~/.vim/snippets'

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

"}}}


""""""""""""""""""""""""""""""""""""""""""""""""""
" neocomplete
""""""""""""""""""""""""""""""""""""""""""""""""""
" neocomplete "{{{
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3

inoremap <expr><C-g> neocomplete#undo_completion()
inoremap <expr><C-l> neocomplete#complete_common_string()
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
endfunction
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y> neocomplete#close_popup()
inoremap <expr><C-e> neocomplete#cancel_popup()

" 補完をキャンセルしてカーソル移動
"inoremap <expr><left> neocomplete#cancel_popup() . "\<left>"
"inoremap <expr><right> neocomplete#cancel_popup() . "\<right>"
" 自動で補完候補を出さない
let g:neocomplete#disable_auto_complete = 1
"<Ctrl+Space> ：手動補完候補表示
inoremap <expr><nul> pumvisible() ? "\<down>" : neocomplete#start_manual_complete()
"}}}


""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDtree
""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDtree "{{{
nnoremap <silent><C-e> :NERDTreeToggle<CR>
let g:NERDTreeShowHidden=1
"}}}



