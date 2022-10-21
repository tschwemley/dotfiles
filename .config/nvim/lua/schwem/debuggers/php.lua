local M = {}

M.adapters = {
  type = "executable",
  --command = "node",
}

M.configuration = {
  {
    type = 'php',
    request = 'launch',
    name = 'Listen for Xdebug',
    port = 9000
  }
}

return M
