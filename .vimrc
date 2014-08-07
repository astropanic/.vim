set nocompatible
syntax on
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-fugitive'
call vundle#end()
filetype on
filetype plugin on
filetype indent on
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
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
set nu
