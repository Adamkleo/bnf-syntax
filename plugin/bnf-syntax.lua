-- Wait for potential setup, then create autocmd
local bnf = require("bnf-syntax")
local pattern = "*." .. bnf.get_extension()

vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
  pattern = pattern,
  callback = function()
    vim.bo.filetype = bnf.get_filetype()
  end,
})

vim.api.nvim_create_user_command("GrammarTest", function()
    local result = require("bnf-syntax").hello()
    print(result)
    print("Current filetype: " .. vim.bo.filetype)
end, {})

