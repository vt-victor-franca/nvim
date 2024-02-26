-- require('rose-pine').setup({
--     disable_background = true
-- })


function ColorMyPencils(color)
    -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    -- vim.cmd([[
    --    let g:gruvbox_material_better_performance = 1
    --    let g:gruvbox_material_background = 'hard'
    --    let g:gruvbox_material_colors_override = {'bg_green': ['#504945', '234']}
    -- ]])

    color = color or "rose-pine"
    -- vim.cmd([[highlight Normal guibg=black]])
    vim.cmd([[
    augroup MyColors
    autocmd!
    autocmd ColorScheme * highlight Search guifg=NONE guibg=#333333 gui=NONE
    augroup end
    ]])
    vim.cmd.colorscheme(color)
end

ColorMyPencils()
