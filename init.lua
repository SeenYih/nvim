---_   ___     _____ __  __
--| \ | \ \   / /_ _|  \/  |
--|  \| |\ \ / / | || |\/| |
--| |\  | \ V /  | || |  | |
--|_| \_|  \_/  |___|_|  |_|
require 'options'
require 'key_mapper'
require 'plugins'
require 'themes'
require 'nvim_tree'
require 'lua_line'
require 'treeitter'
require 'auto_pairs'
require 'lsp'

--lsp serve
---------------------------------------------------------------------
---------------------------------------------------------------------
require'lspconfig'.cssls.setup{}
require'lspconfig'.cssmodules_ls.setup{}
require'lspconfig'.html.setup{}
require'lspconfig'.jsonls.setup{}
require'lspconfig'.sqlls.setup{}
require'lspconfig'.sumneko_lua.setup{}
require'lspconfig'.tsserver.setup{}
require'lspconfig'.volar.setup{}
require'lspconfig'.zk.setup{}

-- bufferline
---------------------------------------------------------------------
---------------------------------------------------------------------
require'bufferline'.setup {
	options = {
  	mode = "buffers", -- set to "tabs" to only show tabpages instead
		-- 使用 nvim 内置lsp
		diagnostics = "nvim_lsp",
		-- 左侧让出 nvim-tree 的位置
		offsets = {{
			filetype = "NvimTree",
			text = "File Explorer",
			highlight = "Directory",
			text_align = "left"
		}},
  	config = {
  		options = {
  	  	groups = {
  	    	items = {
  	      	require('bufferline.groups').builtin.pinned:with({ icon = "&" }),
  	    	}
  	    }
  	  }
  	},
  	-- icons
  	indicator_icon = ' ▎',
 		buffer_close_icon = '',
 		modified_icon = '*',
 		close_icon = '+(◐‿◑)+',
 		left_trunc_marker = '',
 		right_trunc_marker = '',
 		max_name_length = 15,
 		max_prefix_length = 15,
 		tab_size = 10,
 		diagnostics_update_in_insert = true,
 		color_icons = false,
 		show_buffer_default_icon = true,
 		show_buffer_close_icons = true,
	}
}

---------------------------------------------------------------------
---------------------------------------------------------------------
local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
  return
end

local snip_status_ok, luasnip = pcall(require, "luasnip")
if not snip_status_ok then
  return
end

require("luasnip/loaders/from_vscode").lazy_load()
local check_backspace = function()
  local col = vim.fn.col "." - 1
  return col == 0 or vim.fn.getline("."):sub(col, col):match "%s"
end

local kind_icons = {
  Text = "",
  Method = "m",
  Function = "",
  Constructor = "",
  Field = "",
  Variable = "",
  Class = "",
  Interface = "",
  Module = "",
  Property = "",
  Unit = "",
  Value = "",
  Enum = "",
  Keyword = "",
  Snippet = "",
  Color = "",
  File = "",
  Reference = "",
  Folder = "",
  EnumMember = "",
  Constant = "",
  Struct = "",
  Event = "",
  Operator = "",
  TypeParameter = "",
}
-- cmp
------------------------------------------------------------
cmp.setup {
  snippet = {
    expand = function(args)
    	luasnip.lsp_expand(args.body) -- For `luasnip` users.
    end,
  },
  mapping = {
  	["<C-k>"] = cmp.mapping.select_prev_item(),
		["<C-j>"] = cmp.mapping.select_next_item(),
    -- close
    ["<C-e>"] = cmp.mapping {
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    },
    -- select
    ["<CR>"] = cmp.mapping.confirm { select = true },
    ["<Tab>"] = cmp.mapping(function(fallback)
    if cmp.visible() then
    	cmp.select_next_item()
    elseif luasnip.expandable() then
      luasnip.expand()
    elseif luasnip.expand_or_jumpable() then
      luasnip.expand_or_jump()
    elseif check_backspace() then
      fallback()
    else
      fallback()
    end
		end, { "i" , "s", }),

		["<S-Tab>"] = cmp.mapping(function(fallback)
    if cmp.visible() then
      cmp.select_prev_item()
    elseif luasnip.jumpable(-1) then
      luasnip.jump(-1)
    else
      fallback()
    end
		end, { "i" , "s", }),
	},

	formatting = {
	  fields = { "kind", "abbr", "menu" },
	  format = function(entry, vim_item)
	  -- Kind icons
		vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
	  -- vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind) -- This concatonates the icons with the name of the item kind
	  vim_item.menu = ({
			nvim_lsp = "[LSP]",
  		luasnip = "[Snippet]",
  		nvim_lua = '[Lua]',
  		buffer = "[Buffer]",
  		path = "[Path]",
	  })[entry.source.name]
	  return vim_item
	  end,
	},
	sources = {
    --{ name = "nvim_lsp" },
    { name = "luasnip" },
    { name= "nvim_lsp" },
    { name= "nvim_lua" },
    { name = "buffer" },
    { name = "path" },
	},
	confirm_opts = {
    behavior = cmp.ConfirmBehavior.Replace,
    select = false,
	},
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  experimental = {
    ghost_text = true,
    --native_menu = false,
    --view.entries = "native",
  },
}

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {{ name = 'buffer' }}
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({{ name = 'path' }}, {{ name = 'cmdline' }})
})
