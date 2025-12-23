return {
	"barrett-ruth/live-server.nvim",
	config = function()
		opts = {
			cmd = { "LiveServerStart", "LiveServerStop" },
			config = true,
			args = { "--port=8080" },
		}
		require("live-server").setup(opts)

		-- keymaps
		local km = vim.keymap

		km.set("n", "<leader>ls", ":LiveServerStart<CR>", { desc = "Start live server" })
		km.set("n", "<leader>lq", ":LiveServerStop<CR>", { desc = "Stop live server" })
	end,
}
