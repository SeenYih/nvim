local status, Nvimtree = pcall(require, 'nvim-tree')
if (not status) then
	return
end

----------------------------------------------------
Nvimtree.setup({
  sort_by = "case_sensitive",
  view = {
		width = 20,
    height = 30,
		preserve_window_proportions = true,
		signcolumn = "no",
  },

  renderer = {
  	group_empty = true,
  },
  filters = {
		dotfiles = true,
  },
})

