set nocompatible " not compatible with original vi
set autoindent
set cindent " auto inden for C
set smartindent " set smart indent
set nobackup " do not create backup files
set ruler " show current cursor position
set number " show line number

set tabstop=2 " set tab as 2 spaces
set expandtab " use space instead of tab
set shiftwidth=2 " auto indent = 2 spaces

"syntax enable " use syntax highlighter
set title " show title
set showmatch " show matched brackets
set hlsearch " highlighted searched results
set smartcase " sensitive case search
set clipboard=unnamed " setting for MAC

" cursor at last modified point
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

command! W w " use :W as save

:color desert " set color scheme as jellybeans
