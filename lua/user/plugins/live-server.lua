return {
	"barrett-ruth/live-server.nvim",
	config = function()
		require("live-server").setup()

		vim.keymap.set("n", "<leader>ls", function()
			require("live-server").start()
		end, { desc = "Start live server" })
	end,
}
