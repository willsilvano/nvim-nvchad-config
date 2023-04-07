local plugins = {
  {
    "neovim/nvim-lspconfig",
     dependencies = {
       "jose-elias-alvarez/null-ls.nvim",
       config = function()
         require "custom.configs.null-ls"
       end,
     },
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "pyright",
        "html-lsp",
        "black",
        "isort",
      }
    }
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults
        "vim",
        "lua",

        -- others
        "html",
        "css",
        "javascript",
        "php",
        "python",
        "vue",
        "json",
        "gitignore",
        "sql",
        "yaml",
        "dockerfile"

      }
    }
  },
  {
    -- maximizes and restores current window
    "szw/vim-maximizer",
    lazy = false
  },
  {
    -- tmux & split window navigation
    "christoomey/vim-tmux-navigator",
    lazy = false
  }
}
return plugins
