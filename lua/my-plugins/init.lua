-- PERF: After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
-- NOTE: use branch or tag for each plugin to avoid auto update to latest each time running sync or update packer. which may break stuff

-- personal plugins
lvim.plugins = {
  { "fatih/vim-go",
    config = function()
      require "my-plugins.vim-go".setup()
    end
  },
  { "mofiqul/vscode.nvim" },
  { "phaazon/hop.nvim",
    branch = "v2",
    config = function()
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
    commit = "d736930",
    config = function()
      require("todo-comments").setup {}
    end
  },
  { "ray-x/lsp_signature.nvim",
    tag = "v0.2.0", -- NOTE: the latest / master branch is fine, but use the stable version for now
    config = function()
      require "my-plugins.lsp-signature".setup()
    end,
  },
  { "rcarriga/nvim-notify",
    tag = "v3.9.1",
    config = function()
      require("my-plugins.nvim-notify").setup()
    end
  },
  { "karb94/neoscroll.nvim" },
  -- {
  --   'Joakker/lua-json5', -- NOTE: find out how to install for vim. manully clone and run install.sh also failed even rust cargo has been installed. maybe the dir is the culprit?
  --   run = './install.sh',
  --   -- config = function()
  --   --   require('dap.ext.vscode').json_decode = require 'json5'.parse
  --   -- end
  -- },
}
