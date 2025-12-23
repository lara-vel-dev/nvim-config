return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				-- Web
				javascript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				svelte = { "prettier" },
				css = { "prettier" },
				scss = { "prettier" },
				html = { "prettier" },
				json = { "prettier" },
				yaml = { "prettier" },
				markdown = { "prettier" },
				graphql = { "prettier" },
				liquid = { "prettier" },

				-- Lua
				lua = { "stylua" },

				-- Python
				python = { "isort", "black" },

				-- Go
				go = { "gofmt" },

				-- Rust
				rust = { "rustfmt" },

				-- Java
				java = { "google-java-format" },

				-- C / C++
				c = { "clang-format" },
				cpp = { "clang-format" },

				-- C#
				cs = { "csharpier" },

				-- Ruby
				ruby = { "rubocop" },

				-- Shell
				sh = { "shfmt" },
				bash = { "shfmt" },

				-- Docker
				dockerfile = { "dockerfmt" },
			},

			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout_ms = 3000,
			},
		})

		vim.keymap.set({ "n", "v" }, "<C-f>", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
			})
		end, { desc = "Format file or range (in visual mode)" })
	end,
}
