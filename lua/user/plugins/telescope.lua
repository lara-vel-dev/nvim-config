return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
    "folke/todo-comments.nvim",
    "folke/trouble.nvim", -- 🔴 DEPENDENCIA FALTANTE
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    local transform_mod = require("telescope.actions.mt").transform_mod

    local trouble = require("trouble")
    local trouble_telescope = require("trouble.sources.telescope")

    local custom_actions = transform_mod({
      open_trouble_qflist = function()
        trouble.toggle("quickfix")
      end,
    })

    telescope.setup({
      defaults = {
        preview = {
          treesitter = true, -- seguro en Neovim 0.11
        },
        path_display = { "smart" },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-q>"] = actions.send_selected_to_qflist
              + custom_actions.open_trouble_qflist,
            ["<C-t>"] = trouble_telescope.open,
          },
        },
      },
    })

    telescope.load_extension("fzf")

    local keymap = vim.keymap
    keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
    keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>")
    keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
    keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
    keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>")
    keymap.set("n", "<leader>fk", "<cmd>Telescope keymaps<cr>")
  end,
}

