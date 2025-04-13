return {
  'olimorris/codecompanion.nvim',
  config = function()
    require('codecompanion').setup {
      adapters = {
        openrouter = function()
          return require('codecompanion.adapters').extend('openai_compatible', {
            env = {
              url = 'https://openrouter.ai/api',
              api_key = 'OPENROUTER_API_KEY',
              chat_url = '/v1/chat/completions',
            },
            schema = {
              model = {
                -- default = 'deepseek/deepseek-chat-v3-0324',
                default = 'mistralai/codestral-2501',
              },
            },
          })
        end,

        llama3 = function()
          return require('codecompanion.adapters').extend('ollama', {
            name = 'llama3',
            schema = {
              model = {
                default = 'qwen2.5-coder-max:latest',
              },
              num_ctx = {
                default = 16384,
              },
              num_predict = {
                default = -1,
              },
            },
          })
        end,
      },
      strategies = {
        chat = {
          adapter = 'openrouter',
        },
        inline = {
          adapter = 'openrouter',
          keymaps = {
            accept_change = {
              modes = { n = 'ga' },
              description = 'Accept the suggested change',
            },
            reject_change = {
              modes = { n = 'gr' },
              description = 'Reject the suggested change',
            },
          },
        },
      },
      display = {
        chat = {
          auto_scroll = false,
          show_settings = true,
          show_token_count = true,
        },
        action_palette = {
          opts = {
            show_default_actions = true,
            show_default_prompt_library = true,
          },
        },
      },
    }
  end,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  opts = {
    opts = {
      log_level = 'DEBUG',
    },
    sources = {
      per_filetype = {
        codecompanion = { 'codecompanion' },
      },
    },
  },
}
