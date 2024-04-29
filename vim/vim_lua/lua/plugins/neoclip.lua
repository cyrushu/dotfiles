return { "AckslD/nvim-neoclip.lua",
  dependencies = {{'kkharji/sqlite.lua', module = 'sqlite'}, },
  config = function()
    require("telescope").setup()
    require('neoclip').setup({
      continuous_sync = true,
      default_register = "+",
      enable_persistent_history = true,
     })
  end,
}
