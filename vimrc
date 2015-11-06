" [Start] Setting from https://github.com/VundleVim/Vundle.vim
set nocompatible              " be iMproved, required
set backspace=2               " compatible with version 5.4 and earlier
filetype off                  " required

:color desert                 " set color scheme as desert

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

" --- NERDTree Tabs Setting ----------------------------------------------------------------"
" NERDTree auto open
map <Leader>n <plug>NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_gui_startup=1     " Open NERDTREE on gvim/macvim startup
let g:nerdtree_tabs_open_on_console_startup=1 " Open NERDTree on console vim startup
" ------------------------------------------------------------------------------------------"

" --- TagList Setting-----------------------------------------------------------------------"
let Tlist_Use_Right_Window=1
let Tlist_Auto_Open=1
let Tlist_Enable_Fold_Column=0
let Tlist_Compact_Format=0
let Tlist_File_Fold_Auto_Close = 1
nmap <LocalLeader>tt :Tlist<cr>
" ------------------------------------------------------------------------------------------"

" --- Key Mapping Setting-------------------------------------------------------------------"
map <F2> :set nonumber!<CR>
map <F6> :NERDTreeToggle<CR>
map <F7> :TlistToggle<CR>
map <F8> :SrcExplToggle<CR>
" ------------------------------------------------------------------------------------------"

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


" use :tn as shortcut of :tabnew
ca tn tabnew
command! W w " use :W as save
