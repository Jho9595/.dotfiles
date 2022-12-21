-- vim set my options
local options = {
  relativenumber = true, -- set relative numbered lines.
  guifont = "JetBrainsMono Nerd Font:h18", -- the font used in graphical neovim applications like neovide
  termguicolors = true, -- for nvim notifiy
}

-- loop and apply the changes
for k, v in pairs(options) do
  vim.opt[k] = v
end

-- general
lvim.builtin.project.manual_mode = true -- disable lvim to find git and other files as a root when opening a project
lvim.log.level = "warn"
lvim.format_on_save.enabled = true
lvim.colorscheme = "vscode"
-- lvim.colorscheme = "lunar"
lvim.transparent_window = true

-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false

-- Change theme settings
-- lvim.builtin.theme.options.dim_inactive = true
-- lvim.builtin.theme.options.style = "storm"

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- vim.api.nvim_create_autocmd("BufEnter", {
--   pattern = { "*.json", "*.jsonc" },
--   -- enable wrap mode for json files only
--   command = "setlocal wrap",
-- })
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "zsh",
--   callback = function()
--     -- let treesitter use bash highlight for zsh files as well
--     require("nvim-treesitter.highlight").attach(0, "bash")
--   end,
-- })

-- NOTE: configure the speed of yank
local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup
local yank_group = augroup("HighlightYank", {})

autocmd("TextYankPost", {
  group = yank_group,
  pattern = "*",
  callback = function()
    vim.highlight.on_yank({
      higroup = "IncSearch",
      timeout = 10, -- yank latency
    })
  end
})
