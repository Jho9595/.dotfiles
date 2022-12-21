-- TODO: check the docs and create local var and return vim-go config
-- TODO: if it works, use its syntax highilghet instead of treesitter (disable treesitter for .go) and its lsp for go

local M = {}

M.options = {
  go_gopls_enabled = 0, --NOTE: disable to use gopls from vim lsp only. lsp and vim-go produce double gopls
}

M.setup = function()
  for k, v in pairs(M.options) do
    vim.g[k] = v
  end
end

return M
