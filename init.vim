" Basic Settings
set number
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set nocompatible

syntax on
filetype on
filetype plugin on
filetype indent on

" Plugins
call plug#begin()

Plug 'preservim/nerdtree' " NerdTree
Plug 'ryanoasis/vim-devicons' " Developer iCons
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'jiangmiao/auto-pairs' " Auto Pairs
Plug 'preservim/nerdcommenter' " NerdCommenter
Plug 'tpope/vim-surround' " Vim-surround
Plug 'airblade/vim-gitgutter' " Vim gitgutter
Plug 'ghifarit53/tokyonight-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim' " File Finder
Plug 'vim-airline/vim-airline' " airline

call plug#end()

" Colorscheme
set termguicolors

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
let g:tokyonight_transparent_background = 1

colorscheme tokyonight

" Nerd Tree Keymaps
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" Prettier Keymap & Config
 au FileType css,scss let b:prettier_exec_cmd = "prettier-stylelint"

let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

nmap <Leader>y <Plug>(Prettier)

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
