return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
      --  null_ls.builtins.diagnostics.hdl_checker,
      --  null_ls.builtins.formatting.hdl_checker,
      }
    })

    vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
  end
}
