-- Meilleur affichage des blocs de code, l'indentation est plus visible
return {
    "asters1/hlchunk.nvim",
    config = function()
        require("hlchunk").setup({
            chunk = { --chunk = bloc de code
				        chars = {
    								horizontal_line = "─",
        						vertical_line = "│",
       							left_top = "┌",
        						left_bottom = "└",
        						right_arrow = "─",
   							 },
  						  style = "#00ffff",  --couleur bordures des blocs
                enable = true,
                use_treesitter = true,
                style = "#FFA500", -- Couleur des lignes de chunk
            },
            indent = {
                enable = true,
                style = "#77DD77", -- Couleur des lignes d'indentation
            },
            line_num = {
                enable = true, -- Affichage n° lignes
            },
            blank = {
                enable = false, -- Désactive le surlignage des espaces blancs
            },
        })
    end,
}

