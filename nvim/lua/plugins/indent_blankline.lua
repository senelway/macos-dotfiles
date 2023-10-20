return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  event = 'InsertEnter',
  config = function()
    require("ibl").setup {
      indent = { char = "▏" },
    }
  end
}
