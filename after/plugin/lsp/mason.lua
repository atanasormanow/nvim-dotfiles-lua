local function setup()
  require('mason').setup({
    ui = {
      icons = {
        package_installed = "✓",
        package_pending = "",
        package_uninstalled = "✗"
      },
      border = 'double',
      width = 0.8,
      height = 0.8,
    }
  })
end

pcall(setup)
