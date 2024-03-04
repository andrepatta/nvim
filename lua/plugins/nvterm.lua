return {
  "NvChad/nvterm",
  config = function()
    require("nvterm").setup({
      terminals = {
        shell = vim.o.shell,
        list = {},
        type_opts = {
          float = {
            relative = "editor",
            row = 0.10,
            col = 0.10,
            width = 0.8,
            height = 0.8,
            border = "single",
          },
          horizontal = { location = "rightbelow", split_ratio = 0.3 },
          vertical = { location = "rightbelow", split_ratio = 0.5 },
        },
      },
      behavior = {
        autoclose_on_quit = {
          enabled = false,
          confirm = true,
        },
        close_on_exit = true,
        auto_insert = true,
      },
    })
  end,
  keys = {
    ["[C-\\]"] = function()
      require("nvterm.terminal").toggle("float")
    end,
  },
}