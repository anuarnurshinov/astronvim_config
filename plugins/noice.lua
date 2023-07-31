local opts = {
  messages = {
    enabled = true,
  },
  notify = {
    enabled = true,
    view = "notify",
  },
  lsp = {
    hover = {
      enabled = false,
    },
    signature = {
      enabled = false,
      auto_open = {
        enabled = false,
      },
    },
    -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true,
    },
    progress = {
      enabled = false,
    },
    -- defaults for hover and signature help
  },
  presets = {
    command_palette = true, -- position the cmdline and popupmenu together
    long_message_to_split = true, -- long messages will be sent to a split
    inc_rename = false, -- enables an input dialog for inc-rename.nvim
    lsp_doc_border = false, -- add a border to hover docs and signature help
  },
  routes = {
    {
      filter = {
        event = "msg_show",
        kind = "",
        find = "записано",
      },
      opts = { skip = true },
    },
  },
}

return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = opts,
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
}
