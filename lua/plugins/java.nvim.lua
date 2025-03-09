return {
  {
    "nvim-java/nvim-java",
    dependencies = {
      "nvim-java/lua-async-await",
      "nvim-java/nvim-java-core",
      "nvim-java/nvim-java-test",
      "nvim-java/nvim-java-dap",
      "MunifTanjim/nui.nvim",
      "neovim/nvim-lspconfig",
      "mfussenegger/nvim-dap",
      {
        "williamboman/mason.nvim",
        opts = {
          ensure_installed = { "jdtls" }, -- Ensure jdtls is installed via Mason
        },
      },
    },
    config = function()
      require("java").setup() -- Setup nvim-java
      require("lspconfig").jdtls.setup({}) -- Attach jdtls with default settings
    end,
    ft = "java", -- Load only for Java files
  },
}
