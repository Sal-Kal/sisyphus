inoremap jk <Esc>
set number
set relativenumber
set ai
set si
set cindent
set shiftwidth=4
set mouse=a
set smarttab
set tabstop=4
set softtabstop=4
filetype indent on
filetype plugin indent on

call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/jiangmiao/auto-pairs'

call plug#end()

let mapleader = " "

inoremap <tab> <Down>
inoremap <S-tab> <Up>
nnoremap L $
nnoremap H _
nnoremap <C-j> <C-d>zz
nnoremap <C-k> <C-u>zz
nnoremap <leader>bl :bnext<cr>
nnoremap <leader>bh :bprevious<cr>
nnoremap <leader>fs :w<cr>
nnoremap <leader>o :vi 
nnoremap <leader>bk :q<cr>
nnoremap <C-l> zz
vnoremap <leader>y "+y
xnoremap > >gv
xnoremap < <gv
nnoremap gm :call cursor(0, len(getline('.'))/2)<cr>
set completeopt-=preview " For No Previews

if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

highlight LineNr ctermfg=cyan
