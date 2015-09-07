#!/bin/bash
DIR="$( cd "$( dirname "$0" )" && pwd )"

#mv ~/.vim ~/.vim.old
#ln -s $DIR/vim ~/.vim
mv ~/.vimrc ~/.vimrc.old
ln -s $DIR/vimrc ~/.vimrc
