return {
  --Cloak (For .env* and sensitive data)
  "laytan/cloak.nvim",
  config = function()
    local cloak = require('cloak')
    
    cloak.setup({
      enabled = true,
      cloak_character = '*',
      highlight_group = 'Comment',
      cloak_length = nil, -- Provide a number if you want to hide the true length of the value.
      try_all_patterns = true,
      patterns = {
        {
          file_pattern = '.env*',
          cloak_pattern = '=.+',
          replace = nil,
        },
      },
    })

    local keymap = vim.keymap

    keymap.set("n", "<A-c><A-e>", ":CloakEnable<CR>")
    keymap.set("n", "<A-c><A-d>", ":CloakDisable<CR>")
    keymap.set("n", "<A-c><A-t>", ":CloakToggle<CR>")
  end
}
