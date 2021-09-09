vim.g.nvim_tree_side = "left"
vim.g.nvim_tree_ignore = { ".git", "node_modules", "target" }
vim.g.nvim_tree_auto_open = 0
vim.g.nvim_tree_auto_close = 1 -- 0 by default, closes the tree when it's the last window
vim.g.nvim_tree_auto_resize = 0
vim.g.nvim_tree_add_trailing = 1
vim.g.nvim_tree_update_cwd = 1
vim.g.nvim_tree_show_icons = { git = 1, folders = 1, files = 1, folder_arrows = 1 }
vim.g.nvim_tree_special_files = { ["README.md"] = 1 }
vim.g.nvim_tree_quit_on_open = 1 -- 0 by default, closes the tree when you open a file
--vim.g.nvim_tree_auto_resize = 0 -- 1 by default, will resize the tree to its saved width when opening a file
