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

-- return {
-- 	{
-- 		"metalelf0/black-metal-theme-neovim",
-- 		lazy = false,
-- 		priority = 1000,
-- 		config = function()
-- 			require("black-metal").setup({
-- 				theme = "bathory", --(these are variations pick whatever you like)bathory, burzum, dark-funeral, darkthrone, emperor, gorgoroth, immortal, impaled-nazarene, khold, marduk, mayhem, nile, taake, thyrfing, venom, windir
-- 				variant = "nile",
-- 			})
-- 			require("black-metal").load()
-- 		end,
-- 	},
-- }

-- # ────────────────────────────────────────────────────────────
-- # Omarchy black_arch Theme for neovim (You can configure this theme according to your taste)
-- # By Ankur
-- # https://github.com/ankur311sudo
-- # ────────────────────────────────────────────────────────────

local M = {
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = function()
				vim.cmd("set termguicolors")
				vim.cmd("highlight clear")

				-- ================================
				-- AYU DARK PALETTE (PORTED)
				-- ================================
				local colors = {
					bg = "#000000",
					fg = "#e6e1cf",
					muted = "#666666",
					dark = "#222222",
					border = "#222222",
					selection = "#222222",
					black = "#000000",

					primary = "#36a3d9", -- blue
					secondary = "#b8cc52", -- green
					success = "#b8cc52",
					warning = "#e6b673", -- yellow
					danger = "#f07178", -- red
					accent = "#ff7733", -- orange
					info = "#36a3d9",
					purple = "#ffee99", -- magenta
					subtle = "#222222",
				}

				local function set_hl(group, opts)
					vim.api.nvim_set_hl(0, group, opts)
				end

				-- ================================
				-- CORE UI
				-- ================================
				set_hl("Normal", { fg = colors.fg, bg = colors.bg })
				set_hl("NormalNC", { fg = colors.fg, bg = colors.bg })
				set_hl("Comment", { fg = colors.muted, italic = true })
				set_hl("NonText", { fg = colors.muted })
				set_hl("Whitespace", { fg = colors.muted })
				set_hl("EndOfBuffer", { fg = colors.bg })

				set_hl("CursorLine", { bg = colors.dark })
				set_hl("CursorColumn", { bg = colors.dark })
				set_hl("CursorLineNr", { fg = colors.primary, bold = true })
				set_hl("LineNr", { fg = colors.muted })

				set_hl("Visual", { bg = colors.selection })
				set_hl("Search", { fg = colors.bg, bg = colors.primary })
				set_hl("IncSearch", { fg = colors.bg, bg = colors.accent })

				set_hl("VertSplit", { fg = colors.border })
				set_hl("WinSeparator", { fg = colors.border })

				-- ================================
				-- STATUS / TABLINE
				-- ================================
				set_hl("StatusLine", { fg = colors.fg, bg = colors.dark })
				set_hl("StatusLineNC", { fg = colors.muted, bg = colors.dark })

				set_hl("TabLine", { fg = colors.muted, bg = colors.dark })
				set_hl("TabLineFill", { bg = colors.black })
				set_hl("TabLineSel", { fg = colors.primary, bg = colors.bg, bold = true })

				-- ================================
				-- SYNTAX
				-- ================================
				set_hl("Constant", { fg = colors.purple })
				set_hl("String", { fg = colors.secondary })
				set_hl("Character", { fg = colors.secondary })
				set_hl("Number", { fg = colors.purple })
				set_hl("Boolean", { fg = colors.primary, bold = true })

				set_hl("Identifier", { fg = colors.fg })
				set_hl("Function", { fg = colors.info, bold = true })

				set_hl("Statement", { fg = colors.primary, bold = true })
				set_hl("Conditional", { fg = colors.primary })
				set_hl("Repeat", { fg = colors.primary })
				set_hl("Keyword", { fg = colors.primary, bold = true })
				set_hl("Operator", { fg = colors.accent })
				set_hl("Exception", { fg = colors.danger })

				set_hl("Type", { fg = colors.warning, italic = true })
				set_hl("StorageClass", { fg = colors.danger })
				set_hl("Structure", { fg = colors.secondary })
				set_hl("Typedef", { fg = colors.secondary })

				set_hl("PreProc", { fg = colors.secondary })
				set_hl("Include", { fg = colors.primary })
				set_hl("Define", { fg = colors.primary })
				set_hl("Macro", { fg = colors.warning })

				set_hl("Special", { fg = colors.accent })
				set_hl("Delimiter", { fg = colors.fg })

				-- ================================
				-- DIAGNOSTICS
				-- ================================
				set_hl("DiagnosticError", { fg = colors.danger })
				set_hl("DiagnosticWarn", { fg = colors.warning })
				set_hl("DiagnosticInfo", { fg = colors.info })
				set_hl("DiagnosticHint", { fg = colors.muted })

				set_hl("DiagnosticUnderlineError", { undercurl = true, sp = colors.danger })
				set_hl("DiagnosticUnderlineWarn", { undercurl = true, sp = colors.warning })
				set_hl("DiagnosticUnderlineInfo", { undercurl = true, sp = colors.info })

				-- ================================
				-- TREESITTER
				-- ================================
				set_hl("@comment", { link = "Comment" })
				set_hl("@string", { link = "String" })
				set_hl("@number", { link = "Number" })
				set_hl("@boolean", { link = "Boolean" })
				set_hl("@constant", { link = "Constant" })

				set_hl("@function", { link = "Function" })
				set_hl("@function.builtin", { fg = colors.accent, bold = true })

				set_hl("@keyword", { link = "Keyword" })
				set_hl("@keyword.function", { link = "Keyword" })
				set_hl("@keyword.operator", { link = "Operator" })

				set_hl("@type", { link = "Type" })
				set_hl("@type.builtin", { fg = colors.warning, bold = true })

				set_hl("@variable", { fg = colors.fg })
				set_hl("@variable.builtin", { fg = colors.danger, italic = true })

				set_hl("@parameter", { fg = colors.warning, italic = true })
				set_hl("@property", { fg = colors.info })
				set_hl("@field", { fg = colors.info })

				set_hl("@punctuation.delimiter", { link = "Delimiter" })
				set_hl("@punctuation.bracket", { link = "Delimiter" })

				-- ================================
				-- SPELL
				-- ================================
				set_hl("SpellBad", { undercurl = true, sp = colors.danger })
				set_hl("SpellCap", { undercurl = true, sp = colors.warning })

				-- ================================
				-- FINAL
				-- ================================
				vim.g.colors_name = "ayu-dark-custom"
			end,
		},
	},
}

return M
