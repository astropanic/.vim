syntax on
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
call vundle#end()
filetype plugin indent on
set shell=/bin/bash
let mapleader=","
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
let g:ctrlp_map = ',p'
let g:ctrlp_cmd = 'CtrlPMixed'
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp
