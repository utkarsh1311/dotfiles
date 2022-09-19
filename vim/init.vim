set showmatch               " show matching 
set relativenumber
set nu
set scrolloff=8
set termguicolors
set incsearch
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=2               " number of columns occupied by a tab 
set softtabstop=2           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=2            " width for autoindents
set smartindent
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
" set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
" set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.
" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'gruvbox-community/gruvbox'
Plug 'sbdchd/neoformat'
Plug 'ayu-theme/ayu-vim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'luisiacc/gruvbox-baby'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'junegunn/fzf.vim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'overcache/NeoSolarized'
Plug 'bluz71/vim-moonfly-colors'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

let g:gruvbox_bold = '1'
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_italic = '1'
colorscheme gruvbox
" colorscheme ayu

let mapleader = " "
highlight Normal guibg=none
nnoremap <silent> <C-f> :Files<CR>
nnoremap <leader>pg :PlugInstall<CR>
nnoremap <leader>wq :wq<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>cs :colorscheme
nnoremap <leader>ff :NERDTreeToggle<CR>
inoremap <silent><expr> <c-space> coc#refresh()

lua <<EOF
require('nvim-treesitter.configs').setup {
  highlight = { enable = true },
  indent = { enable = true }
}
EOF

let g:neoformat_try_node_exe = 1
autocmd BufWritePre *.js Neoformat
