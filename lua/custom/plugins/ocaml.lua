return {
  -- Add OCaml treesitter parser
  {
    'nvim-treesitter/nvim-treesitter',
    opts = function(_, opts)
      if type(opts.ensure_installed) == 'table' then
        vim.list_extend(opts.ensure_installed, { 'ocaml', 'ocaml_interface' })
      end
    end,
  },

  -- Configure LSP
  {
    'neovim/nvim-lspconfig',
    opts = {
      servers = {
        ocamllsp = {
          mason = false, -- We're using opam-installed LSP, not Mason
          settings = {
            codelens = { enable = true },
          },
        },
      },
    },
  },

  -- Configure null-ls for formatting with ocamlformat
  {
    'nvimtools/none-ls.nvim',
    optional = true,
    dependencies = {
      'nvimtools/none-ls-extras.nvim',
    },
    opts = function(_, opts)
      local nls = require 'null-ls'
      opts.sources = opts.sources or {}
      vim.list_extend(opts.sources, {
        nls.builtins.formatting.ocamlformat,
      })
    end,
  },

  -- OCaml-specific file settings
  {
    'nvim-lspconfig',
    init = function()
      vim.api.nvim_create_autocmd('FileType', {
        pattern = { 'ocaml', 'dune', 'opam' },
        callback = function()
          -- 2-space indentation
          vim.bo.shiftwidth = 2
          vim.bo.tabstop = 2
          vim.bo.softtabstop = 2
          vim.bo.expandtab = true

          -- Enable auto-formatting on save (if you use ocamlformat)
          vim.b.format_on_save = true
        end,
      })
    end,
  },
}
