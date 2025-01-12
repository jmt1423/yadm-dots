-- return {
--   {
--     "sainnhe/sonokai",
--     priority = 1000,
--     config = function()
--       vim.g.sonokai_transparent_background = "1"
--       vim.g.sonokai_enable_italic = "1"
--       vim.g.sonokai_style = "andromeda"
--       vim.cmd.colorscheme("sonokai")
--     end,
--   },
-- }
return {
  {
    "EdenEast/nightfox.nvim",
    priority = 1000,
    style = "carbonfox",
    config = function()
      require("nightfox").setup({
        options = {
          transparent = true, -- Enable/disable transparency
          styles = {
            comments = "italic",
            functions = "bold",
          },
        },
      })
    end,
  },
}
-- return {
--   { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
-- }
-- return {
--   {
--     "navarasu/onedark.nvim",
--     style = "darker",
--   },
-- }

-- return {
--   {
--     "rebelot/kanagawa.nvim",
--     theme = "dragon",
--   },
-- }
