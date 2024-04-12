require("druze")
vim.cmd('command! DapPrintConfig lua print_dap_config()')
vim.cmd('command! DapPrintAdapters lua print_dap_adapters()')
vim.cmd('command! DapPrintConfigurations lua print_dap_configurations()')
