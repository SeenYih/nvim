--blank line
----------------------------------------------------
vim.cmd [[highlight IndentBlanklineIndent1 guifg= #0d0d0d gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg= #bc4545 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg= #ded651 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg= #4f49c9 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg= #3db640 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg= #ca8141 gui=nocombine]]

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
