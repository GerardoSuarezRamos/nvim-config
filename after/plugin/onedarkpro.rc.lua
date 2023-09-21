local status, onedark = pcall(require, "onedarkpro")
if (not status) then return end


onedark.setup({
  highlights = {
    Comment = { italic = true },
    Directory = { bold = true },
    ErrorMsg = { italic = true, bold = true }
  },
  plugins = { -- Override which plugin highlight groups are loaded
    barbar = true,
    flash_nvim = true,
    gitsigns = true,
    indentline = true,
    lsp_saga = true,
    nvim_cmp = true,
    nvim_dap = true,
    nvim_dap_ui = true,
    nvim_lsp = true,
    nvim_tree = true,
    packer = true,
    telescope = true,
    toggleterm = true,
    treesitter = true,
    trouble = true,
  },
  options = {
    cursorline = true,                  -- Use cursorline highlighting?
    transparency = true,                -- Use a transparent background?
    terminal_colors = true,             -- Use the theme's colors for Neovim's :terminal?
    highlight_inactive_windows = false, -- When the window is out of focus, change the normal background?
  }
})

-- vim.cmd.colorscheme "onedark"
