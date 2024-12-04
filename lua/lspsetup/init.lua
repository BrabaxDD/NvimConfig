require("lspconfig").html.setup({})
require("lspconfig").bashls.setup({})
require("lspconfig").pylsp.setup({})
require("lspconfig").efm.setup {               
    on_attach = on_attach,    
    flags = {                                                                                                                                                                                 
      debounce_text_changes = 150,
    },
    init_options = {documentFormatting = true},
    filetypes = {"python"},
    settings = {
        rootMarkers = {".git/"},
        languages = {
            python = {
                {formatCommand = "black --quiet -", formatStdin = true}
            }
        }
    }
}

