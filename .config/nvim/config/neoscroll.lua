require("neoscroll").setup({
	hide_cursor = false,
	easing_function = "quadratic",
	cursor_scrolls_alone = true,
})

local t = {}
t["<C-u>"] = { "scroll", { "-vim.wo.scroll", "true", "175" } }
t["<C-d>"] = { "scroll", { "vim.wo.scroll", "true", "175" } }

require("neoscroll.config").set_mappings(t)
