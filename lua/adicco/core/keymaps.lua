vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- Basic exit
keymap.set('n', '<leader>q', '<cmd>q!<cr>')

-- Close buffer without losing window/split
keymap.set("n", "<C-X>", "<cmd>bp<bar>sp<bar>bn<bar>bd!<CR>")

-- Git push
keymap.set('n', '<leader>gp', '<cmd>G push<cr>')

-- Tabs
keymap.set('n', '<A-1>', '<cmd>tabn1<CR>')
keymap.set('n', '<A-2>', '<cmd>tabn2<CR>')
keymap.set('n', '<A-3>', '<cmd>tabn3<CR>')
keymap.set('n', '<A-4>', '<cmd>tabn4<CR>')
keymap.set('n', '<A-5>', '<cmd>tabn5<CR>')

-- Terminal
keymap.set('n', '<C-\\>', '<cmd>split term://zsh<cr><C-w>r<C-w>20-<cr>')
keymap.set('t', 'jk', '<C-\\><C-n>');
keymap.set("t", "<C-H>","<C-\\><C-n><C-w>h")
keymap.set("t", "<C-J>","<C-\\><C-n><C-w>j")
keymap.set("t", "<C-K>","<C-\\><C-n><C-w>k")
keymap.set("t", "<C-L>","<C-\\><C-n><C-w>l")
keymap.set("n", "<leader>rt","15<C-w>_<cr>")


-- Return to normal mode with jk 
keymap.set('i', 'jk', '<esc>')

-- Add empty line below and go back up in normal mode
keymap.set('n', '<leader>o','o<Esc>k')
-- Add empty line above and go back down in normal mode
keymap.set('n', '<leader>O', 'O<Esc>j')

-- Set cwd
keymap.set('n', '<leader>cd','<cmd>lcd %:p:h<cr>')
keymap.set('n', '<leader>ca', '<cmd>cd %:p:h<cr>')

-- Save file with sf
keymap.set('n', '<Leader>sf', '<cmd>w!<cr>')

-- Cancel highlighting with cs ("clear search")
keymap.set('n', '<Leader>cs', '<cmd>:nohl<cr>')
keymap.set('v', '<Leader>cs', '<esc><cmd>:nohl<cr>')

-- Neo tree
keymap.set('n', '<Leader>t', '<cmd>Neotree toggle<CR>')
keymap.set('n', '<Leader>e', '<cmd>Neotree toggle current reveal_force_cwd<CR>')
-- keymap.set('n', '<Leader>s', '<cmd>Neotree float git_status<CR>')

-- Open URL under cursor
keymap.set("n", "gx", "<esc><cmd>URLOpenUnderCursor<cr>")

-- Telescope
keymap.set("n","<leader>f", "<cmd>Telescope find_files<cr>")
keymap.set("n","<c-f>", "<cmd>Telescope git_files<cr>")
keymap.set("n","<leader>g", "<cmd>Telescope live_grep<cr>")
keymap.set("n","<leader>b", "<cmd>Telescope buffers<cr>")

-- Moving between windows
keymap.set("n", "<C-H>","<C-w>h")
keymap.set("n", "<C-J>","<C-w>j")
keymap.set("n", "<C-K>","<C-w>k")
keymap.set("n", "<C-L>","<C-w>l")

-- Moving between buffers
keymap.set("n", "<C-n>","<cmd>bnext<cr>")
keymap.set("n", "<C-p>","<cmd>bprev<cr>")
--
-- Primagens' navigation tricks
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("n", "J", "mzJ`z")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

