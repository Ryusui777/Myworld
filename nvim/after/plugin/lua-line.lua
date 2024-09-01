
local custom_gruvbox = require'lualine.themes.gruvbox'

-- Change the background of lualine_c section for normal mode

custom_gruvbox.normal.a.bg = '#D5A068'
custom_gruvbox.normal.b.bg = '#346995'
custom_gruvbox.normal.c.bg = '#00FFFFFF'


custom_gruvbox.insert.a.bg = '#D38B91'
custom_gruvbox.insert.b.bg = '#346995'
custom_gruvbox.insert.c.bg = '#00FFFFFF'
custom_gruvbox.insert.c.fg = '#E6E2DB'

custom_gruvbox.command.a.bg = '#BE3019'
custom_gruvbox.command.c.fg = '#E6E2DB'
custom_gruvbox.command.b.bg = '#346995'
custom_gruvbox.command.c.bg = '#00FFFFFF'
custom_gruvbox.command.a.fg = '#E6E2DB'

custom_gruvbox.visual.a.bg = '#E6E2DB'
custom_gruvbox.visual.b.bg = '#346995'
custom_gruvbox.visual.c.bg = '#00FFFFFF'
custom_gruvbox.visual.c.fg = '#E6E2DB'

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = custom_gruvbox,
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'filetype'},
    lualine_y = {'progress'},
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
