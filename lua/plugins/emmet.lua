-- Emmet: abreviaturas que se expanden en estructuras completas.
-- Ejemplos:  !  ->  plantilla HTML5     ul>li*3  ->  lista con 3 elementos
--            div.card>h2+p  ->  div con clase, título y párrafo
-- Aparecen en el menú de autocompletado; se aceptan con Enter.
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        emmet_language_server = {
          filetypes = {
            "html",
            "css",
            "scss",
            "sass",
            "less",
            "javascriptreact",
            "typescriptreact",
            "vue",
            "svelte",
            "astro",
          },
          -- En JSX/TSX genera className en vez de class automáticamente
          init_options = { showSuggestionsAsSnippets = true },
        },
      },
    },
  },
}
