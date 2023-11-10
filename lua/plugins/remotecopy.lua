return {
  "ojroques/nvim-osc52",
  event = "TextYankPost",
  config = function()
    require("osc52").setup()
    local function copy()
      if vim.v.event.operator == 'y' and vim.v.event.regname == '' then
        require("osc52").copy_register('"')
      end
    end
    copy()
    vim.api.nvim_create_autocmd("TextYankPost", { callback = copy })
  end,
}