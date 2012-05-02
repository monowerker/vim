set noantialias
set guioptions-=r
set guioptions-=R
set guioptions-=T
set guioptions-=l
set guioptions-=L

set columns=132

if hostname() == 'cyclone.local' 
    set columns=200
    set lines=77
    set guifont=MPW:h9
endif

if hostname() == 'landslide.local'
    set lines=104
    set guifont=MPW:h9
endif

colorscheme solarized
set background=dark

nnoremap <esc> :noh<return><esc> " esc clears search highlights

if has("gui_macvim")
    macmenu &File.New\ Tab key=<nop>
    macmenu &Tools.Make key=<nop>
    
    " LustyJuggler
    "
    map <D-b> :LustyJuggler<CR>

    " CommandT
    "
    map <D-t> :CommandT<CR>

    " Nerdtree
    "
    nmap <silent> <D-1> :NERDTreeToggle<CR>
    let g:NERDTreeChDirMode=2

    " Taglist
    "
    map <D-2> :TlistToggle<CR>

    let Tlist_Enable_Fold_Column = 0
    let Tlist_Compact_Format = 1
    let Tlist_File_Fold_Auto_Close = 0
    let Tlist_GainFocus_On_ToggleOpen = 1
    let Tlist_Use_SingleClick = 1
    let Tlist_Show_One_File = 1
    let Tlist_Use_Right_Window = 1

endif

