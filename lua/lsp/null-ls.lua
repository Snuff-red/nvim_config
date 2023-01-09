local null_ls = require('null-ls')

null_ls.setup({
	debug = false,

	sources = {
		null_ls.builtins.code_actions.eslint,
		null_ls.builtins.code_actions.gitsigns,
		null_ls.builtins.code_actions.refactoring,
		null_ls.builtins.diagnostics.alex,
		null_ls.builtins.diagnostics.checkstyle.with({
			extra_args = { "-c", "/google_checks.xml" } -- or "/sun_checks.xml" or path to self written rules
		}), null_ls.builtins.diagnostics.clang_check,
		null_ls.builtins.diagnostics.eslint, null_ls.builtins.diagnostics.fish,
		--null_ls.builtins.diagnostics.flake8, null_ls.builtins.diagnostics.ltrs,
		null_ls.builtins.diagnostics.luacheck,
		null_ls.builtins.diagnostics.sqlfluff.with({
			extra_args = { "--dialect", "postgres" } -- change to your dialect
		}), null_ls.builtins.formatting.astyle,
		null_ls.builtins.formatting.autopep8,
		null_ls.builtins.formatting.deno_fmt,
		null_ls.builtins.hover.dictionary
	},

	on_attach = function(_)
		vim.cmd([[ command! Format execute 'lua vim.lsp.buf.formatting()']])
		-- if client.resolved_capabilities.document_formatting then
		--   vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
		-- end
	end
})
