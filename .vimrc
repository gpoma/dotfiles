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

nnoremap <Space> <Nop>
let mapleader=" "

noremap <F5> :set nowrap!<CR>
noremap <F4> :noh<CR>
noremap <F3> :set list!<CR>
inoremap <F3> <C-o>:set list!<CR>
cnoremap <F3> <C-c>:set list!<CR>
set listchars=eol:↲,space:·,tab:>-,trail:~,extends:>,precedes:<,nbsp:␣

set encoding=utf-8
set nocompatible
set number
set hlsearch
set conceallevel=2
set termguicolors
set list
set colorcolumn=80,120

" Enable completion where available.
" This setting must be set before ALE is loaded.
let g:ale_completion_enabled = 1
set omnifunc=ale#completion#OmniFunc
let g:ale_completion_autoimport = 1

filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Git
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rhubarb'

Plugin 'airblade/vim-gitgutter'
command! Gqf GitGutterQuickFix | copen
set updatetime=1000

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mattn/emmet-vim'
"
" Completion
Plugin 'ervandew/supertab'
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

Plugin 'stanangeloff/php.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'majutsushi/tagbar'
Plugin 'w0rp/ale'
Plugin 'lumiliet/vim-twig'
Plugin 'cocopon/iceberg.vim'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'easymotion/vim-easymotion'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'tpope/vim-surround'
Plugin 'junegunn/gv.vim'
Plugin 'arcticicestudio/nord-vim'
Plugin 'mechatroner/rainbow_csv'
Plugin 'tpope/vim-commentary'

" Search & Replace
Plugin 'tpope/vim-abolish'

" Search
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
nnoremap <C-p> :GFiles<CR>
nnoremap <C-g> :Rg<CR>
nnoremap <silent><leader>l :Buffers<CR>

" Snippets
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
" rust
Plugin 'rust-lang/rust.vim'
"
" Blade php template
Plugin 'jwalton512/vim-blade'

" TOML
Plugin 'cespare/vim-toml'

" Ansible
Plugin 'pearofducks/ansible-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" PHPDoc
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <buffer> <M-b> :call pdv#DocumentWithSnip()<CR>

let g:nord_italic = 1
let g:nord_underline = 1
let g:nord_italic_comments = 1
let g:nord_uniform_diff_background = 1
colorscheme nord

" Config plugin
let g:airline_theme='nord'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1
let g:ale_linters = { 'php': ['php', 'psalm'], 'javascript': ['eslint', 'jscs', 'jshint', 'standard'] }

let g:ale_virtualenv_dir_names = []

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1

let g:vim_markdown_frontmatter = 1
let g:vim_markdown_strikethrough = 1

nmap <F8> :TagbarToggle<CR>
nnoremap <C-N> :bnext<CR>
nnoremap <C-B> :bprev<CR>
nnoremap <C-L> :Buffers<CR>

" netrw
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_winsize = 20
let g:netrw_browse_split = 4
"noremap <C-W> :Vex<CR>

" Git hotkeys
nnoremap gb :G blame<CR>
nnoremap gB :GBrowse<CR>
