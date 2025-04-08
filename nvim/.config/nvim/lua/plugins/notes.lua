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
  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.icons" },
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {
      render_modes = true,
      code = {
        sign = false,
        width = "block",
        right_pad = 1,
      },
      heading = {
        sign = false,
        icons = {},
      },
      checkbox = {
        enabled = false,
      },
      link = {
        email = " ",
        wiki = { icon = "󰸖 ", highlight = "RenderMarkdownWikiLink" },
      },
    },
  },
}
