"" Auto reload configuration
autocmd! bufwritepost .vimrc source %

"" Add line numbers
set number
set numberwidth=3

"" Set tab size
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

"" Set right margin
set colorcolumn=110
highlight ColorColumn ctermbg=darkgrey

"" Enable mouse
set mouse=a

"" Configure package manager
call pathogen#infect() 
