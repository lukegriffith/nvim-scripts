local write_plugins = function()
	local output_file = vim.fn.expand("nvim_plugins_list.txt")
	local file = io.open(output_file, "w")
	if file then
		local plugins = require("lazy").plugins()
		for _, plugin in ipairs(plugins) do
			file:write(plugin.name .. "," .. plugin.url .. "\n")
		end
		file:close()
		print("Plugin list saved to " .. output_file)
	else
		print("Failed to open file for writing: " .. output_file)
	end
end

write_plugins()
vim.cmd("qa")
