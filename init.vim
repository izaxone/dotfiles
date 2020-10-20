" Before using this config, please install Vundle using the following command
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim


" VUNDLE Required by Vundle
set nocompatible
filetype off

" VUNDLE Set runtime path
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()

" VUNDLE Let Vundle Manage Vundle
Plugin 'VundleVim/Vundle.vim'

" VUNDLE Initialize Plugins
" (add plugins here)

" VUNDLE Call Vundle
call vundle#end()
filetype plugin indent on


" Copy-Paste Configuration
" Set the + register to be the default
" https://advancedweb.hu/working-with-the-system-clipboard-in-vim/
set clipboard=unnamedplus
