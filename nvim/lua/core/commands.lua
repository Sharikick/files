vim.api.nvim_create_user_command("FormatPHP", function()
    local format_cmd = "php-cs-fixer fix " .. vim.fn.expand("%:p") .. " --rules=@PSR12"
    vim.fn.system(format_cmd)
    vim.cmd("e!") -- Перезагрузить файл после форматирования
end, {})
