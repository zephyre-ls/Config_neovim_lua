return {
    "Eandrju/cellular-automaton.nvim",
    config = function()
        local config = {
            fps = 50,          -- Définition du nombre de frames par seconde pour l'animation
            name = 'slide',    -- Nom de l'animation
        }

        -- Fonction d'initialisation (facultative, ici commentée car non utilisée)
    
        --    -- Code d'initialisation de la grille si nécessaire
        -- end

        -- Fonction de mise à jour pour l'animation
        config.update = function (grid)
            for i = 1, #grid do
                local prev = grid[i][#(grid[i])]
                for j = 1, #(grid[i]) do
                    grid[i][j], prev = prev, grid[i][j]  -- Le code de l'animation, échange des éléments de la grille
                end
            end
            return true  -- Retourne true pour continuer l'animation
        end

        -- Enregistrer l'animation avec le plugin
        require("cellular-automaton").register_animation(config)
    end,
}


