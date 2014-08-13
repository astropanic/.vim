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
Plugin 'tpope/vim-vividchalk'
Plugin 'rking/ag.vim'
Plugin 'bling/vim-airline'
Plugin 'slim-template/vim-slim'
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
color vividchalk

set incsearch
set hlsearch
set viminfo='100,f1
set ignorecase
set smartcase

set grepprg=ag\ --nogroup\ --nocolor
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'
let g:ctrlp_use_caching = 0
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
let g:airline#extensions#tabline#enabled = 1
