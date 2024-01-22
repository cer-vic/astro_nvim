return {
  {
  "nvim-neotest/neotest",
  ft = {"cs"},
  dependencies = {
    "Issafalcon/neotest-dotnet",
    {
      "folke/neodev.nvim",
      opts = function(_, opts)
        opts.library = opts.library or {}
        if opts.library.plugins ~= true then
          opts.library.plugins = require("astronvim.utils").list_insert.unique(opts.library.plugins, "neotest")
        end
        opts.library.types = true
      end,
    },
  },
  opts = function ()
    return {
      -- your neotest config here
      adapters = {
        require "neotest-dotnet"
      },
    }
  end,
  config = function (_, opts)
    -- get neotest namespace (api call creates or returns namespace)
    local neotest_ns = vim.api.nvim_create_namespace "neotest"
    vim.diagnostic.config({
      virtual_text = {
        format = function (diagnostic)
          local message = diagnostic.message:gsub("\n", " "):gsub("%s+", " "):gsub("^%s+", "")
          return message
        end,
      },
    }, neotest_ns)
    require("neotest").setup(opts)
  end,
  },
}
