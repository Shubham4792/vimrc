"Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

"easier moving code blocks
vnoremap < <gv " better indentation
vnoremap > >gv " better indentation

"Enable syntax highlighting
""You need to reload this file for the change to appear
filetype off
filetype plugin on
filetype plugin indent on
syntax on

set mouse=a
set background=dark
set number
nnoremap <F2> :set nonumber!<CR>
set numberwidth=3
set showcmd
set autoindent
set copyindent
set cindent
set encoding=utf-8

" Persistent undo, allows undo even after buffer close
set undodir=~/.vim/undodir
set undofile

set showmatch
set incsearch
set hlsearch

set nobackup
set noswapfile
set noswapfile
set magic "for regex

set nobackup
set nowb
set noswapfile

set backspace=indent,eol,start

set wildmode=list:longest,full "Allows cmd completion via tab

set lazyredraw "speeds up vim when macroing

set expandtab
set smarttab

" new tab
map <C-t> :tabnew<CR>
" close tab
map <C-w> :tabclose<CR>

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set autoindent |
    \ set fileformat=unix

call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'octol/vim-cpp-enhanced-highlight'
"Plug 'python-mode/python-mode', { 'branch': 'develop' }

call plug#end()

let g:pymode_python='python'
let g:pymode_trim_whitespaces = 1

"brackets pair completion
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
inoremap (      ()<Left>
inoremap (<CR>  (<CR>)<Esc>O
inoremap ((     (
inoremap ()     ()
inoremap [      []<Left>
inoremap [<CR>  [<CR>]<Esc>O
inoremap [[     [
inoremap []     []
