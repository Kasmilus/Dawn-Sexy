local options = require("dawn-sexy.config").options

local variants = {
	soft = {
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
		highlight_low = "#22272f", -- Very subtle highlights
		highlight_med = "#333A44", -- Visual mode
		highlight_high = "#6B4A49", -- ??
		none = "NONE",
	},
	medium = {
		_nc = "#14161a",
		base = "#16191e",
		surface = "#181b21",
		overlay = "#1d2127",
		muted = "#525F66", -- borders, line numbers etc
		subtle = "#918573", -- Comments
		text = "#a69d91", -- Variables
		-- Special
		love = "#A16B68",
		gold = "#99884D", -- strings/values
		rose = "#895E5D", -- functions
		pine = "#5A8090", -- keywords
		foam = "#648190", -- typenames/namespaces
		iris = "#93706C", -- macros
		--Highlight
		highlight_low = "#2D343E", -- Very subtle highlights
		highlight_med = "#38414C", -- Visual mode
		highlight_high = "#6B4A49", -- ??
		none = "NONE",
	},
	-- TODO:
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
		highlight_low = "#22272f", -- Very subtle highlights
		highlight_med = "#39414D", -- Visual mode
		highlight_high = "#755150", -- ??
		none = "NONE",
	},
}

if variants[options.variant] ~= nil then
	return variants[options.variant]
end

return vim.o.background == "light" and variants.dawn or variants[options.dark_variant or "medium"]
