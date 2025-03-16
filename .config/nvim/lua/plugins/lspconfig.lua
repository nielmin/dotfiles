-- LSP servers and clients communicate which features they support through "capabilities".
--  By default, Neovim supports a subset of the LSP specification.
--  With blink.cmp, Neovim has *more* capabilities which are communicated to the LSP servers.
--  Explanation from TJ: https://youtu.be/m8C0Cq9Uv9o?t=1275
--
-- This can vary by config, but in general for nvim-lspconfig:
return {
  'neovim/nvim-lspconfig',
  dependencies = { 'saghen/blink.cmp' },

  opts = {
    servers = {
      lua_ls = { -- Lua LSP configuration
        settings = {
          Lua = {
            runtime = {
              version = 'LuaJIT', -- Lua runtime version (LuaJIT is common for Neovim)
            },
            diagnostics = {
              globals = { 'vim' }, -- Define globals for Lua (e.g., vim API)
            },
            workspace = {
              library = vim.api.nvim_get_runtime_file("", true), -- Include runtime files in the workspace
            },
            telemetry = {
              enable = false, -- Disable telemetry if not needed
            },
          },
        },
      },

      pyright = { -- Python LSP configuration
        settings = {
          pyright = {
            autoImportsCompletion = true,
            disableOrganizeImports = true
          },
        },
      },

      gopls = { -- Go LSP configuration
        settings = {
          gopls = {
            analyses = {
              unusedparams = true,
              unreachable = true,
            },
            staticcheck = true,
          },
        },
      },

      ruff = { -- ruff LSP configuration
        cmd = { "ruff", "server" },
        filetypes = { 'python' },
        settings = {
          ruff = {
            linting = {
              enabled = true,
            },
          },
        },
      },
    }
  },

  config = function(_, opts)
    local lspconfig = require('lspconfig')
    for server, config in pairs(opts.servers) do
      -- Merge capabilities from blink.cmp into the server's configuration
      config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
      lspconfig[server].setup(config)
    end
  end
}
