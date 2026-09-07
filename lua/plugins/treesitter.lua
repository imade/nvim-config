return {
  {
    -- You also need: cargo binstall tree-sitter-cli
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      local ts = require("nvim-treesitter")
      ts.setup()

      local langs = {
        "bash",
        "c",
        "cmake",
        "cpp",
        "css",
        "csv",
        "diff",
        "dockerfile",
        "gitignore",
        "go",
        "html",
        "javascript",
        "json",
        "lua",
        "make",
        "markdown",
        "markdown_inline",
        "mermaid",
        "nginx",
        "odin",
        "proto",
        "python",
        "rust",
        "toml",
        "sql",
        "tsx",
        "typescript",
        "xml",
        "yaml",
        "zsh",
      }
      ts.install(langs)

      vim.api.nvim_create_autocmd("FileType", {
        pattern = langs,
        callback = function()
          vim.treesitter.start()
        end,
      })
    end,
  },
}
