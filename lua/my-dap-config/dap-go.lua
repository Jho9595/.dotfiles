local status_ok, dap = pcall(require, "dap")
if not status_ok then
  vim.notify("dap is null")
  return
end

dap.adapters.go = function(callback, config)
  local handle
  local pid_or_err
  local port = math.random(38697, 54000) -- math random to create many debuging instances
  handle, pid_or_err =
  vim.loop.spawn(
    "dlv",
    {
      args = { "dap", "-l", "127.0.0.1:" .. port },
      detached = true
    },
    function(code)
      handle:close()
      print("Delve exited with exit code: " .. code)
    end
  )
  -- FIX: wait for delve to start?
  -- vim.defer_fn(
  -- function()
  -- dap.repl.open()
  -- callback({type = "server", host = "127.0.0.1", port = port})
  -- end,
  -- 100)
  dap.repl.open()
  callback({ type = "server", host = "127.0.0.1", port = port })
end

-- https://github.com/go-delve/delve/blob/master/Documentation/usage/dlv_dap.md
dap.configurations.go = {
  {
    type = "go",
    name = "kabomm 1",
    request = "launch",
    program = "${file}",
    options = {
      initialize_timeout_sec = 10,
    }
  },
}
