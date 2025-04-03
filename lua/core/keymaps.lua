-- Touche leader = touche qui sert de préfixe pour créer mes raccourcis clavier.
-- Par défaut (\);
-- Touche choisi = espace;
vim.g.mapleader = " "

-- Raccourci pour la fonction set (pour simplifier l'écriture des raccourci clavier)
local keymap = vim.keymap.set

-- on utilise ;; pour sortir du monde insertion / ou ECHAP
keymap("i", ";;", "<ESC>", { desc = "Sortir du mode insertion avec ;;" })

-- on efface le surlignage de la recherche
-- en mode normal;
-- espace + n + h = désactive surlignage des recherches
keymap("n", "<leader>nh", ":nohl<CR>", { desc = "Effacer le surlignage de la recherche" })

-- en mode visuel v;
-- selection du texte avec v;
-- maj + I = monte la selection d'une ligne
-- maj + K = descend la selection d'une ligne
keymap("v", "<S-i>", ":m .-2<CR>==", { desc = "Déplace le texte sélectionné vers le haut en mode visuel" })
-- K déplace le texte sélectionné vers le bas en mode visuel (activé avec v)
keymap("v", "<S-k>", ":m .+1<CR>==", { desc = "Déplace le texte sélectionné vers le bas en mode visuel" })

-- en mode visuel ligne V (x);
-- maj + I = monte;
-- maj + K = descend;
keymap("x", "<S-i>", ":move '<-2<CR>gv-gv", { desc = "Déplace le texte sélectionné vers le haut en mode visuel bloc" })
keymap("x", "<S-k>", ":move '>+1<CR>gv-gv", { desc = "Déplace le texte sélectionné vers le bas en mode visuel bloc" })

-- Deplacement rapide entre les fenêtres lorsqu'on passe par : :split/:vsplit;
-- mode = n 
-- ctrl + H gauche;
-- ctrl + J bas;
-- ctrl + K haut;
-- ctrl + L droite;
keymap("n", "<C-h>", "<C-w>h", { desc = "Déplace le curseur dans la fenêtre de gauche" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Déplace le curseur dans la fenêtre du bas" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Déplace le curseur dans la fenêtre du haut" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Déplace le curseur dans la fenêtre droite" })

-- mode : n
-- ouverture de plusieurs fichier :e fichier.c
-- maj + L = buff suivant;
-- maj + H = buff precedent;
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
