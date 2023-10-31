local plugins = {
  {
    {
      "neovim/nvim-lspconfig",
      config = function()
        require "plugins.configs.lspconfig"
        require "custom.configs.lspconfig"
      end,
    },
    {
    "williamboman/mason.nvim",
      opts = {
        ensure_installed = {
          "lua-language-server",
          "pyright",
        },
      },
    },
    {
      'charludo/projectmgr.nvim',
      lazy = false, -- important!
    },
  }
}

return plugins
