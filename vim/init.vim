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
Plug 'srcery-colors/srcery-vim'
Plug 'ThePrimeagen/vim-be-good'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'luisiacc/gruvbox-baby'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'junegunn/fzf.vim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'preservim/nerdtree'
Plug 'thedenisnikulin/vim-cyberpunk'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'overcache/NeoSolarized'
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
Plug 'bluz71/vim-moonfly-colors'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

let g:gruvbox_bold = '1'
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_italic = '1'
" colorscheme ayu
" colorscheme gruvbox
"colorscheme cyberpunk
let g:airline_theme='cyberpunk'
" set cursorline
" let g:cyberpunk_cursorline="default"
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

colorscheme srcery
let mapleader = " "
highlight Normal guibg=none
nnoremap <silent> <C-f> :NERDTreeToggle<CR>
nnoremap <leader>pg :PlugInstall<CR>
nnoremap <leader>wq :wq<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>cs :colorscheme
nnoremap <leader>q :q!<CR>
inoremap <silent><expr> <c-space> coc#refresh()
nnoremap <F5> :wa<CR>:vertical botright term ++kill=term<CR>

lua <<EOF
require('nvim-treesitter.configs').setup {
  highlight = { enable = true },
  indent = { enable = true }
}
EOF

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>" 

autocmd FileType json syntax match Comment +\/\/.\+$+
let g:neoformat_try_node_exe = 1
autocmd BufWritePre *.js Neoformat
au BufRead,BufNewFile *.md setlocal textwidth=100
