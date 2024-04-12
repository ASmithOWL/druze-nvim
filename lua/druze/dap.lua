local dap = require('dap')

function _G.print_dap_config()
  local dap = require('dap')
  print(vim.inspect(dap.config))
end

function _G.print_dap_adapters()
  local dap = require('dap')
  print(vim.inspect(dap.adapters))
end

function _G.print_dap_configurations()
  local dap = require('dap')
  print(vim.inspect(dap.configurations))
end

dap.adapters.lldb = {
  type = 'executable',
  command = '/home/ans/projects/lldb/lldb-11.0.0.src/tools/lldb-vscode', -- Make sure this is the correct path to your lldb-vscode binary
  name = 'lldb'
}

dap.configurations.rust = {
  {
    name = 'Launch',
    type = 'lldb',
    request = 'launch',
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/target/debug/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
    sourceLanguages = {'rust'},
  },
  {
    name = 'Launch Test',
    type = 'lldb',
    request = 'launch',
    program = function()
      return vim.fn.input('Path to test executable: ', vim.fn.getcwd() .. '/target/debug/', 'file')
    end,
    args = function()
      local test_name = vim.fn.input('Test name: ')
      return {'--test', test_name}
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
    sourceLanguages = {'rust'},
  },
}

vim.api.nvim_set_keymap('n', '<leader>dt', "<Cmd>lua require('dap').start({ type = 'rust', name = 'Launch Test' })<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>dc', '<Cmd>lua require("dap").continue()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>ds', '<Cmd>lua require("dap").step_over()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>di', '<Cmd>lua require("dap").step_into()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>do', '<Cmd>lua require("dap").step_out()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>db', '<Cmd>lua require("dap").toggle_breakpoint()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>dB', '<Cmd>lua require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>dr', '<Cmd>lua require("dap").repl.toggle()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>dl', '<Cmd>lua require("dap").run_last()<CR>', {noremap = true})

