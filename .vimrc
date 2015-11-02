﻿" Nathan's .vimrc file

" Basics so vim works
set nocompatible
set backspace=2
set autochdir " automatically change current directory
set nohidden  " remove buffer of closed tabs
filetype plugin on

" Whitespace options
set autoindent
filetype indent on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set list listchars=tab:→\ ,trail:·

" Search options
set incsearch
set ignorecase
set smartcase
set hlsearch

" Allow gf to javascript files in node
set suffixesadd+=.js,.jsx,.hbs

" UI options
syntax on
set ruler
set number

" Look for tags in parent directories
set tags=tags;/

" Python breakpoint
map <F9> <Esc>Oimport pdb; pdb.set_trace()<Esc>

" Remove trailing whitespace
map <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" xml/html node matching/jumping
runtime macros/matchit.vim

colo PaperColor
