local status, icons = pcall(require, 'nvim-web-devicons')
local override      = require('plenary.lsp.override')
if (not status) then return end

icons.setup {
  override = {},
  default = true
}
