local M = {}
function M.is_nvim_border(border)
    return M.winnr() == M.winnr("1" .. border)
end

function M.wincmd(direction, count)
    return vim.api.nvim_command((count or 1) .. "wincmd " .. direction)
end

function M.winnr(direction)
    return vim.api.nvim_call_function("winnr", { direction })
end

return M
