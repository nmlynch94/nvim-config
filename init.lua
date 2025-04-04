-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local telescope = require("telescope.builtin")

vim.keymap.set("n", "<D-S-o>", telescope.find_files, { noremap = true, silent = true })
vim.keymap.set("n", "<D-S-f>", telescope.live_grep, { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-Tab>", "<C-w>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
