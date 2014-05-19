set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install bundles
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-commentary'

syntax on
filetype off
filetype plugin indent on

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set shiftround                         " user multiple of shiftwidth when identing


set ruler
set hidden                             " Don't close buffers when changing, just hide
set nowrap                             " Don't wrap large lines
set history=1000                       " Remember 100 history commands
set undolevels=1000                    " Bigger undo memory

set visualbell                         " silence please
set noerrorbells                       " I said silence

set ttyfast                            " 
set encoding=utf-8                     " Force utf-8 encoding

set noswapfile                         " Don't use a swapfile

set showmatch                          " show matches
set incsearch                          " Incremental search
set hlsearch                           " Highlight search
set ignorecase smartcase               " ignore casing when searching
set scrolloff=3                        " Scroll 3 lines passing search, don't leave on top

set cursorline
set backup
set backupdir=~/.vim-tmp,~/.tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,/var/tmp,/tmp
set backspace=indent,eol,start
"set relativenumber

set showcmd
set wildmode=longest,list
set wildmenu
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set wildignore+=*/_site/*

" Fix slow O inserts
:set timeout timeoutlen=1000 ttimeoutlen=100

" If a file is changed outside of vim, automatically reload it without asking
set autoread

"set smartindent                        "  
set autoindent                         " indent
set switchbuf=useopen
set cmdheight=1
set winwidth=79                        " Minimum window width 
set winheight=5                        " Minimum window height
set showtabline=2                      " 

let mapleader = ","

" """"""""
" AutoCmds
" """"""""
augroup vimrcEx
    autocmd!
    autocmd FileType text setlocal textwidth=78

    autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal g`\"" |
        \ endif

    autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:&gt;
    autocmd BufRead *.markdown  set ai formatoptions=tcroqn2 comments=n:&gt;

    " Don't syntax highlight markdown because it's often wrong
    autocmd! FileType mkd setlocal syn=off
    autocmd! FileType markdown setlocal syn=off

augroup END

" """"""""
" Mappings
" """"""""
"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
"nnoremap j gj
"nnoremap k gk
map <Left> :echo "no!"<cr>
map <Right> :echo "no!"<cr>
map <Up> :echo "no!"<cr>
map <Down> :echo "no!"<cr>

noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k


" ControlP binding
map <leader>t :CtrlP<cr>

" Resize window
map <leader>wr :let &winwidth = &columns * 6 / 10<cr>

"Resize window
" let &winheight = &lines * 6 / 10
let &winheight = &lines - 9

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COLOR
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
":set t_Co=256 " 256 colors
":set background=dark
":color grb256
set t_Co=256
set background=dark
" colorscheme grb256
colorscheme jellybeans

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" STATUS LINE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
":set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)


" Put useful info in status line
:set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)
:hi User1 term=inverse,bold cterm=inverse,bold ctermfg=red


" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CTRL P Configuration
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:30,results:30'

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Replace selected text
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>
