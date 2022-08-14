local M = {
  php = function()
    require("dap").adapters.php = {
      type = 'executable',
      command = 'node',
      args = { '$HOME/.config/debuggers/vscode-php-debug/out/phpDebug.js' }
    }

    require("dap").configurations.php = {
      {
        type = 'php',
        request = 'launch',
        name = 'Listen for Xdebug',
        port = 9095
      }
    }
  end
}

return M

