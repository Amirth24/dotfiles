call plug#begin()
 Plug 'github/copilot.vim'
 
 Plug 'dracula/vim'
 Plug 'ryanoasis/vim-devicons'
 Plug 'SirVer/ultisnips'
 Plug 'honza/vim-snippets'
 Plug 'scrooloose/nerdtree'
 Plug 'preservim/nerdcommenter'
 Plug 'mhinz/vim-startify'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
 Plug 'tpope/vim-fugitive'
 Plug 'nvim-lua/plenary.nvim'
 Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
 Plug 'junegunn/fzf.vim'
 Plug 'tpope/vim-surround'
 Plug 'williamboman/mason.nvim'
 Plug 'williamboman/mason-lspconfig.nvim'
 Plug 'neovim/nvim-lspconfig'
 call plug#end()



" Open NerdTree automatically
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * NERDTree

let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeIgnore = ['^node_modules$']
"let g:WebDevIconsUnicodeDecorateFolderNodes = 1
"let g:NERDTreeGitStatusNodeColorization = 1
"let g:NERDTreeColorMapCustom = {
    "\ "Staged"    : "#0ee375",  
    "\ "Modified"  : "#d9bf91",  
    "\ "Renamed"   : "#51C9FC",  
    "\ "Untracked" : "#FCE77C",  
    "\ "Unmerged"  : "#FC51E6",  
    "\ "Dirty"     : "#FFBD61",  
    "\ "Clean"     : "#87939A",   
    "\ "Ignored"   : "#808080"   
    "\ }                         

" Coc Config
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nnoremap <silent> <space>s :<C-u>CocList -I symbols<cr>

nnoremap <silent> <space>d :<C-u>CocList diagnostics<cr>

nmap <leader>do <Plug>(coc-codeaction)

nmap <leader>rn <Plug>(coc-rename)

let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-json',
  \ 'coc-css',
  \  'coc-eslint',
  \  'coc-prettier'
  \ ]
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_statusline_ontop=0
let g:airline_theme='simple'
let g:airline#extensions#tabline#formatter = 'default'
" navegação entre os buffers
nnoremap <M-Right> :bn<cr>
nnoremap <M-Left> :bp<cr>
nnoremap <c-x> :bp \|bd #<cr>


set number
set hidden
set cursorline
set expandtab
set autoindent
set smartindent
set shiftwidth=4
set tabstop=4
set encoding=utf8
set history=2000
set clipboard=unnamedplus

" Key Mapping
" Ctrl + P : Open FZF
noremap <c-P> <cmd> Files <CR> 
" Ctrl + N: Open Toggle NerdTree
noremap <silent> <c-N> <cmd> NERDTreeToggle<CR>
" Ctrl + F: Open FZF Ag
noremap <silent> <c-F> <cmd> Ag <CR> 

" Ctrl + S: Save
noremap <c-S> <cmd> w <CR>

" Next Tab
noremap <silent> <c-H> <cmd> tabnext <CR>
" Previous Tab
noremap <silent> <c-L> <cmd> tabprevious <CR>

" Previous Commands
noremap <silent> <c-Up> <cmd> history <CR>


