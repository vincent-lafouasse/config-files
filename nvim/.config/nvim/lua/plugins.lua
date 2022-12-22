-- Install packer
local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
local install_plugins = false

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  print('Installing packer...')
  local packer_url = 'https://github.com/wbthomason/packer.nvim'
  vim.fn.system({'git', 'clone', '--depth', '1', packer_url, install_path})
  print('Done.')

  vim.cmd('packadd packer.nvim')
  install_plugins = true
end

-- plugins go in here
require('packer').startup(function(use)
  -- Package manager
  use 'wbthomason/packer.nvim'

	-- colorscheme + statusline
  use 'morhetz/gruvbox'
	use 'itchyny/lightline.vim'

	-- rainbow parenthesis
	use 'luochen1990/rainbow'


  if install_plugins then
    require('packer').sync()
  end
end)

if install_plugins then
  return
end
