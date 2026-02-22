-- List of favorite files/marks per project
return {
  -- https://github.com/ThePrimeagen/harpoon
  'ThePrimeagen/harpoon',
  branch = 'master',
  event = 'VeryLazy',
  dependencies = {
    -- https://github.com/nvim-lua/plenary.nvim
    'nvim-lua/plenary.nvim',
  },
  config = function()
    local keymap = vim.keymap  
    local ui =  require("harpoon.ui")
  require("harpoon").setup({
      menu = {
           width = 120 ,
      },
    keymap.set("n", "<leader>ha", require("harpoon.mark").add_file),
    keymap.set("n", "<leader>hh", ui.toggle_quick_menu),
    keymap.set("n", "<leader>h1", function() ui.nav_file(1) end),
    keymap.set("n", "<leader>h2", function() ui.nav_file(2) end),
    keymap.set("n", "<leader>h3", function() ui.nav_file(3) end),
    keymap.set("n", "<leader>h4", function() ui.nav_file(4) end),
    keymap.set("n", "<leader>h5", function() ui.nav_file(5) end),
    keymap.set("n", "<leader>h6", function() ui.nav_file(6) end),
    keymap.set("n", "<leader>h7", function() ui.nav_file(7) end),
    keymap.set("n", "<leader>h8", function() ui.nav_file(8) end),
    keymap.set("n", "<leader>h9", function() ui.nav_file(9) end),
  })
  end
}
