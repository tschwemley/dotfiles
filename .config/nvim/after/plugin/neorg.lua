require("neorg").setup({
  load = {
    ["core.defaults"] = {},
    ["core.norg.dirman"] = {
      config = {
        workspaces = {
          pkm = "~/notes",
        }
      }
    }
  }
})
