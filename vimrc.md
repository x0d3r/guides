# Vim Config

```shell
set nocp
set shell=/bin/sh
" execute pathogen#infect()

syntax on
filetype plugin indent on

" ============ General Config ===========
set hidden
set autoindent
set ruler
set number      " Line Numbers
set cursorline
syntax on       " Turn on syntax highlighting

" ============  Swap files ==============
set noswapfile
set nobackup
set nowb

" ============ Indentation ==============
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

" Auto indent pasted text
set paste
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

filetype plugin on
filetype indent on

" ============ Folding ==================
set foldmethod=indent  " Based on indents
set foldnestmax=3

" ============ Scrolling ================
set scrolloff=8
set sidescrolloff=15
set sidescroll=1

" ============ Search ===================
set incsearch
set hlsearch
set ignorecase
set smartcase

"let g:molokai_original = 1
"colorscheme molokai
"let g:rehash256 = 1
```
