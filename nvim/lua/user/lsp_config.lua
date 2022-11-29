-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)

local sig_setup = {
	debug = false, -- set to true to enable debug logging
	floating_window_off_x = 1, -- adjust float windows x position.
	floating_window_off_y = 0, -- adjust float windows y position. e.g -2 move window up 2 lines; 2 move down 2 lines
	bind = true,
	floating_window = false,
	handler_opts = {
		border = "double" -- double, rounded, single, shadow, none
	},
	toggle_key = '<A-->', -- toggle signature on and off in insert mode,  e.g. toggle_key = '<M-x>'

	select_signature_key = '<A-n>', -- cycle to next signature, e.g. '<M-n>' function overloading
	hint_enable = true, -- virtual hint enable
	hint_prefix = "🐼 ", -- Panda for parameter, NOTE: for the terminal not support emoji, might crash
	hint_scheme = "String",
};

require "lsp_signature".setup(sig_setup)
-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
	-- Enable completion triggered by <c-x><c-o>
	vim.api.nvim_command(string.format("echo '%s attached to lsp:%s'",
		vim.api.nvim_buf_get_name(bufnr), client.name))
	vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

	-- Mappings.
	-- See `:help vim.lsp.*` for documentation on any of the below functions
	local bufopts = { noremap = true, silent = true, buffer = bufnr }
	local nbufopts = { silent = true, buffer = bufnr }
	vim.keymap.set('i', '<C-k>', '<C-x><C-o>', nbufopts)
	vim.keymap.set('i', '<A-g>', vim.lsp.buf.signature_help, bufopts)
	vim.keymap.set('n', '<A-a>', vim.lsp.buf.code_action, bufopts)
	vim.keymap.set('n', '<A-f>', vim.lsp.buf.format, bufopts)
	vim.keymap.set('n', 'gc', vim.lsp.buf.incoming_calls, bufopts)
	vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
	vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, bufopts)
	vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
	vim.keymap.set('n', '<C-k>', vim.lsp.buf.hover, bufopts)
	vim.keymap.set('n', '\rn', vim.lsp.buf.rename, bufopts)
end

local lsp = require 'lspconfig'
local lsp_setup_cfg = {
	on_attach = on_attach
}

local lsp_servers = { 'clangd', 'pyright', 'cmake', 'jdtls', 'vimls', }
for idx, val in ipairs(lsp_servers) do
	lsp[val].setup(lsp_setup_cfg)
end

require('lspconfig')['powershell_es'].setup {
	on_attach = on_attach,
	bundle_path = '~/.local/share/powershell-editor-service/PowerShellEditorServices',
	shell = 'pwsh'
}
require('lspconfig')['sumneko_lua'].setup {
	on_attach = on_attach,
	settings = {
		Lua = {
			runtime = {
				-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
				version = 'LuaJIT',
			},
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = { 'vim' },
			},
			workspace = {
				-- Make the server aware of Neovim runtime files
				library = vim.api.nvim_get_runtime_file("", true),
			},
			-- Do not send telemetry data containing a randomized but unique identifier
			telemetry = {
				enable = false,
			},
		},
	},
}

-- default disabled, and F5 can toggle
vim.diagnostic.disable()
local toggle_diag = function()
	if vim.g.lsp_diagnostic_enabled == 1 then
		vim.diagnostic.disable()
		vim.g.lsp_diagnostic_enabled = 0
	else
		vim.diagnostic.enable()
		vim.g.lsp_diagnostic_enabled = 1
	end
end
vim.keymap.set('n', '<F5>', toggle_diag, opts)

require('mason').setup()
require('mason-lspconfig').setup()
