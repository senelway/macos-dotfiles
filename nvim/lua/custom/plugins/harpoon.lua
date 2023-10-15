vim.api.nvim_set_keymap("n", "<leader>ha", ":lua require('harpoon.mark').add_file()<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>hf", ":lua require('harpoon.ui').toggle_quick_menu()<CR>", {})
vim.api.nvim_set_keymap("n", "<C-p>", ":lua require('harpoon.ui').nav_next()<CR>", {})
vim.api.nvim_set_keymap("n", "<C-u>", ":lua require('harpoon.ui').nav_prev()<CR>", {})

return {
	"ThePrimeagen/harpoon",
	config = function()
		require("harpoon").setup {}
	end,
}
