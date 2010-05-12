filetype off
filetype plugin indent on

set nocompatible

" Tabs/spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab


set autoindent
set smartindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell

" Backups
set nobackup
set nowritebackup
set directory=$HOME/.vim/tmp//,.

" Leader
let mapleader = ","

" FuzzyFinder
map <Leader>t :FuzzyFinderTextMate<Enter>
map <Leader>b :FuzzyFinderBuffer<Enter>
let g:fuzzy_ignore = "*.pyc;log/*;.svn/*;.git/*;.hg/*;pip-log.txt;*.gif;*.jpg;*.jpeg;*.png;media/admin/*;media/ckeditor/*;media/filebrowser/*;media/pages/*"
let g:fuzzy_matching_limit = 70


" Searching
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch

" Soft/hard wrapping
set wrap
set textwidth=79
set formatoptions=qrn1

set ruler
set backspace=indent,eol,start

" Use the same symbols as TextMate for tabstops and EOLs
set list
set listchars=tab:▸\ ,eol:¬

" Line numbers
set nu

" Color scheme (terminal)
syntax on
set background=dark
colorscheme delek

" Use Pathogen to load bundles
call pathogen#runtime_append_all_bundles()

map <F2> :NERDTreeToggle<CR>

" Use the damn hjkl keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Minibufexplorer
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplModSelTarget = 1

" Use F1 to fold/unfold
nnoremap <F1> za
vnoremap <F1> za

" NERDTree ignore filters
let NERDTreeIgnore=['.vim$', '\~$', '.*\.pyc$', 'pip-log\.txt$']

" Various syntax stuff
au BufNewFile,BufRead *.less set filetype=less
