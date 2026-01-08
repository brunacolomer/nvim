return {
  -- Command per iniciar el servidor
  cmd = { "yaml-language-server", "--stdio" },

  -- Fitxers que activaràn l’LSP
  filetypes = { "yaml", "yml" },

  -- On s’inicia la root del projecte
  root_markers = { ".git" },

  -- Configuració específica del servidor (YAML Schema, opcional)
  settings = {
    yaml = {
      validate = true,
      hover = true,
      completion = true,

      -- Versió de YAML
      yamlVersion = "1.2",

      -- Optional: associació d’esquemes
      schemas = {
        -- Exemple: Kubernetes
        kubernetes = "*.yaml",

        -- Exemple: docker-compose
        ["https://json.schemastore.org/docker-compose.json"] = {
          "docker-compose.yml",
          "docker-compose.yaml",
        },

        -- Exemple: el teu schema personal
        -- ["./schema.json"] = "meltrim-config.yaml",
      },

      -- Tags personalitzats si algun YAML els fa servir
      customTags = {
        "!Ref scalar",
        "!Sub scalar",
      },
    },
  },
}
