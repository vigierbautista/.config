function ColorMyPencils(color)
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)

  -- vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
  -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})

  -- Changed background color of selection since it got messed up and I can't see shit.
  vim.api.nvim_set_hl(0, "Visual", { bg = "#2e3c64" })
end

return {
    {
      "folke/tokyonight.nvim",
      lazy = false,
      priority = 1000,
      opts = {
        style = "storm",
        transparent = true,
        terminal_colors = true,
        styles = {
            comments = {italic = false},
            keywords = {italic = false},
            sidebars = "dark",
            floats = "dark",
        }
      },
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require('rose-pine').setup({
                disable_background = true
            })
            ColorMyPencils()
        end,
    } 
}
