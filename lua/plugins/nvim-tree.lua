-- cf. https://github.com/nvim-tree/nvim-tree.lua/wiki/Recipes#sorting-files-naturally-respecting-numbers-within-files-names
local function natural_cmp(left, right)
  if left.type ~= "directory" and right.type == "directory" then
    return false
  elseif left.type == "directory" and right.type ~= "directory" then
    return true
  end
  	left = left.name:lower()
  	right = right.name:lower()

  	if left == right then
  		return false
  	end

  	for i = 1, math.max(string.len(left), string.len(right)), 1 do
  		local l = string.sub(left, i, -1)
  		local r = string.sub(right, i, -1)

  		if type(tonumber(string.sub(l, 1, 1))) == "number" and type(tonumber(string.sub(r, 1, 1))) == "number" then
  			local l_number = tonumber(string.match(l, "^[0-9]+"))
  			local r_number = tonumber(string.match(r, "^[0-9]+"))

  			if l_number ~= r_number then
  				return l_number < r_number
  			end
  		elseif string.sub(l, 1, 1) ~= string.sub(r, 1, 1) then
  			return l < r
  		end
  	end
end

return
{
  "nvim-tree/nvim-tree.lua",
  config = function ()
    require("nvim-tree").setup {
      filters = {
        dotfiles = true,
      },
      live_filter = {
        always_show_folders = false,
      },
      sort_by = function (nodes)
        table.sort(nodes, natural_cmp)
      end,
    }
  end
}
