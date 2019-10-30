#!/bin/bash

## clone vundle repo
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cp ./vimrc ~/.vimrc
cp ./vimrc.bundles ~/.vimrc.bundles

## install fonts
sudo apt install fonts-powerline

## install markdown preview dep package
sudo apt install xdg-utils curl nodejs

vim +PluginInstall +qall

echo "Vim init finish!"
echo "If airline-font is broken, please try set shell use utf-8."
echo "Also should set tool's font to utf-8 font."
