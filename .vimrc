set nocompatible
filetype off

let mapleader = ","

"--* VUNDLE BEGIN
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage itself
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'rking/vim-detailed'
Plugin 'scrooloose/nerdcommenter'

call vundle#end()
"--* VUNDLE END

syntax on
filetype plugin indent on
colorscheme detailed

" Clear trailing whitespace on save
autocmd! BufWrite * mark ' | silent! %s/\s\+$// | norm ''

" Highlight the cursor line
set cursorline
highlight CursorLine term=underline guibg=#1c1c1c cterm=underline

set backspace=2           " backspace in insert mode works like normal editor
set autoindent            " auto indenting
set number                " line numbers
set expandtab             " use spaces over tabs
set tabstop=2             " use 2 spaces for a tab
set viminfo="NONE"        " disable .viminfo file
set showmatch             " show matching parens
set mouse=a               " enable the mouse
set encoding=utf-8        " utf-8 please
set nobackup              " get rid of anoying ~file
set nowritebackup         " don't write the backup at all
