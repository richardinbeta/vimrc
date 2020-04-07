:cd E:/RichardBurcher

"vundle
set nocompatible
filetype plugin on
syntax on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
"git interface
Plugin 'tpope/vim-fugitive'
"filesystem
Plugin 'preservim/nerdtree'
let g:NERDTreeNodeDelimiter = "\u00a0"

Plugin 'godlygeek/tabular'
Plugin 'jtratner/vim-flavored-markdown'
Plugin 'suan/vim-instant-markdown'
Plugin 'nelstrom/vim-markdown-preview'
Plugin 'mattn/calendar-vim'
Plugin 'vimwiki/vimwiki'

Plugin 'ervandew/supertab'
"code folding
Plugin 'tmhedberg/SimpylFold'

"Colors!!!
Plugin 'altercation/vim-colors-solarized'
Plugin 'jnurmine/Zenburn'

" airline status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"coding
Plugin 'sheerun/vim-polygot'

call vundle#end()

filetype plugin indent on    " enables filetype detection
let g:SimpylFold_docstring_preview = 1

"custom keys
let mapleader=","

" turn off beeps
set vb

" window splits
set splitbelow
set splitright

" split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e ~/.vimrc<CR>
nmap <silent> <leader>sv :so ~/.vimrc<CR>

if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif

call togglebg#map("<F5>")
"colorscheme zenburn
"set guifont=Monaco:h14

" ------ Nerdtree 
" change directory using :Ncd
com! -nargs=1 -complete=dir Ncd NERDTree | cd <args> |NERDTreeCWD

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

set nobackup
set noswapfile

"turn on numbering
set number
set relativenumber
set showmode
set ruler
set encoding=utf-8
set cursorline
set backspace=indent,eol,start
set clipboard=unnamed
set hidden
"set nowrap
set textwidth=80
set tabstop=4
set autoindent
set copyindent
set shiftwidth=4
set showmatch
set ignorecase
set smartcase
set smarttab
set hlsearch
set incsearch
set autochdir
set autoread
set history=1000
set undolevels=1000
set title
set pastetoggle=<F2>

"===== airline
"word count for vim-airline
let g:airline#extensions#wordcount#filetypes = '\vasciidoc|help|mail|markdown|markdown.pandoc|org|rst|tex|text'
set laststatus=2    " enables vim-airline.
" buffer tabs
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

"show line column
set colorcolumn=80

