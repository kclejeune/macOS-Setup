" Install Vim-Plug if it isn't already there
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'

" Ignore language specific/IDE-esque features when using vscode
if !exists('g:vscode')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'
Plug 'joshdick/onedark.vim'
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
endif

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
