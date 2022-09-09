vim.cmd("autocmd!")
-- undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

vim.scriptencoding = 'utf-8'

vim.wo.number = true

vim.opt.swapfile = false
vim.opt.showmode = false
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 0
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.shell = 'zsh'
vim.opt.backupskip = { '/tmp/*', '/private/tmp/*' }
vim.opt.inccommand = 'split'
-- case insensitive searching UNLESS /C or capital in search
vim.opt.ignorecase = true 
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
-- no wrap lines
vim.opt.wrap = false 
vim.opt.backspace = { 'start', 'eol', 'indent' }
-- finding files - search down into subfolders
vim.opt.path:append { '**' }
vim.opt.wildignore:append { '*/node_modules/*' }
-- add asterisks in block comments
vim.opt.formatoptions:append { 'r' }

-- turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = "set nopaste"
})

