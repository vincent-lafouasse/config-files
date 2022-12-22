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
local package_path_str = "/Users/vincentlafouasse/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/vincentlafouasse/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/vincentlafouasse/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/vincentlafouasse/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/vincentlafouasse/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
  ["c_formatter_42.vim"] = {
    loaded = true,
    path = "/Users/vincentlafouasse/.local/share/nvim/site/pack/packer/start/c_formatter_42.vim",
    url = "https://github.com/cacharle/c_formatter_42.vim"
  },
  catppuccin = {
    config = { "\27LJ\2\nì\1\0\1\4\0\18\0\0245\1\3\0005\2\1\0009\3\0\0=\3\2\2=\2\4\0015\2\6\0009\3\5\0=\3\2\2=\2\a\0015\2\t\0009\3\b\0=\3\n\2=\2\v\0015\2\f\0009\3\5\0=\3\2\2=\2\r\0015\2\14\0009\3\5\0=\3\2\2=\2\15\0015\2\16\0=\2\17\1L\1\2\0\20TelescopeBorder\1\0\1\tlink\16FloatBorder\16NormalFloat\1\0\0\nPmenu\1\0\0\14CmpBorder\afg\1\0\0\rsurface2\19NvimTreeNormal\1\0\0\tnone\15TabLineSel\1\0\0\abg\1\0\0\tpinkô\3\1\0\5\0\28\0,6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0004\4\0\0=\4\5\0034\4\0\0=\4\6\0034\4\0\0=\4\a\0034\4\0\0=\4\b\0034\4\0\0=\4\t\0034\4\0\0=\4\n\0034\4\0\0=\4\v\0034\4\0\0=\4\f\0034\4\0\0=\4\r\0034\4\0\0=\4\14\0034\4\0\0=\4\15\3=\3\16\0025\3\18\0005\4\17\0=\4\19\3=\3\20\0025\3\22\0003\4\21\0=\4\19\3=\3\23\2B\0\2\0016\0\24\0009\0\25\0009\0\26\0'\2\27\0B\0\2\1K\0\1\0\27colorscheme catppuccin\17nvim_command\bapi\bvim\24highlight_overrides\1\0\0\0\20color_overrides\nmocha\1\0\0\1\0\1\tbase\f#0A010B\vstyles\ntypes\15properties\rbooleans\fnumbers\14variables\fstrings\rkeywords\14functions\nloops\17conditionals\rcomments\1\0\0\1\0\5\14no_italic\1\27transparent_background\1\16term_colors\2\fflavour\nmocha\fno_bold\1\nsetup\15catppuccin\frequire\0" },
    loaded = true,
    path = "/Users/vincentlafouasse/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["julia-vim"] = {
    loaded = true,
    path = "/Users/vincentlafouasse/.local/share/nvim/site/pack/packer/start/julia-vim",
    url = "https://github.com/JuliaEditorSupport/julia-vim"
  },
  ["lightline.vim"] = {
    loaded = true,
    path = "/Users/vincentlafouasse/.local/share/nvim/site/pack/packer/start/lightline.vim",
    url = "https://github.com/itchyny/lightline.vim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/Users/vincentlafouasse/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nÚ\1\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\frainbow\1\0\2\venable\2\18extended_mode\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\1\17auto_install\2\1\a\0\0\6c\blua\trust\bcpp\nlatex\vpython\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/vincentlafouasse/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/Users/vincentlafouasse/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/vincentlafouasse/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  rainbow = {
    loaded = true,
    path = "/Users/vincentlafouasse/.local/share/nvim/site/pack/packer/start/rainbow",
    url = "https://github.com/luochen1990/rainbow"
  },
  ["vim-42header"] = {
    loaded = true,
    path = "/Users/vincentlafouasse/.local/share/nvim/site/pack/packer/start/vim-42header",
    url = "https://github.com/pbondoer/vim-42header"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/Users/vincentlafouasse/.local/share/nvim/site/pack/packer/start/vim-floaterm",
    url = "https://github.com/voldikss/vim-floaterm"
  },
  ["vim-markdown"] = {
    loaded = true,
    path = "/Users/vincentlafouasse/.local/share/nvim/site/pack/packer/start/vim-markdown",
    url = "https://github.com/plasticboy/vim-markdown"
  },
  ["vim-toml"] = {
    loaded = true,
    path = "/Users/vincentlafouasse/.local/share/nvim/site/pack/packer/start/vim-toml",
    url = "https://github.com/cespare/vim-toml"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: catppuccin
time([[Config for catppuccin]], true)
try_loadstring("\27LJ\2\nì\1\0\1\4\0\18\0\0245\1\3\0005\2\1\0009\3\0\0=\3\2\2=\2\4\0015\2\6\0009\3\5\0=\3\2\2=\2\a\0015\2\t\0009\3\b\0=\3\n\2=\2\v\0015\2\f\0009\3\5\0=\3\2\2=\2\r\0015\2\14\0009\3\5\0=\3\2\2=\2\15\0015\2\16\0=\2\17\1L\1\2\0\20TelescopeBorder\1\0\1\tlink\16FloatBorder\16NormalFloat\1\0\0\nPmenu\1\0\0\14CmpBorder\afg\1\0\0\rsurface2\19NvimTreeNormal\1\0\0\tnone\15TabLineSel\1\0\0\abg\1\0\0\tpinkô\3\1\0\5\0\28\0,6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0004\4\0\0=\4\5\0034\4\0\0=\4\6\0034\4\0\0=\4\a\0034\4\0\0=\4\b\0034\4\0\0=\4\t\0034\4\0\0=\4\n\0034\4\0\0=\4\v\0034\4\0\0=\4\f\0034\4\0\0=\4\r\0034\4\0\0=\4\14\0034\4\0\0=\4\15\3=\3\16\0025\3\18\0005\4\17\0=\4\19\3=\3\20\0025\3\22\0003\4\21\0=\4\19\3=\3\23\2B\0\2\0016\0\24\0009\0\25\0009\0\26\0'\2\27\0B\0\2\1K\0\1\0\27colorscheme catppuccin\17nvim_command\bapi\bvim\24highlight_overrides\1\0\0\0\20color_overrides\nmocha\1\0\0\1\0\1\tbase\f#0A010B\vstyles\ntypes\15properties\rbooleans\fnumbers\14variables\fstrings\rkeywords\14functions\nloops\17conditionals\rcomments\1\0\0\1\0\5\14no_italic\1\27transparent_background\1\16term_colors\2\fflavour\nmocha\fno_bold\1\nsetup\15catppuccin\frequire\0", "config", "catppuccin")
time([[Config for catppuccin]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nÚ\1\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\frainbow\1\0\2\venable\2\18extended_mode\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\1\17auto_install\2\1\a\0\0\6c\blua\trust\bcpp\nlatex\vpython\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)

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
