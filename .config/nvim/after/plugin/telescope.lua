local telescope = require "telescope"
local utils = require "telescope.utils"

telescope.setup {
  pickers = {
    find_files = {
      cwd = utils.buffer_dir(),
    },
  },
}

telescope.load_extension "manix"
