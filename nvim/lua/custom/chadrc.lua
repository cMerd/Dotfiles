---@type ChadrcConfig
local M = {}

M.ui = {
  theme = 'nightowl',
  transparency = true,
  hl_override = {
    ["@comment"] = { italic = true },
    ["@function"] = { bold = true, },
    ["@variable.parameter"] = { bold = true },
    ["@type.builtin"] = { italic = true },
    ["@type"] = { italic = true, },
    ["Type"] = { italic = true },
    ["@keyword.return"] = { bold = true },
    ["@punctuation.bracket"] = { fg = "#7474d4" },
    ["@punctuation.delimiter"] = { fg = "#6767a8" },
  },
  hl_add = {
    ["DiagnosticUnnecessary"] = { underdashed = true, sp = "yellow" }
  },
  statusline = {
    theme = "default",
    separator_style = "default",
  }
}

M.plugins = "custom.plugins"
M.mappings = require("custom.mappings")

return M
