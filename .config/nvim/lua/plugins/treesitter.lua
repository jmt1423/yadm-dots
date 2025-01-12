return {
  {
    "nvim-treesitter/nvim-treesitter",
    tag = "v0.9.3",
    opts = {
      highlight = { enable = true },
      indent = { enable = true },
      ensure_installed = {
        "javascript",
        "typescript",
        "css",
        "astro",
        "html",
        "tsx",
        "gitignore",
        "http",
        "json",
        "scss",
        "vim",
        "lua",
      },
      auto_install = true,
      query_linter = {
        enable = true,
        use_virtual_text = true,
        lint_events = { "BufWrite", "CursorHold" },
      },
    },
  },
}
