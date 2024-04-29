-- general settings
 
 
vim.opt.history = 100
vim.opt.ruler = true
vim.opt.showcmd = true

vim.opt.encoding = "utf8"
vim.opt.clipboard = 'unnamedplus'

-- settings on the numbar
vim.wo.number = true
vim.wo.relativenumber = true


-- set typing rules
vim.bo.softtabstop = 4
vim.opt.smartindent = true
vim.opt.mouse = 'a'


-- undo and swap
vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath("data") .. "undo"
vim.opt.swapfile = true
vim.opt.directory = vim.fn.stdpath("data") .. "swap"

--[[

os.setenv("NVIM_TUI_ENABLE_CURSOR_SHAPE", 1)
local TMUX_EXIST = os.getenv("TMUX")
if empty($TMUX)
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  let &t_SR = "\<Esc>]50;CursorShape=2\x7"
else
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
  let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
endif
]]--
