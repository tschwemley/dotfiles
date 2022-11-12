require("neorg").setup {
  load = {
    ["core.defaults"] = {},

    ["core.norg.dirman"] = {
      config = {
        workspaces = {
          pkm = "~/notes",
        },
      },
    },

    ["core.norg.completion"] = {
      config = {
        engine = "nvim-cmp"
      },
    },

    ["core.norg.concealer"] = {},

    ["core.gtd.base"] = {
      config = {
        displayers = {
            projects = {
                show_projects_without_tasks = false,
            }
        },
        workspace = "pkm",
      },
    },

    ["external.kanban"] = {},

  },
}
