require("config.keymaps")
require("setup.bootstraplazy")
require("lazy").setup(require("pluginloader"))
--require("plugins.whichkey.setup")
require("mason").setup()
require("mason-lspconfig").setup()
require("config.settings")
require("config.lsp")
require("plugins.cmp.config")
require("plugins.lspconfig.config")
require("plugins.bufferline.config")
require("lspsetup")
require('nvim-treesitter.configs').setup {
  ensure_installed = {"python", "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
  sync_install = false,
  auto_install = true,
  ignore_install = {},
  highlight = {
    enable = true,
    disable = {},
    additional_vim_regex_highlighting = false,
  },
}
