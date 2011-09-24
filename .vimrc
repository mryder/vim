set nocompatible  " must be the first line
set bs=2  " backspace can delete previous characters
set laststatus=2  " always show below status line, as follows:
set statusline=%<%f\%h%m%r%=%-20.(line=%l\ \ col=%c%V\ \ totlin=%L%)\ \ \%h%m%r%=%-40(bytval=0x%B,%n%Y%)\%P

set t_Co=256
set ic  " ignore case 
set scs  " ignore ignore case if capital letter used in search
set sm  " show matching braces
"set paste  " paste mode
set encoding=utf-8
set fileencoding=utf-8
set ofu=syntaxcomplete#Complete  " Autocomplete where available
set vb t_vb= "No beeping of any kind

" Folding settings
"za (toggle), zM (fold all), zR (unfold all)
set foldmethod=indent  " fold based on indent
set foldnestmax=10  " deepest fold is 10 levels
set nofoldenable  " don't fold by default
set foldlevel=1

" Non-'set' settings
filetype on
filetype indent on
filetype plugin on
syntax on
syntax enable

" Colors
colorscheme ir_black
set background=dark

" Use vi movement commands, disable arrows
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Other key mappings
map <F5> :!wc -w %; sleep 3 <Enter><Enter>

":NERDTree .
":NERDTreeClose


" Filetypes
autocmd FileType c source $HOME/.vim/rc/.c.vimrc
autocmd FileType css source $HOME/.vim/rc/.spaces.vimrc
autocmd FileType javascript source $HOME/.vim/rc/.spaces.vimrc
autocmd FileType lisp source $HOME/.vim/rc/.lisp.vimrc
autocmd FileType php source $HOME/.vim/rc/.spaces.vimrc
autocmd FileType ruby source $HOME/.vim/rc/.ruby.vimrc
autocmd FileType sql source $HOME/.vim/rc/.tabs.vimrc
autocmd FileType text source $HOME/.vim/rc/.text.vimrc
autocmd FileType yaml source $HOME/.vim/rc/.ruby.vimrc

autocmd FileType html source $HOME/.vim/rc/.spaces.vimrc
autocmd FileType html set ft=htmldjango.html " For SnipMate
autocmd FileType xhtml source $HOME/.vim/rc/.spaces.vimrc
autocmd FileType xhtml set ft=htmldjango.html " For SnipMate
autocmd FileType python source $HOME/.vim/rc/.python.vimrc
autocmd FileType python set ft=python.django " For SnipMate

" Django
nnoremap _dt :set ft=htmldjango<CR>
nnoremap _pd :set ft=python.django<CR>
au BufNewFile,BufRead admin.py     setlocal filetype=python.django
au BufNewFile,BufRead urls.py      setlocal filetype=python.django
au BufNewFile,BufRead models.py    setlocal filetype=python.django
au BufNewFile,BufRead views.py     setlocal filetype=python.django
au BufNewFile,BufRead settings.py  setlocal filetype=python.django
au BufNewFile,BufRead forms.py     setlocal filetype=python.django
au BufNewFile,BufRead *.html       setlocal filetype=htmldjango

au BufNewFile,BufRead urls.py      setlocal nowrap
au BufNewFile,BufRead settings.py  normal! zR
au BufNewFile,BufRead dashboard.py normal! zR

" JS folding
au FileType javascript setlocal foldmethod=marker
au FileType javascript setlocal foldmarker={,}
