set number 
"2 width tabs"
set autoindent
filetype plugin indent on
set noexpandtab
set tabstop=2
set shiftwidth=2
set relativenumber
set termguicolors
set updatetime=300
set nobackup
set nowritebackup
set signcolumn=yes
let g:user_emmet_leader_key='<C-X>'
"Plugins to install type PlugInstall"
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'vim-airline/vim-airline'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'junegunn/fzf.vim'
Plug 'alvan/vim-closetag'
Plug 'mattn/emmet-vim'
Plug 'ryanoasis/vim-devicons'
call plug#end()
"theme"
colorscheme onedark 
"shortcuts"
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :Ag<CR>

let g:Hexokinase_highlighters = [ 'backgroundfull' ]

