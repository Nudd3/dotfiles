return {
    "nvim-neo-tree/neo-tree.nvim",
    nvimbranch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim"
    },
    config = function()
        vim.keymap.set('n', '<C-n>', ':Neotree toggle<CR>')
        vim.keymap.set('n', '<leader>ee', ':Neotree<CR>')
    end
}
