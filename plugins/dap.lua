return {
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = {
      handlers = {
        python = function(source_name)
          local dap = require "dap"
          dap.adapters.python = {
            type = "executable",
            command = "/usr/bin/python3",
            args = {
              "-m",
              "debugpy.adapter",
            },
          }
          dap.configurations.python = {
            {
              type = "python",
              request = "launch",
              name = "Launch file",
              program = "${file}", -- This configuration will launch the current file if used.
            },
          }
        end,
        javadbg = function(source_name)
          local dap = require "dap"
          dap.configurations.java = {
            {
              type = "java",
              request = "attach",
              name = "Attach to the process",
              hostName = "localhost",
              port = "5005", -- This configuration will launch the current file if used.
            },
          }
        end,
      },
    },
  },
}
