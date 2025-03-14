return {
  {
    "zk-org/zk-nvim",
    -- cmd = {
    --   "ZkNew",
    --   "ZkNotes",
    --   "ZkInsertLink",
    --   "ZkNewFromTitleSelection",
    --   "ZkNewFromContentSelection",
    -- },
    keys = {
      { "<leader>zn", "<Cmd>ZkNew { title = vim.fn.input('Title: ') }<CR>", desc = "New zk note" },
      { "<leader>zo", "<Cmd>ZkNotes { sort = { 'modified' } }<CR>", desc = "Open zk notes" },
      {
        "<leader>zf",
        "<Cmd>ZkNotes { sort = { 'modified' }, match = { vim.fn.input('Search: ') } }<CR>",
        desc = "Search zk notes",
      },
    },
    opts = {
      picker = "snacks_picker",

      lsp = {
        config = {
          cmd = { "zk", "lsp" },
          name = "zk",
        },
        auto_attach = {
          enabled = true,
          filetypes = { "markdown" },
        },
      },
    },
    config = function(_, opts)
      require("zk").setup(opts)
    end,
  },
}
