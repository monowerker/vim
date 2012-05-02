let g:pathogen_disabled = []

if !has('gui_running')
    call add(g:pathogen_disabled, 'command-t')
endif

call pathogen#infect()

set nocompatible
set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.
set laststatus=1

filetype plugin indent on
syntax enable

colorscheme solarized
set background=light

set ruler
set number

" indent and tab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set backspace=indent,eol,start

" wrapping
set wrap
set linebreak
set nolist  " list disables linebreak
set textwidth=0
set wrapmargin=0
set scrolloff=2

set wildmenu
set wildmode=longest:full

set hidden " keep buffers when abandoned

" searching
set ignorecase
set smartcase
set incsearch
set hlsearch

set visualbell

" backups
set nobackup
set nowritebackup

set completeopt=menuone,longest,preview
autocmd FileType python set omnifunc=pysmell#Complete

inoremap <C-o> <C-x><C-o>
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

let $PYTHONPATH = '/opt/local/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7:/opt/local/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages:'

let mapleader = ','

" let cursor keys move up/down display lines instead of physical lines, k,j
" still works.

noremap <buffer> <silent> <Up>   gk
noremap <buffer> <silent> <Down> gj

" mappings to help enclose blocks in visual mode
"
vmap ' c'<c-r>"'<esc> 
vmap " c"<c-r>""<esc> 
vmap ( c(<c-r>")<esc> 
vmap [ c[<c-r>"]<esc>

if !has('gui_running')
    " NERDTree
    "
    nmap <silent> <Leader>n :NERDTreeToggle<CR>
    let g:NERDTreeChDirMode=2
    
    " LustyJuggler
    "
    nmap <silent> <Leader>b :LustyJuggler<CR>
    
    " TagList
    "
    map <Leader>t :TlistToggle<CR>
    let Tlist_Enable_Fold_Column = 0
    let Tlist_Compact_Format = 1
    let Tlist_File_Fold_Auto_Close = 0
    let Tlist_GainFocus_On_ToggleOpen = 1
    let Tlist_Use_SingleClick = 1
    let Tlist_Show_One_File = 1
    let Tlist_Use_Right_Window = 1
endif

cmap w!! %!sudo tee > /dev/null %

" Python
"
autocmd Filetype python set makeprg=pychecker
autocmd Filetype python map <D-k> :!python %<CR>

if exists('+autochdir')
  set autochdir
else
  autocmd BufEnter * silent! lcd %:p:h:gs/ /\\ /
endif

