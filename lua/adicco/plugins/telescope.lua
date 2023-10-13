return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
		"gbrlsnchs/telescope-lsp-handlers.nvim",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		-- LSP handlers
		telescope.load_extension("lsp_handlers")

		telescope.setup({
			defaults = {
				path_display = { "truncate " },
				mappings = {
					i = {
						["<C-u>"] = false,
						["<C-k>"] = actions.move_selection_previous, -- move to prev result
						["<C-j>"] = actions.move_selection_next, -- move to next result
						-- ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
					},
				},
				extensions = {
					lsp_handlers = {
						code_action = {
							telescope = require("telescope.themes").get_dropdown({}),
						},
					},
				},
			},
		})

		-- Use fzf?
		--telescope.load_extension("fzf")

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<leader>f", "<cmd>Telescope find_files<cr>")
		keymap.set("n", "<c-f>", "<cmd>lua require'telescope-config'.project_files()<cr>")
		keymap.set("n", "<leader>g", "<cmd>Telescope live_grep<cr>")
		keymap.set("n", "<leader>b", "<cmd>Telescope buffers<cr>")
	end,
}
