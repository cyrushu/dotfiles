-- globally init
local configdir = debug.getinfo(1, 'S').source:sub(2):match("(.*[/\\])") 
vim.api.nvim_command('source' .. configdir .. 'startup/CommonKeymapping.vim')

-- check lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins",{
  lockfile = vim.fn.stdpath("data") .. "/lazy-lock.json"
})

-- 
-- 'kien/rainbow_parentheses.vim'
-- tabnine
require('tabnine').setup({
  disable_auto_comment=true,
  accept_keymap="<Tab>",
  dismiss_keymap = "<C-]>",
  debounce_ms = 800,
  suggestion_color = {gui = "#808080", cterm = 244},
  exclude_filetypes = {"TelescopePrompt", "NvimTree"},
  log_file_path = nil, -- absolute path to Tabnine log file
})

-- nvim-tree ----------------------------------
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()
--[[require('nvim-treesitter.configs').setup({
	ensure_installed = { "lua", "vim", "vimdoc", "python" }
})]]--

vim.cmd.colorscheme "catppuccin-frappe"
-- " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, 
if vim.loop.fs_stat("/usr/bin/python3") then
	python_host_prog = '/usr/bin/python3'
	python3_host_prog = '/usr/bin/python3'
end
-- configurations
dofile(configdir .. "startup/Settings.lua")
dofile(configdir .. "startup/PostKeymapping.lua")
dofile(configdir .. "startup/Plugins.lua")
vim.api.nvim_command('source' .. configdir .. 'startup/Plugins.vim')
vim.api.nvim_command('source' .. configdir .. 'FileType/ALE.vim')

vim.g.loaded_node_provider=0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

