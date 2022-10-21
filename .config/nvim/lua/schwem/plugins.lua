-- TODO: futher customization on a per-plugin level
return require("packer").startup(function(use)
  -- Dependencies & Package Management
  use("wbthomason/packer.nvim")
  use("nvim-lua/plenary.nvim")
  use("williamboman/mason.nvim")

  -- Aesthetics
  use("sainnhe/gruvbox-material")
  use("sainnhe/everforest")

  -- Completion and Snippets
  use('hrsh7th/nvim-cmp')
  use('hrsh7th/cmp-buffer')
  use('hrsh7th/cmp-cmdline')
  use('hrsh7th/cmp-nvim-lsp')
  use('hrsh7th/cmp-path')
  use('rcarriga/cmp-dap')
  use({ "L3MON4D3/LuaSnip", tag = "v1.*" })

  -- Debugging
  use("mfussenegger/nvim-dap")
  use("rcarriga/nvim-dap-ui")
  use("theHamsta/nvim-dap-virtual-text")

  -- Formatting
  use("kylechui/nvim-surround")
  use("numtostr/comment.nvim")
  use("tpope/vim-sleuth")

  -- LSP
  use("folke/todo-comments.nvim")
  use("neovim/nvim-lspconfig")
  use("williamboman/mason-lspconfig.nvim")

  -- Navigation and buffer/statusline
  use({
    "akinsho/bufferline.nvim", tag = "v2.*",
    requires = "nvim-tree/nvim-web-devicons"
  })
  use({
    "nvim-tree/nvim-tree.lua",
    requires = { "nvim-tree/nvim-web-devicons" },
  })
  use({
    "nvim-lualine/lualine.nvim",
    requires = { "nvim-tree/nvim-web-devicons", opt = true }
  })

  -- Notes
  use {
    "nvim-neorg/neorg",
    after = { "nvim-treesitter", "telescope.nvim" },
    ft = "norg",
  }

  -- Telescope
  use({
    "nvim-telescope/telescope.nvim", tag = "0.1.*",
    requires = { "nvim-lua/plenary.nvim" }
  })

  -- Terminal
  -- { "akinsho/toggleterm.nvim" }
  use {"akinsho/toggleterm.nvim", tag = '*' }

  -- Treesitter
  use({
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  })

  -- Util
  use("folke/which-key.nvim")

end)
