require("neorg").setup({
  load = {
    ["core.defaults"] = {},

    ["core.norg.dirman"] = {
      config = {
        workspaces = {
          pkm = "~/notes",
        }
      }
    },

    ["core.norg.concealer"] = {},

    ["core.gtd.base"] = {
      config = {
        workspace = "pkm",
      },
    },
  }
})
