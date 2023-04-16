local M = {}


function M.load(theme)
    if vim.g.colors_name then
        vim.cmd[[hi clear]]
    end

    require("hybrid2.theme")

    vim.g.colors_name = "hybrid2"
end


return M
