#!/bin/bash

CONFIGDIR=~/.vim
BACKUPDIR=$CONFIGDIR/.backup
SWAPDIR=$CONFIGDIR/.swap
BUNDLEDIR=$CONFIGDIR/bundle
SOURCEDIR=$CONFIGDIR/zztztt-config
mkdir -p $CONFIGDIR
mkdir -p $BUNDLEDIR
mkdir -p $SWAPDIR
mkdir -p $BUNDLEDIR

download()
{
	#install source
	git clone git@github.com:zztztt/vim-config.git $SOURCEDIR
	#install vundle
  git clone https://github.com/gmarik/vundle.git $BUNDLEDIR
	#install the plugins
	vim -u $BUNDLEDIR/bundle.vim +BundleInstall +qall
}







while true
do
	read -p "Downloading vim config files of zztztt's Github (Y/N)?" input
	case $input in
		Y|y)
			download()
			break
			;;
		N|n)
			break
			;;
		*)
			;;
	esac
done

#cp $CONFIGDIR/zztztt-config/vimrc ~/.vimrc
#
#echo "Installing vundle,use vundle download plugins"
#
#echo "Installing Airline fonts"
##you should choose one font, or your airline does not look 
#git clone https://github.com/Lokaltog/powerline-fonts.git ~/.vim/powerline-fonts
#mkdir -p ~/.fonts
#cp -r powerline-fonts/*.ttf ~/.fonts
#
#echo "Copy YCM general configuration files."
#cp ~/.vim/.ycm_extra_conf.py ~/.vim/.ycm_extra_conf.py
#echo "You need to compile YouCompleteMe. Install cmake first, then run"
#echo '        cd ~/.vim/bundle/YouCompleteMe'
#echo '        ./install.sh --clang-completer'
