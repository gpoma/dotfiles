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

" Resize
noremap <C-Up> :resize -2<CR>
noremap <C-Down> :resize +2<CR>
noremap <C-Left> :vertical resize -2<CR>
noremap <C-Right> :vertical resize +2<CR>

set encoding=utf-8
set nocompatible
set number
set hlsearch
" set conceallevel=2
set termguicolors
set list
set colorcolumn=80,120

" tmux/tmate
"set background=dark
set t_Co=256

" Enable completion where available.
" This setting must be set before ALE is loaded.
let g:ale_completion_enabled = 1
set omnifunc=ale#completion#OmniFunc
let g:ale_completion_autoimport = 1
" let g:ale_cursor_detail = 1
" let g:ale_floating_preview = 1
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
Plugin 'ap/vim-css-color'

" Syntax Svelte
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'evanleck/vim-svelte'

" Colorscheme
Plugin 'nordtheme/vim'
Plugin 'catppuccin/vim', { 'name': 'catppuccin' }
Plugin 'rose-pine/vim', { 'name': 'rose-pine' }

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
nnoremap <leader>sg :GFiles<CR>
nnoremap <leader>sf :Files<CR>
nnoremap <C-g> :Rg<CR>
nnoremap <C-L> :Buffers<CR>

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" PHPDoc
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <buffer> <M-b> :call pdv#DocumentWithSnip()<CR>

" let g:nord_italic = 1
" let g:nord_underline = 1
" let g:nord_italic_comments = 1
" let g:nord_uniform_diff_background = 1
colorscheme catppuccin_frappe " nord, catppuccin_{latte,frappe,mocha,mocchiato}

" Config plugin
" let g:airline_theme='catppuccin_frappe'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Set this variable to 1 to fix files when you save them.
let g:ale_linters = { 'php': ['php', 'psalm'], 'javascript': ['deno', 'eslint', 'jscs', 'jshint', 'standard'], 'python': ['flake8'] }
let g:ale_fixers  = { 'php': ['php_cs_fixer'] }
let g:ale_html_tidy_options = '-q -e -language en --drop-empty-elements no'
let g:ale_python_flake8_options = '--ignore=E501'
let g:ale_sh_shellcheck_options = '-x'
let g:ale_sh_shellcheck_change_directory = 0

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
nnoremap gb :Git blame --date=relative<CR>
nnoremap gB :GBrowse<CR>
nnoremap gA :Git add -p %<CR>
nnoremap gAA :Git add -p %<CR>

" Insert timestamp at the end of the line in this format: 2021-10-11
nnoremap <C-t><C-s> m'A<C-R>=strftime('%Y-%m-%d')<CR>
