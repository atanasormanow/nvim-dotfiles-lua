if vim.g.vscode then
  require("nakata.vscode")
else
  require("nakata.settings")
  require("nakata.commands")
  require("nakata.keymaps")
  require("nakata.packer")
end
