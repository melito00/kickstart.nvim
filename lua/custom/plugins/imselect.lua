-- for Arm64 Mac :: curl -Ls -o $HOME/bin/im-select https://raw.githubusercontent.com/daipeihust/im-select/master/macOS/out/apple/im-select
-- for Intel Mac :: curl -Ls -o $HOME/bin/im-select https://raw.githubusercontent.com/daipeihust/im-select/master/macOS/out/intel/im-select

return {
  {
    'keaising/im-select.nvim',
    cond = vim.fn.has 'mac' == 1,
    config = function()
      require('im_select').setup {
        default_im_select = 'com.google.inputmethod.Japanese.Roman',
      }
    end,
  },
}
