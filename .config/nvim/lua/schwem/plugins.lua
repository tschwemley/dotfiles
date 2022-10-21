local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
  -- Aesthetics
  use("sainnhe/gruvbox-material")
  use("sainnhe/everforest")

  -- Completion and Snippets
  use("hrsh7th/nvim-cmp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-cmdline")
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-path")
  use("rcarriga/cmp-dap")
  use({"L3MON4D3/LuaSnip", tag = "v1.*" })

  -- Debugging
  use("mfussenegger/nvim-dap")
  use("rcarriga/nvim-dap-ui")
  use("theHamsta/nvim-dap-virtual-text")

  -- Dependency & Package Management
  use("wbthomason/packer.nvim")
  use("williamboman/mason.nvim")

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
  use({"akinsho/toggleterm.nvim", tag = "*" })

  -- Treesitter
  use({
    "nvim-treesitter/nvim-treesitter",
    run = function() require("nvim-treesitter.install").update({ with_sync = true }) end,
  })

  -- Util
  use("folke/which-key.nvim")
  use("lewis6991/impatient.nvim")
  use("nvim-lua/plenary.nvim")

  if packer_bootstrap then
    require('packer').sync()
  end
end)
