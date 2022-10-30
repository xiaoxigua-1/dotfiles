require('xiaoxigua.base')
require('xiaoxigua.highlights')
require('xiaoxigua.maps')
require('xiaoxigua.plugins')

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
  require('xiaoxigua.macos')
end
if is_win then
  require('xiaoxigua.windows')
end
