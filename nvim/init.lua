local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

-- Remove transparency when neovim opens
vim.api.nvim_create_autocmd("BufEnter", {
    pattern = "*",
    callback = function()
        vim.cmd([[
            hi Normal guibg=NONE ctermbg=NONE
            hi NormalNC guibg=NONE ctermbg=NONE
            hi SignColumn guibg=NONE ctermbg=NONE
            hi StatusLine guibg=NONE ctermbg=NONE
            hi StatusLineNC guibg=NONE ctermbg=NONE
            hi VertSplit guibg=NONE ctermbg=NONE
            hi TabLine guibg=NONE ctermbg=NONE
            hi TabLineFill guibg=NONE ctermbg=NONE
            hi TabLineSel guibg=NONE ctermbg=NONE
            hi Pmenu guibg=NONE ctermbg=NONE
            hi PmenuSel guibg=NONE ctermbg=NONE
            hi NeoTreeNormal guibg=NONE ctermbg=NONE
            hi NeoTreeNormalNC guibg=NONE ctermbg=NONE
            hi NeoTreeWinSeparator guibg=NONE ctermbg=NONE
            hi NeoTreeEndOfBuffer guibg=NONE ctermbg=NONE
            hi EndOfBuffer guibg=NONE ctermbg=NONE
        ]])
    end,
})


local opts = {}

require('core')
require('keymaps')
require("lazy").setup("plugins")
