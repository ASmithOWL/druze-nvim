local palette = require('colors.futuristic')
-- Define syntax groups
local syntax = {
  Comment = { fg = '#bde0fe', style = 'italic' },
  Constant = { fg = '#fe8565' },
  String = { fg = '#02d8e9' },
  Character = { fg = '#02d8e9' },
  Number = { fg = '#02d8e9' },
  Boolean = { fg = '#02d8e9' },
  Float = { fg = '#02d8e9' },
  Identifier = { fg = '#b97bff' },
  Function = { fg = '#ffeeb2' },
  Statement = { fg = '#ffeeb2' },
  Conditional = { fg = '#fda2ff' },
  Repeat = { fg = '#fda2ff' },
  Label = { fg = '#fda2ff' },
  Keyword = { fg = '#fda2ff' },
  Exception = { fg = '#fe4970' },
  Operator = { fg = '#02d8e9' },
  PreProc = { fg = '#ffeeb2' },
  Include = { fg = '#ffeeb2' },
  Define = { fg = '#ffeeb2' },
  Macro = { fg = '#ffeeb2' },
  PreCondit = { fg = '#ffeeb2' },
  Type = { fg = '#fda2ff' },
  StorageClass = { fg = '#fda2ff' },
  Structure = { fg = '#fda2ff' },
  Typedef = { fg = '#fda2ff' },
  Special = { fg = '#ffeeb2' },
  SpecialChar = { fg = '#02d8e9' },
  Tag = { fg = '#fe4970' },
  Delimiter = { fg = '#ffeeb2' },
  SpecialComment = { fg = '#2a0059', style = 'italic' },
  Underlined = { fg = '#ffeeb2', style = 'underline' },
  NonText = { bg = '#22192c' },
  Ignore = { fg = '#ffeeb2' }
}

vim.api.nvim_set_var('terminal_color_0', '#22192c')
vim.api.nvim_set_var('terminal_color_1', '#fe4970')
vim.api.nvim_set_var('terminal_color_2', '#02d8e9')
vim.api.nvim_set_var('terminal_color_3', '#ffeeb2')
vim.api.nvim_set_var('terminal_color_4', '#bde0fe')
vim.api.nvim_set_var('terminal_color_5', '#b97bff')
vim.api.nvim_set_var('terminal_color_6', '#02d8e9')
vim.api.nvim_set_var('terminal_color_7', '#ffeeb2')
vim.api.nvim_set_var('terminal_color_8', '#22192c')
vim.api.nvim_set_var('terminal_color_9', '#fe4970')
vim.api.nvim_set_var('terminal_color_10', '#02d8e9')
vim.api.nvim_set_var('terminal_color_11', '#ffeeb2')
vim.api.nvim_set_var('terminal_color_12', '#bde0fe')
vim.api.nvim_set_var('terminal_color_13', '#b97bff')
vim.api.nvim_set_var('terminal_color_14', '#02d8e9')
vim.api.nvim_set_var('terminal_color_15', '#ffeeb2')
vim.cmd('highlight clear')
vim.cmd('syntax reset')
vim.cmd('highlight CursorLine guibg=#22192c')

for group, colors in pairs(syntax) do
  vim.cmd(string.format('highlight %s guifg=%s guibg=%s gui=%s',
    group, colors.fg, '#22192c', colors.style or 'none'))
end

-- Customize line numbers
vim.cmd('highlight clear CursorLineNr')
vim.cmd('highlight clear LineNr')
vim.cmd('highlight! link LineNr Number')
vim.cmd('highlight clear SignColumn')
vim.cmd('highlight LineNr guibg=#22192c guifg=#ffeeb2')
vim.cmd('highlight EndOfBuffer guifg=#22192c guibg=#22192c')
vim.cmd('highlight SignColumn guibg=#22192c')
vim.cmd('highlight NormalFloat guibg=#22192c')
vim.cmd('highlight FloatBorder guibg=#22192c guifg=#ffeeb2')
vim.cmd('highlight ColorColumn guibg=#3c2334 guifg=#22192c')
vim.cmd('highlight StatusLine guibg=#22192c guifg=#ffeeb2')
vim.cmd('highlight Pmenu guibg=#4d194d guifg=#e0aaff')
vim.cmd('highlight PmenuSel guibg=#e0aaff guifg=#4d194d')
vim.cmd('highlight TelescopeBorder guifg=#ffeeb2')
vim.cmd('highlight TelescopeNormal guibg=#22192c guifg=#02d8e9')
vim.cmd('highlight TelescopeSelection guibg=#22192c guifg=#ffeeb2')

