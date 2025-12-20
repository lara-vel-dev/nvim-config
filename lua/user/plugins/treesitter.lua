return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "go",
      "python",
      "ruby",
      "c",
      "cpp",
      "c_sharp",
      "java",
      "json",
      "javascript",
      "typescript",
      "html",
      "css",
      "scss",
      "yaml",
      "vim",
      "vimdoc",
      "lua",
      "gitignore",
      "markdown",
      "markdown_inline",
      "dockerfile",
      "query",
    },
    auto_install = true,
    highlight = { enable = true, },
    indent = { enable = true, },
    autotag = { enable = true, },

    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "<C-space>",
            node_incremental = "<C-space>",
            scope_incremental = false,
            node_decremental = "<bs>",
        },
    },
    
  },
}

