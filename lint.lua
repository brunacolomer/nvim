return {
  "mfussenegger/nvim-lint",
  config = function()
    local lint = require("lint")

    vim.api.nvim_create_autocmd({ "BufWritePost", "BufEnter" }, {
      group = vim.api.nvim_create_augroup("GlobalLint", { clear = true }),
      callback = function()
        lint.try_lint()
      end,
    })
  end,
}
