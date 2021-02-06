
" VUNDLE Required by Vundle
set nocompatible
filetype off

" VUNDLE Set runtime path
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()

" VUNDLE Let Vundle Manage Vundle
Plugin 'VundleVim/Vundle.vim'

" VUNDLE Initialize Plugins
Plugin 'ferrine/md-img-paste.vim' " GitHub ferrine/md-img-paste.vim
let g:mdip_imgdir = 'img'
let g:mdip_imgname = 'image'

" vim-markdown
Plugin 'godlygeek/tabular' " Aligns text for you GitHub godlygeek/tabular 
" Plugin 'plasticboy/vim-markdown' " GitHub plasticboy/vim-markdown

" Pale Night Theme
Plugin 'drewtempelmeyer/palenight.vim'

" firenvim
Plugin 'glacambre/firenvim'


" VUNDLE Call Vundle
call vundle#end()
filetype plugin indent on

