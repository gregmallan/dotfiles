return {
    dir = '~/code/nvim-plugins/docker-telescope.nvim',
    --  dev = true
    event = 'VeryLazy',
    dependencies = {
        'nvim-telescope/telescope.nvim',
    },
    config = function()
        require('telescope').load_extension 'docker_telescope'
        require('docker_telescope').setup {
            open_method = 'vsplit', -- fir vertical split
            -- open_method = "edit", -- for full screen
            -- open_method = "split", -- for horizontal split
        }
    end,

    keys = {
        {
            '<Leader>dp',
            ':Telescope docker_telescope docker_ps<CR>',
            desc = '[D]ocker [P]rocesses',
        },
    },
}
