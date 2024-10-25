lua require('init')

set number
set relativenumber

" Setting leader
nnoremap <Space> <Nop>
let mapleader = "\<space>"

" Navigation
nnoremap <leader>k 60k
nnoremap <leader>j 60j

" Line swaps
nnoremap <leader>K :move-2<CR>==
nnoremap <leader>J :move+<CR>==
xnoremap <leader>K :move-2<CR>gv=gv
xnoremap <leader>J :move'>+<CR>gv=gv

" Copy to clipboard
vnoremap <leader>y "+y
nnoremap <leader>Y "+yg_
nnoremap <leader>y "+y
nnoremap <leader>yy "+yy

" Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

call plug#begin('~/.config/nvim/plugged')

" Functionality
Plug 'dart-lang/dart-vim-plugin'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tiagofumo/dart-vim-flutter-layout'
Plug 'yuezk/vim-js'
Plug 'rafcamlet/coc-nvim-lua'
Plug 'udalov/kotlin-vim'

" Python
" Plug 'numirias/semshi'

" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Colorthemes
Plug 'rileytwo/kiss'
Plug 'Haron-Prime/Antares'
Plug 'cseelus/vim-colors-lucid'

call plug#end()

" Highlighting
colorscheme antares
syntax enable

" Tabs & spaces
set expandtab
set shiftwidth=2
set tabstop=4
set softtabstop=2
set autoindent
