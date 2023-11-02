syntax on                  " Enable syntax highlighting.
filetype plugin indent on  " Enable file type based indentation.

set autoindent             " Respect indentation when starting a new line.
set expandtab              " Expand tabs to spaces. Essential in Python.
set tabstop=4              " Number of spaces tab is counted for.
set shiftwidth=4           " Number of spaces to use for autoindent.
set wildmenu                    " Enable enhanced tab autocomplete.
set backspace=2            " Fix backspace behavior on most terminals.

set number relativenumber              " Display relative column numbers.
set tags=tags;


call plug#begin(stdpath('config').'/plugged')
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'mileszs/ack.vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-unimpaired'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'npm ci'}
Plug 'Pocco81/Catppuccino.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'                 " Git show changes
Plug 'tpope/vim-rhubarb'
Plug 'Xuyuanp/nerdtree-git-plugin'            " Git status
" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()
let g:airline#extensions#tabline#enabled = 1

let g:cpp_class_scope_highlight = 1
colorscheme slate " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
let mapleader = "\<space>" 
noremap <leader>w :w<cr>  " Save a file with leader-w.
noremap ; :
noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>

nnoremap <leader>h <c-w>H
nnoremap <leader>j <c-w>J
nnoremap <leader>k <c-w>K
nnoremap <leader>l <c-w>L
inoremap ' ''<esc>i
inoremap " ""<esc>i
inoremap ( ()<esc>i
inoremap { {}<esc>i
inoremap [ []<esc>i

tnoremap jj <C-\><C-n>

" Set up for Nerdtree
let NERDTreeShowBookmarks = 1 " Turn on book mark when open Vim"
noremap <leader>e :NERDTreeToggle<cr>

" Set up for CtrlP
noremap <leader>p :CtrlP<cr>
noremap <leader>b :CtrlPBuffer<cr>

" Close buffer without exitting vim 
nnoremap <silent> <leader>bd :bp \| sp \| bn \| bd<CR>

" Other setting
for setting_file in split(glob(stdpath('config').'/settings/*.vim'))
  execute 'source' setting_file
endfor
