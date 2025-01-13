---@type LazySpec
return {
  {
    "mgierada/lazydocker.nvim",
    lazy = true,
    dependencies = {
      "akinsho/toggleterm.nvim",
      {
        "AstroNvim/astrocore",
        opts = function(_, opts)
          local maps = opts.mappings

          -- like <Leader>gg for Lazygit, we'll user <Leader>dd for LazyDocker
          maps.n["<Leader>dd"] = {
            function() require("lazydocker").open() end,
            desc = "Toggle LazyDocker",
          }
        end,
      },
    },
  },
}
