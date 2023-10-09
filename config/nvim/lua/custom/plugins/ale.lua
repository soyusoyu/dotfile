
vim.g.ale_lint_on_save = 1
vim.g.ale_lint_on_text_changed = 0
vim.g.ale_lint_on_insert_leave = 0
vim.g.ale_lint_on_enter = 0
vim.g.ale_lint_on_filetype_changed = 0
vim.g.ale_linters = {
  ruby = { 'ruby', 'rubocop', 'brakeman' },
  javascript = { 'eslint' },
  javascriptreact = { 'eslint' },
  typescript = { 'eslint' },
  typescriptreact = { 'eslint' },
}

vim.g.ale_ruby_brakeman_executable = 'bundle'
vim.g.ale_ruby_rubocop_executable = 'bundle'
vim.g.ale_ruby_sorbet_executable = 'bundle'
vim.g.ale_ruby_syntax_tree_executable = 'bundle'


vim.g.ale_completion_autoimport = 0

return {
  "dense-analysis/ale",
  version = "*",
}
