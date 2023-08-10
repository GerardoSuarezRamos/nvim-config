local status, fterm = pcall(require, "FTerm")
if (not status) then return end

fterm.setup({
  border     = 'double',
  dimensions = {
    height = 0.6,
    width = 0.6,
  },
})

vim.cmd [[autocmd TermClose term://*fterm lua vim.api.nvim_input("<CR>")]]

-- Example keybindings
vim.keymap.set('n', '<leader>t', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<leader>t', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
