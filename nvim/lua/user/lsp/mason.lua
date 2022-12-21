local servers = {
	"sumneko_lua",
	"cssls",
	"html",
	"tsserver",
  'eslint',
  'tailwindcss',
  'emmet_ls',
	"pyright",
	"bashls",
	"jsonls",
	"yamlls",
  "cssmodules_ls"
}

local settings = {
	ui = {
		border = "none",
		icons = {
			package_installed = "◍",
			package_pending = "◍",
			package_uninstalled = "◍",
		},
	},
	log_level = vim.log.levels.INFO,
	max_concurrent_installers = 4,
}

require("mason").setup(settings)
require("mason-lspconfig").setup({
	ensure_installed = servers,
	automatic_installation = true,
})

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
	return
end

local opts = {}

for _, server in pairs(servers) do
	opts = {
		on_attach = require("user.lsp.handlers").on_attach,
		capabilities = require("user.lsp.handlers").capabilities,
	}

	server = vim.split(server, "@")[1]

  if server == 'tailwindcss' then
    local tailwindcss_opts = require('user.lsp.settings.tailwindcss')
    opts  = vim.tbl_deep_extend('force', opts, tailwindcss_opts)
  end

  if server == 'emmet_ls' then
    local emmet_ls_opts = require('user.lsp.settings.tailwindcss')
    opts  = vim.tbl_deep_extend('force', opts, emmet_ls_opts)
  end

  if server == 'tsserver' then
    local tsserver_opts = require('user.lsp.settings.tsserver')
    opts  = vim.tbl_deep_extend('force', opts, tsserver_opts)
  end
  
  if server == 'eslint' then
    local eslint_opts = require('user.lsp.settings.eslint')
    opts  = vim.tbl_deep_extend('force', opts, eslint_opts)
  end

	local require_ok, conf_opts = pcall(require, "user.lsp.settings." .. server)
	if require_ok then
		opts = vim.tbl_deep_extend("force", conf_opts, opts)
	end

	lspconfig[server].setup(opts)
end


