"
" Filetype detection
"
augroup filetypedetect
    " Detect .txt as 'text'
    autocmd! BufNewFile,BufRead *.txt setfiletype text
    autocmd! BufNewFile,BufRead *.scala setfiletype scala
    autocmd! BufNewFile,BufRead *.php setfiletype php
    autocmd! BufNewFile,BufRead *.py setfiletype python
    autocmd! BufNewFile,BufRead *.yaml setfiletype yaml
augroup END
