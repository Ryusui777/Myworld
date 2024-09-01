require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = {"rust_analyzer", "pylyzer", "jdtls","clangd"},
}
local on_attach = function()
    vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition,{})
    vim.keymap.set('n', 'K', vim.lsp.buf.hover,{})
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action,{})
end
require('lspconfig').clangd.setup{}
require('lspconfig').jdtls.setup{}
require('lspconfig').pylyzer.setup{}
require('lspconfig').rust_analyzer.setup{}
on_attach()
