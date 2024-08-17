local offlineInstall = false

-- Function to add fields based on the condition
local addFields = function(plugin)
	plugin.pin = offlineInstall
end

-- Retrieve the plugin list
local plugins = require("lazy").plugins()

-- Loop through each plugin and apply the condition
for _, plugin in ipairs(plugins) do
	addFields(plugin)
end
