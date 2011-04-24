
au! BufRead,BufNewFile *.yaml,*.yml so ~/.vim/syntax/yaml.vim
au! BufRead,BufNewFile *.scpt so ~/.vim/syntax/applescript.vim
augroup filetypedetect
	au! BufRead,BufNewFile *.pill	setfiletype ruby
	au! BufRead,BufNewFile *.yaml	setfiletype yaml
	au! BufRead,BufNewFile *.yml	setfiletype yaml
	au! BufRead,BufNewFile *.conf.dev	setfiletype dosini
	au! BufRead,BufNewFile *.ini.dev	setfiletype dosini
	au! BufRead,BufNewFile *.htm	setfiletype html
	au! BufRead,BufNewFile *.html	setfiletype html
	au! BufRead,BufNewFile *.sql	setfiletype sql
	au! BufRead,BufNewFile *.txt	setfiletype text
	au! BufRead,BufNewFile *.text	setfiletype text
augroup END

