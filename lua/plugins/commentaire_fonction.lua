-- normalement devrait afficher les commentaires mis au debut de la fonction quand je survole la fonction
return {
  "JoosepAlviste/nvim-ts-context-commentstring",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  config = function()
    require("nvim-treesitter.configs").setup({
      context_commentstring = {
        enable = true,
        enable_autocmd = true,  -- Désactive l'autocmd, si tu veux le contrôler manuellement
      },
    })
  end,
}
