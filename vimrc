set nocompatible              " be iMproved, required
filetype off                  " required

" source all
for config_file in sort(split(glob('~/.vim.d/*'), '\n'))
    exec 'source' config_file
endfor

" Load a local configuration file if it exists
if filereadable(glob("~/.vimrc_local"))
    source ~/.vimrc_local
endif

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Disable autocmd injection
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set secure

if !empty($SOLARIZED_TERM)
  source ~/.dotfiles/vimrc_solarized_light
endif
