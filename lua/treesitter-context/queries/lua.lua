local util = require('treesitter-context.util')
local CATEGORY = util.CATEGORY

return {
  ['function_declaration'] = {
    category = CATEGORY.FUNCTION,
    last = { { field = 'parameters' } },
  },
  ['for_statement'] = {
    category = CATEGORY.FOR,
    last = { { type = 'do' } },
  },
  ['while_statement'] = {
    category = CATEGORY.WHILE,
    last = { { type = 'do' } },
  },
  ['repeat_statement'] = {
    category = CATEGORY.WHILE,
    next = { { field = 'body' } },
  },
  ['if_statement'] = {
    category = CATEGORY.IF,
    last = { { type = 'then' } },
  },
  ['elseif_statement'] = {
    category = CATEGORY.IF,
    last = { { type = 'then' } },
  },
  ['else_statement'] = {
    category = CATEGORY.IF,
    last = { { type = 'else' } },
  },
}
