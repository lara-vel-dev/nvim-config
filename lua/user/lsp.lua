local km = vim.keymap
vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("UserLspConfig", {}),
    callback = function(ev)
        local opts = { buffer = ev.buf, silent = true }

            -- set keybinds
            km.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts ) -- Show LPS references
            km.set("n", "gD", vim.lsp.buf.declaration, opts) -- Go to declaration
            km.set("n", "gd", vim.lsp.buf.definition, opts) -- Show LSP definition
            km.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts) -- Show LSP implementations
            km.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts) -- Show LSP type definition
            km.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts) -- See available code actions
            km.set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- Smart rename
            km.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts) -- Show buffer diagnostics
            km.set("n", "<leader>d", vim.diagnostic.open_float, opts) -- Show line diagnostics
            km.set("n", "[d", function()
                vim.diagnostic.jump({ count = -1, float = true }) 
            end, opts) -- Go to previous diagnostic
            km.set("n", "]d", function()
                vim.diagnostic.jump({ count = 1, float = true }) 
            end, opts) -- Go to next diagnostic
            km.set("n", "K", vim.lsp.buf.hover, opts) -- Show doc for what is under cursor
            km.set("n", "<leader>rs", ":LspRestart<CR>", opts) -- Restart LSP
        end,
    })

    local severity = vim.diagnostic.severity

    vim.diagnostic.config({
        signs = {
        text = {
            [severity.ERROR] = " ",
            [severity.WARN] = " ",
            [severity.HINT] = "󰠠 ",
            [severity.INFO] = " ",
        },
    },
})


         
