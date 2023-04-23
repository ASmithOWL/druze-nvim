local palette = require('colors.futuristic')
-- Define syntax groups
local syntax = {
  Comment = { fg = '#b7c1de', style = 'italic' },
  Constant = { fg = '#ff00a0' },
  String = { fg = '#65dc98' },
  Character = { fg = '#c4ffff' },
  Number = { fg = '#c4ffff' },
  Boolean = { fg = '#c4ffff' },
  Float = { fg = '#c4ffff' },
  Identifier = { fg = '#ffeeb2' },
  Function = { fg = '#cbb2fe' },
  Statement = { fg = '#fe00fe' },
  Conditional = { fg = '#00b3fe' },
  Repeat = { fg = '#ff00a0' },
  Label = { fg = '#7a04eb' },
  Keyword = { fg = '#fe75fe' },
  Exception = { fg = '#ff6e27' },
  Operator = { fg = '#73fffe' },
  PreProc = { fg = '#ff6e27' },
  Include = { fg = '#73fffe' },
  Define = { fg = '#7700a6' },
  Macro = { fg = '#ff6e27' },
  PreCondit = { fg = '#73fffe' },
  Type = { fg = '#b97bff' },
  StorageClass = { fg = '#b97bff' },
  Structure = { fg = '#b97bff' },
  Typedef = { fg = '#b97bff' },
  Special = { fg = '#73fffe' },
  SpecialChar = { fg = '#73fffe' },
  Tag = { fg = '#73fffe' },
  Delimiter = { fg = '#73fffe' },
  SpecialComment = { fg = '#ffccdc', style = 'italic' },
  Underlined = { fg = '#ff6e27', style = 'underline' },
  NonText = { bg = '#22192c' },
  Ignore = { fg = '#120458' }
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
vim.cmd('highlight CursorLineNr guifg=#ff00a0 guibg=#22192c')
