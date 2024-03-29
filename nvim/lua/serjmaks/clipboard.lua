-- by default, nvim doesn't sync yanked text with the system clipboard
local has = function(x)
  return vim.fn.has(x) == 1
end
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
  require('serjmaks.macos')
end
if is_win then
  require('serjmaks.windows')
end

