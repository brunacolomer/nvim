return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  },
  config = function()
    require('telescope').setup{
      defaults = {
        file_ignore_patterns = {
          "__pycache__",
          "%.pyc",
          "%.pyo",
          "node_modules",
          "build",
          "dist",
          "%.o",
          "%.a",
          "%.out",
        },
      },
    }
    print("Telescope configurat 🚀")
  end,
}

