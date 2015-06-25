set nocompatible              " be iMproved, required
filetype off                  " required

" source all
for config_file in sort(split(glob('~/.vim.d/*'), '\n'))
    exec 'source' config_file
endfor

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
