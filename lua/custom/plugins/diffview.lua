return {
  {
    'sindrets/diffview.nvim',
    config = function()
      require('diffview').setup {}
      vim.keymap.set('n', '<leader>gd', '<cmd>DiffviewOpen<CR>', { desc = '[G]it [D]iff view' })
      vim.keymap.set('n', '<leader>gD', '<cmd>DiffviewClose<CR>', { desc = '[G]it Diff view [C]lose' })
    end,
  },
}
