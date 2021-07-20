function prettier()
  return {
    exe = "prettier",
    args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0)},
    stdin = true
  }
end

require("formatter").setup {
  logging = false,
  filetype = {
    javascript = {
      prettier
    },
    typescript = {
      prettier
    },
    javascriptreact = {
      prettier
    },
    typescriptreact = {
      prettier
    },
    lua = {
      function()
        return {
          exe = "luafmt",
          args = {"--indent-count", 2, "--stdin"},
          stdin = true
        }
      end
    }
  }
}

vim.api.nvim_exec(
  [[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.js,*.jsx,*.tsx,*.ts,*.rs,*.lua FormatWrite
augroup END
]],
  true
)
