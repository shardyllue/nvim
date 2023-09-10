require("mason").setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_uninstalled = "✗",
          package_pending = "⟳",
        },
      },
  })
require("mason-lspconfig").setup({
    ensure_installed = { 'pyright', "lua_ls" },
})

require("lspconfig").pyright.setup {}
require("lspconfig").lua_ls.setup {}


