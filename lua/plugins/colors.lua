return {
-- {
-- "neanias/everforest-nvim",
--   version = false,
--   lazy = false,
--   priority = 1000, -- make sure to load this before all the other start plugins
--   -- Optional; default configuration will be used if setup isn't called.
--   config = function()
--     require("everforest").setup({
-- 		background = "hard",
--       -- Your config here
--     })
-- 	vim.cmd("colorscheme everforest")
--   end,
-- },
--     {
--     "nvim-lualine/lualine.nvim",
--         dependencies = {
--           "nvim-tree/nvim-web-devicons", -- imports icon dependency
--         },
--         opts = {
--           theme = "everforest",
--       }
--   },
-- {
--   'olivercederborg/poimandres.nvim',
--   lazy = false,
--   priority = 1000,
--   config = function()
--     require('poimandres').setup {
--       -- leave this setup function empty for default config
--       -- or refer to the configuration section
--       -- for configuration options
--     }
--   end,
--
--   -- optionally set the colorscheme within lazy config
--   init = function()
--     vim.cmd("colorscheme poimandres")
--   end
-- },
--     {
--     "nvim-lualine/lualine.nvim",
--         dependencies = {
--           "nvim-tree/nvim-web-devicons", -- imports icon dependency
--         },
--         opts = {
--           theme = "poimandres",
--       }
--   },
{
  'ribru17/bamboo.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('bamboo').setup {
      -- optional configuration here
    }
    require('bamboo').load()
  end,
},
    {
    "nvim-lualine/lualine.nvim",
        dependencies = {
          "nvim-tree/nvim-web-devicons", -- imports icon dependency
        },
        opts = {
          theme = "bamboo",
      }
  },
}
