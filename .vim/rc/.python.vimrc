set autoindent "new line smart indenting
set smarttab "indent next line to the correct tab
set expandtab "tabs to spaces
set softtabstop=4 "columns per reindent
set shiftwidth=4 "columns in each tab
set tabstop=4 "displayed columns in a tab

" Enter = newline and indent another level on the line following these commands
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

" Trim trailing whitespace in python files
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``


" To execute current file do
" :!% 

" Running validation software on current file
" :!pep8 %
" :!pyflakes %
" :!pylint %
