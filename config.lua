-- PERF: this config uses lunarvim version 1.2 'https://www.lunarvim.org/'
-- other global func and var of lua are located in '~/.local/share/lunarvim/lvim'
-- make sure to name .lua file differently than the files in lvim git folder to avoid duplication

-- import my configs from the 'lua' folder
require "general"
require "my-plugins"
require "my-key-mappings"
require "my-which-key"
require "my-treesitter"
require "my-telescope"
require "my-dap-config"
require "my-plugins.neoscroll"
require "neovide"
