return {
  "numToStr/Comment.nvim",
  config = function()
    require('Comment').setup {
      pre_hook = function(ctx)
        local U = require('Comment.utils')
        local location = nil
        if ctx.ctype == U.ctype.block then
          location = require('ts_context_commentstring.internal').calculate_commentstring({
            key = '__multiline',
          })
        else
          location = require('ts_context_commentstring.internal').calculate_commentstring({
            key = '__default',
          })
        end
        return location
      end,
    }
  end,
}

