filetype plugin indent on
syntax on
set encoding=utf-8
set autoread
set nobackup
set nowritebackup
set noswapfile

set number
set expandtab
set shiftwidth=4
set autoindent
set softtabstop=4

execute pathogen#infect()
call pathogen#helptags()

command Sidebar NERDTree

command Xbash !bash %
command Xnode !node %
