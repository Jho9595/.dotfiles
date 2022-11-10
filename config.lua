-- PERF: this config uses lunarvim version 1.2 'https://www.lunarvim.org/'
-- NOTE: other global func and var of lua are located in '~/.local/share/lunarvim/lvim'
-- NOTE: make sure to name .lua file differently than the files in lvim git folder to avoid duplication

-- NOTE: import my configs from the 'lua' folder
require 'general'
require 'my-key-mappings'
require 'my-which-key'
require 'my-treesitter'
require 'my-telescope'
require 'other-config'
require 'my-plugins'
require 'neovide'
