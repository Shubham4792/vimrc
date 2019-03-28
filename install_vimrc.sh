#!/bin/sh
set -e

cd ~/.vim_rt
cat ~/.vim_rt/myvimrc.vim > ~/.vimrc
echo "Installed vimrc config successfully!"
