return {
  'nvzone/showkeys',
  dependencies = { 'folke/snacks.nvim' },
  opts = {
    timeout = 3,
    maxkeys = 5,
    position = 'top-center',
  },
  init = function()
    local showkeys = require 'showkeys'
    Snacks.toggle({
      name = 'Showkeys',
      get = function()
        return require('showkeys.state').visible
      end,
      set = function()
        showkeys.toggle()
      end,
    }):map '<leader>uk'
  end,
}
