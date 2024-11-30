return {
    "asters1/hlchunk.nvim",
    config = function()
        require("hlchunk").setup({
            -- Voici une configuration de base ; modifie selon tes besoins
            chunk = {
				        chars = {
    								horizontal_line = "─",
        						vertical_line = "│",
       							left_top = "┌",
        						left_bottom = "└",
        						right_arrow = "─",
   							 },
  						  style = "#00ffff",
                enable = true,
                use_treesitter = true,
                style = "#FFA500", -- Couleur des lignes de chunk
            },
            indent = {
                enable = true,
                style = "#77DD77", -- Couleur des lignes d'indentation
            },
            line_num = {
                enable = true, -- Désactive l'aperçu des numéros de ligne
            },
            blank = {
                enable = false, -- Désactive le surlignage des espaces blancs
            },
        })
    end,
}

