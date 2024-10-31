local lspconfig = require('lspconfig')
local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

require('mason').setup()
require('mason-lspconfig').setup({
  handlers = {
    function(server)
      lspconfig[server].setup({
        capabilities = lsp_capabilities,
      })
    end
  },
})

lspconfig.solargraph.setup({})
lspconfig.rubocop.setup({})
lspconfig.gopls.setup({})
lspconfig.lua_ls.setup({})
lspconfig.helm_ls.setup({})
