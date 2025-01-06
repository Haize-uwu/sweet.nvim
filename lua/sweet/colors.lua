local colors = require("sweet.palette")

local function select_colors()
	local selected = { none = "none" }
	selected = vim.tbl_extend("force", selected, colors[vim.g.sweet_config.style])
	selected = vim.tbl_extend("force", selected, vim.g.sweet_config.colors)
	return selected
end

return select_colors()
