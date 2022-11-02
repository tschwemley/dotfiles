PackerInstalled = function(install_path)
  return not (vim.fn.empty(vim.fn.glob(install_path)) > 0)
end

if PackerInstalled() then
  require("impatient")
end

-- Improve startup time
require("schwem.set")
require("schwem.plugins")
require("schwem.autocmds")
