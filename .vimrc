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
set listchars=eol:¬,space:·,tab:>-,trail:~,extends:>,precedes:<,nbsp:␣

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
let g:ale_floating_preview = 1
let g:ale_floating_window_border = ['│', '─', '╭', '╮', '╯', '╰']
nmap <leader><leader>ah <Plug>(ale_hover)
nmap <leader><leader>ad <Plug>(ale_detail)

filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Git
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rhubarb'
Plugin 'junegunn/gv.vim'
Plugin 'airblade/vim-gitgutter'
command! Gqf GitGutterQuickFix | copen
set updatetime=2000

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mattn/emmet-vim'
"
" Completion
Plugin 'ervandew/supertab'
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

" Syntax
Plugin 'stanangeloff/php.vim'
Plugin 'lumiliet/vim-twig'
Plugin 'rust-lang/rust.vim'
Plugin 'cespare/vim-toml'
Plugin 'jwalton512/vim-blade'
Plugin 'pearofducks/ansible-vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'posva/vim-vue'

" Colorscheme
Plugin 'arcticicestudio/nord-vim'

" Tags
Plugin 'majutsushi/tagbar'
Plugin 'ludovicchabant/vim-gutentags'

" LSP
Plugin 'w0rp/ale'

" Misc
Plugin 'editorconfig/editorconfig-vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'mechatroner/rainbow_csv'
nnoremap <leader><leader>RD :RainbowDelim<CR>
nnoremap <leader><leader>RA :RainbowAlign<CR>
nnoremap <leader><leader>RS :RainbowShrink<CR>

" Search
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
nnoremap <C-p> :GFiles<CR>
nnoremap <C-g> :Rg<CR>
nnoremap <C-L> :Buffers<CR>

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

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
let g:ale_fixers  = { 'php': ['php_cs_fixer'] }
let g:ale_html_tidy_options = '-q -e -language en --drop-empty-elements no'

let g:ale_virtualenv_dir_names = []

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1

let g:vim_markdown_frontmatter = 1
let g:vim_markdown_strikethrough = 1

nmap <F8> :TagbarToggle<CR>
nnoremap <C-N> :bnext<CR>
nnoremap <C-B> :bprev<CR>

" netrw
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_winsize = 20
let g:netrw_browse_split = 4
"noremap <C-W> :Vex<CR>

" Git hotkeys
nnoremap gb :G blame<CR>
nnoremap gB :GBrowse<CR>
nnoremap gA :G add -p %<CR>
nnoremap gAA :G add -p %<CR>

" Insert timestamp at the end of the line in this format: 2021-10-11
nnoremap <C-t><C-s> m'A<C-R>=strftime('%Y-%m-%d')<CR>
