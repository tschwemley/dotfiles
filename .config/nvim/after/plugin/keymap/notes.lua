local wk = require "which-key"

wk.register {
  ["<leader>n"] = {
    name = "Notes",

    c = { "<cmd>Neorg gtd capture<cr>", "Capture" },
    j = { "<cmd>Neorg workspace pkm<cr><cmd>Neorg journal today<cr>", "Journal" },
    k = { "<cmd>Neorg kanban toggle<cr>", "Kanban" },
    o = { "<cmd>Neorg workspace pkm<cr>", "Open Notes" },
    v = { "<cmd>Neorg gtd views<cr>", "Views" },
  },
}

wk.register {
    ["<leader>v"] = { "<cmd>lua Toggle_venn()<cr>", "Toggle Venn" }
}
