require('redhouse.base')
require('redhouse.highlights')
require('redhouse.maps')
require('redhouse.plugins')

local has = vim.fn.has
local is_mac = has "macunix"
local is_linux = has "unix"
local is_win = has "win32"
local is_wsl = has "wsl"

if is_mac == 1 then
  require('redhouse.macos')
end
if is_linux == 1 then
  require('redhouse.linux')
end
if is_win == 1 then
  require('redhouse.windows')
end
if is_wsl == 1 then
  require('redhouse.wsl')
end
