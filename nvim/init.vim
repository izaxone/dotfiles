" Before using this config, please install Vundle using the following command
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim

" Enable mouse support
set mouse=a

" VUNDLE
source ~/.config/nvim/vundle.vim

" PLUGIN md-img-paste.vim ferrine/md-img-paste.vim
autocmd FileType markdown nmap <buffer><silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>
" Copy-Paste Configuration
" Set the + register to be the default
" https://advancedweb.hu/working-with-the-system-clipboard-in-vim/
set clipboard=unnamedplus

" Highlight current line
set cursorline

" Line numbers
set number "Normal line numbers"
set relativenumber

" Status Line
source ~/.config/nvim/statusline.vim

" VIM MARKDOWN
" Adjust new list item indent
let g:vim_markdown_new_list_item_indent = 2

" LOOK & FEEL
source ~/.config/nvim/theme.vim
