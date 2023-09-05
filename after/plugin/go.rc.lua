local status, go = pcall(require, 'go')
if (not status) then
  return
end

go.setup({
  goimport = 'gopls', -- if set to 'gopls' will use golsp format
  gofmt = 'gopls',    -- if set to gopls will use golsp format
  max_line_line = 120,
  tag_transform = false,
  test_dir = '',
  comment_placeholder = '   ',
  lsp_cfg = true,       -- true: lsp in the plugin and apply non-default setup
  lsp_gofumpt = true,   -- true: set default gofmt in gopls format to   gofumpt
  lsp_codelens = true,
  lsp_on_attach = true, -- use on_attach from go.nvim
  dap_debug = true,
})


-- Run gofmt + goimport on save

local format_sync_grp = vim.api.nvim_create_augroup("GoImport", {})
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
    require('go.format').goimport()
  end,
  group = format_sync_grp,
})
