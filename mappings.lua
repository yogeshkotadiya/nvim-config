local move_line_opts = { noremap = true, silent = true }

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
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
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
    -- Moveline
    ["<C-S-Up>"] = { "<cmd>MoveLine(-1)<cr>", desc = "Move line up" },
    ["<C-S-Down>"] = { "<cmd>MoveLine(1)<cr>", desc = "Move line down" },
    ["<C-S-Left>"] = { "<cmd>MoveHChar(1)<cr>", desc = "Move line left" },
    ["<C-S-Right>"] = { "<cmd>MoveHChar(-1)<cr>", desc = "Move line right" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = {
    -- Moveline
    ["<C-S-Up>"] = { "<cmd>MoveLine(-1)<cr>", desc = "Move line up" },
    ["<C-S-Down>"] = { "<cmd>MoveLine(1)<cr>", desc = "Move line down" },
    ["<C-S-Left>"] = { "<cmd>MoveHChar(1)<cr>", desc = "Move line left" },
    ["<C-S-Right>"] = { "<cmd>MoveHChar(-1)<cr>", desc = "Move line right" },
  },
  i = {
    -- Moveline
    ["<C-S-Up>"] = { "<cmd>MoveLine(-1)<cr>", desc = "Move line up" },
    ["<C-S-Down>"] = { "<cmd>MoveLine(1)<cr>", desc = "Move line down" },
    ["<C-S-Left>"] = { "<cmd>MoveHChar(1)<cr>", desc = "Move line left" },
    ["<C-S-Right>"] = { "<cmd>MoveHChar(-1)<cr>", desc = "Move line right" },
  },
}
