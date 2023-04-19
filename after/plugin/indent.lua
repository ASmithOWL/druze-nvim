vim.opt.listchars:append "eol:↴"
vim.opt.termguicolors = true 
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#3B429F gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#38405F gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#827191 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#ADAABF gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#A4B0F5 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#CFBCDF gui=nocombine]]

require("indent_blankline").setup {
    show_end_of_line = true,
    space_har_blankline = " ",
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
        "IndentBlanklineIndent5",
        "IndentBlanklineIndent6",
    }
}
