#!/bin/bash
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp ./vimrc ~/.vimrc
cp ./vimrc.bundles ~/.vimrc.bundles

sudo apt-get install fonts-powerline

vim +PluginInstall +qall

echo "Vim init finish!\n"
