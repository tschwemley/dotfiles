local lualine = require("lualine")
local mind = require("mind")

-- lualine.setup({
--     -- Add pomodoro timer to lualine
--     sections = {
--         lualine_c = { 'filename', require('pomodoro').statusline }
--     }
-- })

lualine.setup()
mind.setup()
