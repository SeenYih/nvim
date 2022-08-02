--使用行号
vim.opt.number = true
--相对行号
vim.opt.relativenumber = true

--高亮所在行
vim.opt.cursorline = true

--使用鼠标
vim.opt.mouse = 'a'

--字符
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
vim.opt.termencoding = 'utf-8'

--折叠
vim.opt.fdm = "indent"
--默认不折叠
vim.opt.foldlevelstart= 99

--不显示模式
vim.opt.showmode = false

--超出窗口不换行
vim.opt.wrap = false

--颜色高亮
vim.opt.termguicolors = true

--tab
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
--继承前一行的缩进方式
vim.opt.autoindent = true

--Tab 转为多少个空格
--vim.opt.softtabstop=2

--移动时光标下上方保留15行
vim.o.scrolloff = 15
--水平
vim.o.sidescrolloff=15

--搜索大小写不敏感，除非包含大写
vim.opt.ignorecase = true
vim.opt.smartcase = true

--当文件被外部程序修改时，自动加载
vim.opt.autoread = true

--禁止创建备份文件
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false

--命令模式下tab补全
vim.opt.wildmenu = true

--显示标签
vim.opt.showtabline = 2

--记录历史操作次数
vim.opt.history = 100
vim.opt.undofile = true
--开启文件类型检查
vim.cmd([[filetype plugin indent on]])
