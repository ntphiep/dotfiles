require "nvchad.mappings"
-- require("menu").open(options, opts) 

local cmp = require("cmp")

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map('n', '<C-a>', 'gg<S-v>G')

map('n', 'ss', ':split<cr><C-w>w')
map('n', 'sv', ':vsplit<cr><C-w>w')


map('n', 'sh', '<C-w>h')
map('n', 'sj', '<C-w>j')
map('n', 'sk', '<C-w>k')
map('n', 'sl', '<C-w>l')

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map({ "i" }, "<C-x>", "<esc> :q <cr>")
  -- Uncommented this line to enable Ctrl + S for saving

-- ... existing code ...

-- Add a mapping for commenting lines
map('n', '<C-_>', ':s/^/-- /<CR>', { desc = "Comment line" })  -- Ctrl + / in normal mode
map('v', '<C-_>', ':s/^/-- /<CR>gv', { desc = "Comment selection" })  -- Ctrl + / in visual mode

-- Add a mapping for uncommenting lines
map('n', '<C-?>', ':s/^-- //<CR>', { desc = "Uncomment line" })  -- Ctrl + Shift + / in normal mode
map('v', '<C-?>', ':s/^-- //<CR>gv', { desc = "Uncomment selection" })  -- Ctrl + Shift + / in visual mode

-- ... existing code ...

-- Map Ctrl + Z to undo
map("n", '<C-z>', 'u', { desc = "Undo last change" })

-- ... existing code ...

-- ... existing code ...


-- vim.keymap.set("n", "<RightMouse>", function()
--     vim.cmd.exec '"normal! \\<RightMouse>"'
  
--     local options = vim.bo.ft == "NvimTree" and "nvimtree" or "default"
--     require("menu").open(options, { mouse = true })
--   end, {})
