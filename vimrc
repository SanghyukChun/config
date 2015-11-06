" [Start] Setting from https://github.com/VundleVim/Vundle.vim
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" personal setting for plugins 
Plugin 'kien/ctrlp.vim' " ctrlp, easy file finder
Plugin 'scrooloose/nerdcommenter' " nerdcommenter, easy comment/decomment
Plugin 'scrooloose/syntastic' " syntastic, syntax checking plugin
Plugin 'scrooloose/nerdtree'  " nerdtree, explore filesystem for vim
Plugin 'jistr/vim-nerdtree-tabs' " nerdtree-tabs, NERDTree and tabs together in Vim, painlessly
Plugin 'Valloric/YouCompleteMe'  " youcompleteme, fast, as-you-type, fuzzy-search code completion engine for Vim
Plugin 'vim-scripts/taglist.vim' " taglist, source code browser plugin for Vim
Plugin 'wesleyche/SrcExpl' " srcexpl, Source Explorer that provides context for the currently selected keyword

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" [End] Setting from https://github.com/VundleVim/Vundle.vim

set autoindent
set cindent " auto inden for C
set smartindent " set smart indent
set nobackup " do not create backup files
set ruler " show current cursor position
set number " show line number

set tabstop=2 " set tab as 2 spaces
set expandtab " use space instead of tab
set shiftwidth=2 " auto indent = 2 spaces

syntax enable " use syntax highlighter
set title " show title
set showmatch " show matched brackets
set hlsearch " highlighted searched results
set smartcase " sensitive case search
set clipboard=unnamed " setting for MAC

set mouse=a " enable vim automatic visual mode using mouse " press shift for disable (e.g. for copy & paste)

" open a NERDTree automatically when vim starts up
"autocmd vimenter * NERDTree
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" for NERDtree tabs
map <Leader>n <plug>NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup=1 " Open NERDTree on console vim startup
" use :tn as shortcut of :tabnew
ca tn tabnew 

"" cursor at last modified point
"au BufReadPost *
"\ if line("'\"") > 0 && line("'\"") <= line("$") |
"\ exe "norm g`\"" |
"\ endif

command! W w " use :W as save

:color desert " set color scheme as desert
