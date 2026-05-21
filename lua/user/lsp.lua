vim.diagnostic.config({ virtual_text = false })

local lsp_manager = require("lvim.lsp.manager")

lsp_manager.setup("tailwindcss", {
  filetypes = {
    "html",
    "css",
    "scss",
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "vue",
    "svelte",
    "astro",
  },
})

local formatters = require("lvim.lsp.null-ls.formatters")

formatters.setup({
  {
    command = "prettier",
    filetypes = {
      "html",
      "css",
      "scss",
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
      "json",
      "jsonc",
      "yaml",
      "markdown",
    },
  },
  { command = "stylua", filetypes = { "lua" } },
  { command = "shfmt",  filetypes = { "sh", "zsh" } },
})

