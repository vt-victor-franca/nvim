local lsp = require("lsp-zero")

lsp.preset("recommended")
lsp.set_preferences({
    suggest_lsp_servers = true,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

local cmp = require('cmp')
local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
local lspconfig = require('lspconfig')

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ['<CR>'] = cmp.mapping.confirm({select = true}),
    ['<C-l>'] = cmp.mapping.complete(),
  })
})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.setup()

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
      "solargraph",
      "rubocop",
      "eslint",
      "html",
      "tsserver",
      "gopls",
      "helm_ls"
  },
  handlers = {
    lsp.default_setup,
    function(server)
      lspconfig[server].setup({
        capabilities = lsp_capabilities,
      })
    end
  },
})
