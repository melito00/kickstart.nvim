return {
  {
    'vim-skk/skkeleton',
    lazy = false,
    dependencies = { 'vim-denops/denops.vim' },
    cond = vim.fn.has 'unix' == 1,
    init = function()
      vim.keymap.set('c', '<C-j>', '<Plug>(skkeleton-enable)')
      vim.keymap.set('i', '<C-j>', '<Plug>(skkeleton-enable)')

      -- 辞書を探す
      local dictionaries = {}
      table.insert(dictionaries, vim.env.HOME .. '/.skkdic/SKK-JISYO-UTF8.L')

      vim.api.nvim_create_autocmd('User', {
        pattern = 'skkeleton-initialize-pre',
        callback = function()
          vim.fn['skkeleton#config'] {
            eggLikeNewline = true,
            registerConvertResult = true,
            globalDictionaries = dictionaries,
            skkServerResEnc = 'utf-8',
            skkServerReqEnc = 'utf-8',
          }
        end,
      })
    end,
  },
  {
    'delphinus/skkeleton_indicator.nvim',
    lazy = false,
    dependencies = { 'vim-skk/skkeleton' },
    cond = vim.fn.has 'unix' == 1,
    config = true,
  },
}
