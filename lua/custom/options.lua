vim.o.ignorecase = false
vim.o.number = false
vim.o.mouse = ''

vim.o.scrolloff = 5 -- default 0, kickstart set 10

vim.o.hlsearch = true

vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.showtabline = 2

-- ファイルタイプが "make" のときに noexpandtab を設定
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'make',
  callback = function() vim.opt_local.expandtab = false end,
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'rust',
  callback = function() vim.opt.formatoptions:remove { 'r', 'o' } end,
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = '*',
  callback = function() vim.opt_local.formatoptions:remove { 'r', 'o' } end,
})

vim.keymap.set('i', '<C-f>', '<Esc>A')
vim.keymap.set('n', '<leader>ff', function() require('telescope.builtin').find_files() end, { silent = true })

-- ビジュアルモードで選択した範囲を tmux に送る
vim.keymap.set('v', '<leader>y', [[:w !tmux load-buffer -<CR>]], { silent = true })

vim.g.snacks_animate = false

vim.opt.diffopt:append 'algorithm:patience'
vim.opt.diffopt:append 'indent-heuristic'
