
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>pg', builtin.git_files, {})

local actions = require('telescope.actions')

require('telescope').setup {
    defaults = {
        winblend = 40,
        layout_config = {
            width = 0.75,
            prompt_position = "top",
            preview_cutoff = 120,

        },
        mappings = {
            i = {
                ["<esc>"] = actions.close
            },
        },
    }
}

