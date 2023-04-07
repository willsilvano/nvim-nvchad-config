local M = {}

M.abc = {
  i = {
    ["jk"] = { "<ESC>", "escape insert mode", opts = { nowait = true }}
  },
  n = {
    ["<leader>fc"] = { "<cmd> Telescope current_buffer_fuzzy_find <CR>", "find in current buffer" },
    ["<leader>fs"] = { "<cmd> Telescope grep_string <CR>", "find current string" },
    ["<leader>sm"] = { ":MaximizerToggle<CR>", "toogle window maximization" },
  }
}

return M
