local telescope = require('telescope')
local fb_actions = require "telescope".extensions.file_browser.actions
local builtin = require('telescope.builtin')

local setup = {
  extensions = {
    file_browser = {
      collapse_dirs = true,
      grouped = true,
      respect_gitignore = true,
      depth = false,
      mappings = {
        ["i"] = {
        },
        ["n"] = {
          ["<leader>aa"] = fb_actions.create,
          ["<leader>yy"] = fb_actions.copy,
          ["<leader>dd"] = fb_actions.remove,
          ["<leader>mm"] = fb_actions.move,
          ["<leader>rr"] = fb_actions.rename,
          ["<leader>oo"] = fb_actions.open,
          ["<leader>ff"] = fb_actions.toggle_browser,
        },
      },
    },
  },
}

-- Disable file_browser default mappings
require('telescope._extensions.file_browser.config').values.mappings = {}
require("telescope").setup(setup)
require('telescope').load_extension("file_browser")

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fl', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fo', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>fr', builtin.lsp_references, {})
vim.keymap.set('n', '<leader>fd', builtin.lsp_definitions, {})
vim.keymap.set('n', '<leader>fx', builtin.diagnostics, {})
vim.keymap.set('n', '<leader>fe', telescope.extensions.file_browser.file_browser, { noremap = true })

