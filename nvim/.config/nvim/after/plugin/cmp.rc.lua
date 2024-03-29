local status, cmp = pcall(require, "cmp" )
if (not status) then return end

local lspkind = require'lspkind'
local luasnip = require'luasnip'

local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

cmp.setup({
   snippet = {
      expand = function ( args )
      require('luasnip').lsp_expand(args.body)
      end,
   },
   mapping = {
		["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      elseif has_words_before() then
        cmp.complete()
      else
        fallback()
      end
    end, { "i", "s" }),
		["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),
   },
   sources = cmp.config.sources({
      { name ='nvim_lsp' },
      { name ='buffer' },
   }),
   formatting = {
      format = lspkind.cmp_format( { with_text = false, maxwidth = 50 } )
   },
} )

vim.cmd [[
				set completeopt=menuone,noinsert,noselect
				highlight! default link CmpItemKind CmpItemMenuDefault
]]
