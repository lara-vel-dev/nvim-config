-- :help options
--

-- table that contains all config options
local options = {
	-- tabs & identation
	shiftwidth = 4, -- number of spaces used in each indentation level
	tabstop = 4, -- visual width of a tab
	expandtab = true, -- inserts spaces instead of tabs
	autoindent = true, -- copies the identation from previous line

	-- line numbers
	relativenumber = true, -- shows line numbers relative to your current cursor line
	number = true, -- enumerates the lines you have

    -- line wrapping & display
    wrap = false, -- disables line wrapping
    cursorline = true, -- highlights the current line

    -- search behavior
    ignorecase = true, -- case-insensitive search
    smartcase = true, -- case-sensitive if search contains uppercase
    hlsearch = true, -- highlights search matches
    incsearch = true, -- show matches while typing

    -- scrolling & navigation
   scrolloff = 8, -- keeps cursor away from screen edges vertically
   sidescrolloff = 8, -- same as "scrolloff" but horizontally

    -- clipboard & registers
    clipboard = "unnamedplus", -- uses system clipboard
    
    -- backspace
    backspace = "indent,eol,start", -- allows backspace over indent, line breaks and exisiting text

    -- splits & windows
    splitbelow = true, -- horizontal splits open below
    splitright = true, -- vertical splits open to the right

    -- undo & backup
    undofile = true, -- persistent undo history
    swapfile = false, -- disables swap file
    backup = false, -- disables backupfiles

    -- performance & responsiveness
    updatetime = 300, -- faster cursor hold events
    timeoutlen = 500, -- faster key sequence completion

    -- ui & aesthetics
    termguicolors = true, -- enables 24-bit RGB colors
    background = "dark", -- default dark theme and optimizes colors
    signcolumn = "yes", -- always show sign column
    showmode = false, -- hides mode

    -- file handling & encoding
    hidden = true, -- allows switching buffers without saving
    confirm = true, -- asks for confirmation instead of erroring
    fileencoding = "utf-8", -- the encoding written to a file

    -- input devices & interaction
    mouse = "a", -- enables mouse support in all modes
}

-- loop that loads all configs from "options" table
for key, value in pairs(options) do 
	vim.opt[key] = value
end

local o = vim.opt

-- behavior & runtime customization
o.shortmess:append "c" -- don't give |ins-completion-menu| messages
o.iskeyword:append "-" -- hyphenated words recognized by search
o.formatoptions:remove({"c", "r", "o"}) -- doesn't insert the current comment leader automatically
o.runtimepath:remove("/usr/share/vim/vimfiles") -- separates vim plugins from neovim

