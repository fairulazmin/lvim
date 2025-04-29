local autopairs_status_ok, npairs = pcall(require, "nvim-autopairs")
if not autopairs_status_ok then
  return
end

npairs.setup({
  check_ts = true,
  ts_config = {
    lua = { "string" },
    javascript = { "template_string" },
    java = false,
  }
})

local Rule = require("nvim-autopairs.rule")
local ts_conds = require("nvim-autopairs.ts-conds")

npairs.add_rules({
  Rule("%", "%", "lua")
      :with_pair(ts_conds.is_ts_node({ "string", "comment" })),
  Rule("$", "$", "lua")
      :with_pair(ts_conds.is_not_ts_node({ "function" })),
})

