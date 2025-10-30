-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
--

-- Disable hiding of markup
vim.opt.conceallevel = 0

-- Break lines at word boundaries
vim.opt.wrap = true
vim.opt.linebreak = true

-- Copy the indent of the current line when inserting a new lines
vim.opt.autoindent = true

-- Disable inlay hints
vim.g.lazyvim_no_inlay_hints = true

-- ============================================================================
-- SMALL SCREEN STUFF
-- ============================================================================

-- Show relative line numbers (easier to jump with motion commands like 5j)
vim.opt.relativenumber = true

-- Keep cursor centered vertically when possible (less eye movement on small screen)
vim.opt.scrolloff = 8 -- Always show 8 lines above/below cursor
vim.opt.sidescrolloff = 8 -- Same for horizontal

-- Smaller command line height (saves screen space)
vim.opt.cmdheight = 1 -- Default is 1, but worth explicitly setting

-- Make splits open in more intuitive directions
vim.opt.splitright = true -- Vertical splits go to the right
vim.opt.splitbelow = true -- Horizontal splits go below

-- Faster update time (better LSP/diagnostic experience)
vim.opt.updatetime = 200 -- Default is 4000ms (too slow)

-- Shorter timeout for key sequences (makes which-key appear faster)
vim.opt.timeoutlen = 300 -- Default is 1000ms

-- Mouse support (useful on laptop trackpad)
vim.opt.mouse = "a" -- Enable in all modes

-- Better search experience
vim.opt.ignorecase = true -- Ignore case when searching
vim.opt.smartcase = true -- Unless you type uppercase

-- Show the effects of substitution incrementally (live preview of :%s)
vim.opt.inccommand = "split" -- Shows preview in a split

-- Persistent undo (survive restarts)
vim.opt.undofile = true
vim.opt.undolevels = 10000

-- Auto-save when switching buffers (prevents losing work)
vim.opt.autowrite = true
vim.opt.autowriteall = true

-- Better completion experience
vim.opt.completeopt = "menu,menuone,noselect"

-- Show which line your cursor is on (helps with orientation)
vim.opt.cursorline = true
