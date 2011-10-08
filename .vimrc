
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" GitHub
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'msanders/snipmate.vim'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-git'
Bundle 'ervandew/supertab'
Bundle 'sontek/minibufexpl.vim'
Bundle 'wincent/Command-T'
Bundle 'mileszs/ack.vim'
Bundle 'sjl/gundo.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'sophacles/vim-bundle-mako'
Bundle 'digitaltoad/vim-jade'
Bundle 'hallettj/jslint.vim'
Bundle 'jamescarr/snipmate-nodejs'
Bundle 'pangloss/vim-javascript'

set foldmethod=indent
set foldlevel=99

set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P\ %{fugitive#statusline()}

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

nnoremap <silent> <esc> :noh<return><esc>

map <leader>td <Plug>TaskList
map <leader>g :GundoToggle<CR>

syntax on
filetype on
filetype plugin indent on
let g:pep8_map='<leader>8'
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview
map <leader>n :NERDTreeToggle<CR>
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>
nmap <leader>a <Esc>:Ack!

scriptencoding=utf-8
set background=dark
colorscheme wombat
set number
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set smarttab
set ai
set si

set scrolloff=3
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set ttyfast
set ruler
set backspace=indent,eol,start
set directory=/tmp/ 
set laststatus=2

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>

set wrap
set formatoptions=qrn1
set colorcolumn=85

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

inoremap jj <ESC>

augroup myfiletypes
    autocmd!
    
    autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2

    au BufNewFile,BufRead *.mako set ft=mako
augroup END

autocmd FileType ruby set omnifunc=rubycomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags

""""""""""""""""""""
" Command-T
""""""""""""""""""""
set wildignore+=*.pyc,*.swp,*.mako.py,node_modules

""""""""""""""""""""
" minibufexpl 
""""""""""""""""""""
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

""""""""""""""""""""
" NERDtree 
""""""""""""""""""""
let NERDTreeQuitOnOpen = 1
let NERDChristmasTree = 1
let NERDTreeHighlighCursorline = 1
let NERDTreeShowHidden = 1
let NERDTreeIgnore = ['\.git', '\.hg']
