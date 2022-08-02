--blank line
----------------------------------------------------
vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]

--不可见字符显示
vim.opt.list = true
--vim.opt.listchars:append("space:+")
vim.opt.listchars:append("trail:+")
--vim.opt.listchars:append("tab:··")
--vim.opt.listchars:append("eol:↴")
--tab键替换位空格
vim.opt.expandtab = true

require("indent_blankline").setup {
  space_char_blankline = " ",
  char_highlight_list = {
		"IndentBlanklineIndent1",
		"IndentBlanklineIndent2",
		"IndentBlanklineIndent3",
		"IndentBlanklineIndent4",
		"IndentBlanklineIndent5",
		"IndentBlanklineIndent6",
  },
  -- 突出显示上下文
  space_char_blankline = " ",
  show_current_context = true,
  show_current_context_start = true,
  -- 显示头部回车 箭头
  show_end_of_line = true,
}

