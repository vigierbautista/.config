vim.g.mapleader = " " 

-- Opens the netrw file explorer in the current window.
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) 

-- Moves the selected lines down by one.
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") 
-- Moves the selected lines up by one.
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") 

-- Joins the current line with the next, and then restores the cursor position.
vim.keymap.set("n", "J", "mzJ`z") 
-- Scrolls half a page down and centers the cursor.
vim.keymap.set("n", "<C-d>", "<C-d>zz") 
-- Scrolls half a page up and centers the cursor.
vim.keymap.set("n", "<C-u>", "<C-u>zz") 
-- Jumps to the next search result and centers the view, revealing context.
vim.keymap.set("n", "n", "nzzzv") 
-- Jumps to the previous search result and centers the view, revealing context.
vim.keymap.set("n", "N", "Nzzzv") 
-- Restarts the Language Server Protocol (LSP) client.
vim.keymap.set("n", "<leader>zig", "<cmd>LspRestart<cr>") 

-- Starts a collaborative editing session with 'vim-with-me' plugin.
vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe() 
end)
-- Stops a collaborative editing session with 'vim-with-me' plugin.
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe() 
end)

-- greatest remap ever
-- Pastes without overwriting the default register in visual mode.
vim.keymap.set("x", "<leader>p", [["_dP]]) 

-- next greatest remap ever : asbjornHaland
-- Yanks (copies) to the system clipboard in normal and visual modes.
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]]) 
-- Yanks (copies) the current line to the system clipboard in normal mode.
vim.keymap.set("n", "<leader>Y", [["+Y]]) 

-- Deletes without overwriting the default register in normal and visual modes.
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]]) 

-- This is going to get me cancelled
-- Maps Ctrl-c to escape in insert mode.
vim.keymap.set("i", "<C-c>", "<Esc>") 

-- Disables the default 'Q' command (ex mode).
vim.keymap.set("n", "Q", "<nop>") 
-- Opens a new tmux window and runs 'tmux-sessionizer'.
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>") 
-- Formats the current buffer using the LSP client.
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format) 

-- Jumps to the next item in the quickfix list and centers the view.
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz") 
-- Jumps to the previous item in the quickfix list and centers the view.
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz") 
-- Jumps to the next item in the location list and centers the view.
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz") 
-- Jumps to the previous item in the location list and centers the view.
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz") 

-- Initiates a search and replace for the word under the cursor, case-insensitive, with global flag.
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) 
-- Makes the current file executable.
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true }) 

-- Inserts a common Go error handling block.
vim.keymap.set(
    "n",
    "<leader>ee",
    "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)

-- (Commented out) Opens the packer.lua configuration file.
-- vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>"); 
-- (Commented out) Runs a "make_it_rain" animation using CellularAutomaton.
-- vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>"); 

-- Reloads the current Neovim configuration file.
vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so") 
end)
