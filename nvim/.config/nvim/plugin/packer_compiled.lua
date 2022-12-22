-- Automatically generated packer.nvim plugin loader code
if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
    vim.api.nvim_command(
        'echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
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
            table.insert(results,
                         '(Only showing plugins that took longer than ' ..
                             threshold .. ' ms ' .. 'to load)')
        end

        _G._packer.profile_output = results
    end

    time([[Luarocks path setup]], true)
    local package_path_str =
        "/Users/vincentlafouasse/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/vincentlafouasse/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/vincentlafouasse/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/vincentlafouasse/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
    local install_cpath_pattern =
        "/Users/vincentlafouasse/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
    if not string.find(package.path, package_path_str, 1, true) then
        package.path = package.path .. ';' .. package_path_str
    end

    if not string.find(package.cpath, install_cpath_pattern, 1, true) then
        package.cpath = package.cpath .. ';' .. install_cpath_pattern
    end

    time([[Luarocks path setup]], false)
    time([[try_loadstring definition]], true)
    local function try_loadstring(s, component, name)
        local success, result = pcall(loadstring(s), name,
                                      _G.packer_plugins[name])
        if not success then
            vim.schedule(function()
                vim.api.nvim_notify(
                    'packer.nvim: Error running ' .. component .. ' for ' ..
                        name .. ': ' .. result, vim.log.levels.ERROR, {})
            end)
        end
        return result
    end

    time([[try_loadstring definition]], false)
    time([[Defining packer_plugins]], true)
    _G.packer_plugins = {
        gruvbox = {
            loaded = true,
            path = "/Users/vincentlafouasse/.local/share/nvim/site/pack/packer/start/gruvbox",
            url = "https://github.com/morhetz/gruvbox"
        },
        ["lightline.vim"] = {
            loaded = true,
            path = "/Users/vincentlafouasse/.local/share/nvim/site/pack/packer/start/lightline.vim",
            url = "https://github.com/itchyny/lightline.vim"
        },
        ["nvim-autopairs"] = {
            config = {
                "\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0"
            },
            loaded = true,
            path = "/Users/vincentlafouasse/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
            url = "https://github.com/windwp/nvim-autopairs"
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
        ["vim-floaterm"] = {
            loaded = true,
            path = "/Users/vincentlafouasse/.local/share/nvim/site/pack/packer/start/vim-floaterm",
            url = "https://github.com/voldikss/vim-floaterm"
        }
    }

    time([[Defining packer_plugins]], false)
    -- Config for: nvim-autopairs
    time([[Config for nvim-autopairs]], true)
    try_loadstring(
        "\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0",
        "config", "nvim-autopairs")
    time([[Config for nvim-autopairs]], false)

    _G._packer.inside_compile = false
    if _G._packer.needs_bufread == true then vim.cmd("doautocmd BufRead") end
    _G._packer.needs_bufread = false

    if should_profile then save_profiles() end

end)

if not no_errors then
    error_msg = error_msg:gsub('"', '\\"')
    vim.api.nvim_command(
        'echohl ErrorMsg | echom "Error in packer_compiled: ' .. error_msg ..
            '" | echom "Please check your config for correctness" | echohl None')
end
