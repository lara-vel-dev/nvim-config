vim.g.mapleader = " "

local km = vim.keymap 

km.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
km.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlight" })

-- increment/decrement numbers
km.set("n", "<leader>i", "<C-a>", { desc = "Increment number" })
km.set("n", "<leader>d", "<C-x>", { desc = "Decrement number" })

-- save & quit files
km.set("n", "<C-q>", ":qa<CR>", { desc = "Closes a session in nvim" })
km.set("n", "<C-s>", ":w<CR>", { desc = "Save a file with Ctrl s" })
km.set("n", "<leader>sn", ":noautocmd w<CR>", { desc = "Save file without auto-formatting" })

-- window management
km.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
km.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
km.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
km.set("n", "<leader>sx", ":close<CR>", { desc = "Close current split" })

km.set("n", "<leader>to", ":tabnew<CR>", { desc = "Open new tab" })
km.set("n", "<leader>tx", ":tabclose<CR>", { desc = "Close current tab" })
km.set("n", "<leader>tn", ":tabn<CR>", { desc = "Go to text tab" })
km.set("n", "<leader>tp", ":tabp<CR>", { desc = "Go to previous tab" })
km.set("n", "<leader>tf", ":tabnew<CR>", { desc = "Open current buffer in new tab" })

km.set("n", "x", '"_x', { desc = "Delete single char without copying into register" })

-- Vertical scroll and center
km.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up" })
km.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down" })
km.set("n", "n", "nzzzv", { desc = "Center the next search match and ensures it’s visible" })

km.set("n", "<leader>lw", ":set wrap!<CR>", { desc = "Wrap a very long line" })

-- Indentation 
km.set("v", "<", "<gv", { desc = "Stay in visual mode after identation" })
km.set("v", ">", ">gv", { desc = "Stay in visual mode after identation" })

km.set("v", "p", "_dp", { desc = "Keep last yanked when pasting" })

