inoremap jj <Esc>
nnoremap <leader>e <cmd>NvimTreeToggle<cr>

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fp <cmd>Telescope projects<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fg <cmd>Telescope git_branches<cr>

nnoremap <leader>. <cmd>Telescope lsp_code_actions theme=cursor<cr>

nnoremap <leader>cc <cmd>Commentary<cr>
nnoremap <leader>pr <cmd>ALEFix<cr>

nmap n <Plug>(highlight-current-n-n)
nmap N <Plug>(highlight-current-n-N)

nnoremap <leader>ha <cmd>lua require("harpoon.mark").add_file()<cr>
nnoremap <leader>hh <cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>
nnoremap <leader><cr> <cmd>CommentToggle<cr>
vnoremap <leader><cr> :'<,'>CommentToggle<cr>


nnoremap <leader>bh <cmd>BufferPrevious<cr>
nnoremap <leader>bl <cmd>BufferNext<cr>

map <silent> <leader>w :lua require('nvim-window').pick()<CR>
