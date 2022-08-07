--status line
----------------------------------------------------
require('lualine').setup {
  options = {
    --启用图标
    icons_enabled = true,
    theme = 'auto',
    --分隔符
    component_separators = { left = '>', right = '<'},
    section_separators = { left = ' +(◐‿◑)', right = '(-.-)+ '},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    -- vim mode
    lualine_a = {'mode'},
    --lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    -- fileformat == 系统文件格式
    lualine_x = {'encoding', 'fileformat', 'filetype','filesize'},
    -- 文件进度
    lualine_y = {'progress'},
    -- 文件中的行中位置：列格式
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
