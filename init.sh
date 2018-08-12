#!/bin/bash
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mv ./vimrc ~/.vimrc
mv ./vimrc.bundles ~/.vimrc.bundles
sudo apt-get install fonts-powerline

echo ">vim >:PluginInstall\n"
