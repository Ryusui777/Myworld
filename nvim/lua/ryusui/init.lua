require('ryusui.remap')
require('ryusui.packer')
require('ryusui.set')
vim.cmd([[autocmd BufWritePost init.lua source ryusui.packes.lua | PackerSync]])

