syntax on		" highlight syntax
let mapleader = " "
set relativenumber	" show line numbers
set nu
set noswapfile		" disable the swapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
" set hlsearch		" highlight all search results
set ignorecase		" ignore case in search
set incsearch		" show search results as you type
set ruler
set hidden
set noerrorbells
set nowrap
set scrolloff=8
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set signcolumn=yes
set completeopt=menu,menuone,noselect
set mouse+=a
set timeoutlen=500
" set colorcolumn=80

" change the direction of new splits
set splitbelow
set splitright

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
set t_Co=256

" colorscheme night-owl
colorscheme tokyonight

augroup ClearSearchHL
  autocmd!
  " You may only want to see hlsearch /while/ searching, you can automatically
  " toggle hlsearch with the following autocommands
  autocmd CmdlineEnter /,\? set hlsearch
  autocmd CmdlineLeave /,\? set nohlsearch
  " this will apply similar n|N highlighting to the first search result
  " careful with escaping ? in lua, you may need \\?
  " autocmd CmdlineLeave /,\? lua require('highlight_current_n')['/,?']()
augroup END
