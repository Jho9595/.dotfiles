-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
-- personal plugins
lvim.plugins = {
  -- {
  --   "folke/trouble.nvim",
  --   cmd = "troubletoggle",
  -- },
  { "fatih/vim-go" },
  -- { "jbgutierrez/vim-better-comments" },
  { "mofiqul/vscode.nvim" },
  { "phaazon/hop.nvim",
    branch = 'v2',
    config = function()
      -- you can configure hop the way you like here; see :h hop-config
      require 'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
    end
  },
  { "nvim-treesitter/nvim-treesitter-context" },
  { "theprimeagen/harpoon" },
  { "tpope/vim-surround",
    tag = "v2.2"
  },
  { "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- FIX:  refer to the configuration section below
      }
    end
  },
  { "ray-x/lsp_signature.nvim",
    config = function()
      require "lsp-signature".setup()
    end,
  },
}
