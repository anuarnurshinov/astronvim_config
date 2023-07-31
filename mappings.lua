-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bt"] = { name = "Tabs" },
    ["<leader>btn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>btN"] = { "<cmd>tabNext<cr>", desc = "Next tab" },
    ["<leader>btc"] = { "<cmd>tabclose<cr>", desc = "Close tab" },
    ["<leader>lc"] = { "<cmd>CompilerOpen<cr>", desc = "Code Runner Compiler" },

    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<leader>dj"] = {
      function()
        vim.cmd(
          "term "
            .. "mvn spring-boot:run "
            .. '-Dspring-boot.run.jvmArguments="-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=y,address=5005" '
        )
      end,
      desc = "Java debug server",
    },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  i = {
    ["<C-a>"] = { "<C-o>A", desc = "Обойти скобки" },
  },
}
