--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]

--------------------------------- Options -------------------------------------
lvim.colorscheme = "gruvbox-material"
vim.opt.relativenumber = true

-- LunarVim Options
lvim.log.level = "warn"
lvim.format_on_save = false
-------------------------------------------------------------------------------

------------------------------- Keymappings -----------------------------------
lvim.leader = "space"
-------------------------------------------------------------------------------

-- TODO: everything below here needs organized

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.dap.active = true
lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

-- Treesitter
lvim.builtin.treesitter.rainbow.enable = true
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "css",
  "go",
  "javascript",
  "json",
  "lua",
  "php",
  "typescript",
  "yaml"
}
lvim.builtin.treesitter.highlight.enabled = true

-- Lsp
lvim.lsp.installer.setup.ensure_installed = {
  "bash",
  "go",
}

--------------------------------- Debugging -----------------------------------

lvim.builtin.dap.on_config_done = function()
  local dap = require("dap")
  -- local widgets = require("dap.ui.widgets")

  -- Show repl on start
  -- dap.listeners.before["event_initialized"]["personal-config"] = function (session, body)
  dap.listeners.before["event_initialized"]["personal-config"] = function(session, body)
    dap.repl.open()
  end

  dap.listeners.before["event_stopped"]["personal-config"] = function(session, body)
    dap.repl.close()
  end

  dap.adapters.delve = {
    type = 'server',
    port = '${port}',
    executable = {
      command = 'dlv',
      args = { 'dap', '-l', '127.0.0.1:${port}' },
    }
  }

  -- https://github.com/go-delve/delve/blob/master/Documentation/usage/dlv_dap.md
  dap.configurations.go = {
    {
      type = "delve",
      name = "Debug",
      request = "launch",
      program = "${file}"
    },
    {
      type = "delve",
      name = "Debug test", -- configuration for debugging test files
      request = "launch",
      mode = "test",
      program = "${file}"
    },
    -- works with go.mod packages and sub packages
    {
      type = "delve",
      name = "Debug test (go.mod)",
      request = "launch",
      mode = "test",
      program = "./${relativeFileDirname}"
    }
  }
end

-------------------------------------------------------------------------------

-- Additional Plugins
lvim.plugins = {
  -- Aesthetics
  { "ellisonleao/glow.nvim" }, -- Markdown renderer

  -- Databases
  { "tpope/vim-dadbod" },
  { "kristijanhusak/vim-dadbod-ui" },

  -- Themes
  { "sainnhe/everforest" },
  { "sainnhe/gruvbox-material" },

  -- Treesitter
  {
    "ray-x/lsp_signature.nvim",
    config = function()
      -- Config options: https://github.com/ray-x/lsp_signature.nvim#full-configuration-with-default-values
      require("lsp_signature").setup()
    end
  },
  { "p00f/nvim-ts-rainbow" },
  {
    "romgrk/nvim-treesitter-context",
    config = function()
      require("treesitter-context").setup {
        enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
        throttle = true, -- Throttles plugin updates (may improve performance)
        max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
        patterns = { -- Match patterns for TS nodes. These get wrapped to match at word boundaries.
          -- For all filetypes
          -- Note that setting an entry here replaces all other patterns for this entry.
          -- By setting the 'default' entry below, you can control which nodes you want to
          -- appear in the context window.
          default = {
            'class',
            'function',
            'method',
          },
        },
      }
    end
  },
  {
    "simrat39/symbols-outline.nvim",
    config = function()
      --https://github.com/simrat39/symbols-outline.nvim#configuration
      require("symbols-outline").setup()
    end
  },

  -- Utility
  {
    "max397574/better-escape.nvim",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- Trialing
  {
    "nvim-neorg/neorg",
    config = function()
      require('neorg').setup {
        -- ... -- check out setup part...
        load = {
          ["core.defaults"] = {},
          ["core.norg.dirman"] = {
            config = {
              workspaces = {
                personal_wiki = "~/logseq",
                -- home = "~/notes/home",
              }
            }
          }
        }
      }
    end,
    requires = "nvim-lua/plenary.nvim"
  }
}

    -- Autocommands (https://neovim.io/doc/user/autocmd.html)
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.json", "*.jsonc" },
  -- enable wrap mode for json files only
  command = "setlocal wrap",
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "zsh",
  callback = function()
    -- let treesitter use bash highlight for zsh files as well
    require("nvim-treesitter.highlight").attach(0, "bash")
  end,
})

lvim.builtin.lualine.options.theme = "gruvbox-material"
