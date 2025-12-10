-- return {
-- 	{
-- 		"vague2k/vague.nvim",
-- 		lazy = false,
-- 		priority = 1000,
-- 		config = function()
-- 			require("vague").setup({
-- 				bufferline = true,
-- 			})
-- 			vim.cmd("colorscheme vague")
--
-- 			-- 🌙 Apply Monokai-style tabline highlights
-- 			local hl = vim.api.nvim_set_hl
-- 			local colors = {
-- 				hex_0e091d = "#000000", -- main background (was dark indigo)
-- 				hex_061F23 = "#1A1A1A", -- secondary background (was dark teal)
-- 				hex_092F34 = "#2E2E2E", -- panel/hover (was dark cyan-blue)
-- 				hex_8CB319 = "#FFFFFF", -- accent/success (was lime olive)
-- 				hex_9147a8 = "#B0B0B0", -- highlight (was purple)
-- 			}
--
-- 			-- Tabline highlights
-- 			hl(0, "TabLine", { fg = colors.hex_9147a8, bg = colors.hex_0e091d })
-- 			hl(0, "TabLineFill", { bg = colors.hex_0e091d })
-- 			hl(0, "TabLineSel", { fg = colors.hex_8CB319, bg = colors.hex_0e091d, bold = true })
--
-- 			-- Bufferline highlights
-- 			hl(0, "BufferLineBackground", { fg = colors.hex_9147a8, bg = colors.hex_0e091d })
-- 			hl(0, "BufferLineFill", { bg = colors.hex_0e091d })
-- 			hl(0, "BufferLineBufferSelected", { fg = colors.hex_8CB319, bg = colors.hex_0e091d, bold = true })
-- 			hl(0, "BufferLineBufferVisible", { fg = colors.hex_8CB319, bg = colors.hex_0e091d })
-- 		end,
-- 	},
-- }

return {
	{
		"metalelf0/black-metal-theme-neovim",
		lazy = false,
		priority = 1000,
		config = function()
			require("black-metal").setup({
				theme = "windir", --(these are variations pick whatever you like)bathory, burzum, dark-funeral, darkthrone, emperor, gorgoroth, immortal, impaled-nazarene, khold, marduk, mayhem, nile, taake, thyrfing, venom, windir
				variant = "dark",
			})
			require("black-metal").load()
		end,
	},
}
