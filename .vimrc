set nocompatible

"--* VUNDLE BEGIN
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage itself
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'rking/vim-detailed'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kien/ctrlp.vim'

call vundle#end()
"--* VUNDLE END

syntax on
filetype plugin indent on
colorscheme detailed

let mapleader = ","

" Include a space after commenting
let NERDSpaceDelims=1

" Ctrlp
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|bundle)|vendor$'

" Clear trailing whitespace on save
autocmd! BufWrite * mark ' | silent! %s/\s\+$// | norm ''

" Highlight the cursor line
set cursorline
highlight CursorLine term=underline guibg=#1c1c1c cterm=underline

set backspace=2           " backspace in insert mode works like normal editor
set autoindent            " auto indenting
set shiftwidth=2
set number                " line numbers
set expandtab             " use spaces over tabs
set tabstop=2             " use 2 spaces for a tab
set viminfo="NONE"        " disable .viminfo file
set showmatch             " show matching parens
set mouse=a               " enable the mouse
set encoding=utf-8        " utf-8 please
set nobackup              " get rid of anoying ~file
set nowritebackup         " don't write the backup at all
set directory=~/.vim/swap " set a global swap path
