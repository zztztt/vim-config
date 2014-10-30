#!/bin/bash

CONFIGDIR=~/.vim
SWAPDIR=$CONFIGDIR/.swap
BUNDLEDIR=$CONFIGDIR/bundle
SOURCEDIR=$CONFIGDIR/zztztt-config
mkdir -p $CONFIGDIR
mkdir -p $SWAPDIR
mkdir -p $BUNDLEDIR

download()
{
	#install source
  echo "==> install zztztt vim-config..."
	git clone git@github.com:zztztt/vim-config.git $SOURCEDIR
	#install vundle
  echo "==> install vundle..."
  git clone https://github.com/gmarik/vundle.git $BUNDLEDIR
	#install the plugins
  echo "==> install vundle plugins..."
  cp $SOURCEDIR/bundle.vim $CONFIGDIR/bundle.vim
	vim -u $CONFIGDIR/bundle.vim +BundleInstall +qall
}

flag=false
while true
do
	read -p "==> Downloading vim config files of zztztt's Github (Y/N)?" input
	
	case $input in
		Y|y)
			$flag=true
			download
			;;
		N|n)
			;;
		*)
			;;
	esac
	if flag
	then
		break
	fi
done

echi "==> Copy $SOURCEDIR/vimrc ~/.vimrc"
cp $SOURCEDIR/vimrc ~/.vimrc
echo "==> Romove $SOURCEDIR"
rm -rf $SOURCEDIR
echo "==> Copy YCM general configuration files."
echo "You need to compile YouCompleteMe. Install cmake first, then run"
echo '        cd ~/.vim/bundle/YouCompleteMe'
echo '        ./install.sh --clang-completer'
