-- before lvim has its first release tag, this plugin has been used.
-- however the tag 1.2 has this plugin removed

local M = {}

local configs = {
  stages = "fade",
  background_colour = "FloatShadow",
  timeout = 2000,
}

M.setup = function()
  local status_ok, notify = pcall(require, "notify")
  if not status_ok then
    -- TODO: use lua print
    return
  end

  local config = vim.deepcopy(configs)

  notify.setup(config)

  -- PERF: override to make vim notify to use notify plugin
  vim.notify = notify
end

return M
