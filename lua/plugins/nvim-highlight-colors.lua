return {
  {
    "brenoprata10/nvim-highlight-colors",
    config = function()
      local plugin = require("nvim-highlight-colors")
      plugin.setup({
	render = "virtual",
	enable_hex = true,
	enable_short_hex = true,
	enable_rgb = true,
	enable_tailwind = true,
	virtual_symbol_position = "eol"
      })
    end
  }
}
