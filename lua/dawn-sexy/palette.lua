local options = require("dawn-sexy.config").options

local variants = {
	soft = {
		_nc = "#16191e",
		base = "#181B20",
		surface = "#1b1f25",
		overlay = "#1d2127",
		muted = "#525F66", -- borders, line numbers etc
		subtle = "#524c44", -- Comments
		text = "#8f8372", -- Variables
		-- Special
		love = "#6B4A49",
		gold = "#6D6137", -- strings/values
		rose = "#6B4A49", -- functions
		pine = "#435861", -- keywords
		foam = "#525F66", -- typenames/namespaces
		iris = "#6F5A59", -- parameters/macros
		--Highlight
		highlight_low = "#FFFFFF", -- Unused
		highlight_med = "#22272f", -- Visual mode
		highlight_high = "#6B4A49", -- ??
		none = "NONE",
	},
	medium = {
		_nc = "#16191e",
		base = "#181B20",
		surface = "#1b1f25",
		overlay = "#1d2127",
		muted = "#525F66", -- borders, line numbers etc
		subtle = "#7C7162", -- Comments
		text = "#9E9486", -- Variables
		-- Special
		love = "#9D706E",
		gold = "#8B7C46", -- strings/values
		rose = "#7D5756", -- functions
		pine = "#536C77", -- keywords
		foam = "#677881", -- typenames/namespaces
		iris = "#806866", -- parameters/macros
		--Highlight
		highlight_low = "#FFFFFF", -- Unused
		highlight_med = "#333A44", -- Visual mode
		highlight_high = "#6B4A49", -- ??
		none = "NONE",
	},
	hard = {
		_nc = "#16191E",
		base = "#181B20",
		surface = "#1B1F25",
		overlay = "#1D2127",
		muted = "#5B6971", -- borders, line numbers etc
		--muted = "#6A6154", -- borders, line numbers etc
		subtle = "#8F8372", -- Comments
		text = "#ADA498", -- Variables
		-- Special
		love = "#DAC9C8",
		gold = "#AA9857", -- strings/values
		rose = "#9F7473", -- functions
		pine = "#648390", -- keywords
		foam = "#809099", -- typenames/namespaces
		iris = "#937978", -- parameters/macros
		--Highlight
		highlight_low = "#FFFFFF", -- Unused
		highlight_med = "#39414D", -- Visual mode
		highlight_high = "#755150", -- ??
		none = "NONE",
	},
}

if variants[options.variant] ~= nil then
	return variants[options.variant]
end

return vim.o.background == "light" and variants.dawn or variants[options.dark_variant or "medium"]
