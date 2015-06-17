set nocompatible              " be iMproved, required
filetype off                  " required

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

" source all
for f in sort(split(glob('~/.vim.d/*'), '\n'))
    exec 'source' f
endfor


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" STATUS LINE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Put useful info in status line
":set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)


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
