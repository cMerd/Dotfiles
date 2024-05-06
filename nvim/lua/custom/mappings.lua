local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dr"] = {
      "<CMD> DapContinue <CR>",
      "Start or continue the debugger",
    },
    ["<leader>s"] = {
      "<CMD> vs <CR>",
      "Split window vertically"
    },
    ["<leader>wh"] = {
      "<CMD> sp <CR>",
      "Split window horizontally"
    }
  }
}

return M
