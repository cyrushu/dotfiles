return {
  {'nvim-telescope/telescope.nvim',lazy=true, tag = '0.1.5', dependencies = {"nvim-lua/plenary.nvim"} },
  {"nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate", 
  lazy=false,
  event =  "VeryLazy" ,
  init = function(plugin)
    -- PERF: add nvim-treesitter queries to the rtp and it's custom query predicates early
    -- This is needed because a bunch of plugins no longer `require("nvim-treesitter")`, which
    -- no longer trigger the **nvim-treeitter** module to be loaded in time.
    -- Luckily, the only thins that those plugins need are the custom queries, which we make available
    -- during startup.
    require("lazy.core.loader").add_to_rtp(plugin)
    require("nvim-treesitter.query_predicates")
  end,
},}
