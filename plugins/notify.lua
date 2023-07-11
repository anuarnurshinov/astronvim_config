return {
  "rcarriga/nvim-notify",
  config = function()
    require("notify").setup {
      render = "minimal",
      stages = "slide",
      max_width = 30,
      top_down = false,
    }
  end,
}
