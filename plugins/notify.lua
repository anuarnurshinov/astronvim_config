return {
  "rcarriga/nvim-notify",
  config = function()
    require("notify").setup {
      render = "minimal",
      stages = "slide",
      max_width = 60,
      top_down = false,
      max_height = 10,
    }
  end,
}
