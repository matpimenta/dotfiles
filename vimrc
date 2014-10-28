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
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'bling/vim-airline'
Plugin 'flazz/vim-colorschemes'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Status bar
set t_Co=256
colors mustang 

" C++
au BufNewFile,BufRead *
            \ if expand('%:e') =~ '^\(h\|hh\|hxx\|hpp\|ii\|ixx\|ipp\|inl\|txx\|tpp\|tpl\|cc\|cxx\|cpp\)$' |
            \   if &ft != 'cpp'                                                                           |
            \     set ft=cpp                                                                              |
            \   endif                                                                                     |
            \ endif
