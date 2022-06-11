" My Nvim Config

filetype on
filetype plugin indent on


" Syntax 
syntax on

" Basic Settings
set relativenumber
set cursorline 
set nowrap
set showcmd
set showmatch
set hlsearch 
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
set background=dark
set cursorline
set mouse=a
set number
set title
set splitbelow splitright
set completeopt=noinsert,menuone,noselect

" Tab Setting
set shiftwidth=4
set tabstop=4
set expandtab

" PLUGIN -------------------------------------------------------- {{{
call plug#begin("~/.vim/plugged")

    Plug 'dense-analysis/ale'
    Plug 'preservim/nerdtree' " NerdTree
    Plug 'vim-airline/vim-airline' " Airline 
    Plug 'vim-airline/vim-airline-themes' " Themes for Airline
    Plug 'rust-lang/rust.vim' " Rust Pluging 
    Plug 'neoclide/coc.nvim' , {'branch':'release'}
    Plug 'morhetz/gruvbox'
    Plug 'ryanoasis/vim-devicons'
call plug#end()
" }}}

" MAPPING ------------------------------------------------------- {{{
inoremap jj <esc>

" Pressing o will open a new line below the current one. 
" Exit insert mode after creating a new line above of below the current line.
noremap o o<esc>
noremap O O<esc>

" Yank from cursor to the end of line.
noremap Y y$

" Split Window navigation
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-h> <c-w>h
noremap <c-l> <c-w>l

" Split Window Resizing
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w><
noremap <c-right> <c-w>>

" Nerd Tree Specific Mappings
noremap <silent> <c-b> :NERDTreeToggle<cr>

tnoremap <esc> <c-\><c-n>

function! OpenTerminal()
    split term://zsh
    resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>

" }}}

" VIMSCRIPT ------------------------------------------------------- {{{

" Code Folding
augroup fileype_vim 
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" For HTML files, set indentation 2 spaces
autocmd Filetype html setlocal tabstop=2 shiftwidth=2 expandtab

" If Vim version is equal to of greater than 7.3 enable undofile
if version >= 703 
    set undodir=~/.vim/backup
    set undofile
    set undoreload=10000
endif

" Display cursorline only in active window.
augroup cursor_off
    autocmd! 
    autocmd WinLeave * set nocursorline
    autocmd WinEnter * set cursorline
augroup END

" }}}

" STATUS LINE ------------------------------------------------------- {{{

" }}}

" Colorscheme
set background=dark
colorscheme gruvbox
" Airline
let g:airline_theme='base16_gruvbox_dark_hard'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'

"NerdTree Config
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinima1UI = 1
let g:NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']
let g:NERDTreeStatusline = ''

" Automatically close nvim if NERDTree is only one open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) |q| endif

