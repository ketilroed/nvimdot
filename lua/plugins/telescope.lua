return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		-- or                              , branch = '0.1.x',
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({
				--   defaults = {
				--     vimgrep_arguments = {
				--       'rg',
				--       '--color=never',
				--       '--no-heading',
				--       '--with-filename',
				--       '--line-number',
				--       '--column',
				--       '--smart-case',
				--       '--ignore-file',
				--       '.gitignore'
				--     },
				--   }
			})
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<C-p>", builtin.find_files, {})
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
			vim.keymap.set("n", "<leader>fk", builtin.keymaps, {})
		end,
		--Search
	},
}
