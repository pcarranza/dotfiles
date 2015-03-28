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
Bundle 'tpope/vim-fugitive'
Bundle 'flazz/vim-colorschemes'
Plugin 'bling/vim-airline'
Plugin 'mileszs/ack.vim'
Plugin 'kchmck/vim-coffee-script'

" to prevent yaml from being so slow
Bundle 'stephpy/vim-yaml'

syntax on
filetype off
filetype plugin indent on

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set shiftround                         " user multiple of shiftwidth when identing
set exrc                               " enable local vimrc file


set ruler                              " Show line and column number
set hidden                             " Don't close buffers when changing, just hide
set nowrap                             " Don't wrap large lines
set history=1000                       " Remember 100 history commands
set undolevels=1000                    " Bigger undo memory

set visualbell                         " silence please
set noerrorbells                       " I said silence

set ttyfast                            " Assume that the terminal is fast
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

" Things that ctrlp will ignore
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc
set wildignore+=*/_site/*

set laststatus=2                       " Show status line in windows => always

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

" By default, minimum height will be number of lines - 9
let &winheight = &lines - 9

let mapleader = ","

" """"""""
" AutoCmds
" """"""""
augroup vimrcEx
    autocmd!
    autocmd FileType text setlocal textwidth=0
    autocmd FileType text setlocal wrap

    autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal g`\"" |
        \ endif

    autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:&gt;
    autocmd BufRead *.markdown  set ai formatoptions=tcroqn2 comments=n:&gt;

    " Don't syntax highlight markdown because it's often wrong
    autocmd! FileType mkd setlocal syn=off
    autocmd! FileType markdown setlocal syn=off

    autocmd! FileType ruby setlocal ts=2 sts=2 sw=2
    autocmd! FileType python setlocal ts=4 sts=4 sw=4

augroup END

" Remove trailing whitespace always
autocmd BufWritePre *.rb :%s/\s\+$//e
autocmd BufWritePre *.py :%s/\s\+$//e
autocmd BufWritePre *.haml :%s/\s\+$//e
autocmd BufWritePre *.html :%s/\s\+$//e
autocmd BufWritePre *.scss :%s/\s\+$//e
autocmd BufWritePre *.slim :%s/\s\+$//e


" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Disable arrow keys
"
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
map <Left> :echo "no!"<cr>
map <Right> :echo "no!"<cr>
map <Up> :echo "no!"<cr>
map <Down> :echo "no!"<cr>

" Remove highlight with enter
noremap <Enter> :nohl<cr><cr>

" Switch window with C+<movement key>
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k

" Deleting without yanking in normal and visual mode
nnoremap <leader>d "_d
vnoremap <leader>d "_d

" Paste withouth yanking in visual mode
vnoremap <leader>p "_dP

" ControlP binding
map <leader>t :CtrlP<cr>

" Resize windows to 6/10 (for small screens)
map <leader>wr :let &winwidth = &columns * 6 / 10<cr>

" Map vimrc editing
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map ctrl+s to quit insert mode and save the file
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <c-s> <Esc>:wa<CR>
inoremap <c-s> <Esc>:wa<CR>

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Leave Ex mode, for good, really, not needed anymore
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap Q <nop>

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Toggling wrap, paste and numbers
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <leader>w :set wrap!<cr>
noremap <leader>p :set paste!<cr>
noremap <leader>n :set number!<cr>


" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Replace selected text
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>


" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CONFIGURATIONS
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COLORS for dark terminal
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256
set background=dark
"colorscheme jellybeans
colorscheme dark-ruby

" Disable the cursor line
hi CursorLine     term=none cterm=none guibg=bg guifg=fg


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" STATUS LINE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
":set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)
" Put useful info in status line
" :set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)
" :hi User1 term=inverse,bold cterm=inverse,bold ctermfg=red

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" AIRLINE
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
let g:airline_detect_whitespace=0
let g:airline_section_warning=""
let g:airline_theme="badwolf"

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CTRL P
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:30,results:30'

" Stop moving char when quiting insert mode
let CursorColumnI = 0 "the cursor column position in INSERT
autocmd InsertEnter * let CursorColumnI = col('.')
autocmd CursorMovedI * let CursorColumnI = col('.')
autocmd InsertLeave * if col('.') != CursorColumnI | call cursor(0, col('.')+1) | endif

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fix spell checking colors
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi clear SpellBad
hi SpellBad cterm=underline ctermfg=red
hi clear SpellRare
hi SpellRare cterm=underline


" Maybe ruby tweaks, don't know if they are actually needed
" runpipe and send rspec colors documentation into the pipe silently
" map <leader>rt :silent :!echo "rspec -c -f d" >> ~/.pipe<cr>:redraw!<cr>

" Load a extra configuration, useful to set solarized colors for ex.
if filereadable(glob("~/.vimrc_extra"))
    source ~/.vimrc_extra
endif
" Load a local configuration file if it exists
if filereadable(glob("~/.vimrc_local"))
    source ~/.vimrc_local
endif

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Disable autocmd injection
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set secure
