-- theme utilisé 
return {
  "lunarvim/darkplus.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    -- chargement du thème
    vim.cmd([[colorscheme darkplus]])
  end,
}

