-- if lvim.colorscheme == "darkplus" then
--   lvim.builtin.treesitter.rainbow = {
--     enable = true,
--     extended_mode = false,
--     colors = {
--       "DodgerBlue",
--       "Orchid",
--       "Gold",
--     },
--     disable = { "html" },
--   }
-- end

lvim.builtin.treesitter.ensure_installed = {
  "html",
  "java",
  "python",
  "javascript",
  "typescript",
  "tsx",
  "xml",
  "vue",
  "svelte"
}

lvim.builtin.treesitter.autotag = {
  enable = true
}

lvim.builtin.treesitter.rainbow = {
  enable = true,
  query = {
    "rainbow-parens",
  },
  strategy = require("ts-rainbow").strategy.global,
  hlgroups = {
    -- "TSRainbowRed",
    "TSRainbowBlue",
    -- "TSRainbowOrange",
    -- "TSRainbowCoral",
    "TSRainbowPink",
    "TSRainbowYellow",
    -- "TSRainbowViolet",
    -- "TSRainbowGreen",
  },
}

lvim.builtin.treesitter.auto_install = false


-- lvim.builtin.treesitter.ignore_install = { "markdown" }

lvim.builtin.treesitter.textobjects = {
  select = {
    enable = true,
    -- Automatically jump forward to textobj, similar to targets.vim
    lookahead = true,
    keymaps = {
      -- You can use the capture groups defined in textobjects.scm
      ["af"] = "@function.outer",
      ["if"] = "@function.inner",
      ["at"] = "@class.outer",
      ["it"] = "@class.inner",
      ["ac"] = "@call.outer",
      ["ic"] = "@call.inner",
      ["aa"] = "@parameter.outer",
      ["ia"] = "@parameter.inner",
      ["al"] = "@loop.outer",
      ["il"] = "@loop.inner",
      ["ai"] = "@conditional.outer",
      ["ii"] = "@conditional.inner",
      ["a/"] = "@comment.outer",
      ["i/"] = "@comment.inner",
      ["ab"] = "@block.outer",
      ["ib"] = "@block.inner",
      ["as"] = "@statement.outer",
      ["is"] = "@scopename.inner",
      ["aA"] = "@attribute.outer",
      ["iA"] = "@attribute.inner",
      ["aF"] = "@frame.outer",
      ["iF"] = "@frame.inner",
    },
  },
}

-- Autopairs
local npairs = require("nvim-autopairs")
local Rule = require('nvim-autopairs.rule')

npairs.setup({
  check_ts = true,
  ts_config = {
    lua = { 'string' }, -- it will not add a pair on that treesitter node
    javascript = { 'template_string' },
    java = false,       -- don't check treesitter on java
  }
})

local ts_conds = require('nvim-autopairs.ts-conds')


-- press % => %% only while inside a comment or string
npairs.add_rules({
  Rule("%", "%", "lua")
      :with_pair(ts_conds.is_ts_node({ 'string', 'comment' })),
  Rule("$", "$", "lua")
      :with_pair(ts_conds.is_not_ts_node({ 'function' }))
})
