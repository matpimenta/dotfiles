""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""

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
Plugin 'marijnh/tern_for_vim'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/octave.vim--'
Plugin 'Shougo/vimshell.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'elzr/vim-json'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-unimpaired'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'saltstack/salt-vim'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'chrisbra/csv.vim'
Plugin 'chase/vim-ansible-yaml'
Plugin 'vim-scripts/AutoComplPop'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""""""""""""""""""""""""""""""""""""""""
" General Configuration
""""""""""""""""""""""""""""""""""""""""

" Auto reload configuration
autocmd! bufwritepost .vimrc source %

"" Add line numbers
set number
set numberwidth=3

"" Set tab size
set autoindent
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set t_ut=
set listchars=eol:$,tab:>-
set hlsearch
set nowrap

" Backup and swaps
set nobackup
set nowritebackup
set noswapfile

" Syntax highlight
syntax enable

"" Set right margin
" set colorcolumn=110
" highlight ColorColumn ctermbg=darkgrey

"" Enable mouse
set mouse=a

"" Configure package manager
set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin on

set omnifunc=syntaxcomplete#Complete
" if has("autocmd") && exists("+omnifunc")
"    autocmd Filetype octave
"    \ if &omnifunc == "" |
"    \ setlocal omnifunc=syntaxcomplete#Complete |
"    \ endif
" endif

" Disable Sounds
set noerrorbells visualbell t_vb=

" Set Colors / Theme
set t_Co=256
colors mustang
let g:airline_theme = 'kolor'
let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#enabled = 1

" Tabs
set showtabline=2
set laststatus=2
set noshowmode

" GVim
" set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guifont=Monospace\ 11

" YouCompleteMe
let g:ycm_confirm_extra_conf = 0
let g:ycm_goto_buffer_command = 'new-tab'

" Synchronize vim clipboard with the OS
set clipboard=unnamed

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/

""""""""""""""""""""""""""""""""""""""""
" Key Mapping
""""""""""""""""""""""""""""""""""""""""

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" FuzzyFinder
nmap ,f :FufFileWithCurrentBufferDir<CR>
nmap ,n :FufFileWithFullCwd<CR>
nmap ,b :FufBuffer<CR>
nmap ,t :FufTaggedFile<CR>

map <F3> :YcmCompleter GoToDefinition<CR>
map <F4> :FSHere<CR>
nnoremap <F5> :set hlsearch!<CR>
nmap <F6> :set wrap!<CR>
nmap <F8> :TagbarToggle<CR>

" Go-specific key bindings
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>gc <Plug>(go-build)
au FileType go nmap <leader>gt <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dd <Plug>(go-def)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>e <Plug>(go-rename)
au FileType go nmap <Leader>gi <Plug>(go-install)

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" toggle paste mode
map <leader>v :set paste!<cr>

" edit ~/.vimrc
map <leader>ev :e ~/.vimrc<cr>
" edit ~/.tmux.conf
map <leader>et :e ~/.tmux.conf<cr>
" Flush Command-t
map <leader>ft :CommandTFlush<cr>
" Close buffer
map <leader>w :bd<cr>

" Split horizontally and vertically
map <leader>\| :vsplit<cr>
map <leader>- :split<cr>

" Reveal in NERDTree
map <leader>lf :NERDTreeFind<CR>

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

""""""""""""""""""""""""""""""""""""""""
" File type configuration
""""""""""""""""""""""""""""""""""""""""

" C++
au BufNewFile,BufRead *
            \ if expand('%:e') =~ '^\(h\|hh\|hxx\|hpp\|ii\|ixx\|ipp\|inl\|txx\|tpp\|tpl\|cc\|cxx\|cpp\)$' |
            \   if &ft != 'cpp'                                                                           |
            \     set ft=cpp                                                                              |
            \   endif                                                                                     |
            \ endif

" Tagbar
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }

" Go
au BufRead,BufNewFile *.go set filetype=go
autocmd FileType go setlocal expandtab
let g:go_fmt_autosave = 0

" Octave
augroup filetypedetect
  au! BufRead,BufNewFile *.m,*.oct set filetype=octave
augroup END

" Typescript
autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript
"set rtp+=$HOME/.vim/bundle/typescript-tools.vim/

" HTML
autocmd Filetype html setlocal ts=2 sts=2 sw=2

" Command-T ignore node and bower folders
set wildignore+=**/node_modules/**,**/bower_components/**,**/node/**,target/**
lef g:CommandTScanDotDirectories = 1

" Vim JSON
let g:vim_json_syntax_conceal = 0

" Markdown syntax
let g:vim_markdown_folding_disabled=1

" CSV
hi CSVColumnEven guifg=#e2e2e5 guibg=#202020 gui=none ctermfg=253 ctermbg=234
hi CSVColumnOdd  guifg=#b1d631 gui=none ctermfg=148

" Fugitive
autocmd BufReadPost fugitive://* set bufhidden=delete
