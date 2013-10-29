#!/bin/bash
mkdir -p ~/.vim

mkdir -p ~/.vim/.backup
mkdir -p ~/.vim/.swap
mkdir -p ~/.vim/bundle

echo "Downloading vimfiles of zztztt from Github"
git clone git@github.com:zztztt/vim-config.git ~/.vim/zztztt-config
cp ~/.vim/zztztt-config/vimrc ~/.vimrc

echo "Installing vundle,use vundle download plugins"
git clone https://github.com/gmarik/vundle.git
vim -u ~/.vim/zztztt-config/bundles.vim +BundleInstall +qall

echo "Installing Airline fonts"
#you should choose one font, or your airline does not look 
git clone https://github.com/Lokaltog/powerline-fonts.git ~/.vim/powerline-fonts
mkdir -p ~/.fonts
cp -r powerline-fonts/*.ttf ~/.fonts

echo "Copy YCM general configuration files."
cp ~/.vim/.ycm_extra_conf.py ~/.vim/.ycm_extra_conf.py
echo "You need to compile YouCompleteMe. Install cmake first, then run"
echo '        cd ~/.vim/bundle/YouCompleteMe'
echo '        ./install.sh --clang-completer'
