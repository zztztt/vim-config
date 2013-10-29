set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'
Bundle 'majutsushi/tagbar'
Bundle 'bling/vim-airline'
Bundle 'altercation/vim-colors-solarized'
Bundle 'SirVer/ultisnips'
Bundle 'kien/ctrlp.vim'
Bundle 'https://github.com/vim-scripts/a.vim.git'
Bundle 'https://github.com/vim-scripts/grep.vim'
" My Bundles here:
"
"1)original repos on github
"Bundle 'Lokaltog/vim-easymotion'
"2)vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
"3)non github repos
"Bundle 'git://git.wincent.com/command-t.git'
"4)git repos on your local machine (ie. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
