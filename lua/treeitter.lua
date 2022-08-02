-- treesitter
----------------------------------------------------
require('nvim-treesitter.configs').setup {
	-- :TSInstallInfo 命令查看支持的语言
	-- 安装 language parser
	-- 语言列表
	ensure_installed = {"html", "css", "vim", "lua", "javascript", "typescript", "tsx", "c", "java", "sql", "cpp", "json5", "markdown"},
	-- 启用高亮
	highlight = {
		-- 启用高亮
		enable = true,
	},
  indent = {
    enable = true
  }
}

