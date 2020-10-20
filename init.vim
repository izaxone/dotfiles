" Before using this config, please install Vundle using the following command
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim

" Enable mouse support
set mouse=a

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

" VUNDLE Call Vundle
call vundle#end()
filetype plugin indent on


" PLUGIN md-img-paste.vim ferrine/md-img-paste.vim
autocmd FileType markdown nmap <buffer><silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>

" Copy-Paste Configuration
" Set the + register to be the default
" https://advancedweb.hu/working-with-the-system-clipboard-in-vim/
set clipboard=unnamedplus
