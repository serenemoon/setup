-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

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

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/serene/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/serene/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/serene/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/serene/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/serene/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
  LeaderF = {
    loaded = true,
    path = "/home/serene/.local/share/nvim/site/pack/packer/start/LeaderF",
    url = "https://github.com/Yggdroot/LeaderF"
  },
  ["asyncrun.vim"] = {
    loaded = true,
    path = "/home/serene/.local/share/nvim/site/pack/packer/start/asyncrun.vim",
    url = "https://github.com/skywind3000/asyncrun.vim"
  },
  delimitMate = {
    loaded = true,
    path = "/home/serene/.local/share/nvim/site/pack/packer/start/delimitMate",
    url = "https://github.com/Raimondi/delimitMate"
  },
  ["denite.nvim"] = {
    loaded = true,
    path = "/home/serene/.local/share/nvim/site/pack/packer/start/denite.nvim",
    url = "https://github.com/Shougo/denite.nvim"
  },
  gruvbox = {
    loaded = true,
    path = "/home/serene/.local/share/nvim/site/pack/packer/start/gruvbox",
    url = "https://github.com/morhetz/gruvbox"
  },
  gutentags_plus = {
    loaded = true,
    path = "/home/serene/.local/share/nvim/site/pack/packer/start/gutentags_plus",
    url = "https://github.com/skywind3000/gutentags_plus"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/serene/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/serene/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  molokai = {
    loaded = true,
    path = "/home/serene/.local/share/nvim/site/pack/packer/start/molokai",
    url = "https://github.com/tomasr/molokai"
  },
  ncm2 = {
    loaded = true,
    path = "/home/serene/.local/share/nvim/site/pack/packer/start/ncm2",
    url = "https://github.com/ncm2/ncm2"
  },
  ["ncm2-bufword"] = {
    loaded = true,
    path = "/home/serene/.local/share/nvim/site/pack/packer/start/ncm2-bufword",
    url = "https://github.com/ncm2/ncm2-bufword"
  },
  ["ncm2-jedi"] = {
    loaded = true,
    path = "/home/serene/.local/share/nvim/site/pack/packer/start/ncm2-jedi",
    url = "https://github.com/ncm2/ncm2-jedi"
  },
  ["ncm2-path"] = {
    loaded = true,
    path = "/home/serene/.local/share/nvim/site/pack/packer/start/ncm2-path",
    url = "https://github.com/ncm2/ncm2-path"
  },
  ["ncm2-syntax"] = {
    loaded = true,
    path = "/home/serene/.local/share/nvim/site/pack/packer/start/ncm2-syntax",
    url = "https://github.com/ncm2/ncm2-syntax"
  },
  ["ncm2-ultisnips"] = {
    loaded = true,
    path = "/home/serene/.local/share/nvim/site/pack/packer/start/ncm2-ultisnips",
    url = "https://github.com/ncm2/ncm2-ultisnips"
  },
  ["ncm2-vim"] = {
    loaded = true,
    path = "/home/serene/.local/share/nvim/site/pack/packer/start/ncm2-vim",
    url = "https://github.com/ncm2/ncm2-vim"
  },
  ["neco-syntax"] = {
    loaded = true,
    path = "/home/serene/.local/share/nvim/site/pack/packer/start/neco-syntax",
    url = "https://github.com/Shougo/neco-syntax"
  },
  ["neco-vim"] = {
    loaded = true,
    path = "/home/serene/.local/share/nvim/site/pack/packer/start/neco-vim",
    url = "https://github.com/Shougo/neco-vim"
  },
  nerdcommenter = {
    loaded = true,
    path = "/home/serene/.local/share/nvim/site/pack/packer/start/nerdcommenter",
    url = "https://github.com/preservim/nerdcommenter"
  },
  nerdtree = {
    loaded = true,
    path = "/home/serene/.local/share/nvim/site/pack/packer/start/nerdtree",
    url = "https://github.com/preservim/nerdtree"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/serene/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/serene/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/serene/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-yarp"] = {
    loaded = true,
    path = "/home/serene/.local/share/nvim/site/pack/packer/start/nvim-yarp",
    url = "https://github.com/roxma/nvim-yarp"
  },
  ["onedark.nvim"] = {
    loaded = true,
    path = "/home/serene/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://github.com/navarasu/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/serene/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  tagbar = {
    loaded = true,
    path = "/home/serene/.local/share/nvim/site/pack/packer/start/tagbar",
    url = "https://github.com/preservim/tagbar"
  },
  ultisnips = {
    loaded = true,
    path = "/home/serene/.local/share/nvim/site/pack/packer/start/ultisnips",
    url = "https://github.com/SirVer/ultisnips"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/home/serene/.local/share/nvim/site/pack/packer/start/vim-airline",
    url = "https://github.com/vim-airline/vim-airline"
  },
  ["vim-airline-themes"] = {
    loaded = true,
    path = "/home/serene/.local/share/nvim/site/pack/packer/start/vim-airline-themes",
    url = "https://github.com/vim-airline/vim-airline-themes"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/serene/.local/share/nvim/site/pack/packer/start/vim-devicons",
    url = "https://github.com/ryanoasis/vim-devicons"
  },
  ["vim-easy-align"] = {
    loaded = true,
    path = "/home/serene/.local/share/nvim/site/pack/packer/start/vim-easy-align",
    url = "https://github.com/junegunn/vim-easy-align"
  },
  ["vim-easygrep"] = {
    loaded = true,
    path = "/home/serene/.local/share/nvim/site/pack/packer/start/vim-easygrep",
    url = "https://github.com/dkprice/vim-easygrep"
  },
  ["vim-easymotion"] = {
    loaded = true,
    path = "/home/serene/.local/share/nvim/site/pack/packer/start/vim-easymotion",
    url = "https://github.com/easymotion/vim-easymotion"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/serene/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-gutentags"] = {
    loaded = true,
    path = "/home/serene/.local/share/nvim/site/pack/packer/start/vim-gutentags",
    url = "https://github.com/ludovicchabant/vim-gutentags"
  },
  ["vim-mark"] = {
    loaded = true,
    path = "/home/serene/.local/share/nvim/site/pack/packer/start/vim-mark",
    url = "https://github.com/dimasg/vim-mark"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/home/serene/.local/share/nvim/site/pack/packer/start/vim-snippets",
    url = "https://github.com/honza/vim-snippets"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/serene/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-terminal-help"] = {
    loaded = true,
    path = "/home/serene/.local/share/nvim/site/pack/packer/start/vim-terminal-help",
    url = "https://github.com/skywind3000/vim-terminal-help"
  },
  ["vim-unimpaired"] = {
    loaded = true,
    path = "/home/serene/.local/share/nvim/site/pack/packer/start/vim-unimpaired",
    url = "https://github.com/tpope/vim-unimpaired"
  },
  ["vista.vim"] = {
    loaded = true,
    path = "/home/serene/.local/share/nvim/site/pack/packer/start/vista.vim",
    url = "https://github.com/liuchengxu/vista.vim"
  }
}

time([[Defining packer_plugins]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
