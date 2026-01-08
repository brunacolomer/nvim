return {
	cmd = { "/opt/omnisharp-roslyn/OmniSharp", "--languageserver" },
	filetypes = { "cs" },
	root_dir = "/home/bruna/DAVI/Part3D/Practica/TinyRun", 
	--	root_dir = vim.fs.root(0, { "*.sln", "*.csproj", ".git" }),
	-- root_markers = {'*.sln', '*.csproj', '.git' },
}
