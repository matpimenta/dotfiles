" Auto reload configuration
autocmd! bufwritepost .vimrc source %

"" Add line numbers
set number
set numberwidth=3

"" Set tab size
set smartindent
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set t_ut=
set listchars=eol:$,tab:>-

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
Plugin 'derekwyatt/vim-fswitch'
Plugin 'fatih/vim-go'
Plugin 'wincent/command-t'
Plugin 'tfnico/vim-gradle'

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

" Backup and swaps
set nobackup
set nowritebackup
set noswapfile

" Disable Sounds
set noerrorbells visualbell t_vb=

" FuzzyFinder 
nmap ,f :FufFileWithCurrentBufferDir<CR>
nmap ,n :FufFileWithFullCwd<CR>
nmap ,b :FufBuffer<CR>
nmap ,t :FufTaggedFile<CR>

" C++
au BufNewFile,BufRead *
            \ if expand('%:e') =~ '^\(h\|hh\|hxx\|hpp\|ii\|ixx\|ipp\|inl\|txx\|tpp\|tpl\|cc\|cxx\|cpp\)$' |
            \   if &ft != 'cpp'                                                                           |
            \     set ft=cpp                                                                              |
            \   endif                                                                                     |
            \ endif

let g:ycm_confirm_extra_conf = 0
map <F3> :YcmCompleter GoTo<CR>
map <F4> :FSHere<CR>
let g:ycm_goto_buffer_command = 'new-tab'

" Go
au BufRead,BufNewFile *.go set filetype=go 
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>gt <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>e <Plug>(go-rename)
