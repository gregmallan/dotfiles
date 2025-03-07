return {
    dir = '~/code/nvim-plugins/scratch.nvim',
    --  dev = true
    event = 'VeryLazy',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope.nvim',
    },
    config = function()
        require('telescope').load_extension 'scratch'
        local telescope_builtin = require 'telescope.builtin'
        local scratch = require 'scratch'
        scratch.setup {
            scratch_files_root_dir = '/Users/greg/scratches',
        }

        local scratch_dir = scratch.config.scratch_files_root_dir
        vim.keymap.set('n', '<leader>sS', function()
            telescope_builtin.find_files { cwd = scratch_dir, prompt_title = 'Search Scratch Files' }
        end, { desc = '[S]earch [S]cratch Files' })
        vim.keymap.set('n', '<leader>SF', scratch.new_scratch_file, { desc = 'New [S]cratch [F]ile' })
    end,

    keys = {
        --         {
        --          '<Leader>dp',
        --        ':Telescope docker_telescope docker_ps<CR>',
        --     desc = 'Search scratch files',
        --},
    },
}
