-- Explorateur de fichier " espace + E" pour y accéder;
return {
  "nvim-tree/nvim-tree.lua",
	version = "*", --sert a utiliser la derniere version disponible 
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",  -- Pour ajouter des icônes aux fichiers dans l'explorateur
  },
  config = function()
    require("nvim-tree").setup({
      auto_reload_on_write = true,   -- Recharge l'explorateur lorsqu'un fichier est modifié
      disable_netrw = true,          -- Désactive netrw, l'explorateur par défaut de Vim
      hijack_netrw = true,           -- Permet à NvimTree de prendre le contrôle de netrw
      update_focused_file = {
        enable = true,               -- Mets à jour le fichier focalisé dans l'explorateur
        update_cwd = true,           -- Met à jour le répertoire de travail en fonction du fichier focalisé
      },
      view = {
        width = 30,                  -- Largeur de l'explorateur
        side = "left",               -- Position de l'explorateur à gauche
      },
    })
    vim.keymap.set(
      "n",
      "<leader>e",
      "<cmd>NvimTreeFindFileToggle<CR>",
      { desc = "Ouverture/fermeture de l'explorateur de fichiers" }
    )
  end,
}


