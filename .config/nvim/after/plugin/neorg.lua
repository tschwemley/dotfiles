local neorg = require "neorg"

neorg.setup {
  load = {
    -- "Core" Modules
    ["core.defaults"] = {},

    ["core.gtd.base"] = {
      config = {
        displayers = {
          projects = {
            show_projects_without_tasks = false,
          },
        },
        workspace = "pkm",
      },
    },

    ["core.norg.completion"] = {
      config = {
        engine = "nvim-cmp",
      },
    },

    ["core.norg.concealer"] = {},

    ["core.norg.dirman"] = {
      config = {
        workspaces = {
          pkm = "~/notes",
        },
      },
    },

    ["core.norg.esupports.metagen"] = {
      config = {
          type = "auto"
      },
    },

    ["external.kanban"] = {},
  },
}
