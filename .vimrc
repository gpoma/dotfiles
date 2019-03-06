" don't use arrowkeys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" really, just don't
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>
inoremap <Left>  <NOP>
inoremap <Right> <NOP>

set encoding=utf-8
set nocompatible
set number
set hlsearch

" Enable completion where available.
" This setting must be set before ALE is loaded.
let g:ale_completion_enabled = 1

filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mattn/emmet-vim'
Plugin 'ervandew/supertab'
Plugin 'stanangeloff/php.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'majutsushi/tagbar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'w0rp/ale'
Plugin 'lumiliet/vim-twig'
Plugin 'cocopon/iceberg.vim'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'easymotion/vim-easymotion'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

colorscheme iceberg

" Config plugin
let g:airline_theme='iceberg'
let g:airline#extensions#tabline#enabled = 1

" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1
let g:ale_linters = { 'php': ['php', 'psalm'] }

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1

let g:vim_markdown_frontmatter = 1
let g:vim_markdown_strikethrough = 1

nmap <F8> :TagbarToggle<CR>
nnoremap <C-N> :bnext<CR>
nnoremap <C-B> :bprev<CR>
nnoremap <C-L> :ls<CR>
