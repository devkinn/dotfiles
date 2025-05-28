return {
  {
    "zk-org/zk-nvim",

    -- lazy-load on Markdown files
    ft = { "markdown" },

    config = function()
      require("zk").setup({
        picker = "snacks_picker",
        -- configure LSP
        lsp = {
          config = {
            name = "zk",
            cmd = { "zk", "lsp" },
            filetypes = { "markdown" },
          },
          -- automatically attach to markdown buffers in your notebook
          auto_attach = { enabled = true },
        },
      })

      -- define keymaps
      local opts = { noremap = true, silent = true }

      -- create a new note (prompts for title)
      vim.keymap.set(
        "n",
        "<leader>zn",
        "<Cmd>ZkNew { title = vim.fn.input('Title: ') }<CR>",
        vim.tbl_extend("force", opts, { desc = "ZK: New note" })
      )

      -- list all notes, sorted by modified time
      vim.keymap.set(
        "n",
        "<leader>zf",
        "<Cmd>ZkNotes { sort = { 'modified' } }<CR>",
        vim.tbl_extend("force", opts, { desc = "ZK: Find notes" })
      )

      -- show backlinks of current note
      vim.keymap.set(
        "n",
        "<leader>zb",
        "<Cmd>ZkBacklinks<CR>",
        vim.tbl_extend("force", opts, { desc = "ZK: Backlinks" })
      )

      -- insert a link at cursor
      vim.keymap.set(
        "n",
        "<leader>zi",
        "<Cmd>ZkInsertLink<CR>",
        vim.tbl_extend("force", opts, { desc = "ZK: Insert link" })
      )

      -- open notes associated with the selected tags
      vim.keymap.set("n", "<leader>zt", "<Cmd>ZkTags<CR>", vim.tbl_extend("force", opts, { desc = "ZK: View tags" }))
    end,
  },

  {
    -- copied from lang.markdown LazyVim extra package
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {
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
    },
    ft = { "markdown", "norg", "rmd", "org", "codecompanion" },
    config = function(_, opts)
      require("render-markdown").setup(opts)
      Snacks.toggle({
        name = "Render Markdown",
        get = function()
          return require("render-markdown.state").enabled
        end,
        set = function(enabled)
          local m = require("render-markdown")
          if enabled then
            m.enable()
          else
            m.disable()
          end
        end,
      }):map("<leader>um")
    end,
  },

  {
    -- markdown preview in browser
    "iamcco/markdown-preview.nvim",
  },
}
