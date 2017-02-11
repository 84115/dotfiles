filetype plugin indent on
syntax on
set encoding=utf-8
set autoread
set nobackup
set nowritebackup
set noswapfile

set t_Co=256

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
command Xruby !ruby %
command Xpython !python %
command Xphp !php -a %
command Xmake !make && make run

" Courtesy of https://github.com/ixt/dotfiles/blob/master/.vimrc
func! WordProcessingMode()
    setlocal formatoptions=1
    setlocal noexpandtab
    setlocal spell spelllang=en_gb
    map j gj
    map k gk
    set complete+=s
    set formatprg=par
    setlocal wrap
    setlocal linebreak
endfu
com! WP call WordProcessingMode()

