-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/nakk/.cache/nvim/packer_hererocks/2.1.1725453128/share/lua/5.1/?.lua;/home/nakk/.cache/nvim/packer_hererocks/2.1.1725453128/share/lua/5.1/?/init.lua;/home/nakk/.cache/nvim/packer_hererocks/2.1.1725453128/lib/luarocks/rocks-5.1/?.lua;/home/nakk/.cache/nvim/packer_hererocks/2.1.1725453128/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/nakk/.cache/nvim/packer_hererocks/2.1.1725453128/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/nakk/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["alpha-nvim"] = {
    cond = { "return not vim.g.vscode" },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/home/nakk/.local/share/nvim/site/pack/packer/opt/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["auto-session"] = {
    cond = { "return not vim.g.vscode" },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/home/nakk/.local/share/nvim/site/pack/packer/opt/auto-session",
    url = "https://github.com/rmagatti/auto-session"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/nakk/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/nakk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/nakk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/nakk/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/nakk/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["ctrlsf.vim"] = {
    after_files = { "/home/nakk/.local/share/nvim/site/pack/packer/opt/ctrlsf.vim/after/plugin/ctrlsf.vim" },
    cond = { "return not vim.g.vscode" },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/home/nakk/.local/share/nvim/site/pack/packer/opt/ctrlsf.vim",
    url = "https://github.com/dyng/ctrlsf.vim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/nakk/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["fzf-lua"] = {
    cond = { "return not vim.g.vscode" },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/home/nakk/.local/share/nvim/site/pack/packer/opt/fzf-lua",
    url = "https://github.com/ibhagwan/fzf-lua"
  },
  ["gruvbox.nvim"] = {
    cond = { "return not vim.g.vscode" },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/home/nakk/.local/share/nvim/site/pack/packer/opt/gruvbox.nvim",
    url = "https://github.com/ellisonleao/gruvbox.nvim"
  },
  ["lsp-zero.nvim"] = {
    cond = { "return not vim.g.vscode" },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/home/nakk/.local/share/nvim/site/pack/packer/opt/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["lualine.nvim"] = {
    cond = { "return not vim.g.vscode" },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/home/nakk/.local/share/nvim/site/pack/packer/opt/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/home/nakk/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/nakk/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/nakk/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["neoscroll.nvim"] = {
    cond = { "return not vim.g.vscode" },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/home/nakk/.local/share/nvim/site/pack/packer/opt/neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim"
  },
  nerdcommenter = {
    loaded = true,
    path = "/home/nakk/.local/share/nvim/site/pack/packer/start/nerdcommenter",
    url = "https://github.com/preservim/nerdcommenter"
  },
  ["nvim-autopairs"] = {
    cond = { "return not vim.g.vscode" },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/home/nakk/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/nakk/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    cond = { "return not vim.g.vscode" },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/home/nakk/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/nakk/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-surround"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18nvim-surround\frequire\0" },
    loaded = true,
    path = "/home/nakk/.local/share/nvim/site/pack/packer/start/nvim-surround",
    url = "https://github.com/kylechui/nvim-surround"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/nakk/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    cond = { "return not vim.g.vscode" },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/home/nakk/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-context",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-context"
  },
  ["nvim-ts-rainbow2"] = {
    loaded = true,
    path = "/home/nakk/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow2",
    url = "https://github.com/HiPhish/nvim-ts-rainbow2"
  },
  ["nvim-web-devicons"] = {
    cond = { "return not vim.g.vscode" },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/home/nakk/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/nakk/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["toggleterm.nvim"] = {
    cond = { "return not vim.g.vscode" },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/home/nakk/.local/share/nvim/site/pack/packer/opt/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  undotree = {
    cond = { "return not vim.g.vscode" },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/home/nakk/.local/share/nvim/site/pack/packer/opt/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-easymotion"] = {
    cond = { "return not vim.g.vscode" },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/home/nakk/.local/share/nvim/site/pack/packer/opt/vim-easymotion",
    url = "https://github.com/easymotion/vim-easymotion"
  },
  ["vim-fugitive"] = {
    cond = { "return not vim.g.vscode" },
    loaded = false,
    needs_bufread = true,
    only_cond = true,
    path = "/home/nakk/.local/share/nvim/site/pack/packer/opt/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  vimtex = {
    cond = { "return not vim.g.vscode" },
    loaded = false,
    needs_bufread = true,
    only_cond = true,
    path = "/home/nakk/.local/share/nvim/site/pack/packer/opt/vimtex",
    url = "https://github.com/lervag/vimtex"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-surround
time([[Config for nvim-surround]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18nvim-surround\frequire\0", "config", "nvim-surround")
time([[Config for nvim-surround]], false)
-- Conditional loads
time([[Conditional loading of vimtex]], true)
  require("packer.load")({"vimtex"}, {}, _G.packer_plugins)
time([[Conditional loading of vimtex]], false)
time([[Conditional loading of lualine.nvim]], true)
  require("packer.load")({"lualine.nvim"}, {}, _G.packer_plugins)
time([[Conditional loading of lualine.nvim]], false)
time([[Conditional loading of alpha-nvim]], true)
  require("packer.load")({"alpha-nvim"}, {}, _G.packer_plugins)
time([[Conditional loading of alpha-nvim]], false)
time([[Conditional loading of neoscroll.nvim]], true)
  require("packer.load")({"neoscroll.nvim"}, {}, _G.packer_plugins)
time([[Conditional loading of neoscroll.nvim]], false)
time([[Conditional loading of auto-session]], true)
  require("packer.load")({"auto-session"}, {}, _G.packer_plugins)
time([[Conditional loading of auto-session]], false)
time([[Conditional loading of nvim-colorizer.lua]], true)
  require("packer.load")({"nvim-colorizer.lua"}, {}, _G.packer_plugins)
time([[Conditional loading of nvim-colorizer.lua]], false)
time([[Conditional loading of ctrlsf.vim]], true)
  require("packer.load")({"ctrlsf.vim"}, {}, _G.packer_plugins)
time([[Conditional loading of ctrlsf.vim]], false)
time([[Conditional loading of nvim-web-devicons]], true)
  require("packer.load")({"nvim-web-devicons"}, {}, _G.packer_plugins)
time([[Conditional loading of nvim-web-devicons]], false)
time([[Conditional loading of fzf-lua]], true)
  require("packer.load")({"fzf-lua"}, {}, _G.packer_plugins)
time([[Conditional loading of fzf-lua]], false)
time([[Conditional loading of toggleterm.nvim]], true)
  require("packer.load")({"toggleterm.nvim"}, {}, _G.packer_plugins)
time([[Conditional loading of toggleterm.nvim]], false)
time([[Conditional loading of undotree]], true)
  require("packer.load")({"undotree"}, {}, _G.packer_plugins)
time([[Conditional loading of undotree]], false)
time([[Conditional loading of nvim-autopairs]], true)
  require("packer.load")({"nvim-autopairs"}, {}, _G.packer_plugins)
time([[Conditional loading of nvim-autopairs]], false)
time([[Conditional loading of vim-easymotion]], true)
  require("packer.load")({"vim-easymotion"}, {}, _G.packer_plugins)
time([[Conditional loading of vim-easymotion]], false)
time([[Conditional loading of gruvbox.nvim]], true)
  require("packer.load")({"gruvbox.nvim"}, {}, _G.packer_plugins)
time([[Conditional loading of gruvbox.nvim]], false)
time([[Conditional loading of nvim-treesitter-context]], true)
  require("packer.load")({"nvim-treesitter-context"}, {}, _G.packer_plugins)
time([[Conditional loading of nvim-treesitter-context]], false)
time([[Conditional loading of vim-fugitive]], true)
  require("packer.load")({"vim-fugitive"}, {}, _G.packer_plugins)
time([[Conditional loading of vim-fugitive]], false)
time([[Conditional loading of lsp-zero.nvim]], true)
  require("packer.load")({"lsp-zero.nvim"}, {}, _G.packer_plugins)
time([[Conditional loading of lsp-zero.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
