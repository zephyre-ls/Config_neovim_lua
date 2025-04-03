-- Personnalise la statusline(barre d'état en bas) et la winbar(bare des fenêtres)
return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status") -- affiche le nombre de mise à jour plugins lazy dans la barre

    -- configuration de lualine
    lualine.setup({
      options = {
        icons_enabled = true, --affichage icone
        theme = "auto",
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
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
        },
      },
      sections = {
        lualine_a = { "mode" }, --affichage du mode
        lualine_b = { "branch", "diff", "diagnostics" }, --branche git
        lualine_c = { { "filename", path = 1 } }, --nom du fichier + chemin relatif
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = "#ff9e64" },
          },
          --{ "encoding" }, --encodage du fichier, osf pour l'instant
          --{ "fileformat" }, -- format du fichier, osf pour l'instant
          { "filetype" }, --type de fichier 
        },
        lualine_y = { "progress" }, --progressions du curseur dans le fichier (en%);
        lualine_z = { "location" }, --position actuelle dans le fichier (ligne et colonne)
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      winbar = {},
      inactive_winbar = {},
      extensions = {},
    })
  end,
}

