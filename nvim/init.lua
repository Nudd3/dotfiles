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

vim.api.nvim_create_autocmd("FileType", {
  pattern = "javascript",
  callback = function()
    vim.opt_local.shiftwidth = 2
    vim.opt_local.tabstop = 2
    vim.opt_local.softtabstop = 2
    vim.opt_local.expandtab = true
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "java",
  callback = function()
    vim.opt_local.shiftwidth = 4
    vim.opt_local.tabstop = 4
    vim.opt_local.softtabstop = 4
    vim.opt_local.expandtab = true
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "go",
  callback = function()
    vim.opt_local.shiftwidth = 4
    vim.opt_local.tabstop = 4
    vim.opt_local.softtabstop = 4
    vim.opt_local.expandtab = true
  end,
})

local opts = {}

vim.diagnostic.config({
  float = {
    border = "rounded",
    source = "always",
    header = "",
    prefix = "⚠ ",
    focusable = true,
  },
})
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#1f2335", fg = "#bbc5ed" }) -- Dark background, light text
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "#1f2335", fg = "#6272a4" }) -- Border color

require("core")
require("keymaps")
require("lazy").setup("plugins")
