-- terminalから抜ける設定
vim.keymap.set('t', '<ESC>', '<C-\\><C-n>', { silent = true })

-- window間の移動設定
vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true })
-- 検索結果のハイライトを解除する
vim.keymap.set('n', '<Esc><Esc>', ':nohlsearch<CR>', { silent = true })

-- telescope 追加
vim.keymap.set('n', '<leader>sb', require('telescope.builtin').buffers, { desc = '[S]earch [B]uffer' })

-- swap関連ファイルは作成しない
vim.o.swapfile = false
vim.o.writebackup = false
vim.o.backup = false

-- 日本語の表示補正(itermでは、不要そう、必要な場合、有効にする)
-- vim.o.ambiwidth = 'double'

_G.my_tabline = function()
  local s = ''
  for i = 1, vim.fn.tabpagenr('$'), 1 do
    s = s .. '%' .. i .. 'T'
    s = s .. i .. ':'
    s = s .. (i == vim.fn.tabpagenr() and '%#TabLineSel#' or '%#TabLine#')
    local bufnr = vim.fn.tabpagebuflist(i)[1]
    local file = vim.fn.bufname(bufnr)
    s = s .. ' ' .. vim.fn.fnamemodify(file, ':t') .. ' '
  end
  s = s .. '%T%#TabLineFill#'
  return s
end

-- Set tabline and showtabline options
vim.o.tabline = '%!v:lua.my_tabline()'
vim.o.showtabline = 2

if vim.fn.executable('rg') == 1 then
  vim.o.grepprg = 'rg --vimgrep --no-heading'
  vim.o.grepformat = '%f:%l:%c:%m,%f:%l:%m'
end

return {}
