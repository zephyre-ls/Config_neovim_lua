-- Plugin de synthaxe, ameliore color syntatique.
return {
  "nvim-treesitter/nvim-treesitter",  
  build = ":TSUpdate",  -- qd plugin installé, la commande ":TSUpdate" est exe pour s'assurer que les parsers sont à jour
  config = function()
    local treesitter = require("nvim-treesitter.configs") 

    -- configuration de treesitter
    treesitter.setup({ 
      -- activation de la coloration syntaxique
      highlight = {  
        enable = true, 
      },

      -- activation de l'indentation améliorée
      indent = { 
        enable = true, 
      },

      -- langages installés et configurés
      ensure_installed = {  -- listes des langages installés automatiquement
        "bash",
        "c",
        "lua",
        "vim",  -- (configurations et scripts Vim)
      },
-- Ctrl + Espace = selection du bloc, refaire ctrl + espace selectionne un autre bloc
      incremental_selection = {  --sélectionner progressivement des blocs de code
        enable = true,
        keymaps = {  -- config des raccourcis clavier
          init_selection = "<C-space>", 
          node_incremental = "<C-space>", 
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end, 
}

