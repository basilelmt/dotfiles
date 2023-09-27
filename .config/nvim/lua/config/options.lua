-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.cmd("autocmd BufEnter * set formatoptions-=cro")
vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")
-- vim.cmd("nnoremap <silent> * :keepjumps normal! mi*`i<CR>")
vim.cmd("set noswapfile")
vim.cmd('vnoremap <leader>p "_dP')
