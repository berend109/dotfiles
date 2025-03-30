return {
  {
    "lervag/vimtex",
    config = function()
      -- Example configuration: set Skim as PDF viewer on macOS
      vim.g.vimtex_view_method = "skim"
      -- Configure latexmk with shell-escape enabled
      vim.g.vimtex_compiler_latexmk = {
        options = {
          "-pdf",
          "-shell-escape",
          "-verbose",
          "-interaction=nonstopmode",
          "-synctex=1",
        },
      }
    end,
  },
}
