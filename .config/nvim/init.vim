"Sets
set exrc
set relativenumber
set guicursor=
set nu
set nohlsearch 
set hidden 
set noerrorbells 
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent 
set nowrap
set smartcase 
set ignorecase
set noswapfile 
set nobackup 
set undodir=~/.vim/undodir 
set undofile 
set incsearch 
set scrolloff=8
set noshowmode 
set completeopt=menuone,noinsert,noselect
set colorcolumn=80
set cmdheight=2

"Plugins
call plug#begin('~/.vim/plugged')
Plug 'frazrepo/vim-rainbow'
Plug 'arcticicestudio/nord-vim'
Plug 'sbdchd/neoformat'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
call plug#end()


"Colorshceme 
colorscheme nord
let g:rainbow_active = 1

"Remaps
let mapleader = " "
nnoremap <leader>m :w<cr>
"NerdTree
nnoremap <leader>n :NERDTreeToggle<CR>

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif


source $HOME/.config/nvim/plug-config/coc.vim  
source $HOME/.config/nvim/plug-config/snippets.vim  

