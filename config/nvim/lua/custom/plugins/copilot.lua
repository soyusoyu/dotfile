# vim.g.copilot_node_command = '/Users/xxxx/.asdf/installs/nodejs/xx.xx.xx/bin/node'
vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-i>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
return {
  "github/copilot.vim",
  version = "*",
}
