-- vim set option
vim.opt.relativenumber = true -- set relative numbered lines.  TODO: make it false? use hop.nvim instead?
vim.opt.guifont = "JetBrainsMono Nerd Font:h18" -- the font used in graphical neovim applications

-- general
lvim.builtin.project.manual_mode = true -- disable lvim to find git and other files as a root when opening a project
lvim.log.level = "warn"
lvim.format_on_save.enabled = true
lvim.colorscheme = "vscode"
-- lvim.colorscheme = "lunar"
lvim.transparent_window = true

-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false
