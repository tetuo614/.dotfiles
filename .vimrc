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
" 相対行番号を有効にする
nnoremap <F9>  :set relativenumber!<CR>:set relativenumber?<CR>
" Obsessuib on/off
nnoremap <F10> :Obsession<CR>
" tagbar
nnoremap <F11> :TagbarToggle<CR>

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

" Align
" SQLUtilities {{{
NeoBundleLazy 'vim-scripts/SQLUtilities', {
\    'depends': 'vim-scripts/Align',
\    'autoload': {
\        'commands' : 'SQLUFormatter',},}
let g:sqlutil_align_comma = 1
nnoremap <Leader>sql :SQLUFormatter<CR>
"}}}

" vim-easymotion
NeoBundle 'Lokaltog/vim-easymotion'

" scala
NeoBundle 'derekwyatt/vim-scala'

" tagbar
NeoBundle 'majutsushi/tagbar'

" vim git
NeoBundle 'tpope/vim-fugitive'

" vim import sort (python)
NeoBundle 'fisadev/vim-isort'

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
let g:neocomplete#sources#dictionary#dictionaries = {
  \ 'default' : '',
  \ 'scala' : $HOME . '/.vim/dict/scala.dict',
  \ }
"}}}
" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()
" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()

""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDtree
""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDtree "{{{
nnoremap <silent><C-e> :NERDTreeToggle<CR>
let g:NERDTreeShowHidden=1
map <C-l> gt
map <C-h> gT
"}}}

""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-easymotion
""""""""""""""""""""""""""""""""""""""""""""""""""
"nmap s <Plug>(easymotion-s2)
" ホームポジションに近いキーを使う
"let g:EasyMotion_keys='hjklasdfgyuiopqwertnmzxcvbHJKLASDFGYUIOPQWERTNMZXCVB'
" 「'」 + 何かにマッピング
"let g:EasyMotion_leader_key="'s"
" 1 ストローク選択を優先する
"let g:EasyMotion_grouping=1
" カラー設定変更
"hi EasyMotionTarget ctermbg=none ctermfg=red
"hi EasyMotionShade  ctermbg=none ctermfg=blue
let g:EasyMotion_do_mapping = 0 "Disable default mappings
nmap s <Plug>(easymotion-sn)
vmap s <Plug>(easymotion-sn)
nmap S <Plug>(easymotion-overwin-f2)
let g:EasyMotion_keys='hjklasdfgyuiopqwertnmzxcvbHJKLASDFGYUIOPQWERTNMZXCVB'
