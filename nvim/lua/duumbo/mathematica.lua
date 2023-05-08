-- Run current line in mathematica
vim.keymap.set("n", "<leader>wr",
    function()
        -- Function calls wolframscript and passes it the current line,
        -- striped from newlines and whitespaces.
        local pos = vim.api.nvim_win_get_cursor(0)[2]
        local line = vim.api.nvim_get_current_line():gsub("\n", ""):gsub(" ", "")
        local handle = assert(io.popen("wolframscript -code "..line.." -format TeXForm", "r"))
        handle:flush()
        local t = string.format("%s", handle:read("*all"):gsub('\n', ''))
        handle:close()
        vim.api.nvim_set_current_line(t)
    end)
