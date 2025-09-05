local module = require("bnf-syntax.module")

---@class Config
---@field filetype string The filetype to set
---@field extension string The file extension to detect
local config = {
  filetype = "bnf",
  extension = "bnf",
}

---@class MyModule
local M = {}

---@type Config
M.config = config

---@param args Config?
M.setup = function(args)
  M.config = vim.tbl_deep_extend("force", M.config, args or {})
end

-- Export config values for plugin/ to use
M.get_filetype = function()
  return M.config.filetype
end

M.get_extension = function()
  return M.config.extension
end

-- Keep your existing hello function if you want
M.hello = function()
  return module.my_first_function("Hello from BNF syntax!")
end

return M
