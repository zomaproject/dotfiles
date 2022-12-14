return {
  codeAction = {
    disableRuleComment = {
      enable = true,
      location = "separateLine"
    },
    showDocumentation = {
      enable = true
    }
  },
   extends = {
    "eslint:recommended",
    "plugin:react-recommended",
    "plugin:react/jsx-runtime"
  } ,
  codeActionOnSave = {
    enable = false,
    mode = "all"
  },
  format = true,
  --nodePath = "",
  onIgnoredFiles = "off",
  packageManager = "npm",
  quiet = false,
  rulesCustomizations = {},
  run = "onType",
  useESLintClass = false,
  validate = "on",
  workingDirectory = {
    mode = "location"
  }
}
