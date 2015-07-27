if &compatible
  set nocompatible               " Be iMproved
endif
set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'tomasr/molokai'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'jeetsukumaran/vim-buffergator'
NeoBundle 'bling/vim-airline'
NeoBundle 'fatih/vim-go'
NeoBundle 'maksimr/vim-jsbeautify'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'einars/js-beautify'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'honza/vim-snippets'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'vim-bufferline'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'MPiccinato/wombat256'
NeoBundle 'chriskempson/base16-vim'



call neobundle#end()
filetype plugin indent on

"FIX SWAP FILE WARNING
set noswapfile
set shortmess+=A
set autoread

"ACK.vim
let g:ack_qhandler = "topleft copen 30"

"Git (fugitive)
map <leader><leader>g :Gcommit %:p<CR>

"FIXES FOR AIRLINE
set encoding=utf-8
let g:airline_powerline_fonts = 1
"set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h15
set guifont=Inconsolata\ for\ Powerline:h18


let mapleader=","
set laststatus=2
set noshellslash
set autochdir
set showcmd
set ruler
set nu
"something about buffers
set hidden
colorscheme jellybeans
map <C-l> :let @/ = ""<CR>
syntax on
let g:airline#extensions#tabline#enabled = 1


""+-----------------------------------+
""|              Escape               |
""+-----------------------------------+
"
""just escape
"imap kj <Esc>
"imap kjh <Esc>
""escape and navigate
"imap jj <Esc>j
"imap kk <Esc>k
""escape and write
"imap zxc <Esc>:w<CR>
"map zxc <Esc>:w<CR>
"
""+-----------------------------------+
""|      Insert Mode Mappings         |
""+-----------------------------------+
"
""go to end of line in insert mode
"imap asd <C-o>$
"imap jkl <C-o>$
""go to beginning of line in insert mode
"imap dsa <C-o>^
"imap lkj <C-o>^
"imap jj <C-o>o
"imap kk <C-o>O
"
"+-----------------------------------+
"|             Buffers               |
"+-----------------------------------+


"buffer traversal
map <C-k> :bp<CR>
map <C-j> :bn<CR>
map <leader>d :bd<CR>

"syntastic for jsx/react"
let g:syntastic_javascript_checkers = ['jsxhint']

"couple'a bindings
map <C-s> :w<CR>
map <F11> :call ToggleWrapper()<CR>
function! ToggleWrapper()
  call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)
  redraw
endfunc
map <C-P> :CtrlP <CR>
map <c-f> :call Beautifier()<CR>

"Disable NERDTree hidden files"
let NERDTreeShowHidden=0
map <C-e> :NERDTreeToggle<CR>

"Disabling GUIs
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove right-hand scroll bar
set guioptions-=e  "non-gui tabs

"Disable sound bells
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

"cursor settings
highlight Cursor guibg=orange
let g:buffergator_viewport_split_policy = "T"
let g:buffergator_hsplit_size = 15
"let g:buffergator_autodismiss_on_select = 1
let g:buffergator_sort_regime = "mru"
map <C-b> :BuffergatorOpen <CR>

""Tab bar styling
highlight TabLineFill guifg=#121212
highlight TabLine guibg=#262626
highlight TabLineSel guibg=#3a3a3a
"
""line number column styling
highlight LineNr guifg=DarkGrey guibg=#1c1c1c
"
"fix buffer title highlighting
"highlight StatusLine guibg=#403c41 guifg=#ffffff
highlight StatusLine guifg=#ffffff guibg=#555555
