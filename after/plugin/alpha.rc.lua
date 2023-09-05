local custom_header = {
  '',
  '██████  ███████ ██████  ██   ██  ██████  ██    ██ ███████ ███████ ',
  '██   ██ ██      ██   ██ ██   ██ ██    ██ ██    ██ ██      ██      ',
  '██████  █████   ██   ██ ███████ ██    ██ ██    ██ ███████ █████   ',
  '██   ██ ██      ██   ██ ██   ██ ██    ██ ██    ██      ██ ██      ',
  '██   ██ ███████ ██████  ██   ██  ██████   ██████  ███████ ███████ ',
  ''
}

local ok, alpha = pcall(require, 'alpha')
if not ok then return end

local db = require 'alpha.themes.dashboard'
db.section.header.val = custom_header
db.section.buttons.val = {
  db.button("SPC ;f ]", "[ Find File", ":Telescope find_files<cr>"),
  db.button("SPC <space>e ]", "[ File Browser", ":NvimTreeToggle<cr>"),
  db.button("SPC ;g ]", "[ Git Branch", ":Telescope git_branches<cr>"),
  db.button("SPC ;r ]", "[ Find letter", ":Telescope live_grep<cr>"),
}

alpha.setup(db.config)
