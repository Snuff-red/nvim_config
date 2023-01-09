vim.g.mapleader = ' '

local map = vim.api.nvim_set_keymap
local opt = { noremap = true }

map('i', 'jk', '<Esc>', opt)

map('n', 's', '', opt)

map('n', 'sv', ':vsp<CR>', opt)
map('n', 'sg', ':sp<CR>', opt)

map('n', 'sc', '<C-w>c', opt)
map('n', 'so', '<C-w>o', opt)

map('n', '<C-h>', '<C-w>h', opt)
map('n', '<C-j>', '<C-w>j', opt)
map('n', '<C-k>', '<C-w>k', opt)
map('n', '<C-l>', '<C-w>l', opt)

map('n', 'sh', 'vertical resize -2<CR>', opt)
map('n', 'sl', 'vertical resize +2<CR>', opt)
map('n', 'sj', 'resize +2<CR>', opt)
map('n', 'sk', 'resize -2<CR>', opt)

map('n', '<leader>t', ':sp | terminal<CR>', opt)
map('n', '<leader>vt', ':vsp | terminal<CR>', opt)
map("t", "jk", "<C-\\><C-n>", opt)
map("t", "<C-h>", [[ <C-\><C-N><C-w>h ]], opt)
map("t", "<C-j>", [[ <C-\><C-N><C-w>j ]], opt)
map("t", "<C-k>", [[ <C-\><C-N><C-w>k ]], opt)
map("t", "<C-l>", [[ <C-\><C-N><C-w>l ]], opt)

-- 上下滚动浏览
map("n", "<C-d>", "4j", opt)
map("n", "<C-u>", "4k", opt)

local pluginKeys = {}

--nvim-tree
--nvimtree-Toogle
map('n', '<leader>m', ':NvimTreeToggle<CR>', opt)


pluginKeys.nvimTreeMapList = {
	{ key = { "<CR>", "<2-LeftMouse>" }, action = "edit" },
	{ key = "<C-e>", action = "edit_in_place" },
	{ key = "O", action = "edit_no_picker" },
	{ key = { "<C-]>", "<2-RightMouse>" }, action = "cd" },
	{ key = "sv", action = "vsplit" },
	{ key = "sg", action = "split" },
	{ key = "<C-t>", action = "tabnew" },
	{ key = "<", action = "prev_sibling" },
	{ key = ">", action = "next_sibling" },
	{ key = "P", action = "parent_node" },
	{ key = "<BS>", action = "close_node" },
	{ key = "<Tab>", action = "preview" },
	{ key = "K", action = "first_sibling" },
	{ key = "J", action = "last_sibling" },
	{ key = "I", action = "toggle_git_ignored" },
	{ key = "H", action = "toggle_dotfiles" },
	{ key = "U", action = "toggle_custom" },
	{ key = "R", action = "refresh" },
	{ key = "a", action = "create" },
	{ key = "d", action = "remove" },
	{ key = "D", action = "trash" },
	{ key = "r", action = "rename" },
	{ key = "<C-r>", action = "full_rename" },
	{ key = "x", action = "cut" },
	{ key = "c", action = "copy" },
	{ key = "p", action = "paste" },
	{ key = "y", action = "copy_name" },
	{ key = "Y", action = "copy_path" },
	{ key = "gy", action = "copy_absolute_path" },
	{ key = "[e", action = "prev_diag_item" },
	{ key = "[c", action = "prev_git_item" },
	{ key = "]e", action = "next_diag_item" },
	{ key = "]c", action = "next_git_item" },
	{ key = "-", action = "dir_up" },
	{ key = "o", action = "system_open" },
	{ key = "f", action = "live_filter" },
	{ key = "F", action = "clear_live_filter" },
	{ key = "q", action = "close" },
	{ key = "W", action = "collapse_all" },
	{ key = "E", action = "expand_all" },
	{ key = "S", action = "search_node" },
	{ key = ".", action = "run_file_command" },
	{ key = "g?", action = "toggle_help" },
	{ key = "m", action = "toggle_mark" },
	{ key = "bmv", action = "bulk_move" },
}

-- bufferline
-- 左右Tab切换
map("n", "<leader>h", ":BufferLineCyclePrev<CR>", opt)
map("n", "<leader>l", ":BufferLineCycleNext<CR>", opt)
-- 关闭
--"moll/vim-bbye"
map("n", "<leader>w", ":Bdelete!<CR>", opt)
map("n", "<leader>bl", ":BufferLineCloseRight<CR>", opt)
map("n", "<leader>bh", ":BufferLineCloseLeft<CR>", opt)
map("n", "<leader>bc", ":BufferLinePickClose<CR>", opt)

-- Telescope
-- 查找文件
map("n", "<C-p>", ":Telescope find_files<CR>", opt)
-- 全局搜索
map("n", "<C-f>", ":Telescope live_grep<CR>", opt)


pluginKeys.telescopeMapList = {
	i = {
		-- 上下移动
		["<C-j>"] = "move_selection_next",
		["<C-k>"] = "move_selection_previous",
		["<Down>"] = "move_selection_next",
		["<Up>"] = "move_selection_previous",
		-- 历史记录
		["<C-n>"] = "cycle_history_next",
		["<C-p>"] = "cycle_history_prev",
		-- 关闭窗口
		["<C-c>"] = "close",
		-- 预览窗口上下滚动
		["<C-u>"] = "preview_scrolling_up",
		["<C-d>"] = "preview_scrolling_down",
	},
}


pluginKeys.treesitterMapList = {
	init_selection = "<CR>",
	node_incremental = "<CR>",
	scope_incremental = "<TAB>",
	node_decremental = "<BS>",
}

pluginKeys.masonMapList = {
	-- Keymap to expand a package
	toggle_package_expand = "<CR>",
	-- Keymap to install the package under the current cursor position
	install_package = "i",
	-- Keymap to reinstall/update the package under the current cursor position
	update_package = "u",
	-- Keymap to check for new version for the package under the current cursor position
	check_package_version = "c",
	-- Keymap to update all installed packages
	update_all_packages = "U",
	-- Keymap to check which installed packages are outdated
	check_outdated_packages = "C",
	-- Keymap to uninstall a package
	uninstall_package = "X",
	-- Keymap to cancel a package installation
	cancel_installation = "<C-c>",
	-- Keymap to apply language filter
	apply_language_filter = "<C-f>",
}

pluginKeys.cmpMapList = function(cmp)
	return {
		["<leader>."] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
		-- 取消
		["<leader>,"] = cmp.mapping({
			i = cmp.mapping.abort(),
			c = cmp.mapping.close(),
		}),
		-- 上一个
		["<C-k>"] = cmp.mapping.select_prev_item(),
		-- 下一个
		["<C-j>"] = cmp.mapping.select_next_item(),
		-- 确认
		["<TAB>"] = cmp.mapping.confirm({
			select = true,
			behavior = cmp.ConfirmBehavior.Replace,
		}),
		-- 如果窗口内容太多，可以滚动
		["<C-u>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
		["<C-d>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),

	}
end

pluginKeys.sagaMapList = function()
	vim.keymap.set("n", "<leader>sf", "<cmd>lua vim.lsp.buf.format()<CR>", opt)
	-- Lsp finder find the symbol definition implement reference
	-- if there is no implement it will hide
	-- when you use action in finder like open vsplit then you can
	-- use <C-t> to jump back
	vim.keymap.set("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", opt)

	-- Code action
	vim.keymap.set({ "n", "v" }, "<leader>ca", "<cmd>Lspsaga code_action<CR>", opt)

	-- Rename
	vim.keymap.set("n", "gr", "<cmd>Lspsaga rename<CR>", opt)

	-- Peek Definition
	-- you can edit the definition file in this flaotwindow
	-- also support open/vsplit/etc operation check definition_action_keys
	-- support tagstack C-t jump back
	vim.keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opt)

	-- Show line diagnostics
	vim.keymap.set("n", "<leader>cd", "<cmd>Lspsaga show_line_diagnostics<CR>", opt)

	-- Show cursor diagnostic
	vim.keymap.set("n", "<leader>cd", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opt)

	-- Diagnsotic jump can use `<c-o>` to jump back
	vim.keymap.set("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opt)
	vim.keymap.set("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", opt)

	-- Only jump to error
	vim.keymap.set("n", "[E", function()
		require("lspsaga.diagnostic").goto_prev({ severity = vim.diagnostic.severity.ERROR })
	end, opt)
	vim.keymap.set("n", "]E", function()
		require("lspsaga.diagnostic").goto_next({ severity = vim.diagnostic.severity.ERROR })
	end, opt)

	-- Outline
	vim.keymap.set("n", "<leader>so", "<cmd>LSoutlineToggle<CR>", opt)

	-- Hover Doc
	vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opt)

	-- Float terminal
	vim.keymap.set("n", "<leader>sd", "<cmd>Lspsaga open_floaterm<CR>", opt)
	-- if you want pass somc cli command into terminal you can do like this
	-- open lazygit in lspsaga float terminal
	vim.keymap.set("n", "<leader>sd", "<cmd>Lspsaga open_floaterm lazygit<CR>", opt)
	-- close floaterm
	vim.keymap.set("t", "<leader>sd", [[<C-\><C-n><cmd>Lspsaga close_floaterm<CR>]], opt)
end

pluginKeys.commentKeyList = {
	toggler = {
		---Line-comment toggle keymap
		line = 'gcc',
		---Block-comment toggle keymap
		block = 'gbc',
	},
	---LHS of operator-pending mappings in NORMAL and VISUAL mode
	opleader = {
		---Line-comment keymap
		line = 'gc',
		---Block-comment keymap
		block = 'gb',
	},
	---LHS of extra mappings
	extra = {
		---Add comment on the line above
		above = 'gcO',
		---Add comment on the line below
		below = 'gco',
		---Add comment at the end of line
		eol = 'gcA',
	},
}

pluginKeys.hopKeyList = function(hop,directions)
vim.keymap.set('', 'f', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
end, {remap=true})
vim.keymap.set('', 'F', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
end, {remap=true})
vim.keymap.set('', 't', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
end, {remap=true})
vim.keymap.set('', 'T', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
end, {remap=true})
end

return pluginKeys
