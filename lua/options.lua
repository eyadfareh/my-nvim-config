vim.cmd([[
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
"Keep selected after >> or <<"
vnoremap < <gv
vnoremap > >gv
setl smartindent
setlocal spell spelllang=en_us
"theme"
]])
vim.cmd("colorscheme tokyonight-storm")
vim.cmd([[
augroup filetypedetect
  au BufNewFile,BufRead *.s set ft=asm_ca65
augroup END
set list listchars=tab:\ \ ,nbsp:␣,trail:•,extends:⟩,precedes:⟨
]])
