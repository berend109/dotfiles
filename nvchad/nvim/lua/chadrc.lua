-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	 hl_override = {
	 	Comment = { italic = true },
	 	["@comment"] = { italic = true },
	 },
}

vim.g.NvChad_theme = "gatekeeper"

return M

