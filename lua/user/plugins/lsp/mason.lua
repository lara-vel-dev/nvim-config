return {
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      -- list of servers for mason to install
      ensure_installed = {
        -- frontend  
        "ts_ls",
        "angularls",
        "html",
        "cssls",
        "tailwindcss",
        "svelte",
        "lua_ls",
        "graphql",
        "emmet_ls",
        "prismals",
        "eslint",

        -- backend
        "gopls",
        "pyright",
        "solargraph",
        "clangd",
        "csharp_ls",
        "jdtls",
        "rust_analyzer",
        "lua_ls",
        "bashls",
        "dockerls",
        "yamlls",
        "jsonls",
        "sqlls",
      },
    },
    dependencies = {
      {
        "williamboman/mason.nvim",
        opts = {
          ui = {
            icons = {
              package_installed = "✓",
              package_pending = "➜",
              package_uninstalled = "✗",
            },
          },
        },
      },
      "neovim/nvim-lspconfig",
    },
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = {
        "prettier",
        "stylua",
        "isort",
        "black",
        "pylint",
        "eslint_d",
        "goimports",
        "clang-format",
        "csharpier",
        "google-java-format",
        "rubocop",
        "shfmt",

      },
    },
  },
}
