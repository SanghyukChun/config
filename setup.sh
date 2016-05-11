#!/bin/bash
DIR="$( cd "$( dirname "$0" )" && pwd )"

if [ ! -d "$DIR/vimfiles" ]; then
  mkdir $DIR/vimfiles
fi

if [ ! -d "$DIR/vimfiles/bundle" ]; then
  mkdir $DIR/vimfiles/bundle
  git clone https://github.com/VundleVim/Vundle.vim.git $DIR/vimfiles/bundle/Vundle.vim
fi

mv ~/.vim ~/.vim.old
ln -s $DIR/vimfiles ~/.vim
mv ~/.vimrc ~/.vimrc.old
ln -s $DIR/vimrc ~/.vimrc

if [ ! -d "$DIR/oh-my-zsh" ]; then
  git clone https://github.com/robbyrussell/oh-my-zsh.git
  touch $DIR/custom_zshrc
  cp $DIR/custom_zshrc $DIR/oh-my-zsh
fi

if [ ! -d "$DIR/oh-my-zsh/custom/lib" ]; then
  mkdir $DIR/oh-my-zsh/custom/lib
fi

ln -s $DIR/zsh/sanghyuk.zsh-theme $DIR/oh-my-zsh/themes/sanghyuk.zsh-theme
ln -s $DIR/zsh/sanghyuk.git.zsh $DIR/oh-my-zsh/custom/lib/git.zsh

mv ~/.zshrc ~/.zshrc.old
mv ~/.oh-my-zsh ~/.oh-my-zsh.old
ln -s $DIR/oh-my-zsh ~/.oh-my-zsh
ln -s $DIR/zshrc ~/.zshrc
chsh -s `which zsh`

