local lsp = require('lsp-zero')

lsp.preset("recommended")

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.ensure_installed({
    'rust_analyzer',
    'texlab',
    'ltex',
    'pylsp',
    'lua_ls',
})

local cmp = require("cmp")
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.complete(),
    ['<C-Space>'] = cmp.mapping.confirm({ select = true }),
    ['<CR>'] = vim.NIL,
})

lsp.setup_nvim_cmp({
    mapping = cmp_mappings
})

lsp.setup()

vim.diagnostic.config({
    virtual_text = true
})
