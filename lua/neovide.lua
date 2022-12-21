-- FIX: neovide is still buggy. re install?
-- TODO: make background transparant
local default_globals = {
  neovide_fullscreen = true,
  neovide_profiler = false,
  neovide_input_macos_alt_is_meta = true, -- must be true if using macos and iterm2 terminal settings: profiles/keys/left Option key: to esc+
  neovide_cursor_animation_length = 0.15,
  neovide_cursor_antialiasing = true,
  neovide_cursor_vfx_mode = 'railgun',
  neovide_cursor_vfx_opacity = 200.0,
  neovide_cursor_vfx_particle_density = 10.0,
  -- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
  neovide_transparency = 0.6,
  transparency = 0.8,
  -- neovide_background_color = '#0f1117'.printf('%x', float2nr(255 * g:transparency))
}

for k, v in pairs(default_globals) do
  vim.g[k] = v
end

-- Allow clipboard copy paste in neovide. why it becomes seperate? because for mac os there are different approach for using alt and cmd keys
vim.g.neovide_input_use_logo = 1 -- must be true for mac os to paste things
vim.api.nvim_set_keymap('', '<D-v>', 'p<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('', '<D-v>', '+p<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('c', '<D-v>', 'p<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('!', '<D-v>', '<C-R>+', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<D-v>', '<C-R>+', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<D-v>', '<C-R>+', { noremap = true, silent = true })
