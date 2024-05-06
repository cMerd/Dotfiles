require "core"

local custom_init_path = vim.api.nvim_get_runtime_file("lua/custom/init.lua", false)[1]

if custom_init_path then
  dofile(custom_init_path)
end

require("core.utils").load_mappings()

local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

-- bootstrap lazy.nvim!
if not vim.loop.fs_stat(lazypath) then
  require("core.bootstrap").gen_chadrc_template()
  require("core.bootstrap").lazy(lazypath)
end

-- Sets colors to line numbers Above, Current and Below  in this order
function LineNumberColors()
    vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='#475f6e', bold=true })
    vim.api.nvim_set_hl(0, 'LineNr', { fg='white', bold=true })
    vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='#536a73', bold=true })
end


dofile(vim.g.base46_cache .. "defaults")
vim.opt.rtp:prepend(lazypath)
vim.cmd(":tnoremap <Esc> <C-\\><C-n>");
vim.cmd.nnoremap("<C-d>", "<C-d>zz");
vim.cmd.nnoremap("<C-u>", "<C-u>zz");
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.cmd(":set relativenumber");
vim.api.nvim_set_hl(0, 'Comment', { italic = true })
require "plugins"
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
LineNumberColors()

