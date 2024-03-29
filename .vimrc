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
set tabstop=4
"set softtabstop=4

set path+=**
set wildmenu

execute pathogen#infect()
call pathogen#infect()
syntax on
filetype plugin indent on
call pathogen#helptags()

command Sidebar NERDTree

command Tab RangerCurrentDirectoryNewTab

command Run w | !%
command Xbash w | !bash %
command Xnode w | !node %
command Xruby w | clear | !ruby %
command Xpython w | !python %
command Xphp w | !php -a %
command Xhaskell w | !clear && ghci %
command Chaskell w | !clear && ghc -o %.bin % && ./%.bin
command Cmake w | !make && make run

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

let g:user_emmet_leader_key='<C-E>'
"ctrl,shift,n = autocomplete
map <C-S-f> <esc> :Tab <return>
map <C-t> <esc> gt
"map <C-S-t> <esc> gT

