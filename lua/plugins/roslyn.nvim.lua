return {
  "seblyng/roslyn.nvim",
  opts = {
    on_attach = function()
      print("This will run when the server attaches!")
    end,
    settings = {
      ["csharp|inlay_hints"] = {
        csharp_enable_inlay_hints_for_implicit_object_creation = false,
        csharp_enable_inlay_hints_for_implicit_variable_types = false,
      },
      ["csharp|code_lens"] = {
        dotnet_enable_references_code_lens = false,
      },
      ["csharp|completion"] = {
        dotnet_show_completion_items_from_unimported_namespaces = true,
        dotnet_show_name_completion_suggestions = true,
      },
    },
  },
}
