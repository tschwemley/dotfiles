local wk = require("which-key")

wk.register({
    ["<leader>d"] = {
        name = "Debug",

        c = { ":DapContinue<cr>", "Continue" },
        i = { ":DapInto<cr>", "Step Into" },
        o = { ":DapOver<cr>", "Step Over" },
        t = { ":DapToggleBreakpoint<cr>", "Toggle Breakpoint" },
    }
})
