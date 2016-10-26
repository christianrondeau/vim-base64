vim -Nu <(cat << VIMRC
filetype off
set rtp+=../vader.vim
set rtp+=.
set rtp+=after
filetype plugin indent on
syntax enable
let mapleader = "\<Space>"
VIMRC) -c 'Vader! tests/*'
