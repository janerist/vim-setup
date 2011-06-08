set nocompatible
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
Bundle 'kevinw/pyflakes-vim'
Bundle 'mileszs/ack.vim'
Bundle 'sjl/gundo.vim'
Bundle 'fs111/pydoc.vim'
Bundle 'vim-scripts/pep8'
Bundle 'alfredodeza/pytest.vim'
Bundle 'reinh/vim-makegreen'
Bundle 'vim-scripts/TaskList.vim'
Bundle 'vim-scripts/The-NERD-tree'
Bundle 'sontek/rope-vim'

"vim-scripts
Bundle 'mako.vim'

set foldmethod=indent
set foldlevel=99

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

map <leader>td <Plug>TaskList
map <leader>g :GundoToggle<CR>

syntax on
filetype on
filetype plugin indent on
let g:pep8_map='<leader>8'
au FileType python set omnifunc=pythoncomplete#Complete
au FileType css set omnifunc=csscomplete#CompleteCSS
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview
map <leader>n :NERDTreeToggle<CR>
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>
nmap <leader>a <Esc>:Ack!
map <leader>dt :set makeprg=python\ manage.py\ test\|:call MakeGreen()<CR>

set background=dark
set number
colorscheme wombat
set expandtab
set shiftwidth=4
set smarttab
set ai
set si

au BufNewFile,BufRead *.mako set ft=mako
set gfn=Inconsolata\ 14

""""""""""""""""""""
" Command-T
""""""""""""""""""""
set wildignore+=*.pyc,*.swp,*.mako.py

""""""""""""""""""""
" minibufexpl 
""""""""""""""""""""
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

