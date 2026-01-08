return {

	cmd = { 'basedpyright-langserver', '--stdio'},
	filetypes = {'python'},
	root_markers = { { 'pyproject.toml', 'setup.py', 'setup.cfg', 'requirements.txt' }, '.git' },
  settings = {
    python = {
      analysis = {
        typeCheckingMode = 'basic', -- o 'strict' si vols més comprovacions
        autoImportCompletions = true,
      },
    },
  },
}

