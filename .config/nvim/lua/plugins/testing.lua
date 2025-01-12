return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
      "benelan/neotest-vitest",
    },
    opts = {
      adapters = {
        ["neotest-vitest"] = {
          vitestCommand = "npx vitest",
          env = { CI = true },
        },
      },
    },
    keys = {
      {
        ";qq",
        function()
          require("neotest").run.run(vim.fn.expand("%"))
        end,
        desc = "Run File",
      },
      {
        ";tr",
        function()
          require("neotest").run.run()
        end,
        desc = "Run Nearest",
      },
      {
        ";tl",
        function()
          require("neotest").run.run_last()
        end,
        desc = "Run Last",
      },
      {
        ";ts",
        function()
          require("neotest").summary.toggle()
        end,
        desc = "Toggle Summary",
      },
      {
        ";to",
        function()
          require("neotest").output.open({ enter = true, auto_close = true })
        end,
        desc = "Show Output",
      },
      {
        ";tO",
        function()
          require("neotest").output_panel.toggle()
        end,
        desc = "Toggle Output Panel",
      },
      {
        ";tS",
        function()
          require("neotest").run.stop()
        end,
        desc = "Stop",
      },
    },
  },
}
