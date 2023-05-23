return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.completion.copilot-lua" },
  {
      "copilot.lua",
      opts = {
        panel = {
          auto_refresh = true,
          keymap = {
            accept = "<C-l>",
            jump_next = "<C-j>",
            jump_prev = "<C-k>",
            dismiss = "<C-h>",
          },
          layout = {
            position = "right",
          },
        },
        suggestion = {
          keymap = {
            accept = "<C-l>",
            accept_word = false,
            accept_line = false,
            next = "<C-j>",
            prev = "<C-k>",
            dismiss = "<C-h>",
          },
        },
      },
    },

  {import = "astrocommunity.color.twilight-nvim"},
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
}
