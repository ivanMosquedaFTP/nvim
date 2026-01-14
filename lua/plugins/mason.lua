local mason = {
  "mason-org/mason.nvim",
  opts = {
    ensure_installed = {
      "pyright",
      "mypy",
      "ruff",
    },
  },
}
return mason
