print("Hello from set")

vim.cmd("syntax enable")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

vim.cmd("set path+=**")
vim.cmd("set wildmenu")

vim.cmd("let g:netrw_banner=0")
vim.cmd("let g:netrw_banner = 0")
vim.cmd("let g:netrw_liststyle = 3")
vim.cmd("let g:netrw_browse_split = 0")
vim.cmd("set cursorline")
vim.cmd("set number")
-- vim.cmd("set relativenumber")

-- move among buffers with CTRL
vim.cmd("nmap <C-h> <C-w>h")
vim.cmd("nmap <C-j> <C-w>j")
vim.cmd("nmap <C-k> <C-w>k")
vim.cmd("nmap <C-l> <C-w>l")

-- Cycle through buffers
vim.cmd("nnoremap <S-Tab> :bprevious<CR>")
vim.cmd("nnoremap <Tab> :bnext<CR>")
vim.cmd("nnoremap <leader>fl :Ex<CR>")
-- vim.keymap.set("n", "<leader>e", ":Ex<CR>", {})

-- vim.cmd("let g:netrw_altv = 1")
-- vim.cmd("let g:netrw_winsize = 15")
