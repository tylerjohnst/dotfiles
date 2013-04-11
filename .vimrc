set nocompatible
filetype off

let mapleader="," " Remap leader to ','

set rtp+=~/.vim/bundle/vundle/
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

call vundle#rc()

" let Vundle manage Vundle
" required!

Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-haml'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'vim-scripts/taglist.vim'
Bundle 'janx/vim-rubytest'
Bundle 'Lokaltog/powerline'
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/nerdcommenter'

filetype plugin indent on
let NERDSpaceDelims=1

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|bundle)$'
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }

syntax on
set background=dark
colorscheme solarized

let g:rubytest_cmd_spec = "zeus rspec %p"
let g:rubytest_cmd_example = "zeus rspec %p -l '%c'"
"let g:rubytest_cmd_spec = "bundle exec rspec %p"
"let g:rubytest_cmd_example = "bundle exec rspec %p -l '%c'"

set guifont=Menlo\ for\ Powerline:h14
let g:Powerline_symbols = 'fancy'

set showmode                    " always show what mode we're currently editing in
set nowrap                      " don't wrap lines
set tabstop=2                   " a tab is four spaces
set softtabstop=2               " when hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab                   " expand tabs by default (overloadable per file type later)
set shiftwidth=2                " number of spaces to use for autoindenting
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set autoindent                  " always set autoindenting on
set copyindent                  " copy the previous indentation on autoindenting
set number                      " always show line numbers
set showmatch                   " set show matching parenthesis
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase,
                                "    case-sensitive otherwise
set smarttab                    " insert tabs on the start of a line according to
                                "    shiftwidth, not tabstop
set scrolloff=4                 " keep 4 lines off the edges of the screen when scrolling
"set virtualedit=all             " allow the cursor to go in to "invalid" places
set hlsearch                    " highlight search terms
set incsearch                   " show search matches as you type
set gdefault                    " search/replace "globally" (on a line) by default
set listchars=tab:▸\ ,trail:·,extends:#,nbsp:·

set nolist                      " don't show invisible characters by default,
                                " but it is enabled for some file types (see later)
set pastetoggle=<F2>            " when in insert mode, press <F2> to go to
                                "    paste mode, where you can paste mass data
                                "    that won't be autoindented
set mouse=a                     " enable using the mouse if terminal emulator
                                "    supports it (xterm does)
set fileformats="unix,mac"
set formatoptions+=1            " When wrapping paragraphs, don't end lines
                                "    with 1-letter words (looks stupid)

set nrformats=                  " make <C-a> and <C-x> play well with
                                "    zero-padded numbers (i.e. don't consider
                                "    them octal or hex)
set laststatus=2
set encoding=utf-8              " UTF-8 for the win?
set number                      " show absolute line numbers
set cursorline

highlight CursorLine ctermbg=black cterm=NONE

autocmd! BufWrite * mark ' | silent! %s/\s\+$// | norm ''
autocmd BufWritePost * cal ctrlp#clra()                     " Refresh ctrlp buffer on save
