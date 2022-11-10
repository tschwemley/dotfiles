local wk = require "which-key"

wk.register {
  ["<leader>n"] = {
    name = "Notes",

    c = { "<cmd>Neorg gtd capture<cr>", "Capture" },
    o = { "<cmd>e ~/notes/index.norg<cr>", "Open Notes" },
    v = { "<cmd>Neorg gtd views<cr>", "Views" },
  },
}
