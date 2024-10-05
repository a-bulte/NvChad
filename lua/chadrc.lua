---@diagnostic disable: missing-fields
-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "onedark",

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

M.term = {
  float = {
    row = 0.05, col = 0.05,
    width = 0.9, height = 0.8,
  }
}

M.nvdash = {
  load_on_startup = true,
}

return M
