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
" set colorcolumn=110
" highlight ColorColumn ctermbg=darkgrey

"" Enable mouse
set mouse=a

"" Configure package manager
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'vim-scripts/L9'
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'bling/vim-airline'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-scripts/FuzzyFinder'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Set Colors / Theme 
set t_Co=256
colors mustang 
let g:airline_theme = 'kolor'

" Tabs
set showtabline=2
set laststatus=2
set noshowmode
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Disable Sounds
set noerrorbells visualbell t_vb=

" FuzzyFinder 
nmap ,f :FufFileWithCurrentBufferDir<CR>
nmap ,b :FufBuffer<CR>
nmap ,t :FufTaggedFile<CR>

" C++
au BufNewFile,BufRead *
            \ if expand('%:e') =~ '^\(h\|hh\|hxx\|hpp\|ii\|ixx\|ipp\|inl\|txx\|tpp\|tpl\|cc\|cxx\|cpp\)$' |
            \   if &ft != 'cpp'                                                                           |
            \     set ft=cpp                                                                              |
            \   endif                                                                                     |
            \ endif
